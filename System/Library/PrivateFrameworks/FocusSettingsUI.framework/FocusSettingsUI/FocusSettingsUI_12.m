uint64_t sub_24B9F7730()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682D0);
  sub_24B9F9FF4();
  return sub_24BAA84CC();
}

uint64_t sub_24B9F77A0@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v53 = sub_24BAA8A4C();
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068370);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v33 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068348);
  MEMORY[0x28223BE20](v49);
  v54 = &v33 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068338);
  MEMORY[0x28223BE20](v51);
  v57 = &v33 - v6;
  v7 = *(v1 + 160);
  v34 = *(v1 + 152);
  LOBYTE(v70) = v34;
  v35 = v7;
  *(&v70 + 1) = v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  v8 = v59;
  v9 = *v1;
  v10 = *(v1 + 8);
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA86CC();
  swift_getKeyPath();
  sub_24BAA86EC();

  v44 = v88;
  v45 = v87;
  v43 = v89;
  sub_24BAA86CC();
  swift_getKeyPath();
  sub_24BAA86EC();

  v41 = v85;
  v42 = v86;
  sub_24BAA86CC();
  swift_getKeyPath();
  sub_24BAA86EC();

  v39 = v83;
  v40 = v82;
  v38 = v84;
  v33 = v10;
  sub_24BAA86CC();
  swift_getKeyPath();
  sub_24BAA86EC();

  v36 = v80;
  v37 = v81;
  v47 = v8;
  if (v8 == 1)
  {
    LOBYTE(v59) = v34;
    *(&v59 + 1) = v35;
  }

  else
  {
    v11 = *(v1 + 144);
    LOBYTE(v59) = *(v1 + 136);
    *(&v59 + 1) = v11;
  }

  sub_24BAA9A1C();
  v12 = v70;
  v13 = v71;
  v14 = *(v1 + 72);
  LOBYTE(v59) = *(v1 + 64);
  *(&v59 + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068378);
  sub_24BAA9A1C();
  v15 = v70;
  v16 = v71;
  v17 = sub_24BAA86FC();
  *&v59 = v45;
  *(&v59 + 1) = v44;
  *&v60 = v43;
  *(&v60 + 1) = v41;
  v61 = v42;
  *&v62 = v40;
  *(&v62 + 1) = v39;
  *&v63 = v38;
  *(&v63 + 1) = v36;
  v64 = v37;
  v65 = v12;
  v66[0] = v13;
  *&v66[1] = *v69;
  *&v66[4] = *&v69[3];
  *&v66[8] = v15;
  v66[24] = v16;
  *&v66[28] = *&v68[3];
  *&v66[25] = *v68;
  *v67 = v17;
  *&v67[8] = v18;
  v67[16] = v47;
  *&v67[17] = 0;
  v19 = v50;
  v20 = v48;
  v21 = v53;
  (*(v50 + 104))(v48, *MEMORY[0x277CDDDC0], v53);
  sub_24B9FA1F0();
  v22 = v52;
  sub_24BAA964C();
  (*(v19 + 8))(v20, v21);
  v78 = *&v66[16];
  v79[0] = *v67;
  *(v79 + 15) = *&v67[15];
  v74 = v63;
  v75 = v64;
  v76 = v65;
  v77 = *v66;
  v70 = v59;
  v71 = v60;
  v72 = v61;
  v73 = v62;
  sub_24B9FA404(&v70);
  KeyPath = swift_getKeyPath();
  v24 = v54;
  (*(v55 + 32))(v54, v22, v56);
  v25 = v24 + *(v49 + 36);
  *v25 = KeyPath;
  *(v25 + 8) = 0;
  if (v9)
  {

    v26 = sub_24BAA813C();
    v27 = v57;
    sub_24B90294C(v24, v57, &qword_27F068348);
    v28 = (v27 + *(v51 + 36));
    *v28 = v26;
    v28[1] = v9;
    v29 = sub_24BAA90DC();
    v30 = sub_24BAA90FC();
    sub_24BAA90FC();
    if (sub_24BAA90FC() != v29)
    {
      v30 = sub_24BAA90FC();
    }

    v31 = v58;
    sub_24B90294C(v27, v58, &qword_27F068338);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0682D0);
    *(v31 + *(result + 36)) = v30;
  }

  else
  {
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9F7EA0@<X0>(SEL *a1@<X3>, uint64_t *a2@<X8>)
{
  sub_24B984444();
  v4 = sub_24B8D7188();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 configuration];
    v7 = [v6 *a1];
  }

  else
  {
    v7 = 2;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_24B9F7F2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = *a1;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  a5(v6);
}

uint64_t sub_24B9F7FE8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9FB1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *a1 = sub_24BAA86FC();
  *(a1 + 8) = v2;
  sub_24BAA99EC();
  *(a1 + 16) = v5;
  *(a1 + 24) = *(&v5 + 1);
  sub_24BAA99EC();
  *(a1 + 32) = v5;
  *(a1 + 40) = *(&v5 + 1);
  sub_24BAA99EC();
  *(a1 + 48) = v5;
  *(a1 + 56) = *(&v5 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066D48);
  sub_24BAA99EC();
  *(a1 + 64) = v5;
  *(a1 + 72) = *(&v5 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A10);
  sub_24BAA99EC();
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  sub_24BAA99EC();
  *(a1 + 104) = v5;
  *(a1 + 112) = *(&v5 + 1);
  sub_24BAA99EC();
  *(a1 + 120) = v5;
  *(a1 + 128) = *(&v5 + 1);
  sub_24BAA99EC();
  *(a1 + 136) = v5;
  *(a1 + 144) = *(&v5 + 1);
  sub_24BAA99EC();
  *(a1 + 152) = v5;
  *(a1 + 160) = *(&v5 + 1);
  *(a1 + 168) = swift_getKeyPath();
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v3 = *(type metadata accessor for RootActivityConfigView() + 60);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24B9F8240@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068450);
  MEMORY[0x28223BE20](v67);
  v4 = &v56 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068458);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068460);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068468);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068470);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v60 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - v17;
  v19 = a1[1];
  v66 = &v56 - v17;
  if (v19)
  {
    v57 = v13;
    v58 = v10;
    *&v70 = *a1;
    *(&v70 + 1) = v19;
    sub_24B8F5E3C();

    v20 = sub_24BAA93CC();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    sub_24BAA927C();
    sub_24BAA91CC();
    v27 = sub_24BAA921C();

    KeyPath = swift_getKeyPath();
    v29 = a1;
    v30 = v24 & 1;
    LOBYTE(v70) = v24 & 1;
    v31 = sub_24BAA988C();
    v32 = swift_getKeyPath();
    *&v70 = v20;
    *(&v70 + 1) = v22;
    LOBYTE(v71) = v30;
    a1 = v29;
    *(&v71 + 1) = v26;
    LOWORD(v72) = 256;
    *(&v72 + 1) = KeyPath;
    *v73 = v27;
    *&v73[8] = v32;
    *&v73[16] = v31;
    *&v73[24] = 256;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0684A8);
    sub_24B9FB0DC();
    v33 = v57;
    sub_24BAA94DC();

    v68[2] = v72;
    v69[0] = *v73;
    *(v69 + 10) = *&v73[10];
    v68[0] = v70;
    v68[1] = v71;
    sub_24B8F35E4(v68, &qword_27F0684A8);
    v18 = v66;
    sub_24B90294C(v33, v66, &qword_27F068468);
    (*(v11 + 56))(v18, 0, 1, v58);
  }

  else
  {
    (*(v11 + 56))(&v56 - v17, 1, 1, v10);
  }

  v34 = a1[3];
  if (v34)
  {
    *&v70 = a1[2];
    *(&v70 + 1) = v34;
    sub_24B8F5E3C();

    v35 = sub_24BAA93CC();
    v37 = v36;
    v39 = v38;
    v57 = v40;
    v58 = sub_24BAA927C();
    v56 = swift_getKeyPath();
    v41 = v39 & 1;
    LOBYTE(v70) = v39 & 1;
    v42 = sub_24BAA989C();
    v43 = swift_getKeyPath();
    v44 = swift_getKeyPath();
    v45 = &v4[*(v67 + 36)];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B10) + 28);
    v47 = sub_24BAA937C();
    (*(*(v47 - 8) + 56))(v45 + v46, 1, 1, v47);
    *v45 = swift_getKeyPath();
    *v4 = v35;
    *(v4 + 1) = v37;
    v4[16] = v41;
    *(v4 + 17) = v70;
    *(v4 + 5) = *(&v70 + 3);
    *(v4 + 3) = v57;
    *(v4 + 16) = 256;
    *(v4 + 34) = v68[0];
    *(v4 + 19) = WORD2(v68[0]);
    v48 = v58;
    *(v4 + 5) = v56;
    *(v4 + 6) = v48;
    *(v4 + 7) = v43;
    *(v4 + 8) = v42;
    *(v4 + 9) = v44;
    *(v4 + 10) = 0xC000000000000000;
    v49 = v63;
    v18 = v66;
    sub_24B9FAD6C();

    v50 = v59;
    sub_24BAA94DC();

    sub_24B8F35E4(v4, &qword_27F068450);
    sub_24B90294C(v50, v49, &qword_27F068458);
    (*(v61 + 56))(v49, 0, 1, v62);
  }

  else
  {
    v49 = v63;
    (*(v61 + 56))(v63, 1, 1, v62);
  }

  v51 = v60;
  sub_24B8F3208(v18, v60, &qword_27F068470);
  v52 = v64;
  sub_24B8F3208(v49, v64, &qword_27F068460);
  v53 = v65;
  sub_24B8F3208(v51, v65, &qword_27F068470);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068478);
  sub_24B8F3208(v52, v53 + *(v54 + 48), &qword_27F068460);
  sub_24B8F35E4(v49, &qword_27F068460);
  sub_24B8F35E4(v18, &qword_27F068470);
  sub_24B8F35E4(v52, &qword_27F068460);
  return sub_24B8F35E4(v51, &qword_27F068470);
}

uint64_t sub_24B9F89FC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  *a1 = sub_24BAA8BDC();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068448);
  return sub_24B9F8240(v7, a1 + *(v5 + 44));
}

uint64_t sub_24B9F8A68()
{
  sub_24BAAA7FC();
  MEMORY[0x24C2508C0](0);
  return sub_24BAAA84C();
}

uint64_t sub_24B9F8AD4()
{
  sub_24BAAA7FC();
  MEMORY[0x24C2508C0](0);
  return sub_24BAAA84C();
}

uint64_t sub_24B9F8B3C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B9F8BBC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81BC();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81CC();
  sub_24B982320(v1, v2);
}

unint64_t sub_24B9F8CB0()
{
  result = qword_27F068098;
  if (!qword_27F068098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068098);
  }

  return result;
}

unint64_t sub_24B9F8D04()
{
  result = qword_27F0680A8;
  if (!qword_27F0680A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0680A8);
  }

  return result;
}

uint64_t sub_24B9F8D88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0684B8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24B8F3208(a1, &v5 - v3, &qword_27F0684B8);
  return sub_24BAA899C();
}

unint64_t sub_24B9F8E48()
{
  result = qword_27F0680D0;
  if (!qword_27F0680D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068078);
    sub_24B9F8F00();
    sub_24B8F384C(&qword_27F063F18, &qword_27F063F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0680D0);
  }

  return result;
}

unint64_t sub_24B9F8F00()
{
  result = qword_27F0680D8;
  if (!qword_27F0680D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0680E0);
    sub_24B8FF838();
    sub_24B8F384C(&qword_27F0680C0, &qword_27F0680B8);
    sub_24B8F384C(&qword_27F0680C8, &qword_27F068070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0680D8);
  }

  return result;
}

uint64_t sub_24B9F9000@<X0>(size_t *a1@<X8>)
{
  sub_24B984444();
  v2 = sub_24B8DF718();

  *a1 = v2;
  return result;
}

unint64_t sub_24B9F905C()
{
  result = qword_27F068108;
  if (!qword_27F068108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068100);
    sub_24B9F9114();
    sub_24B8F384C(&qword_27F063F18, &qword_27F063F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068108);
  }

  return result;
}

unint64_t sub_24B9F9114()
{
  result = qword_27F068110;
  if (!qword_27F068110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068118);
    sub_24B9F91CC();
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068110);
  }

  return result;
}

unint64_t sub_24B9F91CC()
{
  result = qword_27F068120;
  if (!qword_27F068120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068120);
  }

  return result;
}

unint64_t sub_24B9F9228()
{
  result = qword_27F068138;
  if (!qword_27F068138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068130);
    sub_24B9F92AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068138);
  }

  return result;
}

unint64_t sub_24B9F92AC()
{
  result = qword_27F068140;
  if (!qword_27F068140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068148);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068B00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068150);
    sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
    sub_24B8F384C(&qword_27F068158, &qword_27F068150);
    swift_getOpaqueTypeConformance2();
    sub_24B9FB1E0(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068140);
  }

  return result;
}

uint64_t sub_24B9F9438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_24B9F9478(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24B9F9490();
  }

  return result;
}

uint64_t sub_24B9F9498(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24B900C14();
  }

  return result;
}

uint64_t sub_24B9F94B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_24B9F94FC()
{
  result = qword_27F068188;
  if (!qword_27F068188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068178);
    sub_24B9F95B4();
    sub_24B8F384C(&unk_27F069040, &unk_27F063278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068188);
  }

  return result;
}

unint64_t sub_24B9F95B4()
{
  result = qword_27F068190;
  if (!qword_27F068190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0681A0);
    sub_24BAA8EDC();
    sub_24B8F384C(&qword_27F0681A8, &qword_27F0681A0);
    swift_getOpaqueTypeConformance2();
    sub_24B8F384C(&qword_27F0681B0, &qword_27F0681B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068190);
  }

  return result;
}

unint64_t sub_24B9F9704()
{
  result = qword_27F0681D0;
  if (!qword_27F0681D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068060);
    sub_24B9F97BC();
    sub_24B8F384C(&qword_27F067430, &qword_27F067438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0681D0);
  }

  return result;
}

unint64_t sub_24B9F97BC()
{
  result = qword_27F0681D8;
  if (!qword_27F0681D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0681E0);
    sub_24B9F98EC(&qword_27F063A70, &qword_27F063A60, &unk_24BAAD958, sub_24B8FF808);
    sub_24B8F384C(&qword_27F0681C8, &qword_27F0681C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0681D8);
  }

  return result;
}

uint64_t sub_24B9F98EC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24B9F9970()
{
  result = qword_27F068208;
  if (!qword_27F068208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065590);
    sub_24B9D39AC();
    sub_24B8F384C(&unk_27F069060, &qword_27F0658A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068208);
  }

  return result;
}

uint64_t sub_24B9F9A28@<X0>(void *a1@<X8>)
{
  result = sub_24BAA88BC();
  *a1 = v3;
  return result;
}

unint64_t sub_24B9F9A7C()
{
  result = qword_27F068230;
  if (!qword_27F068230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068220);
    sub_24B9FB1E0(&qword_27F068238, type metadata accessor for FacesAndPagesPicker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068230);
  }

  return result;
}

uint64_t sub_24B9F9B40@<X0>(void *a1@<X8>)
{
  result = sub_24BAA88BC();
  *a1 = v3;
  return result;
}

uint64_t sub_24B9F9B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootActivityConfigView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B9F9BFC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_24B926B78(result);
  }

  else
  {
  }
}

uint64_t sub_24B9F9C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootActivityConfigView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B9F9CBC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RootActivityConfigView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_56Tm_0()
{
  v1 = (type metadata accessor for RootActivityConfigView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  sub_24B9F9BFC(*(v5 + 168), *(v5 + 176), *(v5 + 184));
  v6 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24BAA8B9C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B9F9EA8()
{
  type metadata accessor for RootActivityConfigView();

  return sub_24B9F7730();
}

unint64_t sub_24B9F9F18()
{
  result = qword_27F068318;
  if (!qword_27F068318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0682F0);
    sub_24B9FB06C(&qword_27F068308, &qword_27F068300);
    sub_24B9FB1E0(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068318);
  }

  return result;
}

unint64_t sub_24B9F9FF4()
{
  result = qword_27F068328;
  if (!qword_27F068328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0682D0);
    sub_24B9FA080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068328);
  }

  return result;
}

unint64_t sub_24B9FA080()
{
  result = qword_27F068330;
  if (!qword_27F068330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068338);
    sub_24B9FA138();
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068330);
  }

  return result;
}

unint64_t sub_24B9FA138()
{
  result = qword_27F068340;
  if (!qword_27F068340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068348);
    sub_24B9FA1F0();
    swift_getOpaqueTypeConformance2();
    sub_24B9FA244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068340);
  }

  return result;
}

unint64_t sub_24B9FA1F0()
{
  result = qword_27F068350;
  if (!qword_27F068350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068350);
  }

  return result;
}

unint64_t sub_24B9FA244()
{
  result = qword_27F068358;
  if (!qword_27F068358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068358);
  }

  return result;
}

uint64_t keypath_get_74Tm@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();
}

unint64_t sub_24B9FA47C()
{
  result = qword_27F0683D0;
  if (!qword_27F0683D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0683C8);
    sub_24B9FA534();
    sub_24B8F384C(&qword_27F063E60, &qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0683D0);
  }

  return result;
}

unint64_t sub_24B9FA534()
{
  result = qword_27F0683D8;
  if (!qword_27F0683D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0683D8);
  }

  return result;
}

unint64_t sub_24B9FA588()
{
  result = qword_27F0683E8;
  if (!qword_27F0683E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068390);
    sub_24B8F384C(&qword_27F0683E0, &qword_27F068388);
    sub_24B9FB1E0(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0683E8);
  }

  return result;
}

unint64_t sub_24B9FA670()
{
  result = qword_27F0683F0;
  if (!qword_27F0683F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0683F0);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24B9FA778(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B9FA7C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B9FA828(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24B9FA884(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24B9FA8F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B9FA940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B9FA9A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B9FA9EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B9FAA48()
{
  result = qword_27F068418;
  if (!qword_27F068418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068018);
    sub_24B9FAAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068418);
  }

  return result;
}

unint64_t sub_24B9FAAD4()
{
  result = qword_27F068420;
  if (!qword_27F068420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068010);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067FF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067FE8);
    sub_24BAA862C();
    sub_24B8F384C(&qword_27F068008, &qword_27F067FE8);
    sub_24B9FB1E0(&qword_27F064860, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B9FA244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068420);
  }

  return result;
}

unint64_t sub_24B9FAC98()
{
  result = qword_27F068428;
  if (!qword_27F068428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068428);
  }

  return result;
}

unint64_t sub_24B9FAD6C()
{
  result = qword_27F068480;
  if (!qword_27F068480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068450);
    sub_24B9FAE24();
    sub_24B8F384C(&qword_27F063B08, &qword_27F063B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068480);
  }

  return result;
}

unint64_t sub_24B9FAE24()
{
  result = qword_27F068488;
  if (!qword_27F068488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068490);
    sub_24B9FAEDC();
    sub_24B8F384C(&qword_27F0681B0, &qword_27F0681B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068488);
  }

  return result;
}

unint64_t sub_24B9FAEDC()
{
  result = qword_27F068498;
  if (!qword_27F068498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F067A90);
    sub_24B9FAF94();
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068498);
  }

  return result;
}

unint64_t sub_24B9FAF94()
{
  result = qword_27F0684A0;
  if (!qword_27F0684A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063C70);
    sub_24B9FB06C(&qword_27F0639D8, &qword_27F0639E0);
    sub_24B8F384C(&unk_27F069050, &qword_27F064F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0684A0);
  }

  return result;
}

uint64_t sub_24B9FB06C(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_24B9FB0DC()
{
  result = qword_27F0684B0;
  if (!qword_27F0684B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0684A8);
    sub_24B9FAEDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0684B0);
  }

  return result;
}

uint64_t sub_24B9FB168()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_24B9FB1E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B9FB228(uint64_t a1)
{
  v2 = type metadata accessor for NotificationExceptionsItemView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B9FB290()
{
  result = qword_27F068500;
  if (!qword_27F068500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0684F8);
    sub_24B9FB34C();
    sub_24B9FB1E0(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068500);
  }

  return result;
}

unint64_t sub_24B9FB34C()
{
  result = qword_27F068508;
  if (!qword_27F068508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068510);
    sub_24B8F384C(&unk_27F069090, &qword_27F0639C0);
    sub_24B8F384C(&qword_27F063F18, &qword_27F063F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068508);
  }

  return result;
}

BOOL sub_24B9FB430@<W0>(_BYTE *a1@<X8>)
{
  result = sub_24B991DA0();
  *a1 = result;
  return result;
}

unint64_t sub_24B9FB470()
{
  result = qword_27F068518;
  if (!qword_27F068518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068438);
    sub_24B8F384C(&qword_27F068520, &qword_27F068528);
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068518);
  }

  return result;
}

unint64_t sub_24B9FB5E0()
{
  result = qword_27F068548;
  if (!qword_27F068548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068550);
    sub_24B9FB290();
    sub_24B9FB06C(&qword_27F0639D8, &qword_27F0639E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068548);
  }

  return result;
}

uint64_t sub_24B9FB6CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B9FB79C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EditExistingSmartTriggerView()
{
  result = qword_27F068558;
  if (!qword_27F068558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B9FB898()
{
  sub_24B9FB96C(319, &qword_27F068568);
  if (v0 <= 0x3F)
  {
    sub_24B9FB96C(319, &qword_27F063A40);
    if (v1 <= 0x3F)
    {
      sub_24B8F47B4();
      if (v2 <= 0x3F)
      {
        sub_24B8F4644();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B9FB96C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24BAA9A2C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_24B9FB9B8()
{
  result = qword_27F066AA0;
  if (!qword_27F066AA0)
  {
    type metadata accessor for ActivityConfigViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066AA0);
  }

  return result;
}

uint64_t sub_24B9FBA2C@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068570);
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = v44 - v3;
  v4 = type metadata accessor for EditExistingSmartTriggerView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_24B9FE21C(v1, v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditExistingSmartTriggerView);
  sub_24BAAA1BC();
  v7 = sub_24BAAA1AC();
  v8 = *(v5 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v7;
  *(v10 + 24) = v11;
  v12 = v1;
  sub_24B9FDCC4(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_24B9FE21C(v1, v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditExistingSmartTriggerView);
  v13 = sub_24BAAA1AC();
  v50 = v6;
  v54 = v8;
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v11;
  v48 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B9FDCC4(v48, v14 + v9);
  sub_24BAA9B9C();
  v16 = v55;
  v15 = v56;
  v17 = v57;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v18 = qword_27F077088;
  v42 = 0xE000000000000000;
  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24BAAD5B0;
  if (*(v12 + 40))
  {
    v20 = v19;
    v44[1] = v17;
    v45 = v12;
    v46 = v18;
    v47 = ~v54;

    sub_24B984444();
    v21 = sub_24B8D7188();
    if (v21)
    {
      v22 = v21;
      v23 = [v21 mode];

      v24 = [v23 name];
      v25 = sub_24BAAA01C();
      v27 = v26;
    }

    else
    {

      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v20[7] = MEMORY[0x277D837D0];
    v20[8] = sub_24B8F6A20();
    v20[4] = v25;
    v20[5] = v27;
    v28 = sub_24BAA9FEC();
    v30 = v29;

    MEMORY[0x28223BE20](v31);
    *&v44[-12] = v28;
    *&v44[-10] = v30;
    *&v44[-8] = v16;
    *&v44[-6] = v15;
    v32 = v45;
    v43 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068578);
    sub_24B8F384C(&qword_27F068580, &qword_27F068578);
    v33 = v49;
    sub_24BAA92BC();

    v42 = 0xE000000000000000;
    v55 = sub_24BAA7C2C();
    v56 = v34;
    sub_24B8F384C(&qword_27F068588, &qword_27F068570);
    sub_24B8F5E3C();
    v36 = v52;
    v35 = v53;
    sub_24BAA952C();

    (*(v51 + 8))(v33, v36);
    v37 = v48;
    sub_24B9FE21C(v32, v48, type metadata accessor for EditExistingSmartTriggerView);
    v38 = (v54 + 16) & v47;
    v39 = swift_allocObject();
    sub_24B9FDCC4(v37, v39 + v38);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068590);
    v41 = (v35 + *(result + 36));
    *v41 = 0;
    v41[1] = 0;
    v41[2] = sub_24B9FDF84;
    v41[3] = v39;
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9FB9B8();
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

void sub_24B9FC084(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068598);
  sub_24BAA99FC();

  *a1 = v2;
}

uint64_t sub_24B9FC0EC(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v11 = *(a4 + 1);
  v12 = *(a4 + 2);
  v21 = *a4;
  v10 = v21;
  v22 = v11;
  v23 = v12;

  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068598);
  sub_24BAA99FC();
  v18 = v10;
  v19 = v13;
  v20 = v12;
  v16[0] = v9;
  v17 = v24;
  sub_24BAA9A0C();

  if (*(a4 + 5))
  {
    v21 = v10;
    v22 = v13;
    v23 = v12;

    sub_24BAA99FC();
    v14 = v19;
    *v8 = v18;
    *(v8 + 1) = v14;
    swift_storeEnumTagMultiPayload();
    sub_24B991000(v8);

    return sub_24B91F628(v8);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9FB9B8();
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9FC28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v53 = a6;
  v52 = a5;
  v51 = a4;
  v50 = a3;
  v58 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0685A0);
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v48 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0685A8);
  v61 = *(v54 - 8);
  v13 = MEMORY[0x28223BE20](v54);
  v59 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  v66 = a1;
  v67 = a2;
  sub_24B8F5E3C();

  v17 = sub_24BAA93CC();
  v19 = v18;
  v21 = v20;
  sub_24BAA927C();
  v22 = sub_24BAA939C();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_24B900910(v17, v19, v21 & 1);

  v66 = v22;
  v67 = v24;
  LOBYTE(v68) = v26 & 1;
  v69 = v28;
  v63 = v50;
  v64 = v51;
  v65 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639C0);
  sub_24B8F384C(&unk_27F069090, &qword_27F0639C0);
  v29 = v16;
  v49 = v16;
  sub_24BAA9C4C();
  v62 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0685B0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068B00);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064158);
  v32 = sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  v33 = sub_24B8F384C(&qword_27F064168, &qword_27F064158);
  v66 = v30;
  v67 = v31;
  v68 = v32;
  v69 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v60;
  sub_24BAA9C3C();
  v35 = *(v61 + 16);
  v36 = v59;
  v37 = v54;
  v35(v59, v29, v54);
  v38 = v56;
  v39 = *(v56 + 16);
  v40 = v55;
  v41 = v34;
  v42 = v57;
  v39(v55, v41, v57);
  v43 = v58;
  v35(v58, v36, v37);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0685B8);
  v39(&v43[*(v44 + 48)], v40, v42);
  v45 = *(v38 + 8);
  v45(v60, v42);
  v46 = *(v61 + 8);
  v46(v49, v37);
  v45(v40, v42);
  return (v46)(v59, v37);
}

uint64_t sub_24B9FC7B4()
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();

  return sub_24BAA9AFC();
}

uint64_t sub_24B9FC8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for EditExistingSmartTriggerView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064130);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v35 = sub_24BAA7C2C();
  v36 = v12;
  sub_24BAA824C();
  v13 = sub_24BAA826C();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  sub_24B9FE21C(a1, v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditExistingSmartTriggerView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_24B9FDCC4(v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_24B8F5E3C();
  sub_24BAA9A6C();
  v35 = sub_24BAA7C2C();
  v36 = v16;
  v17 = sub_24BAA93CC();
  v30 = v18;
  v31 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *(a1 + 32);
  v38 = *(a1 + 24);
  v39 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  v24 = sub_24BAA9A1C();
  v29 = v28;
  v28[3] = v37;
  MEMORY[0x28223BE20](v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064158);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24B8F384C(&qword_27F064168, &qword_27F064158);
  v25 = v33;
  v26 = v31;
  sub_24BAA95AC();

  sub_24B900910(v26, v20, v22 & 1);

  return (*(v32 + 8))(v11, v25);
}

uint64_t sub_24B9FCDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064180);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v56 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v55 = &v44 - v6;
  v7 = sub_24BAA83FC();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EditExistingSmartTriggerView();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064130);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  v54 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v53 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064188);
  v48 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064190);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v52 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v51 = &v44 - v26;
  sub_24BAA824C();
  v27 = sub_24BAA826C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v46 = v28 + 56;
  v47 = v29;
  v29(v14, 0, 1, v27);
  sub_24B9FE21C(a1, &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditExistingSmartTriggerView);
  v30 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v31 = swift_allocObject();
  sub_24B9FDCC4(&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
  sub_24BAA9A4C();
  sub_24BAA83EC();
  v32 = sub_24BAA845C();
  sub_24BAA846C();
  sub_24BAA846C();
  if (sub_24BAA846C() != v32)
  {
    sub_24BAA846C();
  }

  v33 = sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA953C();
  (*(v49 + 8))(v9, v50);
  v34 = *(v54 + 8);
  v34(v19, v15);
  v58 = v15;
  v59 = v33;
  swift_getOpaqueTypeConformance2();
  v35 = v51;
  sub_24BAA94DC();
  (*(v48 + 8))(v22, v20);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v58 = sub_24BAA7C2C();
  v59 = v36;
  sub_24BAA825C();
  v47(v14, 0, 1, v27);
  sub_24B8F5E3C();
  v37 = v53;
  sub_24BAA9A6C();
  v38 = v55;
  sub_24BAA94DC();
  v34(v37, v15);
  v39 = v52;
  sub_24B934080(v35, v52);
  v40 = v56;
  sub_24B9340F0(v38, v56);
  v41 = v57;
  sub_24B934080(v39, v57);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064198);
  sub_24B9340F0(v40, v41 + *(v42 + 48));
  sub_24B8F35E4(v38, &qword_27F064180);
  sub_24B9341C8(v35);
  sub_24B8F35E4(v40, &qword_27F064180);
  return sub_24B9341C8(v39);
}

uint64_t sub_24B9FD52C()
{
  v1 = sub_24BAA868C();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940);
  MEMORY[0x28223BE20](v4);
  v47 = &v42 - v5;
  v6 = type metadata accessor for Trigger(0);
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v49 = &v42 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = *(v0 + 40);
  if (!v16)
  {
    goto LABEL_38;
  }

  v45 = &v42;
  MEMORY[0x28223BE20](v16);
  *(&v42 - 2) = v0;

  sub_24B984444();
  v17 = sub_24B8DF718();

  v18 = sub_24B991438(sub_24B9FE1FC, (&v42 - 4), v17);
  if ((v19 & 1) == 0)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      type metadata accessor for ActivityConfigViewModel();
      sub_24B9FB9B8();
      result = sub_24BAA86DC();
      __break(1u);
      return result;
    }

    v53 = v18;
    v43 = v4;
    v44 = v3;
    v50 = v0;
    while (1)
    {
      v22 = v17[2];
      if (v20 == v22)
      {
        break;
      }

      if (v20 >= v22)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v23 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v24 = v17 + v23;
      v25 = *(v51 + 72);
      v26 = v25 * v20;
      sub_24B9FE21C(v17 + v23 + v25 * v20, v15, type metadata accessor for Trigger);
      v27 = *(v50 + 8);
      v28 = *(v50 + 16);
      LOBYTE(v56) = *v50;
      v57 = v27;
      v58 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068598);
      sub_24BAA99FC();
      v29 = v55;
      *v13 = v54;
      *(v13 + 1) = v29;
      swift_storeEnumTagMultiPayload();
      v30 = sub_24B92823C(v15);
      sub_24B91F628(v13);
      sub_24B91F628(v15);
      if ((v30 & 1) == 0)
      {
        v31 = v53;
        if (v20 != v53)
        {
          if (v53 < 0)
          {
            goto LABEL_30;
          }

          v32 = v17[2];
          if (v53 >= v32)
          {
            goto LABEL_31;
          }

          v33 = v25 * v53;
          sub_24B9FE21C(&v24[v25 * v53], v49, type metadata accessor for Trigger);
          if (v20 >= v32)
          {
            goto LABEL_32;
          }

          v34 = v48;
          sub_24B9FE21C(&v24[v26], v48, type metadata accessor for Trigger);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_24B9AEC30(v17);
          }

          sub_24B91F684(v34, v17 + v23 + v33);
          if (v20 >= v17[2])
          {
            goto LABEL_33;
          }

          sub_24B91F684(v49, v17 + v23 + v26);
          v31 = v53;
        }

        v53 = v31 + 1;
      }

      ++v20;
    }

    v21 = v53;
    if (v20 < v53)
    {
      goto LABEL_34;
    }

    v4 = v43;
    if ((v53 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v20 = v17[2];
  v21 = v20;
LABEL_21:
  v35 = v21;
  v36 = v21 - v20;
  v37 = v20 + v36;
  if (__OFADD__(v20, v36))
  {
    goto LABEL_36;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = v17;
  if (!isUniquelyReferenced_nonNull_native || v37 > v17[3] >> 1)
  {
    if (v20 <= v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = v20;
    }

    v17 = sub_24B99A4A0(isUniquelyReferenced_nonNull_native, v39, 1, v17);
    v56 = v17;
  }

  sub_24B9AF37C(v35, v20, 0);
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9FB9B8();
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8DFC94(v17);

  type metadata accessor for EditExistingSmartTriggerView();
  v40 = v47;
  sub_24BA8DA5C(v47);
  MEMORY[0x24C24FC10](v4);
  sub_24BAA867C();
  sub_24BAA9B6C();
  return sub_24B8F35E4(v40, &qword_27F063940);
}

uint64_t sub_24B9FDA9C(char *a1)
{
  v2 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 5))
  {
    v5 = *(a1 + 1);
    v6 = *(a1 + 2);
    v11 = *a1;
    v12 = v5;
    v13 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068598);
    sub_24BAA99FC();
    v7 = v10;
    *v4 = v9[8];
    *(v4 + 1) = v7;
    swift_storeEnumTagMultiPayload();
    sub_24B991000(v4);

    return sub_24B91F628(v4);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9FB9B8();
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9FDBC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v13 = *a2;
  v14 = v7;
  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068598);
  sub_24BAA99FC();
  v9 = v12;
  *v6 = v11[8];
  *(v6 + 1) = v9;
  swift_storeEnumTagMultiPayload();
  LOBYTE(a2) = sub_24B92823C(a1);
  sub_24B91F628(v6);
  return a2 & 1;
}

uint64_t sub_24B9FDCC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditExistingSmartTriggerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24B9FDD28(_BYTE *a1@<X8>)
{
  type metadata accessor for EditExistingSmartTriggerView();

  sub_24B9FC084(a1);
}

uint64_t objectdestroyTm_12()
{
  v1 = (type metadata accessor for EditExistingSmartTriggerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B9FDEFC(char *a1)
{
  v3 = *(type metadata accessor for EditExistingSmartTriggerView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_24B9FC0EC(a1, v4, v5, v6);
}

uint64_t sub_24B9FDFCC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EditExistingSmartTriggerView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_6Tm()
{
  v1 = (type metadata accessor for EditExistingSmartTriggerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B9FE21C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B9FE288()
{
  result = qword_27F0685C0;
  if (!qword_27F0685C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068570);
    sub_24B8F384C(&qword_27F068588, &qword_27F068570);
    sub_24B8F5E3C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0685C0);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_24B9FE3C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B9FE408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B9FE48C(uint64_t a1)
{
  if (*(a1 + 48) != 1)
  {
    return sub_24BA018D0();
  }

  if (!*v1)
  {
    goto LABEL_30;
  }

  v2 = *(*v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshotsForSuggestedPages);
  if (!v2)
  {
    return sub_24BA018D0();
  }

  if (v2 >> 62)
  {
    v12 = a1;
    v3 = sub_24BAAA52C();
    a1 = v12;
    if (v3)
    {
      goto LABEL_6;
    }

    return sub_24BA018D0();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return sub_24BA018D0();
  }

LABEL_6:
  if (v3 >= 1)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    if ((v2 & 0xC000000000000001) != 0)
    {

      for (i = 0; i != v3; ++i)
      {
        v7 = MEMORY[0x24C2506E0](i, v2);
        v8 = *(v7 + 16) == v4 && *(v7 + 24) == v5;
        if (v8 || (sub_24BAAA78C() & 1) != 0)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_24BAA81CC();
        }
      }
    }

    else
    {
      v9 = v2 + 32;

      do
      {
        v10 = *(*v9 + 16) == v4 && *(*v9 + 24) == v5;
        if (!v10 && (sub_24BAAA78C() & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();

          sub_24BAA81CC();
        }

        v9 += 8;
        --v3;
      }

      while (v3);
    }

    return sub_24BA018D0();
  }

  __break(1u);
LABEL_30:
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA02674(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24B9FE6D8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0685D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-v6];
  v16 = a1;
  sub_24BAA909C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0685F8);
  sub_24B8F384C(&qword_27F068600, &qword_27F0685F8);
  sub_24BAA829C();
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0685E0);
  sub_24B8F384C(&qword_27F0685E8, &qword_27F0685D8);
  sub_24B8F384C(&qword_27F0685F0, &qword_27F0685E0);
  sub_24BAA96CC();
  (*(v5 + 8))(v7, v4);
  v8 = swift_allocObject();
  v9 = a1[3];
  v8[3] = a1[2];
  v8[4] = v9;
  v10 = a1[5];
  v8[5] = a1[4];
  v8[6] = v10;
  v11 = a1[1];
  v8[1] = *a1;
  v8[2] = v11;
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0685C8) + 36));
  *v12 = sub_24BA01D9C;
  v12[1] = v8;
  v12[2] = 0;
  v12[3] = 0;
  return sub_24BA01DA4(a1, v17);
}

uint64_t sub_24B9FE960@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24BAA8BCC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068610);
  return sub_24B9FE9B8(a1, a2 + *(v4 + 44));
}

uint64_t sub_24B9FE9B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068618);
  v3 = MEMORY[0x28223BE20](v100);
  v103 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v90 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068620);
  v96 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v91 = (&v90 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068628);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v101 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v105 = &v90 - v12;
  v95 = sub_24BAA975C();
  v13 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PagesAndHomeScreenHeader();
  v17 = MEMORY[0x28223BE20](v16);
  v99 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v90 - v20);
  MEMORY[0x28223BE20](v19);
  v104 = &v90 - v22;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v97 = v7;
  v23 = 0xD000000000000012;
  v94 = sub_24BAA7C2C();
  v93 = v24;
  v98 = a1;
  v25 = *a1;
  if (v25)
  {
    swift_retain_n();
    sub_24B984444();
    v26 = sub_24B8D7188();
    if (v26 && (v27 = v26, v28 = [v26 mode], v27, v29 = objc_msgSend(v28, sel_symbolImageName), v28, v23 = 0xD000000000000012, v29))
    {
      v23 = sub_24BAAA01C();
      v31 = v30;
    }

    else
    {

      v31 = 0x800000024BAC0720;
    }

    v32 = sub_24B991A94();

    if (!v32)
    {
      v32 = sub_24BAA974C();
    }

    (*(v13 + 104))(v15, *MEMORY[0x277CE0EE0], v95);
    v33 = sub_24BAA98AC();
    v34 = sub_24B991A94();

    if (!v34)
    {
      v34 = sub_24BAA974C();
    }

    *v21 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
    swift_storeEnumTagMultiPayload();
    v35 = (v21 + v16[5]);
    v36 = v93;
    *v35 = v94;
    v35[1] = v36;
    v37 = 1;
    *(v21 + v16[6]) = 1;
    v38 = (v21 + v16[7]);
    *v38 = v23;
    v38[1] = v31;
    *(v21 + v16[8]) = v32;
    *(v21 + v16[9]) = v33;
    *(v21 + v16[10]) = v34;
    *(v21 + v16[11]) = 0;
    v39 = (v21 + v16[12]);
    v106 = 0;
    sub_24BAA99EC();
    v40 = v110;
    *v39 = v109;
    v39[1] = v40;
    v41 = (v21 + v16[13]);
    v106 = 0;
    sub_24BAA99EC();
    v42 = v110;
    *v41 = v109;
    v41[1] = v42;
    v43 = (v21 + v16[14]);
    v106 = 0x3FECCCCCCCCCCCCDLL;
    sub_24BAA99EC();
    v44 = v110;
    *v43 = v109;
    v43[1] = v44;
    sub_24BA01E70(v21, v104);
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v95 = v109;
    v94 = v111;
    v93 = v113;
    v92 = v114;
    LOBYTE(v106) = 1;
    v108 = v110;
    v107 = v112;
    v45 = *(v25 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshotsForSuggestedPages);

    if (!v45)
    {
      v57 = v105;
      v47 = v97;
      goto LABEL_19;
    }

    v46 = v98;
    v47 = v97;
    if (v45 >> 62)
    {
      if (sub_24BAAA52C())
      {
        goto LABEL_15;
      }
    }

    else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_15:
      v48 = sub_24BAA8BDC();
      v49 = v91;
      *v91 = v48;
      *(v49 + 8) = 0x4028000000000000;
      *(v49 + 16) = 0;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068648);
      sub_24B9FF3E8(v46, (v49 + *(v50 + 44)));

      v51 = sub_24BAA90AC();
      sub_24BAA828C();
      v52 = v49 + *(v47 + 36);
      *v52 = v51;
      *(v52 + 8) = v53;
      *(v52 + 16) = v54;
      *(v52 + 24) = v55;
      *(v52 + 32) = v56;
      *(v52 + 40) = 0;
      v57 = v105;
      sub_24BA01F38(v49, v105);
      v37 = 0;
LABEL_19:
      (*(v96 + 56))(v57, v37, 1, v47);
      *v6 = sub_24BAA8BDC();
      *(v6 + 1) = 0x4028000000000000;
      v6[16] = 0;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068630);
      sub_24BA000C4(&v6[*(v58 + 44)]);
      v59 = v57;
      v60 = sub_24BAA90AC();
      sub_24BAA828C();
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v69 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068638) + 36)];
      *v69 = v60;
      *(v69 + 1) = v62;
      *(v69 + 2) = v64;
      *(v69 + 3) = v66;
      *(v69 + 4) = v68;
      v69[40] = 0;
      v70 = sub_24BAA90DC();
      sub_24BAA828C();
      v71 = v99;
      v72 = &v6[*(v100 + 36)];
      *v72 = v70;
      *(v72 + 1) = v73;
      *(v72 + 2) = v74;
      *(v72 + 3) = v75;
      *(v72 + 4) = v76;
      v72[40] = 0;
      v77 = v104;
      sub_24BA01ED4(v104, v71);
      v78 = v106;
      v79 = v108;
      v80 = v107;
      v81 = v59;
      v82 = v101;
      sub_24B8F3208(v81, v101, &qword_27F068628);
      v83 = v103;
      sub_24B8F3208(v6, v103, &qword_27F068618);
      v84 = v6;
      v85 = v102;
      sub_24BA01ED4(v71, v102);
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068640);
      v87 = v85 + v86[12];
      *v87 = 0;
      *(v87 + 8) = v78;
      *(v87 + 16) = v95;
      *(v87 + 24) = v79;
      *(v87 + 32) = v94;
      *(v87 + 40) = v80;
      v88 = v92;
      *(v87 + 48) = v93;
      *(v87 + 56) = v88;
      sub_24B8F3208(v82, v85 + v86[16], &qword_27F068628);
      sub_24B8F3208(v83, v85 + v86[20], &qword_27F068618);
      sub_24B8F35E4(v84, &qword_27F068618);
      sub_24B8F35E4(v105, &qword_27F068628);
      sub_24BA02710(v77, type metadata accessor for PagesAndHomeScreenHeader);
      sub_24B8F35E4(v83, &qword_27F068618);
      sub_24B8F35E4(v82, &qword_27F068628);
      return sub_24BA02710(v71, type metadata accessor for PagesAndHomeScreenHeader);
    }

    v57 = v105;
    goto LABEL_19;
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24BA02674(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24B9FF3E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v3 = sub_24BAA8DFC();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068650);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v38 = sub_24BAA7C2C();
  v39 = v11;
  if (*a1)
  {

    v12 = sub_24BA01FA8();
    v36 = v13;
    v37 = v12;

    v35 = &v28;
    MEMORY[0x28223BE20](v14);

    sub_24BAA8BCC();
    LODWORD(v44) = 0;
    sub_24BA02674(&qword_27F065160, MEMORY[0x277CE0428]);
    sub_24BAAA85C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068658);
    sub_24BA024C8();
    sub_24BAA9D8C();
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v34 = v10;
    v35 = v44;
    v32 = v48;
    v33 = v46;
    v31 = v49;
    v43 = 1;
    v42 = v45;
    v41 = v47;
    v15 = v5;
    v16 = *(v5 + 16);
    v17 = v4;
    v16(v8, v10, v4);
    v18 = v43;
    v29 = v42;
    v30 = v41;
    v20 = v39;
    v19 = v40;
    v21 = v37;
    *v40 = v38;
    v19[1] = v20;
    v22 = v36;
    v19[2] = v21;
    v19[3] = v22;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068678);
    v16(v19 + *(v23 + 48), v8, v17);
    v24 = v19 + *(v23 + 64);
    *v24 = 0;
    v24[8] = v18;
    *(v24 + 2) = v35;
    v24[24] = v29;
    *(v24 + 4) = v33;
    v24[40] = v30;
    v25 = v31;
    *(v24 + 6) = v32;
    *(v24 + 7) = v25;
    v26 = *(v15 + 8);

    v26(v34, v17);
    v26(v8, v17);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA02674(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B9FF868(uint64_t a1, _OWORD *a2)
{
  v9 = a1;
  v3 = swift_allocObject();
  v4 = a2[3];
  v3[3] = a2[2];
  v3[4] = v4;
  v5 = a2[5];
  v3[5] = a2[4];
  v3[6] = v5;
  v6 = a2[1];
  v3[1] = *a2;
  v3[2] = v6;

  sub_24BA01DA4(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068670);
  sub_24B8F384C(&qword_27F068688, &qword_27F068680);
  sub_24B8F384C(&qword_27F068668, &qword_27F068670);
  sub_24BA02674(&qword_27F068690, type metadata accessor for HomeScreenSnapshot);
  return sub_24BAA9C0C();
}

uint64_t sub_24B9FFA04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B8C();
  sub_24BAA9B8C();
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA02674(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

  sub_24BAA86FC();
  sub_24BAA99EC();
  type metadata accessor for HomeScreenSnapshot();
  sub_24BA02674(&qword_27F064330, type metadata accessor for HomeScreenSnapshot);
  sub_24BAA84DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068698);
  sub_24BAA99EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0686A0);
  sub_24BA02588();
  sub_24BA026BC();
  return sub_24BAA84AC();
}

uint64_t sub_24B9FFC8C(uint64_t a1, __int128 *a2)
{
  v3 = sub_24BAA975C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HomeScreenPageView();
  MEMORY[0x28223BE20](v7);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a2[3];
  v35 = a2[2];
  v36 = v10;
  v11 = a2[5];
  v37 = a2[4];
  v38 = v11;
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  (*(v4 + 104))(v6, *MEMORY[0x277CE0EE0], v3);
  v13 = sub_24BAA98BC();
  sub_24BA01DA4(a2, &v31);
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA02674(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v9 = sub_24BAA86FC();
  v9[1] = v14;
  v15 = v7[5];
  *(v9 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v16 = (v9 + v7[6]);
  v30 = 0;
  sub_24BAA99EC();
  v17 = v32;
  *v16 = v31;
  v16[1] = v17;
  v18 = v9 + v7[7];
  LOBYTE(v30) = 0;
  sub_24BAA99EC();
  v19 = v32;
  *v18 = v31;
  *(v18 + 1) = v19;
  v20 = (v9 + v7[8]);
  type metadata accessor for HomeScreenSnapshot();
  sub_24BA02674(&qword_27F064330, type metadata accessor for HomeScreenSnapshot);

  *v20 = sub_24BAA84DC();
  v20[1] = v21;
  v22 = (v9 + v7[9]);
  v23 = v36;
  v22[2] = v35;
  v22[3] = v23;
  v24 = v38;
  v22[4] = v37;
  v22[5] = v24;
  v25 = v34;
  *v22 = v33;
  v22[1] = v25;
  *(v9 + v7[11]) = 0;
  v26 = v9 + v7[12];
  *v26 = v13;
  *(v26 + 8) = xmmword_24BAB8A30;
  *(v26 + 3) = 0x4010000000000000;
  *(v9 + v7[10]) = 0x4030000000000000;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v31 = sub_24BAA7C2C();
  v32 = v27;
  sub_24BA02674(&qword_27F0686B0, type metadata accessor for HomeScreenPageView);
  sub_24B8F5E3C();
  sub_24BAA956C();

  return sub_24BA02710(v9, type metadata accessor for HomeScreenPageView);
}

uint64_t sub_24BA000C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24BAA8DFC();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0686C0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v19 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v9 = sub_24BAA7C2C();
  v11 = v10;
  v17 = &v17;
  v18 = v9;
  MEMORY[0x28223BE20](v9);

  sub_24BAA8BCC();
  v20 = 0;
  sub_24BA02674(&qword_27F065160, MEMORY[0x277CE0428]);
  sub_24BAAA85C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0686C8);
  sub_24BA02778();
  sub_24BAA9D8C();
  v12 = *(v4 + 16);
  v13 = v19;
  v12(v19, v8, v3);
  *a1 = v18;
  a1[1] = v11;
  a1[2] = 0;
  a1[3] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0686D8);
  v12(a1 + *(v14 + 48), v13, v3);
  v15 = *(v4 + 8);

  v15(v8, v3);
  v15(v13, v3);
}

uint64_t sub_24BA00414(uint64_t a1)
{
  if (*a1)
  {
    v8 = *(*a1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshots);
    v2 = swift_allocObject();
    v3 = *(a1 + 48);
    v2[3] = *(a1 + 32);
    v2[4] = v3;
    v4 = *(a1 + 80);
    v2[5] = *(a1 + 64);
    v2[6] = v4;
    v5 = *(a1 + 16);
    v2[1] = *a1;
    v2[2] = v5;

    sub_24BA01DA4(a1, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068680);
    type metadata accessor for HomeScreenPageView();
    sub_24B8F384C(&qword_27F068688, &qword_27F068680);
    sub_24BA02674(&qword_27F0686B0, type metadata accessor for HomeScreenPageView);
    sub_24BA02674(&qword_27F068690, type metadata accessor for HomeScreenSnapshot);
    return sub_24BAA9C0C();
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA02674(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

double sub_24BA00610@<D0>(__int128 *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_24BAA975C();
  MEMORY[0x28223BE20](v4);
  v6 = a1[3];
  v32 = a1[2];
  v33 = v6;
  v7 = a1[5];
  v34 = a1[4];
  v35 = v7;
  v8 = a1[1];
  v30 = *a1;
  v31 = v8;
  (*(v9 + 104))(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);

  v10 = sub_24BAA98BC();
  sub_24BA01DA4(a1, &v28);
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA02674(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *a2 = sub_24BAA86FC();
  a2[1] = v11;
  v12 = type metadata accessor for HomeScreenPageView();
  v13 = v12[5];
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v14 = (a2 + v12[6]);
  v27 = 0;
  sub_24BAA99EC();
  v15 = v29;
  *v14 = v28;
  v14[1] = v15;
  v16 = a2 + v12[7];
  LOBYTE(v27) = 0;
  sub_24BAA99EC();
  v17 = v29;
  *v16 = v28;
  *(v16 + 1) = v17;
  v18 = (a2 + v12[8]);
  type metadata accessor for HomeScreenSnapshot();
  sub_24BA02674(&qword_27F064330, type metadata accessor for HomeScreenSnapshot);
  *v18 = sub_24BAA84DC();
  v18[1] = v19;
  v20 = (a2 + v12[9]);
  v21 = v33;
  v20[2] = v32;
  v20[3] = v21;
  v22 = v35;
  v20[4] = v34;
  v20[5] = v22;
  v23 = v31;
  *v20 = v30;
  v20[1] = v23;
  *(a2 + v12[11]) = 2;
  v24 = a2 + v12[12];
  *v24 = v10;
  result = 15.0;
  *(v24 + 8) = xmmword_24BAB8A30;
  *(v24 + 3) = 0x4010000000000000;
  *(a2 + v12[10]) = 0x4030000000000000;
  return result;
}

uint64_t sub_24BA008EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068608);
  MEMORY[0x28223BE20](v19);
  v17 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064058);
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v17 - v5;
  v7 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068FB0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  sub_24BAA8DAC();
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA833C();
  sub_24BAA8DBC();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064078);
  sub_24B90A7A8();
  sub_24BAA833C();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  sub_24BAA8C2C();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24BA00C38(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064130);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v13 = sub_24BAA7C2C();
  v14 = v5;
  sub_24BAA825C();
  v6 = sub_24BAA826C();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v7 = swift_allocObject();
  v8 = a1[3];
  v7[3] = a1[2];
  v7[4] = v8;
  v9 = a1[5];
  v7[5] = a1[4];
  v7[6] = v9;
  v10 = a1[1];
  v7[1] = *a1;
  v7[2] = v10;
  sub_24BA01DA4(a1, v12);
  sub_24B8F5E3C();
  return sub_24BAA9A6C();
}

uint64_t sub_24BA00DE4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v15 = sub_24BAA7C2C();
  v16 = v4;
  v5 = swift_allocObject();
  v6 = a1[3];
  v5[3] = a1[2];
  v5[4] = v6;
  v7 = a1[5];
  v5[5] = a1[4];
  v5[6] = v7;
  v8 = a1[1];
  v5[1] = *a1;
  v5[2] = v8;
  sub_24BA01DA4(a1, v14);
  sub_24B8F5E3C();
  sub_24BAA9A7C();
  v14[0] = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  v9 = v15;
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = (v9 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064078);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_24B9027F8;
  v13[2] = v11;
  return result;
}

uint64_t sub_24BA00F84(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B6C();
  sub_24BAA9B6C();
  if (*a1)
  {

    sub_24B9951AC(MEMORY[0x277D84F90]);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA02674(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

void *sub_24BA01098(void *result)
{
  if (*result)
  {
    if (*(*result + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshotsForSuggestedPages))
    {

      sub_24B992C90(v1, 2.0);
    }
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA02674(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA0116C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v42 = a5;
  v40 = sub_24BAA9BDC();
  v44 = *(v40 - 8);
  v9 = MEMORY[0x28223BE20](v40);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v39 = &v38 - v11;
  sub_24BAA9BCC();
  v41 = sub_24BAA8BDC();
  v46 = 0;
  sub_24BA01550(a1, a2, a3, a4, &v60);
  v50 = *&v61[32];
  v51 = *&v61[48];
  v47 = v60;
  v48 = *v61;
  v49 = *&v61[16];
  v53[4] = *&v61[48];
  v53[5] = *&v61[64];
  v53[2] = *&v61[16];
  v53[3] = *&v61[32];
  v52 = *&v61[64];
  v53[0] = v60;
  v53[1] = *v61;
  sub_24B8F3208(&v47, &v55, &qword_27F0686F8);
  sub_24B8F35E4(v53, &qword_27F0686F8);
  *&v45[39] = v49;
  *&v45[55] = v50;
  *&v45[71] = v51;
  *&v45[87] = v52;
  *&v45[7] = v47;
  *&v45[23] = v48;
  v13 = v46;
  v14 = sub_24BAA90CC();
  sub_24BAA828C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v43;
  v24 = *(v44 + 16);
  v25 = v12;
  v26 = v40;
  v24(v43, v25, v40);
  v27 = v42;
  v24(v42, v23, v26);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068700) + 48);
  *(&v56[3] + 1) = *&v45[48];
  *(&v56[4] + 1) = *&v45[64];
  *(&v56[5] + 1) = *&v45[80];
  *(&v56[1] + 1) = *&v45[16];
  v29 = &v27[v28];
  v30 = v41;
  *&v55 = v41;
  *(&v55 + 1) = 0x4000000000000000;
  LOBYTE(v56[0]) = v13;
  *&v56[6] = *&v45[95];
  *(&v56[2] + 1) = *&v45[32];
  *(v56 + 1) = *v45;
  BYTE8(v56[6]) = v14;
  *(&v56[6] + 9) = *v54;
  HIDWORD(v56[6]) = *&v54[3];
  *&v57 = v16;
  *(&v57 + 1) = v18;
  *&v58 = v20;
  *(&v58 + 1) = v22;
  v59 = 0;
  v29[160] = 0;
  v31 = v56[0];
  *v29 = v55;
  *(v29 + 1) = v31;
  v32 = v56[4];
  *(v29 + 4) = v56[3];
  *(v29 + 5) = v32;
  v33 = v56[2];
  *(v29 + 2) = v56[1];
  *(v29 + 3) = v33;
  v34 = v58;
  *(v29 + 8) = v57;
  *(v29 + 9) = v34;
  v35 = v56[6];
  *(v29 + 6) = v56[5];
  *(v29 + 7) = v35;
  sub_24B8F3208(&v55, &v60, &qword_27F068708);
  v36 = *(v44 + 8);
  v36(v39, v26);
  *&v61[49] = *&v45[48];
  *&v61[65] = *&v45[64];
  *v62 = *&v45[80];
  *&v61[1] = *v45;
  *&v61[17] = *&v45[16];
  *&v60 = v30;
  *(&v60 + 1) = 0x4000000000000000;
  v61[0] = v13;
  *&v62[15] = *&v45[95];
  *&v61[33] = *&v45[32];
  v63 = v14;
  *&v64[3] = *&v54[3];
  *v64 = *v54;
  v65 = v16;
  v66 = v18;
  v67 = v20;
  v68 = v22;
  v69 = 0;
  sub_24B8F35E4(&v60, &qword_27F068708);
  return (v36)(v43, v26);
}

uint64_t sub_24BA01550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a1;
  v58 = a2;
  sub_24B8F5E3C();

  v6 = sub_24BAA93CC();
  v8 = v7;
  v10 = v9;
  sub_24BAA928C();
  sub_24BAA91EC();
  sub_24BAA921C();

  v11 = sub_24BAA939C();
  v13 = v12;
  v15 = v14;

  sub_24B900910(v6, v8, v10 & 1);

  sub_24BAA988C();
  v16 = sub_24BAA933C();
  v18 = v17;
  LOBYTE(v8) = v19;

  sub_24B900910(v11, v13, v15 & 1);

  v20 = sub_24BAA938C();
  v49 = v21;
  v50 = v20;
  v23 = v22;
  v51 = v24;
  sub_24B900910(v16, v18, v8 & 1);

  v25 = a4;
  if (a4)
  {
    v57 = a3;
    v58 = a4;

    v26 = sub_24BAA93CC();
    v28 = v27;
    v30 = v29;
    sub_24BAA915C();
    v31 = sub_24BAA939C();
    v33 = v32;
    v48 = v23;
    v35 = v34;
    v37 = v36;

    sub_24B900910(v26, v28, v30 & 1);

    KeyPath = swift_getKeyPath();
    v39 = sub_24BAA989C();
    v25 = swift_getKeyPath();
    v40 = v35 & 1;
    v23 = v48;
    LOBYTE(v57) = v40;
    v41 = v40;
    v42 = 0xC000000000000000;
  }

  else
  {
    v31 = 0;
    v33 = 0;
    v37 = 0;
    KeyPath = 0;
    v42 = 0;
    v39 = 0;
    v41 = 0;
  }

  v52[64] = v23 & 1;
  *&v53 = v31;
  *(&v53 + 1) = v33;
  *&v54 = v41;
  *(&v54 + 1) = v37;
  *&v55 = KeyPath;
  *(&v55 + 1) = v42;
  *&v56 = v25;
  *(&v56 + 1) = v39;
  *a5 = v50;
  *(a5 + 8) = v49;
  *(a5 + 16) = v23 & 1;
  *(a5 + 24) = v51;
  v43 = v54;
  *(a5 + 32) = v53;
  *(a5 + 48) = v43;
  v44 = v56;
  *(a5 + 64) = v55;
  *(a5 + 80) = v44;
  v57 = v31;
  v58 = v33;
  v59 = v41;
  v60 = v37;
  v61 = KeyPath;
  v62 = v42;
  v63 = v25;
  v64 = v39;
  sub_24B8F319C(v50, v49, v23 & 1);

  sub_24B8F3208(&v53, v52, &qword_27F068710);
  sub_24B8F35E4(&v57, &qword_27F068710);
  sub_24B900910(v50, v49, v23 & 1);
}

uint64_t sub_24BA0185C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_24BAA8BDC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0686F0);
  return sub_24BA0116C(v3, v4, v6, v5, (a1 + *(v7 + 44)));
}

uint64_t sub_24BA018D0()
{
  v1 = *(v0 + 80);
  if (v1 != 2 && (v1 & 1) != 0)
  {
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
    return sub_24BAA9A0C();
  }

  if (*v0)
  {
    v2 = *(*v0 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshots);
    v9 = MEMORY[0x277D84F90];
    if (v2 >> 62)
    {
      goto LABEL_28;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

    if (v3)
    {
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C2506E0](v4, v2);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:
            v6 = v9;
            goto LABEL_20;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_28:
            v3 = sub_24BAAA52C();
            goto LABEL_6;
          }

          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_17;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_24BAA81BC();

        if (v10)
        {
          sub_24BAAA66C();
          sub_24BAAA69C();
          sub_24BAAA6AC();
          sub_24BAAA67C();
        }

        else
        {
        }

        ++v4;
        if (v5 == v3)
        {
          goto LABEL_18;
        }
      }
    }

    v6 = MEMORY[0x277D84F90];
LABEL_20:

    if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
    {
      v7 = sub_24BAAA52C();
    }

    else
    {
      v7 = *(v6 + 16);
    }

    if (v7 <= 0)
    {
      sub_24B992358();
    }

    goto LABEL_26;
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24BA02674(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24BA01B98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0685C8);
  sub_24BA01C2C();
  return sub_24BAA84CC();
}

unint64_t sub_24BA01C2C()
{
  result = qword_27F0685D0;
  if (!qword_27F0685D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0685C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0685D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0685E0);
    sub_24B8F384C(&qword_27F0685E8, &qword_27F0685D8);
    sub_24B8F384C(&qword_27F0685F0, &qword_27F0685E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0685D0);
  }

  return result;
}

uint64_t sub_24BA01E70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PagesAndHomeScreenHeader();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BA01ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PagesAndHomeScreenHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BA01F38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BA01FA8()
{
  sub_24B984444();
  v0 = sub_24B8D7188();

  if (!v0)
  {
    goto LABEL_18;
  }

  v1 = [v0 mode];

  v2 = [v1 semanticType];
  if (v2 <= 3)
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          goto LABEL_18;
        }

        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }
      }

      else if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

LABEL_32:
      swift_once();
      return sub_24BAA7C2C();
    }

LABEL_26:
    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

    goto LABEL_32;
  }

  if (v2 <= 5)
  {
    if (v2 == 4)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }
    }

    else if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

    goto LABEL_32;
  }

  switch(v2)
  {
    case 6:
      goto LABEL_26;
    case 7:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_32;
    case 8:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_32;
  }

LABEL_18:
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24BAAD5B0;
  sub_24B984444();
  v4 = sub_24B8D7188();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 mode];

    v7 = [v6 name];
    v8 = sub_24BAAA01C();
    v10 = v9;
  }

  else
  {

    v8 = 0;
    v10 = 0xE000000000000000;
  }

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_24B8F6A20();
  *(v3 + 32) = v8;
  *(v3 + 40) = v10;
  v11 = sub_24BAA9FEC();

  return v11;
}

unint64_t sub_24BA024C8()
{
  result = qword_27F068660;
  if (!qword_27F068660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068658);
    sub_24B8F384C(&qword_27F068668, &qword_27F068670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068660);
  }

  return result;
}

unint64_t sub_24BA02588()
{
  result = qword_27F0686A8;
  if (!qword_27F0686A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0686A0);
    sub_24BA02674(&qword_27F0686B0, type metadata accessor for HomeScreenPageView);
    sub_24BA02674(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0686A8);
  }

  return result;
}

uint64_t sub_24BA02674(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24BA026BC()
{
  result = qword_27F0686B8;
  if (!qword_27F0686B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0686B8);
  }

  return result;
}

uint64_t sub_24BA02710(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24BA02778()
{
  result = qword_27F0686D0;
  if (!qword_27F0686D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0686C8);
    sub_24BA02674(&qword_27F0686B0, type metadata accessor for HomeScreenPageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0686D0);
  }

  return result;
}

uint64_t objectdestroyTm_13()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_24BA0298C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_24BA02AC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for FilterGridItem()
{
  result = qword_27F068728;
  if (!qword_27F068728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24BA02C30()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24BA02DAC(319, &qword_27F068F10, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_24BA02DAC(319, &qword_27F063A30, MEMORY[0x277CE02A8]);
      if (v2 <= 0x3F)
      {
        sub_24B940B08(319, &qword_27F063DF8);
        if (v3 <= 0x3F)
        {
          sub_24B940B08(319, &qword_27F068738);
          if (v4 <= 0x3F)
          {
            sub_24B940B08(319, &qword_27F068740);
            if (v5 <= 0x3F)
            {
              sub_24B940B08(319, &qword_27F063DE0);
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

void sub_24BA02DAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24BAA82EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24BA02E1C@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v2 = sub_24BAA8AFC();
  MEMORY[0x28223BE20](v2 - 8);
  v74 = sub_24BAA8FBC();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068748);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v69 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068750);
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068758);
  MEMORY[0x28223BE20](v11);
  v13 = &v69 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068760);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v15 = &v69 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068768);
  MEMORY[0x28223BE20](v75);
  v76 = &v69 - v16;
  *v7 = sub_24BAA8BDC();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068770);
  sub_24BA035E8(v1, &v7[*(v17 + 44)]);
  v18 = sub_24BAA90AC();
  sub_24BAA828C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068778) + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = sub_24BAA911C();
  sub_24BAA828C();
  v29 = &v7[*(v5 + 44)];
  *v29 = v28;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  v77 = v1;
  v34 = sub_24BA05040();
  sub_24BAA9D1C();
  if (v34 < 90.0)
  {
    sub_24BAAA2BC();
    v35 = sub_24BAA907C();
    v69 = v13;
    v36 = v10;
    v37 = v15;
    v38 = v11;
    v39 = v8;
    v40 = v35;
    sub_24BAA80FC();

    v8 = v39;
    v11 = v38;
    v15 = v37;
    v10 = v36;
    v13 = v69;
  }

  sub_24BAA86BC();
  sub_24B90294C(v7, v10, &qword_27F068748);
  v41 = &v10[*(v8 + 36)];
  v42 = v86;
  *(v41 + 4) = v85;
  *(v41 + 5) = v42;
  *(v41 + 6) = v87;
  v43 = v82;
  *v41 = v81;
  *(v41 + 1) = v43;
  v44 = v84;
  *(v41 + 2) = v83;
  *(v41 + 3) = v44;
  v45 = &v13[*(v11 + 36)];
  v46 = *(sub_24BAA869C() + 20);
  v47 = *MEMORY[0x277CE0118];
  v48 = sub_24BAA8B2C();
  (*(*(v48 - 8) + 104))(&v45[v46], v47, v48);
  __asm { FMOV            V0.2D, #12.0 }

  *v45 = _Q0;
  v54 = sub_24BA05440();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  *&v45[*(v55 + 52)] = v54;
  *&v45[*(v55 + 56)] = 256;
  v56 = sub_24BAA9D1C();
  v58 = v57;
  v59 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CC0) + 36)];
  *v59 = v56;
  v59[1] = v58;
  sub_24B90294C(v10, v13, &qword_27F068750);
  v60 = v72;
  sub_24BAA8FAC();
  v61 = sub_24BA05690();
  sub_24BAA95FC();
  (*(v73 + 8))(v60, v74);
  sub_24B8F35E4(v13, &qword_27F068758);
  v79 = v11;
  v80 = v61;
  swift_getOpaqueTypeConformance2();
  v62 = v76;
  v63 = v71;
  sub_24BAA94DC();
  (*(v70 + 8))(v15, v63);
  sub_24BAA8AEC();
  sub_24BAA8ADC();
  type metadata accessor for FilterGridItem();
  sub_24BAA8ACC();
  sub_24BAA8ADC();

  sub_24BAA8ACC();

  sub_24BAA8ADC();
  sub_24BAA8B1C();
  v64 = sub_24BAA93BC();
  v66 = v65;
  LOBYTE(v63) = v67;
  sub_24BAA858C();
  sub_24B900910(v64, v66, v63 & 1);

  return sub_24BA05918(v62);
}

uint64_t sub_24BA035E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0687B0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0687B8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  *v15 = sub_24BAA8AAC();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0687C0);
  sub_24BA03844(a1, &v15[*(v16 + 44)]);
  *v9 = sub_24BAA8BDC();
  *(v9 + 1) = 0x3FF0000000000000;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0687C8);
  sub_24BA0456C(a1, &v9[*(v17 + 44)]);
  sub_24B8F3208(v15, v13, &qword_27F0687B8);
  sub_24B8F3208(v9, v7, &qword_27F0687B0);
  sub_24B8F3208(v13, a2, &qword_27F0687B8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0687D0);
  v19 = a2 + *(v18 + 48);
  *v19 = 0x4020000000000000;
  *(v19 + 8) = 0;
  sub_24B8F3208(v7, a2 + *(v18 + 64), &qword_27F0687B0);
  sub_24B8F35E4(v9, &qword_27F0687B0);
  sub_24B8F35E4(v15, &qword_27F0687B8);
  sub_24B8F35E4(v7, &qword_27F0687B0);
  return sub_24B8F35E4(v13, &qword_27F0687B8);
}

uint64_t sub_24BA03844@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068818);
  MEMORY[0x28223BE20](v4);
  v6 = (&v61 - v5);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068820);
  MEMORY[0x28223BE20](v69);
  v61 = (&v61 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068828);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v76 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v61 - v14;
  v16 = type metadata accessor for FilterGridItem();
  v17 = v16;
  v18 = *(a1 + *(v16 + 36));
  v71 = v6;
  v72 = v18;
  v74 = v12;
  if (v18)
  {
    v75 = v4;
    v19 = *(a1 + *(v16 + 44));
    if (v19 == 2 || (v19 & 1) == 0)
    {
      if (!*a1)
      {
        type metadata accessor for ActivityConfigViewModel();
        sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

        result = sub_24BAA86DC();
        __break(1u);
        return result;
      }

      v21 = sub_24B991A94();

      if (v21)
      {
        goto LABEL_9;
      }

      v20 = sub_24BAA989C();
    }

    else
    {

      v20 = sub_24BAA974C();
    }

    v21 = v20;
LABEL_9:
    KeyPath = swift_getKeyPath();
    sub_24BAA91EC();
    v23 = sub_24BAA919C();
    (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
    v24 = sub_24BAA91FC();
    sub_24B8F35E4(v15, &qword_27F063CD8);
    v25 = swift_getKeyPath();
    v68 = KeyPath;

    v70 = v21;

    v64 = v25;

    v63 = v24;

    goto LABEL_11;
  }

  v68 = 0;
  v70 = 0;
  v63 = 0;
  v64 = 0;
LABEL_11:
  v26 = a2;
  v27 = a1 + *(v17 + 40);
  v29 = *v27;
  v28 = *(v27 + 1);
  v31 = *(v27 + 2);
  v30 = *(v27 + 3);
  v32 = *(v27 + 4);
  v33 = v27[40];
  v34 = *(a1 + *(v17 + 52));
  v66 = v32;
  v67 = v30;
  v65 = v33;
  v73 = v31;
  v75 = v29;
  if (v34 == 2 || (v34 & 1) != 0)
  {
    v35 = v30;
    v36 = v32;
    sub_24BA059C0(v29, v28, v31, v30, v32, v33);
    v37 = v72;

    sub_24BA059C0(v29, v28, v31, v35, v36, v33);
    v38 = sub_24BAA8AAC();
    v39 = v61;
    *v61 = v38;
    *(v39 + 8) = 0x4018000000000000;
    *(v39 + 16) = 0;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068830);
    sub_24BA03FC8(a1, v39 + *(v40 + 44));
    v41 = v28;
    sub_24B8F3208(v39, v71, &qword_27F068820);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068838);
    sub_24B8F384C(&qword_27F068840, &qword_27F068820);
    sub_24BA05A20();
    v42 = v74;
    sub_24BAA8D0C();
    sub_24B8F35E4(v39, &qword_27F068820);
  }

  else
  {
    v43 = v30;
    v44 = v32;
    sub_24BA059C0(v29, v28, v31, v30, v32, v33);
    v37 = v72;

    sub_24BA059C0(v29, v28, v31, v43, v44, v33);
    v45 = sub_24BAA991C();
    v46 = sub_24BAA915C();
    v47 = swift_getKeyPath();
    v41 = v28;
    v48 = v71;
    *v71 = v45;
    v48[1] = v47;
    v48[2] = v46;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068838);
    sub_24B8F384C(&qword_27F068840, &qword_27F068820);
    sub_24BA05A20();
    v42 = v74;
    sub_24BAA8D0C();
  }

  v62 = v41;
  sub_24B8F3208(v42, v76, &qword_27F068828);
  *v26 = v37;
  v49 = v67;
  *(v26 + 8) = v68;
  v51 = v63;
  v50 = v64;
  *(v26 + 16) = v70;
  *(v26 + 24) = v50;
  v52 = v75;
  *(v26 + 32) = v51;
  *(v26 + 40) = v52;
  v53 = v73;
  *(v26 + 48) = v41;
  *(v26 + 56) = v53;
  v54 = v66;
  *(v26 + 64) = v49;
  *(v26 + 72) = v54;
  v55 = v65;
  *(v26 + 80) = v65;
  *(v26 + 88) = 0x4028000000000000;
  *(v26 + 96) = 0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068858);
  sub_24B8F3208(v76, v26 + *(v56 + 80), &qword_27F068828);
  sub_24B952BE4(v37);
  v57 = v52;
  v58 = v62;
  v59 = v73;
  sub_24BA059C0(v57, v62, v73, v49, v54, v55);
  sub_24BA05B00(v75, v58, v59, v49, v54, v55);
  sub_24B952C54(v37);
  sub_24B8F35E4(v74, &qword_27F068828);
  sub_24B8F35E4(v76, &qword_27F068828);
  sub_24BA05B00(v75, v58, v59, v49, v54, v55);
  return sub_24B952C54(v37);
}

uint64_t sub_24BA03FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C40);
  v3 = MEMORY[0x28223BE20](v53);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = (&v45 - v5);
  v7 = type metadata accessor for FilterGridItem();
  v60 = 0;
  v59 = 0;
  v8 = 0;
  KeyPath = 0;
  v10 = 0;
  v11 = 0;
  v55 = 0;
  v12 = 0;
  v13 = 0;
  v54 = 0;
  v14 = 0;
  v56 = 0;
  if ((*(a1 + *(v7 + 48)) & 1) == 0)
  {
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v68 = sub_24BAA7C2C();
    v69 = v15;
    sub_24B8F5E3C();
    v60 = sub_24BAA93CC();
    v59 = v16;
    v18 = v17;
    v8 = v19;
    KeyPath = swift_getKeyPath();
    v11 = swift_getKeyPath();
    LOBYTE(v68) = v18 & 1;
    LOBYTE(v61) = 0;
    v56 = v18 & 1;
    v12 = sub_24BAA989C();
    v55 = swift_getKeyPath();
    v54 = sub_24BAA915C();
    v13 = swift_getKeyPath();
    v14 = 2;
    v10 = 1;
  }

  v48 = v12;
  v49 = v14;
  v50 = v13;
  v57 = v11;
  *&v58 = KeyPath;
  *(&v58 + 1) = v10;
  v47 = sub_24BAA991C();
  v20 = [objc_opt_self() tertiaryLabelColor];
  v21 = sub_24BAA973C();
  v22 = swift_getKeyPath();
  v23 = v6;
  v24 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C30) + 36));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C38);
  v45 = v8;
  v26 = *(v25 + 28);
  v46 = 0;
  v27 = *MEMORY[0x277CE1050];
  v28 = sub_24BAA996C();
  (*(*(v28 - 8) + 104))(v24 + v26, v27, v28);
  *v24 = swift_getKeyPath();
  *v6 = v47;
  v6[1] = v22;
  v6[2] = v21;
  sub_24BAA916C();
  v29 = sub_24BAA917C();

  v30 = swift_getKeyPath();
  v31 = (v6 + *(v53 + 36));
  *v31 = v30;
  v31[1] = v29;
  v32 = v52;
  sub_24B8F3208(v6, v52, &qword_27F066C40);
  *&v61 = v60;
  *(&v61 + 1) = v59;
  v33 = v56;
  *&v62 = v56;
  *(&v62 + 1) = v8;
  v63 = v58;
  *&v64 = 0;
  v34 = v49;
  *(&v64 + 1) = v57;
  *&v65 = v49;
  v35 = v55;
  v36 = v48;
  *(&v65 + 1) = v55;
  *&v66 = v48;
  v37 = v50;
  v38 = v54;
  *(&v66 + 1) = v50;
  v67 = v54;
  v39 = v51;
  *(v51 + 96) = v54;
  v40 = v66;
  v39[4] = v65;
  v39[5] = v40;
  v41 = v62;
  *v39 = v61;
  v39[1] = v41;
  v42 = v64;
  v39[2] = v63;
  v39[3] = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068860);
  sub_24B8F3208(v32, v39 + *(v43 + 48), &qword_27F066C40);
  sub_24B8F3208(&v61, &v68, &qword_27F068868);
  sub_24B8F35E4(v23, &qword_27F066C40);
  sub_24B8F35E4(v32, &qword_27F066C40);
  v68 = v60;
  v69 = v59;
  v70 = v33;
  v71 = v45;
  v72 = v58;
  v73 = v46;
  v74 = v57;
  v75 = v34;
  v76 = v35;
  v77 = v36;
  v78 = v37;
  v79 = v38;
  return sub_24B8F35E4(&v68, &qword_27F068868);
}

uint64_t sub_24BA0456C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0687D8);
  MEMORY[0x28223BE20](v113);
  v126 = &v99[-v3];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0687E0);
  MEMORY[0x28223BE20](v116);
  v117 = &v99[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0687E8);
  v128 = *(v5 - 8);
  v129 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v115 = &v99[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v114 = &v99[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0687F0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v131 = &v99[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v130 = &v99[-v12];
  v13 = sub_24BAA922C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v99[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0687F8);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v99[-v19];
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068800);
  MEMORY[0x28223BE20](v124);
  v125 = &v99[-v21];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068808);
  v22 = MEMORY[0x28223BE20](v123);
  v127 = &v99[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v122 = &v99[-v25];
  MEMORY[0x28223BE20](v24);
  v133 = &v99[-v26];
  v27 = type metadata accessor for FilterGridItem();
  v28 = (a1 + v27[7]);
  v29 = v28[1];
  v135 = *v28;
  v136 = v29;
  v30 = sub_24B8F5E3C();

  v105 = v30;
  v31 = sub_24BAA93CC();
  v120 = v32;
  v121 = v31;
  LOBYTE(v30) = v33;
  v119 = v34;
  sub_24BAA915C();
  v35 = *(v14 + 104);
  v108 = *MEMORY[0x277CE0A10];
  v109 = v14 + 104;
  v107 = v35;
  v35(v16);
  v118 = sub_24BAA925C();

  v36 = *(v14 + 8);
  v110 = v16;
  v112 = v13;
  v111 = v14 + 8;
  v106 = v36;
  v36(v16, v13);
  KeyPath = swift_getKeyPath();
  v38 = v30 & 1;
  LOBYTE(v135) = v30 & 1;
  v39 = swift_getKeyPath();
  v100 = *(a1 + v27[14]);
  if (v100)
  {
    v40 = 1;
  }

  else
  {
    v40 = 2;
  }

  v41 = swift_getKeyPath();
  v137 = 0;
  v42 = &v20[*(v18 + 44)];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B10);
  v43 = *(v104 + 28);
  v44 = sub_24BAA937C();
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v103 = v44;
  v102 = v46;
  v101 = v45 + 56;
  (v46)(v42 + v43, 1, 1);
  *v42 = swift_getKeyPath();
  v47 = a1;
  v48 = v120;
  *v20 = v121;
  *(v20 + 1) = v48;
  v20[16] = v38;
  *(v20 + 3) = v119;
  *(v20 + 16) = 256;
  v49 = v118;
  *(v20 + 5) = KeyPath;
  *(v20 + 6) = v49;
  *(v20 + 7) = v39;
  *(v20 + 8) = 0x3FE0000000000000;
  *(v20 + 9) = v41;
  *(v20 + 10) = v40;
  v20[88] = 0;
  v50 = *(a1 + v27[11]);
  if (v50 == 2 || (v50 & 1) == 0)
  {
    v51 = sub_24BAA988C();
  }

  else if (*(a1 + v27[12]) == 1)
  {
    v51 = sub_24BAA974C();
  }

  else
  {
    v51 = sub_24BAA989C();
  }

  v52 = v51;
  v53 = v126;
  v54 = swift_getKeyPath();
  v55 = v125;
  sub_24B90294C(v20, v125, &qword_27F0687F8);
  v56 = &v55[*(v124 + 36)];
  *v56 = v54;
  v56[1] = v52;
  v57 = swift_getKeyPath();
  v58 = v55;
  v59 = v122;
  sub_24B90294C(v58, v122, &qword_27F068800);
  v60 = &v59[*(v123 + 36)];
  *v60 = v57;
  v60[8] = 0;
  sub_24B90294C(v59, v133, &qword_27F068808);
  v61 = (v47 + v27[8]);
  v62 = v61[1];
  if (v62)
  {
    v120 = v27;
    v121 = v47;
    v135 = *v61;
    v136 = v62;

    v63 = sub_24BAA93CC();
    v125 = v64;
    v126 = v63;
    v66 = v65;
    v124 = v67;
    v68 = 1;
    if (v100)
    {
      v68 = 2;
    }

    v123 = v68;
    v122 = swift_getKeyPath();
    v69 = v66 & 1;
    LOBYTE(v135) = v66 & 1;
    v134 = 0;
    v70 = v50;
    v71 = swift_getKeyPath();
    v72 = swift_getKeyPath();
    v73 = swift_getKeyPath();
    sub_24BAA927C();
    v74 = v110;
    v75 = v112;
    v107(v110, v108, v112);
    v76 = sub_24BAA925C();

    v106(v74, v75);
    v77 = swift_getKeyPath();
    v78 = (v53 + *(v113 + 36));
    v102(v78 + *(v104 + 28), 1, 1, v103);
    *v78 = swift_getKeyPath();
    v79 = v125;
    *v53 = v126;
    *(v53 + 8) = v79;
    *(v53 + 16) = v69;
    *(v53 + 24) = v124;
    *(v53 + 32) = 256;
    v80 = v123;
    *(v53 + 40) = v122;
    *(v53 + 48) = v80;
    *(v53 + 56) = 0;
    *(v53 + 64) = v71;
    *(v53 + 72) = 0x3FE8000000000000;
    *(v53 + 80) = v72;
    *(v53 + 88) = 1;
    *(v53 + 96) = v73;
    *(v53 + 104) = 0xC010000000000000;
    *(v53 + 112) = v77;
    *(v53 + 120) = v76;
    if (v70 != 2 && (v70 & 1) != 0 && *(v121 + v120[12]) == 1)
    {
      v81 = sub_24BAA974C();
    }

    else
    {
      v81 = sub_24BAA989C();
    }

    v82 = v81;
    v83 = v130;
    v84 = swift_getKeyPath();
    v85 = v117;
    sub_24B90294C(v53, v117, &qword_27F0687D8);
    v86 = &v85[*(v116 + 36)];
    *v86 = v84;
    v86[1] = v82;
    v87 = swift_getKeyPath();
    v88 = v115;
    sub_24B90294C(v85, v115, &qword_27F0687E0);
    v89 = v129;
    v90 = &v88[*(v129 + 36)];
    *v90 = v87;
    v90[8] = 0;
    v91 = v88;
    v92 = v114;
    sub_24B90294C(v91, v114, &qword_27F0687E8);
    sub_24B90294C(v92, v83, &qword_27F0687E8);
    (*(v128 + 56))(v83, 0, 1, v89);
  }

  else
  {
    v83 = v130;
    (*(v128 + 56))(v130, 1, 1, v129);
  }

  v93 = v133;
  v94 = v127;
  sub_24B8F3208(v133, v127, &qword_27F068808);
  v95 = v131;
  sub_24B8F3208(v83, v131, &qword_27F0687F0);
  v96 = v132;
  sub_24B8F3208(v94, v132, &qword_27F068808);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068810);
  sub_24B8F3208(v95, v96 + *(v97 + 48), &qword_27F0687F0);
  sub_24B8F35E4(v83, &qword_27F0687F0);
  sub_24B8F35E4(v93, &qword_27F068808);
  sub_24B8F35E4(v95, &qword_27F0687F0);
  return sub_24B8F35E4(v94, &qword_27F068808);
}

double sub_24BA05040()
{
  v17 = sub_24BAA89FC();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = sub_24BAA8B9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FilterGridItem();
  sub_24B8F3208(v0 + *(v11 + 24), v6, &qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_24BAAA2BC();
    v12 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v17);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = 110.0;
  if (v13 != *MEMORY[0x277CE0268] && v13 != *MEMORY[0x277CE0298] && v13 != *MEMORY[0x277CE02A0] && v13 != *MEMORY[0x277CE0290])
  {
    if (v13 == *MEMORY[0x277CE0260])
    {
      return 121.0;
    }

    else
    {
      if (v13 == *MEMORY[0x277CE0270])
      {
        return 132.0;
      }

      if (v13 == *MEMORY[0x277CE0248])
      {
        return 148.5;
      }

      if (v13 == *MEMORY[0x277CE0280])
      {
        return 165.0;
      }

      if (v13 == *MEMORY[0x277CE0278])
      {
        return 181.5;
      }

      if (v13 == *MEMORY[0x277CE0288])
      {
        return 203.5;
      }

      if (v13 == *MEMORY[0x277CE0250])
      {
        return 225.5;
      }

      if (v13 == *MEMORY[0x277CE0258])
      {
        return 253.0;
      }

      (*(v8 + 8))(v10, v7, 110.0);
      return 110.0;
    }
  }

  return result;
}

uint64_t sub_24BA05440()
{
  v1 = sub_24BAA975C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24BAA82DC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = *(v0 + *(type metadata accessor for FilterGridItem() + 48));
  sub_24BA8DCD0(v11);
  (*(v6 + 104))(v9, *MEMORY[0x277CDF3C0], v5);
  sub_24BAA82CC();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  if (v12)
  {
    v14 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    return sub_24BAA973C();
  }

  else
  {
    (*(v2 + 104))(v4, *MEMORY[0x277CE0EE0], v1);
    return sub_24BAA98BC();
  }
}

unint64_t sub_24BA05690()
{
  result = qword_27F068780;
  if (!qword_27F068780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068758);
    sub_24BA05748();
    sub_24B8F384C(&qword_27F067880, &qword_27F063CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068780);
  }

  return result;
}

unint64_t sub_24BA05748()
{
  result = qword_27F068788;
  if (!qword_27F068788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068750);
    sub_24BA057D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068788);
  }

  return result;
}

unint64_t sub_24BA057D4()
{
  result = qword_27F068790;
  if (!qword_27F068790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068748);
    sub_24BA05860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068790);
  }

  return result;
}

unint64_t sub_24BA05860()
{
  result = qword_27F068798;
  if (!qword_27F068798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068778);
    sub_24B8F384C(&qword_27F0687A0, &qword_27F0687A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068798);
  }

  return result;
}

uint64_t sub_24BA05918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24BA059C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (result)
  {

    return sub_24B91F6F0(a5, a6 & 1);
  }

  return result;
}

unint64_t sub_24BA05A20()
{
  result = qword_27F068848;
  if (!qword_27F068848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068838);
    sub_24B9CCC6C();
    sub_24BA05AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068848);
  }

  return result;
}

unint64_t sub_24BA05AAC()
{
  result = qword_27F068850;
  if (!qword_27F068850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068850);
  }

  return result;
}

uint64_t sub_24BA05B00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (result)
  {

    return sub_24B8FFD5C(a5, a6 & 1);
  }

  return result;
}

unint64_t sub_24BA05B68()
{
  result = qword_27F068870;
  if (!qword_27F068870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068758);
    sub_24BA05690();
    swift_getOpaqueTypeConformance2();
    sub_24B91B804(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068870);
  }

  return result;
}

uint64_t sub_24BA05C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for WatchFaceSettingsView(0);
  v59 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v60 = v4;
  v62 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24BAA8A4C();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24BAA8DFC();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0688C0);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0688B8);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0688B0);
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x28223BE20](v13);
  v55 = &v52 - v14;

  sub_24BAA8BCC();
  v61 = a1;
  v64 = a1;
  LODWORD(v65) = 0;
  sub_24BA09FC0(&qword_27F065160, MEMORY[0x277CE0428]);
  sub_24BAAA85C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0688F0);
  sub_24BA0A008();
  sub_24BAA9D8C();
  v15 = sub_24BAA90AC();
  sub_24BAA828C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0688D8) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_24BAA911C();
  sub_24BAA828C();
  v26 = &v10[*(v8 + 36)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  v31 = v52;
  v32 = v53;
  (*(v52 + 104))(v6, *MEMORY[0x277CDDDC0], v53);
  v33 = sub_24BA0AE74(&qword_27F0688C8, &qword_27F0688C0, &unk_24BAB91E8, sub_24BA09F00);
  sub_24BAA964C();
  (*(v31 + 8))(v6, v32);
  sub_24B8F35E4(v10, &qword_27F0688C0);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v65 = sub_24BAA7C2C();
  v66 = v34;
  sub_24B8F5E3C();
  v35 = sub_24BAA93CC();
  v37 = v36;
  v39 = v38;
  v65 = v8;
  v66 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v55;
  v41 = v56;
  sub_24BAA951C();
  sub_24B900910(v35, v37, v39 & 1);

  v43 = (*(v54 + 8))(v12, v41);
  MEMORY[0x28223BE20](v43);
  v44 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068AE0);
  v65 = v41;
  v66 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24B8F384C(&qword_27F067AF8, &unk_27F068AE0);
  v45 = v63;
  v46 = v58;
  sub_24BAA96CC();
  (*(v57 + 8))(v42, v46);
  v47 = v62;
  sub_24BA0AB7C(v44, v62, type metadata accessor for WatchFaceSettingsView);
  v48 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v49 = swift_allocObject();
  sub_24BA0A734(v47, v49 + v48, type metadata accessor for WatchFaceSettingsView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0688A0);
  v51 = (v45 + *(result + 36));
  *v51 = sub_24BA0A0E8;
  v51[1] = v49;
  v51[2] = 0;
  v51[3] = 0;
  return result;
}

uint64_t sub_24BA06418(uint64_t a1)
{
  v2 = type metadata accessor for WatchFaceSettingsView(0);
  v3 = a1;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  if (*v6)
  {
    v10[1] = *(*v6 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_watchFacesToList);
    sub_24BA0AB7C(v6, v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WatchFaceSettingsView);
    v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v8 = swift_allocObject();
    sub_24BA0A734(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for WatchFaceSettingsView);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068910);
    type metadata accessor for WatchFaceGridItem(0);
    sub_24B8F384C(&qword_27F068918, &qword_27F068910);
    sub_24BA09FC0(&qword_27F068900, type metadata accessor for WatchFaceGridItem);
    sub_24BA09FC0(&qword_27F068920, type metadata accessor for WatchFace);
    return sub_24BAA9C0C();
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA09FC0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

id sub_24BA066B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v35 = sub_24BAA7E4C();
  v42 = *(v35 - 8);
  v5 = MEMORY[0x28223BE20](v35);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v34 - v7;
  v8 = type metadata accessor for WatchFaceSettingsView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = type metadata accessor for WatchFaceGridItem(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  v16 = *(v15 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceName + 8);
  v39 = *(v15 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceName);
  sub_24BA0AB7C(a2, &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WatchFaceSettingsView);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_24BA0A734(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for WatchFaceSettingsView);
  v38 = v18;
  *(v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v44 = *(a2 + *(v9 + 40));
  v40 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068908);
  sub_24BAA99FC();
  if (v43)
  {
    v19 = v42;
    v20 = v42[2];
    v21 = v35;
    v22 = v36;
    v20(v36, v43 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceIdentifier, v35);
    v23 = v37;
    v20(v37, v15 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceIdentifier, v21);
    v24 = sub_24BAA7E0C();

    v25 = v19[1];
    v25(v23, v21);
    v25(v22, v21);
  }

  else
  {
    v24 = 0;
  }

  v42 = *(v15 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceImage);
  v26 = 24.0;
  if ((*(v15 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_deviceWidth + 8) & 1) == 0 && (*(v15 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_deviceCornerRadius + 8) & 1) == 0)
  {
    v26 = ceil(*(v15 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_deviceCornerRadius) / *(v15 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_deviceWidth) * 106.0);
  }

  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v27 = (v14 + v12[5]);
  v28 = v40;
  *v27 = v39;
  v27[1] = v28;
  v29 = (v14 + v12[6]);
  v30 = v38;
  *v29 = sub_24BA0A6AC;
  v29[1] = v30;
  *(v14 + v12[7]) = v24 & 1;
  v31 = v41;
  *(v14 + v12[8]) = v42;
  *(v14 + v12[9]) = v26;
  sub_24BA0A734(v14, v31, type metadata accessor for WatchFaceGridItem);
  v32 = v42;

  return v32;
}

uint64_t sub_24BA06B04(uint64_t a1)
{
  v3 = sub_24BAA7E4C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = (v1 + *(type metadata accessor for WatchFaceSettingsView(0) + 32));
  v11 = *v10;
  v12 = v10[1];
  v19 = *v10;
  v20 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068908);
  sub_24BAA99FC();
  if (!v18)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_8:
    v19 = v11;
    v20 = v12;
    v18 = a1;

    return sub_24BAA9A0C();
  }

  if (!a1)
  {

    goto LABEL_8;
  }

  v13 = *(v4 + 16);
  v17 = v18;
  v13(v9, v18 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceIdentifier, v3);
  v13(v7, a1 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceIdentifier, v3);
  v14 = sub_24BAA7E0C();

  v15 = *(v4 + 8);
  v15(v7, v3);
  v15(v9, v3);
  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = v11;
  v20 = v12;
  v18 = 0;
  return sub_24BAA9A0C();
}

uint64_t sub_24BA06D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068AF0);
  MEMORY[0x28223BE20](v17[0]);
  v4 = v17 - v3;
  v5 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068FB0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  sub_24BAA8DBC();
  v17[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA833C();
  sub_24BAA8DAC();
  v17[4] = a1;
  sub_24BAA833C();
  v13 = *(v17[0] + 48);
  v14 = *(v7 + 16);
  v14(v4, v12, v6);
  v14(&v4[v13], v10, v6);
  sub_24BAA8C2C();
  v15 = *(v7 + 8);
  v15(v10, v6);
  return (v15)(v12, v6);
}

uint64_t sub_24BA06FC0(void *a1)
{
  if (*a1)
  {
    type metadata accessor for WatchFaceSettingsView(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068908);
    sub_24BAA99FC();
    sub_24B999150(v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
    MEMORY[0x24C24FC10](&v3);
    sub_24BAA9B6C();
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA09FC0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA07140(uint64_t a1)
{
  v2 = type metadata accessor for WatchFaceSettingsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v9[0] = sub_24BAA7C2C();
  v9[1] = v5;
  sub_24BA0AB7C(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WatchFaceSettingsView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_24BA0A734(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for WatchFaceSettingsView);
  sub_24B8F5E3C();
  return sub_24BAA9A7C();
}

uint64_t sub_24BA072F8()
{
  type metadata accessor for WatchFaceSettingsView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  MEMORY[0x24C24FC10](&v1);
  sub_24BAA9B6C();
}

uint64_t sub_24BA073BC(void *a1)
{
  if (*a1)
  {
    v1 = qword_27F0630C0;

    if (v1 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v2 = swift_allocObject();
    swift_weakInit();

    sub_24B9E6944(v4, v5, sub_24B9A1E6C, v2);

    type metadata accessor for WatchFaceSettingsView(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068908);
    return sub_24BAA9A0C();
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA09FC0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA075A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v12 = sub_24BAA9C6C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a6 = a1;
  a6[1] = a2;
  v16 = type metadata accessor for WatchFaceSettingsView(0);
  v17 = v16[5];
  *(a6 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B70);
  swift_storeEnumTagMultiPayload();
  v18 = v16[6];
  *(a6 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v19 = a6 + v16[7];
  *v19 = a3;
  *(v19 + 1) = a4;
  v19[16] = a5;
  v20 = v16[8];
  v24[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068878);
  sub_24BAA99EC();
  *(a6 + v20) = v25;
  v21 = v16[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C08);
  sub_24BAA9C7C();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24BAAD5B0;
  *v15 = xmmword_24BAB90B0;
  (*(v13 + 104))(v15, *MEMORY[0x277CDF100], v12);
  result = sub_24BAA9C8C();
  *(a6 + v21) = v22;
  return result;
}

uint64_t sub_24BA0783C()
{
  sub_24BAA909C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0688A0);
  sub_24BA09D24();
  return sub_24BAA829C();
}

uint64_t sub_24BA078C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = sub_24BAA82DC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v108 - v8;
  v10 = sub_24BAA869C();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = (&v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068970);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v108 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068978);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v108 - v18);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068980);
  MEMORY[0x28223BE20](v109);
  v113 = &v108 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068988);
  MEMORY[0x28223BE20](v21 - 8);
  v112 = &v108 - v22;
  KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068990);
  v23 = MEMORY[0x28223BE20](KeyPath);
  v118 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v110 = &v108 - v26;
  MEMORY[0x28223BE20](v25);
  v119 = &v108 - v27;
  *v19 = sub_24BAA9D1C();
  v19[1] = v28;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068998) + 44);
  v114 = v19;
  sub_24BA083B0(a1, v19 + v29);
  v116 = type metadata accessor for WatchFaceGridItem(0);
  v30 = *(a1 + v116[9]) + 8.0;
  v31 = *(v11 + 28);
  v32 = *MEMORY[0x277CE0118];
  v33 = sub_24BAA8B2C();
  (*(*(v33 - 8) + 104))(v13 + v31, v32, v33);
  *v13 = v30;
  v13[1] = v30;
  v117 = a1;
  sub_24BA8DCD0(v9);
  (*(v4 + 104))(v7, *MEMORY[0x277CDF3D0], v3);
  LOBYTE(v32) = sub_24BAA82CC();
  v34 = *(v4 + 8);
  v34(v7, v3);
  v34(v9, v3);
  if (v32)
  {
    v35 = sub_24BAA97AC();
  }

  else
  {
    v36 = [objc_opt_self() systemGray3Color];
    v35 = sub_24BAA973C();
  }

  v37 = v35;
  sub_24BAA832C();
  sub_24BA0AB7C(v13, v16, MEMORY[0x277CDFC08]);
  v38 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AE0) + 36)];
  v39 = v136;
  *v38 = v135;
  *(v38 + 1) = v39;
  *(v38 + 4) = v137;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AE8);
  *&v16[*(v40 + 52)] = v37;
  *&v16[*(v40 + 56)] = 256;
  v41 = sub_24BAA9D1C();
  v43 = v42;
  sub_24B95BB4C(v13);
  v44 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AF0) + 36)];
  *v44 = v41;
  v44[1] = v43;
  v45 = sub_24BAA9D1C();
  v47 = v46;
  v48 = v113;
  v49 = &v113[*(v109 + 36)];
  sub_24B90294C(v16, v49, &qword_27F068970);
  v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AF8) + 36));
  *v50 = v45;
  v50[1] = v47;
  sub_24B90294C(v114, v48, &qword_27F068978);
  v51 = v112;
  sub_24B90294C(v48, v112, &qword_27F068980);
  LOBYTE(v45) = sub_24BAA90DC();
  sub_24BAA828C();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v51;
  v61 = v110;
  sub_24B90294C(v60, v110, &qword_27F068988);
  v62 = v61 + *(KeyPath + 36);
  *v62 = v45;
  *(v62 + 8) = v53;
  *(v62 + 16) = v55;
  *(v62 + 24) = v57;
  *(v62 + 32) = v59;
  *(v62 + 40) = 0;
  sub_24B90294C(v61, v119, &qword_27F068990);
  v63 = (v117 + v116[5]);
  v64 = v63[1];
  v134[0] = *v63;
  v134[1] = v64;
  sub_24B8F5E3C();

  v65 = sub_24BAA93CC();
  v67 = v66;
  LOBYTE(v47) = v68;
  sub_24BAA916C();
  v69 = sub_24BAA939C();
  v71 = v70;
  v73 = v72;

  v74 = v67;
  v75 = v117;
  sub_24B900910(v65, v74, v47 & 1);

  sub_24BAA989C();
  v76 = sub_24BAA933C();
  v112 = v77;
  v113 = v76;
  LOBYTE(v47) = v78;
  v114 = v79;

  sub_24B900910(v69, v71, v73 & 1);

  KeyPath = swift_getKeyPath();
  v80 = sub_24BAA90DC();
  sub_24BAA828C();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v89 = v47 & 1;
  LOBYTE(v134[0]) = v47 & 1;
  LOBYTE(v130[0]) = 0;
  v129[0] = 0;
  if (*(v75 + v116[7]) == 1)
  {
    v90 = sub_24BAA9D1C();
    v92 = v91;
    sub_24BA08F74(v134);
    memcpy(v120, v134, sizeof(v120));
    memcpy(v121, v134, 0x108uLL);
    sub_24B8F3208(v120, v130, &qword_27F0689D8);
    sub_24B8F35E4(v121, &qword_27F0689D8);
    memcpy(&v130[1], v120, 0x108uLL);
    *&v130[0] = v90;
    *(&v130[0] + 1) = v92;
    sub_24BA0AE5C(v130);
  }

  else
  {
    sub_24BA08D88(v121);
    v130[4] = v121[4];
    v130[5] = v121[5];
    *&v130[6] = *&v121[6];
    v130[0] = v121[0];
    v130[1] = v121[1];
    v130[3] = v121[3];
    v130[2] = v121[2];
    sub_24BA0AD98(v130);
  }

  memcpy(v129, v130, 0x119uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0689A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F38);
  sub_24BA0ADA4();
  sub_24B93B014();
  sub_24BAA8D0C();
  v93 = v118;
  sub_24B8F3208(v119, v118, &qword_27F068990);
  memcpy(v121, v134, 0x119uLL);
  v94 = v115;
  sub_24B8F3208(v93, v115, &qword_27F068990);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0689C0);
  v96 = v94 + *(v95 + 48);
  v97 = v112;
  v98 = v113;
  *&v122 = v113;
  *(&v122 + 1) = v112;
  LOBYTE(v123) = v89;
  *(&v123 + 1) = *v133;
  DWORD1(v123) = *&v133[3];
  v99 = v114;
  *(&v123 + 1) = v114;
  LODWORD(v117) = v89;
  v100 = KeyPath;
  *&v124 = KeyPath;
  *(&v124 + 1) = 1;
  LOBYTE(v125) = 0;
  *(&v125 + 1) = *v132;
  DWORD1(v125) = *&v132[3];
  BYTE8(v125) = v80;
  HIDWORD(v125) = *&v131[3];
  *(&v125 + 9) = *v131;
  *&v126 = v82;
  *(&v126 + 1) = v84;
  *&v127 = v86;
  *(&v127 + 1) = v88;
  v128 = 0;
  v101 = v126;
  v102 = v127;
  *(v96 + 96) = 0;
  *(v96 + 64) = v101;
  *(v96 + 80) = v102;
  v103 = v122;
  v104 = v123;
  v105 = v125;
  *(v96 + 32) = v124;
  *(v96 + 48) = v105;
  *v96 = v103;
  *(v96 + 16) = v104;
  v106 = *(v95 + 64);
  memcpy(v129, v121, 0x119uLL);
  memcpy((v94 + v106), v121, 0x119uLL);
  sub_24B8F3208(&v122, v130, &qword_27F0689C8);
  sub_24B8F3208(v129, v130, &qword_27F0689D0);
  sub_24B8F35E4(v119, &qword_27F068990);
  memcpy(v130, v121, 0x119uLL);
  sub_24B8F35E4(v130, &qword_27F0689D0);
  v120[0] = v98;
  v120[1] = v97;
  LOBYTE(v120[2]) = v117;
  *(&v120[2] + 1) = *v133;
  HIDWORD(v120[2]) = *&v133[3];
  v120[3] = v99;
  v120[4] = v100;
  v120[5] = 1;
  LOBYTE(v120[6]) = 0;
  *(&v120[6] + 1) = *v132;
  HIDWORD(v120[6]) = *&v132[3];
  LOBYTE(v120[7]) = v80;
  HIDWORD(v120[7]) = *&v131[3];
  *(&v120[7] + 1) = *v131;
  v120[8] = v82;
  v120[9] = v84;
  v120[10] = v86;
  v120[11] = v88;
  LOBYTE(v120[12]) = 0;
  sub_24B8F35E4(v120, &qword_27F0689C8);
  return sub_24B8F35E4(v118, &qword_27F068990);
}

uint64_t sub_24BA083B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v68 = sub_24BAA992C();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0689E8);
  MEMORY[0x28223BE20](v78);
  v5 = &v65 - v4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0689F0);
  MEMORY[0x28223BE20](v73);
  v75 = &v65 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0689F8);
  MEMORY[0x28223BE20](v74);
  v8 = &v65 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068A00);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v79 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v77 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068A08);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v76 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = (&v65 - v17);
  v19 = [objc_opt_self() blackColor];
  v20 = sub_24BAA976C();
  v21 = type metadata accessor for WatchFaceGridItem(0);
  v22 = *(a1 + *(v21 + 36));
  v23 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068A10) + 36));
  v71 = sub_24BAA869C();
  v24 = *(v71 + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_24BAA8B2C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 104);
  v72 = v25;
  v29 = v25;
  v30 = v18;
  v31 = v26;
  v70 = v28;
  v69 = v27 + 104;
  v28(v23 + v24, v29, v26);
  *v23 = v22 + 8.0;
  v23[1] = v22 + 8.0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8);
  *(v23 + *(v32 + 36)) = 256;
  *v30 = v20;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v33 = (v30 + *(v14 + 44));
  v34 = v86;
  v33[1] = v85;
  v33[2] = v34;
  *v33 = v84;
  v35 = *(a1 + *(v21 + 32));
  if (v35)
  {
    v65 = v35;
    sub_24BAA98FC();
    v36 = v67;
    v37 = v66;
    v38 = v68;
    (*(v67 + 104))(v66, *MEMORY[0x277CE0FE0], v68);
    v39 = sub_24BAA997C();

    (*(v36 + 8))(v37, v38);
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v83 = 1;
    *&v81[6] = v87;
    *&v81[22] = v88;
    *&v81[38] = v89;
    v40 = sub_24BAA97EC();
    LOBYTE(v37) = sub_24BAA90BC();
    v41 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068A30) + 36)];
    v70(v41 + *(v71 + 20), v72, v31);
    *v41 = v22;
    v41[1] = v22;
    *(v41 + *(v32 + 36)) = 256;
    v42 = *&v81[16];
    *(v5 + 18) = *v81;
    *v5 = v39;
    *(v5 + 1) = 0;
    *(v5 + 8) = 1;
    *(v5 + 34) = v42;
    *(v5 + 50) = *&v81[32];
    *(v5 + 8) = *&v81[46];
    *(v5 + 9) = v40;
    v5[80] = v37;
    LOBYTE(v40) = sub_24BAA90BC();
    sub_24BAA828C();
    v43 = &v5[*(v78 + 36)];
    *v43 = v40;
    *(v43 + 1) = v44;
    *(v43 + 2) = v45;
    *(v43 + 3) = v46;
    *(v43 + 4) = v47;
    v43[40] = 0;
    v48 = &qword_27F0689E8;
    sub_24B8F3208(v5, v75, &qword_27F0689E8);
    swift_storeEnumTagMultiPayload();
    sub_24BA0AE74(&qword_27F068A20, &qword_27F0689E8, &unk_24BAB9400, sub_24BA0AEF8);
    sub_24BA0AE74(&qword_27F068A48, &qword_27F0689F8, &unk_24BAB9410, sub_24BA0B068);
    v49 = v77;
    sub_24BAA8D0C();

    v50 = v5;
  }

  else
  {
    v51 = [objc_opt_self() systemGray3Color];
    v52 = sub_24BAA973C();
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v83 = 0;
    *&v82[6] = v87;
    *&v82[22] = v88;
    *&v82[38] = v89;
    v53 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068A18) + 36)];
    v70(v53 + *(v71 + 20), v72, v31);
    *v53 = v22;
    v53[1] = v22;
    *(v53 + *(v32 + 36)) = 256;
    v54 = *&v82[16];
    *(v8 + 18) = *v82;
    *v8 = v52;
    *(v8 + 1) = 0x3FEA3D70A3D70A3DLL;
    *(v8 + 8) = 0;
    *(v8 + 34) = v54;
    *(v8 + 50) = *&v82[32];
    *(v8 + 8) = *&v82[46];
    LOBYTE(v52) = sub_24BAA90BC();
    sub_24BAA828C();
    v55 = &v8[*(v74 + 36)];
    *v55 = v52;
    *(v55 + 1) = v56;
    *(v55 + 2) = v57;
    *(v55 + 3) = v58;
    *(v55 + 4) = v59;
    v55[40] = 0;
    v48 = &qword_27F0689F8;
    sub_24B8F3208(v8, v75, &qword_27F0689F8);
    swift_storeEnumTagMultiPayload();
    sub_24BA0AE74(&qword_27F068A20, &qword_27F0689E8, &unk_24BAB9400, sub_24BA0AEF8);
    sub_24BA0AE74(&qword_27F068A48, &qword_27F0689F8, &unk_24BAB9410, sub_24BA0B068);
    v49 = v77;
    sub_24BAA8D0C();
    v50 = v8;
  }

  sub_24B8F35E4(v50, v48);
  v60 = v76;
  sub_24B8F3208(v30, v76, &qword_27F068A08);
  v61 = v79;
  sub_24B8F3208(v49, v79, &qword_27F068A00);
  v62 = v80;
  sub_24B8F3208(v60, v80, &qword_27F068A08);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068A78);
  sub_24B8F3208(v61, v62 + *(v63 + 48), &qword_27F068A00);
  sub_24B8F35E4(v49, &qword_27F068A00);
  sub_24B8F35E4(v30, &qword_27F068A08);
  sub_24B8F35E4(v61, &qword_27F068A00);
  return sub_24B8F35E4(v60, &qword_27F068A08);
}

double sub_24BA08D88@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24BAA992C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24BAA991C();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_24BAA997C();

  (*(v3 + 8))(v5, v2);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v15 = 1;
  *&v14[8] = v16;
  *&v14[24] = v17;
  *&v14[40] = v18;
  v7 = sub_24BAA920C();
  KeyPath = swift_getKeyPath();
  v9 = [objc_opt_self() systemGray3Color];
  v10 = sub_24BAA973C();
  v11 = swift_getKeyPath();
  v12 = *&v14[18];
  *(a1 + 18) = *&v14[2];
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v12;
  result = *&v14[34];
  *(a1 + 50) = *&v14[34];
  *(a1 + 64) = *&v14[48];
  *(a1 + 72) = KeyPath;
  *(a1 + 80) = v7;
  *(a1 + 88) = v11;
  *(a1 + 96) = v10;
  return result;
}

uint64_t sub_24BA08F74@<X0>(void *a1@<X8>)
{
  v35 = a1;
  v1 = sub_24BAA992C();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x28223BE20](v1);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24BAA975C();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24BAA82DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  sub_24BA8DCD0(&v30 - v11);
  (*(v7 + 104))(v10, *MEMORY[0x277CDF3D0], v6);
  v13 = sub_24BAA82CC();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  v15 = objc_opt_self();
  v16 = &selRef_systemGray3Color;
  if (v13)
  {
    v16 = &selRef_systemBackgroundColor;
  }

  v17 = [v15 *v16];
  v36 = sub_24BAA973C();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *(v72 + 6) = *(&v72[3] + 6);
  *(&v72[1] + 6) = *(&v72[4] + 6);
  *(&v72[2] + 6) = *(&v72[5] + 6);
  (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v31);
  v18 = sub_24BAA98BC();
  v31 = v18;
  v19 = [objc_opt_self() systemBackgroundColor];
  v20 = sub_24BAA973C();
  v30 = v20;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *&v48[6] = *(&v72[6] + 6);
  *&v48[22] = *(&v72[7] + 6);
  *&v48[38] = *(&v72[8] + 6);
  sub_24BAA991C();
  v22 = v32;
  v21 = v33;
  v23 = v34;
  (*(v33 + 104))(v32, *MEMORY[0x277CE0FE0], v34);
  v24 = sub_24BAA997C();

  (*(v21 + 8))(v22, v23);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  LOBYTE(v58[0]) = 1;
  *&v47[6] = *(&v72[9] + 6);
  *&v47[22] = *(&v72[10] + 6);
  *&v47[38] = *(&v72[11] + 6);
  sub_24BAA916C();
  v25 = sub_24BAA917C();

  KeyPath = swift_getKeyPath();
  v27 = sub_24BAA974C();
  v28 = swift_getKeyPath();
  *&v49[0] = v36;
  WORD4(v49[0]) = 256;
  *(v49 + 10) = v72[0];
  *(&v49[1] + 10) = v72[1];
  *(&v49[3] + 1) = *(&v72[2] + 14);
  *(&v49[2] + 10) = v72[2];
  *&v50 = v18;
  v52 = 0;
  *(&v50 + 1) = 0x3FF8000000000000;
  v51 = 0;
  *v46 = v49[0];
  *&v46[16] = v49[1];
  *&v46[64] = v50;
  *&v46[80] = 0u;
  *&v46[32] = v49[2];
  *&v46[48] = v49[3];
  *&v53[0] = v20;
  WORD4(v53[0]) = 256;
  *(v53 + 10) = *v48;
  *(&v53[3] + 1) = *&v48[46];
  *(&v53[2] + 10) = *&v48[32];
  *(&v53[1] + 10) = *&v48[16];
  *&v46[128] = v53[2];
  *&v46[144] = v53[3];
  *&v46[96] = v53[0];
  *&v46[112] = v53[1];
  v54[0] = v24;
  v54[1] = 0;
  LOWORD(v55[0]) = 1;
  *&v55[3] = *&v47[46];
  *(&v55[2] + 2) = *&v47[32];
  *(&v55[1] + 2) = *&v47[16];
  *(v55 + 2) = *v47;
  *(&v55[3] + 1) = KeyPath;
  *&v56 = v25;
  *(&v56 + 1) = v28;
  v57 = v27;
  *&v46[160] = v24;
  *&v46[176] = v55[0];
  *&v46[256] = v27;
  *&v46[224] = v55[3];
  *&v46[240] = v56;
  *&v46[192] = v55[1];
  *&v46[208] = v55[2];
  memcpy(v35, v46, 0x108uLL);
  v60 = *v47;
  v58[0] = v24;
  v58[1] = 0;
  v59 = 1;
  v61 = *&v47[16];
  *v62 = *&v47[32];
  *&v62[14] = *&v47[46];
  v63 = KeyPath;
  v64 = v25;
  v65 = v28;
  v66 = v27;
  sub_24B8F3208(v49, &v37, &qword_27F0689E0);
  sub_24B8F3208(v53, &v37, &qword_27F064D98);
  sub_24B8F3208(v54, &v37, &qword_27F064F38);
  sub_24B8F35E4(v58, &qword_27F064F38);
  v67 = v30;
  v68 = 256;
  v69 = *v48;
  v70 = *&v48[16];
  *v71 = *&v48[32];
  *&v71[14] = *&v48[46];
  sub_24B8F35E4(&v67, &qword_27F064D98);
  v37 = v36;
  v38 = 256;
  v39 = v72[0];
  v40 = v72[1];
  *v41 = v72[2];
  *&v41[14] = *(&v72[2] + 14);
  v42 = v31;
  v44 = 0;
  v45 = 0;
  v43 = 0x3FF8000000000000;
  return sub_24B8F35E4(&v37, &qword_27F0689E0);
}

uint64_t sub_24BA0969C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068958);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  *v6 = sub_24BAA8BCC();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068960);
  sub_24BA078C4(v1, &v6[*(v7 + 44)]);
  sub_24BA0AB7C(v1, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WatchFaceGridItem);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  sub_24BA0A734(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for WatchFaceGridItem);
  sub_24B8F384C(&qword_27F068968, &qword_27F068958);
  sub_24BAA94CC();

  return sub_24B8F35E4(v6, &qword_27F068958);
}

uint64_t sub_24BA098D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B88);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_24BA09A08(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B88);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_24BA09B28()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24BA0AA6C(319, &qword_27F063BA0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24BA0AA6C(319, &qword_27F068F10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24B9184E0();
        if (v3 <= 0x3F)
        {
          sub_24BA09C9C();
          if (v4 <= 0x3F)
          {
            sub_24BA0AA6C(319, &qword_27F068898, MEMORY[0x277CDF110], MEMORY[0x277D83940]);
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

void sub_24BA09C9C()
{
  if (!qword_27F068890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068878);
    v0 = sub_24BAA9A2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F068890);
    }
  }
}

unint64_t sub_24BA09D24()
{
  result = qword_27F0688A8;
  if (!qword_27F0688A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0688A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0688B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068AE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0688B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0688C0);
    sub_24BA0AE74(&qword_27F0688C8, &qword_27F0688C0, &unk_24BAB91E8, sub_24BA09F00);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B8F384C(&qword_27F067AF8, &unk_27F068AE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0688A8);
  }

  return result;
}

unint64_t sub_24BA09F00()
{
  result = qword_27F0688D0;
  if (!qword_27F0688D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0688D8);
    sub_24B8F384C(&qword_27F0688E0, &qword_27F0688E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0688D0);
  }

  return result;
}

uint64_t sub_24BA09FC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24BA0A008()
{
  result = qword_27F0688F8;
  if (!qword_27F0688F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0688F0);
    sub_24BA09FC0(&qword_27F068900, type metadata accessor for WatchFaceGridItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0688F8);
  }

  return result;
}

uint64_t sub_24BA0A108()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for WatchFaceSettingsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24BAA854C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24BAA82DC();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24BA0A3B8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WatchFaceSettingsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

id sub_24BA0A444@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WatchFaceSettingsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24BA066B4(a1, v6, a2);
}

uint64_t sub_24BA0A4C4()
{
  v1 = type metadata accessor for WatchFaceSettingsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24BAA854C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24BAA82DC();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24BA0A734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24BA0A7B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24BA0A890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24BA0A958()
{
  sub_24BA0AA6C(319, &qword_27F068F10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24B8F45F4();
    if (v1 <= 0x3F)
    {
      sub_24BA0AA6C(319, &qword_27F068938, sub_24BA0AAD0, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24BA0AA6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24BA0AAD0()
{
  result = qword_27F068940;
  if (!qword_27F068940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F068940);
  }

  return result;
}

uint64_t sub_24BA0AB7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24BA0ABE4()
{
  v1 = type metadata accessor for WatchFaceGridItem(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24BAA82DC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_24BA0ADA4()
{
  result = qword_27F0689A8;
  if (!qword_27F0689A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0689A0);
    sub_24B8F384C(&qword_27F0689B0, &qword_27F0689B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0689A8);
  }

  return result;
}

uint64_t sub_24BA0AE74(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24BA0AEF8()
{
  result = qword_27F068A28;
  if (!qword_27F068A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068A30);
    sub_24BA0AFB0();
    sub_24B8F384C(&qword_27F064EB8, &qword_27F0642A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068A28);
  }

  return result;
}

unint64_t sub_24BA0AFB0()
{
  result = qword_27F068A38;
  if (!qword_27F068A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068A40);
    sub_24B93B184();
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068A38);
  }

  return result;
}

unint64_t sub_24BA0B068()
{
  result = qword_27F068A50;
  if (!qword_27F068A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068A18);
    sub_24BA0B120();
    sub_24B8F384C(&qword_27F064EB8, &qword_27F0642A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068A50);
  }

  return result;
}

unint64_t sub_24BA0B120()
{
  result = qword_27F068A58;
  if (!qword_27F068A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068A60);
    sub_24BA0B1CC(&qword_27F068A68, &qword_27F068A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068A58);
  }

  return result;
}

uint64_t sub_24BA0B1CC(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_24BA0B23C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068958);
  sub_24B8F384C(&qword_27F068968, &qword_27F068958);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24BA0B2E0(uint64_t a1)
{
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_24BAAA52C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v35 = MEMORY[0x277D84F90];
  sub_24B914D68(0, v2 & ~(v2 >> 63), 0);
  v3 = v35;
  if (v29)
  {
    result = sub_24BAAA4CC();
  }

  else
  {
    result = sub_24BAAA49C();
    v5 = *(a1 + 36);
  }

  v32 = result;
  v33 = v5;
  v34 = v29 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v28 = v2;
    while (v6 < v2)
    {
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_36;
      }

      v9 = v32;
      v10 = v34;
      v30 = v33;
      v11 = sub_24B9A0460(v32, v33, v34, a1);
      v12 = *(v11 + 40);
      v13 = *(v11 + 48);

      v35 = v3;
      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_24B914D68((v14 > 1), v15 + 1, 1);
        v3 = v35;
      }

      *(v3 + 16) = v15 + 1;
      v16 = v3 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      if (v29)
      {
        if (!v10)
        {
          goto LABEL_41;
        }

        v17 = v3;
        if (sub_24BAAA4EC())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F068B18);
        v7 = sub_24BAAA23C();
        sub_24BAAA59C();
        result = v7(v31, 0);
      }

      else
      {
        if (v10)
        {
          goto LABEL_42;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        v17 = v3;
        v18 = 1 << *(a1 + 32);
        if (v9 >= v18)
        {
          goto LABEL_37;
        }

        v19 = v9 >> 6;
        v20 = *(a1 + 56 + 8 * (v9 >> 6));
        if (((v20 >> v9) & 1) == 0)
        {
          goto LABEL_38;
        }

        if (*(a1 + 36) != v30)
        {
          goto LABEL_39;
        }

        v21 = v20 & (-2 << (v9 & 0x3F));
        if (v21)
        {
          v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v2 = v28;
        }

        else
        {
          v22 = v19 << 6;
          v23 = v19 + 1;
          v24 = (a1 + 64 + 8 * v19);
          v2 = v28;
          while (v23 < (v18 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              result = sub_24B8F3830(v9, v30, 0);
              v18 = __clz(__rbit64(v25)) + v22;
              goto LABEL_32;
            }
          }

          result = sub_24B8F3830(v9, v30, 0);
        }

LABEL_32:
        v27 = *(a1 + 36);
        v32 = v18;
        v33 = v27;
        v34 = 0;
      }

      v3 = v17;
      if (v6 == v2)
      {
        sub_24B8F3830(v32, v33, v34);
        return v3;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_24BA0B628()
{
  if (qword_27F0630E0 != -1)
  {
    swift_once();
  }

  v0 = qword_27F077020;
  type metadata accessor for FilteredAppSource();
  v1 = swift_allocObject();

  sub_24BAA817C();
  v2 = (v1 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache);
  *v2 = 0u;
  v2[1] = 0u;
  *(v1 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource_base) = v0;
  *(v1 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource_excludeWebApps) = 0;
  return v1;
}

uint64_t sub_24BA0B704@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v33 = sub_24BAA8A4C();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068A98);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068AA0);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v34 = &v30 - v9;
  type metadata accessor for FilteredAppSource();
  sub_24BA0D830(&unk_27F065110, type metadata accessor for FilteredAppSource);
  sub_24BAA82FC();
  v40 = *(v1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068AB0);
  sub_24BAA9A1C();
  v10 = *v38;
  v32 = *&v38[8];
  v11 = sub_24BA0BCA0();
  *v7 = sub_24BAA84DC();
  *(v7 + 1) = v12;
  *(v7 + 2) = v10;
  *(v7 + 24) = v32;
  v13 = MEMORY[0x277D84F90];
  *(v7 + 5) = v11;
  *(v7 + 6) = v13;
  LOBYTE(v40) = 0;
  sub_24BAA99EC();
  v14 = *&v38[8];
  v7[56] = v38[0];
  *(v7 + 8) = v14;
  *&v40 = 0;
  *(&v40 + 1) = 0xE000000000000000;
  sub_24BAA99EC();
  v15 = *&v38[16];
  *(v7 + 72) = *v38;
  *(v7 + 11) = v15;
  v16 = *(type metadata accessor for SuggestionsAppsPickerView() + 40);
  *&v7[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  *&v32 = v2;
  type metadata accessor for AppIconCache();
  sub_24BA0D830(&qword_27F0651D0, type metadata accessor for AppIconCache);
  v17 = sub_24BAA82FC();
  v18 = sub_24BAA813C();
  v19 = v5;
  v20 = &v7[*(v5 + 36)];
  *v20 = v18;
  v20[1] = v17;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  *v38 = sub_24BAA7C2C();
  *&v38[8] = v21;
  v22 = v31;
  v23 = v33;
  (*(v31 + 104))(v4, *MEMORY[0x277CDDDC0], v33);
  v24 = sub_24BA0D748();
  v25 = sub_24B8F5E3C();
  v26 = v34;
  sub_24BAA95CC();
  (*(v22 + 8))(v4, v23);

  v27 = sub_24BA0D878(v7);
  MEMORY[0x28223BE20](v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068AE0);
  *v38 = v19;
  *&v38[8] = MEMORY[0x277D837D0];
  *&v38[16] = v24;
  v39 = v25;
  swift_getOpaqueTypeConformance2();
  sub_24B8F384C(&qword_27F067AF8, &unk_27F068AE0);
  v28 = v36;
  sub_24BAA96CC();
  return (*(v35 + 8))(v26, v28);
}

uint64_t sub_24BA0BCA0()
{
  v1 = [*(v0 + 16) candidateApps];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    sub_24BA0D5E8();
    v4 = sub_24BAAA12C();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v25 = v2;
  if (v4 >> 62)
  {
LABEL_31:
    v23 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = sub_24BAAA52C();
  }

  else
  {
    v23 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = v7;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x24C2506E0](v8, v4);
        }

        else
        {
          if (v8 >= *(v23 + 16))
          {
            goto LABEL_30;
          }

          v9 = *(v4 + 8 * v8 + 32);
        }

        v10 = v9;
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v24 = v9;
        MEMORY[0x28223BE20](v9);
        v22[2] = &v24;

        v11 = sub_24BA3AC5C(sub_24BA0DAA4, v22, v6);

        if ((v11 & 1) == 0)
        {
          break;
        }

        ++v8;
        if (v7 == v5)
        {
          goto LABEL_20;
        }
      }

      v12 = v10;
      MEMORY[0x24C2501C0]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24BAAA14C();
      }

      sub_24BAAA16C();
      v6 = v25;
    }

    while (v7 != v5);
  }

LABEL_20:

  if (!(v6 >> 62))
  {
    v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_33:

    return MEMORY[0x277D84F90];
  }

  v13 = sub_24BAAA52C();
  if (!v13)
  {
    goto LABEL_33;
  }

LABEL_22:
  v24 = MEMORY[0x277D84F90];
  result = sub_24BAAA68C();
  if (v13 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x24C2506E0](v15, v6);
      }

      else
      {
        v16 = *(v6 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      v18 = [v16 bundleId];
      v19 = sub_24BAAA01C();
      v21 = v20;

      _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v19, v21);
      sub_24BAAA66C();
      sub_24BAAA69C();
      sub_24BAAA6AC();
      sub_24BAAA67C();
    }

    while (v13 != v15);

    return v24;
  }

  return result;
}

uint64_t sub_24BA0BFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068AF0);
  MEMORY[0x28223BE20](v17[0]);
  v4 = v17 - v3;
  v5 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068FB0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  sub_24BAA8DAC();
  v17[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA833C();
  sub_24BAA8DBC();
  v17[4] = a1;
  sub_24BAA833C();
  v13 = *(v17[0] + 48);
  v14 = *(v7 + 16);
  v14(v4, v12, v6);
  v14(&v4[v13], v10, v6);
  sub_24BAA8C2C();
  v15 = *(v7 + 8);
  v15(v10, v6);
  return (v15)(v12, v6);
}

uint64_t sub_24BA0C27C(uint64_t a1)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v10 = sub_24BAA7C2C();
  v11 = v2;
  v3 = swift_allocObject();
  v4 = *(a1 + 112);
  *(v3 + 112) = *(a1 + 96);
  *(v3 + 128) = v4;
  *(v3 + 144) = *(a1 + 128);
  v5 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v5;
  v6 = *(a1 + 80);
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = v6;
  v7 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v7;
  sub_24BA0D980(a1, v9);
  sub_24B8F5E3C();
  return sub_24BAA9A7C();
}

uint64_t sub_24BA0C398()
{
  sub_24BA0C3FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  return sub_24BAA9B6C();
}

void sub_24BA0C3FC()
{
  v1 = v0;
  v2 = sub_24BAA7E4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*v0)
  {
    swift_retain_n();
    sub_24B984444();
    v7 = sub_24B8D7188();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 mode];

      v10 = [v9 identifier];
      sub_24BAA7E1C();

      sub_24BAA7DEC();

      (*(v3 + 8))(v5, v2);
      v11 = *(v0 + 16);
      v12 = [v11 leafIcons];
      if (v12)
      {
        v13 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068B08);
        v14 = sub_24BAAA12C();
      }

      else
      {
        v14 = MEMORY[0x277D84F90];
      }

      v19 = [v11 candidateApps];
      v20 = MEMORY[0x277D84F90];
      if (v19)
      {
        v21 = v19;
        sub_24BA0D5E8();
        v22 = sub_24BAAA12C();
      }

      else
      {
        v22 = MEMORY[0x277D84F90];
      }

      v100 = v22;
      *v96 = *(v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068AB0);
      sub_24BAA99FC();
      v23 = 0;
      v24 = sub_24BA0B2E0(v99);

      v99 = v20;
      v98 = MEMORY[0x277D84FA0];
      v92 = v22;
      if (v14 >> 62)
      {
LABEL_81:
        v25 = sub_24BAAA52C();
      }

      else
      {
        v25 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = &selRef_candidateContacts;
      v89 = v6;
      v87 = v1;
      v88 = v11;
      v95 = v24;
      if (v25)
      {
        if (v25 < 1)
        {
          __break(1u);
          goto LABEL_86;
        }

        v27 = 0;
        v93 = (v14 & 0xC000000000000001);
        v6 = MEMORY[0x277D84F90];
        isa = MEMORY[0x277D84F90];
        v91 = v25;
        v90 = v14;
        do
        {
          v30 = v6;
          if (v93)
          {
            MEMORY[0x24C2506E0](v27, v14);
          }

          else
          {
            swift_unknownObjectRetain();
          }

          objc_opt_self();
          v31 = swift_dynamicCastObjCClass();
          v32 = swift_unknownObjectRetain();
          if (v31)
          {
            v33 = [v31 v26[2]];
            v34 = sub_24BAAA01C();
            v1 = v26;
            v36 = v35;

            v96[0] = v34;
            v96[1] = v36;
            MEMORY[0x28223BE20](v37);
            v85[-2] = v96;
            LOBYTE(v33) = sub_24BA3AB94(sub_24B915A68, &v85[-4], v95);

            if (v33)
            {
              v26 = v1;
              v38 = swift_unknownObjectRetain();
              MEMORY[0x24C2501C0](v38);
              if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_24BAAA14C();
              }

              sub_24BAAA16C();
              v39 = v99;
              v40 = [v31 v1 + 2296];
              v41 = sub_24BAAA01C();
              v43 = v42;

              v44 = v43;
              v6 = v39;
              sub_24B8E50EC(v96, v41, v44);
              swift_unknownObjectRelease_n();

              v14 = v90;
            }

            else
            {
              swift_unknownObjectRelease();
              v45 = [v31 v1 + 2296];
              v46 = sub_24BAAA01C();
              v48 = v47;

              v26 = v1;
              v1 = v23;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                isa = sub_24B99A290(0, *(isa + 2) + 1, 1, isa);
              }

              v14 = v90;
              v50 = *(isa + 2);
              v49 = *(isa + 3);
              if (v50 >= v49 >> 1)
              {
                isa = sub_24B99A290((v49 > 1), v50 + 1, 1, isa);
              }

              swift_unknownObjectRelease();
              v28 = isa;
              *(isa + 2) = v50 + 1;
              v29 = &v28[16 * v50];
              *(v29 + 4) = v46;
              *(v29 + 5) = v48;
              v23 = v1;
              v6 = v30;
            }

            v25 = v91;
          }

          else
          {
            MEMORY[0x24C2501C0](v32);
            if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24BAAA14C();
              v25 = v91;
            }

            sub_24BAAA16C();
            swift_unknownObjectRelease();
            v6 = v99;
          }

          ++v27;
        }

        while (v25 != v27);
      }

      else
      {
        isa = MEMORY[0x277D84F90];
        v6 = MEMORY[0x277D84F90];
      }

      v20 = *(v89 + 48);

      v51 = sub_24BAAA11C();

      v24 = v88;
      [(SEL *)v20 didRemoveAppsWithBundleIds:v51 suggestedPage:v88];

      v97 = MEMORY[0x277D84F90];
      v91 = [v24 numberOfLeafIconSpots];
      v52 = v95;
      isa = v95[2].isa;
      if (isa)
      {
        v86 = v20;
        v85[1] = v23;
        v14 = 0;
        v23 = v98;
        v93 = v95 + 4;
        v11 = v98 + 56;
        v53 = MEMORY[0x277D84F90];
        v90 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v14 >= v52[2].isa)
          {
            __break(1u);
            goto LABEL_81;
          }

          v54 = &v93[2 * v14];
          v20 = v54->isa;
          v55 = v54[1].isa;
          if (*(v23 + 2))
          {
            sub_24BAAA7FC();

            sub_24BAAA07C();
            v56 = sub_24BAAA84C();
            v57 = -1 << v23[32];
            v24 = v56 & ~v57;
            if ((*&v11[(v24 >> 3) & 0xFFFFFFFFFFFFFF8] >> v24))
            {
              v58 = ~v57;
              while (1)
              {
                v59 = (*(v23 + 6) + 16 * v24);
                v60 = *v59 == v20 && v59[1] == v55;
                if (v60 || (sub_24BAAA78C() & 1) != 0)
                {
                  break;
                }

                v24 = (v24 + 1) & v58;
                if (((*&v11[(v24 >> 3) & 0xFFFFFFFFFFFFFF8] >> v24) & 1) == 0)
                {
                  goto LABEL_56;
                }
              }

              goto LABEL_43;
            }
          }

          else
          {
          }

LABEL_56:
          v61 = objc_allocWithZone(MEMORY[0x277CEB560]);
          v62 = sub_24BAA9FDC();

          v63 = [v61 initWithBundleId_];

          if (v6 >> 62)
          {
            v64 = sub_24BAAA52C();
          }

          else
          {
            v64 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v65 = v63;
          if (v64 >= v91)
          {
            MEMORY[0x24C2501C0]();
            if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24BAAA14C();
            }

            sub_24BAAA16C();
            v90 = v97;
          }

          else
          {
            MEMORY[0x24C2501C0]();
            if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24BAAA14C();
            }

            sub_24BAAA16C();
            v6 = v99;
          }

          v66 = v65;
          MEMORY[0x24C2501C0]();
          if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24BAAA14C();
          }

          sub_24BAAA16C();
          v92 = v100;
          v67 = [v66 bundleId];
          v24 = sub_24BAAA01C();
          v20 = v68;

          v1 = v6;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_24B99A290(0, *(v53 + 2) + 1, 1, v53);
          }

          v70 = *(v53 + 2);
          v69 = *(v53 + 3);
          if (v70 >= v69 >> 1)
          {
            v53 = sub_24B99A290((v69 > 1), v70 + 1, 1, v53);
          }

          *(v53 + 2) = v70 + 1;
          v71 = &v53[16 * v70];
          *(v71 + 4) = v24;
          *(v71 + 5) = v20;
LABEL_43:
          ++v14;
          v52 = v95;
          if (v14 == isa)
          {

            v72 = v90;
            v20 = v86;
            goto LABEL_75;
          }
        }
      }

      v72 = MEMORY[0x277D84F90];
LABEL_75:

      v73 = v20;

      v74 = sub_24BAAA11C();

      v75 = v88;
      [(SEL *)v73 didAddAppsWithBundleIds:v74 suggestedPage:v88];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068B08);
      v76 = sub_24BAAA11C();

      v20 = &selRef_candidateContacts;
      [v75 setLeafIcons_];

      sub_24BA0D5E8();
      v77 = sub_24BAAA11C();

      [v75 setCandidateApps_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_24BAAE690;
      v25 = v87;
      *(v78 + 32) = *(v87 + 24);

      sub_24B992C90(v78, 0.5);

      if (v72 >> 62)
      {
        if (sub_24BAAA52C())
        {
LABEL_77:
          v23 = [objc_allocWithZone(MEMORY[0x277CEB588]) init];
          if (!(v72 >> 62))
          {

            sub_24BAAA79C();
LABEL_79:

            v79 = sub_24BAAA11C();

            [v23 v20[101]];

            v80 = swift_allocObject();
            v81 = *(v25 + 112);
            *(v80 + 112) = *(v25 + 96);
            *(v80 + 128) = v81;
            *(v80 + 144) = *(v25 + 128);
            v82 = *(v25 + 48);
            *(v80 + 48) = *(v25 + 32);
            *(v80 + 64) = v82;
            v83 = *(v25 + 80);
            *(v80 + 80) = *(v25 + 64);
            *(v80 + 96) = v83;
            v84 = *(v25 + 16);
            *(v80 + 16) = *v25;
            *(v80 + 32) = v84;
            sub_24BA0D980(v25, v96);
            sub_24B994C58(v23, sub_24BA0D9B8, v80);

LABEL_84:

            return;
          }

LABEL_86:

          sub_24BAAA6DC();

          goto LABEL_79;
        }
      }

      else if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      goto LABEL_84;
    }

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v15 = sub_24BAA812C();
    __swift_project_value_buffer(v15, qword_27F077038);
    v95 = sub_24BAA810C();
    v16 = sub_24BAAA2BC();
    if (os_log_type_enabled(v95, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24B8D3000, v95, v16, "Unable to edit apps for an unknown mode UUID", v17, 2u);
      MEMORY[0x24C251390](v17, -1, -1);
    }

    v18 = v95;
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA0D830(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA86DC();
    __break(1u);
  }
}

uint64_t sub_24BA0D268(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(a2 + 32);

    v2(v3);
  }

  return result;
}

uint64_t sub_24BA0D310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA0D830(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86FC();
  v35 = v14;
  v15 = *(a1 + 56);
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = result;
  v32 = a1;
  v33 = a5;
  v34 = a6;
  v31 = v15;
  v17 = [v31 leafAppIcons];
  sub_24BA0D5E8();
  v18 = sub_24BAAA12C();

  if (v18 >> 62)
  {
    v19 = sub_24BAAA52C();
    if (v19)
    {
      goto LABEL_4;
    }

LABEL_12:

    v27 = MEMORY[0x277D84F90];
LABEL_13:
    sub_24B8F1490(v27);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068A90);
    result = sub_24BAA99EC();
    *a7 = v16;
    *(a7 + 8) = v35;
    *(a7 + 16) = v31;
    *(a7 + 24) = v32;
    *(a7 + 32) = v33;
    *(a7 + 40) = v34;
    *(a7 + 48) = sub_24BA0B628;
    *(a7 + 56) = 0;
    *(a7 + 64) = 0;
    *(a7 + 72) = sub_24B8FC66C;
    *(a7 + 80) = 0;
    *(a7 + 88) = 0;
    *(a7 + 96) = v37;
    *(a7 + 104) = v38;
    *(a7 + 112) = a2;
    *(a7 + 120) = a3;
    *(a7 + 128) = a4 & 1;
    return result;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_12;
  }

LABEL_4:
  v37 = MEMORY[0x277D84F90];
  result = sub_24BAAA68C();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v28 = v16;
    v29 = a2;
    v30 = a3;
    v20 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x24C2506E0](v20, v18);
      }

      else
      {
        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      ++v20;
      v23 = [v21 bundleId];
      v24 = sub_24BAAA01C();
      v26 = v25;

      _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v24, v26);
      sub_24BAAA66C();
      sub_24BAAA69C();
      sub_24BAAA6AC();
      sub_24BAAA67C();
    }

    while (v19 != v20);

    v27 = v37;
    a2 = v29;
    a3 = v30;
    v16 = v28;
    goto LABEL_13;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_24BA0D5E8()
{
  result = qword_27F068A88;
  if (!qword_27F068A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F068A88);
  }

  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_24BA0D668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_24BA0D6B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24BA0D748()
{
  result = qword_27F068AB8;
  if (!qword_27F068AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068A98);
    sub_24BA0D830(&unk_27F068AC0, type metadata accessor for SuggestionsAppsPickerView);
    sub_24B8F384C(&qword_27F063E70, &unk_27F068AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068AB8);
  }

  return result;
}

uint64_t sub_24BA0D830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24BA0D878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068A98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_15()
{

  sub_24B900C14();
  sub_24B900C14();

  return MEMORY[0x2821FE8E8](v0, 145, 7);
}

uint64_t sub_24BA0DAFC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068AA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068AE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068A98);
  sub_24BA0D748();
  sub_24B8F5E3C();
  swift_getOpaqueTypeConformance2();
  sub_24B8F384C(&qword_27F067AF8, &unk_27F068AE0);
  return swift_getOpaqueTypeConformance2();
}

void sub_24BA0DC20()
{
  sub_24B980E74();
  if (v0 <= 0x3F)
  {
    sub_24BA0DF60(319, &qword_27F063A38, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24BA0DF60(319, &qword_27F0663B0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24B8F45F4();
        if (v3 <= 0x3F)
        {
          sub_24BA0DF60(319, &qword_27F068BA0, MEMORY[0x277CE00B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24BA0DF60(319, &qword_27F068BA8, MEMORY[0x277CE02E8], MEMORY[0x277D83D88]);
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

uint64_t sub_24BA0DDA8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 48));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24BA0DE84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 48)) = (a2 - 1);
  }

  return result;
}

void sub_24BA0DF60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24BA0E030(uint64_t a1, uint64_t a2)
{
  v4 = sub_24BAA8CFC();
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_24BAA8D0C();
}

uint64_t sub_24BA0E128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24BAA8CFC();
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_24BAA8D0C();
}

uint64_t sub_24BA0E220(uint64_t a1)
{
  v3 = sub_24BAA89FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 36);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_24BAAA2BC();
    v9 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();
    sub_24B8FFD5C(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_24BA0E374@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v22[1] = sub_24BAA9B1C();
  v22[2] = sub_24BAA9AAC();
  sub_24BAA8D1C();
  v5 = sub_24BAA98EC();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = sub_24BAA85EC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - v13;
  v26 = v4;
  v27 = v3;
  v28 = v2;
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v32 = WitnessTable;
  v33 = v16;
  v17 = swift_getWitnessTable();
  sub_24BAA98DC();
  sub_24BA0E220(v24);
  v31 = v17;
  v18 = swift_getWitnessTable();
  sub_24BAA96AC();
  (*(v23 + 8))(v7, v5);
  v29 = v18;
  v30 = MEMORY[0x277CDF900];
  swift_getWitnessTable();
  v19 = *(v9 + 16);
  v19(v14, v12, v8);
  v20 = *(v9 + 8);
  v20(v12, v8);
  v19(v25, v14, v8);
  return (v20)(v14, v8);
}

uint64_t sub_24BA0E6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a4;
  v7 = sub_24BAA9AAC();
  v55 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v53 = &v51 - v12;
  v56 = a2;
  v57 = a3;
  v13 = sub_24BAA9B1C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v51 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - v21;
  v23 = sub_24BAA8B9C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v7;
  v27 = sub_24BAA8D1C();
  v59 = *(v27 - 8);
  v60 = v27;
  MEMORY[0x28223BE20](v27);
  v58 = &v51 - v28;
  sub_24BA8DAA8(v26);
  LOBYTE(v7) = sub_24BAA8B8C();
  (*(v24 + 8))(v26, v23);
  if ((v7 & 1) != 0 || (v29 = objc_opt_self(), v30 = [v29 mainScreen], objc_msgSend(v30, sel_nativeScale), v32 = v31, v30, v33 = objc_msgSend(v29, sel_mainScreen), objc_msgSend(v33, sel_scale), v35 = v34, v33, v35 < v32))
  {
    if (*(a1 + *(type metadata accessor for AccessibilityAwareDirectionalStack() + 56) + 8) == 1)
    {
      sub_24BAA8BDC();
    }

    sub_24BAA9B0C();
    swift_getWitnessTable();
    v36 = *(v14 + 16);
    v36(v22, v20, v13);
    v37 = *(v14 + 8);
    v37(v20, v13);
    v36(v17, v22, v13);
    swift_getWitnessTable();
    v38 = v58;
    sub_24BA0E030(v17, v13);
    v37(v17, v13);
    v37(v22, v13);
  }

  else
  {
    if (*(a1 + *(type metadata accessor for AccessibilityAwareDirectionalStack() + 52) + 8) == 1)
    {
      sub_24BAA8AAC();
    }

    v39 = v61;
    v40 = v52;
    sub_24BAA9A9C();
    swift_getWitnessTable();
    v41 = v55;
    v42 = *(v55 + 16);
    v43 = v53;
    v42(v53, v40, v39);
    v44 = *(v41 + 8);
    v44(v40, v39);
    v45 = v54;
    v42(v54, v43, v39);
    swift_getWitnessTable();
    v38 = v58;
    sub_24BA0E128(v45, v13, v39);
    v44(v45, v39);
    v44(v43, v39);
  }

  WitnessTable = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  v63 = WitnessTable;
  v64 = v47;
  v48 = v60;
  swift_getWitnessTable();
  v49 = v59;
  (*(v59 + 16))(v62, v38, v48);
  return (*(v49 + 8))(v38, v48);
}

uint64_t sub_24BA0ED78()
{
  sub_24BAA9B1C();
  sub_24BAA9AAC();
  sub_24BAA8D1C();
  sub_24BAA98EC();
  sub_24BAA85EC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24BA0EEC8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_24BA0EEF8(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068BF8);
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068BF0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_logging;
  *(v2 + v10) = [objc_allocWithZone(MEMORY[0x277CEB688]) init];
  v11 = OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel__suggestedApps;
  v12 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067AE0);
  sub_24BAA817C();
  v13 = *(v7 + 32);
  v13(v2 + v11, v9, v6);
  v14 = OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel__suggestedAppCandidates;
  v23 = v12;
  sub_24BAA817C();
  v13(v2 + v14, v9, v6);
  v15 = OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel__suggestedPeople;
  v23 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0665A8);
  sub_24BAA817C();
  v16 = *(v3 + 32);
  v17 = v20;
  v16(v2 + v15, v5, v20);
  v18 = OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel__suggestedPeopleCandidates;
  v23 = v12;
  sub_24BAA817C();
  v16(v2 + v18, v5, v17);
  sub_24B9EAFD4(v21, v2 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_modeUUID);
  *(v2 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_exceptionType) = v22;
  return v2;
}

uint64_t sub_24BA0F1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24BAA9E2C();
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24BAA9E5C();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B926F30();
  v12 = sub_24BAAA33C();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_24BA12C7C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B97ACC4;
  aBlock[3] = &block_descriptor_8;
  v14 = _Block_copy(aBlock);

  sub_24BAA9E4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24BA12CA0(&qword_27F063470, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B97C674();
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v11, v8, v14);
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

char *sub_24BA0F4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = Array<A>.sortedAllowableApps.getter(a2);
  if (v4 >> 62)
  {
    v27 = v4;
    v5 = sub_24BAAA52C();
    v4 = v27;
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v4;
    v35 = MEMORY[0x277D84F90];
    result = sub_24B914E54(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    v9 = 0;
    v10 = v7;
    v29 = v7 & 0xC000000000000001;
    v11 = v7;
    do
    {
      if (v29)
      {
        v12 = MEMORY[0x24C2506E0](v9, v10);
      }

      else
      {
        v12 = *(v10 + 8 * v9 + 32);
      }

      v31 = *(v12 + 40);
      v33 = *(v12 + 48);

      MEMORY[0x24C250160](95, 0xE100000000000000);
      MEMORY[0x24C250160](114, 0xE100000000000000);
      v14 = *(v35 + 16);
      v13 = *(v35 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_24B914E54((v13 > 1), v14 + 1, 1);
      }

      ++v9;
      *(v35 + 16) = v14 + 1;
      v15 = v35 + 32 * v14;
      *(v15 + 32) = v31;
      *(v15 + 40) = v33;
      *(v15 + 48) = v12;
      *(v15 + 56) = 0;
      v10 = v11;
    }

    while (v5 != v9);

    v6 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81CC();
  v16 = Array<A>.sortedAllowableApps.getter(a3);
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_16;
    }

LABEL_27:

    swift_getKeyPath();
    swift_getKeyPath();

    return sub_24BAA81CC();
  }

  v28 = v16;
  v17 = sub_24BAAA52C();
  v16 = v28;
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_16:
  v18 = v16;
  result = sub_24B914E54(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v20 = v6;
    v21 = v18;
    v30 = v18 & 0xC000000000000001;
    v22 = v18;
    do
    {
      if (v30)
      {
        v23 = MEMORY[0x24C2506E0](v19, v21);
      }

      else
      {
        v23 = *(v21 + 8 * v19 + 32);
      }

      v32 = *(v23 + 40);
      v34 = *(v23 + 48);

      MEMORY[0x24C250160](95, 0xE100000000000000);
      MEMORY[0x24C250160](99, 0xE100000000000000);
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_24B914E54((v24 > 1), v25 + 1, 1);
      }

      ++v19;
      *(v20 + 16) = v25 + 1;
      v26 = v20 + 32 * v25;
      *(v26 + 32) = v32;
      *(v26 + 40) = v34;
      *(v26 + 48) = v23;
      *(v26 + 56) = 1;
      v21 = v22;
    }

    while (v17 != v19);
    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_24BA0F840(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v53 = a2;
  v56 = a1;
  v3 = v65;
  v52 = sub_24BAA9E2C();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_24BAA9E5C();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F0630D0 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    swift_beginAccess();
    v6 = *&qword_27F077000;
    *v3 = xmmword_27F076FF0;
    *(v3 + 16) = v6;
    *(v3 + 32) = xmmword_27F077010;
    v7 = v65[1];
    v66 = v65[2];
    v67 = v65[3];
    v68 = v65[5];
    v69 = v65[4];
    v8 = v65[0];
    v9 = v7;
    sub_24B8F3208(&v66, v64, &unk_27F066A30);
    sub_24B8F3208(&v67, v64, &qword_27F067F88);
    sub_24B8F3208(&v69, v64, &qword_27F068C00);
    sub_24B8F3208(&v68, v64, &qword_27F068E30);
    v10 = sub_24BA1C7C4();

    sub_24B8F35E4(&v66, &unk_27F066A30);
    sub_24B8F35E4(&v67, &qword_27F067F88);
    sub_24B8F35E4(&v69, &qword_27F068C00);
    sub_24B8F35E4(&v68, &qword_27F068E30);
    aBlock = MEMORY[0x277D84F90];
    if (v10 >> 62)
    {
      v11 = sub_24BAAA52C();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v3 = 0;
      v55 = v10 & 0xC000000000000001;
      v54 = v10 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v55)
        {
          v13 = MEMORY[0x24C2506E0](v3, v10);
        }

        else
        {
          if (v3 >= *(v54 + 16))
          {
            goto LABEL_33;
          }

          v13 = *(v10 + 8 * v3 + 32);
        }

        v14 = v13;
        v15 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v16 = v10;
        v17 = [v13 identifier];
        v18 = sub_24BAAA01C();
        v20 = v19;

        *&v64[0] = v18;
        *(&v64[0] + 1) = v20;
        MEMORY[0x28223BE20](v21);
        *(&v46 - 2) = v64;
        LOBYTE(v17) = sub_24BA3AB94(sub_24B915A68, (&v46 - 4), v56);

        if (v17)
        {
          sub_24BAAA66C();
          sub_24BAAA69C();
          sub_24BAAA6AC();
          sub_24BAAA67C();
        }

        else
        {
        }

        v10 = v16;
        ++v3;
        if (v15 == v11)
        {
          v12 = aBlock;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_16:

    v64[0] = xmmword_27F076FF0;
    v64[1] = *&qword_27F077000;
    v64[2] = xmmword_27F077010;
    v22 = *(&xmmword_27F076FF0 + 1);
    v70 = qword_27F077000;
    v71 = unk_27F077008;
    v72 = *(&xmmword_27F077010 + 1);
    v73 = xmmword_27F077010;
    v23 = xmmword_27F076FF0;
    v24 = v22;
    sub_24B8F3208(&v70, &aBlock, &unk_27F066A30);
    sub_24B8F3208(&v71, &aBlock, &qword_27F067F88);
    sub_24B8F3208(&v73, &aBlock, &qword_27F068C00);
    sub_24B8F3208(&v72, &aBlock, &qword_27F068E30);
    v25 = sub_24BA1C7C4();

    sub_24B8F35E4(&v70, &unk_27F066A30);
    sub_24B8F35E4(&v71, &qword_27F067F88);
    sub_24B8F35E4(&v73, &qword_27F068C00);
    sub_24B8F35E4(&v72, &qword_27F068E30);
    v63 = MEMORY[0x277D84F90];
    v26 = v25 >> 62 ? sub_24BAAA52C() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = MEMORY[0x277D84F90];
    if (!v26)
    {
      break;
    }

    v54 = v12;
    v3 = 0;
    v56 = v25 & 0xC000000000000001;
    v55 = v25 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v56)
      {
        v28 = MEMORY[0x24C2506E0](v3, v25);
      }

      else
      {
        if (v3 >= *(v55 + 16))
        {
          goto LABEL_35;
        }

        v28 = *(v25 + 8 * v3 + 32);
      }

      v29 = v28;
      v30 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v31 = v26;
      v32 = v25;
      v33 = [v28 identifier];
      v34 = sub_24BAAA01C();
      v36 = v35;

      aBlock = v34;
      v58 = v36;
      MEMORY[0x28223BE20](v37);
      *(&v46 - 2) = &aBlock;
      LOBYTE(v33) = sub_24BA3AB94(sub_24BA12D44, (&v46 - 4), v53);

      if (v33)
      {
        sub_24BAAA66C();
        sub_24BAAA69C();
        sub_24BAAA6AC();
        sub_24BAAA67C();
      }

      else
      {
      }

      v25 = v32;
      v26 = v31;
      ++v3;
      if (v30 == v31)
      {
        v38 = v63;
        v12 = v54;
        v27 = MEMORY[0x277D84F90];
        goto LABEL_31;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

  v38 = MEMORY[0x277D84F90];
LABEL_31:

  sub_24B926F30();
  v39 = sub_24BAAA33C();
  v40 = swift_allocObject();
  v40[2] = v46;
  v40[3] = v12;
  v40[4] = v38;
  v61 = sub_24BA12D30;
  v62 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_24B97ACC4;
  v60 = &block_descriptor_59_0;
  v41 = _Block_copy(&aBlock);

  v42 = v47;
  sub_24BAA9E4C();
  aBlock = v27;
  sub_24BA12CA0(&qword_27F063470, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B97C674();
  v43 = v49;
  v44 = v52;
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v42, v43, v41);
  _Block_release(v41);

  (*(v51 + 8))(v43, v44);
  return (*(v48 + 8))(v42, v50);
}

char *sub_24BA10184(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >> 62)
  {
    v37 = a2;
    v38 = sub_24BAAA52C();
    a2 = v37;
    v4 = v38;
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = a3;
  if (v4)
  {
    v5 = a2;
    v41 = MEMORY[0x277D84F90];
    result = sub_24B914E74(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_32;
    }

    v7 = 0;
    v8 = v5;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C2506E0](v7, v8);
      }

      else
      {
        v9 = *(v8 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 identifier];
      v12 = sub_24BAAA01C();
      v14 = v13;

      MEMORY[0x24C250160](95, 0xE100000000000000);
      MEMORY[0x24C250160](114, 0xE100000000000000);
      v15 = v12;
      v16 = [v10 identifier];
      if (!v16)
      {
        sub_24BAAA01C();
        v16 = sub_24BAA9FDC();
      }

      v17 = [objc_allocWithZone(MEMORY[0x277D058F0]) initWithContactIdentifier_];

      v19 = *(v41 + 16);
      v18 = *(v41 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_24B914E74((v18 > 1), v19 + 1, 1);
      }

      ++v7;
      *(v41 + 16) = v19 + 1;
      v20 = v41 + 40 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v14;
      *(v20 + 48) = v17;
      *(v20 + 56) = v10;
      *(v20 + 64) = 0;
      v8 = v5;
    }

    while (v4 != v7);
    a3 = v40;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81CC();
  if (a3 >> 62)
  {
    v21 = sub_24BAAA52C();
  }

  else
  {
    v21 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v21)
  {
LABEL_28:
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_24BAA81CC();
  }

  v42 = MEMORY[0x277D84F90];
  result = sub_24B914E74(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v23 = a3;
    v39 = a3 & 0xC000000000000001;
    v24 = v21;
    do
    {
      if (v39)
      {
        v25 = MEMORY[0x24C2506E0](v22, v23);
      }

      else
      {
        v25 = *(v23 + 8 * v22 + 32);
      }

      v26 = v25;
      v27 = [v25 identifier];
      v28 = sub_24BAAA01C();
      v30 = v29;

      MEMORY[0x24C250160](95, 0xE100000000000000);
      MEMORY[0x24C250160](99, 0xE100000000000000);
      v31 = v28;
      v32 = [v26 identifier];
      if (!v32)
      {
        sub_24BAAA01C();
        v32 = sub_24BAA9FDC();
      }

      v33 = [objc_allocWithZone(MEMORY[0x277D058F0]) initWithContactIdentifier_];

      v35 = *(v42 + 16);
      v34 = *(v42 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_24B914E74((v34 > 1), v35 + 1, 1);
      }

      ++v22;
      *(v42 + 16) = v35 + 1;
      v36 = v42 + 40 * v35;
      *(v36 + 32) = v31;
      *(v36 + 40) = v30;
      *(v36 + 48) = v33;
      *(v36 + 56) = v26;
      *(v36 + 64) = 1;
      v23 = v40;
    }

    while (v24 != v22);
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24BA105A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v0 = *(v9 + 16);
  if (v0)
  {
    v9 = MEMORY[0x277D84F90];
    sub_24BAAA68C();
    v1 = 48;
    do
    {

      sub_24BAAA66C();
      sub_24BAAA69C();
      sub_24BAAA6AC();
      sub_24BAAA67C();
      v1 += 32;
      --v0;
    }

    while (v0);

    v2 = v9;
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v3 = sub_24B8F1490(v2);

  v5 = sub_24B8F1490(v4);

  v6 = sub_24B8E3470(v5, v3);

  sub_24B99B1C8(v6);

  v9 = sub_24B8F0428(v7);
  sub_24BA1297C(&v9);

  return v9;
}

void sub_24BA10758(_BYTE *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_24BAA7E4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 2)
  {
    sub_24B8F3208(v1 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_modeUUID, v5, &qword_27F0669D0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_24B8F35E4(v5, &qword_27F0669D0);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v10 = *(v1 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_logging);
      v11 = sub_24BAA7DFC();
      [v10 logModeConfigurationChangesOnboardingDismissedForModeUUID_];

      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_24BA10938(unsigned __int8 *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v6 = v5;
  v70 = a2;
  v71 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v63 - v11;
  v13 = sub_24BAA7E4C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v72 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v63 - v17;
  v19 = *a1;
  v21 = v20;
  sub_24B8F3208(v6 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_modeUUID, v12, &qword_27F0669D0);
  if ((*(v14 + 48))(v12, 1, v21) == 1)
  {
    return sub_24B8F35E4(v12, &qword_27F0669D0);
  }

  (*(v14 + 32))(v18, v12, v21);
  v73 = v18;
  v68 = v19;
  v67 = v21;
  if (!a3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v23 = *(v74 + 16);
    if (v23)
    {
      v74 = MEMORY[0x277D84F90];
      sub_24BAAA68C();
      v24 = 48;
      do
      {

        sub_24BAAA66C();
        sub_24BAAA69C();
        sub_24BAAA6AC();
        sub_24BAAA67C();
        v24 += 32;
        --v23;
      }

      while (v23);

      v25 = v74;
      v21 = v67;
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    v26 = sub_24BA11158(v25);

    v69 = v26;
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_12:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v27 = *(v74 + 16);
    if (v27)
    {
      v74 = MEMORY[0x277D84F90];
      sub_24BAAA68C();
      v28 = 48;
      do
      {

        sub_24BAAA66C();
        sub_24BAAA69C();
        sub_24BAAA6AC();
        sub_24BAAA67C();
        v28 += 32;
        --v27;
      }

      while (v27);

      v29 = v74;
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
    }

    v66 = sub_24BA11158(v29);

    goto LABEL_18;
  }

  v69 = sub_24BA11158(a3);
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v66 = sub_24BA11158(a4);
LABEL_18:
  v30 = *(v6 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_exceptionType);
  v65 = *(v6 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_logging);
  v31 = sub_24BA11158(v70);
  v32 = sub_24BA11158(v71);
  v71 = v30 != 0;
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v33 = sub_24BAA812C();
  __swift_project_value_buffer(v33, qword_27F077038);
  v34 = v72;
  (*(v14 + 16))(v72, v73, v21);

  v35 = v21;
  v36 = sub_24BAA810C();
  v37 = sub_24BAAA2CC();

  v38 = v32;
  if (os_log_type_enabled(v36, v37))
  {
    v39 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v74 = v64;
    *v39 = 136447746;
    *(v39 + 4) = sub_24B8E49D4(0xD00000000000001ALL, 0x800000024BAC4030, &v74);
    *(v39 + 12) = 2080;
    sub_24BA12CA0(&qword_27F066AA8, MEMORY[0x277CC95F0]);
    v40 = sub_24BAAA76C();
    v42 = v41;
    v43 = *(v14 + 8);
    v70 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v72 = v43;
    (v43)(v34, v35);
    v44 = sub_24B8E49D4(v40, v42, &v74);

    *(v39 + 14) = v44;
    *(v39 + 22) = 1024;
    *(v39 + 24) = v68;
    *(v39 + 28) = 1024;
    *(v39 + 30) = 0;
    *(v39 + 34) = 2080;
    v45 = MEMORY[0x277D837D0];
    v46 = MEMORY[0x24C2501F0](v31, MEMORY[0x277D837D0]);
    v48 = sub_24B8E49D4(v46, v47, &v74);

    *(v39 + 36) = v48;
    *(v39 + 44) = 2080;
    v49 = MEMORY[0x24C2501F0](v69, v45);
    v51 = sub_24B8E49D4(v49, v50, &v74);

    *(v39 + 46) = v51;
    *(v39 + 54) = 2080;
    v52 = MEMORY[0x24C2501F0](v38, v45);
    v54 = sub_24B8E49D4(v52, v53, &v74);

    *(v39 + 56) = v54;
    _os_log_impl(&dword_24B8D3000, v36, v37, "[%{public}s] logModeConfigurationChanges forModeUUID: %s, modeConfigurationUI: %d, modeConfigurationEntityType: %d, previousEntityIdentifiers: %s, suggestedEntityIdentifiers: %s, currentEntityIdentifiers: %s", v39, 0x40u);
    v55 = v64;
    swift_arrayDestroy();
    MEMORY[0x24C251390](v55, -1, -1);
    MEMORY[0x24C251390](v39, -1, -1);
  }

  else
  {

    v56 = *(v14 + 8);
    v70 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v72 = v56;
    (v56)(v34, v35);
  }

  v57 = sub_24BAA7DFC();
  v58 = sub_24BAAA11C();
  v59 = sub_24BAAA11C();
  v60 = sub_24BAAA11C();
  v61 = sub_24BAAA11C();
  v62 = v65;
  [v65 logModeConfigurationChangesForModeUUID:v57 modeConfigurationUI:v68 modeConfigurationEntityType:0 modeConfigurationType:v71 previousEntityIdentifiers:v58 suggestedEntityIdentifiers:v59 candidateEntityIdentifiers:v60 currentEntityIdentifiers:v61];

  return (v72)(v73, v67);
}

char *sub_24BA11158(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24BAAA52C())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C2506E0](v3, a1);
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_16;
      }

LABEL_9:
      v16 = v6;
      sub_24BA112F4(&v14);

      v8 = v15;
      if (v15)
      {
        v9 = i;
        v10 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_24B99A290(0, *(v4 + 2) + 1, 1, v4);
        }

        v12 = *(v4 + 2);
        v11 = *(v4 + 3);
        if (v12 >= v11 >> 1)
        {
          v4 = sub_24B99A290((v11 > 1), v12 + 1, 1, v4);
        }

        *(v4 + 2) = v12 + 1;
        v5 = &v4[16 * v12];
        *(v5 + 4) = v10;
        *(v5 + 5) = v8;
        i = v9;
      }

      ++v3;
      if (v7 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v6 = *(a1 + 8 * v3 + 32);

    v7 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return MEMORY[0x277D84F90];
}

void sub_24BA112F4(void *a1@<X8>)
{
  type metadata accessor for InstalledApp();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v4 = *(v2 + 40);
    v3 = *(v2 + 48);
    *a1 = v4;
    a1[1] = v3;
  }

  else
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v5 = sub_24BAA812C();
    __swift_project_value_buffer(v5, qword_27F077038);

    v6 = sub_24BAA810C();
    v7 = sub_24BAAA2AC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446466;
      v10 = sub_24BAAA86C();
      v12 = sub_24B8E49D4(v10, v11, &v17);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;

      v13 = EventSource.description.getter();
      v15 = v14;

      v16 = sub_24B8E49D4(v13, v15, &v17);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_24B8D3000, v6, v7, "[%{public}s] App '%s' does not have a bundle identifier. Cannot log changes", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v9, -1, -1);
      MEMORY[0x24C251390](v8, -1, -1);
    }

    *a1 = 0;
    a1[1] = 0;
  }
}

uint64_t sub_24BA114E8(unsigned __int8 *a1, unint64_t a2, unint64_t a3, unint64_t *a4, _UNKNOWN **a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v135 - v11;
  v13 = sub_24BAA7E4C();
  v143 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v136 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = MEMORY[0x28223BE20](v14);
  v141 = &v135 - v17;
  v137 = *a1;
  v138 = v12;
  v18 = (a2 & 0xFFFFFFFFFFFFFF8);
  if (a2 >> 62)
  {
    goto LABEL_81;
  }

  v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v139 = a5;
    v140 = a4;
    v142 = isUniquelyReferenced_nonNull_native;
    a5 = &off_279018000;
    if (v19)
    {
      a4 = 0;
      v147 = MEMORY[0x277D84F90];
      do
      {
        v20 = a4;
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            isUniquelyReferenced_nonNull_native = MEMORY[0x24C2506E0](v20, a2);
          }

          else
          {
            if (v20 >= v18[2])
            {
              goto LABEL_75;
            }

            isUniquelyReferenced_nonNull_native = *(a2 + 8 * v20 + 32);
          }

          v21 = isUniquelyReferenced_nonNull_native;
          a4 = (v20 + 1);
          if (__OFADD__(v20, 1))
          {
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          v22 = [isUniquelyReferenced_nonNull_native contactIdentifier];
          if (v22)
          {
            break;
          }

          ++v20;
          if (a4 == v19)
          {
            goto LABEL_21;
          }
        }

        v23 = v22;
        v24 = sub_24BAAA01C();
        v146 = v25;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_24B99A290(0, *(v147 + 2) + 1, 1, v147);
          v147 = isUniquelyReferenced_nonNull_native;
        }

        v27 = *(v147 + 2);
        v26 = *(v147 + 3);
        if (v27 >= v26 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_24B99A290((v26 > 1), v27 + 1, 1, v147);
          v147 = isUniquelyReferenced_nonNull_native;
        }

        v29 = v146;
        v28 = v147;
        *(v147 + 2) = v27 + 1;
        v30 = &v28[16 * v27];
        *(v30 + 4) = v24;
        *(v30 + 5) = v29;
      }

      while (a4 != v19);
    }

    else
    {
      v147 = MEMORY[0x277D84F90];
    }

LABEL_21:
    if (!a3)
    {
      break;
    }

    a2 = a3 & 0xFFFFFFFFFFFFFF8;
    if (a3 >> 62)
    {
      isUniquelyReferenced_nonNull_native = sub_24BAAA52C();
      v31 = isUniquelyReferenced_nonNull_native;
      if (!isUniquelyReferenced_nonNull_native)
      {
LABEL_83:
        v145 = MEMORY[0x277D84F90];
        v56 = v140;
        if (!v140)
        {
          goto LABEL_84;
        }

LABEL_56:
        a2 = v56 & 0xFFFFFFFFFFFFFF8;
        if (v56 >> 62)
        {
LABEL_100:
          isUniquelyReferenced_nonNull_native = sub_24BAAA52C();
          v57 = isUniquelyReferenced_nonNull_native;
          if (!isUniquelyReferenced_nonNull_native)
          {
LABEL_101:
            v146 = MEMORY[0x277D84F90];
            goto LABEL_102;
          }
        }

        else
        {
          v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v57)
          {
            goto LABEL_101;
          }
        }

        a4 = 0;
        a3 = v56 & 0xC000000000000001;
        v146 = MEMORY[0x277D84F90];
LABEL_59:
        v58 = a4;
        while (1)
        {
          if (a3)
          {
            isUniquelyReferenced_nonNull_native = MEMORY[0x24C2506E0](v58, v56);
          }

          else
          {
            if (v58 >= *(a2 + 16))
            {
              goto LABEL_79;
            }

            isUniquelyReferenced_nonNull_native = *(v56 + 8 * v58 + 32);
          }

          v59 = isUniquelyReferenced_nonNull_native;
          a4 = (v58 + 1);
          if (__OFADD__(v58, 1))
          {
            goto LABEL_78;
          }

          v60 = [isUniquelyReferenced_nonNull_native contactIdentifier];
          if (v60)
          {
            v61 = v60;
            v62 = sub_24BAAA01C();
            v18 = v63;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_24B99A290(0, *(v146 + 2) + 1, 1, v146);
              v146 = isUniquelyReferenced_nonNull_native;
            }

            v65 = *(v146 + 2);
            v64 = *(v146 + 3);
            if (v65 >= v64 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_24B99A290((v64 > 1), v65 + 1, 1, v146);
              v146 = isUniquelyReferenced_nonNull_native;
            }

            v66 = v146;
            *(v146 + 2) = v65 + 1;
            v67 = &v66[16 * v65];
            *(v67 + 4) = v62;
            *(v67 + 5) = v18;
            if (a4 != v57)
            {
              goto LABEL_59;
            }

            goto LABEL_102;
          }

          v58 = (v58 + 1);
          if (a4 == v57)
          {
            goto LABEL_102;
          }
        }
      }
    }

    else
    {
      v31 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        goto LABEL_83;
      }
    }

    a4 = 0;
    v145 = MEMORY[0x277D84F90];
LABEL_25:
    v32 = a4;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x24C2506E0](v32, a3);
      }

      else
      {
        if (v32 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        isUniquelyReferenced_nonNull_native = *(a3 + 8 * v32 + 32);
      }

      v33 = isUniquelyReferenced_nonNull_native;
      a4 = (v32 + 1);
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v34 = [isUniquelyReferenced_nonNull_native contactIdentifier];
      if (v34)
      {
        v35 = v34;
        v36 = sub_24BAAA01C();
        v18 = v37;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_24B99A290(0, *(v145 + 2) + 1, 1, v145);
          v145 = isUniquelyReferenced_nonNull_native;
        }

        v39 = *(v145 + 2);
        v38 = *(v145 + 3);
        if (v39 >= v38 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_24B99A290((v38 > 1), v39 + 1, 1, v145);
          v145 = isUniquelyReferenced_nonNull_native;
        }

        v40 = v145;
        *(v145 + 2) = v39 + 1;
        v41 = &v40[16 * v39];
        *(v41 + 4) = v36;
        *(v41 + 5) = v18;
        if (a4 != v31)
        {
          goto LABEL_25;
        }

        goto LABEL_55;
      }

      v32 = (v32 + 1);
      if (a4 == v31)
      {
        goto LABEL_55;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    v68 = isUniquelyReferenced_nonNull_native;
    v19 = sub_24BAAA52C();
    isUniquelyReferenced_nonNull_native = v68;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v42 = v148;
  v43 = *(v148 + 16);
  if (v43)
  {
    v44 = 0;
    v18 = (v148 + 56);
    v45 = MEMORY[0x277D84F90];
    v145 = (v148 + 56);
    v146 = v43;
LABEL_42:
    a2 = &v43[-v44];
    a4 = &v18[5 * v44];
    while (v44 < *(v42 + 16))
    {
      a3 = *(a4 - 2);
      v46 = *(a4 - 1);
      v18 = *a4;

      v47 = v46;
      v48 = v18;
      v49 = [v47 contactIdentifier];
      if (v49)
      {
        v50 = v49;
        v51 = sub_24BAAA01C();
        v135 = v52;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_24B99A290(0, *(v45 + 16) + 1, 1, v45);
          v45 = isUniquelyReferenced_nonNull_native;
        }

        v18 = v145;
        a3 = *(v45 + 16);
        v53 = *(v45 + 24);
        if (a3 >= v53 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_24B99A290((v53 > 1), a3 + 1, 1, v45);
          v45 = isUniquelyReferenced_nonNull_native;
        }

        ++v44;
        *(v45 + 16) = a3 + 1;
        v54 = v45 + 16 * a3;
        v55 = v135;
        *(v54 + 32) = v51;
        *(v54 + 40) = v55;
        v43 = v146;
        if (a2 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      }

      a4 += 5;
      ++v44;
      if (!--a2)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_80;
  }

  v45 = MEMORY[0x277D84F90];
LABEL_54:
  v145 = v45;

LABEL_55:
  v56 = v140;
  if (v140)
  {
    goto LABEL_56;
  }

LABEL_84:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v69 = v148;
  a2 = *(v148 + 16);
  if (a2)
  {
    v70 = 0;
    v71 = (v148 + 56);
    v146 = MEMORY[0x277D84F90];
    v140 = (v148 + 56);
    do
    {
      v72 = a2 - v70;
      v18 = &v71[40 * v70];
      while (1)
      {
        if (v70 >= *(v69 + 16))
        {
          __break(1u);
          goto LABEL_100;
        }

        v73 = *(v18 - 1);
        v56 = *v18;

        v74 = v73;
        v75 = v56;
        v76 = [v74 contactIdentifier];
        if (v76)
        {
          break;
        }

        v18 += 5;
        ++v70;
        if (!--v72)
        {
          goto LABEL_98;
        }
      }

      v77 = v76;
      v56 = sub_24BAAA01C();
      v135 = v78;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v146 = sub_24B99A290(0, *(v146 + 2) + 1, 1, v146);
      }

      v80 = *(v146 + 2);
      v79 = *(v146 + 3);
      if (v80 >= v79 >> 1)
      {
        v146 = sub_24B99A290((v79 > 1), v80 + 1, 1, v146);
      }

      ++v70;
      v81 = v146;
      *(v146 + 2) = v80 + 1;
      v82 = &v81[16 * v80];
      v83 = v135;
      *(v82 + 4) = v56;
      *(v82 + 5) = v83;
      v71 = v140;
    }

    while (v72 != 1);
  }

  else
  {
    v146 = MEMORY[0x277D84F90];
  }

LABEL_98:

LABEL_102:
  v84 = v139;
  if (v139 >> 62)
  {
LABEL_122:
    v85 = sub_24BAAA52C();
    if (v85)
    {
      goto LABEL_104;
    }

    goto LABEL_123;
  }

  v85 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v85)
  {
LABEL_123:
    v87 = MEMORY[0x277D84F90];
    goto LABEL_124;
  }

LABEL_104:
  v86 = 0;
  v87 = MEMORY[0x277D84F90];
  do
  {
    v88 = v86;
    while (1)
    {
      if ((v84 & 0xC000000000000001) != 0)
      {
        v89 = MEMORY[0x24C2506E0](v88, v84);
      }

      else
      {
        if (v88 >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_121;
        }

        v89 = *(v84 + 8 * v88 + 32);
      }

      v90 = v89;
      v86 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v91 = [v89 contactIdentifier];
      if (v91)
      {
        break;
      }

      ++v88;
      if (v86 == v85)
      {
        goto LABEL_124;
      }
    }

    v92 = v91;
    v140 = sub_24BAAA01C();
    v135 = v93;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = sub_24B99A290(0, *(v87 + 2) + 1, 1, v87);
    }

    v95 = *(v87 + 2);
    v94 = *(v87 + 3);
    if (v95 >= v94 >> 1)
    {
      v87 = sub_24B99A290((v94 > 1), v95 + 1, 1, v87);
    }

    *(v87 + 2) = v95 + 1;
    v96 = &v87[16 * v95];
    v97 = v135;
    *(v96 + 4) = v140;
    *(v96 + 5) = v97;
  }

  while (v86 != v85);
LABEL_124:
  v98 = v144;
  v99 = v138;
  sub_24B8F3208(v144 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_modeUUID, v138, &qword_27F0669D0);
  v101 = v142;
  v100 = v143;
  if ((*(v143 + 48))(v99, 1, v142) == 1)
  {

    return sub_24B8F35E4(v99, &qword_27F0669D0);
  }

  else
  {
    v103 = v141;
    (*(v100 + 32))(v141, v99, v101);
    v104 = *(v98 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_logging);
    v144 = *(v98 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_exceptionType) != 0;
    v105 = qword_27F0630F0;
    v140 = v104;
    v106 = v147;
    if (v105 != -1)
    {
      swift_once();
    }

    v107 = sub_24BAA812C();
    __swift_project_value_buffer(v107, qword_27F077038);
    v108 = v136;
    (*(v100 + 16))(v136, v103, v101);

    v109 = v145;

    v110 = sub_24BAA810C();
    v111 = sub_24BAAA2CC();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v138 = v87;
      v113 = v112;
      v135 = swift_slowAlloc();
      v148 = v135;
      *v113 = 136447746;
      *(v113 + 4) = sub_24B8E49D4(0xD00000000000001ALL, 0x800000024BAC4030, &v148);
      *(v113 + 12) = 2080;
      sub_24BA12CA0(&qword_27F066AA8, MEMORY[0x277CC95F0]);
      v114 = sub_24BAAA76C();
      v116 = v115;
      v139 = *(v143 + 8);
      (v139)(v108, v101);
      v117 = sub_24B8E49D4(v114, v116, &v148);

      *(v113 + 14) = v117;
      *(v113 + 22) = 1024;
      *(v113 + 24) = v137;
      *(v113 + 28) = 1024;
      *(v113 + 30) = 1;
      *(v113 + 34) = 2080;
      v118 = MEMORY[0x277D837D0];
      v119 = MEMORY[0x24C2501F0](v106, MEMORY[0x277D837D0]);
      v121 = sub_24B8E49D4(v119, v120, &v148);

      *(v113 + 36) = v121;
      *(v113 + 44) = 2080;
      v122 = MEMORY[0x24C2501F0](v109, v118);
      v124 = sub_24B8E49D4(v122, v123, &v148);

      *(v113 + 46) = v124;
      *(v113 + 54) = 2080;
      v125 = MEMORY[0x24C2501F0](v138, v118);
      v127 = sub_24B8E49D4(v125, v126, &v148);

      *(v113 + 56) = v127;
      _os_log_impl(&dword_24B8D3000, v110, v111, "[%{public}s] logModeConfigurationChanges forModeUUID: %s, modeConfigurationUI: %d, modeConfigurationEntityType: %d, previousEntityIdentifiers: %s, suggestedEntityIdentifiers: %s, currentEntityIdentifiers: %s", v113, 0x40u);
      v128 = v135;
      swift_arrayDestroy();
      MEMORY[0x24C251390](v128, -1, -1);
      MEMORY[0x24C251390](v113, -1, -1);
    }

    else
    {

      v139 = *(v100 + 8);
      (v139)(v108, v101);
    }

    v129 = sub_24BAA7DFC();
    v130 = sub_24BAAA11C();
    v131 = sub_24BAAA11C();
    v132 = sub_24BAAA11C();
    v133 = sub_24BAAA11C();
    v134 = v140;
    [v140 logModeConfigurationChangesForModeUUID:v129 modeConfigurationUI:v137 modeConfigurationEntityType:1 modeConfigurationType:v144 previousEntityIdentifiers:v130 suggestedEntityIdentifiers:v131 candidateEntityIdentifiers:v132 currentEntityIdentifiers:v133];

    return (v139)(v141, v142);
  }
}

uint64_t sub_24BA12390()
{
  sub_24B8F35E4(v0 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel_modeUUID, &qword_27F0669D0);

  v1 = OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel__suggestedApps;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068BF0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel__suggestedAppCandidates, v2);
  v4 = OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel__suggestedPeople;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068BF8);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC15FocusSettingsUI20SuggestionsViewModel__suggestedPeopleCandidates, v5);

  return swift_deallocClassInstance();
}