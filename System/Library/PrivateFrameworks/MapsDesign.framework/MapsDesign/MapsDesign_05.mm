uint64_t sub_213E48A48()
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t sub_213E48B00(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  if ((*(v2 + 104) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 96) != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 96) = *&a1;
    *(v2 + 104) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB70();
}

uint64_t sub_213E48C4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  result = swift_beginAccess();
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  return result;
}

void (*sub_213E48CA4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E48900();
  return sub_213E48DDC;
}

uint64_t sub_213E48E38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 105);
  return result;
}

uint64_t sub_213E48F1C()
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return *(v0 + 105);
}

uint64_t sub_213E48FD0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 105) == v2)
  {
    *(v1 + 105) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
    sub_213F4CB70();
  }

  return result;
}

uint64_t sub_213E490F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 105) = v2;
  return result;
}

void (*sub_213E49148(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E48DE8();
  return sub_213E49280;
}

uint64_t sub_213E492DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  v5 = *(v3 + 120);
  *a2 = *(v3 + 112);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_213E493D4()
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t sub_213E4948C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  if ((*(v2 + 120) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 112) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 112) = a1;
    *(v2 + 120) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB70();
}

uint64_t sub_213E495D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  result = swift_beginAccess();
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  return result;
}

void (*sub_213E4962C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E4928C();
  return sub_213E49764;
}

uint64_t GridButtonViewModel.__allocating_init(id:title:subtitle:icon:metrics:style:compact:color:progress:leadingIcon:lineLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char *a10, char a11, uint64_t a12, uint64_t a13, char a14, char a15, uint64_t a16, char a17)
{
  v23 = *(v17 + 48);
  v24 = *(v17 + 52);
  v25 = swift_allocObject();
  v26 = *a9;
  v27 = *a10;
  *(v25 + 96) = 0;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 104) = 1;
  *(v25 + 112) = 0;
  *(v25 + 120) = 1;
  sub_213F4CBB0();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  v28 = *(v25 + 56);

  *(v25 + 48) = a5;
  *(v25 + 56) = a6;
  v29 = *(v25 + 72);

  *(v25 + 64) = a7;
  *(v25 + 72) = a8;
  *(v25 + 80) = v26;
  *(v25 + 81) = v27;
  *(v25 + 82) = a11;
  *(v25 + 88) = a12;
  *(v25 + 96) = a13;
  *(v25 + 104) = a14 & 1;
  *(v25 + 105) = a15;

  sub_213E4948C(a16, a17 & 1);

  return v25;
}

uint64_t GridButtonViewModel.init(id:title:subtitle:icon:metrics:style:compact:color:progress:leadingIcon:lineLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char *a10, char a11, uint64_t a12, uint64_t a13, char a14, char a15, uint64_t a16, char a17)
{
  v23 = *a9;
  v24 = *a10;
  *(v17 + 96) = 0;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 104) = 1;
  *(v17 + 112) = 0;
  *(v17 + 120) = 1;
  sub_213F4CBB0();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  v25 = *(v17 + 56);

  *(v17 + 48) = a5;
  *(v17 + 56) = a6;
  v26 = *(v17 + 72);

  *(v17 + 64) = a7;
  *(v17 + 72) = a8;
  *(v17 + 80) = v23;
  *(v17 + 81) = v24;
  *(v17 + 82) = a11;
  *(v17 + 88) = a12;
  *(v17 + 96) = a13;
  *(v17 + 104) = a14 & 1;
  *(v17 + 105) = a15;

  sub_213E4948C(a16, a17 & 1);

  return v17;
}

char *GridButtonViewModel.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 9);

  v5 = *(v0 + 11);

  v6 = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  v7 = sub_213F4CBC0();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return v0;
}

uint64_t GridButtonViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 9);

  v5 = *(v0 + 11);

  v6 = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  v7 = sub_213F4CBC0();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_213E49B50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_213DE3164(v2, &v17 - v11, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4D290();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_213E49D50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for GridButton(0);
  sub_213DE3164(v1 + *(v12 + 20), v11, &qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4CEA0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t GridButton.init(model:tapHandler:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for GridButton(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v8 = v6[6];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v9 = v6[7];
  type metadata accessor for GridButtonViewModel(0);
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  result = sub_213F4ED60();
  v11 = (a3 + v6[8]);
  *v11 = a1;
  v11[1] = a2;
  return result;
}

double sub_213E4A0B0()
{
  v16 = sub_213F4D290();
  v0 = *(v16 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for GridButton(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v8 = v18;
  swift_getKeyPath();
  v18 = v8;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v9 = *(v8 + 56);

  if (v9)
  {
    v10 = 6.0;
  }

  else
  {
    v10 = 10.0;
  }

  sub_213F4ED40();
  v11 = v17;
  swift_getKeyPath();
  v17 = v11;
  sub_213F4CB80();

  sub_213E49B50(v6);
  sub_213F4D280();
  sub_213F4D270();
  v12 = *(v0 + 8);
  v13 = v16;
  v12(v4, v16);
  v12(v6, v13);
  return v10;
}

uint64_t sub_213E4A314()
{
  v0 = sub_213F4CEA0();
  v17 = *(v0 - 8);
  v1 = *(v17 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = *(type metadata accessor for GridButton(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v8 = v19;
  swift_getKeyPath();
  v19 = v8;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v9 = *(v8 + 81);

  if (!v9)
  {
    return sub_213F4E8F0();
  }

  if (v9 == 1)
  {
    sub_213F4ED40();
    v10 = v18;
    swift_getKeyPath();
    v18 = v10;
    sub_213F4CB80();

    swift_beginAccess();
    v11 = *(v10 + 88);

    return v11;
  }

  sub_213E49D50(v6);
  v13 = v17;
  (*(v17 + 104))(v4, *MEMORY[0x277CDF3D0], v0);
  v14 = sub_213F4CE90();
  v15 = *(v13 + 8);
  v15(v4, v0);
  v15(v6, v0);
  if (v14)
  {
    return sub_213F4E8C0();
  }

  else
  {
    return sub_213F4E8F0();
  }
}

uint64_t sub_213E4A5C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_213F4E230();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for GridButton(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v10 = v18;
  swift_getKeyPath();
  v18 = v10;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v11 = *(v10 + 80);

  v12 = *(v5 + 104);
  if (v11)
  {
    v12(v8, *MEMORY[0x277CE0A68], v4);
    v13 = sub_213F4E0F0();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    sub_213F4E180();
  }

  else
  {
    v12(v8, *MEMORY[0x277CE0A80], v4);
    v14 = sub_213F4E0F0();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    sub_213F4E110();
  }

  v15 = sub_213F4E1A0();
  sub_213DE36FC(v3, &qword_27C8F7668, &qword_213F52190);
  (*(v5 + 8))(v8, v4);
  return v15;
}

double sub_213E4A8A8()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = *(type metadata accessor for GridButton(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v9 = v14;
  swift_getKeyPath();
  v14 = v9;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v10 = *(v9 + 80);

  sub_213E49B50(v7);
  sub_213F4D280();
  sub_213F4D270();
  v11 = *(v1 + 8);
  v11(v5, v0);
  v11(v7, v0);
  return dbl_213F59588[v10];
}

uint64_t sub_213E4AA94@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v1 = sub_213F4CEA0();
  v69 = *(v1 - 8);
  v70 = v1;
  v2 = *(v69 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v67 = &v60 - v5;
  v6 = sub_213F4EC90();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v63 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v60 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99F8, &qword_213F59570);
  v11 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v75 = &v60 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A00, &qword_213F59578);
  v13 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v68 = &v60 - v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A08, &qword_213F59580);
  v15 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v60 - v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A28, &qword_213F529B0);
  v17 = *(*(v72 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v72);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v61 = &v60 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v60 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v62 = &v60 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v60 - v28;
  v30 = *(type metadata accessor for GridButton(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v31 = v78;
  swift_getKeyPath();
  v78 = v31;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v32 = *(v31 + 81);

  v33 = *MEMORY[0x277CE0118];
  v34 = sub_213F4D950();
  v35 = *(*(v34 - 8) + 104);
  if (v32)
  {
    if (v32 == 1)
    {
      v36 = v64;
      v35(v64, v33, v34);
      sub_213F4ED40();
      v37 = v77;
      swift_getKeyPath();
      v77 = v37;
      sub_213F4CB80();

      swift_beginAccess();
      v38 = *(v37 + 88);

      v39 = v67;
      sub_213E49D50(v67);
      v41 = v69;
      v40 = v70;
      v42 = v66;
      (*(v69 + 104))(v66, *MEMORY[0x277CDF3D0], v70);
      sub_213F4CE90();
      v43 = *(v41 + 8);
      v43(v42, v40);
      v43(v39, v40);
      v44 = sub_213F4E900();

      sub_213E510B0(v36, v25, MEMORY[0x277CE1260]);
      *&v25[*(v72 + 36)] = v44;
      v45 = v62;
      sub_213DE2B44(v25, v62, &qword_27C8F7A28, &qword_213F529B0);
      sub_213DE3164(v45, v68, &qword_27C8F7A28, &qword_213F529B0);
      swift_storeEnumTagMultiPayload();
      sub_213DE551C();
      v46 = v71;
      sub_213F4DBA0();
      sub_213DE3164(v46, v75, &qword_27C8F9A08, &qword_213F59580);
      swift_storeEnumTagMultiPayload();
      sub_213E51118();
      sub_213F4DBA0();
      sub_213DE36FC(v46, &qword_27C8F9A08, &qword_213F59580);
      v29 = v45;
    }

    else
    {
      v50 = v63;
      v35(v63, v33, v34);
      v51 = [objc_opt_self() labelColor];
      sub_213F4E870();
      v52 = v67;
      sub_213E49D50(v67);
      v54 = v69;
      v53 = v70;
      v55 = v66;
      (*(v69 + 104))(v66, *MEMORY[0x277CDF3D0], v70);
      sub_213F4CE90();
      v56 = *(v54 + 8);
      v56(v55, v53);
      v56(v52, v53);
      v57 = sub_213F4E900();

      sub_213E510B0(v50, v20, MEMORY[0x277CE1260]);
      *&v20[*(v72 + 36)] = v57;
      v58 = v61;
      sub_213DE2B44(v20, v61, &qword_27C8F7A28, &qword_213F529B0);
      sub_213DE3164(v58, v75, &qword_27C8F7A28, &qword_213F529B0);
      swift_storeEnumTagMultiPayload();
      sub_213E51118();
      sub_213DE551C();
      sub_213F4DBA0();
      v29 = v58;
    }
  }

  else
  {
    v35(v29, v33, v34);
    sub_213F4ED40();
    v47 = v77;
    swift_getKeyPath();
    v77 = v47;
    sub_213F4CB80();

    swift_beginAccess();
    v48 = *(v47 + 88);

    *&v29[*(v72 + 36)] = v48;
    sub_213DE3164(v29, v68, &qword_27C8F7A28, &qword_213F529B0);
    swift_storeEnumTagMultiPayload();
    sub_213DE551C();
    v49 = v71;
    sub_213F4DBA0();
    sub_213DE3164(v49, v75, &qword_27C8F9A08, &qword_213F59580);
    swift_storeEnumTagMultiPayload();
    sub_213E51118();
    sub_213F4DBA0();
    sub_213DE36FC(v49, &qword_27C8F9A08, &qword_213F59580);
  }

  return sub_213DE36FC(v29, &qword_27C8F7A28, &qword_213F529B0);
}

uint64_t sub_213E4B424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v111 = a2;
  v112 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98E0, &qword_213F59388);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v99 = (v96 - v6);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98E8, &qword_213F59390);
  v7 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v108 = v96 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98F0, &qword_213F59398);
  v9 = *(*(v107 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v107);
  v110 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v106 = v96 - v13;
  MEMORY[0x28223BE20](v12);
  v109 = v96 - v14;
  v103 = sub_213F4D290();
  v102 = *(v103 - 8);
  v15 = *(v102 + 64);
  v16 = MEMORY[0x28223BE20](v103);
  v101 = v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v100 = v96 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98F8, &qword_213F593A0);
  v98 = *(v19 - 8);
  v20 = *(v98 + 64);
  MEMORY[0x28223BE20](v19);
  v97 = (v96 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9900, &qword_213F593A8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v104 = v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = v96 - v26;
  v28 = *(type metadata accessor for GridButton(0) + 28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v30 = v116;
  swift_getKeyPath();
  v31 = &unk_281185000;
  v116 = v30;
  v32 = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v33 = *(v30 + 105);

  v34 = 1;
  v113 = v27;
  if (v33 == 1)
  {
    v96[3] = v28;
    v96[2] = v29;
    sub_213F4ED40();
    v35 = v115;
    swift_getKeyPath();
    v115 = v35;
    v96[1] = v32;
    sub_213F4CB80();

    swift_beginAccess();
    v37 = *(v35 + 64);
    v36 = *(v35 + 72);

    v34 = 1;
    if (v36)
    {
      v38 = sub_213F4D8A0();
      v39 = v97;
      *v97 = v38;
      *(v39 + 8) = 0;
      *(v39 + 16) = 1;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9918, &qword_213F593C0);
      sub_213E4BDB0(v112, v39 + *(v40 + 44));

      v41 = sub_213F4E040();
      v42 = v100;
      sub_213E49B50(v100);
      v43 = v101;
      sub_213F4D280();
      sub_213F4D270();
      v44 = *(v102 + 8);
      v45 = v43;
      v46 = v103;
      v44(v45, v103);
      v44(v42, v46);
      sub_213F4CDA0();
      v47 = v39 + *(v19 + 36);
      *v47 = v41;
      *(v47 + 8) = v48;
      *(v47 + 16) = v49;
      *(v47 + 24) = v50;
      *(v47 + 32) = v51;
      *(v47 + 40) = 0;
      v27 = v113;
      sub_213DE2B44(v39, v113, &qword_27C8F98F8, &qword_213F593A0);
      v34 = 0;
      v31 = &unk_281185000;
    }

    else
    {
      v27 = v113;
    }
  }

  (*(v98 + 56))(v27, v34, 1, v19);
  v52 = sub_213F4D8A0();
  v53 = v99;
  *v99 = v52;
  *(v53 + 8) = 0;
  *(v53 + 16) = 1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9908, &qword_213F593B0);
  sub_213E4C6F0(v3, v112, (v53 + *(v54 + 44)));
  v55 = sub_213F4E040();
  sub_213F4ED40();
  v56 = v115;
  swift_getKeyPath();
  v57 = v31[305];
  v115 = v56;
  sub_213F4CB80();

  swift_beginAccess();
  v58 = *(v56 + 72);

  if (!v58)
  {
    goto LABEL_7;
  }

  sub_213F4ED40();
  v59 = v114;
  swift_getKeyPath();
  v60 = v31[305];
  v114 = v59;
  sub_213F4CB80();

  swift_beginAccess();
  v61 = *(v59 + 105);

  if ((v61 & 1) == 0)
  {
LABEL_7:
    v62 = v100;
    sub_213E49B50(v100);
    v63 = v101;
    sub_213F4D280();
    sub_213F4D270();
    v64 = *(v102 + 8);
    v65 = v63;
    v66 = v103;
    v64(v65, v103);
    v64(v62, v66);
  }

  sub_213F4CDA0();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = v108;
  sub_213DE2B44(v53, v108, &qword_27C8F98E0, &qword_213F59388);
  v76 = v75 + *(v105 + 36);
  *v76 = v55;
  *(v76 + 8) = v68;
  *(v76 + 16) = v70;
  *(v76 + 24) = v72;
  *(v76 + 32) = v74;
  *(v76 + 40) = 0;
  v77 = sub_213F4E0B0();
  sub_213E4A0B0();
  sub_213F4CDA0();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v86 = v75;
  v87 = v106;
  sub_213DE2B44(v86, v106, &qword_27C8F98E8, &qword_213F59390);
  v88 = v87 + *(v107 + 36);
  *v88 = v77;
  *(v88 + 8) = v79;
  *(v88 + 16) = v81;
  *(v88 + 24) = v83;
  *(v88 + 32) = v85;
  *(v88 + 40) = 0;
  v89 = v109;
  sub_213DE2B44(v87, v109, &qword_27C8F98F0, &qword_213F59398);
  v90 = v113;
  v91 = v104;
  sub_213DE3164(v113, v104, &qword_27C8F9900, &qword_213F593A8);
  v92 = v110;
  sub_213DE3164(v89, v110, &qword_27C8F98F0, &qword_213F59398);
  v93 = v111;
  sub_213DE3164(v91, v111, &qword_27C8F9900, &qword_213F593A8);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9910, &qword_213F593B8);
  sub_213DE3164(v92, v93 + *(v94 + 48), &qword_27C8F98F0, &qword_213F59398);
  sub_213DE36FC(v89, &qword_27C8F98F0, &qword_213F59398);
  sub_213DE36FC(v90, &qword_27C8F9900, &qword_213F593A8);
  sub_213DE36FC(v92, &qword_27C8F98F0, &qword_213F59398);
  return sub_213DE36FC(v91, &qword_27C8F9900, &qword_213F593A8);
}

uint64_t sub_213E4BDB0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v70 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9228, &unk_213F5A640);
  v3 = *(*(v68 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v68);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v60 = &v59 - v6;
  v74 = sub_213F4D390();
  v73 = *(v74 - 8);
  v7 = *(v73 + 64);
  v8 = MEMORY[0x28223BE20](v74);
  v72 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9230, &qword_213F57250);
  v12 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v61 = &v59 - v13;
  v14 = sub_213F4D290();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9920, &qword_213F593C8);
  v65 = *(v66 - 8);
  v22 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v62 = &v59 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9928, &qword_213F593D0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v67 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v64 = &v59 - v28;

  v71 = sub_213F4EA10();
  v29 = *(type metadata accessor for GridButton(0) + 28);
  v30 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v31 = *&v80[0];
  swift_getKeyPath();
  *&v80[0] = v31;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v32 = *(v31 + 80);

  if (v32)
  {
    sub_213F4E1C0();
    sub_213F4E180();
  }

  else
  {
    sub_213F4E1B0();
    sub_213F4E110();
  }

  v33 = sub_213F4E1D0();

  KeyPath = swift_getKeyPath();
  sub_213E49B50(v21);
  sub_213F4D280();
  sub_213F4D270();
  v35 = *(v15 + 8);
  v35(v19, v14);
  v35(v21, v14);
  sub_213E49B50(v21);
  sub_213F4D280();
  sub_213F4D270();
  v35(v19, v14);
  v35(v21, v14);
  sub_213F4EEE0();
  sub_213F4D0C0();
  *&v75 = v71;
  *(&v75 + 1) = v30;
  *&v76 = KeyPath;
  *(&v76 + 1) = v33;
  v36 = v73;
  v37 = *(v73 + 104);
  v38 = v11;
  v39 = v74;
  v37(v11, *MEMORY[0x277CDF9E8], v74);
  v40 = v72;
  v37(v72, *MEMORY[0x277CDF9F0], v39);
  sub_213E50898(&qword_281183490, MEMORY[0x277CDFA28]);
  result = sub_213F4F1E0();
  if (result)
  {
    v42 = *(v36 + 32);
    v43 = v60;
    v42(v60, v38, v39);
    v44 = v68;
    v42((v43 + *(v68 + 48)), v40, v39);
    v45 = v63;
    sub_213DE3164(v43, v63, &qword_27C8F9228, &unk_213F5A640);
    v46 = *(v44 + 48);
    v47 = v61;
    v42(v61, v45, v39);
    v48 = *(v36 + 8);
    v48(v45 + v46, v39);
    sub_213DE2B44(v43, v45, &qword_27C8F9228, &unk_213F5A640);
    v49 = v69;
    v42((v47 + *(v69 + 36)), (v45 + *(v44 + 48)), v39);
    v48(v45, v39);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9930, &qword_213F610E0);
    v51 = sub_213E508E0();
    v52 = sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250);
    v53 = v62;
    sub_213F4E570();
    sub_213DE36FC(v47, &qword_27C8F9230, &qword_213F57250);
    v80[2] = v77;
    v80[3] = v78;
    v80[4] = v79;
    v80[0] = v75;
    v80[1] = v76;
    sub_213DE36FC(v80, &qword_27C8F9930, &qword_213F610E0);
    *&v75 = v50;
    *(&v75 + 1) = v49;
    *&v76 = v51;
    *(&v76 + 1) = v52;
    swift_getOpaqueTypeConformance2();
    v54 = v64;
    v55 = v66;
    sub_213F4E6D0();
    (*(v65 + 8))(v53, v55);
    v56 = v67;
    sub_213DE3164(v54, v67, &qword_27C8F9928, &qword_213F593D0);
    v57 = v70;
    sub_213DE3164(v56, v70, &qword_27C8F9928, &qword_213F593D0);
    v58 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9948, &qword_213F59420) + 48);
    *v58 = 0;
    *(v58 + 8) = 1;
    sub_213DE36FC(v54, &qword_27C8F9928, &qword_213F593D0);
    return sub_213DE36FC(v56, &qword_27C8F9928, &qword_213F593D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E4C6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v58 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9950, &qword_213F59428);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v59 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = (&v51 - v9);
  v10 = sub_213F4D290();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = *(type metadata accessor for GridButton(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  v61 = v17;
  sub_213F4ED40();
  v18 = v87;
  swift_getKeyPath();
  *&v87 = v18;
  v60 = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  LODWORD(v17) = *(v18 + 105);

  v54 = v16;
  v55 = v14;
  if (v17 != 1)
  {
    goto LABEL_4;
  }

  sub_213F4ED40();
  v19 = v87;
  swift_getKeyPath();
  *&v87 = v19;
  sub_213F4CB80();

  swift_beginAccess();
  v20 = *(v19 + 72);

  if (v20)
  {

    v21 = sub_213F4EEE0();
    v52 = v22;
    v53 = v21;
    sub_213E49B50(v16);
    sub_213F4D280();
    sub_213F4D270();
    v23 = v57;
    v24 = *(v56 + 8);
    v24(v14, v57);
    v24(v16, v23);
    sub_213E49B50(v16);
    sub_213F4D280();
    sub_213F4D270();
    v24(v14, v23);
    v24(v16, v23);
    sub_213F4EEE0();
    sub_213F4D4E0();
    *&v79 = v53;
    *(&v79 + 1) = v52;
    *&v86[1] = 0x4000000000000000;
    sub_213E50B00(&v79);
    v93 = v85;
    v94[0] = v86[0];
    *(v94 + 9) = *(v86 + 9);
    v89 = v81;
    v90 = v82;
    v91 = v83;
    v92 = v84;
    v87 = v79;
    v88 = v80;
  }

  else
  {
LABEL_4:
    sub_213E50ADC(&v87);
  }

  v25 = sub_213F4DA40();
  v26 = v62;
  *v62 = v25;
  v26[1] = 0;
  *(v26 + 16) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9958, &qword_213F59430);
  sub_213E4CEA0(a1, v58, v26 + *(v27 + 44));
  sub_213F4ED40();
  v28 = v79;
  swift_getKeyPath();
  *&v79 = v28;
  sub_213F4CB80();

  swift_beginAccess();
  LODWORD(v26) = *(v28 + 105);

  if (v26 != 1)
  {
    goto LABEL_8;
  }

  sub_213F4ED40();
  v29 = v79;
  swift_getKeyPath();
  *&v79 = v29;
  sub_213F4CB80();

  swift_beginAccess();
  v30 = *(v29 + 72);

  if (v30)
  {

    v31 = sub_213F4EEE0();
    v32 = v56;
    v61 = v33;
    v34 = v54;
    sub_213E49B50(v54);
    v35 = v55;
    sub_213F4D280();
    sub_213F4D270();
    v36 = *(v32 + 8);
    v37 = v57;
    v36(v35, v57);
    v36(v34, v37);
    sub_213E49B50(v34);
    sub_213F4D280();
    sub_213F4D270();
    v36(v35, v37);
    v36(v34, v37);
    sub_213F4EEE0();
    sub_213F4D4E0();
    *&v71 = v31;
    *(&v71 + 1) = v61;
    *&v78[1] = 0;
    sub_213E50B00(&v71);
    v85 = v77;
    v86[0] = v78[0];
    *(v86 + 9) = *(v78 + 9);
    v81 = v73;
    v82 = v74;
    v83 = v75;
    v84 = v76;
    v79 = v71;
    v80 = v72;
  }

  else
  {
LABEL_8:
    sub_213E50ADC(&v79);
  }

  v69 = v93;
  v70[0] = v94[0];
  *(v70 + 9) = *(v94 + 9);
  v65 = v89;
  v66 = v90;
  v67 = v91;
  v68 = v92;
  v63 = v87;
  v64 = v88;
  v38 = v62;
  v39 = v59;
  sub_213DE3164(v62, v59, &qword_27C8F9950, &qword_213F59428);
  v77 = v85;
  v78[0] = v86[0];
  *(v78 + 9) = *(v86 + 9);
  v73 = v81;
  v74 = v82;
  v75 = v83;
  v76 = v84;
  v71 = v79;
  v72 = v80;
  v40 = v70[0];
  a3[6] = v69;
  a3[7] = v40;
  *(a3 + 121) = *(v70 + 9);
  v41 = v66;
  a3[2] = v65;
  a3[3] = v41;
  v42 = v68;
  a3[4] = v67;
  a3[5] = v42;
  v43 = v64;
  *a3 = v63;
  a3[1] = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9960, &qword_213F59438);
  sub_213DE3164(v39, a3 + *(v44 + 48), &qword_27C8F9950, &qword_213F59428);
  v45 = (a3 + *(v44 + 64));
  v46 = v78[0];
  v45[6] = v77;
  v45[7] = v46;
  *(v45 + 121) = *(v78 + 9);
  v47 = v74;
  v45[2] = v73;
  v45[3] = v47;
  v48 = v76;
  v45[4] = v75;
  v45[5] = v48;
  v49 = v72;
  *v45 = v71;
  v45[1] = v49;
  sub_213DE36FC(v38, &qword_27C8F9950, &qword_213F59428);
  return sub_213DE36FC(v39, &qword_27C8F9950, &qword_213F59428);
}

uint64_t sub_213E4CEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v167 = a2;
  v152 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9968, &qword_213F59440);
  v145 = *(v4 - 8);
  v146 = v4;
  v5 = *(v145 + 64);
  MEMORY[0x28223BE20](v4);
  v144 = &v137 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9970, &qword_213F59448);
  v148 = *(v7 - 8);
  v149 = v7;
  v8 = *(v148 + 64);
  MEMORY[0x28223BE20](v7);
  v143 = &v137 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9978, &qword_213F59450);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v151 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v150 = &v137 - v14;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9980, &unk_213F59458);
  v15 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v161 = &v137 - v16;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  v17 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v166 = &v137 - v18;
  v19 = sub_213F4D910();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9988, &qword_213F59468);
  v21 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v23 = &v137 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9990, &qword_213F59470);
  v154 = *(v24 - 8);
  v155 = v24;
  v25 = *(v154 + 64);
  MEMORY[0x28223BE20](v24);
  v153 = &v137 - v26;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9998, &qword_213F59478);
  v27 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v156 = &v137 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99A0, &qword_213F59480);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v147 = &v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v168 = &v137 - v33;
  v34 = *(type metadata accessor for GridButton(0) + 28);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v36 = v177;
  swift_getKeyPath();
  *&v177 = v36;
  v37 = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v38 = *(v36 + 64);
  v39 = *(v36 + 72);

  v162 = a1;
  v158 = v35;
  v159 = v34;
  v165 = v37;
  if (!v39)
  {
    goto LABEL_4;
  }

  v142 = v38;
  sub_213F4ED40();
  v40 = v177;
  swift_getKeyPath();
  *&v177 = v40;
  sub_213F4CB80();

  swift_beginAccess();
  v41 = *(v40 + 105);

  if (v41)
  {

LABEL_4:
    sub_213F4ED40();
    v42 = v177;
    swift_getKeyPath();
    *&v177 = v42;
    sub_213F4CB80();

    swift_beginAccess();
    v44 = *(v42 + 32);
    v43 = *(v42 + 40);

    *&v177 = v44;
    *(&v177 + 1) = v43;
    sub_213DBC9EC();
    v45 = sub_213F4E310();
    v140 = v46;
    v141 = v45;
    v48 = v47;
    v142 = v49;
    sub_213F4ED40();
    v50 = v177;
    swift_getKeyPath();
    *&v177 = v50;
    sub_213F4CB80();

    swift_beginAccess();
    v139 = *(v50 + 112);
    LOBYTE(v42) = *(v50 + 120);

    KeyPath = swift_getKeyPath();
    v52 = swift_getKeyPath();
    v53 = v48 & 1;
    LOBYTE(v177) = v48 & 1;
    LOBYTE(v169) = v42;
    v138 = sub_213E4A5C4();
    v54 = swift_getKeyPath();
    v55 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99A8, &unk_213F594E8) + 36)];
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
    v57 = *MEMORY[0x277CE1058];
    v58 = sub_213F4EA30();
    (*(*(v58 - 8) + 104))(v55 + v56, v57, v58);
    *v55 = swift_getKeyPath();
    v59 = v140;
    *v23 = v141;
    *(v23 + 1) = v59;
    v23[16] = v53;
    *(v23 + 17) = v169;
    *(v23 + 5) = *(&v169 + 3);
    *(v23 + 3) = v142;
    *(v23 + 4) = KeyPath;
    *(v23 + 5) = v139;
    v23[48] = v42;
    *(v23 + 49) = v184[0];
    *(v23 + 13) = *(v184 + 3);
    *(v23 + 7) = v52;
    v60 = v166;
    v23[64] = 1;
    *(v23 + 65) = v176[0];
    *(v23 + 17) = *(v176 + 3);
    v61 = v138;
    *(v23 + 9) = v54;
    *(v23 + 10) = v61;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99B0, &qword_213F59528);
    *&v23[*(v62 + 36)] = v167;
    v63 = v163;
    *&v23[*(v163 + 36)] = 0x3FF0000000000000;
    v64 = *MEMORY[0x277CDF998];
    v65 = sub_213F4D390();
    (*(*(v65 - 8) + 104))(v60, v64, v65);
    sub_213E50898(&qword_281183488, MEMORY[0x277CDFA28]);

    result = sub_213F4F1F0();
    if ((result & 1) == 0)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v67 = sub_213E50B08();
    v68 = sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
    v69 = v153;
    v70 = v63;
    v71 = v164;
    sub_213F4E570();
    sub_213DE36FC(v60, &qword_27C8F75C0, &qword_213F54760);
    sub_213DE36FC(v23, &qword_27C8F9988, &qword_213F59468);
    *&v177 = v70;
    *(&v177 + 1) = v71;
    *&v178 = v67;
    *(&v178 + 1) = v68;
    swift_getOpaqueTypeConformance2();
    v72 = v155;
    v73 = v156;
    sub_213F4E6D0();
    (*(v154 + 8))(v69, v72);
    sub_213DE3164(v73, v161, &qword_27C8F9998, &qword_213F59478);
    swift_storeEnumTagMultiPayload();
    sub_213E50EA0();
    sub_213F4DBA0();
    sub_213DE36FC(v73, &qword_27C8F9998, &qword_213F59478);
LABEL_8:
    sub_213F4ED40();
    v106 = v177;
    swift_getKeyPath();
    *&v177 = v106;
    sub_213F4CB80();

    swift_beginAccess();
    v108 = *(v106 + 48);
    v107 = *(v106 + 56);

    if (!v107)
    {
      v131 = v150;
      (*(v148 + 56))(v150, 1, 1, v149);
      goto LABEL_12;
    }

    *&v177 = v108;
    *(&v177 + 1) = v107;
    sub_213DBC9EC();
    v163 = sub_213F4E310();
    v161 = v109;
    v111 = v110;
    v113 = v112;
    sub_213F4ED40();
    v114 = v177;
    swift_getKeyPath();
    *&v177 = v114;
    sub_213F4CB80();

    swift_beginAccess();
    v115 = *(v114 + 112);
    v116 = *(v114 + 120);

    v117 = swift_getKeyPath();
    v118 = swift_getKeyPath();
    LOBYTE(v177) = v111 & 1;
    LOBYTE(v169) = v116;
    sub_213F4E210();
    sub_213F4E180();
    v119 = sub_213F4E1D0();

    v120 = swift_getKeyPath();
    *&v169 = v163;
    *(&v169 + 1) = v161;
    LOBYTE(v170) = v111 & 1;
    *(&v170 + 1) = v113;
    *&v171 = v117;
    *(&v171 + 1) = v115;
    LOBYTE(v172) = v116;
    *(&v172 + 1) = v118;
    LOBYTE(v173) = 1;
    *(&v173 + 1) = v120;
    *&v174 = v119;
    v121 = v166;
    *(&v174 + 1) = v167;
    v175 = 1;
    v122 = *MEMORY[0x277CDF998];
    v123 = sub_213F4D390();
    (*(*(v123 - 8) + 104))(v121, v122, v123);
    sub_213E50898(&qword_281183488, MEMORY[0x277CDFA28]);

    result = sub_213F4F1F0();
    if (result)
    {
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99D8, &qword_213F59558);
      v125 = sub_213E50FF8();
      v126 = sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
      v127 = v144;
      v128 = v164;
      sub_213F4E570();
      sub_213DE36FC(v121, &qword_27C8F75C0, &qword_213F54760);
      v180 = v172;
      v181 = v173;
      v182 = v174;
      v183 = v175;
      v177 = v169;
      v178 = v170;
      v179 = v171;
      sub_213DE36FC(&v177, &qword_27C8F99D8, &qword_213F59558);
      *&v169 = v124;
      *(&v169 + 1) = v128;
      *&v170 = v125;
      *(&v170 + 1) = v126;
      swift_getOpaqueTypeConformance2();
      v129 = v143;
      v130 = v146;
      sub_213F4E6D0();
      (*(v145 + 8))(v127, v130);
      v131 = v150;
      sub_213DE2B44(v129, v150, &qword_27C8F9970, &qword_213F59448);
      (*(v148 + 56))(v131, 0, 1, v149);
LABEL_12:
      v132 = v168;
      v133 = v147;
      sub_213DE3164(v168, v147, &qword_27C8F99A0, &qword_213F59480);
      v134 = v151;
      sub_213DE3164(v131, v151, &qword_27C8F9978, &qword_213F59450);
      v135 = v152;
      sub_213DE3164(v133, v152, &qword_27C8F99A0, &qword_213F59480);
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99D0, &qword_213F59550);
      sub_213DE3164(v134, v135 + *(v136 + 48), &qword_27C8F9978, &qword_213F59450);
      sub_213DE36FC(v131, &qword_27C8F9978, &qword_213F59450);
      sub_213DE36FC(v132, &qword_27C8F99A0, &qword_213F59480);
      sub_213DE36FC(v134, &qword_27C8F9978, &qword_213F59450);
      return sub_213DE36FC(v133, &qword_27C8F99A0, &qword_213F59480);
    }

    goto LABEL_14;
  }

  sub_213F4D900();
  sub_213F4D8F0();
  sub_213F4EA10();
  sub_213F4D8D0();

  sub_213F4D8F0();
  sub_213F4D8E0();
  sub_213F4D8F0();
  sub_213F4ED40();
  v74 = v177;
  swift_getKeyPath();
  *&v177 = v74;
  sub_213F4CB80();

  swift_beginAccess();
  v75 = *(v74 + 32);
  v76 = *(v74 + 40);

  sub_213F4D8E0();

  sub_213F4D8F0();
  sub_213F4D930();
  v77 = sub_213F4E2F0();
  v141 = v78;
  v142 = v77;
  v80 = v79;
  v140 = v81;
  sub_213F4ED40();
  v82 = v177;
  swift_getKeyPath();
  *&v177 = v82;
  sub_213F4CB80();

  swift_beginAccess();
  v139 = *(v82 + 112);
  v83 = *(v82 + 120);

  v138 = swift_getKeyPath();
  v84 = swift_getKeyPath();
  v80 &= 1u;
  LOBYTE(v177) = v80;
  LOBYTE(v169) = v83;
  v85 = sub_213E4A5C4();
  v86 = swift_getKeyPath();
  v87 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99A8, &unk_213F594E8) + 36)];
  v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76B0, &qword_213F518C0) + 28);
  v89 = *MEMORY[0x277CE1058];
  v90 = sub_213F4EA30();
  (*(*(v90 - 8) + 104))(v87 + v88, v89, v90);
  *v87 = swift_getKeyPath();
  v91 = v166;
  v92 = v141;
  *v23 = v142;
  *(v23 + 1) = v92;
  v23[16] = v80;
  v94 = v138;
  v93 = v139;
  *(v23 + 3) = v140;
  *(v23 + 4) = v94;
  *(v23 + 5) = v93;
  v23[48] = v83;
  *(v23 + 7) = v84;
  v23[64] = 1;
  *(v23 + 9) = v86;
  *(v23 + 10) = v85;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F99B0, &qword_213F59528);
  *&v23[*(v95 + 36)] = v167;
  v96 = v163;
  *&v23[*(v163 + 36)] = 0x3FF0000000000000;
  v97 = *MEMORY[0x277CDF998];
  v98 = sub_213F4D390();
  (*(*(v98 - 8) + 104))(v91, v97, v98);
  sub_213E50898(&qword_281183488, MEMORY[0x277CDFA28]);

  result = sub_213F4F1F0();
  if (result)
  {
    v99 = sub_213E50B08();
    v100 = sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
    v101 = v153;
    v102 = v96;
    v103 = v164;
    sub_213F4E570();
    sub_213DE36FC(v91, &qword_27C8F75C0, &qword_213F54760);
    sub_213DE36FC(v23, &qword_27C8F9988, &qword_213F59468);
    *&v177 = v102;
    *(&v177 + 1) = v103;
    *&v178 = v99;
    *(&v178 + 1) = v100;
    swift_getOpaqueTypeConformance2();
    v104 = v155;
    v105 = v156;
    sub_213F4E6D0();
    (*(v154 + 8))(v101, v104);
    sub_213DE3164(v105, v161, &qword_27C8F9998, &qword_213F59478);
    swift_storeEnumTagMultiPayload();
    sub_213E50EA0();
    sub_213F4DBA0();
    sub_213DE36FC(v105, &qword_27C8F9998, &qword_213F59478);
    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_213E4E32C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98B8, &qword_213F59348);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A28, &qword_213F529B0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_213F4D950();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  LODWORD(v16) = *(type metadata accessor for GridButton(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v18 = v25;
  swift_getKeyPath();
  v25 = v18;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v19 = *(v18 + 88);

  *&v15[*(v9 + 44)] = v19;
  v20 = sub_213F4E8F0();
  sub_213E4B424(v20, v7);

  sub_213DE3164(v15, v13, &qword_27C8F7A28, &qword_213F529B0);
  sub_213DE3164(v7, v5, &qword_27C8F98B8, &qword_213F59348);
  v21 = v24;
  sub_213DE3164(v13, v24, &qword_27C8F7A28, &qword_213F529B0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98D8, &qword_213F59380);
  sub_213DE3164(v5, v21 + *(v22 + 48), &qword_27C8F98B8, &qword_213F59348);
  sub_213DE36FC(v7, &qword_27C8F98B8, &qword_213F59348);
  sub_213DE36FC(v15, &qword_27C8F7A28, &qword_213F529B0);
  sub_213DE36FC(v5, &qword_27C8F98B8, &qword_213F59348);
  return sub_213DE36FC(v13, &qword_27C8F7A28, &qword_213F529B0);
}

uint64_t sub_213E4E654@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4E8F0();
  sub_213F4EEF0();
  sub_213F4D0C0();
  result = sub_213F4E8D0();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = result;
  return result;
}

__n128 sub_213E4E714@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9860, &qword_213F59018);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9858, &qword_213F59010);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v30[-v16];
  *v13 = sub_213F4EEE0();
  v13[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98A0, &qword_213F59330);
  sub_213E4EACC(a1, a2 & 1, a3, a4 & 1, v13 + *(v19 + 44));
  sub_213E4A8A8();
  sub_213F4EEE0();
  sub_213F4D4E0();
  sub_213DE2B44(v13, v17, &qword_27C8F9860, &qword_213F59018);
  v20 = &v17[*(v14 + 36)];
  v21 = v36;
  v20[4] = v35;
  v20[5] = v21;
  v20[6] = v37;
  v22 = v32;
  *v20 = v31;
  v20[1] = v22;
  v23 = v34;
  v20[2] = v33;
  v20[3] = v23;
  LODWORD(v13) = *(type metadata accessor for GridButton(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v24 = v38;
  swift_getKeyPath();
  *&v38 = v24;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v25 = *(v24 + 82);

  sub_213F4EEE0();
  sub_213F4D4E0();
  sub_213DE2B44(v17, a5, &qword_27C8F9858, &qword_213F59010);
  v26 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9850, &qword_213F59008) + 36);
  v27 = v43;
  *(v26 + 64) = v42;
  *(v26 + 80) = v27;
  *(v26 + 96) = v44;
  v28 = v39;
  *v26 = v38;
  *(v26 + 16) = v28;
  result = v41;
  *(v26 + 32) = v40;
  *(v26 + 48) = result;
  return result;
}

uint64_t sub_213E4EACC@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  LODWORD(v58) = a4;
  v55 = a1;
  v56 = a3;
  v63 = a5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98A8, &qword_213F59338);
  v6 = *(v62 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v62);
  v57 = (&v54 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98B0, &qword_213F59340);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98B8, &qword_213F59348);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98C0, &qword_213F59350);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v61 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v59 = &v54 - v27;
  sub_213E4AA94(&v54 - v27);
  v28 = sub_213E4A314();
  v60 = v22;
  sub_213E4B424(v28, v22);

  if (a2 & 1) != 0 || (v58)
  {
    (*(v6 + 56))(v15, 1, 1, v62);
    v29 = v15;
  }

  else
  {
    v30 = sub_213F4EEE0();
    v31 = v57;
    *v57 = v30;
    *(v31 + 8) = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98D0, &unk_213F59360);
    sub_213E4E32C(v31 + *(v33 + 44));
    v34 = sub_213F4EEE0();
    v56 = v35;
    v55 = sub_213F4D8A0();
    v64[0] = 0;
    sub_213E4E654(&v74);
    v66 = v74;
    v67 = v75;
    v68 = *v76;
    v69 = *&v76[16];
    v70[0] = v74;
    v70[1] = v75;
    v70[2] = *v76;
    v70[3] = *&v76[16];
    v58 = v15;
    sub_213DE3164(&v66, &v71, &qword_27C8F7750, &unk_213F51940);
    sub_213DE36FC(v70, &qword_27C8F7750, &unk_213F51940);
    *&v65[55] = v69;
    *&v65[39] = v68;
    *&v65[23] = v67;
    *&v65[7] = v66;
    v36 = v64[0];
    v38 = v55;
    v37 = v56;
    *&v71 = v34;
    *(&v71 + 1) = v56;
    v72 = v55;
    v73[0] = v64[0];
    v39 = *v65;
    *&v73[1] = *v65;
    *&v73[64] = *(&v69 + 1);
    v40 = *&v65[32];
    *&v73[49] = *&v65[48];
    *&v73[33] = *&v65[32];
    v41 = *&v65[16];
    *&v73[17] = *&v65[16];
    v42 = v62;
    v43 = v31 + *(v62 + 36);
    v44 = *&v73[48];
    *(v43 + 64) = *&v73[32];
    *(v43 + 80) = v44;
    v45 = v72;
    *v43 = v71;
    *(v43 + 16) = v45;
    v46 = *&v73[16];
    *(v43 + 32) = *v73;
    *(v43 + 48) = v46;
    *(v43 + 96) = *&v73[64];
    *&v74 = v34;
    *(&v74 + 1) = v37;
    v75 = v38;
    v76[0] = v36;
    *&v76[1] = v39;
    *&v77[15] = *&v65[63];
    *v77 = *&v65[48];
    *&v76[33] = v40;
    *&v76[17] = v41;
    sub_213DE3164(&v71, v64, &qword_27C8F7758, &unk_213F59370);
    v29 = v58;
    sub_213DE36FC(&v74, &qword_27C8F7758, &unk_213F59370);
    sub_213DE2B44(v31, v29, &qword_27C8F98A8, &qword_213F59338);
    (*(v6 + 56))(v29, 0, 1, v42);
  }

  v47 = v59;
  v48 = v61;
  sub_213DE3164(v59, v61, &qword_27C8F98C0, &qword_213F59350);
  v49 = v60;
  v50 = v20;
  sub_213DE3164(v60, v20, &qword_27C8F98B8, &qword_213F59348);
  sub_213DE3164(v29, v13, &qword_27C8F98B0, &qword_213F59340);
  v51 = v63;
  sub_213DE3164(v48, v63, &qword_27C8F98C0, &qword_213F59350);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F98C8, &qword_213F59358);
  sub_213DE3164(v50, v51 + *(v52 + 48), &qword_27C8F98B8, &qword_213F59348);
  sub_213DE3164(v13, v51 + *(v52 + 64), &qword_27C8F98B0, &qword_213F59340);
  sub_213DE36FC(v29, &qword_27C8F98B0, &qword_213F59340);
  sub_213DE36FC(v49, &qword_27C8F98B8, &qword_213F59348);
  sub_213DE36FC(v47, &qword_27C8F98C0, &qword_213F59350);
  sub_213DE36FC(v13, &qword_27C8F98B0, &qword_213F59340);
  sub_213DE36FC(v50, &qword_27C8F98B8, &qword_213F59348);
  return sub_213DE36FC(v48, &qword_27C8F98C0, &qword_213F59350);
}

double GridButton.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GridButton(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9830, &qword_213F58FE8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-v10];
  sub_213E4F9C0(v2, &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_213E510B0(&v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for GridButton);
  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9840, &qword_213F58FF8);
  sub_213E4FA30();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_281182730, &qword_27C8F9830, &qword_213F58FE8);
  sub_213E4FC2C();
  sub_213F4E3C0();
  (*(v8 + 8))(v11, v7);
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9868, &qword_213F59020) + 36);
  *&result = 1684632135;
  *v14 = xmmword_213F58DA0;
  *(v14 + 16) = 1;
  return result;
}

uint64_t sub_213E4F338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for GridButton(0);
  v4 = v3 - 8;
  v22 = *(v3 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9898, &qword_213F59328);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9850, &qword_213F59008);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v14 = *(v4 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  sub_213F4ED40();
  v15 = v24;
  swift_getKeyPath();
  v24 = v15;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v16 = *(v15 + 96);
  v17 = *(v15 + 104);

  if (v17)
  {
    sub_213E4E714(v16, 1, 0, 1, v13);
    sub_213DE3164(v13, v9, &qword_27C8F9850, &qword_213F59008);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9848, &qword_213F59000);
    sub_213DE3AE4(&qword_2811834B0, &qword_27C8F9848, &qword_213F59000);
    sub_213E4FAE8();
    sub_213F4DBA0();
    return sub_213DE36FC(v13, &qword_27C8F9850, &qword_213F59008);
  }

  else
  {
    sub_213E4F9C0(a1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v20 = swift_allocObject();
    sub_213E510B0(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for GridButton);
    *(v20 + ((v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
    *v9 = sub_213E507DC;
    v9[1] = v20;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9848, &qword_213F59000);
    sub_213DE3AE4(&qword_2811834B0, &qword_27C8F9848, &qword_213F59000);
    sub_213E4FAE8();
    return sub_213F4DBA0();
  }
}

double sub_213E4F720@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9830, &qword_213F58FE8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-v10];
  sub_213E4F9C0(v3, &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_213E510B0(&v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for GridButton);
  v17 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9840, &qword_213F58FF8);
  sub_213E4FA30();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_281182730, &qword_27C8F9830, &qword_213F58FE8);
  sub_213E4FC2C();
  sub_213F4E3C0();
  (*(v8 + 8))(v11, v7);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9868, &qword_213F59020) + 36);
  *&result = 1684632135;
  *v14 = xmmword_213F58DA0;
  *(v14 + 16) = 1;
  return result;
}

uint64_t sub_213E4F9C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_213E4FA30()
{
  result = qword_281182AC8;
  if (!qword_281182AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9840, &qword_213F58FF8);
    sub_213DE3AE4(&qword_2811834B0, &qword_27C8F9848, &qword_213F59000);
    sub_213E4FAE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AC8);
  }

  return result;
}

unint64_t sub_213E4FAE8()
{
  result = qword_281182F40;
  if (!qword_281182F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9850, &qword_213F59008);
    sub_213E4FB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F40);
  }

  return result;
}

unint64_t sub_213E4FB74()
{
  result = qword_281183168;
  if (!qword_281183168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9858, &qword_213F59010);
    sub_213DE3AE4(&qword_281182648, &qword_27C8F9860, &qword_213F59018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183168);
  }

  return result;
}

unint64_t sub_213E4FC2C()
{
  result = qword_281185C38;
  if (!qword_281185C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281185C38);
  }

  return result;
}

unint64_t sub_213E4FC84()
{
  result = qword_27C8F9870;
  if (!qword_27C8F9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9870);
  }

  return result;
}

unint64_t sub_213E4FCDC()
{
  result = qword_27C8F9878;
  if (!qword_27C8F9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9878);
  }

  return result;
}

uint64_t sub_213E4FD54()
{
  result = sub_213F4CBC0();
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

void sub_213E50444()
{
  sub_213E505D0(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213E505D0(319, &qword_281183528, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_213E505D0(319, &qword_281183518, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_213E505D0(319, &qword_2811825C8, type metadata accessor for GridButtonViewModel, MEMORY[0x277CE12F8]);
        if (v3 <= 0x3F)
        {
          sub_213DE22E8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213E505D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_213E50634()
{
  result = qword_2811832B8;
  if (!qword_2811832B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9868, &qword_213F59020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9830, &qword_213F58FE8);
    sub_213DE3AE4(&qword_281182730, &qword_27C8F9830, &qword_213F58FE8);
    sub_213E4FC2C();
    swift_getOpaqueTypeConformance2();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832B8);
  }

  return result;
}

uint64_t sub_213E50770()
{
  v1 = type metadata accessor for GridButton(0);
  v2 = v0 + *(v1 + 32) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

double sub_213E507DC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GridButton(0) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_213F4D140();
  *&result = sub_213E4E714(v4, 0, v5, 0, a1).n128_u64[0];
  return result;
}

uint64_t sub_213E50898(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213E508E0()
{
  result = qword_281182E40;
  if (!qword_281182E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9930, &qword_213F610E0);
    sub_213E5096C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E40);
  }

  return result;
}

unint64_t sub_213E5096C()
{
  result = qword_281182FD0;
  if (!qword_281182FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9938, &unk_213F59410);
    sub_213E50A24();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FD0);
  }

  return result;
}

unint64_t sub_213E50A24()
{
  result = qword_281183230;
  if (!qword_281183230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9940, &qword_213F5CFE0);
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183230);
  }

  return result;
}

double sub_213E50ADC(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = 1;
  return result;
}

unint64_t sub_213E50B08()
{
  result = qword_281182CD0;
  if (!qword_281182CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9988, &qword_213F59468);
    sub_213E50BC0();
    sub_213DE3AE4(&qword_281182960, &qword_27C8F99C8, &qword_213F59548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CD0);
  }

  return result;
}

unint64_t sub_213E50BC0()
{
  result = qword_281182D20;
  if (!qword_281182D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99B0, &qword_213F59528);
    sub_213E50C78();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D20);
  }

  return result;
}

unint64_t sub_213E50C78()
{
  result = qword_281182DB0;
  if (!qword_281182DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99A8, &unk_213F594E8);
    sub_213E50D30();
    sub_213DE3AE4(&qword_281182850, &qword_27C8F76B0, &qword_213F518C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182DB0);
  }

  return result;
}

unint64_t sub_213E50D30()
{
  result = qword_281182E98;
  if (!qword_281182E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99B8, &qword_213F59530);
    sub_213E50DE8();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E98);
  }

  return result;
}

unint64_t sub_213E50DE8()
{
  result = qword_281183040;
  if (!qword_281183040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C0, &unk_213F59538);
    sub_213E0C270();
    sub_213DE3AE4(&qword_281182888, &qword_27C8F7CA8, &unk_213F53660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183040);
  }

  return result;
}

unint64_t sub_213E50EA0()
{
  result = qword_281183298;
  if (!qword_281183298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9998, &qword_213F59478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9988, &qword_213F59468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F75C0, &qword_213F54760);
    sub_213E50B08();
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
    swift_getOpaqueTypeConformance2();
    sub_213E50898(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183298);
  }

  return result;
}

unint64_t sub_213E50FF8()
{
  result = qword_27C8F99E0;
  if (!qword_27C8F99E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99D8, &qword_213F59558);
    sub_213E50D30();
    sub_213DE3AE4(&qword_27C8F99E8, &qword_27C8F99F0, &unk_213F59560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F99E0);
  }

  return result;
}

uint64_t sub_213E510B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_213E51118()
{
  result = qword_281182B28;
  if (!qword_281182B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A08, &qword_213F59580);
    sub_213DE551C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B28);
  }

  return result;
}

unint64_t sub_213E5119C()
{
  result = qword_281182ED8;
  if (!qword_281182ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9890, &qword_213F59320);
    sub_213E51254();
    sub_213DE3AE4(&qword_281182C30, &qword_27C8F7A78, &unk_213F5D5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182ED8);
  }

  return result;
}

unint64_t sub_213E51254()
{
  result = qword_281183088;
  if (!qword_281183088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9888, &qword_213F59318);
    sub_213E512E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183088);
  }

  return result;
}

unint64_t sub_213E512E0()
{
  result = qword_281183340;
  if (!qword_281183340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9880, &qword_213F59310);
    sub_213E50898(&qword_281182908, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183340);
  }

  return result;
}

uint64_t GuideCell.init(_:model:leadingCellActions:trailingCellActions:tapHandler:)@<X0>(_BYTE *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{

  *a5 = *a1;
  result = sub_213DD7500(a2, a5 + 8);
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

uint64_t GuideCell.GuideCellType.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t GuideCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v5 = *(v2 + 56);
  sub_213E51970(v2, v16);
  v6 = swift_allocObject();
  v7 = v16[1];
  v6[1] = v16[0];
  v6[2] = v7;
  v8 = v16[3];
  v6[3] = v16[2];
  v6[4] = v8;
  sub_213DEBAA8(v2 + 8, a1 + 32);
  sub_213DD74C4(v4);
  *(a1 + 80) = sub_213F4CDF0() & 1;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10 & 1;
  sub_213F4EA90();
  v11 = *(&v16[0] + 1);
  *(a1 + 104) = v16[0];
  *(a1 + 112) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A10, &qword_213F595A0);
  v13 = *(v12 + 56);
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  swift_storeEnumTagMultiPayload();
  v14 = *(v12 + 60);
  *(a1 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = sub_213E519A8;
  *(a1 + 24) = v6;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_213E51628@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A20, &qword_213F59738);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A28, &qword_213F5D250);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A30, &qword_213F59740);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = type metadata accessor for ListCell(0);
  v16 = *(*(v15 - 1) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a1;
  sub_213DEBAA8((a1 + 8), v19 + *(v17 + 32));
  *v19 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v21 = v15[5];
  *(v19 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v22 = v19 + v15[6];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v15[7];
  if (v20)
  {
    if (v20 != 1)
    {
      *(v19 + v23) = 7;
      sub_213E51B58(v19, v6);
      swift_storeEnumTagMultiPayload();
      sub_213E51BBC();
      sub_213E51C40();
      sub_213F4DBA0();
      return sub_213E51C98(v19);
    }

    *(v19 + v23) = 8;
    sub_213E51B58(v19, v10);
  }

  else
  {
    *(v19 + v23) = 4;
    sub_213E51B58(v19, v10);
  }

  swift_storeEnumTagMultiPayload();
  sub_213E51C40();
  sub_213F4DBA0();
  sub_213E51CF4(v14, v6);
  swift_storeEnumTagMultiPayload();
  sub_213E51BBC();
  sub_213F4DBA0();
  sub_213E51D64(v14);
  return sub_213E51C98(v19);
}

unint64_t sub_213E519B8()
{
  result = qword_27C8F9A18;
  if (!qword_27C8F9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9A18);
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

uint64_t sub_213E51A3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213E51A84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_213E51AF4()
{
  result = qword_281188578;
  if (!qword_281188578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A10, &qword_213F595A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281188578);
  }

  return result;
}

uint64_t sub_213E51B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_213E51BBC()
{
  result = qword_281182B48;
  if (!qword_281182B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A30, &qword_213F59740);
    sub_213E51C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B48);
  }

  return result;
}

unint64_t sub_213E51C40()
{
  result = qword_281183750[0];
  if (!qword_281183750[0])
  {
    type metadata accessor for ListCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281183750);
  }

  return result;
}

uint64_t sub_213E51C98(uint64_t a1)
{
  v2 = type metadata accessor for ListCell(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213E51CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A30, &qword_213F59740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213E51D64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A30, &qword_213F59740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GuideTileViewModel.GuideType.axIDString.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x656873696C627550;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1919251285;
  }
}

uint64_t GuideTileViewModel.GuideType.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t GuideTileViewModel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GuideTileViewModel.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GuideTileViewModel.init(id:_:title:subtitle:imageProvider:logoProvider:photoFanView:placeholderColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *a3;
  *(a9 + 72) = 0u;
  *(a9 + 88) = 0u;
  *(a9 + 104) = 0u;
  *(a9 + 120) = 0u;
  *(a9 + 152) = 0u;
  *(a9 + 168) = 0u;
  *(a9 + 184) = 0u;
  *(a9 + 200) = 0u;
  *(a9 + 216) = 0u;
  *(a9 + 232) = 0;
  *(a9 + 136) = 0u;
  v14 = a9 + 136;
  *(a9 + 56) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v13;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  sub_213E5201C(a8, a9 + 56, &qword_27C8F7AB8, &qword_213F522C0);
  sub_213E5201C(a10, a9 + 96, &qword_27C8F7AB8, &qword_213F522C0);
  result = sub_213E5201C(a11, v14, &qword_27C8F9A38, &qword_213F597E8);
  *(a9 + 240) = a12;
  return result;
}

uint64_t sub_213E5201C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_213E52084@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4DEB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AC8, &qword_213F59E28);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  sub_213F4DEC0();
  if (sub_213F4DED0())
  {
    v12 = 0.98;
  }

  else
  {
    v12 = 1.0;
  }

  sub_213F4F040();
  v14 = v13;
  v16 = v15;
  (*(v3 + 32))(v11, v6, v2);
  v17 = &v11[*(v8 + 44)];
  *v17 = v12;
  *(v17 + 1) = v12;
  *(v17 + 2) = v14;
  *(v17 + 3) = v16;
  v18 = MEMORY[0x216052350](0.5, 1.0, 0.0);
  v19 = sub_213F4DED0();
  sub_213DE2B44(v11, a1, &qword_27C8F9AC8, &qword_213F59E28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AD0, &qword_213F59E30);
  v21 = a1 + *(result + 36);
  *v21 = v18;
  *(v21 + 8) = v19 & 1;
  return result;
}

uint64_t sub_213E5225C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MapsDesignImage();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C10, &unk_213F5A140);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  sub_213DE3164(v2, &v48, &qword_27C8F7AB8, &qword_213F522C0);
  if (*(&v49 + 1))
  {
    sub_213DD7500(&v48, v47);
    sub_213DEBAA8(v47, &v7[v4[8]]);
    sub_213E5BFBC(v2, &v48);
    v13 = swift_allocObject();
    v14 = v49;
    v13[1] = v48;
    v13[2] = v14;
    v13[3] = v50;
    v36 = sub_213F4EEE0();
    v16 = v15;
    *v7 = swift_getKeyPath();
    v7[8] = 0;
    v37 = a1;
    v17 = v4[5];
    *&v7[v17] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v18 = v4[6];
    *&v7[v18] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v19 = v4[7];
    *&v7[v19] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
    swift_storeEnumTagMultiPayload();
    v20 = &v7[v4[12]];
    v21 = &v7[v4[13]];
    v22 = &v7[v4[14]];
    v39 = 0;
    v38 = 0;
    *(v40 + 7) = 0;
    v40[0] = 0;
    sub_213F4EA90();
    v23 = v42;
    v24 = v43;
    v25 = v44;
    v26 = v45;
    v27 = v46;
    *v22 = v41;
    *(v22 + 2) = v23;
    v22[24] = v24;
    v22[25] = v25;
    v22[26] = v26;
    *(v22 + 4) = v27;
    v28 = v4[15];
    v38 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
    sub_213F4EA90();
    *&v7[v28] = v41;
    v7[v4[9]] = 1;
    v29 = &v7[v4[10]];
    *v29 = v36;
    v29[1] = v16;
    v7[v4[11]] = 1;
    *v20 = sub_213E5CD9C;
    *(v20 + 1) = v13;
    *v21 = 0;
    *(v21 + 1) = 0;
    sub_213F4EEE0();
    sub_213F4D4E0();
    __swift_destroy_boxed_opaque_existential_1(v47);
    sub_213E5BCCC(v7, v12, type metadata accessor for MapsDesignImage);
    v30 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94A0, &qword_213F5A0E0) + 36)];
    v31 = v53;
    *(v30 + 4) = v52;
    *(v30 + 5) = v31;
    *(v30 + 6) = v54;
    v32 = v49;
    *v30 = v48;
    *(v30 + 1) = v32;
    v33 = v51;
    *(v30 + 2) = v50;
    *(v30 + 3) = v33;
    sub_213E5BD88(v7, type metadata accessor for MapsDesignImage);
    v12[*(v8 + 36)] = 0;
    v34 = v37;
    sub_213DE2B44(v12, v37, &qword_27C8F9C10, &unk_213F5A140);
    return (*(v9 + 56))(v34, 0, 1, v8);
  }

  else
  {
    sub_213DE36FC(&v48, &qword_27C8F7AB8, &qword_213F522C0);
    return (*(v9 + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_213E52718@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v118 = a2;
  v3 = sub_213F4D390();
  v113 = *(v3 - 8);
  v114 = v3;
  v4 = *(v113 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v112 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v111 = &v104 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BE8, &qword_213F5A0D8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v117 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v116 = &v104 - v12;
  v13 = sub_213F4D290();
  v108 = *(v13 - 8);
  v109 = v13;
  v14 = *(v108 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v104 - v18;
  v20 = type metadata accessor for MapsDesignImage();
  v21 = *(*(v20 - 1) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94A0, &qword_213F5A0E0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v104 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BF0, &qword_213F5A0E8);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v110 = &v104 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BF8, &qword_213F5A0F0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v115 = &v104 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v121 = &v104 - v36;
  v119 = type metadata accessor for PublisherGuideContent(0);
  sub_213DE3164(a1 + *(v119 + 24), &v122, &qword_27C8F7AB8, &qword_213F522C0);
  v120 = a1;
  if (*(&v123 + 1))
  {
    sub_213DD7500(&v122, &v136);
    sub_213DEBAA8(&v136, &v23[v20[8]]);
    v37 = sub_213F4EEB0();
    v105 = v38;
    v106 = v37;
    *v23 = swift_getKeyPath();
    v23[8] = 0;
    v39 = v20[5];
    *&v23[v39] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v40 = v20[6];
    *&v23[v40] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v41 = v20[7];
    *&v23[v41] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
    swift_storeEnumTagMultiPayload();
    v42 = v20[13];
    v43 = &v23[v20[12]];
    v104 = v24;
    v44 = &v23[v42];
    v45 = v20[14];
    v107 = v28;
    v46 = &v23[v45];
    v155 = 0uLL;
    *(&v156 + 7) = 0;
    *&v156 = 0;
    sub_213F4EA90();
    v47 = v123;
    v48 = BYTE8(v123);
    v49 = BYTE9(v123);
    v50 = BYTE10(v123);
    v51 = v124;
    *v46 = v122;
    *(v46 + 2) = v47;
    v46[24] = v48;
    v46[25] = v49;
    v46[26] = v50;
    *(v46 + 4) = v51;
    v52 = v20[15];
    *&v155 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
    sub_213F4EA90();
    *&v23[v52] = v122;
    v23[v20[9]] = 0;
    v53 = &v23[v20[10]];
    v54 = v105;
    *v53 = v106;
    *(v53 + 1) = v54;
    v23[v20[11]] = 1;
    *v43 = 0;
    *(v43 + 1) = 0;
    v55 = v119;
    a1 = v120;
    *v44 = 0;
    *(v44 + 1) = 0;
    v56 = a1 + *(v55 + 20);
    sub_213DBBD08(v19);
    sub_213F4D280();
    sub_213F4D270();
    v57 = *(v108 + 8);
    v58 = v17;
    v59 = v109;
    v57(v58, v109);
    v57(v19, v59);
    sub_213F4EEB0();
    sub_213F4D4E0();
    sub_213E5BCCC(v23, v27, type metadata accessor for MapsDesignImage);
    v60 = &v27[*(v104 + 36)];
    v61 = v153;
    *(v60 + 4) = v152;
    *(v60 + 5) = v61;
    *(v60 + 6) = v154;
    v62 = v149;
    *v60 = v148;
    *(v60 + 1) = v62;
    v63 = v151;
    *(v60 + 2) = v150;
    *(v60 + 3) = v63;
    sub_213E5BD88(v23, type metadata accessor for MapsDesignImage);
    strcpy(&v122, "PublisherLogo");
    HIWORD(v122) = -4864;
    MEMORY[0x216052710](0x6567616D49, 0xE500000000000000);
    sub_213E5BF00();
    v64 = v110;
    sub_213F4E6D0();

    sub_213DE36FC(v27, &qword_27C8F94A0, &qword_213F5A0E0);
    __swift_destroy_boxed_opaque_existential_1(&v136);
    v65 = v121;
    sub_213DE2B44(v64, v121, &qword_27C8F9BF0, &qword_213F5A0E8);
    (*(v29 + 56))(v65, 0, 1, v107);
  }

  else
  {
    sub_213DE36FC(&v122, &qword_27C8F7AB8, &qword_213F522C0);
    (*(v29 + 56))(v121, 1, 1, v28);
  }

  v66 = (a1 + *(v119 + 28));
  v67 = v66[1];
  *&v136 = *v66;
  *(&v136 + 1) = v67;
  sub_213DBC9EC();

  v68 = sub_213F4E310();
  v70 = v69;
  v72 = v71;
  *&v136 = sub_213F4E8F0();
  v73 = sub_213F4E2B0();
  v75 = v74;
  v77 = v76;
  sub_213DBCA40(v68, v70, v72 & 1);

  sub_213F4E0D0();
  sub_213F4E110();
  sub_213F4E1D0();

  v119 = sub_213F4E2E0();
  v79 = v78;
  v81 = v80;
  v83 = v82;

  sub_213DBCA40(v73, v75, v77 & 1);

  v84 = v111;
  sub_213EA886C(v111);
  v86 = v112;
  v85 = v113;
  v87 = v114;
  (*(v113 + 104))(v112, *MEMORY[0x277CDF988], v114);
  sub_213E5B680(&qword_281183490, MEMORY[0x277CDFA28]);
  LOBYTE(v67) = sub_213F4F1D0();
  v88 = *(v85 + 8);
  v88(v86, v87);
  v88(v84, v87);
  if (v67)
  {
    v89 = 2;
  }

  else
  {
    v89 = 3;
  }

  KeyPath = swift_getKeyPath();
  sub_213F4EEB0();
  sub_213F4D4E0();
  *&v143[55] = v158;
  *&v143[71] = v159;
  *&v143[87] = v160;
  *&v143[103] = v161;
  *&v143[7] = v155;
  *&v143[23] = v156;
  v91 = v81 & 1;
  v145 = v81 & 1;
  v144 = 0;
  *&v143[39] = v157;
  v92 = sub_213F4E070();
  sub_213F4CDA0();
  *(&v139[4] + 1) = *&v143[64];
  *(&v139[5] + 1) = *&v143[80];
  *(&v139[6] + 1) = *&v143[96];
  *(v139 + 1) = *v143;
  *(&v139[1] + 1) = *&v143[16];
  *(&v139[2] + 1) = *&v143[32];
  v146 = 0;
  *&v136 = v119;
  *(&v136 + 1) = v79;
  LOBYTE(v137) = v91;
  *(&v137 + 1) = v83;
  *&v138 = KeyPath;
  *(&v138 + 1) = v89;
  LOBYTE(v139[0]) = 0;
  *&v139[7] = *&v143[111];
  *(&v139[3] + 1) = *&v143[48];
  BYTE8(v139[7]) = v92;
  *(&v139[7] + 9) = *v147;
  HIDWORD(v139[7]) = *&v147[3];
  *&v140 = v93;
  *(&v140 + 1) = v94;
  *&v141 = v95;
  *(&v141 + 1) = v96;
  v142 = 0;
  v132 = v139[7];
  v133 = v140;
  v134 = v141;
  v135 = 0;
  v128 = v139[3];
  v129 = v139[4];
  v130 = v139[5];
  v131 = v139[6];
  v124 = v138;
  v125 = v139[0];
  v126 = v139[1];
  v127 = v139[2];
  v122 = v136;
  v123 = v137;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C00, &unk_213F5A128);
  sub_213E5BDE8();
  v97 = v116;
  sub_213F4E6D0();
  sub_213DE36FC(&v136, &qword_27C8F9C00, &unk_213F5A128);
  v98 = v121;
  v99 = v115;
  sub_213DE3164(v121, v115, &qword_27C8F9BF8, &qword_213F5A0F0);
  v100 = v117;
  sub_213DE3164(v97, v117, &qword_27C8F9BE8, &qword_213F5A0D8);
  v101 = v118;
  *v118 = 0;
  *(v101 + 8) = 1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C08, &qword_213F5A138);
  sub_213DE3164(v99, v101 + *(v102 + 48), &qword_27C8F9BF8, &qword_213F5A0F0);
  sub_213DE3164(v100, v101 + *(v102 + 64), &qword_27C8F9BE8, &qword_213F5A0D8);
  sub_213DE36FC(v97, &qword_27C8F9BE8, &qword_213F5A0D8);
  sub_213DE36FC(v98, &qword_27C8F9BF8, &qword_213F5A0F0);
  sub_213DE36FC(v100, &qword_27C8F9BE8, &qword_213F5A0D8);
  return sub_213DE36FC(v99, &qword_27C8F9BF8, &qword_213F5A0F0);
}

uint64_t sub_213E53338@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_213F4DA50();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BD8, &qword_213F5A0C8);
  sub_213E52718(v1, (a1 + *(v3 + 44)));
  v4 = sub_213F4E040();
  sub_213F4CDA0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BE0, &qword_213F5A0D0);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_213E533E4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_213F4EEE0();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C38, &qword_213F5A178);
  sub_213E5357C(v1, a1 + *(v4 + 44));
  v5 = sub_213F4EEE0();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86B0, &qword_213F5A010);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_213F51DE0;
  sub_213F4E8F0();
  *(v8 + 32) = sub_213F4EDB0();
  *(v8 + 40) = v9;
  sub_213F4E8D0();
  *(v8 + 48) = sub_213F4EDB0();
  *(v8 + 56) = v10;
  sub_213F4F020();
  sub_213F4F030();
  sub_213F4EDC0();
  sub_213F4D2C0();
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C40, &qword_213F5A180) + 36);
  *v11 = v5;
  *(v11 + 1) = v7;
  *(v11 + 2) = v22;
  *(v11 + 40) = v24;
  *(v11 + 24) = v23;
  LOBYTE(v5) = sub_213F4E070();
  sub_213F4CDA0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C48, &qword_213F5A188);
  v21 = a1 + *(result + 36);
  *v21 = v5;
  *(v21 + 1) = v13;
  *(v21 + 2) = v15;
  *(v21 + 3) = v17;
  *(v21 + 4) = v19;
  v21[40] = 0;
  return result;
}

uint64_t sub_213E5357C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4D8B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MapsDesignImage();
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C50, &qword_213F5A190);
  v13 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C58, &qword_213F5A198);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v60 = &v54 - v19;
  sub_213DE3164(a1, v71, &qword_27C8F7AB8, &qword_213F522C0);
  if (*&v71[24])
  {
    sub_213DD7500(v71, v72);
    sub_213DEBAA8(v72, &v12[v9[8]]);
    sub_213E5BFF4(a1, v71);
    v20 = swift_allocObject();
    v21 = *&v71[16];
    *(v20 + 1) = *v71;
    *(v20 + 2) = v21;
    *(v20 + 3) = *&v71[32];
    v56 = sub_213F4EEE0();
    v55 = v22;
    *v12 = swift_getKeyPath();
    v12[8] = 0;
    v59 = a2;
    v23 = v9[5];
    *&v12[v23] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v24 = v9[6];
    *&v12[v24] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v25 = v9[7];
    *&v12[v25] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
    swift_storeEnumTagMultiPayload();
    v26 = v9[12];
    v27 = v9[13];
    v57 = v4;
    v28 = &v12[v26];
    v29 = &v12[v27];
    v30 = v9[14];
    v58 = v16;
    v31 = &v12[v30];
    v63 = 0;
    v62 = 0;
    *(v64 + 7) = 0;
    v64[0] = 0;
    sub_213F4EA90();
    v32 = v66;
    v33 = v67;
    v34 = v68;
    v35 = v69;
    v36 = v70;
    *v31 = v65;
    *(v31 + 2) = v32;
    v31[24] = v33;
    v31[25] = v34;
    v31[26] = v35;
    *(v31 + 4) = v36;
    v37 = v9[15];
    v62 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
    sub_213F4EA90();
    *&v12[v37] = v65;
    v12[v9[9]] = 1;
    v38 = &v12[v9[10]];
    v39 = v55;
    *v38 = v56;
    v38[1] = v39;
    v12[v9[11]] = 1;
    *v28 = sub_213E5C074;
    v28[1] = v20;
    *v29 = 0;
    *(v29 + 1) = 0;
    sub_213E5BCCC(v12, v15, type metadata accessor for MapsDesignImage);
    *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BC8, &qword_213F5A0B8) + 36)] = 256;
    sub_213E5BD88(v12, type metadata accessor for MapsDesignImage);
    v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C60, &unk_213F5A1A0) + 36)] = 0;
    v40 = sub_213F4EEE0();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86B0, &qword_213F5A010);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_213F51DE0;
    sub_213F4E8F0();
    *(v43 + 32) = sub_213F4EDB0();
    *(v43 + 40) = v44;
    sub_213F4E8D0();
    *(v43 + 48) = sub_213F4EDB0();
    *(v43 + 56) = v45;
    sub_213F4F020();
    sub_213F4F030();
    sub_213F4EDC0();
    sub_213F4D2C0();
    v46 = *v71;
    v47 = &v15[*(v61 + 36)];
    *v47 = v40;
    *(v47 + 1) = v42;
    *(v47 + 2) = v46;
    *(v47 + 24) = *&v71[8];
    *(v47 + 40) = *&v71[24];
    v48 = v57;
    (*(v5 + 104))(v8, *MEMORY[0x277CE00F0], v57);
    sub_213E5C090();
    v49 = v60;
    sub_213F4E480();
    (*(v5 + 8))(v8, v48);
    sub_213DE36FC(v15, &qword_27C8F9C50, &qword_213F5A190);
    __swift_destroy_boxed_opaque_existential_1(v72);
    v50 = v59;
    v51 = v49;
    v52 = v58;
    (*(v17 + 32))(v59, v51, v58);
    return (*(v17 + 56))(v50, 0, 1, v52);
  }

  else
  {
    sub_213DE36FC(v71, &qword_27C8F7AB8, &qword_213F522C0);
    return (*(v17 + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_213E53C20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = sub_213F4E8D0();
  }

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AE8, &unk_213F55C40);
  a2[4] = sub_213E0C9E0();
  *a2 = v3;
}

uint64_t sub_213E53C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BE8, &qword_213F5A0D8);
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  MEMORY[0x28223BE20](v3);
  v75 = v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C28, &unk_213F5A160);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v86 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = v74 - v10;
  v11 = sub_213F4D390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v77 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v74 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9470, &qword_213F57D68);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v82 = v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v88 = v74 - v22;
  v81 = type metadata accessor for UserGuideContent(0);
  v23 = (a1 + *(v81 + 20));
  v24 = v23[1];
  *&v103 = *v23;
  *(&v103 + 1) = v24;
  v25 = sub_213DBC9EC();

  v74[1] = v25;
  v26 = sub_213F4E310();
  v28 = v27;
  LOBYTE(v25) = v29;
  sub_213F4E0D0();
  sub_213F4E180();
  sub_213F4E1D0();

  v30 = sub_213F4E2E0();
  v78 = v31;
  v79 = v30;
  v33 = v32;
  v80 = v34;

  sub_213DBCA40(v26, v28, v25 & 1);

  v35 = v76;
  sub_213EA886C(v17);
  v36 = v77;
  (*(v12 + 104))(v77, *MEMORY[0x277CDF988], v11);
  sub_213E5B680(&qword_281183490, MEMORY[0x277CDFA28]);
  LOBYTE(v26) = sub_213F4F1D0();
  v37 = *(v12 + 8);
  v37(v36, v11);
  v37(v17, v11);
  if (v26)
  {
    v38 = 1;
  }

  else
  {
    v38 = 2;
  }

  KeyPath = swift_getKeyPath();
  sub_213F4EEB0();
  sub_213F4D4E0();
  *&v119[55] = v126;
  *&v119[71] = v127;
  *&v119[103] = v129;
  *&v118[7] = *(&v129 + 1);
  *&v119[87] = v128;
  *&v119[7] = v123;
  *&v119[23] = v124;
  *&v119[39] = v125;
  *(v118 + 1) = *v119;
  *(&v118[1] + 1) = *&v119[16];
  *(&v118[2] + 1) = *&v119[32];
  *(&v118[6] + 1) = *&v119[96];
  *(&v118[5] + 1) = *&v119[80];
  v122 = v33 & 1;
  v120 = 0;
  *&v115 = v79;
  *(&v115 + 1) = v78;
  LOBYTE(v116) = v33 & 1;
  DWORD1(v116) = *&v121[3];
  *(&v116 + 1) = *v121;
  *(&v116 + 1) = v80;
  *&v117 = KeyPath;
  *(&v117 + 1) = v38;
  LOBYTE(v118[0]) = 0;
  *(&v118[4] + 1) = *&v119[64];
  *(&v118[3] + 1) = *&v119[48];
  v106[5] = v118[5];
  v106[6] = v118[6];
  *&v106[7] = *&v118[7];
  v106[1] = v118[1];
  v106[2] = v118[2];
  v106[3] = v118[3];
  v106[4] = v118[4];
  v103 = v115;
  v104 = v116;
  v105 = v117;
  v106[0] = v118[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9478, &qword_213F57DA0);
  sub_213E5BE74();
  sub_213F4E6D0();
  sub_213DE36FC(&v115, &qword_27C8F9478, &qword_213F57DA0);
  v40 = (v35 + *(v81 + 24));
  v41 = v40[1];
  if (v41)
  {
    *&v103 = *v40;
    *(&v103 + 1) = v41;

    v42 = sub_213F4E310();
    v44 = v43;
    v46 = v45;
    v47 = [objc_opt_self() secondaryLabelColor];
    *&v103 = sub_213F4E870();
    v48 = sub_213F4E2B0();
    v50 = v49;
    v52 = v51;
    sub_213DBCA40(v42, v44, v46 & 1);

    sub_213F4E0C0();
    sub_213F4E170();
    sub_213F4E1D0();

    v53 = sub_213F4E2E0();
    v55 = v54;
    v57 = v56;
    v59 = v58;

    sub_213DBCA40(v48, v50, v52 & 1);

    v60 = swift_getKeyPath();
    sub_213F4EEB0();
    sub_213F4D4E0();
    *&v110[55] = v133;
    *&v110[71] = v134;
    *&v110[87] = v135;
    *&v110[103] = v136;
    *&v110[7] = v130;
    *&v110[23] = v131;
    LOBYTE(v48) = v57 & 1;
    v112 = v57 & 1;
    v111 = 0;
    *&v110[39] = v132;
    v61 = sub_213F4E070();
    sub_213F4CDA0();
    *(&v106[4] + 1) = *&v110[64];
    *(&v106[5] + 1) = *&v110[80];
    *(&v106[6] + 1) = *&v110[96];
    *(v106 + 1) = *v110;
    *(&v106[1] + 1) = *&v110[16];
    *(&v106[2] + 1) = *&v110[32];
    v113 = 0;
    *&v103 = v53;
    *(&v103 + 1) = v55;
    LOBYTE(v104) = v48;
    *(&v104 + 1) = v59;
    *&v105 = v60;
    *(&v105 + 1) = 1;
    LOBYTE(v106[0]) = 0;
    *&v106[7] = *&v110[111];
    *(&v106[3] + 1) = *&v110[48];
    BYTE8(v106[7]) = v61;
    *(&v106[7] + 9) = *v114;
    HIDWORD(v106[7]) = *&v114[3];
    *&v107 = v62;
    *(&v107 + 1) = v63;
    *&v108 = v64;
    *(&v108 + 1) = v65;
    v109 = 0;
    v99 = v106[7];
    v100 = v107;
    v101 = v108;
    v102 = 0;
    v95 = v106[3];
    v96 = v106[4];
    v97 = v106[5];
    v98 = v106[6];
    v91 = v105;
    v92 = v106[0];
    v93 = v106[1];
    v94 = v106[2];
    v89 = v103;
    v90 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C00, &unk_213F5A128);
    sub_213E5BDE8();
    v66 = v75;
    sub_213F4E6D0();
    sub_213DE36FC(&v103, &qword_27C8F9C00, &unk_213F5A128);
    v67 = v85;
    sub_213DE2B44(v66, v85, &qword_27C8F9BE8, &qword_213F5A0D8);
    (*(v83 + 56))(v67, 0, 1, v84);
  }

  else
  {
    v67 = v85;
    (*(v83 + 56))(v85, 1, 1, v84);
  }

  v68 = v88;
  v69 = v82;
  sub_213DE3164(v88, v82, &qword_27C8F9470, &qword_213F57D68);
  v70 = v86;
  sub_213DE3164(v67, v86, &qword_27C8F9C28, &unk_213F5A160);
  v71 = v87;
  sub_213DE3164(v69, v87, &qword_27C8F9470, &qword_213F57D68);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C30, &qword_213F5A170);
  sub_213DE3164(v70, v71 + *(v72 + 48), &qword_27C8F9C28, &unk_213F5A160);
  sub_213DE36FC(v67, &qword_27C8F9C28, &unk_213F5A160);
  sub_213DE36FC(v68, &qword_27C8F9470, &qword_213F57D68);
  sub_213DE36FC(v70, &qword_27C8F9C28, &unk_213F5A160);
  return sub_213DE36FC(v69, &qword_27C8F9470, &qword_213F57D68);
}

uint64_t sub_213E5467C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_213F4DA40();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C18, &qword_213F5A150);
  sub_213E53C9C(v1, a1 + *(v3 + 44));
  v4 = sub_213F4E040();
  sub_213F4CDA0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C20, &qword_213F5A158);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_213E5472C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B78, &qword_213F59FF8);
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = type metadata accessor for PhotoFanView();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v36 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B80, &qword_213F5A000);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = (&v36 - v20);
  sub_213DE3164(a1, v39, &qword_27C8F9A38, &qword_213F597E8);
  if (*(&v39[0] + 1))
  {
    v41[4] = v39[4];
    v41[5] = v39[5];
    v42 = v40;
    v41[0] = v39[0];
    v41[1] = v39[1];
    v41[2] = v39[2];
    v41[3] = v39[3];
    *v21 = sub_213F4EEE0();
    v21[1] = v22;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B88, &qword_213F5A008);
    sub_213E54C20(v41, v21 + *(v23 + 44));
    v24 = sub_213F4EEE0();
    v37 = a2;
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86B0, &qword_213F5A010);
    v27 = swift_allocObject();
    v36 = v4;
    v28 = v27;
    *(v27 + 16) = xmmword_213F51DE0;
    sub_213F4E8F0();
    v28[4] = sub_213F4EDB0();
    v28[5] = v29;
    sub_213F4E8D0();
    v28[6] = sub_213F4EDB0();
    v28[7] = v30;
    sub_213F4F020();
    sub_213F4F030();
    sub_213F4EDC0();
    sub_213F4D2C0();
    v31 = *&v39[0];
    v32 = v21 + *(v15 + 36);
    *v32 = v24;
    *(v32 + 1) = v26;
    *(v32 + 2) = v31;
    *(v32 + 24) = *(v39 + 8);
    *(v32 + 40) = *(&v39[1] + 8);
    sub_213E5BC70(v41, v14 + *(v8 + 20));
    *v14 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    sub_213DE3164(v21, v19, &qword_27C8F9B80, &qword_213F5A000);
    sub_213E5BCCC(v14, v12, type metadata accessor for PhotoFanView);
    sub_213DE3164(v19, v7, &qword_27C8F9B80, &qword_213F5A000);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B90, &qword_213F5A018);
    sub_213E5BCCC(v12, &v7[*(v33 + 48)], type metadata accessor for PhotoFanView);
    sub_213E5BD88(v14, type metadata accessor for PhotoFanView);
    sub_213DE36FC(v21, &qword_27C8F9B80, &qword_213F5A000);
    sub_213E5BD88(v12, type metadata accessor for PhotoFanView);
    sub_213DE36FC(v19, &qword_27C8F9B80, &qword_213F5A000);
    v34 = v37;
    sub_213DE2B44(v7, v37, &qword_27C8F9B78, &qword_213F59FF8);
    (*(v38 + 56))(v34, 0, 1, v36);
    return sub_213E5BD34(v41);
  }

  else
  {
    sub_213DE36FC(v39, &qword_27C8F9A38, &qword_213F597E8);
    return (*(v38 + 56))(a2, 1, 1, v4);
  }
}

uint64_t sub_213E54C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B98, &qword_213F5A020);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BA0, &qword_213F5A028);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  *v18 = sub_213F4D8A0();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BA8, &qword_213F5A030);
  sub_213E54E68(a1, &v18[*(v19 + 44)]);
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BB0, &qword_213F5A038) + 36)] = 256;
  v18[*(v12 + 44)] = 0;
  sub_213F4EE70();
  sub_213DE3164(v18, v16, &qword_27C8F9BA0, &qword_213F5A028);
  sub_213DE3164(v10, v8, &qword_27C8F9B98, &qword_213F5A020);
  sub_213DE3164(v16, a2, &qword_27C8F9BA0, &qword_213F5A028);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BB8, &qword_213F5A040);
  sub_213DE3164(v8, a2 + *(v20 + 48), &qword_27C8F9B98, &qword_213F5A020);
  sub_213DE36FC(v10, &qword_27C8F9B98, &qword_213F5A020);
  sub_213DE36FC(v18, &qword_27C8F9BA0, &qword_213F5A028);
  sub_213DE36FC(v8, &qword_27C8F9B98, &qword_213F5A020);
  return sub_213DE36FC(v16, &qword_27C8F9BA0, &qword_213F5A028);
}

uint64_t sub_213E54E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v76 = a2;
  v3 = type metadata accessor for MapsDesignImage();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BC0, &qword_213F5A048);
  v9 = *(v8 - 8);
  v73 = v8 - 8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v75 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v74 = &v64 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v64 - v18;
  sub_213DEBAA8(a1 + 24, &v7[v4[10]]);
  v20 = sub_213F4EEE0();
  v22 = v21;
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v23 = v4[7];
  *&v7[v23] = swift_getKeyPath();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v24 = v4[8];
  *&v7[v24] = swift_getKeyPath();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v25 = v4[9];
  *&v7[v25] = swift_getKeyPath();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v26 = &v7[v4[14]];
  v27 = &v7[v4[15]];
  v28 = &v7[v4[16]];
  v77 = 0;
  v78 = 0;
  memset(v79, 0, sizeof(v79));
  sub_213F4EA90();
  v29 = v81;
  v30 = v82;
  v31 = v83;
  v32 = v84;
  v33 = v85;
  *v28 = v80;
  *(v28 + 2) = v29;
  v28[24] = v30;
  v28[25] = v31;
  v28[26] = v32;
  *(v28 + 4) = v33;
  v34 = v4[17];
  v77 = 0;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v7[v34] = v80;
  v7[v4[11]] = 1;
  v35 = &v7[v4[12]];
  *v35 = v20;
  v35[1] = v22;
  v7[v4[13]] = 1;
  *v26 = 0;
  *(v26 + 1) = 0;
  *v27 = 0;
  *(v27 + 1) = 0;
  v67 = type metadata accessor for MapsDesignImage;
  sub_213E5BCCC(v7, v19, type metadata accessor for MapsDesignImage);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BC8, &qword_213F5A0B8);
  *&v19[*(v36 + 36)] = 0;
  sub_213E5BD88(v7, type metadata accessor for MapsDesignImage);
  sub_213F4F040();
  v37 = v73;
  v38 = &v19[*(v73 + 44)];
  v66 = xmmword_213F53CD0;
  *v38 = xmmword_213F53CD0;
  *(v38 + 2) = v39;
  *(v38 + 3) = v40;
  sub_213DEBAA8(v72 + 64, &v7[v4[10]]);
  v72 = sub_213F4EEE0();
  v65 = v41;
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v42 = v4[7];
  *&v7[v42] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v43 = v4[8];
  *&v7[v43] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v44 = v4[9];
  *&v7[v44] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v45 = &v7[v4[14]];
  v46 = &v7[v4[15]];
  v47 = &v7[v4[16]];
  v77 = 0;
  v78 = 0;
  memset(v79, 0, sizeof(v79));
  sub_213F4EA90();
  v48 = v81;
  v49 = v82;
  v50 = v83;
  v51 = v84;
  v52 = v85;
  *v47 = v80;
  *(v47 + 2) = v48;
  v47[24] = v49;
  v47[25] = v50;
  v47[26] = v51;
  *(v47 + 4) = v52;
  v53 = v4[17];
  v77 = 0;
  sub_213F4EA90();
  *&v7[v53] = v80;
  v7[v4[11]] = 1;
  v54 = &v7[v4[12]];
  v55 = v65;
  *v54 = v72;
  v54[1] = v55;
  v7[v4[13]] = 1;
  *v45 = 0;
  *(v45 + 1) = 0;
  *v46 = 0;
  *(v46 + 1) = 0;
  sub_213E5BCCC(v7, v17, v67);
  *&v17[*(v36 + 36)] = 0;
  sub_213E5BD88(v7, type metadata accessor for MapsDesignImage);
  sub_213F4F040();
  v56 = &v17[*(v37 + 44)];
  *v56 = v66;
  *(v56 + 2) = v57;
  *(v56 + 3) = v58;
  v59 = v74;
  sub_213DE3164(v19, v74, &qword_27C8F9BC0, &qword_213F5A048);
  v60 = v75;
  sub_213DE3164(v17, v75, &qword_27C8F9BC0, &qword_213F5A048);
  v61 = v76;
  sub_213DE3164(v59, v76, &qword_27C8F9BC0, &qword_213F5A048);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9BD0, &qword_213F5A0C0);
  sub_213DE3164(v60, v61 + *(v62 + 48), &qword_27C8F9BC0, &qword_213F5A048);
  sub_213DE36FC(v17, &qword_27C8F9BC0, &qword_213F5A048);
  sub_213DE36FC(v19, &qword_27C8F9BC0, &qword_213F5A048);
  sub_213DE36FC(v60, &qword_27C8F9BC0, &qword_213F5A048);
  return sub_213DE36FC(v59, &qword_27C8F9BC0, &qword_213F5A048);
}

uint64_t sub_213E55448@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_213F4EEE0();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B68, &qword_213F59FE8);
  sub_213E5472C(v1, a1 + *(v4 + 44));
  v5 = sub_213F4E070();
  sub_213F4CDA0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B70, &qword_213F59FF0);
  v15 = a1 + *(result + 36);
  *v15 = v5;
  *(v15 + 1) = v7;
  *(v15 + 2) = v9;
  *(v15 + 3) = v11;
  *(v15 + 4) = v13;
  v15[40] = 0;
  return result;
}

uint64_t sub_213E554F4@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A8, &unk_213F59F90);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F08, &unk_213F56DF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9360, &unk_213F59F70);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  v21 = a1[3];
  v55 = a1[2];
  v56 = v21;
  v57 = a1[4];
  v58 = *(a1 + 80);
  v22 = a1[1];
  v53 = *a1;
  v54 = v22;
  v23 = swift_allocObject();
  v24 = a1[3];
  *(v23 + 48) = a1[2];
  *(v23 + 64) = v24;
  *(v23 + 80) = a1[4];
  *(v23 + 96) = *(a1 + 80);
  v25 = *a1;
  v26 = a1[1];
  *(v23 + 16) = *a1;
  *(v23 + 32) = v26;
  *(v23 + 104) = a2;
  v59 = v25;
  v27 = v56;
  v50 = a3;
  v49 = v12;
  v48 = v20;
  v47 = v17;
  v46 = v13;
  v45 = v16;
  if (v56 == 1)
  {
    sub_213E32048(&v53, &v51);
    v28 = a2;
    sub_213E32160(&v59, &v51);
    sub_213F4CD80();
    v29 = sub_213F4CD90();
    (*(*(v29 - 8) + 56))(v11, 0, 1, v29);
  }

  else
  {
    v30 = sub_213F4CD90();
    (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
    sub_213E32048(&v53, &v51);
    v31 = a2;
    sub_213E32160(&v59, &v51);
  }

  v32 = v54;
  v51 = v59;
  v33 = sub_213DE3164(v11, v44, &qword_27C8F93A8, &unk_213F59F90);
  MEMORY[0x28223BE20](v33);
  *(&v43 - 4) = &v51;
  *(&v43 - 3) = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F10, &qword_213F57850);
  sub_213DE3AE4(&qword_27C8F8F18, &qword_27C8F8F10, &qword_213F57850);
  v34 = v45;
  sub_213F4EAF0();
  sub_213DE36FC(v11, &qword_27C8F93A8, &unk_213F59F90);
  sub_213E321BC(&v59);
  if (v27 >= 2)
  {

    KeyPath = swift_getKeyPath();
    *&v51 = v27;

    v36 = sub_213F4D0D0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v36 = 0;
  }

  v37 = v49;
  v38 = v48;
  v39 = v47;
  v40 = v46;
  (*(v46 + 16))(v48, v34, v49);

  v41 = (v38 + *(v39 + 36));
  *v41 = KeyPath;
  v41[1] = v36;
  (*(v40 + 8))(v34, v37);
  v51 = v57;
  v52 = v58;
  sub_213DD76C0();
  sub_213E31F4C();
  sub_213F4E6D0();

  return sub_213DE36FC(v38, &qword_27C8F9360, &unk_213F59F70);
}

uint64_t sub_213E55A60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a1;
  v79 = a3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9370, &qword_213F57810);
  v80 = *(v81 - 8);
  v4 = *(v80 + 64);
  v5 = MEMORY[0x28223BE20](v81);
  v78 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9378, &qword_213F57818);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v76 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v74 - v12;
  v14 = *(a2 + 16);
  v82 = a2;
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    do
    {
      v17 = a2 + 32 + 88 * v15;
      v18 = v15;
      while (1)
      {
        if (v18 >= v14)
        {
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v19 = *(v17 + 32);
        v20 = *(v17 + 64);
        v87 = *(v17 + 48);
        v88 = v20;
        v89 = *(v17 + 80);
        v21 = *(v17 + 16);
        v84 = *v17;
        v85 = v21;
        v86 = v19;
        v15 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_44;
        }

        if (BYTE8(v87))
        {
          break;
        }

        ++v18;
        v17 += 88;
        if (v15 == v14)
        {
          goto LABEL_16;
        }
      }

      sub_213E32048(&v84, v83);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_213EA90C8(0, *(v16 + 16) + 1, 1);
        v16 = v90;
      }

      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_213EA90C8((v23 > 1), v24 + 1, 1);
        v16 = v90;
      }

      *(v16 + 16) = v24 + 1;
      v25 = v16 + 88 * v24;
      v26 = v85;
      *(v25 + 32) = v84;
      *(v25 + 48) = v26;
      v27 = v86;
      v28 = v87;
      v29 = v88;
      *(v25 + 112) = v89;
      *(v25 + 80) = v28;
      *(v25 + 96) = v29;
      *(v25 + 64) = v27;
    }

    while (v15 != v14);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

LABEL_16:
  v30 = *(v16 + 16);
  if (v30 >= 3)
  {
    if (v30 == 3)
    {

      v32 = 3;
      v31 = v16;
      goto LABEL_20;
    }

    goto LABEL_47;
  }

  v31 = v16;
  v16 = MEMORY[0x277D84F90];
  while (v14)
  {
    v36 = 0;
    v37 = v82 + 32;
    v38 = MEMORY[0x277D84F90];
LABEL_26:
    v39 = (v37 + 88 * v36);
    v40 = v36;
    while (v40 < v14)
    {
      v41 = v39[2];
      v42 = v39[4];
      v87 = v39[3];
      v88 = v42;
      v89 = *(v39 + 80);
      v43 = v39[1];
      v84 = *v39;
      v85 = v43;
      v86 = v41;
      v36 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_46;
      }

      if ((BYTE8(v87) & 1) == 0)
      {
        sub_213E32048(&v84, v83);
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v90 = v38;
        v45 = v13;
        if ((v44 & 1) == 0)
        {
          sub_213EA90C8(0, *(v38 + 16) + 1, 1);
          v38 = v90;
        }

        v47 = *(v38 + 16);
        v46 = *(v38 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_213EA90C8((v46 > 1), v47 + 1, 1);
          v38 = v90;
        }

        *(v38 + 16) = v47 + 1;
        v48 = v38 + 88 * v47;
        v49 = v85;
        *(v48 + 32) = v84;
        *(v48 + 48) = v49;
        v50 = v86;
        v51 = v87;
        v52 = v88;
        *(v48 + 112) = v89;
        *(v48 + 80) = v51;
        *(v48 + 96) = v52;
        *(v48 + 64) = v50;
        v13 = v45;
        if (v36 != v14)
        {
          goto LABEL_26;
        }

        goto LABEL_39;
      }

      ++v40;
      v39 = (v39 + 88);
      if (v36 == v14)
      {
        goto LABEL_39;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    sub_213E5B720(v16, v16 + 32, 0, 7uLL);
    v31 = v72;
    v32 = *(v16 + 16);
    if (v32)
    {
LABEL_20:
      if (v32 >= 3)
      {
        v33 = 3;
      }

      else
      {
        v33 = v32;
      }

      sub_213E5B720(v16, v16 + 32, v33, (2 * v32) | 1);
      v35 = v34;

      v16 = v35;
    }
  }

  v38 = MEMORY[0x277D84F90];
LABEL_39:
  *&v84 = v16;
  v53 = sub_213E273F0(v38);
  v54 = v84;
  if (*(v31 + 16))
  {
    MEMORY[0x28223BE20](v53);
    v55 = v82;
    *(&v74 - 4) = v31;
    *(&v74 - 3) = v55;
    v56 = v75;
    v73 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9350, &unk_213F59F60);
    sub_213E31E00();
    sub_213F4CFD0();

    v57 = 0;
  }

  else
  {

    v57 = 1;
    v56 = v75;
    v55 = v82;
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9380, &qword_213F57820);
  (*(*(v58 - 8) + 56))(v13, v57, 1, v58);
  *&v84 = v54;
  v59 = swift_allocObject();
  *(v59 + 16) = v55;
  *(v59 + 24) = v56;

  v60 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
  v61 = v13;
  v74 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9390, &qword_213F57830);
  sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828);
  sub_213DE3AE4(&qword_281182578, &qword_27C8F9390, &qword_213F57830);
  v73 = sub_213E320C4();
  v62 = v77;
  sub_213F4ECD0();
  v63 = v76;
  sub_213DE3164(v61, v76, &qword_27C8F9378, &qword_213F57818);
  v64 = v80;
  v65 = *(v80 + 16);
  v66 = v78;
  v67 = v81;
  v65(v78, v62, v81);
  v68 = v79;
  sub_213DE3164(v63, v79, &qword_27C8F9378, &qword_213F57818);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9398, &qword_213F57838);
  v65((v68 + *(v69 + 48)), v66, v67);
  v70 = *(v64 + 8);
  v70(v62, v67);
  sub_213DE36FC(v74, &qword_27C8F9378, &qword_213F57818);
  v70(v66, v67);
  return sub_213DE36FC(v63, &qword_27C8F9378, &qword_213F57818);
}

uint64_t sub_213E5620C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A0, &unk_213F57840);
  sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9358, &unk_213F57800);
  sub_213E31EC0();
  swift_getOpaqueTypeConformance2();
  sub_213E320C4();
  return sub_213F4ECD0();
}

uint64_t sub_213E56370(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_213F4D330();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9358, &unk_213F57800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  v14 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v14;
  v17[4] = *(a1 + 64);
  v18 = *(a1 + 80);
  v15 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v15;
  sub_213E554F4(v17, a3, v17 - v12);
  sub_213F4D320();
  sub_213E31EC0();
  sub_213F4E4E0();
  (*(v6 + 8))(v9, v5);
  return sub_213DE36FC(v13, &qword_27C8F9358, &unk_213F57800);
}

uint64_t sub_213E56518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a4;
  v6 = sub_213F4ECB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93B0, &unk_213F59FD0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9358, &unk_213F57800);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  v25 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v25;
  *v34 = *(a1 + 32);
  *&v34[9] = *(a1 + 41);
  v26 = *(a1 + 57);
  v36[0] = *(a1 + 58);
  *(v36 + 15) = *(a1 + 73);
  v35 = v26;
  sub_213E554F4(v33, a3, &v31 - v23);
  if (v26)
  {
    sub_213F4ECA0();
    (*(v7 + 32))(v17, v10, v6);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v7 + 56))(v17, v27, 1, v6);
  sub_213DE3164(v24, v22, &qword_27C8F9358, &unk_213F57800);
  sub_213DE3164(v17, v15, &qword_27C8F93B0, &unk_213F59FD0);
  v28 = v32;
  sub_213DE3164(v22, v32, &qword_27C8F9358, &unk_213F57800);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93B8, &qword_213F57890);
  sub_213DE3164(v15, v28 + *(v29 + 48), &qword_27C8F93B0, &unk_213F59FD0);
  sub_213DE36FC(v17, &qword_27C8F93B0, &unk_213F59FD0);
  sub_213DE36FC(v24, &qword_27C8F9358, &unk_213F57800);
  sub_213DE36FC(v15, &qword_27C8F93B0, &unk_213F59FD0);
  return sub_213DE36FC(v22, &qword_27C8F9358, &unk_213F57800);
}

uint64_t sub_213E56824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v56 = sub_213F4D450();
  v57 = *(v56 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_213F4D360();
  v49 = *(v48 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AD8, &qword_213F59E38);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AE0, &qword_213F59E40);
  v51 = *(v50 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AE8, &qword_213F59E48);
  v18 = *(v17 - 8);
  v53 = v17 - 8;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v21 = &v47 - v20;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AF0, &qword_213F59E50);
  v22 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v47 - v23;
  v59 = a2;
  v60 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AF8, &unk_213F59E58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9348, &unk_213F577F0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B00, &qword_213F59E68);
  v25 = sub_213F4DBC0();
  v26 = sub_213E5B25C();
  v27 = sub_213E5B680(&qword_2811829B0, MEMORY[0x277CDDFF8]);
  *&v63 = v24;
  *(&v63 + 1) = v25;
  *&v64 = v26;
  *(&v64 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0);
  sub_213F4E270();
  sub_213F4D350();
  v28 = sub_213DE3AE4(&qword_281182820, &qword_27C8F9AD8, &qword_213F59E38);
  v29 = sub_213E5B680(&qword_281183498, MEMORY[0x277CDD9E0]);
  v30 = v48;
  sub_213F4E860();
  (*(v49 + 8))(v9, v30);
  (*(v47 + 8))(v13, v10);
  v31 = v52;
  sub_213F4D440();
  *&v63 = v10;
  *(&v63 + 1) = v30;
  *&v64 = v28;
  *(&v64 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  sub_213E5B680(&qword_281182C78, MEMORY[0x277CDDB18]);
  v32 = v50;
  v33 = v56;
  sub_213F4E3B0();
  (*(v57 + 8))(v31, v33);
  (*(v51 + 8))(v16, v32);
  v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B48, &qword_213F59EB0) + 36)] = 0;
  KeyPath = swift_getKeyPath();
  v35 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B50, &qword_213F59EE8) + 36)];
  *v35 = KeyPath;
  v35[8] = 2;
  LOBYTE(KeyPath) = sub_213F4E050();
  sub_213F4CDA0();
  v36 = &v21[*(v53 + 44)];
  *v36 = KeyPath;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  sub_213F4EEA0();
  sub_213F4D4E0();
  v41 = v54;
  sub_213DC798C(v21, v54);
  v42 = (v41 + *(v55 + 36));
  v43 = v68;
  v42[4] = v67;
  v42[5] = v43;
  v42[6] = v69;
  v44 = v64;
  *v42 = v63;
  v42[1] = v44;
  v45 = v66;
  v42[2] = v65;
  v42[3] = v45;
  v61 = 1701998413;
  v62 = 0xE400000000000000;
  MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);
  sub_213E5B810();
  sub_213F4E6D0();

  return sub_213DE36FC(v41, &qword_27C8F9AF0, &qword_213F59E50);
}

uint64_t sub_213E56FC4@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v1 = sub_213F4DBC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B00, &qword_213F59E68);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - v12;
  v14 = sub_213F4E9F0();
  sub_213F4E110();
  v15 = sub_213F4E0F0();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = sub_213F4E190();
  sub_213DE36FC(v9, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  sub_213F4E8F0();
  v18 = sub_213F4E900();

  sub_213F4EEE0();
  sub_213F4D0C0();
  v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B18, &unk_213F59E80) + 36)];
  sub_213F4EE60();
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B30, &qword_213F59EA0) + 56)] = 256;
  *v13 = v14;
  *(v13 + 1) = KeyPath;
  *(v13 + 2) = v16;
  *(v13 + 3) = v18;
  v20 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v20;
  *(v13 + 4) = v32;
  v21 = swift_getKeyPath();
  v22 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B10, &qword_213F59E78) + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B38, &qword_213F60B00) + 28);
  v24 = *MEMORY[0x277CDF3C0];
  v25 = sub_213F4CEA0();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = v21;
  v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B08, &qword_213F59E70) + 36)] = 0;
  v26 = &v13[*(v10 + 36)];
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B40, &qword_213F59EA8) + 40)];
  sub_213F4D510();
  *v26 = 0xC020000000000000;
  v26[8] = 0;
  sub_213F4D570();
  sub_213E5B25C();
  sub_213E5B680(&qword_2811829B0, MEMORY[0x277CDDFF8]);
  sub_213F4E410();
  (*(v2 + 8))(v5, v1);
  return sub_213DE36FC(v13, &qword_27C8F9B00, &qword_213F59E68);
}

uint64_t sub_213E573E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_213DE3164(v2, &v17 - v11, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4D290();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_213E575E4@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = objc_allocWithZone(MEMORY[0x277D75D18]);

  [v5 init];
  sub_213E29028();
  result = sub_213F4EA90();
  *a1 = sub_213E5B24C;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v8;
  return result;
}

__n128 GuideTile.init(model:menuActions:tapHandler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for GuideTile(0);
  v11 = v10[5];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v12 = a5 + v10[6];
  v13 = *(a1 + 208);
  *(v12 + 12) = *(a1 + 192);
  *(v12 + 13) = v13;
  *(v12 + 14) = *(a1 + 224);
  *(v12 + 30) = *(a1 + 240);
  v14 = *(a1 + 144);
  *(v12 + 8) = *(a1 + 128);
  *(v12 + 9) = v14;
  v15 = *(a1 + 176);
  *(v12 + 10) = *(a1 + 160);
  *(v12 + 11) = v15;
  v16 = *(a1 + 80);
  *(v12 + 4) = *(a1 + 64);
  *(v12 + 5) = v16;
  v17 = *(a1 + 112);
  *(v12 + 6) = *(a1 + 96);
  *(v12 + 7) = v17;
  v18 = *(a1 + 16);
  *v12 = *a1;
  *(v12 + 1) = v18;
  result = *(a1 + 32);
  v20 = *(a1 + 48);
  *(v12 + 2) = result;
  *(v12 + 3) = v20;
  *(a5 + v10[7]) = a2;
  v21 = (a5 + v10[8]);
  *v21 = a3;
  v21[1] = a4;
  return result;
}

uint64_t GuideTile.body.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for GuideTile(0);
  v3 = *(v2 - 8);
  v43 = v2 - 8;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A40, &qword_213F59860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A48, &qword_213F59868);
  v10 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A50, &qword_213F59870);
  v14 = *(v13 - 8);
  v39 = v13;
  v40 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A58, &qword_213F59878);
  v41 = *(v18 - 8);
  v42 = v18;
  v19 = *(v41 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - v20;
  sub_213E5BCCC(v1, &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GuideTile);
  v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v23 = swift_allocObject();
  sub_213E5C3AC(&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for GuideTile);
  v46 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A60, &qword_213F59880);
  sub_213E5A564();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_27C8F9A90, &qword_27C8F9A40, &qword_213F59860);
  sub_213F4E620();
  (*(v6 + 8))(v9, v5);
  v24 = sub_213E5A7CC();
  v25 = sub_213E2EE14();
  v26 = v38;
  sub_213F4E3C0();
  sub_213DE36FC(v12, &qword_27C8F9A48, &qword_213F59868);
  v45 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AA0, &qword_213F59898);
  v47 = v26;
  v48 = &type metadata for ScalingTile;
  v49 = v24;
  v50 = v25;
  swift_getOpaqueTypeConformance2();
  sub_213DE3AE4(&qword_281182698, &qword_27C8F9AA0, &qword_213F59898);
  v27 = v39;
  sub_213F4E6F0();
  (*(v40 + 8))(v17, v27);
  v47 = 0x6C69546564697547;
  v48 = 0xEA00000000002E65;
  if (*(v1 + *(v43 + 32) + 16))
  {
    if (*(v1 + *(v43 + 32) + 16) == 1)
    {
      v28 = 0x8000000213FA5710;
      v29 = 0xD000000000000010;
    }

    else
    {
      v28 = 0xE900000000000072;
      v29 = 0x656873696C627550;
    }
  }

  else
  {
    v28 = 0xE400000000000000;
    v29 = 1919251285;
  }

  v30 = v44;
  v32 = v41;
  v31 = v42;
  MEMORY[0x216052710](v29, v28);

  v33 = v47;
  v34 = v48;
  (*(v32 + 32))(v30, v21, v31);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AA8, &qword_213F598A0);
  v36 = v30 + *(result + 36);
  *v36 = v33;
  *(v36 + 8) = v34;
  *(v36 + 16) = 11;
  return result;
}

uint64_t sub_213E57D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4D290();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  v12 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v14 = &v38 - v13;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A80, &qword_213F59890);
  v15 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v17 = (&v38 - v16);
  *v17 = sub_213F4EEE0();
  v17[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CE8, &qword_213F5A228);
  sub_213E581F8(a1, v17 + *(v19 + 44));
  v20 = *MEMORY[0x277CDF998];
  v21 = sub_213F4D390();
  (*(*(v21 - 8) + 104))(v14, v20, v21);
  sub_213E5B680(&qword_281183488, MEMORY[0x277CDFA28]);
  result = sub_213F4F1F0();
  if (result)
  {
    sub_213DE3AE4(&qword_281182640, &qword_27C8F9A80, &qword_213F59890);
    v38 = a2;
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
    sub_213F4E570();
    sub_213DE36FC(v14, &qword_27C8F75C0, &qword_213F54760);
    sub_213DE36FC(v17, &qword_27C8F9A80, &qword_213F59890);
    sub_213E573E4(v11);
    sub_213F4D280();
    sub_213F4D270();
    v23 = *(v5 + 8);
    v23(v9, v4);
    v23(v11, v4);
    v41 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    sub_213E29028();
    sub_213F4EA90();
    v25 = v42;
    v24 = v43;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A78, &qword_213F59888);
    v27 = v38;
    v28 = (v38 + *(v26 + 36));
    *v28 = v25;
    v28[1] = v24;
    v28[2] = 0x403A000000000000;
    sub_213E573E4(v11);
    sub_213F4D280();
    sub_213F4D270();
    v23(v9, v4);
    v23(v11, v4);
    v29 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9A60, &qword_213F59880) + 36));
    v30 = *(sub_213F4D470() + 20);
    v31 = *MEMORY[0x277CE0118];
    v32 = sub_213F4D950();
    (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
    __asm { FMOV            V0.2D, #26.0 }

    *v29 = _Q0;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0);
    *&v29[*(result + 36)] = 256;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E581F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CF0, &qword_213F5A230);
  v3 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v5 = &v98 - v4;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CF8, &qword_213F5A238);
  v6 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v105 = &v98 - v7;
  v101 = type metadata accessor for PublisherGuideContent(0);
  v8 = *(*(v101 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v101);
  v103 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v104 = (&v98 - v11);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D00, &qword_213F5A240);
  v115 = *(v109 - 8);
  v12 = *(v115 + 64);
  v13 = MEMORY[0x28223BE20](v109);
  v102 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v106 = &v98 - v15;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D08, &qword_213F5A248);
  v16 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v120 = &v98 - v17;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D10, &qword_213F5A250);
  v18 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v112 = &v98 - v19;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D18, &qword_213F5A258);
  v20 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v113 = &v98 - v21;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D20, &qword_213F5A260);
  v22 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v100 = &v98 - v23;
  v24 = type metadata accessor for UserGuideContent(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v108 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = (&v98 - v28);
  v30 = sub_213F4D8B0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D28, &qword_213F5A268);
  v99 = *(v107 - 8);
  v35 = *(v99 + 64);
  v36 = MEMORY[0x28223BE20](v107);
  v38 = &v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v98 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D30, &qword_213F5A270);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v118 = &v98 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v124 = &v98 - v45;
  v116 = type metadata accessor for GuideTile(0);
  v46 = *(v116 + 24);
  v122 = a1;
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 16);
  if (v48)
  {
    if (v48 == 1)
    {
      sub_213DE3164((v47 + 17), v125, &qword_27C8F9A38, &qword_213F597E8);
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v132 = 0;
      sub_213E5201C(v125, &v126, &qword_27C8F9A38, &qword_213F597E8);
      v50 = v47[3];
      v49 = v47[4];
      v52 = v47[5];
      v51 = v47[6];
      *v29 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
      swift_storeEnumTagMultiPayload();
      v53 = (v29 + *(v24 + 24));
      v54 = (v29 + *(v24 + 20));
      *v54 = v50;
      v54[1] = v49;
      *v53 = v52;
      v53[1] = v51;
      sub_213E5C500(&v126, v125);
      v55 = v108;
      sub_213E5BCCC(v29, v108, type metadata accessor for UserGuideContent);
      sub_213E5C500(v125, v5);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D38, &qword_213F5A278);
      sub_213E5BCCC(v55, &v5[*(v56 + 48)], type metadata accessor for UserGuideContent);

      sub_213E5BD88(v55, type metadata accessor for UserGuideContent);
      sub_213E5C538(v125);
      sub_213DE3164(v5, v120, &qword_27C8F9CF0, &qword_213F5A230);
      swift_storeEnumTagMultiPayload();
      sub_213E5C568();
      sub_213DE3AE4(&qword_2811825A0, &qword_27C8F9CF0, &qword_213F5A230);
      sub_213F4DBA0();
      sub_213DE36FC(v5, &qword_27C8F9CF0, &qword_213F5A230);
      sub_213E5BD88(v29, type metadata accessor for UserGuideContent);
      sub_213E5C538(&v126);
    }

    else
    {
      sub_213DE3164((v47 + 7), v125, &qword_27C8F7AB8, &qword_213F522C0);
      v72 = v47[30];
      v126 = 0u;
      v127 = 0u;
      *&v128 = 0;

      sub_213E5201C(v125, &v126, &qword_27C8F7AB8, &qword_213F522C0);
      *(&v128 + 1) = v72;
      (*(v31 + 104))(v34, *MEMORY[0x277CE00F0], v30);
      sub_213E5C648();
      v73 = v106;
      sub_213F4E480();
      (*(v31 + 8))(v34, v30);
      sub_213E5C69C(&v126);
      sub_213DE3164((v47 + 12), &v126, &qword_27C8F7AB8, &qword_213F522C0);
      v75 = v47[3];
      v74 = v47[4];
      KeyPath = swift_getKeyPath();
      v77 = v104;
      *v104 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
      swift_storeEnumTagMultiPayload();
      v78 = v101;
      v79 = *(v101 + 20);
      *(v77 + v79) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
      swift_storeEnumTagMultiPayload();
      v80 = v77 + *(v78 + 24);
      *(v80 + 32) = 0;
      *v80 = 0u;
      *(v80 + 16) = 0u;

      sub_213E5201C(&v126, v80, &qword_27C8F7AB8, &qword_213F522C0);
      v81 = (v77 + *(v78 + 28));
      *v81 = v75;
      v81[1] = v74;
      v82 = v115;
      v83 = *(v115 + 16);
      v84 = v102;
      v85 = v73;
      v86 = v109;
      v83(v102, v85, v109);
      v87 = v103;
      sub_213E5BCCC(v77, v103, type metadata accessor for PublisherGuideContent);
      v88 = v105;
      v83(v105, v84, v86);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D48, &qword_213F5A288);
      sub_213E5BCCC(v87, v88 + *(v89 + 48), type metadata accessor for PublisherGuideContent);
      sub_213E5BD88(v87, type metadata accessor for PublisherGuideContent);
      v90 = *(v82 + 8);
      v115 = v82 + 8;
      v90(v84, v86);
      sub_213DE3164(v88, v112, &qword_27C8F9CF8, &qword_213F5A238);
      swift_storeEnumTagMultiPayload();
      sub_213DE3AE4(&qword_281182598, &qword_27C8F9D20, &qword_213F5A260);
      sub_213DE3AE4(&qword_281182590, &qword_27C8F9CF8, &qword_213F5A238);
      v91 = v113;
      sub_213F4DBA0();
      sub_213DE3164(v91, v120, &qword_27C8F9D18, &qword_213F5A258);
      swift_storeEnumTagMultiPayload();
      sub_213E5C568();
      sub_213DE3AE4(&qword_2811825A0, &qword_27C8F9CF0, &qword_213F5A230);
      sub_213F4DBA0();
      sub_213DE36FC(v91, &qword_27C8F9D18, &qword_213F5A258);
      sub_213DE36FC(v88, &qword_27C8F9CF8, &qword_213F5A238);
      sub_213E5BD88(v77, type metadata accessor for PublisherGuideContent);
      v90(v106, v109);
    }
  }

  else
  {
    sub_213DE3164((v47 + 7), v125, &qword_27C8F7AB8, &qword_213F522C0);
    v57 = v47[30];
    v126 = 0u;
    v127 = 0u;
    *&v128 = 0;

    sub_213E5201C(v125, &v126, &qword_27C8F7AB8, &qword_213F522C0);
    *(&v128 + 1) = v57;
    (*(v31 + 104))(v34, *MEMORY[0x277CE00F0], v30);
    sub_213E5C6CC();
    v98 = v40;
    sub_213F4E480();
    (*(v31 + 8))(v34, v30);
    sub_213E5C720(&v126);
    v59 = v47[3];
    v115 = v47[4];
    v58 = v115;
    v61 = v47[5];
    v60 = v47[6];
    *v29 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
    swift_storeEnumTagMultiPayload();
    v62 = (v29 + *(v24 + 24));
    v63 = (v29 + *(v24 + 20));
    *v63 = v59;
    v63[1] = v58;
    *v62 = v61;
    v62[1] = v60;
    v64 = v99;
    v65 = *(v99 + 16);
    v66 = v40;
    v67 = v107;
    v65(v38, v66, v107);
    v68 = v108;
    sub_213E5BCCC(v29, v108, type metadata accessor for UserGuideContent);
    v69 = v100;
    v65(v100, v38, v67);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D50, &unk_213F5A290);
    sub_213E5BCCC(v68, v69 + *(v70 + 48), type metadata accessor for UserGuideContent);

    sub_213E5BD88(v68, type metadata accessor for UserGuideContent);
    v115 = *(v64 + 8);
    (v115)(v38, v67);
    sub_213DE3164(v69, v112, &qword_27C8F9D20, &qword_213F5A260);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_281182598, &qword_27C8F9D20, &qword_213F5A260);
    sub_213DE3AE4(&qword_281182590, &qword_27C8F9CF8, &qword_213F5A238);
    v71 = v113;
    sub_213F4DBA0();
    sub_213DE3164(v71, v120, &qword_27C8F9D18, &qword_213F5A258);
    swift_storeEnumTagMultiPayload();
    sub_213E5C568();
    sub_213DE3AE4(&qword_2811825A0, &qword_27C8F9CF0, &qword_213F5A230);
    sub_213F4DBA0();
    sub_213DE36FC(v71, &qword_27C8F9D18, &qword_213F5A258);
    sub_213DE36FC(v69, &qword_27C8F9D20, &qword_213F5A260);
    sub_213E5BD88(v29, type metadata accessor for UserGuideContent);
    (v115)(v98, v107);
  }

  v92 = *(v122 + *(v116 + 28));
  if (*(v92 + 16))
  {
    v93 = *(v122 + *(v116 + 28));
  }

  else
  {
    v92 = 0;
  }

  v94 = v124;
  v95 = v118;
  sub_213DE3164(v124, v118, &qword_27C8F9D30, &qword_213F5A270);
  v96 = v123;
  sub_213DE3164(v95, v123, &qword_27C8F9D30, &qword_213F5A270);
  *(v96 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9D40, &qword_213F5A280) + 48)) = v92;

  sub_213DE36FC(v94, &qword_27C8F9D30, &qword_213F5A270);

  return sub_213DE36FC(v95, &qword_27C8F9D30, &qword_213F5A270);
}

uint64_t sub_213E592C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_213F4DA40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C80, &qword_213F5A1C0);
  return sub_213E59318(a1, a2 + *(v4 + 44));
}

uint64_t sub_213E59318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_213F4DDD0();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GuideTile(0);
  v7 = v6 - 8;
  v57 = *(v6 - 8);
  v56 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v55 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_213F4DF50();
  v51 = *(v53 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C88, &qword_213F5A1C8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v46 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C90, &qword_213F5A1D0);
  v17 = *(v16 - 8);
  v48 = v16;
  v49 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9C98, &qword_213F5A1D8);
  v21 = *(*(v54 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v54);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v50 = &v46 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CA0, &qword_213F5A1E0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v52 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v46 - v30;
  v32 = *(v7 + 36);
  v47 = a1;
  v62 = *(a1 + v32);
  sub_213E5C2E8();
  sub_213F4E4B0();
  *v15 = sub_213F4EEE0();
  v15[1] = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CA8, &qword_213F5A1E8);
  sub_213E59974(a1, v15 + *(v34 + 44));
  sub_213F4DF30();
  v35 = sub_213DE3AE4(&qword_281182670, &qword_27C8F9C88, &qword_213F5A1C8);
  sub_213F4E640();
  (*(v51 + 8))(v11, v53);
  sub_213DE36FC(v15, &qword_27C8F9C88, &qword_213F5A1C8);
  v62 = v12;
  v63 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v48;
  sub_213F4E4B0();
  (*(v49 + 8))(v20, v36);
  v37 = v55;
  sub_213E5BCCC(v47, v55, type metadata accessor for GuideTile);
  v38 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v39 = swift_allocObject();
  sub_213E5C3AC(v37, v39 + v38, type metadata accessor for GuideTile);
  v40 = v58;
  sub_213F4DDC0();
  v41 = v50;
  sub_213F4D3E0();

  (*(v59 + 8))(v40, v60);
  sub_213DE36FC(v24, &qword_27C8F9C98, &qword_213F5A1D8);
  v42 = v52;
  sub_213DE3164(v31, v52, &qword_27C8F9CA0, &qword_213F5A1E0);
  sub_213DE3164(v41, v24, &qword_27C8F9C98, &qword_213F5A1D8);
  v43 = v61;
  sub_213DE3164(v42, v61, &qword_27C8F9CA0, &qword_213F5A1E0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CB0, &qword_213F5A1F0);
  sub_213DE3164(v24, v43 + *(v44 + 48), &qword_27C8F9C98, &qword_213F5A1D8);
  sub_213DE36FC(v41, &qword_27C8F9C98, &qword_213F5A1D8);
  sub_213DE36FC(v31, &qword_27C8F9CA0, &qword_213F5A1E0);
  sub_213DE36FC(v24, &qword_27C8F9C98, &qword_213F5A1D8);
  return sub_213DE36FC(v42, &qword_27C8F9CA0, &qword_213F5A1E0);
}

uint64_t sub_213E59974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v103 = a1;
  v94 = type metadata accessor for PublisherGuideContent(0);
  v2 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v89 = (&v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CB8, &qword_213F5A1F8);
  v4 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v99 = &v88 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CC0, &qword_213F5A200);
  v6 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v92 = &v88 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CC8, &qword_213F5A208);
  v8 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v93 = &v88 - v9;
  v95 = type metadata accessor for UserGuideContent(0);
  v10 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v91 = (&v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CD0, &qword_213F5A210);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v101 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v100 = &v88 - v16;
  v17 = sub_213F4D290();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v88 - v23;
  v25 = sub_213F4D470();
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CD8, &qword_213F5A218);
  v31 = v30 - 8;
  v32 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v96 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v88 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v88 - v38;
  sub_213E573E4(v24);
  sub_213F4D280();
  sub_213F4D270();
  v40 = *(v18 + 8);
  v40(v22, v17);
  v40(v24, v17);
  v41 = *(v26 + 28);
  v42 = *MEMORY[0x277CE0118];
  v43 = sub_213F4D950();
  (*(*(v43 - 8) + 104))(&v29[v41], v42, v43);
  __asm { FMOV            V0.2D, #26.0 }

  *v29 = _Q0;
  sub_213F4EEE0();
  sub_213F4D4E0();
  sub_213E5C3AC(v29, v37, MEMORY[0x277CDFC08]);
  v49 = &v37[*(v31 + 44)];
  v50 = v110;
  *(v49 + 4) = v109;
  *(v49 + 5) = v50;
  *(v49 + 6) = v111;
  v51 = v106;
  *v49 = v105;
  *(v49 + 1) = v51;
  v52 = v108;
  *(v49 + 2) = v107;
  *(v49 + 3) = v52;
  sub_213DE2B44(v37, v39, &qword_27C8F9CD8, &qword_213F5A218);
  v53 = v103 + *(type metadata accessor for GuideTile(0) + 24);
  if (!*(v53 + 16))
  {
    v66 = *(v53 + 24);
    v65 = *(v53 + 32);
    v68 = *(v53 + 40);
    v67 = *(v53 + 48);
    KeyPath = swift_getKeyPath();
    v70 = v91;
    *v91 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
    swift_storeEnumTagMultiPayload();
    v71 = (v70 + *(v95 + 24));
    v72 = (v70 + *(v95 + 20));
    *v72 = v66;
    v72[1] = v65;
    *v71 = v68;
    v71[1] = v67;
    sub_213E5BCCC(v70, v92, type metadata accessor for UserGuideContent);
    swift_storeEnumTagMultiPayload();
    sub_213E5B680(qword_281186508, type metadata accessor for UserGuideContent);
    sub_213E5B680(qword_2811851F8, type metadata accessor for PublisherGuideContent);

    v73 = v93;
    sub_213F4DBA0();
    sub_213DE3164(v73, v99, &qword_27C8F9CC8, &qword_213F5A208);
    swift_storeEnumTagMultiPayload();
    sub_213E5C414();
    v62 = v100;
    sub_213F4DBA0();
    sub_213DE36FC(v73, &qword_27C8F9CC8, &qword_213F5A208);
    v74 = type metadata accessor for UserGuideContent;
LABEL_6:
    v63 = v74;
    v64 = v70;
    goto LABEL_7;
  }

  if (*(v53 + 16) != 1)
  {
    sub_213DE3164(v53 + 96, v104, &qword_27C8F7AB8, &qword_213F522C0);
    v76 = *(v53 + 24);
    v75 = *(v53 + 32);
    v77 = swift_getKeyPath();
    v70 = v89;
    *v89 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
    swift_storeEnumTagMultiPayload();
    v78 = v94;
    v79 = *(v94 + 20);
    *(v70 + v79) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v80 = v70 + *(v78 + 24);
    *(v80 + 32) = 0;
    *v80 = 0u;
    *(v80 + 16) = 0u;

    sub_213E5201C(v104, v80, &qword_27C8F7AB8, &qword_213F522C0);
    v81 = (v70 + *(v78 + 28));
    *v81 = v76;
    v81[1] = v75;
    sub_213E5BCCC(v70, v92, type metadata accessor for PublisherGuideContent);
    swift_storeEnumTagMultiPayload();
    sub_213E5B680(qword_281186508, type metadata accessor for UserGuideContent);
    sub_213E5B680(qword_2811851F8, type metadata accessor for PublisherGuideContent);
    v82 = v93;
    sub_213F4DBA0();
    sub_213DE3164(v82, v99, &qword_27C8F9CC8, &qword_213F5A208);
    swift_storeEnumTagMultiPayload();
    sub_213E5C414();
    v62 = v100;
    sub_213F4DBA0();
    sub_213DE36FC(v82, &qword_27C8F9CC8, &qword_213F5A208);
    v74 = type metadata accessor for PublisherGuideContent;
    goto LABEL_6;
  }

  v55 = *(v53 + 24);
  v54 = *(v53 + 32);
  v57 = *(v53 + 40);
  v56 = *(v53 + 48);
  v58 = swift_getKeyPath();
  v59 = v91;
  *v91 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v60 = (v59 + *(v95 + 24));
  v61 = (v59 + *(v95 + 20));
  *v61 = v55;
  v61[1] = v54;
  *v60 = v57;
  v60[1] = v56;
  sub_213E5BCCC(v59, v99, type metadata accessor for UserGuideContent);
  swift_storeEnumTagMultiPayload();
  sub_213E5C414();
  sub_213E5B680(qword_281186508, type metadata accessor for UserGuideContent);

  v62 = v100;
  sub_213F4DBA0();
  v63 = type metadata accessor for UserGuideContent;
  v64 = v59;
LABEL_7:
  sub_213E5BD88(v64, v63);
  v83 = v102;
  v84 = v101;
  v85 = v96;
  sub_213DE3164(v39, v96, &qword_27C8F9CD8, &qword_213F5A218);
  sub_213DE3164(v62, v84, &qword_27C8F9CD0, &qword_213F5A210);
  sub_213DE3164(v85, v83, &qword_27C8F9CD8, &qword_213F5A218);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9CE0, &qword_213F5A220);
  sub_213DE3164(v84, v83 + *(v86 + 48), &qword_27C8F9CD0, &qword_213F5A210);
  sub_213DE36FC(v62, &qword_27C8F9CD0, &qword_213F5A210);
  sub_213DE36FC(v39, &qword_27C8F9CD8, &qword_213F5A218);
  sub_213DE36FC(v84, &qword_27C8F9CD0, &qword_213F5A210);
  return sub_213DE36FC(v85, &qword_27C8F9CD8, &qword_213F5A218);
}

unint64_t sub_213E5A564()
{
  result = qword_27C8F9A68;
  if (!qword_27C8F9A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A60, &qword_213F59880);
    sub_213E5A61C();
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9A68);
  }

  return result;
}

unint64_t sub_213E5A61C()
{
  result = qword_27C8F9A70;
  if (!qword_27C8F9A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A78, &qword_213F59888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A80, &qword_213F59890);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F75C0, &qword_213F54760);
    sub_213DE3AE4(&qword_281182640, &qword_27C8F9A80, &qword_213F59890);
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
    swift_getOpaqueTypeConformance2();
    sub_213E5A778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9A70);
  }

  return result;
}

unint64_t sub_213E5A778()
{
  result = qword_27C8F9A88;
  if (!qword_27C8F9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9A88);
  }

  return result;
}

unint64_t sub_213E5A7CC()
{
  result = qword_27C8F9A98;
  if (!qword_27C8F9A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A48, &qword_213F59868);
    sub_213DE3AE4(&qword_27C8F9A90, &qword_27C8F9A40, &qword_213F59860);
    sub_213E5B680(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9A98);
  }

  return result;
}

unint64_t sub_213E5A8C0()
{
  result = qword_27C8F9AB0;
  if (!qword_27C8F9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9AB0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10MapsDesign17PhotoFanViewModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_213E5A994(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_213E5A9DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213E5AAA0()
{
  sub_213E5ABB8(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v0 <= 0x3F)
  {
    sub_213E5ABB8(319, &qword_281183518, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_213E5B118(319, &qword_2811824F0, &type metadata for CellAction, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_213DE22E8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_213E5ABB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213F4CEF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_213E5AC0C()
{
  result = qword_27C8F9AB8;
  if (!qword_27C8F9AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AA8, &qword_213F598A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A50, &qword_213F59870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AA0, &qword_213F59898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9A48, &qword_213F59868);
    sub_213E5A7CC();
    sub_213E2EE14();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182698, &qword_27C8F9AA0, &qword_213F59898);
    swift_getOpaqueTypeConformance2();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9AB8);
  }

  return result;
}

uint64_t sub_213E5AD9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
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

uint64_t sub_213E5ADF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_213E5AEBC()
{
  sub_213E5ABB8(319, &qword_281183518, MEMORY[0x277CDFA28]);
  if (v0 <= 0x3F)
  {
    sub_213E5ABB8(319, &qword_281183520, MEMORY[0x277CDF7E8]);
    if (v1 <= 0x3F)
    {
      sub_213E5AF98();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213E5AF98()
{
  if (!qword_281187B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AC0, &qword_213F59B58);
    v0 = sub_213F4F6B0();
    if (!v1)
    {
      atomic_store(v0, &qword_281187B50);
    }
  }
}

void sub_213E5B054()
{
  sub_213E5ABB8(319, &qword_281183518, MEMORY[0x277CDFA28]);
  if (v0 <= 0x3F)
  {
    sub_213E5B118(319, &qword_281182500, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213E5B118(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_213E5B25C()
{
  result = qword_281182C90;
  if (!qword_281182C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B00, &qword_213F59E68);
    sub_213E5B314();
    sub_213DE3AE4(&qword_2811828D0, &qword_27C8F9B40, &qword_213F59EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182C90);
  }

  return result;
}

unint64_t sub_213E5B314()
{
  result = qword_281182CA8;
  if (!qword_281182CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B08, &qword_213F59E70);
    sub_213E5B3CC();
    sub_213DE3AE4(&qword_281182988, &qword_27C8F7828, &qword_213F52A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CA8);
  }

  return result;
}

unint64_t sub_213E5B3CC()
{
  result = qword_281182CF8;
  if (!qword_281182CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B10, &qword_213F59E78);
    sub_213E5B484();
    sub_213DE3AE4(&qword_281182898, &qword_27C8F9B38, &qword_213F60B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CF8);
  }

  return result;
}

unint64_t sub_213E5B484()
{
  result = qword_281182D60;
  if (!qword_281182D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B18, &unk_213F59E80);
    sub_213E5B53C();
    sub_213DE3AE4(&qword_281182828, &qword_27C8F9B30, &qword_213F59EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D60);
  }

  return result;
}

unint64_t sub_213E5B53C()
{
  result = qword_281182E28;
  if (!qword_281182E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B20, &qword_213F5E240);
    sub_213E5B5C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E28);
  }

  return result;
}

unint64_t sub_213E5B5C8()
{
  result = qword_281182FC8;
  if (!qword_281182FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B28, &unk_213F59E90);
    sub_213DE2CCC();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FC8);
  }

  return result;
}

uint64_t sub_213E5B680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213E5B6C8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x216050B30]();
  *a1 = result;
  return result;
}

uint64_t sub_213E5B6F4(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x216050B40](v2);
}

void sub_213E5B720(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B60, &qword_213F59FE0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 88);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

unint64_t sub_213E5B810()
{
  result = qword_281182DA0;
  if (!qword_281182DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AF0, &qword_213F59E50);
    sub_213E5B89C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182DA0);
  }

  return result;
}

unint64_t sub_213E5B89C()
{
  result = qword_281182E68;
  if (!qword_281182E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AE8, &qword_213F59E48);
    sub_213E5B928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E68);
  }

  return result;
}

unint64_t sub_213E5B928()
{
  result = qword_281183000;
  if (!qword_281183000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B50, &qword_213F59EE8);
    sub_213E5B9E0();
    sub_213DE3AE4(&qword_2811828A0, &qword_27C8F9B58, &unk_213F59EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183000);
  }

  return result;
}

unint64_t sub_213E5B9E0()
{
  result = qword_2811832C0;
  if (!qword_2811832C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B48, &qword_213F59EB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AE0, &qword_213F59E40);
    sub_213F4D450();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AD8, &qword_213F59E38);
    sub_213F4D360();
    sub_213DE3AE4(&qword_281182820, &qword_27C8F9AD8, &qword_213F59E38);
    sub_213E5B680(&qword_281183498, MEMORY[0x277CDD9E0]);
    swift_getOpaqueTypeConformance2();
    sub_213E5B680(&qword_281182C78, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182988, &qword_27C8F7828, &qword_213F52A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832C0);
  }

  return result;
}

uint64_t objectdestroy_72Tm()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_213E5BC40()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = v0[7];
  return v2(v1);
}

uint64_t sub_213E5BCCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213E5BD88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_213E5BDE8()
{
  result = qword_281182EA0;
  if (!qword_281182EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9C00, &unk_213F5A128);
    sub_213E5BE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182EA0);
  }

  return result;
}

unint64_t sub_213E5BE74()
{
  result = qword_281183048;
  if (!qword_281183048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9478, &qword_213F57DA0);
    sub_213E0C270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183048);
  }

  return result;
}

unint64_t sub_213E5BF00()
{
  result = qword_281183480;
  if (!qword_281183480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F94A0, &qword_213F5A0E0);
    sub_213E5B680(&qword_2811887E8, type metadata accessor for MapsDesignImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183480);
  }

  return result;
}

uint64_t objectdestroy_98Tm()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v1 = v0[7];

  return swift_deallocObject();
}

unint64_t sub_213E5C090()
{
  result = qword_27C8F9C68;
  if (!qword_27C8F9C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9C50, &qword_213F5A190);
    sub_213E5C148();
    sub_213DE3AE4(&qword_2811829A0, &qword_27C8F8648, &qword_213F54650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9C68);
  }

  return result;
}

unint64_t sub_213E5C148()
{
  result = qword_27C8F9C70;
  if (!qword_27C8F9C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9C60, &unk_213F5A1A0);
    sub_213E5C200();
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9C70);
  }

  return result;
}

unint64_t sub_213E5C200()
{
  result = qword_27C8F9C78;
  if (!qword_27C8F9C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9BC8, &qword_213F5A0B8);
    sub_213E5B680(&qword_2811887E8, type metadata accessor for MapsDesignImage);
    sub_213DE3AE4(&qword_27C8F8628, &qword_27C8F8630, &qword_213F54640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9C78);
  }

  return result;
}

unint64_t sub_213E5C2E8()
{
  result = qword_281186938;
  if (!qword_281186938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281186938);
  }

  return result;
}

uint64_t sub_213E5C340()
{
  v1 = type metadata accessor for GuideTile(0);
  v2 = v0 + *(v1 + 32) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_213E5C3AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_213E5C414()
{
  result = qword_281182BC0;
  if (!qword_281182BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9CC8, &qword_213F5A208);
    sub_213E5B680(qword_281186508, type metadata accessor for UserGuideContent);
    sub_213E5B680(qword_2811851F8, type metadata accessor for PublisherGuideContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182BC0);
  }

  return result;
}

unint64_t sub_213E5C568()
{
  result = qword_281182A88;
  if (!qword_281182A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9D18, &qword_213F5A258);
    sub_213DE3AE4(&qword_281182598, &qword_27C8F9D20, &qword_213F5A260);
    sub_213DE3AE4(&qword_281182590, &qword_27C8F9CF8, &qword_213F5A238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A88);
  }

  return result;
}

unint64_t sub_213E5C648()
{
  result = qword_281184560[0];
  if (!qword_281184560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281184560);
  }

  return result;
}

unint64_t sub_213E5C6CC()
{
  result = qword_2811855B8[0];
  if (!qword_2811855B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811855B8);
  }

  return result;
}

unint64_t sub_213E5C750()
{
  result = qword_281183090;
  if (!qword_281183090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AD0, &qword_213F59E30);
    sub_213E5C808();
    sub_213DE3AE4(&qword_281182C30, &qword_27C8F7A78, &unk_213F5D5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183090);
  }

  return result;
}

unint64_t sub_213E5C808()
{
  result = qword_281183348;
  if (!qword_281183348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9AC8, &qword_213F59E28);
    sub_213E5B680(&qword_281182908, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183348);
  }

  return result;
}

unint64_t sub_213E5C8C4()
{
  result = qword_27C8F9D60;
  if (!qword_27C8F9D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B70, &qword_213F59FF0);
    sub_213DE3AE4(&qword_27C8F9D68, &qword_27C8F9D70, &qword_213F5A2A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9D60);
  }

  return result;
}

unint64_t sub_213E5C97C()
{
  result = qword_281183190;
  if (!qword_281183190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9BE0, &qword_213F5A0D0);
    sub_213DE3AE4(&qword_281182678, &qword_27C8F9D78, &qword_213F5A2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183190);
  }

  return result;
}

unint64_t sub_213E5CA34()
{
  result = qword_27C8F9D80;
  if (!qword_27C8F9D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9D88, &qword_213F5A2B8);
    sub_213E5CAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9D80);
  }

  return result;
}

unint64_t sub_213E5CAB8()
{
  result = qword_27C8F9D90;
  if (!qword_27C8F9D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9C10, &unk_213F5A140);
    sub_213E5BF00();
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9D90);
  }

  return result;
}

unint64_t sub_213E5CB70()
{
  result = qword_281183178;
  if (!qword_281183178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9C20, &qword_213F5A158);
    sub_213DE3AE4(&qword_281182688, &qword_27C8F9D98, &qword_213F5A2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183178);
  }

  return result;
}

unint64_t sub_213E5CC28()
{
  result = qword_27C8F9DA0;
  if (!qword_27C8F9DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9C48, &qword_213F5A188);
    sub_213E5CCB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9DA0);
  }

  return result;
}

unint64_t sub_213E5CCB4()
{
  result = qword_27C8F9DA8;
  if (!qword_27C8F9DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9C40, &qword_213F5A180);
    sub_213DE3AE4(&qword_27C8F9DB0, &qword_27C8F9DB8, &qword_213F5A2C8);
    sub_213DE3AE4(&qword_2811829A0, &qword_27C8F8648, &qword_213F54650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9DA8);
  }

  return result;
}

uint64_t sub_213E5CDA8@<X0>(_BYTE *a1@<X8>)
{
  sub_213E38388();
  result = sub_213F4D820();
  *a1 = v3;
  return result;
}

uint64_t sub_213E5CDF8(char *a1)
{
  v2 = *a1;
  sub_213E38388();
  return sub_213F4D830();
}

double LibraryCell.body.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListCell(0);
  sub_213DEBAA8(v2, a1 + v4[8]);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v5 = v4[5];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(a1 + v4[7]) = 0;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DC0, &qword_213F5A368) + 36);
  result = 2.26484033e-306;
  *v7 = xmmword_213F5A2D0;
  v7[16] = 2;
  return result;
}

double sub_213E5CF54@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListCell(0);
  sub_213DEBAA8(v2, a1 + v4[8]);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v5 = v4[5];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(a1 + v4[7]) = 0;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DC0, &qword_213F5A368) + 36);
  result = 2.26484033e-306;
  *v7 = xmmword_213F5A2D0;
  v7[16] = 2;
  return result;
}

unint64_t sub_213E5D088()
{
  result = qword_27C8F9DC8;
  if (!qword_27C8F9DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9DC0, &qword_213F5A368);
    sub_213E51C40();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9DC8);
  }

  return result;
}

uint64_t sub_213E5D174@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E5D6F0(&qword_27C8F9DD8, type metadata accessor for LocationTileViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213E5D26C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_213F4CB40();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_213E5D450(v7);
}

uint64_t sub_213E5D338@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213E5D6F0(&qword_27C8F9DD8, type metadata accessor for LocationTileViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213E5D450(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_213E5D6F0(&qword_27C8F8BF8, MEMORY[0x277CC95F0]);
  v15[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
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
    MEMORY[0x28223BE20](KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_213E5D6F0(&qword_27C8F9DD8, type metadata accessor for LocationTileViewModel);
    sub_213F4CB70();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_213E5D6F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213E5D738(uint64_t a1, uint64_t a2)
{
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void (*sub_213E5D870(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E5D6F0(&qword_27C8F9DD8, type metadata accessor for LocationTileViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E5D114();
  return sub_213E5D9A8;
}

void sub_213E5D9A8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_213F4CB90();

  free(v1);
}

uint64_t LocationTileViewModel.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_title);
  v2 = *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_title + 8);

  return v1;
}

uint64_t LocationTileViewModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_subtitle);
  v2 = *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_subtitle + 8);

  return v1;
}

uint64_t LocationTileViewModel.colorGradient.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient);
  v2 = *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient + 8);
  sub_213E5DB08(v1);
  return v1;
}

uint64_t sub_213E5DB08(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t LocationTileViewModel.__allocating_init(id:title:subtitle:imageProvider:colorGradient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v17 = a6[3];
  v16 = a6[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a6, v17);
  v19 = sub_213E617A0(a1, a2, a3, a4, a5, v18, a7, a8, v8, v17, v16);
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v19;
}

uint64_t LocationTileViewModel.init(id:title:subtitle:imageProvider:colorGradient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  v16 = a6[3];
  v15 = a6[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a6, v16);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_213E6165C(a1, a2, a3, a4, a5, v20, v24, v25, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v22;
}

uint64_t LocationTileViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_title + 8);

  v4 = *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_subtitle + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_imageProvider));
  v5 = *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient + 8);
  sub_213E618D4(*(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient));
  v6 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel___observationRegistrar;
  v7 = sub_213F4CBC0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t LocationTileViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_title + 8);

  v4 = *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_subtitle + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_imageProvider));
  v5 = *(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient + 8);
  sub_213E618D4(*(v0 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient));
  v6 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel___observationRegistrar;
  v7 = sub_213F4CBC0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_213E5DF44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_213DE3164(v2, &v17 - v11, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4D290();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_213E5E144@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for LocationTile(0);
  sub_213DE3164(v1 + *(v12 + 20), v11, &qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4CEA0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_213E5E34C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213E5D6F0(&qword_27C8F9DD8, type metadata accessor for LocationTileViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t LocationTile.init(model:tapHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LocationTile(0);
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v10 = (a4 + v8[8]);
  sub_213F4EA90();
  *v10 = v14;
  v10[1] = v15;
  v11 = a4 + v8[9];
  result = sub_213F4EA90();
  *v11 = v14;
  *(v11 + 1) = v15;
  *(a4 + v8[6]) = a1;
  v13 = (a4 + v8[7]);
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_213E5E578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F18, &qword_213F5A7D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = (*(a1 + *(type metadata accessor for LocationTile(0) + 24)) + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient);
  v11 = *v10;
  if (*v10)
  {
    v12 = v10[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C8, &qword_213F57320);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_213F51DE0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_213E5DB08(v11);

    sub_213F4F020();
    sub_213F4F030();
    MEMORY[0x2160521D0](v13);
    sub_213F4D2C0();

    v11 = v26;
    v24 = v27;
    v14 = v28;
    v15 = v29;
    v16 = 256;
    v17 = v30;
  }

  else
  {
    v24 = 0;
    v14 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
  }

  *v9 = sub_213F4DA40();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F20, &qword_213F5A7D8);
  sub_213E5E800(a1, &v9[*(v18 + 44)]);
  v19 = v25;
  sub_213DE3164(v9, v25, &qword_27C8F9F18, &qword_213F5A7D0);
  v20 = v24;
  *a2 = v11;
  *(a2 + 8) = v20;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 40) = v16;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F28, &qword_213F5A7E0);
  sub_213DE3164(v19, a2 + *(v21 + 48), &qword_27C8F9F18, &qword_213F5A7D0);

  sub_213DE36FC(v9, &qword_27C8F9F18, &qword_213F5A7D0);
  sub_213DE36FC(v19, &qword_27C8F9F18, &qword_213F5A7D0);
}

uint64_t sub_213E5E800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v77 = a2;
  v74 = sub_213F4CEA0();
  v2 = *(v74 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v74);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v69 - v7;
  v69 = sub_213F4EA00();
  v9 = *(v69 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v69);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F30, &qword_213F5A7E8);
  v13 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v15 = &v69 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F38, &qword_213F5A7F0);
  v16 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v73 = &v69 - v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F40, &qword_213F5A7F8);
  v18 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v75 = &v69 - v19;
  sub_213E621D4();
  v20 = sub_213F4F600();
  if (!v20)
  {
    v20 = [objc_opt_self() mainBundle];
  }

  v21 = v20;
  v22 = sub_213F4F220();
  v23 = [objc_opt_self() imageNamed:v22 inBundle:v21];

  if (!v23)
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  sub_213F4E9D0();
  v24 = v69;
  (*(v9 + 104))(v12, *MEMORY[0x277CE0FE0], v69);
  v25 = sub_213F4EA40();

  (*(v9 + 8))(v12, v24);
  v26 = v76;
  sub_213E5E144(v8);
  v27 = v74;
  (*(v2 + 104))(v6, *MEMORY[0x277CDF3D0], v74);
  v28 = sub_213F4CE90();
  v29 = *(v2 + 8);
  v29(v6, v27);
  v29(v8, v27);
  if (v28)
  {
    v30 = 1.5;
  }

  else
  {
    v30 = 1.1;
  }

  v31 = *(v70 + 36);
  v32 = *MEMORY[0x277CE13F0];
  v33 = sub_213F4EF90();
  (*(*(v33 - 8) + 104))(&v15[v31], v32, v33);
  *v15 = v25;
  *(v15 + 1) = 0;
  *(v15 + 8) = 1;
  *(v15 + 3) = v30;
  LOBYTE(v32) = sub_213F4E060();
  sub_213F4CDA0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v73;
  sub_213DE2B44(v15, v73, &qword_27C8F9F30, &qword_213F5A7E8);
  v43 = v42 + *(v71 + 36);
  *v43 = v32;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  LOBYTE(v32) = sub_213F4E070();
  sub_213F4CDA0();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v42;
  v53 = v75;
  sub_213DE2B44(v52, v75, &qword_27C8F9F38, &qword_213F5A7F0);
  v54 = v53 + *(v72 + 36);
  *v54 = v32;
  *(v54 + 8) = v45;
  *(v54 + 16) = v47;
  *(v54 + 24) = v49;
  *(v54 + 32) = v51;
  *(v54 + 40) = 0;
  LOBYTE(v32) = sub_213F4E070();
  v55 = (v26 + *(type metadata accessor for LocationTile(0) + 32));
  v56 = *v55;
  v57 = v55[1];
  v78 = v56;
  v79 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  sub_213F4EAA0();
  sub_213F4CDA0();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = v77;
  sub_213DE2B44(v53, v77, &qword_27C8F9F40, &qword_213F5A7F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F48, &unk_213F5A800);
  v68 = v66 + *(result + 36);
  *v68 = v32;
  *(v68 + 8) = v59;
  *(v68 + 16) = v61;
  *(v68 + 24) = v63;
  *(v68 + 32) = v65;
  *(v68 + 40) = 0;
  return result;
}

uint64_t sub_213E5EDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9ED8, &qword_213F5A718);
  v99 = *(v3 - 8);
  v100 = v3;
  v4 = *(v99 + 64);
  MEMORY[0x28223BE20](v3);
  v93 = &v92 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EE0, &unk_213F5A720);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v102 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v101 = &v92 - v10;
  v11 = type metadata accessor for LocationTile(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = v11 - 8;
  v96 = v11 - 8;
  v15 = MEMORY[0x28223BE20](v11 - 8);
  v16 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v92 - v17;
  v19 = type metadata accessor for MapsDesignImage();
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9498, &qword_213F57DB8);
  v25 = *(v24 - 8);
  v97 = v24 - 8;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8);
  v98 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v104 = &v92 - v30;
  MEMORY[0x28223BE20](v29);
  v105 = &v92 - v31;
  v32 = *(v14 + 32);
  v33 = a1;
  sub_213DEBAA8(*(a1 + v32) + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_imageProvider, &v23[v20[10]]);
  sub_213E6216C(a1, v18, type metadata accessor for LocationTile);
  v34 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v95 = swift_allocObject();
  sub_213E61934(v18, v95 + v34);
  sub_213E6216C(a1, v16, type metadata accessor for LocationTile);
  v35 = swift_allocObject();
  sub_213E61934(v16, v35 + v34);
  v36 = sub_213F4EEE0();
  v94 = v37;
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v38 = v20[7];
  *&v23[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v39 = v20[8];
  *&v23[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v40 = v20[9];
  *&v23[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v41 = &v23[v20[14]];
  v42 = &v23[v20[15]];
  v43 = &v23[v20[16]];
  v115 = 0uLL;
  *(&v116 + 7) = 0;
  *&v116 = 0;
  sub_213F4EA90();
  v44 = v119;
  v45 = BYTE8(v119);
  v46 = BYTE9(v119);
  v47 = BYTE10(v119);
  v48 = *v120;
  *v43 = v118;
  *(v43 + 2) = v44;
  v43[24] = v45;
  v43[25] = v46;
  v43[26] = v47;
  *(v43 + 4) = v48;
  v49 = v20[17];
  *&v115 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v23[v49] = v118;
  v23[v20[11]] = 1;
  v50 = &v23[v20[12]];
  v51 = v94;
  *v50 = v36;
  v50[1] = v51;
  v23[v20[13]] = 1;
  v52 = v95;
  *v41 = sub_213E6209C;
  v41[1] = v52;
  v53 = v105;
  *v42 = sub_213E6210C;
  v42[1] = v35;
  sub_213F4EEE0();
  sub_213F4D4E0();
  sub_213E6216C(v23, v53, type metadata accessor for MapsDesignImage);
  v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94A0, &qword_213F5A0E0) + 36));
  v55 = *(&v121[6] + 15);
  v54[4] = *(&v121[5] + 15);
  v54[5] = v55;
  v54[6] = *(&v121[7] + 15);
  v56 = *(&v121[2] + 15);
  *v54 = *(&v121[1] + 15);
  v54[1] = v56;
  v57 = *(&v121[4] + 15);
  v54[2] = *(&v121[3] + 15);
  v54[3] = v57;
  sub_213DEBB74(v23);
  *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94A8, &qword_213F57E60) + 36)) = 256;
  *(v53 + *(v97 + 44)) = 0;
  sub_213DE3164(v53, v104, &qword_27C8F9498, &qword_213F57DB8);
  v58 = v33;
  v59 = v33 + *(v96 + 44);
  v60 = *v59;
  v61 = *(v59 + 8);
  LOBYTE(v118) = v60;
  *(&v118 + 1) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v115 == 1)
  {
    v62 = v93;
    sub_213DE3164(v53, v93, &qword_27C8F9498, &qword_213F57DB8);
    v63 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EF0, &qword_213F5A7A0) + 36);
    *v63 = 0x4000000000000000;
    *(v63 + 8) = 1;
    v64 = sub_213F4EEE0();
    v66 = v65;
    sub_213F4E8C0();
    v67 = sub_213F4E900();

    v68 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EF8, &qword_213F5A7A8) + 36));
    *v68 = v67;
    v68[1] = v64;
    v68[2] = v66;
    v69 = sub_213F4EEE0();
    v71 = v70;
    v72 = sub_213F4DA40();
    v106[0] = 0;
    sub_213E5F8F8(v58, &v118);
    v110 = *v120;
    v111 = *&v120[16];
    v112 = *&v120[32];
    v113 = *&v120[48];
    v108 = v118;
    v109 = v119;
    v114[2] = *v120;
    v114[3] = *&v120[16];
    v114[4] = *&v120[32];
    v114[5] = *&v120[48];
    v114[0] = v118;
    v114[1] = v119;
    sub_213DE3164(&v108, &v115, &qword_27C8F94C0, &unk_213F5A7B0);
    sub_213DE36FC(v114, &qword_27C8F94C0, &unk_213F5A7B0);
    *&v107[39] = v110;
    *&v107[55] = v111;
    *&v107[71] = v112;
    *&v107[87] = v113;
    *&v107[7] = v108;
    *&v107[23] = v109;
    v73 = v106[0];
    *&v115 = v69;
    *(&v115 + 1) = v71;
    v116 = v72;
    v117[0] = v106[0];
    v74 = *&v107[16];
    *&v117[33] = *&v107[32];
    v75 = *v107;
    *&v117[17] = *&v107[16];
    *&v117[1] = *v107;
    *&v117[96] = *(&v113 + 1);
    v76 = *&v107[64];
    *&v117[81] = *&v107[80];
    v77 = *&v107[48];
    *&v117[65] = *&v107[64];
    v78 = *&v107[32];
    *&v117[49] = *&v107[48];
    v79 = v100;
    v80 = v62 + *(v100 + 36);
    v81 = *&v117[80];
    *(v80 + 96) = *&v117[64];
    *(v80 + 112) = v81;
    v82 = *&v117[16];
    *(v80 + 32) = *v117;
    *(v80 + 48) = v82;
    v83 = *&v117[48];
    *(v80 + 64) = *&v117[32];
    *(v80 + 80) = v83;
    v84 = v116;
    *v80 = v115;
    *(v80 + 16) = v84;
    *&v120[49] = v77;
    *&v120[65] = v76;
    v121[0] = *&v107[80];
    *(v80 + 128) = *&v117[96];
    *&v118 = v69;
    *(&v118 + 1) = v71;
    v119 = v72;
    v120[0] = v73;
    *(v121 + 15) = *&v107[95];
    *&v120[1] = v75;
    *&v120[17] = v74;
    *&v120[33] = v78;
    sub_213DE3164(&v115, v106, &qword_27C8F94D0, &qword_213F57E88);
    sub_213DE36FC(&v118, &qword_27C8F94D0, &qword_213F57E88);
    v85 = v101;
    sub_213DE2B44(v62, v101, &qword_27C8F9ED8, &qword_213F5A718);
    (*(v99 + 56))(v85, 0, 1, v79);
  }

  else
  {
    v85 = v101;
    (*(v99 + 56))(v101, 1, 1, v100);
  }

  v86 = v104;
  v87 = v98;
  sub_213DE3164(v104, v98, &qword_27C8F9498, &qword_213F57DB8);
  v88 = v102;
  sub_213DE3164(v85, v102, &qword_27C8F9EE0, &unk_213F5A720);
  v89 = v103;
  sub_213DE3164(v87, v103, &qword_27C8F9498, &qword_213F57DB8);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EE8, &qword_213F5A798);
  sub_213DE3164(v88, v89 + *(v90 + 48), &qword_27C8F9EE0, &unk_213F5A720);
  sub_213DE36FC(v85, &qword_27C8F9EE0, &unk_213F5A720);
  sub_213DE36FC(v86, &qword_27C8F9498, &qword_213F57DB8);
  sub_213DE36FC(v105, &qword_27C8F9498, &qword_213F57DB8);
  sub_213DE36FC(v88, &qword_27C8F9EE0, &unk_213F5A720);
  return sub_213DE36FC(v87, &qword_27C8F9498, &qword_213F57DB8);
}

uint64_t sub_213E5F7D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F00, &qword_213F5A7C0);
  a2[4] = sub_213DE3AE4(&qword_27C8F9F08, &qword_27C8F9F00, &qword_213F5A7C0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  *boxed_opaque_existential_1 = sub_213F4EEE0();
  boxed_opaque_existential_1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F10, &qword_213F5A7C8);
  return sub_213E5E578(a1, boxed_opaque_existential_1 + *(v6 + 44));
}

uint64_t sub_213E5F884(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LocationTile(0) + 36));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213E5F8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4E8D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C8, &qword_213F57320);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_213F53CC0;
  *(v5 + 32) = sub_213F4E8D0();
  *(v5 + 40) = sub_213F4E8F0();
  *(v5 + 48) = sub_213F4E8F0();
  sub_213F4F020();
  sub_213F4F030();
  MEMORY[0x2160521D0](v5);
  sub_213F4D2C0();
  v6 = (a1 + *(type metadata accessor for LocationTile(0) + 32));
  v7 = *v6;
  v8 = v6[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  sub_213F4EAA0();
  sub_213F4EEE0();
  sub_213F4D0C0();
  *&v20 = v26;
  v9 = v23;
  v28 = v23;
  *(a2 + 88) = v23;
  v10 = v25;
  v18 = v24;
  v19 = v25;
  v11 = v21;
  v12 = v22;
  v27[3] = v21;
  v27[4] = v22;
  v27[0] = v24;
  v27[1] = v25;
  *(a2 + 8) = v24;
  *(a2 + 24) = v10;
  v13 = v19;
  v14 = v20;
  v15 = v20;
  v27[2] = v20;
  *a2 = v4;
  *(a2 + 56) = v11;
  *(a2 + 72) = v12;
  *(a2 + 40) = v14;
  v29[0] = v18;
  v29[1] = v13;
  v30 = v9;
  v29[3] = v21;
  v29[4] = v22;
  v29[2] = v15;

  sub_213DE3164(v27, v17, &qword_27C8F94E8, &unk_213F65730);
  sub_213DE36FC(v29, &qword_27C8F94E8, &unk_213F65730);
}

uint64_t sub_213E5FAE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v116 = a2;
  v3 = type metadata accessor for LocationTile(0);
  v126 = *(v3 - 8);
  v4 = *(v126 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v127 = v5;
  v114 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_213F4D290();
  v124 = *(v125 - 8);
  v6 = *(v124 + 64);
  v7 = MEMORY[0x28223BE20](v125);
  v123 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v122 = &v101 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9228, &unk_213F5A640);
  v10 = *(*(v111 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v111);
  v110 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = &v101 - v13;
  v14 = sub_213F4D390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v101 - v20;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9230, &qword_213F57250);
  v22 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v109 = &v101 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E78, &qword_213F5A650);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v101 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E80, &qword_213F5A658);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v101 - v30;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E88, &qword_213F5A660);
  v108 = *(v112 - 8);
  v32 = *(v108 + 64);
  MEMORY[0x28223BE20](v112);
  v107 = &v101 - v33;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E90, &qword_213F5A668);
  v34 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v36 = &v101 - v35;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E98, &qword_213F5A670);
  v37 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v119 = &v101 - v38;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EA0, &qword_213F5A678);
  v39 = *(*(v118 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v118);
  v121 = &v101 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v117 = &v101 - v43;
  MEMORY[0x28223BE20](v42);
  v120 = &v101 - v44;
  *v27 = sub_213F4DA50();
  *(v27 + 1) = 0;
  v27[16] = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EA8, &qword_213F5A680);
  v46 = a1;
  sub_213E606A8(a1, &v27[*(v45 + 44)]);
  sub_213F4EEB0();
  sub_213F4D4E0();
  sub_213DE2B44(v27, v31, &qword_27C8F9E78, &qword_213F5A650);
  v103 = v28;
  v47 = *(v28 + 36);
  v105 = v31;
  v48 = &v31[v47];
  v49 = v133;
  *(v48 + 4) = v132;
  *(v48 + 5) = v49;
  *(v48 + 6) = v134;
  v50 = v129;
  *v48 = v128;
  *(v48 + 1) = v50;
  v51 = v131;
  *(v48 + 2) = v130;
  *(v48 + 3) = v51;
  v52 = v15;
  v53 = *(v15 + 104);
  v53(v21, *MEMORY[0x277CDF9E8], v14);
  v53(v19, *MEMORY[0x277CDF998], v14);
  sub_213E5D6F0(&qword_281183490, MEMORY[0x277CDFA28]);
  v54 = v14;
  result = sub_213F4F1E0();
  if (result)
  {
    v56 = *(v52 + 32);
    v57 = v104;
    v56(v104, v21, v54);
    v58 = v111;
    v56((v57 + *(v111 + 48)), v19, v54);
    v59 = v110;
    sub_213DE3164(v57, v110, &qword_27C8F9228, &unk_213F5A640);
    v101 = v46;
    v60 = *(v58 + 48);
    v61 = v109;
    v56(v109, v59, v54);
    v102 = v36;
    v62 = *(v52 + 8);
    v62(v59 + v60, v54);
    sub_213DE2B44(v57, v59, &qword_27C8F9228, &unk_213F5A640);
    v56((v61 + *(v113 + 36)), (v59 + *(v58 + 48)), v54);
    v62(v59, v54);
    sub_213E61F74();
    sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250);
    v63 = v107;
    v64 = v105;
    sub_213F4E570();
    sub_213DE36FC(v61, &qword_27C8F9230, &qword_213F57250);
    sub_213DE36FC(v64, &qword_27C8F9E80, &qword_213F5A658);
    LOBYTE(v62) = sub_213F4E070();
    v65 = v122;
    v66 = v101;
    sub_213E5DF44(v122);
    v67 = v123;
    sub_213F4D280();
    sub_213F4D270();
    v68 = *(v124 + 8);
    v69 = v125;
    v68(v67, v125);
    v68(v65, v69);
    sub_213F4CDA0();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v78 = v102;
    (*(v108 + 32))(v102, v63, v112);
    v79 = v78 + *(v106 + 36);
    *v79 = v62;
    *(v79 + 8) = v71;
    *(v79 + 16) = v73;
    *(v79 + 24) = v75;
    *(v79 + 32) = v77;
    *(v79 + 40) = 0;
    LOBYTE(v62) = sub_213F4E040();
    sub_213E5DF44(v65);
    sub_213F4D280();
    sub_213F4D270();
    v68(v67, v69);
    v68(v65, v69);
    sub_213F4CDA0();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = v119;
    sub_213DE2B44(v78, v119, &qword_27C8F9E90, &qword_213F5A668);
    v89 = v88 + *(v115 + 36);
    *v89 = v62;
    *(v89 + 8) = v81;
    *(v89 + 16) = v83;
    *(v89 + 24) = v85;
    *(v89 + 32) = v87;
    *(v89 + 40) = 0;
    v90 = v114;
    sub_213E6216C(v66, v114, type metadata accessor for LocationTile);
    v91 = (*(v126 + 80) + 16) & ~*(v126 + 80);
    v92 = swift_allocObject();
    sub_213E61934(v90, v92 + v91);
    v93 = v88;
    v94 = v117;
    sub_213DE2B44(v93, v117, &qword_27C8F9E98, &qword_213F5A670);
    v95 = (v94 + *(v118 + 36));
    *v95 = sub_213DD7524;
    v95[1] = 0;
    v95[2] = sub_213E6202C;
    v95[3] = v92;
    v96 = v120;
    sub_213DE2B44(v94, v120, &qword_27C8F9EA0, &qword_213F5A678);
    v97 = v121;
    sub_213DE3164(v96, v121, &qword_27C8F9EA0, &qword_213F5A678);
    v98 = v116;
    *v116 = 0;
    *(v98 + 8) = 1;
    v99 = v98;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EC0, &qword_213F5A688);
    sub_213DE3164(v97, v99 + *(v100 + 48), &qword_27C8F9EA0, &qword_213F5A678);
    sub_213DE36FC(v96, &qword_27C8F9EA0, &qword_213F5A678);
    return sub_213DE36FC(v97, &qword_27C8F9EA0, &qword_213F5A678);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E606A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9260, &qword_213F57278);
  v3 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v5 = &v61 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9258, &qword_213F57270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9EC8, &qword_213F61150);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v63 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = &v61 - v15;
  v62 = *(a1 + *(type metadata accessor for LocationTile(0) + 24));
  v16 = *(v62 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_title + 8);
  v69 = *(v62 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_title);
  v70 = v16;
  v61 = sub_213DBC9EC();

  v17 = sub_213F4E310();
  v19 = v18;
  v21 = v20;
  v69 = sub_213F4E8F0();
  v22 = sub_213F4E2B0();
  v24 = v23;
  v26 = v25;
  sub_213DBCA40(v17, v19, v21 & 1);

  sub_213F4E0C0();
  sub_213F4E180();
  sub_213F4E1D0();

  v27 = sub_213F4E2E0();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_213DBCA40(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  v69 = v27;
  v70 = v29;
  v31 &= 1u;
  v71 = v31;
  v72 = v33;
  v73 = KeyPath;
  v74 = 1;
  v75 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8980, &unk_213F55A40);
  sub_213E0C270();
  sub_213F4E6D0();
  sub_213DBCA40(v27, v29, v31);

  v35 = *(v62 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_subtitle + 8);
  v69 = *(v62 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_subtitle);
  v70 = v35;

  v36 = sub_213F4E310();
  v38 = v37;
  LOBYTE(v33) = v39;
  v69 = sub_213F4E8F0();
  v70 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9480, &unk_213F5A6C0);
  sub_213DE3AE4(&qword_2811828B0, &qword_27C8F9480, &unk_213F5A6C0);
  v40 = sub_213F4E2B0();
  v42 = v41;
  LOBYTE(v29) = v43;
  v45 = v44;
  sub_213DBCA40(v36, v38, v33 & 1);

  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9278, &qword_213F57290) + 36);
  v47 = *MEMORY[0x277CE13B8];
  v48 = sub_213F4EF90();
  (*(*(v48 - 8) + 104))(&v5[v46], v47, v48);
  *v5 = v40;
  *(v5 + 1) = v42;
  v5[16] = v29 & 1;
  *(v5 + 3) = v45;
  sub_213F4E210();
  sub_213F4E180();
  v49 = sub_213F4E1D0();

  v50 = swift_getKeyPath();
  v51 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9280, &unk_213F5A700) + 36)];
  *v51 = v50;
  v51[1] = v49;
  v52 = swift_getKeyPath();
  v53 = &v5[*(v65 + 36)];
  *v53 = v52;
  *(v53 + 1) = 1;
  v53[16] = 0;
  sub_213E2F2FC();
  v54 = v64;
  sub_213F4E6D0();
  sub_213DE36FC(v5, &qword_27C8F9260, &qword_213F57278);
  v55 = v68;
  v56 = v63;
  sub_213DE3164(v68, v63, &qword_27C8F9EC8, &qword_213F61150);
  v57 = v66;
  sub_213DE3164(v54, v66, &qword_27C8F9258, &qword_213F57270);
  v58 = v67;
  sub_213DE3164(v56, v67, &qword_27C8F9EC8, &qword_213F61150);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9ED0, &qword_213F5A710);
  sub_213DE3164(v57, v58 + *(v59 + 48), &qword_27C8F9258, &qword_213F57270);
  sub_213DE36FC(v54, &qword_27C8F9258, &qword_213F57270);
  sub_213DE36FC(v55, &qword_27C8F9EC8, &qword_213F61150);
  sub_213DE36FC(v57, &qword_27C8F9258, &qword_213F57270);
  return sub_213DE36FC(v56, &qword_27C8F9EC8, &qword_213F61150);
}

uint64_t sub_213E60CF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = (a2 + *(type metadata accessor for LocationTile(0) + 32));
  v5 = *v3;
  v6 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  return sub_213F4EAB0();
}

uint64_t LocationTile.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocationTile(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DE8, &qword_213F5A4B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  sub_213E6216C(v1, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LocationTile);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_213E61934(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DF0, &qword_213F5A4C0);
  sub_213E619A4();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_27C8F9E20, &qword_27C8F9DE8, &qword_213F5A4B8);
  sub_213E2EE14();
  sub_213F4E3C0();
  return (*(v6 + 8))(v9, v5);
}

double sub_213E60FC0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_213F4D290();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  *a2 = sub_213F4EEE0();
  a2[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E48, &qword_213F5A610);
  sub_213E611CC(a1, a2 + *(v13 + 44));
  sub_213E5DF44(v11);
  sub_213F4D280();
  sub_213F4D270();
  v14 = *(v5 + 8);
  v14(v9, v4);
  v14(v11, v4);
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E08, &qword_213F5A4C8) + 36);
  v16 = *(sub_213F4D470() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_213F4D950();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #20.0 }

  *v15 = _Q0;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)] = 256;
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DF0, &qword_213F5A4C0) + 36);
  result = 9.08367203e223;
  *v24 = xmmword_213F5A400;
  v24[16] = 12;
  return result;
}

uint64_t sub_213E611CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E50, &qword_213F5A618);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E58, &qword_213F5A620);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v23 - v16);
  *v17 = sub_213F4EEE0();
  v17[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E60, &qword_213F5A628);
  sub_213E5EDE4(a1, v17 + *(v19 + 44));
  *v10 = sub_213F4DA40();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E68, &qword_213F5A630);
  sub_213E5FAE8(a1, &v10[*(v20 + 44)]);
  sub_213DE3164(v17, v15, &qword_27C8F9E58, &qword_213F5A620);
  sub_213DE3164(v10, v8, &qword_27C8F9E50, &qword_213F5A618);
  sub_213DE3164(v15, a2, &qword_27C8F9E58, &qword_213F5A620);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9E70, &qword_213F5A638);
  sub_213DE3164(v8, a2 + *(v21 + 48), &qword_27C8F9E50, &qword_213F5A618);
  sub_213DE36FC(v10, &qword_27C8F9E50, &qword_213F5A618);
  sub_213DE36FC(v17, &qword_27C8F9E58, &qword_213F5A620);
  sub_213DE36FC(v8, &qword_27C8F9E50, &qword_213F5A618);
  return sub_213DE36FC(v15, &qword_27C8F9E58, &qword_213F5A620);
}

uint64_t sub_213E6140C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DE8, &qword_213F5A4B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  sub_213E6216C(v2, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LocationTile);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_213E61934(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  v14 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9DF0, &qword_213F5A4C0);
  sub_213E619A4();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_27C8F9E20, &qword_27C8F9DE8, &qword_213F5A4B8);
  sub_213E2EE14();
  sub_213F4E3C0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_213E6165C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = a10;
  v28 = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a6, a10);
  sub_213F4CBB0();
  v20 = OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel__id;
  v21 = sub_213F4CB40();
  (*(*(v21 - 8) + 32))(a9 + v20, a1, v21);
  v22 = (a9 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_title);
  *v22 = a2;
  v22[1] = a3;
  v23 = (a9 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_subtitle);
  *v23 = a4;
  v23[1] = a5;
  sub_213DD7500(&v26, a9 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_imageProvider);
  v24 = (a9 + OBJC_IVAR____TtC10MapsDesign21LocationTileViewModel_colorGradient);
  *v24 = a7;
  v24[1] = a8;
  return a9;
}

uint64_t sub_213E617A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = a7;
  v28 = a8;
  v26 = a5;
  v16 = *(a10 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](a1);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for LocationTileViewModel(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  (*(v16 + 16))(v19, a6, a10);
  return sub_213E6165C(a1, a2, a3, a4, v26, v19, v27, v28, v23, a10, a11);
}

uint64_t sub_213E618D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_213E61934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationTile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213E619A4()
{
  result = qword_27C8F9DF8;
  if (!qword_27C8F9DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9DF0, &qword_213F5A4C0);
    sub_213E61A30();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9DF8);
  }

  return result;
}

unint64_t sub_213E61A30()
{
  result = qword_27C8F9E00;
  if (!qword_27C8F9E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9E08, &qword_213F5A4C8);
    sub_213DE3AE4(&qword_27C8F9E10, &qword_27C8F9E18, &unk_213F5A4D0);
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9E00);
  }

  return result;
}

uint64_t sub_213E61B80()
{
  result = sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_213F4CBC0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_213E61D2C()
{
  sub_213E61E68(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v0 <= 0x3F)
  {
    sub_213E61E68(319, &qword_281183528, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LocationTileViewModel(319);
      if (v2 <= 0x3F)
      {
        sub_213DE22E8();
        if (v3 <= 0x3F)
        {
          sub_213E61EBC(319, &qword_27C8F7660);
          if (v4 <= 0x3F)
          {
            sub_213E61EBC(319, &qword_2811827B0);
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

void sub_213E61E68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213F4CEF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_213E61EBC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_213F4EAD0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_213E61F08()
{
  v1 = type metadata accessor for LocationTile(0);
  v2 = v0 + *(v1 + 28) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_213E61F74()
{
  result = qword_27C8F9EB0;
  if (!qword_27C8F9EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9E80, &qword_213F5A658);
    sub_213DE3AE4(&qword_27C8F9EB8, &qword_27C8F9E78, &qword_213F5A650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9EB0);
  }

  return result;
}

uint64_t sub_213E6202C(uint64_t a1)
{
  v3 = *(type metadata accessor for LocationTile(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213E60CF0(a1, v4);
}

uint64_t sub_213E6209C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for LocationTile(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213E5F7D4(v4, a1);
}

uint64_t sub_213E6210C()
{
  v1 = *(type metadata accessor for LocationTile(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_213E5F884(v2);
}

uint64_t sub_213E6216C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_213E621D4()
{
  result = qword_281182310;
  if (!qword_281182310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281182310);
  }

  return result;
}

uint64_t MapsDesignImage.init(imageProvider:aspectRatio:imageAlignment:resizable:placeholderContentViewBuilder:onImageLoaded:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v15 = type metadata accessor for MapsDesignImage();
  v16 = v15[5];
  *(a9 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v17 = v15[6];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v18 = v15[7];
  *(a9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v19 = (a9 + v15[12]);
  v20 = (a9 + v15[13]);
  v21 = a9 + v15[14];
  sub_213F4EA90();
  *v21 = v29;
  *(v21 + 16) = v30;
  *(v21 + 24) = v31;
  *(v21 + 25) = v32;
  *(v21 + 26) = v33;
  *(v21 + 32) = v34;
  v22 = v15[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *(a9 + v22) = v29;
  result = sub_213DD7500(a1, a9 + v15[8]);
  *(a9 + v15[9]) = a2 & 1;
  v24 = (a9 + v15[10]);
  *v24 = a3;
  v24[1] = a4;
  *(a9 + v15[11]) = a5;
  *v19 = a6;
  v19[1] = a7;
  *v20 = a8;
  v20[1] = a10;
  return result;
}

double sub_213E62484()
{
  v1 = sub_213F4D7F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (v0[8] == 1)
  {
    return *v0;
  }

  v8 = *v0;

  sub_213F4F520();
  v9 = sub_213F4E000();
  sub_213F4CC10();

  sub_213F4D7E0();
  swift_getAtKeyPath();
  sub_213E053BC(v6, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_213E625D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MapsDesignImage();
  sub_213DE3164(v1 + *(v12 + 20), v11, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4D290();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_213E627D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MapsDesignImage();
  sub_213DE3164(v1 + *(v12 + 24), v11, &qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4CEA0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_213E629E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MapsDesignImage();
  sub_213DE3164(v1 + *(v12 + 28), v11, &qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4D3B0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t MapsDesignImage.imageProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MapsDesignImage() + 32);

  return sub_213DEBAA8(v3, a1);
}

uint64_t MapsDesignImage.aspectRatio.setter(char a1)
{
  result = type metadata accessor for MapsDesignImage();
  *(v1 + *(result + 36)) = a1 & 1;
  return result;
}

uint64_t MapsDesignImage.imageAlignment.getter()
{
  v1 = (v0 + *(type metadata accessor for MapsDesignImage() + 40));
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t MapsDesignImage.imageAlignment.setter(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for MapsDesignImage();
  v6 = (v2 + *(result + 40));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t MapsDesignImage.resizable.setter(char a1)
{
  result = type metadata accessor for MapsDesignImage();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_213E62E18(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 + *(type metadata accessor for MapsDesignImage() + 48));
  v6 = *v5;
  v7 = v5[1];
  sub_213DD74C4(v2);
  result = sub_213DD7558(v6);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t MapsDesignImage.placeholderContentViewBuilder.getter()
{
  v1 = (v0 + *(type metadata accessor for MapsDesignImage() + 48));
  v2 = *v1;
  v3 = v1[1];
  sub_213DD74C4(*v1);
  return v2;
}

uint64_t MapsDesignImage.placeholderContentViewBuilder.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MapsDesignImage() + 48));
  v6 = v5[1];
  result = sub_213DD7558(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_213E62F58@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MapsDesignImage() + 52));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_213DFA65C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_213DD74C4(v4);
}

uint64_t sub_213E62FEC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_213E655BC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for MapsDesignImage() + 52));
  v8 = *v7;
  v9 = v7[1];
  sub_213DD74C4(v3);
  result = sub_213DD7558(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t MapsDesignImage.onImageLoaded.getter()
{
  v1 = (v0 + *(type metadata accessor for MapsDesignImage() + 52));
  v2 = *v1;
  v3 = v1[1];
  sub_213DD74C4(*v1);
  return v2;
}

uint64_t MapsDesignImage.onImageLoaded.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MapsDesignImage() + 52));
  v6 = v5[1];
  result = sub_213DD7558(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_213E6316C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsDesignImage();
  v11 = *(a2 + *(v4 + 60));
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F80, &qword_213F5AA58);
  result = sub_213F4EAB0();
  if (a1)
  {
    v7 = a2 + *(v4 + 52);
    v8 = *v7;
    if (*v7)
    {
      v9 = *(v7 + 8);

      v8(v10);
      return sub_213DD7558(v8);
    }
  }

  return result;
}

uint64_t MapsDesignImage.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v43 = sub_213F4CEA0();
  v45 = *(v43 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MapsDesignImage();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F50, &qword_213F5A8E0);
  v36 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = sub_213F4E8D0();
  v14 = (v2 + *(v6 + 48));
  v16 = *v14;
  v15 = v14[1];
  v41 = v16;
  v39 = v13;
  v40 = v15;
  sub_213E635C0(v2, &v46);
  v38 = v46;
  v37 = v47;
  sub_213DEEFF0(v2, &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v35 = swift_allocObject();
  sub_213E64B24(&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v17);
  v18 = (v2 + *(v6 + 40));
  v19 = v18[4];
  __swift_project_boxed_opaque_existential_0(v18, v18[3]);
  v20 = *(v19 + 8);
  v21 = sub_213F4F1C0();
  sub_213DEEFF0(v2, &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = swift_allocObject();
  sub_213E64B24(&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v17);
  v23 = &v12[*(v9 + 36)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F58, &qword_213F5A8F8);
  v25 = &v23[*(v24 + 36)];
  sub_213F4F470();
  *&v23[*(v24 + 40)] = v21;
  *v23 = &unk_213F5A8F0;
  *(v23 + 1) = v22;
  v26 = v38;
  *v12 = v39;
  *(v12 + 1) = v26;
  *(v12 + 4) = v37;
  v12[20] = 1;
  v27 = v40;
  *(v12 + 3) = v41;
  *(v12 + 4) = v27;
  *(v12 + 5) = sub_213DD7524;
  *(v12 + 6) = 0;
  v28 = v35;
  *(v12 + 7) = sub_213E64B88;
  *(v12 + 8) = v28;
  v29 = v42;
  sub_213E627D8(v42);
  sub_213DEEFF0(v2, &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = swift_allocObject();
  sub_213E64B24(&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v17);
  sub_213E64E38();
  sub_213E65060();
  v31 = v29;
  v32 = v43;
  sub_213F4E810();

  (*(v45 + 8))(v31, v32);
  return sub_213E650B8(v12);
}

void sub_213E635C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MapsDesignImage();
  v35 = *(a1 + v4[15]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F80, &qword_213F5AA58);
  sub_213F4EAA0();
  if (v39)
  {
    if (*(a1 + v4[11]))
    {
      v5 = 256;
    }

    else
    {
      v5 = 0;
    }

    WORD4(v39) = v5 | *(a1 + v4[9]);
    BYTE10(v39) = 0;
    sub_213E656DC();
    v6 = v39;
LABEL_11:
    v20 = v6;
    sub_213F4DBA0();
    *&v39 = v35;
    WORD5(v39) = BYTE10(v35) != 0;
    WORD4(v39) = WORD4(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F88, &unk_213F5AA60);
    sub_213E65658();
    sub_213F4DBA0();

    v21 = v35;
    v22 = WORD4(v35) | (BYTE10(v35) << 16);
    if (BYTE11(v35))
    {
      v23 = 0x1000000;
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_14;
  }

  v7 = (a1 + v4[8]);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_0(v7, v8);
  v10 = (a1 + v4[14]);
  v11 = *(v10 + 2);
  v12 = *(v10 + 24);
  v13 = *(v10 + 25);
  v14 = *(v10 + 26);
  v15 = *(v10 + 4);
  v35 = *v10;
  v38 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F78, &qword_213F5AA50);
  sub_213F4EAA0();
  v35 = v39;
  v36 = v40;
  LOWORD(v37) = v41;
  BYTE2(v37) = v42;
  v16 = (*(v9 + 24))(&v35, v8, v9);
  if (v16)
  {
    v17 = *(a1 + v4[9]);
    if (*(a1 + v4[11]))
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    *&v39 = v16;
    WORD4(v39) = v18 | v17;
    BYTE10(v39) = 1;
    v19 = v16;
    sub_213E656DC();
    v6 = v19;
    goto LABEL_11;
  }

  v25 = a1 + v4[12];
  v26 = *v25;
  if (!*v25)
  {
    v21 = 0;
    v24 = -16777216;
    goto LABEL_15;
  }

  v27 = *(v25 + 8);

  v26(&v35, v28);
  v29 = v37;
  v30 = __swift_project_boxed_opaque_existential_0(&v35, v37);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  (*(v33 + 16))(&v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_213F4EC10();
  __swift_destroy_boxed_opaque_existential_1(&v35);
  *&v39 = v34;
  DWORD2(v39) = 0x1000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F88, &unk_213F5AA60);
  sub_213E65658();
  sub_213F4DBA0();
  sub_213DD7558(v26);

  v21 = v35;
  v22 = WORD4(v35) | (BYTE10(v35) << 16);
  if (BYTE11(v35))
  {
    v23 = 0x1000000;
  }

  else
  {
    v23 = 0;
  }

LABEL_14:
  v24 = v23 | v22;
LABEL_15:
  *a2 = v21;
  *(a2 + 8) = v24;
}

uint64_t sub_213E639B4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for MapsDesignImage() + 56));
  v6 = *v4;
  v8 = *(v4 + 2);
  v10 = *(v4 + 24);
  v12 = *(v4 + 25);
  v14 = *(v4 + 26);
  v16 = *(v4 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F78, &qword_213F5AA50);
  sub_213F4EAA0();
  sub_213E62484();
  v7 = *v4;
  v9 = *(v4 + 2);
  v11 = *(v4 + 24);
  v13 = *(v4 + 25);
  v15 = *(v4 + 26);
  v17 = *(v4 + 4);

  sub_213F4EAB0();
}

uint64_t sub_213E63AD8(uint64_t a1)
{
  v1[65] = a1;
  v2 = type metadata accessor for MapsDesignImage();
  v1[66] = v2;
  v3 = *(v2 - 8);
  v1[67] = v3;
  v1[68] = *(v3 + 64);
  v1[69] = swift_task_alloc();
  v4 = sub_213F4D290();
  v1[70] = v4;
  v5 = *(v4 - 8);
  v1[71] = v5;
  v6 = *(v5 + 64) + 15;
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v7 = sub_213F4D3B0();
  v1[74] = v7;
  v8 = *(v7 - 8);
  v1[75] = v8;
  v9 = *(v8 + 64) + 15;
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v10 = sub_213F4CEA0();
  v1[78] = v10;
  v11 = *(v10 - 8);
  v1[79] = v11;
  v12 = *(v11 + 64) + 15;
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  sub_213F4F460();
  v1[82] = sub_213F4F450();
  v14 = sub_213F4F440();

  return MEMORY[0x2822009F8](sub_213E63D0C, v14, v13);
}

uint64_t sub_213E63D0C()
{
  v94 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 640);
  v87 = *(v0 + 632);
  v83 = *(v0 + 648);
  v85 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 600);
  v74 = *(v0 + 608);
  v75 = *(v0 + 592);
  v5 = *(v0 + 584);
  v76 = *(v0 + 576);
  v79 = *(v0 + 568);
  v81 = *(v0 + 560);
  v6 = *(v0 + 528);
  v7 = *(v0 + 520);

  v8 = v7 + *(v6 + 56);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  v11 = *(v8 + 25);
  v12 = *(v8 + 26);
  v13 = *(v8 + 32);
  *(v0 + 16) = *v8;
  *(v0 + 32) = v9;
  *(v0 + 40) = v10;
  *(v0 + 41) = v11;
  *(v0 + 42) = v12;
  *(v0 + 48) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F78, &qword_213F5AA50);
  sub_213F4EAA0();
  v77 = *(v0 + 296);
  v14 = *(v0 + 312);
  sub_213E627D8(v83);
  sub_213E629E0(v3);
  sub_213E625D0(v5);
  (*(v87 + 104))(v2, *MEMORY[0x277CDF3C0], v85);
  v73 = sub_213F4CE90();
  v87 += 8;
  v72 = *v87;
  (*v87)(v2, v85);
  (*(v4 + 104))(v74, *MEMORY[0x277CDFA90], v75);
  v71 = sub_213F4D3A0();
  v15 = *(v4 + 8);
  v15(v74, v75);
  sub_213F4D280();
  LOBYTE(v74) = sub_213F4D270();
  v16 = *(v79 + 8);
  v16(v76, v81);
  v16(v5, v81);
  v15(v3, v75);
  v72(v83, v85);
  v17 = *(v8 + 16);
  v18 = *(v8 + 24);
  v19 = *(v8 + 25);
  v20 = *(v8 + 26);
  v21 = *(v8 + 32);
  *(v0 + 56) = *v8;
  *(v0 + 72) = v17;
  *(v0 + 80) = v18;
  *(v0 + 81) = v19;
  *(v0 + 82) = v20;
  *(v0 + 88) = v21;
  *(v0 + 328) = v77;
  *(v0 + 344) = v14;
  *(v0 + 352) = v73 & 1;
  *(v0 + 353) = v71 & 1;
  *(v0 + 354) = v74 & 1;

  sub_213F4EAB0();
  v22 = *(v0 + 88);

  v23 = *(v8 + 16);
  v24 = *(v8 + 24);
  v25 = *(v8 + 25);
  v26 = *(v8 + 26);
  v27 = *(v8 + 32);
  *(v0 + 96) = *v8;
  *(v0 + 112) = v23;
  *(v0 + 120) = v24;
  *(v0 + 121) = v25;
  *(v0 + 122) = v26;
  *(v0 + 128) = v27;
  sub_213F4EAA0();
  if (*(v0 + 376) == 0.0)
  {
    v28 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = *(v8 + 25);
    v31 = *(v8 + 26);
    v32 = *(v8 + 32);
    *(v0 + 176) = *v8;
    v33 = *(v0 + 520);
    *(v0 + 192) = v28;
    *(v0 + 200) = v29;
    *(v0 + 201) = v30;
    *(v0 + 202) = v31;
    *(v0 + 208) = v32;
    sub_213F4EAA0();
    v34 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = *(v8 + 25);
    v37 = *(v8 + 26);
    v38 = *(v8 + 32);
    *(v0 + 216) = *v8;
    v39 = *(v0 + 448);
    v40 = *(v0 + 449);
    v41 = *(v0 + 450);
    *(v0 + 232) = v34;
    *(v0 + 240) = v35;
    *(v0 + 241) = v36;
    *(v0 + 242) = v37;
    *(v0 + 248) = v38;
    sub_213F4EAA0();
    v42 = *(v0 + 456);
    v43 = *(v0 + 464);
    v44 = sub_213E62484();
    v45 = *(v8 + 16);
    v46 = *(v8 + 24);
    v47 = *(v8 + 25);
    v48 = *(v8 + 26);
    v49 = *(v8 + 32);
    *(v0 + 256) = *v8;
    *(v0 + 272) = v45;
    *(v0 + 280) = v46;
    *(v0 + 281) = v47;
    *(v0 + 282) = v48;
    *(v0 + 488) = v42;
    *(v0 + 288) = v49;
    *(v0 + 496) = v43;
    *(v0 + 504) = v44;
    *(v0 + 512) = v39;
    *(v0 + 513) = v40;
    *(v0 + 514) = v41;

    sub_213F4EAB0();
    v50 = *(v0 + 288);
  }

  v78 = *(v0 + 648);
  v80 = *(v0 + 640);
  v82 = *(v0 + 616);
  v84 = *(v0 + 608);
  v86 = *(v0 + 584);
  v88 = *(v0 + 576);
  v51 = *(v0 + 552);
  v52 = *(v0 + 544);
  v53 = *(v0 + 536);
  v54 = *(v0 + 520);
  v55 = (v54 + *(*(v0 + 528) + 32));
  v56 = v55[3];
  v57 = v55[4];
  __swift_project_boxed_opaque_existential_0(v55, v56);
  v58 = *(v8 + 16);
  v59 = *(v8 + 24);
  v60 = *(v8 + 25);
  v61 = *(v8 + 26);
  v62 = *(v8 + 32);
  *(v0 + 136) = *v8;
  *(v0 + 152) = v58;
  *(v0 + 160) = v59;
  *(v0 + 161) = v60;
  *(v0 + 162) = v61;
  *(v0 + 168) = v62;
  sub_213F4EAA0();
  v63 = *(v0 + 408);
  v64 = *(v0 + 416);
  v65 = *(v0 + 417);
  v66 = *(v0 + 418);
  v89 = *(v0 + 392);
  v90 = v63;
  v91 = v64;
  v92 = v65;
  v93 = v66;
  sub_213DEEFF0(v54, v51);
  v67 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v68 = swift_allocObject();
  sub_213E64B24(v51, v68 + v67);
  (*(v57 + 16))(&v89, sub_213E65730, v68, v56, v57);

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_213E642F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MapsDesignImage();
  v79 = *(v4 - 8);
  v5 = *(v79 + 64);
  v6 = v4 - 8;
  v74 = v4 - 8;
  v78 = v5;
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_213F4D290();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v73 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - v12;
  v72 = sub_213F4D3B0();
  v70 = *(v72 - 8);
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v72);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v62 - v18;
  v20 = sub_213F4CEA0();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v62 - v26;
  v28 = *(v6 + 64);
  v69 = a3;
  v29 = (a3 + v28);
  v30 = *(a3 + v28 + 16);
  LOBYTE(v28) = *(a3 + v28 + 24);
  v31 = *(v29 + 25);
  v32 = *(v29 + 26);
  v33 = *(v29 + 4);
  v80 = *v29;
  v81 = v30;
  v82 = v28;
  v83 = v31;
  v84 = v32;
  v85 = v33;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F78, &qword_213F5AA50);
  sub_213F4EAA0();
  v68 = v86;
  v34 = v87;
  v66 = v27;
  sub_213E627D8(v27);
  v62 = v19;
  sub_213E629E0(v19);
  sub_213E625D0(v13);
  v35 = *MEMORY[0x277CDF3C0];
  v36 = v21[13];
  v65 = v20;
  v36(v25, v35, v20);
  v67 = sub_213F4CE90();
  v64 = v21[1];
  v64(v25, v20);
  v37 = v70;
  v38 = v72;
  (*(v70 + 104))(v17, *MEMORY[0x277CDFA90], v72);
  v63 = sub_213F4D3A0();
  v39 = *(v37 + 8);
  v39(v17, v38);
  v40 = v73;
  sub_213F4D280();
  LOBYTE(v17) = sub_213F4D270();
  v41 = *(v75 + 8);
  v42 = v40;
  v43 = v76;
  v41(v42, v76);
  v41(v13, v43);
  v39(v62, v38);
  v64(v66, v65);
  v44 = *(v29 + 2);
  v45 = *(v29 + 24);
  v46 = *(v29 + 25);
  v47 = *(v29 + 26);
  v48 = *(v29 + 4);
  v80 = *v29;
  v81 = v44;
  v82 = v45;
  v83 = v46;
  v84 = v47;
  v85 = v48;
  v86 = v68;
  v87 = v34;
  v88 = v67 & 1;
  v89 = v63 & 1;
  v90 = v17 & 1;

  sub_213F4EAB0();

  v49 = v69;
  v50 = (v69 + *(v74 + 40));
  v51 = v50[3];
  v52 = v50[4];
  __swift_project_boxed_opaque_existential_0(v50, v51);
  v53 = *(v29 + 2);
  v54 = *(v29 + 24);
  v55 = *(v29 + 25);
  v56 = *(v29 + 26);
  v57 = *(v29 + 4);
  v80 = *v29;
  v81 = v53;
  v82 = v54;
  v83 = v55;
  v84 = v56;
  v85 = v57;
  sub_213F4EAA0();
  v80 = v86;
  v81 = v87;
  v82 = v88;
  v83 = v89;
  v84 = v90;
  v58 = v77;
  sub_213DEEFF0(v49, v77);
  v59 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v60 = swift_allocObject();
  sub_213E64B24(v58, v60 + v59);
  (*(v52 + 16))(&v80, sub_213E655E4, v60, v51, v52);
}

uint64_t sub_213E64934@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4EA00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 9);
  v11 = v8;
  result = sub_213F4E9D0();
  if (v10 == 1)
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
    v13 = sub_213F4EA40();

    (*(v4 + 8))(v7, v3);
    result = v13;
  }

  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = v9;
  return result;
}

uint64_t sub_213E64A84@<X0>(void *a1@<X8>)
{
  result = sub_213F4D5D0();
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for MapsDesignImage()
{
  result = qword_2811887D8;
  if (!qword_2811887D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213E64B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsDesignImage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213E64B88(uint64_t *a1)
{
  v3 = *(type metadata accessor for MapsDesignImage() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213E639B4(a1, v4);
}

uint64_t sub_213E64BF8()
{
  v2 = *(type metadata accessor for MapsDesignImage() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_213E64CC4;

  return sub_213E63AD8(v0 + v3);
}

uint64_t sub_213E64CC4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_213E64DB8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MapsDesignImage() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_213E642F8(a1, a2, v6);
}

unint64_t sub_213E64E38()
{
  result = qword_281182E58;
  if (!qword_281182E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9F50, &qword_213F5A8E0);
    sub_213E64EF0();
    sub_213DE3AE4(&qword_281182C28, &qword_27C8F9F58, &qword_213F5A8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E58);
  }

  return result;
}

unint64_t sub_213E64EF0()
{
  result = qword_281182FF0;
  if (!qword_281182FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9F60, &qword_213F5A900);
    sub_213E64FA8();
    sub_213DE3AE4(&qword_281182910, &qword_27C8F96F8, &qword_213F587F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FF0);
  }

  return result;
}

unint64_t sub_213E64FA8()
{
  result = qword_281183268;
  if (!qword_281183268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9F68, &qword_213F5A908);
    sub_213DE3AE4(&qword_281182C50, &qword_27C8F9F70, &unk_213F5A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183268);
  }

  return result;
}

unint64_t sub_213E65060()
{
  result = qword_281183538;
  if (!qword_281183538)
  {
    sub_213F4CEA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183538);
  }

  return result;
}

uint64_t sub_213E650B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F50, &qword_213F5A8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_213E65164()
{
  sub_213E65440(319, &qword_281183530, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213E65388(319, &qword_281183520, MEMORY[0x277CDF7E8]);
    if (v1 <= 0x3F)
    {
      sub_213E65388(319, &qword_281183528, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        sub_213E65388(319, &qword_281183510, MEMORY[0x277CDFAA0]);
        if (v3 <= 0x3F)
        {
          sub_213E653DC();
          if (v4 <= 0x3F)
          {
            sub_213E65490(319, &qword_2811822D8, &qword_27C8F8958, &qword_213F58650, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_213E65440(319, &qword_2811827D0, &type metadata for ImageProvidingSpecs, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_213E65490(319, &qword_281182790, &qword_27C8F7C28, &unk_213F522B0, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
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
}

void sub_213E65388(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213F4CEF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_213E653DC()
{
  result = qword_281187B58;
  if (!qword_281187B58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281187B58);
  }

  return result;
}

void sub_213E65440(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_213E65490(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_213E65508(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_213E65550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213E655BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_213E655E8(void *a1)
{
  v3 = *(type metadata accessor for MapsDesignImage() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213E6316C(a1, v4);
}

unint64_t sub_213E65658()
{
  result = qword_281182BB8;
  if (!qword_281182BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9F88, &unk_213F5AA60);
    sub_213E656DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182BB8);
  }

  return result;
}

unint64_t sub_213E656DC()
{
  result = qword_281188800;
  if (!qword_281188800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281188800);
  }

  return result;
}

uint64_t MultiPartLabelViewModel.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MultiPartLabelViewModel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_213DEA6DC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_213DEA6DC(v2, v3);
}

uint64_t MultiPartLabelViewModel.hash(into:)(uint64_t a1)
{
  v3 = sub_213F4CA10();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = *v1;
  v25 = v1[1];
  v11 = *(v10 + 16);
  v27 = a1;
  MEMORY[0x216052C90](v11);
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = *(v26 + 16);
    v14 = v10 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v15 = *(v26 + 72);
    v16 = (v26 + 8);
    do
    {
      v13(v9, v14, v3);
      sub_213E66F54(&qword_27C8F9F90, MEMORY[0x277CC8C40]);
      sub_213F4F1B0();
      (*v16)(v9, v3);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  v17 = v25;
  result = MEMORY[0x216052C90](*(v25 + 16));
  v19 = *(v17 + 16);
  if (v19)
  {
    v20 = *(v26 + 16);
    v21 = v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v22 = *(v26 + 72);
    v23 = (v26 + 8);
    do
    {
      v20(v7, v21, v3);
      sub_213E66F54(&qword_27C8F9F90, MEMORY[0x277CC8C40]);
      sub_213F4F1B0();
      result = (*v23)(v7, v3);
      v21 += v22;
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t MultiPartLabelViewModel.hashValue.getter()
{
  v3 = *v0;
  sub_213F4F880();
  MultiPartLabelViewModel.hash(into:)(v2);
  return sub_213F4F8C0();
}

uint64_t sub_213E65A48()
{
  v3 = *v0;
  sub_213F4F880();
  MultiPartLabelViewModel.hash(into:)(v2);
  return sub_213F4F8C0();
}

uint64_t sub_213E65A98()
{
  v3 = *v0;
  sub_213F4F880();
  MultiPartLabelViewModel.hash(into:)(v2);
  return sub_213F4F8C0();
}

uint64_t sub_213E65AE0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_213DEA6DC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_213DEA6DC(v2, v3);
}

__n128 MultiPartLabel.init(viewModel:font:foregroundColor:isSelected:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 a4@<W3>, __n128 *a5@<X8>)
{
  result = *a1;
  *a5 = *a1;
  a5[1].n128_u64[0] = a2;
  a5[1].n128_u64[1] = a3;
  a5[2].n128_u8[0] = a4;
  return result;
}

void sub_213E65B50(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v31 = MEMORY[0x277D84F90];
  v5 = v3;
  v6 = [a1 length];
  v7 = swift_allocObject();
  *(v7 + 16) = &v31;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_213E66F0C;
  *(v8 + 24) = v7;
  v29 = sub_213E66F14;
  v30 = v8;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v28 = sub_213E660AC;
  *(&v28 + 1) = &block_descriptor_0;
  v9 = _Block_copy(&aBlock);

  [a1 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v9}];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = [a1 length];
  if (v3)
  {
    [a1 addAttribute:*MEMORY[0x277D740C0] value:v5 range:{0, v10}];
  }

  [a1 addAttribute:*MEMORY[0x277D740A8] value:v4 range:{0, v10}];
  v11 = MEMORY[0x277D74118];
  if (*(v31 + 16))
  {
    v12 = *MEMORY[0x277D74118];
    if ([a1 attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:0])
    {
      sub_213F4F6E0();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    aBlock = v25;
    v28 = v26;
    if (*(&v26 + 1))
    {
      sub_213E15130(0, &qword_27C8F9FA0, 0x277D74248);
      if (swift_dynamicCast())
      {
        [v24 mutableCopy];
        sub_213F4F6E0();

        swift_unknownObjectRelease();
        sub_213E15130(0, &qword_27C8F9FA8, 0x277D74240);
        if (swift_dynamicCast())
        {
          v13 = v25;
LABEL_15:
          [v13 setLineSpacing_];

          [a1 addAttribute:v12 value:v13 range:{0, v10}];
          v23 = v13;

          v15 = v31;
          v16 = *(v31 + 16);

          if (!v16)
          {
LABEL_19:

            return;
          }

          v17 = 0;
          v18 = (v15 + 48);
          while (v17 < *(v15 + 16))
          {
            ++v17;
            v20 = *(v18 - 1);
            v19 = *v18;
            v21 = *(v18 - 2);
            type metadata accessor for Key(0);
            sub_213E66F54(&qword_2811823C8, type metadata accessor for Key);

            v22 = sub_213F4F190();
            [a1 addAttributes:v22 range:{v20, v19}];

            v18 += 3;
            if (v16 == v17)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }

    else
    {
      sub_213E66F9C(&aBlock);
    }
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  if (v14)
  {
    v13 = v14;
    v12 = *v11;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_213E65FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;

  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v9;
  if ((result & 1) == 0)
  {
    result = sub_213F1E2B0(0, v9[2] + 1, 1, v9);
    v9 = result;
    *a5 = result;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    result = sub_213F1E2B0((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
    *a5 = result;
  }

  v9[2] = v12 + 1;
  v13 = &v9[3 * v12];
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  return result;
}

uint64_t sub_213E660AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  type metadata accessor for Key(0);
  sub_213E66F54(&qword_2811823C8, type metadata accessor for Key);
  v10 = sub_213F4F1A0();
  v9(v10, a3, a4, a5);
}

uint64_t sub_213E6617C()
{
  v1 = sub_213F4CA10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - v7;
  v9 = *v0;
  v10 = *v0;
  v11 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = *(v0 + 2);
    v24 = *(v0 + 3);
    v25 = v13;
    v23 = *(v0 + 32);
    v31 = MEMORY[0x277D84F90];
    v22 = v9;
    sub_213F4F780();
    v14 = sub_213E15130(0, &qword_281182398, 0x277CCAB48);
    v15 = v2 + 16;
    v16 = *(v2 + 16);
    v17 = v10 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v21[0] = *(v15 + 56);
    v21[1] = v14;
    v26 = v15;
    v18 = (v15 - 8);
    do
    {
      v16(v8, v17, v1);
      v16(v6, v8, v1);
      v19 = sub_213F4F5A0();
      v27 = v22;
      v28 = v25;
      v29 = v24;
      v30 = v23;
      sub_213E65B50(v19);
      [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

      (*v18)(v8, v1);
      sub_213F4F760();
      v20 = *(v31 + 16);
      sub_213F4F790();
      sub_213F4F7A0();
      sub_213F4F770();
      v17 += v21[0];
      --v11;
    }

    while (v11);
    return v31;
  }

  return result;
}

uint64_t sub_213E663B0()
{
  v1 = sub_213F4CA10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - v7;
  v9 = *(v0 + 1);
  v10 = v0[1];
  v11 = *(v10 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = *v0;
    v24 = v0[3];
    v25 = v13;
    v23 = *(v0 + 32);
    v31 = MEMORY[0x277D84F90];
    v22 = v9;
    sub_213F4F780();
    v14 = sub_213E15130(0, &qword_281182398, 0x277CCAB48);
    v15 = v2 + 16;
    v16 = *(v2 + 16);
    v17 = v10 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v21[0] = *(v15 + 56);
    v21[1] = v14;
    v26 = v15;
    v18 = (v15 - 8);
    do
    {
      v16(v8, v17, v1);
      v16(v6, v8, v1);
      v19 = sub_213F4F5A0();
      v27 = v25;
      v28 = v22;
      v29 = v24;
      v30 = v23;
      sub_213E65B50(v19);
      [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

      (*v18)(v8, v1);
      sub_213F4F760();
      v20 = *(v31 + 16);
      sub_213F4F790();
      sub_213F4F7A0();
      sub_213F4F770();
      v17 += v21[0];
      --v11;
    }

    while (v11);
    return v31;
  }

  return result;
}

id sub_213E665EC()
{
  v1 = sub_213F4CA10();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[1];
  v7 = v0[2];
  v8 = v0[3];
  v9 = *(v0 + 32);
  v35 = *v0;
  v5 = v35;
  v36 = v6;
  v37 = v7;
  v38 = v8;
  v39 = v9;
  v10 = sub_213E6617C();
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v38 = v8;
  v39 = v9;
  v11 = sub_213E663B0();
  sub_213E15130(0, &qword_281182398, 0x277CCAB48);
  sub_213F4C9A0();
  v28[1] = v4;
  v12 = sub_213F4F5A0();
  if (v10 >> 62)
  {
    goto LABEL_42;
  }

  v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v13)
  {
    if (v10 < 0)
    {
      v14 = v10;
    }

    else
    {
      v14 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = v11 & 0xFFFFFFFFFFFFFF8;
    v33 = v11 & 0xFFFFFFFFFFFFFF8;
    v34 = v10 & 0xC000000000000001;
    if (v11 < 0)
    {
      v15 = v11;
    }

    v28[0] = v15;
    v29 = v11 + 32;
    v30 = v11 & 0xC000000000000001;
    v16 = 4;
    v31 = v11 >> 62;
    v32 = v14;
    while (1)
    {
      v20 = v16 - 4;
      if (v34)
      {
        v21 = MEMORY[0x216052B30](v16 - 4, v10);
      }

      else
      {
        if (v20 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v21 = *(v10 + 8 * v16);
      }

      v19 = v21;
      v22 = v16 - 3;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        v13 = sub_213F4F7E0();
        goto LABEL_3;
      }

      [v12 appendAttributedString_];
      if (v10 >> 62)
      {
        v23 = sub_213F4F7E0();
      }

      else
      {
        v23 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v23, 1))
      {
        goto LABEL_39;
      }

      if (v20 < v23 - 1)
      {
        break;
      }

LABEL_12:

      ++v16;
      if (v22 == v13)
      {
        goto LABEL_36;
      }
    }

    if (v31)
    {
      v24 = sub_213F4F7E0();
      if (v20 < v24)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24 = *(v33 + 16);
      if (v20 < v24)
      {
LABEL_24:
        if (!v30)
        {
          if (v20 >= *(v33 + 16))
          {
            goto LABEL_40;
          }

          v17 = *(v11 + 8 * v16);
          goto LABEL_11;
        }

        v25 = v16 - 4;
        goto LABEL_35;
      }
    }

    if (v24 <= 0)
    {
      v28[2] = sub_213E15130(0, &qword_2811823E0, 0x277CCA898);
      sub_213F4C9A0();
      v17 = sub_213F4F5A0();
LABEL_11:
      v18 = v17;
      [v12 appendAttributedString_];

      v19 = v18;
      goto LABEL_12;
    }

    if (!v30)
    {
      if (v24 > *(v33 + 16))
      {
        goto LABEL_41;
      }

      v17 = *(v29 + 8 * (v24 - 1));
      goto LABEL_11;
    }

    v25 = v24 - 1;
LABEL_35:
    v17 = MEMORY[0x216052B30](v25, v11);
    goto LABEL_11;
  }

LABEL_36:

  swift_bridgeObjectRelease_n();
  v26 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

  return v26;
}