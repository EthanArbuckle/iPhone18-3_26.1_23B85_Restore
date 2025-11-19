uint64_t sub_1C1E0A1A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1C1E0A1EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C1E0A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1C1E0F9D4(a3, v27 - v11);
  v13 = sub_1C1E5485C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C1DC1870(v12, &qword_1EBF1C748, &qword_1C1E56E20);
  }

  else
  {
    sub_1C1E5484C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C1E5481C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C1E5464C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C750, &qword_1C1E56E38);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1C1DC1870(a3, &qword_1EBF1C748, &qword_1C1E56E20);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1DC1870(a3, &qword_1EBF1C748, &qword_1C1E56E20);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C750, &qword_1C1E56E38);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1C1E0A594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1C1E0F9D4(a3, v27 - v11);
  v13 = sub_1C1E5485C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C1DC1870(v12, &qword_1EBF1C748, &qword_1C1E56E20);
  }

  else
  {
    sub_1C1E5484C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C1E5481C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C1E5464C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1C1DC1870(a3, &qword_1EBF1C748, &qword_1C1E56E20);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1DC1870(a3, &qword_1EBF1C748, &qword_1C1E56E20);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1C1E0A884()
{
  v1 = sub_1C1E52B7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 24);
  if (*(v0 + 32) != 1)
  {
    v7 = *(v0 + 24);

    sub_1C1E5490C();
    v8 = sub_1C1E52FBC();
    sub_1C1E5227C();

    sub_1C1E52B6C();
    swift_getAtKeyPath();
    sub_1C1DDEC6C(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1C1E0A9CC()
{
  v1 = sub_1C1E52B7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 40);
  if (*(v0 + 48) != 1)
  {
    v7 = *(v0 + 40);

    sub_1C1E5490C();
    v8 = sub_1C1E52FBC();
    sub_1C1E5227C();

    sub_1C1E52B6C();
    swift_getAtKeyPath();
    sub_1C1DDEC6C(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1C1E0AB14()
{
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E536EC();
  return v2;
}

uint64_t sub_1C1E0AB78()
{
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E5370C();
  return v2;
}

uint64_t sub_1C1E0ABE0()
{
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E536EC();
  return v2;
}

uint64_t sub_1C1E0AC44()
{
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E5370C();
  return v2;
}

uint64_t sub_1C1E0ACAC()
{
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E536EC();
  return v2;
}

uint64_t sub_1C1E0AD10()
{
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E5370C();
  return v2;
}

uint64_t GraphView3D.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v56 = sub_1C1E52E1C();
  v4 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D290, &qword_1C1E58800);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D298, &qword_1C1E58808);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v53 = a1;
  *&v59 = v8;
  *(&v59 + 1) = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = sub_1C1E0F2FC();
  v51 = v7;
  v52 = v8;
  *&v59 = v8;
  *(&v59 + 1) = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v59 = v6;
  *(&v59 + 1) = OpaqueTypeMetadata2;
  *&v60 = v10;
  *(&v60 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_1C1E549CC();
  swift_getTupleTypeMetadata3();
  sub_1C1E5397C();
  swift_getWitnessTable();
  v12 = sub_1C1E5378C();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2D0, &qword_1C1E58820);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1C1DC1124(&qword_1EBF1D2D8, &qword_1EBF1D2D0, &qword_1C1E58820);
  v49 = v13;
  v50 = v12;
  *&v59 = v12;
  *(&v59 + 1) = v13;
  v48 = WitnessTable;
  *&v60 = WitnessTable;
  *(&v60 + 1) = v15;
  v46 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v17 = sub_1C1E10390(qword_1EBF1D2E0, MEMORY[0x1E697C998]);
  v47 = v16;
  v45 = v17;
  v18 = sub_1C1E5280C();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - v24;
  v26 = v2[7];
  v65 = v2[6];
  v66 = v26;
  v67 = v2[8];
  v68 = *(v2 + 18);
  v27 = v2[3];
  v61 = v2[2];
  v62 = v27;
  v28 = v2[5];
  v63 = v2[4];
  v64 = v28;
  v29 = v2[1];
  v59 = *v2;
  v60 = v29;
  v30 = v59;
  swift_getKeyPath();
  v58[0] = v30;
  sub_1C1E10390(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  if (!*(v30 + 16))
  {
    swift_getKeyPath();
    v58[0] = v30;
    sub_1C1E520BC();

    v31 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction;
    swift_beginAccess();
    v32 = *(v30 + v31) ^ 1u;
  }

  v33 = v54;
  sub_1C1E52E0C();
  v34 = swift_allocObject();
  v35 = v51;
  *(v34 + 16) = v52;
  *(v34 + 24) = v35;
  v36 = v66;
  *(v34 + 128) = v65;
  *(v34 + 144) = v36;
  *(v34 + 160) = v67;
  *(v34 + 176) = v68;
  v37 = v62;
  *(v34 + 64) = v61;
  *(v34 + 80) = v37;
  v38 = v64;
  *(v34 + 96) = v63;
  *(v34 + 112) = v38;
  v39 = v60;
  v40 = v53;
  *(v34 + 32) = v59;
  *(v34 + 48) = v39;
  (*(*(v40 - 8) + 16))(v58, &v59);
  v58[0] = v50;
  v58[1] = v49;
  v58[2] = v48;
  v58[3] = v46;
  v41 = swift_getOpaqueTypeConformance2();
  sub_1C1E0EFC0(v33, sub_1C1E0F4A0, v34, v56, v47, v45, v41);
  v57 = v41;
  swift_getWitnessTable();
  v42 = v19[2];
  v42(v25, v22, v18);
  v43 = v19[1];
  v43(v22, v18);
  v42(v55, v25, v18);
  return (v43)(v25, v18);
}

uint64_t sub_1C1E0B37C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v63 = a4;
  v58 = sub_1C1E52CFC();
  v7 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1C1E52BDC();
  v62 = *(v60 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D2D0, &qword_1C1E58820);
  v52 = v11;
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v48 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D290, &qword_1C1E58800);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D298, &qword_1C1E58808);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  v15 = a2;
  v67 = a2;
  v68 = a3;
  v50 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = sub_1C1E0F2FC();
  v67 = v15;
  v68 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v14;
  v68 = OpaqueTypeMetadata2;
  v69 = v17;
  v70 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_1C1E549CC();
  swift_getTupleTypeMetadata3();
  sub_1C1E5397C();
  swift_getWitnessTable();
  v19 = sub_1C1E5378C();
  v51 = v19;
  v55 = *(v19 - 8);
  v20 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v49 = &v48 - v21;
  WitnessTable = swift_getWitnessTable();
  v54 = WitnessTable;
  v53 = sub_1C1DC1124(&qword_1EBF1D2D8, &qword_1EBF1D2D0, &qword_1C1E58820);
  v67 = v19;
  v68 = v11;
  v69 = WitnessTable;
  v70 = v53;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = *(v23 - 8);
  v25 = v24[8];
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v48 - v29;
  sub_1C1E5389C();
  v31 = v15;
  v64 = v15;
  v32 = v50;
  v65 = v50;
  v66 = a1;
  sub_1C1E5377C();
  sub_1C1E52D9C();
  v33 = v56;
  sub_1C1E52BCC();
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  *(v34 + 24) = v32;
  v35 = *(a1 + 112);
  *(v34 + 128) = *(a1 + 96);
  *(v34 + 144) = v35;
  *(v34 + 160) = *(a1 + 128);
  *(v34 + 176) = *(a1 + 144);
  v36 = *(a1 + 48);
  *(v34 + 64) = *(a1 + 32);
  *(v34 + 80) = v36;
  v37 = *(a1 + 80);
  *(v34 + 96) = *(a1 + 64);
  *(v34 + 112) = v37;
  v38 = *(a1 + 16);
  *(v34 + 32) = *a1;
  *(v34 + 48) = v38;
  v39 = type metadata accessor for GraphView3D();
  (*(*(v39 - 8) + 16))(&v67, a1, v39);
  sub_1C1E10390(&qword_1EBF1D370, MEMORY[0x1E697C468]);
  v40 = v59;
  v41 = v60;
  sub_1C1E5381C();

  (*(v62 + 8))(v33, v41);
  sub_1C1E5275C();
  v42 = v51;
  v43 = v52;
  v44 = v49;
  sub_1C1E533FC();
  (*(v61 + 8))(v40, v43);
  (*(v55 + 8))(v44, v42);
  v45 = v24[2];
  v45(v30, v27, v23);
  v46 = v24[1];
  v46(v27, v23);
  v45(v63, v30, v23);
  return (v46)(v30, v23);
}

uint64_t sub_1C1E0BAB0@<X0>(__int128 *a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v382 = a3;
  v383 = a2;
  v359 = a4;
  v314 = sub_1C1E52DBC();
  v303 = *(v314 - 8);
  v7 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](v314);
  v302 = (&v298 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  *&v402 = a2;
  *(&v402 + 1) = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = sub_1C1E0F2FC();
  *&v402 = a2;
  *(&v402 + 1) = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v373 = v9;
  *&v402 = v9;
  v372 = OpaqueTypeMetadata2;
  *(&v402 + 1) = OpaqueTypeMetadata2;
  v378 = v11;
  *&v403 = v11;
  v360 = OpaqueTypeConformance2;
  *(&v403 + 1) = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeMetadata2();
  v356 = *(v13 - 8);
  v14 = *(v356 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v301 = &v298 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v300 = &v298 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v317 = &v298 - v20;
  v316 = type metadata accessor for Function();
  v318 = *(v316 - 8);
  v21 = *(v318 + 64);
  MEMORY[0x1EEE9AC00](v316);
  v298 = v22;
  v299 = &v298 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v315 = &v298 - v24;
  v361 = v13;
  v358 = sub_1C1E549CC();
  v355 = *(v358 - 8);
  v25 = *(v355 + 64);
  MEMORY[0x1EEE9AC00](v358);
  v371 = &v298 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v357 = &v298 - v28;
  v29 = sub_1C1E5353C();
  v310 = *(v29 - 8);
  v311 = v29;
  v30 = *(v310 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v309 = &v298 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1C1E52E7C();
  v307 = *(v32 - 8);
  v308 = v32;
  v33 = *(v307 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v306 = &v298 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D378, &qword_1C1E58A48);
  v35 = *(*(v304 - 8) + 64);
  MEMORY[0x1EEE9AC00](v304);
  v305 = &v298 - v36;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D380, &unk_1C1E5A730);
  v37 = *(*(v313 - 8) + 64);
  MEMORY[0x1EEE9AC00](v313);
  v312 = &v298 - v38;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D298, &qword_1C1E58808);
  v39 = *(*(v353 - 8) + 64);
  MEMORY[0x1EEE9AC00](v353);
  v354 = &v298 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v381 = &v298 - v42;
  v43 = sub_1C1E5252C();
  v339 = *(v43 - 8);
  v340 = v43;
  v44 = *(v339 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v336 = &v298 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D388, &qword_1C1E58A50);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v331 = &v298 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D390, &qword_1C1E58A58);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v52 = &v298 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D398, &qword_1C1E58A60);
  v54 = *(v53 - 8);
  v321 = v53;
  v322 = v54;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v364 = &v298 - v56;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3A0, &qword_1C1E58A68);
  v323 = *(v366 - 8);
  v57 = *(v323 + 64);
  MEMORY[0x1EEE9AC00](v366);
  v376 = &v298 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3A8, &qword_1C1E58A70);
  v60 = *(v59 - 8);
  v326 = v59;
  v327 = v60;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  *&v367 = &v298 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3B0, &qword_1C1E58A78);
  v64 = *(v63 - 8);
  v328 = v63;
  v329 = v64;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v324 = &v298 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3B8, &qword_1C1E58A80);
  v68 = *(v67 - 8);
  v332 = v67;
  v333 = v68;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v325 = &v298 - v70;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3C0, &qword_1C1E58A88);
  v337 = *(v335 - 8);
  v71 = *(v337 + 64);
  MEMORY[0x1EEE9AC00](v335);
  v330 = &v298 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3C8, &qword_1C1E58A90);
  v74 = *(v73 - 8);
  v341 = v73;
  v342 = v74;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v334 = &v298 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3D0, &qword_1C1E58A98);
  v78 = *(v77 - 8);
  v343 = v77;
  v344 = v78;
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v338 = &v298 - v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3D8, &qword_1C1E58AA0);
  v82 = *(v81 - 8);
  v345 = v81;
  v346 = v82;
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v81);
  *(&v367 + 1) = &v298 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3E0, &qword_1C1E58AA8);
  v86 = *(v85 - 8);
  v348 = v85;
  v349 = v86;
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v368 = &v298 - v88;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3E8, &qword_1C1E58AB0);
  v350 = *(v369 - 8);
  v89 = *(v350 + 64);
  MEMORY[0x1EEE9AC00](v369);
  v347 = &v298 - v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D290, &qword_1C1E58800);
  v351 = *(v91 - 8);
  v352 = v91;
  v92 = *(v351 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v370 = &v298 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94);
  v380 = &v298 - v95;
  v377 = *a1;
  *&v411 = v377;
  swift_retain_n();
  sub_1C1E24AC8();
  *&v402 = v96;
  *(&v402 + 1) = v97;
  v375 = xmmword_1C1E587F0;
  v395 = xmmword_1C1E587F0;
  v363 = sub_1C1E5263C();
  v98 = *(v363 - 8);
  v374 = *(v98 + 56);
  v362 = v98 + 56;
  v374(v52, 1, 1, v363);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3F8, &qword_1C1E58AC0);
  v101 = sub_1C1E0FAFC();
  v102 = sub_1C1E0FB50();
  v379 = sub_1C1DC1124(&qword_1EBF1D410, &qword_1EBF1D3F8, &qword_1C1E58AC0);
  sub_1C1E531CC();
  sub_1C1DC1870(v52, &qword_1EBF1D390, &qword_1C1E58A58);

  sub_1C1E24EE0();
  *&v395 = v103;
  *(&v395 + 1) = v104;
  v411 = v375;
  v105 = v52;
  v374(v52, 1, 1, v363);
  *&v402 = &type metadata for Chart3DView;
  v365 = v99;
  *(&v402 + 1) = v99;
  v106 = v100;
  *&v403 = v100;
  *(&v403 + 1) = v101;
  v107 = v102;
  *&v404[0] = v102;
  *(&v404[0] + 1) = v379;
  v108 = swift_getOpaqueTypeConformance2();
  v109 = v105;
  v110 = v321;
  v111 = v364;
  sub_1C1E531EC();
  sub_1C1DC1870(v109, &qword_1EBF1D390, &qword_1C1E58A58);
  (*(v322 + 8))(v111, v110);
  sub_1C1E24CD4();
  *&v395 = v112;
  *(&v395 + 1) = v113;
  v411 = v375;
  v114 = v109;
  v374(v109, 1, 1, v363);
  v115 = v382;
  *&v402 = v110;
  *(&v402 + 1) = v365;
  v319 = v106;
  v320 = v107;
  *&v403 = v106;
  *(&v403 + 1) = v108;
  *&v404[0] = v107;
  *(&v404[0] + 1) = v379;
  v364 = swift_getOpaqueTypeConformance2();
  v116 = v366;
  v117 = v376;
  sub_1C1E531FC();
  sub_1C1DC1870(v114, &qword_1EBF1D390, &qword_1C1E58A58);
  (*(v323 + 8))(v117, v116);
  sub_1C1E5483C();
  v118 = v383;
  v119 = type metadata accessor for GraphView3D();
  v120 = *(v119 - 8);
  v121 = *(v120 + 16);
  v122 = (v120 + 16);
  v376 = v119;
  v121(&v402, a1, v119);
  v374 = v122;
  *&v375 = v121;
  v123 = sub_1C1E5482C();
  v124 = swift_allocObject();
  v125 = MEMORY[0x1E69E85E0];
  *(v124 + 16) = v123;
  *(v124 + 24) = v125;
  *(v124 + 32) = v118;
  *(v124 + 40) = v115;
  v126 = a1[7];
  *(v124 + 144) = a1[6];
  *(v124 + 160) = v126;
  *(v124 + 176) = a1[8];
  *(v124 + 192) = *(a1 + 18);
  v127 = a1[3];
  *(v124 + 80) = a1[2];
  *(v124 + 96) = v127;
  v128 = a1[5];
  *(v124 + 112) = a1[4];
  *(v124 + 128) = v128;
  v129 = a1[1];
  *(v124 + 48) = *a1;
  *(v124 + 64) = v129;
  v121(&v402, a1, v119);
  v130 = sub_1C1E5482C();
  v131 = swift_allocObject();
  *(v131 + 16) = v130;
  *(v131 + 24) = MEMORY[0x1E69E85E0];
  *(v131 + 32) = v118;
  *(v131 + 40) = v115;
  v132 = a1[7];
  *(v131 + 144) = a1[6];
  *(v131 + 160) = v132;
  *(v131 + 176) = a1[8];
  *(v131 + 192) = *(a1 + 18);
  v133 = a1[3];
  *(v131 + 80) = a1[2];
  *(v131 + 96) = v133;
  v134 = a1[5];
  *(v131 + 112) = a1[4];
  *(v131 + 128) = v134;
  v135 = a1[1];
  *(v131 + 48) = *a1;
  *(v131 + 64) = v135;
  sub_1C1E5232C();
  v136 = v331;
  sub_1C1E537BC();
  *&v402 = v366;
  *(&v402 + 1) = v365;
  *&v403 = v319;
  *(&v403 + 1) = v364;
  *&v404[0] = v320;
  *(&v404[0] + 1) = v379;
  v137 = swift_getOpaqueTypeConformance2();
  v138 = v324;
  v139 = v326;
  v140 = v367;
  sub_1C1E5319C();
  sub_1C1DC1870(v136, &qword_1EBF1D388, &qword_1C1E58A50);
  (*(v327 + 8))(v140, v139);
  v141 = v336;
  sub_1C1E5251C();
  *&v402 = v139;
  *(&v402 + 1) = v137;
  v142 = swift_getOpaqueTypeConformance2();
  v143 = v325;
  v144 = v328;
  sub_1C1E5328C();
  (*(v339 + 8))(v141, v340);
  (*(v329 + 8))(v138, v144);
  v145 = a1[7];
  v407 = a1[6];
  v408 = v145;
  v409 = a1[8];
  v410 = *(a1 + 18);
  v146 = a1[3];
  v404[0] = a1[2];
  v404[1] = v146;
  v147 = a1[5];
  v405 = a1[4];
  v406 = v147;
  v148 = a1[1];
  v402 = *a1;
  v403 = v148;
  *&v395 = sub_1C1E0AB78();
  *(&v395 + 1) = v149;
  *&v396 = v150;
  BYTE8(v396) = v151 & 1;
  *&v411 = v144;
  *(&v411 + 1) = v142;
  v152 = swift_getOpaqueTypeConformance2();
  v153 = MEMORY[0x1E69E63B0];
  v154 = v330;
  v155 = v332;
  sub_1C1E5323C();

  (*(v333 + 8))(v143, v155);
  v156 = a1[7];
  v407 = a1[6];
  v408 = v156;
  v409 = a1[8];
  v410 = *(a1 + 18);
  v157 = a1[3];
  v404[0] = a1[2];
  v404[1] = v157;
  v158 = a1[5];
  v405 = a1[4];
  v406 = v158;
  v159 = a1[1];
  v402 = *a1;
  v403 = v159;
  *&v411 = sub_1C1E0AC44();
  *(&v411 + 1) = v160;
  v412 = v161;
  v413 = v162 & 1;
  *&v395 = v155;
  *(&v395 + 1) = v153;
  *&v396 = v152;
  *(&v396 + 1) = MEMORY[0x1E695B450];
  v163 = swift_getOpaqueTypeConformance2();
  v164 = v334;
  v165 = v335;
  sub_1C1E5325C();

  (*(v337 + 8))(v154, v165);
  v166 = a1[7];
  v407 = a1[6];
  v408 = v166;
  v409 = a1[8];
  v410 = *(a1 + 18);
  v167 = a1[3];
  v404[0] = a1[2];
  v404[1] = v167;
  v168 = a1[5];
  v405 = a1[4];
  v406 = v168;
  v169 = a1[1];
  v402 = *a1;
  v403 = v169;
  *&v411 = sub_1C1E0AD10();
  *(&v411 + 1) = v170;
  v412 = v171;
  v413 = v172 & 1;
  *&v395 = v165;
  *(&v395 + 1) = v153;
  *&v396 = v163;
  *(&v396 + 1) = MEMORY[0x1E695B450];
  v173 = swift_getOpaqueTypeConformance2();
  v174 = v338;
  v175 = v341;
  sub_1C1E5327C();

  v176 = v175;
  (*(v342 + 8))(v164, v175);
  v177 = v383;
  v384 = v383;
  v178 = v382;
  v385 = v382;
  v386 = a1;
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D418, &qword_1C1E5A8A0);
  *&v402 = v176;
  *(&v402 + 1) = v153;
  *&v403 = v173;
  *(&v403 + 1) = MEMORY[0x1E695B450];
  *&v367 = swift_getOpaqueTypeConformance2();
  v179 = sub_1C1E0FC80();
  v180 = v343;
  sub_1C1E5340C();
  (*(v344 + 8))(v174, v180);
  v181 = a1[7];
  v407 = a1[6];
  v408 = v181;
  v409 = a1[8];
  v410 = *(a1 + 18);
  v182 = a1[3];
  v404[0] = a1[2];
  v404[1] = v182;
  v183 = a1[5];
  v405 = a1[4];
  v406 = v183;
  v184 = a1[1];
  v402 = *a1;
  v403 = v184;
  *&v411 = sub_1C1E0AB14();
  BYTE8(v411) = v185 & 1;
  v186 = swift_allocObject();
  *(v186 + 16) = v177;
  *(v186 + 24) = v178;
  v187 = a1[7];
  *(v186 + 128) = a1[6];
  *(v186 + 144) = v187;
  *(v186 + 160) = a1[8];
  *(v186 + 176) = *(a1 + 18);
  v188 = a1[3];
  *(v186 + 64) = a1[2];
  *(v186 + 80) = v188;
  v189 = a1[5];
  *(v186 + 96) = a1[4];
  *(v186 + 112) = v189;
  v190 = a1[1];
  *(v186 + 32) = *a1;
  *(v186 + 48) = v190;
  v191 = v376;
  v192 = v375;
  (v375)(&v395, a1, v376);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C778, &qword_1C1E56FC8);
  *&v395 = v180;
  *(&v395 + 1) = v379;
  *&v396 = v367;
  v379 = 1;
  *(&v396 + 1) = v179;
  *&v367 = swift_getOpaqueTypeConformance2();
  v194 = sub_1C1E0FD50();
  v195 = v345;
  v196 = *(&v367 + 1);
  sub_1C1E534CC();

  (*(v346 + 8))(v196, v195);
  v197 = a1[7];
  v407 = a1[6];
  v408 = v197;
  v409 = a1[8];
  v410 = *(a1 + 18);
  v198 = a1[3];
  v404[0] = a1[2];
  v404[1] = v198;
  v199 = a1[5];
  v405 = a1[4];
  v406 = v199;
  v200 = a1[1];
  v402 = *a1;
  v403 = v200;
  *&v411 = sub_1C1E0ABE0();
  BYTE8(v411) = v201 & 1;
  v202 = swift_allocObject();
  v203 = v382;
  *(v202 + 16) = v383;
  *(v202 + 24) = v203;
  v204 = a1[7];
  *(v202 + 128) = a1[6];
  *(v202 + 144) = v204;
  *(v202 + 160) = a1[8];
  *(v202 + 176) = *(a1 + 18);
  v205 = a1[3];
  *(v202 + 64) = a1[2];
  *(v202 + 80) = v205;
  v206 = a1[5];
  *(v202 + 96) = a1[4];
  *(v202 + 112) = v206;
  v207 = a1[1];
  *(v202 + 32) = *a1;
  *(v202 + 48) = v207;
  v192(&v395, a1, v191);
  *&v395 = v195;
  *(&v395 + 1) = v193;
  *&v396 = v367;
  *(&v396 + 1) = v194;
  v208 = swift_getOpaqueTypeConformance2();
  v210 = v347;
  v209 = v348;
  v211 = v368;
  sub_1C1E534CC();

  (*(v349 + 8))(v211, v209);
  v212 = a1[7];
  v407 = a1[6];
  v408 = v212;
  v409 = a1[8];
  v410 = *(a1 + 18);
  v213 = a1[3];
  v404[0] = a1[2];
  v404[1] = v213;
  v214 = a1[5];
  v405 = a1[4];
  v406 = v214;
  v215 = a1[1];
  v402 = *a1;
  v403 = v215;
  *&v411 = sub_1C1E0ACAC();
  BYTE8(v411) = v216 & 1;
  v217 = swift_allocObject();
  v218 = v382;
  *(v217 + 16) = v383;
  *(v217 + 24) = v218;
  v219 = a1[7];
  *(v217 + 128) = a1[6];
  *(v217 + 144) = v219;
  *(v217 + 160) = a1[8];
  *(v217 + 176) = *(a1 + 18);
  v220 = a1[3];
  *(v217 + 64) = a1[2];
  *(v217 + 80) = v220;
  v221 = a1[5];
  *(v217 + 96) = a1[4];
  *(v217 + 112) = v221;
  v222 = a1[1];
  *(v217 + 32) = *a1;
  *(v217 + 48) = v222;
  (v375)(&v395, a1, v376);
  *&v395 = v209;
  *(&v395 + 1) = v193;
  *&v396 = v208;
  *(&v396 + 1) = v194;
  v223 = swift_getOpaqueTypeConformance2();
  v224 = v369;
  v368 = v193;
  *&v367 = v223;
  *(&v367 + 1) = v194;
  sub_1C1E534CC();

  (*(v350 + 8))(v210, v224);
  swift_getKeyPath();
  v225 = v377;
  *&v402 = v377;
  sub_1C1E10390(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v226 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
  swift_beginAccess();
  if (*(v225 + v226) == 1)
  {
    swift_getKeyPath();
    *&v402 = v225;
    sub_1C1E520BC();

    swift_beginAccess();
    v227 = *(v225 + 17);
    v379 = 1;
    if (v227 == 1)
    {
      v228 = swift_allocObject();
      v229 = v382;
      *(v228 + 16) = v383;
      *(v228 + 24) = v229;
      v230 = a1[7];
      *(v228 + 128) = a1[6];
      *(v228 + 144) = v230;
      *(v228 + 160) = a1[8];
      *(v228 + 176) = *(a1 + 18);
      v231 = a1[3];
      *(v228 + 64) = a1[2];
      *(v228 + 80) = v231;
      v232 = a1[5];
      *(v228 + 96) = a1[4];
      *(v228 + 112) = v232;
      v233 = a1[1];
      *(v228 + 32) = *a1;
      *(v228 + 48) = v233;
      (v375)(&v402, a1, v376);
      v234 = v305;
      sub_1C1E5373C();
      v235 = (v234 + *(v304 + 36));
      v236 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4B0, &unk_1C1E5A800) + 28);
      v237 = *MEMORY[0x1E697DC20];
      v238 = sub_1C1E526FC();
      (*(*(v238 - 8) + 104))(v235 + v236, v237, v238);
      *v235 = swift_getKeyPath();
      v239 = v306;
      sub_1C1E52E6C();
      sub_1C1E102AC();
      sub_1C1E10390(&qword_1EBF1D4B8, MEMORY[0x1E697CB70]);
      v240 = v312;
      v241 = v308;
      sub_1C1E532EC();
      (*(v307 + 8))(v239, v241);
      sub_1C1DC1870(v234, &qword_1EBF1D378, &qword_1C1E58A48);
      (*(v310 + 104))(v309, *MEMORY[0x1E69814D8], v311);
      v242 = sub_1C1E5368C();
      KeyPath = swift_getKeyPath();
      *&v402 = v242;
      v244 = sub_1C1E5282C();
      v245 = (v240 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D498, &unk_1C1E5A7F0) + 36));
      *v245 = KeyPath;
      v245[1] = v244;
      *(v240 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D488, &qword_1C1E58B28) + 36)) = 0x3FE6666666666666;
      LOBYTE(v244) = sub_1C1E5300C();
      v246 = v240 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D478, &unk_1C1E5A7E0) + 36);
      *v246 = v244;
      *(v246 + 8) = 0u;
      *(v246 + 24) = 0u;
      *(v246 + 40) = 1;
      sub_1C1E538DC();
      sub_1C1E529FC();
      v247 = (v240 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D468, &qword_1C1E58B20) + 36));
      v248 = v400;
      v247[4] = v399;
      v247[5] = v248;
      v247[6] = v401;
      v249 = v396;
      *v247 = v395;
      v247[1] = v249;
      v250 = v398;
      v247[2] = v397;
      v247[3] = v250;
      *(v240 + *(v313 + 36)) = 0;
      v251 = a1[7];
      v407 = a1[6];
      v408 = v251;
      v409 = a1[8];
      v410 = *(a1 + 18);
      v252 = a1[3];
      v404[0] = a1[2];
      v404[1] = v252;
      v253 = a1[5];
      v405 = a1[4];
      v406 = v253;
      v254 = a1[1];
      v402 = *a1;
      v403 = v254;
      sub_1C1E0A884();
      sub_1C1E0FF0C();
      sub_1C1E533CC();
      v225 = v377;
      sub_1C1DC1870(v240, &qword_1EBF1D380, &unk_1C1E5A730);
      v379 = 0;
    }
  }

  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D440, &unk_1C1E5A7D0);
  (*(*(v255 - 8) + 56))(v381, v379, 1, v255);
  swift_getKeyPath();
  *&v402 = v225;
  sub_1C1E520BC();

  v256 = v225 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  swift_beginAccess();
  v257 = v360;
  v258 = v371;
  if (*(v256 + 16))
  {

    v259 = v378;
    v260 = v361;
LABEL_11:
    (*(v356 + 56))(v258, 1, 1, v260);
    *&v402 = v373;
    *(&v402 + 1) = v372;
    *&v403 = v259;
    *(&v403 + 1) = v257;
    swift_getOpaqueTypeConformance2();
    goto LABEL_12;
  }

  v262 = *v256;
  v261 = *(v256 + 8);
  v263 = v317;
  sub_1C1E220D4(v317);
  v264 = (*(v318 + 48))(v263, 1, v316);
  v259 = v378;
  v260 = v361;
  if (v264 == 1)
  {

    sub_1C1DC1870(v263, &qword_1EBF1C758, &qword_1C1E579C0);
    goto LABEL_11;
  }

  v265 = v263;
  v266 = v315;
  sub_1C1DF7E98(v265, v315);
  v267 = *(a1 + 1);
  if (!v267)
  {

    sub_1C1DE1670(v266);
    goto LABEL_11;
  }

  v268 = *(a1 + 2);

  sub_1C1E538DC();
  sub_1C1E5281C();
  LOBYTE(v391[0]) = BYTE8(v411);
  LOBYTE(v388) = v413;
  *&v402 = 0;
  *(&v402 + 1) = v411;
  LOBYTE(v403) = BYTE8(v411);
  *(&v403 + 1) = v412;
  LOBYTE(v404[0]) = v413;
  *(v404 + 8) = v414;
  *(&v404[1] + 1) = v262;
  *&v405 = v261;
  v269 = swift_allocObject();
  v269[2] = 0;
  v269[3] = 0;
  v269[4] = v225;
  v270 = swift_allocObject();
  v270[2] = 0;
  v270[3] = 0;
  v270[4] = v225;

  sub_1C1E537BC();
  v377 = v392;
  v376 = v393;
  LODWORD(v379) = v394;
  v271 = sub_1C1E5372C();
  v273 = v302;
  v272 = v303;
  *v302 = v271;
  (*(v272 + 104))(v273, *MEMORY[0x1E697C8C0], v314);
  v274 = v299;
  sub_1C1DE160C(v266, v299);
  v275 = (*(v318 + 80) + 48) & ~*(v318 + 80);
  v276 = swift_allocObject();
  v277 = v382;
  v276[2] = v383;
  v276[3] = v277;
  v276[4] = v267;
  v276[5] = v268;
  *&v375 = v268;
  sub_1C1DF7E98(v274, v276 + v275);

  v278 = swift_checkMetadataState();
  v382 = v267;
  v383 = v278;
  v279 = v301;
  v280 = v373;
  sub_1C1DD73C0(v377, v376, v379, v273, 4);

  sub_1C1DD0EB8(v382);
  (*(v272 + 8))(v273, v314);
  sub_1C1DE1670(v315);
  *&v402 = v280;
  *(&v402 + 1) = v383;
  *&v403 = v378;
  *(&v403 + 1) = v360;
  swift_getOpaqueTypeConformance2();
  v281 = v356;
  v282 = *(v356 + 16);
  v283 = v300;
  v282(v300, v279, v361);
  v284 = *(v281 + 8);
  v284(v279, v361);
  v282(v279, v283, v361);
  v285 = v361;
  v284(v283, v361);
  v257 = v360;
  (*(v281 + 32))(v258, v279, v285);
  (*(v281 + 56))(v258, 0, 1, v285);
LABEL_12:
  v286 = v357;
  sub_1C1E3A5A0(v258, v357);
  v287 = v355;
  v383 = *(v355 + 8);
  v288 = v258;
  v289 = v258;
  v290 = v358;
  v383(v288, v358);
  v291 = v351;
  v292 = v352;
  v293 = v370;
  (*(v351 + 16))(v370, v380, v352);
  v392 = v293;
  v294 = v354;
  sub_1C1DD3BE0(v381, v354);
  v393 = v294;
  (*(v287 + 16))(v289, v286, v290);
  v394 = v289;
  v391[0] = v292;
  v391[1] = v353;
  v391[2] = v290;
  *&v402 = v369;
  *(&v402 + 1) = v368;
  v403 = v367;
  v388 = swift_getOpaqueTypeConformance2();
  v389 = sub_1C1E0FDCC();
  *&v402 = v373;
  *(&v402 + 1) = v372;
  *&v403 = v378;
  *(&v403 + 1) = v257;
  v387 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  sub_1C1E3A60C(&v392, 3uLL, v391);
  v295 = v383;
  v383(v286, v290);
  sub_1C1DC1870(v381, &qword_1EBF1D298, &qword_1C1E58808);
  v296 = *(v291 + 8);
  v296(v380, v292);
  v295(v371, v290);
  sub_1C1DC1870(v294, &qword_1EBF1D298, &qword_1C1E58808);
  return (v296)(v370, v292);
}

uint64_t sub_1C1E0E1D0@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E10390(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  v5 = sub_1C1E5232C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1E0E2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_1C1E5232C();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a4;
  (*(v12 + 16))(v10, a1, v8);
  return sub_1C1E16220(v10);
}

uint64_t sub_1C1E0E394@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D430, &qword_1C1E58AC8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24[-1] - v11;
  v13 = *a1;
  swift_getKeyPath();
  v24[0] = v13;
  sub_1C1E10390(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v14 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
  swift_beginAccess();
  if (*(v13 + v14) == 1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v16 = *(a1 + 7);
    *(v15 + 128) = *(a1 + 6);
    *(v15 + 144) = v16;
    *(v15 + 160) = *(a1 + 8);
    *(v15 + 176) = a1[18];
    v17 = *(a1 + 3);
    *(v15 + 64) = *(a1 + 2);
    *(v15 + 80) = v17;
    v18 = *(a1 + 5);
    *(v15 + 96) = *(a1 + 4);
    *(v15 + 112) = v18;
    v19 = *(a1 + 1);
    *(v15 + 32) = *a1;
    *(v15 + 48) = v19;
    v20 = type metadata accessor for GraphView3D();
    (*(*(v20 - 8) + 16))(v24, a1, v20);
    sub_1C1E5373C();
    (*(v9 + 32))(a4, v12, v8);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  return (*(v9 + 56))(a4, v21, 1, v8);
}

uint64_t sub_1C1E0E624()
{
  sub_1C1E5395C();
  sub_1C1E5291C();
}

uint64_t sub_1C1E0E694@<X0>(uint64_t a1@<X8>)
{
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE75DC0;
  result = sub_1C1E5314C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_1C1E0E778(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1C1E0AB14();
  v4 = v3;
  v5 = sub_1C1E0ABE0();
  v7 = v6;
  v8 = sub_1C1E0ACAC();
  sub_1C1E226B0(v2, v4 & 1, v5, v7 & 1, v8, v9 & 1);
}

uint64_t sub_1C1E0E7EC(__int128 *a1)
{
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = *(a1 + 18);
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v4 = *a1;
  v5 = a1[1];
  v1 = sub_1C1E0A9CC();
  v2 = 0;
  if ((v1 & 1) == 0)
  {
    v2 = sub_1C1E5395C();
  }

  MEMORY[0x1EEE9AC00](v2);
  sub_1C1E5291C();
}

uint64_t sub_1C1E0E8C8@<X0>(uint64_t a1@<X8>)
{
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE75DC0;
  v3 = sub_1C1E5314C();
  v5 = v4;
  v7 = v6;
  v8 = sub_1C1E5310C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1C1DECF2C(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_1C1E0E9FC@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v24 = a1;
  v25 = a4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v10;
  v27 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  v20 = type metadata accessor for Function();
  v24(a2 + *(v20 + 48));
  sub_1C1E533DC();
  (*(v6 + 8))(v9, a3);
  v21 = v13[2];
  v21(v19, v16, OpaqueTypeMetadata2);
  v22 = v13[1];
  v22(v16, OpaqueTypeMetadata2);
  v21(v25, v19, OpaqueTypeMetadata2);
  return (v22)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_1C1E0EC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C1E52BBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27[-v14];
  v16 = sub_1C1E5485C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v11, a1, v8);
  sub_1C1E5483C();
  v17 = type metadata accessor for GraphView3D();
  (*(*(v17 - 8) + 16))(v27, a2, v17);
  v18 = sub_1C1E5482C();
  v19 = (*(v9 + 80) + 200) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v18;
  *(v20 + 24) = v21;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  v22 = *(a2 + 112);
  *(v20 + 144) = *(a2 + 96);
  *(v20 + 160) = v22;
  *(v20 + 176) = *(a2 + 128);
  *(v20 + 192) = *(a2 + 144);
  v23 = *(a2 + 48);
  *(v20 + 80) = *(a2 + 32);
  *(v20 + 96) = v23;
  v24 = *(a2 + 80);
  *(v20 + 112) = *(a2 + 64);
  *(v20 + 128) = v24;
  v25 = *(a2 + 16);
  *(v20 + 48) = *a2;
  *(v20 + 64) = v25;
  (*(v9 + 32))(v20 + v19, v11, v8);
  sub_1C1E0A594(0, 0, v15, &unk_1C1E58A28, v20);
}

uint64_t sub_1C1E0EEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1C1E5483C();
  v5[4] = sub_1C1E5482C();
  v7 = sub_1C1E5481C();

  return MEMORY[0x1EEE6DFA0](sub_1C1E0EF40, v7, v6);
}

uint64_t sub_1C1E0EF40()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = *v3;
  sub_1C1E52BAC();
  sub_1C1E215E8(v5, v6, 0);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1C1E0EFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18, v16);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v19[6] = a2;
  v19[7] = a3;
  sub_1C1E527FC();
  return (*(v14 + 8))(a1, a4);
}

uint64_t sub_1C1E0F11C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E10390(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C1E0F1D8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1C1E154DC(&v4);
}

uint64_t sub_1C1E0F210@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E10390(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

unint64_t sub_1C1E0F2FC()
{
  result = qword_1EBF1D2A8;
  if (!qword_1EBF1D2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
    sub_1C1E0F388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D2A8);
  }

  return result;
}

unint64_t sub_1C1E0F388()
{
  result = qword_1EBF1D2B0;
  if (!qword_1EBF1D2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2B8, &unk_1C1E5A330);
    sub_1C1E0F414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D2B0);
  }

  return result;
}

unint64_t sub_1C1E0F414()
{
  result = qword_1EBF1D2C0;
  if (!qword_1EBF1D2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2C8, &qword_1C1E58818);
    sub_1C1DD9040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D2C0);
  }

  return result;
}

uint64_t sub_1C1E0F4F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4UUIDVxRi_zRi0_zlyxIsegnr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1C1E0F590(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1C1E0F5D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1E0F654@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v24[1] = a3;
  v25 = a2;
  v24[0] = a1;
  v26 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D368, &qword_1C1E5AA30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - v9;
  v11 = *(a4 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - v17;
  v19 = sub_1C1E527EC();
  v21 = *(v19 - 8);
  result = v19 - 8;
  if (*(v21 + 64) == v8)
  {
    (*(v7 + 16))(v10, v24[0], v6);
    v25(v10);
    (*(v7 + 8))(v10, v6);
    v22 = v11[2];
    v22(v18, v15, a4);
    v23 = v11[1];
    v23(v15, a4);
    v22(v26, v18, a4);
    return (v23)(v18, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1E0F8A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  return sub_1C1E0F654(a1, *(v2 + 48), *(v2 + 56), *(v2 + 24), a2);
}

uint64_t sub_1C1E0F8CC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C1E52BBC() - 8);
  v7 = (*(v6 + 80) + 200) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C1DE1518;

  return sub_1C1E0EEA8(a1, v8, v9, (v1 + 6), v1 + v7);
}

uint64_t sub_1C1E0F9D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E0FA44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C1DE184C;

  return sub_1C1E06E2C(a1, v5);
}

unint64_t sub_1C1E0FAFC()
{
  result = qword_1EBF1D400;
  if (!qword_1EBF1D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D400);
  }

  return result;
}

unint64_t sub_1C1E0FB50()
{
  result = qword_1EBF1D408;
  if (!qword_1EBF1D408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D408);
  }

  return result;
}

uint64_t sub_1C1E0FBCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[2];
  v5 = v1[3];
  return sub_1C1E0E1D0(v1 + 6, a1);
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  if (*(v0 + 56))
  {
    v3 = *(v0 + 64);
  }

  sub_1C1DDEC6C(*(v0 + 72), *(v0 + 80));
  sub_1C1DDEC6C(*(v0 + 88), *(v0 + 96));
  v4 = *(v0 + 120);

  v5 = *(v0 + 144);

  v6 = *(v0 + 168);

  v7 = *(v0 + 192);

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t sub_1C1E0FC64(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_1C1E0E2C8(a1, v1[2], v1[3], v1 + 6);
}

unint64_t sub_1C1E0FC80()
{
  result = qword_1EBF1D420;
  if (!qword_1EBF1D420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D418, &qword_1C1E5A8A0);
    sub_1C1DC1124(&qword_1EBF1D428, &qword_1EBF1D430, &qword_1C1E58AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D420);
  }

  return result;
}

void sub_1C1E0FD30()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1C1E0E778(v0 + 4);
}

unint64_t sub_1C1E0FD50()
{
  result = qword_1EBF1D438;
  if (!qword_1EBF1D438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C778, &qword_1C1E56FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D438);
  }

  return result;
}

unint64_t sub_1C1E0FDCC()
{
  result = qword_1EBF1D448;
  if (!qword_1EBF1D448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D298, &qword_1C1E58808);
    sub_1C1E0FE50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D448);
  }

  return result;
}

unint64_t sub_1C1E0FE50()
{
  result = qword_1EBF1D450;
  if (!qword_1EBF1D450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D440, &unk_1C1E5A7D0);
    sub_1C1E0FF0C();
    sub_1C1E10390(&qword_1EBF1C690, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D450);
  }

  return result;
}

unint64_t sub_1C1E0FF0C()
{
  result = qword_1EBF1D458;
  if (!qword_1EBF1D458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D380, &unk_1C1E5A730);
    sub_1C1E0FFC4();
    sub_1C1DC1124(&qword_1EBF1CD40, &qword_1EBF1CD48, &qword_1C1E57818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D458);
  }

  return result;
}

unint64_t sub_1C1E0FFC4()
{
  result = qword_1EBF1D460;
  if (!qword_1EBF1D460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D468, &qword_1C1E58B20);
    sub_1C1E10050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D460);
  }

  return result;
}

unint64_t sub_1C1E10050()
{
  result = qword_1EBF1D470;
  if (!qword_1EBF1D470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D478, &unk_1C1E5A7E0);
    sub_1C1E100DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D470);
  }

  return result;
}

unint64_t sub_1C1E100DC()
{
  result = qword_1EBF1D480;
  if (!qword_1EBF1D480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D488, &qword_1C1E58B28);
    sub_1C1E10168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D480);
  }

  return result;
}

unint64_t sub_1C1E10168()
{
  result = qword_1EBF1D490;
  if (!qword_1EBF1D490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D498, &unk_1C1E5A7F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D378, &qword_1C1E58A48);
    sub_1C1E52E7C();
    sub_1C1E102AC();
    sub_1C1E10390(&qword_1EBF1D4B8, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    sub_1C1DC1124(&qword_1EBF1D4C0, &qword_1EBF1D4C8, &qword_1C1E58B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D490);
  }

  return result;
}

unint64_t sub_1C1E102AC()
{
  result = qword_1EBF1D4A0;
  if (!qword_1EBF1D4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D378, &qword_1C1E58A48);
    sub_1C1DC1124(&qword_1EBF1D428, &qword_1EBF1D430, &qword_1C1E58AC8);
    sub_1C1DC1124(&qword_1EBF1D4A8, &qword_1EBF1D4B0, &unk_1C1E5A800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D4A0);
  }

  return result;
}

uint64_t sub_1C1E10390(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1E103D8@<X0>(BOOL *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1C1E22E64(v1[4], a1);
}

uint64_t sub_1C1E103F0@<X0>(char *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(type metadata accessor for Function() - 8);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1C1E0E9FC(v6, v8, v3, a1);
}

uint64_t sub_1C1E10478()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C1E0E7EC((v0 + 32));
}

uint64_t sub_1C1E10484()
{
  v1 = **(v0 + 32);
  v2 = sub_1C1E0A9CC();
  return sub_1C1E1F060(v2 & 1);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 32);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  sub_1C1DDEC6C(*(v0 + 56), *(v0 + 64));
  sub_1C1DDEC6C(*(v0 + 72), *(v0 + 80));
  v3 = *(v0 + 104);

  v4 = *(v0 + 128);

  v5 = *(v0 + 152);

  v6 = *(v0 + 176);

  return MEMORY[0x1EEE6BDD0](v0, 184, 7);
}

uint64_t sub_1C1E10548()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C1E0E624();
}

unint64_t sub_1C1E105C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1C1E5476C() != a1 || v9 != a2)
  {
    v10 = sub_1C1E54D2C();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1C1E546AC();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1C1E106B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D090, &qword_1C1E58158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E10720(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1C1E54A8C();
    v5 = v4;
    v6 = sub_1C1E54AFC();
    v8 = v7;
    v9 = MEMORY[0x1C6910670](v3, v5, v6, v7);
    sub_1C1E119F0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1C1E119F0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_1C1E54A6C();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1C1E117F0(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_1C1E119F0(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_1C1E1083C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  if (qword_1EBF1C140 != -1)
  {
    swift_once();
  }

  v9 = sub_1C1E522AC();
  __swift_project_value_buffer(v9, qword_1EBF20D40);
  v10 = sub_1C1E5228C();
  v11 = sub_1C1E5491C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C1DBF000, v10, v11, "Received Keyboard Press", v12, 2u);
    MEMORY[0x1C6911150](v12, -1, -1);
  }

  if (sub_1C1E53D5C())
  {
    v13 = sub_1C1E53D3C();

    v14 = v13 == 2;
  }

  else
  {
    v14 = 0;
  }

  if (sub_1C1E53D5C())
  {
    v15 = sub_1C1E53B5C();
  }

  else
  {
    v15 = sub_1C1E53B5C();
  }

  sub_1C1DC733C();
  v17 = sub_1C1E54A2C();
  v18 = v16;
  if (v5[3] == v17 && v5[4] == v16 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (v14 && (a4 & 4) != 0)
    {
      sub_1C1E5432C();
      result = sub_1C1E5428C();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v5[5] == v17 && v5[6] == v18 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (v14 && (a4 & 4) != 0)
    {
      sub_1C1E5432C();
      result = sub_1C1E5422C();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v17 == 40 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (!v14)
    {
      sub_1C1E5432C();
      result = sub_1C1E53E9C();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v17 == 41 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (!v14)
    {
      sub_1C1E5432C();
      result = sub_1C1E53EAC();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v17 == 47043 && v18 == 0xA200000000000000 || (sub_1C1E54D2C() & 1) != 0 || v17 == 8684002 && v18 == 0xA300000000000000 || (sub_1C1E54D2C() & 1) != 0 || v17 == 47 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    result = sub_1C1E541EC();
    goto LABEL_27;
  }

  if (v17 == 8 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v17 == 11050223 && v18 == 0xA300000000000000 || (sub_1C1E54D2C() & 1) != 0 || v17 == 127 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    if (v14 && (a4 & 4) != 0)
    {
      result = sub_1C1E5405C();
    }

    else
    {
      result = sub_1C1E540DC();
    }

    goto LABEL_27;
  }

  if (v17 == 24 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v17 == 61 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v17 == 3 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v17 == 13 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    if (v14)
    {
      result = sub_1C1E540AC();
    }

    else
    {
      result = sub_1C1E541FC();
    }

    goto LABEL_27;
  }

  if (v17 == 99 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v17 == 67 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    v25 = sub_1C1E53D2C();
    sub_1C1E5432C();
    if (v25 == 1)
    {
LABEL_82:
      result = sub_1C1E541AC();
      goto LABEL_27;
    }

    if (v15)
    {
LABEL_84:
      result = sub_1C1E5409C();
      goto LABEL_27;
    }

LABEL_92:
    result = sub_1C1E542AC();
    goto LABEL_27;
  }

  if (v5[7] == v17 && v5[8] == v18 || (sub_1C1E54D2C() & 1) != 0 || v17 == 12164335 && v18 == 0xA300000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    if (v15)
    {
      goto LABEL_84;
    }

    goto LABEL_92;
  }

  if (v17 == 94 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v17 == 34507 && v18 == 0xA200000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    v26 = sub_1C1E53D2C();
    sub_1C1E5432C();
    if (v26 == 1)
    {
      result = sub_1C1E5403C();
    }

    else
    {
      result = sub_1C1E540BC();
    }

    goto LABEL_27;
  }

  if (v17 == 43 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    result = sub_1C1E53FDC();
    goto LABEL_27;
  }

  if (v17 == 9666786 && v18 == 0xA300000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    result = sub_1C1E5420C();
    goto LABEL_27;
  }

  if (v17 == 45 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    result = sub_1C1E542EC();
    goto LABEL_27;
  }

  if (v17 == 42 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    result = sub_1C1E542DC();
    goto LABEL_27;
  }

  if (v17 == 37 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v17 == 43737 && v18 == 0xA200000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    v27 = sub_1C1E53D2C();
    sub_1C1E5432C();
    if (v27 == 1)
    {
      result = sub_1C1E53FFC();
    }

    else
    {
      result = sub_1C1E5427C();
    }

    goto LABEL_27;
  }

  if (v17 == 112 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v17 == 32975 && v18 == 0xA200000000000000 || (sub_1C1E54D2C() & 1) != 0 || v17 == 43480 && v18 == 0xA200000000000000 || (sub_1C1E54D2C() & 1) != 0 || v17 == 44504 && v18 == 0xA200000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (sub_1C1E53D2C() != 1)
    {
      sub_1C1E5432C();
      result = sub_1C1E53FCC();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v17 == 10127586 && v18 == 0xA300000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    result = sub_1C1E53DEC();
    goto LABEL_27;
  }

  if (v17 == 33 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (sub_1C1E53D2C() != 1)
    {
      sub_1C1E5432C();
      result = sub_1C1E5430C();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v17 == 126 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (sub_1C1E53D2C() == 1)
    {
      sub_1C1E5432C();
      result = sub_1C1E5402C();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v17 == 124 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (sub_1C1E53D2C() == 1)
    {
      sub_1C1E5432C();
      result = sub_1C1E53FBC();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v17 == 38 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (sub_1C1E53D2C() == 1)
    {
      sub_1C1E5432C();
      result = sub_1C1E53FEC();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v17 == 101 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (v14 && (a4 & 4) != 0)
    {
      sub_1C1E5432C();
      result = sub_1C1E5408C();
      goto LABEL_27;
    }

    v29 = sub_1C1E53D2C();
    sub_1C1E5432C();
    if (v29 != 1)
    {
      result = sub_1C1E53EEC();
      goto LABEL_27;
    }

LABEL_176:
    result = sub_1C1E541CC();
    goto LABEL_27;
  }

  if (v17 == 69 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    v28 = sub_1C1E53D2C();
    sub_1C1E5432C();
    if (v28 != 1)
    {
      result = sub_1C1E53F9C();
      goto LABEL_27;
    }

    goto LABEL_176;
  }

  if (v17 == 60 && v18 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (sub_1C1E53D2C() == 1)
    {
      sub_1C1E5432C();
      result = sub_1C1E5431C();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v17 == 62 && v18 == 0xE100000000000000)
  {

    goto LABEL_187;
  }

  v30 = sub_1C1E54D2C();

  if (v30)
  {
LABEL_187:
    if (sub_1C1E53D2C() == 1)
    {
      sub_1C1E5432C();
      result = sub_1C1E53DDC();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  sub_1C1DC9F68(a2, a3);
  if (v31 && (v32 = sub_1C1E5455C(), v34 = v33, , (v34 & 1) == 0) || (sub_1C1DC9F68(a2, a3), v35) && (v32 = sub_1C1E5456C(), v37 = v36, , (v37 & 1) == 0))
  {
    switch(v32)
    {
      case 0:
        sub_1C1E5432C();
        result = sub_1C1E540EC();
        goto LABEL_27;
      case 1:
        sub_1C1E5432C();
        result = sub_1C1E540FC();
        goto LABEL_27;
      case 2:
        sub_1C1E5432C();
        result = sub_1C1E5410C();
        goto LABEL_27;
      case 3:
        sub_1C1E5432C();
        result = sub_1C1E5411C();
        goto LABEL_27;
      case 4:
        sub_1C1E5432C();
        result = sub_1C1E5412C();
        goto LABEL_27;
      case 5:
        sub_1C1E5432C();
        result = sub_1C1E5413C();
        goto LABEL_27;
      case 6:
        sub_1C1E5432C();
        result = sub_1C1E5414C();
        goto LABEL_27;
      case 7:
        sub_1C1E5432C();
        result = sub_1C1E5415C();
        goto LABEL_27;
      case 8:
        sub_1C1E5432C();
        result = sub_1C1E5416C();
        goto LABEL_27;
      case 9:
        sub_1C1E5432C();
        result = sub_1C1E5417C();
        goto LABEL_27;
      case 10:
        sub_1C1E5432C();
        result = sub_1C1E5418C();
        goto LABEL_27;
      case 11:
        sub_1C1E5432C();
        result = sub_1C1E5419C();
        goto LABEL_27;
      case 12:
        sub_1C1E5432C();
        goto LABEL_82;
      case 13:
        sub_1C1E5432C();
        result = sub_1C1E541BC();
        goto LABEL_27;
      case 14:
        sub_1C1E5432C();
        result = sub_1C1E541CC();
        goto LABEL_27;
      case 15:
        sub_1C1E5432C();
        result = sub_1C1E541DC();
        goto LABEL_27;
      default:
        break;
    }
  }

LABEL_25:
  v20 = sub_1C1E51318(&unk_1F4186EB8);
  swift_arrayDestroy();
  v21 = sub_1C1E4E564(a2, a3, v20);

  if ((v21 & 1) == 0)
  {
    return 0;
  }

  sub_1C1E5432C();
  result = sub_1C1E5424C();
LABEL_27:
  if ((a4 & 4) != 0)
  {
    v22 = v5[2];
    v23 = result;

    v24 = sub_1C1DC4F3C(v23, v22);

    result = v23;
    if ((v24 & 1) == 0)
    {

      return 0;
    }
  }

  return result;
}

void sub_1C1E117F0(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1C69106B0](a1, a2, v7);
      sub_1C1E119FC();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1C1E119FC();
    if (sub_1C1E54AAC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1C1E54ABC();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_1C1E549AC();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_1C1E549BC();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

uint64_t sub_1C1E119F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1C1E119FC()
{
  result = qword_1EBF1D180;
  if (!qword_1EBF1D180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF1D180);
  }

  return result;
}

double sub_1C1E11A48@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1C1E5245C();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t Function.FunctionSamplerWrapper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Function.FunctionSamplerWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t Function.init(id:name:xAxisLabel:yAxisLabel:zAxisLabel:body:body3D:colorOverride:shouldAnimate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(a9 + 13) = 0;
  v47 = type metadata accessor for Function();
  v23 = v47[12];
  v24 = sub_1C1E51F9C();
  v48 = *(v24 - 8);
  v46 = a1;
  v49 = v24;
  (*(v48 + 16))(&a9[v23], a1);
  *a9 = a2;
  *(a9 + 1) = a3;
  *(a9 + 2) = a4;
  *(a9 + 3) = a5;
  *(a9 + 4) = a6;
  *(a9 + 5) = a7;
  *(a9 + 6) = a8;
  *(a9 + 7) = a10;
  if (a11)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a11;
    *(v25 + 24) = a12;
    v26 = sub_1C1E11FF4;
  }

  else
  {
    v26 = sub_1C1E11F08;
    v25 = 0;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  *(a9 + 8) = sub_1C1E11F14;
  *(a9 + 9) = v27;
  *(a9 + 10) = a13;
  *(a9 + 11) = a14;
  if (a13)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = a13;
    *(v28 + 24) = a14;
    type metadata accessor for Function.FunctionSamplerWrapper();
    v29 = swift_allocObject();
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    *(v29 + 40) = 1;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 1;
    v30 = sub_1C1E5247C();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    sub_1C1DD6A34(a13);
    sub_1C1DD6A34(a11);
    sub_1C1DD6A34(a13);
    *(v29 + 16) = sub_1C1E5248C();
    *(a9 + 12) = v29;
    v33 = swift_allocObject();
    *(v33 + 16) = a13;
    *(v33 + 24) = a14;
    v34 = swift_allocObject();
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    *(v34 + 40) = 1;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 1;
    v35 = *(v30 + 48);
    v36 = *(v30 + 52);
    swift_allocObject();
    *(v34 + 16) = sub_1C1E5248C();
    *(a9 + 13) = v34;
  }

  else
  {
    type metadata accessor for Function.FunctionSamplerWrapper();
    v37 = swift_allocObject();
    *(v37 + 24) = 0;
    *(v37 + 32) = 0;
    *(v37 + 40) = 1;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 1;
    v38 = sub_1C1E5247C();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    sub_1C1DD6A34(a11);

    *(v37 + 16) = sub_1C1E5248C();
    *(a9 + 12) = v37;
  }

  *&a9[v47[13]] = a15;
  v41 = v47[14];
  if (a16)
  {
    sub_1C1E51F3C();
  }

  else
  {
    sub_1C1E51EEC();
  }

  sub_1C1DD0EB8(a11);
  v42 = *(v48 + 8);

  return v42(v46, v49);
}

uint64_t type metadata accessor for Function()
{
  result = qword_1EDE73CA8;
  if (!qword_1EDE73CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1E11F68(__n128 a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0.0);
}

uint64_t sub_1C1E11FC4(double a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0.0, a1);
}

void sub_1C1E11FF4(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *a2 = v4(*a1);
}

uint64_t Function.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Function.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Function.xAxisLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Function.xAxisLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Function.yAxisLabel.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Function.yAxisLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Function.zAxisLabel.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t Function.zAxisLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Function.body.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_1C1E12278(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = a2[9];

  a2[8] = sub_1C1E13414;
  a2[9] = v5;
  type metadata accessor for Function.FunctionSamplerWrapper();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 1;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 1;
  v8 = sub_1C1E5247C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v7 + 16) = sub_1C1E5248C();
  v11 = a2[12];

  a2[12] = v7;
  return result;
}

uint64_t Function.body.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v3[9];

  v3[8] = a1;
  v3[9] = a2;
  type metadata accessor for Function.FunctionSamplerWrapper();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 1;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 1;
  v8 = sub_1C1E5247C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v7 + 16) = sub_1C1E5248C();
  v11 = v3[12];

  v3[12] = v7;
  return result;
}

uint64_t sub_1C1E12420(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    v3 = *(*result + 64);
    v4 = *(*result + 72);
    type metadata accessor for Function.FunctionSamplerWrapper();
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 1;
    *(v5 + 48) = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 1;
    v6 = sub_1C1E5247C();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();

    *(v5 + 16) = sub_1C1E5248C();
    v9 = *(v2 + 96);

    *(v2 + 96) = v5;
  }

  return result;
}

uint64_t sub_1C1E124C4@<X0>(uint64_t a1@<X0>, void (**a2)(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C1E13398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1C1DD6A34(v3);
}

uint64_t sub_1C1E12544(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C1E13354;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  sub_1C1DD6A34(v3);
  result = sub_1C1DD0EB8(v7);
  *(a2 + 80) = v6;
  *(a2 + 88) = v5;
  return result;
}

uint64_t Function.body3D.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_1C1DD6A34(v1);
  return v1;
}

uint64_t Function.body3D.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);
  result = sub_1C1DD0EB8(*(v2 + 80));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t Function.sampler.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t Function.samplerZ.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t Function.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Function() + 48);
  v4 = sub_1C1E51F9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Function.colorOverride.getter()
{
  v1 = *(v0 + *(type metadata accessor for Function() + 52));
}

uint64_t Function.colorOverride.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Function() + 52);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

Swift::Double __swiftcall Function.callAsFunction(_:)(Swift::Double a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v2(a1);
  return result;
}

Swift::Double __swiftcall Function.callAsFunction3D(_:_:)(Swift::Double a1, Swift::Double a2)
{
  v3 = *(v2 + 80);
  if (!v3)
  {
    return 0.0;
  }

  v6 = *(v2 + 88);

  v8 = v3(v7, a1, a2);
  sub_1C1DD0EB8(v3);
  return v8;
}

uint64_t Function.onAppearDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Function() + 56);
  v4 = sub_1C1E51F5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Function.onAppearDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Function() + 56);
  v4 = sub_1C1E51F5C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double Function.defaultXDomain.getter()
{
  v1 = *(v0 + 96);
  if (*(v1 + 40) == 1)
  {
    v2 = *(v1 + 16);
    sub_1C1E5243C();
    *(v1 + 24) = result;
    *(v1 + 32) = v4;
    *(v1 + 40) = 0;
  }

  else
  {
    result = *(v1 + 24);
    v5 = *(v1 + 32);
  }

  return result;
}

uint64_t Function.defaultYDomain.getter()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    if (*(v1 + 40) == 1)
    {
      v2 = *(v1 + 16);

      sub_1C1E5243C();
      *(v1 + 24) = v3;
      *(v1 + 32) = v4;
      *(v1 + 40) = 0;
    }

    else
    {
      v10 = *(v1 + 24);
      v11 = *(v1 + 32);
    }
  }

  else
  {
    v6 = *(v0 + 96);
    if (*(v6 + 64) == 1)
    {
      v7 = *(v6 + 16);
      if (*(v6 + 40) == 1)
      {
        sub_1C1E5243C();
        *(v6 + 24) = v8;
        *(v6 + 32) = v9;
        *(v6 + 40) = 0;
      }

      else
      {
        v14 = *(v6 + 24);
        v15 = *(v6 + 32);
      }

      result = sub_1C1E5244C();
      *(v6 + 48) = v16;
      *(v6 + 56) = v17;
      *(v6 + 64) = 0;
    }

    else
    {
      v12 = *(v6 + 48);
      v13 = *(v6 + 56);
    }
  }

  return result;
}

uint64_t Function.defaultZDomain.getter()
{
  v1 = *(v0 + 104);
  if (!v1)
  {
    return result;
  }

  v2 = *(v0 + 96);
  if (*(v2 + 64))
  {
    v3 = *(v2 + 16);
    if (*(v2 + 40))
    {

      sub_1C1E5243C();
      *(v2 + 24) = v4;
      *(v2 + 32) = v5;
      *(v2 + 40) = 0;
    }

    else
    {
      v12 = *(v2 + 24);
      v11 = *(v2 + 32);
    }

    sub_1C1E5244C();
    v7 = v13;
    v6 = v14;
    *(v2 + 48) = v13;
    *(v2 + 56) = v14;
    *(v2 + 64) = 0;
    if (*(v1 + 64))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *(v2 + 48);
    v6 = *(v2 + 56);
    v8 = *(v0 + 104);

    if (*(v1 + 64))
    {
LABEL_10:
      v15 = *(v1 + 16);
      if (*(v1 + 40))
      {
        sub_1C1E5243C();
        *(v1 + 24) = v16;
        *(v1 + 32) = v17;
        *(v1 + 40) = 0;
      }

      else
      {
        v18 = *(v1 + 24);
        v19 = *(v1 + 32);
      }

      sub_1C1E5244C();
      v10 = v20;
      v9 = v21;
      *(v1 + 48) = v20;
      *(v1 + 56) = v21;
      *(v1 + 64) = 0;
      goto LABEL_14;
    }
  }

  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
LABEL_14:

  if (v10 >= v7)
  {
    v23 = v7;
  }

  else
  {
    v23 = v10;
  }

  if (v6 > v9)
  {
    v24 = v6;
  }

  else
  {
    v24 = v9;
  }

  if (v23 > v24)
  {
    __break(1u);
  }

  return result;
}

uint64_t Function.hash(into:)()
{
  v0 = *(type metadata accessor for Function() + 48);
  sub_1C1E51F9C();
  sub_1C1E1307C(&qword_1EDE750A0, MEMORY[0x1E69695A8]);
  return sub_1C1E5454C();
}

uint64_t static Function.== infix(_:_:)()
{
  v0 = *(type metadata accessor for Function() + 48);

  return sub_1C1E51F7C();
}

uint64_t Function.hashValue.getter()
{
  sub_1C1E54D7C();
  v0 = *(type metadata accessor for Function() + 48);
  sub_1C1E51F9C();
  sub_1C1E1307C(&qword_1EDE750A0, MEMORY[0x1E69695A8]);
  sub_1C1E5454C();
  return sub_1C1E54DAC();
}

uint64_t sub_1C1E12DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1C1E51F9C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C1E12E38(uint64_t a1)
{
  sub_1C1E54D7C();
  v2 = *(a1 + 48);
  sub_1C1E51F9C();
  sub_1C1E1307C(&qword_1EDE750A0, MEMORY[0x1E69695A8]);
  sub_1C1E5454C();
  return sub_1C1E54DAC();
}

uint64_t sub_1C1E12ED4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  sub_1C1E51F9C();
  sub_1C1E1307C(&qword_1EDE750A0, MEMORY[0x1E69695A8]);
  return sub_1C1E5454C();
}

uint64_t sub_1C1E12F54(uint64_t a1, uint64_t a2)
{
  sub_1C1E54D7C();
  v3 = *(a2 + 48);
  sub_1C1E51F9C();
  sub_1C1E1307C(&qword_1EDE750A0, MEMORY[0x1E69695A8]);
  sub_1C1E5454C();
  return sub_1C1E54DAC();
}

uint64_t sub_1C1E1307C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C1E130FC()
{
  sub_1C1E13200();
  if (v0 <= 0x3F)
  {
    sub_1C1DC0DD4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Function.FunctionSamplerWrapper();
      sub_1C1E13250();
      if (v2 <= 0x3F)
      {
        sub_1C1E51F9C();
        if (v3 <= 0x3F)
        {
          sub_1C1E132A4();
          if (v4 <= 0x3F)
          {
            sub_1C1E51F5C();
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

unint64_t sub_1C1E13200()
{
  result = qword_1EDE73798;
  if (!qword_1EDE73798)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDE73798);
  }

  return result;
}

void sub_1C1E13250()
{
  if (!qword_1EBF1D4E8)
  {
    type metadata accessor for Function.FunctionSamplerWrapper();
    v0 = sub_1C1E549CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF1D4E8);
    }
  }
}

void sub_1C1E132A4()
{
  if (!qword_1EDE73B08)
  {
    v0 = sub_1C1E549CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE73B08);
    }
  }
}

double sub_1C1E13354(double a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = a2;
  v8 = a1;
  v3(&v6, &v8, &v7);
  return v6;
}

void sub_1C1E13398(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a3 = v5(*a1, *a2);
}

double sub_1C1E133D0(double a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t sub_1C1E13444@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v75 = sub_1C1E51E2C();
  v74 = *(v75 - 8);
  v2 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1E51F9C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v84 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1C1E53CBC();
  v80 = *(v82 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4F0, &qword_1C1E58E78);
  v9 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v88 = (&v73 - v10);
  v79 = sub_1C1E5218C();
  v78 = *(v79 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for TypesetCanvasView();
  v13 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4F8, &qword_1C1E58E80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v73 - v20;
  v22 = sub_1C1E5226C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v73 - v28;
  type metadata accessor for Utilities();
  v30 = v1;
  v32 = *v1;
  v31 = v1[1];

  v76 = v32;
  v86 = v31;
  sub_1C1E08B64(v32, v31, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1C1E13DC4(v21);
    v33 = v30[5];
    v34 = v30[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1E55C40;
    v36 = *MEMORY[0x1E6992250];
    *(inited + 32) = *MEMORY[0x1E6992250];
    v37 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v38 = v36;
    v39 = v86;

    v40 = [v37 initWithUnsignedInteger_];
    v41 = sub_1C1DC0D28(0, &qword_1EBF1C808, 0x1E696AD98);
    *(inited + 40) = v40;
    v42 = *MEMORY[0x1E6992228];
    *(inited + 64) = v41;
    *(inited + 72) = v42;
    v43 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v44 = v42;
    v45 = [v43 initWithBool_];
    *(inited + 104) = v41;
    *(inited + 80) = v45;
    sub_1C1DF776C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C810, &qword_1C1E576E0);
    swift_arrayDestroy();
    (*(v80 + 104))(v83, *MEMORY[0x1E6992100], v82);
    sub_1C1E51F8C();
    v46 = sub_1C1E5444C();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v49 = v76;
    sub_1C1E5445C();
    sub_1C1E53D4C();
    v50 = sub_1C1E53B0C();
    v52 = v51;

    v53 = HIBYTE(v52) & 0xF;
    if ((v52 & 0x2000000000000000) == 0)
    {
      v53 = v50 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      goto LABEL_5;
    }

    v90 = v49;
    v91 = v39;
    v62 = v73;
    sub_1C1E51E1C();
    sub_1C1DC733C();
    v63 = sub_1C1E549FC();
    v65 = v64;
    (*(v74 + 8))(v62, v75);

    v66 = HIBYTE(v65) & 0xF;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v66 = v63 & 0xFFFFFFFFFFFFLL;
    }

    if (!v66)
    {
LABEL_5:

      v49 = sub_1C1E53B0C();
      v39 = v54;

      v55 = 0;
    }

    else
    {

      v55 = 1;
    }

    v67 = v88;
    *v88 = v49;
    v67[1] = v39;
    v67[2] = v33;
    *(v67 + 24) = v55;
    v67[4] = v34;
    swift_storeEnumTagMultiPayload();
    sub_1C1E13E2C();
    sub_1C1DE2904();
    return sub_1C1E52CEC();
  }

  else
  {

    (*(v23 + 32))(v29, v21, v22);
    v56 = v23;
    v57 = *(v23 + 16);
    v86 = v29;
    v57(v26, v29, v22);
    v58 = v30[5];
    v59 = v30[6];
    v57(v15, v26, v22);
    *&v15[*(v85 + 20)] = v58;
    if (v59)
    {
      sub_1C1DC0D28(0, &qword_1EDE737A8, 0x1E69DC888);
      swift_retain_n();
      v60 = sub_1C1E5499C();
      v61 = [v60 CGColor];
    }

    else
    {
      v60 = [objc_opt_self() labelColor];
      v61 = [v60 CGColor];
    }

    v69 = v61;
    v70 = v77;
    sub_1C1E5217C();
    sub_1C1E5225C();

    (*(v78 + 8))(v70, v79);
    v71 = *(v56 + 8);
    v71(v26, v22);
    v72 = v81;
    sub_1C1E13E84(v15, v81);
    sub_1C1E13EE8(v72, v88);
    swift_storeEnumTagMultiPayload();
    sub_1C1E13E2C();
    sub_1C1DE2904();
    sub_1C1E52CEC();
    sub_1C1E13F4C(v72);
    return (v71)(v86, v22);
  }
}

uint64_t sub_1C1E13DC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4F8, &qword_1C1E58E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C1E13E2C()
{
  result = qword_1EBF1D500;
  if (!qword_1EBF1D500)
  {
    type metadata accessor for TypesetCanvasView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D500);
  }

  return result;
}

uint64_t sub_1C1E13E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesetCanvasView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E13EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesetCanvasView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E13F4C(uint64_t a1)
{
  v2 = type metadata accessor for TypesetCanvasView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C1E13FA8()
{
  result = qword_1EBF1D508;
  if (!qword_1EBF1D508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D510, &qword_1C1E58E88);
    sub_1C1E13E2C();
    sub_1C1DE2904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D508);
  }

  return result;
}

id sub_1C1E140C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneFingerDragRepresentable.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for OneFingerDragRepresentable.Coordinator()
{
  result = qword_1EBF1D518;
  if (!qword_1EBF1D518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1E141CC()
{
  result = sub_1C1E5350C();
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

uint64_t sub_1C1E14268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C1E142B0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C1E1431C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C1E5350C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 40);
  v12 = *(v6 + 16);
  v12(v10, a1, v5, v8);
  v13 = type metadata accessor for OneFingerDragRepresentable.Coordinator();
  v14 = objc_allocWithZone(v13);
  (v12)(&v14[OBJC_IVAR____TtCV11CalculateUI26OneFingerDragRepresentable11Coordinator_converter], v10, v5);
  *&v14[OBJC_IVAR____TtCV11CalculateUI26OneFingerDragRepresentable11Coordinator_graphViewModel] = v11;
  v17.receiver = v14;
  v17.super_class = v13;

  v15 = objc_msgSendSuper2(&v17, sel_init);
  result = (*(v6 + 8))(v10, v5);
  *a2 = v15;
  return result;
}

uint64_t sub_1C1E14488(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = *v2;
  v5[1] = v3;
  v6 = *(v2 + 32);
  return sub_1C1E14AB8(a1, a2, v5);
}

BOOL sub_1C1E144BC(void *a1)
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v38 - v4;
  v44 = sub_1C1E52CFC();
  v42 = *(v44 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1E5350C();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D540, &qword_1C1E58F98);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v38 - v14;
  v16 = sub_1C1E522DC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v1;
  v38 = OBJC_IVAR____TtCV11CalculateUI26OneFingerDragRepresentable11Coordinator_graphViewModel;
  v21 = *(v1 + OBJC_IVAR____TtCV11CalculateUI26OneFingerDragRepresentable11Coordinator_graphViewModel);
  swift_getKeyPath();
  v49 = v21;
  sub_1C1DF2D00();

  sub_1C1E520BC();

  v22 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
  swift_beginAccess();
  sub_1C1E14D8C(v21 + v22, v15);

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C1DC1870(v15, &qword_1EBF1D540, &qword_1C1E58F98);
    return 0;
  }

  (*(v17 + 32))(v20, v15, v16);
  v24 = v40;
  v23 = v41;
  v25 = v45;
  (*(v40 + 16))(v11, v45 + OBJC_IVAR____TtCV11CalculateUI26OneFingerDragRepresentable11Coordinator_converter, v41);
  [v43 locationInView_];
  sub_1C1E52D9C();
  v26 = v44;
  sub_1C1E534EC();
  (*(v42 + 8))(v7, v26);
  (*(v24 + 8))(v11, v23);
  sub_1C1E522BC();
  if (v48)
  {
    (*(v17 + 8))(v20, v16);
    return 0;
  }

  v29 = v46;
  v28 = v47;
  v30 = *(v25 + v38);

  sub_1C1E24AC8();
  v32 = v31;
  sub_1C1E24AC8();
  sub_1C1E25C2C(round(vabdd_f64(v32, v33)));
  v34 = v39;
  sub_1C1E24334(v39, v29, v28, v35);

  (*(v17 + 8))(v20, v16);
  v36 = type metadata accessor for Function();
  v37 = (*(*(v36 - 8) + 48))(v34, 1, v36) != 1;
  sub_1C1DC1870(v34, &qword_1EBF1C758, &qword_1C1E579C0);
  return v37;
}

id sub_1C1E149D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  [v0 setMinimumNumberOfTouches_];
  [v0 setMaximumNumberOfTouches_];
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF1D530, &unk_1C1E58F88);
  sub_1C1E52F9C();
  [v1 setDelegate_];

  v2 = sub_1C1E545BC();
  [v1 setName_];

  return v1;
}

uint64_t sub_1C1E14AB8(void *a1, uint64_t a2, __int128 *a3)
{
  v5 = sub_1C1E52CFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1E5350C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  *&v13 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF1D530, &unk_1C1E58F88);
    sub_1C1E52FAC();
    sub_1C1E52D9C();
    sub_1C1E534FC();
    v17 = v16;
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v15, v10);
    v20 = a3[1];
    v33 = *a3;
    v34 = v20;
    v35 = *(a3 + 32);
    v30 = v17;
    v31 = v19;
    v32 = 0;
  }

  else
  {
    if ([a1 state] == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF1D530, &unk_1C1E58F88);
      sub_1C1E52FAC();
      sub_1C1E52D9C();
      sub_1C1E534FC();
      v22 = v21;
      v24 = v23;
      (*(v6 + 8))(v9, v5);
      (*(v11 + 8))(v15, v10);
      v25 = a3[1];
      v33 = *a3;
      v34 = v25;
      v35 = *(a3 + 32);
      v30 = v22;
      v31 = v24;
      v26 = 1;
    }

    else
    {
      v27 = a3[1];
      v33 = *a3;
      v34 = v27;
      v35 = *(a3 + 32);
      v30 = 0;
      v31 = 0;
      v26 = 2;
    }

    v32 = v26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D528, &qword_1C1E58F80);
  return sub_1C1E537AC();
}

uint64_t sub_1C1E14D8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D540, &qword_1C1E58F98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GraphViewModel.__allocating_init(functions:initialXAxisBounds:initialYAxisBounds:isSelected:)(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  GraphViewModel.init(functions:initialXAxisBounds:initialYAxisBounds:isSelected:)(a1, a2, a3, a4, a5, a6);
  return v15;
}

uint64_t GraphViewModel.init(functions:initialXAxisBounds:initialYAxisBounds:isSelected:)(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = sub_1C1E5232C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = 0;
  sub_1C1E51F3C();
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = 0x4008000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = 0x4008000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = 0x4008000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom) = 0x3FF0000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio) = 0x3FE0000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY) = 0x3FE0000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ) = 0x3FE0000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX) = 0x4008000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY) = 0x4008000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ) = 0x4008000000000000;
  v19 = v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 1;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin) = 0;
  v20 = v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_lock;
  *(v7 + v22) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v23 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock;
  *(v7 + v23) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions) = MEMORY[0x1E69E7CC0];
  v24 = (v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
  *v26 = 0;
  v26[1] = 0;
  v27 = v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  v28 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
  v29 = sub_1C1E522DC();
  (*(*(v29 - 8) + 56))(v7 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
  v31 = sub_1C1E51F9C();
  (*(*(v31 - 8) + 56))(v7 + v30, 1, 1, v31);
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_baseAxesIntervals) = &unk_1F4187040;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction) = 0;
  sub_1C1E5231C();
  (*(v15 + 32))(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose, v18, v14);
  sub_1C1E520EC();
  v32 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;
  v33 = *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  *(v7 + v32) = a1;
  v34 = (v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  *v34 = a3;
  v34[1] = a4;
  v35 = (v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  *v35 = a5;
  v35[1] = a6;
  v36 = (v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds) = xmmword_1C1E58FD0;
  *(v7 + 17) = a2;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType) = 0;
  v37 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(v7 + v37) = (a3 + a4) * 0.5;
  v38 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(v7 + v38) = (a5 + a6) * 0.5;
  swift_getKeyPath();
  v50[12] = v7;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  v39 = *v36;
  swift_getKeyPath();
  v50[9] = v7;
  sub_1C1E520BC();

  v40 = (v39 + v36[1]) * 0.5;
  v41 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(v7 + v41) = v40;
  v42 = sqrt(a4 - a3);
  v43 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(v7 + v43) = v42;
  v44 = sqrt(a6 - a5);
  v45 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(v7 + v45) = v44;
  swift_getKeyPath();
  v50[0] = v7;
  sub_1C1E520BC();

  v46 = v36[1];
  swift_getKeyPath();
  v50[0] = v7;
  sub_1C1E520BC();

  v47 = sqrt(v46 - *v36);
  v48 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(v7 + v48) = v47;
  sub_1C1E1A2C0();
  return v7;
}

uint64_t sub_1C1E154DC(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t sub_1C1E155F8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t sub_1C1E15710(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  result = swift_beginAccess();
  v9 = *(a1 + 32);
  if ((*(v7 + 32) & 1) == 0)
  {
    if (*(a1 + 32))
    {
      goto LABEL_7;
    }

    v12.origin.x = v3;
    v12.origin.y = v4;
    v12.size.width = v5;
    v12.size.height = v6;
    result = CGRectEqualToRect(*v7, v12);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v10 = *(a1 + 16);
    *v7 = *a1;
    *(v7 + 16) = v10;
    *(v7 + 32) = *(a1 + 32);
    return result;
  }

  if (*(a1 + 32))
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520AC();
}

uint64_t sub_1C1E158DC(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t sub_1C1E15A20(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;
  v5 = *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  v7 = sub_1C1E26580(v6, a1);

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;

    v10 = (v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
    if (*(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel + 8))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
      sub_1C1E520AC();
    }

    else
    {
      *v10 = 0;
      v10[1] = 0;
    }

    v13 = (v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
    if (*(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel + 8))
    {
      v14 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v14);
      sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
      sub_1C1E520AC();
    }

    else
    {
      *v13 = 0;
      v13[1] = 0;
    }

    v15 = (v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
    if (*(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel + 8))
    {
      v16 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v16);
      sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
      sub_1C1E520AC();
    }

    else
    {
      *v15 = 0;
      v15[1] = 0;
    }
  }

  else
  {
    v12 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v12);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t sub_1C1E15E4C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      if (*v6 == a1 && v7 == a2)
      {
        goto LABEL_8;
      }

      v9 = v6[1];
      if (sub_1C1E54D2C())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1C1E15FF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5E0, &qword_1C1E592F8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
  swift_beginAccess();
  sub_1C1DC1424(v1 + v7, v6, &qword_1EBF1D5E0, &qword_1C1E592F8);
  v8 = sub_1C1E28868(v6, a1);
  sub_1C1DC1870(v6, &qword_1EBF1D5E0, &qword_1C1E592F8);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  else
  {
    sub_1C1DC1424(a1, v6, &qword_1EBF1D5E0, &qword_1C1E592F8);
    swift_beginAccess();
    sub_1C1E28BBC(v6, v1 + v7, &qword_1EBF1D5E0, &qword_1C1E592F8);
    swift_endAccess();
  }

  return sub_1C1DC1870(a1, &qword_1EBF1D5E0, &qword_1C1E592F8);
}

uint64_t sub_1C1E16220(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1E5232C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_1C1DC4DB0(&qword_1EBF1D588, MEMORY[0x1E695AF98]);
  v15[0] = a1;
  LOBYTE(a1) = sub_1C1E545AC();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_1C1E16538(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, __n128, __n128))
{
  v10 = (v6 + *a1);
  v11 = swift_beginAccess();
  v12.n128_f64[0] = *v10;
  v13.n128_f64[0] = v10[1];
  if (*v10 == a2 && v13.n128_f64[0] == a3)
  {
    *v10 = a2;
    v10[1] = a3;
    return a6(v11, v12, v13);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }
}

uint64_t sub_1C1E166B0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t sub_1C1E167D4(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  result = swift_beginAccess();
  if (v2 == *(v1 + v3))
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t GraphViewModel.__allocating_init(functions:initialXAxisBounds:initialYAxisBounds:initialZAxisBounds:chartPose:isSelected:)(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v59 = a3;
  v58 = a2;
  v17 = sub_1C1E5232C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v9 + 48);
  v23 = *(v9 + 52);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  sub_1C1E51F3C();
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = 0;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = 0;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = 0;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = 0x4008000000000000;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = 0x4008000000000000;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = 0x4008000000000000;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = 0;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom) = 0x3FF0000000000000;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX) = 0;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY) = 0;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ) = 0;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio) = 0x3FE0000000000000;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY) = 0x3FE0000000000000;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ) = 0x3FE0000000000000;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX) = 0x4008000000000000;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY) = 0x4008000000000000;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ) = 0x4008000000000000;
  v25 = v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 1;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter) = 0;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes) = 0;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin) = 0;
  v26 = v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_lock;
  *(v24 + v28) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v29 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock;
  *(v24 + v29) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions) = MEMORY[0x1E69E7CC0];
  v30 = (v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
  *v32 = 0;
  v32[1] = 0;
  v33 = v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = 1;
  v34 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
  v35 = sub_1C1E522DC();
  (*(*(v35 - 8) + 56))(v24 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
  v37 = sub_1C1E51F9C();
  (*(*(v37 - 8) + 56))(v24 + v36, 1, 1, v37);
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_baseAxesIntervals) = &unk_1F4187078;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction) = 0;
  sub_1C1E5231C();
  v38 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  v39 = *(v18 + 32);
  v39(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose, v21, v17);
  sub_1C1E520EC();
  v40 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;
  v41 = *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  *(v24 + v40) = a1;
  v42 = (v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  *v42 = a4;
  v42[1] = a5;
  v43 = (v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  *v43 = a6;
  v43[1] = a7;
  v44 = (v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  *v44 = a8;
  v44[1] = a9;
  v45 = v58;
  (*(v18 + 16))(v21, v58, v17);
  v46 = *(v18 + 8);
  v46(v24 + v38, v17);
  v39(v24 + v38, v21, v17);
  *(v24 + 17) = v59;
  *(v24 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType) = 1;
  v47 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(v24 + v47) = (a4 + a5) * 0.5;
  v48 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(v24 + v48) = (a6 + a7) * 0.5;
  v49 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(v24 + v49) = (a8 + a9) * 0.5;
  v50 = sqrt(a5 - a4);
  v51 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(v24 + v51) = v50;
  v52 = sqrt(a7 - a6);
  v53 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(v24 + v53) = v52;
  v54 = sqrt(a9 - a8);
  v55 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(v24 + v55) = v54;
  sub_1C1E1A2C0();
  v46(v45, v17);
  return v24;
}

uint64_t GraphViewModel.init(functions:initialXAxisBounds:initialYAxisBounds:initialZAxisBounds:chartPose:isSelected:)(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v56 = a3;
  v55 = a2;
  v17 = sub_1C1E5232C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 16) = 0;
  sub_1C1E51F3C();
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = 0x4008000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = 0x4008000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = 0x4008000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom) = 0x3FF0000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio) = 0x3FE0000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY) = 0x3FE0000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ) = 0x3FE0000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX) = 0x4008000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY) = 0x4008000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ) = 0x4008000000000000;
  v22 = v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 1;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin) = 0;
  v23 = v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_lock;
  *(v9 + v25) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v26 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock;
  *(v9 + v26) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions) = MEMORY[0x1E69E7CC0];
  v27 = (v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
  *v29 = 0;
  v29[1] = 0;
  v30 = v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  v31 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
  v32 = sub_1C1E522DC();
  (*(*(v32 - 8) + 56))(v9 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
  v34 = sub_1C1E51F9C();
  (*(*(v34 - 8) + 56))(v9 + v33, 1, 1, v34);
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_baseAxesIntervals) = &unk_1F41870B0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction) = 0;
  sub_1C1E5231C();
  v35 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  v36 = *(v18 + 32);
  v36(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose, v21, v17);
  sub_1C1E520EC();
  v37 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;
  v38 = *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  *(v9 + v37) = a1;
  v39 = (v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  *v39 = a4;
  v39[1] = a5;
  v40 = (v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  *v40 = a6;
  v40[1] = a7;
  v41 = (v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  *v41 = a8;
  v41[1] = a9;
  v42 = v55;
  (*(v18 + 16))(v21, v55, v17);
  v43 = *(v18 + 8);
  v43(v9 + v35, v17);
  v36(v9 + v35, v21, v17);
  *(v9 + 17) = v56;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType) = 1;
  v44 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(v9 + v44) = (a4 + a5) * 0.5;
  v45 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(v9 + v45) = (a6 + a7) * 0.5;
  v46 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(v9 + v46) = (a8 + a9) * 0.5;
  v47 = sqrt(a5 - a4);
  v48 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(v9 + v48) = v47;
  v49 = sqrt(a7 - a6);
  v50 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(v9 + v50) = v49;
  v51 = sqrt(a9 - a8);
  v52 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(v9 + v52) = v51;
  sub_1C1E1A2C0();
  v43(v42, v17);
  return v9;
}

uint64_t GraphViewModel.GraphType.hashValue.getter()
{
  v1 = *v0;
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](v1);
  return sub_1C1E54DAC();
}

uint64_t GraphViewModel.State.hashValue.getter()
{
  v1 = *v0;
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](v1);
  return sub_1C1E54DAC();
}

uint64_t sub_1C1E175C0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

void (*sub_1C1E1767C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E17570();
  return sub_1C1E177B4;
}

uint64_t sub_1C1E17810@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1C1E178F4()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  return *(v0 + 17);
}

uint64_t sub_1C1E179A8(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 17) = a2;
  return result;
}

void (*sub_1C1E179FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E177C0();
  return sub_1C1E17B34;
}

uint64_t sub_1C1E17B40()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  return *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal);
}

uint64_t sub_1C1E17BE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *a2 = *(v3 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal);
  return result;
}

double sub_1C1E17CC0()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E17D04(double a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1E17DB4()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E17DF8(double a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1E17EA8()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E17EEC(double a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1E17F9C()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E17FE0(double a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1E18090()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E180D4(double a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1E18184()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E181C8(double a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1E18278()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E182BC(double a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1E1836C()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1C1E183D0(void *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  v3[4] = *v1;
  v3[5] = v4;
  swift_beginAccess();
  return sub_1C1E18480;
}

double sub_1C1E18498()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1C1E184FC(void *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  v3[4] = *v1;
  v3[5] = v4;
  swift_beginAccess();
  return sub_1C1E185AC;
}

double sub_1C1E185C4()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E18628(uint64_t *a1, double a2)
{
  v4 = *v2;
  v5 = *a1;
  result = swift_beginAccess();
  *(v2 + v5) = a2;
  if (a2 < 0.4)
  {
    MEMORY[0x1EEE9AC00](result);
    sub_1C1E5395C();
    sub_1C1E5291C();
  }

  return result;
}

void (*sub_1C1E18718(void *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  v3[4] = *v1;
  v3[5] = v4;
  swift_beginAccess();
  return sub_1C1E187C8;
}

void sub_1C1E187E0(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0 && *(v3[3] + v3[5]) < 0.4)
  {
    v5 = v3[4];
    MEMORY[0x1EEE9AC00](v4);
    sub_1C1E5395C();
    sub_1C1E5291C();
  }

  free(v3);
}

double sub_1C1E188D0(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *a1;
  swift_beginAccess();
  return *(v1 + v5) * (v4 * *(v1 + v5));
}

__n128 sub_1C1E189AC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v4 = v3 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  swift_beginAccess();
  v5 = *(v4 + 32);
  result = *v4;
  v7 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

uint64_t sub_1C1E18A7C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *a2;
  return sub_1C1E15710(v5);
}

__n128 sub_1C1E18ABC@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v3 = v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

void (*sub_1C1E18B8C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E1894C();
  return sub_1C1E18CC4;
}

uint64_t sub_1C1E18D80(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_1C1E18DDC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E18CD0();
  return sub_1C1E18F14;
}

uint64_t sub_1C1E18F94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_1C1E19098(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1C1E1914C(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_1C1E191A8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E18F20();
  return sub_1C1E192E0;
}

uint64_t sub_1C1E1939C(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_1C1E193F8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E192EC();
  return sub_1C1E19530;
}

uint64_t sub_1C1E19548(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C1E19614(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1C1E1965C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C1E1971C()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v1 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);
}

uint64_t sub_1C1E197C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *a2 = *(v3 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);
}

uint64_t sub_1C1E1987C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1E15A20(v4);
}

uint64_t sub_1C1E198A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);
  *(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions) = a2;

  v5 = (a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
  if (*(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel + 8))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
  }

  v7 = (a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
  if (*(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel + 8))
  {
    v8 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v8);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  else
  {
    *v7 = 0;
    v7[1] = 0;
  }

  v9 = (a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
  if (*(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel + 8))
  {
    v10 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v10);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  else
  {
    *v9 = 0;
    v9[1] = 0;
  }

  return result;
}

id sub_1C1E19BA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v4 lock];
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v5 = *(v3 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  result = [v4 unlock];
  *a2 = v5;
  return result;
}

id sub_1C1E19C90(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);

  [v3 lock];
  sub_1C1E15A20(v2);

  return [v3 unlock];
}

uint64_t sub_1C1E19D04()
{
  v1 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v1 lock];
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v2 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v1 unlock];
  return v2;
}

id sub_1C1E19DE4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v3 lock];
  sub_1C1E15A20(a1);

  return [v3 unlock];
}

id (*sub_1C1E19E4C(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  a1[2] = v1;
  a1[3] = v3;
  [v3 lock];
  swift_getKeyPath();
  a1[1] = v1;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v4 = *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v3 unlock];
  *a1 = v4;
  return sub_1C1E19F54;
}

id sub_1C1E19F54(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (a2)
  {
    v5 = *a1;

    [v4 lock];
    sub_1C1E15A20(v2);
    [v4 unlock];
  }

  else
  {
    [*(a1 + 24) lock];
    sub_1C1E15A20(v2);

    return [v4 unlock];
  }
}

uint64_t sub_1C1E1A080(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1C1E167D4(&v4);
}

uint64_t sub_1C1E1A0B8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

void (*sub_1C1E1A17C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E1A00C();
  return sub_1C1E1A2B4;
}

uint64_t sub_1C1E1A2C0()
{
  v1 = v0;
  sub_1C1E1C5E4(&v56);
  v2 = v56;
  v3 = v57;
  v5 = v58;
  v4 = v59;
  v7 = v60;
  v6 = v61;
  swift_getKeyPath();
  v56 = v0;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v8 = (*&v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  v9 = v8[1];
  if (v2 + -0.01 < *v8 && *v8 < v2 + 0.01 && v3 + -0.01 < v9 && v9 < v3 + 0.01)
  {
    swift_getKeyPath();
    v56 = v0;
    sub_1C1E520BC();

    v14 = (*&v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
    swift_beginAccess();
    v13 = 1;
    if (v5 + -0.01 < *v14 && *v14 < v5 + 0.01)
    {
      v15 = v14[1];
      if (v4 + -0.01 < v15)
      {
        v13 = v15 >= v4 + 0.01;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  swift_getKeyPath();
  v56 = v1;
  sub_1C1E520BC();

  v16 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  swift_beginAccess();
  v17 = *(*&v1 + v16);
  v18 = v17 | v13;
  if (v17 == 1 && !v13)
  {
    swift_getKeyPath();
    v56 = v1;
    sub_1C1E520BC();

    v19 = (*&v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
    swift_beginAccess();
    v18 = 1;
    if (v7 + -0.01 < *v19 && *v19 < v7 + 0.01)
    {
      v20 = v19[1];
      if (v6 + -0.01 < v20)
      {
        v18 = v20 >= v6 + 0.01;
      }
    }
  }

  v21 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
  swift_beginAccess();
  if ((v18 & 1) == *(*&v1 + v21))
  {
    *(*&v1 + v21) = v18 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v56 = v1;
    sub_1C1E520AC();
  }

  sub_1C1E1AB64(&v56);
  v24 = v56;
  v23 = v57;
  v26 = v58;
  v25 = v59;
  v28 = v60;
  v27 = v61;
  swift_getKeyPath();
  v56 = v1;
  sub_1C1E520BC();

  v29 = 1;
  if (v24 + -0.01 < *v8 && *v8 < v24 + 0.01)
  {
    v30 = v8[1];
    if (v23 + -0.01 < v30 && v30 < v23 + 0.01)
    {
      swift_getKeyPath();
      v56 = v1;
      sub_1C1E520BC();

      v31 = (*&v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
      swift_beginAccess();
      if (v26 + -0.01 < *v31 && *v31 < v26 + 0.01)
      {
        v32 = v31[1];
        if (v25 + -0.01 < v32)
        {
          v29 = v32 >= v25 + 0.01;
        }
      }
    }
  }

  swift_getKeyPath();
  v56 = v1;
  sub_1C1E520BC();

  v33 = *(*&v1 + v16);
  v34 = v33 | v29;
  if (v33 == 1 && !v29)
  {
    swift_getKeyPath();
    v56 = v1;
    sub_1C1E520BC();

    v35 = (*&v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
    swift_beginAccess();
    v34 = 1;
    if (v28 + -0.01 < *v35 && *v35 < v28 + 0.01)
    {
      v36 = v35[1];
      if (v27 + -0.01 < v36)
      {
        v34 = v36 >= v27 + 0.01;
      }
    }
  }

  v37 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes;
  swift_beginAccess();
  if ((v34 & 1) == *(*&v1 + v37))
  {
    *(*&v1 + v37) = v34 & 1;
  }

  else
  {
    v38 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v38);
    v56 = v1;
    sub_1C1E520AC();
  }

  sub_1C1E1AFAC(&v56);
  v40 = v56;
  v39 = v57;
  v42 = v58;
  v41 = v59;
  v44 = v60;
  v43 = v61;
  swift_getKeyPath();
  v56 = v1;
  sub_1C1E520BC();

  v45 = 1;
  if (v40 + -0.01 < *v8 && *v8 < v40 + 0.01)
  {
    v46 = v8[1];
    if (v39 + -0.01 < v46 && v46 < v39 + 0.01)
    {
      swift_getKeyPath();
      v56 = v1;
      sub_1C1E520BC();

      v47 = (*&v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
      swift_beginAccess();
      if (v42 + -0.01 < *v47 && *v47 < v42 + 0.01)
      {
        v48 = v47[1];
        if (v41 + -0.01 < v48)
        {
          v45 = v48 >= v41 + 0.01;
        }
      }
    }
  }

  swift_getKeyPath();
  v56 = v1;
  sub_1C1E520BC();

  v49 = *(*&v1 + v16);
  v50 = v49 | v45;
  if (v49 == 1 && !v45)
  {
    swift_getKeyPath();
    v56 = v1;
    sub_1C1E520BC();

    v51 = (*&v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
    swift_beginAccess();
    v50 = 1;
    if (v44 + -0.01 < *v51 && *v51 < v44 + 0.01)
    {
      v52 = v51[1];
      if (v43 + -0.01 < v52)
      {
        v50 = v52 >= v43 + 0.01;
      }
    }
  }

  v53 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin;
  result = swift_beginAccess();
  if ((v50 & 1) == *(*&v1 + v53))
  {
    *(*&v1 + v53) = v50 & 1;
  }

  else
  {
    v55 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v55);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t sub_1C1E1AB64@<X0>(double *a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v4 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  v5 = v4[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v6 = v5 - *v4;
  swift_getKeyPath();
  sub_1C1E520BC();

  v7 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  v8 = v7[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v9 = v8 - *v7;
  swift_getKeyPath();
  sub_1C1E520BC();

  v10 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  v11 = v10[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v12 = v11 - *v10;
  if (v6 > v9)
  {
    v13 = v6;
  }

  else
  {
    v13 = v9;
  }

  swift_getKeyPath();
  sub_1C1E520BC();

  v14 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  swift_beginAccess();
  if ((*(v2 + v14) & (v13 <= v12)) != 0)
  {
    v13 = v12;
  }

  swift_getKeyPath();
  sub_1C1E520BC();

  v15 = (v13 - v6) * 0.5;
  v16 = *v4 - v15;
  swift_getKeyPath();
  sub_1C1E520BC();

  v18 = v15 + v4[1];
  if (v16 > v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  swift_getKeyPath();
  sub_1C1E520BC();

  v19 = (v13 - v9) * 0.5;
  v20 = *v7 - v19;
  swift_getKeyPath();
  sub_1C1E520BC();

  v21 = v19 + v7[1];
  if (v20 > v21)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_1C1E520BC();

  v22 = (v13 - v12) * 0.5;
  v23 = *v10 - v22;
  swift_getKeyPath();
  sub_1C1E520BC();

  v24 = v22 + v10[1];
  if (v23 <= v24)
  {
    *a1 = v16;
    a1[1] = v18;
    a1[2] = v20;
    a1[3] = v21;
    a1[4] = v23;
    a1[5] = v24;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C1E1AFAC@<X0>(double *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v3 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  v4 = v3[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v5 = v4 - *v3;
  swift_getKeyPath();
  sub_1C1E520BC();

  v6 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  v7 = v6[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v8 = v7 - *v6;
  swift_getKeyPath();
  sub_1C1E520BC();

  v9 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  v10 = v9[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v12 = v10 - *v9;
  v13 = v8 * -0.5;
  v14 = v8 * 0.5;
  v15 = v12 * -0.5;
  v16 = v12 * 0.5;
  if (v5 * -0.5 > v5 * 0.5 || v13 > v14 || v15 > v16)
  {
    __break(1u);
  }

  else
  {
    *a1 = v5 * -0.5;
    a1[1] = v5 * 0.5;
    a1[2] = v13;
    a1[3] = v14;
    a1[4] = v15;
    a1[5] = v16;
  }

  return result;
}

uint64_t sub_1C1E1B224()
{
  v1 = v0;
  v2 = *v0;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v3 = (v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  v4 = *v3;
  swift_getKeyPath();
  v12 = v0;
  sub_1C1E520BC();

  v5 = (v4 + v3[1]) * 0.5;
  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(v12 + v6) = v5;
  swift_getKeyPath();
  sub_1C1E520BC();

  v7 = v3[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v8 = sqrt(v7 - *v3);
  v9 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  v10 = swift_beginAccess();
  *(v12 + v9) = v8;
  if (v8 < 0.4)
  {
    MEMORY[0x1EEE9AC00](v10);
    sub_1C1E5395C();
    sub_1C1E5291C();
  }

  sub_1C1E1A2C0();
  swift_getKeyPath();
  sub_1C1E520BC();

  swift_getKeyPath();
  sub_1C1E520DC();

  *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = (*(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) & 1) == 0;
  swift_getKeyPath();
  sub_1C1E520CC();
}

uint64_t (*sub_1C1E1B540(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1E1B5A4;
}

void (*sub_1C1E1B640(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E1B540(v4);
  return sub_1C1E1B778;
}

uint64_t sub_1C1E1B784()
{
  v1 = v0;
  v2 = *v0;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v3 = (v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  v4 = *v3;
  swift_getKeyPath();
  v12 = v0;
  sub_1C1E520BC();

  v5 = (v4 + v3[1]) * 0.5;
  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(v12 + v6) = v5;
  swift_getKeyPath();
  sub_1C1E520BC();

  v7 = v3[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v8 = sqrt(v7 - *v3);
  v9 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  v10 = swift_beginAccess();
  *(v12 + v9) = v8;
  if (v8 < 0.4)
  {
    MEMORY[0x1EEE9AC00](v10);
    sub_1C1E5395C();
    sub_1C1E5291C();
  }

  sub_1C1E1A2C0();
  swift_getKeyPath();
  sub_1C1E520BC();

  swift_getKeyPath();
  sub_1C1E520DC();

  *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = (*(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) & 1) == 0;
  swift_getKeyPath();
  sub_1C1E520CC();
}

uint64_t (*sub_1C1E1BAA0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1E1BB04;
}

uint64_t sub_1C1E1BB1C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    return a3(result);
  }

  return result;
}

__n128 sub_1C1E1BB74@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, __n128 *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v6 = *a2;
  swift_beginAccess();
  result = *(v5 + v6);
  *a3 = result;
  return result;
}

double sub_1C1E1BC78(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v4 = v2 + *a2;
  swift_beginAccess();
  result = *v4;
  v6 = *(v4 + 8);
  return result;
}

void (*sub_1C1E1BD64(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E1BAA0(v4);
  return sub_1C1E1BE9C;
}

uint64_t sub_1C1E1BEA8()
{
  v1 = v0;
  v2 = *v0;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v3 = (v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  v4 = *v3;
  swift_getKeyPath();
  v12 = v0;
  sub_1C1E520BC();

  v5 = (v4 + v3[1]) * 0.5;
  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(v12 + v6) = v5;
  swift_getKeyPath();
  sub_1C1E520BC();

  v7 = v3[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v8 = sqrt(v7 - *v3);
  v9 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  v10 = swift_beginAccess();
  *(v12 + v9) = v8;
  if (v8 < 0.4)
  {
    MEMORY[0x1EEE9AC00](v10);
    sub_1C1E5395C();
    sub_1C1E5291C();
  }

  sub_1C1E1A2C0();
  swift_getKeyPath();
  sub_1C1E520BC();

  swift_getKeyPath();
  sub_1C1E520DC();

  *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = (*(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) & 1) == 0;
  swift_getKeyPath();
  sub_1C1E520CC();
}

uint64_t (*sub_1C1E1C1C4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1E1C228;
}

uint64_t type metadata accessor for GraphViewModel()
{
  result = qword_1EDE74840;
  if (!qword_1EDE74840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1E1C2DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

__n128 sub_1C1E1C330()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  swift_beginAccess();
  result = *v1;
  v4 = *(v1 + 16);
  *(v2 + 32) = *(v1 + 32);
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

uint64_t sub_1C1E1C42C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), double a4, double a5)
{
  v8 = (a1 + *a2);
  v9 = swift_beginAccess();
  *v8 = a4;
  v8[1] = a5;
  return a3(v9);
}

void (*sub_1C1E1C4A0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E1C1C4(v4);
  return sub_1C1E1C5D8;
}

uint64_t sub_1C1E1C5E4@<X0>(double *a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = type metadata accessor for Function();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - v12;
  v14 = *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v14 lock];
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  v66 = v2;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  v64 = v15;
  sub_1C1E520BC();

  v16 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;
  v17 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v14 unlock];
  if (!*(v17 + 16))
  {

    v24 = 5.0;
    v22 = -5.0;
    v26 = -5.0;
    v27 = 5.0;
    v28 = -5.0;
    v29 = 5.0;
LABEL_40:
    v57 = v63;
    *v63 = v22;
    v57[1] = v24;
    v57[2] = v26;
    v57[3] = v27;
    v57[4] = v28;
    v57[5] = v29;
    return result;
  }

  v62 = v4;
  v59 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  sub_1C1DE160C(v17 + v59, v11);

  sub_1C1DF7E98(v11, v13);
  v60 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_lock);
  [v60 lock];
  v18 = *(v13 + 12);
  v19 = v16;
  if (*(v18 + 40) == 1)
  {
    v20 = *(v18 + 16);
    sub_1C1E5243C();
    v22 = v21;
    v24 = v23;
    *(v18 + 24) = v21;
    *(v18 + 32) = v23;
    *(v18 + 40) = 0;
  }

  else
  {
    v22 = *(v18 + 24);
    v24 = *(v18 + 32);
  }

  Function.defaultYDomain.getter();
  v26 = v30;
  v27 = v31;
  swift_getKeyPath();
  v66 = v2;
  sub_1C1E520BC();

  v32 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  swift_beginAccess();
  v33 = *(v2 + v32);
  v34 = v62;
  v61 = v13;
  if (v33 == 1)
  {
    Function.defaultZDomain.getter();
    v28 = v35;
    v29 = v36;
  }

  else
  {
    v28 = -5.0;
    v29 = 5.0;
  }

  [v14 lock];
  swift_getKeyPath();
  v65 = v2;
  sub_1C1E520BC();

  v37 = *(v2 + v19);

  [v14 unlock];
  v38 = *(v37 + 16);
  if (!v38)
  {
LABEL_39:

    [v60 unlock];
    result = sub_1C1DE1670(v61);
    goto LABEL_40;
  }

  v58 = v37;
  v39 = v37 + v59;
  v40 = *(v34 + 72);
  while (1)
  {
    result = sub_1C1DE160C(v39, v8);
    v41 = *(v8 + 12);
    if (*(v41 + 40) == 1)
    {
      v42 = *(v41 + 16);
      result = sub_1C1E5243C();
      *(v41 + 24) = v43;
      *(v41 + 32) = v44;
      *(v41 + 40) = 0;
    }

    else
    {
      v43 = *(v41 + 24);
      v44 = *(v41 + 32);
    }

    if (v43 < v22)
    {
      v22 = v43;
    }

    if (v24 <= v44)
    {
      v24 = v44;
    }

    if (v22 > v24)
    {
      break;
    }

    v45 = *(v8 + 13);
    if (v45)
    {
      if (*(v45 + 40))
      {
        v46 = *(v45 + 16);
        v47 = *(v8 + 13);

        sub_1C1E5243C();
        v49 = v48;
        v51 = v50;
        *(v45 + 24) = v48;
        *(v45 + 32) = v50;
        *(v45 + 40) = 0;
      }

      else
      {
        v49 = *(v45 + 24);
        v51 = *(v45 + 32);
      }
    }

    else if (*(v41 + 64))
    {
      v52 = *(v41 + 16);
      result = sub_1C1E5244C();
      v49 = v53;
      v51 = v54;
      *(v41 + 48) = v53;
      *(v41 + 56) = v54;
      *(v41 + 64) = 0;
    }

    else
    {
      v49 = *(v41 + 48);
      v51 = *(v41 + 56);
    }

    if (v49 < v26)
    {
      v26 = v49;
    }

    if (v27 <= v51)
    {
      v27 = v51;
    }

    if (v26 > v27)
    {
      goto LABEL_42;
    }

    swift_getKeyPath();
    v65 = v2;
    sub_1C1E520BC();

    if (*(v2 + v32))
    {
      Function.defaultZDomain.getter();
      if (v55 < v28)
      {
        v28 = v55;
      }

      if (v29 <= v56)
      {
        v29 = v56;
      }

      if (v28 > v29)
      {
        __break(1u);
        goto LABEL_39;
      }
    }

    sub_1C1DE1670(v8);
    v39 += v40;
    if (!--v38)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1C1E1CB98(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v4 = (v2 + *a2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_1C1E1CC4C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_1C1E1CD1C()
{
  v1 = v0;
  v2 = type metadata accessor for Function();
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D590, &qword_1C1E59210);
  v53 = *(v56 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v43 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D598, &qword_1C1E59218);
  v48 = *(v55 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A0, &qword_1C1E59220);
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v43 - v13;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  v59 = v0;
  v15 = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v57 = (v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
  if (!*(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel + 8))
  {
    v16 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
    [v16 lock];
    swift_getKeyPath();
    v54 = v14;
    v59 = v0;
    sub_1C1E520BC();

    v17 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;
    v18 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

    [v16 unlock];
    v19 = *(v18 + 16);

    if (v19)
    {
      v45 = v10;
      [v16 lock];
      swift_getKeyPath();
      v59 = v1;
      v46 = v15;
      sub_1C1E520BC();

      v20 = *(v1 + v17);

      [v16 unlock];
      v21 = *(v20 + 16);
      if (v21)
      {
        v44 = v1;
        v59 = MEMORY[0x1E69E7CC0];
        sub_1C1E26720(0, v21, 0);
        v22 = v59;
        v23 = *(v47 + 80);
        v43 = v20;
        v24 = v20 + ((v23 + 32) & ~v23);
        v25 = *(v47 + 72);
        do
        {
          sub_1C1DE160C(v24, v5);
          v26 = *(v5 + 2);
          v27 = *(v5 + 3);

          sub_1C1DE1670(v5);
          v59 = v22;
          v29 = *(v22 + 16);
          v28 = *(v22 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_1C1E26720((v28 > 1), v29 + 1, 1);
            v22 = v59;
          }

          *(v22 + 16) = v29 + 1;
          v30 = v22 + 16 * v29;
          *(v30 + 32) = v26;
          *(v30 + 40) = v27;
          v24 += v25;
          --v21;
        }

        while (v21);

        v1 = v44;
      }

      else
      {
      }

      v31 = v56;
      v59 = MEMORY[0x1E69E7CD0];

      v33 = sub_1C1E26A24(v32);
      v47 = v33;

      v58 = v33;
      v34 = v48;
      v35 = v45;
      (*(v48 + 104))(v45, *MEMORY[0x1E6968638], v55);
      v36 = v53;
      v37 = v50;
      (*(v53 + 104))(v50, *MEMORY[0x1E6968650], v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A8, &qword_1C1E5A8C0);
      sub_1C1DC1124(&qword_1EBF1D5B0, &qword_1EBF1D5A8, &qword_1C1E5A8C0);
      v38 = v49;
      sub_1C1E51DFC();
      (*(v36 + 8))(v37, v56);
      (*(v34 + 8))(v35, v55);
      sub_1C1DC1124(&qword_1EBF1D5B8, &qword_1EBF1D5A0, &qword_1C1E59220);
      v39 = v52;
      sub_1C1E547AC();
      (*(v51 + 8))(v38, v39);

      sub_1C1E15DFC(v59, v60);
    }
  }

  swift_getKeyPath();
  v59 = v1;
  sub_1C1E520BC();

  if (v57[1])
  {
    v40 = *v57;
    v41 = v57[1];
  }

  else
  {
    v40 = 120;
  }

  return v40;
}

uint64_t sub_1C1E1D3D4()
{
  v1 = v0;
  v2 = type metadata accessor for Function();
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D590, &qword_1C1E59210);
  v53 = *(v56 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v43 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D598, &qword_1C1E59218);
  v48 = *(v55 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A0, &qword_1C1E59220);
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v43 - v13;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  v59 = v0;
  v15 = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v57 = (v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
  if (!*(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel + 8))
  {
    v16 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
    [v16 lock];
    swift_getKeyPath();
    v54 = v14;
    v59 = v0;
    sub_1C1E520BC();

    v17 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;
    v18 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

    [v16 unlock];
    v19 = *(v18 + 16);

    if (v19)
    {
      v45 = v10;
      [v16 lock];
      swift_getKeyPath();
      v59 = v1;
      v46 = v15;
      sub_1C1E520BC();

      v20 = *(v1 + v17);

      [v16 unlock];
      v21 = *(v20 + 16);
      if (v21)
      {
        v44 = v1;
        v59 = MEMORY[0x1E69E7CC0];
        sub_1C1E26720(0, v21, 0);
        v22 = v59;
        v23 = *(v47 + 80);
        v43 = v20;
        v24 = v20 + ((v23 + 32) & ~v23);
        v25 = *(v47 + 72);
        do
        {
          sub_1C1DE160C(v24, v5);
          v26 = *(v5 + 4);
          v27 = *(v5 + 5);

          sub_1C1DE1670(v5);
          v59 = v22;
          v29 = *(v22 + 16);
          v28 = *(v22 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_1C1E26720((v28 > 1), v29 + 1, 1);
            v22 = v59;
          }

          *(v22 + 16) = v29 + 1;
          v30 = v22 + 16 * v29;
          *(v30 + 32) = v26;
          *(v30 + 40) = v27;
          v24 += v25;
          --v21;
        }

        while (v21);

        v1 = v44;
      }

      else
      {
      }

      v31 = v56;
      v59 = MEMORY[0x1E69E7CD0];

      v33 = sub_1C1E26A24(v32);
      v47 = v33;

      v58 = v33;
      v34 = v48;
      v35 = v45;
      (*(v48 + 104))(v45, *MEMORY[0x1E6968638], v55);
      v36 = v53;
      v37 = v50;
      (*(v53 + 104))(v50, *MEMORY[0x1E6968650], v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A8, &qword_1C1E5A8C0);
      sub_1C1DC1124(&qword_1EBF1D5B0, &qword_1EBF1D5A8, &qword_1C1E5A8C0);
      v38 = v49;
      sub_1C1E51DFC();
      (*(v36 + 8))(v37, v56);
      (*(v34 + 8))(v35, v55);
      sub_1C1DC1124(&qword_1EBF1D5B8, &qword_1EBF1D5A0, &qword_1C1E59220);
      v39 = v52;
      sub_1C1E547AC();
      (*(v51 + 8))(v38, v39);

      sub_1C1E15E24(v59, v60);
    }
  }

  swift_getKeyPath();
  v59 = v1;
  sub_1C1E520BC();

  if (v57[1])
  {
    v40 = *v57;
    v41 = v57[1];
  }

  else
  {
    v40 = 121;
  }

  return v40;
}

uint64_t sub_1C1E1DA8C()
{
  v1 = v0;
  v2 = type metadata accessor for Function();
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D590, &qword_1C1E59210);
  v53 = *(v56 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v43 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D598, &qword_1C1E59218);
  v48 = *(v55 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A0, &qword_1C1E59220);
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v43 - v13;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  v59 = v0;
  v15 = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v57 = (v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
  if (!*(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel + 8))
  {
    v16 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
    [v16 lock];
    swift_getKeyPath();
    v54 = v14;
    v59 = v0;
    sub_1C1E520BC();

    v17 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;
    v18 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

    [v16 unlock];
    v19 = *(v18 + 16);

    if (v19)
    {
      v45 = v10;
      [v16 lock];
      swift_getKeyPath();
      v59 = v1;
      v46 = v15;
      sub_1C1E520BC();

      v20 = *(v1 + v17);

      [v16 unlock];
      v21 = *(v20 + 16);
      if (v21)
      {
        v44 = v1;
        v59 = MEMORY[0x1E69E7CC0];
        sub_1C1E26720(0, v21, 0);
        v22 = v59;
        v23 = *(v47 + 80);
        v43 = v20;
        v24 = v20 + ((v23 + 32) & ~v23);
        v25 = *(v47 + 72);
        do
        {
          sub_1C1DE160C(v24, v5);
          v26 = *(v5 + 6);
          v27 = *(v5 + 7);

          sub_1C1DE1670(v5);
          v59 = v22;
          v29 = *(v22 + 16);
          v28 = *(v22 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_1C1E26720((v28 > 1), v29 + 1, 1);
            v22 = v59;
          }

          *(v22 + 16) = v29 + 1;
          v30 = v22 + 16 * v29;
          *(v30 + 32) = v26;
          *(v30 + 40) = v27;
          v24 += v25;
          --v21;
        }

        while (v21);

        v1 = v44;
      }

      else
      {
      }

      v31 = v56;
      v59 = MEMORY[0x1E69E7CD0];

      v33 = sub_1C1E26A24(v32);
      v47 = v33;

      v58 = v33;
      v34 = v48;
      v35 = v45;
      (*(v48 + 104))(v45, *MEMORY[0x1E6968638], v55);
      v36 = v53;
      v37 = v50;
      (*(v53 + 104))(v50, *MEMORY[0x1E6968650], v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A8, &qword_1C1E5A8C0);
      sub_1C1DC1124(&qword_1EBF1D5B0, &qword_1EBF1D5A8, &qword_1C1E5A8C0);
      v38 = v49;
      sub_1C1E51DFC();
      (*(v36 + 8))(v37, v56);
      (*(v34 + 8))(v35, v55);
      sub_1C1DC1124(&qword_1EBF1D5B8, &qword_1EBF1D5A0, &qword_1C1E59220);
      v39 = v52;
      sub_1C1E547AC();
      (*(v51 + 8))(v38, v39);

      sub_1C1E15FC8(v59, v60);
    }
  }

  swift_getKeyPath();
  v59 = v1;
  sub_1C1E520BC();

  if (v57[1])
  {
    v40 = *v57;
    v41 = v57[1];
  }

  else
  {
    v40 = 122;
  }

  return v40;
}

uint64_t sub_1C1E1E144@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 16) == 1;
  return result;
}

BOOL sub_1C1E1E208()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  return *(v0 + 16) == 1;
}

uint64_t sub_1C1E1E2C4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

void (*sub_1C1E1E3E0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  *(v4 + 40) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  *(v4 + 48) = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  *(v4 + 56) = *(v1 + 16) == 1;
  return sub_1C1E1E4F4;
}

void sub_1C1E1E4F4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 56);
  v5 = *(v3 + 16);
  if (a2)
  {
    if (v5 != v4)
    {
      goto LABEL_5;
    }
  }

  else if (v5 != v4)
  {
LABEL_5:
    v7 = v2[5];
    v6 = v2[6];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v2[3] = v3;
    sub_1C1E520AC();
  }

  free(v2);
}

uint64_t sub_1C1E1E640@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 16) == 2;
  return result;
}

BOOL sub_1C1E1E704()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  return *(v0 + 16) == 2;
}

uint64_t sub_1C1E1E7C0(char a1)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  result = swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

void (*sub_1C1E1E8E4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  *(v4 + 40) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  *(v4 + 48) = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  *(v4 + 56) = *(v1 + 16) == 2;
  return sub_1C1E1E9F8;
}

void sub_1C1E1E9F8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (*(*a1 + 56))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 16);
  if (a2)
  {
    if (v5 != v4)
    {
      goto LABEL_8;
    }
  }

  else if (v5 != v4)
  {
LABEL_8:
    v7 = v2[5];
    v6 = v2[6];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v2[3] = v3;
    sub_1C1E520AC();
  }

  free(v2);
}

uint64_t sub_1C1E1EB50@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 16) == 3;
  return result;
}

BOOL sub_1C1E1EC14()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  return *(v0 + 16) == 3;
}

uint64_t sub_1C1E1ECD0(char a1)
{
  if (a1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  result = swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

void (*sub_1C1E1EDF4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  *(v4 + 40) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  *(v4 + 48) = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  *(v4 + 56) = *(v1 + 16) == 3;
  return sub_1C1E1EF08;
}

void sub_1C1E1EF08(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (*(*a1 + 56))
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 16);
  if (a2)
  {
    if (v5 != v4)
    {
      goto LABEL_8;
    }
  }

  else if (v5 != v4)
  {
LABEL_8:
    v7 = v2[5];
    v6 = v2[6];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v2[3] = v3;
    sub_1C1E520AC();
  }

  free(v2);
}

uint64_t sub_1C1E1F060(int a1)
{
  v2 = v1;
  v4 = sub_1C1E539CC();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v56 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1C1E539EC();
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v54 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1C1E53A0C();
  v53 = *(v62 - 8);
  v9 = *(v53 + 64);
  v10 = MEMORY[0x1EEE9AC00](v62);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = v51 - v13;
  v14 = sub_1C1E51F5C();
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v61) = a1;
  v18 = (a1 & 1) == 0;
  swift_beginAccess();
  if (*(*&v2 + 16) != v18)
  {
    KeyPath = swift_getKeyPath();
    v51[1] = v51;
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v51[-2] = v2;
    LOBYTE(v51[-1]) = v18;
    v63 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  v20 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
  swift_beginAccess();
  if (*(*&v2 + v20))
  {
    v21 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v21);
    *&v51[-2] = v2;
    LOBYTE(v51[-1]) = 0;
    v63 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  else
  {
    *(*&v2 + v20) = 0;
  }

  v22 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = *(*&v2 + v22);
  v23 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = *(*&v2 + v23);
  v24 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = *(*&v2 + v24);
  v25 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = *(*&v2 + v25);
  v26 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = *(*&v2 + v26);
  v27 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = *(*&v2 + v27);
  sub_1C1E1C5E4(&v63);
  v29 = v63;
  v28 = *&v64;
  v31 = *&v65;
  v30 = v66;
  v33 = *&v67;
  v32 = v68;
  v34 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  if (*v34 == v29 && v34[1] == v28)
  {
    *v34 = v29;
    v34[1] = v28;
    sub_1C1E1B224();
  }

  else
  {
    v35 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v35);
    *&v51[-4] = v2;
    *&v51[-3] = v29;
    *&v51[-2] = v28;
    v63 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  v36 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  if (*v36 == v31 && v36[1] == v30)
  {
    *v36 = v31;
    v36[1] = v30;
    sub_1C1E1B784();
  }

  else
  {
    v37 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v37);
    *&v51[-4] = v2;
    *&v51[-3] = v31;
    *&v51[-2] = v30;
    v63 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  v38 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  if (*v38 == v33 && v38[1] == v32)
  {
    *v38 = v33;
    v38[1] = v32;
    sub_1C1E1BEA8();
  }

  else
  {
    v39 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v39);
    *&v51[-4] = v2;
    *&v51[-3] = v33;
    *&v51[-2] = v32;
    v63 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  v40 = (v60 + 40);
  if (v61)
  {
    sub_1C1E51EEC();
    v41 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
    swift_beginAccess();
    (*v40)(*&v2 + v41, v17, v14);
    result = swift_endAccess();
    if (*(*&v2 + 16))
    {
      v43 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v43);
      *&v51[-2] = v2;
      LOBYTE(v51[-1]) = 0;
      v63 = v2;
      sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
      sub_1C1E520AC();
    }
  }

  else
  {
    sub_1C1E51F3C();
    v44 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
    swift_beginAccess();
    (*v40)(*&v2 + v44, v17, v14);
    swift_endAccess();
    sub_1C1E26BCC();
    v60 = sub_1C1E5494C();
    sub_1C1E539FC();
    v45 = v52;
    sub_1C1E53A1C();
    v61 = *(v53 + 8);
    v61(v12, v62);
    *&v67 = COERCE_DOUBLE(sub_1C1E26C18);
    v68 = v2;
    v63 = MEMORY[0x1E69E9820];
    v64 = 1107296256;
    *&v65 = COERCE_DOUBLE(sub_1C1E1FC50);
    v66 = COERCE_DOUBLE(&block_descriptor_2);
    v46 = _Block_copy(&v63);

    v47 = v54;
    sub_1C1E539DC();
    v63 = MEMORY[0x1E69E7CC0];
    sub_1C1DC4DB0(&qword_1EBF1D5C8, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5D0, &qword_1C1E592A0);
    sub_1C1DC1124(&qword_1EBF1D5D8, &qword_1EBF1D5D0, &qword_1C1E592A0);
    v48 = v56;
    v49 = v59;
    sub_1C1E54A5C();
    v50 = v60;
    MEMORY[0x1C6910510](v45, v47, v48, v46);
    _Block_release(v46);

    (*(v58 + 8))(v48, v49);
    (*(v55 + 8))(v47, v57);
    return (v61)(v45, v62);
  }

  return result;
}

uint64_t sub_1C1E1FC50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1C1E1FC94(int a1)
{
  v2 = v1;
  v4 = sub_1C1E539CC();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1C1E539EC();
  v53 = *(v55 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1C1E53A0C();
  v51 = *(v60 - 8);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x1EEE9AC00](v60);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v49 - v13;
  v14 = sub_1C1E51F5C();
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v59) = a1;
  if (a1)
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  swift_beginAccess();
  if (*(*&v2 + 16) != v18)
  {
    KeyPath = swift_getKeyPath();
    v49 = &v49;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v49 - 2) = v2;
    *(&v49 - 8) = v18;
    v61 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  v20 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = *(*&v2 + v20);
  v21 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = *(*&v2 + v21);
  v22 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = *(*&v2 + v22);
  v23 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = *(*&v2 + v23);
  v24 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = *(*&v2 + v24);
  v25 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = *(*&v2 + v25);
  sub_1C1E1AB64(&v61);
  v27 = v61;
  v26 = *&v62;
  v29 = *&v63;
  v28 = v64;
  v31 = *&v65;
  v30 = v66;
  v32 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  if (*v32 == v27 && v32[1] == v26)
  {
    *v32 = v27;
    v32[1] = v26;
    sub_1C1E1B224();
  }

  else
  {
    v33 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v33);
    *(&v49 - 4) = v2;
    *(&v49 - 3) = v27;
    *(&v49 - 2) = v26;
    v61 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  v34 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  if (*v34 == v29 && v34[1] == v28)
  {
    *v34 = v29;
    v34[1] = v28;
    sub_1C1E1B784();
  }

  else
  {
    v35 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v35);
    *(&v49 - 4) = v2;
    *(&v49 - 3) = v29;
    *(&v49 - 2) = v28;
    v61 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  v36 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  if (*v36 == v31 && v36[1] == v30)
  {
    *v36 = v31;
    v36[1] = v30;
    sub_1C1E1BEA8();
  }

  else
  {
    v37 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v37);
    *(&v49 - 4) = v2;
    *(&v49 - 3) = v31;
    *(&v49 - 2) = v30;
    v61 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  sub_1C1E1A2C0();
  v38 = (v58 + 40);
  if (v59)
  {
    sub_1C1E51EEC();
    v39 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
    swift_beginAccess();
    (*v38)(*&v2 + v39, v17, v14);
    result = swift_endAccess();
    if (*(*&v2 + 16))
    {
      v41 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v41);
      *(&v49 - 2) = v2;
      *(&v49 - 8) = 0;
      v61 = v2;
      sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
      sub_1C1E520AC();
    }
  }

  else
  {
    sub_1C1E51F3C();
    v42 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
    swift_beginAccess();
    (*v38)(*&v2 + v42, v17, v14);
    swift_endAccess();
    sub_1C1E26BCC();
    v58 = sub_1C1E5494C();
    sub_1C1E539FC();
    v43 = v50;
    sub_1C1E53A1C();
    v59 = *(v51 + 8);
    v59(v12, v60);
    *&v65 = COERCE_DOUBLE(sub_1C1E26C18);
    v66 = v2;
    v61 = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    *&v63 = COERCE_DOUBLE(sub_1C1E1FC50);
    v64 = COERCE_DOUBLE(&block_descriptor_104);
    v44 = _Block_copy(&v61);

    v45 = v52;
    sub_1C1E539DC();
    v61 = MEMORY[0x1E69E7CC0];
    sub_1C1DC4DB0(&qword_1EBF1D5C8, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5D0, &qword_1C1E592A0);
    sub_1C1DC1124(&qword_1EBF1D5D8, &qword_1EBF1D5D0, &qword_1C1E592A0);
    v46 = v54;
    v47 = v57;
    sub_1C1E54A5C();
    v48 = v58;
    MEMORY[0x1C6910510](v43, v45, v46, v44);
    _Block_release(v44);

    (*(v56 + 8))(v46, v47);
    (*(v53 + 8))(v45, v55);
    return (v59)(v43, v60);
  }

  return result;
}

uint64_t sub_1C1E207A4(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t sub_1C1E208B0(int a1)
{
  v2 = v1;
  v4 = sub_1C1E539CC();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1C1E539EC();
  v53 = *(v55 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1C1E53A0C();
  v51 = *(v60 - 8);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x1EEE9AC00](v60);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v49 - v13;
  v14 = sub_1C1E51F5C();
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v59) = a1;
  if (a1)
  {
    v18 = 0;
  }

  else
  {
    v18 = 3;
  }

  swift_beginAccess();
  if (*(*&v2 + 16) != v18)
  {
    KeyPath = swift_getKeyPath();
    v49 = &v49;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v49 - 2) = v2;
    *(&v49 - 8) = v18;
    v61 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  v20 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = *(*&v2 + v20);
  v21 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = *(*&v2 + v21);
  v22 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = *(*&v2 + v22);
  v23 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = *(*&v2 + v23);
  v24 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = *(*&v2 + v24);
  v25 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = *(*&v2 + v25);
  sub_1C1E1AFAC(&v61);
  v27 = v61;
  v26 = *&v62;
  v29 = *&v63;
  v28 = v64;
  v31 = *&v65;
  v30 = v66;
  v32 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  if (*v32 == v27 && v32[1] == v26)
  {
    *v32 = v27;
    v32[1] = v26;
    sub_1C1E1B224();
  }

  else
  {
    v33 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v33);
    *(&v49 - 4) = v2;
    *(&v49 - 3) = v27;
    *(&v49 - 2) = v26;
    v61 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  v34 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  if (*v34 == v29 && v34[1] == v28)
  {
    *v34 = v29;
    v34[1] = v28;
    sub_1C1E1B784();
  }

  else
  {
    v35 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v35);
    *(&v49 - 4) = v2;
    *(&v49 - 3) = v29;
    *(&v49 - 2) = v28;
    v61 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  v36 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  if (*v36 == v31 && v36[1] == v30)
  {
    *v36 = v31;
    v36[1] = v30;
    sub_1C1E1BEA8();
  }

  else
  {
    v37 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v37);
    *(&v49 - 4) = v2;
    *(&v49 - 3) = v31;
    *(&v49 - 2) = v30;
    v61 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  sub_1C1E1A2C0();
  v38 = (v58 + 40);
  if (v59)
  {
    sub_1C1E51EEC();
    v39 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
    swift_beginAccess();
    (*v38)(*&v2 + v39, v17, v14);
    result = swift_endAccess();
    if (*(*&v2 + 16))
    {
      v41 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v41);
      *(&v49 - 2) = v2;
      *(&v49 - 8) = 0;
      v61 = v2;
      sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
      sub_1C1E520AC();
    }
  }

  else
  {
    sub_1C1E51F3C();
    v42 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
    swift_beginAccess();
    (*v38)(*&v2 + v42, v17, v14);
    swift_endAccess();
    sub_1C1E26BCC();
    v58 = sub_1C1E5494C();
    sub_1C1E539FC();
    v43 = v50;
    sub_1C1E53A1C();
    v59 = *(v51 + 8);
    v59(v12, v60);
    *&v65 = COERCE_DOUBLE(sub_1C1E26C18);
    v66 = v2;
    v61 = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    *&v63 = COERCE_DOUBLE(sub_1C1E1FC50);
    v64 = COERCE_DOUBLE(&block_descriptor_112);
    v44 = _Block_copy(&v61);

    v45 = v52;
    sub_1C1E539DC();
    v61 = MEMORY[0x1E69E7CC0];
    sub_1C1DC4DB0(&qword_1EBF1D5C8, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5D0, &qword_1C1E592A0);
    sub_1C1DC1124(&qword_1EBF1D5D8, &qword_1EBF1D5D0, &qword_1C1E592A0);
    v46 = v54;
    v47 = v57;
    sub_1C1E54A5C();
    v48 = v58;
    MEMORY[0x1C6910510](v43, v45, v46, v44);
    _Block_release(v44);

    (*(v56 + 8))(v46, v47);
    (*(v53 + 8))(v45, v55);
    return (v59)(v43, v60);
  }

  return result;
}

__n128 sub_1C1E21420@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v4 = (v3 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation);
  swift_beginAccess();
  v5 = v4[1].n128_u8[0];
  result = *v4;
  *a2 = *v4;
  a2[1].n128_u8[0] = v5;
  return result;
}

uint64_t sub_1C1E21524()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v1 = (v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation);
  swift_beginAccess();
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t sub_1C1E215E8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  result = swift_beginAccess();
  if ((*(v7 + 16) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *v7 == *&a1 && *(v7 + 8) == *&a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v7 = *&a1;
  *(v7 + 8) = *&a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1C1E21758(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  result = swift_beginAccess();
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4 & 1;
  return result;
}

void (*sub_1C1E217CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E213C0();
  return sub_1C1E21904;
}

uint64_t sub_1C1E21994(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D540, &qword_1C1E58F98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C1DC1424(a1, &v10[-v6], &qword_1EBF1D540, &qword_1C1E58F98);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520AC();

  return sub_1C1DC1870(v7, &qword_1EBF1D540, &qword_1C1E58F98);
}

uint64_t sub_1C1E21B08(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520AC();

  return sub_1C1DC1870(a1, &qword_1EBF1D540, &qword_1C1E58F98);
}

void (*sub_1C1E21C18(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E21910();
  return sub_1C1E21D50;
}

uint64_t sub_1C1E21D80@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v9 = *a1;
  swift_beginAccess();
  return sub_1C1DC1424(v11 + v9, a4, a2, a3);
}

uint64_t sub_1C1E21E60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v10 = *a2;
  swift_beginAccess();
  return sub_1C1DC1424(v9 + v10, a5, a3, a4);
}

uint64_t sub_1C1E21F44(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5E0, &qword_1C1E592F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1C1DC1424(a1, &v10 - v6, &qword_1EBF1D5E0, &qword_1C1E592F8);
  v8 = *a2;
  return sub_1C1E15FF0(v7);
}

uint64_t sub_1C1E21FF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v16 - v12;
  sub_1C1DC1424(a2, &v16 - v12, a3, a4);
  v14 = *a5;
  swift_beginAccess();
  sub_1C1E28BBC(v13, a1 + v14, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1C1E220D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18[0] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5E0, &qword_1C1E592F8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v18 - v5;
  v7 = sub_1C1E51F9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = v1;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v12 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
  swift_beginAccess();
  sub_1C1DC1424(v2 + v12, v6, &qword_1EBF1D5E0, &qword_1C1E592F8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C1DC1870(v6, &qword_1EBF1D5E0, &qword_1C1E592F8);
    v13 = type metadata accessor for Function();
    return (*(*(v13 - 8) + 56))(v18[0], 1, 1, v13);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v15 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
    [v15 lock];
    swift_getKeyPath();
    v18[2] = v2;
    sub_1C1E520BC();

    v16 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

    v17 = [v15 unlock];
    MEMORY[0x1EEE9AC00](v17);
    v18[-2] = v11;
    sub_1C1E22410(sub_1C1E26CAC, v16, v18[0]);

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1C1E22410@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Function();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_1C1DE160C(v13, v11);
      v15 = a1(v11);
      if (v3)
      {
        return sub_1C1DE1670(v11);
      }

      if (v15)
      {
        break;
      }

      sub_1C1DE1670(v11);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_1C1DF7E98(v11, v19);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_1C1E2258C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_1C1E54ACC();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1C6910730](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

void sub_1C1E226B0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v7 = v6;
  v67 = a5;
  v66 = a3;
  v12 = type metadata accessor for Function();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5E0, &qword_1C1E592F8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  if (a2 & 1) != 0 || (a4 & 1) != 0 || (a6)
  {
    v24 = sub_1C1E51F9C();
    (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
    sub_1C1E15FF0(v20);
    return;
  }

  v56 = v13;
  v25 = sub_1C1E51F9C();
  v57 = *(v25 - 8);
  v26 = *(v57 + 56);
  v62 = v23;
  v61 = v25;
  v60 = v26;
  v59 = v57 + 56;
  (v26)(v23, 1, 1);
  v27 = *(*&v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v27 lock];
  swift_getKeyPath();
  v68[0] = v7;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v28 = *(*&v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v27 unlock];
  v29 = *(v28 + 16);
  if (!v29)
  {
LABEL_20:

    v54 = v62;
    sub_1C1DC1424(v62, v20, &qword_1EBF1D5E0, &qword_1C1E592F8);
    sub_1C1E15FF0(v20);
    sub_1C1DC1870(v54, &qword_1EBF1D5E0, &qword_1C1E592F8);
    return;
  }

  v58 = v12;
  v30 = *&a1;
  v31 = *&v66;
  v32 = *&v67;
  v33 = *(v56 + 80);
  v55 = v28;
  v34 = v28 + ((v33 + 32) & ~v33);
  v67 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
  v35 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  v36 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  v37 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  v66 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ;
  swift_beginAccess();
  v65 = v35;
  swift_beginAccess();
  v64 = v36;
  swift_beginAccess();
  v63 = v37;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v57 += 16;
  v38 = *(v56 + 72);
  v39 = INFINITY;
  while (1)
  {
    sub_1C1DE160C(v34, v16);
    v40 = *(v16 + 10);
    if (v40)
    {
      v41 = *(v16 + 11);

      v43 = v40(v42, v30, v32);
      sub_1C1DD0EB8(v40);
    }

    else
    {
      v43 = 0.0;
    }

    swift_getKeyPath();
    v68[0] = v7;
    sub_1C1E520BC();

    swift_getKeyPath();
    v68[0] = v7;
    sub_1C1E520BC();

    if (*(*&v7 + 16))
    {
      break;
    }

    v47 = *(*&v7 + v65);
    v48 = *(*&v7 + v63) * (*(*&v7 + v64) * *(*&v7 + v63));
    v49 = *(*&v7 + v66);
    v46 = v47 - v49 * v48;
    if (v46 > v47 + v48 * (1.0 - v49))
    {
      goto LABEL_21;
    }

LABEL_16:
    if (v46 > v43 || (sub_1C1E24EE0(), v43 > v50) || (v51 = vabdd_f64(v31, v43), v51 >= v39))
    {
      sub_1C1DE1670(v16);
    }

    else
    {
      v52 = v62;
      sub_1C1DC1870(v62, &qword_1EBF1D5E0, &qword_1C1E592F8);
      v53 = v61;
      (*v57)(v52, &v16[*(v58 + 48)], v61);
      sub_1C1DE1670(v16);
      v60(v52, 0, 1, v53);
      v39 = v51;
    }

    v34 += v38;
    if (!--v29)
    {
      goto LABEL_20;
    }
  }

  sub_1C1E25E2C(v68);
  v44 = v68[2];
  sub_1C1E25E2C(v68);
  v45 = *(*&v7 + v67);
  v46 = v44 - v69 * v69 * v45;
  if (v46 <= v44 + v69 * v69 * (1.0 - v45))
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1C1E22DA4()
{
  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v0;
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v0;
  swift_retain_n();
  sub_1C1E537BC();
  return v4;
}

uint64_t sub_1C1E22E64@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v4 = a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  result = swift_beginAccess();
  *a2 = (*(v4 + 16) & 1) == 0;
  return result;
}

void sub_1C1E22F34(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5E0, &qword_1C1E592F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v13 - v8;
  if ((*a1 & 1) == 0)
  {
    v10 = a4 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
    swift_beginAccess();
    if (*(v10 + 16) == 1)
    {
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v13[-3] = 0;
      v13[-2] = 0;
      v13[-4] = a4;
      LOBYTE(v13[-1]) = 1;
      v13[2] = a4;
      sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
      sub_1C1E520AC();
    }

    v12 = sub_1C1E51F9C();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_1C1E15FF0(v9);
  }
}

uint64_t sub_1C1E2311C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C298, &qword_1C1E56168);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C1E58FE0;
  *(v0 + 32) = sub_1C1E5356C();
  *(v0 + 40) = sub_1C1E5360C();
  *(v0 + 48) = sub_1C1E5365C();
  *(v0 + 56) = sub_1C1E5355C();
  *(v0 + 64) = sub_1C1E5357C();
  *(v0 + 72) = sub_1C1E535AC();
  *(v0 + 80) = sub_1C1E5363C();
  *(v0 + 88) = sub_1C1E535BC();
  *(v0 + 96) = sub_1C1E5362C();
  *(v0 + 104) = sub_1C1E535CC();
  *(v0 + 112) = sub_1C1E535EC();
  result = sub_1C1E5364C();
  *(v0 + 120) = result;
  qword_1EBF20D88 = v0;
  return result;
}

uint64_t sub_1C1E231D0()
{
  result = sub_1C1E5365C();
  qword_1EBF20D90 = result;
  return result;
}

uint64_t sub_1C1E231F0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  if (*(v0 + 16))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1C1E520BC();

  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction;
  swift_beginAccess();
  return *(v1 + v3);
}

BOOL sub_1C1E2330C()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  return *(v0 + 16) != 0;
}

void (*sub_1C1E2345C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E233C8();
  return sub_1C1E23594;
}

id sub_1C1E235A0(uint64_t a1)
{
  v2 = v1;
  v66 = sub_1C1E53A0C();
  v56 = *(v66 - 8);
  v4 = *(v56 + 64);
  v5 = MEMORY[0x1EEE9AC00](v66);
  v54 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v54 - v7;
  v8 = sub_1C1E539CC();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1C1E539EC();
  v60 = *(v62 - 8);
  v11 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Function();
  v13 = *(v65 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v54 - v19;
  v21 = *(a1 + 16);
  v22 = &unk_1EDE74000;
  if (!v21)
  {
    v23 = *&v2[OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock];
    [v23 lock];
    swift_getKeyPath();
    aBlock = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520BC();

    v24 = *&v2[OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions];

    [v23 unlock];
    v25 = *(v24 + 16);
    v22 = &unk_1EDE74000;

    if (!v25)
    {
      return sub_1C1E24054();
    }
  }

  v57 = v13;
  v58 = v20;
  v26 = *&v2[OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock];
  [v26 lock];
  swift_getKeyPath();
  v27 = v22[269];
  aBlock = v2;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  v67 = v27;
  sub_1C1E520BC();

  v28 = *&v2[OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions];

  [v26 unlock];
  v29 = *(v28 + 16);

  [v26 0x1E815B878];

  sub_1C1E15A20(v30);
  [v26 unlock];
  if (v21)
  {
    v31 = v57;
    v32 = a1 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v33 = *(v57 + 72);
    v34 = v65;
    v35 = v58;
    while (1)
    {
      sub_1C1DE160C(v32, v16);
      if (*(v16 + 10))
      {
        break;
      }

      sub_1C1DE1670(v16);
      v32 += v33;
      if (!--v21)
      {
        v36 = 0;
        v37 = 1;
        goto LABEL_10;
      }
    }

    sub_1C1DF7E98(v16, v35);
    v37 = 0;
    v36 = 1;
  }

  else
  {
    v36 = 0;
    v37 = 1;
    v34 = v65;
    v35 = v58;
    v31 = v57;
  }

LABEL_10:
  (*(v31 + 56))(v35, v37, 1, v34);
  sub_1C1DC1870(v35, &qword_1EBF1C758, &qword_1C1E579C0);
  v38 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  swift_beginAccess();
  if (v36 == v2[v38])
  {
    v2[v38] = v36;
    if (v29)
    {
      goto LABEL_12;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v54 - 2) = v2;
    *(&v54 - 8) = v36;
    aBlock = v2;
    sub_1C1E520AC();

    if (v29)
    {
LABEL_12:
      sub_1C1E1A2C0();
      goto LABEL_15;
    }
  }

  sub_1C1E26BCC();
  v40 = sub_1C1E5494C();
  v72 = sub_1C1E26D5C;
  v73 = v2;
  aBlock = MEMORY[0x1E69E9820];
  v69 = 1107296256;
  v70 = sub_1C1E1FC50;
  v71 = &block_descriptor_140;
  v41 = _Block_copy(&aBlock);

  v42 = v59;
  sub_1C1E539DC();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1C1DC4DB0(&qword_1EBF1D5C8, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5D0, &qword_1C1E592A0);
  sub_1C1DC1124(&qword_1EBF1D5D8, &qword_1EBF1D5D0, &qword_1C1E592A0);
  v43 = v61;
  v44 = v64;
  sub_1C1E54A5C();
  MEMORY[0x1C6910530](0, v42, v43, v41);
  _Block_release(v41);

  (*(v63 + 8))(v43, v44);
  (*(v60 + 8))(v42, v62);
LABEL_15:
  sub_1C1E24054();
  swift_getKeyPath();
  aBlock = v2;
  sub_1C1E520BC();

  v45 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction;
  result = swift_beginAccess();
  if (v2[v45] == 1)
  {
    sub_1C1E26BCC();
    v47 = sub_1C1E5494C();
    v48 = v54;
    sub_1C1E539FC();
    v49 = v55;
    sub_1C1E53A1C();
    v67 = *(v56 + 8);
    v67(v48, v66);
    v72 = sub_1C1E26D58;
    v73 = v2;
    aBlock = MEMORY[0x1E69E9820];
    v69 = 1107296256;
    v70 = sub_1C1E1FC50;
    v71 = &block_descriptor_137;
    v50 = _Block_copy(&aBlock);

    v51 = v59;
    sub_1C1E539DC();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1C1DC4DB0(&qword_1EBF1D5C8, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5D0, &qword_1C1E592A0);
    sub_1C1DC1124(&qword_1EBF1D5D8, &qword_1EBF1D5D0, &qword_1C1E592A0);
    v52 = v61;
    v53 = v64;
    sub_1C1E54A5C();
    MEMORY[0x1C6910510](v49, v51, v52, v50);
    _Block_release(v50);

    (*(v63 + 8))(v52, v53);
    (*(v60 + 8))(v51, v62);
    return (v67)(v49, v66);
  }

  return result;
}

uint64_t sub_1C1E23FDC()
{
  sub_1C1E5395C();
  sub_1C1E5291C();
}

id sub_1C1E24054()
{
  v1 = v0;
  v2 = type metadata accessor for Function();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v7 lock];
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  v20 = v1;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  v19[0] = v8;
  sub_1C1E520BC();

  v9 = *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  result = [v7 unlock];
  v11 = 0;
  v12 = *(v9 + 16);
  do
  {
    v13 = v11;
    if (v12 == v11)
    {
      break;
    }

    if (v11 >= *(v9 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1C1DE160C(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11++, v6);
    v14 = &v6[*(v2 + 56)];
    sub_1C1E51F2C();
    v16 = v15;
    result = sub_1C1DE1670(v6);
  }

  while (v16 <= -1.5);

  swift_getKeyPath();
  v20 = v1;
  sub_1C1E520BC();

  v17 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction;
  result = swift_beginAccess();
  if ((v12 != v13) != *(v1 + v17))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v19[-2] = v1;
    LOBYTE(v19[-1]) = v12 != v13;
    v19[2] = v1;
    sub_1C1E520AC();
  }

  return result;
}

uint64_t sub_1C1E24334@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v5 = v4;
  v10 = type metadata accessor for Function();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = v35 - v18;
  v20 = *(v11 + 56);
  v40 = v10;
  v20(v35 - v18, 1, 1, v10, v17);
  v21 = *(v4 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v21 lock];
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  v42 = v5;
  v37 = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  v38 = v22;
  sub_1C1E520BC();

  v39 = v5;
  v23 = *(v5 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v21 unlock];
  v24 = *(v23 + 16);
  if (v24)
  {
    v35[1] = v23;
    v36 = a1;
    v25 = v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v26 = *(v11 + 72);
    v27 = INFINITY;
    do
    {
      v28 = sub_1C1DE160C(v25, v14);
      v29 = *(v14 + 9);
      v30 = vabdd_f64(a3, (*(v14 + 8))(v28, a2));
      if (v30 < v27)
      {
        sub_1C1DC1870(v19, &qword_1EBF1C758, &qword_1C1E579C0);
        sub_1C1DF7E98(v14, v19);
        (v20)(v19, 0, 1, v40);
        v27 = v30;
      }

      else
      {
        sub_1C1DE1670(v14);
      }

      v25 += v26;
      --v24;
    }

    while (v24);

    a1 = v36;
    if (v27 < a4)
    {
      return sub_1C1E28744(v19, v36);
    }
  }

  else
  {
  }

  v32 = v39;
  v33 = v39 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  swift_beginAccess();
  if (*(v33 + 16) == 1)
  {
    sub_1C1DC1870(v19, &qword_1EBF1C758, &qword_1C1E579C0);
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v35[-3] = 0;
    v35[-2] = 0;
    v35[-4] = v32;
    LOBYTE(v35[-1]) = 1;
    v41 = v32;
    sub_1C1E520AC();

    sub_1C1DC1870(v19, &qword_1EBF1C758, &qword_1C1E579C0);
  }

  return (v20)(a1, 1, 1, v40);
}

uint64_t sub_1C1E2473C()
{
  v1 = v0;
  sub_1C1E24AC8();
  v3 = v2;
  v5 = v4;
  v6 = (v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  if (*v6 == v3 && v6[1] == v5)
  {
    *v6 = v3;
    v6[1] = v5;
    sub_1C1E1B224();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  sub_1C1E24CD4();
  v10 = v9;
  v12 = v11;
  v13 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  if (*v13 == v10 && v13[1] == v12)
  {
    *v13 = v10;
    v13[1] = v12;
    sub_1C1E1B784();
  }

  else
  {
    v15 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v15);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  sub_1C1E24EE0();
  v17 = v16;
  v19 = v18;
  v20 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  if (*v20 == v17 && v20[1] == v19)
  {
    *v20 = v17;
    v20[1] = v19;
    sub_1C1E1BEA8();
  }

  else
  {
    v21 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v21);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  v22 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  result = swift_beginAccess();
  *(v1 + v22) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1C1E24AC8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_getKeyPath();
  v13[0] = v0;
  sub_1C1E520BC();

  swift_beginAccess();
  if (*(*&v0 + 16))
  {
    sub_1C1E25E2C(v13);
    v2 = v13[0];
    sub_1C1E25E2C(v13);
    v3 = v14 * v14;
    v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
    result = swift_beginAccess();
    if (v2 - v3 * *(*&v1 + v4) <= v2 + v3 * (1.0 - *(*&v1 + v4)))
    {
      return result;
    }

    __break(1u);
  }

  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  v7 = *(*&v1 + v6);
  v8 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  swift_beginAccess();
  v9 = *(*&v1 + v8);
  v10 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  v11 = *(*&v1 + v10) * (v9 * *(*&v1 + v10));
  v12 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
  result = swift_beginAccess();
  if (v7 - v11 * *(*&v1 + v12) > v7 + v11 * (1.0 - *(*&v1 + v12)))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1E24CD4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_getKeyPath();
  v13[0] = v0;
  sub_1C1E520BC();

  swift_beginAccess();
  if (*(*&v0 + 16))
  {
    sub_1C1E25E2C(v13);
    v2 = v13[1];
    sub_1C1E25E2C(v13);
    v3 = v14 * v14;
    v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
    result = swift_beginAccess();
    if (v2 - v3 * *(*&v1 + v4) <= v2 + v3 * (1.0 - *(*&v1 + v4)))
    {
      return result;
    }

    __break(1u);
  }

  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  v7 = *(*&v1 + v6);
  v8 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  swift_beginAccess();
  v9 = *(*&v1 + v8);
  v10 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  v11 = *(*&v1 + v10) * (v9 * *(*&v1 + v10));
  v12 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY;
  result = swift_beginAccess();
  if (v7 - v11 * *(*&v1 + v12) > v7 + v11 * (1.0 - *(*&v1 + v12)))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1E24EE0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_getKeyPath();
  v13[0] = v0;
  sub_1C1E520BC();

  swift_beginAccess();
  if (*(*&v0 + 16))
  {
    sub_1C1E25E2C(v13);
    v2 = v13[2];
    sub_1C1E25E2C(v13);
    v3 = v14 * v14;
    v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
    result = swift_beginAccess();
    if (v2 - v3 * *(*&v1 + v4) <= v2 + v3 * (1.0 - *(*&v1 + v4)))
    {
      return result;
    }

    __break(1u);
  }

  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  v7 = *(*&v1 + v6);
  v8 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  swift_beginAccess();
  v9 = *(*&v1 + v8);
  v10 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  v11 = *(*&v1 + v10) * (v9 * *(*&v1 + v10));
  v12 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ;
  result = swift_beginAccess();
  if (v7 - v11 * *(*&v1 + v12) > v7 + v11 * (1.0 - *(*&v1 + v12)))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1E25150@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  v5 = sub_1C1E5232C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1E25248(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1E5232C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = *a2;
  return sub_1C1E16220(v8);
}

uint64_t sub_1C1E25314@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  v4 = sub_1C1E5232C();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1C1E2540C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1E5232C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1C1E255AC(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = (v2[2] + *a1);
  v7 = swift_beginAccess();
  *v6 = v4;
  v6[1] = v5;
  return a2(v7);
}

uint64_t sub_1C1E25654()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 17) = v2;
  return result;
}

uint64_t sub_1C1E256C0()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  result = swift_beginAccess();
  *(v1 + v2) = 0x3FD999999999999ALL;
  return result;
}

uint64_t sub_1C1E25724()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  result = swift_beginAccess();
  *(v1 + v2) = 0x3FD999999999999ALL;
  return result;
}

uint64_t sub_1C1E25788()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  result = swift_beginAccess();
  *(v1 + v2) = 0x3FD999999999999ALL;
  return result;
}

void (*sub_1C1E257EC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E250EC();
  return sub_1C1E25924;
}

void sub_1C1E25930(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C1E520CC();

  free(v1);
}

void sub_1C1E259F4(double (*a1)(uint64_t))
{
  v3 = v1;
  v4 = sub_1C1E5232C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v1;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v9 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  v10 = (*(v5 + 16))(v8, v3 + v9, v4);
  v11 = a1(v10);
  (*(v5 + 8))(v8, v4);
  v12.radians = v11;
  SPAngleGetDegrees(v12);
}

uint64_t sub_1C1E25BD8(uint64_t (*a1)(void))
{
  v2 = a1();
  v4 = round(vabdd_f64(v3, (a1)(v2)));

  return sub_1C1E25C2C(v4);
}

uint64_t sub_1C1E25C2C(double a1)
{
  v25 = sub_1C1E51F5C();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  result = sub_1C1E51F3C();
  v14 = *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_baseAxesIntervals);
  v15 = *(v14 + 16);
  v16 = (v3 + 8);
  v17 = 1.0;
  v18 = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
LABEL_2:
  v19 = 0;
  while (1)
  {
    if (v15 == v19)
    {
      v17 = v17 * 10.0;
      v24 = v18;
      sub_1C1E51F3C();
      sub_1C1E51F1C();
      v21 = sub_1C1E51F0C();
      v23 = *v16;
      v22 = v25;
      (*v16)(v6, v25);
      result = (v23)(v9, v22);
      v18 = v24;
      if ((v21 & 1) == 0)
      {
        goto LABEL_2;
      }

      return (v23)(v12, v25);
    }

    if (v19 >= *(v14 + 16))
    {
      break;
    }

    v20 = *(v14 + 32 + 8 * v19++);
    if (a1 / (v17 * v20) <= 10.0)
    {
      v23 = *v16;
      return (v23)(v12, v25);
    }
  }

  __break(1u);
  return result;
}

long double sub_1C1E25E2C@<D0>(double *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C1E51F5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v36 - v10;
  sub_1C1E51F3C();
  v12 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
  swift_beginAccess();
  (*(v5 + 16))(v9, v2 + v12, v4);
  sub_1C1E51EFC();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v9, v4);
  v15(v11, v4);
  v16 = 0.0;
  if (v14 + v14 >= 0.0)
  {
    v16 = v14 + v14;
  }

  if (v14 + v14 >= 1.0)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = v16;
  }

  swift_getKeyPath();
  v36[6] = v2;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v18 = (v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  v19 = v18[1];
  v20 = (*v18 + v19) * 0.5;
  v21 = sqrt(v19 - *v18);
  swift_getKeyPath();
  v36[3] = v2;
  sub_1C1E520BC();

  v22 = (v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  v23 = v22[1];
  v24 = (*v22 + v23) * 0.5;
  v25 = sqrt(v23 - *v22);
  swift_getKeyPath();
  v36[0] = v2;
  sub_1C1E520BC();

  v26 = (v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  v27 = v26[1];
  v28 = (*v26 + v27) * 0.5;
  v29 = sqrt(v27 - *v26);
  v30 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) + v17 * (v24 - *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY));
  v31 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) + v17 * (v28 - *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ));
  v32 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) + v17 * (v21 - *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX));
  v33 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) + v17 * (v25 - *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY));
  v34 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ);
  *a1 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) + v17 * (v20 - *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX));
  a1[1] = v30;
  result = v34 + v17 * (v29 - v34);
  a1[2] = v31;
  a1[3] = v32;
  a1[4] = v33;
  a1[5] = result;
  return result;
}

uint64_t GraphViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
  v2 = sub_1C1E51F5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  v4 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel + 8);

  v5 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel + 8);

  v6 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel + 8);

  sub_1C1DC1870(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy, &qword_1EBF1D540, &qword_1C1E58F98);
  sub_1C1DC1870(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D, &qword_1EBF1D5E0, &qword_1C1E592F8);
  v7 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_baseAxesIntervals);

  v8 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  v9 = sub_1C1E5232C();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  v11 = sub_1C1E520FC();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t GraphViewModel.__deallocating_deinit()
{
  GraphViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}