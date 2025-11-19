uint64_t sub_252545B60@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = sub_252546C44;
  a1[1] = v5;
}

uint64_t sub_252545BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VerticalPickerControlView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252545C40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VerticalPickerControlView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_252543218(v4, a1);
}

uint64_t sub_252545CC0(uint64_t a1)
{
  v3 = *(type metadata accessor for VerticalPickerControlView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_25254545C(a1, v1 + v4, v5);
}

uint64_t objectdestroy_3Tm()
{
  v1 = v0;
  v2 = type metadata accessor for VerticalPickerControlView();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v0 + v4;

  v7 = v0 + v4 + *(v2 + 20);

  v8 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v9 = v7 + *(v8 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v26 = v1;
    v11 = type metadata accessor for IconDescriptor();
    v23 = *(v11 + 20);
    v24 = (v3 + 16) & ~v3;
    v25 = v3;
    v12 = sub_25268F910();
    v13 = *(*(v12 - 8) + 8);
    v13(v9 + v23, v12);
    v14 = v9 + *(v10 + 28);

    v15 = v14 + *(v11 + 20);
    v16 = v12;
    v3 = v25;
    v1 = v26;
    v13(v15, v16);
    v4 = v24;
  }

  v17 = v7 + *(v8 + 40);
  type metadata accessor for AccessoryControl.StatusProvider();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v20 = sub_25268D990();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v17 + v19, 1, v20))
    {
      (*(v21 + 8))(v17 + v19, v20);
    }
  }

  else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 7)
  {
LABEL_10:
  }

  sub_25235E264(*(v6 + *(v2 + 28)), *(v6 + *(v2 + 28) + 8));

  return MEMORY[0x2821FE8E8](v1, ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_25254607C(double a1, double a2)
{
  v5 = *(type metadata accessor for VerticalPickerControlView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_25254582C(v2 + v6, a1, a2, v7);
}

unint64_t sub_252546120()
{
  result = qword_27F4E1C68;
  if (!qword_27F4E1C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1C40);
    sub_2525461AC();
    sub_25249A86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1C68);
  }

  return result;
}

unint64_t sub_2525461AC()
{
  result = qword_27F4E1C70;
  if (!qword_27F4E1C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1C50);
    sub_252546268();
    sub_252546B18(&qword_27F4E18D0, type metadata accessor for ValueThrottleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1C70);
  }

  return result;
}

unint64_t sub_252546268()
{
  result = qword_27F4E1C78;
  if (!qword_27F4E1C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1C48);
    sub_252400FC8(&qword_27F4E1C80, &qword_27F4E1C88);
    sub_252400FC8(&qword_27F4E1C90, &qword_27F4E1C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1C78);
  }

  return result;
}

unint64_t sub_25254634C()
{
  result = qword_27F4E1CA0;
  if (!qword_27F4E1CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1C60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1C50);
    sub_2526914B0();
    sub_2525461AC();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1CA0);
  }

  return result;
}

uint64_t sub_252546460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_22()
{
  v1 = v0;
  v2 = type metadata accessor for VerticalPickerControlView();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v0 + v4;

  v7 = v0 + v4 + *(v2 + 20);

  v8 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v9 = v7 + *(v8 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v26 = v1;
    v11 = type metadata accessor for IconDescriptor();
    v23 = *(v11 + 20);
    v24 = (v3 + 16) & ~v3;
    v25 = v3;
    v12 = sub_25268F910();
    v13 = *(*(v12 - 8) + 8);
    v13(v9 + v23, v12);
    v14 = v9 + *(v10 + 28);

    v15 = v14 + *(v11 + 20);
    v16 = v12;
    v3 = v25;
    v1 = v26;
    v13(v15, v16);
    v4 = v24;
  }

  v17 = v7 + *(v8 + 40);
  type metadata accessor for AccessoryControl.StatusProvider();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v20 = sub_25268D990();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v17 + v19, 1, v20))
    {
      (*(v21 + 8))(v17 + v19, v20);
    }
  }

  else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 7)
  {
LABEL_10:
  }

  sub_25235E264(*(v6 + *(v2 + 28)), *(v6 + *(v2 + 28) + 8));

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_2525467DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for VerticalPickerControlView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_25254461C(a1, v6, a2);
}

unint64_t sub_25254685C()
{
  result = qword_27F4E1D28;
  if (!qword_27F4E1D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1D20);
    sub_2525468E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1D28);
  }

  return result;
}

unint64_t sub_2525468E8()
{
  result = qword_27F4E1D30;
  if (!qword_27F4E1D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1D30);
  }

  return result;
}

unint64_t sub_25254696C()
{
  result = qword_27F4E1D38;
  if (!qword_27F4E1D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1D10);
    sub_252546A24();
    sub_252400FC8(&qword_27F4DD2A8, &qword_27F4DD2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1D38);
  }

  return result;
}

unint64_t sub_252546A24()
{
  result = qword_27F4E1D40;
  if (!qword_27F4E1D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1D20);
    sub_25254685C();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DC108, &qword_27F4DC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1D40);
  }

  return result;
}

uint64_t sub_252546B18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252546B70()
{
  result = qword_27F4E1D60;
  if (!qword_27F4E1D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1D68);
    sub_252400FC8(&qword_27F4E1D70, &qword_27F4E1D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1D60);
  }

  return result;
}

uint64_t type metadata accessor for WheelPickerControlView()
{
  result = qword_27F4E1DA8;
  if (!qword_27F4E1DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_252546CE0(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for WheelPickerControlView() + 20));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 96) = *v5;
  *(v4 + 104) = v7;
  v8 = v5[2];
  *(v4 + 112) = v8;
  LOBYTE(v5) = *(v5 + 24);
  *(v4 + 25) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v8;
  *(v4 + 24) = v5;

  *(v4 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1758);
  MEMORY[0x2530A4210]();
  return sub_252532CD4;
}

uint64_t sub_252546DB0@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1DB8);
  MEMORY[0x28223BE20](v30);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1DC0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v26 - v5);
  v7 = type metadata accessor for WheelPickerControlView();
  v8 = v7 - 8;
  v29 = *(v7 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2526910F0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1 + *(v8 + 32);
  v38 = *(v16 + 64);
  v17 = *(v16 + 48);
  v37[2] = *(v16 + 32);
  v37[3] = v17;
  v18 = *(v16 + 16);
  v37[0] = *v16;
  v37[1] = v18;
  if ((v38 & 0x100) != 0)
  {
    v19 = *(v16 + 48);
    v34 = *(v16 + 32);
    v35 = v19;
    v36 = *(v16 + 64);
    v20 = *(v16 + 16);
    v32 = *v16;
    v33 = v20;
    if ((BYTE1(v19) & 1) == 0)
    {
LABEL_3:
      sub_252548368(v1, v10);
      v21 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v22 = swift_allocObject();
      sub_2525483CC(v10, v22 + v21);
      *v6 = sub_252548430;
      v6[1] = v22;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1DC8);
      sub_252400FC8(&qword_27F4E1DD0, &qword_27F4E1DC8);
      sub_252548108();
      return sub_252691470();
    }
  }

  else
  {
    v27 = v13;

    sub_252692F00();
    v24 = sub_2526919C0();
    v28 = v3;
    v25 = v24;
    v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_252690570();

    v3 = v28;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v37, &qword_27F4DC120);
    (*(v12 + 8))(v15, v27);
    if ((BYTE1(v35) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_25254721C(v3);
  sub_252326478(v3, v6);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1DC8);
  sub_252400FC8(&qword_27F4E1DD0, &qword_27F4E1DC8);
  sub_252548108();
  sub_252691470();
  return sub_252372288(v3, &qword_27F4E1DB8);
}

uint64_t sub_25254721C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_252690D60();
  v4 = *(v3 - 8);
  v60 = v3;
  v61 = v4;
  MEMORY[0x28223BE20](v3);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1E00);
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1E10);
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1DF8);
  MEMORY[0x28223BE20](v59);
  v65 = &v54 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1DE8);
  MEMORY[0x28223BE20](v64);
  v66 = &v54 - v11;
  v55 = type metadata accessor for WheelPickerControlView();
  v12 = *(v55 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v55);
  sub_252548368(v1, &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_252692E00();
  v14 = sub_252692DF0();
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_2525483CC(&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_252548368(v1, &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_252692DF0();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = v19 + v15;
  v21 = v9;
  sub_2525483CC(&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  sub_2526926E0();
  v68 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1E18);
  sub_25254889C();
  v22 = v54;
  sub_2526925D0();
  v23 = v56;
  sub_252690D50();
  sub_252400FC8(&qword_27F4E1E08, &qword_27F4E1E00);
  v24 = v57;
  v25 = v60;
  sub_252691E00();
  (*(v61 + 8))(v23, v25);
  (*(v58 + 8))(v22, v24);
  if (*(v2 + 8) == 1)
  {
    v26 = v55;
    v27 = v2 + *(v55 + 20);
    v28 = *v27;
    v29 = *(v27 + 16);
    LOBYTE(v27) = *(v27 + 24);
    v69 = v28;
    v70 = v29;
    v71 = v27;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1758);
    MEMORY[0x2530A4210](&v72, v30);
    v31 = v73 ^ 1;
    v32 = v26;
  }

  else
  {
    v31 = 0;
    v32 = v55;
  }

  v33 = v65;
  (*(v62 + 32))(v65, v21, v63);
  *(v33 + *(v59 + 36)) = v31 & 1;
  v34 = v2 + *(v32 + 20);
  v35 = *v34;
  v36 = *(v34 + 16);
  LOBYTE(v34) = *(v34 + 24);
  v69 = v35;
  v70 = v36;
  v71 = v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1758);
  MEMORY[0x2530A4210](&v72, v37);
  v38 = v73;
  KeyPath = swift_getKeyPath();
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  v41 = v66;
  sub_2523714D4(v33, v66, &qword_27F4E1DF8);
  v42 = (v41 + *(v64 + 36));
  *v42 = KeyPath;
  v42[1] = sub_25247D5D8;
  v42[2] = v40;
  LOBYTE(KeyPath) = sub_252691A80();
  sub_252690760();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v51 = v67;
  sub_2523714D4(v41, v67, &qword_27F4E1DE8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1DB8);
  v53 = v51 + *(result + 36);
  *v53 = KeyPath;
  *(v53 + 8) = v44;
  *(v53 + 16) = v46;
  *(v53 + 24) = v48;
  *(v53 + 32) = v50;
  *(v53 + 40) = 0;
  return result;
}

void *sub_252547928@<X0>(void *a1@<X8>)
{
  type metadata accessor for WheelPickerControlView();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1758);
  result = MEMORY[0x2530A4210](&v5, v2);
  if (v6)
  {
    v4 = 0;
  }

  else
  {
    v4 = v5;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2525479B4(uint64_t *a1)
{
  v1 = *a1;
  v3 = sub_252546CE0(v5);
  if (*(v2 + 8) != 1)
  {
    *v2 = v1;
  }

  return (v3)(v5, 0);
}

uint64_t sub_252547A1C(void *a1)
{
  v2 = type metadata accessor for WheelPickerControlView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = *a1;
  sub_252548368(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2525483CC(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1E30);
  sub_252400FC8(&qword_27F4E1420, &qword_27F4E1410);
  sub_252548920();
  sub_252530998();
  return sub_2526927B0();
}

uint64_t sub_252547BC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v46 = a3;
  v42 = sub_2526910F0();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E17C8);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1E38);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1E40);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = &v39 - v15;
  v18 = *a1;
  v17 = a1[1];
  v19 = a1[2];
  *&v52[0] = v17;
  *(&v52[0] + 1) = v19;
  sub_252404480();

  *v10 = sub_252691D50();
  *(v10 + 1) = v20;
  v10[16] = v21 & 1;
  *(v10 + 3) = v22;
  *(v10 + 4) = v18;
  v10[40] = 1;
  v23 = sub_252691B00();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v24 = sub_252691B50();
  sub_252372288(v7, &qword_27F4DBD40);
  KeyPath = swift_getKeyPath();
  v26 = &v10[*(v8 + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  sub_252691B40();
  v27 = sub_252535184();
  sub_252691DA0();
  sub_252372288(v10, &qword_27F4E17C8);
  *&v52[0] = v8;
  *(&v52[0] + 1) = v27;
  swift_getOpaqueTypeConformance2();
  sub_252692190();
  (*(v12 + 8))(v14, v11);
  v28 = (v43 + *(type metadata accessor for WheelPickerControlView() + 24));
  v53 = *(v28 + 32);
  v29 = v28[3];
  v52[2] = v28[2];
  v52[3] = v29;
  v30 = v28[1];
  v52[0] = *v28;
  v52[1] = v30;
  if ((v53 & 0x100) != 0)
  {
    v31 = v28[3];
    v49 = v28[2];
    v50 = v31;
    v51 = *(v28 + 64);
    v32 = v28[1];
    v47 = *v28;
    v48 = v32;
  }

  else
  {

    sub_252692F00();
    v33 = sub_2526919C0();
    sub_252690570();

    v34 = v40;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v52, &qword_27F4DC120);
    (*(v41 + 8))(v34, v42);
  }

  if (v47 == 1)
  {
    v35 = sub_252692360();
  }

  else
  {
    v35 = sub_252692330();
  }

  v36 = v35;
  v37 = v46;
  (*(v44 + 32))(v46, v16, v45);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1E30);
  *(v37 + *(result + 36)) = v36;
  return result;
}

unint64_t sub_252548108()
{
  result = qword_27F4E1DD8;
  if (!qword_27F4E1DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1DB8);
    sub_252548194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1DD8);
  }

  return result;
}

unint64_t sub_252548194()
{
  result = qword_27F4E1DE0;
  if (!qword_27F4E1DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1DE8);
    sub_25254824C();
    sub_252400FC8(&qword_27F4DF0F8, &qword_27F4DF100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1DE0);
  }

  return result;
}

unint64_t sub_25254824C()
{
  result = qword_27F4E1DF0;
  if (!qword_27F4E1DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1E00);
    sub_252690D60();
    sub_252400FC8(&qword_27F4E1E08, &qword_27F4E1E00);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1DF0);
  }

  return result;
}

uint64_t sub_252548368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WheelPickerControlView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2525483CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WheelPickerControlView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_252548494@<X0>(void *a1@<X8>)
{
  type metadata accessor for WheelPickerControlView();

  return sub_252547928(a1);
}

uint64_t objectdestroy_4Tm()
{
  v1 = type metadata accessor for WheelPickerControlView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v26 = v0;
  v5 = v0 + v3;

  v6 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v7 = v0 + v3 + *(v6 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v9 = type metadata accessor for IconDescriptor();
    v24 = v1;
    v10 = v4;
    v11 = *(v9 + 20);
    v25 = v2;
    v12 = sub_25268F910();
    v13 = *(*(v12 - 8) + 8);
    v14 = v7 + v11;
    v4 = v10;
    v1 = v24;
    v13(v14, v12);
    v15 = v7 + *(v8 + 28);

    v16 = v12;
    v2 = v25;
    v13(v15 + *(v9 + 20), v16);
  }

  v17 = v5 + *(v6 + 40);
  type metadata accessor for AccessoryControl.StatusProvider();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v21 = sub_25268D990();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v17 + v20, 1, v21))
    {
      (*(v22 + 8))(v17 + v20, v21);
    }
  }

  else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 7)
  {
LABEL_10:
  }

  v19 = v5 + *(v1 + 24);
  sub_252457A80(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32), *(v19 + 40), *(v19 + 48), *(v19 + 56), *(v19 + 64), *(v19 + 65));

  return MEMORY[0x2821FE8E8](v26, v3 + v4, v2 | 7);
}

uint64_t sub_252548820(uint64_t *a1)
{
  type metadata accessor for WheelPickerControlView();

  return sub_2525479B4(a1);
}

unint64_t sub_25254889C()
{
  result = qword_27F4E1E20;
  if (!qword_27F4E1E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1E18);
    sub_252548920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1E20);
  }

  return result;
}

unint64_t sub_252548920()
{
  result = qword_27F4E1E28;
  if (!qword_27F4E1E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1E30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1E38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E17C8);
    sub_252535184();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DBEE8, &qword_27F4DBEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1E28);
  }

  return result;
}

uint64_t objectdestroyTm_23()
{
  v1 = v0;
  v2 = type metadata accessor for WheelPickerControlView();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v1 + v4;

  v7 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v8 = v1 + v4 + *(v7 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {

    v10 = type metadata accessor for IconDescriptor();
    v25 = v2;
    v11 = *(v10 + 20);
    v27 = v3;
    v12 = v1;
    v13 = sub_25268F910();
    v26 = v5;
    v14 = *(*(v13 - 8) + 8);
    v14(v8 + v11, v13);
    v15 = v8 + *(v9 + 28);

    v16 = v15 + *(v10 + 20);
    v2 = v25;
    v17 = v13;
    v1 = v12;
    v3 = v27;
    v14(v16, v17);
    v5 = v26;
  }

  v18 = v6 + *(v7 + 40);
  type metadata accessor for AccessoryControl.StatusProvider();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v22 = sub_25268D990();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v18 + v21, 1, v22))
    {
      (*(v23 + 8))(v18 + v21, v22);
    }
  }

  else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 7)
  {
LABEL_10:
  }

  v20 = v6 + *(v2 + 24);
  sub_252457A80(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24), *(v20 + 32), *(v20 + 40), *(v20 + 48), *(v20 + 56), *(v20 + 64), *(v20 + 65));

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_252548D70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WheelPickerControlView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252547BC8(a1, v6, a2);
}

unint64_t sub_252548DF0()
{
  result = qword_27F4E1E48;
  if (!qword_27F4E1E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1E50);
    sub_252400FC8(&qword_27F4E1DD0, &qword_27F4E1DC8);
    sub_252548108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1E48);
  }

  return result;
}

uint64_t type metadata accessor for ModuleLayoutView()
{
  result = qword_27F4E1E58;
  if (!qword_27F4E1E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252548F1C()
{
  result = type metadata accessor for AccessoryControlModule.Layout(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_252548FB4@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v54 = _s10ThermostatVMa(0);
  MEMORY[0x28223BE20](v54);
  v2 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModuleLayoutView();
  v6 = v5 - 8;
  v43 = *(v5 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v47 = type metadata accessor for UnsupportedValueView();
  MEMORY[0x28223BE20](v47);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1E68);
  MEMORY[0x28223BE20](v50);
  v52 = &v42 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1E70);
  MEMORY[0x28223BE20](v45);
  v12 = &v42 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1E78);
  MEMORY[0x28223BE20](v51);
  v48 = &v42 - v13;
  v46 = _s3RVCVMa(0);
  MEMORY[0x28223BE20](v46);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccessoryControlModule.Layout.RVC(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AccessoryControlModule.Layout(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v6 + 28);
  v23 = v49;
  sub_252549CA0(v49 + v22, v21, type metadata accessor for AccessoryControlModule.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_252549D08(v21, type metadata accessor for AccessoryControlModule.Layout);
      sub_252549CA0(v23, &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ModuleLayoutView);
      v25 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v26 = swift_allocObject();
      sub_252549C38(&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for ModuleLayoutView);
      if (qword_27F4DABD0 != -1)
      {
        swift_once();
      }

      v27 = sub_2526905A0();
      v28 = __swift_project_value_buffer(v27, qword_27F4E4B18);
      v29 = v47;
      (*(*(v27 - 8) + 16))(v9 + *(v47 + 28), v28, v27);
      v30 = v9 + *(v29 + 32);
      *v30 = swift_getKeyPath();
      v30[8] = 0;
      *v9 = sub_252549B00;
      v9[1] = v26;
      v9[2] = 0xD00000000000006CLL;
      v9[3] = 0x80000002526B16B0;
      v9[4] = 21;
      sub_252549CA0(v9, v12, type metadata accessor for UnsupportedValueView);
      swift_storeEnumTagMultiPayload();
      sub_252549AB8(&qword_27F4E1E88, _s3RVCVMa);
      sub_252549AB8(&qword_27F4E1E90, type metadata accessor for UnsupportedValueView);
      v31 = v48;
      sub_252691470();
      sub_252549B60(v31, v52);
      swift_storeEnumTagMultiPayload();
      sub_2525499CC();
      sub_252549AB8(&qword_27F4E1E98, _s10ThermostatVMa);
      sub_252691470();
      sub_252549BD0(v31);
      v32 = type metadata accessor for UnsupportedValueView;
      v33 = v9;
    }

    else
    {
      v36 = v44;
      sub_252549C38(v21, v44, type metadata accessor for AccessoryControlModule.Layout.Thermostat);
      sub_252549CA0(v36, v2, type metadata accessor for AccessoryControlModule.Layout.Thermostat);
      v37 = *v23;
      KeyPath = swift_getKeyPath();
      v55 = 0;
      v39 = v54;
      *&v2[*(v54 + 20)] = v37;
      v40 = &v2[*(v39 + 24)];
      *v40 = KeyPath;
      v40[65] = 0;
      sub_252549CA0(v2, v52, _s10ThermostatVMa);
      swift_storeEnumTagMultiPayload();
      sub_2525499CC();
      sub_252549AB8(&qword_27F4E1E98, _s10ThermostatVMa);
      sub_252691470();
      sub_252549D08(v2, _s10ThermostatVMa);
      v32 = type metadata accessor for AccessoryControlModule.Layout.Thermostat;
      v33 = v36;
    }
  }

  else
  {
    sub_252549C38(v21, v18, type metadata accessor for AccessoryControlModule.Layout.RVC);
    v34 = *v23;
    sub_252549CA0(v18, v15, type metadata accessor for AccessoryControlModule.Layout.RVC);
    *&v15[*(v46 + 20)] = v34;
    sub_252549CA0(v15, v12, _s3RVCVMa);
    swift_storeEnumTagMultiPayload();
    sub_252549AB8(&qword_27F4E1E88, _s3RVCVMa);
    sub_252549AB8(&qword_27F4E1E90, type metadata accessor for UnsupportedValueView);
    v35 = v48;
    sub_252691470();
    sub_252549B60(v35, v52);
    swift_storeEnumTagMultiPayload();
    sub_2525499CC();
    sub_252549AB8(&qword_27F4E1E98, _s10ThermostatVMa);
    sub_252691470();
    sub_252549BD0(v35);
    sub_252549D08(v15, _s3RVCVMa);
    v32 = type metadata accessor for AccessoryControlModule.Layout.RVC;
    v33 = v18;
  }

  return sub_252549D08(v33, v32);
}

uint64_t sub_252549918(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControlModule.Layout(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModuleLayoutView();
  sub_252549CA0(a1 + *(v5 + 20), v4, type metadata accessor for AccessoryControlModule.Layout);
  return sub_252692C00();
}

unint64_t sub_2525499CC()
{
  result = qword_27F4E1E80;
  if (!qword_27F4E1E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1E78);
    sub_252549AB8(&qword_27F4E1E88, _s3RVCVMa);
    sub_252549AB8(&qword_27F4E1E90, type metadata accessor for UnsupportedValueView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1E80);
  }

  return result;
}

uint64_t sub_252549AB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252549B00()
{
  v1 = *(type metadata accessor for ModuleLayoutView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_252549918(v2);
}

uint64_t sub_252549B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1E78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252549BD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1E78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252549C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252549CA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252549D08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_252549D68()
{
  result = qword_27F4E1EA0;
  if (!qword_27F4E1EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1EA8);
    sub_2525499CC();
    sub_252549AB8(&qword_27F4E1E98, _s10ThermostatVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1EA0);
  }

  return result;
}

uint64_t sub_252549F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, _BYTE *, uint64_t, __n128), uint64_t *a9)
{
  v15 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v23[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *a4;
  v24 = a1;
  v20 = a8(a7, v23, v19, v16);
  static AccessoryControl.WriteSpecification.merge(writeSpecifications:)(v20, v18);

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a9);
  sub_2523FEEC8(a4 + *(v21 + 36), v18, a5, a6);
  return sub_25254DA98(v18, type metadata accessor for AccessoryControl.WriteSpecification);
}

uint64_t sub_25254A06C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1EC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1EC8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1ED0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v25 - v12;
  *v5 = sub_2526912E0();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1ED8);
  sub_25254A31C(v1, &v5[*(v14 + 44)]);
  sub_252692920();
  sub_252690D70();
  sub_2523714D4(v5, v9, &qword_27F4E1EC0);
  v15 = &v9[*(v7 + 44)];
  v16 = v25[5];
  *(v15 + 4) = v25[4];
  *(v15 + 5) = v16;
  *(v15 + 6) = v25[6];
  v17 = v25[1];
  *v15 = v25[0];
  *(v15 + 1) = v17;
  v18 = v25[3];
  *(v15 + 2) = v25[2];
  *(v15 + 3) = v18;
  v19 = sub_252692340();
  KeyPath = swift_getKeyPath();
  sub_2523714D4(v9, v13, &qword_27F4E1EC8);
  v21 = &v13[*(v11 + 44)];
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = v19;
  v21[24] = 0;
  *(v21 + 4) = KeyPath;
  v21[40] = 0;
  sub_252525D94();
  LOBYTE(v19) = sub_252692F20();
  v22 = swift_getKeyPath();
  sub_2523714D4(v13, a1, &qword_27F4E1ED0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1EE0);
  v24 = a1 + *(result + 36);
  *v24 = v22;
  *(v24 + 8) = v19 & 1;
  return result;
}

uint64_t sub_25254A31C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v97 = a2;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1EE8);
  MEMORY[0x28223BE20](v105);
  v136 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v127 = &v96 - v5;
  v6 = _s3RVCV20CleanModeControlViewVMa(0);
  v7 = *(v6 - 8);
  v112 = v6;
  v113 = v7;
  MEMORY[0x28223BE20](v6);
  *&v103 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  MEMORY[0x28223BE20](v9 - 8);
  v106 = &v96 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1EF0);
  MEMORY[0x28223BE20](v11 - 8);
  v107 = &v96 - v12;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1EF8);
  MEMORY[0x28223BE20](v109);
  v111 = &v96 - v13;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1F00);
  MEMORY[0x28223BE20](v110);
  v125 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v108 = &v96 - v16;
  MEMORY[0x28223BE20](v17);
  v121 = &v96 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1F08);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v135 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v96 - v23;
  sub_252692920();
  sub_2526909C0();
  v130 = v258;
  v131 = v260;
  v133 = v263;
  v134 = v262;
  v301 = 1;
  v300 = v259;
  v299 = v261;
  KeyPath = swift_getKeyPath();
  v126 = v301;
  v128 = v300;
  v129 = v299;
  LOBYTE(v198) = 0;
  v25 = a1;
  v26 = *(a1 + *(_s3RVCVMa(0) + 20));
  sub_25254DA30(v25, v24, type metadata accessor for AccessoryControl);
  v27 = *(_s3RVCV18PrimaryControlViewVMa(0) + 20);
  v102 = v26;
  *&v24[v27] = v26;
  sub_252692920();
  sub_2526909C0();
  v28 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1F10) + 36)];
  v29 = v265;
  *v28 = v264;
  *(v28 + 1) = v29;
  *(v28 + 2) = v266;
  v30 = sub_2526922A0();
  v31 = swift_getKeyPath();
  v32 = *(v20 + 44);
  v116 = v24;
  v33 = &v24[v32];
  *v33 = 0;
  *(v33 + 1) = 0;
  *(v33 + 2) = v30;
  v34 = v106;
  v33[24] = 1;
  *(v33 + 4) = v31;
  v33[40] = 0;
  sub_252692920();
  sub_2526909C0();
  v119 = v267;
  v120 = v269;
  v122 = v272;
  v123 = v271;
  v308 = 1;
  v307 = v268;
  v306 = v270;
  v124 = swift_getKeyPath();
  v115 = v308;
  v117 = v307;
  v118 = v306;
  LOBYTE(v198) = 0;
  sub_252692920();
  sub_252690D70();
  *&v255[55] = v276;
  *&v255[71] = v277;
  *&v255[87] = v278;
  *&v255[103] = v279;
  *&v255[7] = v273;
  *&v255[23] = v274;
  v256 = 1;
  *&v255[39] = v275;
  v114 = swift_getKeyPath();
  v257 = 0;
  v35 = *(type metadata accessor for AccessoryControlModule.Layout.RVC(0) + 20);
  *&v104 = v25;
  sub_25237153C(v25 + v35, v34, &qword_27F4DB120);
  v36 = type metadata accessor for AccessoryControl(0);
  if ((*(*(v36 - 8) + 48))(v34, 1, v36) == 1)
  {
    sub_252372288(v34, &qword_27F4DB120);
    v37 = 1;
    v38 = v112;
    v39 = v107;
  }

  else
  {
    v40 = v103;
    sub_25254D9A8(v34, v103, type metadata accessor for AccessoryControl);
    v41 = v112;
    *(v40 + *(v112 + 20)) = v102;
    v42 = v40;
    v39 = v107;
    sub_25254D9A8(v42, v107, _s3RVCV20CleanModeControlViewVMa);
    v37 = 0;
    v38 = v41;
  }

  (*(v113 + 56))(v39, v37, 1, v38);
  sub_252692920();
  sub_2526909C0();
  v43 = v111;
  sub_2523714D4(v39, v111, &qword_27F4E1EF0);
  v44 = (v43 + *(v109 + 36));
  v45 = v281;
  *v44 = v280;
  v44[1] = v45;
  v44[2] = v282;
  v46 = sub_2526922B0();
  v47 = swift_getKeyPath();
  v48 = v43;
  v49 = v108;
  sub_2523714D4(v48, v108, &qword_27F4E1EF8);
  v50 = v49 + *(v110 + 36);
  *v50 = 0;
  *(v50 + 8) = 0;
  *(v50 + 16) = v46;
  *(v50 + 24) = 1;
  *(v50 + 32) = v47;
  *(v50 + 40) = 0;
  v51 = v49;
  v52 = v121;
  sub_2523714D4(v51, v121, &qword_27F4E1F00);
  sub_252692920();
  sub_2526909C0();
  v109 = v283;
  v110 = v285;
  v112 = v288;
  v113 = v287;
  v251 = 1;
  v250 = v284;
  v249 = v286;
  v111 = swift_getKeyPath();
  LODWORD(v106) = v251;
  LODWORD(v107) = v250;
  LODWORD(v108) = v249;
  LOBYTE(v198) = 0;
  v102 = swift_getKeyPath();
  v253 = 1;
  v252 = 0;
  v53 = v127;
  sub_25254B5A8(v104, v127);
  sub_252692920();
  sub_2526909C0();
  v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1F18) + 36));
  v55 = v290;
  *v54 = v289;
  v54[1] = v55;
  v54[2] = v291;
  v56 = sub_252692320();
  v57 = swift_getKeyPath();
  v58 = v53 + *(v105 + 36);
  *v58 = 0;
  *(v58 + 8) = 0;
  *(v58 + 16) = v56;
  *(v58 + 24) = 1;
  *(v58 + 32) = v57;
  *(v58 + 40) = 0;
  sub_252692920();
  sub_252690D70();
  *&v246[55] = v295;
  *&v246[71] = v296;
  *&v246[87] = v297;
  *&v246[103] = v298;
  *&v246[7] = v292;
  *&v246[23] = v293;
  v247 = 0;
  *&v246[39] = v294;
  v105 = swift_getKeyPath();
  v248 = 0;
  v59 = v135;
  sub_25237153C(v116, v135, &qword_27F4E1F08);
  v60 = v52;
  v61 = v125;
  sub_25237153C(v60, v125, &qword_27F4E1F00);
  LODWORD(v98) = v253;
  v99 = v252;
  v138 = v252;
  sub_25237153C(v53, v136, &qword_27F4E1EE8);
  *&v143 = 0;
  BYTE8(v143) = v126;
  *(&v143 + 9) = *v305;
  HIDWORD(v143) = *&v305[3];
  *&v144 = v130;
  BYTE8(v144) = v128;
  *(&v144 + 9) = *v304;
  HIDWORD(v144) = *&v304[3];
  *&v145 = v131;
  BYTE8(v145) = v129;
  *(&v145 + 9) = *v303;
  HIDWORD(v145) = *&v303[3];
  *&v146 = v134;
  *(&v146 + 1) = v133;
  v104 = xmmword_2526A6390;
  v147 = xmmword_2526A6390;
  *&v148[0] = 0;
  BYTE8(v148[0]) = 1;
  HIDWORD(v148[0]) = *&v302[3];
  *(v148 + 9) = *v302;
  *&v148[1] = KeyPath;
  BYTE8(v148[1]) = 0;
  v62 = v144;
  v63 = v97;
  *v97 = v143;
  v63[1] = v62;
  v64 = v145;
  v65 = v146;
  *(v63 + 89) = *(v148 + 9);
  v66 = v148[0];
  v63[4] = v147;
  v63[5] = v66;
  v63[2] = v64;
  v63[3] = v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1F20);
  sub_25237153C(v59, v63 + v67[12], &qword_27F4E1F08);
  v68 = (v63 + v67[16]);
  *&v149 = 0;
  BYTE8(v149) = v115;
  *(&v149 + 9) = v312[0];
  HIDWORD(v149) = *(v312 + 3);
  *&v150 = v119;
  BYTE8(v150) = v117;
  *(&v150 + 9) = *v311;
  HIDWORD(v150) = *&v311[3];
  *&v151 = v120;
  BYTE8(v151) = v118;
  *(&v151 + 9) = *v310;
  HIDWORD(v151) = *&v310[3];
  *&v152 = v123;
  *(&v152 + 1) = v122;
  v103 = xmmword_2526A63A0;
  v153 = xmmword_2526A63A0;
  *&v154[0] = 0;
  BYTE8(v154[0]) = 1;
  HIDWORD(v154[0]) = *&v309[3];
  *(v154 + 9) = *v309;
  *&v154[1] = v124;
  BYTE8(v154[1]) = 0;
  v69 = v150;
  *v68 = v149;
  v68[1] = v69;
  v70 = v151;
  v71 = v152;
  v72 = v153;
  v73 = v154[0];
  *(v68 + 89) = *(v154 + 9);
  v68[4] = v72;
  v68[5] = v73;
  v68[2] = v70;
  v68[3] = v71;
  v74 = (v63 + v67[20]);
  *&v155[0] = 0;
  BYTE8(v155[0]) = 1;
  *(&v155[4] + 9) = *&v255[64];
  *(&v155[5] + 9) = *&v255[80];
  *(&v155[6] + 9) = *&v255[96];
  *(&v155[7] + 1) = *&v255[111];
  *(&v155[3] + 9) = *&v255[48];
  *(&v155[2] + 9) = *&v255[32];
  *(&v155[1] + 9) = *&v255[16];
  *(v155 + 9) = *v255;
  v101 = xmmword_2526A63B0;
  v156 = xmmword_2526A63B0;
  *&v157[0] = 0;
  BYTE8(v157[0]) = 1;
  HIDWORD(v157[0]) = *&v254[3];
  *(v157 + 9) = *v254;
  *&v157[1] = v114;
  BYTE8(v157[1]) = 0;
  v75 = v155[1];
  *v74 = v155[0];
  v74[1] = v75;
  v76 = v155[2];
  v77 = v155[3];
  v78 = v155[5];
  v74[4] = v155[4];
  v74[5] = v78;
  v74[2] = v76;
  v74[3] = v77;
  v79 = v155[6];
  v80 = v155[7];
  *(v74 + 153) = *(v157 + 9);
  v81 = v157[0];
  v74[8] = v156;
  v74[9] = v81;
  v74[6] = v79;
  v74[7] = v80;
  sub_25237153C(v61, v63 + v67[24], &qword_27F4E1F00);
  v82 = (v63 + v67[28]);
  *&v158 = 0;
  BYTE8(v158) = v106;
  *&v159 = v109;
  BYTE8(v159) = v107;
  *&v160 = v110;
  BYTE8(v160) = v108;
  *&v161 = v113;
  *(&v161 + 1) = v112;
  v100 = xmmword_2526A63C0;
  v162 = xmmword_2526A63C0;
  *&v163[0] = 0;
  BYTE8(v163[0]) = 1;
  *&v163[1] = v111;
  BYTE8(v163[1]) = 0;
  v83 = v161;
  v84 = v163[0];
  v82[4] = xmmword_2526A63C0;
  v82[5] = v84;
  *(v82 + 89) = *(v163 + 9);
  v85 = v159;
  *v82 = v158;
  v82[1] = v85;
  v82[2] = v160;
  v82[3] = v83;
  v86 = v63 + v67[32];
  *v86 = 0;
  v86[8] = v98;
  *(v86 + 1) = xmmword_2526A63D0;
  *(v86 + 4) = 0;
  v86[40] = 1;
  v87 = v102;
  *(v86 + 6) = v102;
  v88 = v99;
  v86[56] = v99;
  sub_25237153C(v136, v63 + v67[36], &qword_27F4E1EE8);
  v89 = (v63 + v67[40]);
  *&v164[0] = 0x4034000000000000;
  BYTE8(v164[0]) = 0;
  *(&v164[4] + 9) = *&v246[64];
  *(&v164[5] + 9) = *&v246[80];
  *(&v164[6] + 9) = *&v246[96];
  *(&v164[7] + 1) = *&v246[111];
  *(v164 + 9) = *v246;
  *(&v164[1] + 9) = *&v246[16];
  *(&v164[2] + 9) = *&v246[32];
  *(&v164[3] + 9) = *&v246[48];
  v98 = xmmword_2526A63E0;
  v165 = xmmword_2526A63E0;
  *&v166[0] = 0;
  BYTE8(v166[0]) = 1;
  *&v166[1] = v105;
  BYTE8(v166[1]) = 0;
  v90 = v164[5];
  v89[4] = v164[4];
  v89[5] = v90;
  v91 = v164[7];
  v89[6] = v164[6];
  v89[7] = v91;
  v92 = v164[1];
  *v89 = v164[0];
  v89[1] = v92;
  v93 = v164[3];
  v89[2] = v164[2];
  v89[3] = v93;
  v94 = v166[0];
  v89[8] = v165;
  v89[9] = v94;
  *(v89 + 153) = *(v166 + 9);
  sub_25237153C(&v143, &v198, &qword_27F4E1F28);
  sub_25237153C(&v149, &v198, &qword_27F4E1F28);
  sub_25237153C(v155, &v198, &qword_27F4E1F30);
  sub_25237153C(&v158, &v198, &qword_27F4E1F28);

  sub_252527170(v87, v88 & 1);
  sub_25237153C(v164, &v198, &qword_27F4E1F30);
  sub_252372288(v127, &qword_27F4E1EE8);
  sub_252372288(v121, &qword_27F4E1F00);
  sub_252372288(v116, &qword_27F4E1F08);
  v173 = *&v246[64];
  v174 = *&v246[80];
  *v175 = *&v246[96];
  v169 = *v246;
  v170 = *&v246[16];
  v171 = *&v246[32];
  v167 = 0x4034000000000000;
  v168 = 0;
  *&v175[15] = *&v246[111];
  v172 = *&v246[48];
  *&v175[23] = v98;
  v176 = 0;
  v177 = 1;
  *v178 = *v137;
  *&v178[3] = *&v137[3];
  v179 = v105;
  v180 = 0;
  sub_252372288(&v167, &qword_27F4E1F30);
  sub_252372288(v136, &qword_27F4E1EE8);
  LOBYTE(v53) = v138;

  sub_25235E264(v87, v53);
  v181 = 0;
  v182 = v106;
  *v183 = *v142;
  *&v183[3] = *&v142[3];
  v184 = v109;
  v185 = v107;
  *v186 = *v141;
  *&v186[3] = *&v141[3];
  v187 = v110;
  v188 = v108;
  *v189 = *v140;
  *&v189[3] = *&v140[3];
  v190 = v113;
  v191 = v112;
  v192 = v100;
  v193 = 0;
  v194 = 1;
  *&v195[3] = *&v139[3];
  *v195 = *v139;
  v196 = v111;
  v197 = 0;
  sub_252372288(&v181, &qword_27F4E1F28);
  sub_252372288(v125, &qword_27F4E1F00);
  v204 = *&v255[64];
  v205 = *&v255[80];
  *v206 = *&v255[96];
  v200 = *v255;
  v201 = *&v255[16];
  v202 = *&v255[32];
  v198 = 0;
  v199 = 1;
  *&v206[15] = *&v255[111];
  v203 = *&v255[48];
  *&v206[23] = v101;
  v207 = 0;
  v208 = 1;
  *v209 = *v254;
  *&v209[3] = *&v254[3];
  v210 = v114;
  v211 = 0;
  sub_252372288(&v198, &qword_27F4E1F30);
  v212 = 0;
  v213 = v115;
  *v214 = v312[0];
  *&v214[3] = *(v312 + 3);
  v215 = v119;
  v216 = v117;
  *v217 = *v311;
  *&v217[3] = *&v311[3];
  v218 = v120;
  v219 = v118;
  *&v220[3] = *&v310[3];
  *v220 = *v310;
  v221 = v123;
  v222 = v122;
  v223 = v103;
  v224 = 0;
  v225 = 1;
  *v226 = *v309;
  *&v226[3] = *&v309[3];
  v227 = v124;
  v228 = 0;
  sub_252372288(&v212, &qword_27F4E1F28);
  sub_252372288(v135, &qword_27F4E1F08);
  v229 = 0;
  v230 = v126;
  *v231 = *v305;
  *&v231[3] = *&v305[3];
  v232 = v130;
  v233 = v128;
  *v234 = *v304;
  *&v234[3] = *&v304[3];
  v235 = v131;
  v236 = v129;
  *&v237[3] = *&v303[3];
  *v237 = *v303;
  v238 = v134;
  v239 = v133;
  v240 = v104;
  v241 = 0;
  v242 = 1;
  *v243 = *v302;
  *&v243[3] = *&v302[3];
  v244 = KeyPath;
  v245 = 0;
  return sub_252372288(&v229, &qword_27F4E1F28);
}

uint64_t sub_25254B5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v18[0] = _s3RVCV21RoomPickerControlViewVMa(0);
  MEMORY[0x28223BE20](v18[0]);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1F38);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for AccessoryControl(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessoryControlModule.Layout.RVC(0);
  sub_25237153C(a1 + *(v15 + 24), v10, &qword_27F4DB120);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_252372288(v10, &qword_27F4DB120);
    *v7 = 0;
    v7[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_25254E0C4(&qword_27F4E1F40, _s3RVCV21RoomPickerControlViewVMa);
    return sub_252691470();
  }

  else
  {
    sub_25254D9A8(v10, v14, type metadata accessor for AccessoryControl);
    v17 = *(a1 + *(_s3RVCVMa(0) + 20));
    sub_25254DA30(v14, v4, type metadata accessor for AccessoryControl);
    *&v4[*(v18[0] + 20)] = v17;
    sub_25254DA30(v4, v7, _s3RVCV21RoomPickerControlViewVMa);
    swift_storeEnumTagMultiPayload();
    sub_25254E0C4(&qword_27F4E1F40, _s3RVCV21RoomPickerControlViewVMa);
    sub_252691470();
    sub_25254DA98(v4, _s3RVCV21RoomPickerControlViewVMa);
    return sub_25254DA98(v14, type metadata accessor for AccessoryControl);
  }
}

uint64_t sub_25254B950@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  *&v58 = _s3RVCV18PrimaryControlViewVMa(0);
  *&v60 = *(v58 - 8);
  v2 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  v61 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for UnsupportedValueView();
  MEMORY[0x28223BE20](v64);
  v4 = (&v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2000);
  MEMORY[0x28223BE20](v62);
  v63 = &v52 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2008);
  MEMORY[0x28223BE20](v66);
  v7 = &v52 - v6;
  v8 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  MEMORY[0x28223BE20](v16);
  v59 = &v52 - v17;
  v18 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for AccessoryControl(0);
  v21 = v1;
  sub_25254DA30(v1 + *(v57 + 20), v10, type metadata accessor for AccessoryControl.State);
  if (swift_getEnumCaseMultiPayload())
  {
    v22 = v63;
    v23 = v64;
    sub_25254DA98(v10, type metadata accessor for AccessoryControl.State);
    v24 = v61;
    sub_25254DA30(v1, v61, _s3RVCV18PrimaryControlViewVMa);
    v25 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v26 = swift_allocObject();
    sub_25254D9A8(v24, v26 + v25, _s3RVCV18PrimaryControlViewVMa);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v27 = sub_2526905A0();
    v28 = __swift_project_value_buffer(v27, qword_27F4E4B18);
    (*(*(v27 - 8) + 16))(v4 + *(v23 + 28), v28, v27);
    v29 = v4 + *(v23 + 32);
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    *v4 = sub_252550A80;
    v4[1] = v26;
    v4[2] = 0xD000000000000070;
    v4[3] = 0x80000002526B1720;
    v4[4] = 99;
    sub_25254DA30(v4, v22, type metadata accessor for UnsupportedValueView);
    swift_storeEnumTagMultiPayload();
    sub_252550AFC();
    sub_25254E0C4(&qword_27F4E1E90, type metadata accessor for UnsupportedValueView);
    sub_252691470();
    v30 = type metadata accessor for UnsupportedValueView;
  }

  else
  {
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);
    v53 = v20;
    sub_25254D9A8(v10, v20, type metadata accessor for AccessoryControl.BinaryViewConfig);
    v32 = v59;
    sub_2523714D4(&v10[v31], v59, &qword_27F4DAD80);
    v33 = *(v58 + 20);
    v54 = v21;
    v61 = *(v21 + v33);
    sub_25237153C(v32, v15, &qword_27F4DAD80);
    v34 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v35 = v34 + v12;
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    sub_2523714D4(v15, v36 + v34, &qword_27F4DAD80);
    v37 = v32;
    v38 = v56;
    sub_25237153C(v32, v56, &qword_27F4DAD80);
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    sub_2523714D4(v38, v39 + v34, &qword_27F4DAD80);
    v40 = (v39 + ((v35 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v40 = 0;
    v40[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4E0);
    sub_2526926E0();
    v41 = v67;
    v42 = v68;
    v43 = v71;
    v44 = type metadata accessor for StatusButtonControlView();
    v45 = *(v44 + 24);
    v60 = v69;
    v58 = v70;
    v4 = v53;
    sub_25254DA30(v53, &v7[v45], type metadata accessor for AccessoryControl.BinaryViewConfig);
    v46 = v61;
    *v7 = v61;
    *(v7 + 1) = v41;
    *(v7 + 2) = v42;
    *(v7 + 40) = v58;
    *(v7 + 24) = v60;
    *(v7 + 7) = v43;
    v7[*(v44 + 28)] = 1;
    v47 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2020) + 36)];
    *v47 = 1;
    *(v47 + 1) = v46;
    LOBYTE(v42) = *(v54 + *(v57 + 40));
    KeyPath = swift_getKeyPath();
    v49 = swift_allocObject();
    *(v49 + 16) = (v42 & 1) == 0;
    v50 = &v7[*(v66 + 36)];
    *v50 = KeyPath;
    v50[1] = sub_25247DAFC;
    v50[2] = v49;
    sub_25237153C(v7, v63, &qword_27F4E2008);
    swift_storeEnumTagMultiPayload();
    sub_252550AFC();
    sub_25254E0C4(&qword_27F4E1E90, type metadata accessor for UnsupportedValueView);
    sub_252691470();
    sub_252372288(v7, &qword_27F4E2008);
    sub_252372288(v37, &qword_27F4DAD80);
    v30 = type metadata accessor for AccessoryControl.BinaryViewConfig;
  }

  return sub_25254DA98(v4, v30);
}

uint64_t sub_25254C210@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = _s3RVCV20CleanModeControlViewVMa(0);
  *&v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for UnsupportedValueView();
  MEMORY[0x28223BE20](v67);
  v6 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1FE0);
  MEMORY[0x28223BE20](v63);
  v65 = &v56 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1FE8);
  MEMORY[0x28223BE20](v64);
  v62 = &v56 - v8;
  v9 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  v58 = *(v12 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - v18;
  v20 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AccessoryControl(0);
  v24 = *(v23 + 20);
  v66 = v2;
  sub_25254DA30(v2 + v24, v11, type metadata accessor for AccessoryControl.State);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);
    v57 = v22;
    sub_25254D9A8(v11, v22, type metadata accessor for AccessoryControl.PickerViewConfig);
    v26 = &v11[v25];
    v27 = v19;
    sub_2523714D4(v26, v19, &qword_27F4DAD68);
    v28 = v62;
    sub_25254DA30(v22, v62, type metadata accessor for AccessoryControl.PickerViewConfig);
    v61 = v23;
    sub_25237153C(v27, v16, &qword_27F4DAD68);
    v29 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v30 = v29 + v13;
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    sub_2523714D4(v16, v31 + v29, &qword_27F4DAD68);
    v32 = v27;
    v33 = v59;
    sub_25237153C(v27, v59, &qword_27F4DAD68);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    sub_2523714D4(v33, v34 + v29, &qword_27F4DAD68);
    v35 = (v34 + ((v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v35 = 0;
    v35[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3C8);
    sub_2526926E0();
    v60 = v69;
    v36 = v70;
    LOBYTE(v34) = v71;
    KeyPath = swift_getKeyPath();
    v72 = 0;
    v38 = type metadata accessor for WheelPickerControlView();
    v39 = v28 + *(v38 + 20);
    *v39 = v60;
    *(v39 + 16) = v36;
    *(v39 + 24) = v34;
    v40 = v28 + *(v38 + 24);
    *v40 = KeyPath;
    *(v40 + 65) = 0;
    LOBYTE(v36) = *(v66 + *(v61 + 40));
    v41 = swift_getKeyPath();
    v42 = swift_allocObject();
    *(v42 + 16) = (v36 & 1) == 0;
    v43 = v65;
    v44 = (v28 + *(v64 + 36));
    *v44 = v41;
    v44[1] = sub_25247DAFC;
    v44[2] = v42;
    sub_25237153C(v28, v43, &qword_27F4E1FE8);
    swift_storeEnumTagMultiPayload();
    sub_252550868();
    sub_25254E0C4(&qword_27F4E1E90, type metadata accessor for UnsupportedValueView);
    sub_252691470();
    sub_252372288(v28, &qword_27F4E1FE8);
    sub_252372288(v32, &qword_27F4DAD68);
    v45 = type metadata accessor for AccessoryControl.PickerViewConfig;
    v46 = v57;
  }

  else
  {
    v47 = v65;
    v48 = v67;
    sub_25254DA98(v11, type metadata accessor for AccessoryControl.State);
    v49 = v61;
    sub_25254DA30(v66, v61, _s3RVCV20CleanModeControlViewVMa);
    v50 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v51 = swift_allocObject();
    sub_25254D9A8(v49, v51 + v50, _s3RVCV20CleanModeControlViewVMa);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v52 = sub_2526905A0();
    v53 = __swift_project_value_buffer(v52, qword_27F4E4B18);
    (*(*(v52 - 8) + 16))(v6 + *(v48 + 28), v53, v52);
    v54 = v6 + *(v48 + 32);
    *v54 = swift_getKeyPath();
    v54[8] = 0;
    *v6 = sub_252550850;
    v6[1] = v51;
    v6[2] = 0xD000000000000070;
    v6[3] = 0x80000002526B1720;
    v6[4] = 121;
    sub_25254DA30(v6, v47, type metadata accessor for UnsupportedValueView);
    swift_storeEnumTagMultiPayload();
    sub_252550868();
    sub_25254E0C4(&qword_27F4E1E90, type metadata accessor for UnsupportedValueView);
    sub_252691470();
    v45 = type metadata accessor for UnsupportedValueView;
    v46 = v6;
  }

  return sub_25254DA98(v46, v45);
}

uint64_t sub_25254CA90@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v95 = _s3RVCV21RoomPickerControlViewVMa(0);
  v82 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v83 = v2;
  *&v85 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for UnsupportedValueView();
  MEMORY[0x28223BE20](v99);
  *&v86 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
  v79 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  *&v84 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = v8;
  v81 = &v78 - v7;
  MEMORY[0x28223BE20](v9);
  v90 = &v78 - v10;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1FA0);
  MEMORY[0x28223BE20](v96);
  v98 = &v78 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1FA8);
  MEMORY[0x28223BE20](v91);
  v93 = &v78 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1FB0);
  MEMORY[0x28223BE20](v97);
  v94 = &v78 - v13;
  v92 = type metadata accessor for StatusDetailsButtonControlView();
  MEMORY[0x28223BE20](v92);
  v89 = (&v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v78 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
  v87 = *(v21 - 8);
  v22 = *(v87 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v88 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v78 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v78 - v27;
  v78 = type metadata accessor for AccessoryControl(0);
  v29 = *(v78 + 20);
  v30 = v1;
  sub_25254DA30(v1 + v29, v20, type metadata accessor for AccessoryControl.State);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    LODWORD(v86) = *v20;
    *&v85 = *(v20 + 1);
    v90 = *(v20 + 4);
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470) + 48);
    v84 = *(v20 + 1);
    v32 = v28;
    sub_2523714D4(&v20[v31], v28, &qword_27F4DB450);
    v95 = *(v1 + *(v95 + 20));
    sub_25237153C(v28, v25, &qword_27F4DB450);
    v33 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    sub_2523714D4(v25, v34 + v33, &qword_27F4DB450);
    v35 = v88;
    sub_25237153C(v28, v88, &qword_27F4DB450);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    sub_2523714D4(v35, v36 + v33, &qword_27F4DB450);
    v37 = (v36 + ((v33 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v37 = 0;
    v37[1] = 0;
    v38 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440);
    v39 = v89;
    sub_2526926E0();
    *v39 = v95;
    v40 = v39 + v38[6];
    *v40 = v86;
    *(v40 + 1) = v85;
    *(v40 + 1) = v84;
    *(v40 + 4) = v90;
    v41 = v39 + v38[7];
    v101[0] = 0;
    sub_2526924D0();
    v42 = *&v104[8];
    *v41 = v104[0];
    *(v41 + 1) = v42;
    v43 = v39 + v38[8];
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    sub_25254DA30(v39, v93, type metadata accessor for StatusDetailsButtonControlView);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1FD0);
    sub_25254E0C4(&qword_27F4E1FC0, type metadata accessor for StatusDetailsButtonControlView);
    sub_252550B2C(&qword_27F4E1FC8, &qword_27F4E1FD0, &unk_2526A6698, sub_25254E10C);
    v44 = v94;
    sub_252691470();
    sub_25237153C(v44, v98, &qword_27F4E1FB0);
    swift_storeEnumTagMultiPayload();
    sub_25254DFDC();
    sub_25254E0C4(&qword_27F4E1E90, type metadata accessor for UnsupportedValueView);
    sub_252691470();
    sub_252372288(v44, &qword_27F4E1FB0);
    sub_25254DA98(v39, type metadata accessor for StatusDetailsButtonControlView);
    return sub_252372288(v32, &qword_27F4DB450);
  }

  else
  {
    v46 = v95;
    sub_25254DA98(v20, type metadata accessor for AccessoryControl.State);
    sub_25254DA30(v30 + v29, v17, type metadata accessor for AccessoryControl.State);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v89 = *v17;
      LODWORD(v88) = v17[8];
      v87 = *(v17 + 2);
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0) + 48);
      v86 = *(v17 + 24);
      v48 = v90;
      sub_2523714D4(&v17[v47], v90, &qword_27F4DB498);
      v95 = *(v30 + *(v46 + 20));
      v49 = v81;
      sub_25237153C(v48, v81, &qword_27F4DB498);
      v50 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v51 = v50 + v80;
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      sub_2523714D4(v49, v52 + v50, &qword_27F4DB498);
      v53 = v84;
      sub_25237153C(v48, v84, &qword_27F4DB498);
      v54 = (v51 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = swift_allocObject();
      *(v55 + 16) = 0;
      *(v55 + 24) = 0;
      sub_2523714D4(v53, v55 + v50, &qword_27F4DB498);
      v56 = (v55 + v54);
      *v56 = 0;
      v56[1] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4B8);
      sub_2526926E0();
      v57 = *v104;
      v103 = 0;
      v84 = *&v104[16];
      v85 = *&v104[32];
      sub_2526924D0();
      LOBYTE(v54) = v101[0];
      v58 = v102;
      KeyPath = swift_getKeyPath();
      v101[0] = 0;
      v60 = *(v30 + *(v78 + 40));
      v61 = swift_getKeyPath();
      v62 = swift_allocObject();
      *(v62 + 16) = (v60 & 1) == 0;
      *v104 = v95;
      *&v104[8] = v57;
      *&v104[24] = v84;
      *&v104[40] = v85;
      *&v104[56] = v89;
      LOBYTE(v105) = v88;
      *(&v105 + 1) = v87;
      v106 = v86;
      LOBYTE(v107) = v54;
      *(&v107 + 1) = v58;
      *&v108 = KeyPath;
      BYTE8(v108) = 0;
      *&v109 = v61;
      *(&v109 + 1) = sub_25247D5D8;
      v110 = v62;
      v63 = v93;
      *(v93 + 144) = v62;
      v64 = v108;
      v63[6] = v107;
      v63[7] = v64;
      v63[8] = v109;
      v65 = *&v104[16];
      *v63 = *v104;
      v63[1] = v65;
      v66 = *&v104[32];
      v67 = *&v104[48];
      v68 = v106;
      v63[4] = v105;
      v63[5] = v68;
      v63[2] = v66;
      v63[3] = v67;
      swift_storeEnumTagMultiPayload();
      sub_25237153C(v104, v101, &qword_27F4E1FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1FD0);
      sub_25254E0C4(&qword_27F4E1FC0, type metadata accessor for StatusDetailsButtonControlView);
      sub_252550B2C(&qword_27F4E1FC8, &qword_27F4E1FD0, &unk_2526A6698, sub_25254E10C);
      v69 = v94;
      sub_252691470();
      sub_25237153C(v69, v98, &qword_27F4E1FB0);
      swift_storeEnumTagMultiPayload();
      sub_25254DFDC();
      sub_25254E0C4(&qword_27F4E1E90, type metadata accessor for UnsupportedValueView);
      sub_252691470();
      sub_252372288(v104, &qword_27F4E1FD0);
      sub_252372288(v69, &qword_27F4E1FB0);
      return sub_252372288(v90, &qword_27F4DB498);
    }

    else
    {
      sub_25254DA98(v17, type metadata accessor for AccessoryControl.State);
      v70 = v85;
      sub_25254DA30(v30, v85, _s3RVCV21RoomPickerControlViewVMa);
      v71 = (*(v82 + 80) + 16) & ~*(v82 + 80);
      v72 = swift_allocObject();
      sub_25254D9A8(v70, v72 + v71, _s3RVCV21RoomPickerControlViewVMa);
      if (qword_27F4DABD0 != -1)
      {
        swift_once();
      }

      v73 = sub_2526905A0();
      v74 = __swift_project_value_buffer(v73, qword_27F4E4B18);
      v75 = v99;
      v76 = v86;
      (*(*(v73 - 8) + 16))(v86 + *(v99 + 28), v74, v73);
      v77 = v76 + *(v75 + 32);
      *v77 = swift_getKeyPath();
      v77[8] = 0;
      *v76 = sub_25254DF70;
      v76[1] = v72;
      v76[2] = 0xD000000000000070;
      v76[3] = 0x80000002526B1720;
      v76[4] = 149;
      sub_25254DA30(v76, v98, type metadata accessor for UnsupportedValueView);
      swift_storeEnumTagMultiPayload();
      sub_25254DFDC();
      sub_25254E0C4(&qword_27F4E1E90, type metadata accessor for UnsupportedValueView);
      sub_252691470();
      return sub_25254DA98(v76, type metadata accessor for UnsupportedValueView);
    }
  }
}

uint64_t sub_25254D9A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25254DA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25254DA98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_25254DC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25254DCCC()
{
  result = qword_27F4E1F78;
  if (!qword_27F4E1F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1EE0);
    sub_25254DD84();
    sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1F78);
  }

  return result;
}

unint64_t sub_25254DD84()
{
  result = qword_27F4E1F80;
  if (!qword_27F4E1F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1ED0);
    sub_25254DE10();
    sub_25254DEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1F80);
  }

  return result;
}

unint64_t sub_25254DE10()
{
  result = qword_27F4E1F88;
  if (!qword_27F4E1F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1EC8);
    sub_252400FC8(&qword_27F4E1F90, &qword_27F4E1EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1F88);
  }

  return result;
}

unint64_t sub_25254DEC8()
{
  result = qword_27F4E1F98;
  if (!qword_27F4E1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1F98);
  }

  return result;
}

uint64_t sub_25254DF70()
{
  _s3RVCV21RoomPickerControlViewVMa(0);
  type metadata accessor for AccessoryControl(0);
  return AccessoryControl.State.description.getter();
}

unint64_t sub_25254DFDC()
{
  result = qword_27F4E1FB8;
  if (!qword_27F4E1FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1FB0);
    sub_25254E0C4(&qword_27F4E1FC0, type metadata accessor for StatusDetailsButtonControlView);
    sub_252550B2C(&qword_27F4E1FC8, &qword_27F4E1FD0, &unk_2526A6698, sub_25254E10C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1FB8);
  }

  return result;
}

uint64_t sub_25254E0C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25254E10C()
{
  result = qword_27F4E1FD8;
  if (!qword_27F4E1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1FD8);
  }

  return result;
}

uint64_t sub_25254E160@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_25255E5D8(v4, a1);
}

uint64_t sub_25254E1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(a1 + 32);
  v14 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v14;
  v22 = v13;
  v15 = *a4;
  v20 = v21;
  v16 = sub_252372354(sub_252550DC8, v19, v15);
  static AccessoryControl.WriteSpecification.merge(writeSpecifications:)(v16, v12);

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  sub_2523FEEC8(a4 + *(v17 + 36), v12, a5, a6);
  return sub_25254DA98(v12, type metadata accessor for AccessoryControl.WriteSpecification);
}

uint64_t sub_25254E300(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1[1];
  v20[0] = *a1;
  v20[1] = v13;
  v14 = *a4;
  v19 = v20;
  v15 = sub_252372354(sub_25254E6C0, v18, v14);
  static AccessoryControl.WriteSpecification.merge(writeSpecifications:)(v15, v12);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
  sub_2523FEEC8(a4 + *(v16 + 36), v12, a5, a6);
  return sub_25254DA98(v12, type metadata accessor for AccessoryControl.WriteSpecification);
}

uint64_t sub_25254E418(_OWORD *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_25254E300(a1, v5, v6, (v1 + v4), v8, v9);
}

uint64_t sub_25254E4C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_25255E638(v4, a1);
}

uint64_t sub_25254E548(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_252549F58(a1, *(v1 + 16), *(v1 + 24), (v1 + v4), *v5, v5[1], sub_252550F34, sub_252372354, &qword_27F4DB450);
}

uint64_t sub_25254E630@<X0>(void (**a1)(_OWORD *)@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  v4(v8);
  v6 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  return (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
}

uint64_t objectdestroyTm_24(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v220 = (v3 + 16) & ~v3;
  v221 = v1;
  v5 = v1 + v220;
  type metadata accessor for AccessoryControl.ElementIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
    }
  }

  else
  {
    v7 = sub_25268DA10();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  v8 = v5 + *(type metadata accessor for AccessoryControl(0) + 20);
  type metadata accessor for AccessoryControl.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v9 = type metadata accessor for IconDescriptor();
      v10 = *(v9 + 20);
      v11 = sub_25268F910();
      v12 = *(*(v11 - 8) + 8);
      v12(v8 + v10, v11);
      v13 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v12(v13 + *(v9 + 20), v11);
      v14 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

      v15 = v8 + v14[6];
      type metadata accessor for ControlTextModifier.Config(0);
      v16 = swift_getEnumCaseMultiPayload();
      if (v16 == 1)
      {
      }

      else if (!v16)
      {
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
        v18 = sub_25268D990();
        (*(*(v18 - 8) + 8))(v15 + v17, v18);
      }

      v162 = v8 + v14[7];
      v163 = *(v162 + 32);
      if (v163 != 255)
      {
        sub_252376DBC(*v162, *(v162 + 8), *(v162 + 16), *(v162 + 24), v163);
      }

      v164 = v8 + v14[8];
      v165 = *(v164 + 32);
      if (v165 != 255)
      {
        sub_252376DBC(*v164, *(v164 + 8), *(v164 + 16), *(v164 + 24), v165);
      }

      v166 = v8 + v14[11];
      type metadata accessor for AccessoryControl.StatusProvider();
      v167 = swift_getEnumCaseMultiPayload();
      if (v167 <= 3)
      {
        if (v167 != 1 && v167 != 3)
        {
          goto LABEL_106;
        }
      }

      else
      {
        if (v167 == 4)
        {
          v191 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
          v192 = sub_25268D990();
          v193 = *(v192 - 8);
          if (!(*(v193 + 48))(v166 + v191, 1, v192))
          {
            (*(v193 + 8))(v166 + v191, v192);
          }

          goto LABEL_106;
        }

        if (v167 != 5 && v167 != 7)
        {
LABEL_106:

          v168 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);

          v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
          v170 = v168 + *(v169 + 36);
          v171 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v171 - 8) + 48))(v170, 1, v171))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v170);
            v172 = *(v171 + 20);
            v173 = sub_25268DA10();
            (*(*(v173 - 8) + 8))(v170 + v172, v173);
          }

          v159 = v168 + *(v169 + 40);
          goto LABEL_109;
        }
      }

      goto LABEL_106;
    case 1u:

      v102 = type metadata accessor for IconDescriptor();
      v103 = *(v102 + 20);
      v104 = sub_25268F910();
      v105 = *(*(v104 - 8) + 8);
      v105(v8 + v103, v104);
      v106 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v105(v106 + *(v102 + 20), v104);
      v107 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

      v108 = v8 + v107[6];
      type metadata accessor for ControlTextModifier.Config(0);
      v109 = swift_getEnumCaseMultiPayload();
      if (v109 == 1)
      {
      }

      else if (!v109)
      {
        v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
        v111 = sub_25268D990();
        (*(*(v111 - 8) + 8))(v108 + v110, v111);
      }

      v174 = v8 + v107[7];
      v175 = *(v174 + 32);
      if (v175 != 255)
      {
        sub_252376DBC(*v174, *(v174 + 8), *(v174 + 16), *(v174 + 24), v175);
      }

      v176 = v8 + v107[8];
      v177 = *(v176 + 32);
      if (v177 != 255)
      {
        sub_252376DBC(*v176, *(v176 + 8), *(v176 + 16), *(v176 + 24), v177);
      }

      v178 = v8 + v107[11];
      type metadata accessor for AccessoryControl.StatusProvider();
      v179 = swift_getEnumCaseMultiPayload();
      if (v179 <= 3)
      {
        if (v179 == 1 || v179 == 3)
        {
          goto LABEL_123;
        }
      }

      else if (v179 == 4)
      {
        v194 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v195 = sub_25268D990();
        v196 = *(v195 - 8);
        if (!(*(v196 + 48))(v178 + v194, 1, v195))
        {
          (*(v196 + 8))(v178 + v194, v195);
        }
      }

      else if (v179 == 5 || v179 == 7)
      {
LABEL_123:
      }

      v180 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB420) + 48);

      v181 = v180 + *(type metadata accessor for ControlAction(0) + 20);
      v182 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v182 - 8) + 48))(v181, 1, v182))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v181);
        v183 = *(v182 + 20);
        v184 = sub_25268DA10();
        (*(*(v184 - 8) + 8))(v181 + v183, v184);
      }

      goto LABEL_126;
    case 2u:

      v74 = type metadata accessor for IconDescriptor();
      v75 = *(v74 + 20);
      v76 = sub_25268F910();
      v77 = *(*(v76 - 8) + 8);
      v77(v8 + v75, v76);
      v78 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v77(v78 + *(v74 + 20), v76);
      v79 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

      v80 = *(v79 + 28);
      v81 = sub_25268EEA0();
      (*(*(v81 - 8) + 8))(v8 + v80, v81);

      v82 = v8 + *(v79 + 56);
      type metadata accessor for AccessoryControl.StatusProvider();
      v83 = swift_getEnumCaseMultiPayload();
      v216 = v4;
      if (v83 <= 3)
      {
        if (v83 == 1 || v83 == 3)
        {
          goto LABEL_78;
        }
      }

      else if (v83 == 4)
      {
        v185 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v186 = sub_25268D990();
        v187 = *(v186 - 8);
        if (!(*(v187 + 48))(v82 + v185, 1, v186))
        {
          (*(v187 + 8))(v82 + v185, v186);
        }
      }

      else if (v83 == 5 || v83 == 7)
      {
LABEL_78:
      }

      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
      v142 = v8 + *(v141 + 48);

      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
      v144 = v142 + *(v143 + 36);
      v145 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      v146 = *(*(v145 - 8) + 48);
      if (!v146(v144, 1, v145))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v144);
        v147 = v3;
        v148 = *(v145 + 20);
        v149 = sub_25268DA10();
        v150 = v144 + v148;
        v3 = v147;
        (*(*(v149 - 8) + 8))(v150, v149);
      }

      v151 = *(v143 + 40);
      v152 = type metadata accessor for AccessoryControl.IncrementalState(0);
      if (!(*(*(v152 - 8) + 48))(v142 + v151, 1, v152))
      {
        v153 = sub_25268ED70();
        (*(*(v153 - 8) + 8))(v142 + v151, v153);
      }

      v154 = v8 + *(v141 + 64);
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
      v4 = v216;
      if (!(*(*(v155 - 8) + 48))(v154, 1, v155))
      {

        v156 = v154 + *(v155 + 36);
        if (!v146(v156, 1, v145))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v156);
          v157 = *(v145 + 20);
          v158 = sub_25268DA10();
          (*(*(v158 - 8) + 8))(v156 + v157, v158);
        }

        v159 = v154 + *(v155 + 40);
LABEL_109:
        if (*(v159 + 32) != 1)
        {
LABEL_126:
        }
      }

      goto LABEL_127;
    case 3u:

      v84 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
      v85 = v8 + *(v84 + 24);
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
      if (!(*(*(v86 - 8) + 48))(v85, 1, v86))
      {

        v217 = v4;
        v87 = type metadata accessor for IconDescriptor();
        v88 = *(v87 + 20);
        v214 = v3;
        v89 = sub_25268F910();
        v90 = *(*(v89 - 8) + 8);
        v90(v85 + v88, v89);
        v91 = v85 + *(v86 + 28);

        v92 = v91 + *(v87 + 20);
        v93 = v89;
        v3 = v214;
        v4 = v217;
        v90(v92, v93);
      }

      v94 = v8 + *(v84 + 40);
      type metadata accessor for AccessoryControl.StatusProvider();
      v95 = swift_getEnumCaseMultiPayload();
      if (v95 <= 3)
      {
        if (v95 == 1 || v95 == 3)
        {
          goto LABEL_89;
        }
      }

      else if (v95 == 4)
      {
        v188 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
        v189 = sub_25268D990();
        v190 = *(v189 - 8);
        if (!(*(v190 + 48))(v94 + v188, 1, v189))
        {
          (*(v190 + 8))(v94 + v188, v189);
        }
      }

      else if (v95 == 5 || v95 == 7)
      {
LABEL_89:
      }

      v160 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);

      v30 = v160 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) + 36);
      v161 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v161 - 8) + 48))(v30, 1, v161))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        v37 = *(v161 + 20);
        v38 = sub_25268DA10();
LABEL_92:
        (*(*(v38 - 8) + 8))(v30 + v37, v38);
      }

LABEL_127:

      return MEMORY[0x2821FE8E8](v221, v220 + v4, v3 | 7);
    case 4u:

      v39 = v8 + *(type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0) + 24);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
      if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
      {

        v41 = type metadata accessor for IconDescriptor();
        v42 = *(v41 + 20);
        v215 = v4;
        v43 = sub_25268F910();
        v44 = *(*(v43 - 8) + 8);
        v44(v39 + v42, v43);
        v45 = v39 + *(v40 + 28);

        v46 = v43;
        v4 = v215;
        v44(v45 + *(v41 + 20), v46);
      }

      v47 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F8) + 48);

      v48 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0) + 36);
      v49 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        v50 = *(v49 + 20);
        v51 = sub_25268DA10();
        (*(*(v51 - 8) + 8))(v48 + v50, v51);
      }

      goto LABEL_126;
    case 5u:

      v112 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0) + 48);

      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298);
      v114 = v112 + *(v113 + 36);
      v115 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v115 - 8) + 48))(v114, 1, v115))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v114);
        v116 = *(v115 + 20);
        v117 = sub_25268DA10();
        (*(*(v117 - 8) + 8))(v114 + v116, v117);
      }

      v118 = *(v113 + 40);
      v119 = type metadata accessor for AccessoryControl.ColorState(0);
      if (!(*(*(v119 - 8) + 48))(v112 + v118, 1, v119))
      {
        v120 = sub_25268ED20();
        v121 = *(v120 - 8);
        if (!(*(v121 + 48))(v112 + v118, 1, v120))
        {
          (*(v121 + 8))(v112 + v118, v120);
        }
      }

      goto LABEL_127;
    case 6u:

      v127 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270) + 48);

      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
      v129 = v127 + *(v128 + 36);
      v130 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v130 - 8) + 48))(v129, 1, v130))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v129);
        v131 = *(v130 + 20);
        v132 = sub_25268DA10();
        (*(*(v132 - 8) + 8))(v129 + v131, v132);
      }

      v58 = v127 + *(v128 + 40);
      v133 = type metadata accessor for AccessoryControl.ThermostatState(0);
      if ((*(*(v133 - 8) + 48))(v58, 1, v133))
      {
        goto LABEL_127;
      }

      v134 = v58 + *(v133 + 32);
      v135 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
      if ((*(*(v135 - 8) + 48))(v134, 1, v135))
      {
        goto LABEL_70;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v200 - 8) + 48))(v134, 1, v200))
        {
          goto LABEL_70;
        }

        v201 = *(v200 + 48);
        v202 = sub_25268D990();
        (*(*(v202 - 8) + 8))(v134 + v201, v202);
      }

      else
      {
        v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        if ((*(*(v200 - 8) + 48))(v134, 3, v200))
        {
          goto LABEL_70;
        }

        v219 = v4;
        v208 = *(v200 + 48);
        v209 = sub_25268D990();
        v210 = *(v209 - 8);
        if (!(*(v210 + 48))(v134 + v208, 1, v209))
        {
          (*(v210 + 8))(v134 + v208, v209);
        }

        v4 = v219;
      }

      v211 = *(v200 + 64);
      v212 = sub_25268DB10();
      (*(*(v212 - 8) + 8))(v134 + v211, v212);
LABEL_70:
      v62 = *(v133 + 36);
      goto LABEL_71;
    case 7u:

      v96 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0) + 48);

      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
      v98 = v96 + *(v97 + 36);
      v99 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v99 - 8) + 48))(v98, 1, v99))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v98);
        v100 = *(v99 + 20);
        v101 = sub_25268DA10();
        (*(*(v101 - 8) + 8))(v98 + v100, v101);
      }

      if (*(v96 + *(v97 + 40) + 8))
      {
        goto LABEL_56;
      }

      goto LABEL_127;
    case 8u:

      v63 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470) + 48);

      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
      v65 = v63 + *(v64 + 36);
      v66 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v66 - 8) + 48))(v65, 1, v66))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        v67 = *(v66 + 20);
        v68 = sub_25268DA10();
        (*(*(v68 - 8) + 8))(v65 + v67, v68);
      }

      v69 = v63 + *(v64 + 40);
      v70 = type metadata accessor for AccessoryControl.StatusButtonState(0);
      if ((*(*(v70 - 8) + 48))(v69, 1, v70))
      {
        goto LABEL_127;
      }

      v8 = v69 + *(v70 + 24);
      v71 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
      if ((*(*(v71 - 8) + 48))(v8, 1, v71))
      {
        goto LABEL_127;
      }

      v72 = swift_getEnumCaseMultiPayload();
      if (v72 == 2)
      {
LABEL_56:
      }

      else if (v72 <= 1)
      {
        type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
LABEL_40:
          v73 = sub_25268DA10();
          (*(*(v73 - 8) + 8))(v8, v73);
        }
      }

      goto LABEL_127;
    case 9u:

      v136 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4D8) + 48);

      v137 = v136 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C8) + 36);
      v138 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v138 - 8) + 48))(v137, 1, v138))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v137);
        v139 = *(v138 + 20);
        v140 = sub_25268DA10();
        (*(*(v140 - 8) + 8))(v137 + v139, v140);
      }

      goto LABEL_126;
    case 0xAu:
      goto LABEL_126;
    case 0xBu:
      goto LABEL_40;
    case 0xCu:

      if (*(v8 + 48) != 1)
      {
      }

      v52 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0) + 48);

      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
      v54 = v52 + *(v53 + 36);
      v55 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v55 - 8) + 48))(v54, 1, v55))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        v56 = *(v55 + 20);
        v57 = sub_25268DA10();
        (*(*(v57 - 8) + 8))(v54 + v56, v57);
      }

      v58 = v52 + *(v53 + 40);
      v59 = type metadata accessor for AccessoryControl.AutoClimateState(0);
      if ((*(*(v59 - 8) + 48))(v58, 1, v59))
      {
        goto LABEL_127;
      }

      v60 = v58 + *(v59 + 20);
      v61 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
      if ((*(*(v61 - 8) + 48))(v60, 1, v61))
      {
        goto LABEL_32;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
        if ((*(*(v197 - 8) + 48))(v60, 1, v197))
        {
          goto LABEL_32;
        }

        v198 = *(v197 + 48);
        v199 = sub_25268D990();
        (*(*(v199 - 8) + 8))(v60 + v198, v199);
      }

      else
      {
        v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
        if ((*(*(v197 - 8) + 48))(v60, 3, v197))
        {
          goto LABEL_32;
        }

        v218 = v4;
        v203 = *(v197 + 48);
        v204 = sub_25268D990();
        v205 = *(v204 - 8);
        if (!(*(v205 + 48))(v60 + v203, 1, v204))
        {
          (*(v205 + 8))(v60 + v203, v204);
        }

        v4 = v218;
      }

      v206 = *(v197 + 64);
      v207 = sub_25268DB10();
      (*(*(v207 - 8) + 8))(v60 + v206, v207);
LABEL_32:
      v62 = *(v59 + 24);
LABEL_71:
      if (*(v58 + v62 + 8) < 8uLL)
      {
        goto LABEL_127;
      }

      goto LABEL_126;
    case 0xDu:

      v122 = type metadata accessor for IconDescriptor();
      v123 = *(v122 + 20);
      v124 = sub_25268F910();
      v125 = *(*(v124 - 8) + 8);
      v125(v8 + v123, v124);
      v126 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v125(v126 + *(v122 + 20), v124);
      type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);

      goto LABEL_127;
    case 0xEu:

      v19 = type metadata accessor for IconDescriptor();
      v20 = *(v19 + 20);
      v21 = sub_25268F910();
      v22 = *(*(v21 - 8) + 8);
      v22(v8 + v20, v21);
      v23 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

      v22(v23 + *(v19 + 20), v21);
      type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);

      v24 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB348) + 48);

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
      v26 = v24 + *(v25 + 36);
      v27 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        v28 = *(v27 + 20);
        v29 = sub_25268DA10();
        (*(*(v29 - 8) + 8))(v26 + v28, v29);
      }

      v30 = v24 + *(v25 + 40);
      v31 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
      if ((*(*(v31 - 8) + 48))(v30, 1, v31))
      {
        goto LABEL_127;
      }

      v32 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
      if ((*(*(v32 - 8) + 48))(v30, 1, v32))
      {
        goto LABEL_127;
      }

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      if ((*(*(v33 - 8) + 48))(v30, 3, v33))
      {
        goto LABEL_127;
      }

      v34 = *(v33 + 48);
      v35 = sub_25268D990();
      v36 = *(v35 - 8);
      if (!(*(v36 + 48))(v30 + v34, 1, v35))
      {
        (*(v36 + 8))(v30 + v34, v35);
      }

      v37 = *(v33 + 64);
      v38 = sub_25268DB10();
      goto LABEL_92;
    default:
      goto LABEL_127;
  }
}

unint64_t sub_252550868()
{
  result = qword_27F4E1FF0;
  if (!qword_27F4E1FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E1FE8);
    sub_25254E0C4(&qword_27F4E1FF8, type metadata accessor for WheelPickerControlView);
    sub_252400FC8(&qword_27F4DF0F8, &qword_27F4DF100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E1FF0);
  }

  return result;
}

uint64_t sub_252550950@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_25255E588(v4, a1);
}

uint64_t sub_2525509D0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_252563F64(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_252550B2C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_252400FC8(&qword_27F4DF0F8, &qword_27F4DF100);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252550BDC()
{
  result = qword_27F4E2018;
  if (!qword_27F4E2018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2020);
    sub_25254E0C4(&qword_27F4E2028, type metadata accessor for StatusButtonControlView);
    sub_252497E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2018);
  }

  return result;
}

uint64_t sub_252550C98@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_25255E520(v4, a1);
}

uint64_t sub_252550D18(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_25254E1E0(a1, v5, v6, (v1 + v4), v8, v9);
}

uint64_t sub_252550DFC@<X0>(void (**a1)(void)@<X0>, uint64_t a2@<X8>)
{
  (*a1)(*(v2 + 16));
  v4 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  return (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
}

uint64_t sub_252550E80(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_25254E0C4(&qword_27F4E1E90, type metadata accessor for UnsupportedValueView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252550FF0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2070);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2078);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2080);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2088);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = v45 - v16;
  *v5 = sub_2526912E0();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2090);
  sub_252551354(v1, &v5[*(v18 + 44)]);
  sub_252692920();
  sub_252690D70();
  sub_2523714D4(v5, v9, &qword_27F4E2070);
  v19 = &v9[*(v7 + 44)];
  v20 = v45[5];
  *(v19 + 4) = v45[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v45[6];
  v21 = v45[1];
  *v19 = v45[0];
  *(v19 + 1) = v21;
  v22 = v45[3];
  *(v19 + 2) = v45[2];
  *(v19 + 3) = v22;
  LOBYTE(v7) = sub_252691A30();
  sub_252552108();
  sub_252690760();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_2523714D4(v9, v13, &qword_27F4E2078);
  v31 = &v13[*(v11 + 44)];
  *v31 = v7;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  LOBYTE(v9) = sub_252691A40();
  sub_25255239C();
  sub_252690760();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_2523714D4(v13, v17, &qword_27F4E2080);
  v40 = &v17[*(v15 + 44)];
  *v40 = v9;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  sub_252525D94();
  v41 = sub_252692F20();
  KeyPath = swift_getKeyPath();
  sub_2523714D4(v17, a1, &qword_27F4E2088);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2098);
  v44 = a1 + *(result + 36);
  *v44 = KeyPath;
  *(v44 + 8) = v41 & 1;
  return result;
}

uint64_t sub_252551354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E20A0);
  v115 = *(v3 - 8);
  v116 = v3;
  MEMORY[0x28223BE20](v3);
  v105 = (&v93 - v4);
  v103 = _s10ThermostatV21ModePickerControlViewVMa(0);
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v94 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E20A8);
  MEMORY[0x28223BE20](v6 - 8);
  v104 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v100 = &v93 - v9;
  MEMORY[0x28223BE20](v10);
  v102 = &v93 - v11;
  v98 = sub_2526910F0();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E20B0);
  MEMORY[0x28223BE20](v13 - 8);
  v114 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v119 = &v93 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  MEMORY[0x28223BE20](v17 - 8);
  v99 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v97 = &v93 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v93 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E20B8);
  MEMORY[0x28223BE20](v24 - 8);
  v113 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v93 - v27;
  v29 = _s10ThermostatV22TemperatureControlViewVMa(0);
  v30 = v29 - 8;
  MEMORY[0x28223BE20](v29);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E20C0);
  v34 = v33 - 8;
  MEMORY[0x28223BE20](v33);
  v111 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v93 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v93 - v40;
  v42 = _s10ThermostatVMa(0);
  v43 = *(v42 + 20);
  v44 = a1;
  v106 = a1;
  v45 = *(a1 + v43);
  sub_252554744(v44, v32, type metadata accessor for AccessoryControl);
  *&v32[*(v30 + 28)] = v45;
  sub_252692920();
  sub_252690D70();
  sub_2525546BC(v32, v38, _s10ThermostatV22TemperatureControlViewVMa);
  v46 = &v38[*(v34 + 44)];
  v47 = v138;
  *(v46 + 4) = v137;
  *(v46 + 5) = v47;
  *(v46 + 6) = v139;
  v48 = v134;
  *v46 = v133;
  *(v46 + 1) = v48;
  v49 = v136;
  *(v46 + 2) = v135;
  *(v46 + 3) = v49;
  v118 = v41;
  sub_2523714D4(v38, v41, &qword_27F4E20C0);
  sub_252692920();
  sub_2526909C0();
  v109 = v142;
  v110 = v140;
  v107 = v145;
  v108 = v144;
  v130 = 1;
  v50 = v106;
  v129 = v141;
  v128 = v143;
  v51 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
  v52 = *(v51 + 24);
  sub_25237153C(v50 + v52, v23, &qword_27F4DB120);
  v112 = v28;
  v93 = v45;
  sub_252551F0C(v23, v45, v28);
  v53 = (v50 + *(v42 + 24));
  v132 = *(v53 + 32);
  v54 = v53[2];
  v55 = v53[3];
  v56 = *v53;
  v131[1] = v53[1];
  v131[2] = v54;
  v131[3] = v55;
  v131[0] = v56;
  if ((v132 & 0x100) == 0)
  {

    sub_252692F00();
    v68 = sub_2526919C0();
    sub_252690570();

    v69 = v95;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v131, &qword_27F4DC120);
    (*(v96 + 8))(v69, v98);
    if ((BYTE1(v126) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v70 = v119;
    (*(v115 + 56))(v119, 1, 1, v116);
    goto LABEL_9;
  }

  v57 = v53[3];
  v125 = v53[2];
  v126 = v57;
  v127 = *(v53 + 64);
  v58 = v53[1];
  v123 = *v53;
  v124 = v58;
  if (BYTE1(v57))
  {
    goto LABEL_6;
  }

LABEL_3:
  v59 = v97;
  sub_25237153C(v50 + v52, v97, &qword_27F4DB120);
  v60 = type metadata accessor for AccessoryControl(0);
  v61 = *(*(v60 - 8) + 48);
  v61(v59, 1, v60);
  sub_252372288(v59, &qword_27F4DB120);
  sub_252692920();
  sub_2526909C0();
  v97 = v124;
  v98 = v123;
  v62 = *(&v125 + 1);
  v96 = v125;
  v122 = 1;
  v121 = BYTE8(v123);
  v120 = BYTE8(v124);
  v63 = v50 + *(v51 + 20);
  v64 = v99;
  sub_25237153C(v63, v99, &qword_27F4DB120);
  if (v61(v64, 1, v60) == 1)
  {
    sub_252372288(v64, &qword_27F4DB120);
    v65 = 1;
    v66 = v103;
    v67 = v100;
  }

  else
  {
    v71 = v94;
    sub_2525546BC(v64, v94, type metadata accessor for AccessoryControl);
    v66 = v103;
    *(v71 + *(v103 + 20)) = v93;
    v67 = v100;
    sub_2525546BC(v71, v100, _s10ThermostatV21ModePickerControlViewVMa);
    v65 = 0;
  }

  (*(v101 + 56))(v67, v65, 1, v66);
  v72 = v102;
  sub_2523714D4(v67, v102, &qword_27F4E20A8);
  v73 = v122;
  v74 = v121;
  v75 = v120;
  v76 = v104;
  sub_25237153C(v72, v104, &qword_27F4E20A8);
  v77 = v105;
  *v105 = 0;
  *(v77 + 8) = v73;
  v78 = v97;
  *(v77 + 16) = v98;
  *(v77 + 24) = v74;
  *(v77 + 32) = v78;
  *(v77 + 40) = v75;
  *(v77 + 48) = v96;
  *(v77 + 56) = v62;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E20D0);
  sub_25237153C(v76, v77 + *(v79 + 48), &qword_27F4E20A8);
  sub_252372288(v72, &qword_27F4E20A8);
  sub_252372288(v76, &qword_27F4E20A8);
  v70 = v119;
  sub_2523714D4(v77, v119, &qword_27F4E20A0);
  (*(v115 + 56))(v70, 0, 1, v116);
LABEL_9:
  v80 = v111;
  sub_25237153C(v118, v111, &qword_27F4E20C0);
  v81 = v130;
  v82 = v129;
  v83 = v128;
  v85 = v112;
  v84 = v113;
  sub_25237153C(v112, v113, &qword_27F4E20B8);
  v86 = v114;
  sub_25237153C(v70, v114, &qword_27F4E20B0);
  v87 = v117;
  sub_25237153C(v80, v117, &qword_27F4E20C0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E20C8);
  v89 = v87 + v88[12];
  *v89 = 0;
  *(v89 + 8) = v81;
  v90 = v109;
  *(v89 + 16) = v110;
  *(v89 + 24) = v82;
  *(v89 + 32) = v90;
  *(v89 + 40) = v83;
  v91 = v107;
  *(v89 + 48) = v108;
  *(v89 + 56) = v91;
  sub_25237153C(v84, v87 + v88[16], &qword_27F4E20B8);
  sub_25237153C(v86, v87 + v88[20], &qword_27F4E20B0);
  sub_252372288(v119, &qword_27F4E20B0);
  sub_252372288(v85, &qword_27F4E20B8);
  sub_252372288(v118, &qword_27F4E20C0);
  sub_252372288(v86, &qword_27F4E20B0);
  sub_252372288(v84, &qword_27F4E20B8);
  return sub_252372288(v80, &qword_27F4E20C0);
}

uint64_t sub_252551F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s10ThermostatV16StateControlViewVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = &v9[*(v10 + 24)];
  v15[15] = 0;
  sub_2526924D0();
  v12 = v16;
  *v11 = v15[16];
  *(v11 + 1) = v12;
  v13 = type metadata accessor for AccessoryControl(0);
  if ((*(*(v13 - 8) + 48))(a1, 1, v13) == 1)
  {
    sub_252372288(a1, &qword_27F4DB120);

    return (*(v7 + 56))(a3, 1, 1, v6);
  }

  else
  {
    sub_2525546BC(a1, v9, type metadata accessor for AccessoryControl);
    *&v9[*(v6 + 20)] = a2;
    sub_252554744(v9, a3, _s10ThermostatV16StateControlViewVMa);
    (*(v7 + 56))(a3, 0, 1, v6);
    return sub_252554D04(v9, _s10ThermostatV16StateControlViewVMa);
  }
}

double sub_252552108()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - v2;
  v4 = sub_2526910F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0 + *(_s10ThermostatVMa(0) + 24);
  v22 = *(v8 + 64);
  v9 = *(v8 + 48);
  v21[2] = *(v8 + 32);
  v21[3] = v9;
  v10 = *(v8 + 16);
  v21[0] = *v8;
  v21[1] = v10;
  if ((v22 & 0x100) != 0)
  {
    v11 = *(v8 + 48);
    v18[2] = *(v8 + 32);
    v19 = v11;
    v20 = *(v8 + 64);
    v12 = *(v8 + 16);
    v18[0] = *v8;
    v18[1] = v12;
  }

  else
  {

    sub_252692F00();
    v13 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v21, &qword_27F4DC120);
    (*(v5 + 8))(v7, v4);
  }

  if (BYTE1(v19) != 1)
  {
    return 40.0;
  }

  v14 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
  sub_25237153C(v0 + *(v14 + 24), v3, &qword_27F4DB120);
  v15 = type metadata accessor for AccessoryControl(0);
  if ((*(*(v15 - 8) + 48))(v3, 1, v15) == 1)
  {
    v16 = 40.0;
  }

  else
  {
    v16 = 0.0;
  }

  sub_252372288(v3, &qword_27F4DB120);
  return v16;
}

double sub_25255239C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - v2;
  v4 = sub_2526910F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0 + *(_s10ThermostatVMa(0) + 24);
  v22 = *(v8 + 64);
  v9 = *(v8 + 48);
  v21[2] = *(v8 + 32);
  v21[3] = v9;
  v10 = *(v8 + 16);
  v21[0] = *v8;
  v21[1] = v10;
  if ((v22 & 0x100) != 0)
  {
    v11 = *(v8 + 48);
    v18[2] = *(v8 + 32);
    v19 = v11;
    v20 = *(v8 + 64);
    v12 = *(v8 + 16);
    v18[0] = *v8;
    v18[1] = v12;
  }

  else
  {

    sub_252692F00();
    v13 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v21, &qword_27F4DC120);
    (*(v5 + 8))(v7, v4);
  }

  if (BYTE1(v19) != 1)
  {
    return 40.0;
  }

  v14 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
  sub_25237153C(v0 + *(v14 + 24), v3, &qword_27F4DB120);
  v15 = type metadata accessor for AccessoryControl(0);
  if ((*(*(v15 - 8) + 48))(v3, 1, v15) == 1)
  {
    v16 = 40.0;
  }

  else
  {
    v16 = -20.0;
  }

  sub_252372288(v3, &qword_27F4DB120);
  return v16;
}

uint64_t sub_252552634@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C70);
  MEMORY[0x28223BE20](v56);
  v55 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v57 = &v51 - v4;
  v5 = type metadata accessor for ThermostatControlView();
  v59 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = *(type metadata accessor for AccessoryControl(0) + 20);
  v54 = v1;
  sub_252554744(v1 + v21, v10, type metadata accessor for AccessoryControl.State);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v22 = *(v10 + 5);
    v67 = *(v10 + 4);
    v68 = v22;
    v69 = *(v10 + 48);
    v23 = *(v10 + 1);
    v63 = *v10;
    v64 = v23;
    v24 = *(v10 + 3);
    v65 = *(v10 + 2);
    v66 = v24;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270) + 48);
    v52 = v5;
    sub_2523714D4(&v10[v25], v20, &qword_27F4DB278);
    v51 = v7;
    v26 = v20;
    v53 = v20;
    sub_25237153C(v20, v17, &qword_27F4DB278);
    v27 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    sub_2523714D4(v17, v28 + v27, &qword_27F4DB278);
    sub_25237153C(v26, v14, &qword_27F4DB278);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    sub_2523714D4(v14, v29 + v27, &qword_27F4DB278);
    v30 = (v29 + ((v27 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v30 = 0;
    v30[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258);
    v31 = v51;
    sub_2526926E0();
    v54 = *(v54 + *(_s10ThermostatV22TemperatureControlViewVMa(0) + 20));
    v32 = v52;
    v33 = v31 + v52[8];
    *v33 = swift_getKeyPath();
    *(v33 + 8) = 0;
    v34 = v31 + v32[9];
    KeyPath = swift_getKeyPath();
    v70 = 0;
    *v34 = KeyPath;
    *(v34 + 65) = 0;
    v36 = (v31 + v32[10]);
    type metadata accessor for AccessoryControlLegacyViewModel();
    sub_2525553C4(&qword_27F4E0C50, type metadata accessor for AccessoryControlLegacyViewModel);
    *v36 = sub_252690DF0();
    v36[1] = v37;
    v38 = (v31 + v32[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C60);
    swift_allocObject();
    v60 = sub_25262576C(0x406F400000000000, 0);
    sub_2526924D0();
    v39 = v62;
    *v38 = v61;
    v38[1] = v39;
    v40 = v31 + v32[12];
    v41 = _s9KnobStateOMa(0);
    v42 = *(*(v41 - 8) + 56);
    v43 = v57;
    v42(v57, 1, 1, v41);
    sub_25237153C(v43, v55, &qword_27F4E0C70);
    sub_2526924D0();
    sub_252372288(v43, &qword_27F4E0C70);
    sub_252372288(v53, &qword_27F4DB278);
    v44 = v31 + v32[5];
    v45 = v68;
    *(v44 + 64) = v67;
    *(v44 + 80) = v45;
    *(v44 + 96) = v69;
    v46 = v64;
    *v44 = v63;
    *(v44 + 16) = v46;
    v47 = v66;
    *(v44 + 32) = v65;
    *(v44 + 48) = v47;
    v42(v43, 1, 1, v41);
    sub_252372288(v40, &qword_27F4E0C28);
    *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28) + 28)) = 0;
    sub_2523714D4(v43, v40, &qword_27F4E0C70);
    v48 = v31 + v32[13];
    *v48 = 0;
    *(v48 + 8) = 0;
    *(v31 + v32[6]) = v54;
    *(v31 + v32[7]) = 1;
    v49 = v58;
    sub_2525546BC(v31, v58, type metadata accessor for ThermostatControlView);
    return (*(v59 + 56))(v49, 0, 1, v32);
  }

  else
  {
    sub_252554D04(v10, type metadata accessor for AccessoryControl.State);
    return (*(v59 + 56))(v58, 1, 1, v5);
  }
}

uint64_t sub_252552D3C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for MenuPickerControlView();
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  *&v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AccessoryControl(0);
  sub_252554744(v1 + *(v20 + 20), v7, type metadata accessor for AccessoryControl.State);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0);
    v36 = v2;
    v22 = *(v21 + 48);
    sub_2525546BC(v7, v19, type metadata accessor for AccessoryControl.PickerViewConfig);
    sub_2523714D4(&v7[v22], v16, &qword_27F4DAD68);
    sub_252554744(v19, v4, type metadata accessor for AccessoryControl.PickerViewConfig);
    sub_25237153C(v16, v13, &qword_27F4DAD68);
    v23 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    sub_2523714D4(v13, v24 + v23, &qword_27F4DAD68);
    sub_25237153C(v16, v10, &qword_27F4DAD68);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    sub_2523714D4(v10, v25 + v23, &qword_27F4DAD68);
    v26 = (v25 + ((v23 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = 0;
    v26[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3C8);
    sub_2526926E0();
    sub_252372288(v16, &qword_27F4DAD68);
    sub_252554D04(v19, type metadata accessor for AccessoryControl.PickerViewConfig);
    v37 = v40;
    v27 = v41;
    LOBYTE(v23) = v42;
    KeyPath = swift_getKeyPath();
    v43 = 0;
    v29 = v36;
    v30 = &v4[*(v36 + 20)];
    *v30 = v37;
    *(v30 + 2) = v27;
    v30[24] = v23;
    v31 = v29;
    v32 = &v4[*(v29 + 24)];
    *v32 = KeyPath;
    v32[65] = 0;
    v33 = v39;
    sub_2525546BC(v4, v39, type metadata accessor for MenuPickerControlView);
    return (*(v38 + 56))(v33, 0, 1, v31);
  }

  else
  {
    sub_252554D04(v7, type metadata accessor for AccessoryControl.State);
    return (*(v38 + 56))(v39, 1, 1, v2);
  }
}

uint64_t sub_252553210@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v61 = _s10ThermostatV16StateControlViewVMa(0);
  v56 = *(v61 - 8);
  v2 = *(v56 + 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for AutoClimateControlView(0);
  MEMORY[0x28223BE20](v59);
  v58 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2130);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = &v52 - v5;
  v6 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for AccessoryControl(0);
  sub_252554744(v1 + *(v19 + 20), v8, type metadata accessor for AccessoryControl.State);
  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v20 = *(v8 + 1);
    v69 = *v8;
    v70 = v20;
    v71 = *(v8 + 2);
    v72 = *(v8 + 6);
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0) + 48);
    v53 = v2;
    sub_2523714D4(&v8[v21], v18, &qword_27F4DB2F8);
    v22 = *(v61 + 20);
    v52 = v1;
    v54 = *(v1 + v22);
    v55 = v18;
    sub_25237153C(v18, v15, &qword_27F4DB2F8);
    v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    sub_2523714D4(v15, v24 + v23, &qword_27F4DB2F8);
    sub_25237153C(v18, v12, &qword_27F4DB2F8);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    sub_2523714D4(v12, v25 + v23, &qword_27F4DB2F8);
    v26 = (v25 + ((v23 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = 0;
    v26[1] = 0;
    v27 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E8);
    v28 = v58;
    sub_2526926E0();
    v29 = v52;
    v30 = v57;
    sub_252554744(v52, v57, _s10ThermostatV16StateControlViewVMa);
    v31 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v32 = v31 + v53;
    v33 = swift_allocObject();
    v56 = _s10ThermostatV16StateControlViewVMa;
    sub_2525546BC(v30, v33 + v31, _s10ThermostatV16StateControlViewVMa);
    *v28 = v54;
    v34 = v28 + v27[6];
    *(v34 + 6) = v72;
    v35 = v71;
    *(v34 + 1) = v70;
    *(v34 + 2) = v35;
    *v34 = v69;
    v36 = (v28 + v27[7]);
    *v36 = sub_252554DB4;
    v36[1] = v33;
    v37 = v28 + v27[8];
    v65 = 0;
    sub_2523A9C08(&v69, v67);
    sub_2526924D0();
    v38 = v67[1];
    *v37 = v67[0];
    *(v37 + 1) = v38;
    v39 = v29 + *(v61 + 24);
    LOBYTE(v38) = *v39;
    v40 = *(v39 + 8);
    v65 = v38;
    v66 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
    sub_252692500();
    LODWORD(v61) = v68;
    sub_252554744(v29, v30, _s10ThermostatV16StateControlViewVMa);
    v41 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    sub_2525546BC(v30, v42 + v31, v56);
    v43 = v42 + v41;
    v44 = v70;
    *v43 = v69;
    *(v43 + 16) = v44;
    *(v43 + 32) = v71;
    *(v43 + 48) = v72;
    sub_2523A9C08(&v69, v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2138);
    sub_2525553C4(&qword_27F4E2140, type metadata accessor for AutoClimateControlView);
    sub_252400FC8(&qword_27F4E2148, &qword_27F4E2138);
    v45 = v60;
    sub_252692150();

    sub_2523E1608(&v69);
    sub_252554D04(v28, type metadata accessor for AutoClimateControlView);
    sub_252372288(v55, &qword_27F4DB2F8);
    v47 = v62;
    v46 = v63;
    (*(v62 + 32))(v64, v45, v63);
    v48 = 0;
    v49 = v46;
    v50 = v47;
  }

  else
  {
    sub_252554D04(v8, type metadata accessor for AccessoryControl.State);
    v48 = 1;
    v50 = v62;
    v49 = v63;
  }

  return (*(v50 + 56))(v64, v48, 1, v49);
}

uint64_t sub_252553A00()
{
  _s10ThermostatV16StateControlViewVMa(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320);
  sub_2526924E0();
  sub_2526924F0();
}

uint64_t sub_252553AAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v111 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  MEMORY[0x28223BE20](v4 - 8);
  v97 = &v88 - v5;
  v101 = sub_2526904A0();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v94 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ThermostatAutomationSettingsView(0);
  MEMORY[0x28223BE20](v96);
  v95 = (&v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  MEMORY[0x28223BE20](v8 - 8);
  v98 = (&v88 - v9);
  v10 = sub_252690490();
  v106 = *(v10 - 8);
  v107 = v10;
  v11 = *(v106 + 64);
  MEMORY[0x28223BE20](v10);
  v93 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v102 = &v88 - v13;
  MEMORY[0x28223BE20](v14);
  v99 = &v88 - v15;
  v16 = sub_25268EE60();
  v104 = *(v16 - 8);
  v105 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v103 = &v88 - v20;
  v21 = sub_25268F890();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_25268F610();
  v108 = *(v25 - 8);
  v109 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v110 = &v88 - v29;
  v30 = type metadata accessor for AccessoryControl.ElementIdentifier();
  MEMORY[0x28223BE20](v30);
  v32 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a1 + 41);
  sub_252554744(v2, v32, type metadata accessor for AccessoryControl.ElementIdentifier);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v92 = v33;
    v34 = *v32;
    v35 = *(v32 + 4);
    v36 = sub_25268E1B0();
    v37 = sub_25268E1A0();
    sub_25268E150();

    v38 = sub_25268F870();
    (*(v22 + 8))(v24, v21);
    if (*(v38 + 16) && (v39 = sub_252372350(v34), (v40 & 1) != 0))
    {
      v91 = v36;
      v42 = v108;
      v41 = v109;
      (*(v108 + 16))(v27, *(v38 + 56) + *(v108 + 72) * v39, v109);

      v43 = v110;
      (*(v42 + 32))(v110, v27, v41);
      v44 = sub_25268F600();
      if (*(v44 + 16) && (v45 = sub_252367690(v35), (v46 & 1) != 0))
      {
        v48 = v104;
        v47 = v105;
        (*(v104 + 16))(v18, *(v44 + 56) + *(v104 + 72) * v45, v105);

        v49 = v103;
        (*(v48 + 32))(v103, v18, v47);
        v50 = v98;
        sub_25268ED40();
        v52 = v106;
        v51 = v107;
        if ((*(v106 + 48))(v50, 1, v107) != 1)
        {
          v89 = *(v52 + 32);
          v90 = v52 + 32;
          v54 = v99;
          v89(v99, v50, v51);
          v98 = *(v52 + 16);
          v98(v102, v54, v51);
          v55 = v100;
          v56 = v94;
          (*(v100 + 104))();
          KeyPath = swift_getKeyPath();
          v58 = v95;
          *v95 = KeyPath;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
          swift_storeEnumTagMultiPayload();
          v59 = v96;
          v60 = (v58 + *(v96 + 20));
          sub_25268E1A0();
          sub_2525553C4(&qword_27F4DFA20, MEMORY[0x277D15458]);
          *v60 = sub_252690AD0();
          v60[1] = v61;
          v62 = v59[6];
          sub_25268DF30();
          *(v58 + v62) = sub_25268DF20();
          v91 = v59[7];
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA28);
          sub_2526907D0();
          v63 = v58 + v59[8];
          v114 = 0;
          v112 = 0u;
          v113 = 0u;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA30);
          sub_2526924D0();
          v64 = v117;
          v65 = v118;
          v66 = v116;
          *v63 = v115;
          *(v63 + 1) = v66;
          v63[32] = v64;
          *(v63 + 5) = v65;
          v67 = v58 + v59[9];
          LOBYTE(v112) = 2;
          sub_2526924D0();
          v68 = *(&v115 + 1);
          *v67 = v115;
          *(v67 + 1) = v68;
          v69 = v58 + v59[10];
          LOBYTE(v112) = 0;
          sub_2526924D0();
          v70 = *(&v115 + 1);
          *v69 = v115;
          *(v69 + 1) = v70;
          v71 = v58 + v59[11];
          LOBYTE(v112) = 0;
          sub_2526924D0();
          v72 = *(&v115 + 1);
          *v71 = v115;
          *(v71 + 1) = v72;
          v73 = v58 + v59[12];
          LOBYTE(v112) = 0;
          sub_2526924D0();
          v74 = *(&v115 + 1);
          *v73 = v115;
          *(v73 + 1) = v74;
          v75 = (v58 + v59[16]);
          *(v58 + v59[14]) = v92;
          v76 = *(v55 + 16);
          v77 = v56;
          v78 = v101;
          v76(v58 + v59[15], v56, v101);
          *v75 = 0;
          v75[1] = 0;
          v79 = v102;
          sub_252690400();
          v80 = v93;
          v81 = v107;
          v98(v93, v79, v107);
          v82 = v106;
          v83 = (*(v106 + 80) + 16) & ~*(v106 + 80);
          v84 = swift_allocObject();
          v89((v84 + v83), v80, v81);
          v85 = v97;
          sub_2526907D0();
          (*(v100 + 8))(v77, v78);
          v86 = *(v82 + 8);
          v86(v102, v81);
          sub_2524D9B14(v85, v58 + v91);
          sub_2525553C4(&qword_27F4E2150, type metadata accessor for ThermostatAutomationSettingsView);
          v87 = sub_252692690();
          v86(v99, v81);
          (*(v104 + 8))(v103, v105);
          (*(v108 + 8))(v110, v109);
          result = v87;
          goto LABEL_12;
        }

        (*(v48 + 8))(v49, v47);
        (*(v42 + 8))(v110, v41);
        sub_252372288(v50, &qword_27F4DB250);
      }

      else
      {

        (*(v42 + 8))(v43, v41);
      }
    }

    else
    {
    }
  }

  else
  {
    sub_252554D04(v32, type metadata accessor for AccessoryControl.ElementIdentifier);
  }

  result = sub_252692690();
LABEL_12:
  *v111 = result;
  return result;
}

uint64_t sub_2525546BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252554744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_252554838(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t))
{
  a4(319);
  if (v10 <= 0x3F)
  {
    sub_252475A70(319, a5, a6, a7);
    if (v11 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_8Tm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2525549EC()
{
  result = type metadata accessor for AccessoryControl(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_252554A60()
{
  result = qword_27F4E2108;
  if (!qword_27F4E2108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2098);
    sub_252554B74(&qword_27F4E2110, &qword_27F4E2088, &unk_2526A67F8, sub_252554B44);
    sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2108);
  }

  return result;
}

uint64_t sub_252554B74(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_252554BF8()
{
  result = qword_27F4E2120;
  if (!qword_27F4E2120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2078);
    sub_252400FC8(&qword_27F4E2128, &qword_27F4E2070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2120);
  }

  return result;
}

uint64_t sub_252554D04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252554DB4()
{
  _s10ThermostatV16StateControlViewVMa(0);

  return sub_252553A00();
}

uint64_t sub_252554ED8@<X0>(void *a1@<X8>)
{
  result = sub_252553AAC(*(v1 + 24), &v4);
  *a1 = v4;
  return result;
}

uint64_t sub_252554F18@<X0>(uint64_t *a1@<X8>)
{
  sub_252690490();

  return sub_2524CD4CC(a1);
}

uint64_t sub_252554FB0(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a3(v5, v6, v7);
}

uint64_t sub_25255505C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = (v4 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a4(a1, v8, v9, v4 + v7, v11, v12);
}

unint64_t sub_252555118()
{
  result = qword_27F4E2158;
  if (!qword_27F4E2158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2160);
    sub_2525553C4(&qword_27F4E2168, type metadata accessor for MenuPickerControlView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2158);
  }

  return result;
}

unint64_t sub_2525551CC()
{
  result = qword_27F4E2170;
  if (!qword_27F4E2170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2178);
    type metadata accessor for AutoClimateControlView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2138);
    sub_2525553C4(&qword_27F4E2140, type metadata accessor for AutoClimateControlView);
    sub_252400FC8(&qword_27F4E2148, &qword_27F4E2138);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2170);
  }

  return result;
}

unint64_t sub_252555310()
{
  result = qword_27F4E2180;
  if (!qword_27F4E2180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2188);
    sub_2525553C4(&qword_27F4E2190, type metadata accessor for ThermostatControlView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2180);
  }

  return result;
}

uint64_t sub_2525553C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252555410()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ToolbarControlView(0) + 28));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_252692F00();
    v8 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_252555560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  v157 = a1;
  v2 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);
  MEMORY[0x28223BE20](v2 - 8);
  v126 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E21E8);
  MEMORY[0x28223BE20](v140);
  v141 = &v113 - v4;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E21F0);
  MEMORY[0x28223BE20](v134);
  v137 = &v113 - v5;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E21F8);
  MEMORY[0x28223BE20](v139);
  v138 = &v113 - v6;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2200);
  MEMORY[0x28223BE20](v155);
  v142 = &v113 - v7;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2208);
  MEMORY[0x28223BE20](v135);
  v125 = &v113 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
  MEMORY[0x28223BE20](v9 - 8);
  v124 = &v113 - v10;
  v11 = type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);
  MEMORY[0x28223BE20](v11 - 8);
  v123 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ControlAction(0);
  v119 = *(v13 - 8);
  v14 = *(v119 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v120 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v122 = &v113 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2210);
  MEMORY[0x28223BE20](v132);
  v133 = &v113 - v17;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2218);
  MEMORY[0x28223BE20](v150);
  v136 = &v113 - v18;
  v19 = type metadata accessor for ToolbarControlView(0);
  v129 = *(v19 - 8);
  v20 = *(v129 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v130 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2220);
  v144 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v143 = &v113 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  v114 = *(v22 - 8);
  v23 = *(v114 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v115 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v121 = &v113 - v25;
  v26 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v26 - 8);
  v145 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2228);
  MEMORY[0x28223BE20](v131);
  v118 = &v113 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0);
  MEMORY[0x28223BE20](v29 - 8);
  v117 = &v113 - v30;
  v31 = type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0);
  MEMORY[0x28223BE20](v31 - 8);
  v116 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2230);
  MEMORY[0x28223BE20](v152);
  v154 = &v113 - v33;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2238);
  MEMORY[0x28223BE20](v146);
  v148 = &v113 - v34;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2240);
  MEMORY[0x28223BE20](v127);
  v36 = &v113 - v35;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2248);
  MEMORY[0x28223BE20](v147);
  v128 = &v113 - v37;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2250);
  MEMORY[0x28223BE20](v153);
  v149 = &v113 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2258);
  MEMORY[0x28223BE20](v39);
  v41 = &v113 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v113 - v43;
  v45 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v113 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v48);
  v50 = &v113 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AccessoryControl(0);
  sub_25255A390(v157 + *(v51 + 20), v50, type metadata accessor for AccessoryControl.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);
          sub_25255A3F8(v50, v47, type metadata accessor for AccessoryControl.PickerViewConfig);
          sub_2523714D4(&v50[v53], v44, &qword_27F4DAD68);
          sub_25255A390(v47, v41, type metadata accessor for AccessoryControl.PickerViewConfig);
          v54 = type metadata accessor for ToolbarControlView.PickerView(0);
          sub_25237153C(v44, &v41[*(v54 + 20)], &qword_27F4DAD68);
          v55 = v157;
          *&v41[*(v54 + 24)] = sub_252555410();
          sub_25255A390(v55, &v41[*(v39 + 52)], type metadata accessor for AccessoryControl);
          sub_25237153C(v41, v36, &qword_27F4E2258);
          swift_storeEnumTagMultiPayload();
          sub_252400FC8(&qword_27F4E2288, &qword_27F4E2258);
          sub_252400FC8(&qword_27F4E2290, &qword_27F4E2228);
          v56 = v128;
          sub_252691470();
          sub_25237153C(v56, v148, &qword_27F4E2248);
          swift_storeEnumTagMultiPayload();
          sub_25255A174();
          sub_25255A254();
          v57 = v149;
          sub_252691470();
          sub_252372288(v56, &qword_27F4E2248);
          sub_25237153C(v57, v154, &qword_27F4E2250);
          swift_storeEnumTagMultiPayload();
          sub_25255A0E8();
          sub_25255A304();
          sub_252691470();
          sub_252372288(v57, &qword_27F4E2250);
          sub_252372288(v41, &qword_27F4E2258);
          sub_252372288(v44, &qword_27F4DAD68);
          v58 = type metadata accessor for AccessoryControl.PickerViewConfig;
LABEL_12:
          v66 = v58;
          v67 = v47;
          return sub_25255B2F8(v67, v66);
        }

        goto LABEL_13;
      }

      v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB420) + 48);
      v91 = v145;
      sub_25255A3F8(v50, v145, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v92 = v122;
      sub_25255A3F8(&v50[v90], v122, type metadata accessor for ControlAction);
      v93 = v120;
      sub_25255A390(v92, v120, type metadata accessor for ControlAction);
      v94 = (*(v119 + 80) + 16) & ~*(v119 + 80);
      v95 = swift_allocObject();
      v96 = sub_25255A3F8(v93, v95 + v94, type metadata accessor for ControlAction);
      MEMORY[0x28223BE20](v96);
      *(&v113 - 2) = v91;
      type metadata accessor for ToolbarControlView.CircularButtonView(0);
      sub_25255A7EC(&qword_27F4E22A8, type metadata accessor for ToolbarControlView.CircularButtonView);
      v97 = v143;
      sub_252692550();
      v98 = v144;
      v99 = v151;
      (*(v144 + 16))(v133, v97, v151);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4E2270, &qword_27F4E2220);
      v100 = v136;
      sub_252691470();
      sub_25237153C(v100, v148, &qword_27F4E2218);
      swift_storeEnumTagMultiPayload();
      sub_25255A174();
      sub_25255A254();
      v101 = v149;
      sub_252691470();
      sub_252372288(v100, &qword_27F4E2218);
      sub_25237153C(v101, v154, &qword_27F4E2250);
      swift_storeEnumTagMultiPayload();
      sub_25255A0E8();
      sub_25255A304();
      sub_252691470();
      sub_252372288(v101, &qword_27F4E2250);
      (*(v98 + 8))(v97, v99);
      sub_25255B2F8(v92, type metadata accessor for ControlAction);
    }

    else
    {
      v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);
      v69 = v145;
      sub_25255A3F8(v50, v145, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v70 = v121;
      sub_2523714D4(&v50[v68], v121, &qword_27F4DAD80);
      v71 = v115;
      sub_25237153C(v70, v115, &qword_27F4DAD80);
      v72 = v130;
      sub_25255A390(v157, v130, type metadata accessor for ToolbarControlView);
      v73 = (*(v114 + 80) + 16) & ~*(v114 + 80);
      v74 = (v23 + *(v129 + 80) + v73) & ~*(v129 + 80);
      v75 = swift_allocObject();
      sub_2523714D4(v71, v75 + v73, &qword_27F4DAD80);
      v76 = sub_25255A3F8(v72, v75 + v74, type metadata accessor for ToolbarControlView);
      MEMORY[0x28223BE20](v76);
      *(&v113 - 2) = v69;
      *(&v113 - 1) = v70;
      type metadata accessor for ToolbarControlView.CircularButtonView(0);
      sub_25255A7EC(&qword_27F4E22A8, type metadata accessor for ToolbarControlView.CircularButtonView);
      v77 = v143;
      sub_252692550();
      v78 = v144;
      v79 = v151;
      (*(v144 + 16))(v133, v77, v151);
      swift_storeEnumTagMultiPayload();
      sub_252400FC8(&qword_27F4E2270, &qword_27F4E2220);
      v80 = v136;
      sub_252691470();
      sub_25237153C(v80, v148, &qword_27F4E2218);
      swift_storeEnumTagMultiPayload();
      sub_25255A174();
      sub_25255A254();
      v81 = v149;
      sub_252691470();
      sub_252372288(v80, &qword_27F4E2218);
      sub_25237153C(v81, v154, &qword_27F4E2250);
      swift_storeEnumTagMultiPayload();
      sub_25255A0E8();
      sub_25255A304();
      sub_252691470();
      sub_252372288(v81, &qword_27F4E2250);
      (*(v78 + 8))(v77, v79);
      sub_252372288(v70, &qword_27F4DAD80);
    }

    v66 = type metadata accessor for AccessoryControl.BinaryViewConfig;
    v67 = v145;
    return sub_25255B2F8(v67, v66);
  }

  if (EnumCaseMultiPayload == 4)
  {
    v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F8) + 48);
    v47 = v116;
    sub_25255A3F8(v50, v116, type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig);
    v83 = v117;
    sub_2523714D4(&v50[v82], v117, &qword_27F4DB3E0);
    v84 = v118;
    sub_25255A390(v47, v118, type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig);
    v85 = type metadata accessor for ToolbarControlView.MultiPickerView(0);
    sub_25237153C(v83, v84 + *(v85 + 20), &qword_27F4DB3E0);
    v86 = v157;
    *(v84 + *(v85 + 24)) = sub_252555410();
    sub_25255A390(v86, v84 + *(v131 + 52), type metadata accessor for AccessoryControl);
    sub_25237153C(v84, v36, &qword_27F4E2228);
    swift_storeEnumTagMultiPayload();
    sub_252400FC8(&qword_27F4E2288, &qword_27F4E2258);
    sub_252400FC8(&qword_27F4E2290, &qword_27F4E2228);
    v87 = v128;
    sub_252691470();
    sub_25237153C(v87, v148, &qword_27F4E2248);
    swift_storeEnumTagMultiPayload();
    sub_25255A174();
    sub_25255A254();
    v88 = v149;
    sub_252691470();
    sub_252372288(v87, &qword_27F4E2248);
    sub_25237153C(v88, v154, &qword_27F4E2250);
    swift_storeEnumTagMultiPayload();
    sub_25255A0E8();
    sub_25255A304();
    sub_252691470();
    sub_252372288(v88, &qword_27F4E2250);
    sub_252372288(v84, &qword_27F4E2228);
    sub_252372288(v83, &qword_27F4DB3E0);
    v58 = type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 13)
  {
    v102 = v126;
    sub_25255A3F8(v50, v126, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig);
    v103 = v130;
    sub_25255A390(v157, v130, type metadata accessor for ToolbarControlView);
    v104 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v105 = swift_allocObject();
    v106 = sub_25255A3F8(v103, v105 + v104, type metadata accessor for ToolbarControlView);
    MEMORY[0x28223BE20](v106);
    *(&v113 - 2) = v102;
    type metadata accessor for ToolbarControlView.CircularButtonView(0);
    sub_25255A7EC(&qword_27F4E22A8, type metadata accessor for ToolbarControlView.CircularButtonView);
    v107 = v143;
    sub_252692550();
    v108 = v144;
    v109 = v151;
    (*(v144 + 16))(v137, v107, v151);
    swift_storeEnumTagMultiPayload();
    sub_252400FC8(&qword_27F4E2268, &qword_27F4E2208);
    sub_252400FC8(&qword_27F4E2270, &qword_27F4E2220);
    v110 = v138;
    sub_252691470();
    sub_25237153C(v110, v141, &qword_27F4E21F8);
    swift_storeEnumTagMultiPayload();
    sub_25255A004();
    v111 = v142;
    sub_252691470();
    sub_252372288(v110, &qword_27F4E21F8);
    sub_25237153C(v111, v154, &qword_27F4E2200);
    swift_storeEnumTagMultiPayload();
    sub_25255A0E8();
    sub_25255A304();
    sub_252691470();
    sub_252372288(v111, &qword_27F4E2200);
    (*(v108 + 8))(v107, v109);
    v66 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig;
    v67 = v102;
    return sub_25255B2F8(v67, v66);
  }

  if (EnumCaseMultiPayload != 14)
  {
LABEL_13:
    swift_storeEnumTagMultiPayload();
    sub_25255A004();
    v89 = v142;
    sub_252691470();
    sub_25237153C(v89, v154, &qword_27F4E2200);
    swift_storeEnumTagMultiPayload();
    sub_25255A0E8();
    sub_25255A304();
    sub_252691470();
    sub_252372288(v89, &qword_27F4E2200);
    v66 = type metadata accessor for AccessoryControl.State;
    v67 = v50;
    return sub_25255B2F8(v67, v66);
  }

  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB348) + 48);
  v60 = v123;
  sub_25255A3F8(v50, v123, type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig);
  v61 = v124;
  sub_2523714D4(&v50[v59], v124, &qword_27F4DB350);
  v62 = v125;
  sub_25255A390(v60, v125, type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig);
  v63 = _s21AutoClimatePickerViewVMa();
  sub_25237153C(v61, v62 + *(v63 + 20), &qword_27F4DB350);
  sub_25255A390(v157, v62 + *(v135 + 52), type metadata accessor for AccessoryControl);
  sub_25237153C(v62, v137, &qword_27F4E2208);
  swift_storeEnumTagMultiPayload();
  sub_252400FC8(&qword_27F4E2268, &qword_27F4E2208);
  sub_252400FC8(&qword_27F4E2270, &qword_27F4E2220);
  v64 = v138;
  sub_252691470();
  sub_25237153C(v64, v141, &qword_27F4E21F8);
  swift_storeEnumTagMultiPayload();
  sub_25255A004();
  v65 = v142;
  sub_252691470();
  sub_252372288(v64, &qword_27F4E21F8);
  sub_25237153C(v65, v154, &qword_27F4E2200);
  swift_storeEnumTagMultiPayload();
  sub_25255A0E8();
  sub_25255A304();
  sub_252691470();
  sub_252372288(v65, &qword_27F4E2200);
  sub_252372288(v62, &qword_27F4E2208);
  sub_252372288(v61, &qword_27F4DB350);
  v66 = type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig;
  v67 = v60;
  return sub_25255B2F8(v67, v66);
}

uint64_t sub_2525572DC(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
  v6 = a1 + *(result + 40);
  v7 = *(v6 + 32);
  if (v7 != 1)
  {
    v8 = result;
    v9 = *(v6 + 24);
    v10 = *(v6 + 8);
    v11 = ~*v6 & 1;
    v12 = *(v6 + 16) & 1;

    v13 = sub_252555410();
    v17[0] = v11;
    v17[1] = v10;
    v17[2] = v12;
    v17[3] = v9;
    v17[4] = v7;
    MEMORY[0x28223BE20](v13);
    *(&v16 - 2) = v17;
    v15 = sub_252372354(sub_252550DC8, (&v16 - 4), v14);
    static AccessoryControl.WriteSpecification.merge(writeSpecifications:)(v15, v4);

    sub_2523FEEC8(a1 + *(v8 + 36), v4, sub_25255C0A0, v13);

    return sub_25255B2F8(v4, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  return result;
}

uint64_t sub_252557484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_25237153C(a1, &v11 - v7, &qword_27F4DAD88);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80) + 40));
  LOBYTE(a2) = (v9[4] != 1) & *v9;
  sub_2523714D4(v8, a3, &qword_27F4DAD88);
  result = type metadata accessor for ToolbarControlView.CircularButtonView(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_25255757C(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ControlAction.setBlockWriteSpecifications()(v4);
  v5 = type metadata accessor for ControlAction(0);
  sub_2523FEEC8(a1 + *(v5 + 20), v4, 0, 0);
  return sub_25255B2F8(v4, type metadata accessor for AccessoryControl.WriteSpecification);
}

uint64_t sub_252557628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E21C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = (a1 + *(type metadata accessor for ToolbarControlView(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  v16 = *v5;
  v17 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E22B0);
  sub_2526924E0();
  v8 = v14;
  swift_getKeyPath();
  v16 = v8;
  sub_25255A7EC(&qword_27F4E22B8, type metadata accessor for ToolbarControlView.ModalControlViewPresenter);
  sub_25268DB30();

  v9 = OBJC_IVAR____TtCV22HomeAccessoryControlUI18ToolbarControlView25ModalControlViewPresenter__viewConfig;
  swift_beginAccess();
  sub_25237153C(v8 + v9, v4, &qword_27F4E21C0);

  v10 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);
  LODWORD(v9) = (*(*(v10 - 8) + 48))(v4, 1, v10);
  result = sub_252372288(v4, &qword_27F4E21C0);
  if (v9 != 1)
  {
    v14 = v6;
    v15 = v7;
    sub_2526924E0();
    v12 = v13;
    swift_getKeyPath();
    v14 = v12;
    sub_25268DB30();

    v14 = v12;
    swift_getKeyPath();
    sub_25268DB50();

    *(v12 + 16) = (*(v12 + 16) & 1) == 0;
    v14 = v12;
    swift_getKeyPath();
    sub_25268DB40();
  }

  return result;
}

uint64_t sub_2525578C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_25255A7EC(&qword_27F4E22B8, type metadata accessor for ToolbarControlView.ModalControlViewPresenter);
  sub_25268DB30();

  v3 = OBJC_IVAR____TtCV22HomeAccessoryControlUI18ToolbarControlView25ModalControlViewPresenter__viewConfig;
  swift_beginAccess();
  return sub_25237153C(v5 + v3, a1, &qword_27F4E21C0);
}

uint64_t sub_2525579A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  __swift_allocate_value_buffer(v0, qword_27F4FB4D0);
  v1 = __swift_project_value_buffer(v0, qword_27F4FB4D0);
  v2 = (v1 + *(v0 + 28));
  v3 = type metadata accessor for IconDescriptor();
  v4 = *(v3 + 20);
  v5 = *MEMORY[0x277D16588];
  v6 = sub_25268F910();
  (*(*(v6 - 8) + 104))(&v2[v4], v5, v6);
  *v2 = 0xD000000000000015;
  *(v2 + 1) = 0x80000002526B1810;
  v2[*(v3 + 24)] = 0;
  return sub_25255A390(v2, v1, type metadata accessor for IconDescriptor);
}

uint64_t sub_252557AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = sub_252691130();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2368);
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  MEMORY[0x28223BE20](v4);
  v25 = &v24 - v6;
  v7 = type metadata accessor for ToolbarControlView.PickerView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_25255A390(a1, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarControlView.PickerView);
  sub_252692E00();
  v10 = sub_252692DF0();
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_25255A3F8(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ToolbarControlView.PickerView);
  sub_25255A390(a1, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarControlView.PickerView);
  v14 = sub_252692DF0();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  sub_25255A3F8(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v11, type metadata accessor for ToolbarControlView.PickerView);
  sub_2526926E0();
  v17 = v33;
  v16 = v34;
  v18 = v35;
  sub_252691240();
  v33 = v17;
  v34 = v16;
  v35 = v18;
  v32 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1400);
  sub_2525308D0();
  v19 = v25;
  sub_2526925F0();
  v20 = v26;
  sub_252691120();
  sub_252400FC8(&qword_27F4E2378, &qword_27F4E2368);
  v21 = v29;
  v22 = v27;
  sub_252691E00();

  (*(v31 + 8))(v20, v21);
  return (*(v28 + 8))(v19, v22);
}

uint64_t sub_252557ED0@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for ToolbarControlView.PickerView(0) + 20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  v5 = 0;
  v6 = (v3 + *(result + 40));
  if ((v6[1] & 1) == 0)
  {
    v5 = *v6;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_252557F34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolbarControlView.PickerView(0);
  v10 = a4 + *(v9 + 20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  if ((*(v10 + *(result + 40) + 8) & 1) == 0)
  {
    v12 = result;
    v13 = *a1;
    v14 = *(a4 + *(v9 + 24));

    sub_25252AD14(v13, 0, v8);
    sub_2523FEEC8(v10 + *(v12 + 36), v8, sub_25255C0A0, v14);

    return sub_25255B2F8(v8, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  return result;
}

uint64_t sub_25255805C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1418);
  sub_252400FC8(&qword_27F4E1420, &qword_27F4E1410);
  swift_getOpaqueTypeConformance2();
  sub_252530998();
  return sub_2526927B0();
}

uint64_t sub_252558190()
{
  type metadata accessor for ToolbarControlView.CircularButtonView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2370);
  sub_25255A7EC(&qword_27F4E22A8, type metadata accessor for ToolbarControlView.CircularButtonView);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2368);
  sub_252691130();
  sub_252400FC8(&qword_27F4E2378, &qword_27F4E2368);
  swift_getOpaqueTypeConformance2();
  return sub_252691C20();
}

uint64_t sub_252558300(void *a1)
{
  v2 = type metadata accessor for ToolbarControlView.MultiPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = *a1;
  sub_25255A390(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarControlView.MultiPickerView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25255A3F8(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for ToolbarControlView.MultiPickerView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2348);
  sub_252400FC8(&qword_27F4E2358, &qword_27F4E2350);
  sub_252400FC8(&qword_27F4E2340, &qword_27F4E2348);
  sub_25255B570();
  return sub_2526927B0();
}

uint64_t sub_252558508@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v63 = a2;
  v73 = a3;
  v5 = sub_252691130();
  v6 = *(v5 - 8);
  v71 = v5;
  v72 = v6;
  MEMORY[0x28223BE20](v5);
  v67 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2368);
  v9 = *(v8 - 8);
  v69 = v8;
  v70 = v9;
  MEMORY[0x28223BE20](v8);
  v64 = &v56 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2370);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v56 - v13;
  v14 = type metadata accessor for ToolbarControlView.MultiPickerView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  v74 = *a1;
  v57 = v18;
  v19 = a1[2];
  v20 = a1[3];
  v62 = type metadata accessor for ToolbarControlView.MultiPickerView;
  sub_25255A390(a2, v17, type metadata accessor for ToolbarControlView.MultiPickerView);
  sub_252692E00();

  v21 = sub_252692DF0();
  v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v23 = (v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v21;
  *(v24 + 24) = v25;
  v61 = type metadata accessor for ToolbarControlView.MultiPickerView;
  sub_25255A3F8(v17, v24 + v22, type metadata accessor for ToolbarControlView.MultiPickerView);
  v26 = (v24 + v23);
  v27 = v74;
  v28 = v57;
  *v26 = v74;
  v26[1] = v28;
  v26[2] = v19;
  v26[3] = v20;
  v56 = v20;
  sub_25255A390(v63, v17, v62);

  v29 = sub_252692DF0();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = MEMORY[0x277D85700];
  sub_25255A3F8(v17, v30 + v22, v61);
  v31 = (v30 + v23);
  *v31 = v27;
  v31[1] = v28;
  v32 = v28;
  v33 = v56;
  v31[2] = v19;
  v31[3] = v33;
  sub_2526926E0();
  v34 = v80;
  v35 = v81;
  v36 = v82;

  sub_252691BB0();
  v60 = sub_252691D00();
  v59 = v37;
  LODWORD(v61) = v38;
  v62 = v39;

  sub_252691240();
  v63 = v34;
  v80 = v34;
  v81 = v35;
  v58 = v35;
  v82 = v36;
  v76 = v74;
  v77 = v32;
  v78 = v19;
  v79 = v33;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1400);
  sub_2525308D0();
  v40 = v64;
  sub_2526925F0();
  v41 = v67;
  sub_252691120();
  sub_252400FC8(&qword_27F4E2378, &qword_27F4E2368);
  v42 = v75;
  v43 = v69;
  v44 = v71;
  sub_252691E00();
  (*(v72 + 8))(v41, v44);
  (*(v70 + 8))(v40, v43);
  v45 = v66;
  v46 = *(v66 + 16);
  v47 = v65;
  v48 = v68;
  v46(v65, v42, v68);
  v49 = v73;
  v50 = v60;
  v51 = v59;
  *v73 = v60;
  v49[1] = v51;
  LOBYTE(v44) = v61 & 1;
  *(v49 + 16) = v61 & 1;
  v49[3] = v62;
  v52 = v49;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2380);
  v46(v52 + *(v53 + 48), v47, v48);
  sub_25235EABC(v50, v51, v44);

  v54 = *(v45 + 8);
  v54(v75, v48);
  v54(v47, v48);
  sub_2524228D8(v50, v51, v44);
}

uint64_t sub_252558C00@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v5 = a1 + *(type metadata accessor for ToolbarControlView.MultiPickerView(0) + 20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0);
  v7 = *(v5 + *(result + 40));
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    result = sub_252372350(a2);
    if (v9)
    {
      v8 = *(*(v7 + 56) + 8 * result);
      goto LABEL_6;
    }

LABEL_5:
    v8 = 0;
  }

LABEL_6:
  *a3 = v8;
  return result;
}

uint64_t sub_252558C88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolbarControlView.MultiPickerView(0);
  v12 = (a4 + *(v11 + 20));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0);
  if (*(v12 + *(result + 40)))
  {
    v14 = result;
    v15 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2388);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252694E90;
    *(inited + 32) = a5;
    *(inited + 40) = v15;
    v17 = sub_25256E560(inited);
    v18 = swift_setDeallocating();
    v19 = *(a4 + *(v11 + 24));
    v23 = v17;
    v20 = *v12;
    MEMORY[0x28223BE20](v18);
    *(&v22 - 2) = &v23;

    v21 = sub_252372354(sub_25255B9D4, (&v22 - 4), v20);
    static AccessoryControl.WriteSpecification.merge(writeSpecifications:)(v21, v10);

    sub_2523FEEC8(v12 + *(v14 + 36), v10, sub_25255B9D0, v19);

    return sub_25255B2F8(v10, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  return result;
}

uint64_t sub_252558E64()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1418);
  sub_252400FC8(&qword_27F4E1420, &qword_27F4E1410);
  swift_getOpaqueTypeConformance2();
  sub_252530998();
  return sub_2526927B0();
}

uint64_t sub_252558F98@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, __n128)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = a2(0, v11);
  sub_25237153C(a1 + *(v14 + 24), v8, &qword_27F4DADB8);
  v15 = *(v10 + 48);
  if (v15(v8, 1, v9) == 1)
  {
    if (qword_27F4DAB30 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v9, qword_27F4FB4D0);
    sub_25237153C(v16, v13, &qword_27F4DAD88);
    if (v15(v8, 1, v9) != 1)
    {
      sub_252372288(v8, &qword_27F4DADB8);
    }
  }

  else
  {
    sub_2523714D4(v8, v13, &qword_27F4DAD88);
  }

  sub_2523714D4(v13, a3, &qword_27F4DAD88);
  result = type metadata accessor for ToolbarControlView.CircularButtonView(0);
  *(a3 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_2525591DC()
{
  type metadata accessor for ToolbarControlView.CircularButtonView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2330);
  sub_25255A7EC(&qword_27F4E22A8, type metadata accessor for ToolbarControlView.CircularButtonView);
  sub_25255B440();
  return sub_252691C20();
}

uint64_t sub_2525592BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for IconDescriptor();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v2 + *(type metadata accessor for ToolbarControlView.CircularButtonView(0) + 20)) & 1) == 0)
  {
    v2 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);
  }

  sub_25255A390(v2, v6, type metadata accessor for IconDescriptor);
  sub_252559424(v6, &v16);
  v7 = v18;
  v8 = BYTE8(v18);
  v12 = v17;
  v13 = v16;
  sub_252692920();
  sub_2526909C0();
  *&v14[39] = v18;
  *&v14[23] = v17;
  v15 = v8;
  *&v14[7] = v16;
  v9 = v12;
  *a1 = v13;
  *(a1 + 16) = v9;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v10 = *&v14[16];
  *(a1 + 41) = *v14;
  *(a1 + 57) = v10;
  *(a1 + 73) = *&v14[32];
  *(a1 + 88) = *&v14[47];
  return sub_25255B2F8(v6, type metadata accessor for IconDescriptor);
}

double sub_252559424@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for IconDescriptor() + 24));

  if (v3 == 1)
  {
    sub_2526923F0();
    sub_252692330();
    swift_getKeyPath();
  }

  else
  {
    sub_2526923D0();
    sub_252692330();
  }

  sub_252691B70();
  sub_252691B20();
  sub_252691B90();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC0E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF790);
  sub_25255B358(&qword_27F4DC0F0, &qword_27F4DC0E8, &unk_252697D08, sub_252422F0C);
  sub_25255B358(&qword_27F4DF788, &qword_27F4DF790, &unk_2526A6E10, sub_2524C95A4);
  sub_252691470();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_252559618()
{
  swift_getKeyPath();
  sub_25255A7EC(&qword_27F4E22B8, type metadata accessor for ToolbarControlView.ModalControlViewPresenter);
  sub_25268DB30();

  return *(v0 + 16);
}

uint64_t sub_2525596B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25255A7EC(&qword_27F4E22B8, type metadata accessor for ToolbarControlView.ModalControlViewPresenter);
  sub_25268DB30();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_252559760(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25255A7EC(&qword_27F4E22B8, type metadata accessor for ToolbarControlView.ModalControlViewPresenter);
    sub_25268DB20();
  }

  return result;
}

uint64_t sub_252559870@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25255A7EC(&qword_27F4E22B8, type metadata accessor for ToolbarControlView.ModalControlViewPresenter);
  sub_25268DB30();

  v4 = OBJC_IVAR____TtCV22HomeAccessoryControlUI18ToolbarControlView25ModalControlViewPresenter__viewConfig;
  swift_beginAccess();
  return sub_25237153C(v3 + v4, a2, &qword_27F4E21C0);
}

uint64_t sub_252559948(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E21C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_25237153C(a1, &v6 - v3, &qword_27F4E21C0);
  return sub_2525599F4(v4);
}

uint64_t sub_2525599F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E21C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtCV22HomeAccessoryControlUI18ToolbarControlView25ModalControlViewPresenter__viewConfig;
  swift_beginAccess();
  sub_25237153C(v1 + v6, v5, &qword_27F4E21C0);
  v7 = sub_25255A844(v5, a1);
  sub_252372288(v5, &qword_27F4E21C0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_25255A7EC(&qword_27F4E22B8, type metadata accessor for ToolbarControlView.ModalControlViewPresenter);
    sub_25268DB20();
  }

  else
  {
    swift_beginAccess();
    sub_25255AB28(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_252372288(a1, &qword_27F4E21C0);
}

uint64_t sub_252559BE0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV22HomeAccessoryControlUI18ToolbarControlView25ModalControlViewPresenter__viewConfig;
  swift_beginAccess();
  sub_25255AB28(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_252559C4C()
{
  sub_252372288(v0 + OBJC_IVAR____TtCV22HomeAccessoryControlUI18ToolbarControlView25ModalControlViewPresenter__viewConfig, &qword_27F4E21C0);
  v1 = OBJC_IVAR____TtCV22HomeAccessoryControlUI18ToolbarControlView25ModalControlViewPresenter___observationRegistrar;
  v2 = sub_25268DB70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_252559D30()
{
  sub_252559F84(319, &qword_27F4E21B8, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_25268DB70();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_252559E80()
{
  type metadata accessor for AccessoryControl(319);
  if (v0 <= 0x3F)
  {
    sub_252559F84(319, &qword_27F4E21D8, type metadata accessor for ToolbarControlView.ModalControlViewPresenter, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_252559F84(319, &qword_27F4E21E0, type metadata accessor for AccessoryControlAlertViewModel, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252559F84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25255A004()
{
  result = qword_27F4E2260;
  if (!qword_27F4E2260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E21F8);
    sub_252400FC8(&qword_27F4E2268, &qword_27F4E2208);
    sub_252400FC8(&qword_27F4E2270, &qword_27F4E2220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2260);
  }

  return result;
}

unint64_t sub_25255A0E8()
{
  result = qword_27F4E2278;
  if (!qword_27F4E2278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2250);
    sub_25255A174();
    sub_25255A254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2278);
  }

  return result;
}

unint64_t sub_25255A174()
{
  result = qword_27F4E2280;
  if (!qword_27F4E2280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2248);
    sub_252400FC8(&qword_27F4E2288, &qword_27F4E2258);
    sub_252400FC8(&qword_27F4E2290, &qword_27F4E2228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2280);
  }

  return result;
}

unint64_t sub_25255A254()
{
  result = qword_27F4E2298;
  if (!qword_27F4E2298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2218);
    sub_252400FC8(&qword_27F4E2270, &qword_27F4E2220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2298);
  }

  return result;
}

unint64_t sub_25255A304()
{
  result = qword_27F4E22A0;
  if (!qword_27F4E22A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2200);
    sub_25255A004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E22A0);
  }

  return result;
}

uint64_t sub_25255A390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25255A3F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25255A4D8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_25255A558@<X0>(uint64_t a1@<X8>)
{
  sub_25237153C(*(v1 + 16), a1, &qword_27F4DAD88);
  result = type metadata accessor for ToolbarControlView.CircularButtonView(0);
  *(a1 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_25255A5A4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for ToolbarControlView(0);

  return sub_2525572DC(v0 + v2);
}

uint64_t sub_25255A6C4@<X0>(void (**a1)(_OWORD *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v10 = v5;
  v4(v9);
  v7 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  return (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
}

uint64_t sub_25255A760@<X0>(void (**a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v7 = *a2;
  v4(a3, &v7);
  v5 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  return (*(*(v5 - 8) + 56))(a3, 0, 1, v5);
}

uint64_t sub_25255A7EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25255A844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E21C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E22C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_25237153C(a1, &v20 - v12, &qword_27F4E21C0);
  sub_25237153C(a2, &v13[v15], &qword_27F4E21C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_25237153C(v13, v10, &qword_27F4E21C0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_25255A3F8(&v13[v15], v7, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig);
      v18 = _s22HomeAccessoryControlUI0bC0V26AutoClimateAlertViewConfigV2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_25255B2F8(v7, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig);
      sub_25255B2F8(v10, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig);
      sub_252372288(v13, &qword_27F4E21C0);
      v17 = !v18;
      return v17 & 1;
    }

    sub_25255B2F8(v10, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_252372288(v13, &qword_27F4E22C0);
    v17 = 1;
    return v17 & 1;
  }

  sub_252372288(v13, &qword_27F4E21C0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_25255AB28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E21C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_25255ABDC()
{
  sub_252559F84(319, &qword_27F4DCE88, type metadata accessor for IconDescriptor, type metadata accessor for StateDependentValue);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_25255AD04()
{
  result = qword_27F4E22F0;
  if (!qword_27F4E22F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB590);
    sub_25255AD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E22F0);
  }

  return result;
}

unint64_t sub_25255AD88()
{
  result = qword_27F4E22F8;
  if (!qword_27F4E22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E22F8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_29Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = v9;
    v12 = *(v10 + 48);
    v13 = a1;
LABEL_5:

    return v12(v13, a2, v11);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a2)
  {
    v11 = v14;
    v12 = *(v15 + 48);
    v13 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v17 = *(a1 + *(a3 + 24));
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t __swift_store_extra_inhabitant_index_30Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = v11;
    v14 = *(v12 + 56);
    v15 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
    v17 = *(result - 8);
    if (*(v17 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v13 = result;
    v14 = *(v17 + 56);
    v15 = a1 + *(a4 + 20);
  }

  return v14(v15, a2, a2, v13);
}

uint64_t sub_25255B07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      result = type metadata accessor for AccessoryControlAlertViewModel();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_25255B124(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    a5();
    v7 = type metadata accessor for ControlBinding();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25255B194()
{
  result = qword_27F4E2310;
  if (!qword_27F4E2310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2318);
    sub_25255B218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2310);
  }

  return result;
}

unint64_t sub_25255B218()
{
  result = qword_27F4E2320;
  if (!qword_27F4E2320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2328);
    sub_25255A0E8();
    sub_25255A304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2320);
  }

  return result;
}

uint64_t sub_25255B2F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25255B358(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25255B440()
{
  result = qword_27F4E2338;
  if (!qword_27F4E2338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2330);
    sub_252400FC8(&qword_27F4E2340, &qword_27F4E2348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2338);
  }

  return result;
}

uint64_t sub_25255B4F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ToolbarControlView.MultiPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_252558508(a1, v6, a2);
}

unint64_t sub_25255B570()
{
  result = qword_27F4E2360;
  if (!qword_27F4E2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2360);
  }

  return result;
}

uint64_t sub_25255B5C4@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ToolbarControlView.MultiPickerView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_252558C00(v1 + v4, v5, a1);
}

uint64_t objectdestroy_54Tm()
{
  v1 = type metadata accessor for ToolbarControlView.MultiPickerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + *(type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    v8 = type metadata accessor for IconDescriptor();
    v20 = v4;
    v9 = *(v8 + 20);
    v10 = sub_25268F910();
    v11 = *(*(v10 - 8) + 8);
    v12 = v6 + v9;
    v4 = v20;
    v11(v12, v10);
    v13 = v6 + *(v7 + 28);

    v11(v13 + *(v8 + 20), v10);
    v3 = (v2 + 32) & ~v2;
  }

  v14 = v5 + *(v1 + 20);

  v15 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0) + 36);
  v16 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    v17 = *(v16 + 20);
    v18 = sub_25268DA10();
    (*(*(v18 - 8) + 8))(v15 + v17, v18);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 32, v2 | 7);
}

uint64_t sub_25255B91C(uint64_t *a1)
{
  v3 = *(type metadata accessor for ToolbarControlView.MultiPickerView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_252558C88(a1, v5, v6, v1 + v4, v7);
}

uint64_t sub_25255BA28@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ToolbarControlView.PickerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_252557ED0(v4, a1);
}

uint64_t objectdestroy_62Tm()
{
  v1 = type metadata accessor for ToolbarControlView.PickerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v28 = v0;
  v4 = v0 + ((v2 + 32) & ~v2);

  v5 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v6 = v4 + *(v5 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    v8 = type metadata accessor for IconDescriptor();
    v9 = v3;
    v10 = *(v8 + 20);
    v27 = v1;
    v11 = sub_25268F910();
    v12 = *(*(v11 - 8) + 8);
    v13 = v6 + v10;
    v3 = v9;
    v12(v13, v11);
    v14 = v6 + *(v7 + 28);

    v15 = v11;
    v1 = v27;
    v12(v14 + *(v8 + 20), v15);
  }

  v16 = v4 + *(v5 + 40);
  type metadata accessor for AccessoryControl.StatusProvider();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v24 = sub_25268D990();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v16 + v23, 1, v24))
    {
      (*(v25 + 8))(v16 + v23, v24);
    }
  }

  else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 7)
  {
LABEL_10:
  }

  v18 = v4 + *(v1 + 20);

  v19 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) + 36);
  v20 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v21 = *(v20 + 20);
    v22 = sub_25268DA10();
    (*(*(v22 - 8) + 8))(v19 + v21, v22);
  }

  return MEMORY[0x2821FE8E8](v28, ((v2 + 32) & ~v2) + v3, v2 | 7);
}

uint64_t sub_25255BE28(uint64_t *a1)
{
  v3 = *(type metadata accessor for ToolbarControlView.PickerView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_252557F34(a1, v4, v5, v6);
}

unint64_t sub_25255BEA4()
{
  result = qword_27F4E2390;
  if (!qword_27F4E2390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2398);
    sub_25255BF30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2390);
  }

  return result;
}

unint64_t sub_25255BF30()
{
  result = qword_27F4E23A0;
  if (!qword_27F4E23A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E23A8);
    sub_25255BFB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E23A0);
  }

  return result;
}

unint64_t sub_25255BFB4()
{
  result = qword_27F4E23B0;
  if (!qword_27F4E23B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E23B8);
    sub_25255B358(&qword_27F4DC0F0, &qword_27F4DC0E8, &unk_252697D08, sub_252422F0C);
    sub_25255B358(&qword_27F4DF788, &qword_27F4DF790, &unk_2526A6E10, sub_2524C95A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E23B0);
  }

  return result;
}

uint64_t _s21AutoClimatePickerViewVMa()
{
  result = qword_27F4E23E0;
  if (!qword_27F4E23E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25255C118()
{
  type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(319);
  if (v0 <= 0x3F)
  {
    sub_25255C19C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25255C19C()
{
  if (!qword_27F4E23F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB378);
    sub_25255C20C();
    v0 = type metadata accessor for ControlBinding();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E23F0);
    }
  }
}

unint64_t sub_25255C20C()
{
  result = qword_27F4E23F8;
  if (!qword_27F4E23F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB378);
    sub_25255E328(&qword_27F4E2400, type metadata accessor for AccessoryControl.AutoClimatePickerState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E23F8);
  }

  return result;
}

uint64_t sub_25255C2DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD530);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v70 - v4;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD438);
  v99 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v88 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v96 = &v70 - v7;
  v87 = sub_252692780();
  v98 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v95 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = &v70 - v10;
  v84 = sub_252691130();
  v85 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s21AutoClimatePickerViewVMa();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v14;
  v16 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2418);
  MEMORY[0x28223BE20](v17 - 8);
  v73 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v71 = &v70 - v20;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2420);
  v80 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v74 = &v70 - v21;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2428);
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v70 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2430);
  v24 = *(v23 - 8);
  v92 = v23;
  v93 = v24;
  MEMORY[0x28223BE20](v23);
  v91 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v90 = &v70 - v27;
  v78 = _s21AutoClimatePickerViewVMa;
  sub_25255E450(a1, v16, _s21AutoClimatePickerViewVMa);
  sub_252692E00();
  v28 = sub_252692DF0();
  v29 = *(v13 + 80);
  v30 = (v29 + 32) & ~v29;
  v76 = v15;
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  *(v31 + 16) = v28;
  *(v31 + 24) = v32;
  v75 = _s21AutoClimatePickerViewVMa;
  sub_25255E378(v16, v31 + v30, _s21AutoClimatePickerViewVMa);
  sub_25255E450(a1, v16, _s21AutoClimatePickerViewVMa);
  v33 = sub_252692DF0();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v32;
  sub_25255E378(v16, v34 + v30, _s21AutoClimatePickerViewVMa);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB330);
  v35 = v71;
  sub_2526926E0();
  v72 = a1;
  v100 = a1;
  sub_25237153C(v35, v73, &qword_27F4E2418);
  v36 = (a1 + *(type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0) + 20));
  v37 = v36[1];
  v101 = *v36;
  v102 = v37;
  sub_252404480();

  v101 = sub_252691D50();
  v102 = v38;
  LOBYTE(v103) = v39 & 1;
  v104 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2438);
  sub_25255DC0C();
  sub_25255DCC0();
  v41 = v74;
  sub_2526925D0();
  sub_252372288(v35, &qword_27F4E2418);
  v42 = v83;
  sub_252691120();
  v43 = sub_252400FC8(&qword_27F4E2460, &qword_27F4E2420);
  v44 = MEMORY[0x277CDDDA0];
  v45 = v77;
  v46 = v79;
  v47 = v84;
  sub_252691E00();
  (*(v85 + 8))(v42, v47);
  (*(v80 + 8))(v41, v46);
  v101 = v46;
  v102 = v47;
  v103 = v43;
  v104 = v44;
  swift_getOpaqueTypeConformance2();
  v48 = v90;
  v49 = v81;
  sub_252692160();
  (*(v82 + 8))(v45, v49);
  v50 = v94;
  sub_252692770();
  v51 = v86;
  sub_252690710();
  v52 = sub_252690740();
  (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  sub_25255E450(v72, v16, v78);
  v53 = swift_allocObject();
  sub_25255E378(v16, v53 + ((v29 + 16) & ~v29), v75);
  v54 = v96;
  sub_252692540();
  v55 = *(v93 + 16);
  v56 = v91;
  v57 = v48;
  v58 = v92;
  v55(v91, v57, v92);
  v86 = *(v98 + 16);
  v59 = v95;
  v60 = v87;
  (v86)(v95, v50, v87);
  v85 = *(v99 + 16);
  v61 = v88;
  (v85)(v88, v54, v97);
  v62 = v89;
  v55(v89, v56, v58);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2468);
  (v86)(&v62[*(v63 + 48)], v59, v60);
  v64 = v97;
  (v85)(&v62[*(v63 + 64)], v61, v97);
  v65 = *(v99 + 8);
  v65(v96, v64);
  v66 = *(v98 + 8);
  v66(v94, v60);
  v67 = v92;
  v68 = *(v93 + 8);
  v68(v90, v92);
  v65(v61, v64);
  v66(v95, v60);
  return (v68)(v91, v67);
}

uint64_t sub_25255CE18()
{
  type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2478);
  sub_252400FC8(&qword_27F4E2480, &qword_27F4E2470);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DAC48);
  type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(255);
  sub_252400FC8(&qword_27F4E2458, &qword_27F4DAC48);
  sub_25255E328(&qword_27F4E2448, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  swift_getOpaqueTypeConformance2();
  sub_25255E328(&qword_27F4E2488, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  return sub_2526927B0();
}

uint64_t sub_25255CFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAC48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2490);
  sub_252400FC8(&qword_27F4E2498, &qword_27F4E2490);
  sub_252692450();
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAC38) + 36);
  sub_25255E450(a1, v8, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
  *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAC40) + 36)) = 1;
  return (*(v5 + 32))(a2, v7, v4);
}

uint64_t sub_25255D1D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25243B8D8();
  v4 = v3;
  v5 = sub_25243C098();
  v7 = v6;
  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x277D84F90];
  if (v6)
  {
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    v10 = 0;
  }

  sub_25235EABC(v2, v4, 0);

  sub_2524B4DEC(v8, v7, 0, v10);
  sub_2524B4E30(v8, v7, 0, v10);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = v9;
  *(a1 + 32) = v8;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = v10;
  sub_2524B4E30(v8, v7, 0, v10);
  sub_2524228D8(v2, v4, 0);
}

uint64_t sub_25255D2D4(uint64_t a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB330);
  MEMORY[0x28223BE20](v20);
  v21 = &v18 - v2;
  v3 = _s21AutoClimatePickerViewVMa();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2418);
  MEMORY[0x28223BE20](v19);
  v7 = &v18 - v6;
  sub_25255E450(a1, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s21AutoClimatePickerViewVMa);
  sub_252692E00();
  v8 = sub_252692DF0();
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v8;
  *(v10 + 24) = v11;
  sub_25255E378(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, _s21AutoClimatePickerViewVMa);
  sub_25255E450(a1, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s21AutoClimatePickerViewVMa);
  v12 = sub_252692DF0();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = MEMORY[0x277D85700];
  sub_25255E378(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v9, _s21AutoClimatePickerViewVMa);
  sub_2526926E0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
  v15 = v21;
  (*(*(v14 - 8) + 56))(v21, 1, 3, v14);
  v16 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  sub_2526926B0();
  return sub_252372288(v7, &qword_27F4E2418);
}

uint64_t sub_25255D608@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB378);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = a1 + *(_s21AutoClimatePickerViewVMa() + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
  sub_25237153C(v7 + *(v8 + 40), v6, &qword_27F4DB378);
  v9 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_252372288(v6, &qword_27F4DB378);
    v10 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  else
  {
    sub_25237153C(v6, a2, &qword_27F4DB330);
    return sub_25255E4B8(v6, type metadata accessor for AccessoryControl.AutoClimatePickerState);
  }
}

uint64_t sub_25255D7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[0] = a1;
  v5 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB378);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v14 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a4 + *(_s21AutoClimatePickerViewVMa() + 20);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
  sub_25237153C(v18 + *(v19 + 40), v13, &qword_27F4DB378);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_252372288(v13, &qword_27F4DB378);
  }

  sub_25255E378(v13, v17, type metadata accessor for AccessoryControl.AutoClimatePickerState);
  sub_25255E3E0(v24[0], v17);
  sub_25255E450(v17, v10, type metadata accessor for AccessoryControl.AutoClimatePickerState);
  v21 = (*(v15 + 56))(v10, 0, 1, v14);
  MEMORY[0x28223BE20](v21);
  v24[-2] = v10;
  v23 = sub_252372354(sub_252550DFC, &v24[-4], v22);
  static AccessoryControl.WriteSpecification.merge(writeSpecifications:)(v23, v7);

  sub_2523FEEC8(v18 + *(v19 + 36), v7, 0, 0);
  sub_25255E4B8(v7, type metadata accessor for AccessoryControl.WriteSpecification);
  sub_252372288(v10, &qword_27F4DB378);
  return sub_25255E4B8(v17, type metadata accessor for AccessoryControl.AutoClimatePickerState);
}

uint64_t sub_25255DAE0()
{
  type metadata accessor for ToolbarControlView.CircularButtonView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2408);
  sub_25255E328(&qword_27F4E22A8, type metadata accessor for ToolbarControlView.CircularButtonView);
  sub_252400FC8(&qword_27F4E2410, &qword_27F4E2408);
  return sub_252691C20();
}

unint64_t sub_25255DC0C()
{
  result = qword_27F4E2440;
  if (!qword_27F4E2440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB330);
    sub_25255E328(&qword_27F4E2448, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2440);
  }

  return result;
}

unint64_t sub_25255DCC0()
{
  result = qword_27F4E2450;
  if (!qword_27F4E2450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DAC48);
    type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(255);
    sub_252400FC8(&qword_27F4E2458, &qword_27F4DAC48);
    sub_25255E328(&qword_27F4E2448, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2450);
  }

  return result;
}

uint64_t sub_25255DE04()
{
  v1 = *(_s21AutoClimatePickerViewVMa() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25255D2D4(v2);
}

uint64_t sub_25255DE64@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s21AutoClimatePickerViewVMa() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_25255D608(v4, a1);
}

uint64_t objectdestroyTm_25()
{
  v1 = (_s21AutoClimatePickerViewVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v25 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v4 = type metadata accessor for IconDescriptor();
  v5 = *(v4 + 20);
  v6 = sub_25268F910();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v8 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

  v7(v8 + *(v4 + 20), v6);
  type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);

  v9 = v0 + v3 + v1[7];

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
  v11 = v9 + *(v10 + 36);
  v12 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v13 = *(v12 + 20);
    v14 = sub_25268DA10();
    (*(*(v14 - 8) + 8))(v11 + v13, v14);
  }

  v15 = v9 + *(v10 + 40);
  v16 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
    if (!(*(*(v17 - 8) + 48))(v15, 1, v17))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      if (!(*(*(v18 - 8) + 48))(v15, 3, v18))
      {
        v19 = *(v18 + 48);
        v20 = sub_25268D990();
        v21 = *(v20 - 8);
        if (!(*(v21 + 48))(v15 + v19, 1, v20))
        {
          (*(v21 + 8))(v15 + v19, v20);
        }

        v22 = *(v18 + 64);
        v23 = sub_25268DB10();
        (*(*(v23 - 8) + 8))(v15 + v22, v23);
      }
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v25, v2 | 7);
}

uint64_t sub_25255E2B4(uint64_t a1)
{
  v3 = *(_s21AutoClimatePickerViewVMa() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_25255D7A8(a1, v4, v5, v6);
}

uint64_t sub_25255E328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25255E378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25255E3E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB330);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_25255E450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25255E4B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25255E520@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;

  return sub_25239F750(v4, v5, v6, v7, v8);
}

uint64_t sub_25255E588@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  v5 = (a1 + *(result + 40));
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  *a2 = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_25255E5D8@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;

  return sub_2523E165C(v4, v5);
}

uint64_t sub_25255E720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E26F0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25237153C(a1, &v5 - v3, &qword_27F4E26F0);
  return sub_252690F60();
}

uint64_t sub_25255E7C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E24D8);
  MEMORY[0x28223BE20](v2);
  v4 = (&v32 - v3);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E24E0);
  MEMORY[0x28223BE20](v36);
  v6 = &v32 - v5;
  v37 = type metadata accessor for HeaderView.CardHeaderView(0);
  MEMORY[0x28223BE20](v37);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2526910F0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HeaderView(0);
  v13 = a1 + v12[8];
  v44 = *(v13 + 32);
  v14 = *(v13 + 3);
  v43[2] = *(v13 + 2);
  v43[3] = v14;
  v15 = *(v13 + 1);
  v43[0] = *v13;
  v43[1] = v15;
  if ((v44 & 0x100) != 0)
  {
    v16 = *(v13 + 3);
    v40 = *(v13 + 2);
    v41 = v16;
    v42 = v13[64];
    v17 = *(v13 + 1);
    v38 = *v13;
    v39 = v17;
  }

  else
  {
    v33 = v8;

    sub_252692F00();
    v18 = sub_2526919C0();
    v34 = v12;
    v19 = v18;
    sub_252690570();

    v12 = v34;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v43, &qword_27F4DC120);
    (*(v9 + 8))(v11, v33);
  }

  v20 = *a1;
  v21 = a1[1];
  v22 = v12[6];
  if (BYTE1(v38) == 1)
  {
    v23 = a1 + v22;
    v24 = v35;
    sub_252564668(v23, &v35[*(v37 + 24)], type metadata accessor for AccessoryControlsHeaderConfig);
    *v24 = v20;
    v24[1] = v21;
    sub_252564668(v24, v6, type metadata accessor for HeaderView.CardHeaderView);
    swift_storeEnumTagMultiPayload();
    sub_252564564(&qword_27F4E24E8, type metadata accessor for HeaderView.CardHeaderView);
    sub_2525645AC();
    sub_252691470();
    return sub_2525650EC(v24, type metadata accessor for HeaderView.CardHeaderView);
  }

  else
  {
    v26 = type metadata accessor for HeaderView.TitleDescriptionHeader(0);
    sub_252564668(a1 + v22, v4 + v26[6], type metadata accessor for AccessoryControlsHeaderConfig);
    v27 = *(a1 + v12[7]);
    KeyPath = swift_getKeyPath();
    *v4 = v20;
    v4[1] = v21;
    *(v4 + v26[7]) = v27;
    v29 = v4 + v26[8];
    *v29 = KeyPath;
    v29[8] = 0;
    LOBYTE(v26) = sub_252691A30();
    v30 = sub_252690CB0();
    v31 = v4 + *(v2 + 36);
    *v31 = v30;
    v31[8] = v26;
    sub_25237153C(v4, v6, &qword_27F4E24D8);
    swift_storeEnumTagMultiPayload();
    sub_252564564(&qword_27F4E24E8, type metadata accessor for HeaderView.CardHeaderView);
    sub_2525645AC();
    sub_252691470();
    return sub_252372288(v4, &qword_27F4E24D8);
  }
}

uint64_t sub_25255ECDC@<X0>(uint64_t a1@<X8>)
{
  sub_25255E7C8(v1);
  type metadata accessor for AnimationModel();
  sub_252564564(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  v3 = sub_252690DF0();
  v5 = v4;
  v6 = *v1;
  v7 = sub_252690DF0();
  v9 = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E24D0);
  v11 = (a1 + *(result + 36));
  *v11 = v3;
  v11[1] = v5;
  v11[2] = v7;
  v11[3] = v9;
  v11[4] = v6;
  return result;
}

double sub_25255EDB4()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for HeaderView.TitleDescriptionHeader(0) + 32));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_252692F00();
  v8 = sub_2526919C0();
  sub_252690570();

  sub_2526910E0();
  swift_getAtKeyPath();
  sub_25235E264(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

__n128 sub_25255EF10@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HeaderView.TitleDescriptionHeader(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 32);
  v9 = sub_25255EDB4();
  LOBYTE(v20[0]) = 0;
  v10 = sub_252564040((v1 + v8), v20, v9);
  v11 = sub_25255EDB4();
  LOBYTE(v20[0]) = 0;
  v12 = sub_25256426C((v1 + v8), v20, v11);
  sub_252564668(v1, v6, type metadata accessor for HeaderView.TitleDescriptionHeader);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  sub_25256514C(v6, v15 + v13, type metadata accessor for HeaderView.TitleDescriptionHeader);
  *(v15 + v14) = v12;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v10;
  sub_252692920();
  if (v10 > v12)
  {
    sub_252692F00();
    v16 = sub_2526919C0();
    sub_252690570();
  }

  sub_252690D70();
  *a1 = sub_252564F58;
  *(a1 + 8) = v15;
  v17 = v20[5];
  *(a1 + 80) = v20[4];
  *(a1 + 96) = v17;
  *(a1 + 112) = v20[6];
  v18 = v20[1];
  *(a1 + 16) = v20[0];
  *(a1 + 32) = v18;
  result = v20[3];
  *(a1 + 48) = v20[2];
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_25255F148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v72 = a2;
  v73 = a1;
  v71 = a3;
  v8 = sub_252691BD0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2526909F0();
  v13 = v12 - *(a2 + 8);
  if (v13 > a4)
  {
    v13 = a4;
  }

  if (v13 > a5)
  {
    v14 = v13;
  }

  else
  {
    v14 = a5;
  }

  v15 = (v14 - a5) / (a4 - a5);
  v16 = *MEMORY[0x277CE0AC0];
  v17 = *(v9 + 104);
  v17(v11, v16, v8);
  v18 = objc_opt_self();
  v19 = sub_252687FB0(v11);
  v20 = [v18 preferredFontForTextStyle_];

  [v20 pointSize];
  v22 = v21;

  v23 = *(v9 + 8);
  v23(v11, v8);
  v17(v11, *MEMORY[0x277CE0A70], v8);
  v24 = sub_252687FB0(v11);
  v25 = [v18 preferredFontForTextStyle_];

  [v25 pointSize];
  v27 = v26;

  v23(v11, v8);
  v17(v11, v16, v8);
  v28 = v71;
  v29 = sub_252687FB0(v11);
  v30 = [v18 preferredFontForTextStyle_];

  [v30 pointSize];
  v32 = v31;

  v23(v11, v8);
  v33 = 1.0 - v15;
  v34 = type metadata accessor for HeaderView.TitleDescriptionHeader(0);
  v35 = v72;
  sub_252564668(v72 + *(v34 + 24), v28, type metadata accessor for AccessoryControlsHeaderConfig);
  KeyPath = swift_getKeyPath();
  v80 = 0;
  v37 = type metadata accessor for HeaderView.TitleDescriptionHeader.Content(0);
  *(v28 + *(v37 + 20)) = v22 + v15 * (v27 - v32);
  v38 = v28 + *(v37 + 24);
  *v38 = KeyPath;
  *(v38 + 65) = 0;
  LOBYTE(KeyPath) = sub_252691A40();
  sub_252690760();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E25B8) + 36);
  *v47 = KeyPath;
  *(v47 + 8) = v40;
  *(v47 + 16) = v42;
  *(v47 + 24) = v44;
  *(v47 + 32) = v46;
  *(v47 + 40) = 0;
  sub_2526909F0();
  sub_252692920();
  sub_2526909C0();
  v48 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E25C0) + 36));
  v49 = v82;
  *v48 = v81;
  v48[1] = v49;
  v48[2] = v83;
  v50 = sub_252692920();
  v52 = v51;
  v53 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E25C8) + 36);
  *v53 = sub_2526912E0();
  *(v53 + 8) = 0;
  *(v53 + 16) = 0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E25D0);
  sub_25255F728(v53 + *(v54 + 44));
  *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E25D8) + 36)) = v33;
  v55 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E25E0) + 36));
  *v55 = v50;
  v55[1] = v52;
  v56 = sub_252692920();
  v58 = v57;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  if (*(v35 + *(v34 + 28)) == 1)
  {
    v59 = sub_252692310();
    v64 = sub_252691A30();
    v60 = sub_252690CB0();
    type metadata accessor for AnimationModel();
    sub_252564564(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
    v62 = sub_252690DF0();
    v63 = v65;
    v61 = v64;
  }

  v75 = v59;
  *&v76 = v60;
  *(&v76 + 1) = v61;
  *&v77 = v62;
  *(&v77 + 1) = v63;
  *&v78 = v56;
  *(&v78 + 1) = v58;
  v66 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E25E8) + 36));
  v67 = v76;
  *v66 = v75;
  v66[1] = v67;
  v68 = v78;
  v66[2] = v77;
  v66[3] = v68;
  v79[0] = v59;
  v79[1] = 0;
  v79[2] = v60;
  v79[3] = v61;
  v79[4] = v62;
  v79[5] = v63;
  v79[6] = v56;
  v79[7] = v58;
  sub_25237153C(&v75, v74, &qword_27F4E25F0);
  return sub_252372288(v79, &qword_27F4E25F0);
}

uint64_t sub_25255F728@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E25F8);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  sub_252692770();
  sub_252692330();
  v9 = sub_252692350();

  v10 = sub_252691A20();
  v11 = &v8[*(v3 + 44)];
  *v11 = v9;
  v11[8] = v10;
  sub_25237153C(v8, v5, &qword_27F4E25F8);
  *a1 = 0;
  *(a1 + 8) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2600);
  sub_25237153C(v5, a1 + *(v12 + 48), &qword_27F4E25F8);
  sub_252372288(v8, &qword_27F4E25F8);
  return sub_252372288(v5, &qword_27F4E25F8);
}

uint64_t sub_25255F890@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8) / 10.0;
  if (v3 <= 0.0)
  {
    v3 = 0.0;
  }

  if (v3 <= 1.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = type metadata accessor for HeaderView.CardHeaderView(0);
  sub_252564668(v1 + *(v5 + 24), a1, type metadata accessor for AccessoryControlsHeaderConfig);
  KeyPath = swift_getKeyPath();
  v7 = type metadata accessor for HeaderView.CardHeaderView.ContentView(0);
  *(a1 + *(v7 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  swift_storeEnumTagMultiPayload();
  v8 = swift_getKeyPath();
  v9 = a1 + *(v7 + 24);
  *v9 = v8;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  v10 = sub_252692920();
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2590) + 36);
  *v13 = sub_2526912E0();
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2598);
  sub_25255FA10(v13 + *(v14 + 44));
  *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E25A0) + 36)) = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E25A8);
  v16 = (v13 + *(result + 36));
  *v16 = v10;
  v16[1] = v12;
  return result;
}

uint64_t sub_25255FA10@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_252692780();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC230);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  if (qword_27F4DAB38 != -1)
  {
    v32 = v12;
    swift_once();
    v12 = v32;
  }

  v15 = qword_27F4FB4E8;
  v16 = &v14[*(v12 + 36)];
  v17 = *(sub_252691640() + 20);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_252691260();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  sub_2526914E0();
  *v16 = v20;
  *(v16 + 1) = v21;
  *(v16 + 2) = v22;
  *(v16 + 3) = v23;
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBCE0) + 36)] = 256;
  *v14 = v15;
  *(v14 + 4) = 256;

  sub_252692770();
  sub_25237153C(v14, v10, &qword_27F4DC230);
  v24 = *(v2 + 16);
  v24(v4, v7, v1);
  v25 = v10;
  v33 = v10;
  v26 = v7;
  v27 = v4;
  v28 = v34;
  sub_25237153C(v25, v34, &qword_27F4DC230);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E25B0);
  v24((v28 + *(v29 + 48)), v27, v1);
  v30 = *(v2 + 8);
  v30(v26, v1);
  sub_252372288(v14, &qword_27F4DC230);
  v30(v27, v1);
  return sub_252372288(v33, &qword_27F4DC230);
}

uint64_t sub_25255FD44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v147 = a2;
  v3 = sub_2526910F0();
  v114 = *(v3 - 8);
  v115 = v3;
  MEMORY[0x28223BE20](v3);
  v113 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2640);
  v135 = *(v5 - 8);
  v136 = v5;
  MEMORY[0x28223BE20](v5);
  v134 = &v112 - v6;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2648);
  MEMORY[0x28223BE20](v133);
  v142 = &v112 - v7;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2650);
  MEMORY[0x28223BE20](v141);
  v143 = &v112 - v8;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2658);
  MEMORY[0x28223BE20](v140);
  v145 = &v112 - v9;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2660);
  MEMORY[0x28223BE20](v146);
  v144 = &v112 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2668);
  MEMORY[0x28223BE20](v11 - 8);
  v158 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v157 = &v112 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v15 - 8);
  v148 = &v112 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2670);
  MEMORY[0x28223BE20](v17 - 8);
  v156 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v159 = &v112 - v20;
  v21 = sub_252691BD0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for HeaderView.HorizontalSheetHeader(0);
  v25 = *(v132 + 20);
  v138 = a1;
  v26 = (a1 + v25);
  v155 = *(type metadata accessor for AccessoryControlsHeaderConfig(0) + 24);
  v27 = *(v22 + 104);
  v27(v24, *MEMORY[0x277CE0A50], v21);
  v28 = objc_opt_self();
  v29 = sub_252687FB0(v24);
  v30 = [v28 preferredFontForTextStyle_];

  [v30 pointSize];
  v31 = *(v22 + 8);
  v31(v24, v21);
  sub_252560BE0(v26 + v155, &v182);
  v139 = v182;
  v154 = v183;
  v155 = *(&v182 + 1);
  v152 = v184;
  v153 = *(&v183 + 1);
  v150 = v185;
  v151 = *(&v184 + 1);
  v149 = BYTE8(v185);
  v137 = BYTE9(v185);
  v122 = v26;
  v32 = v26[1];
  *&v182 = *v26;
  *(&v182 + 1) = v32;
  v33 = sub_252404480();

  v126 = v33;
  v34 = sub_252691D50();
  v120 = v35;
  v121 = v34;
  LOBYTE(v33) = v36;
  v119 = v37;
  KeyPath = swift_getKeyPath();
  v117 = swift_getKeyPath();
  v116 = v33 & 1;
  LOBYTE(v182) = v33 & 1;
  LOBYTE(v173) = 0;
  v38 = *MEMORY[0x277CE0A70];
  v128 = v27;
  v129 = v22 + 104;
  v27(v24, v38, v21);
  v39 = v28;
  v40 = sub_252687FB0(v24);
  v41 = [v28 preferredFontForTextStyle_];

  [v41 pointSize];
  v130 = v22 + 8;
  v131 = v21;
  v127 = v31;
  v31(v24, v21);
  sub_252691B20();
  v42 = sub_252691B00();
  v43 = *(v42 - 8);
  v44 = v148;
  v124 = *(v43 + 56);
  v125 = v42;
  v123 = v43 + 56;
  v124(v148, 1, 1);
  v45 = sub_252691B50();
  sub_252372288(v44, &qword_27F4DBD40);
  v46 = swift_getKeyPath();
  v47 = sub_252692330();
  v48 = swift_getKeyPath();
  sub_2526922F0();
  v49 = sub_252692350();

  *&v173 = v121;
  *(&v173 + 1) = v120;
  LOBYTE(v174) = v116;
  *(&v174 + 1) = v119;
  *&v175 = KeyPath;
  BYTE8(v175) = 1;
  *&v176 = v117;
  *(&v176 + 1) = 1;
  LOBYTE(v177) = 0;
  *(&v177 + 1) = v46;
  *&v178 = v45;
  *(&v178 + 1) = v48;
  *&v179 = v47;
  *(&v179 + 1) = v49;
  v180 = xmmword_2526A6FA0;
  v181 = 0x4000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2678);
  sub_25256629C(&qword_27F4E2680, &qword_27F4E2678, &unk_2526A7480, sub_252565234);
  sub_2526920E0();
  v188 = v179;
  v189 = v180;
  v190 = v181;
  v184 = v175;
  v185 = v176;
  v186 = v177;
  v187 = v178;
  v182 = v173;
  v183 = v174;
  sub_252372288(&v182, &qword_27F4E2678);
  if (v122[3])
  {
    v50 = v122[2];
    v51 = 1.0;
    v52 = v122[3];
  }

  else
  {
    v52 = 0xE100000000000000;
    v51 = 0.0;
    v50 = 32;
  }

  *&v173 = v50;
  *(&v173 + 1) = v52;

  v126 = sub_252691D50();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = swift_getKeyPath();
  v60 = swift_getKeyPath();
  v61 = v56 & 1;
  v172 = v56 & 1;
  v171 = 0;
  v62 = v131;
  v128(v24, *MEMORY[0x277CE0AC0], v131);
  v63 = sub_252687FB0(v24);
  v64 = [v39 preferredFontForTextStyle_];

  [v64 pointSize];
  v127(v24, v62);
  sub_252691B40();
  v65 = v148;
  (v124)(v148, 1, 1, v125);
  v66 = sub_252691B50();
  sub_252372288(v65, &qword_27F4DBD40);
  v67 = swift_getKeyPath();
  *&v165 = v126;
  *(&v165 + 1) = v54;
  LOBYTE(v166) = v61;
  *(&v166 + 1) = v58;
  *&v167 = v59;
  BYTE8(v167) = 1;
  *&v168 = v60;
  *(&v168 + 1) = 1;
  LOBYTE(v169) = 0;
  *(&v169 + 1) = v67;
  v170 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E26A0);
  sub_2525652EC();
  v68 = v134;
  sub_252691F30();
  v175 = v167;
  v176 = v168;
  v177 = v169;
  *&v178 = v170;
  v173 = v165;
  v174 = v166;
  sub_252372288(&v173, &qword_27F4E26A0);
  v69 = v142;
  (*(v135 + 32))(v142, v68, v136);
  *&v69[*(v133 + 36)] = v51;
  v70 = (v138 + *(v132 + 24));
  LOWORD(v169) = *(v70 + 32);
  v71 = v70[3];
  v167 = v70[2];
  v168 = v71;
  v72 = v70[1];
  v165 = *v70;
  v166 = v72;
  if (BYTE1(v169))
  {
    v73 = v70[3];
    v162 = v70[2];
    v163 = v73;
    v164 = *(v70 + 64);
    v74 = v70[1];
    v160 = *v70;
    v161 = v74;
  }

  else
  {

    sub_252692F00();
    v75 = sub_2526919C0();
    sub_252690570();

    v76 = v113;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v165, &qword_27F4DC120);
    (*(v114 + 8))(v76, v115);
  }

  if (v164 == 1)
  {
    v77 = sub_252692330();
  }

  else
  {
    v77 = sub_252692380();
  }

  v78 = v77;
  v79 = v69;
  v80 = v143;
  sub_2523714D4(v79, v143, &qword_27F4E2648);
  *(v80 + *(v141 + 36)) = v78;
  v81 = swift_getKeyPath();
  v82 = v145;
  v83 = &v145[*(v140 + 36)];
  v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3F8) + 28);
  sub_252692870();
  v85 = sub_2526928A0();
  (*(*(v85 - 8) + 56))(v83 + v84, 0, 1, v85);
  *v83 = v81;
  sub_2523714D4(v80, v82, &qword_27F4E2650);
  v86 = swift_getKeyPath();
  v87 = v144;
  v88 = &v144[*(v146 + 36)];
  v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00) + 28);
  v90 = *MEMORY[0x277CDF3C0];
  v91 = sub_252690850();
  (*(*(v91 - 8) + 104))(v88 + v89, v90, v91);
  *v88 = v86;
  sub_2523714D4(v82, v87, &qword_27F4E2658);
  sub_252565514();
  v92 = v157;
  sub_2526920E0();
  sub_252372288(v87, &qword_27F4E2660);
  v93 = v156;
  sub_25237153C(v159, v156, &qword_27F4E2670);
  v94 = v92;
  v95 = v158;
  sub_25237153C(v94, v158, &qword_27F4E2668);
  v96 = v147;
  v97 = v139;
  v99 = v154;
  v98 = v155;
  *v147 = v139;
  v96[1] = v98;
  v101 = v152;
  v100 = v153;
  v96[2] = v99;
  v96[3] = v100;
  v102 = v150;
  v103 = v151;
  v96[4] = v101;
  v96[5] = v103;
  v96[6] = v102;
  *(v96 + 56) = v149;
  LOBYTE(v86) = v137;
  *(v96 + 57) = v137;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E26E8);
  sub_25237153C(v93, v96 + *(v104 + 48), &qword_27F4E2670);
  sub_25237153C(v95, v96 + *(v104 + 64), &qword_27F4E2668);
  v105 = v155;
  v106 = v99;
  v107 = v153;
  v108 = v101;
  v109 = v103;
  v110 = v150;
  LOBYTE(v103) = v149;
  sub_252565804(v97, v155, v106, v153, v108, v109, v150, v149, v86 & 1);
  sub_252372288(v157, &qword_27F4E2668);
  sub_252372288(v159, &qword_27F4E2670);
  sub_252372288(v158, &qword_27F4E2668);
  sub_252372288(v156, &qword_27F4E2670);
  return sub_2525658AC(v97, v105, v154, v107, v152, v151, v110, v103, v86 & 1);
}

double sub_252560BE0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD48);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  v10 = type metadata accessor for IconDescriptor();
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC848);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v41 - v14;
  sub_25237153C(a1, &v41 - v14, &qword_27F4DC848);
  v16 = type metadata accessor for AccessoryControlsHeaderConfig.Image(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    LOBYTE(v47) = 1;
    v53[25] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E26F8);
    sub_252565958();
    sub_252691470();
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = a2;
    v17 = *(v15 + 2);
    v18 = *(v15 + 3);
    sub_252692330();
    v43 = v17;
    v19 = sub_252692280();

    if (v19 & 1) != 0 || (sub_2526922F0(), v20 = v43, v21 = sub_252692280(), , (v21))
    {
      if (qword_27F4DAB40 != -1)
      {
        swift_once();
      }

      v20 = qword_27F4FB4F0;
    }

    *&v54 = v20;
    v22 = sub_252691CD0();
    v24 = v23;
    v26 = v25;
    v28 = v27;

    sub_252691B10();
    v29 = sub_252691B00();
    (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
    v30 = sub_252691B50();
    sub_252372288(v6, &qword_27F4DBD40);
    KeyPath = swift_getKeyPath();
    v46 = v26 & 1;
    v45 = 1;
    *&v54 = v22;
    *(&v54 + 1) = v24;
    LOBYTE(v55) = v26 & 1;
    *(&v55 + 1) = v44;
    DWORD1(v55) = *(&v44 + 3);
    *(&v55 + 1) = v28;
    *v56 = v18;
    *&v56[8] = KeyPath;
    *&v56[16] = v30;
    v56[24] = 1;
    sub_25235EABC(v22, v24, v26 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC0E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2710);
    sub_252422E54();
    sub_2525659E4();
    sub_252691470();
    v54 = v47;
    v55 = v48;
    *v56 = *v49;
    *&v56[9] = *&v49[9];
    v50 = 0;
    v56[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E26F8);
    sub_252565958();
    sub_252691470();

    sub_2524228D8(v22, v24, v26 & 1);

    v54 = v51;
    v55 = v52;
    *v56 = *v53;
    *&v56[10] = *&v53[10];
    a2 = v42;
  }

  else
  {
    v32 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC898) + 48)];
    sub_25256514C(v15, v12, type metadata accessor for IconDescriptor);

    sub_2526923D0();
    sub_25268F8F0();
    v33 = sub_252691340();
    (*(*(v33 - 8) + 56))(v9, 0, 1, v33);
    v34 = sub_252692400();

    sub_252372288(v9, &qword_27F4DBD48);
    v35 = swift_getKeyPath();
    v36 = sub_252691B00();
    (*(*(v36 - 8) + 56))(v6, 1, 1, v36);

    v37 = sub_252691B50();
    sub_252372288(v6, &qword_27F4DBD40);
    v38 = swift_getKeyPath();
    v46 = 0;
    *&v54 = v34;
    *(&v54 + 1) = v35;
    v43 = v32;
    *&v55 = v32;
    *(&v55 + 1) = v38;
    *v56 = v37;
    *&v56[8] = v44;
    v56[24] = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC0E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2710);
    sub_252422E54();
    sub_2525659E4();
    sub_252691470();
    v54 = v47;
    v55 = v48;
    *v56 = *v49;
    *&v56[9] = *&v49[9];
    v50 = 0;
    v56[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E26F8);
    sub_252565958();
    sub_252691470();

    sub_2525650EC(v12, type metadata accessor for IconDescriptor);
    v54 = v51;
    v55 = v52;
    *v56 = *v53;
    *&v56[10] = *&v53[10];
  }

  v39 = v55;
  *a2 = v54;
  a2[1] = v39;
  a2[2] = *v56;
  result = *&v56[10];
  *(a2 + 42) = *&v56[10];
  return result;
}

uint64_t sub_252561464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2526910F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for HeaderView.HorizontalSheetHeader(0) + 24);
  v24 = *(v8 + 64);
  v9 = *(v8 + 48);
  v23[2] = *(v8 + 32);
  v23[3] = v9;
  v10 = *(v8 + 16);
  v23[0] = *v8;
  v23[1] = v10;
  if ((v24 & 0x100) == 0)
  {

    sub_252692F00();
    v19 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v23, &qword_27F4DC120);
    (*(v5 + 8))(v7, v4);
    if (BYTE8(v21))
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    v15 = 0;
    v18 = 0;
    result = 0;
    v17 = 0;
    goto LABEL_6;
  }

  v11 = *(v8 + 48);
  v20[2] = *(v8 + 32);
  v21 = v11;
  v22 = *(v8 + 64);
  v12 = *(v8 + 16);
  v20[0] = *v8;
  v20[1] = v12;
  if ((BYTE8(v11) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_252692310();
  v14 = sub_252691A30();
  v15 = sub_252690CB0();
  type metadata accessor for AnimationModel();
  sub_252564564(&qword_27F4DBCC0, type metadata accessor for AnimationModel);
  result = sub_252690DF0();
  v18 = v14;
LABEL_6:
  *a2 = v13;
  a2[1] = 0;
  a2[2] = v15;
  a2[3] = v18;
  a2[4] = result;
  a2[5] = v17;
  return result;
}

uint64_t sub_252561698@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2526912E0();
  *(a1 + 8) = 0x401C000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2630);
  sub_25255FD44(v1, (a1 + *(v3 + 44)));
  v4 = sub_252692920();
  v6 = v5;
  sub_252561464(v1, &v19);
  v7 = v19;
  v8 = v20;
  v9 = v21;
  v15 = v19;
  v16 = v20;
  v17 = v21;
  *&v18 = v4;
  *(&v18 + 1) = v6;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2638) + 36));
  v11 = v16;
  *v10 = v15;
  v10[1] = v11;
  v12 = v18;
  v10[2] = v17;
  v10[3] = v12;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v4;
  v23 = v6;
  sub_25237153C(&v15, &v14, &qword_27F4E25F0);
  return sub_252372288(&v19, &qword_27F4E25F0);
}

uint64_t sub_2525617B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2610);
  MEMORY[0x28223BE20](v3);
  v5 = v45 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2618);
  MEMORY[0x28223BE20](v52);
  v54 = v45 - v6;
  v53 = type metadata accessor for MenuPickerControlView();
  MEMORY[0x28223BE20](v53);
  v51 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2620);
  MEMORY[0x28223BE20](v8);
  v55 = v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  *&v50 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v49 = v45 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v45 - v15;
  v17 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AccessoryControl.State(0);
  MEMORY[0x28223BE20](v20);
  v22 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1 + *(type metadata accessor for HeaderView.ControlView(0) + 24);
  v24 = type metadata accessor for AccessoryControl(0);
  sub_252564668(v23 + *(v24 + 20), v22, type metadata accessor for AccessoryControl.State);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v46 = v5;
    v47 = v8;
    v45[1] = v3;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);
    sub_25256514C(v22, v19, type metadata accessor for AccessoryControl.PickerViewConfig);
    sub_2523714D4(&v22[v25], v16, &qword_27F4DAD68);
    v26 = v16;
    if (*(v23 + *(v24 + 36)) == 15)
    {
      v27 = v51;
      sub_252564668(v19, v51, type metadata accessor for AccessoryControl.PickerViewConfig);
      v28 = v49;
      sub_25237153C(v16, v49, &qword_27F4DAD68);
      v29 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      sub_2523714D4(v28, v30 + v29, &qword_27F4DAD68);
      v31 = v16;
      v32 = v50;
      sub_25237153C(v31, v50, &qword_27F4DAD68);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      sub_2523714D4(v32, v33 + v29, &qword_27F4DAD68);
      v34 = (v33 + ((v29 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v34 = 0;
      v34[1] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3C8);
      sub_2526926E0();
      v50 = v57;
      v35 = v19;
      v36 = v58;
      LOBYTE(v33) = v59;
      KeyPath = swift_getKeyPath();
      v60 = 0;
      v38 = v53;
      v39 = v27 + *(v53 + 20);
      *v39 = v50;
      *(v39 + 16) = v36;
      *(v39 + 24) = v33;
      v40 = v27 + *(v38 + 24);
      *v40 = KeyPath;
      *(v40 + 65) = 0;
      sub_252564668(v27, v54, type metadata accessor for MenuPickerControlView);
      swift_storeEnumTagMultiPayload();
      sub_252564564(&qword_27F4E2168, type metadata accessor for MenuPickerControlView);
      v41 = v55;
      sub_252691470();
      sub_2525650EC(v27, type metadata accessor for MenuPickerControlView);
    }

    else
    {
      v35 = v19;
      swift_storeEnumTagMultiPayload();
      sub_252564564(&qword_27F4E2168, type metadata accessor for MenuPickerControlView);
      v41 = v55;
      sub_252691470();
    }

    sub_25237153C(v41, v46, &qword_27F4E2620);
    swift_storeEnumTagMultiPayload();
    sub_252565030();
    sub_252691470();
    sub_252372288(v41, &qword_27F4E2620);
    sub_252372288(v26, &qword_27F4DAD68);
    v42 = type metadata accessor for AccessoryControl.PickerViewConfig;
    v43 = v35;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_252565030();
    sub_252691470();
    v42 = type metadata accessor for AccessoryControl.State;
    v43 = v22;
  }

  return sub_2525650EC(v43, v42);
}

uint64_t sub_252561F24@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2526912E0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2608);
  return sub_2525617B8(v1, a1 + *(v3 + 44));
}

uint64_t sub_252561F78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v122 = a2;
  v3 = sub_2526910F0();
  v93 = *(v3 - 8);
  v94 = v3;
  MEMORY[0x28223BE20](v3);
  v92 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252691BD0();
  v105 = *(v5 - 8);
  v106 = v5;
  MEMORY[0x28223BE20](v5);
  v104 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2838);
  v109 = *(v7 - 8);
  v110 = v7;
  MEMORY[0x28223BE20](v7);
  v108 = &v92 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2840);
  MEMORY[0x28223BE20](v107);
  v113 = &v92 - v9;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2848);
  MEMORY[0x28223BE20](v112);
  v114 = &v92 - v10;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2850);
  MEMORY[0x28223BE20](v111);
  v118 = &v92 - v11;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2858);
  MEMORY[0x28223BE20](v119);
  v117 = &v92 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2860);
  MEMORY[0x28223BE20](v13 - 8);
  v121 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v120 = &v92 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD40);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v92 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2868);
  MEMORY[0x28223BE20](v20 - 8);
  v116 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v92 - v23;
  v25 = a1;
  v26 = *a1;
  v27 = a1[1];
  v123 = v25;
  *&v145[0] = v26;
  *(&v145[0] + 1) = v27;
  v28 = sub_252404480();

  v98 = v28;
  v115 = sub_252691D50();
  v96 = v30;
  v97 = v29;
  LOBYTE(v28) = v31;
  KeyPath = swift_getKeyPath();
  LOBYTE(v27) = v28 & 1;
  LOBYTE(v137) = v28 & 1;
  v32 = swift_getKeyPath();
  LOBYTE(v145[0]) = 0;
  v103 = type metadata accessor for HeaderView.TitleDescriptionHeader.Content(0);
  sub_252691B20();
  v33 = sub_252691B00();
  v34 = *(v33 - 8);
  v100 = *(v34 + 56);
  v101 = v33;
  v99 = v34 + 56;
  v100(v19, 1, 1);
  v35 = sub_252691B50();
  v102 = v19;
  sub_252372288(v19, &qword_27F4DBD40);
  v36 = swift_getKeyPath();
  v37 = sub_252692330();
  v38 = swift_getKeyPath();
  sub_2526922F0();
  v39 = sub_252692350();

  *&v137 = v115;
  *(&v137 + 1) = v97;
  LOBYTE(v138) = v27;
  *(&v138 + 1) = v96;
  LOWORD(v139) = 256;
  *(&v139 + 1) = KeyPath;
  LOBYTE(v140) = 1;
  *(&v140 + 1) = v32;
  *&v141 = 1;
  BYTE8(v141) = 0;
  *&v142 = v36;
  *(&v142 + 1) = v35;
  *&v143 = v38;
  *(&v143 + 1) = v37;
  *&v144[0] = v39;
  *(v144 + 8) = xmmword_2526A6FA0;
  *(&v144[1] + 1) = 0x4000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2870);
  sub_25256629C(&qword_27F4E2878, &qword_27F4E2870, &unk_2526A76E0, sub_252566320);
  v115 = v24;
  sub_2526920E0();
  v145[6] = v143;
  v145[7] = v144[0];
  v145[8] = v144[1];
  v145[2] = v139;
  v145[3] = v140;
  v145[4] = v141;
  v145[5] = v142;
  v145[0] = v137;
  v145[1] = v138;
  sub_252372288(v145, &qword_27F4E2870);
  if (v123[3])
  {
    v40 = v123[2];
    v41 = 1.0;
    v42 = v123[3];
  }

  else
  {
    v42 = 0xE100000000000000;
    v41 = 0.0;
    v40 = 32;
  }

  *&v137 = v40;
  *(&v137 + 1) = v42;

  v43 = sub_252691D50();
  v97 = v44;
  v98 = v43;
  v46 = v45;
  v48 = v47;
  v49 = swift_getKeyPath();
  v50 = v46 & 1;
  v135 = v46 & 1;
  v51 = swift_getKeyPath();
  v136 = 0;
  v53 = v104;
  v52 = v105;
  v54 = v106;
  (*(v105 + 104))(v104, *MEMORY[0x277CE0AC0], v106);
  v55 = objc_opt_self();
  v56 = sub_252687FB0(v53);
  v57 = [v55 preferredFontForTextStyle_];

  [v57 pointSize];
  (*(v52 + 8))(v53, v54);
  sub_252691B40();
  v58 = v102;
  (v100)(v102, 1, 1, v101);
  v59 = sub_252691B50();
  sub_252372288(v58, &qword_27F4DBD40);
  v60 = swift_getKeyPath();
  *&v129 = v98;
  *(&v129 + 1) = v97;
  LOBYTE(v130) = v50;
  *(&v130 + 1) = v48;
  LOWORD(v131) = 256;
  *(&v131 + 1) = v49;
  LOBYTE(v132) = 1;
  *(&v132 + 1) = v51;
  *&v133 = 1;
  BYTE8(v133) = 0;
  *&v134 = v60;
  *(&v134 + 1) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2898);
  sub_2525663D8();
  v61 = v108;
  sub_252691F30();
  v139 = v131;
  v140 = v132;
  v141 = v133;
  v142 = v134;
  v137 = v129;
  v138 = v130;
  sub_252372288(&v137, &qword_27F4E2898);
  v62 = v113;
  (*(v109 + 32))(v113, v61, v110);
  *&v62[*(v107 + 36)] = v41;
  v63 = (v123 + *(v103 + 24));
  LOWORD(v133) = *(v63 + 32);
  v64 = v63[3];
  v131 = v63[2];
  v132 = v64;
  v65 = v63[1];
  v129 = *v63;
  v130 = v65;
  if (BYTE1(v133))
  {
    v66 = v63[3];
    v126 = v63[2];
    v127 = v66;
    v128 = *(v63 + 64);
    v67 = v63[1];
    v124 = *v63;
    v125 = v67;
  }

  else
  {

    sub_252692F00();
    v68 = sub_2526919C0();
    sub_252690570();

    v69 = v92;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(&v129, &qword_27F4DC120);
    (*(v93 + 8))(v69, v94);
  }

  if (v128 == 1)
  {
    v70 = sub_252692330();
  }

  else
  {
    v70 = sub_252692380();
  }

  v71 = v70;
  v72 = v62;
  v73 = v114;
  sub_2523714D4(v72, v114, &qword_27F4E2840);
  *(v73 + *(v112 + 36)) = v71;
  v74 = swift_getKeyPath();
  v75 = v118;
  v76 = &v118[*(v111 + 36)];
  v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD3F8) + 28);
  sub_252692870();
  v78 = sub_2526928A0();
  (*(*(v78 - 8) + 56))(v76 + v77, 0, 1, v78);
  *v76 = v74;
  sub_2523714D4(v73, v75, &qword_27F4E2848);
  v79 = swift_getKeyPath();
  v80 = v117;
  v81 = &v117[*(v119 + 36)];
  v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00) + 28);
  v83 = *MEMORY[0x277CDF3C0];
  v84 = sub_252690850();
  (*(*(v84 - 8) + 104))(v81 + v82, v83, v84);
  *v81 = v79;
  sub_2523714D4(v75, v80, &qword_27F4E2850);
  sub_252566690();
  v85 = v120;
  sub_2526920E0();
  sub_252372288(v80, &qword_27F4E2858);
  v86 = v115;
  v87 = v116;
  sub_25237153C(v115, v116, &qword_27F4E2868);
  v88 = v121;
  sub_25237153C(v85, v121, &qword_27F4E2860);
  v89 = v122;
  *v122 = 0;
  *(v89 + 8) = 1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E28E0);
  sub_25237153C(v87, v89 + *(v90 + 48), &qword_27F4E2868);
  sub_25237153C(v88, v89 + *(v90 + 64), &qword_27F4E2860);
  sub_252372288(v85, &qword_27F4E2860);
  sub_252372288(v86, &qword_27F4E2868);
  sub_252372288(v88, &qword_27F4E2860);
  return sub_252372288(v87, &qword_27F4E2868);
}

uint64_t sub_252562C04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2526910F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for HeaderView.CardHeaderView.ContentView(0);
  sub_25237153C(v1 + *(v10 + 20), v9, &qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2526909E0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_252692F00();
    v13 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t (*sub_252562E0C())()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for HeaderView.CardHeaderView.ContentView(0) + 24));
  v6 = *v5;
  LODWORD(v5) = *(v5 + 16);
  v7 = v6;
  v11 = v6;
  if (v5 == 1)
  {
    sub_25235E21C(v6);
    v8 = v11;
    if (v11)
    {
LABEL_3:
      *(swift_allocObject() + 16) = v8;
      return sub_252566A38;
    }
  }

  else
  {

    sub_252692F00();
    v10 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252566290(v7, *(&v11 + 1), 0);
    (*(v2 + 8))(v4, v1);
    v8 = v12;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_252562FD4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2526912E0();
  *(a1 + 8) = 0x401C000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2830);
  return sub_252561F78(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_252563028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2526909E0();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v68[1] = v5;
  v69 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68[0] = v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E27D0);
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x28223BE20](v8);
  v75 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC848);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v68 - v16;
  v18 = type metadata accessor for AccessoryControlsHeaderConfig.Image(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(type metadata accessor for AccessoryControlsHeaderConfig(0) + 24);
  v74 = a1;
  sub_25237153C(a1 + v22, v17, &qword_27F4DC848);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_252372288(v17, &qword_27F4DC848);
    sub_252565F64(&v108);
  }

  else
  {
    sub_25256514C(v17, v21, type metadata accessor for AccessoryControlsHeaderConfig.Image);
    v23 = sub_2526912E0();
    LOBYTE(v108) = 1;
    sub_252564668(v21, v14, type metadata accessor for AccessoryControlsHeaderConfig.Image);
    (*(v19 + 56))(v14, 0, 1, v18);
    sub_252560BE0(v14, &v89);
    sub_252372288(v14, &qword_27F4DC848);
    *(v79 + 7) = v89;
    *(&v79[1] + 7) = v90;
    *(&v79[2] + 7) = v91[0];
    *(&v79[3] + 1) = *(v91 + 10);
    v24 = v108;
    v25 = sub_252691A20();
    sub_252690760();
    *(&v102[1] + 1) = v79[1];
    *(&v102[2] + 1) = v79[2];
    *(&v102[3] + 1) = v79[3];
    v101 = v23;
    LOBYTE(v102[0]) = v24;
    BYTE1(v102[4]) = v79[4];
    *(v102 + 1) = v79[0];
    BYTE8(v102[4]) = v25;
    *&v103 = v26;
    *(&v103 + 1) = v27;
    *&v104 = v28;
    *(&v104 + 1) = v29;
    v105 = 0;
    CGPointMake(&v101);
    sub_2525650EC(v21, type metadata accessor for AccessoryControlsHeaderConfig.Image);
    v114 = v103;
    v115 = v104;
    v116 = v105;
    v110 = v102[1];
    v111 = v102[2];
    v112 = v102[3];
    v113 = v102[4];
    v108 = v101;
    v109 = v102[0];
  }

  v73 = sub_2526912F0();
  LOBYTE(v101) = 1;
  v30 = v74;
  sub_2525638C8(v74, v107);
  *&v106[7] = v107[0];
  *&v106[23] = v107[1];
  *&v106[39] = v107[2];
  *&v106[55] = v107[3];
  v72 = v101;
  v31 = sub_252562E0C();
  if (v31)
  {
    v33 = v31;
    v34 = v32;
    v35 = sub_252566A3C;
  }

  else
  {
    v36 = v68[0];
    sub_252562C04(v68[0]);
    v37 = v69;
    v39 = v70 + 32;
    v38 = *(v70 + 32);
    v40 = v71;
    v38(v69, v36, v71);
    v41 = (*(v39 + 48) + 16) & ~*(v39 + 48);
    v34 = swift_allocObject();
    v38((v34 + v41), v37, v40);
    v35 = sub_25249A7D8;
    v33 = sub_252565F8C;
  }

  v42 = swift_allocObject();
  *(v42 + 16) = v33;
  *(v42 + 24) = v34;
  v43 = swift_allocObject();
  *(v43 + 16) = v35;
  *(v43 + 24) = v42;
  MEMORY[0x28223BE20](v43);
  v68[-2] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E27D8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E27E0);
  v45 = sub_252566014();
  v46 = sub_25256623C();
  *&v101 = v44;
  *(&v101 + 1) = MEMORY[0x277CE1120];
  *&v102[0] = v45;
  *(&v102[0] + 1) = v46;
  swift_getOpaqueTypeConformance2();
  v47 = v78;
  sub_252692550();
  v86 = v114;
  v87 = v115;
  v88 = v116;
  v82 = v110;
  v83 = v111;
  v84 = v112;
  v85 = v113;
  v80 = v108;
  v81 = v109;
  v49 = v75;
  v48 = v76;
  v50 = *(v76 + 16);
  v51 = v77;
  v50(v75, v47, v77);
  v52 = v87;
  v91[4] = v86;
  v91[5] = v87;
  v53 = v82;
  v54 = v83;
  v91[0] = v82;
  v91[1] = v83;
  v56 = v84;
  v55 = v85;
  v91[2] = v84;
  v91[3] = v85;
  v58 = v80;
  v57 = v81;
  v89 = v80;
  v90 = v81;
  *(a2 + 96) = v86;
  *(a2 + 112) = v52;
  *(a2 + 32) = v53;
  *(a2 + 48) = v54;
  v92 = v88;
  *(a2 + 128) = v88;
  *(a2 + 64) = v56;
  *(a2 + 80) = v55;
  *a2 = v58;
  *(a2 + 16) = v57;
  v59 = v73;
  v93[0] = v73;
  v93[1] = 0;
  v60 = v72;
  v94[0] = v72;
  *&v94[1] = *v106;
  *&v94[17] = *&v106[16];
  *&v94[33] = *&v106[32];
  *&v94[49] = *&v106[48];
  v61 = *&v106[63];
  *&v94[64] = *&v106[63];
  v62 = *v94;
  *(a2 + 136) = v73;
  *(a2 + 152) = v62;
  v63 = *&v94[16];
  v64 = *&v94[32];
  *(a2 + 200) = *&v94[48];
  *(a2 + 184) = v64;
  *(a2 + 168) = v63;
  *(a2 + 216) = v61;
  *(a2 + 224) = 0;
  *(a2 + 232) = 1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2818);
  v50((a2 + *(v65 + 80)), v49, v51);
  sub_25237153C(&v89, &v101, &qword_27F4E2820);
  sub_25237153C(v93, &v101, &qword_27F4E2828);
  v66 = *(v48 + 8);
  v66(v78, v51);
  v66(v49, v51);
  v95[0] = v59;
  v95[1] = 0;
  v96 = v60;
  v98 = *&v106[16];
  v99 = *&v106[32];
  *v100 = *&v106[48];
  *&v100[15] = *&v106[63];
  v97 = *v106;
  sub_252372288(v95, &qword_27F4E2828);
  v103 = v86;
  v104 = v87;
  v105 = v88;
  v102[1] = v82;
  v102[2] = v83;
  v102[3] = v84;
  v102[4] = v85;
  v101 = v80;
  v102[0] = v81;
  return sub_252372288(&v101, &qword_27F4E2820);
}

uint64_t sub_2525638C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_252691BC0();
  v4 = sub_252691D00();
  v6 = v5;
  v8 = v7;

  if (qword_27F4DAB40 != -1)
  {
    swift_once();
  }

  v9 = sub_252691CC0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_2524228D8(v4, v6, v8 & 1);

  v16 = *(a1 + 24);
  if (v16)
  {
    v17 = qword_27F4DAB48;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_252691CC0();
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v16 = v22 & 1;
    sub_25235EABC(v18, v20, v22 & 1);
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v24 = 0;
  }

  v25 = v13 & 1;
  sub_25235EABC(v9, v11, v25);

  sub_2524B4DEC(v18, v20, v16, v24);
  sub_2524B4E30(v18, v20, v16, v24);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v25;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  *(a2 + 40) = v20;
  *(a2 + 48) = v16;
  *(a2 + 56) = v24;
  sub_2524B4E30(v18, v20, v16, v24);
  sub_2524228D8(v9, v11, v25);
}

uint64_t sub_252563B10@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v28 = sub_252692680();
  v1 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E27F8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E27E0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v26 = sub_2526923D0();
  sub_252692920();
  sub_252690D70();
  v11 = sub_252691AD0();
  KeyPath = swift_getKeyPath();
  v13 = &v7[*(v5 + 44)];
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF50) + 28);
  v15 = *MEMORY[0x277CE1048];
  v16 = sub_252692410();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  v17 = v32;
  *(v7 + 40) = v31;
  v18 = v29;
  *(v7 + 24) = v30;
  *(v7 + 8) = v18;
  v19 = v34;
  *(v7 + 104) = v35;
  v20 = v33;
  *(v7 + 88) = v19;
  *(v7 + 72) = v20;
  *v7 = v26;
  *(v7 + 56) = v17;
  *(v7 + 15) = KeyPath;
  *(v7 + 16) = v11;
  v21 = sub_252692360();
  v22 = swift_getKeyPath();
  sub_2523714D4(v7, v10, &qword_27F4E27F8);
  v23 = &v10[*(v8 + 36)];
  *v23 = v22;
  v23[1] = v21;
  sub_252692670();
  sub_252566014();
  sub_25256623C();
  sub_252691E20();
  (*(v1 + 8))(v3, v28);
  return sub_252372288(v10, &qword_27F4E27E0);
}

double sub_252563E4C@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_2526911D0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E27C0);
  sub_252563028(v1, a1 + *(v3 + 44));
  v4 = sub_252691A20();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E27C8) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_252563F1C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_252692240();
  *a3 = result;
  return result;
}

uint64_t sub_252563F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25252AD14(*a1, *(a1 + 8), v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  sub_2523FEEC8(a4 + *(v13 + 36), v12, a5, a6);
  return sub_2525650EC(v12, type metadata accessor for AccessoryControl.WriteSpecification);
}

double sub_252564040(void *a1, unsigned __int8 *a2, double a3)
{
  v25 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E24B0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E24B8);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252694EA0;
  v9 = (v8 + v7);
  v10 = *(v5 + 48);
  v11 = a1[1];
  *v9 = *a1;
  *(v9 + 1) = v11;
  v12 = *MEMORY[0x277CE0AC0];
  v13 = sub_252691BD0();
  v14 = *(*(v13 - 8) + 104);
  v14(&v9[v10], v12, v13);
  v15 = &v9[v6];
  v16 = a1[3];
  if (v25 == 1)
  {
    if (v16)
    {
      v17 = a1[2];
      v18 = a1[3];
    }

    else
    {
      v18 = 0xE100000000000000;
      v17 = 32;
    }

    *v15 = v17;
    v15[1] = v18;
    v21 = *MEMORY[0x277CE0A58];
    v22 = v15 + *(v5 + 48);
  }

  else
  {
    if (v16)
    {
      v19 = a1[2];
      v20 = a1[3];
    }

    else
    {
      v20 = 0xE100000000000000;
      v19 = 32;
    }

    *v15 = v19;
    v15[1] = v20;
    v22 = v15 + *(v5 + 48);
    v21 = v12;
  }

  v14(v22, v21, v13);

  v23 = sub_2526878FC(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23 + 17.0 + a3;
}

double sub_25256426C(void *a1, unsigned __int8 *a2, double a3)
{
  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E24B0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E24B8);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v21 = *(*(v6 - 8) + 72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252694EA0;
  v9 = (v8 + v7);
  v10 = *(v6 + 48);
  v11 = a1[1];
  *v9 = *a1;
  *(v9 + 1) = v11;
  v12 = sub_252691BD0();
  v13 = *(*(v12 - 8) + 104);
  if (v5 != 1)
  {
    v13(&v9[v10], *MEMORY[0x277CE0A70], v12);
    v14 = a1[3];
    v16 = MEMORY[0x277CE0AC0];
    v15 = 87.0;
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = a1[2];
    goto LABEL_6;
  }

  v13(&v9[v10], *MEMORY[0x277CE0AC0], v12);
  v14 = a1[3];
  v15 = 17.0;
  v16 = MEMORY[0x277CE0A58];
  if (v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = 0xE100000000000000;
  v17 = 32;
LABEL_6:
  v18 = &v9[v21];
  *v18 = v17;
  v18[1] = v14;
  v13(&v9[v21 + *(v6 + 48)], *v16, v12);

  v19 = sub_2526878FC(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v19 + v15 + a3;
}

uint64_t sub_252564564(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2525645AC()
{
  result = qword_27F4E24F0;
  if (!qword_27F4E24F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E24D8);
    sub_252564564(&qword_27F4E24F8, type metadata accessor for HeaderView.TitleDescriptionHeader);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E24F0);
  }

  return result;
}

uint64_t sub_252564668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252564718()
{
  result = type metadata accessor for Device();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AccessoryControl(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2525647F4()
{
  type metadata accessor for AccessoryControlsHeaderConfig(319);
  if (v0 <= 0x3F)
  {
    sub_25252F2E0(319, &qword_27F4DBD08);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControlsHeaderConfig(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryControlsHeaderConfig(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

void sub_252564A60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  type metadata accessor for AccessoryControlsHeaderConfig(319);
  if (v5 <= 0x3F)
  {
    sub_25252F2E0(319, a4);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_252564B44()
{
  result = type metadata accessor for AccessoryControlsHeaderConfig(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_252564BC8()
{
  result = qword_27F4E2548;
  if (!qword_27F4E2548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E24D0);
    sub_252564C54();
    sub_252564D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2548);
  }

  return result;
}

unint64_t sub_252564C54()
{
  result = qword_27F4E2550;
  if (!qword_27F4E2550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2558);
    sub_252564CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2550);
  }

  return result;
}

unint64_t sub_252564CD8()
{
  result = qword_27F4E2560;
  if (!qword_27F4E2560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2568);
    sub_252564564(&qword_27F4E24E8, type metadata accessor for HeaderView.CardHeaderView);
    sub_2525645AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2560);
  }

  return result;
}

unint64_t sub_252564D94()
{
  result = qword_27F4E2570;
  if (!qword_27F4E2570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2578);
    sub_252564E20();
    sub_252564E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2570);
  }

  return result;
}

unint64_t sub_252564E20()
{
  result = qword_27F4E2580;
  if (!qword_27F4E2580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2580);
  }

  return result;
}

unint64_t sub_252564E74()
{
  result = qword_27F4E2588;
  if (!qword_27F4E2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2588);
  }

  return result;
}

uint64_t sub_252564F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HeaderView.TitleDescriptionHeader(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_25255F148(a1, v2 + v6, a2, v8, v9);
}

unint64_t sub_252565030()
{
  result = qword_27F4E2628;
  if (!qword_27F4E2628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2620);
    sub_252564564(&qword_27F4E2168, type metadata accessor for MenuPickerControlView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2628);
  }

  return result;
}

uint64_t sub_2525650EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25256514C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525651B4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68);
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = v1 + *(result + 48) + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *v6;
  LOBYTE(v6) = *(v6 + 8);
  *a1 = v7;
  *(a1 + 8) = v6;
  return result;
}

unint64_t sub_252565234()
{
  result = qword_27F4E2688;
  if (!qword_27F4E2688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2690);
    sub_2525652EC();
    sub_252400FC8(&qword_27F4DC108, &qword_27F4DC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2688);
  }

  return result;
}

unint64_t sub_2525652EC()
{
  result = qword_27F4E2698;
  if (!qword_27F4E2698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E26A0);
    sub_2525653A4();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2698);
  }

  return result;
}

unint64_t sub_2525653A4()
{
  result = qword_27F4E26A8;
  if (!qword_27F4E26A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E26B0);
    sub_25256545C();
    sub_252400FC8(&qword_27F4DBFA8, &qword_27F4DBFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E26A8);
  }

  return result;
}

unint64_t sub_25256545C()
{
  result = qword_27F4E26B8;
  if (!qword_27F4E26B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E26C0);
    sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E26B8);
  }

  return result;
}

unint64_t sub_252565514()
{
  result = qword_27F4E26C8;
  if (!qword_27F4E26C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2660);
    sub_2525655CC();
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E26C8);
  }

  return result;
}

unint64_t sub_2525655CC()
{
  result = qword_27F4E26D0;
  if (!qword_27F4E26D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2658);
    sub_252565684();
    sub_252400FC8(&qword_27F4E0E18, &qword_27F4DD3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E26D0);
  }

  return result;
}

unint64_t sub_252565684()
{
  result = qword_27F4E26D8;
  if (!qword_27F4E26D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2650);
    sub_25256573C();
    sub_252400FC8(&qword_27F4DBEE8, &qword_27F4DBEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E26D8);
  }

  return result;
}

unint64_t sub_25256573C()
{
  result = qword_27F4E26E0;
  if (!qword_27F4E26E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E26A0);
    sub_2525652EC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E26E0);
  }

  return result;
}

uint64_t sub_252565804(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  if ((a9 & 1) == 0)
  {
    return sub_252565818(result, a2, a3, a4, a5, a6, a7, a8 & 1);
  }

  return result;
}

uint64_t sub_252565818(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
    sub_25235EABC(a1, a2, a3 & 1);
  }

  else
  {
  }
}

uint64_t sub_2525658AC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  if ((a9 & 1) == 0)
  {
    return sub_2525658C0(result, a2, a3, a4, a5, a6, a7, a8 & 1);
  }

  return result;
}

uint64_t sub_2525658C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
    sub_2524228D8(a1, a2, a3 & 1);
  }

  else
  {
  }
}

unint64_t sub_252565958()
{
  result = qword_27F4E2700;
  if (!qword_27F4E2700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E26F8);
    sub_252422E54();
    sub_2525659E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2700);
  }

  return result;
}

unint64_t sub_2525659E4()
{
  result = qword_27F4E2708;
  if (!qword_27F4E2708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2710);
    sub_252566620(&qword_27F4E2718, &qword_27F4E2720);
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2708);
  }

  return result;
}

void sub_252565AE4()
{
  type metadata accessor for AccessoryControlsHeaderConfig(319);
  if (v0 <= 0x3F)
  {
    sub_2524BAB34();
    if (v1 <= 0x3F)
    {
      sub_252565B80();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252565B80()
{
  if (!qword_27F4E2738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2740);
    v0 = sub_2526908A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E2738);
    }
  }
}

void sub_252565C0C()
{
  type metadata accessor for AccessoryControlsHeaderConfig(319);
  if (v0 <= 0x3F)
  {
    sub_25252F2E0(319, &qword_27F4DBD08);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_252565CA8()
{
  result = qword_27F4E2758;
  if (!qword_27F4E2758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2590);
    sub_252564564(&qword_27F4E2760, type metadata accessor for HeaderView.CardHeaderView.ContentView);
    sub_252400FC8(&qword_27F4E2768, &qword_27F4E25A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2758);
  }

  return result;
}

unint64_t sub_252565D90()
{
  result = qword_27F4E2770;
  if (!qword_27F4E2770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2778);
    sub_252400FC8(&qword_27F4E2780, &qword_27F4E2788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2770);
  }

  return result;
}

unint64_t sub_252565E48()
{
  result = qword_27F4E27A0;
  if (!qword_27F4E27A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2638);
    sub_252400FC8(&qword_27F4E27A8, &qword_27F4E27B0);
    sub_252400FC8(&qword_27F4E27B8, &qword_27F4E25F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E27A0);
  }

  return result;
}

double sub_252565F64(uint64_t a1)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 65280;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 113) = 0u;
  return result;
}

unint64_t sub_252566014()
{
  result = qword_27F4E27E8;
  if (!qword_27F4E27E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E27E0);
    sub_2525660CC();
    sub_252400FC8(&qword_27F4DC108, &qword_27F4DC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E27E8);
  }

  return result;
}

unint64_t sub_2525660CC()
{
  result = qword_27F4E27F0;
  if (!qword_27F4E27F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E27F8);
    sub_252566184();
    sub_252400FC8(&qword_27F4DBF48, &qword_27F4DBF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E27F0);
  }

  return result;
}

unint64_t sub_252566184()
{
  result = qword_27F4E2800;
  if (!qword_27F4E2800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2808);
    sub_252421F2C();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2800);
  }

  return result;
}

unint64_t sub_25256623C()
{
  result = qword_27F4E2810;
  if (!qword_27F4E2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2810);
  }

  return result;
}

uint64_t sub_252566290(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_25247CDCC(result);
  }

  else
  {
  }
}

uint64_t sub_25256629C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_252566320()
{
  result = qword_27F4E2880;
  if (!qword_27F4E2880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2888);
    sub_2525663D8();
    sub_252400FC8(&qword_27F4DC108, &qword_27F4DC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2880);
  }

  return result;
}

unint64_t sub_2525663D8()
{
  result = qword_27F4E2890;
  if (!qword_27F4E2890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2898);
    sub_252566490();
    sub_252400FC8(&qword_27F4DBDF0, &qword_27F4DBDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E2890);
  }

  return result;
}

unint64_t sub_252566490()
{
  result = qword_27F4E28A0;
  if (!qword_27F4E28A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E28A8);
    sub_252566548();
    sub_252400FC8(&qword_27F4DBFA8, &qword_27F4DBFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E28A0);
  }

  return result;
}

unint64_t sub_252566548()
{
  result = qword_27F4E28B0;
  if (!qword_27F4E28B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E28B8);
    sub_252566620(&qword_27F4E01E0, &qword_27F4E01D8);
    sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E28B0);
  }

  return result;
}

uint64_t sub_252566620(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_252566690()
{
  result = qword_27F4E28C0;
  if (!qword_27F4E28C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2858);
    sub_252566748();
    sub_252400FC8(&qword_27F4DBEF8, &qword_27F4DBF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E28C0);
  }

  return result;
}

unint64_t sub_252566748()
{
  result = qword_27F4E28C8;
  if (!qword_27F4E28C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2850);
    sub_252566800();
    sub_252400FC8(&qword_27F4E0E18, &qword_27F4DD3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E28C8);
  }

  return result;
}

unint64_t sub_252566800()
{
  result = qword_27F4E28D0;
  if (!qword_27F4E28D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2848);
    sub_2525668B8();
    sub_252400FC8(&qword_27F4DBEE8, &qword_27F4DBEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E28D0);
  }

  return result;
}

unint64_t sub_2525668B8()
{
  result = qword_27F4E28D8;
  if (!qword_27F4E28D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E2898);
    sub_2525663D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E28D8);
  }

  return result;
}

unint64_t sub_252566980()
{
  result = qword_27F4E28E8;
  if (!qword_27F4E28E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E27C8);
    sub_252400FC8(&qword_27F4E28F0, &qword_27F4E28F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E28E8);
  }

  return result;
}

void sub_252566A88()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AccessoryControlsHeaderConfig(319);
    if (v1 <= 0x3F)
    {
      sub_252566E08(319, &qword_27F4DBD08, &type metadata for AccessoryControlsStyle, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_252566E08(319, &qword_27F4E2530, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_252566BBC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_252566BBC()
{
  if (!qword_27F4E2920)
  {
    type metadata accessor for AnimationModel();
    sub_252566C20();
    v0 = sub_252690E00();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E2920);
    }
  }
}