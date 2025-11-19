uint64_t sub_1A3943C58(void *a1, char a2)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2EA60();
  if (a2)
  {
    sub_1A3A2EA60();
    v8 = a1;
  }

  else
  {
    sub_1A3A31C30();
    v9 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    v10 = *(v5 + 8);
    v10(v7, v4);
    v8 = v19;
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    v10(v7, v4);
    a1 = v19;
  }

  swift_getKeyPath();
  v19 = a1;
  sub_1A3944BA0(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v12 = a1[79];
  sub_1A3A2EA60();

  swift_getKeyPath();
  v19 = v12;
  sub_1A3944BA0(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
  sub_1A3A2F080();

  v13 = *(v12 + 33);

  v14 = ~v13;
  v15 = v8[153];
  v16 = v8[154];
  __swift_project_boxed_opaque_existential_1(v8 + 150, v15);
  (*(v16 + 8))(v14 & 1, 0, 0, 64, v8, v15, v16);
}

uint64_t sub_1A3943F80@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1A3A31620();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1A3A31640();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A3A2F1E0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1A3A2FEE0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2EA60();
  v17 = a1;
  v52 = a2;
  if ((a2 & 1) == 0)
  {
    sub_1A3A31C30();
    v18 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
    v17 = v65;
  }

  v46 = v14;
  v47 = v13;
  swift_getKeyPath();
  v65 = v17;
  v53 = sub_1A3944BA0(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v19 = *(v17 + 632);
  sub_1A3A2EA60();

  swift_getKeyPath();
  v65 = v19;
  sub_1A3944BA0(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
  sub_1A3A2F080();

  v20 = *(v19 + 33);

  v21 = 1801678700;
  if (!v20)
  {
    v21 = 0x65706F2E6B636F6CLL;
  }

  v22 = 0xE90000000000006ELL;
  if (v20)
  {
    v22 = 0xE400000000000000;
  }

  *v12 = v21;
  v12[1] = v22;
  (*(v10 + 104))(v12, *MEMORY[0x1E69C1D40], v9);
  v51 = sub_1A3A2F200();
  (*(v10 + 8))(v12, v9);
  sub_1A3A31480();
  sub_1A3A2F780();
  v23 = v65;
  v24 = v66;
  v48 = v67;
  v25 = v68;
  v50 = v69;
  v49 = v70;
  if (v52)
  {
    v64 = a1;
    sub_1A3A2EA60();
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v26 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v46 + 8))(v16, v47);
    a1 = v64;
  }

  swift_getKeyPath();
  v60 = a1;
  sub_1A3A2F080();

  v27 = *(a1 + 632);
  sub_1A3A2EA60();

  swift_getKeyPath();
  v60 = v27;
  sub_1A3A2F080();

  v28 = *(v27 + 33);

  v63 = v24;
  v62 = v25;
  v29 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEE78) + 36));
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEAC8) + 28);
  v31 = *MEMORY[0x1E69816C0];
  v32 = sub_1A3A30EF0();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = swift_getKeyPath();
  *a3 = v51;
  *(a3 + 8) = v23;
  *(a3 + 16) = v63;
  *(a3 + 17) = v60;
  *(a3 + 20) = *(&v60 + 3);
  *(a3 + 24) = v48;
  *(a3 + 32) = v62;
  *(a3 + 33) = *v61;
  *(a3 + 36) = *&v61[3];
  v33 = v49;
  *(a3 + 40) = v50;
  *(a3 + 48) = v33;
  *(a3 + 56) = v28;
  v34 = v54;
  sub_1A3A31630();
  v35 = v56;
  sub_1A3A31610();
  v36 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEE68) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCA8);
  sub_1A3944BA0(&qword_1ED996728, MEMORY[0x1E69821A0]);
  v37 = v57;
  sub_1A3A2FC70();
  (*(v58 + 8))(v35, v59);
  (*(v55 + 8))(v34, v37);
  *v36 = swift_getKeyPath();
  sub_1A3A31590();
  v39 = v38;
  v41 = v40;
  type metadata accessor for ChromeViewModel();
  v42 = sub_1A3A2F650();
  LOBYTE(v37) = v43;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEE50);
  v45 = a3 + *(result + 36);
  *v45 = 1;
  *(v45 + 8) = v39;
  *(v45 + 16) = v41;
  *(v45 + 24) = 1;
  *(v45 + 32) = v42;
  *(v45 + 40) = v37 & 1;
  return result;
}

uint64_t sub_1A39447AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = sub_1A3A2FF40();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEE30);
  return sub_1A3942D80(v4, v5, a1 + *(v6 + 44), v3);
}

unint64_t sub_1A3944840()
{
  result = qword_1EB0FEE58;
  if (!qword_1EB0FEE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEE50);
    sub_1A39448CC();
    sub_1A38A8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEE58);
  }

  return result;
}

unint64_t sub_1A39448CC()
{
  result = qword_1EB0FEE60;
  if (!qword_1EB0FEE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEE68);
    sub_1A3944984();
    sub_1A38A08F8(&qword_1ED996738, &qword_1EB0FCCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEE60);
  }

  return result;
}

unint64_t sub_1A3944984()
{
  result = qword_1EB0FEE70;
  if (!qword_1EB0FEE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEE78);
    sub_1A3944A3C();
    sub_1A38A08F8(&qword_1ED997CD0, &qword_1EB0FEAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEE70);
  }

  return result;
}

unint64_t sub_1A3944A3C()
{
  result = qword_1EB0FEE80;
  if (!qword_1EB0FEE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEE88);
    sub_1A3944AC8();
    sub_1A3944B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEE80);
  }

  return result;
}

unint64_t sub_1A3944AC8()
{
  result = qword_1EB0FEE90;
  if (!qword_1EB0FEE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEE90);
  }

  return result;
}

unint64_t sub_1A3944B4C()
{
  result = qword_1EB0FEEA0;
  if (!qword_1EB0FEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEEA0);
  }

  return result;
}

uint64_t sub_1A3944BA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A3944BE8()
{
  result = qword_1EB0FEED8;
  if (!qword_1EB0FEED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEED0);
    sub_1A3944CA0();
    sub_1A38A08F8(&qword_1ED9966A8, &qword_1EB0FC678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEED8);
  }

  return result;
}

unint64_t sub_1A3944CA0()
{
  result = qword_1EB0FEEE0;
  if (!qword_1EB0FEEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEEE8);
    sub_1A38C00C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEEE0);
  }

  return result;
}

uint64_t sub_1A3944D30()
{
  sub_1A394A738();
  result = sub_1A3A2FF50();
  qword_1EB101B10 = result;
  return result;
}

uint64_t sub_1A3944D60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ChromeControlPanelExpandedContent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF08);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v28 - v8);
  v10 = *v2;
  if (sub_1A3A018A8(*v2, 0x19uLL))
  {
    v11 = sub_1A3A300B0();
    if (qword_1EB0FC188 != -1)
    {
      v29 = v11;
      swift_once();
      v11 = v29;
    }

    v12 = qword_1EB101B10;
  }

  else
  {
    v11 = sub_1A3A31480();
  }

  *v9 = v11;
  v9[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF10);
  sub_1A3945088(v2, (v10 < 0x1A) & (0x3100064u >> v10), v9 + *(v13 + 44));
  sub_1A394BCCC(v2, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeControlPanelExpandedContent);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_1A394BA80(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for ChromeControlPanelExpandedContent);
  v16 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF18) + 36));
  *v16 = sub_1A394A720;
  v16[1] = v15;
  v16[2] = 0;
  v16[3] = 0;
  *(v9 + *(v7 + 36)) = 256;
  if (v10 == 6 || v10 == 25)
  {
    v18 = 0;
  }

  else
  {
    v18 = 3;
  }

  sub_1A3A31590();
  v20 = v19;
  v22 = v21;
  type metadata accessor for ChromeViewModel();
  sub_1A394BFA0(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v23 = sub_1A3A2F650();
  v25 = v24;
  sub_1A388F670(v9, a1, &qword_1EB0FEF08);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF20);
  v27 = a1 + *(result + 36);
  *v27 = v18;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22;
  *(v27 + 24) = 1;
  *(v27 + 32) = v23;
  *(v27 + 40) = v25 & 1;
  return result;
}

uint64_t sub_1A3945088@<X0>(int64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v79) = a2;
  v98 = a3;
  v4 = type metadata accessor for ChromeControlPanelExpandedContent();
  v92 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v93 = v5;
  v94 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A3A302F0();
  v96 = *(v6 - 8);
  v97 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1A3A304C0();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF30);
  MEMORY[0x1EEE9AC00](v86);
  v10 = &v75 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF38);
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF40);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v91 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v75 - v16;
  v78 = sub_1A3A2FEE0();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF48);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v75 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF50);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v75 - v23;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF58);
  v25 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v27 = &v75 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF60);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v82 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v81 = &v75 - v31;
  sub_1A3945BA0(*a1, v21);
  v32 = sub_1A3A30640();
  v33 = v32;
  if ((v79 & 1) == 0)
  {
    v76 = v32;
    v79 = v4;
    v34 = a1 + *(v4 + 32);
    v35 = *v34;
    v36 = v34[8];
    sub_1A3A2EA60();
    if ((v36 & 1) == 0)
    {
      sub_1A3A31C30();
      v37 = sub_1A3A305C0();
      v75 = a1;
      v38 = v37;
      sub_1A3A2F270();

      a1 = v75;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v77 + 8))(v18, v78);
      v35 = v99;
    }

    swift_getKeyPath();
    v99 = v35;
    sub_1A394BFA0(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v33 = v76;
  }

  sub_1A3A2F520();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_1A394A78C(v21, v24);
  v47 = &v24[*(v22 + 36)];
  *v47 = v33;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
  sub_1A3A30310();
  v48 = a1;
  v49 = sub_1A394A7FC();
  sub_1A3A30B10();

  sub_1A388F740(v24, &qword_1EB0FEF50);
  v99 = v22;
  v100 = v49;
  v50 = v48;
  swift_getOpaqueTypeConformance2();
  v51 = v81;
  v52 = v80;
  sub_1A3A30B90();
  (*(v25 + 8))(v27, v52);
  *v10 = sub_1A3A2FF40();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF030);
  sub_1A39472A0(v48, &v10[*(v53 + 44)]);
  if (qword_1EB0FC188 != -1)
  {
    swift_once();
  }

  v54 = qword_1EB101B10;
  v55 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF038) + 36)];
  *v55 = v54;
  v55[1] = sub_1A388F058;
  v55[2] = 0;
  v56 = sub_1A3A314E0();
  v57 = sub_1A3948100();
  v58 = v86;
  v59 = &v10[*(v86 + 36)];
  *v59 = v56;
  v59[8] = v57;
  v60 = v83;
  sub_1A3A304B0();
  v61 = sub_1A394B000();
  v62 = v87;
  sub_1A3A30B00();
  (*(v84 + 8))(v60, v85);
  sub_1A388F740(v10, &qword_1EB0FEF30);
  v63 = v95;
  sub_1A3A302D0();
  v64 = v50;
  v65 = v94;
  sub_1A394BCCC(v64, v94, type metadata accessor for ChromeControlPanelExpandedContent);
  v66 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v67 = swift_allocObject();
  sub_1A394BA80(v65, v67 + v66, type metadata accessor for ChromeControlPanelExpandedContent);
  v99 = v58;
  v100 = v61;
  swift_getOpaqueTypeConformance2();
  v68 = v89;
  v69 = v90;
  sub_1A3A30AB0();

  (*(v96 + 8))(v63, v97);
  (*(v88 + 8))(v62, v68);
  v70 = v82;
  sub_1A388F6D8(v51, v82, &qword_1EB0FEF60);
  v71 = v91;
  sub_1A388F6D8(v69, v91, &qword_1EB0FEF40);
  v72 = v98;
  sub_1A388F6D8(v70, v98, &qword_1EB0FEF60);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF060);
  sub_1A388F6D8(v71, v72 + *(v73 + 48), &qword_1EB0FEF40);
  sub_1A388F740(v69, &qword_1EB0FEF40);
  sub_1A388F740(v51, &qword_1EB0FEF60);
  sub_1A388F740(v71, &qword_1EB0FEF40);
  return sub_1A388F740(v70, &qword_1EB0FEF60);
}

uint64_t sub_1A3945BA0@<X0>(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF1B0);
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v78[-v4];
  v5 = type metadata accessor for ChromeControlPanelExpandedContent();
  v6 = v5 - 8;
  v81 = *(v5 - 8);
  v7 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v78[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = type metadata accessor for ChromeControlDrawerMenu();
  MEMORY[0x1EEE9AC00](v90);
  v9 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ChromeMenu();
  v80 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v78[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v78[-v14];
  v87 = sub_1A3A2FEE0();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v78[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v6 + 40);
  v84 = v2;
  v20 = (v2 + v19);
  v21 = *v20;
  v22 = *(v20 + 8);
  sub_1A3A2EA60();
  v23 = v21;
  v79 = v22;
  if ((v22 & 1) == 0)
  {
    sub_1A3A31C30();
    v24 = sub_1A3A305C0();
    sub_1A3A2F270();

    v25 = v85;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v86 + 8))(v25, v87);
    v23 = v104;
  }

  swift_getKeyPath();
  *&v104 = v23;
  v88 = sub_1A394BFA0(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(v23 + 1192))
  {
    sub_1A3A2EA60();
    v27 = sub_1A38BC058(a1);

    (*(v27 + 56))(v28);

    v29 = &v18[*(v16 + 48)];
    v30 = *v29;
    sub_1A38C048C(*v29, v29[1]);
    sub_1A394BD34(v18, type metadata accessor for ChromeElementState);
    if (v30)
    {
      v31 = v30(4);
      sub_1A3671090(v30);
      if (*(v31 + 16))
      {
        sub_1A394BCCC(v31 + ((*(v80 + 80) + 32) & ~*(v80 + 80)), v13, type metadata accessor for ChromeMenu);

        v32 = v83;
        sub_1A394BA80(v13, v83, type metadata accessor for ChromeMenu);
        sub_1A394BCCC(v32, v9, type metadata accessor for ChromeMenu);
        v33 = v82;
        sub_1A394BCCC(v84, v82, type metadata accessor for ChromeControlPanelExpandedContent);
        v34 = (*(v81 + 80) + 16) & ~*(v81 + 80);
        v35 = swift_allocObject();
        sub_1A394BA80(v33, v35 + v34, type metadata accessor for ChromeControlPanelExpandedContent);
        v36 = &v9[*(v90 + 20)];
        *v36 = sub_1A394BC64;
        v36[1] = v35;
        sub_1A394BCCC(v9, v91, type metadata accessor for ChromeControlDrawerMenu);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF88);
        sub_1A394BFA0(&qword_1EB0FEF78, type metadata accessor for ChromeControlDrawerMenu);
        sub_1A394A944();
        sub_1A3A301F0();
        sub_1A394BD34(v9, type metadata accessor for ChromeControlDrawerMenu);
        return sub_1A394BD34(v32, type metadata accessor for ChromeMenu);
      }
    }

    if (a1 <= 12)
    {
      switch(a1)
      {
        case 2:
          sub_1A3A2EA60();
          if ((v79 & 1) == 0)
          {
            sub_1A3A31C30();
            v53 = sub_1A3A305C0();
            sub_1A3A2F270();

            v54 = v85;
            sub_1A3A2FED0();
            swift_getAtKeyPath();

            (*(v86 + 8))(v54, v87);
            v21 = v104;
          }

          swift_getKeyPath();
          *&v104 = v21;
          sub_1A3A2F080();

          v55 = *(v21 + 392);

          type metadata accessor for ChromeViewModel();
          v56 = sub_1A3A2F650();
          v58 = 0x4051000000000000;
          if (v55)
          {
            v58 = 0x404C000000000000;
          }

          *&v101 = v58;
          *(&v101 + 1) = v58;
          *&v102 = v56;
          BYTE8(v102) = v57 & 1;
          BYTE9(v102) = 1;
          break;
        case 5:
          type metadata accessor for ChromeViewModel();
          v68 = sub_1A3A2F650();
          v101 = 0uLL;
          *&v102 = v68;
          WORD4(v102) = v69 & 1;
          break;
        case 6:
          type metadata accessor for ChromeViewModel();
          v39 = sub_1A3A2F650();
          v41 = v40;
          sub_1A3A2EA60();
          v42 = v21;
          if ((v79 & 1) == 0)
          {
            sub_1A3A31C30();
            v43 = sub_1A3A305C0();
            sub_1A3A2F270();

            v44 = v85;
            sub_1A3A2FED0();
            swift_getAtKeyPath();

            (*(v86 + 8))(v44, v87);
            v42 = v104;
          }

          swift_getKeyPath();
          *&v104 = v42;
          sub_1A3A2F080();

          v45 = *(v42 + 944);
          sub_1A3A2EA60();

          swift_getKeyPath();
          *&v104 = v45;
          sub_1A394BFA0(qword_1ED998460, type metadata accessor for ChromeFilterViewModel);
          sub_1A3A2F080();

          v46 = *(v45 + 17);

          v47 = sub_1A3A314E0();
          if (v79)
          {
            *v94 = v21;
            sub_1A3A2EA60();
          }

          else
          {
            sub_1A3A2EA60();
            sub_1A3A31C30();
            v72 = sub_1A3A305C0();
            sub_1A3A2F270();

            v73 = v85;
            sub_1A3A2FED0();
            swift_getAtKeyPath();

            (*(v86 + 8))(v73, v87);
            v21 = *v94;
          }

          swift_getKeyPath();
          *&v104 = v21;
          sub_1A3A2F080();

          v74 = *(v21 + 944);
          sub_1A3A2EA60();

          swift_getKeyPath();
          *&v104 = v74;
          sub_1A3A2F080();

          v75 = *(v74 + 17);

          *&v101 = v39;
          *(&v101 + 1) = v41 & 1;
          if (v46)
          {
            v76 = 0x3FF0000000000000;
          }

          else
          {
            v76 = 0;
          }

          *&v102 = v76;
          *(&v102 + 1) = v47;
          *v103 = v75;
          sub_1A3A2EA60();
          sub_1A3A2EA60();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFF8);
          sub_1A394AD34();
          sub_1A394AECC();
          sub_1A3A301F0();
          if (v105[17])
          {
            v77 = 256;
          }

          else
          {
            v77 = 0;
          }

          v101 = v104;
          v102 = *v105;
          *v103 = v77 | v105[16];
          v103[2] = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFE8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF020);
          sub_1A394ACA8();
          sub_1A394AF20();
          sub_1A3A301F0();
          v100 = v105[18];
          v99 = 1;
          *&v105[19] = v95;
          *&v105[26] = *(&v95 + 7);
          v105[34] = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF98);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFD8);
          sub_1A394A9D0();
          sub_1A394AC1C();
          sub_1A3A301F0();

          goto LABEL_47;
        default:
          goto LABEL_30;
      }

      sub_1A392C320();
      sub_1A3919E1C();
      sub_1A3A2EA60();
      sub_1A3A301F0();
      v99 = v105[9];
      v93 = 0;
      *&v105[10] = *v94;
      *&v105[25] = *&v94[15];
      v105[33] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFB8);
      sub_1A394AA5C();
      sub_1A394AAE8();
      sub_1A3A301F0();
      v104 = v95;
      *v105 = v96;
      *&v105[16] = v97;
      *&v105[32] = v98;
      v100 = 0;
    }

    else
    {
      if (a1 <= 23)
      {
        if (a1 == 13)
        {
          sub_1A3A2EA60();
          if ((v79 & 1) == 0)
          {
            sub_1A3A31C30();
            v60 = sub_1A3A305C0();
            sub_1A3A2F270();

            v61 = v85;
            sub_1A3A2FED0();
            swift_getAtKeyPath();

            (*(v86 + 8))(v61, v87);
            v21 = v104;
          }

          swift_getKeyPath();
          *&v104 = v21;
          sub_1A3A2F080();

          v62 = *(v21 + 392);

          type metadata accessor for ChromeViewModel();
          v63 = sub_1A3A2F650();
          v65 = 0x4051000000000000;
          if (v62)
          {
            v65 = 0x404C000000000000;
          }

          *&v101 = v65;
          *(&v101 + 1) = v63;
          v102 = v64 & 1;
          *v103 = 256;
          sub_1A3A2EA60();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFF8);
          sub_1A394AD34();
          sub_1A394AECC();
          sub_1A3A301F0();
          if (v105[17])
          {
            v66 = 256;
          }

          else
          {
            v66 = 0;
          }

          v101 = v104;
          v102 = *v105;
          *v103 = v66 | v105[16];
          v103[2] = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFE8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF020);
          sub_1A394ACA8();
          sub_1A394AF20();
          sub_1A3A301F0();
          v94[0] = v105[18];
          v100 = 1;
          *&v105[19] = v95;
          *&v105[26] = *(&v95 + 7);
          v105[34] = 1;
          goto LABEL_46;
        }

        if (a1 == 20)
        {
          type metadata accessor for ChromeViewModel();
          *&v101 = sub_1A3A2F650();
          WORD4(v101) = v37 & 1;
          sub_1A394AFAC();
          sub_1A3A2EA60();
          sub_1A3A301F0();
          v38 = 256;
          if (!BYTE9(v104))
          {
            v38 = 0;
          }

          *&v101 = v104;
          *(&v101 + 1) = v38 | BYTE8(v104);
          v102 = 0uLL;
          *v103 = 0;
          v103[2] = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFE8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF020);
          sub_1A394ACA8();
          sub_1A394AF20();
          sub_1A3A301F0();
          v94[0] = v105[18];
          v100 = 1;
          *&v105[19] = v95;
          *&v105[26] = *(&v95 + 7);
          v105[34] = 1;
          goto LABEL_46;
        }

LABEL_30:
        *&v101 = 0;
        WORD4(v101) = 256;
        sub_1A394AFAC();
        sub_1A3A301F0();
        if (BYTE9(v104))
        {
          v59 = 256;
        }

        else
        {
          v59 = 0;
        }

        *&v101 = v104;
        *(&v101 + 1) = v59 | BYTE8(v104);
        v102 = 0uLL;
        *v103 = 0;
        v103[2] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFE8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF020);
        sub_1A394ACA8();
        sub_1A394AF20();
        sub_1A3A301F0();
        LOBYTE(v95) = v105[18];
        v94[0] = 1;
        v101 = v104;
        v102 = *v105;
        *v103 = *&v105[16];
        v103[2] = v105[18];
        v103[18] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF98);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFD8);
        sub_1A394A9D0();
        sub_1A394AC1C();
        sub_1A3A301F0();
        goto LABEL_48;
      }

      if (a1 != 24)
      {
        if (a1 == 25)
        {
          type metadata accessor for ChromeViewModel();
          v48 = sub_1A3A2F650();
          v50 = v49;
          LOBYTE(v101) = 0;
          sub_1A3A30F80();
          v51 = v104;
          v52 = *(&v104 + 1);
          LOBYTE(v101) = 0;
          sub_1A3A30F80();
          *&v101 = v48;
          *(&v101 + 1) = v50 & 1;
          *&v102 = v51;
          *(&v102 + 1) = v52;
          *v103 = v104;
          *&v103[8] = *(&v104 + 1);
          v103[16] = 1;
          sub_1A394AB74();
          sub_1A394ABC8();
          sub_1A3A2EA60();
          sub_1A3A2EA60();
          sub_1A3A2EA60();
          sub_1A3A301F0();
          v100 = v105[32];
          v99 = 1;
          v105[33] = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFA8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFB8);
          sub_1A394AA5C();
          sub_1A394AAE8();
          sub_1A3A301F0();
          v104 = v95;
          *v105 = v96;
          *&v105[16] = v97;
          *&v105[32] = v98;
          v94[0] = 0;
          v105[34] = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF98);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFD8);
          sub_1A394A9D0();
          sub_1A394AC1C();
          sub_1A3A301F0();

LABEL_47:

          v104 = v101;
          *v105 = v102;
          *&v105[16] = *v103;
          *&v105[31] = *&v103[15];
LABEL_48:
          v70 = *v105;
          v71 = v91;
          *v91 = v104;
          v71[1] = v70;
          v71[2] = *&v105[16];
          *(v71 + 47) = *&v105[31];
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF88);
          sub_1A394BFA0(&qword_1EB0FEF78, type metadata accessor for ChromeControlDrawerMenu);
          sub_1A394A944();
          return sub_1A3A301F0();
        }

        goto LABEL_30;
      }

      type metadata accessor for ChromeViewModel();
      *&v101 = sub_1A3A2F650();
      *(&v101 + 1) = v67 & 1;
      v102 = 0u;
      memset(v103, 0, 17);
      sub_1A394AB74();
      sub_1A394ABC8();
      sub_1A3A2EA60();
      sub_1A3A301F0();
      v100 = v105[32];
      v99 = 1;
      v105[33] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFB8);
      sub_1A394AA5C();
      sub_1A394AAE8();
      sub_1A3A301F0();
      v104 = v95;
      *v105 = v96;
      *&v105[16] = v97;
      *&v105[32] = v98;
      v94[0] = 0;
    }

    v105[34] = 0;
LABEL_46:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEFD8);
    sub_1A394A9D0();
    sub_1A394AC1C();
    sub_1A3A301F0();
    goto LABEL_47;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A39472A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF068);
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v71 - v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF070);
  v80 = *(v82 - 8);
  v4 = MEMORY[0x1EEE9AC00](v82);
  v76 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF078);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v83 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v71 - v10;
  v11 = sub_1A3A2FEE0();
  v78 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF080);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF088);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v79 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v71 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v71 - v24;
  sub_1A3947A9C(v17);
  v25 = *a1 == 25;
  KeyPath = swift_getKeyPath();
  v27 = &v17[*(v15 + 44)];
  v73 = v25;
  *v27 = v25;
  *(v27 + 1) = KeyPath;
  v27[16] = 0;
  v28 = a1 + *(type metadata accessor for ChromeControlPanelExpandedContent() + 32);
  v29 = *v28;
  v30 = v28[8];
  sub_1A3A2EA60();
  v31 = v29;
  v72 = v30;
  if ((v30 & 1) == 0)
  {
    sub_1A3A31C30();
    v32 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v78 + 8))(v13, v11);
    v31 = v86;
  }

  v71 = v11;
  swift_getKeyPath();
  v86 = v31;
  sub_1A394BFA0(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v33 = sub_1A3A30610();
  sub_1A3A2F520();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_1A388F670(v17, v23, &qword_1EB0FF080);
  v42 = &v23[*(v18 + 36)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  sub_1A388F670(v23, v85, &qword_1EB0FF088);
  v43 = sub_1A3948100();
  v44 = 1;
  v46 = v81;
  v45 = v82;
  if (v43)
  {
    v47 = v77;
    sub_1A39486A0(v77);
    v48 = swift_getKeyPath();
    v49 = v47 + *(v74 + 36);
    *v49 = v73;
    *(v49 + 8) = v48;
    *(v49 + 16) = 0;
    sub_1A3A2EA60();
    if ((v72 & 1) == 0)
    {
      sub_1A3A31C30();
      v50 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v78 + 8))(v13, v71);
      v29 = v86;
    }

    swift_getKeyPath();
    v86 = v29;
    sub_1A3A2F080();

    v51 = sub_1A3A30610();
    sub_1A3A2F520();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = v76;
    sub_1A388F670(v47, v76, &qword_1EB0FF068);
    v61 = v60 + *(v45 + 36);
    *v61 = v51;
    *(v61 + 8) = v53;
    *(v61 + 16) = v55;
    *(v61 + 24) = v57;
    *(v61 + 32) = v59;
    *(v61 + 40) = 0;
    v62 = v60;
    v63 = v75;
    sub_1A388F670(v62, v75, &qword_1EB0FF070);
    sub_1A388F670(v63, v46, &qword_1EB0FF070);
    v44 = 0;
  }

  (*(v80 + 56))(v46, v44, 1, v45);
  v64 = v85;
  v65 = v79;
  sub_1A388F6D8(v85, v79, &qword_1EB0FF088);
  v66 = v83;
  sub_1A388F6D8(v46, v83, &qword_1EB0FF078);
  v67 = v84;
  sub_1A388F6D8(v65, v84, &qword_1EB0FF088);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF090);
  v69 = v67 + *(v68 + 48);
  *v69 = 0;
  *(v69 + 8) = 1;
  sub_1A388F6D8(v66, v67 + *(v68 + 64), &qword_1EB0FF078);
  sub_1A388F740(v46, &qword_1EB0FF078);
  sub_1A388F740(v64, &qword_1EB0FF088);
  sub_1A388F740(v66, &qword_1EB0FF078);
  return sub_1A388F740(v65, &qword_1EB0FF088);
}

uint64_t sub_1A3947A9C@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = sub_1A3A2FB90();
  v3 = *(v2 - 8);
  v49 = v2;
  v50 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChromeControlPanelExpandedContent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF128);
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF130);
  v13 = *(v12 - 8);
  v44 = v12;
  v45 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF138);
  v17 = *(v16 - 8);
  v46 = v16;
  v47 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF140);
  v20 = MEMORY[0x1EEE9AC00](v48);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v41 = v1;
  v42 = &v40 - v23;
  sub_1A394BCCC(v1, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeControlPanelExpandedContent);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  sub_1A394BA80(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for ChromeControlPanelExpandedContent);
  v52 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF148);
  sub_1A394B710();
  sub_1A3A30FE0();
  sub_1A3A2FB80();
  v26 = sub_1A38A08F8(&qword_1EB0FF1A8, &qword_1EB0FF128);
  v27 = sub_1A394BFA0(&qword_1ED9966C8, MEMORY[0x1E697C248]);
  v28 = v49;
  sub_1A3A30960();
  (*(v50 + 8))(v5, v28);
  (*(v43 + 8))(v11, v9);
  v53 = v9;
  v54 = v28;
  v55 = v26;
  v56 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v44;
  sub_1A3A30BC0();
  (*(v45 + 8))(v15, v30);
  v53 = v30;
  v54 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v31 = v46;
  sub_1A3A30B90();
  (*(v47 + 8))(v19, v31);
  v53 = sub_1A3949828(*v41);
  v54 = v32;
  sub_1A389FD78();
  v33 = v42;
  sub_1A3A2FA10();

  sub_1A388F740(v22, &qword_1EB0FF140);
  v34 = sub_1A3A31810();
  v35 = CAMLocalizedFrameworkString(v34, 0);

  v36 = sub_1A3A31850();
  v38 = v37;

  v53 = v36;
  v54 = v38;
  sub_1A3A2FA00();

  return sub_1A388F740(v33, &qword_1EB0FF140);
}

BOOL sub_1A3948100()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*v0 == 2)
  {
    v18 = v0 + *(type metadata accessor for ChromeControlPanelExpandedContent() + 32);
    v19 = *v18;
    v20 = v18[8];
    sub_1A3A2EA60();
    v21 = v19;
    if ((v20 & 1) == 0)
    {
      sub_1A3A31C30();
      v22 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v21 = v27;
    }

    swift_getKeyPath();
    v27 = v21;
    sub_1A394BFA0(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v23 = *(v21 + 712);

    sub_1A3A2EA60();
    if ((v20 & 1) == 0)
    {
      sub_1A3A31C30();
      v24 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v19 = v27;
    }

    swift_getKeyPath();
    v27 = v19;
    sub_1A3A2F080();

    v25 = *(v19 + 704);

    return v23 != v25;
  }

  else if (v5 == 25)
  {
    v12 = v0 + *(type metadata accessor for ChromeControlPanelExpandedContent() + 32);
    v13 = *v12;
    v14 = v12[8];
    sub_1A3A2EA60();
    if ((v14 & 1) == 0)
    {
      sub_1A3A31C30();
      v15 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v13 = v27;
    }

    swift_getKeyPath();
    v27 = v13;
    sub_1A394BFA0(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v16 = *(v13 + 928);
    sub_1A3A2EA60();

    swift_getKeyPath();
    v27 = v16;
    sub_1A394BFA0(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
    sub_1A3A2F080();

    v17 = *(v16 + 80);

    return v17;
  }

  else if (v5 == 5)
  {
    v6 = v0 + *(type metadata accessor for ChromeControlPanelExpandedContent() + 32);
    v7 = *v6;
    v8 = v6[8];
    sub_1A3A2EA60();
    if ((v8 & 1) == 0)
    {
      sub_1A3A31C30();
      v9 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v7 = v27;
    }

    swift_getKeyPath();
    v27 = v7;
    sub_1A394BFA0(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v10 = *(v7 + 672);

    return v10 != 0.0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A39486A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_1A3A2FB90();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChromeControlPanelExpandedContent();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF098);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF0A0);
  MEMORY[0x1EEE9AC00](v33);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF0A8);
  v17 = *(v16 - 8);
  v34 = v16;
  v35 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  sub_1A394BCCC(v2, &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeControlPanelExpandedContent);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  sub_1A394BA80(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for ChromeControlPanelExpandedContent);
  v39 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF0B0);
  sub_1A394B284();
  sub_1A3A30FE0();
  v22 = sub_1A3A31810();
  v23 = CAMLocalizedFrameworkString(v22, 0);

  v24 = sub_1A3A31850();
  v26 = v25;

  v40 = v24;
  v41 = v26;
  sub_1A38A08F8(&qword_1EB0FF110, &qword_1EB0FF098);
  sub_1A389FD78();
  sub_1A3A30A90();

  (*(v11 + 8))(v13, v10);
  sub_1A3A2FB80();
  v27 = sub_1A394B5F4();
  v28 = sub_1A394BFA0(&qword_1ED9966C8, MEMORY[0x1E697C248]);
  v29 = v33;
  v30 = v36;
  sub_1A3A30960();
  (*(v37 + 8))(v6, v30);
  sub_1A388F740(v15, &qword_1EB0FF0A0);
  v40 = v29;
  v41 = v30;
  v42 = v27;
  v43 = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v34;
  sub_1A3A30BC0();
  return (*(v35 + 8))(v19, v31);
}

uint64_t sub_1A3948BAC()
{
  type metadata accessor for ChromeControlPanelExpandedContent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
  return sub_1A3A30300();
}

uint64_t sub_1A3948C0C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF1E0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  v13 = sub_1A3A31170();
  v76 = *(v13 - 8);
  v77 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v74 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v60 - v16;
  v17 = sub_1A3A31370();
  v69 = *(v17 - 8);
  v70 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1A3A31430();
  v73 = *(v78 - 8);
  v19 = MEMORY[0x1EEE9AC00](v78);
  v71 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v60 - v21;
  v22 = sub_1A3A2FEE0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF1E8);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v60 - v29;
  if (a2)
  {
    v63 = v12;
    v64 = v27;
    v67 = a5;
    v62 = v28;
    v61 = v30;
    if ((a4 & 1) == 0)
    {
      sub_1A3A2EA60();
      sub_1A3A31C30();
      v31 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();
      sub_1A3670FF4(a3, 0);
      (*(v23 + 8))(v25, v22);
      LOBYTE(a3) = v79;
    }

    v65 = a1;
    v66 = v10;
    if (qword_1ED996480 != -1)
    {
      swift_once();
    }

    v32 = off_1ED997FE0;
    swift_getKeyPath();
    v79 = v32;
    sub_1A394BFA0(&qword_1ED996650, type metadata accessor for SettingsManager);
    sub_1A3A2F080();

    v33 = v32[2];
    sub_1A3A2EA60();
    v34 = sub_1A394F77C(4);
    swift_getKeyPath();
    v79 = v33;
    sub_1A394BFA0(&qword_1ED996658, type metadata accessor for CameraUISettings);
    sub_1A3A2F080();

    v35 = sub_1A394FC58(0xCu);
    swift_getKeyPath();
    v79 = v33;
    sub_1A3A2F080();

    v36 = sub_1A394FC58(0xEu);
    swift_getKeyPath();
    v79 = v33;
    sub_1A3A2F080();

    v37 = sub_1A394FC58(0xBu);

    if (v34 - 2 >= 3)
    {
      v38 = v71;
      if (v34 >= 2u)
      {
        sub_1A3A31380();
      }

      else
      {
        if (v37)
        {
          v45 = 0x10000;
        }

        else
        {
          v45 = 0;
        }

        v46 = v45 | (v34 << 24);
        if (v36)
        {
          v47 = 256;
        }

        else
        {
          v47 = 0;
        }

        v48 = v68;
        sub_1A3908D0C(a3 & 1, (v46 | v47) & 0xFFFFFFFE | v35 & 1, v68);
        sub_1A3A31390();
        (*(v69 + 8))(v48, v70);
      }
    }

    else
    {
      LOBYTE(v79) = v35 & 1;
      BYTE1(v79) = v36 & 1;
      BYTE2(v79) = v37 & 1;
      BYTE3(v79) = v34;
      sub_1A38BE1AC();
      v38 = v71;
      sub_1A3A31420();
    }

    v49 = v72;
    v50 = v73;
    (*(v73 + 32))(v72, v38, v78);
    v51 = v74;
    sub_1A3A31160();
    v52 = v75;
    sub_1A3A31150();
    v53 = v77;
    v54 = *(v76 + 8);
    v54(v51, v77);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF1F0);
    v55 = sub_1A38A08F8(&qword_1EB0FF1F8, &qword_1EB0FF1F0);
    v56 = sub_1A3890F84();
    v57 = v61;
    sub_1A3A309A0();
    v54(v52, v53);
    (*(v50 + 8))(v49, v78);
    v58 = v62;
    v59 = v64;
    (*(v62 + 16))(v63, v57, v64);
    swift_storeEnumTagMultiPayload();
    v79 = v76;
    v80 = MEMORY[0x1E69817E8];
    v81 = v55;
    v82 = v56;
    swift_getOpaqueTypeConformance2();
    sub_1A3A301F0();
    return (*(v58 + 8))(v57, v59);
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF1F0);
    v40 = a1;
    v41 = v39;
    (*(*(v39 - 8) + 16))(v12, v40, v39);
    swift_storeEnumTagMultiPayload();
    v42 = sub_1A38A08F8(&qword_1EB0FF1F8, &qword_1EB0FF1F0);
    v43 = sub_1A3890F84();
    v79 = v41;
    v80 = MEMORY[0x1E69817E8];
    v81 = v42;
    v82 = v43;
    swift_getOpaqueTypeConformance2();
    return sub_1A3A301F0();
  }
}

uint64_t sub_1A3949534(unint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF160);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v16 - v3;
  *v4 = 0x6B72616D78;
  *(v4 + 1) = 0xE500000000000000;
  v4[16] = 0;
  type metadata accessor for ChromeElementIcon();
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  swift_storeEnumTagMultiPayload();
  v5 = *a1;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF1A0) + 52)] = v5;
  sub_1A38A8F64(v5);
  sub_1A3A31480();
  sub_1A3A2F780();
  v6 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF190) + 36)];
  v7 = v18;
  *v6 = v17;
  *(v6 + 1) = v7;
  *(v6 + 2) = v19;
  v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF180) + 36)] = 0;
  v8 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF170) + 36)];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEAC8) + 28);
  v10 = *MEMORY[0x1E69816C0];
  v11 = sub_1A3A30EF0();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = swift_getKeyPath();
  v4[*(v2 + 36)] = 0;
  if (v5 == 15)
  {
    v12 = 0xE90000000000006FLL;
    v13 = 0x7263614D6F747541;
  }

  else if (v5 == 16)
  {
    v12 = 0x80000001A3AA1CD0;
    v13 = 0xD000000000000015;
  }

  else
  {
    v16[0] = sub_1A39FDA64(v5);
    v16[1] = v14;
    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x6E6F74747542, 0xE600000000000000);

    v13 = v16[0];
    v12 = v16[1];
  }

  strcpy(v16, "ControlPanel.");
  HIWORD(v16[1]) = -4864;
  MEMORY[0x1A58F7770](v13, v12);

  sub_1A394B7CC();
  sub_1A3A30B70();

  return sub_1A388F740(v4, &qword_1EB0FF160);
}

uint64_t sub_1A3949828(unint64_t a1)
{
  v2 = sub_1A3A31810();
  v3 = CAMLocalizedFrameworkString(v2, 0);

  sub_1A3A31850();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD310);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A3A681C0;
  v5 = sub_1A39FCA4C(a1);
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1A38C6EB4();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v8 = sub_1A3A31820();

  return v8;
}

uint64_t sub_1A394992C()
{
  sub_1A3A2EA60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
  sub_1A3A30F90();
  sub_1A3A30FA0();

  sub_1A3A31500();
  sub_1A3A314B0();

  sub_1A3A2F8A0();
}

uint64_t sub_1A3949A44()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  result = MEMORY[0x1EEE9AC00](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*v0 == 2)
  {
    v20 = v0 + *(type metadata accessor for ChromeControlPanelExpandedContent() + 32);
    v21 = *v20;
    v22 = v20[8];
    sub_1A3A2EA60();
    if (v22 == 1)
    {
      sub_1A3A2EA60();
      v23 = v21;
    }

    else
    {
      sub_1A3A31C30();
      v24 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      v25 = *(v2 + 8);
      v25(v5, v1);
      v23 = v29;
      sub_1A3A2EA60();
      sub_1A3A31C30();
      v26 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      v25(v5, v1);
      v21 = v29;
    }

    swift_getKeyPath();
    v29 = v21;
    sub_1A394BFA0(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v27 = v21[88];

    v11 = v23[153];
    v12 = v23[154];
    __swift_project_boxed_opaque_existential_1(v23 + 150, v11);
    v13 = *(v12 + 8);
    v14 = v27;
    v15 = 4;
    v19 = v23;
  }

  else
  {
    if (v6 == 25)
    {
      v16 = v0 + *(type metadata accessor for ChromeControlPanelExpandedContent() + 32);
      v8 = *v16;
      v17 = v16[8];
      sub_1A3A2EA60();
      if ((v17 & 1) == 0)
      {
        sub_1A3A31C30();
        v18 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v2 + 8))(v5, v1);
        v8 = v29;
      }

      v11 = v8[153];
      v12 = v8[154];
      __swift_project_boxed_opaque_existential_1(v8 + 150, v11);
      v13 = *(v12 + 8);
      v14 = 6;
      v15 = 160;
    }

    else
    {
      if (v6 != 5)
      {
        return result;
      }

      v7 = v0 + *(type metadata accessor for ChromeControlPanelExpandedContent() + 32);
      v8 = *v7;
      v9 = v7[8];
      sub_1A3A2EA60();
      if ((v9 & 1) == 0)
      {
        sub_1A3A31C30();
        v10 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v2 + 8))(v5, v1);
        v8 = v29;
      }

      v11 = v8[153];
      v12 = v8[154];
      __swift_project_boxed_opaque_existential_1(v8 + 150, v11);
      v13 = *(v12 + 8);
      v14 = 0;
      v15 = 28;
    }

    v19 = v8;
  }

  v13(v14, 0, 0, v15, v19, v11, v12);
}

uint64_t sub_1A3949EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A31620();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1A3A31600();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a2 = 0xD000000000000016;
  *(a2 + 8) = 0x80000001A3AA4830;
  *(a2 + 16) = 1;
  type metadata accessor for ChromeElementIcon();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1A3A315F0();
  v12 = *(a1 + 32);
  LOBYTE(v24) = *(a1 + 24);
  *(&v24 + 1) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
  sub_1A3A30F90();
  v13 = v23[15];
  sub_1A3A31610();
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF0F8) + 36);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF108);
  (*(v5 + 16))(v14 + *(v15 + 36), v7, v4);
  *(v14 + *(v15 + 40)) = v13;
  sub_1A394BFA0(&qword_1EB0FF120, MEMORY[0x1E6982100]);
  sub_1A3A315E0();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  sub_1A3A31480();
  sub_1A3A2F780();
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF0E8) + 36));
  v17 = v25;
  *v16 = v24;
  v16[1] = v17;
  v16[2] = v26;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF0D8) + 36)) = 0;
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF0C8) + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEAC8) + 28);
  v20 = *MEMORY[0x1E69816C0];
  v21 = sub_1A3A30EF0();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF0B0);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1A394A29C(uint64_t a1)
{
  v2 = sub_1A3A30EF0();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1A3A2FCB0();
}

uint64_t sub_1A394A364(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0x22 && ((0x30F1262EDuLL >> a1) & 1) != 0)
  {
    v7 = 0x3102064uLL >> a1;
    return v7 & 1;
  }

  swift_getKeyPath();
  v13[1] = a2;
  sub_1A394BFA0(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 1192))
  {
    sub_1A3A2EA60();
    v9 = sub_1A38BC058(a1);

    (*(v9 + 56))(v10);

    v11 = &v6[*(v4 + 48)];
    v12 = *v11;
    sub_1A38C048C(*v11, v11[1]);
    sub_1A394BD34(v6, type metadata accessor for ChromeElementState);
    if (v12)
    {
      sub_1A3671090(v12);
      LOBYTE(v7) = 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }

    return v7 & 1;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ChromeControlPanelExpandedContent()
{
  result = qword_1ED997F58;
  if (!qword_1ED997F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A394A58C()
{
  sub_1A38BF120();
  if (v0 <= 0x3F)
  {
    sub_1A394A65C();
    if (v1 <= 0x3F)
    {
      sub_1A38BD87C();
      if (v2 <= 0x3F)
      {
        sub_1A394A6AC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A394A65C()
{
  if (!qword_1ED996958[0])
  {
    v0 = sub_1A3A30FC0();
    if (!v1)
    {
      atomic_store(v0, qword_1ED996958);
    }
  }
}

void sub_1A394A6AC()
{
  if (!qword_1ED9967B8)
  {
    type metadata accessor for ChromeViewModel();
    v0 = sub_1A3A2F640();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9967B8);
    }
  }
}

unint64_t sub_1A394A738()
{
  result = qword_1EB0FEF28;
  if (!qword_1EB0FEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEF28);
  }

  return result;
}

uint64_t sub_1A394A78C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEF48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A394A7FC()
{
  result = qword_1EB0FEF68;
  if (!qword_1EB0FEF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEF50);
    sub_1A394A888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEF68);
  }

  return result;
}

unint64_t sub_1A394A888()
{
  result = qword_1EB0FEF70;
  if (!qword_1EB0FEF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEF48);
    sub_1A394BFA0(&qword_1EB0FEF78, type metadata accessor for ChromeControlDrawerMenu);
    sub_1A394A944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEF70);
  }

  return result;
}

unint64_t sub_1A394A944()
{
  result = qword_1EB0FEF80;
  if (!qword_1EB0FEF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEF88);
    sub_1A394A9D0();
    sub_1A394AC1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEF80);
  }

  return result;
}

unint64_t sub_1A394A9D0()
{
  result = qword_1EB0FEF90;
  if (!qword_1EB0FEF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEF98);
    sub_1A394AA5C();
    sub_1A394AAE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEF90);
  }

  return result;
}

unint64_t sub_1A394AA5C()
{
  result = qword_1EB0FEFA0;
  if (!qword_1EB0FEFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEFA8);
    sub_1A392C320();
    sub_1A3919E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEFA0);
  }

  return result;
}

unint64_t sub_1A394AAE8()
{
  result = qword_1EB0FEFB0;
  if (!qword_1EB0FEFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEFB8);
    sub_1A394AB74();
    sub_1A394ABC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEFB0);
  }

  return result;
}

unint64_t sub_1A394AB74()
{
  result = qword_1EB0FEFC0;
  if (!qword_1EB0FEFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEFC0);
  }

  return result;
}

unint64_t sub_1A394ABC8()
{
  result = qword_1EB0FEFC8;
  if (!qword_1EB0FEFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEFC8);
  }

  return result;
}

unint64_t sub_1A394AC1C()
{
  result = qword_1EB0FEFD0;
  if (!qword_1EB0FEFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEFD8);
    sub_1A394ACA8();
    sub_1A394AF20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEFD0);
  }

  return result;
}

unint64_t sub_1A394ACA8()
{
  result = qword_1EB0FEFE0;
  if (!qword_1EB0FEFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEFE8);
    sub_1A394AD34();
    sub_1A394AECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEFE0);
  }

  return result;
}

unint64_t sub_1A394AD34()
{
  result = qword_1EB0FEFF0;
  if (!qword_1EB0FEFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEFF8);
    sub_1A394ADEC();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FEFF0);
  }

  return result;
}

unint64_t sub_1A394ADEC()
{
  result = qword_1EB0FF000;
  if (!qword_1EB0FF000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF008);
    sub_1A394AE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF000);
  }

  return result;
}

unint64_t sub_1A394AE78()
{
  result = qword_1EB0FF5D0;
  if (!qword_1EB0FF5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF5D0);
  }

  return result;
}

unint64_t sub_1A394AECC()
{
  result = qword_1EB0FF010;
  if (!qword_1EB0FF010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF010);
  }

  return result;
}

unint64_t sub_1A394AF20()
{
  result = qword_1EB0FF018;
  if (!qword_1EB0FF018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF020);
    sub_1A394AFAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF018);
  }

  return result;
}

unint64_t sub_1A394AFAC()
{
  result = qword_1EB0FF028;
  if (!qword_1EB0FF028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF028);
  }

  return result;
}

unint64_t sub_1A394B000()
{
  result = qword_1EB0FF040;
  if (!qword_1EB0FF040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEF30);
    sub_1A394B0B8();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF040);
  }

  return result;
}

unint64_t sub_1A394B0B8()
{
  result = qword_1EB0FF048;
  if (!qword_1EB0FF048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF038);
    sub_1A38A08F8(&qword_1EB0FF050, &qword_1EB0FF058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF048);
  }

  return result;
}

uint64_t sub_1A394B170()
{
  v1 = *(type metadata accessor for ChromeControlPanelExpandedContent() - 8);
  (*(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 8))();

  return sub_1A3A303D0();
}

uint64_t sub_1A394B208(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ChromeControlPanelExpandedContent() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1A394B284()
{
  result = qword_1EB0FF0B8;
  if (!qword_1EB0FF0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF0B0);
    sub_1A394B310();
    sub_1A38C00C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF0B8);
  }

  return result;
}

unint64_t sub_1A394B310()
{
  result = qword_1EB0FF0C0;
  if (!qword_1EB0FF0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF0C8);
    sub_1A394B3C8();
    sub_1A38A08F8(&qword_1ED997CD0, &qword_1EB0FEAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF0C0);
  }

  return result;
}

unint64_t sub_1A394B3C8()
{
  result = qword_1EB0FF0D0;
  if (!qword_1EB0FF0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF0D8);
    sub_1A394B480();
    sub_1A38A08F8(&qword_1ED9966D0, &qword_1EB0FC950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF0D0);
  }

  return result;
}

unint64_t sub_1A394B480()
{
  result = qword_1EB0FF0E0;
  if (!qword_1EB0FF0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF0E8);
    sub_1A394B50C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF0E0);
  }

  return result;
}

unint64_t sub_1A394B50C()
{
  result = qword_1EB0FF0F0;
  if (!qword_1EB0FF0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF0F8);
    sub_1A394BFA0(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
    sub_1A38A08F8(&qword_1EB0FF100, &qword_1EB0FF108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF0F0);
  }

  return result;
}

unint64_t sub_1A394B5F4()
{
  result = qword_1EB0FF118;
  if (!qword_1EB0FF118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF0A0);
    sub_1A38A08F8(&qword_1EB0FF110, &qword_1EB0FF098);
    sub_1A394BFA0(&qword_1ED9966D8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF118);
  }

  return result;
}

unint64_t sub_1A394B710()
{
  result = qword_1EB0FF150;
  if (!qword_1EB0FF150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF148);
    sub_1A394B7CC();
    sub_1A394BFA0(&qword_1ED9966D8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF150);
  }

  return result;
}

unint64_t sub_1A394B7CC()
{
  result = qword_1EB0FF158;
  if (!qword_1EB0FF158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF160);
    sub_1A394B858();
    sub_1A38C00C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF158);
  }

  return result;
}

unint64_t sub_1A394B858()
{
  result = qword_1EB0FF168;
  if (!qword_1EB0FF168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF170);
    sub_1A394B910();
    sub_1A38A08F8(&qword_1ED997CD0, &qword_1EB0FEAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF168);
  }

  return result;
}

unint64_t sub_1A394B910()
{
  result = qword_1EB0FF178;
  if (!qword_1EB0FF178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF180);
    sub_1A394B9C8();
    sub_1A38A08F8(&qword_1ED9966D0, &qword_1EB0FC950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF178);
  }

  return result;
}

unint64_t sub_1A394B9C8()
{
  result = qword_1EB0FF188;
  if (!qword_1EB0FF188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF190);
    sub_1A38A08F8(&qword_1EB0FF198, &qword_1EB0FF1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF188);
  }

  return result;
}

uint64_t sub_1A394BA80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for ChromeControlPanelExpandedContent();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  if (*v2 >= 0x23uLL)
  {
  }

  v3 = v2 + *(v1 + 28);
  v4 = sub_1A3A30430();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);

  return swift_deallocObject();
}

uint64_t sub_1A394BCCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A394BD34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A394BDB4()
{
  result = qword_1EB0FF1B8;
  if (!qword_1EB0FF1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEF20);
    sub_1A394BE40();
    sub_1A38A8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF1B8);
  }

  return result;
}

unint64_t sub_1A394BE40()
{
  result = qword_1EB0FF1C0;
  if (!qword_1EB0FF1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEF08);
    sub_1A394BECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF1C0);
  }

  return result;
}

unint64_t sub_1A394BECC()
{
  result = qword_1EB0FF1C8;
  if (!qword_1EB0FF1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FEF18);
    sub_1A38A08F8(&qword_1EB0FF1D0, &qword_1EB0FF1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF1C8);
  }

  return result;
}

uint64_t sub_1A394BFA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A394BFE8()
{
  result = qword_1EB0FF200;
  if (!qword_1EB0FF200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF208);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF1F0);
    sub_1A38A08F8(&qword_1EB0FF1F8, &qword_1EB0FF1F0);
    sub_1A3890F84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF200);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8CameraUI14ThumbnailImageVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A394C138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1A394C180(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ChromeVideoConfiguration.Priority(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1A394C2A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A394DF54(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 1168);
  return result;
}

uint64_t sub_1A394C3AC()
{
  if (*v0)
  {
    return 0x657261757153;
  }

  else
  {
    return 0x656C63726943;
  }
}

unint64_t sub_1A394C3DC()
{
  result = qword_1EB0FF210;
  if (!qword_1EB0FF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF210);
  }

  return result;
}

unint64_t sub_1A394C478()
{
  result = qword_1EB0FF228;
  if (!qword_1EB0FF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF228);
  }

  return result;
}

uint64_t sub_1A394C4E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v119 = a1;
  v3 = sub_1A3A2FEE0();
  v100 = *(v3 - 8);
  v101 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v99 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A3A30050();
  v112 = *(v5 - 8);
  v113 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v111 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A3A2FBC0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF230);
  v10 = MEMORY[0x1EEE9AC00](v109);
  v105 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v106 = &v99 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v107 = &v99 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v108 = &v99 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v110 = &v99 - v18;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF238);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v99 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF240);
  v115 = *(v20 - 8);
  v116 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v99 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF248);
  v117 = *(v22 - 8);
  v118 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v114 = &v99 - v23;
  v24 = sub_1A3A31480();
  v102 = v25;
  v103 = v24;
  sub_1A394D198(v2, &v133);
  v141 = v133;
  v142 = v134[0];
  v143 = v134[1];
  v144 = v135;
  v145[0] = v133;
  v145[1] = v134[0];
  v145[2] = v134[1];
  v146 = v135;
  sub_1A388F6D8(&v141, &v127, &qword_1EB0FF250);
  sub_1A388F740(v145, &qword_1EB0FF250);
  v147 = v141;
  v148 = v142;
  v149 = v143;
  v150 = v144;
  v123 = v2;
  if (*v2)
  {
    v26 = *(v7 + 20);
    v27 = *MEMORY[0x1E697F468];
    v28 = sub_1A3A30000();
    (*(*(v28 - 8) + 104))(&v9[v26], v27, v28);
    __asm { FMOV            V0.2D, #10.0 }

    *v9 = _Q0;
    sub_1A394DF54(&qword_1EB0FC480, MEMORY[0x1E697EAF0]);
  }

  else
  {
    sub_1A3890F84();
  }

  v34 = sub_1A3A31290();
  v35 = v123;
  v36 = sub_1A394D91C();
  v37 = *(v35 + 24);
  v139 = *(v35 + 8);
  v140[0] = v37;
  *(v140 + 9) = *(v35 + 33);
  v38 = *(v35 + 24);
  v133 = *(v35 + 8);
  v134[0] = v38;
  *(v134 + 9) = *(v35 + 33);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF258);
  MEMORY[0x1A58F7010](&v127);
  v39 = v127;
  v40 = *&v128[0];
  if (v127)
  {
    sub_1A3A2EA50();
    v41 = *(&v39 + 1);
    v42 = v40;
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  sub_1A3903A58(v39);
  *&v127 = v103;
  *(&v127 + 1) = v102;
  v128[0] = v147;
  v128[1] = v148;
  v129 = v149;
  LOWORD(v130) = v150;
  *(&v130 + 1) = v34;
  LOBYTE(v131) = 0;
  *(&v131 + 1) = v36;
  *&v132 = v41;
  *(&v132 + 1) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF260);
  sub_1A394DF9C();
  v43 = v105;
  sub_1A3A30B70();
  v136 = v130;
  v137 = v131;
  v138 = v132;
  v133 = v127;
  v134[0] = v128[0];
  v134[1] = v128[1];
  v135 = v129;
  sub_1A388F740(&v133, &qword_1EB0FF260);
  v44 = sub_1A3A31810();
  v45 = CAMLocalizedFrameworkString(v44, 0);

  v46 = sub_1A3A31850();
  v48 = v47;

  *&v127 = v46;
  *(&v127 + 1) = v48;
  sub_1A389FD78();
  v49 = v106;
  sub_1A3A2FA10();

  sub_1A388F740(v43, &qword_1EB0FF230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD00);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1A3A681C0;
  v51 = sub_1A3A31810();
  v52 = CAMLocalizedFrameworkString(v51, 0);

  v53 = sub_1A3A31850();
  v55 = v54;

  *(v50 + 32) = v53;
  *(v50 + 40) = v55;
  v56 = v107;
  sub_1A3A2FA70();

  sub_1A388F740(v49, &qword_1EB0FF230);
  v57 = v111;
  sub_1A3A30040();
  v58 = v108;
  sub_1A3A2FA50();
  v59 = v113;
  v60 = *(v112 + 8);
  v60(v57, v113);
  sub_1A388F740(v56, &qword_1EB0FF230);
  sub_1A3A30030();
  v61 = v110;
  sub_1A3A2FA80();
  v60(v57, v59);
  sub_1A388F740(v58, &qword_1EB0FF230);
  sub_1A3A31590();
  v63 = v62;
  v65 = v64;
  type metadata accessor for ChromeViewModel();
  sub_1A394DF54(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v66 = sub_1A3A2F650();
  LOBYTE(v45) = v67;
  v68 = v120;
  sub_1A394E138(v61, v120);
  v69 = v68 + *(v122 + 36);
  *v69 = 1;
  *(v69 + 8) = v63;
  *(v69 + 16) = v65;
  *(v69 + 24) = 1;
  *(v69 + 32) = v66;
  *(v69 + 40) = v45 & 1;
  v127 = v139;
  v128[0] = v140[0];
  *(v128 + 9) = *(v140 + 9);
  MEMORY[0x1A58F7010](&v125, v104);
  v70 = v125;
  if (v125)
  {
    v71 = v125;
  }

  sub_1A3903A58(v70);
  v125 = v70;
  v72 = swift_allocObject();
  v73 = v123;
  v74 = *(v123 + 5);
  *(v72 + 80) = *(v123 + 4);
  *(v72 + 96) = v74;
  *(v72 + 112) = *(v73 + 96);
  v75 = *(v73 + 16);
  *(v72 + 16) = *v73;
  *(v72 + 32) = v75;
  v76 = *(v73 + 48);
  *(v72 + 48) = *(v73 + 32);
  *(v72 + 64) = v76;
  sub_1A394E1B0(v73, &v127);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF288);
  v78 = sub_1A394E1E8();
  v79 = sub_1A394E330();
  v80 = v120;
  sub_1A3A30CA0();

  sub_1A388F740(v80, &qword_1EB0FF238);
  v81 = *(v73 + 88);
  v125 = v81;
  v126 = *(v73 + 96);
  LOBYTE(v80) = v126;
  sub_1A3A2EA60();
  if ((v80 & 1) == 0)
  {
    sub_1A3A31C30();
    v82 = sub_1A3A305C0();
    sub_1A3A2F270();

    v83 = v99;
    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v125, &qword_1EB0FC3C0);
    (*(v100 + 8))(v83, v101);
    v81 = v127;
  }

  swift_getKeyPath();
  *&v127 = v81;
  sub_1A3A2F080();

  v84 = v81[1168];

  v124 = v84;
  v85 = swift_allocObject();
  v86 = v123;
  v87 = *(v123 + 5);
  *(v85 + 80) = *(v123 + 4);
  *(v85 + 96) = v87;
  *(v85 + 112) = *(v86 + 96);
  v88 = *(v86 + 16);
  *(v85 + 16) = *v86;
  *(v85 + 32) = v88;
  v89 = *(v86 + 48);
  *(v85 + 48) = *(v86 + 32);
  *(v85 + 64) = v89;
  sub_1A394E1B0(v86, &v127);
  *&v127 = v122;
  *(&v127 + 1) = v77;
  *&v128[0] = v78;
  *(&v128[0] + 1) = v79;
  swift_getOpaqueTypeConformance2();
  v90 = v114;
  v91 = v116;
  v92 = v121;
  sub_1A3A30CA0();

  (*(v115 + 8))(v92, v91);
  v127 = *(v86 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
  sub_1A3A30F90();
  v93 = v124;
  v94 = sub_1A3A2F650();
  LOBYTE(v91) = v95;
  v96 = v119;
  (*(v117 + 32))(v119, v90, v118);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2A0);
  v98 = v96 + *(result + 36);
  *v98 = (v93 & 1) == 0;
  *(v98 + 8) = v94;
  *(v98 + 16) = v91 & 1;
  return result;
}

void sub_1A394D198(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A30EC0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A3A2FEE0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  *v45 = *(a1 + 8);
  *&v45[16] = v12;
  *&v45[25] = *(a1 + 33);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF258);
  MEMORY[0x1A58F7010](&v39, v13);
  if (v39)
  {
    v15 = *(&v39 + 1);
    v14 = v40;
    v16 = v39;
    sub_1A3A30EA0();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v17 = sub_1A3A30F00();

    (*(v5 + 8))(v7, v4);
    v45[0] = 1;
    sub_1A3A2EA50();
    sub_1A3A2F7A0();
    sub_1A3A2F7B0();
    sub_1A3A2F7C0();

    sub_1A3A2F7B0();
    v18 = sub_1A3A2F790();

    v29 = v17;
    v30 = 0;
    LOBYTE(v31) = 1;
    *(&v31 + 1) = 1;
    BYTE3(v31) = 0;
    v32 = v15;
    v33 = v14;
    v34 = v18;
    *v45 = v17;
    *&v45[16] = v31;
    *&v45[24] = v15;
    *&v45[32] = v14;
    *&v45[40] = v18;
    LOBYTE(v46) = 0;
    sub_1A388F6D8(&v29, &v39, &qword_1EB0FF2A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2B0);
    sub_1A394E4EC();
    sub_1A394E5D0();
    sub_1A3A301F0();
    v44 = v38;
    v43 = 0;
    *v45 = v35;
    *&v45[16] = v36;
    *&v45[32] = v37;
    v46 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2C0);
    sub_1A394E654();
    sub_1A3A301F0();

    sub_1A388F740(&v29, &qword_1EB0FF2A8);
LABEL_11:
    *v45 = v39;
    *&v45[16] = v40;
    *&v45[32] = v41;
    v46 = v42;
    goto LABEL_12;
  }

  LOBYTE(v30) = *(a1 + 96);
  v19 = *(a1 + 88);
  v29 = v19;
  v20 = v30;
  sub_1A3A2EA60();
  if ((v20 & 1) == 0)
  {
    sub_1A3A31C30();
    v21 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v29, &qword_1EB0FC3C0);
    (*(v9 + 8))(v11, v8);
    v19 = *v45;
  }

  swift_getKeyPath();
  *v45 = v19;
  sub_1A394DF54(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v22 = *(v19 + 1168);

  if (v22)
  {
    v23 = sub_1A3A30DB0();
    LOBYTE(v35) = 1;
    *&v39 = v23;
    HIBYTE(v42) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2C0);
    sub_1A394E654();
    sub_1A3A301F0();
LABEL_12:
    v28 = *&v45[16];
    *a2 = *v45;
    *(a2 + 16) = v28;
    *(a2 + 32) = *&v45[32];
    *(a2 + 48) = v46;
    return;
  }

  if (qword_1ED996498 != -1)
  {
    swift_once();
  }

  v24 = qword_1ED99D890;
  v25 = sub_1A3A31810();
  v26 = [objc_opt_self() imageNamed:v25 inBundle:v24];

  if (v26)
  {
    sub_1A3A30EA0();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v27 = sub_1A3A30F00();

    (*(v5 + 8))(v7, v4);
    *&v45[8] = xmmword_1A3A771D0;
    *v45 = v27;
    memset(&v45[24], 0, 24);
    LOBYTE(v46) = 1;
    sub_1A3A2EA60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2B0);
    sub_1A394E4EC();
    sub_1A394E5D0();
    sub_1A3A301F0();
    v44 = v38;
    v43 = 0;
    *v45 = v35;
    *&v45[16] = v36;
    *&v45[32] = v37;
    v46 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2C0);
    sub_1A394E654();
    sub_1A3A301F0();

    goto LABEL_11;
  }

  __break(1u);
}

void *sub_1A394D91C()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v9 = *(v0 + 8);
  v10[0] = v2;
  *(v10 + 9) = *(v0 + 33);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF258);
  MEMORY[0x1A58F7010](&v7);
  if (v7)
  {
    v4 = v8;
    sub_1A3903A58(v7);
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(v1 + 24);
  v9 = *(v1 + 8);
  v10[0] = v5;
  *(v10 + 9) = *(v1 + 33);
  MEMORY[0x1A58F7010](&v7, v3);
  result = v7;
  if (v7)
  {
    sub_1A3903A58(v7);
    UIAnimationDragCoefficient();
    return sub_1A3A314C0();
  }

  return result;
}

uint64_t sub_1A394D9F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    v21 = *(a3 + 96);
    v10 = *(a3 + 88);
    v20 = v10;
    v11 = v21;
    sub_1A3A2EA60();
    if ((v11 & 1) == 0)
    {
      sub_1A3A31C30();
      v12 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();
      sub_1A388F740(&v20, &qword_1EB0FC3C0);
      (*(v6 + 8))(v9, v5);
      v10 = *&v18[0];
    }

    swift_getKeyPath();
    *&v18[0] = v10;
    sub_1A394DF54(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v13 = *(v10 + 1168);

    if (v13 == 1)
    {
      v18[0] = *(a3 + 56);
      LOBYTE(v19) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
      sub_1A3A30FA0();
      v18[0] = *(a3 + 72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBF0);
      sub_1A3A30F90();
      v14 = swift_allocObject();
      v15 = *(a3 + 80);
      *(v14 + 80) = *(a3 + 64);
      *(v14 + 96) = v15;
      *(v14 + 112) = *(a3 + 96);
      v16 = *(a3 + 16);
      *(v14 + 16) = *a3;
      *(v14 + 32) = v16;
      v17 = *(a3 + 48);
      *(v14 + 48) = *(a3 + 32);
      *(v14 + 64) = v17;
      sub_1A394E1B0(a3, v18);
      sub_1A3904E64(sub_1A394E498, v14);
    }
  }

  return result;
}

uint64_t sub_1A394DCB8(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    LOBYTE(v3) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
    sub_1A3A30FA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBF0);
    sub_1A3A30F90();
    if (*(v3 + 16))
    {
      sub_1A3A2EA60();
      sub_1A3A316C0();
    }

    *(v3 + 16) = 0;
  }

  return result;
}

__n128 sub_1A394DDC8@<Q0>(char a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = a2[1];
  v13 = *a2;
  v5 = *(a2 + 4);
  v6 = *(a2 + 40);
  sub_1A3A30F80();
  sub_1A38E805C(0, qword_1ED996BC8);
  v7 = sub_1A3A31C70();
  type metadata accessor for Debouncer();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = v7;
  v14 = v8;
  sub_1A3A30F80();
  type metadata accessor for ChromeViewModel();
  sub_1A394DF54(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v9 = sub_1A3A2F650();
  *a3 = a1 & 1;
  *(a3 + 1) = v15;
  *(a3 + 4) = *(&v15 + 3);
  result = v12;
  *(a3 + 8) = v13;
  *(a3 + 24) = v12;
  *(a3 + 40) = v5;
  *(a3 + 48) = v6;
  *(a3 + 49) = v14;
  *(a3 + 52) = *(&v14 + 3);
  *(a3 + 56) = v15;
  *(a3 + 60) = *&v17[3];
  *(a3 + 57) = *v17;
  *(a3 + 64) = v16;
  *(a3 + 72) = v15;
  *(a3 + 80) = v16;
  *(a3 + 88) = v9;
  *(a3 + 96) = v10 & 1;
  return result;
}

uint64_t sub_1A394DF54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A394DF9C()
{
  result = qword_1EB0FF268;
  if (!qword_1EB0FF268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF260);
    sub_1A394E054();
    sub_1A38A08F8(&qword_1ED996700, &qword_1EB0FCA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF268);
  }

  return result;
}

unint64_t sub_1A394E054()
{
  result = qword_1EB0FF270;
  if (!qword_1EB0FF270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF278);
    sub_1A38A08F8(&qword_1ED997FA0, &qword_1EB0FF280);
    sub_1A38A08F8(&qword_1EB0FD098, &qword_1EB0FD0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF270);
  }

  return result;
}

uint64_t sub_1A394E138(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A394E1E8()
{
  result = qword_1EB0FF290;
  if (!qword_1EB0FF290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF238);
    sub_1A394E274();
    sub_1A38A8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF290);
  }

  return result;
}

unint64_t sub_1A394E274()
{
  result = qword_1EB0FF298;
  if (!qword_1EB0FF298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF230);
    sub_1A394DF9C();
    sub_1A394DF54(&qword_1ED9966D8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF298);
  }

  return result;
}

unint64_t sub_1A394E330()
{
  result = qword_1ED997FA8;
  if (!qword_1ED997FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF288);
    sub_1A394E3B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997FA8);
  }

  return result;
}

unint64_t sub_1A394E3B4()
{
  result = qword_1ED997FB0;
  if (!qword_1ED997FB0)
  {
    sub_1A38E805C(255, &qword_1ED997FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997FB0);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{

  v1 = *(v0 + 40);
  if (v1)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1A394E4EC()
{
  result = qword_1ED997FC0;
  if (!qword_1ED997FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF2A8);
    sub_1A38A08F8(&qword_1ED997FC8, &qword_1EB0FF2B8);
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997FC0);
  }

  return result;
}

unint64_t sub_1A394E5D0()
{
  result = qword_1ED997FD0;
  if (!qword_1ED997FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997FD0);
  }

  return result;
}

unint64_t sub_1A394E654()
{
  result = qword_1ED997FD8;
  if (!qword_1ED997FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF2C0);
    sub_1A394E4EC();
    sub_1A394E5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED997FD8);
  }

  return result;
}

unint64_t sub_1A394E6E0()
{
  result = qword_1EB0FF2C8;
  if (!qword_1EB0FF2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF2A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF288);
    sub_1A394E1E8();
    sub_1A394E330();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A38DF158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF2C8);
  }

  return result;
}

uint64_t sub_1A394E820()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  return *(v0 + 64);
}

uint64_t sub_1A394E8C0()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  return *(v0 + 65);
}

uint64_t sub_1A394E960()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  if ([objc_opt_self() solCamOnboardingEnabled] && ((sub_1A39598B0(1, 0xD000000000000013, 0x80000001A3AA2130, v1), v2 = sub_1A3A31DF0(), v4 = v3, , MEMORY[0x1A58F7770](v2, v4), , sub_1A395994C(1uLL, 0xD000000000000013, 0x80000001A3AA2130, v5), sub_1A38E849C(), sub_1A3A318E0(), , v6 = sub_1A39C3B44(), LOBYTE(v4) = v7, , (v4 & 1) != 0) || v6 <= 2))
  {
    sub_1A39598B0(1, 0xD000000000000021, 0x80000001A3AA2100, v8);
    v10 = sub_1A3A31DF0();
    v12 = v11;

    MEMORY[0x1A58F7770](v10, v12);

    sub_1A395994C(1uLL, 0xD000000000000021, 0x80000001A3AA2100, v13);
    sub_1A3A318E0();

    v14 = sub_1A39C3B44();
    LOBYTE(v10) = v15;

    v9 = v10 | (v14 < 15);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1A394EBC8()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  return *(v0 + 48);
}

double sub_1A394EC68()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  sub_1A39598B0(1, 0xD000000000000023, 0x80000001A3AA4EC0, v0);
  v1 = sub_1A3A31DF0();
  v3 = v2;

  MEMORY[0x1A58F7770](v1, v3);

  sub_1A395994C(1uLL, 0xD000000000000023, 0x80000001A3AA4EC0, v4);
  sub_1A38E849C();
  sub_1A3A318E0();

  v5 = COERCE_DOUBLE(sub_1A39C3A48());
  LOBYTE(v1) = v6;

  result = v5;
  if (v1)
  {
    return 34.0;
  }

  return result;
}

double sub_1A394EDF4()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  sub_1A39598B0(1, 0xD000000000000021, 0x80000001A3AA4EF0, v0);
  v1 = sub_1A3A31DF0();
  v3 = v2;

  MEMORY[0x1A58F7770](v1, v3);

  sub_1A395994C(1uLL, 0xD000000000000021, 0x80000001A3AA4EF0, v4);
  sub_1A38E849C();
  sub_1A3A318E0();

  v5 = COERCE_DOUBLE(sub_1A39C3A48());
  LOBYTE(v1) = v6;

  result = v5;
  if (v1)
  {
    return 28.0;
  }

  return result;
}

double sub_1A394EF7C()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  return *(v0 + 72);
}

double sub_1A394F01C()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  return *(v0 + 80);
}

uint64_t sub_1A394F0E0()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A394F184(uint64_t a1)
{
  if (a1 > 5)
  {
    if (a1 <= 8)
    {
      if (a1 == 6)
      {
        swift_getKeyPath();
        sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
        sub_1A3A2F080();

        v1 = 2;
      }

      else if (a1 == 7)
      {
        swift_getKeyPath();
        sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
        sub_1A3A2F080();

        v1 = 3;
      }

      else
      {
        swift_getKeyPath();
        sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
        sub_1A3A2F080();

        v1 = 4;
      }

      goto LABEL_23;
    }

    v2 = 0;
    switch(a1)
    {
      case 9:
        return v2 & 1;
      case 10:
        swift_getKeyPath();
        sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
        sub_1A3A2F080();

        v1 = 18;
        goto LABEL_23;
      case 11:
        return v2 & 1;
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        swift_getKeyPath();
        sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
        sub_1A3A2F080();

        v1 = 7;
      }

      else if (a1 == 4)
      {
        swift_getKeyPath();
        sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
        sub_1A3A2F080();

        v1 = 1;
      }

      else
      {
        swift_getKeyPath();
        sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
        sub_1A3A2F080();

        v1 = 8;
      }

      goto LABEL_23;
    }

    switch(a1)
    {
      case 0:
        swift_getKeyPath();
        sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
        sub_1A3A2F080();

        v1 = 15;
        goto LABEL_23;
      case 1:
        swift_getKeyPath();
        sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
        sub_1A3A2F080();

        v1 = 16;
LABEL_23:
        v2 = sub_1A394FC58(v1);
        return v2 & 1;
      case 2:
        swift_getKeyPath();
        sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
        sub_1A3A2F080();

        v1 = 0;
        goto LABEL_23;
    }
  }

  result = sub_1A3A321F0();
  __break(1u);
  return result;
}

uint64_t sub_1A394F77C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  v2 = sub_1A39C3974();
  if (!v3)
  {
LABEL_4:
    v4 = 1;
    goto LABEL_5;
  }

  v4 = sub_1A395A0F8(v2, v3);

  if (v4 >= 2u)
  {
    if (v4 != 6)
    {
      return v4;
    }

    goto LABEL_4;
  }

LABEL_5:
  if ((sub_1A394F184(a1) & 1) == 0)
  {
    swift_getKeyPath();
    sub_1A3A2F080();

    v5 = sub_1A39C3974();
    v4 = 5;
    if (v6)
    {
      v7 = sub_1A395A0F8(v5, v6);

      if (v7 == 6)
      {
        return 5;
      }

      else
      {
        return v7;
      }
    }
  }

  return v4;
}

uint64_t sub_1A394F8D4()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  v0 = sub_1A39C3974();
  if (!v1)
  {
    return 1;
  }

  v2 = sub_1A395A0F8(v0, v1);

  if (v2 == 6)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A394F9A4()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  v0 = sub_1A39C3974();
  v2 = 5;
  if (v1)
  {
    v3 = sub_1A395A0F8(v0, v1);

    if (v3 == 6)
    {
      return 5;
    }

    else
    {
      return v3;
    }
  }

  return v2;
}

uint64_t sub_1A394FA74(unint64_t a1)
{
  if (a1 <= 0xB)
  {
    if (((1 << a1) & 0x7ED) != 0)
    {
      swift_getKeyPath();
      sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
      sub_1A3A2F080();

      v1 = 13;
    }

    else
    {
      if (((1 << a1) & 0x12) == 0)
      {
        v2 = 0;
        return v2 & 1;
      }

      swift_getKeyPath();
      sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
      sub_1A3A2F080();

      v1 = 12;
    }

    v2 = sub_1A394FC58(v1);
    return v2 & 1;
  }

  result = sub_1A3A321F0();
  __break(1u);
  return result;
}

id sub_1A394FC58(unsigned __int8 a1)
{
  v2 = a1;
  v3 = objc_opt_self();
  v4 = sub_1A3953AD8(a1);
  v6 = v5;
  sub_1A39598B0(1, v4, v5, v7);

  v8 = sub_1A3A31DF0();
  v10 = v9;

  MEMORY[0x1A58F7770](v8, v10);

  v12 = sub_1A395994C(1uLL, v4, v6, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_1A38E849C();
  sub_1A3A318E0();

  v19 = sub_1A3A31810();

  v20 = [v3 BOOLInCameraDomainForKey:v19 defaultValue:{(v2 < 0x14) & (0xF11E2u >> a1), v12, v14, v16, v18, 0xD000000000000017, 0x80000001A3AA4BD0}];

  return v20;
}

void sub_1A394FDF0(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(0xCu) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD00000000000001ELL, 0x80000001A3AA13A0, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD00000000000001ELL, 0x80000001A3AA13A0, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

void sub_1A394FF84(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(0xDu) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000011, 0x80000001A3AA13C0, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000011, 0x80000001A3AA13C0, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

void sub_1A39500E8(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(0xEu) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0x4573776F64616873, 0xEE0064656C62616ELL, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0x4573776F64616873uLL, 0xEE0064656C62616ELL, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

void sub_1A3950254(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(0xBu) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000010, 0x80000001A3AA1380, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000010, 0x80000001A3AA1380, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

uint64_t sub_1A39503B8()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  v0 = [objc_opt_self() solCamGroupingType];
  return sub_1A3908FE8(v0);
}

uint64_t sub_1A395046C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  v2 = [objc_opt_self() solCamGroupingType];
  result = sub_1A3908FE8(v2);
  *a1 = result;
  return result;
}

uint64_t sub_1A395052C()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F070();
}

uint64_t sub_1A39505F8(unsigned __int8 a1)
{
  v2 = objc_opt_self();
  result = [v2 solCamGroupingType];
  if (result > 1)
  {
    if (result == 2)
    {
      v5 = a1;
      if (a1 <= 1u)
      {
        if (!a1)
        {
          return result;
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (result == 3)
    {
      v4 = a1;
      if (a1 <= 1u)
      {
        goto LABEL_16;
      }

      if (a1 == 2)
      {
        return result;
      }

LABEL_22:
      v6 = 0;
      return [v2 setSolCamGroupingType_];
    }

LABEL_25:
    sub_1A3A31F20();

    result = sub_1A3A32070();
    __break(1u);
    return result;
  }

  if (result)
  {
    if (result == 1)
    {
      v5 = a1;
      if (a1 <= 1u)
      {
        if (a1)
        {
          return result;
        }

        goto LABEL_17;
      }

LABEL_18:
      if (v5 == 2)
      {
LABEL_19:
        v6 = 3;
        return [v2 setSolCamGroupingType_];
      }

      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_16:
  if (v4)
  {
LABEL_20:
    v6 = 1;
    return [v2 setSolCamGroupingType_];
  }

LABEL_17:
  v6 = 2;
  return [v2 setSolCamGroupingType_];
}

void sub_1A3950764(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(5u) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000015, 0x80000001A3AA12B0, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000015, 0x80000001A3AA12B0, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

void sub_1A39508D8(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(6u) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD00000000000001CLL, 0x80000001A3AA12D0, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD00000000000001CLL, 0x80000001A3AA12D0, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

void sub_1A3950A6C(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(0xFu) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000012, 0x80000001A3AA13F0, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000012, 0x80000001A3AA13F0, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

void sub_1A3950C04(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(0x10u) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000016, 0x80000001A3AA1410, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000016, 0x80000001A3AA1410, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

void sub_1A3950D98(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(0) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000015, 0x80000001A3AA1200, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000015, 0x80000001A3AA1200, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

void sub_1A3950F2C(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(1u) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000018, 0x80000001A3AA1220, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000018, 0x80000001A3AA1220, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

void sub_1A39510C0(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(7u) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000015, 0x80000001A3AA12F0, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000015, 0x80000001A3AA12F0, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

void sub_1A3951254(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(8u) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000019, 0x80000001A3AA1310, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000019, 0x80000001A3AA1310, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

void sub_1A3951440(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(9u) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD00000000000001DLL, 0x80000001A3AA1330, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD00000000000001DLL, 0x80000001A3AA1330, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

void sub_1A39515E4(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(0xAu) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000022, 0x80000001A3AA1350, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000022, 0x80000001A3AA1350, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

void sub_1A3951778(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(2u) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000024, 0x80000001A3AA1240, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000024, 0x80000001A3AA1240, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

void sub_1A395190C(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(3u) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000016, 0x80000001A3AA1270, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000016, 0x80000001A3AA1270, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

uint64_t sub_1A3951A70@<X0>(char *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  result = sub_1A39C3974();
  if (v3)
  {
    v4 = sub_1A395A0F8(result, v3);

    if (v4 == 6)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 1;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1A3951B68@<X0>(char *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  result = sub_1A39C3974();
  v4 = 5;
  if (v3)
  {
    v5 = sub_1A395A0F8(result, v3);

    if (v5 == 6)
    {
      v4 = 5;
    }

    else
    {
      v4 = v5;
    }
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A3951C64()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F070();
}

void sub_1A3951D54(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(4u) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD00000000000001FLL, 0x80000001A3AA1290, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD00000000000001FLL, 0x80000001A3AA1290, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

id sub_1A3951EC8@<X0>(unsigned __int8 a1@<W4>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  result = sub_1A394FC58(a1);
  *a2 = result & 1;
  return result;
}

void sub_1A3951FA0(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(0x12u) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000016, 0x80000001A3AA1460, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000016, 0x80000001A3AA1460, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

id sub_1A395219C@<X0>(SEL *a1@<X4>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  result = [objc_opt_self() *a1];
  *a2 = result;
  return result;
}

uint64_t sub_1A395227C()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F070();
}

void sub_1A3952338(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(0x13u) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000020, 0x80000001A3AA1480, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000020, 0x80000001A3AA1480, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

void sub_1A39524AC(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(0x11u) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000021, 0x80000001A3AA1430, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000021, 0x80000001A3AA1430, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

double sub_1A3952610()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  sub_1A39598B0(1, 0xD000000000000024, 0x80000001A3AA4F20, v0);
  v1 = sub_1A3A31DF0();
  v3 = v2;

  MEMORY[0x1A58F7770](v1, v3);

  sub_1A395994C(1uLL, 0xD000000000000024, 0x80000001A3AA4F20, v4);
  sub_1A38E849C();
  sub_1A3A318E0();

  v5 = COERCE_DOUBLE(sub_1A39C3A48());
  LOBYTE(v1) = v6;

  result = v5;
  if (v1)
  {
    return 1.5;
  }

  return result;
}

void sub_1A3952798(double a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1A39598B0(1, 0xD000000000000024, 0x80000001A3AA4F20, a5);
  v6 = sub_1A3A31DF0();
  v8 = v7;

  MEMORY[0x1A58F7770](v6, v8);

  sub_1A395994C(1uLL, 0xD000000000000024, 0x80000001A3AA4F20, v9);
  sub_1A38E849C();
  sub_1A3A318E0();

  v10 = COERCE_DOUBLE(sub_1A39C3A48());
  v12 = v11;

  if (v12)
  {
    if (a1 == 1.5)
    {
      return;
    }
  }

  else if (v10 == a1)
  {
    return;
  }

  sub_1A39598B0(1, 0xD000000000000024, 0x80000001A3AA4F20, v13);
  v14 = sub_1A3A31DF0();
  v16 = v15;

  MEMORY[0x1A58F7770](v14, v16);

  sub_1A395994C(1uLL, 0xD000000000000024, 0x80000001A3AA4F20, v17);
  sub_1A3A318E0();

  v18 = sub_1A3A31810();

  v19 = sub_1A3A2F0D0();
  if (qword_1ED9964A8 != -1)
  {
    swift_once();
  }

  CFPreferencesSetAppValue(v18, v19, qword_1ED998F10);
}

double sub_1A39529E4()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  sub_1A39598B0(1, 0xD000000000000017, 0x80000001A3AA4F70, v0);
  v1 = sub_1A3A31DF0();
  v3 = v2;

  MEMORY[0x1A58F7770](v1, v3);

  sub_1A395994C(1uLL, 0xD000000000000017, 0x80000001A3AA4F70, v4);
  sub_1A38E849C();
  sub_1A3A318E0();

  v5 = COERCE_DOUBLE(sub_1A39C3A48());
  LOBYTE(v1) = v6;

  result = v5;
  if (v1)
  {
    return 0.55;
  }

  return result;
}

void sub_1A3952B6C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1A39598B0(1, 0xD000000000000017, 0x80000001A3AA4F70, a5);
  v6 = sub_1A3A31DF0();
  v8 = v7;

  MEMORY[0x1A58F7770](v6, v8);

  sub_1A395994C(1uLL, 0xD000000000000017, 0x80000001A3AA4F70, v9);
  sub_1A38E849C();
  sub_1A3A318E0();

  v10 = COERCE_DOUBLE(sub_1A39C3A48());
  v12 = v11;

  if (v12)
  {
    if (a1 == 0.55)
    {
      return;
    }
  }

  else if (v10 == a1)
  {
    return;
  }

  sub_1A39598B0(1, 0xD000000000000017, 0x80000001A3AA4F70, v13);
  v14 = sub_1A3A31DF0();
  v16 = v15;

  MEMORY[0x1A58F7770](v14, v16);

  sub_1A395994C(1uLL, 0xD000000000000017, 0x80000001A3AA4F70, v17);
  sub_1A3A318E0();

  v18 = sub_1A3A31810();

  v19 = sub_1A3A2F0D0();
  if (qword_1ED9964A8 != -1)
  {
    swift_once();
  }

  CFPreferencesSetAppValue(v18, v19, qword_1ED998F10);
}

double sub_1A3952DB8()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  sub_1A39598B0(1, 0xD000000000000014, 0x80000001A3AA4F50, v0);
  v1 = sub_1A3A31DF0();
  v3 = v2;

  MEMORY[0x1A58F7770](v1, v3);

  sub_1A395994C(1uLL, 0xD000000000000014, 0x80000001A3AA4F50, v4);
  sub_1A38E849C();
  sub_1A3A318E0();

  v5 = COERCE_DOUBLE(sub_1A39C3A48());
  LOBYTE(v1) = v6;

  result = v5;
  if (v1)
  {
    return 4.0;
  }

  return result;
}

void sub_1A3952F40(double a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1A39598B0(1, 0xD000000000000014, 0x80000001A3AA4F50, a5);
  v6 = sub_1A3A31DF0();
  v8 = v7;

  MEMORY[0x1A58F7770](v6, v8);

  sub_1A395994C(1uLL, 0xD000000000000014, 0x80000001A3AA4F50, v9);
  sub_1A38E849C();
  sub_1A3A318E0();

  v10 = COERCE_DOUBLE(sub_1A39C3A48());
  v12 = v11;

  if (v12)
  {
    if (a1 == 4.0)
    {
      return;
    }
  }

  else if (v10 == a1)
  {
    return;
  }

  sub_1A39598B0(1, 0xD000000000000014, 0x80000001A3AA4F50, v13);
  v14 = sub_1A3A31DF0();
  v16 = v15;

  MEMORY[0x1A58F7770](v14, v16);

  sub_1A395994C(1uLL, 0xD000000000000014, 0x80000001A3AA4F50, v17);
  sub_1A3A318E0();

  v18 = sub_1A3A31810();

  v19 = sub_1A3A2F0D0();
  if (qword_1ED9964A8 != -1)
  {
    swift_once();
  }

  CFPreferencesSetAppValue(v18, v19, qword_1ED998F10);
}

id sub_1A39531E0(uint64_t a1, SEL *a2)
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  return [objc_opt_self() *a2];
}

id sub_1A39532B0(char a1, SEL *a2, SEL *a3)
{
  v5 = a1 & 1;
  v6 = objc_opt_self();
  result = [v6 *a2];
  if (result != v5)
  {
    [v6 *a3];
    exit(0);
  }

  return result;
}

uint64_t sub_1A3953354()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F070();
}

void sub_1A3953428(double a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1A39598B0(1, 0xD000000000000023, 0x80000001A3AA4EC0, a5);
  v6 = sub_1A3A31DF0();
  v8 = v7;

  MEMORY[0x1A58F7770](v6, v8);

  sub_1A395994C(1uLL, 0xD000000000000023, 0x80000001A3AA4EC0, v9);
  sub_1A38E849C();
  sub_1A3A318E0();

  v10 = COERCE_DOUBLE(sub_1A39C3A48());
  v12 = v11;

  if (v12)
  {
    if (a1 == 34.0)
    {
      return;
    }
  }

  else if (v10 == a1)
  {
    return;
  }

  sub_1A39598B0(1, 0xD000000000000023, 0x80000001A3AA4EC0, v13);
  v14 = sub_1A3A31DF0();
  v16 = v15;

  MEMORY[0x1A58F7770](v14, v16);

  sub_1A395994C(1uLL, 0xD000000000000023, 0x80000001A3AA4EC0, v17);
  sub_1A3A318E0();

  v18 = sub_1A3A31810();

  v19 = sub_1A3A2F0D0();
  if (qword_1ED9964A8 != -1)
  {
    swift_once();
  }

  CFPreferencesSetAppValue(v18, v19, qword_1ED998F10);
}

void sub_1A3953678(double a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1A39598B0(1, 0xD000000000000021, 0x80000001A3AA4EF0, a5);
  v6 = sub_1A3A31DF0();
  v8 = v7;

  MEMORY[0x1A58F7770](v6, v8);

  sub_1A395994C(1uLL, 0xD000000000000021, 0x80000001A3AA4EF0, v9);
  sub_1A38E849C();
  sub_1A3A318E0();

  v10 = COERCE_DOUBLE(sub_1A39C3A48());
  v12 = v11;

  if (v12)
  {
    if (a1 == 28.0)
    {
      return;
    }
  }

  else if (v10 == a1)
  {
    return;
  }

  sub_1A39598B0(1, 0xD000000000000021, 0x80000001A3AA4EF0, v13);
  v14 = sub_1A3A31DF0();
  v16 = v15;

  MEMORY[0x1A58F7770](v14, v16);

  sub_1A395994C(1uLL, 0xD000000000000021, 0x80000001A3AA4EF0, v17);
  sub_1A3A318E0();

  v18 = sub_1A3A31810();

  v19 = sub_1A3A2F0D0();
  if (qword_1ED9964A8 != -1)
  {
    swift_once();
  }

  CFPreferencesSetAppValue(v18, v19, qword_1ED998F10);
}

unint64_t sub_1A39538D4(uint64_t a1, unsigned __int8 a2)
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  return sub_1A394FC58(a2) & 1;
}

void sub_1A3953974(char a1)
{
  v1 = a1 & 1;
  if ((sub_1A394FC58(0x14u) & 1) != v1)
  {
    v2 = objc_opt_self();
    sub_1A39598B0(1, 0xD000000000000021, 0x80000001A3AA14B0, v3);
    v4 = sub_1A3A31DF0();
    v6 = v5;

    MEMORY[0x1A58F7770](v4, v6);

    v12 = sub_1A395994C(1uLL, 0xD000000000000021, 0x80000001A3AA14B0, v7);
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_1A38E849C();
    sub_1A3A318E0();

    v11 = sub_1A3A31810();

    [v2 setBool:v1 inCameraDomainForKey:{v11, v12, v13, v14, v15, 0xD000000000000017, 0x80000001A3AA4BD0}];
  }
}

unint64_t sub_1A3953AD8(char a1)
{
  result = 0x4573776F64616873;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
    case 16:
    case 18:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 10:
      result = 0xD000000000000022;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      return result;
    case 15:
      result = 0xD000000000000012;
      break;
    case 17:
    case 20:
      result = 0xD000000000000021;
      break;
    case 19:
      result = 0xD000000000000020;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1A3953D4C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1A3953AD8(*a1);
  v5 = v4;
  if (v3 == sub_1A3953AD8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A3A321C0();
  }

  return v8 & 1;
}

uint64_t sub_1A3953DD4()
{
  v1 = *v0;
  sub_1A3A322C0();
  sub_1A3953AD8(v1);
  sub_1A3A318B0();

  return sub_1A3A32300();
}

uint64_t sub_1A3953E38()
{
  sub_1A3953AD8(*v0);
  sub_1A3A318B0();
}

uint64_t sub_1A3953E8C()
{
  v1 = *v0;
  sub_1A3A322C0();
  sub_1A3953AD8(v1);
  sub_1A3A318B0();

  return sub_1A3A32300();
}

uint64_t sub_1A3953EEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A395B330();
  *a1 = result;
  return result;
}

unint64_t sub_1A3953F1C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A3953AD8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1A3953F58(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000021;
  }

  if (a1)
  {
    v5 = "onOnboardingCount";
  }

  else
  {
    v5 = "CAMUserPreference";
  }

  sub_1A39598B0(1, v4, v5 | 0x8000000000000000, a4);

  v6 = sub_1A3A31DF0();
  v8 = v7;

  MEMORY[0x1A58F7770](v6, v8);

  sub_1A395994C(1uLL, v4, v5 | 0x8000000000000000, v9);

  sub_1A38E849C();
  sub_1A3A318E0();

  return 0xD000000000000011;
}

void sub_1A39540A0(id a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2;
  sub_1A3953F58(a2 & 1, a2, a3, a4);
  v6 = sub_1A39C3B44();
  v8 = v7;

  if (v8)
  {
    if (!a1)
    {
      return;
    }
  }

  else if (v6 == a1)
  {
    return;
  }

  sub_1A3953F58(v4 & 1, v9, v10, v11);
  v12 = sub_1A3A31810();

  v13 = sub_1A3A31B40();
  v14 = v13;
  if (qword_1ED9964A8 != -1)
  {
    swift_once();
    v13 = v14;
  }

  CFPreferencesSetAppValue(v12, v13, qword_1ED998F10);
}

uint64_t sub_1A39541BC()
{
  v1 = 0x737961776C41;
  v2 = 0x20676E6F4C206E4FLL;
  if (*v0 != 2)
  {
    v2 = 0x64656C6261736944;
  }

  if (*v0)
  {
    v1 = 0x6863756F54206E4FLL;
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

uint64_t sub_1A395423C(uint64_t result)
{
  if (*(v1 + 48) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3954344(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3954454(uint64_t result)
{
  if (*(v1 + 65) == (result & 1))
  {
    *(v1 + 65) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A3954564(double a1)
{
  if (*(v1 + 72) == a1)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
    sub_1A3A2F070();
  }
}

void sub_1A395467C(double a1)
{
  if (*(v1 + 80) == a1)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
    sub_1A3A2F070();
  }
}

char *sub_1A3954794()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A3A77500;
  *(inited + 32) = xmmword_1A3A77510;
  *(inited + 48) = xmmword_1A3A77520;
  *(inited + 64) = 0;
  v1 = sub_1A3955E60(1, 6, 1, inited);
  *(v1 + 2) = 6;
  *(v1 + 9) = 9;
  if (*(v1 + 3) <= 0xDuLL)
  {
    v1 = sub_1A3955E60(1, 7, 1, v1);
  }

  sub_1A39597D0(0, 0, 1, &unk_1F1653D10);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1A3955E60((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  *&v1[8 * v3 + 32] = 4;
  return v1;
}

uint64_t sub_1A39548E4()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  return sub_1A3A2EA50();
}

uint64_t sub_1A3954988(uint64_t a1)
{
  v3 = sub_1A3A2EA50();
  v4 = sub_1A39FCD24(v3, a1);

  if (v4)
  {
    *(v1 + 120) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3954ADC()
{
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  return sub_1A3A2EA50();
}

uint64_t sub_1A3954B80(uint64_t a1)
{
  v3 = sub_1A3A2EA50();
  v4 = sub_1A39FCD24(v3, a1);

  if (v4)
  {
    *(v1 + 128) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3955B1C(&qword_1ED996658, type metadata accessor for CameraUISettings);
    sub_1A3A2F070();
  }
}

char *sub_1A3954CD4()
{
  result = sub_1A3954CF4();
  qword_1ED99D888 = result;
  return result;
}

char *sub_1A3954CF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A3A77530;
  *(inited + 32) = xmmword_1A3A77540;
  *(inited + 48) = xmmword_1A3A77550;
  *(inited + 64) = xmmword_1A3A77560;
  *(inited + 80) = xmmword_1A3A77570;
  *(inited + 96) = xmmword_1A3A77580;
  *(inited + 112) = xmmword_1A3A77590;
  *(inited + 128) = xmmword_1A3A775A0;
  *(inited + 144) = 13;
  result = sub_1A3955E60(1, 16, 1, inited);
  *(result + 2) = 16;
  *(result + 19) = 9;
  return result;
}

uint64_t sub_1A3954DDC()
{
  if (qword_1ED996478 != -1)
  {
    swift_once();
  }

  v0 = sub_1A3A2EA50();
  sub_1A3955B64(v0);
  sub_1A3955B64(&unk_1F1653D70);
  sub_1A3954EF4(&unk_1F1653D40);

  v1 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v2 = sub_1A3A31990();

  v3 = [v1 initWithArray_];

  v4 = sub_1A3959218(v3);
  v5 = sub_1A3954FF0(v4);

  return v5;
}

uint64_t sub_1A3954EF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1A39569A0(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1A38A8F64(v5);
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1A39569A0((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_1A3924CD4(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1A3954FF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1A3956980(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1A395ADE0(v4, v9);
      swift_dynamicCast();
      v5 = v9[4];
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1A3956980((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      *(v2 + 8 * v7 + 32) = v5;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1A39550EC(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3955B1C(&qword_1ED996650, type metadata accessor for SettingsManager);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3955220()
{

  v1 = OBJC_IVAR____TtC8CameraUI16CameraUISettings___observationRegistrar;
  v2 = sub_1A3A2F0C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A39552D0()
{
  sub_1A3955220();

  return swift_deallocClassInstance();
}

uint64_t sub_1A3955350()
{
  result = sub_1A3A2F0C0();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1A395542C()
{
  *(v0 + 16) = 0xD000000000000026;
  *(v0 + 24) = 0x80000001A3AA4E60;
  *(v0 + 32) = 0xD000000000000027;
  *(v0 + 40) = 0x80000001A3AA4E90;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0x3FC3333333333333;
  *(v0 + 64) = 256;
  *(v0 + 72) = xmmword_1A3A775B0;
  *(v0 + 88) = &unk_1F1653DA8;
  *(v0 + 96) = &unk_1F1653DD8;
  *(v0 + 104) = MEMORY[0x1E69E7CC0];
  *(v0 + 112) = sub_1A3954794();
  *(v0 + 120) = &unk_1F1653E18;
  *(v0 + 128) = &unk_1F1653E48;
  *(v0 + 136) = sub_1A3954DDC();
  *(v0 + 144) = &unk_1F1653E90;
  sub_1A3A2F0B0();
  return v0;
}

uint64_t sub_1A39554FC()
{
  type metadata accessor for SettingsManager(0);
  v0 = swift_allocObject();
  type metadata accessor for CameraUISettings(0);
  v1 = swift_allocObject();
  sub_1A395542C();
  *(v0 + 16) = v1;
  sub_1A3A2F0B0();
  swift_getKeyPath();
  sub_1A3955B1C(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  v2 = *(v0 + 16);
  v3 = sub_1A3A2EA60();
  sub_1A39599FC(v3);
  sub_1A395A71C(v2);

  off_1ED997FE0 = v0;
  return result;
}

uint64_t sub_1A39555FC()
{

  v1 = OBJC_IVAR____TtC8CameraUIP33_AD1680641DDDA8199D384A5228EC6D4815SettingsManager___observationRegistrar;
  v2 = sub_1A3A2F0C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A39556C8()
{
  result = sub_1A3A2F0C0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A3955768(char a1)
{
  result = 0x656C622D65676465;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
    case 9:
      result = 0xD000000000000021;
      break;
    case 3:
    case 18:
      result = 0xD000000000000011;
      break;
    case 4:
      v3 = 11;
      goto LABEL_7;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000027;
      break;
    case 11:
      return result;
    case 12:
      v3 = 9;
LABEL_7:
      result = v3 | 0xD000000000000010;
      break;
    case 13:
      result = 0x6867696C68676968;
      break;
    case 14:
      result = 0x73776F64616873;
      break;
    case 15:
      result = 0x2D7261622D706F74;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD00000000000001FLL;
      break;
    case 19:
      result = 0xD000000000000026;
      break;
    case 20:
      result = 0xD000000000000025;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_1A3955A7C()
{
  result = qword_1ED9981E0;
  if (!qword_1ED9981E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9981E0);
  }

  return result;
}

uint64_t sub_1A3955AE0()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
  sub_1A3A2EA60();
}

uint64_t sub_1A3955B1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3955B64(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A3955E60(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1A3955C58(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A3956070(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8E8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A3955D5C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_1A3A31F50();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF3A8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1A3955E60(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A3955F6C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1A3956070(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A39561CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1A3956348(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_1A3956444(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A3956550(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A39566A0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1A395687C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF3B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1A3956980(char *a1, int64_t a2, char a3)
{
  result = sub_1A3956BD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A39569A0(char *a1, int64_t a2, char a3)
{
  result = sub_1A3956CDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A39569C0(char *a1, int64_t a2, char a3)
{
  result = sub_1A3956DEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A39569E0(void *a1, int64_t a2, char a3)
{
  result = sub_1A3956EF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A3956A00(char *a1, int64_t a2, char a3)
{
  result = sub_1A395702C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A3956A20(char *a1, int64_t a2, char a3)
{
  result = sub_1A3957130(a1, a2, a3, *v3, &qword_1EB0FF318);
  *v3 = result;
  return result;
}

char *sub_1A3956A50(char *a1, int64_t a2, char a3)
{
  result = sub_1A395722C(a1, a2, a3, *v3, &qword_1EB0FF330);
  *v3 = result;
  return result;
}

char *sub_1A3956A80(char *a1, int64_t a2, char a3)
{
  result = sub_1A395722C(a1, a2, a3, *v3, &qword_1EB0FF328);
  *v3 = result;
  return result;
}

char *sub_1A3956AB0(char *a1, int64_t a2, char a3)
{
  result = sub_1A395722C(a1, a2, a3, *v3, &qword_1EB0FF320);
  *v3 = result;
  return result;
}

char *sub_1A3956AE0(char *a1, int64_t a2, char a3)
{
  result = sub_1A395722C(a1, a2, a3, *v3, &qword_1EB0FF378);
  *v3 = result;
  return result;
}

char *sub_1A3956B10(char *a1, int64_t a2, char a3)
{
  result = sub_1A395722C(a1, a2, a3, *v3, &qword_1EB0FF370);
  *v3 = result;
  return result;
}

char *sub_1A3956B40(char *a1, int64_t a2, char a3)
{
  result = sub_1A3957318(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A3956B60(char *a1, int64_t a2, char a3)
{
  result = sub_1A395740C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A3956B80(char *a1, int64_t a2, char a3)
{
  result = sub_1A3957130(a1, a2, a3, *v3, &qword_1EB0FF300);
  *v3 = result;
  return result;
}

size_t sub_1A3956BB0(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3957534(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A3956BD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF2F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A3956CDC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0FE520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A3956DEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A3956EF8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A395702C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1A3957130(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_1A395722C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_1A3957318(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF368);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1A395740C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A3957534(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA40);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A3957724(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A395959C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1A3957790(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1A3957790(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1A3A32190();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A3A319E0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A3957E00(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A3957888(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A3957888(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (1)
    {
      v17 = a3;
      v7 = *(v4 + a3);
      v15 = v6;
      v16 = v5;
      while (2)
      {
        v8 = 0xEE0064656C62616ELL;
        v9 = 0x4573776F64616873;
        switch(v7)
        {
          case 1:
            v9 = 0xD000000000000018;
            v8 = 0x80000001A3AA1220;
            break;
          case 2:
            v9 = 0xD000000000000024;
            v8 = 0x80000001A3AA1240;
            break;
          case 3:
            v9 = 0xD000000000000016;
            v8 = 0x80000001A3AA1270;
            break;
          case 4:
            v9 = 0xD00000000000001FLL;
            v8 = 0x80000001A3AA1290;
            break;
          case 5:
            v9 = 0xD000000000000015;
            v8 = 0x80000001A3AA12B0;
            break;
          case 6:
            v9 = 0xD00000000000001CLL;
            v8 = 0x80000001A3AA12D0;
            break;
          case 7:
            v9 = 0xD000000000000015;
            v8 = 0x80000001A3AA12F0;
            break;
          case 8:
            v9 = 0xD000000000000019;
            v8 = 0x80000001A3AA1310;
            break;
          case 9:
            v9 = 0xD00000000000001DLL;
            v8 = 0x80000001A3AA1330;
            break;
          case 10:
            v9 = 0xD000000000000022;
            v8 = 0x80000001A3AA1350;
            break;
          case 11:
            v9 = 0xD000000000000010;
            v8 = 0x80000001A3AA1380;
            break;
          case 12:
            v9 = 0xD00000000000001ELL;
            v8 = 0x80000001A3AA13A0;
            break;
          case 13:
            v9 = 0xD000000000000011;
            v8 = 0x80000001A3AA13C0;
            break;
          case 14:
            break;
          case 15:
            v9 = 0xD000000000000012;
            v8 = 0x80000001A3AA13F0;
            break;
          case 16:
            v9 = 0xD000000000000016;
            v8 = 0x80000001A3AA1410;
            break;
          case 17:
            v9 = 0xD000000000000021;
            v8 = 0x80000001A3AA1430;
            break;
          case 18:
            v9 = 0xD000000000000016;
            v8 = 0x80000001A3AA1460;
            break;
          case 19:
            v9 = 0xD000000000000020;
            v8 = 0x80000001A3AA1480;
            break;
          case 20:
            v9 = 0xD000000000000021;
            v8 = 0x80000001A3AA14B0;
            break;
          default:
            v9 = 0xD000000000000015;
            v8 = 0x80000001A3AA1200;
            break;
        }

        v10 = 0x4573776F64616873;
        v11 = 0xEE0064656C62616ELL;
        switch(*(v5 - 1))
        {
          case 1:
            v11 = 0x80000001A3AA1220;
            if (v9 == 0xD000000000000018)
            {
              goto LABEL_67;
            }

            goto LABEL_68;
          case 2:
            v11 = 0x80000001A3AA1240;
            if (v9 != 0xD000000000000024)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 3:
            v11 = 0x80000001A3AA1270;
            if (v9 != 0xD000000000000016)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 4:
            v11 = 0x80000001A3AA1290;
            if (v9 != 0xD00000000000001FLL)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 5:
            v11 = 0x80000001A3AA12B0;
            if (v9 != 0xD000000000000015)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 6:
            v11 = 0x80000001A3AA12D0;
            if (v9 != 0xD00000000000001CLL)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 7:
            v10 = 0xD000000000000015;
            v11 = 0x80000001A3AA12F0;
            goto LABEL_66;
          case 8:
            v11 = 0x80000001A3AA1310;
            if (v9 != 0xD000000000000019)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 9:
            v11 = 0x80000001A3AA1330;
            if (v9 != 0xD00000000000001DLL)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 0xA:
            v11 = 0x80000001A3AA1350;
            if (v9 != 0xD000000000000022)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 0xB:
            v11 = 0x80000001A3AA1380;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 0xC:
            v11 = 0x80000001A3AA13A0;
            if (v9 != 0xD00000000000001ELL)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 0xD:
            v11 = 0x80000001A3AA13C0;
            if (v9 != 0xD000000000000011)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 0xE:
LABEL_66:
            if (v9 == v10)
            {
              goto LABEL_67;
            }

            goto LABEL_68;
          case 0xF:
            v11 = 0x80000001A3AA13F0;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 0x10:
            v11 = 0x80000001A3AA1410;
            if (v9 != 0xD000000000000016)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 0x11:
            v11 = 0x80000001A3AA1430;
            if (v9 != 0xD000000000000021)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 0x12:
            v11 = 0x80000001A3AA1460;
            if (v9 != 0xD000000000000016)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 0x13:
            v11 = 0x80000001A3AA1480;
            if (v9 != 0xD000000000000020)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          case 0x14:
            v11 = 0x80000001A3AA14B0;
            if (v9 != 0xD000000000000021)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          default:
            v11 = 0x80000001A3AA1200;
            if (v9 != 0xD000000000000015)
            {
              goto LABEL_68;
            }

LABEL_67:
            if (v8 != v11)
            {
LABEL_68:
              v12 = sub_1A3A321C0();

              if ((v12 & 1) == 0)
              {
                goto LABEL_5;
              }

              if (!v4)
              {
                __break(1u);
                return result;
              }

              v7 = *v5;
              *v5 = *(v5 - 1);
              *--v5 = v7;
              if (__CFADD__(v6++, 1))
              {
                goto LABEL_5;
              }

              continue;
            }

LABEL_5:
            a3 = v17 + 1;
            v5 = v16 + 1;
            v6 = v15 - 1;
            if (v17 + 1 == a2)
            {
              return result;
            }

            break;
        }

        break;
      }
    }
  }

  return result;
}

uint64_t sub_1A3957E00(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v95 = result;
  v7 = *(a3 + 1);
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_228:
    v7 = *v95;
    if (!*v95)
    {
      goto LABEL_267;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_230:
      v87 = v5;
      v88 = *(v9 + 2);
      if (v88 >= 2)
      {
        while (*v6)
        {
          v5 = v88 - 1;
          v89 = *&v9[16 * v88];
          v90 = *&v9[16 * v88 + 24];
          sub_1A3958E88((*v6 + v89), (*v6 + *&v9[16 * v88 + 16]), *v6 + v90, v7);
          if (v87)
          {
          }

          if (v90 < v89)
          {
            goto LABEL_254;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1A3959204(v9);
          }

          if (v88 - 2 >= *(v9 + 2))
          {
            goto LABEL_255;
          }

          v91 = &v9[16 * v88];
          *v91 = v89;
          *(v91 + 1) = v90;
          result = sub_1A3959178(v88 - 1);
          v88 = *(v9 + 2);
          if (v88 <= 1)
          {
          }
        }

        goto LABEL_265;
      }
    }

LABEL_261:
    result = sub_1A3959204(v9);
    v9 = result;
    goto LABEL_230;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v10 = v8;
  v11 = v8 + 1;
  if ((v8 + 1) >= v7)
  {
    goto LABEL_92;
  }

  v97 = *v6;
  v12 = *(v8 + *v6);
  v13 = sub_1A3953AD8(v11[*v6]);
  v15 = v14;
  if (v13 == sub_1A3953AD8(v12) && v15 == v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_1A3A321C0();
  }

  v11 = (v10 + 2);
  v19 = 0xEE0064656C62616ELL;
  if (v10 + 2 >= v7)
  {
    goto LABEL_82;
  }

  while (2)
  {
    v22 = 0xEE0064656C62616ELL;
    v23 = 0x4573776F64616873;
    switch(v11[v97])
    {
      case 1:
        v23 = 0xD000000000000018;
        v22 = 0x80000001A3AA1220;
        break;
      case 2:
        v23 = 0xD000000000000024;
        v22 = 0x80000001A3AA1240;
        break;
      case 3:
        v23 = 0xD000000000000016;
        v22 = 0x80000001A3AA1270;
        break;
      case 4:
        v23 = 0xD00000000000001FLL;
        v22 = 0x80000001A3AA1290;
        break;
      case 5:
        v23 = 0xD000000000000015;
        v22 = 0x80000001A3AA12B0;
        break;
      case 6:
        v23 = 0xD00000000000001CLL;
        v22 = 0x80000001A3AA12D0;
        break;
      case 7:
        v23 = 0xD000000000000015;
        v22 = 0x80000001A3AA12F0;
        break;
      case 8:
        v23 = 0xD000000000000019;
        v22 = 0x80000001A3AA1310;
        break;
      case 9:
        v23 = 0xD00000000000001DLL;
        v22 = 0x80000001A3AA1330;
        break;
      case 0xA:
        v23 = 0xD000000000000022;
        v22 = 0x80000001A3AA1350;
        break;
      case 0xB:
        v23 = 0xD000000000000010;
        v22 = 0x80000001A3AA1380;
        break;
      case 0xC:
        v23 = 0xD00000000000001ELL;
        v22 = 0x80000001A3AA13A0;
        break;
      case 0xD:
        v23 = 0xD000000000000011;
        v22 = 0x80000001A3AA13C0;
        break;
      case 0xE:
        break;
      case 0xF:
        v23 = 0xD000000000000012;
        v22 = 0x80000001A3AA13F0;
        break;
      case 0x10:
        v23 = 0xD000000000000016;
        v22 = 0x80000001A3AA1410;
        break;
      case 0x11:
        v23 = 0xD000000000000021;
        v22 = 0x80000001A3AA1430;
        break;
      case 0x12:
        v23 = 0xD000000000000016;
        v22 = 0x80000001A3AA1460;
        break;
      case 0x13:
        v23 = 0xD000000000000020;
        v22 = 0x80000001A3AA1480;
        break;
      case 0x14:
        v23 = 0xD000000000000021;
        v22 = 0x80000001A3AA14B0;
        break;
      default:
        v23 = 0xD000000000000015;
        v22 = 0x80000001A3AA1200;
        break;
    }

    v24 = 0x4573776F64616873;
    switch(v11[v97 - 1])
    {
      case 1:
        v19 = 0x80000001A3AA1220;
        if (v23 != 0xD000000000000018)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 2:
        v19 = 0x80000001A3AA1240;
        if (v23 != 0xD000000000000024)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 3:
        v19 = 0x80000001A3AA1270;
        if (v23 != 0xD000000000000016)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 4:
        v19 = 0x80000001A3AA1290;
        if (v23 != 0xD00000000000001FLL)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 5:
        v19 = 0x80000001A3AA12B0;
        if (v23 != 0xD000000000000015)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 6:
        v19 = 0x80000001A3AA12D0;
        if (v23 != 0xD00000000000001CLL)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 7:
        v24 = 0xD000000000000015;
        v19 = 0x80000001A3AA12F0;
        goto LABEL_75;
      case 8:
        v19 = 0x80000001A3AA1310;
        if (v23 != 0xD000000000000019)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 9:
        v19 = 0x80000001A3AA1330;
        if (v23 != 0xD00000000000001DLL)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 0xA:
        v19 = 0x80000001A3AA1350;
        if (v23 != 0xD000000000000022)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 0xB:
        v19 = 0x80000001A3AA1380;
        if (v23 != 0xD000000000000010)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 0xC:
        v19 = 0x80000001A3AA13A0;
        if (v23 != 0xD00000000000001ELL)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 0xD:
        v19 = 0x80000001A3AA13C0;
        if (v23 != 0xD000000000000011)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 0xE:
LABEL_75:
        if (v23 == v24)
        {
          goto LABEL_76;
        }

        goto LABEL_14;
      case 0xF:
        v19 = 0x80000001A3AA13F0;
        if (v23 != 0xD000000000000012)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 0x10:
        v19 = 0x80000001A3AA1410;
        if (v23 != 0xD000000000000016)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 0x11:
        v19 = 0x80000001A3AA1430;
        if (v23 != 0xD000000000000021)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 0x12:
        v19 = 0x80000001A3AA1460;
        if (v23 != 0xD000000000000016)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 0x13:
        v19 = 0x80000001A3AA1480;
        if (v23 != 0xD000000000000020)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      case 0x14:
        v19 = 0x80000001A3AA14B0;
        if (v23 != 0xD000000000000021)
        {
          goto LABEL_14;
        }

        goto LABEL_76;
      default:
        v19 = 0x80000001A3AA1200;
        if (v23 != 0xD000000000000015)
        {
          goto LABEL_14;
        }

LABEL_76:
        if (v22 == v19)
        {

          if (v18)
          {
            if (v11 < v10)
            {
              goto LABEL_258;
            }

            goto LABEL_84;
          }

          goto LABEL_15;
        }

LABEL_14:
        v20 = sub_1A3A321C0();

        v21 = v18 ^ v20;
        v6 = a3;
        if ((v21 & 1) == 0)
        {
LABEL_15:
          ++v11;
          v19 = 0xEE0064656C62616ELL;
          if (v7 == v11)
          {
            v11 = v7;
LABEL_82:
            if ((v18 & 1) == 0)
            {
              goto LABEL_92;
            }

            goto LABEL_83;
          }

          continue;
        }

        if ((v18 & 1) == 0)
        {
          goto LABEL_92;
        }

LABEL_83:
        if (v11 < v10)
        {
          goto LABEL_258;
        }

LABEL_84:
        if (v10 < v11)
        {
          v25 = v11 - 1;
          v26 = v10;
          do
          {
            if (v26 != v25)
            {
              v28 = *v6;
              if (!*v6)
              {
                goto LABEL_264;
              }

              v29 = v26[v28];
              v26[v28] = v25[v28];
              v25[v28] = v29;
            }
          }

          while (++v26 < v25--);
        }

LABEL_92:
        v30 = *(v6 + 1);
        if (v11 >= v30)
        {
          goto LABEL_174;
        }

        if (__OFSUB__(v11, v10))
        {
          goto LABEL_257;
        }

        if (&v11[-v10] >= a4)
        {
LABEL_174:
          if (v11 < v10)
          {
            goto LABEL_256;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          v6 = v11;
          if ((result & 1) == 0)
          {
            result = sub_1A3955F6C(0, *(v9 + 2) + 1, 1, v9);
            v9 = result;
          }

          v42 = *(v9 + 2);
          v41 = *(v9 + 3);
          v43 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            result = sub_1A3955F6C((v41 > 1), v42 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 2) = v43;
          v44 = &v9[16 * v42];
          *(v44 + 4) = v10;
          *(v44 + 5) = v6;
          v45 = *v95;
          if (!*v95)
          {
            goto LABEL_266;
          }

          if (v42)
          {
            v8 = v6;
            while (1)
            {
              v46 = v43 - 1;
              if (v43 >= 4)
              {
                break;
              }

              if (v43 == 3)
              {
                v47 = *(v9 + 4);
                v48 = *(v9 + 5);
                v57 = __OFSUB__(v48, v47);
                v49 = v48 - v47;
                v50 = v57;
LABEL_195:
                if (v50)
                {
                  goto LABEL_245;
                }

                v63 = &v9[16 * v43];
                v65 = *v63;
                v64 = *(v63 + 1);
                v66 = __OFSUB__(v64, v65);
                v67 = v64 - v65;
                v68 = v66;
                if (v66)
                {
                  goto LABEL_248;
                }

                v69 = &v9[16 * v46 + 32];
                v71 = *v69;
                v70 = *(v69 + 1);
                v57 = __OFSUB__(v70, v71);
                v72 = v70 - v71;
                if (v57)
                {
                  goto LABEL_251;
                }

                if (__OFADD__(v67, v72))
                {
                  goto LABEL_252;
                }

                if (v67 + v72 >= v49)
                {
                  if (v49 < v72)
                  {
                    v46 = v43 - 2;
                  }

                  goto LABEL_216;
                }

                goto LABEL_209;
              }

              v73 = &v9[16 * v43];
              v75 = *v73;
              v74 = *(v73 + 1);
              v57 = __OFSUB__(v74, v75);
              v67 = v74 - v75;
              v68 = v57;
LABEL_209:
              if (v68)
              {
                goto LABEL_247;
              }

              v76 = &v9[16 * v46];
              v78 = *(v76 + 4);
              v77 = *(v76 + 5);
              v57 = __OFSUB__(v77, v78);
              v79 = v77 - v78;
              if (v57)
              {
                goto LABEL_250;
              }

              if (v79 < v67)
              {
                goto LABEL_4;
              }

LABEL_216:
              v84 = v46 - 1;
              if (v46 - 1 >= v43)
              {
                __break(1u);
LABEL_241:
                __break(1u);
LABEL_242:
                __break(1u);
LABEL_243:
                __break(1u);
LABEL_244:
                __break(1u);
LABEL_245:
                __break(1u);
LABEL_246:
                __break(1u);
LABEL_247:
                __break(1u);
LABEL_248:
                __break(1u);
LABEL_249:
                __break(1u);
LABEL_250:
                __break(1u);
LABEL_251:
                __break(1u);
LABEL_252:
                __break(1u);
LABEL_253:
                __break(1u);
LABEL_254:
                __break(1u);
LABEL_255:
                __break(1u);
LABEL_256:
                __break(1u);
LABEL_257:
                __break(1u);
LABEL_258:
                __break(1u);
LABEL_259:
                __break(1u);
                goto LABEL_260;
              }

              if (!*a3)
              {
                goto LABEL_263;
              }

              v85 = *&v9[16 * v84 + 32];
              v7 = *&v9[16 * v46 + 40];
              sub_1A3958E88((*a3 + v85), (*a3 + *&v9[16 * v46 + 32]), &v7[*a3], v45);
              if (v5)
              {
              }

              if (v7 < v85)
              {
                goto LABEL_241;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_1A3959204(v9);
              }

              if (v84 >= *(v9 + 2))
              {
                goto LABEL_242;
              }

              v86 = &v9[16 * v84];
              *(v86 + 4) = v85;
              *(v86 + 5) = v7;
              result = sub_1A3959178(v46);
              v43 = *(v9 + 2);
              v8 = v6;
              if (v43 <= 1)
              {
                goto LABEL_4;
              }
            }

            v51 = &v9[16 * v43 + 32];
            v52 = *(v51 - 64);
            v53 = *(v51 - 56);
            v57 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            if (v57)
            {
              goto LABEL_243;
            }

            v56 = *(v51 - 48);
            v55 = *(v51 - 40);
            v57 = __OFSUB__(v55, v56);
            v49 = v55 - v56;
            v50 = v57;
            if (v57)
            {
              goto LABEL_244;
            }

            v58 = &v9[16 * v43];
            v60 = *v58;
            v59 = *(v58 + 1);
            v57 = __OFSUB__(v59, v60);
            v61 = v59 - v60;
            if (v57)
            {
              goto LABEL_246;
            }

            v57 = __OFADD__(v49, v61);
            v62 = v49 + v61;
            if (v57)
            {
              goto LABEL_249;
            }

            if (v62 >= v54)
            {
              v80 = &v9[16 * v46 + 32];
              v82 = *v80;
              v81 = *(v80 + 1);
              v57 = __OFSUB__(v81, v82);
              v83 = v81 - v82;
              if (v57)
              {
                goto LABEL_253;
              }

              if (v49 < v83)
              {
                v46 = v43 - 2;
              }

              goto LABEL_216;
            }

            goto LABEL_195;
          }

          v8 = v6;
LABEL_4:
          v6 = a3;
          v7 = *(a3 + 1);
          if (v8 >= v7)
          {
            goto LABEL_228;
          }

          goto LABEL_5;
        }

        if (__OFADD__(v10, a4))
        {
          goto LABEL_259;
        }

        if (v10 + a4 < v30)
        {
          v30 = (v10 + a4);
        }

        if (v30 < v10)
        {
LABEL_260:
          __break(1u);
          goto LABEL_261;
        }

        if (v11 == v30)
        {
          goto LABEL_174;
        }

        v92 = v10;
        v93 = v5;
        v6 = *v6;
        v7 = &v11[v6];
        v31 = v10 - v11;
        v96 = v30;
        while (2)
        {
          v98 = v11;
          v32 = v11[v6];
          v33 = v31;
          v34 = v7;
LABEL_104:
          v35 = 0xEE0064656C62616ELL;
          v36 = 0x4573776F64616873;
          switch(v32)
          {
            case 1:
              v36 = 0xD000000000000018;
              v35 = 0x80000001A3AA1220;
              break;
            case 2:
              v36 = 0xD000000000000024;
              v35 = 0x80000001A3AA1240;
              break;
            case 3:
              v36 = 0xD000000000000016;
              v35 = 0x80000001A3AA1270;
              break;
            case 4:
              v36 = 0xD00000000000001FLL;
              v35 = 0x80000001A3AA1290;
              break;
            case 5:
              v36 = 0xD000000000000015;
              v35 = 0x80000001A3AA12B0;
              break;
            case 6:
              v36 = 0xD00000000000001CLL;
              v35 = 0x80000001A3AA12D0;
              break;
            case 7:
              v36 = 0xD000000000000015;
              v35 = 0x80000001A3AA12F0;
              break;
            case 8:
              v36 = 0xD000000000000019;
              v35 = 0x80000001A3AA1310;
              break;
            case 9:
              v36 = 0xD00000000000001DLL;
              v35 = 0x80000001A3AA1330;
              break;
            case 10:
              v36 = 0xD000000000000022;
              v35 = 0x80000001A3AA1350;
              break;
            case 11:
              v36 = 0xD000000000000010;
              v35 = 0x80000001A3AA1380;
              break;
            case 12:
              v36 = 0xD00000000000001ELL;
              v35 = 0x80000001A3AA13A0;
              break;
            case 13:
              v36 = 0xD000000000000011;
              v35 = 0x80000001A3AA13C0;
              break;
            case 14:
              break;
            case 15:
              v36 = 0xD000000000000012;
              v35 = 0x80000001A3AA13F0;
              break;
            case 16:
              v36 = 0xD000000000000016;
              v35 = 0x80000001A3AA1410;
              break;
            case 17:
              v36 = 0xD000000000000021;
              v35 = 0x80000001A3AA1430;
              break;
            case 18:
              v36 = 0xD000000000000016;
              v35 = 0x80000001A3AA1460;
              break;
            case 19:
              v36 = 0xD000000000000020;
              v35 = 0x80000001A3AA1480;
              break;
            case 20:
              v36 = 0xD000000000000021;
              v35 = 0x80000001A3AA14B0;
              break;
            default:
              v36 = 0xD000000000000015;
              v35 = 0x80000001A3AA1200;
              break;
          }

          v37 = 0x4573776F64616873;
          v38 = 0xEE0064656C62616ELL;
          switch(*(v34 - 1))
          {
            case 1:
              v38 = 0x80000001A3AA1220;
              if (v36 == 0xD000000000000018)
              {
                goto LABEL_164;
              }

              goto LABEL_165;
            case 2:
              v38 = 0x80000001A3AA1240;
              if (v36 != 0xD000000000000024)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 3:
              v38 = 0x80000001A3AA1270;
              if (v36 != 0xD000000000000016)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 4:
              v38 = 0x80000001A3AA1290;
              if (v36 != 0xD00000000000001FLL)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 5:
              v38 = 0x80000001A3AA12B0;
              if (v36 != 0xD000000000000015)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 6:
              v38 = 0x80000001A3AA12D0;
              if (v36 != 0xD00000000000001CLL)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 7:
              v37 = 0xD000000000000015;
              v38 = 0x80000001A3AA12F0;
              goto LABEL_163;
            case 8:
              v38 = 0x80000001A3AA1310;
              if (v36 != 0xD000000000000019)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 9:
              v38 = 0x80000001A3AA1330;
              if (v36 != 0xD00000000000001DLL)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 10:
              v38 = 0x80000001A3AA1350;
              if (v36 != 0xD000000000000022)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 11:
              v38 = 0x80000001A3AA1380;
              if (v36 != 0xD000000000000010)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 12:
              v38 = 0x80000001A3AA13A0;
              if (v36 != 0xD00000000000001ELL)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 13:
              v38 = 0x80000001A3AA13C0;
              if (v36 != 0xD000000000000011)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 14:
LABEL_163:
              if (v36 == v37)
              {
                goto LABEL_164;
              }

              goto LABEL_165;
            case 15:
              v38 = 0x80000001A3AA13F0;
              if (v36 != 0xD000000000000012)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 16:
              v38 = 0x80000001A3AA1410;
              if (v36 != 0xD000000000000016)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 17:
              v38 = 0x80000001A3AA1430;
              if (v36 != 0xD000000000000021)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 18:
              v38 = 0x80000001A3AA1460;
              if (v36 != 0xD000000000000016)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 19:
              v38 = 0x80000001A3AA1480;
              if (v36 != 0xD000000000000020)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            case 20:
              v38 = 0x80000001A3AA14B0;
              if (v36 != 0xD000000000000021)
              {
                goto LABEL_165;
              }

              goto LABEL_164;
            default:
              v38 = 0x80000001A3AA1200;
              if (v36 != 0xD000000000000015)
              {
                goto LABEL_165;
              }

LABEL_164:
              if (v35 == v38)
              {

LABEL_102:
                v11 = v98 + 1;
                ++v7;
                --v31;
                if (v98 + 1 == v96)
                {
                  v11 = v96;
                  v10 = v92;
                  v5 = v93;
                  goto LABEL_174;
                }

                continue;
              }

LABEL_165:
              v39 = sub_1A3A321C0();

              if ((v39 & 1) == 0)
              {
                goto LABEL_102;
              }

              if (v6)
              {
                v32 = *v34;
                *v34 = *(v34 - 1);
                *--v34 = v32;
                if (__CFADD__(v33++, 1))
                {
                  goto LABEL_102;
                }

                goto LABEL_104;
              }

              __break(1u);
LABEL_263:
              __break(1u);
LABEL_264:
              __break(1u);
LABEL_265:
              __break(1u);
LABEL_266:
              __break(1u);
LABEL_267:
              __break(1u);
              return result;
          }
        }
    }
  }
}

uint64_t sub_1A3958E88(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < (a3 - __src))
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        v12 = sub_1A3953AD8(*v6);
        v14 = v13;
        if (v12 == sub_1A3953AD8(v11) && v14 == v15)
        {
        }

        else
        {
          v17 = sub_1A3A321C0();

          if (v17)
          {
            v18 = v6 + 1;
            v19 = v6;
            if (v7 >= v6 && v7 < v18)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }
        }

        v20 = v4 + 1;
        v19 = v4;
        v18 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v20)
          {
            goto LABEL_21;
          }
        }

LABEL_20:
        *v7 = *v19;
LABEL_21:
        ++v7;
        if (v4 < v10)
        {
          v6 = v18;
          if (v18 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_54;
    }

LABEL_53:
    if (v6 >= v10)
    {
      goto LABEL_54;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_52:
    if (v6 != v4)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v34 = v4;
  do
  {
    v21 = v6 - 1;
    --v5;
    v22 = v10;
    while (1)
    {
      v23 = *--v22;
      v24 = v21;
      v25 = *v21;
      v26 = sub_1A3953AD8(v23);
      v28 = v27;
      if (v26 != sub_1A3953AD8(v25) || v28 != v29)
      {
        break;
      }

LABEL_41:
      v21 = v24;
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = *v22;
      }

      --v5;
      v10 = v22;
      v4 = v34;
      if (v22 <= v34)
      {
        v10 = v22;
        goto LABEL_52;
      }
    }

    v31 = sub_1A3A321C0();

    if ((v31 & 1) == 0)
    {
      goto LABEL_41;
    }

    v32 = v24;
    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = *v24;
    }

    v4 = v34;
    if (v10 <= v34)
    {
      break;
    }

    v6 = v32;
  }

  while (v32 > v7);
  v6 = v32;
  if (v32 == v34)
  {
    goto LABEL_53;
  }

LABEL_54:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t sub_1A3959178(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A3959204(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1A3959218(void *a1)
{
  v2 = sub_1A3A2EBF0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 count];
  v7 = v6;
  if (v6)
  {
    if (v6 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0FE520);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 1;
      }

      v8[2] = v7;
      v8[3] = 2 * (v10 >> 5);
    }

    sub_1A3A2EA60();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11 = v8[3];

  result = sub_1A3A31BE0();
  if (v7 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = v11 >> 1;
  v14 = v8 + 4;
  if (v7)
  {
    v13 -= v7;
    sub_1A3955B1C(&qword_1ED9981F0, MEMORY[0x1E6968EB0]);
    do
    {
      result = sub_1A3A31E00();
      if (!v34)
      {
        goto LABEL_38;
      }

      sub_1A3924CD4(&v33, v14);
      v14 += 2;
    }

    while (--v7);
  }

  v30 = v3;
  sub_1A3955B1C(&qword_1ED9981F0, MEMORY[0x1E6968EB0]);
  sub_1A3A31E00();
  if (v32)
  {
    while (1)
    {
      result = sub_1A3924CD4(&v31, &v33);
      if (!v13)
      {
        v15 = v8[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0FE520);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 1;
        }

        v21 = v20 >> 5;
        v18[2] = v17;
        v18[3] = 2 * (v20 >> 5);
        v22 = (v18 + 4);
        v23 = v8[3] >> 1;
        if (v8[2])
        {
          v24 = v8 + 4;
          if (v18 != v8 || v22 >= v24 + 32 * v23)
          {
            memmove(v18 + 4, v24, 32 * v23);
          }

          v8[2] = 0;
        }

        v14 = (v22 + 32 * v23);
        v13 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v8 = v18;
      }

      v25 = __OFSUB__(v13--, 1);
      if (v25)
      {
        break;
      }

      sub_1A3924CD4(&v33, v14);
      v14 += 2;
      sub_1A3A31E00();
      if (!v32)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  (*(v30 + 8))(v5, v2);
  result = sub_1A395AE3C(&v31);
  v26 = v8[3];
  if (v26 < 2)
  {
    return v8;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v13);
  v28 = v27 - v13;
  if (!v25)
  {
    v8[2] = v28;
    return v8;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1A3959644(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for MaterialStylingState.MaterialStyle;
  v6[4] = &off_1F165A9E8;
  LOBYTE(v6[0]) = a3;
  __swift_project_boxed_opaque_existential_1(v6, &type metadata for MaterialStylingState.MaterialStyle);
  v3 = sub_1A3A31810();
  v4 = sub_1A3A31810();

  if (qword_1ED9964A8 != -1)
  {
    swift_once();
  }

  CFPreferencesSetAppValue(v3, v4, qword_1ED998F10);

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

unint64_t sub_1A39597D0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = &v10[a3];
      v15 = (v9 + 32 + 8 * a2);
      if (result != v15 || result >= v15 + 8 * v14)
      {
        result = memmove(result, v15, 8 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v10 = a4;
    result = sub_1A38A8F64(a4);
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_1A39598B0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_1A3A318D0();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x1EEE69100](a1, a2, a3, a4);
}

uint64_t sub_1A395994C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x1EEE69100](a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = sub_1A3A318D0();
  if (a2)
  {
    a1 = v8;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return MEMORY[0x1EEE69100](a1, a2, a3, a4);
}