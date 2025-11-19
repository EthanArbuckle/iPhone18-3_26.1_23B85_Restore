uint64_t sub_25AFAAB34()
{
  swift_getKeyPath();
  sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
  sub_25B004234();

  return *(v0 + 200);
}

uint64_t sub_25AFAABD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
  sub_25B004234();

  *a2 = *(v3 + 200);
  return result;
}

uint64_t sub_25AFAAC7C(uint64_t result)
{
  if (*(v1 + 200) == (result & 1))
  {
    *(v1 + 200) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
    sub_25B004224();
  }

  return result;
}

uint64_t sub_25AFAAD8C()
{
  swift_getKeyPath();
  sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
  sub_25B004234();

  return *(v0 + 201);
}

uint64_t sub_25AFAAE2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
  sub_25B004234();

  *a2 = *(v3 + 201);
  return result;
}

uint64_t sub_25AFAAEFC(uint64_t result)
{
  if (*(v1 + 201) == (result & 1))
  {
    *(v1 + 201) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
    sub_25B004224();
  }

  return result;
}

uint64_t sub_25AFAB014()
{
  swift_weakDestroy();
  v1 = *(v0 + 136);
  v2 = *(v0 + 168);
  v9[8] = *(v0 + 152);
  v9[9] = v2;
  v9[10] = *(v0 + 184);
  v3 = *(v0 + 72);
  v4 = *(v0 + 104);
  v9[4] = *(v0 + 88);
  v9[5] = v4;
  v9[6] = *(v0 + 120);
  v9[7] = v1;
  v5 = *(v0 + 40);
  v9[0] = *(v0 + 24);
  v9[1] = v5;
  v9[2] = *(v0 + 56);
  v9[3] = v3;
  sub_25AF2602C(v9, &qword_27FA25B78);
  v6 = OBJC_IVAR____TtCV17NanoControlCenter18ControlCenterStyle12VisualsModel___observationRegistrar;
  v7 = sub_25B004274();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return swift_deallocClassInstance();
}

uint64_t sub_25AFAB138()
{
  result = sub_25B004274();
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

uint64_t sub_25AFAB1EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_25AFAB248(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_25AFAB2DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v76 = a2;
  v74 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25D60) - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v55 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25D68);
  MEMORY[0x28223BE20](v56);
  v75 = &v55 - v6;
  v7 = *(a1 + 24);
  v80 = *(a1 + 16);
  v8 = *(v7 + 8);
  v78 = a1;
  v79 = v8;
  v55 = v7;
  type metadata accessor for PlatterFillPart();
  sub_25B004864();
  type metadata accessor for PlatterEnvironmentBasedAppearanceEffect(255);
  sub_25B004864();
  sub_25B004864();
  sub_25B004C84();
  v9 = sub_25B004864();
  WitnessTable = swift_getWitnessTable();
  v99 = MEMORY[0x277CDFC60];
  v10 = MEMORY[0x277CDFAD8];
  v11 = swift_getWitnessTable();
  v12 = sub_25AFB1B30(&qword_27FA25D70, type metadata accessor for PlatterEnvironmentBasedAppearanceEffect);
  v96 = v11;
  v97 = v12;
  v71 = v10;
  v13 = swift_getWitnessTable();
  v14 = sub_25AFB2CD0();
  v94 = v13;
  v95 = v14;
  v92 = swift_getWitnessTable();
  v93 = v13;
  v15 = swift_getWitnessTable();
  v16 = sub_25AFB2D24();
  v90 = v15;
  v91 = v16;
  v62 = v9;
  v63 = swift_getWitnessTable();
  v64 = sub_25B004C54();
  v60 = sub_25B004864();
  v68 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v55 - v17;
  v66 = sub_25B004DA4();
  v61 = sub_25B004864();
  v72 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v55 - v18;
  v67 = sub_25B004CF4();
  v19 = sub_25B004864();
  v69 = *(v19 - 8);
  v70 = v19;
  MEMORY[0x28223BE20](v19);
  v59 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v65 = &v55 - v22;
  v23 = *v3;
  v24 = *(v3 + 8);
  v25 = *(v3 + 16);
  v26 = *(v3 + 24);
  LOBYTE(v7) = *(v3 + 33);
  v27 = *(v78 + 52);
  LOBYTE(v13) = *(v3 + *(v78 + 48));
  LOBYTE(v15) = *(v3 + 32);
  v77 = v3;
  v28 = sub_25B004DB4();
  v29 = v3 + v27;
  v30 = v73;
  (*(*(v28 - 8) + 16))(v73, v29, v28);
  v31 = v30 + *(v74 + 11);
  *v31 = v23;
  *(v31 + 8) = v24;
  *(v31 + 16) = v25;
  *(v31 + 24) = v26;
  *(v31 + 32) = v15;
  *(v31 + 33) = v7;
  *(v31 + 34) = v13;
  sub_25AF1D7EC(v23, v24, v25, v26, v15);
  sub_25B0056B4();
  sub_25B004924();
  v32 = v75;
  sub_25AF25B0C(v30, v75, &qword_27FA25D60);
  v74 = &v55;
  v33 = v55;
  v34 = (v32 + *(v56 + 36));
  v35 = v105;
  v34[4] = v104;
  v34[5] = v35;
  v34[6] = v106;
  v36 = v101;
  *v34 = v100;
  v34[1] = v36;
  v37 = v103;
  v34[2] = v102;
  v34[3] = v37;
  v81 = v80;
  v82 = v33;
  v83 = v77;
  sub_25B0056B4();
  v38 = sub_25AFB2D84();
  v39 = v57;
  sub_25B0050E4();
  sub_25AF2602C(v32, &qword_27FA25D68);
  v40 = swift_getWitnessTable();
  v88 = v38;
  v89 = v40;
  v41 = v60;
  v42 = swift_getWitnessTable();
  v43 = v58;
  sub_25B005194();
  (*(v68 + 8))(v39, v41);
  v44 = swift_getWitnessTable();
  v86 = v42;
  v87 = v44;
  v45 = v61;
  v46 = swift_getWitnessTable();
  v47 = v59;
  sub_25B005144();
  (*(v72 + 8))(v43, v45);
  v48 = swift_getWitnessTable();
  v84 = v46;
  v85 = v48;
  v49 = v70;
  swift_getWitnessTable();
  v50 = v69;
  v51 = *(v69 + 16);
  v52 = v65;
  v51(v65, v47, v49);
  v53 = *(v50 + 8);
  v53(v47, v49);
  v51(v76, v52, v49);
  return (v53)(v52, v49);
}

uint64_t sub_25AFABAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v84 = a4;
  v67 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v66 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_25B004DB4();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(a3 + 8);
  v10 = type metadata accessor for PlatterFillPart();
  v68 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v65 = &v58 - v11;
  v70 = v12;
  v13 = sub_25B004864();
  v74 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v69 = &v58 - v14;
  type metadata accessor for PlatterEnvironmentBasedAppearanceEffect(255);
  v78 = v13;
  v15 = sub_25B004864();
  v79 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v72 = &v58 - v16;
  v73 = sub_25B004864();
  v64 = v15;
  v17 = sub_25B004C84();
  v81 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v76 = &v58 - v18;
  v82 = v19;
  v71 = sub_25B004864();
  v83 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v77 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v80 = &v58 - v22;
  sub_25B005B34();
  v75 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = *a1;
  v24 = *(a1 + 8);
  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  v59 = *(a1 + 32);
  v95[0] = v23;
  v95[1] = v24;
  v95[2] = v25;
  v95[3] = v26;
  v96 = v59;
  v27 = *(a1 + 33);
  v60 = v27;
  v58 = *(a1 + 40);
  v28 = a2;
  v29 = type metadata accessor for ControlCenterStyleView();
  v30 = *(a1 + v29[12]);
  (*(v61 + 16))(v9, a1 + v29[13], v62);
  v31 = a1 + v29[11];
  v32 = v66;
  (*(v67 + 16))(v66, v31, v28);
  v33 = v65;
  v34 = v27;
  v35 = v58;
  sub_25AFAC3A4(v95, v34, v58, v30, v9, v32, v28, v65);
  sub_25AF1D7EC(v23, v24, v25, v26, v59);

  sub_25B0056B4();
  v56 = v70;
  WitnessTable = swift_getWitnessTable();
  v36 = v69;
  sub_25B005324();
  (*(v68 + 8))(v33, v56);
  v37 = *(v35 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_visualsModel);
  v93 = WitnessTable;
  v94 = MEMORY[0x277CDFC60];

  v38 = v78;
  v39 = swift_getWitnessTable();
  v40 = v72;
  sub_25AFAC494(v37, v38, v39, v72);

  (*(v74 + 8))(v36, v38);
  v41 = sub_25AFB1B30(&qword_27FA25D70, type metadata accessor for PlatterEnvironmentBasedAppearanceEffect);
  v91 = v39;
  v92 = v41;
  v42 = v64;
  v43 = swift_getWitnessTable();
  v44 = v76;
  sub_25AFAC748(v35, v60, v42, v43, v76);
  (*(v79 + 8))(v40, v42);
  v45 = sub_25AFB2CD0();
  v89 = v43;
  v90 = v45;
  v87 = swift_getWitnessTable();
  v88 = v43;
  v46 = v82;
  v47 = swift_getWitnessTable();
  v48 = v77;
  sub_25AFACBDC(0, v30, v46, v47, v77);
  (*(v81 + 8))(v44, v46);
  v49 = sub_25AFB2D24();
  v85 = v47;
  v86 = v49;
  v50 = v71;
  swift_getWitnessTable();
  v51 = v83;
  v52 = *(v83 + 16);
  v53 = v80;
  v52(v80, v48, v50);
  v54 = *(v51 + 8);
  v54(v48, v50);
  v52(v84, v53, v50);
  v54(v53, v50);
}

uint64_t sub_25AFAC3A4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *(a1 + 32);
  v13 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v13;
  *(a8 + 32) = v12;
  *(a8 + 33) = a2;
  *(a8 + 40) = a3;
  *(a8 + 48) = a4;
  v14 = type metadata accessor for PlatterFillPart();
  v15 = *(v14 + 48);
  v16 = sub_25B004DB4();
  (*(*(v16 - 8) + 32))(a8 + v15, a5, v16);
  v17 = *(*(a7 - 8) + 32);
  v18 = a8 + *(v14 + 52);

  return v17(v18, a6, a7);
}

uint64_t sub_25AFAC494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v24 = a4;
  v7 = type metadata accessor for PlatterEnvironmentBasedAppearanceEffect(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_25B004864();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  *v9 = a1;
  v17 = *(v7 + 20);
  *(v9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24360);
  swift_storeEnumTagMultiPayload();
  v18 = *(v7 + 24);
  *(v9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24358);
  swift_storeEnumTagMultiPayload();

  MEMORY[0x25F85D150](v9, a2, v7, a3);
  sub_25AFB2F80(v9, type metadata accessor for PlatterEnvironmentBasedAppearanceEffect);
  v19 = sub_25AFB1B30(&qword_27FA25D70, type metadata accessor for PlatterEnvironmentBasedAppearanceEffect);
  v25 = a3;
  v26 = v19;
  swift_getWitnessTable();
  v20 = *(v11 + 16);
  v20(v16, v13, v10);
  v21 = *(v11 + 8);
  v21(v13, v10);
  v20(v24, v16, v10);
  return (v21)(v16, v10);
}

uint64_t sub_25AFAC748@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38[0] = a1;
  v42 = a4;
  v40 = a5;
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v38 - v11;
  v13 = sub_25B004864();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v38 - v18;
  v20 = sub_25B004C84();
  v39 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v41 = v38 - v22;
  if (a2)
  {
    v23 = *(v7 + 16);
    (v23)(v12, v38[1], a3, v21);
    v23(v9, v12, a3);
    v24 = sub_25AFB2CD0();
    v43 = v42;
    v44 = v24;
    swift_getWitnessTable();
    sub_25AFA89E0(v9, v13, a3);
    v25 = *(v7 + 8);
    v25(v9, a3);
    v25(v12, a3);
  }

  else
  {
    type metadata accessor for SizeContainer(0);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    sub_25B004264();
    v54 = v26;
    sub_25B005484();
    v27 = v51;
    v28 = v52;
    v51 = v38[0];
    v52 = v27;
    v53 = v28;
    v38[0] = v20;
    v29 = v42;
    MEMORY[0x25F85D150](&v51, a3, &type metadata for PlatterLightEffect, v42);

    v30 = sub_25AFB2CD0();
    v49 = v29;
    v50 = v30;
    swift_getWitnessTable();
    v31 = *(v14 + 16);
    v31(v19, v16, v13);
    v32 = *(v14 + 8);
    v32(v16, v13);
    v31(v16, v19, v13);
    v20 = v38[0];
    sub_25AFA88E8(v16, v13);
    v32(v16, v13);
    v32(v19, v13);
  }

  v33 = sub_25AFB2CD0();
  v34 = v42;
  v47 = v42;
  v48 = v33;
  WitnessTable = swift_getWitnessTable();
  v46 = v34;
  swift_getWitnessTable();
  v35 = v39;
  v36 = v41;
  (*(v39 + 16))(v40, v41, v20);
  return (*(v35 + 8))(v36, v20);
}

uint64_t sub_25AFACBDC@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[0] = a5;
  v9 = sub_25B004864();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v21 - v15;
  v22[0] = a1 & 1;
  v22[1] = a2;
  MEMORY[0x25F85D150](v22, a3, &type metadata for PressedScaleEffect, a4, v14);
  v17 = sub_25AFB2D24();
  v21[1] = a4;
  v21[2] = v17;
  swift_getWitnessTable();
  v18 = *(v10 + 16);
  v18(v16, v12, v9);
  v19 = *(v10 + 8);
  v19(v12, v9);
  v18(v21[0], v16, v9);
  return (v19)(v16, v9);
}

uint64_t sub_25AFACD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[0] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25EF8);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25F00);
  MEMORY[0x28223BE20](v12);
  v14 = (v20 - v13);
  if (sub_25AFB9280())
  {
    swift_getKeyPath();
    v20[1] = a2;
    sub_25AFB1B30(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004234();

    v15 = *(a2 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__useLightEffect);
    *v14 = sub_25B0056B4();
    v14[1] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25F20);
    sub_25AFAD0EC(a1, a3, a4, v15, v14 + *(v17 + 44));
    sub_25AFB4394(v14, v11);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25F08);
    sub_25AF0F274(&qword_27FA25F10, &qword_27FA25F00);
    sub_25AF0F274(&qword_27FA25F18, &qword_27FA25F08);
    sub_25B004C74();
    return sub_25AFB4404(v14);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25F08);
    (*(*(v19 - 8) + 16))(v11, a1, v19);
    swift_storeEnumTagMultiPayload();
    sub_25AF0F274(&qword_27FA25F10, &qword_27FA25F00);
    sub_25AF0F274(&qword_27FA25F18, &qword_27FA25F08);
    return sub_25B004C74();
  }
}

uint64_t sub_25AFAD0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v33 = a1;
  v37 = a5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25F28);
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25F30);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  sub_25B005B34();
  v36 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v39 = a2;
  v40 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25F38);
  sub_25B005494();
  v19 = v38;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25F08);
  (*(*(v20 - 8) + 16))(v18, v33, v20);
  v21 = &v18[*(v13 + 36)];
  *v21 = v19;
  v21[8] = 0;
  v21[9] = a4 & 1;
  v22 = sub_25B0053F4();
  v39 = a2;
  v40 = a3;
  sub_25B005494();

  v32 = v18;
  v39 = v22;
  MEMORY[0x28223BE20](v23);
  *(&v31 - 16) = (a4 & 1) == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24700);
  sub_25AFB4474();
  sub_25B005394();

  sub_25AF25FC4(v18, v15, &qword_27FA25F30);
  v24 = *(v8 + 16);
  v25 = v34;
  v26 = v35;
  v24(v34, v12, v35);
  v27 = v37;
  sub_25AF25FC4(v15, v37, &qword_27FA25F30);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25F50);
  v24((v27 + *(v28 + 48)), v25, v26);
  v29 = *(v8 + 8);
  v29(v12, v26);
  sub_25AF2602C(v32, &qword_27FA25F30);
  v29(v25, v26);
  sub_25AF2602C(v15, &qword_27FA25F30);
}

uint64_t sub_25AFAD508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v32 = a2;
  v31 = sub_25B004544();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24368);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25ED0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  KeyPath = swift_getKeyPath();
  v11 = *v2;
  swift_getKeyPath();
  v33 = v11;
  sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
  sub_25B004234();

  v12 = *(v11 + 200);
  v27 = v2;
  if (v12 == 1)
  {
    v13 = sub_25B005694();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  }

  else
  {
    type metadata accessor for PlatterEnvironmentBasedAppearanceEffect(0);
    sub_25AF3DBEC(v6);
  }

  v14 = &v9[*(v7 + 36)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25ED8);
  sub_25AF25B0C(v6, v14 + *(v15 + 28), &qword_27FA24368);
  *v14 = KeyPath;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25EE0);
  (*(*(v16 - 8) + 16))(v9, v28, v16);
  swift_getKeyPath();
  v33 = v11;
  sub_25B004234();

  v17 = v29;
  if (*(v11 + 200) == 1)
  {
    v19 = v30;
    v18 = v31;
    (*(v29 + 104))(v30, *MEMORY[0x277CDF3D0], v31);
  }

  else
  {
    type metadata accessor for PlatterEnvironmentBasedAppearanceEffect(0);
    v19 = v30;
    sub_25AF3DDCC(v30);
    v18 = v31;
  }

  v20 = swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25EE8);
  v22 = v32;
  v23 = (v32 + *(v21 + 36));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25EF0);
  (*(v17 + 32))(v23 + *(v24 + 28), v19, v18);
  *v23 = v20;
  return sub_25AF25B0C(v9, v22, &qword_27FA25ED0);
}

uint64_t sub_25AFAD950@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25E58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = *(v1 + 40);
  swift_getKeyPath();
  v25 = v8;
  sub_25AFB1B30(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  if (*(v8 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__fillPercent + 4))
  {
    return (*(v5 + 56))(a1, 1, 1, v4);
  }

  HIDWORD(v22) = *(v1 + 48);

  v25 = sub_25B005424();
  v10 = sub_25B0046E4();
  v11 = sub_25B0056B4();
  v23 = a1;
  v13 = v12;
  v14 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25E60) + 36)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25E68);
  sub_25AFADC40(v2, (v14 + *(v15 + 36)));
  *v14 = v11;
  v14[1] = v13;
  *v7 = v8;
  v16 = BYTE4(v22);
  v7[8] = BYTE4(v22);
  *(v7 + 2) = v10;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25E70) + 36)] = v8;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25E78) + 36)] = v8;
  LOBYTE(v14) = *(v2 + 33);
  KeyPath = swift_getKeyPath();
  LOBYTE(v25) = 0;
  v18 = swift_getKeyPath();
  v24 = 0;
  v19 = v25;
  v20 = &v7[*(v4 + 36)];
  *v20 = v8;
  v20[8] = v14;
  *(v20 + 9) = 1;
  v20[11] = v16;
  *(v20 + 2) = KeyPath;
  v20[24] = v19;
  *(v20 + 4) = v18;
  v20[40] = 0;
  v21 = v23;
  sub_25AF25B0C(v7, v23, &qword_27FA25E58);
  (*(v5 + 56))(v21, 0, 1, v4);
  return swift_retain_n();
}

uint64_t sub_25AFADC40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_25B0056B4();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25E80);
  sub_25AFADD24(a1, (a2 + *(v5 + 44)));
}

uint64_t sub_25AFADD24@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25E88);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0056B4();
  sub_25B004924();
  v10 = type metadata accessor for PlatterFillPart();
  sub_25AFADFA4(a1 + *(v10 + 48), v9);
  v11 = *(v4 + 36);
  v12 = *MEMORY[0x277CE13C0];
  v13 = sub_25B005734();
  (*(*(v13 - 8) + 104))(&v9[v11], v12, v13);
  sub_25AF25FC4(v9, v6, &qword_27FA25E88);
  v14 = v19[5];
  a2[4] = v19[4];
  a2[5] = v14;
  a2[6] = v19[6];
  v15 = v19[1];
  *a2 = v19[0];
  a2[1] = v15;
  v16 = v19[3];
  a2[2] = v19[2];
  a2[3] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25E90);
  sub_25AF25FC4(v6, a2 + *(v17 + 48), &qword_27FA25E88);
  sub_25AF2602C(v9, &qword_27FA25E88);
  sub_25AF2602C(v6, &qword_27FA25E88);
}

uint64_t sub_25AFADFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25E98) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25EA0) + 28);
  sub_25B004C34();
  v7 = sub_25B004C44();
  (*(*(v7 - 8) + 56))(v5 + v6, 0, 1, v7);
  *v5 = swift_getKeyPath();
  v8 = sub_25B004DB4();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = sub_25B005414();
  LOBYTE(v6) = *(v2 + 48);
  v10 = *(v2 + 40);
  v11 = *(v10 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_visualsModel);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25EA8) + 36);
  *v12 = v9;
  *(v12 + 8) = 1;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 89) = v6;
  *(v12 + 90) = 1;
  *(v12 + 96) = v11;
  v13 = type metadata accessor for ColorMatrixEffect();
  v14 = v13[9];
  *(v12 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25EB0);
  swift_storeEnumTagMultiPayload();
  v15 = v12 + v13[10];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = v12 + v13[11];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25EB8) + 36));
  *v17 = 1;
  v17[1] = v6;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25EC0) + 36);
  *v18 = v10;
  *(v18 + 8) = 1;
}

__n128 sub_25AFAE200@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  sub_25AFB1B30(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v8 = a1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__fillPercent;
  v9 = *(a1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__fillPercent + 4);
  swift_getKeyPath();
  *&v13 = a1;
  sub_25B004234();

  if (*(v8 + 4))
  {
    v10 = 0.0;
  }

  else
  {
    v10 = *v8 + -1.0 + 1.0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = (v9 & 1) == 0;
  *(v11 + 24) = v10;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;

  sub_25B0056B4();
  sub_25B004924();
  *a4 = sub_25AFB4D7C;
  *(a4 + 8) = v11;
  *(a4 + 80) = v17;
  *(a4 + 96) = v18;
  *(a4 + 112) = v19;
  *(a4 + 16) = v13;
  *(a4 + 32) = v14;
  result = v16;
  *(a4 + 48) = v15;
  *(a4 + 64) = v16;
  return result;
}

double sub_25AFAE3F8@<D0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B004724();
  v4 = sub_25B004B44();
  v26 = 0;
  sub_25AFAE658(a1, &v13);
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v39[8] = v21;
  v39[9] = v22;
  v39[10] = v23;
  v39[4] = v17;
  v39[5] = v18;
  v39[6] = v19;
  v39[7] = v20;
  v39[0] = v13;
  v39[1] = v14;
  v38 = v24;
  v40 = v24;
  v39[2] = v15;
  v39[3] = v16;
  sub_25AF25FC4(&v27, v12, &qword_27FA26020);
  sub_25AF2602C(v39, &qword_27FA26020);

  *&v25[135] = v35;
  *&v25[151] = v36;
  *&v25[167] = v37;
  *&v25[71] = v31;
  *&v25[87] = v32;
  *&v25[103] = v33;
  *&v25[119] = v34;
  *&v25[7] = v27;
  *&v25[23] = v28;
  *&v25[39] = v29;
  *&v25[55] = v30;
  v5 = *&v25[144];
  *(a2 + 145) = *&v25[128];
  *(a2 + 161) = v5;
  *(a2 + 177) = *&v25[160];
  v6 = *&v25[80];
  *(a2 + 81) = *&v25[64];
  *(a2 + 97) = v6;
  v7 = *&v25[112];
  *(a2 + 113) = *&v25[96];
  *(a2 + 129) = v7;
  v8 = *&v25[16];
  *(a2 + 17) = *v25;
  *(a2 + 33) = v8;
  result = *&v25[32];
  v10 = *&v25[48];
  *(a2 + 49) = *&v25[32];
  v25[183] = v38;
  v11 = v26;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 193) = *&v25[176];
  *(a2 + 65) = v10;
  return result;
}

uint64_t sub_25AFAE658@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0056B4();
  sub_25B0046D4();
  v3 = v50;
  v4 = v51;
  v5 = v52;
  v6 = v53;
  v8 = v54;
  v7 = v55;
  sub_25B0056B4();
  sub_25B004924();
  *&v31 = a1;
  *(&v31 + 1) = v50;
  LOBYTE(v32) = v51;
  *(&v32 + 1) = v52;
  LOBYTE(v33) = v53;
  *(&v33 + 1) = v54;
  *v34 = v55;
  v9 = v27;
  *&v34[56] = v27;
  v10 = v28;
  *&v34[72] = v28;
  v11 = v29;
  *&v34[88] = v29;
  v12 = v30;
  *&v34[104] = v30;
  v13 = v24;
  *&v34[8] = v24;
  v14 = v25;
  *&v34[24] = v25;
  v15 = v26;
  *&v34[40] = v26;
  v16 = *&v34[96];
  *(a2 + 128) = *&v34[80];
  *(a2 + 144) = v16;
  v17 = *&v34[32];
  *(a2 + 64) = *&v34[16];
  *(a2 + 80) = v17;
  v18 = *&v34[64];
  *(a2 + 96) = *&v34[48];
  *(a2 + 112) = v18;
  v19 = v32;
  *a2 = v31;
  *(a2 + 16) = v19;
  v20 = *v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v20;
  v44 = v9;
  v45 = v10;
  v46 = v11;
  v47 = v12;
  v41 = v13;
  v42 = v14;
  v49 = v4;
  v48 = v6;
  v23[168] = 0;
  *(a2 + 160) = *&v34[112];
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v35[0] = a1;
  v35[1] = v3;
  v36 = v4;
  v37 = v5;
  v38 = v6;
  v39 = v8;
  v40 = v7;
  v43 = v15;

  sub_25AF25FC4(&v31, v23, &qword_27FA26028);
  sub_25AF2602C(v35, &qword_27FA26028);
}

uint64_t sub_25AFAE92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26008);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v21 - v8;
  sub_25B0056B4();
  sub_25B004924();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26010);
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = &v9[*(v7 + 44)];
  v12 = v21[5];
  *(v11 + 4) = v21[4];
  *(v11 + 5) = v12;
  *(v11 + 6) = v21[6];
  v13 = v21[1];
  *v11 = v21[0];
  *(v11 + 1) = v13;
  v14 = v21[3];
  *(v11 + 2) = v21[2];
  *(v11 + 3) = v14;
  v15 = sub_25B0056B4();
  v17 = v16;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = sub_25B005414();

  sub_25AF25B0C(v9, a3, &qword_27FA26008);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26018);
  v20 = a3 + *(result + 36);
  *v20 = v15;
  *(v20 + 8) = v17;
  *(v20 + 16) = v18;
  *(v20 + 24) = 256;
  *(v20 + 32) = a2;
  *(v20 + 40) = 1;
  return result;
}

uint64_t sub_25AFAEB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 1))
  {
    v5 = 0.97;
  }

  else
  {
    v5 = 1.0;
  }

  sub_25B0057D4();
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25F58);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25F60);
  v12 = a2 + *(result + 36);
  *v12 = v5;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  return result;
}

uint64_t sub_25AFAEC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v29 = a2;
  v3 = type metadata accessor for PressedStateTrackingEffect(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25D10);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  MEMORY[0x28223BE20](v7);
  v24 = &v21 - v9;
  v22 = v2;
  LOBYTE(v30) = sub_25B004DD4() & 1;
  v25 = type metadata accessor for PressedStateTrackingEffect;
  sub_25AFB1C3C(v2, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PressedStateTrackingEffect);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v23 = type metadata accessor for PressedStateTrackingEffect;
  sub_25AFB21CC(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PressedStateTrackingEffect);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25D18);
  v13 = sub_25AF0F274(&qword_27FA25D20, &qword_27FA25D18);
  v14 = v12;
  sub_25B005374();

  v15 = v22;
  v16 = *(v22 + *(v4 + 28));
  swift_getKeyPath();
  v30 = v16;
  sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
  sub_25B004234();

  v34 = *(v16 + 201);
  sub_25AFB1C3C(v15, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  v17 = swift_allocObject();
  sub_25AFB21CC(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v10, v23);
  v30 = v14;
  v31 = MEMORY[0x277D839B0];
  v32 = v13;
  v33 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v18 = v27;
  v19 = v24;
  sub_25B005374();

  return (*(v28 + 8))(v19, v18);
}

uint64_t sub_25AFAEFDC()
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_25B004DD4())
  {
    type metadata accessor for PressedStateTrackingEffect(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25D28);
    sub_25B005524();
  }

  else
  {
  }
}

void sub_25AFAF104(uint64_t a1@<X0>, int *a2@<X1>, _BYTE *a3@<X8>)
{
  v89 = a1;
  v97 = a3;
  WitnessTable = swift_getWitnessTable();
  v4 = sub_25B004D14();
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v98 = a2;
  v85 = v5;
  v83 = v6;
  v86 = v4;
  v87 = type metadata accessor for MaterialOrColorEffect();
  v7 = sub_25B004864();
  v91 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v90 = &v74[-v8];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24018);
  v92 = v7;
  v9 = sub_25B004864();
  v95 = *(v9 - 8);
  v96 = v9;
  MEMORY[0x28223BE20](v9);
  v93 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v94 = &v74[-v12];
  v84 = sub_25B005674();
  v80 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v79 = &v74[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v81 = &v74[-v15];
  MEMORY[0x28223BE20](v16);
  v78 = &v74[-v17];
  MEMORY[0x28223BE20](v18);
  v101 = &v74[-v19];
  v77 = sub_25B004B14();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v21 = &v74[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_25B005644();
  v99 = *(v22 - 8);
  v100 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v74[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v27 = &v74[-v26];
  MEMORY[0x28223BE20](v28);
  v102 = &v74[-v29];
  v30 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
    __break(1u);
    goto LABEL_23;
  }

  swift_getKeyPath();
  v108 = v30;
  sub_25AFB1B30(&qword_27FA25250, type metadata accessor for GlanceModel);
  v31 = v30;
  sub_25B004234();

  v32 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
  swift_beginAccess();
  LOBYTE(v32) = v31[v32];

  if (v32)
  {
    v75 = 1;
    goto LABEL_6;
  }

  if (!qword_27FA30B10)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v33 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
  swift_getKeyPath();
  v107 = v33;
  sub_25AFB1B30(&qword_27FA23D60, type metadata accessor for EditingModel);

  sub_25B004234();

  v75 = *(v33 + 17);

LABEL_6:
  v34 = v84;
  v35 = v98;
  v36 = v88;
  v37 = v88 + v98[12];
  v38 = *v37;
  v39 = v101;
  if (*(v37 + 8) != 1)
  {

    sub_25B005CC4();
    v42 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(v38, 0);
    (*(v76 + 8))(v21, v77);
    v40 = v100;
    if (v107 != 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    v43 = v99;
    if (*(v36 + v35[11]))
    {
      v44 = MEMORY[0x277CDF138];
    }

    else
    {
      v44 = MEMORY[0x277CDF130];
    }

    (*(v99 + 104))(v24, *v44, v40);
    v45 = *(v43 + 32);
    v45(v27, v24, v40);
    v45(v102, v27, v40);
    goto LABEL_14;
  }

  v40 = v100;
  if (v38)
  {
    goto LABEL_10;
  }

LABEL_8:
  v41 = v99;
  (*(v99 + 104))(v27, *MEMORY[0x277CDF140], v40);
  (*(v41 + 32))(v102, v27, v40);
LABEL_14:
  v46 = v36 + v35[13];
  v47 = *v46;
  if (*(v46 + 8) == 1)
  {
    v48 = *v46;
  }

  else
  {

    sub_25B005CC4();
    v49 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(v47, 0);
    (*(v76 + 8))(v21, v77);
    v48 = v107;
  }

  v50 = v78;
  sub_25B005634();
  sub_25B005654();
  v51 = v80;
  v52 = *(v80 + 8);
  v52(v50, v34);
  if (v48 == 2 || (v48 & 1) != 0)
  {
    v53 = v79;
    (*(v51 + 16))(v79, v39, v34);
  }

  else
  {
    v53 = v79;
    sub_25B005624();
  }

  v54 = v34;
  v55 = v81;
  (*(v51 + 32))(v81, v53, v54);
  v56 = v98[10];
  v57 = *(v36 + v98[11]);
  v58 = *(sub_25AF6C6E4(v98, &off_286C50030) + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_visualsModel);

  v59 = v86;
  v60 = swift_getWitnessTable();
  v61 = v36 + v56;
  v62 = v90;
  v63 = v57;
  LOBYTE(v57) = v75;
  sub_25AF49A00(v55, v61, 2, v63, v75, v58, v59, v85, v90, v60, v83);

  LOBYTE(v107) = v57;
  v64 = swift_getWitnessTable();
  v105 = v60;
  v106 = v64;
  v65 = v92;
  v66 = swift_getWitnessTable();
  v67 = v93;
  sub_25B0053A4();
  (*(v91 + 8))(v62, v65);
  v52(v55, v54);
  v52(v101, v54);
  (*(v99 + 8))(v102, v100);
  v68 = sub_25AF0F274(&qword_27FA24010, &qword_27FA24018);
  v103 = v66;
  v104 = v68;
  v69 = v96;
  swift_getWitnessTable();
  v71 = v94;
  v70 = v95;
  v72 = *(v95 + 16);
  v72(v94, v67, v69);
  v73 = *(v70 + 8);
  v73(v67, v69);
  v72(v97, v71, v69);
  v73(v71, v69);
}

uint64_t sub_25AFAFBE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B004AC4();
  *a1 = result & 1;
  return result;
}

void sub_25AFAFC64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v53 = a1;
  v57 = a2;
  v4 = type metadata accessor for VisualsModelPropertiesEffect(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25D30);
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = v47 - v9;
  v52 = sub_25B004C14();
  v10 = *(v52 - 1);
  MEMORY[0x28223BE20](v52);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v47 - v14;
  v16 = *(v3 + 32);
  v58 = v7;
  v59 = v3;
  if (v16 > 0xFD)
  {
    sub_25AFA0400(v83);
LABEL_5:
    v80 = v83[8];
    v81 = v83[9];
    v82 = v83[10];
    v76 = v83[4];
    v77 = v83[5];
    v78 = v83[6];
    v79 = v83[7];
    v74 = v83[2];
    v75 = v83[3];
    v72 = v83[0];
    v73 = v83[1];
    sub_25AF3DFF4(v15);
    v24 = v52;
    (*(v10 + 104))(v12, *MEMORY[0x277CE0220], v52);
    LODWORD(v51) = sub_25B004C04();
    v25 = *(v10 + 8);
    v25(v12, v24);
    v25(v15, v24);
    v69 = v80;
    v70 = v81;
    v71 = v82;
    v65 = v76;
    v66 = v77;
    v67 = v78;
    v68 = v79;
    v61 = v72;
    v62 = v73;
    v63 = v74;
    v64 = v75;
    v52 = type metadata accessor for VisualsModelPropertiesEffect;
    sub_25AFB1C3C(v3, v7, type metadata accessor for VisualsModelPropertiesEffect);
    v26 = *(v5 + 80);
    v47[1] = v26;
    v49 = (v26 + 16) & ~v26;
    v50 = v49 + v6;
    v27 = v49;
    v28 = (v49 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v30 = v7;
    v31 = v29;
    v48 = type metadata accessor for VisualsModelPropertiesEffect;
    sub_25AFB21CC(v30, v29 + v27, type metadata accessor for VisualsModelPropertiesEffect);
    v32 = (v31 + v28);
    v33 = v81;
    v32[8] = v80;
    v32[9] = v33;
    v32[10] = v82;
    v34 = v77;
    v32[4] = v76;
    v32[5] = v34;
    v35 = v79;
    v32[6] = v78;
    v32[7] = v35;
    v36 = v73;
    *v32 = v72;
    v32[1] = v36;
    v37 = v75;
    v32[2] = v74;
    v32[3] = v37;
    sub_25AF25FC4(v83, v60, &qword_27FA25B78);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25D38);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B78);
    v40 = sub_25AF0F274(&qword_27FA25D40, &qword_27FA25D38);
    v41 = sub_25AFB22C0();
    v42 = v54;
    sub_25B005374();

    LOBYTE(v28) = v51 & 1;
    v60[0] = v51 & 1;
    v43 = v58;
    sub_25AFB1C3C(v59, v58, v52);
    v44 = v50;
    v45 = swift_allocObject();
    sub_25AFB21CC(v43, v45 + v49, v48);
    *(v45 + v44) = v28;
    *&v61 = v38;
    *(&v61 + 1) = v39;
    *&v62 = v40;
    *(&v62 + 1) = v41;
    swift_getOpaqueTypeConformance2();
    v46 = v56;
    sub_25B005374();

    sub_25AF2602C(v83, &qword_27FA25B78);
    (*(v55 + 8))(v42, v46);
    return;
  }

  v49 = v4;
  v50 = v5;
  v51 = v6;
  v17 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    v19 = *v3;
    v18 = *(v3 + 8);
    v20 = *(v3 + 16);
    v21 = *(v59 + 24);
    *&v72 = v19;
    *(&v72 + 1) = v18;
    *&v73 = v20;
    *(&v73 + 1) = v21;
    LOBYTE(v74) = v16;
    sub_25AF1D7EC(v19, v18, v20, v21, v16);
    v22 = v17;
    sub_25AF846B4(&v72, v83);

    v23 = v21;
    v3 = v59;
    sub_25AF231D0(v19, v18, v20, v23, v16);
    v7 = v58;
    v5 = v50;
    v6 = v51;
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_25AFB028C(uint64_t a1, __int128 *a2)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for VisualsModelPropertiesEffect(0);
  sub_25AF25FC4(a2, &v4, &qword_27FA25B78);
  sub_25AFAA8E4(a2);
}

uint64_t sub_25AFB0360(uint64_t a1, char a2)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + *(type metadata accessor for VisualsModelPropertiesEffect(0) + 24));
  if (*(v4 + 200) == (a2 & 1))
  {
    *(v4 + 200) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
    sub_25B004224();
  }
}

uint64_t sub_25AFB056C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B004DE4();
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

uint64_t sub_25AFB063C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25B004DE4();
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

void sub_25AFB06F4()
{
  sub_25B004DE4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ControlCenterStyle.VisualsModel(319);
    if (v1 <= 0x3F)
    {
      sub_25AFB0FB0(319, &qword_27FA25B90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25AFB07C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25B004DE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B98);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_25AFB0910(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_25B004DE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B98);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_25AFB0A44()
{
  sub_25AFB0FB0(319, &qword_27FA23B90, &type metadata for GlanceButtonID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_25B004DE4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ControlCenterStyle.VisualsModel(319);
      if (v2 <= 0x3F)
      {
        sub_25AFB34BC(319, qword_27FA25BB0, MEMORY[0x277CE0228]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25AFB0B38()
{
  sub_25AFB0FB0(319, &qword_27FA23B90, &type metadata for GlanceButtonID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    v1 = MEMORY[0x277D839B0];
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_25AFB0FB0(319, qword_27FA25C38, v1, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_25AF4A5F0(319, &qword_27FA24270, &qword_27FA24278);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25AFB0C54(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 34) & ~v6) + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 33;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 > 0xFE)
    {
      return (*(v4 + 48))(&a1[v6 + 34] & ~v6);
    }

    v17 = a1[33];
    v18 = v17 >= 2;
    v19 = (v17 + 2147483646) & 0x7FFFFFFF;
    if (v18)
    {
      return (v19 + 1);
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_25AFB0DB8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((((v9 + 34) & ~v9) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 > 0xFE)
      {
        v17 = *(v6 + 56);
        v18 = &a1[v9 + 34] & ~v9;

        v17(v18);
      }

      else
      {
        a1[33] = a2 + 1;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_25AFB0FB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25AFB1008()
{
  sub_25AFB0FB0(319, &qword_27FA23B90, &type metadata for GlanceButtonID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GlanceButtonModel(319);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_25B004DB4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25AFB10EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_25B004DB4();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + 1;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v14 + v11 + ((v10 + 48) & ~v10)) & ~v11) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      v23 = ((a1 + 41) & 0xFFFFFFFFFFFFFFF8);
      if ((v12 & 0x80000000) != 0)
      {
        v25 = (v23 + v10 + 8) & ~v10;
        if (v7 == v13)
        {
          v26 = *(v6 + 48);

          return v26(v25, v7, v5);
        }

        else
        {
          v27 = *(v9 + 48);
          v28 = (v14 + v25 + v11) & ~v11;

          return v27(v28);
        }
      }

      else
      {
        v24 = *v23;
        if (*v23 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_25AFB13A0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v31 = v8;
  v9 = *(v8 + 84);
  v10 = sub_25B004DB4();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = v13 + 1;
  v18 = ((v13 + 1 + v14 + ((v12 + 48) & ~v12)) & ~v14) + *(*(v10 - 8) + 64);
  if (a3 <= v16)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v16 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v16 < a2)
  {
    v20 = ~v16 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_54:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  v25 = ((a1 + 41) & 0xFFFFFFFFFFFFFFF8);
  if ((v15 & 0x80000000) != 0)
  {
    v27 = (v25 + v12 + 8) & ~v12;
    if (v9 == v16)
    {
      v28 = *(v31 + 56);

      v28(v27, a2, v9, v7);
    }

    else
    {
      v29 = *(v11 + 56);
      v30 = (v17 + v27 + v14) & ~v14;

      v29(v30, a2);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v26 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v26 = (a2 - 1);
    }

    *v25 = v26;
  }
}

unint64_t sub_25AFB1704()
{
  result = qword_27FA25CC0;
  if (!qword_27FA25CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25B70);
    sub_25AFB17BC();
    sub_25AF0F274(&qword_27FA24010, &qword_27FA24018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25CC0);
  }

  return result;
}

unint64_t sub_25AFB17BC()
{
  result = qword_27FA25CC8;
  if (!qword_27FA25CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25B50);
    sub_25AFB1878();
    sub_25AFB1B30(&qword_27FA25D08, type metadata accessor for PressedStateTrackingEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25CC8);
  }

  return result;
}

unint64_t sub_25AFB1878()
{
  result = qword_27FA25CD0;
  if (!qword_27FA25CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25B48);
    sub_25AFB1934();
    sub_25AFB1B30(&qword_27FA25D00, type metadata accessor for VisualsModelPropertiesEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25CD0);
  }

  return result;
}

unint64_t sub_25AFB1934()
{
  result = qword_27FA25CD8;
  if (!qword_27FA25CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25B40);
    sub_25AFB19EC();
    sub_25AF0F274(&qword_27FA25CF8, &qword_27FA25B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25CD8);
  }

  return result;
}

unint64_t sub_25AFB19EC()
{
  result = qword_27FA25CE0;
  if (!qword_27FA25CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25B38);
    sub_25AFB1A78();
    sub_25AF24B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25CE0);
  }

  return result;
}

unint64_t sub_25AFB1A78()
{
  result = qword_27FA25CE8;
  if (!qword_27FA25CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25B30);
    sub_25AF0F274(&qword_27FA25CF0, &qword_27FA25B28);
    sub_25AF24B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25CE8);
  }

  return result;
}

uint64_t sub_25AFB1B30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AFB1C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_4()
{
  v1 = *(type metadata accessor for PressedStateTrackingEffect(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_25B004DE4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AFB1E70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFB1B30(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  *a2 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__useLightEffect);
  return result;
}

uint64_t sub_25AFB1F48()
{
  v1 = type metadata accessor for VisualsModelPropertiesEffect(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64) + v3 + 7;
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 32);
  if (v6 <= 0xFD)
  {
    sub_25AF18128(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), v6);
  }

  v7 = v4 & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 20);
  v9 = sub_25B004DE4();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  v10 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25B004C14();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v0 + v7;
  v13 = *(v0 + v7 + 24);
  if (v13 >> 1 != 0xFFFFFFFF || (*(v0 + v7 + 48) & 0xFELL) != 0)
  {
    sub_25AFB2164(*v12, *(v12 + 8), *(v12 + 16), v13, *(v12 + 32), *(v12 + 40), *(v0 + v7 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, v7 + 176, v2 | 7);
}

uint64_t sub_25AFB2164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  result = a2;
  if ((a7 >> 6) <= 1u)
  {
  }

  if (a7 >> 6 == 2)
  {
  }

  return result;
}

uint64_t sub_25AFB21CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25AFB2234()
{
  v1 = *(type metadata accessor for VisualsModelPropertiesEffect(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_25AFB028C(v0 + v2, v3);
}

unint64_t sub_25AFB22C0()
{
  result = qword_27FA25D48;
  if (!qword_27FA25D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25B78);
    sub_25AFB2344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25D48);
  }

  return result;
}

unint64_t sub_25AFB2344()
{
  result = qword_27FA25D50;
  if (!qword_27FA25D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25D50);
  }

  return result;
}

uint64_t sub_25AFB2398()
{
  v1 = type metadata accessor for VisualsModelPropertiesEffect(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = *(v0 + v4 + 32);
  if (v6 <= 0xFD)
  {
    sub_25AF18128(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), v6);
  }

  v7 = *(v1 + 20);
  v8 = sub_25B004DE4();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_25B004C14();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4 + 1, v2 | 7);
}

uint64_t sub_25AFB251C()
{
  v1 = *(type metadata accessor for VisualsModelPropertiesEffect(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_25AFB0360(v2, v3);
}

uint64_t sub_25AFB25D8(uint64_t a1)
{
  v2 = sub_25B004544();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_25B004984();
}

uint64_t sub_25AFB26A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  sub_25AF25FC4(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_25AFB274C(_OWORD *a1, __int128 *a2)
{
  v4 = a1[7];
  v5 = a1[9];
  __src[8] = a1[8];
  __src[9] = v5;
  v6 = a1[3];
  v7 = a1[5];
  __src[4] = a1[4];
  __src[5] = v7;
  v8 = a1[5];
  v9 = a1[7];
  __src[6] = a1[6];
  __src[7] = v9;
  v10 = a1[1];
  __src[0] = *a1;
  __src[1] = v10;
  v11 = a1[3];
  v13 = *a1;
  v12 = a1[1];
  __src[2] = a1[2];
  __src[3] = v11;
  v14 = a2[8];
  v15 = a2[9];
  v16 = a2[6];
  __src[18] = a2[7];
  __src[19] = v14;
  v17 = a2[10];
  __src[20] = v15;
  __src[21] = v17;
  v18 = a2[4];
  v19 = a2[5];
  v20 = a2[2];
  __src[14] = a2[3];
  __src[15] = v18;
  __src[16] = v19;
  __src[17] = v16;
  v21 = *a2;
  v22 = a2[1];
  v23 = a1[9];
  __src[10] = a1[10];
  __src[11] = v21;
  __src[12] = v22;
  __src[13] = v20;
  v43[8] = __src[8];
  v43[9] = v23;
  v43[10] = a1[10];
  v43[4] = __src[4];
  v43[5] = v8;
  v43[6] = __src[6];
  v43[7] = v4;
  v43[0] = v13;
  v43[1] = v12;
  v43[2] = __src[2];
  v43[3] = v6;
  if (sub_25AFB2C70(v43) != 1)
  {
    v29[8] = __src[19];
    v29[9] = __src[20];
    v29[10] = __src[21];
    v29[4] = __src[15];
    v29[5] = __src[16];
    v29[6] = __src[17];
    v29[7] = __src[18];
    v29[0] = __src[11];
    v29[1] = __src[12];
    v29[2] = __src[13];
    v29[3] = __src[14];
    if (sub_25AFB2C70(v29) != 1)
    {
      v27[8] = __src[19];
      v27[9] = __src[20];
      v27[10] = __src[21];
      v27[4] = __src[15];
      v27[5] = __src[16];
      v27[6] = __src[17];
      v27[7] = __src[18];
      v27[0] = __src[11];
      v27[1] = __src[12];
      v27[2] = __src[13];
      v27[3] = __src[14];
      __dst[8] = __src[19];
      __dst[9] = __src[20];
      __dst[10] = __src[21];
      __dst[4] = __src[15];
      __dst[5] = __src[16];
      __dst[6] = __src[17];
      __dst[7] = __src[18];
      __dst[0] = __src[11];
      __dst[1] = __src[12];
      __dst[2] = __src[13];
      __dst[3] = __src[14];
      v40 = __src[8];
      v41 = __src[9];
      v42 = __src[10];
      v36 = __src[4];
      v37 = __src[5];
      v39 = __src[7];
      v38 = __src[6];
      v32 = __src[0];
      v33 = __src[1];
      v35 = __src[3];
      v34 = __src[2];
      sub_25AF25FC4(a1, v28, &qword_27FA25B78);
      sub_25AF25FC4(a2, v28, &qword_27FA25B78);
      v25 = sub_25AFA7E78(&v32, __dst);
      sub_25AF2602C(v27, &qword_27FA25B78);
      v28[8] = __src[8];
      v28[9] = __src[9];
      v28[10] = __src[10];
      v28[4] = __src[4];
      v28[5] = __src[5];
      v28[6] = __src[6];
      v28[7] = __src[7];
      v28[0] = __src[0];
      v28[1] = __src[1];
      v28[2] = __src[2];
      v28[3] = __src[3];
      sub_25AF2602C(v28, &qword_27FA25B78);
      v24 = v25 ^ 1;
      return v24 & 1;
    }

    goto LABEL_5;
  }

  __dst[8] = __src[19];
  __dst[9] = __src[20];
  __dst[10] = __src[21];
  __dst[4] = __src[15];
  __dst[5] = __src[16];
  __dst[6] = __src[17];
  __dst[7] = __src[18];
  __dst[0] = __src[11];
  __dst[1] = __src[12];
  __dst[2] = __src[13];
  __dst[3] = __src[14];
  if (sub_25AFB2C70(__dst) != 1)
  {
LABEL_5:
    memcpy(__dst, __src, sizeof(__dst));
    sub_25AF25FC4(a1, &v32, &qword_27FA25B78);
    sub_25AF25FC4(a2, &v32, &qword_27FA25B78);
    sub_25AF2602C(__dst, &qword_27FA25D58);
    v24 = 1;
    return v24 & 1;
  }

  v40 = __src[8];
  v41 = __src[9];
  v42 = __src[10];
  v36 = __src[4];
  v37 = __src[5];
  v39 = __src[7];
  v38 = __src[6];
  v32 = __src[0];
  v33 = __src[1];
  v35 = __src[3];
  v34 = __src[2];
  sub_25AF25FC4(a1, v29, &qword_27FA25B78);
  sub_25AF25FC4(a2, v29, &qword_27FA25B78);
  sub_25AF2602C(&v32, &qword_27FA25B78);
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_25AFB2B04(__int128 *a1)
{
  v1 = a1[9];
  v8[8] = a1[8];
  v8[9] = v1;
  v8[10] = a1[10];
  v2 = a1[5];
  v8[4] = a1[4];
  v8[5] = v2;
  v3 = a1[7];
  v8[6] = a1[6];
  v8[7] = v3;
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  sub_25AF25FC4(v8, &v7, &qword_27FA25B78);
  return sub_25AFAA8E4(v8);
}

uint64_t sub_25AFB2B80()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 152);
  v18[7] = *(v2 + 136);
  v18[8] = v3;
  v4 = *(v2 + 184);
  v18[9] = *(v2 + 168);
  v18[10] = v4;
  v5 = *(v2 + 88);
  v18[3] = *(v2 + 72);
  v18[4] = v5;
  v6 = *(v2 + 120);
  v18[5] = *(v2 + 104);
  v18[6] = v6;
  v7 = *(v2 + 40);
  v18[0] = *(v2 + 24);
  v18[1] = v7;
  v18[2] = *(v2 + 56);
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[10];
  *(v2 + 168) = v1[9];
  *(v2 + 152) = v9;
  *(v2 + 136) = v8;
  v12 = v1[3];
  v11 = v1[4];
  v13 = v1[5];
  *(v2 + 120) = v1[6];
  *(v2 + 72) = v12;
  *(v2 + 88) = v11;
  *(v2 + 104) = v13;
  v15 = v1[1];
  v14 = v1[2];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v15;
  *(v2 + 56) = v14;
  *(v2 + 184) = v10;
  sub_25AF25FC4(v1, &v17, &qword_27FA25B78);
  return sub_25AF2602C(v18, &qword_27FA25B78);
}

uint64_t sub_25AFB2C70(uint64_t a1)
{
  if ((*(a1 + 24) >> 1) > 0x80000000)
  {
    return -(*(a1 + 24) >> 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25AFB2CD0()
{
  result = qword_27FA25D78;
  if (!qword_27FA25D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25D78);
  }

  return result;
}

unint64_t sub_25AFB2D24()
{
  result = qword_27FA25D80;
  if (!qword_27FA25D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25D80);
  }

  return result;
}

unint64_t sub_25AFB2D84()
{
  result = qword_27FA25D88;
  if (!qword_27FA25D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25D68);
    sub_25AFB2E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25D88);
  }

  return result;
}

unint64_t sub_25AFB2E10()
{
  result = qword_27FA25D90;
  if (!qword_27FA25D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25D60);
    sub_25AFB1B30(&qword_27FA25D98, MEMORY[0x277CDE278]);
    sub_25AFB2ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25D90);
  }

  return result;
}

unint64_t sub_25AFB2ECC()
{
  result = qword_27FA25DA0;
  if (!qword_27FA25DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25DA0);
  }

  return result;
}

uint64_t sub_25AFB2F80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for PressedScaleEffect(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for PressedScaleEffect(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_25AFB3160(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25DA8);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25DB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_25AFB32B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25DA8);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25DB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_25AFB33EC()
{
  type metadata accessor for ControlCenterStyle.VisualsModel(319);
  if (v0 <= 0x3F)
  {
    sub_25AF4A5F0(319, &qword_27FA25DC8, &qword_27FA24368);
    if (v1 <= 0x3F)
    {
      sub_25AFB34BC(319, qword_27FA25DD0, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25AFB34BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25B0045A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25AFB3510()
{
  sub_25AFB0FB0(319, &qword_27FA23B90, &type metadata for GlanceButtonID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GlanceButtonModel(319);
    if (v1 <= 0x3F)
    {
      sub_25B004DB4();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25AFB35F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_25B004DB4() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + ((v10 + 49) & ~v10) + v12) & ~v12) + *(v8 + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      v23 = ((a1 + 41) & 0xFFFFFFFFFFFFFFF8);
      if ((v13 & 0x80000000) != 0)
      {
        if (v7 == v14)
        {
          v25 = *(v6 + 48);

          return v25((v23 + v10 + 9) & ~v10);
        }

        else
        {
          v26 = *(v8 + 48);

          return v26((((v23 + v10 + 9) & ~v10) + v11 + v12) & ~v12, v9);
        }
      }

      else
      {
        v24 = *v23;
        if (*v23 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = ((v11 + ((v10 + 49) & ~v10) + v12) & ~v12) + *(v8 + 64);
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_25AFB3884(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_25B004DB4() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + ((v12 + 49) & ~v12) + v14) & ~v14) + *(v10 + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_54:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  v24 = ((a1 + 41) & 0xFFFFFFFFFFFFFFF8);
  if ((v15 & 0x80000000) != 0)
  {
    if (v9 == v16)
    {
      v26 = *(v8 + 56);

      v26((v24 + v12 + 9) & ~v12, a2);
    }

    else
    {
      v27 = *(v10 + 56);

      v27((((v24 + v12 + 9) & ~v12) + v13 + v14) & ~v14, a2, v11);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v25 = (a2 - 1);
    }

    *v24 = v25;
  }
}

uint64_t sub_25AFB3BA8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25D10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25D18);
  sub_25AF0F274(&qword_27FA25D20, &qword_27FA25D18);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AFB3C88()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25D30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25D38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25B78);
  sub_25AF0F274(&qword_27FA25D40, &qword_27FA25D38);
  sub_25AFB22C0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AFB3D90()
{
  type metadata accessor for SolariumMaterialEffect();
  swift_getWitnessTable();
  sub_25B004D14();
  type metadata accessor for MaterialOrColorEffect();
  sub_25B004864();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24018);
  sub_25B004864();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25AF0F274(&qword_27FA24010, &qword_27FA24018);
  return swift_getWitnessTable();
}

uint64_t sub_25AFB3F08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25D68);
  type metadata accessor for PlatterFillPart();
  sub_25B004864();
  type metadata accessor for PlatterEnvironmentBasedAppearanceEffect(255);
  sub_25B004864();
  sub_25B004864();
  sub_25B004C84();
  sub_25B004864();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25AFB1B30(&qword_27FA25D70, type metadata accessor for PlatterEnvironmentBasedAppearanceEffect);
  swift_getWitnessTable();
  sub_25AFB2CD0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25AFB2D24();
  swift_getWitnessTable();
  sub_25B004C54();
  sub_25B004864();
  sub_25B004DA4();
  sub_25B004864();
  sub_25B004CF4();
  sub_25B004864();
  sub_25AFB2D84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_25AFB4394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AFB4404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25AFB4474()
{
  result = qword_27FA25F40;
  if (!qword_27FA25F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24700);
    sub_25AF0F274(&qword_27FA25F48, &qword_27FA24708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25F40);
  }

  return result;
}

unint64_t sub_25AFB4560()
{
  result = qword_27FA25F68;
  if (!qword_27FA25F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25F70);
    sub_25AFB45E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25F68);
  }

  return result;
}

unint64_t sub_25AFB45E4()
{
  result = qword_27FA25F78;
  if (!qword_27FA25F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25E58);
    sub_25AFB469C(&qword_27FA25F80, &qword_27FA25E78, &unk_25B011080, sub_25AFB4720);
    sub_25AFB48B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25F78);
  }

  return result;
}

uint64_t sub_25AFB469C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_25AFB485C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25AFB4750()
{
  result = qword_27FA25F90;
  if (!qword_27FA25F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25E60);
    sub_25AFB4808();
    sub_25AF0F274(&qword_27FA25FA0, &qword_27FA25E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25F90);
  }

  return result;
}

unint64_t sub_25AFB4808()
{
  result = qword_27FA25F98;
  if (!qword_27FA25F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25F98);
  }

  return result;
}

unint64_t sub_25AFB485C()
{
  result = qword_27FA25FA8;
  if (!qword_27FA25FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25FA8);
  }

  return result;
}

unint64_t sub_25AFB48B0()
{
  result = qword_27FA25FB0;
  if (!qword_27FA25FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25FB0);
  }

  return result;
}

unint64_t sub_25AFB4908()
{
  result = qword_27FA25FB8;
  if (!qword_27FA25FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25EE8);
    sub_25AFB49C0();
    sub_25AF0F274(&qword_27FA25FD8, &qword_27FA25EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25FB8);
  }

  return result;
}

unint64_t sub_25AFB49C0()
{
  result = qword_27FA25FC0;
  if (!qword_27FA25FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25ED0);
    sub_25AF0F274(&qword_27FA25FC8, &qword_27FA25EE0);
    sub_25AF0F274(&qword_27FA25FD0, &qword_27FA25ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25FC0);
  }

  return result;
}

unint64_t sub_25AFB4AA8()
{
  result = qword_27FA25FE0;
  if (!qword_27FA25FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25FE8);
    sub_25AF0F274(&qword_27FA25F10, &qword_27FA25F00);
    sub_25AF0F274(&qword_27FA25F18, &qword_27FA25F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25FE0);
  }

  return result;
}

unint64_t sub_25AFB4B90()
{
  result = qword_27FA25FF0;
  if (!qword_27FA25FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25F60);
    sub_25AF0F274(&qword_27FA25FF8, &qword_27FA25F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25FF0);
  }

  return result;
}

unint64_t sub_25AFB4C4C()
{
  result = qword_27FA26000;
  if (!qword_27FA26000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26000);
  }

  return result;
}

unint64_t sub_25AFB4CD8()
{
  result = qword_27FA24218;
  if (!qword_27FA24218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA24218);
  }

  return result;
}

uint64_t sub_25AFB4D3C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_25AFB4D98()
{
  result = qword_27FA26030;
  if (!qword_27FA26030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26018);
    sub_25AFB4E50();
    sub_25AF0F274(&qword_27FA26048, &qword_27FA26050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26030);
  }

  return result;
}

unint64_t sub_25AFB4E50()
{
  result = qword_27FA26038;
  if (!qword_27FA26038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26008);
    sub_25AF0F274(&qword_27FA26040, &qword_27FA26010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26038);
  }

  return result;
}

unint64_t sub_25AFB4F0C()
{
  result = qword_27FA26058;
  if (!qword_27FA26058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26060);
    sub_25AF0F274(&qword_27FA26068, &qword_27FA26070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26058);
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

uint64_t sub_25AFB501C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25AFB5070(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

void sub_25AFB50DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26078);
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x28223BE20](v3);
  v68 = &v59 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26080);
  MEMORY[0x28223BE20](v66);
  v73 = &v59 - v5;
  v6 = sub_25B004524();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26088);
  MEMORY[0x28223BE20](v65);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v72 = &v59 - v12;
  v13 = sub_25B004B14();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2[3];
  v84 = v2[2];
  v85 = v17;
  v86 = v2[4];
  v87 = *(v2 + 80);
  v18 = v2[1];
  v82 = *v2;
  v83 = v18;
  v19 = *(v2 + 5);
  v88 = v19;
  v89 = *(v2 + 48);
  if (v89 == 1)
  {
    v20 = v19;
  }

  else
  {

    sub_25B005CC4();
    v21 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF2602C(&v88, &qword_27FA25A28);
    (*(v14 + 8))(v16, v13);
    v20 = v76;
  }

  v60 = v14;
  v61 = v13;
  if (v20 != 2)
  {
    v25 = 1;
LABEL_8:
    v26 = swift_allocObject();
    v27 = v84;
    v28 = v85;
    *(v26 + 48) = v84;
    *(v26 + 64) = v28;
    v29 = v86;
    *(v26 + 80) = v86;
    v30 = v87;
    *(v26 + 96) = v87;
    v31 = v82;
    v32 = v83;
    *(v26 + 16) = v82;
    *(v26 + 32) = v32;
    v77 = v32;
    v78 = v27;
    v79 = v28;
    v80 = v29;
    v81 = v30;
    v76 = v31;
    sub_25AFB6538(&v82, &v74);
    sub_25AFB5C50(v25, sub_25AFB6530, v26);
    v35 = v34;
    v64 = v33;
    if (v33)
    {
      v36 = v33;

      sub_25B004514();
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 24) = v35;

      v38 = v63;
      sub_25B005594();

      sub_25AFA0BC4(v36);
      (*(v62 + 8))(v8, v38);
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26090);
    (*(*(v40 - 8) + 56))(v10, v39, 1, v40);
    v41 = v72;
    sub_25AFB6570(v10, v72);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26098);
    (*(*(v42 - 8) + 56))(v73, 1, 1, v42);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26090);
    if ((*(*(v43 - 8) + 48))(v41, 1, v43) != 1)
    {
      goto LABEL_14;
    }

    v91 = v86;
    v90 = *(&v85 + 1);
    if (v86 == 1)
    {
      if (BYTE8(v85))
      {
LABEL_14:
        LODWORD(v63) = 0;
LABEL_19:
        sub_25B0045B4();
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA260A8);
        v48 = sub_25AF0F274(&qword_27FA260B0, &qword_27FA260A8);
        v49 = sub_25AFB65E0();
        v50 = v68;
        v51 = v72;
        v52 = v65;
        sub_25B0052C4();
        sub_25B0045B4();
        *&v76 = v47;
        *(&v76 + 1) = v52;
        *&v77 = v48;
        *(&v77 + 1) = v49;
        swift_getOpaqueTypeConformance2();
        sub_25AFB6690();
        v54 = v70;
        v53 = v71;
        v55 = v73;
        sub_25B0052C4();

        sub_25AFA0BC4(v64);
        (*(v69 + 8))(v50, v54);
        KeyPath = swift_getKeyPath();
        v57 = swift_allocObject();
        *(v57 + 16) = v63 & 1;
        v58 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA260D8) + 36));
        *v58 = KeyPath;
        v58[1] = sub_25AFB6758;
        v58[2] = v57;
        sub_25AF2602C(v51, &qword_27FA26088);
        sub_25AF2602C(v55, &qword_27FA26080);
        return;
      }
    }

    else
    {

      sub_25B005CC4();
      v44 = sub_25B004F24();
      sub_25B0044A4();

      sub_25B004B04();
      swift_getAtKeyPath();
      sub_25AF2602C(&v90, &qword_27FA260A0);
      (*(v60 + 8))(v16, v61);
      if (v76)
      {
        goto LABEL_14;
      }
    }

    v75 = v87;
    v45 = DWORD2(v86);
    v74 = *(&v86 + 1);
    if (v87 != 1)
    {

      sub_25B005CC4();
      v46 = sub_25B004F24();
      sub_25B0044A4();

      sub_25B004B04();
      swift_getAtKeyPath();
      sub_25AF2602C(&v74, &qword_27FA260A0);
      (*(v60 + 8))(v16, v61);
      v45 = v76;
    }

    LODWORD(v63) = v45 ^ 1;
    goto LABEL_19;
  }

  v22 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    swift_getKeyPath();
    *&v76 = v22;
    sub_25AFB68C8(&qword_27FA25250, type metadata accessor for GlanceModel);
    v23 = v22;
    sub_25B004234();

    v24 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
    swift_beginAccess();
    v25 = v23[v24];

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_25AFB5A6C(uint64_t result)
{
  v1 = *(result + 16);
  v11[0] = *result;
  v11[1] = v1;
  v12 = *(result + 32);
  v2 = qword_27FA30B10;
  if (v12 <= 0xFDu)
  {
    if (qword_27FA30B10)
    {
      v4 = *(result + 16);
      v9[0] = *result;
      v9[1] = v4;
      v10 = v12;
      v5 = *(result + 33);
      sub_25AF25FC4(v11, v8, &qword_27FA23D78);
      v6 = v2;
      v3 = sub_25AF730A0(v9, v5);

      sub_25AF2602C(v11, &qword_27FA23D78);
      goto LABEL_6;
    }
  }

  else
  {
    if (qword_27FA30B10)
    {
      v3 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);

LABEL_6:
      v7 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_visualsModel);

      swift_getKeyPath();
      *&v9[0] = v7;
      sub_25AFB68C8(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
      sub_25B004234();

      *&v9[0] = v7;
      swift_getKeyPath();
      sub_25B004254();

      *(v7 + 201) = (*(v7 + 201) & 1) == 0;
      *&v9[0] = v7;
      swift_getKeyPath();
      sub_25B004244();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25AFB5C50(char a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v6 = sub_25B004B14();
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3[3];
  v54 = v3[2];
  v55 = v11;
  v56 = v3[4];
  v57 = *(v3 + 80);
  v12 = v3[1];
  v52 = *v3;
  v53 = v12;
  if (a1)
  {
    v13 = 0;
    v14 = 0;
    v15 = v54;
    if (v54 > 0xFDu)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      if ((v54 & 0xC0) == 0x40)
      {
        v42 = v8;
        v43 = a3;
        v45 = v7;
        if (!qword_27FA30B10)
        {
          __break(1u);
          goto LABEL_29;
        }

        v17 = v52;
        v18 = v53;
        v19 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsModel);
        v46 = v52;
        v47 = v53;
        sub_25AF1D7EC(v52, *(&v52 + 1), v53, *(&v53 + 1), v54);
        v20 = v19;
        v21 = sub_25AF13F3C(&v46);

        if (v21)
        {
          v48 = v54;
          v49 = v55;
          v50 = v56;
          v51 = v57;
          v46 = v52;
          v47 = v53;
          v61 = v17;
          v62 = v18;
          v14 = sub_25AFB617C(&v61);
          v16 = v22;
          sub_25AF231D0(v17, *(&v17 + 1), v18, *(&v18 + 1), v15);
          v13 = 1;
        }

        else
        {
          sub_25AF231D0(v17, *(&v17 + 1), v18, *(&v18 + 1), v15);
          v14 = 0;
          v16 = 0;
          v13 = 0;
        }

        v8 = v42;
        a3 = v43;
        v7 = v45;
      }
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v13 = 0;
  }

  v45 = v16;
  v65 = v55;
  v23 = BYTE8(v54);
  v64 = *(&v54 + 1);
  if (v55 != 1)
  {
    v24 = v7;
    LODWORD(v43) = v13;
    v25 = a3;
    v26 = a1;
    v27 = v14;
    v28 = v8;

    sub_25B005CC4();
    v29 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF2602C(&v64, &qword_27FA25A28);
    (*(v28 + 8))(v10, v24);
    v14 = v27;
    a1 = v26;
    a3 = v25;
    v13 = v43;
    v23 = v46;
  }

  v30 = v13 | a1 ^ 1 | v23 ^ 1;
  if ((v30 & 1) == 0)
  {
    v61 = v52;
    v62 = v53;
    v63 = v54;
    if (v54 <= 0xFDu && (v54 & 0xC0) == 0x40)
    {
      v43 = a3;
      if (qword_27FA30B10)
      {
        v33 = v61;
        v34 = v62;
        v35 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsModel);
        v58 = v61;
        v59 = v62;
        sub_25AF25FC4(&v61, &v46, &qword_27FA23D78);
        v36 = v35;
        v37 = sub_25AF13F50(&v58);

        if (v37)
        {
          v48 = v54;
          v49 = v55;
          v50 = v56;
          v51 = v57;
          v46 = v52;
          v47 = v53;
          v58 = v33;
          v59 = v34;
          sub_25AFB617C(&v58);
          sub_25AFA0BC4(v14);
          sub_25AF2602C(&v61, &qword_27FA23D78);
          return;
        }

        sub_25AF2602C(&v61, &qword_27FA23D78);
        a3 = v43;
        goto LABEL_14;
      }

LABEL_29:
      __break(1u);
      return;
    }
  }

LABEL_14:
  v58 = v52;
  v59 = v53;
  v31 = v54;
  v60 = v54;
  if (v54 <= 0xFDu)
  {
    v38 = swift_allocObject();
    v39 = v55;
    *(v38 + 48) = v54;
    *(v38 + 64) = v39;
    *(v38 + 80) = v56;
    *(v38 + 96) = v57;
    v40 = v52;
    v41 = v53;
    *(v38 + 16) = v52;
    *(v38 + 32) = v41;
    *(v38 + 104) = v40;
    *(v38 + 120) = v41;
    *(v38 + 136) = v31;
    *(v38 + 144) = v44;
    *(v38 + 152) = a3;
    sub_25AFB6538(&v52, &v46);

    v32 = sub_25AFB681C;
  }

  else
  {
    v32 = 0;
  }

  if (v13)
  {
    sub_25AF25FC4(&v58, &v46, &qword_27FA23D78);
    sub_25AFA0BC4(v32);
  }

  else
  {
    sub_25AF25FC4(&v58, &v46, &qword_27FA23D78);
    sub_25AFA0BC4(v14);
    if (v30)
    {
      sub_25AFA0BC4(v32);
    }
  }
}

uint64_t (*sub_25AFB617C(uint64_t (*result)()))()
{
  v2 = *result;
  v3 = *(result + 1);
  v5 = *(result + 2);
  v4 = *(result + 3);
  v6 = v1[3];
  v25 = v1[2];
  v26 = v6;
  v27 = v1[4];
  v28 = *(v1 + 80);
  v7 = v1[1];
  v23 = *v1;
  v24 = v7;
  v8 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    v18 = v2;
    v19 = v3;
    v20 = v5;
    v21 = v4;
    v22 = 64;

    v9 = v8;
    v10 = v2;
    v11 = sub_25AF730A0(&v18, SBYTE1(v25));

    sub_25AF18128(v18, v19, v20, v21, v22);
    swift_getKeyPath();
    v18 = v11;
    sub_25AFB68C8(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004234();

    v12 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlViewModel;
    swift_beginAccess();
    sub_25AF25FC4(v11 + v12, &v18, &qword_27FA25780);

    v13 = v21;
    sub_25AF2602C(&v18, &qword_27FA25780);
    if (v13)
    {
      v14 = swift_allocObject();
      v15 = v26;
      *(v14 + 48) = v25;
      *(v14 + 64) = v15;
      *(v14 + 80) = v27;
      *(v14 + 96) = v28;
      v16 = v24;
      *(v14 + 16) = v23;
      *(v14 + 32) = v16;
      *(v14 + 104) = v10;
      *(v14 + 112) = v3;
      *(v14 + 120) = v5;
      *(v14 + 128) = v4;
      v17 = v10;

      sub_25AFB6538(&v23, &v18);
      return sub_25AFB68B0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25AFB6394(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (qword_27FA30B10)
  {
    v4 = *(a2 + 16);
    v11[0] = *a2;
    v11[1] = v4;
    v12 = *(a2 + 32);
    v5 = qword_27FA30B10;
    sub_25AF81874(v11);

    a3(v6, v7, v8, v9, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AFB6408(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27FA30B10)
  {
    v8[0] = a2;
    v8[1] = a3;
    v8[2] = a4;
    v8[3] = a5;

    v6 = a2;
    sub_25AF6AC5C(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AFB64C4()
{
  v1 = *(v0 + 48);
  if (v1 <= 0xFD)
  {
    sub_25AF18128(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1);
  }

  sub_25AF241CC(*(v0 + 56), *(v0 + 64));
  sub_25AF241CC(*(v0 + 72), *(v0 + 80));
  sub_25AF241CC(*(v0 + 88), *(v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_25AFB6570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26088);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AFB65E0()
{
  result = qword_27FA260B8;
  if (!qword_27FA260B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26088);
    sub_25AF0F274(&qword_27FA260C0, &qword_27FA26090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA260B8);
  }

  return result;
}

unint64_t sub_25AFB6690()
{
  result = qword_27FA260C8;
  if (!qword_27FA260C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26080);
    sub_25AF0F274(&qword_27FA260D0, &qword_27FA26098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA260C8);
  }

  return result;
}

uint64_t sub_25AFB6760()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AFB6798()
{
  v1 = *(v0 + 48);
  if (v1 <= 0xFD)
  {
    sub_25AF18128(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1);
  }

  sub_25AF241CC(*(v0 + 56), *(v0 + 64));
  sub_25AF241CC(*(v0 + 72), *(v0 + 80));
  sub_25AF241CC(*(v0 + 88), *(v0 + 96));
  sub_25AF18128(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_25AFB6834()
{
  v1 = *(v0 + 48);
  if (v1 <= 0xFD)
  {
    sub_25AF18128(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1);
  }

  sub_25AF241CC(*(v0 + 56), *(v0 + 64));
  sub_25AF241CC(*(v0 + 72), *(v0 + 80));
  sub_25AF241CC(*(v0 + 88), *(v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_25AFB68C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25AFB6914()
{
  result = qword_27FA260E0;
  if (!qword_27FA260E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA260D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA260A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26088);
    sub_25AF0F274(&qword_27FA260B0, &qword_27FA260A8);
    sub_25AFB65E0();
    swift_getOpaqueTypeConformance2();
    sub_25AFB6690();
    swift_getOpaqueTypeConformance2();
    sub_25AF0F274(&qword_27FA260E8, &qword_27FA260F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA260E0);
  }

  return result;
}

uint64_t sub_25AFB6AC8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v3 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlViewModel;
  swift_beginAccess();
  return sub_25AF25FC4(v5 + v3, a1, &qword_27FA25780);
}

uint64_t sub_25AFB6BB4()
{
  v1 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel____lazy_storage___overscrollModel;
  if (*(v0 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel____lazy_storage___overscrollModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel____lazy_storage___overscrollModel);
  }

  else
  {
    type metadata accessor for GlanceButtonModel.OverscrollModel(0);
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    sub_25B004264();
    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_25AFB6C3C()
{
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA23D20, type metadata accessor for GlanceButtonModel.OverscrollModel);
  sub_25B004234();

  return *(v0 + 16);
}

uint64_t sub_25AFB6CDC()
{
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_25AFB6D8C()
{
  v1 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel____lazy_storage___transitionModel;
  if (*(v0 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel____lazy_storage___transitionModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel____lazy_storage___transitionModel);
  }

  else
  {
    type metadata accessor for GlanceButtonModel.TransitionModel(0);
    v2 = swift_allocObject();
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 1;
    *(v2 + 72) = 0u;
    *(v2 + 88) = 0u;
    *(v2 + 104) = 0u;
    *(v2 + 120) = 0;
    *(v2 + 128) = xmmword_25B0117E0;
    sub_25B004264();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_25AFB6E40(char a1, uint64_t a2, double a3)
{
  if (a1)
  {
    swift_getKeyPath();
    *&v26 = v3;
    sub_25AFBFF04(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
    sub_25B004234();

    v6 = v3[6];
    v22 = v3[5];
    v23 = v6;
    v7 = v3[8];
    v24 = v3[7];
    v25 = v7;
    v8 = v7;
    if (v7 == 1)
    {
      v8 = 0;
      v9 = 1.0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 1.0;
    }

    else
    {
      v11 = *(&v22 + 1);
      v10 = v22;
      v12 = v23;
      v13 = *(&v24 + 1);
      v9 = *&v24;
    }

    sub_25AF25FC4(&v22, &v26, &qword_27FA249F0);

    *&v17 = v10;
    *(&v17 + 1) = v11;
    *&v18 = v12;
    *(&v18 + 1) = a3;
    *&v19 = v9;
    *(&v19 + 1) = v13;
    *&v20 = v8;
    *(&v20 + 1) = a2;
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    sub_25AF4F820(&v17, v21);
    sub_25AFBF5B0(&v26);
  }

  else
  {
    swift_getKeyPath();
    *&v26 = v3;
    sub_25AFBFF04(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
    sub_25B004234();

    v14 = v3[2];
    v22 = v3[1];
    v23 = v14;
    v15 = v3[4];
    v24 = v3[3];
    v25 = v15;
    v8 = v15;
    if (v15 == 1)
    {
      v8 = 0;
      v9 = 1.0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 1.0;
    }

    else
    {
      v11 = *(&v22 + 1);
      v10 = v22;
      v12 = v23;
      v13 = *(&v24 + 1);
      v9 = *&v24;
    }

    sub_25AF25FC4(&v22, &v26, &qword_27FA249F0);

    *&v17 = v10;
    *(&v17 + 1) = v11;
    *&v18 = v12;
    *(&v18 + 1) = a3;
    *&v19 = v9;
    *(&v19 + 1) = v13;
    *&v20 = v8;
    *(&v20 + 1) = a2;
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    sub_25AF4F820(&v17, v21);
    sub_25AFBF280(&v26);
  }

  v21[0] = v10;
  v21[1] = v11;
  v21[2] = v12;
  *&v21[3] = a3;
  *&v21[4] = v9;
  *&v21[5] = v13;
  v21[6] = v8;
  v21[7] = a2;
  return sub_25AF4F8A0(v21);
}

double sub_25AFB70F0(double a1, double a2)
{
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  if ((*(v2 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__editModeJitter + 24) & 1) == 0)
  {
    return *(v2 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__editModeJitter);
  }

  v5 = sub_25AF2DAD4(0x20000000000001);
  v6 = vcvtd_n_f64_u64(v5, 0x35uLL);
  v7 = v6 + v6 + -1.0;
  if (v5 == 0x20000000000000)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = sub_25AF2DAD4(0x20000000000001);
  v10 = vcvtd_n_f64_u64(v9, 0x35uLL);
  v11 = v10 + v10 + -1.0;
  if (v9 == 0x20000000000000)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = v11;
  }

  v13 = sub_25AF2DAD4(0x20000000000001);
  v14 = vcvtd_n_f64_u64(v13, 0x35uLL);
  v15 = v14 + v14 + -1.0;
  if (v13 == 0x20000000000000)
  {
    v15 = 1.0;
  }

  v16 = v8 * a1;
  sub_25AFBCB14(COERCE__INT64(v8 * a1), COERCE__INT64(v12 * a1), COERCE__INT64(v15 * a2), 0);
  return v16;
}

uint64_t sub_25AFB7268()
{
  v1 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel____lazy_storage___ellipticModel;
  if (*(v0 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel____lazy_storage___ellipticModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel____lazy_storage___ellipticModel);
  }

  else
  {
    type metadata accessor for GlanceButtonModel.EllipticModel(0);
    v2 = swift_allocObject();
    __asm { FMOV            V0.2D, #1.0 }

    *(v2 + 16) = _Q0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 48) = 0x3FF0000000000000;
    sub_25B004264();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_25AFB7304(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__isLifted) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__isLifted) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004224();
  }

  return result;
}

uint64_t sub_25AFB741C()
{
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_25AFB74CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 80) == a1 && v5 == a2;
      if (v6 || (sub_25B006174() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004224();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_25AFB763C()
{
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  return *(v0 + 74);
}

uint64_t sub_25AFB76DC()
{
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  return *(v0 + 73);
}

uint64_t sub_25AFB777C(char a1, char a2)
{
  v3 = *(v2 + 48);
  if (v3 > 0xFD)
  {
    goto LABEL_12;
  }

  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v8 = *(v2 + 32);
  v7 = *(v2 + 40);
  if (a1 == 2 || (v3 & 0xC0) != 0x40 || (a1 & 1) != 0)
  {
    sub_25AF181DC(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
  }

  else
  {
    sub_25AF181DC(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
    v10 = [v6 extensionIdentity];
    v11 = [v10 isRemote];

    if (v11)
    {
      goto LABEL_10;
    }
  }

  if (a2 != 2)
  {
    sub_25AF231D0(v6, v5, v8, v7, v3);
LABEL_12:
    v9 = 1;
    return v9 & 1;
  }

  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  if (*(v2 + 72) != 1)
  {
LABEL_10:
    sub_25AF231D0(v6, v5, v8, v7, v3);
    v9 = 0;
    return v9 & 1;
  }

  swift_getKeyPath();
  sub_25B004234();
  sub_25AF231D0(v6, v5, v8, v7, v3);

  v9 = *(v2 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps) ^ 1;
  return v9 & 1;
}

uint64_t sub_25AFB7988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = *v2;
  v79 = a1;
  v4 = sub_25B004494();
  v82 = *(v4 - 8);
  v83 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v75 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v80 = &v65[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA255A0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v77 = &v65[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v76 = &v65[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v84 = &v65[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v65[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v65[-v18];
  v20 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlInstance;
  swift_beginAccess();
  v81 = v20;
  sub_25AF25FC4(v2 + v20, v19, &qword_27FA255A0);
  v21 = sub_25B0042C4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v19, 1, v21) != 1)
  {
    (*(v22 + 32))(a2, v19, v21);
    return (*(v22 + 56))(a2, 0, 1, v21);
  }

  sub_25AF2602C(v19, &qword_27FA255A0);
  v24 = *(v2 + 48);
  if (v24 <= 0xFD && (v24 & 0xC0) == 0x40)
  {
    v25 = *(v2 + 16);
    v26 = *(v2 + 24);
    v27 = *(v2 + 32);
    v28 = *(v2 + 40);
    v71 = v2;
    v73 = v26;
    v74 = v25;
    v72 = v27;
    v69 = v24;
    sub_25AF181DC(v25, v26, v27, v28, v24);
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v29 = sub_25B0044C4();
    __swift_project_value_buffer(v29, qword_27FA30C28);
    v30 = sub_25B0044B4();
    v31 = sub_25B005CA4();
    v32 = os_log_type_enabled(v30, v31);
    v70 = a2;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v85[0] = v67;
      *v33 = 136315394;
      v34 = sub_25B006364();
      v78 = v30;
      v36 = sub_25AF8E7DC(v34, v35, v85);
      v66 = v31;
      v37 = v36;

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_25AF8E7DC(0xD000000000000025, 0x800000025B01A130, v85);
      v30 = v78;
      _os_log_impl(&dword_25AF0B000, v78, v66, "%s.%s creating a control instance", v33, 0x16u);
      v38 = v67;
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v38, -1, -1);
      MEMORY[0x25F85EC30](v33, -1, -1);
    }

    v39 = v80;
    v80 = v74;
    v40 = sub_25B005924();
    v68 = v28;
    if (v28)
    {
      v28 = sub_25B005924();
    }

    v41 = objc_allocWithZone(MEMORY[0x277CFA230]);
    v42 = v80;
    v43 = [v41 initWithControl:v80 contentType:v79 hostIdentifier:v40 configurationIdentifier:v28];

    sub_25B0043C4();
    sub_25B004484();
    sub_25B004474();
    sub_25B004464();
    v44 = v84;
    sub_25AF25FC4(v17, v84, &qword_27FA255A0);
    if (v23(v44, 1, v21) == 1)
    {
      (*(v82 + 8))(v39, v83);
      v45 = v71;
LABEL_12:
      sub_25AF2602C(v44, &qword_27FA255A0);
LABEL_24:
      sub_25AF25FC4(v17, v70, &qword_27FA255A0);
      v63 = v77;
      sub_25AF25FC4(v17, v77, &qword_27FA255A0);
      v64 = v81;
      swift_beginAccess();
      sub_25AF69638(v63, v45 + v64, &qword_27FA255A0);
      swift_endAccess();
      sub_25AFBA810();

      sub_25AF231D0(v74, v73, v72, v68, v69);
      sub_25AF2602C(v63, &qword_27FA255A0);
      return sub_25AF2602C(v17, &qword_27FA255A0);
    }

    v55 = v76;
    sub_25AF25FC4(v44, v76, &qword_27FA255A0);
    v56 = (*(v22 + 88))(v55, v21);
    v45 = v71;
    if (v56 == *MEMORY[0x277CFA468])
    {
      v57 = v17;
      (*(v22 + 96))(v55, v21);
      v58 = *v55;
      v86 = sub_25B004314();
      v59 = &unk_27FA261E8;
      v60 = MEMORY[0x277CFA490];
    }

    else
    {
      if (v56 != *MEMORY[0x277CFA478])
      {
        (*(v82 + 8))(v39, v83);
        (*(v22 + 8))(v55, v21);
        goto LABEL_12;
      }

      v57 = v17;
      (*(v22 + 96))(v55, v21);
      v58 = *v55;
      v86 = sub_25B0043B4();
      v59 = &unk_27FA261E0;
      v60 = MEMORY[0x277CFA4D0];
    }

    v87 = sub_25AFBFF04(v59, v60);
    v85[0] = v58;
    sub_25AF2602C(v84, &qword_27FA255A0);
    v62 = v82;
    v61 = v83;
    (*(v82 + 16))(v75, v39, v83);
    __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
    sub_25B0043F4();
    (*(v62 + 8))(v39, v61);
    __swift_destroy_boxed_opaque_existential_0Tm(v85);
    v45 = v71;
    v17 = v57;
    goto LABEL_24;
  }

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v47 = sub_25B0044C4();
  __swift_project_value_buffer(v47, qword_27FA30C28);
  v48 = sub_25B0044B4();
  v49 = sub_25B005C94();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v85[0] = v51;
    *v50 = 136315394;
    v52 = sub_25B006364();
    v54 = sub_25AF8E7DC(v52, v53, v85);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_25AF8E7DC(0xD000000000000025, 0x800000025B01A130, v85);
    _os_log_impl(&dword_25AF0B000, v48, v49, "%s.%s tried to populate controlInstance for non-control. Exiting without doing anything.", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v51, -1, -1);
    MEMORY[0x25F85EC30](v50, -1, -1);
  }

  return (*(v22 + 56))(a2, 1, 1, v21);
}

uint64_t sub_25AFB836C()
{
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  return *(v0 + 72);
}

uint64_t sub_25AFB840C(uint64_t result)
{
  if (*(v1 + 72) == (result & 1))
  {
    *(v1 + 72) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004224();
  }

  return result;
}

uint64_t sub_25AFB851C(char a1)
{
  v2 = *(v1 + 74);
  if (v2 == (a1 & 1))
  {
    *(v1 + 74) = a1 & 1;
    swift_getKeyPath();
    sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004234();

    if (v2 != *(v1 + 74))
    {
      return sub_25AFB956C(1, 1);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004224();
  }

  return result;
}

uint64_t sub_25AFB86B8(uint64_t result)
{
  if (*(v1 + 73) == (result & 1))
  {
    *(v1 + 73) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004224();
  }

  return result;
}

unint64_t sub_25AFB87C8()
{
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  return *(v0 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__fillPercent) | (*(v0 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__fillPercent + 4) << 32);
}

uint64_t sub_25AFB8884(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__fillPercent;
  if ((*(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__fillPercent + 4) & 1) == 0)
  {
    if ((result & 0x100000000) != 0 || *v2 != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v2 = result;
    *(v2 + 4) = BYTE4(result) & 1;
    return result;
  }

  if ((result & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004224();
}

double sub_25AFB89C8@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v9 = v1;
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v3 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 16);
  v9 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps);
  v10 = v3;
  v4 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 48);
  v11 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 32);
  v12 = v4;
  sub_25AFC0388(&v9, &v8);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

uint64_t sub_25AFB8AA0()
{
  v1 = v0;
  swift_getKeyPath();
  *&v21[0] = v0;
  sub_25AFBFF04(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
  sub_25B004234();

  v2 = v0[6];
  v21[0] = v0[5];
  v21[1] = v2;
  v3 = v0[8];
  v21[2] = v0[7];
  v21[3] = v3;
  v4 = v3;
  if (v3 == 1)
  {
    v5 = v1[6];
    v17 = v1[5];
    v18 = v5;
    v19 = v1[7];
    *&v20 = 1;
    *(&v20 + 1) = *(&v3 + 1);
    sub_25AF25FC4(v21, &v13, &qword_27FA249F0);
    sub_25AF2602C(&v17, &qword_27FA249F0);
  }

  else
  {
    v6 = v1[6];
    v17 = v1[5];
    v18 = v6;
    v19 = v1[7];
    v20 = v3;
    sub_25AF25FC4(v21, &v13, &qword_27FA249F0);

    sub_25AF2602C(&v17, &qword_27FA249F0);
    if (v4)
    {
      return v4;
    }
  }

  swift_getKeyPath();
  *&v13 = v1;
  sub_25B004234();

  v7 = v1[2];
  v17 = v1[1];
  v18 = v7;
  v8 = v1[4];
  v19 = v1[3];
  v20 = v8;
  v4 = v8;
  if (v8 == 1)
  {
    v9 = v1[2];
    v13 = v1[1];
    v14 = v9;
    v15 = v1[3];
    *&v16 = 1;
    *(&v16 + 1) = *(&v8 + 1);
    sub_25AF25FC4(&v17, v12, &qword_27FA249F0);
    sub_25AF2602C(&v13, &qword_27FA249F0);
    return 0;
  }

  v10 = v1[2];
  v13 = v1[1];
  v14 = v10;
  v15 = v1[3];
  v16 = v8;
  sub_25AF25FC4(&v17, v12, &qword_27FA249F0);

  sub_25AF2602C(&v13, &qword_27FA249F0);
  if (!v4)
  {
    return 0;
  }

  return v4;
}

double sub_25AFB8D08()
{
  swift_getKeyPath();
  *&v23[0] = v0;
  sub_25AFBFF04(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
  sub_25B004234();

  v1 = *(v0 + 96);
  v23[0] = *(v0 + 80);
  v23[1] = v1;
  v2 = *(v0 + 128);
  v23[2] = *(v0 + 112);
  v23[3] = v2;
  v3 = *(v23 + 1);
  if (v2 != 1)
  {
    v20 = v23[0];
    *v21 = v1;
    *&v21[8] = *(v0 + 104);
    *&v21[24] = *(v0 + 120);
    v22 = v2;
    sub_25AF25FC4(v23, &v14, &qword_27FA249F0);
    v6 = &v20;
LABEL_6:
    sub_25AF2602C(v6, &qword_27FA249F0);
    return v3;
  }

  v14 = v23[0];
  v15 = v1;
  v16 = *(v0 + 104);
  v17 = *(v0 + 120);
  v18 = 1;
  v19 = *(&v2 + 1);
  sub_25AF25FC4(v23, &v9, &qword_27FA249F0);
  sub_25AF2602C(&v14, &qword_27FA249F0);
  swift_getKeyPath();
  *&v9 = v0;
  sub_25B004234();

  v4 = *(v0 + 32);
  v20 = *(v0 + 16);
  *v21 = v4;
  v5 = *(v0 + 64);
  *&v21[16] = *(v0 + 48);
  v22 = v5;
  v3 = *(&v20 + 1);
  if (v5 != 1)
  {
    v9 = v20;
    v10 = *v21;
    v11 = *(v0 + 40);
    v12 = *(v0 + 56);
    v13 = v5;
    sub_25AF25FC4(&v20, v8, &qword_27FA249F0);
    v6 = &v9;
    goto LABEL_6;
  }

  v9 = v20;
  v10 = *v21;
  v11 = *(v0 + 40);
  v12 = *(v0 + 56);
  *&v13 = 1;
  *(&v13 + 1) = *(&v5 + 1);
  sub_25AF25FC4(&v20, v8, &qword_27FA249F0);
  sub_25AF2602C(&v9, &qword_27FA249F0);
  return 0.0;
}

double sub_25AFB8F90()
{
  swift_getKeyPath();
  *&v22[0] = v0;
  sub_25AFBFF04(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
  sub_25B004234();

  v1 = v0[8];
  v23 = v0[7];
  v24 = v1;
  v2 = v0[6];
  v22[0] = v0[5];
  v22[1] = v2;
  v3 = *&v23;
  if (v24 != 1)
  {
    v8 = v0[6];
    v18 = v0[5];
    v19 = v8;
    v20 = v23;
    v21 = v24;
    sub_25AF25FC4(v22, v17, &qword_27FA249F0);
    v9 = &v18;
LABEL_6:
    sub_25AF2602C(v9, &qword_27FA249F0);
    return v3;
  }

  v4 = v0[6];
  v17[0] = v0[5];
  v17[1] = v4;
  v17[2] = v23;
  v17[3] = __PAIR128__(*(&v24 + 1), 1);
  sub_25AF25FC4(v22, &v13, &qword_27FA249F0);
  sub_25AF2602C(v17, &qword_27FA249F0);
  swift_getKeyPath();
  *&v13 = v0;
  sub_25B004234();

  v5 = v0[4];
  v20 = v0[3];
  v21 = v5;
  v6 = v0[2];
  v18 = v0[1];
  v19 = v6;
  v3 = *&v20;
  if (v21 != 1)
  {
    v10 = v0[2];
    v13 = v0[1];
    v14 = v10;
    v15 = v20;
    v16 = v21;
    sub_25AF25FC4(&v18, v12, &qword_27FA249F0);
    v9 = &v13;
    goto LABEL_6;
  }

  v7 = v0[2];
  v13 = v0[1];
  v14 = v7;
  v15 = v20;
  v16 = v21;
  sub_25AF25FC4(&v18, v12, &qword_27FA249F0);
  sub_25AF2602C(&v13, &qword_27FA249F0);
  return 1.0;
}

__n128 sub_25AFB91CC@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25948, type metadata accessor for GlanceButtonModel.EllipticModel);
  sub_25B004234();

  v3 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v3;
  result = *(v1 + 56);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25AFB9280()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  if (v5 <= 0xFD)
  {
    v13 = *(v0 + 16);
    v14 = v1;
    v15 = v3;
    v16 = v4;
    v17 = v5;
    v8 = 20;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    sub_25AF1D7EC(v2, v1, v3, v4, v5);
    sub_25AF1D7EC(v2, v1, v3, v4, v5);
    sub_25AF181DC(v2, v1, v3, v4, v5);
    v6 = sub_25AFD33F0(&v13, &v8);
    sub_25AF18128(v8, v9, v10, v11, v12);
    sub_25AF18128(v13, v14, v15, v16, v17);
    sub_25AF18128(v2, v1, v3, v4, v5);
    sub_25AF231D0(v2, v1, v3, v4, v5);
  }

  else
  {
    sub_25AF1D7EC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
    sub_25AF231D0(v2, v1, v3, v4, v5);
    sub_25AF231D0(0x14, 0, 0, 0, 0);
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_25AFB93FC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  return *(v2 + *a2);
}

uint64_t sub_25AFB949C()
{
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_25AFB956C(uint64_t result, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_animationPackageViewAnimationModel))
  {
    v3 = v2;
    v5 = result;
    v6 = qword_27FA23800;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_25B0044C4();
    __swift_project_value_buffer(v7, qword_27FA30C28);

    v8 = sub_25B0044B4();
    v9 = sub_25B005CA4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_25AF8E7DC(0xD00000000000003BLL, 0x800000025B01A0C0, &v12);
      *(v10 + 12) = 1024;
      swift_getKeyPath();
      sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
      sub_25B004234();

      *(v10 + 14) = *(v3 + 74);

      _os_log_impl(&dword_25AF0B000, v8, v9, "%s animating to onOffState: %{BOOL}d, if needed", v10, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x25F85EC30](v11, -1, -1);
      MEMORY[0x25F85EC30](v10, -1, -1);
    }

    else
    {
    }

    swift_getKeyPath();
    v12 = v3;
    sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004234();

    sub_25AF42890(*(v3 + 74), v5 & 1, a2 & 1);
  }

  return result;
}

uint64_t sub_25AFB9808(uint64_t a1, char a2)
{
  v3 = *(a1 + 74);
  *(a1 + 74) = a2;
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  if (v3 != *(a1 + 74))
  {
    return sub_25AFB956C(1, 1);
  }

  return result;
}

uint64_t sub_25AFB98D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 96) == a1 && v5 == a2;
      if (v6 || (sub_25B006174() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004224();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_25AFB9A40@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v12[0] = v3;
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = v3 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps;
  v5 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 32);
  v6 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 48);
  v7 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 16);
  v12[0] = *(v3 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps);
  v12[1] = v7;
  v12[2] = v5;
  v12[3] = v6;
  v8 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 16);
  *a2 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps);
  a2[1] = v8;
  v9 = *(v4 + 48);
  a2[2] = *(v4 + 32);
  a2[3] = v9;
  return sub_25AFC0388(v12, &v11);
}

uint64_t sub_25AFB9B18(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_25AFC0388(v5, &v4);
  return sub_25AFB9B64(v5);
}

uint64_t sub_25AFB9B64(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps);
  v4 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 16);
  v14[0] = *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps);
  v14[1] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 48);
  v14[2] = *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 32);
  v14[3] = v5;
  sub_25AFC0388(v14, v13);
  v6 = sub_25AFBFD84(v14, a1);
  sub_25AFC03C0(v14);
  if (v6)
  {
    v7 = v3[1];
    v13[0] = *v3;
    v13[1] = v7;
    v8 = v3[3];
    v13[2] = v3[2];
    v13[3] = v8;
    v9 = *(a1 + 16);
    *v3 = *a1;
    v3[1] = v9;
    v10 = *(a1 + 48);
    v3[2] = *(a1 + 32);
    v3[3] = v10;
    return sub_25AFC03C0(v13);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v13[0] = v1;
    sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004224();
    sub_25AFC03C0(a1);
  }
}

uint64_t sub_25AFB9CD4(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps);
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  v4 = a2[3];
  v2[2] = a2[2];
  v2[3] = v4;
  sub_25AFC0388(a2, &v6);
}

void sub_25AFB9D68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA255A0);
  v1 = (MEMORY[0x28223BE20])();
  v3 = &v35[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v1);
  v5 = &v35[-v4];
  v6 = *(v0 + 48);
  if (v6 <= 0xFD)
  {
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);
    v15 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlInstance;
    swift_beginAccess();
    sub_25AF25FC4(v0 + v15, v5, &qword_27FA255A0);
    v16 = sub_25B0042C4();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v5, 1, v16) == 1)
    {
LABEL_7:
      sub_25AF2602C(v5, &qword_27FA255A0);
      return;
    }

    sub_25AF25FC4(v5, v3, &qword_27FA255A0);
    v19 = (*(v17 + 88))(v3, v16);
    if (v19 == *MEMORY[0x277CFA468])
    {
      (*(v17 + 96))(v3, v16);
      v20 = *v3;
      v46 = sub_25B004314();
      v21 = &unk_27FA261E8;
      v22 = MEMORY[0x277CFA490];
    }

    else
    {
      if (v19 != *MEMORY[0x277CFA478])
      {
        (*(v17 + 8))(v3, v16);
        goto LABEL_7;
      }

      (*(v17 + 96))(v3, v16);
      v20 = *v3;
      v46 = sub_25B0043B4();
      v21 = &unk_27FA261E0;
      v22 = MEMORY[0x277CFA4D0];
    }

    v47 = sub_25AFBFF04(v21, v22);
    *&v45 = v20;
    sub_25AF181DC(v12, v11, v14, v13, v6);
    sub_25AF2602C(v5, &qword_27FA255A0);
    sub_25AF25F40(&v45, v43);
    __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
    sub_25B0043E4();
    if ((v6 & 0xC0) == 0x40)
    {
      if (qword_27FA23800 != -1)
      {
        swift_once();
      }

      v23 = sub_25B0044C4();
      __swift_project_value_buffer(v23, qword_27FA30C28);
      sub_25AF1D7EC(v12, v11, v14, v13, v6);

      v24 = sub_25B0044B4();
      v25 = sub_25B005CA4();

      sub_25AF231D0(v12, v11, v14, v13, v6);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v42 = v37;
        *v26 = 136315650;
        *(v26 + 4) = sub_25AF8E7DC(0xD000000000000026, 0x800000025B01A100, &v42);
        v36 = v25;
        *(v26 + 12) = 2080;
        v27 = sub_25B005D64();
        v29 = sub_25AF8E7DC(v27, v28, &v42);

        *(v26 + 14) = v29;
        *(v26 + 22) = 2080;
        v38 = v12;
        v39 = v11;
        v40 = v14;
        v41 = v13;
        sub_25AF181DC(v12, v11, v14, v13, v6);
        v30 = GlanceControlID.description.getter();
        v32 = v31;

        v33 = sub_25AF8E7DC(v30, v32, &v42);

        *(v26 + 24) = v33;
        _os_log_impl(&dword_25AF0B000, v24, v36, "%s control instance visibility: %s for %s", v26, 0x20u);
        v34 = v37;
        swift_arrayDestroy();
        MEMORY[0x25F85EC30](v34, -1, -1);
        MEMORY[0x25F85EC30](v26, -1, -1);
        sub_25AF231D0(v12, v11, v14, v13, v6);

LABEL_23:
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        return;
      }
    }

    sub_25AF231D0(v12, v11, v14, v13, v6);
    goto LABEL_23;
  }

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v7 = sub_25B0044C4();
  __swift_project_value_buffer(v7, qword_27FA30C28);
  v37 = sub_25B0044B4();
  v8 = sub_25B005CB4();
  if (os_log_type_enabled(v37, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v45 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_25AF8E7DC(0xD000000000000026, 0x800000025B01A100, &v45);
    _os_log_impl(&dword_25AF0B000, v37, v8, "%s must have non-nil ID for Controls-based button.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x25F85EC30](v10, -1, -1);
    MEMORY[0x25F85EC30](v9, -1, -1);
  }

  else
  {
    v18 = v37;
  }
}

void sub_25AFBA420()
{
  v1 = v0;
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  if (*(v0 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__useLightEffect) == 1 && (sub_25AFB9280() & 1) == 0)
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v2 = sub_25B0044C4();
    __swift_project_value_buffer(v2, qword_27FA30C28);

    v3 = sub_25B0044B4();
    v4 = sub_25B005CB4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315650;
      v7 = sub_25B006364();
      v9 = sub_25AF8E7DC(v7, v8, &v13);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_25AF8E7DC(0x6867694C6573755FLL, 0xEF74636566664574, &v13);
      *(v5 + 22) = 2080;
      sub_25AF1D7EC(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D78);
      v10 = sub_25B005974();
      v12 = sub_25AF8E7DC(v10, v11, &v13);

      *(v5 + 24) = v12;
      _os_log_impl(&dword_25AF0B000, v3, v4, "%s.%s Cannot use light effect for button with ID %s", v5, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v6, -1, -1);
      MEMORY[0x25F85EC30](v5, -1, -1);
    }
  }
}

void sub_25AFBA6D4(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__useLightEffect) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__useLightEffect) = a1 & 1;

    sub_25AFBA420();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004224();
  }
}

void sub_25AFBA810()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_25B0042C4();
  v58 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA255A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - v7;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v9 = sub_25B0044C4();
  __swift_project_value_buffer(v9, qword_27FA30C28);
  v10 = sub_25B0044B4();
  v11 = sub_25B005CA4();
  v12 = os_log_type_enabled(v10, v11);
  v56 = v2;
  v57 = v3;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v62[0] = v14;
    *v13 = 136315394;
    v15 = sub_25B006364();
    v17 = sub_25AF8E7DC(v15, v16, v62);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_25AF8E7DC(0x496C6F72746E6F63, 0xEF65636E6174736ELL, v62);
    _os_log_impl(&dword_25AF0B000, v10, v11, "%s.%s didSet", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v14, -1, -1);
    MEMORY[0x25F85EC30](v13, -1, -1);
  }

  if (*(v0 + 48) <= 0xFDu)
  {
    v55 = *(v0 + 48);
    v21 = v0[2];
    v22 = v0[3];
    v24 = v0[4];
    v23 = v0[5];
    v25 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlInstance;
    swift_beginAccess();
    sub_25AF25FC4(v0 + v25, v8, &qword_27FA255A0);
    v26 = v57;
    v27 = v58;
    if ((v58[6])(v8, 1, v57) == 1)
    {
      *(v0 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlInstanceCancellable) = 0;
      v28 = v55;
      sub_25AF181DC(v21, v22, v24, v23, v55);

      sub_25AF2602C(v8, &qword_27FA255A0);
      v29 = v21;
    }

    else
    {
      v52 = v23;
      v53 = v24;
      v54 = v22;
      v31 = (v27[11])(v8, v26);
      if (v31 == *MEMORY[0x277CFA468])
      {
        (v27)[2](v5, v8, v26);
        (v27[12])(v5, v26);
        v32 = *v5;
        v63 = sub_25B004314();
        v33 = &unk_27FA261E8;
        v34 = MEMORY[0x277CFA490];
      }

      else
      {
        if (v31 != *MEMORY[0x277CFA478])
        {
          v29 = v21;
          sub_25AF181DC(v21, v54, v53, v52, v55);
          v44 = sub_25B0044B4();
          v45 = sub_25B005CB4();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v62[0] = v47;
            *v46 = 136315394;
            v48 = sub_25B006364();
            v50 = sub_25AF8E7DC(v48, v49, v62);
            v26 = v57;

            *(v46 + 4) = v50;
            *(v46 + 12) = 2080;
            *(v46 + 14) = sub_25AF8E7DC(0x496C6F72746E6F63, 0xEF65636E6174736ELL, v62);
            _os_log_impl(&dword_25AF0B000, v44, v45, "%s.%s Unsupported control instance type.", v46, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F85EC30](v47, -1, -1);
            MEMORY[0x25F85EC30](v46, -1, -1);
          }

          v51 = v58;
          *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlInstanceCancellable) = 0;

          (v51[1])(v8, v26);
          v22 = v54;
          v24 = v53;
          v23 = v52;
          v28 = v55;
          goto LABEL_21;
        }

        v27 = v58;
        (v58)[2](v5, v8, v26);
        (v27[12])(v5, v26);
        v32 = *v5;
        v63 = sub_25B0043B4();
        v33 = &unk_27FA261E0;
        v34 = MEMORY[0x277CFA4D0];
      }

      v64 = sub_25AFBFF04(v33, v34);
      v62[0] = v32;
      v35 = v21;
      v36 = v21;
      v37 = v54;
      v38 = v53;
      v39 = v52;
      v40 = v55;
      sub_25AF181DC(v36, v54, v53, v52, v55);
      (v27[1])(v8, v26);
      v29 = v35;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      sub_25B004414();
      sub_25AFA09E4(v62, v61);
      sub_25AF25FC4(v61, v59, &qword_27FA261F0);
      v41 = swift_allocObject();
      *(v41 + 16) = v35;
      *(v41 + 24) = v37;
      *(v41 + 32) = v38;
      *(v41 + 40) = v39;
      *(v41 + 48) = v40;
      v42 = v59[1];
      *(v41 + 56) = v59[0];
      *(v41 + 72) = v42;
      v43 = v56;
      *(v41 + 88) = v60;
      *(v41 + 96) = v43;
      sub_25B0044E4();
      swift_allocObject();
      sub_25AF181DC(v35, v37, v38, v39, v40);
      *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlInstanceCancellable) = sub_25B0044F4();

      sub_25AFBB340();
      v28 = v40;
      v23 = v39;
      v24 = v38;
      v22 = v37;
      sub_25AF2602C(v61, &qword_27FA261F0);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
    }

LABEL_21:
    sub_25AFB9D68();
    sub_25AF231D0(v29, v22, v24, v23, v28);
    return;
  }

  v58 = sub_25B0044B4();
  v18 = sub_25B005CB4();
  if (os_log_type_enabled(v58, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v62[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_25AF8E7DC(0x496C6F72746E6F63, 0xEF65636E6174736ELL, v62);
    _os_log_impl(&dword_25AF0B000, v58, v18, "%s must have non-nil ID for Controls-based button.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x25F85EC30](v20, -1, -1);
    MEMORY[0x25F85EC30](v19, -1, -1);
  }

  else
  {
    v30 = v58;
  }
}

uint64_t sub_25AFBB110(uint64_t a1, void *a2)
{
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v4 = sub_25B0044C4();
  __swift_project_value_buffer(v4, qword_27FA30C28);
  sub_25AF196CC(a1, &v20);
  v5 = sub_25B0044B4();
  v6 = sub_25B005CB4();
  sub_25AF1C414(a1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315650;
    v9 = sub_25B006364();
    v11 = sub_25AF8E7DC(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_25AF8E7DC(0x496C6F72746E6F63, 0xEF65636E6174736ELL, &v19);
    *(v7 + 22) = 2080;
    v12 = *(a1 + 16);
    v20 = *a1;
    v21 = v12;
    v22 = *(a1 + 32);
    sub_25AF196CC(a1, &v18);
    v13 = sub_25AFD3228();
    v15 = v14;
    sub_25AF18128(v20, *(&v20 + 1), v21, *(&v21 + 1), v22);
    v16 = sub_25AF8E7DC(v13, v15, &v19);

    *(v7 + 24) = v16;
    _os_log_impl(&dword_25AF0B000, v5, v6, "%s.%s invalidating controlInstance for id: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v8, -1, -1);
    MEMORY[0x25F85EC30](v7, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return sub_25B0043D4();
}

uint64_t sub_25AFBB340()
{
  v1 = sub_25B0042C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA255A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-v6];
  v8 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlInstance;
  swift_beginAccess();
  sub_25AF25FC4(v0 + v8, v7, &qword_27FA255A0);
  result = (*(v2 + 48))(v7, 1, v1);
  if (result != 1)
  {
    v10 = (*(v2 + 88))(v7, v1);
    if (v10 == *MEMORY[0x277CFA468])
    {
      (*(v2 + 16))(v4, v7, v1);
      (*(v2 + 96))(v4, v1);
      v11 = *v4;
      v19 = sub_25B004314();
      v12 = &unk_27FA261E8;
      v13 = MEMORY[0x277CFA490];
LABEL_6:
      v20 = sub_25AFBFF04(v12, v13);
      v18[0] = v11;
      (*(v2 + 8))(v7, v1);
      v14 = v19;
      v15 = v20;
      v16 = __swift_project_boxed_opaque_existential_1(v18, v19);
      sub_25AFBD954(v16, v14, v15);
      return __swift_destroy_boxed_opaque_existential_0Tm(v18);
    }

    if (v10 == *MEMORY[0x277CFA478])
    {
      (*(v2 + 16))(v4, v7, v1);
      (*(v2 + 96))(v4, v1);
      v11 = *v4;
      v19 = sub_25B0043B4();
      v12 = &unk_27FA261E0;
      v13 = MEMORY[0x277CFA4D0];
      goto LABEL_6;
    }

    return (*(v2 + 8))(v7, v1);
  }

  return result;
}

uint64_t sub_25AFBB640()
{
  v1 = v0;
  v116 = *v0;
  v2 = sub_25B004384();
  v107 = *(v2 - 8);
  v108 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B0043A4();
  v111 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v112 = &v105 - v9;
  MEMORY[0x28223BE20](v10);
  v115 = &v105 - v11;
  v117 = sub_25B004304();
  v109 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v105 - v15;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v17 = sub_25B0044C4();
  v105 = __swift_project_value_buffer(v17, qword_27FA30C28);
  v18 = sub_25B0044B4();
  v19 = sub_25B005CA4();
  v20 = os_log_type_enabled(v18, v19);
  v110 = v4;
  v113 = v5;
  v106 = v7;
  v118 = v16;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v137[0] = v22;
    *v21 = 136315394;
    v23 = sub_25B006364();
    v25 = sub_25AF8E7DC(v23, v24, v137);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_25AF8E7DC(0xD000000000000024, 0x800000025B01A1F0, v137);
    _os_log_impl(&dword_25AF0B000, v18, v19, "%s.%s didSet", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v22, -1, -1);
    MEMORY[0x25F85EC30](v21, -1, -1);
  }

  swift_getKeyPath();
  v26 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel___observationRegistrar;
  v137[0] = v1;
  v27 = sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v28 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlViewModel;
  swift_beginAccess();
  sub_25AF25FC4(v1 + v28, v137, &qword_27FA25780);
  v29 = v138;
  v123 = v26;
  if (v138)
  {
    v30 = __swift_project_boxed_opaque_existential_1(v137, v138);
    v31 = *(v29 - 8);
    v32 = MEMORY[0x28223BE20](v30);
    v34 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v34, v32);
    sub_25AF2602C(v137, &qword_27FA25780);
    v120 = sub_25B004454();
    (*(v31 + 8))(v34, v29);
  }

  else
  {
    sub_25AF2602C(v137, &qword_27FA25780);
    v120 = 0;
  }

  swift_getKeyPath();
  v137[0] = v1;
  sub_25B004234();

  sub_25AF25FC4(v1 + v28, v137, &qword_27FA25780);
  v35 = v138;
  if (v138)
  {
    v36 = __swift_project_boxed_opaque_existential_1(v137, v138);
    v37 = *(v35 - 8);
    v38 = MEMORY[0x28223BE20](v36);
    v40 = &v105 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v40, v38);
    sub_25AF2602C(v137, &qword_27FA25780);
    v121 = sub_25B004444();
    v122 = v41;
    (*(v37 + 8))(v40, v35);
  }

  else
  {
    sub_25AF2602C(v137, &qword_27FA25780);
    v121 = 0;
    v122 = 0;
  }

  swift_getKeyPath();
  v137[0] = v1;
  sub_25B004234();

  sub_25AF25FC4(v1 + v28, v137, &qword_27FA25780);
  v42 = v138;
  if (v138)
  {
    v43 = __swift_project_boxed_opaque_existential_1(v137, v138);
    v44 = *(v42 - 8);
    v45 = MEMORY[0x28223BE20](v43);
    v47 = &v105 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v44 + 16))(v47, v45);
    sub_25AF2602C(v137, &qword_27FA25780);
    v114 = sub_25B004424();
    v119 = v48;
    (*(v44 + 8))(v47, v42);
  }

  else
  {
    sub_25AF2602C(v137, &qword_27FA25780);
    v114 = 0;
    v119 = 0;
  }

  v49 = v118;
  swift_getKeyPath();
  v137[0] = v1;
  sub_25B004234();

  sub_25AF25FC4(v1 + v28, v135, &qword_27FA25780);
  if (!v136)
  {
    v56 = 0;
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v57 = 0;
    goto LABEL_40;
  }

  sub_25AF25FC4(v135, v137, &qword_27FA25780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25788);
  v50 = v117;
  if (!swift_dynamicCast())
  {
    v58 = v115;
    v59 = v113;
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v137);
      v56 = 0;
      v115 = 0;
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v57 = 0;
      goto LABEL_40;
    }

    v61 = v111;
    v60 = v112;
    (*(v111 + 32))(v112, v58, v59);
    v62 = v106;
    (*(v61 + 16))(v106, v60, v59);
    v63 = sub_25B0044B4();
    v64 = sub_25B005C94();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v134[0] = v66;
      *v65 = 136315650;
      v67 = sub_25B006364();
      v69 = sub_25AF8E7DC(v67, v68, v134);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      *(v65 + 14) = sub_25AF8E7DC(0xD000000000000024, 0x800000025B01A1F0, v134);
      *(v65 + 22) = 1024;
      v70 = sub_25B004354() & 1;
      v71 = *(v111 + 8);
      v71(v62, v113);
      *(v65 + 24) = v70;
      _os_log_impl(&dword_25AF0B000, v63, v64, "%s.%s toggle control view model updated. isOn: %{BOOL}d", v65, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v66, -1, -1);
      MEMORY[0x25F85EC30](v65, -1, -1);
    }

    else
    {
      v71 = *(v61 + 8);
      v71(v62, v59);
    }

    v72 = v122;
    v57 = sub_25B004354();
    v73 = sub_25B004394();
    v117 = v74;
    v118 = v73;
    if (v57)
    {
      sub_25B004334();
      if (v72)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_25B004344();
      if (v72)
      {
LABEL_30:

        v75 = sub_25B004374();
        if (v76)
        {
          v115 = v76;
          v116 = v75;
LABEL_38:

          goto LABEL_39;
        }

        v77 = sub_25B004364();
        if (v78)
        {
          v79 = v78;
          v116 = v77;
          if (qword_27FA23728 != -1)
          {
            swift_once();
          }

          sub_25B004014();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25770);
          v80 = swift_allocObject();
          *(v80 + 16) = xmmword_25B00CD00;
          v81 = MEMORY[0x277D837D0];
          *(v80 + 56) = MEMORY[0x277D837D0];
          v82 = sub_25AFA0878();
          v83 = v122;
          *(v80 + 32) = v121;
          *(v80 + 40) = v83;
          *(v80 + 96) = v81;
          *(v80 + 104) = v82;
          v84 = v116;
          *(v80 + 64) = v82;
          *(v80 + 72) = v84;
          *(v80 + 80) = v79;
          v85 = sub_25B005944();
          v115 = v86;
          v116 = v85;
          goto LABEL_38;
        }

        swift_getKeyPath();
        *&v134[0] = v1;
        sub_25B004234();

        if ((v57 & 1) == *(v1 + 74))
        {

          v115 = 0;
          v116 = 0;
          goto LABEL_39;
        }

        v106 = v27;
        v99 = v57;
        if (v57)
        {
          v100 = v121;
          if (qword_27FA23728 == -1)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v100 = v121;
          if (qword_27FA23728 == -1)
          {
LABEL_50:
            sub_25B004014();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25770);
            v101 = swift_allocObject();
            *(v101 + 16) = xmmword_25B00A900;
            *(v101 + 56) = MEMORY[0x277D837D0];
            *(v101 + 64) = sub_25AFA0878();
            v102 = v122;
            *(v101 + 32) = v100;
            *(v101 + 40) = v102;
            v103 = sub_25B005944();
            v115 = v104;
            v116 = v103;

            v57 = v99;
            goto LABEL_39;
          }
        }

        swift_once();
        goto LABEL_50;
      }
    }

    v115 = 0;
    v116 = v121;
LABEL_39:
    v87 = v112;
    v56 = sub_25B004324();
    (*(v107 + 8))(v110, v108);
    v71(v87, v113);

    __swift_destroy_boxed_opaque_existential_0Tm(v137);
    goto LABEL_40;
  }

  v106 = v27;
  v51 = v109;
  (*(v109 + 32))(v13, v49, v50);
  v52 = sub_25B0042D4();
  v53 = sub_25B0042F4();
  v115 = v54;
  v116 = v53;
  v55 = sub_25B0042E4();
  if (v55)
  {
    v56 = v55;
  }

  else
  {
    if (qword_27FA23798 != -1)
    {
      swift_once();
    }

    v56 = qword_27FA260F8;
  }

  (*(v51 + 8))(v13, v50);

  __swift_destroy_boxed_opaque_existential_0Tm(v137);
  v117 = 0;
  v118 = 0;
  v57 = v52;
LABEL_40:
  sub_25AF2602C(v135, &qword_27FA25780);
  sub_25AFB851C(v57 & 1);
  v88 = v122;

  v89 = v121;
  sub_25AFB98D0(v121, v88);
  swift_getKeyPath();
  v137[0] = v1;
  sub_25B004234();

  v90 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 48);
  v134[2] = *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 32);
  v134[3] = v90;
  v91 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 16);
  v134[0] = *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps);
  v134[1] = v91;
  v133[0] = *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 1);
  *(v133 + 3) = *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 4);
  sub_25AFC0388(v134, v137);

  v92 = v119;
  if (v119)
  {

    v89 = v114;
  }

  else
  {
    v92 = v88;
  }

  v93 = v120 & 1;
  LOBYTE(v137[0]) = v120 & 1;
  *(v137 + 1) = v133[0];
  HIDWORD(v137[0]) = *(v133 + 3);
  v95 = v117;
  v94 = v118;
  v137[1] = v118;
  v137[2] = v117;
  v96 = v115;
  v97 = v116;
  v138 = v116;
  v139 = v115;
  v140 = v56;
  v141 = v89;
  v142 = v92;
  sub_25AFC0388(v137, &v124);
  sub_25AFB9B64(v137);

  v124 = v93;
  *v125 = v133[0];
  *&v125[3] = *(v133 + 3);
  v126 = v94;
  v127 = v95;
  v128 = v97;
  v129 = v96;
  v130 = v56;
  v131 = v89;
  v132 = v92;
  return sub_25AFC03C0(&v124);
}

uint64_t sub_25AFBC6CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlViewModel;
  swift_beginAccess();
  return sub_25AF25FC4(v3 + v4, a2, &qword_27FA25780);
}

uint64_t sub_25AFBC7A4(uint64_t a1)
{
  sub_25AF25FC4(a1, v2, &qword_27FA25780);
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004224();

  return sub_25AF2602C(v2, &qword_27FA25780);
}

uint64_t sub_25AFBC8AC(uint64_t a1, uint64_t a2)
{
  sub_25AF25FC4(a2, v6, &qword_27FA25780);
  v3 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlViewModel;
  swift_beginAccess();
  sub_25AF25FC4(a1 + v3, v5, &qword_27FA25780);
  swift_beginAccess();
  sub_25AF69638(v6, a1 + v3, &qword_27FA25780);
  swift_endAccess();
  sub_25AFBB640();
  sub_25AF2602C(v5, &qword_27FA25780);
  return sub_25AF2602C(v6, &qword_27FA25780);
}

uint64_t sub_25AFBC99C()
{
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  return *(v0 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__editModeJitter);
}

__n128 sub_25AFBCA50@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__editModeJitter + 16);
  v5 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__editModeJitter + 24);
  result = *(v3 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__editModeJitter);
  *a2 = result;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u8[8] = v5;
  return result;
}

uint64_t sub_25AFBCB14(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__editModeJitter;
  if ((*(v4 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__editModeJitter + 24) & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      v6 = *v5 == *&result && *(v5 + 8) == *&a2;
      if (v6 && *(v5 + 16) == *&a3)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004224();
    *&result = COERCE_DOUBLE();
    return result;
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  *v5 = *&result;
  *(v5 + 8) = *&a2;
  *(v5 + 16) = *&a3;
  *(v5 + 24) = a4 & 1;
  return result;
}

uint64_t sub_25AFBCC94(__int128 *a1)
{
  v3 = *(a1 + 32);
  *(v1 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 72) = 257;
  *(v1 + 74) = 0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  v4 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__lastControlInteractionDate;
  v5 = sub_25B004194();
  v20 = a1[1];
  v21 = *a1;
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps;
  *v6 = 0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0;
  *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility) = 0;
  v7 = v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__fillPercent;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__useLightEffect) = 0;
  *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_animationPackageViewAnimationModel) = 0;
  *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_animationPackageViewLoaderModel) = 0;
  v8 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlInstance;
  v9 = sub_25B0042C4();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlViewModelUpdatesTask) = 0;
  *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlViewModelUpdateTasksCancellable) = 0;
  *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlInstanceCancellable) = 0;
  v10 = v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlViewModel;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v11 = v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__editModeJitter;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 1;
  *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel____lazy_storage___ellipticModel) = 0;
  *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel____lazy_storage___overscrollModel) = 0;
  *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel____lazy_storage___transitionModel) = 0;
  v12 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_visualsModel;
  type metadata accessor for ControlCenterStyle.VisualsModel(0);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_25AFA0400(v22);
  v14 = v22[6];
  *(v13 + 136) = v22[7];
  v15 = v22[9];
  *(v13 + 152) = v22[8];
  *(v13 + 168) = v15;
  *(v13 + 184) = v22[10];
  v16 = v22[2];
  *(v13 + 72) = v22[3];
  v17 = v22[5];
  *(v13 + 88) = v22[4];
  *(v13 + 104) = v17;
  *(v13 + 120) = v14;
  v18 = v22[1];
  *(v13 + 24) = v22[0];
  *(v13 + 40) = v18;
  *(v13 + 56) = v16;
  *(v13 + 200) = 0;
  *(v13 + 202) = 0;
  sub_25B004264();
  *(v1 + v12) = v13;
  *(v1 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__isLifted) = 0;
  sub_25B004264();
  *(v1 + 16) = v21;
  *(v1 + 32) = v20;
  *(v1 + 48) = v3;
  swift_weakAssign();
  return v1;
}

uint64_t sub_25AFBCF44()
{
  sub_25AF231D0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_25AF9F2E8(v0 + 56);

  sub_25AF2602C(v0 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__lastControlInteractionDate, &unk_27FA271A0);

  sub_25AF2602C(v0 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlInstance, &qword_27FA255A0);

  sub_25AF2602C(v0 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlViewModel, &qword_27FA25780);

  v1 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_25AFBD0F8()
{
  sub_25AFBCF44();

  return swift_deallocClassInstance();
}

void sub_25AFBD178()
{
  sub_25AFBD34C(319, &qword_27FA271D0, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    sub_25AFBD34C(319, &qword_27FA26180, MEMORY[0x277CFA480]);
    if (v1 <= 0x3F)
    {
      sub_25B004274();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_25AFBD34C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25B005E04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_25AFBD3A0()
{
  swift_getKeyPath();
  sub_25AFBFF04(&qword_27FA25948, type metadata accessor for GlanceButtonModel.EllipticModel);
  sub_25B004234();

  return *(v0 + 16);
}

double sub_25AFBD440()
{
  swift_getKeyPath();
  *&v24 = v0;
  sub_25AFBFF04(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
  sub_25B004234();

  v1 = v0[6];
  v24 = v0[5];
  v25 = v1;
  v2 = v0[8];
  v26 = v0[7];
  v27 = v2;
  v3 = *(&v25 + 1);
  if (v2 != 1)
  {
    v20 = v0[5];
    *&v21 = *(v0 + 12);
    *(&v21 + 1) = *(&v25 + 1);
    v22 = v0[7];
    v23 = v2;
    sub_25AF25FC4(&v24, &v14, &qword_27FA249F0);
    v6 = &v20;
LABEL_6:
    sub_25AF2602C(v6, &qword_27FA249F0);
    return v3;
  }

  v14 = v0[5];
  v15 = *(v0 + 12);
  v16 = *(&v25 + 1);
  v17 = v0[7];
  v18 = 1;
  v19 = *(&v2 + 1);
  sub_25AF25FC4(&v24, &v9, &qword_27FA249F0);
  sub_25AF2602C(&v14, &qword_27FA249F0);
  swift_getKeyPath();
  *&v9 = v0;
  sub_25B004234();

  v4 = v0[2];
  v20 = v0[1];
  v21 = v4;
  v5 = v0[4];
  v22 = v0[3];
  v23 = v5;
  v3 = *(&v21 + 1);
  if (v5 != 1)
  {
    v9 = v0[1];
    v10 = *(v0 + 4);
    v11 = *(&v21 + 1);
    v12 = v0[3];
    v13 = v5;
    sub_25AF25FC4(&v20, v8, &qword_27FA249F0);
    v6 = &v9;
    goto LABEL_6;
  }

  v9 = v0[1];
  v10 = *(v0 + 4);
  v11 = *(&v21 + 1);
  v12 = v0[3];
  *&v13 = 1;
  *(&v13 + 1) = *(&v5 + 1);
  sub_25AF25FC4(&v20, v8, &qword_27FA249F0);
  sub_25AF2602C(&v9, &qword_27FA249F0);
  return 1.0;
}

uint64_t sub_25AFBD6BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_animationPackageViewLoaderModel;
  v10 = *(v4 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_animationPackageViewLoaderModel);
  if (v10 && (*(v10 + 16) == a1 ? (v11 = *(v10 + 24) == a2) : (v11 = 0), (v11 || (sub_25B006174() & 1) != 0) && *(v10 + 32) == a3 && *(v10 + 40) == (a4 & 1)))
  {
  }

  else
  {
    type metadata accessor for AnimationPackageView.ViewLoaderModel(0);
    v10 = swift_allocObject();
    sub_25B004264();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    *(v10 + 32) = a3;
    *(v10 + 40) = a4 & 1;
    *(v4 + v9) = v10;
  }

  return v10;
}

BOOL sub_25AFBD7B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_25AFBFD84(v7, v8);
}

unint64_t sub_25AFBD804()
{
  v1 = *(v0 + 48);
  if (v1 > 0xFD)
  {
    return 0xD00000000000001ELL;
  }

  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_25AF181DC(v6, v5, v4, v3, v1);
  sub_25B005F24();

  v7 = sub_25AFD3228();
  MEMORY[0x25F85D7B0](v7);

  MEMORY[0x25F85D7B0](62, 0xE100000000000000);
  sub_25AF231D0(v6, v5, v4, v3, v1);
  return 0xD000000000000018;
}

uint64_t sub_25AFBD934()
{
  result = sub_25B0053D4();
  qword_27FA260F8 = result;
  return result;
}

void sub_25AFBD954(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v72 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v61 - v10;
  v12 = *(v3 + 48);
  if (v12 <= 0xFD)
  {
    v64 = a1;
    v65 = v7;
    v66 = a3;
    v67 = a2;
    v17 = *(v3 + 16);
    v18 = *(v3 + 32);
    v19 = *(v3 + 40);
    v20 = v3;
    v21 = v17;
    v71 = *(v3 + 24);
    v69 = v11;
    v70 = v18;
    sub_25AF181DC(v17, v71, v18, v19, v12);
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v22 = sub_25B0044C4();
    __swift_project_value_buffer(v22, qword_27FA30C28);
    v24 = v70;
    v23 = v71;
    sub_25AF181DC(v21, v71, v70, v19, v12);
    v25 = sub_25B0044B4();
    v26 = sub_25B005C94();
    v27 = v23;
    v28 = v26;
    sub_25AF231D0(v21, v27, v24, v19, v12);
    v29 = os_log_type_enabled(v25, v28);
    v68 = v12;
    if (v29)
    {
      v30 = v12;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v78 = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_25AF8E7DC(0xD000000000000025, 0x800000025B01A160, &v78);
      *(v31 + 12) = 2080;
      v73 = v21;
      v74 = v71;
      v75 = v70;
      v76 = v19;
      v77 = v30;
      sub_25AF181DC(v21, v71, v70, v19, v30);
      v33 = sub_25AFD3228();
      v61 = v19;
      v35 = v34;
      sub_25AF18128(v73, v74, v75, v76, v77);
      v36 = sub_25AF8E7DC(v33, v35, &v78);
      v19 = v61;

      *(v31 + 14) = v36;
      _os_log_impl(&dword_25AF0B000, v25, v28, "%s id: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v32, -1, -1);
      MEMORY[0x25F85EC30](v31, -1, -1);
    }

    v37 = v64;
    v38 = sub_25B005B64();
    (*(*(v38 - 8) + 56))(v69, 1, 1, v38);
    v39 = swift_allocObject();
    v63 = v20;
    swift_weakInit();
    v40 = v65;
    v41 = v67;
    (*(v65 + 16))(v72, v37, v67);
    sub_25B005B34();
    v42 = v21;
    v62 = v21;
    v43 = v70;
    v44 = v71;
    sub_25AF1D7EC(v42, v71, v70, v19, v68);

    v45 = sub_25B005B24();
    v46 = (*(v40 + 80) + 48) & ~*(v40 + 80);
    v64 = (v46 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = v46 + v8 + 47;
    v48 = v44;
    v49 = v47 & 0xFFFFFFFFFFFFFFF8;
    v50 = v19;
    v51 = swift_allocObject();
    v52 = MEMORY[0x277D85700];
    *(v51 + 2) = v45;
    *(v51 + 3) = v52;
    v53 = v66;
    *(v51 + 4) = v41;
    *(v51 + 5) = v53;
    (*(v40 + 32))(&v51[v46], v72, v41);
    v54 = &v51[v64];
    v55 = v62;
    *v54 = v62;
    *(v54 + 1) = v48;
    *(v54 + 2) = v43;
    *(v54 + 3) = v50;
    v56 = v43;
    LOBYTE(v43) = v68;
    v54[32] = v68;
    *&v51[v49] = v39;

    v57 = sub_25AF6C7F8(0, 0, v69, &unk_25B011CB0, v51);
    v58 = v63;
    *(v63 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlViewModelUpdatesTask) = v57;

    *(swift_allocObject() + 16) = v57;
    sub_25B0044E4();
    swift_allocObject();

    v59 = sub_25B0044F4();
    sub_25AF231D0(v55, v48, v56, v50, v43);

    *(v58 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlViewModelUpdateTasksCancellable) = v59;
  }

  else
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v13 = sub_25B0044C4();
    __swift_project_value_buffer(v13, qword_27FA30C28);
    v72 = sub_25B0044B4();
    v14 = sub_25B005CB4();
    if (os_log_type_enabled(v72, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v73 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_25AF8E7DC(0xD000000000000025, 0x800000025B01A160, &v73);
      _os_log_impl(&dword_25AF0B000, v72, v14, "%s must have non-nil ID for Controls-based button.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x25F85EC30](v16, -1, -1);
      MEMORY[0x25F85EC30](v15, -1, -1);
    }

    else
    {
      v60 = v72;
    }
  }
}

uint64_t sub_25AFBDFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[42] = a7;
  v8[43] = a8;
  v8[40] = a5;
  v8[41] = a6;
  v8[39] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[44] = AssociatedTypeWitness;
  v8[45] = *(AssociatedTypeWitness - 8);
  v8[46] = swift_task_alloc();
  sub_25B005E04();
  v8[47] = swift_task_alloc();
  v10 = sub_25B005BD4();
  v8[48] = v10;
  v8[49] = *(v10 - 8);
  v8[50] = swift_task_alloc();
  v11 = sub_25B005BC4();
  v8[51] = v11;
  v8[52] = *(v11 - 8);
  v8[53] = swift_task_alloc();
  v8[54] = sub_25B005B34();
  v8[55] = sub_25B005B24();
  v13 = sub_25B005AE4();
  v8[56] = v13;
  v8[57] = v12;

  return MEMORY[0x2822009F8](sub_25AFBE20C, v13, v12);
}

uint64_t sub_25AFBE20C()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  sub_25B004404();
  sub_25B005BA4();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[58] = 0;
  v4 = sub_25B005B24();
  v0[59] = v4;
  v5 = swift_task_alloc();
  v0[60] = v5;
  *v5 = v0;
  v5[1] = sub_25AFBE338;
  v6 = v0[51];
  v7 = v0[47];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v7, v4, v8, v6);
}

uint64_t sub_25AFBE338()
{
  v1 = *v0;

  v2 = *(v1 + 456);
  v3 = *(v1 + 448);

  return MEMORY[0x2822009F8](sub_25AFBE47C, v3, v2);
}

uint64_t sub_25AFBE47C()
{
  v52 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v3 = *(v0 + 360);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      if (qword_27FA23800 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 320);
      v5 = sub_25B0044C4();
      __swift_project_value_buffer(v5, qword_27FA30C28);
      sub_25AF196CC(v4, v0 + 56);

      v6 = sub_25B0044B4();
      v7 = sub_25B005CD4();
      sub_25AF1C414(v4);

      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(v0 + 320);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v48 = v10;
        *v9 = 136315650;
        *(v9 + 4) = sub_25AF8E7DC(0xD000000000000025, 0x800000025B01A160, &v48);
        *(v9 + 12) = 2080;
        v11 = *(v8 + 16);
        v49 = *v8;
        v50 = v11;
        v51 = *(v8 + 32);
        sub_25AF196CC(v8, v0 + 96);
        v12 = sub_25AFD3228();
        v14 = v13;
        sub_25AF18128(v49, *(&v49 + 1), v50, *(&v50 + 1), v51);
        v15 = sub_25AF8E7DC(v12, v14, &v48);

        *(v9 + 14) = v15;
        *(v9 + 22) = 2080;

        v16 = sub_25AFBD804();
        v18 = v17;

        v19 = sub_25AF8E7DC(v16, v18, &v48);

        *(v9 + 24) = v19;
        _os_log_impl(&dword_25AF0B000, v6, v7, "%s viewModelUpdates finished or cancelled for id: %s; self: %s", v9, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F85EC30](v10, -1, -1);
        MEMORY[0x25F85EC30](v9, -1, -1);
      }

      if ((sub_25B005C14() & 1) == 0)
      {
        sub_25AFBB340();
      }
    }

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    (*(v3 + 32))(*(v0 + 368), v1, v2);
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 320);
    v23 = sub_25B0044C4();
    __swift_project_value_buffer(v23, qword_27FA30C28);
    sub_25AF196CC(v22, v0 + 136);
    v24 = sub_25B0044B4();
    v25 = sub_25B005C94();
    sub_25AF1C414(v22);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 320);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v49 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_25AF8E7DC(0xD000000000000025, 0x800000025B01A160, &v49);
      *(v27 + 12) = 2080;
      v29 = *(v26 + 32);
      v30 = *(v26 + 16);
      *(v0 + 176) = *v26;
      *(v0 + 192) = v30;
      *(v0 + 208) = v29;
      sub_25AF196CC(v26, v0 + 216);
      v31 = sub_25AFD3228();
      v33 = v32;
      sub_25AF18128(*(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208));
      v34 = sub_25AF8E7DC(v31, v33, &v49);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_25AF0B000, v24, v25, "%s new view model for control ID: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v28, -1, -1);
      MEMORY[0x25F85EC30](v27, -1, -1);
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v36 = Strong;
      v37 = *(v0 + 464);
      v39 = *(v0 + 360);
      v38 = *(v0 + 368);
      v40 = *(v0 + 352);
      *(v0 + 40) = v40;
      *(v0 + 48) = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      (*(v39 + 16))(boxed_opaque_existential_0, v38, v40);
      swift_getKeyPath();
      v42 = swift_task_alloc();
      *(v42 + 16) = v36;
      *(v42 + 24) = v0 + 16;
      *(v0 + 304) = v36;
      sub_25AFBFF04(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
      sub_25B004224();

      (*(v39 + 8))(v38, v40);

      sub_25AF2602C(v0 + 16, &qword_27FA25780);
    }

    else
    {
      (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));
      v37 = *(v0 + 464);
    }

    *(v0 + 464) = v37;
    v43 = sub_25B005B24();
    *(v0 + 472) = v43;
    v44 = swift_task_alloc();
    *(v0 + 480) = v44;
    *v44 = v0;
    v44[1] = sub_25AFBE338;
    v45 = *(v0 + 408);
    v46 = *(v0 + 376);
    v47 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v46, v43, v47, v45);
  }
}

void sub_25AFBEB9C(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFBFF04(&qword_27FA25948, type metadata accessor for GlanceButtonModel.EllipticModel);
    sub_25B004224();
  }
}

uint64_t sub_25AFBECB4(_OWORD *a1)
{
  result = sub_25B005CF4();
  if (result)
  {
    v4 = a1[1];
    *(v1 + 24) = *a1;
    *(v1 + 40) = v4;
    *(v1 + 56) = a1[2];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFBFF04(&qword_27FA25948, type metadata accessor for GlanceButtonModel.EllipticModel);
    sub_25B004224();
  }

  return result;
}

void sub_25AFBEE34(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFBFF04(&qword_27FA23D20, type metadata accessor for GlanceButtonModel.OverscrollModel);
    sub_25B004224();
  }
}

uint64_t sub_25AFBEF80()
{
  result = sub_25B004274();
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

uint64_t sub_25AFBF020(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_25AFBFC64(v7, v8) & 1;
}

double sub_25AFBF06C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v9 = v1;
  sub_25AFBFF04(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
  sub_25B004234();

  v3 = v1[2];
  v9 = v1[1];
  v10 = v3;
  v4 = v1[4];
  v11 = v1[3];
  v12 = v4;
  sub_25AF25FC4(&v9, &v8, &qword_27FA249F0);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

uint64_t sub_25AFBF148@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v10[0] = v3;
  sub_25AFBFF04(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
  sub_25B004234();

  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v10[2] = v3[3];
  v10[3] = v6;
  v10[0] = v4;
  v10[1] = v5;
  v7 = v3[2];
  *a2 = v3[1];
  a2[1] = v7;
  a2[2] = v3[3];
  a2[3] = v6;
  return sub_25AF25FC4(v10, &v9, &qword_27FA249F0);
}

uint64_t sub_25AFBF224(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_25AF25FC4(v5, &v4, &qword_27FA249F0);
  return sub_25AFBF280(v5);
}

uint64_t sub_25AFBF280(_OWORD *a1)
{
  v3 = v1[2];
  v13[0] = v1[1];
  v13[1] = v3;
  v4 = v1[4];
  v13[2] = v1[3];
  v13[3] = v4;
  sub_25AF25FC4(v13, v12, &qword_27FA249F0);
  v5 = sub_25AFC0578(v13, a1);
  sub_25AF2602C(v13, &qword_27FA249F0);
  if (v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v12[0] = v1;
    sub_25AFBFF04(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
    sub_25B004224();
    sub_25AF2602C(a1, &qword_27FA249F0);
  }

  else
  {
    v8 = v1[2];
    v12[0] = v1[1];
    v12[1] = v8;
    v9 = v1[4];
    v12[2] = v1[3];
    v12[3] = v9;
    v10 = a1[1];
    v1[1] = *a1;
    v1[2] = v10;
    v11 = a1[3];
    v1[3] = a1[2];
    v1[4] = v11;
    return sub_25AF2602C(v12, &qword_27FA249F0);
  }
}

uint64_t sub_25AFBF424(void *a1, _OWORD *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a2[1];
  *(a1 + 1) = *a2;
  *(a1 + 2) = v9;
  v10 = a2[3];
  *(a1 + 3) = a2[2];
  *(a1 + 4) = v10;
  sub_25AF25FC4(a2, &v12, &qword_27FA249F0);
  return sub_25AFBFF4C(v2, v3, v4, v5, v6, v7, v8);
}

double sub_25AFBF4D4@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v9 = v1;
  sub_25AFBFF04(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
  sub_25B004234();

  v3 = v1[6];
  v9 = v1[5];
  v10 = v3;
  v4 = v1[8];
  v11 = v1[7];
  v12 = v4;
  sub_25AF25FC4(&v9, &v8, &qword_27FA249F0);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

uint64_t sub_25AFBF5B0(_OWORD *a1)
{
  v3 = v1[6];
  v13[0] = v1[5];
  v13[1] = v3;
  v4 = v1[8];
  v13[2] = v1[7];
  v13[3] = v4;
  sub_25AF25FC4(v13, v12, &qword_27FA249F0);
  v5 = sub_25AFC0578(v13, a1);
  sub_25AF2602C(v13, &qword_27FA249F0);
  if (v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v12[0] = v1;
    sub_25AFBFF04(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
    sub_25B004224();
    sub_25AF2602C(a1, &qword_27FA249F0);
  }

  else
  {
    v8 = v1[6];
    v12[0] = v1[5];
    v12[1] = v8;
    v9 = v1[8];
    v12[2] = v1[7];
    v12[3] = v9;
    v10 = a1[1];
    v1[5] = *a1;
    v1[6] = v10;
    v11 = a1[3];
    v1[7] = a1[2];
    v1[8] = v11;
    return sub_25AF2602C(v12, &qword_27FA249F0);
  }
}

uint64_t sub_25AFBF754(void *a1, _OWORD *a2)
{
  v2 = a1[10];
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[14];
  v7 = a1[15];
  v8 = a1[16];
  v9 = a2[1];
  *(a1 + 5) = *a2;
  *(a1 + 6) = v9;
  v10 = a2[3];
  *(a1 + 7) = a2[2];
  *(a1 + 8) = v10;
  sub_25AF25FC4(a2, &v12, &qword_27FA249F0);
  return sub_25AFBFF4C(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_25AFBF804()
{
  sub_25AFBFF4C(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8]);
  sub_25AFBFF4C(v0[10], v0[11], v0[12], v0[13], v0[14], v0[15], v0[16]);
  v1 = OBJC_IVAR____TtCC17NanoControlCenter17GlanceButtonModel15TransitionModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_25AFBF900()
{
  result = sub_25B004274();
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25AFBF9A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_25AFBFA04(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GlanceButtonModel.Jitter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GlanceButtonModel.Jitter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_25AFBFAD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_25AFBFB30(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_25AFBFBB8()
{
  result = qword_27FA261D0;
  if (!qword_27FA261D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA261D0);
  }

  return result;
}

uint64_t sub_25AFBFC0C(uint64_t a1)
{
  result = sub_25AFBFF04(&qword_27FA261D8, type metadata accessor for GlanceButtonModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25AFBFC64(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v2 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (!v2)
    {
      return 0;
    }

    v3 = a1;
    v4 = a2;

    v5 = sub_25B0056C4();

    a1 = v3;
    a2 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  v7 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v7)
    {

      v8 = sub_25B0056C4();

      if (v8)
      {
        return 1;
      }
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

BOOL sub_25AFBFD84(void *a1, void *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a2[2];
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v3 != v4)
    {
      v6 = a1;
      v7 = a2;
      v8 = sub_25B006174();
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v10 = a1[4];
  v11 = a2[4];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[3] != a2[3] || v10 != v11)
    {
      v12 = a1;
      v13 = a2;
      v14 = sub_25B006174();
      a2 = v13;
      v15 = v14;
      a1 = v12;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v16 = a2[5];
  if (a1[5])
  {
    if (!v16)
    {
      return 0;
    }

    v17 = a1;
    v18 = a2;

    v19 = sub_25B0053B4();

    a1 = v17;
    a2 = v18;
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v20 = a1[7];
  v21 = a2[7];
  if (!v20)
  {
    return !v21;
  }

  return v21 && (a1[6] == a2[6] && v20 == v21 || (sub_25B006174() & 1) != 0);
}

uint64_t sub_25AFBFF04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AFBFF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_25AFBFFEC()
{
  sub_25AF18128(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_25AFC0044()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AFC007C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  sub_25AF18128(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16), *(v0 + v6 + 24), *(v0 + v6 + 32));

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_25AFC0170(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v6 + *(*(v4 - 8) + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_25AF18ADC;

  return sub_25AFBDFFC(a1, v9, v10, v1 + v6, v1 + v8, v11, v4, v5);
}

uint64_t sub_25AFC02B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AFC02E8()
{
  result = *(v0 + 16);
  if (result)
  {
    return sub_25B005BF4();
  }

  return result;
}

uint64_t sub_25AFC033C(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_25AFC0388(v5, &v4);
  return sub_25AFB9B64(v5);
}

uint64_t sub_25AFC0414()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 96) = v0[3];
  *(v1 + 104) = v2;
}

uint64_t sub_25AFC047C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 80) = v0[3];
  *(v1 + 88) = v2;
}

void sub_25AFC04C4()
{
  v1 = *(v0 + 28);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__fillPercent;
  *v2 = *(v0 + 24);
  *(v2 + 4) = v1;
}

uint64_t sub_25AFC051C(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_25AF25FC4(v5, &v4, &qword_27FA249F0);
  return sub_25AFBF280(v5);
}

uint64_t sub_25AFC0578(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v32 = *a1;
  v33 = v3;
  v34 = *(a1 + 32);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  if (v5 != 1)
  {
    if (v6 != 1)
    {
      v12 = *(a2 + 16);
      v17[0] = *a2;
      v17[1] = v12;
      v18 = *(a2 + 32);
      *&v19 = v6;
      *(&v19 + 1) = v7;
      v23 = v17[0];
      v24 = v12;
      v25 = v18;
      v26 = v19;
      v13 = *a1;
      v14 = *(a1 + 32);
      v35[1] = *(a1 + 16);
      v35[2] = v14;
      v35[0] = v13;
      v36 = v5;
      v37 = v4;
      sub_25AF25FC4(a1, v20, &qword_27FA249F0);
      sub_25AF25FC4(a2, v20, &qword_27FA249F0);
      v15 = sub_25AFBFC64(v35, &v23);
      sub_25AF2602C(v17, &qword_27FA249F0);
      v20[0] = v32;
      v20[1] = v33;
      v20[2] = v34;
      v21 = v5;
      v22 = v4;
      sub_25AF2602C(v20, &qword_27FA249F0);
      v9 = v15 ^ 1;
      return v9 & 1;
    }

    goto LABEL_5;
  }

  if (v6 != 1)
  {
LABEL_5:
    v10 = *(a1 + 16);
    v23 = *a1;
    v24 = v10;
    v25 = *(a1 + 32);
    *&v26 = v5;
    *(&v26 + 1) = v4;
    v11 = *(a2 + 16);
    v27 = *a2;
    v28 = v11;
    v29 = *(a2 + 32);
    v30 = v6;
    v31 = v7;
    sub_25AF25FC4(a1, v35, &qword_27FA249F0);
    sub_25AF25FC4(a2, v35, &qword_27FA249F0);
    sub_25AF2602C(&v23, &unk_27FA25680);
    v9 = 1;
    return v9 & 1;
  }

  v8 = *(a1 + 16);
  v23 = *a1;
  v24 = v8;
  v25 = *(a1 + 32);
  *&v26 = 1;
  *(&v26 + 1) = v4;
  sub_25AF25FC4(a1, v35, &qword_27FA249F0);
  sub_25AF25FC4(a2, v35, &qword_27FA249F0);
  sub_25AF2602C(&v23, &qword_27FA249F0);
  v9 = 0;
  return v9 & 1;
}

__n128 sub_25AFC07A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  *(v1 + 56) = *(v2 + 32);
  *(v1 + 40) = v4;
  *(v1 + 24) = result;
  return result;
}

__n128 sub_25AFC0858()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = (*(v0 + 16) + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__editModeJitter);
  result = *(v0 + 24);
  *v3 = result;
  v3[1].n128_u64[0] = v1;
  v3[1].n128_u8[8] = v2;
  return result;
}

uint64_t GlanceControlID.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GlanceControlID.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t GlanceControlID.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_25B005DF4();
  MEMORY[0x25F85E0A0](v1);
  if (!v2)
  {
    return sub_25B0062B4();
  }

  sub_25B0062B4();

  return sub_25B005994();
}

uint64_t GlanceControlID.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_25B006294();
  sub_25B005DF4();
  MEMORY[0x25F85E0A0](v1);
  sub_25B0062B4();
  if (v2)
  {
    sub_25B005994();
  }

  return sub_25B0062D4();
}

uint64_t sub_25AFC0AF0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_25B006294();
  sub_25B005DF4();
  MEMORY[0x25F85E0A0](v1);
  sub_25B0062B4();
  if (v2)
  {
    sub_25B005994();
  }

  return sub_25B0062D4();
}

uint64_t sub_25AFC0B84()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_25B005DF4();
  MEMORY[0x25F85E0A0](v1);
  if (!v2)
  {
    return sub_25B0062B4();
  }

  sub_25B0062B4();

  return sub_25B005994();
}

uint64_t sub_25AFC0C1C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_25B006294();
  sub_25B005DF4();
  MEMORY[0x25F85E0A0](v1);
  sub_25B0062B4();
  if (v2)
  {
    sub_25B005994();
  }

  return sub_25B0062D4();
}

uint64_t GlanceControlID.id.getter()
{
  v1 = *(v0 + 24);
  sub_25B0062E4();
  sub_25B005DF4();
  if (v1)
  {
    sub_25B005994();
  }

  return sub_25B0062C4();
}

uint64_t sub_25AFC0D14@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  sub_25B0062E4();
  sub_25B005DF4();
  if (v3)
  {
    sub_25B005994();
  }

  result = sub_25B0062C4();
  *a1 = result;
  return result;
}

uint64_t sub_25AFC0D88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x800000025B0160B0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000025B0160B0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x797469746E656469;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 1701869940;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x797469746E656469;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25B006174();
  }

  return v11 & 1;
}

uint64_t sub_25AFC0E74()
{
  sub_25B006294();
  sub_25B005994();

  return sub_25B0062D4();
}

uint64_t sub_25AFC0F14()
{
  sub_25B005994();
}

uint64_t sub_25AFC0FA0()
{
  sub_25B006294();
  sub_25B005994();

  return sub_25B0062D4();
}

uint64_t sub_25AFC103C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AFC1CAC();
  *a1 = result;
  return result;
}

void sub_25AFC106C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701869940;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000025B0160B0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x797469746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25AFC10C8()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x797469746E656469;
  }
}

uint64_t sub_25AFC1120@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AFC1CAC();
  *a1 = result;
  return result;
}

uint64_t sub_25AFC1154(uint64_t a1)
{
  v2 = sub_25AFC1A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AFC1190(uint64_t a1)
{
  v2 = sub_25AFC1A44();

  return MEMORY[0x2821FE720](a1, v2);
}

void GlanceControlID.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA261F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AFC1A44();
  sub_25B006304();
  if (v2)
  {
    goto LABEL_3;
  }

  sub_25AF18BD4(0, &qword_27FA23A78);
  v25 = 0;
  sub_25AF5C7B8(&qword_27FA24DC0);
  sub_25B006094();
  v9 = v26;
  if (!v26)
  {
    sub_25AF57640();
    swift_allocError();
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return;
  }

  v24 = 1;
  v10 = sub_25B006084();
  if (v11)
  {
LABEL_6:
    sub_25AF57640();
    swift_allocError();
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    return;
  }

  v12 = v10;
  v23 = 2;
  v13 = sub_25B006074();
  if (!v14)
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v18 = sub_25B0044C4();
    __swift_project_value_buffer(v18, qword_27FA30C28);
    v19 = sub_25B0044B4();
    v20 = sub_25B005CB4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_25AF0B000, v19, v20, "Can only save/load GlanceControlIDs with a uniqueIdentifier.", v21, 2u);
      MEMORY[0x25F85EC30](v21, -1, -1);
    }

    goto LABEL_6;
  }

  v15 = *(v6 + 8);
  v22 = v13;
  v16 = v14;
  v15(v8, v5);
  *a2 = v9;
  a2[1] = v12;
  a2[2] = v22;
  a2[3] = v16;

  v17 = v9;
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t GlanceControlID.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26208);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  if (v1[3])
  {
    v8 = v1[1];
    v16[0] = v1[2];
    v16[1] = v8;
    v9 = *v1;
    v17 = v2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25AFC1A44();
    sub_25B006324();
    v21 = v9;
    v20 = 0;
    sub_25AF18BD4(0, &qword_27FA23A78);
    sub_25AF5C7B8(&qword_27FA24DE0);
    v10 = v17;
    sub_25B006104();
    if (!v10)
    {
      v19 = 1;
      sub_25B0060F4();
      v18 = 2;
      sub_25B0060E4();
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v12 = sub_25B0044C4();
    __swift_project_value_buffer(v12, qword_27FA30C28);
    v13 = sub_25B0044B4();
    v14 = sub_25B005CB4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25AF0B000, v13, v14, "Can only save/load GlanceControlIDs with a uniqueIdentifier.", v15, 2u);
      MEMORY[0x25F85EC30](v15, -1, -1);
    }

    sub_25AF57640();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t GlanceControlID.description.getter()
{
  v1 = *v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_25B005F24();
  MEMORY[0x25F85D7B0](0xD00000000000001CLL, 0x800000025B01A220);
  v4 = [v1 description];
  v5 = sub_25B005934();
  v7 = v6;

  MEMORY[0x25F85D7B0](v5, v7);

  MEMORY[0x25F85D7B0](0xD000000000000014, 0x800000025B017750);
  if (v2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  if (!v2)
  {
    v2 = 0xE000000000000000;
  }

  MEMORY[0x25F85D7B0](v8, v2);

  MEMORY[0x25F85D7B0](62, 0xE100000000000000);
  return 0;
}

uint64_t _s17NanoControlCenter06GlanceB2IDV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  sub_25AF18BD4(0, &qword_27FA27200);
  v8 = sub_25B005DE4();
  result = 0;
  if ((v8 & 1) != 0 && v2 == v5)
  {
    if (v3)
    {
      if (v6 && (v4 == v7 && v3 == v6 || (sub_25B006174() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_25AFC1A44()
{
  result = qword_27FA26200;
  if (!qword_27FA26200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26200);
  }

  return result;
}

unint64_t sub_25AFC1A9C()
{
  result = qword_27FA26210;
  if (!qword_27FA26210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26210);
  }

  return result;
}

uint64_t sub_25AFC1AFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25AFC1B44(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_25AFC1BA8()
{
  result = qword_27FA26218;
  if (!qword_27FA26218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26218);
  }

  return result;
}

unint64_t sub_25AFC1C00()
{
  result = qword_27FA26220;
  if (!qword_27FA26220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26220);
  }

  return result;
}

unint64_t sub_25AFC1C58()
{
  result = qword_27FA26228[0];
  if (!qword_27FA26228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FA26228);
  }

  return result;
}

uint64_t sub_25AFC1CAC()
{
  v0 = sub_25B006044();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25AFC1CF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25AFC1D9C()
{
  sub_25B004CC4();
  sub_25AFC27A0();
  return sub_25B006354();
}

uint64_t sub_25AFC1DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32[1] = a1;
  v40 = a5;
  v8 = sub_25B004CC4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_25B005754();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v32 - v10;
  v12 = sub_25B004864();
  v38 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v36 = v32 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24520);
  v33 = v12;
  v14 = sub_25B004864();
  v39 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v35 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v37 = v32 - v17;
  result = sub_25AFC2430();
  v32[0] = result;
  if (qword_27FA30B10)
  {
    v19 = swift_beginAccess();
    MEMORY[0x28223BE20](v19);
    v32[-4] = a3;
    v32[-3] = a4;
    v31 = a2;
    sub_25B004C24();
    sub_25AFC1D9C();
    v30 = a4;
    sub_25B005744();
    WitnessTable = swift_getWitnessTable();
    v21 = v36;
    sub_25AF0E480(v9, WitnessTable);
    (*(v34 + 8))(v11, v9);
    v45 = sub_25B0053F4();
    v22 = sub_25AF0F160();
    v43 = WitnessTable;
    v44 = v22;
    v23 = v33;
    v24 = swift_getWitnessTable();
    v25 = v35;
    sub_25B005214();

    (*(v38 + 8))(v21, v23);
    v26 = sub_25AFC273C();
    v41 = v24;
    v42 = v26;
    v27 = swift_getWitnessTable();
    v28 = v37;
    sub_25AFB4FC4(v25, v14, v27);
    v29 = *(v39 + 8);
    v29(v25, v14);
    sub_25AFB4FC4(v28, v14, v27);
    return (v29)(v28, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AFC2274@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
  sub_25AFB4FC4(v9, a2, a3);
  v14 = *(v7 + 8);
  v14(v9, a2);
  sub_25AFB4FC4(v12, a2, a3);
  v14(v12, a2);
}

uint64_t sub_25AFC2430()
{
  v0 = sub_25B0055F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = (v14 - v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24CF0);
  v7 = *(*(sub_25B005604() - 8) + 72);
  result = swift_allocObject();
  *(result + 16) = xmmword_25B00CD00;
  if (!qword_27FA30B10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = result;
  v14[1] = v7;
  swift_beginAccess();

  v10 = sub_25AF31974();

  *v6 = v10;
  v11 = *MEMORY[0x277CDF0F0];
  v12 = *(v1 + 104);
  result = v12(v6, v11, v0);
  if (!qword_27FA30B10)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  result = sub_25B005614();
  if (!qword_27FA30B10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  swift_beginAccess();

  v13 = sub_25AF31974();

  *v3 = v13;
  result = v12(v3, v11, v0);
  if (qword_27FA30B10)
  {
    swift_beginAccess();
    sub_25B005614();
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_25AFC273C()
{
  result = qword_27FA24518;
  if (!qword_27FA24518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24518);
  }

  return result;
}

unint64_t sub_25AFC27A0()
{
  result = qword_27FA24C90;
  if (!qword_27FA24C90)
  {
    sub_25B004CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24C90);
  }

  return result;
}

uint64_t sub_25AFC27F8()
{
  sub_25B005754();
  sub_25B004864();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24520);
  sub_25B004864();
  swift_getWitnessTable();
  sub_25AF0F160();
  swift_getWitnessTable();
  sub_25AFC273C();
  return swift_getWitnessTable();
}

uint64_t NCCButtonsTransition.description.getter(uint64_t a1)
{
  result = 0xD000000000000018;
  if (a1)
  {
    if (a1 == 2)
    {
      return 0xD000000000000022;
    }

    else if (a1 == 1)
    {
      return 0xD00000000000001BLL;
    }

    else
    {
      type metadata accessor for ButtonsTransition(0);
      result = sub_25B0061E4();
      __break(1u);
    }
  }

  return result;
}

uint64_t NPRFPairedOrFirstUnlockReason.description.getter(uint64_t a1)
{
  result = 0xD000000000000025;
  if (a1 && a1 != 2)
  {
    if (a1 == 1)
    {
      return 0xD000000000000020;
    }

    else
    {
      type metadata accessor for PairedOrFirstUnlockReason(0);
      result = sub_25B0061E4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_25AFC2A20()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  v4 = v0[5];
  v3 = v0[6];
  v5 = *(v0 + 64);
  v6 = v0[10];
  v13 = v0[7];
  v14 = v0[9];
  v11 = v0[12];
  v7 = *(v0 + 104);
  if (!(v2 >> 6))
  {
    MEMORY[0x25F85E0A0](0);
    MEMORY[0x25F85E0A0](v1);
    goto LABEL_11;
  }

  v12 = v0[10];
  v8 = v0[1];
  v9 = v0[3];
  if (v2 >> 6 == 1)
  {
    MEMORY[0x25F85E0A0](1);
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v8);
    if (!v9)
    {
      sub_25B0062B4();
      goto LABEL_10;
    }

    sub_25B0062B4();
  }

  else
  {
    MEMORY[0x25F85E0A0](2);
    if (v2)
    {
      MEMORY[0x25F85E0A0](1);
      sub_25B005994();
    }

    else
    {
      MEMORY[0x25F85E0A0](0);
      sub_25B005DF4();
    }
  }

  sub_25B005994();
LABEL_10:
  v6 = v12;
LABEL_11:
  MEMORY[0x25F85E0A0](v4);
  MEMORY[0x25F85E0A0](v3);
  if (v5)
  {
    sub_25B0062B4();
    if (v7 >= 0xFE)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_25B0062B4();
    MEMORY[0x25F85E0A0](v13);
    if (v7 >= 0xFE)
    {
      goto LABEL_15;
    }
  }

  sub_25B0062B4();
  if (!(v7 >> 6))
  {
    MEMORY[0x25F85E0A0](0);
    MEMORY[0x25F85E0A0](v14);
    return sub_25B0062B4();
  }

  if (v7 >> 6 != 1)
  {
    MEMORY[0x25F85E0A0](2);
    if (v7)
    {
      MEMORY[0x25F85E0A0](1);
      sub_25B005994();
    }

    else
    {
      MEMORY[0x25F85E0A0](0);
      sub_25B005DF4();
    }

    goto LABEL_25;
  }

  MEMORY[0x25F85E0A0](1);
  sub_25B005DF4();
  MEMORY[0x25F85E0A0](v6);
  if (v11)
  {
    sub_25B0062B4();
LABEL_25:
    sub_25B005994();
    return sub_25B0062B4();
  }

LABEL_15:
  sub_25B0062B4();
  return sub_25B0062B4();
}

id sub_25AFC2CC8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_25AF181DC(v2, v3, v4, v5, v6);
}

uint64_t sub_25AFC2CE4()
{
  sub_25B006294();
  sub_25AFC2A20();
  return sub_25B0062D4();
}