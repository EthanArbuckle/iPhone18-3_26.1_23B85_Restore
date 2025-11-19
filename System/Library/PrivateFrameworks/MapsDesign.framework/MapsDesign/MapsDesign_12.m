uint64_t sub_213F109B0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_213F10A6C(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
    sub_213F4CB70();
  }

  return result;
}

void (*sub_213F10B88(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DDE118();
  return sub_213F10CC0;
}

uint64_t sub_213F10D1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_213F10DDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_213F10EC0(v4);
}

uint64_t sub_213F10E08()
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_213F10EC0(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
    sub_213F4CB70();
  }
}

uint64_t sub_213F10FE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
}

void (*sub_213F11050(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F10CCC();
  return sub_213F11188;
}

uint64_t sub_213F11194@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_213F11254(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_213F11338(v4);
}

uint64_t sub_213F11280()
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_213F11338(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 32) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
    sub_213F4CB70();
  }
}

uint64_t sub_213F11460(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  *(a1 + 32) = a2;
}

void (*sub_213F114C8(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DE6004();
  return sub_213F11600;
}

uint64_t sub_213F1165C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_213F1171C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_213F11800(v4);
}

uint64_t sub_213F11748()
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t sub_213F11800(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 40) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
    sub_213F4CB70();
  }
}

uint64_t sub_213F11928(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 40);
  *(a1 + 40) = a2;
}

void (*sub_213F11990(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F1160C();
  return sub_213F11AC8;
}

uint64_t sub_213F11AD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_213F11BB8()
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return *(v0 + 48);
}

uint64_t sub_213F11C6C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 48) == v2)
  {
    *(v1 + 48) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
    sub_213F4CB70();
  }

  return result;
}

void (*sub_213F11D90(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DDEB98();
  return sub_213F11EC8;
}

uint64_t sub_213F11F24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_213F12008()
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return *(v0 + 49);
}

uint64_t sub_213F120BC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 49) == v2)
  {
    *(v1 + 49) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
    sub_213F4CB70();
  }

  return result;
}

void (*sub_213F121E0(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F11ED4();
  return sub_213F12318;
}

double sub_213F12324@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  result = *(v3 + 56);
  *a2 = result;
  return result;
}

double sub_213F12408()
{
  swift_getKeyPath();
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t sub_213F124BC(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 56) == a1)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
    sub_213F4CB70();
  }

  return result;
}

void (*sub_213F125E8(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DE6958();
  return sub_213F12720;
}

uint64_t NavigationTray.MetricsViewModel.init(state:eta:time:distance:disableAnimations:navigationTrayHasAccessories:expansionProgress:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, double a7)
{
  v14 = *a1;
  sub_213F4CBB0();
  *(v7 + 16) = v14;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 49) = a6;
  *(v7 + 56) = a7;
  return v7;
}

uint64_t sub_213F12844()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t keypath_set_28Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_213F12920()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 49) = v2;
  return result;
}

uint64_t sub_213F12974()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

char *NavigationTray.MetricsViewModel.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  v5 = sub_213F4CBC0();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t sub_213F12A40@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_213F12C40@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for NavigationTray.Metrics(0);
  sub_213DE3164(v1 + *(v12 + 20), v11, &qword_27C8F7AC0, &qword_213F52760);
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

double sub_213F12E48()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_213F12A40(&v18 - v9);
  sub_213F4D280();
  v11 = sub_213F4D270();
  v12 = *(v1 + 8);
  v12(v8, v0);
  v12(v10, v0);
  if (v11)
  {
    v13 = 10.0;
  }

  else
  {
    v13 = 20.0;
  }

  sub_213F12A40(v8);
  sub_213F4D280();
  sub_213F4D270();
  v12(v5, v0);
  v12(v8, v0);
  v14 = *(type metadata accessor for NavigationTray.Metrics(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC220, &qword_213F631C0);
  sub_213F4ED40();
  v15 = v19;
  swift_getKeyPath();
  v19 = v15;
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v16 = *(v15 + 56);

  return v13 + (12.0 - v13) * v16;
}

uint64_t sub_213F130B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v45 = sub_213F4DF50();
  v43 = *(v45 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_213F4D290();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  v14 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v16 = &v37 - v15;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC298, &unk_213F634D0);
  v17 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2B0, &qword_213F634E8);
  v39 = *(v20 - 8);
  v40 = v20;
  v21 = *(v39 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v37 - v22;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC288, &qword_213F634C8);
  v24 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v26 = &v37 - v25;
  *v19 = sub_213F4DA40();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2B8, &qword_213F634F0);
  sub_213F136D0(a1, v2, &v19[*(v27 + 44)]);
  sub_213F12A40(v13);
  sub_213F4D280();
  LOBYTE(a1) = sub_213F4D270();
  v28 = *(v7 + 8);
  v28(v11, v6);
  v28(v13, v6);
  v29 = sub_213F4D390();
  v30 = *(*(v29 - 8) + 104);
  if (a1)
  {
    v30(v16, *MEMORY[0x277CDF9D8], v29);
    sub_213DBBCC0(&qword_281183488, MEMORY[0x277CDFA28]);
    if (sub_213F4F1F0())
    {
LABEL_5:
      sub_213DE3AE4(&qword_27C8FC2A0, &qword_27C8FC298, &unk_213F634D0);
      sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
      sub_213F4E570();
      sub_213DE36FC(v16, &qword_27C8F75C0, &qword_213F54760);
      sub_213DE36FC(v19, &qword_27C8FC298, &unk_213F634D0);
      sub_213F4EEE0();
      sub_213F4D4E0();
      (*(v39 + 32))(v26, v23, v40);
      v32 = v42;
      v33 = &v26[*(v41 + 36)];
      v34 = v51;
      *(v33 + 4) = v50;
      *(v33 + 5) = v34;
      *(v33 + 6) = v52;
      v35 = v47;
      *v33 = v46;
      *(v33 + 1) = v35;
      v36 = v49;
      *(v33 + 2) = v48;
      *(v33 + 3) = v36;
      sub_213F4DF30();
      sub_213F1674C();
      sub_213F4E640();
      (*(v43 + 8))(v32, v45);
      return sub_213DE36FC(v26, &qword_27C8FC288, &qword_213F634C8);
    }

    __break(1u);
  }

  v30(v16, *MEMORY[0x277CDF9F0], v29);
  sub_213DBBCC0(&qword_281183488, MEMORY[0x277CDFA28]);
  result = sub_213F4F1F0();
  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_213F136D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v166 = a3;
  v165 = sub_213F4D3B0();
  v164 = *(v165 - 8);
  v5 = *(v164 + 64);
  MEMORY[0x28223BE20](v165);
  v163 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  v7 = *(*(v157 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v157);
  v156 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v155 = &v131 - v10;
  v11 = type metadata accessor for NavigationTray.Metrics(0);
  v12 = *(v11 - 8);
  v144 = v11 - 8;
  v150 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v151 = v14;
  v152 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B58, &unk_213F52120);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v158 = &v131 - v17;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2C0, &unk_213F634F8);
  v18 = *(*(v160 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v160);
  v162 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v159 = &v131 - v22;
  MEMORY[0x28223BE20](v21);
  v161 = &v131 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v138 = &v131 - v26;
  v137 = sub_213F4E230();
  v136 = *(v137 - 8);
  v27 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v29 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_213F4D290();
  v30 = *(v135 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v135);
  v34 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v131 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2C8, &qword_213F63508);
  v38 = *(v37 - 8);
  v139 = v37 - 8;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v41 = &v131 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2D0, &qword_213F63510);
  v43 = *(v42 - 8);
  v141 = v42 - 8;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v140 = &v131 - v45;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2D8, &qword_213F63518);
  v46 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v167 = &v131 - v47;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2E0, &qword_213F63520);
  v48 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v149 = &v131 - v49;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2E8, &qword_213F63528);
  v50 = *(*(v146 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v146);
  v153 = &v131 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v148 = &v131 - v54;
  MEMORY[0x28223BE20](v53);
  v168 = &v131 - v55;
  swift_getKeyPath();
  v56 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection___observationRegistrar;
  v176 = a1;
  v57 = sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection);
  v143 = v56;
  v142 = v57;
  sub_213F4CB80();

  v154 = a1;
  v58 = (a1 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__value);
  swift_beginAccess();
  v59 = v58[1];
  v134 = *v58;
  KeyPath = swift_getKeyPath();
  v132 = swift_getKeyPath();
  v178 = 0;
  v177 = 0;

  sub_213F12A40(v36);
  sub_213F4D280();
  LOBYTE(v56) = sub_213F4D270();
  v60 = *(v30 + 8);
  v61 = v34;
  v62 = v135;
  v60(v61, v135);
  v60(v36, v62);
  v63 = v136;
  v64 = MEMORY[0x277CE0A58];
  if ((v56 & 1) == 0)
  {
    v64 = MEMORY[0x277CE0A70];
  }

  v65 = v137;
  (*(v136 + 104))(v29, *v64, v137);
  v66 = sub_213F4E0F0();
  v67 = v138;
  (*(*(v66 - 8) + 56))(v138, 1, 1, v66);
  sub_213F4E180();
  v68 = sub_213F4E1A0();
  sub_213DE36FC(v67, &qword_27C8F7668, &qword_213F52190);
  (*(v63 + 8))(v29, v65);
  v69 = swift_getKeyPath();
  v70 = sub_213F4DD90();
  v71 = v144;
  v72 = (a2 + *(v144 + 36));
  v73 = *v72;
  v74 = *(v72 + 1);
  LODWORD(v137) = v73;
  LOBYTE(v174) = v73;
  v138 = v74;
  v175 = v74;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v173)
  {
    v75 = 0.0;
  }

  else
  {
    v75 = 1.0;
  }

  v76 = &v41[*(v139 + 44)];
  v77 = v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F28, &qword_213F61E10) + 28);
  sub_213F4D540();
  *v76 = swift_getKeyPath();
  *v41 = v134;
  *(v41 + 1) = v59;
  v41[16] = 0;
  v78 = KeyPath;
  *(v41 + 3) = MEMORY[0x277D84F90];
  *(v41 + 4) = v78;
  *(v41 + 5) = 1;
  v41[48] = 0;
  *(v41 + 7) = v132;
  v41[64] = 1;
  *(v41 + 9) = v69;
  *(v41 + 10) = v68;
  *(v41 + 22) = v70;
  *(v41 + 12) = v75;
  v79 = v140;
  sub_213DE2B44(v41, v140, &qword_27C8FC2C8, &qword_213F63508);
  v80 = v79;
  *(v79 + *(v141 + 44)) = 257;
  v81 = *(v71 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC220, &qword_213F631C0);
  v82 = a2;
  sub_213F4ED40();
  v83 = v174;
  swift_getKeyPath();
  v174 = v83;
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  LOBYTE(v79) = *(v83 + 48);

  v84 = 0;
  if ((v79 & 1) == 0)
  {
    v84 = sub_213F4EF70();
  }

  swift_getKeyPath();
  v85 = v154;
  v173 = v154;
  sub_213F4CB80();

  v87 = *v58;
  v86 = v58[1];
  v88 = v167;
  sub_213DE2B44(v80, v167, &qword_27C8FC2D0, &qword_213F63510);
  v89 = (v88 + *(v145 + 36));
  *v89 = v84;
  v89[1] = v87;
  v89[2] = v86;

  v90 = v82;
  sub_213F4ED40();
  v91 = v173;
  swift_getKeyPath();
  v173 = v91;
  sub_213F4CB80();

  swift_beginAccess();
  LOBYTE(v87) = *(v91 + 48);

  v92 = 0;
  if ((v87 & 1) == 0)
  {
    v92 = sub_213F4EF70();
  }

  LOBYTE(v171) = v137;
  *(&v171 + 1) = v138;
  sub_213F4EAA0();
  v93 = v169;
  v94 = v149;
  sub_213DE2B44(v167, v149, &qword_27C8FC2D8, &qword_213F63518);
  v95 = v94 + *(v147 + 36);
  *v95 = v92;
  *(v95 + 8) = v93;
  v96 = sub_213F4EEE0();
  v98 = v97;
  v99 = v148;
  v100 = &v148[*(v146 + 36)];
  sub_213F147EC(v90, v100);
  v101 = (v100 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2F0, &qword_213F635F8) + 36));
  *v101 = v96;
  v101[1] = v98;
  sub_213DE2B44(v94, v99, &qword_27C8FC2E0, &qword_213F63520);
  sub_213DE2B44(v99, v168, &qword_27C8FC2E8, &qword_213F63528);
  v102 = v158;
  sub_213F12C40(v158);
  v103 = v164;
  v104 = v165;
  (*(v164 + 56))(v102, 0, 1, v165);
  v105 = v152;
  sub_213DBCA60(v90, v152);
  v106 = (*(v150 + 80) + 24) & ~*(v150 + 80);
  v107 = swift_allocObject();
  *(v107 + 16) = v85;
  v167 = v107;
  sub_213DBCAC4(v105, v107 + v106);
  v108 = v160;
  v109 = v159;
  v110 = &v159[*(v160 + 56)];
  v169 = 0;
  v170 = 0;
  type metadata accessor for CGSize(0);

  sub_213F4EA90();
  v111 = v172;
  *v110 = v171;
  *(v110 + 2) = v111;
  v112 = &v109[v108[15]];
  LOBYTE(v169) = 0;
  sub_213F4EA90();
  v113 = *(&v171 + 1);
  *v112 = v171;
  *(v112 + 1) = v113;
  v114 = v108[16];
  v115 = sub_213F4CB00();
  v116 = v155;
  (*(*(v115 - 8) + 56))(v155, 1, 1, v115);
  sub_213DE3164(v116, v156, &qword_27C8F7B50, &qword_213F653D0);
  sub_213F4EA90();
  sub_213DE36FC(v116, &qword_27C8F7B50, &qword_213F653D0);
  v117 = &v109[v108[17]];
  *v117 = swift_getKeyPath();
  *(v117 + 1) = 0;
  *(v117 + 8) = 0;
  v118 = v108[18];
  *&v109[v118] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v119 = &v109[v108[19]];
  *v119 = sub_213F47E1C;
  *(v119 + 1) = 0;
  v119[16] = 0;
  *v109 = xmmword_213F51DD0;
  *(v109 + 1) = xmmword_213F62F20;
  v120 = *(v103 + 48);
  if (v120(v102, 1, v104) == 1)
  {
    v121 = v163;
    (*(v103 + 104))(v163, *MEMORY[0x277CDFA88], v104);
    if (v120(v102, 1, v104) != 1)
    {
      sub_213DE36FC(v102, &qword_27C8F7B58, &unk_213F52120);
    }
  }

  else
  {
    v121 = v163;
    (*(v103 + 32))(v163, v102, v104);
  }

  (*(v103 + 32))(&v109[v108[12]], v121, v104);
  v122 = &v109[v108[13]];
  v123 = v167;
  *v122 = sub_213F168A8;
  v122[1] = v123;
  v124 = v161;
  sub_213DE2B44(v109, v161, &qword_27C8FC2C0, &unk_213F634F8);
  v125 = v168;
  v126 = v153;
  sub_213DE3164(v168, v153, &qword_27C8FC2E8, &qword_213F63528);
  v127 = v162;
  sub_213DE3164(v124, v162, &qword_27C8FC2C0, &unk_213F634F8);
  v128 = v166;
  sub_213DE3164(v126, v166, &qword_27C8FC2E8, &qword_213F63528);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2F8, &qword_213F63628);
  sub_213DE3164(v127, v128 + *(v129 + 48), &qword_27C8FC2C0, &unk_213F634F8);
  sub_213DE36FC(v124, &qword_27C8FC2C0, &unk_213F634F8);
  sub_213DE36FC(v125, &qword_27C8FC2E8, &qword_213F63528);
  sub_213DE36FC(v127, &qword_27C8FC2C0, &unk_213F634F8);
  return sub_213DE36FC(v126, &qword_27C8FC2E8, &qword_213F63528);
}

uint64_t sub_213F147EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC330, &qword_213F63648);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC338, &qword_213F63650);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC340, &qword_213F63658);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v18 = *(sub_213F4D470() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_213F4D950();
  (*(*(v20 - 8) + 104))(&v7[v18], v19, v20);
  __asm { FMOV            V0.2D, #8.0 }

  *v7 = _Q0;
  *&v7[*(v4 + 44)] = sub_213F4DDA0();
  sub_213F4EEE0();
  sub_213F4D4E0();
  sub_213DE2B44(v7, v12, &qword_27C8FC330, &qword_213F63648);
  v26 = &v12[*(v9 + 44)];
  v27 = v54;
  *(v26 + 4) = v53;
  *(v26 + 5) = v27;
  *(v26 + 6) = v55;
  v28 = v50;
  *v26 = v49;
  *(v26 + 1) = v28;
  v29 = v52;
  *(v26 + 2) = v51;
  *(v26 + 3) = v29;
  LOBYTE(v19) = sub_213F4E0B0();
  sub_213F4CDA0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_213DE2B44(v12, v17, &qword_27C8FC338, &qword_213F63650);
  v38 = &v17[*(v14 + 44)];
  *v38 = v19;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = (v45 + *(type metadata accessor for NavigationTray.Metrics(0) + 28));
  v40 = *v39;
  v41 = *(v39 + 1);
  v47 = v40;
  v48 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v46)
  {
    v42 = 1.0;
  }

  else
  {
    v42 = 0.0;
  }

  sub_213DE2B44(v17, a2, &qword_27C8FC340, &qword_213F63658);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC348, &qword_213F63660);
  *(a2 + *(result + 36)) = v42;
  return result;
}

uint64_t sub_213F14B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42[1] = a2;
  v51 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v42 - v6;
  v48 = sub_213F4E230();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v48);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_213F4D290();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v42 - v18;
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection___observationRegistrar;
  *&v58[0] = a1;
  v21 = sub_213DBBCC0(&qword_281187898, type metadata accessor for NavigationTray.MetricSection);
  v49 = v20;
  v47 = v21;
  sub_213F4CB80();

  v22 = (a1 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unit);
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  *&v58[0] = v23;
  *(&v58[0] + 1) = v24;
  v25 = sub_213DBC9EC();

  v50 = v25;
  v46 = sub_213F4E310();
  v45 = v26;
  v43 = v27;
  v44 = v28;
  sub_213F12A40(v19);
  sub_213F4D280();
  LOBYTE(v24) = sub_213F4D270();
  v29 = *(v13 + 8);
  v29(v17, v12);
  v29(v19, v12);
  v30 = *(v8 + 104);
  if (v24)
  {
    v31 = v48;
    v30(v11, *MEMORY[0x277CE0AA8], v48);
    v32 = sub_213F4E0F0();
    (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
    sub_213F4E160();
  }

  else
  {
    v31 = v48;
    v30(v11, *MEMORY[0x277CE0A68], v48);
    v33 = sub_213F4E0F0();
    (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
    sub_213F4E180();
  }

  v34 = sub_213F4E1A0();
  sub_213DE36FC(v7, &qword_27C8F7668, &qword_213F52190);
  (*(v8 + 8))(v11, v31);
  KeyPath = swift_getKeyPath();
  v36 = [objc_opt_self() secondaryLabelColor];
  v37 = sub_213F4E870();
  v38 = swift_getKeyPath();
  v61 = v43 & 1;
  v60 = 0;
  *&v54 = v46;
  *(&v54 + 1) = v45;
  LOBYTE(v55) = v43 & 1;
  *(&v55 + 1) = v44;
  *&v56 = KeyPath;
  *(&v56 + 1) = v34;
  *v57 = v37;
  *&v57[8] = v38;
  *&v57[16] = 1;
  v57[24] = 0;
  swift_getKeyPath();
  *&v58[0] = a1;
  sub_213F4CB80();

  v39 = (a1 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unitAccessibilityLabel);
  swift_beginAccess();
  v40 = v39[1];
  v52 = *v39;
  v53 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC300, &qword_213F63630);
  sub_213F1691C();
  sub_213F4E5C0();
  v58[1] = v55;
  v58[2] = v56;
  *v59 = *v57;
  *&v59[9] = *&v57[9];
  v58[0] = v54;
  return sub_213DE36FC(v58, &qword_27C8FC300, &qword_213F63630);
}

uint64_t sub_213F15108@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC278, &qword_213F634B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC280, &qword_213F634C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v50 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v49 = v41 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v48 = v41 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = v41 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v52 = v41 - v17;
  MEMORY[0x28223BE20](v16);
  v46 = v41 - v18;
  v45 = *(type metadata accessor for NavigationTray.Metrics(0) + 24);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC220, &qword_213F631C0);
  sub_213F4ED40();
  v19 = v59;
  swift_getKeyPath();
  v59 = v19;
  v43 = sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v20 = *(v19 + 24);

  sub_213F130B0(v20, v5);

  v57 = 4281413;
  v58 = 0xE300000000000000;
  MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC288, &qword_213F634C8);
  v22 = sub_213F1674C();
  v57 = v21;
  v58 = v22;
  v23 = v1;
  v41[1] = swift_getOpaqueTypeConformance2();
  sub_213F4E6D0();

  v24 = *(v2 + 8);
  v41[2] = v2 + 8;
  v42 = v24;
  v24(v5, v1);
  sub_213F4ED40();
  v25 = v57;
  swift_getKeyPath();
  v57 = v25;
  sub_213F4CB80();

  swift_beginAccess();
  v26 = *(v25 + 32);

  sub_213F130B0(v26, v5);

  v55 = 1701669204;
  v56 = 0xE400000000000000;
  MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
  sub_213F4E6D0();

  v27 = v42;
  v42(v5, v1);
  sub_213F4ED40();
  v28 = v55;
  swift_getKeyPath();
  v55 = v28;
  sub_213F4CB80();

  swift_beginAccess();
  v29 = *(v28 + 40);

  sub_213F130B0(v29, v5);

  v53 = 0x65636E6174736944;
  v54 = 0xE800000000000000;
  MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
  v30 = v47;
  sub_213F4E6D0();

  v27(v5, v23);
  v31 = v46;
  v32 = v48;
  sub_213DD3F28(v46, v48);
  v33 = v52;
  v34 = v49;
  sub_213DD3F28(v52, v49);
  v35 = v50;
  sub_213DD3F28(v30, v50);
  v36 = v32;
  v37 = v32;
  v38 = v51;
  sub_213DD3F28(v36, v51);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC2A8, &qword_213F634E0);
  sub_213DD3F28(v34, v38 + *(v39 + 48));
  sub_213DD3F28(v35, v38 + *(v39 + 64));
  sub_213DE36FC(v30, &qword_27C8FC280, &qword_213F634C0);
  sub_213DE36FC(v33, &qword_27C8FC280, &qword_213F634C0);
  sub_213DE36FC(v31, &qword_27C8FC280, &qword_213F634C0);
  sub_213DE36FC(v35, &qword_27C8FC280, &qword_213F634C0);
  sub_213DE36FC(v34, &qword_27C8FC280, &qword_213F634C0);
  return sub_213DE36FC(v37, &qword_27C8FC280, &qword_213F634C0);
}

uint64_t sub_213F15784(uint64_t a1, char *a2)
{
  v2 = *a2;
  sub_213F4EF70();
  sub_213F4D210();
}

uint64_t sub_213F15804(uint64_t a1, char *a2)
{
  v4 = *(*(type metadata accessor for NavigationTray.Metrics(0) - 8) + 80);

  return sub_213F15784(a1, a2);
}

uint64_t sub_213F158B4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213F15938()
{
  result = qword_27C8FC238;
  if (!qword_27C8FC238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC1F8, &qword_213F63190);
    sub_213F159C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC238);
  }

  return result;
}

unint64_t sub_213F159C4()
{
  result = qword_27C8FC240;
  if (!qword_27C8FC240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC1F0, &qword_213F63188);
    sub_213DE3AE4(&qword_27C8FC248, &qword_27C8FC250, &qword_213F631C8);
    sub_213F15A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC240);
  }

  return result;
}

unint64_t sub_213F15A7C()
{
  result = qword_281186930;
  if (!qword_281186930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281186930);
  }

  return result;
}

uint64_t sub_213F15B38(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for NavigationTray.Metrics(0) + 28));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213F15BCC()
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

uint64_t sub_213F15EA8()
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

void sub_213F16354()
{
  sub_213F16504(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213F16504(319, &qword_281183510, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_213F16504(319, &qword_2811825E8, type metadata accessor for NavigationTray.MetricsViewModel, MEMORY[0x277CE12F8]);
      if (v2 <= 0x3F)
      {
        sub_213F16C98(319, &qword_2811827B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_213F16C98(319, &qword_2811827A8, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213F16504(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_213F16568()
{
  result = qword_27C8FC260;
  if (!qword_27C8FC260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC258, &qword_213F631D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC208, &qword_213F631A0);
    sub_213F158B4(&qword_27C8FC228, &qword_27C8FC208, &qword_213F631A0, sub_213F15884);
    sub_213DBCB28();
    swift_getOpaqueTypeConformance2();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC260);
  }

  return result;
}

uint64_t sub_213F16678(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_213F166C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_213F1674C()
{
  result = qword_27C8FC290;
  if (!qword_27C8FC290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC288, &qword_213F634C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC298, &unk_213F634D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F75C0, &qword_213F54760);
    sub_213DE3AE4(&qword_27C8FC2A0, &qword_27C8FC298, &unk_213F634D0);
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC290);
  }

  return result;
}

uint64_t sub_213F168A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NavigationTray.Metrics(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_213F14B28(v4, v5, a1);
}

unint64_t sub_213F1691C()
{
  result = qword_27C8FC308;
  if (!qword_27C8FC308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC300, &qword_213F63630);
    sub_213F169D4();
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC308);
  }

  return result;
}

unint64_t sub_213F169D4()
{
  result = qword_27C8FC310;
  if (!qword_27C8FC310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC318, &qword_213F63638);
    sub_213F16A8C();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC310);
  }

  return result;
}

unint64_t sub_213F16A8C()
{
  result = qword_27C8FC320;
  if (!qword_27C8FC320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC328, &qword_213F63640);
    sub_213DFA480();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC320);
  }

  return result;
}

void sub_213F16B44()
{
  sub_213F16504(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213F16C98(319, &qword_281182628, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_213DE22E8();
      if (v2 <= 0x3F)
      {
        sub_213F16C98(319, &qword_2811827B8, MEMORY[0x277CE14E0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_213F16C98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_213F16D2C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_213F0F024(v1[4], a1);
}

unint64_t sub_213F16D38()
{
  result = qword_2811834A0;
  if (!qword_2811834A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811834A0);
  }

  return result;
}

uint64_t objectdestroy_159Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ShimmeringView();
  v4 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = (v0 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_213F4D290();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = (v6 + v3[9]);
  v10 = *v9;

  v11 = v9[1];

  v12 = *(v6 + v3[10] + 8);

  v13 = *(v6 + v3[11] + 16);

  v14 = *(v6 + v3[12] + 16);

  return swift_deallocObject();
}

uint64_t sub_213F16F0C()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_213F0F1C0(v0[4]);
}

uint64_t sub_213F16F2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86B0, &qword_213F5A010);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_213F62F40;
  sub_213F4E8C0();
  *(v0 + 32) = sub_213F4EDB0();
  *(v0 + 40) = v1;
  sub_213F4E8F0();
  sub_213F4E900();

  *(v0 + 48) = sub_213F4EDB0();
  *(v0 + 56) = v2;
  sub_213F4E8F0();
  sub_213F4E900();

  *(v0 + 64) = sub_213F4EDB0();
  *(v0 + 72) = v3;
  sub_213F4E8C0();
  *(v0 + 80) = sub_213F4EDB0();
  *(v0 + 88) = v4;

  return sub_213F4EDC0();
}

uint64_t SharedTripCellViewModel.__allocating_init(state:imageProvider:appIconProvider:title:sharingSubtitle:handleSubtitle:stopSubtitle:trailingLabel:)(char *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v16 = a2[3];
  v15 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v18 = a3[3];
  v19 = a3[4];
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a3, v18);
  v21 = sub_213F1F104(a1, v17, v20, a4, a5, a6, a7, a8, a9, a10, a11, v11, v16, v18, v15, v19);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v21;
}

uint64_t SharedTripCellViewModel.SharedTripState.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t sub_213F17188()
{
  swift_getKeyPath();
  v4 = v0;
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_213F1724C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (sub_213F4F830() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
    sub_213F4CB70();
  }
}

void (*sub_213F173A0(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DDE118();
  return sub_213F174D8;
}

uint64_t sub_213F174E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_213F175A0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_213F17694(&v4);
}

uint64_t sub_213F175D8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_213F17694(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (*(v1 + 32) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
    sub_213F4CB70();
  }

  return result;
}

void (*sub_213F177B0(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DE6004();
  return sub_213F178E8;
}

uint64_t sub_213F178F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return sub_213DEBAA8(v3 + 40, a2);
}

uint64_t sub_213F179D4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return sub_213DEBAA8(v1 + 40, a1);
}

uint64_t sub_213F17AB4(uint64_t a1, uint64_t a2)
{
  sub_213DEBAA8(a2, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((a1 + 40));
  sub_213DD7500(v4, a1 + 40);
  return swift_endAccess();
}

void (*sub_213F17B24(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F1160C();
  return sub_213F17C5C;
}

uint64_t sub_213F17C68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return sub_213DEBAA8(v3 + 80, a2);
}

uint64_t sub_213F17D48(uint64_t a1, uint64_t *a2)
{
  sub_213DEBAA8(a1, v5);
  v3 = *a2;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB70();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_213F17E24@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return sub_213DEBAA8(v1 + 80, a1);
}

uint64_t sub_213F17F04(uint64_t *a1)
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB70();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_213F17FCC(uint64_t a1, uint64_t a2)
{
  sub_213DEBAA8(a2, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((a1 + 80));
  sub_213DD7500(v4, a1 + 80);
  return swift_endAccess();
}

void (*sub_213F1803C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E475F0();
  return sub_213F18174;
}

uint64_t sub_213F181D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 128);
  *a2 = *(v3 + 120);
  a2[1] = v4;
}

uint64_t sub_213F182A8()
{
  swift_getKeyPath();
  v4 = v0;
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v2 = *(v0 + 120);
  v1 = *(v4 + 128);

  return v2;
}

uint64_t sub_213F1836C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120) == a1 && *(v2 + 128) == a2;
  if (v5 || (v6 = *(v2 + 128), (sub_213F4F830() & 1) != 0))
  {
    *(v2 + 120) = a1;
    *(v2 + 128) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
    sub_213F4CB70();
  }
}

uint64_t sub_213F184C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 128);
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
}

void (*sub_213F1852C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F18180();
  return sub_213F18664;
}

uint64_t sub_213F186C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 144);
  *a2 = *(v3 + 136);
  a2[1] = v4;
}

uint64_t sub_213F18798()
{
  swift_getKeyPath();
  v4 = v0;
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v2 = *(v0 + 136);
  v1 = *(v4 + 144);

  return v2;
}

uint64_t sub_213F1885C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 144);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 136) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 144);
      if (sub_213F4F830())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 136) = a1;
    *(v2 + 144) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB70();
}

uint64_t sub_213F189C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 144);
  *(a1 + 136) = a2;
  *(a1 + 144) = a3;
}

void (*sub_213F18A2C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F18670();
  return sub_213F18B64;
}

uint64_t sub_213F18BC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 160);
  *a2 = *(v3 + 152);
  a2[1] = v4;
}

uint64_t sub_213F18C98()
{
  swift_getKeyPath();
  v4 = v0;
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v2 = *(v0 + 152);
  v1 = *(v4 + 160);

  return v2;
}

uint64_t sub_213F18D5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 160);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 152) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 160);
      if (sub_213F4F830())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 152) = a1;
    *(v2 + 160) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB70();
}

uint64_t sub_213F18EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 160);
  *(a1 + 152) = a2;
  *(a1 + 160) = a3;
}

void (*sub_213F18F2C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F18B70();
  return sub_213F19064;
}

uint64_t sub_213F190C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 176);
  *a2 = *(v3 + 168);
  a2[1] = v4;
}

uint64_t keypath_set_16Tm_1(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_213F191E0()
{
  swift_getKeyPath();
  v4 = v0;
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v2 = *(v0 + 168);
  v1 = *(v4 + 176);

  return v2;
}

uint64_t sub_213F192A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 168) == a1 && *(v2 + 176) == a2;
  if (v5 || (v6 = *(v2 + 176), (sub_213F4F830() & 1) != 0))
  {
    *(v2 + 168) = a1;
    *(v2 + 176) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
    sub_213F4CB70();
  }
}

uint64_t sub_213F193F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 176);
  *(a1 + 168) = a2;
  *(a1 + 176) = a3;
}

void (*sub_213F19464(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F19070();
  return sub_213F1959C;
}

uint64_t sub_213F195F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 192);
  *a2 = *(v3 + 184);
  a2[1] = v4;
}

uint64_t keypath_set_21Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_213F19718()
{
  swift_getKeyPath();
  v4 = v0;
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v2 = *(v0 + 184);
  v1 = *(v4 + 192);

  return v2;
}

uint64_t sub_213F197DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 192);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 184) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 192);
      if (sub_213F4F830())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 184) = a1;
    *(v2 + 192) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB70();
}

uint64_t sub_213F19940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 192);
  *(a1 + 184) = a2;
  *(a1 + 192) = a3;
}

void (*sub_213F199AC(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F195A8();
  return sub_213F19AE4;
}

uint64_t SharedTripCellViewModel.init(state:imageProvider:appIconProvider:title:sharingSubtitle:handleSubtitle:stopSubtitle:trailingLabel:)(char *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v33 = a4;
  v36 = a7;
  v37 = a8;
  v34 = a5;
  v35 = a6;
  v30 = a10;
  v31 = a9;
  v15 = a2[3];
  v14 = a2[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = a3[3];
  v22 = a3[4];
  v23 = __swift_mutable_project_boxed_opaque_existential_1(a3, v21);
  v24 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  v28 = sub_213F1ED68(a1, v19, v26, v33, v34, v35, v36, v37, v31, v30, *(&v30 + 1), a11, v32, v15, v21, v14, v22);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v28;
}

void *SharedTripCellViewModel.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  v2 = v0[16];

  v3 = v0[18];

  v4 = v0[20];

  v5 = v0[22];

  v6 = v0[24];

  v7 = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  v8 = sub_213F4CBC0();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t SharedTripCellViewModel.__deallocating_deinit()
{
  SharedTripCellViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_213F19DE0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *(v3 + 16);
  a1[1] = v4;
}

double sub_213F19EAC()
{
  v1 = v0;
  v2 = sub_213F4D290();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v18 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v18 - v11;
  sub_213DBBD08(v18 - v11);
  sub_213F4D280();
  sub_213F1FCB4(&qword_2811834A8, MEMORY[0x277CDF7E8]);
  v13 = sub_213F4F1F0();
  v14 = *(v3 + 8);
  v14(v10, v2);
  v14(v12, v2);
  if (v13)
  {
    goto LABEL_3;
  }

  v15 = *(v1 + *(type metadata accessor for SharedTripCell(0) + 28));
  swift_getKeyPath();
  v18[1] = v15;
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  result = 0.0;
  if (!*(v15 + 192))
  {
LABEL_3:
    sub_213DBBD08(v7);
    sub_213F4D280();
    v17 = sub_213F4D270();
    v14(v12, v2);
    v14(v7, v2);
    result = 16.0;
    if (v17)
    {
      return 10.0;
    }
  }

  return result;
}

double sub_213F1A134()
{
  v97 = sub_213F4D290();
  v96 = *(v97 - 8);
  v1 = *(v96 + 64);
  v2 = MEMORY[0x28223BE20](v97);
  v94 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v99 = &v90 - v4;
  v100 = type metadata accessor for RichTextViewModel(0);
  v5 = *(v100 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v100);
  v91 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v93 = &v90 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v92 = &v90 - v12;
  MEMORY[0x28223BE20](v11);
  v90 = &v90 - v13;
  v14 = sub_213F4CA70();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_213F4CA10();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4C0, &qword_213F5C5B0);
  v23 = *(v5 + 72);
  v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v109 = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_213F55C80;
  v98 = v25;
  v108 = v24;
  v26 = v25 + v24;
  v27 = *(type metadata accessor for SharedTripCell(0) + 28);
  v95 = v0;
  v28 = *(v0 + v27);
  swift_getKeyPath();
  v29 = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  v114 = v28;
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v30 = *(v28 + 120);
  v31 = *(v28 + 128);

  sub_213F4CA60();
  v105 = v17;
  v32 = v100;
  sub_213F4CA20();
  v33 = v19[2];
  v34 = v26 + v32[5];
  v104 = v19 + 2;
  v103 = v33;
  v33(v34, v22, v18);
  sub_213F4CB30();
  v35 = v19[1];
  v102 = v22;
  v106 = v19 + 1;
  v107 = v18;
  v101 = v35;
  v35(v22, v18);
  v37 = v32[7];
  v36 = v32[8];
  *(v26 + v32[6]) = 1;
  v38 = (v26 + v37);
  *v38 = 0;
  v38[1] = 0;
  *(v26 + v36) = 0;
  *(v26 + v32[9]) = 0;
  *(v26 + v32[10]) = 0;
  v39 = v26 + v32[11];
  *v39 = 0;
  *(v39 + 8) = 1;
  *(v26 + v32[12]) = 0;
  swift_getKeyPath();
  v113 = v28;
  sub_213F4CB80();

  swift_beginAccess();
  if (!*(v28 + 32))
  {
    v49 = MEMORY[0x277D84F90];
    v53 = v97;
    v40 = v99;
    goto LABEL_12;
  }

  if (*(v28 + 32) != 1)
  {
    swift_getKeyPath();
    v112 = v28;
    sub_213F4CB80();

    swift_beginAccess();
    v54 = *(v28 + 168);
    v55 = *(v28 + 176);

    v56 = sub_213F4E8A0();
    sub_213F4CA60();
    v57 = v102;
    sub_213F4CA20();
    v44 = v92;
    v58 = v107;
    v103(&v92[v32[5]], v57, v107);
    sub_213F4CB30();
    v101(v57, v58);
    v59 = (v44 + v32[7]);
    v60 = v32[8];
    *(v44 + v32[6]) = 0;
    *v59 = 0;
    v59[1] = 0;
    *(v44 + v60) = v56;
    *(v44 + v32[9]) = 0;
    *(v44 + v32[10]) = 0;
    v61 = v44 + v32[11];
    *v61 = 0;
    *(v61 + 8) = 1;
    *(v44 + v32[12]) = 0;
    v49 = sub_213F1EB8C(0, 1, 1, MEMORY[0x277D84F90], &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
    v51 = v49[2];
    v62 = v49[3];
    v52 = v51 + 1;
    v40 = v99;
    if (v51 >= v62 >> 1)
    {
      v49 = sub_213F1EB8C(v62 > 1, v51 + 1, 1, v49, &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
    }

    v53 = v97;
    goto LABEL_11;
  }

  swift_getKeyPath();
  v112 = v28;
  sub_213F4CB80();

  swift_beginAccess();
  v40 = v99;
  if (*(v28 + 144))
  {
    v41 = *(v28 + 136);
    v42 = *(v28 + 144);

    sub_213F4CA60();
    v43 = v102;
    sub_213F4CA20();
    v44 = v90;
    v45 = v107;
    v103(&v90[v32[5]], v43, v107);
    sub_213F4CB30();
    v101(v43, v45);
    v46 = (v44 + v32[7]);
    v47 = v32[8];
    *(v44 + v32[6]) = 0;
    *v46 = 0;
    v46[1] = 0;
    *(v44 + v47) = 0;
    *(v44 + v32[9]) = 0;
    *(v44 + v32[10]) = 0;
    v48 = v44 + v32[11];
    *v48 = 0;
    *(v48 + 8) = 1;
    *(v44 + v32[12]) = 0;
    v49 = sub_213F1EB8C(0, 1, 1, MEMORY[0x277D84F90], &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
    v51 = v49[2];
    v50 = v49[3];
    v52 = v51 + 1;
    v53 = v97;
    if (v51 >= v50 >> 1)
    {
      v49 = sub_213F1EB8C(v50 > 1, v51 + 1, 1, v49, &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
    }

    v40 = v99;
LABEL_11:
    v49[2] = v52;
    sub_213F2004C(v44, v49 + v108 + v51 * v109, type metadata accessor for RichTextViewModel);
    goto LABEL_12;
  }

  v49 = MEMORY[0x277D84F90];
  v53 = v97;
LABEL_12:
  swift_getKeyPath();
  v111 = v28;
  sub_213F4CB80();

  swift_beginAccess();
  if (*(v28 + 160))
  {
    v97 = v29;
    v63 = v40;
    v64 = *(v28 + 152);

    sub_213F4CA60();
    v65 = v102;
    sub_213F4CA20();
    v66 = v93;
    v67 = v107;
    v103(&v93[v32[5]], v65, v107);
    sub_213F4CB30();
    v101(v65, v67);
    v68 = (v66 + v32[7]);
    v69 = v32[8];
    *(v66 + v32[6]) = 0;
    *v68 = 0;
    v68[1] = 0;
    *(v66 + v69) = 0;
    *(v66 + v32[9]) = 0;
    *(v66 + v32[10]) = 0;
    v70 = v66 + v32[11];
    *v70 = 0;
    *(v70 + 8) = 1;
    *(v66 + v32[12]) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_213F1EB8C(0, v49[2] + 1, 1, v49, &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
    }

    v72 = v49[2];
    v71 = v49[3];
    v40 = v63;
    if (v72 >= v71 >> 1)
    {
      v49 = sub_213F1EB8C(v71 > 1, v72 + 1, 1, v49, &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
    }

    v49[2] = v72 + 1;
    sub_213F2004C(v66, v49 + v108 + v72 * v109, type metadata accessor for RichTextViewModel);
  }

  sub_213DBBD08(v40);
  v73 = v94;
  sub_213F4D280();
  v74 = sub_213F4D270();
  v75 = *(v96 + 8);
  v75(v73, v53);
  v75(v40, v53);
  if (v74)
  {
    swift_getKeyPath();
    v110 = v28;
    sub_213F4CB80();

    swift_beginAccess();
    if (*(v28 + 192))
    {
      v76 = *(v28 + 184);
      v77 = *(v28 + 192);

      v78 = sub_213F4E8E0();
      sub_213F4CA60();
      v79 = v102;
      sub_213F4CA20();
      v80 = v100;
      v81 = v91;
      v82 = v107;
      v103(&v91[*(v100 + 20)], v79, v107);
      sub_213F4CB30();
      v101(v79, v82);
      v83 = (v81 + v80[7]);
      v84 = v80[8];
      *(v81 + v80[6]) = 0;
      *v83 = 0;
      v83[1] = 0;
      *(v81 + v84) = v78;
      *(v81 + v80[9]) = 0;
      *(v81 + v80[10]) = 0;
      v85 = v81 + v80[11];
      *v85 = 0;
      *(v85 + 8) = 1;
      *(v81 + v80[12]) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_213F1EB8C(0, v49[2] + 1, 1, v49, &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
      }

      v87 = v49[2];
      v86 = v49[3];
      if (v87 >= v86 >> 1)
      {
        v49 = sub_213F1EB8C(v86 > 1, v87 + 1, 1, v49, &qword_27C8FA4C0, &qword_213F5C5B0, type metadata accessor for RichTextViewModel);
      }

      v49[2] = v87 + 1;
      sub_213F2004C(v81, v49 + v108 + v87 * v109, type metadata accessor for RichTextViewModel);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC418, &unk_213F63CC8);
  v88 = swift_allocObject();
  *&result = 2;
  *(v88 + 16) = xmmword_213F51DE0;
  *(v88 + 32) = v98;
  *(v88 + 40) = v49;
  return result;
}

uint64_t sub_213F1AEB4()
{
  v27 = sub_213F4CB40();
  v25 = *(v27 - 8);
  v0 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB630, &qword_213F63CC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - v5;
  v26 = &v22 - v5;
  sub_213F1A134();
  v24 = v7;
  v8 = type metadata accessor for BottomAccessoryViewModel(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v6, 1, 1, v8);
  sub_213F4CB30();
  v10 = type metadata accessor for ListCellViewModel(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imageProvider;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  v15 = v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imageOverlayProvider;
  *(v15 + 32) = 0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  v23 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__imagePlaceholder;
  v16 = (v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__title);
  v17 = (v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__query);
  v18 = OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__bottomAccessory;
  v9((v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__bottomAccessory), 1, 1, v8);
  sub_213F4CBB0();
  (*(v25 + 32))(v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__id, v2, v27);
  sub_213DE36FC(v14, &qword_27C8F7AB8, &qword_213F522C0);
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  sub_213DE36FC(v15, &qword_27C8F7AB8, &qword_213F522C0);
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v19 = v24;
  *(v13 + v23) = 0;
  *v16 = 0;
  v16[1] = 0;
  *(v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__richTextViews) = v19;
  *v17 = 0;
  v17[1] = 0;
  v20 = MEMORY[0x277D84F90];
  *(v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__leadingAccessory) = MEMORY[0x277D84F90];
  *(v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__trailingAccessory) = v20;
  *(v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__contextLineAccessory) = v20;
  sub_213DE36FC(v13 + v18, &qword_27C8FB630, &qword_213F63CC0);
  sub_213DE2B44(v26, v13 + v18, &qword_27C8FB630, &qword_213F63CC0);
  *(v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__active) = 1;
  *(v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__isSelected) = 0;
  *(v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__leadingSwipeActions) = v20;
  *(v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__trailingSwipeActions) = v20;
  *(v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__menuActions) = v20;
  *(v13 + OBJC_IVAR____TtC10MapsDesign17ListCellViewModel__allowsFullSwipe) = 1;
  return v13;
}

uint64_t sub_213F1B1EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for SharedTripCell(0);
  v4 = v3 - 8;
  v50 = *(v3 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = v6;
  v52 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_213F4D290();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3A0, &qword_213F63B98);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v43 - v19);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3A8, &qword_213F63BA0);
  v21 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v23 = &v43 - v22;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3B0, &qword_213F63BA8);
  v24 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v49 = &v43 - v25;
  *v20 = sub_213F4EEE0();
  v20[1] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3B8, &qword_213F63BB0);
  sub_213F1B7DC(v2, v20 + *(v27 + 44));
  v28 = v2;
  v29 = *(v2 + *(v4 + 36));
  swift_getKeyPath();
  v30 = OBJC_IVAR____TtC10MapsDesign23SharedTripCellViewModel___observationRegistrar;
  *&v55 = v29;
  v45 = sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  v46 = v30;
  sub_213F4CB80();

  swift_beginAccess();
  if (*(v29 + 32))
  {
    if (*(v29 + 32) == 1)
    {
      v31 = 0x8000000213FA6150;
      v32 = 0xD000000000000010;
    }

    else
    {
      v31 = 0xE700000000000000;
      v32 = 0x676E6972616853;
    }
  }

  else
  {
    v31 = 0xEA0000000000676ELL;
    v32 = 0x6972616853746F4ELL;
  }

  sub_213DE2B44(v20, v23, &qword_27C8FC3A0, &qword_213F63B98);
  v33 = &v23[*(v44 + 36)];
  *v33 = v32;
  *(v33 + 1) = v31;
  v33[16] = 5;
  sub_213DBBD08(v16);
  sub_213F4D280();
  sub_213F4D270();
  v34 = *(v8 + 8);
  v34(v14, v7);
  v34(v16, v7);
  v35 = v47;
  sub_213DBBD08(v47);
  sub_213F4D280();
  sub_213F4D270();
  v34(v14, v7);
  v34(v35, v7);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v36 = v49;
  sub_213DE2B44(v23, v49, &qword_27C8FC3A8, &qword_213F63BA0);
  v37 = (v36 + *(v48 + 36));
  v38 = v56;
  *v37 = v55;
  v37[1] = v38;
  v37[2] = v57;
  swift_getKeyPath();
  v54 = v29;
  sub_213F4CB80();

  LOBYTE(v54) = *(v29 + 32);
  v39 = v52;
  sub_213F1FF84(v28, v52, type metadata accessor for SharedTripCell);
  v40 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v41 = swift_allocObject();
  sub_213F2004C(v39, v41 + v40, type metadata accessor for SharedTripCell);
  sub_213F1FD7C();
  sub_213F1F42C();
  sub_213F4E810();

  return sub_213DE36FC(v36, &qword_27C8FC3B0, &qword_213F63BA8);
}

uint64_t sub_213F1B7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v3 = sub_213F4D290();
  v140 = *(v3 - 8);
  v141 = v3;
  v4 = *(v140 + 8);
  v5 = MEMORY[0x28223BE20](v3);
  v139 = v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v137 = v122 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v130 = (v122 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v138 = v122 - v12;
  MEMORY[0x28223BE20](v11);
  v129 = v122 - v13;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220);
  v14 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v134 = v122 - v15;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3E8, &qword_213F63BD0);
  v16 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v136 = v122 - v17;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3F0, &qword_213F63BD8);
  v18 = *(*(v135 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v135);
  v143 = v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v132 = v122 - v22;
  MEMORY[0x28223BE20](v21);
  v142 = v122 - v23;
  v24 = type metadata accessor for MapsDesignImage();
  v25 = *(*(v24 - 1) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v148 = v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v122 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = v122 - v31;
  v125 = type metadata accessor for SharedTripCell(0);
  v33 = *(v125 + 28);
  v145 = a1;
  v34 = *(a1 + v33);
  swift_getKeyPath();
  *&v158 = v34;
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  sub_213DEBAA8(v34 + 40, &v32[v24[8]]);
  v35 = sub_213F4EEE0();
  KeyPath = v36;
  v147 = v35;
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v37 = v24[5];
  *&v32[v37] = swift_getKeyPath();
  v122[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v38 = v24[6];
  *&v32[v38] = swift_getKeyPath();
  v122[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v39 = v24[7];
  *&v32[v39] = swift_getKeyPath();
  v122[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v40 = &v32[v24[12]];
  v41 = &v32[v24[13]];
  v42 = &v32[v24[14]];
  v149 = 0uLL;
  *(&v150 + 7) = 0;
  *&v150 = 0;
  sub_213F4EA90();
  v43 = v159;
  v44 = BYTE8(v159);
  v45 = BYTE9(v159);
  v46 = BYTE10(v159);
  v47 = v160;
  *v42 = v158;
  *(v42 + 2) = v43;
  v42[24] = v44;
  v42[25] = v45;
  v42[26] = v46;
  *(v42 + 4) = v47;
  v48 = v24[15];
  *&v149 = 0;
  v122[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v32[v48] = v158;
  v32[v24[9]] = 1;
  v49 = &v32[v24[10]];
  v50 = KeyPath;
  *v49 = v147;
  *(v49 + 1) = v50;
  v51 = v24[11];
  v147 = v32;
  v32[v51] = 1;
  *v40 = 0;
  *(v40 + 1) = 0;
  *v41 = 0;
  *(v41 + 1) = 0;
  swift_getKeyPath();
  *&v158 = v34;
  sub_213F4CB80();

  swift_beginAccess();
  v52 = *(v34 + 32);
  sub_213F4CF60();
  v128 = sub_213F4E8B0();
  KeyPath = swift_getKeyPath();
  sub_213F4F040();
  v126 = v54;
  v127 = v53;
  swift_getKeyPath();
  *&v158 = v34;
  sub_213F4CB80();

  if (*(v34 + 32) == 1)
  {
    v55 = *(v145 + *(v125 + 36));
  }

  if (v52)
  {
    v56 = 1.0;
  }

  else
  {
    v56 = 0.0;
  }

  v125 = sub_213F4EF70();
  swift_getKeyPath();
  *&v158 = v34;
  sub_213F4CB80();

  v123 = *(v34 + 32);
  v124 = sub_213F4E050();
  sub_213F4CDA0();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v182 = 0;
  swift_getKeyPath();
  *&v158 = v34;
  sub_213F4CB80();

  swift_beginAccess();
  sub_213DEBAA8(v34 + 80, &v30[v24[8]]);
  v65 = sub_213F4EEE0();
  v67 = v66;
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v68 = v24[5];
  *&v30[v68] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v69 = v24[6];
  *&v30[v69] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v70 = v24[7];
  *&v30[v70] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v71 = &v30[v24[12]];
  v72 = &v30[v24[13]];
  v73 = &v30[v24[14]];
  v149 = 0uLL;
  *(&v150 + 7) = 0;
  *&v150 = 0;
  sub_213F4EA90();
  v74 = v159;
  v75 = BYTE8(v159);
  v76 = BYTE9(v159);
  v77 = BYTE10(v159);
  v78 = v160;
  *v73 = v158;
  *(v73 + 2) = v74;
  v73[24] = v75;
  v73[25] = v76;
  v73[26] = v77;
  *(v73 + 4) = v78;
  v79 = v24[15];
  *&v149 = 0;
  sub_213F4EA90();
  *&v30[v79] = v158;
  v30[v24[9]] = 1;
  v80 = &v30[v24[10]];
  *v80 = v65;
  v80[1] = v67;
  v30[v24[11]] = 1;
  *v71 = 0;
  *(v71 + 1) = 0;
  *v72 = 0;
  *(v72 + 1) = 0;
  v81 = v129;
  sub_213DBBD08(v129);
  v82 = v138;
  sub_213F4D280();
  sub_213F4D270();
  v83 = v141;
  v84 = *(v140 + 1);
  v84(v82, v141);
  v84(v81, v83);
  v85 = v130;
  sub_213DBBD08(v130);
  sub_213F4D280();
  sub_213F4D270();
  v84(v82, v83);
  v84(v85, v83);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v130 = type metadata accessor for MapsDesignImage;
  v86 = v134;
  sub_213F1FF84(v30, v134, type metadata accessor for MapsDesignImage);
  v87 = (v86 + *(v131 + 36));
  v88 = v184;
  *v87 = v183;
  v87[1] = v88;
  v87[2] = v185;
  v140 = type metadata accessor for MapsDesignImage;
  sub_213F1FFEC(v30, type metadata accessor for MapsDesignImage);
  v89 = v137;
  sub_213DBBD08(v137);
  sub_213F4D280();
  LOBYTE(v65) = sub_213F4D270();
  v84(v82, v83);
  v84(v89, v83);
  v90 = 11.0;
  if (v65)
  {
    v91 = 11.0;
  }

  else
  {
    v91 = 14.0;
  }

  v92 = v139;
  sub_213DBBD08(v139);
  sub_213F4D280();
  v93 = sub_213F4D270();
  v84(v82, v83);
  v84(v92, v83);
  if ((v93 & 1) == 0)
  {
    v90 = 14.0;
  }

  v94 = v136;
  sub_213DE2B44(v86, v136, &qword_27C8F7BE8, &unk_213F52220);
  v95 = (v94 + *(v133 + 36));
  *v95 = v91;
  v95[1] = v90;
  sub_213F4E8C0();
  v96 = sub_213F4E900();

  v97 = v94;
  v98 = v132;
  sub_213DE2B44(v97, v132, &qword_27C8FC3E8, &qword_213F63BD0);
  v99 = v98 + *(v135 + 36);
  *v99 = v96;
  *(v99 + 8) = xmmword_213F636F0;
  *(v99 + 24) = 0x3FF0000000000000;
  v100 = v98;
  v101 = v142;
  sub_213DE2B44(v100, v142, &qword_27C8FC3F0, &qword_213F63BD8);
  v102 = v148;
  v103 = v130;
  sub_213F1FF84(v147, v148, v130);
  v104 = v143;
  sub_213DE3164(v101, v143, &qword_27C8FC3F0, &qword_213F63BD8);
  v105 = v144;
  sub_213F1FF84(v102, v144, v103);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3F8, &qword_213F63CA0);
  v107 = (v105 + *(v106 + 48));
  *&v149 = 0;
  *(&v149 + 1) = v56;
  v150 = v179;
  v151 = v180;
  *&v152 = v181;
  *(&v152 + 1) = KeyPath;
  v108 = v128;
  *&v153 = v128;
  *(&v153 + 1) = 0x4012D97C7F3321D2;
  v110 = v126;
  v109 = v127;
  *&v154 = v127;
  *(&v154 + 1) = v126;
  v111 = v125;
  *&v155 = v125;
  v112 = v123;
  v113 = v124;
  BYTE8(v155) = v123;
  *(&v155 + 9) = *v178;
  HIDWORD(v155) = *&v178[3];
  LOBYTE(v156) = v124;
  DWORD1(v156) = *&v177[3];
  *(&v156 + 1) = *v177;
  *(&v156 + 1) = v58;
  *&v157[0] = v60;
  *(&v157[0] + 1) = v62;
  *&v157[1] = v64;
  BYTE8(v157[1]) = 0;
  v114 = v152;
  v107[2] = v180;
  v107[3] = v114;
  v115 = v150;
  *v107 = v149;
  v107[1] = v115;
  v116 = v154;
  v107[4] = v153;
  v107[5] = v116;
  v117 = v155;
  v118 = v156;
  v119 = v157[0];
  *(v107 + 137) = *(v157 + 9);
  v107[7] = v118;
  v107[8] = v119;
  v107[6] = v117;
  sub_213DE3164(v104, v105 + *(v106 + 64), &qword_27C8FC3F0, &qword_213F63BD8);
  sub_213DE3164(&v149, &v158, &qword_27C8FC400, &qword_213F63CA8);
  sub_213DE36FC(v101, &qword_27C8FC3F0, &qword_213F63BD8);
  v120 = v140;
  sub_213F1FFEC(v147, v140);
  sub_213DE36FC(v104, &qword_27C8FC3F0, &qword_213F63BD8);
  *&v158 = 0;
  *(&v158 + 1) = v56;
  v159 = v179;
  v160 = v180;
  v161 = v181;
  v162 = KeyPath;
  v163 = v108;
  v164 = 0x4012D97C7F3321D2;
  v165 = v109;
  v166 = v110;
  v167 = v111;
  v168 = v112;
  *&v169[3] = *&v178[3];
  *v169 = *v178;
  v170 = v113;
  *&v171[3] = *&v177[3];
  *v171 = *v177;
  v172 = v58;
  v173 = v60;
  v174 = v62;
  v175 = v64;
  v176 = 0;
  sub_213DE36FC(&v158, &qword_27C8FC400, &qword_213F63CA8);
  return sub_213F1FFEC(v148, v120);
}

uint64_t sub_213F1C538(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_213F4F0F0();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v37 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = v35 - v9;
  v10 = sub_213F4F0B0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v35[1] = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SharedTripCell(0);
  v35[0] = *(v13 - 8);
  v14 = *(v35[0] + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = *a2;
  v36 = v15;
  v17 = a3;
  v18 = (a3 + *(v15 + 32));
  v20 = *v18;
  v19 = v18[1];
  aBlock = *v18;
  v42 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3D8, &qword_213F63BB8);
  result = sub_213F4EAA0();
  if (v47)
  {
    sub_213F4F110();
    aBlock = v20;
    v42 = v19;
    v47 = 0;

    sub_213F4EAB0();
  }

  if (v16 == 1)
  {
    sub_213F1FF84(a3, v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedTripCell);
    v22 = (*(v35[0] + 80) + 16) & ~*(v35[0] + 80);
    v23 = swift_allocObject();
    sub_213F2004C(v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for SharedTripCell);
    v45 = sub_213F1FEC0;
    v46 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_213F1CB04;
    v44 = &block_descriptor_1;
    _Block_copy(&aBlock);
    v47 = MEMORY[0x277D84F90];
    sub_213F1FCB4(&qword_281182548, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3E0, &unk_213F63BC0);
    sub_213DE3AE4(&qword_2811824A0, &qword_27C8FC3E0, &unk_213F63BC0);
    sub_213F4F6F0();
    v24 = sub_213F4F120();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = sub_213F4F100();

    aBlock = v20;
    v42 = v19;
    v47 = v27;

    sub_213F4EAB0();
    sub_213F1FF38();
    v28 = sub_213F4F580();
    v29 = v37;
    sub_213F4F0E0();
    v30 = *(v17 + *(v36 + 36));
    v31 = v38;
    sub_213F4F130();
    v32 = *(v39 + 8);
    v33 = v29;
    v34 = v40;
    v32(v33, v40);
    sub_213F4F560();

    return (v32)(v31, v34);
  }

  return result;
}

uint64_t sub_213F1C9D4(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for SharedTripCell(0) + 28));
  result = swift_beginAccess();
  if (*(v1 + 32) != 2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
    sub_213F4CB70();
  }

  return result;
}

uint64_t sub_213F1CB04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

double sub_213F1CB48@<D0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v66 = sub_213F4D7F0();
  v64 = *(v66 - 8);
  v2 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v63 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_213F4CEA0();
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = *(v74 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v67 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v65 = &v63 - v9;
  MEMORY[0x28223BE20](v8);
  v73 = &v63 - v10;
  v70 = type metadata accessor for SharedTripCell(0);
  v11 = *(v70 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v70);
  v69 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v63 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC360, &qword_213F63AB0);
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v63 - v22);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC368, &qword_213F63AB8);
  v24 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v72 = &v63 - v25;
  sub_213F1FF84(v1, v18, type metadata accessor for SharedTripCell);
  v26 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v68 = swift_allocObject();
  sub_213F2004C(v18, v68 + v26, type metadata accessor for SharedTripCell);
  sub_213F1FF84(v1, v16, type metadata accessor for SharedTripCell);
  v27 = swift_allocObject();
  sub_213F2004C(v16, v27 + v26, type metadata accessor for SharedTripCell);
  v28 = v69;
  sub_213F1FF84(v1, v69, type metadata accessor for SharedTripCell);
  v29 = swift_allocObject();
  v30 = v29 + v26;
  v31 = v1;
  v32 = v28;
  v33 = v70;
  sub_213F2004C(v32, v30, type metadata accessor for SharedTripCell);
  *v23 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v34 = v23 + v20[31];
  type metadata accessor for CGSize(0);
  v77 = 0;
  v78 = 0;
  sub_213F4EA90();
  v35 = v80;
  *v34 = v79;
  *(v34 + 2) = v35;
  *(v23 + v20[23]) = 1;
  *(v23 + v20[24]) = 0;
  *(v23 + v20[25]) = 0;
  *(v23 + v20[26]) = 1;
  v36 = (v23 + v20[27]);
  v37 = v68;
  *v36 = sub_213F1FBE8;
  v36[1] = v37;
  v38 = (v23 + v20[28]);
  *v38 = sub_213F1FC00;
  v38[1] = v27;
  v39 = (v23 + v20[29]);
  *v39 = sub_213F1FC9C;
  v39[1] = v29;
  v40 = (v23 + v20[30]);
  *v40 = nullsub_1;
  v40[1] = 0;
  v41 = v31 + *(v33 + 24);
  v42 = *v41;
  if (*(v41 + 8) == 1)
  {
    if ((v42 & 1) == 0)
    {
LABEL_3:
      v43 = v31 + *(v33 + 20);
      v44 = v73;
      sub_213EA8894(v73);
      v46 = v74;
      v45 = v75;
      goto LABEL_9;
    }
  }

  else
  {

    sub_213F4F520();
    v47 = sub_213F4E000();
    sub_213F4CC10();

    v48 = v63;
    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213E053BC(v42, 0);
    (*(v64 + 8))(v48, v66);
    if (v79 != 1)
    {
      goto LABEL_3;
    }
  }

  v49 = v31 + *(v33 + 20);
  v50 = v65;
  sub_213EA8894(v65);
  v46 = v74;
  v45 = v75;
  v51 = *(v74 + 104);
  v52 = v67;
  LODWORD(v70) = *MEMORY[0x277CDF3C0];
  v51(v67);
  LOBYTE(v49) = sub_213F4CE90();
  v53 = *(v46 + 8);
  v53(v52, v45);
  v53(v50, v45);
  if (v49)
  {
    v54 = *MEMORY[0x277CDF3D0];
    v44 = v73;
    v55 = v73;
  }

  else
  {
    v44 = v73;
    v55 = v73;
    v54 = v70;
  }

  (v51)(v55, v54, v45);
LABEL_9:
  KeyPath = swift_getKeyPath();
  v57 = v72;
  v58 = &v72[*(v71 + 36)];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B38, &qword_213F60B00);
  (*(v46 + 32))(v58 + *(v59 + 28), v44, v45);
  *v58 = KeyPath;
  sub_213DE2B44(v23, v57, &qword_27C8FC360, &qword_213F63AB0);
  v60 = v76;
  sub_213DE2B44(v57, v76, &qword_27C8FC368, &qword_213F63AB8);
  v61 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC370, &qword_213F63B30) + 36);
  result = 5.43901214e242;
  *v61 = xmmword_213F62470;
  *(v61 + 16) = 2;
  return result;
}

uint64_t sub_213F1D268@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_213F1AEB4();
  v5 = type metadata accessor for MultiTextView(0);
  v6 = (a2 + v5[6]);
  v6[3] = type metadata accessor for ListCellViewModel(0);
  v6[4] = sub_213F1FCB4(&qword_27C8FC408, type metadata accessor for ListCellViewModel);
  *v6 = v4;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v7 = v5[5];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  *(a2 + v5[7]) = 3;
  *(a2 + v5[8]) = 1;
  LOBYTE(v5) = sub_213F4E0A0();
  sub_213F19EAC();
  sub_213F4CDA0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB730, &qword_213F63CB0) + 36);
  *v16 = v5;
  *(v16 + 1) = v9;
  *(v16 + 2) = v11;
  *(v16 + 3) = v13;
  *(v16 + 4) = v15;
  v16[40] = 0;
  v17 = *(a1 + *(type metadata accessor for SharedTripCell(0) + 28));
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  LOBYTE(a1) = *(v17 + 32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC410, &qword_213F63CB8);
  v19 = a2 + *(result + 36);
  *v19 = 0;
  v19[8] = a1;
  return result;
}

uint64_t sub_213F1D4A0@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_213F4D290();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v45 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC388, &qword_213F63B78);
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC390, &unk_213F63B80);
  v15 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v17 = &v45 - v16;
  v47 = v14;
  sub_213F1B1EC(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BA0, &qword_213F5EAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  v19 = sub_213F4E080();
  *(inited + 32) = v19;
  v20 = sub_213F4E0B0();
  *(inited + 33) = v20;
  v21 = sub_213F4E090();
  sub_213F4E090();
  if (sub_213F4E090() != v19)
  {
    v21 = sub_213F4E090();
  }

  sub_213F4E090();
  if (sub_213F4E090() != v20)
  {
    v21 = sub_213F4E090();
  }

  sub_213DBBD08(v10);
  sub_213F4D280();
  sub_213F4D270();
  v22 = *(v2 + 8);
  v22(v8, v1);
  v22(v10, v1);
  sub_213F4CDA0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v48 + 32))(v17, v47, v49);
  v31 = &v17[*(v46 + 36)];
  *v31 = v21;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = sub_213F4E0A0();
  v33 = v50;
  sub_213DBBD08(v50);
  sub_213F4D280();
  sub_213F4D270();
  v22(v8, v1);
  v22(v33, v1);
  sub_213F4CDA0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v51;
  sub_213DE2B44(v17, v51, &qword_27C8FC390, &unk_213F63B80);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC398, &qword_213F63B90);
  v44 = v42 + *(result + 36);
  *v44 = v32;
  *(v44 + 8) = v35;
  *(v44 + 16) = v37;
  *(v44 + 24) = v39;
  *(v44 + 32) = v41;
  *(v44 + 40) = 0;
  return result;
}

uint64_t sub_213F1D8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9228, &unk_213F5A640);
  v3 = *(*(v70 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v70);
  v68 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = &v65 - v6;
  v7 = sub_213F4D390();
  v75 = *(v7 - 8);
  v8 = *(v75 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v76 = (&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = &v65 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9230, &qword_213F57250);
  v13 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v66 = &v65 - v14;
  v77 = type metadata accessor for TrailingAccessory(0);
  v15 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v17 = (&v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC378, &qword_213F63B38);
  v72 = *(v18 - 8);
  v73 = v18;
  v19 = *(v72 + 64);
  MEMORY[0x28223BE20](v18);
  v71 = &v65 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC380, &qword_213F63B40);
  v78 = *(v21 - 8);
  v79 = v21;
  v22 = *(v78 + 64);
  MEMORY[0x28223BE20](v21);
  v69 = &v65 - v23;
  v24 = sub_213F4D290();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v65 - v30;
  sub_213DBBD08(&v65 - v30);
  sub_213F4D280();
  sub_213F1FCB4(&qword_2811834A8, MEMORY[0x277CDF7E8]);
  v32 = sub_213F4F1F0();
  v33 = *(v25 + 8);
  v33(v29, v24);
  v33(v31, v24);
  if (v32)
  {
    goto LABEL_5;
  }

  v34 = *(a1 + *(type metadata accessor for SharedTripCell(0) + 28));
  swift_getKeyPath();
  v81 = v34;
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v35 = *(v34 + 192);
  if (!v35)
  {
LABEL_5:
    v64 = 1;
    v63 = v80;
    return (*(v78 + 56))(v63, v64, 1, v79);
  }

  v36 = *(v34 + 184);
  v37 = v77;
  v38 = v17 + *(v77 + 24);

  sub_213F4CB30();
  v39 = &v38[*(type metadata accessor for TrailingAccessoryViewModel(0) + 20)];
  *v39 = v36;
  *(v39 + 1) = v35;
  *(v39 + 3) = 0;
  *(v39 + 4) = 0;
  *(v39 + 2) = 0;
  v39[40] = 5;
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v40 = *(v37 + 20);
  *(v17 + v40) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v41 = v75;
  v42 = *(v75 + 104);
  v43 = v12;
  v42(v12, *MEMORY[0x277CDF9E8], v7);
  v44 = v76;
  v42(v76, *MEMORY[0x277CDF998], v7);
  sub_213F1FCB4(&qword_281183490, MEMORY[0x277CDFA28]);
  result = sub_213F4F1E0();
  if (result)
  {
    v46 = *(v41 + 32);
    v47 = v67;
    v46(v67, v43, v7);
    v48 = v70;
    v46((v47 + *(v70 + 48)), v44, v7);
    v49 = v68;
    sub_213DE3164(v47, v68, &qword_27C8F9228, &unk_213F5A640);
    v76 = v17;
    v50 = *(v48 + 48);
    v51 = v66;
    v46(v66, v49, v7);
    v52 = *(v41 + 8);
    v52(v49 + v50, v7);
    sub_213DE2B44(v47, v49, &qword_27C8F9228, &unk_213F5A640);
    v53 = *(v48 + 48);
    v54 = v74;
    v46((v51 + *(v74 + 36)), (v49 + v53), v7);
    v52(v49, v7);
    v55 = sub_213F1FCB4(&qword_281185C30, type metadata accessor for TrailingAccessory);
    v56 = sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250);
    v57 = v71;
    v58 = v76;
    v59 = v77;
    sub_213F4E570();
    sub_213DE36FC(v51, &qword_27C8F9230, &qword_213F57250);
    sub_213F1FFEC(v58, type metadata accessor for TrailingAccessory);
    v81 = 0x4154456572616853;
    v82 = 0xE800000000000000;
    MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
    v81 = v59;
    v82 = v54;
    v83 = v55;
    v84 = v56;
    swift_getOpaqueTypeConformance2();
    v60 = v69;
    v61 = v73;
    sub_213F4E6D0();

    (*(v72 + 8))(v57, v61);
    v62 = v80;
    sub_213DE2B44(v60, v80, &qword_27C8FC380, &qword_213F63B40);
    v63 = v62;
    v64 = 0;
    return (*(v78 + 56))(v63, v64, 1, v79);
  }

  __break(1u);
  return result;
}

char *sub_213F1E18C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B60, &qword_213F59FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_213F1E2B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC420, &qword_213F63CD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC428, &qword_213F63CE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_213F1E3F8(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC450, &unk_213F63CF0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA468, &qword_213F5C550) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA468, &qword_213F5C550) - 8);
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

char *sub_213F1E5E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC448, &qword_213F63CE8);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_213F1E6EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC458, &qword_213F63D00);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA358, &qword_213F5C108);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213F1E820(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF78, &qword_213F5E2B8);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_213F1E924(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF80, &unk_213F5E2C0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_213F1EA30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC460, &qword_213F63D08);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_213F1EB8C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_213F1ED68(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v47 = a8;
  v45 = a7;
  v42 = a6;
  v39 = a4;
  v40 = a5;
  v38 = a1;
  v46 = a11;
  v41 = a9;
  v43 = a10;
  v44 = a12;
  v19 = sub_213F4CB40();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[3] = a14;
  v49[4] = a16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(*(a14 - 8) + 32))(boxed_opaque_existential_1, a2, a14);
  v48[3] = a15;
  v48[4] = a17;
  v25 = __swift_allocate_boxed_opaque_existential_1(v48);
  (*(*(a15 - 8) + 32))(v25, a3, a15);
  v26 = *v38;
  sub_213F4CB30();
  v27 = sub_213F4CB10();
  v29 = v28;
  (*(v20 + 8))(v23, v19);
  *(a13 + 16) = v27;
  *(a13 + 24) = v29;
  *(a13 + 136) = 0u;
  *(a13 + 152) = 0u;
  *(a13 + 184) = 0;
  *(a13 + 192) = 0;
  sub_213F4CBB0();
  *(a13 + 32) = v26;
  sub_213DEBAA8(v49, a13 + 40);
  sub_213DEBAA8(v48, a13 + 80);
  v30 = v40;
  *(a13 + 120) = v39;
  *(a13 + 128) = v30;
  v31 = *(a13 + 144);

  v32 = v45;
  *(a13 + 136) = v42;
  *(a13 + 144) = v32;
  v33 = *(a13 + 160);

  v34 = v46;
  *(a13 + 152) = v47;
  *(a13 + 160) = v41;
  v35 = v44;
  *(a13 + 176) = v43;
  sub_213F197DC(v34, v35);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return a13;
}

uint64_t _s10MapsDesign23SharedTripCellViewModelC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_213F1FCB4(&qword_27C8FC050, type metadata accessor for SharedTripCellViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getKeyPath();

  sub_213F4CB80();

  swift_beginAccess();
  if (v5 == *(a2 + 16) && v4 == *(a2 + 24))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_213F4F830();
  }

  return v6 & 1;
}

uint64_t sub_213F1F104(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v39 = a7;
  v40 = a8;
  v37 = a5;
  v38 = a6;
  v35 = a1;
  v36 = a4;
  v33 = a10;
  v34 = a9;
  v31 = a3;
  v32 = a11;
  v17 = *(a14 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](a1);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a13 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SharedTripCellViewModel(0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  (*(v22 + 16))(v25, a2, a13);
  (*(v17 + 16))(v21, v31, a14);
  return sub_213F1ED68(v35, v25, v21, v36, v37, v38, v39, v40, v34, v33, *(&v33 + 1), v32, v29, a13, a14, a15, a16);
}

uint64_t sub_213F1F2FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

unint64_t sub_213F1F42C()
{
  result = qword_27C8FC358;
  if (!qword_27C8FC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC358);
  }

  return result;
}

uint64_t sub_213F1F488()
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

void sub_213F1FA5C()
{
  sub_213E61E68(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v0 <= 0x3F)
  {
    sub_213E61E68(319, &qword_281183528, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_213ECD90C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SharedTripCellViewModel(319);
        if (v3 <= 0x3F)
        {
          sub_213F1FB68();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213F1FB68()
{
  if (!qword_2811827C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC040, &qword_213F62678);
    v0 = sub_213F4EAD0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811827C8);
    }
  }
}

uint64_t sub_213F1FC18(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SharedTripCell(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_213F1FCB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213F1FCFC(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for SharedTripCell(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_213F1C538(a1, a2, v6);
}

unint64_t sub_213F1FD7C()
{
  result = qword_27C8FC3C0;
  if (!qword_27C8FC3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC3B0, &qword_213F63BA8);
    sub_213F1FE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC3C0);
  }

  return result;
}

unint64_t sub_213F1FE08()
{
  result = qword_27C8FC3C8;
  if (!qword_27C8FC3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC3A8, &qword_213F63BA0);
    sub_213DE3AE4(&qword_27C8FC3D0, &qword_27C8FC3A0, &qword_213F63B98);
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC3C8);
  }

  return result;
}

uint64_t sub_213F1FEC0()
{
  v1 = *(type metadata accessor for SharedTripCell(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_213F1C9D4(v2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_213F1FF38()
{
  result = qword_2811823E8;
  if (!qword_2811823E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811823E8);
  }

  return result;
}

uint64_t sub_213F1FF84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213F1FFEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213F2004C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_213F200B4()
{
  result = qword_27C8FC430;
  if (!qword_27C8FC430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC370, &qword_213F63B30);
    sub_213F20140();
    sub_213DD9738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC430);
  }

  return result;
}

unint64_t sub_213F20140()
{
  result = qword_27C8FC438;
  if (!qword_27C8FC438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC368, &qword_213F63AB8);
    sub_213DE3AE4(&qword_27C8FC440, &qword_27C8FC360, &qword_213F63AB0);
    sub_213DE3AE4(&qword_281182898, &qword_27C8F9B38, &qword_213F60B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC438);
  }

  return result;
}

uint64_t sub_213F2026C@<X0>(_BYTE *a1@<X8>)
{
  sub_213DE3F00();
  result = sub_213F4D820();
  *a1 = v3;
  return result;
}

uint64_t sub_213F202BC(char *a1)
{
  v2 = *a1;
  sub_213DE3F00();
  return sub_213F4D830();
}

__n128 RoutePlanningCellViewModel.init(routeIdentifier:primaryText:secondaryText:tertiaryText:primaryActionStyle:isHighlighted:showPreviewRouteButton:advisories:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a3;
  v15 = a3[1];
  v16 = *a4;
  v17 = a4[1];
  v18 = *a5;
  v19 = sub_213F4CB40();
  v24 = *a2;
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for RoutePlanningCellViewModel(0);
  result = v24;
  *(a9 + v20[5]) = v24;
  v22 = (a9 + v20[6]);
  *v22 = v14;
  v22[1] = v15;
  v23 = (a9 + v20[7]);
  *v23 = v16;
  v23[1] = v17;
  *(a9 + v20[8]) = v18;
  *(a9 + v20[9]) = a6;
  *(a9 + v20[10]) = a7;
  *(a9 + v20[11]) = a8;
  return result;
}

uint64_t RoutePlanningCell.init(viewModel:isCarPlay:useCompactLayout:accessoryView:accessoryViewUnavailableWidth:tapHandler:primaryActionTapHandler:previewRouteButtonTapHandler:advisoryTapHandler:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for RoutePlanningCell();
  v25 = v24[9];
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v26 = a9 + v24[10];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = a9 + v24[19];
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  swift_getWitnessTable();
  sub_213F4CE00();
  *v27 = v42;
  *(v27 + 1) = v43;
  v27[16] = v44;
  sub_213F20704(a1, a9 + v24[11]);
  *(a9 + v24[12]) = a2;
  *(a9 + v24[13]) = a3;
  v28 = swift_allocObject();
  *(v28 + 2) = a18;
  *(v28 + 3) = a19;
  *(v28 + 4) = a4;
  *(v28 + 5) = a5;
  v29 = (a9 + v24[14]);
  *v29 = sub_213F2835C;
  v29[1] = v28;
  if (a7)
  {
    result = sub_213F3C414(a1, type metadata accessor for RoutePlanningCellViewModel);
    v32 = a6;
    v31 = a8;
  }

  else
  {
    sub_213F4EC70();
    result = sub_213F3C414(a1, type metadata accessor for RoutePlanningCellViewModel);
    v32 = v42;
    a7 = v43;
    v31 = v44;
  }

  v33 = (a9 + v24[20]);
  *v33 = v32;
  v33[1] = a7;
  v33[2] = v31;
  v34 = (a9 + v24[15]);
  *v34 = a10;
  v34[1] = a11;
  v35 = (a9 + v24[16]);
  *v35 = a12;
  v35[1] = a13;
  v36 = (a9 + v24[17]);
  *v36 = a14;
  v36[1] = a15;
  v37 = (a9 + v24[18]);
  *v37 = a16;
  v37[1] = a17;
  return result;
}

uint64_t sub_213F20704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutePlanningCellViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213F20768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v42 = a3;
  swift_getWitnessTable();
  sub_213F4DD50();
  v5 = sub_213F4D400();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = *(a2 + 24);
  v35 = *(a2 + 16);
  v36 = v9;
  v37 = sub_213F4DD30();
  v10 = sub_213F4D400();
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = sub_213F4D400();
  v41 = *(v14 - 8);
  v15 = *(v41 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v33 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v34 = &v31 - v18;
  v31 = v3;
  v19 = *(v3 + 1);
  v32 = *v3;
  WitnessTable = swift_getWitnessTable();
  sub_213F4E7D0();
  v21 = *(a2 + 40);
  v22 = MEMORY[0x277CDF918];
  v47 = WitnessTable;
  v48 = MEMORY[0x277CDF918];
  v23 = swift_getWitnessTable();
  sub_213F4E460();
  (*(v39 + 8))(v8, v5);
  v24 = swift_getWitnessTable();
  v45 = v23;
  v46 = v24;
  v25 = swift_getWitnessTable();
  v26 = v33;
  sub_213F4E7D0();
  (*(v40 + 8))(v13, v10);
  v43 = v25;
  v44 = v22;
  v27 = swift_getWitnessTable();
  v28 = v34;
  sub_213DBFEEC(v26, v14, v27);
  v29 = *(v41 + 8);
  v29(v26, v14);
  sub_213DBFEEC(v28, v14, v27);
  return (v29)(v28, v14);
}

uint64_t AdvisoryViewModel.init(image:text:showMoreButton:interactionEnabled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 25) = a5;
  return result;
}

uint64_t AdvisoryViewModel.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  if (*v0)
  {
    sub_213F4F8A0();
    v6 = v2;
    sub_213F4F620();
  }

  else
  {
    sub_213F4F8A0();
  }

  sub_213F4F2C0();
  sub_213F4F8A0();
  return sub_213F4F8A0();
}

uint64_t AdvisoryViewModel.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  sub_213F4F880();
  sub_213F4F8A0();
  if (v2)
  {
    v6 = v2;
    sub_213F4F620();
  }

  sub_213F4F2C0();
  sub_213F4F8A0();
  sub_213F4F8A0();
  return sub_213F4F8C0();
}

uint64_t sub_213F20CC0()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  sub_213F4F880();
  AdvisoryViewModel.hash(into:)();
  return sub_213F4F8C0();
}

uint64_t sub_213F20D28()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  sub_213F4F880();
  AdvisoryViewModel.hash(into:)();
  return sub_213F4F8C0();
}

uint64_t RoutePlanningCellPrimaryActionStyle.axIDString.getter()
{
  v1 = *v0;
  v2 = 1701736270;
  v3 = 0x6F526D6F74737543;
  v4 = 0x7261685365646952;
  if (v1 != 4)
  {
    v4 = 0x747475426F666E49;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 28487;
  if (v1 != 1)
  {
    v5 = 0x7370657453;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t RoutePlanningCellPrimaryActionStyle.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t RoutePlanningCellViewModel.routeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void RoutePlanningCellViewModel.hash(into:)(uint64_t a1)
{
  v3 = sub_213F4CA10();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  sub_213F4CB40();
  sub_213F39194(&qword_281188810, MEMORY[0x277CC95F0]);
  sub_213F4F1B0();
  v31 = type metadata accessor for RoutePlanningCellViewModel(0);
  v32 = v1;
  v10 = (v1 + *(v31 + 20));
  v11 = *v10;
  v30 = v10[1];
  v12 = *(v11 + 16);
  v34 = a1;
  MEMORY[0x216052C90](v12);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = *(v33 + 16);
    v15 = v11 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v16 = *(v33 + 72);
    v17 = (v33 + 8);
    do
    {
      v14(v9, v15, v3);
      sub_213F39194(&qword_27C8F9F90, MEMORY[0x277CC8C40]);
      sub_213F4F1B0();
      (*v17)(v9, v3);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  v18 = v30;
  v19 = v34;
  MEMORY[0x216052C90](*(v30 + 16));
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = *(v33 + 16);
    v22 = v18 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v23 = *(v33 + 72);
    v24 = (v33 + 8);
    do
    {
      v21(v7, v22, v3);
      sub_213F39194(&qword_27C8F9F90, MEMORY[0x277CC8C40]);
      sub_213F4F1B0();
      (*v24)(v7, v3);
      v22 += v23;
      --v20;
    }

    while (v20);
  }

  v26 = v31;
  v25 = v32;
  sub_213F389D8(v19, *(v32 + *(v31 + 24)), *(v32 + *(v31 + 24) + 8));
  sub_213F389D8(v19, *(v25 + v26[7]), *(v25 + v26[7] + 8));
  MEMORY[0x216052C90](*(v25 + v26[8]));
  v27 = *(v25 + v26[9]);
  sub_213F4F8A0();
  v28 = *(v25 + v26[10]);
  sub_213F4F8A0();
  sub_213F388D8(v19, *(v25 + v26[11]));
}

uint64_t RoutePlanningCellViewModel.hashValue.getter()
{
  sub_213F4F880();
  RoutePlanningCellViewModel.hash(into:)(v1);
  return sub_213F4F8C0();
}

uint64_t sub_213F212A8()
{
  sub_213F4F880();
  RoutePlanningCellViewModel.hash(into:)(v1);
  return sub_213F4F8C0();
}

uint64_t sub_213F212EC()
{
  sub_213F4F880();
  RoutePlanningCellViewModel.hash(into:)(v1);
  return sub_213F4F8C0();
}

uint64_t sub_213F2132C@<X0>(uint64_t a1@<X8>)
{
  v222 = a1;
  v197 = sub_213F4D470();
  v1 = *(*(v197 - 8) + 64);
  MEMORY[0x28223BE20](v197);
  v199 = (&v186 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC538, &qword_213F64480);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v196 = (&v186 - v5);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC540, &qword_213F64488);
  v6 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v198 = &v186 - v7;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC548, &qword_213F64490);
  v8 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v203 = &v186 - v9;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC550, &qword_213F64498);
  v10 = *(*(v221 - 8) + 64);
  MEMORY[0x28223BE20](v221);
  v204 = &v186 - v11;
  v193 = sub_213F4EA00();
  v192 = *(v193 - 8);
  v12 = *(v192 + 64);
  MEMORY[0x28223BE20](v193);
  v190 = &v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC558, &qword_213F644A0);
  v14 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v191);
  v194 = (&v186 - v15);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC560, &qword_213F644A8);
  v16 = *(*(v200 - 8) + 64);
  MEMORY[0x28223BE20](v200);
  v189 = &v186 - v17;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC568, &qword_213F644B0);
  v18 = *(*(v205 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v205);
  v188 = &v186 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v187 = &v186 - v21;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC570, &qword_213F644B8);
  v22 = *(*(v220 - 8) + 64);
  MEMORY[0x28223BE20](v220);
  v219 = &v186 - v23;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC578, &qword_213F644C0);
  v24 = *(*(v216 - 8) + 64);
  MEMORY[0x28223BE20](v216);
  v217 = &v186 - v25;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC580, &unk_213F644C8);
  v26 = *(*(v218 - 8) + 64);
  MEMORY[0x28223BE20](v218);
  v206 = &v186 - v27;
  v214 = sub_213F4CEA0();
  v213 = *(v214 - 8);
  v28 = *(v213 + 64);
  v29 = MEMORY[0x28223BE20](v214);
  v211 = &v186 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v212 = &v186 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v186 = &v186 - v34;
  v208 = sub_213F4D290();
  v207 = *(v208 - 8);
  v35 = *(v207 + 64);
  v36 = MEMORY[0x28223BE20](v208);
  v38 = &v186 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v186 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v186 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v186 - v45;
  v47 = sub_213F4CB60();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v49 = sub_213F4F210();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v186 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v56 = &v186 - v55;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC588, &qword_213F644D8);
  v57 = *(*(v209 - 8) + 64);
  MEMORY[0x28223BE20](v209);
  v210 = &v186 - v58;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC590, &qword_213F644E0);
  v59 = *(*(v215 - 8) + 64);
  MEMORY[0x28223BE20](v215);
  v201 = &v186 - v60;
  v61 = type metadata accessor for RoutePlanningCellPrimaryActionLabel(0);
  v62 = *(v223 + *(v61 + 24));
  if (v62 == 5)
  {
    sub_213F4E9F0();
    v77 = v192;
    v78 = v190;
    v79 = v193;
    (*(v192 + 104))(v190, *MEMORY[0x277CE0FE0], v193);
    v80 = sub_213F4EA40();

    (*(v77 + 8))(v78, v79);
    v81 = sub_213F4E1C0();
    KeyPath = swift_getKeyPath();
    v83 = v194;
    v84 = (v194 + *(v191 + 36));
    v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5B8, &unk_213F644F8) + 28);
    sub_213F4DA70();
    v86 = sub_213F4DA90();
    (*(*(v86 - 8) + 56))(v84 + v85, 0, 1, v86);
    *v84 = swift_getKeyPath();
    *v83 = v80;
    v83[1] = KeyPath;
    v87 = v83;
    v83[2] = v81;
    v88 = v212;
    sub_213EA8894(v212);
    v89 = v213;
    v90 = v211;
    v91 = v214;
    (*(v213 + 104))(v211, *MEMORY[0x277CDF3C0], v214);
    LOBYTE(v80) = sub_213F4CE90();
    v92 = *(v89 + 8);
    v92(v90, v91);
    v92(v88, v91);
    if (v80)
    {
      v93 = sub_213F4E8F0();
    }

    else
    {
      v93 = sub_213F4E8B0();
    }

    v173 = v93;
    v169 = v219;
    v170 = v206;
    v174 = v205;
    v175 = v187;
    v176 = v189;
    v177 = v188;
    sub_213DE2B44(v87, v189, &qword_27C8FC558, &qword_213F644A0);
    *(v176 + *(v200 + 36)) = v173;
    sub_213F4EEE0();
    sub_213F4D0C0();
    sub_213DE2B44(v176, v177, &qword_27C8FC560, &qword_213F644A8);
    v178 = (v177 + *(v174 + 36));
    v179 = v228;
    *v178 = v227;
    v178[1] = v179;
    v178[2] = v229;
    v180 = &qword_27C8FC568;
    v181 = &qword_213F644B0;
    sub_213DE2B44(v177, v175, &qword_27C8FC568, &qword_213F644B0);
    sub_213DE3164(v175, v217, &qword_27C8FC568, &qword_213F644B0);
    swift_storeEnumTagMultiPayload();
    sub_213F3C6EC(&qword_281182ED0, &qword_27C8FC590, &qword_213F644E0, sub_213F3A528);
    v182 = v175;
LABEL_37:
    sub_213F3A5E0();
    sub_213F4DBA0();
    sub_213DE3164(v170, v169, &qword_27C8FC580, &unk_213F644C8);
    swift_storeEnumTagMultiPayload();
    sub_213F3A470();
    sub_213F3C6EC(&qword_27C8FC5C0, &qword_27C8FC550, &qword_213F64498, sub_213F3A300);
    sub_213F4DBA0();
    sub_213DE36FC(v170, &qword_27C8FC580, &unk_213F644C8);
    return sub_213DE36FC(v182, v180, v181);
  }

  v63 = v61;
  v200 = *(v61 + 24);
  if (v62 == 4)
  {
    sub_213F4F200();
    (*(v50 + 16))(v54, v56, v49);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v64 = qword_281182518;
    sub_213F4CB50();
    v65 = sub_213F4F260();
    v67 = v66;
    (*(v50 + 8))(v56, v49);
    *&v227 = v65;
    *(&v227 + 1) = v67;
    sub_213DBC9EC();
    v68 = sub_213F4E310();
    v70 = v69;
    v72 = v71;
    v73 = v223 + *(v63 + 20);
    sub_213DBBD08(v46);
    sub_213F4D280();
    LOBYTE(v73) = sub_213F4D270();
    v74 = *(v207 + 8);
    v75 = v208;
    v74(v44, v208);
    v74(v46, v75);
    if (v73)
    {
      sub_213F4E0D0();
      v76 = v186;
    }

    else
    {
      v120 = sub_213F4E0F0();
      v76 = v186;
      (*(*(v120 - 8) + 56))(v186, 1, 1, v120);
      sub_213F4E190();
      sub_213DE36FC(v76, &qword_27C8F7668, &qword_213F52190);
    }

    v121 = sub_213F4E2E0();
    v123 = v122;
    v125 = v124;

    sub_213DBCA40(v68, v70, v72 & 1);

    v126 = *MEMORY[0x277CE09A0];
    v127 = sub_213F4E0F0();
    v128 = *(v127 - 8);
    (*(v128 + 104))(v76, v126, v127);
    (*(v128 + 56))(v76, 0, 1, v127);
    v129 = sub_213F4E290();
    v131 = v130;
    LOBYTE(v126) = v132;
    sub_213DBCA40(v121, v123, v125 & 1);

    sub_213DE36FC(v76, &qword_27C8F7668, &qword_213F52190);
    sub_213F4E110();
    v133 = sub_213F4E2A0();
    v135 = v134;
    v137 = v136;
    sub_213DBCA40(v129, v131, v126 & 1);

    v138 = v212;
    sub_213EA8894(v212);
    v139 = v213;
    v140 = v211;
    v141 = v214;
    (*(v213 + 104))(v211, *MEMORY[0x277CDF3C0], v214);
    LOBYTE(v126) = sub_213F4CE90();
    v142 = *(v139 + 8);
    v142(v140, v141);
    v142(v138, v141);
    if (v126)
    {
      v143 = sub_213F4E8B0();
    }

    else
    {
      v143 = sub_213F4E8F0();
    }

    *&v227 = v143;
    v144 = sub_213F4E2B0();
    v146 = v145;
    v148 = v147;
    v150 = v149;
    sub_213DBCA40(v133, v135, v137 & 1);

    v151 = sub_213F4E050();
    sub_213F4CDA0();
    v153 = v152;
    v155 = v154;
    v157 = v156;
    v159 = v158;
    v160 = v148 & 1;
    LOBYTE(v225) = v148 & 1;
    v224 = 0;
    v161 = sub_213F4EEE0();
    v163 = v162;
    v164 = v210;
    v165 = &v210[*(v209 + 36)];
    v166 = v223;
    sub_213F22B50(v223, v165);
    v167 = (v165 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8430, &qword_213F53C38) + 36));
    *v167 = v161;
    v167[1] = v163;
    *v164 = v144;
    *(v164 + 1) = v146;
    v164[16] = v160;
    *(v164 + 3) = v150;
    v164[32] = v151;
    *(v164 + 5) = v153;
    *(v164 + 6) = v155;
    *(v164 + 7) = v157;
    *(v164 + 8) = v159;
    v164[72] = 0;
    v168 = *(v166 + v200);
    if (v168 > 2)
    {
      v169 = v219;
      v170 = v206;
      if (v168 == 3)
      {
        v172 = 0x6F526D6F74737543;
        v171 = 0xEB00000000657475;
      }

      else if (v168 == 4)
      {
        v172 = 0x7261685365646952;
        v171 = 0xED00006E65704F65;
      }

      else
      {
        v172 = 0x747475426F666E49;
        v171 = 0xEA00000000006E6FLL;
      }
    }

    else
    {
      v169 = v219;
      v170 = v206;
      if (*(v166 + v200))
      {
        if (v168 == 1)
        {
          v171 = 0xE200000000000000;
          v172 = 28487;
        }

        else
        {
          v171 = 0xE500000000000000;
          v172 = 0x7370657453;
        }
      }

      else
      {
        v171 = 0xE400000000000000;
        v172 = 1701736270;
      }
    }

    *&v227 = v172;
    *(&v227 + 1) = v171;

    MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);

    sub_213F3A528();
    v182 = v201;
    v183 = v210;
    sub_213F4E6D0();

    sub_213DE36FC(v183, &qword_27C8FC588, &qword_213F644D8);
    v180 = &qword_27C8FC590;
    v181 = &qword_213F644E0;
    sub_213DE3164(v182, v217, &qword_27C8FC590, &qword_213F644E0);
    swift_storeEnumTagMultiPayload();
    sub_213F3C6EC(&qword_281182ED0, &qword_27C8FC590, &qword_213F644E0, sub_213F3A528);
    goto LABEL_37;
  }

  v94 = sub_213F4DA40();
  v95 = v196;
  *v196 = v94;
  *(v95 + 8) = 0;
  *(v95 + 16) = 1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC598, &qword_213F644E8);
  v97 = v223;
  sub_213F22EA0(v223, v95 + *(v96 + 44));
  v216 = *(v63 + 20);
  sub_213DBBD08(v41);
  sub_213F4D280();
  sub_213F4D270();
  v98 = *(v207 + 8);
  v99 = v208;
  v98(v46, v208);
  v98(v41, v99);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v100 = v198;
  sub_213DE2B44(v95, v198, &qword_27C8FC538, &qword_213F64480);
  v101 = (v100 + *(v195 + 36));
  v102 = v228;
  *v101 = v227;
  v101[1] = v102;
  v101[2] = v229;
  v217 = sub_213F4EEE0();
  v104 = v103;
  v105 = sub_213F26EAC(v97);
  sub_213DBBD08(v38);
  sub_213F4D280();
  v106 = sub_213F4D270();
  v98(v46, v99);
  v98(v38, v99);
  if (v106)
  {
    v107 = 7.0;
  }

  else
  {
    v107 = 14.0;
  }

  v108 = v203;
  v109 = &v203[*(v202 + 36)];
  v110 = *(v197 + 20);
  v111 = *MEMORY[0x277CE0118];
  v112 = sub_213F4D950();
  v113 = v199;
  (*(*(v112 - 8) + 104))(v199 + v110, v111, v112);
  *v113 = v107;
  v113[1] = v107;
  sub_213DEEF8C(v113, v109);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8410, &qword_213F644F0);
  *(v109 + *(v114 + 52)) = v105;
  *(v109 + *(v114 + 56)) = 256;
  v115 = (v109 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8430, &qword_213F53C38) + 36));
  *v115 = v217;
  v115[1] = v104;
  sub_213DE2B44(v100, v108, &qword_27C8FC540, &qword_213F64488);
  v116 = *(v97 + v200);
  if (v116 > 2)
  {
    v117 = v219;
    if (v116 == 3)
    {
      v119 = 0x6F526D6F74737543;
      v118 = 0xEB00000000657475;
    }

    else if (v116 == 4)
    {
      v119 = 0x7261685365646952;
      v118 = 0xED00006E65704F65;
    }

    else
    {
      v119 = 0x747475426F666E49;
      v118 = 0xEA00000000006E6FLL;
    }
  }

  else
  {
    v117 = v219;
    if (*(v97 + v200))
    {
      if (v116 == 1)
      {
        v118 = 0xE200000000000000;
        v119 = 28487;
      }

      else
      {
        v118 = 0xE500000000000000;
        v119 = 0x7370657453;
      }
    }

    else
    {
      v118 = 0xE400000000000000;
      v119 = 1701736270;
    }
  }

  v225 = v119;
  v226 = v118;

  MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);

  sub_213F3A300();
  v185 = v204;
  sub_213F4E6D0();

  sub_213DE36FC(v108, &qword_27C8FC548, &qword_213F64490);
  sub_213DE3164(v185, v117, &qword_27C8FC550, &qword_213F64498);
  swift_storeEnumTagMultiPayload();
  sub_213F3A470();
  sub_213F3C6EC(&qword_27C8FC5C0, &qword_27C8FC550, &qword_213F64498, sub_213F3A300);
  sub_213F4DBA0();
  return sub_213DE36FC(v185, &qword_27C8FC550, &qword_213F64498);
}

uint64_t sub_213F22B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v38 = a2;
  v37 = sub_213F4CEA0();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v37);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  v9 = sub_213F4D290();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = sub_213F4D470();
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = a1 + *(type metadata accessor for RoutePlanningCellPrimaryActionLabel(0) + 20);
  sub_213DBBD08(v16);
  sub_213F4D280();
  LOBYTE(v22) = sub_213F4D270();
  v23 = *(v10 + 8);
  v23(v14, v9);
  v23(v16, v9);
  if (v22)
  {
    v24 = 7.0;
  }

  else
  {
    v24 = 14.0;
  }

  v25 = *(v18 + 28);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_213F4D950();
  (*(*(v27 - 8) + 104))(v21 + v25, v26, v27);
  *v21 = v24;
  v21[1] = v24;
  sub_213EA8894(v8);
  v29 = v36;
  v28 = v37;
  (*(v3 + 104))(v36, *MEMORY[0x277CDF3C0], v37);
  LOBYTE(v26) = sub_213F4CE90();
  v30 = *(v3 + 8);
  v30(v29, v28);
  v30(v8, v28);
  if (v26)
  {
    v31 = sub_213F4E8F0();
  }

  else
  {
    v31 = sub_213F4E8B0();
  }

  v32 = v31;
  v33 = v38;
  sub_213DEEF8C(v21, v38);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8410, &qword_213F644F0);
  *(v33 + *(result + 52)) = v32;
  *(v33 + *(result + 56)) = 256;
  return result;
}

uint64_t sub_213F22EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v315 = a2;
  *&v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5C8, &qword_213F64570);
  v3 = *(*(v301 - 8) + 64);
  MEMORY[0x28223BE20](v301);
  *(&v301 + 1) = &v252 - v4;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5D0, &qword_213F64578);
  v5 = *(*(v314 - 8) + 64);
  MEMORY[0x28223BE20](v314);
  v302 = (&v252 - v6);
  v7 = sub_213F4CEA0();
  v286 = *(v7 - 8);
  v287 = v7;
  v8 = *(v286 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v285 = &v252 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v284 = &v252 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5D8, &qword_213F64580);
  v290 = *(v12 - 8);
  v291 = v12;
  v13 = *(v290 + 64);
  MEMORY[0x28223BE20](v12);
  v289 = &v252 - v14;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5E0, &qword_213F64588);
  v15 = *(*(v299 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v299);
  v288 = &v252 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v252 - v18;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5E8, &qword_213F64590);
  v20 = *(*(v307 - 1) + 64);
  MEMORY[0x28223BE20](v307);
  v22 = &v252 - v21;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5F0, &qword_213F64598);
  v23 = *(*(v311 - 8) + 64);
  MEMORY[0x28223BE20](v311);
  v313 = &v252 - v24;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5F8, &qword_213F645A0);
  v25 = *(*(v304 - 8) + 64);
  MEMORY[0x28223BE20](v304);
  v305 = &v252 - v26;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC600, &qword_213F645A8);
  v27 = *(*(v312 - 8) + 64);
  MEMORY[0x28223BE20](v312);
  v306 = &v252 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC608, &qword_213F645B0);
  v277 = *(v29 - 8);
  v278 = v29;
  v30 = *(v277 + 64);
  MEMORY[0x28223BE20](v29);
  v292 = &v252 - v31;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC610, &qword_213F645B8);
  v32 = *(*(v276 - 8) + 64);
  MEMORY[0x28223BE20](v276);
  v281 = &v252 - v33;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC618, &qword_213F645C0);
  v34 = *(*(v279 - 8) + 64);
  MEMORY[0x28223BE20](v279);
  v282 = &v252 - v35;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC620, &qword_213F645C8);
  v36 = *(*(v297 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v297);
  v280 = &v252 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v283 = &v252 - v39;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC628, &qword_213F645D0);
  v40 = *(*(v295 - 8) + 64);
  MEMORY[0x28223BE20](v295);
  v296 = &v252 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v298 = &v252 - v44;
  v45 = sub_213F4D290();
  v309 = *(v45 - 8);
  v310 = v45;
  v46 = *(v309 + 8);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v252 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47);
  v274 = &v252 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v266 = &v252 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v275 = &v252 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v272 = &v252 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v300 = &v252 - v59;
  MEMORY[0x28223BE20](v58);
  v308 = &v252 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC630, &qword_213F645D8);
  v258 = *(v61 - 8);
  v259 = v61;
  v62 = *(v258 + 64);
  MEMORY[0x28223BE20](v61);
  v256 = &v252 - v63;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC638, &qword_213F645E0);
  v255 = *(v257 - 8);
  v64 = *(v255 + 64);
  MEMORY[0x28223BE20](v257);
  v254 = &v252 - v65;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC640, &qword_213F645E8);
  v66 = *(*(v253 - 8) + 64);
  MEMORY[0x28223BE20](v253);
  v261 = &v252 - v67;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC648, &qword_213F645F0);
  v68 = *(*(v260 - 8) + 64);
  MEMORY[0x28223BE20](v260);
  v263 = &v252 - v69;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC650, &qword_213F645F8);
  v70 = *(*(v262 - 8) + 64);
  MEMORY[0x28223BE20](v262);
  v265 = &v252 - v71;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC658, &qword_213F64600);
  v72 = *(*(v264 - 8) + 64);
  MEMORY[0x28223BE20](v264);
  v270 = &v252 - v73;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC660, &qword_213F64608);
  v74 = *(*(v268 - 8) + 64);
  MEMORY[0x28223BE20](v268);
  v271 = &v252 - v75;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC668, &qword_213F64610);
  v76 = *(*(v293 - 8) + 64);
  v77 = MEMORY[0x28223BE20](v293);
  v269 = &v252 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v273 = &v252 - v79;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC670, &qword_213F64618);
  v80 = *(*(v303 - 8) + 64);
  MEMORY[0x28223BE20](v303);
  v294 = &v252 - v81;
  v82 = sub_213F4CB60();
  v83 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82 - 8);
  v84 = sub_213F4F210();
  v85 = *(v84 - 8);
  v86 = *(v85 + 64);
  v87 = MEMORY[0x28223BE20](v84);
  v89 = &v252 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v91 = &v252 - v90;
  v92 = type metadata accessor for RoutePlanningCellPrimaryActionLabel(0);
  v93 = *(v92 + 24);
  v316 = a1;
  v94 = *(a1 + v93);
  if (v94 == 3)
  {
    v306 = v49;
    v307 = v19;
    v267 = v92;
    v305 = sub_213F4EA10();
    sub_213F4EED0();
    sub_213F4D0C0();
    v120 = BYTE8(v341);
    v303 = v342;
    v304 = v341;
    v121 = BYTE8(v342);
    v298 = *(&v343 + 1);
    v300 = v343;
    LODWORD(v297) = sub_213F4E070();
    sub_213F4CDA0();
    v123 = v122;
    v125 = v124;
    v127 = v126;
    v129 = v128;
    LOBYTE(v321) = v120;
    LOBYTE(v317) = v121;
    LOBYTE(v337[0]) = 0;
    v296 = sub_213F4E0E0();
    KeyPath = swift_getKeyPath();
    v131 = v284;
    sub_213EA8894(v284);
    v133 = v285;
    v132 = v286;
    v134 = v287;
    (*(v286 + 104))(v285, *MEMORY[0x277CDF3C0], v287);
    v135 = sub_213F4CE90();
    v136 = *(v132 + 8);
    v136(v133, v134);
    v136(v131, v134);
    if (v135)
    {
      v137 = sub_213F4E8F0();
    }

    else
    {
      v137 = sub_213F4E8B0();
    }

    v141 = v306;
    *&v317 = v305;
    *(&v317 + 1) = v304;
    LOBYTE(v318[0]) = v120;
    *(&v318[0] + 1) = v303;
    LOBYTE(v318[1]) = v121;
    *(&v318[1] + 1) = v300;
    *&v318[2] = v298;
    BYTE8(v318[2]) = v297;
    *&v318[3] = v123;
    *(&v318[3] + 1) = v125;
    *&v318[4] = v127;
    *(&v318[4] + 1) = v129;
    LOBYTE(v318[5]) = 0;
    *(&v318[5] + 1) = KeyPath;
    *&v318[6] = v296;
    *(&v318[6] + 1) = v137;
    sub_213F4E180();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC678, &qword_213F64620);
    sub_213F3A8A4();
    v142 = v289;
    sub_213F4E370();
    v325 = v318[3];
    v326 = v318[4];
    v327 = v318[5];
    v328 = v318[6];
    v321 = v317;
    v322 = v318[0];
    v323 = v318[1];
    v324 = v318[2];
    sub_213DE36FC(&v321, &qword_27C8FC678, &qword_213F64620);
    v143 = v316 + *(v267 + 20);
    sub_213DBBD08(v141);
    v144 = v308;
    sub_213F4D280();
    sub_213F4D270();
    v145 = *(v309 + 1);
    v146 = v144;
    v147 = v310;
    v145(v146, v310);
    v145(v141, v147);
    sub_213F4EEE0();
    sub_213F4D0C0();
    v148 = v288;
    (*(v290 + 32))(v288, v142, v291);
    v149 = (v148 + *(v299 + 36));
    v150 = v318[0];
    *v149 = v317;
    v149[1] = v150;
    v149[2] = v318[1];
    v139 = &qword_27C8FC5E0;
    v140 = &qword_213F64588;
    v151 = v307;
    sub_213DE2B44(v148, v307, &qword_27C8FC5E0, &qword_213F64588);
    sub_213DE3164(v151, *(&v301 + 1), &qword_27C8FC5E0, &qword_213F64588);
    swift_storeEnumTagMultiPayload();
    sub_213F3A7DC();
    v152 = v302;
    sub_213F4DBA0();
    v153 = &qword_27C8FC5D0;
    v154 = &qword_213F64578;
    sub_213DE3164(v152, v313, &qword_27C8FC5D0, &qword_213F64578);
    goto LABEL_31;
  }

  if (v94 != 2)
  {
    if (v94 != 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_213F3A7DC();
      v138 = v302;
      sub_213F4DBA0();
      v139 = &qword_27C8FC5D0;
      v140 = &qword_213F64578;
      sub_213DE3164(v138, v313, &qword_27C8FC5D0, &qword_213F64578);
      swift_storeEnumTagMultiPayload();
      sub_213F3AB24();
      sub_213F3B3D8();
      sub_213F4DBA0();
      v117 = v138;
LABEL_32:
      v118 = v139;
      v119 = v140;
      return sub_213DE36FC(v117, v118, v119);
    }

    v267 = v92;
    sub_213F4F200();
    (*(v85 + 16))(v89, v91, v84);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v95 = qword_281182518;
    sub_213F4CB50();
    v96 = sub_213F4F260();
    v98 = v97;
    (*(v85 + 8))(v91, v84);
    v99 = HIBYTE(v98) & 0xF;
    if ((v98 & 0x2000000000000000) == 0)
    {
      v99 = v96;
    }

    v100 = 7;
    if (((v98 >> 60) & ((v96 & 0x800000000000000) == 0)) != 0)
    {
      v100 = 11;
    }

    v101 = sub_213F38C4C(0xFuLL, v100 | (v99 << 16), v96, v98);
    v102 = v298;
    if (v101 <= 3)
    {
      *&v321 = v96;
      *(&v321 + 1) = v98;
      sub_213DBC9EC();
      v155 = sub_213F4E310();
      v157 = v156;
      v159 = v158;
      v160 = v316 + *(v267 + 20);
      v161 = v308;
      *&v301 = v162;
      *(&v301 + 1) = v160;
      sub_213DBBD08(v308);
      v163 = v300;
      sub_213F4D280();
      LOBYTE(v160) = sub_213F4D270();
      v165 = (v309 + 8);
      v164 = *(v309 + 1);
      v166 = v163;
      v167 = v310;
      v164(v166, v310);
      v309 = v165;
      v302 = v164;
      v164(v161, v167);
      if (v160)
      {
        sub_213F4E0D0();
      }

      else
      {
        v195 = sub_213F4E0F0();
        (*(*(v195 - 8) + 56))(v102, 1, 1, v195);
        sub_213F4E190();
        sub_213DE36FC(v102, &qword_27C8F7668, &qword_213F52190);
      }

      v196 = sub_213F4E2E0();
      v198 = v197;
      v200 = v199;
      v201 = v157;
      v203 = v202;
      v299 = v202;

      sub_213DBCA40(v155, v201, v159 & 1);

      v204 = swift_getKeyPath();
      *&v321 = v196;
      *(&v321 + 1) = v198;
      v200 &= 1u;
      LOBYTE(v322) = v200;
      *(&v322 + 1) = v203;
      *&v323 = v204;
      *(&v323 + 1) = 1;
      LOBYTE(v324) = 0;
      v205 = *MEMORY[0x277CE09A0];
      v206 = sub_213F4E0F0();
      v207 = *(v206 - 8);
      v208 = v298;
      (*(v207 + 104))(v298, v205, v206);
      (*(v207 + 56))(v208, 0, 1, v206);
      v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8980, &unk_213F55A40);
      v210 = sub_213E0C270();
      v211 = v256;
      sub_213F4E360();
      sub_213DE36FC(v208, &qword_27C8F7668, &qword_213F52190);
      sub_213DBCA40(v196, v198, v200);

      sub_213F4E110();
      *&v321 = v209;
      *(&v321 + 1) = v210;
      swift_getOpaqueTypeConformance2();
      v212 = v254;
      v213 = v259;
      sub_213F4E370();
      (*(v258 + 8))(v211, v213);
      v214 = swift_getKeyPath();
      v215 = v261;
      (*(v255 + 32))(v261, v212, v257);
      v216 = (v215 + *(v253 + 36));
      *v216 = v214;
      v216[1] = 0x3FE999999999999ALL;
      if (*(v316 + *(v267 + 32)) == 1)
      {
        v217 = [objc_opt_self() _carSystemFocusLabelColor];
        v218 = sub_213F4E870();
      }

      else
      {
        v218 = sub_213F4E8F0();
      }

      v219 = v218;
      v220 = v263;
      sub_213DE2B44(v215, v263, &qword_27C8FC640, &qword_213F645E8);
      *(v220 + *(v260 + 36)) = v219;
      v221 = sub_213F4E040();
      v222 = v308;
      sub_213DBBD08(v308);
      v223 = v300;
      sub_213F4D280();
      sub_213F4D270();
      v224 = v223;
      v225 = v310;
      v226 = v302;
      v302(v224, v310);
      v226(v222, v225);
      sub_213F4CDA0();
      v228 = v227;
      v230 = v229;
      v232 = v231;
      v234 = v233;
      v235 = v220;
      v236 = v265;
      sub_213DE2B44(v235, v265, &qword_27C8FC648, &qword_213F645F0);
      v237 = v236 + *(v262 + 36);
      *v237 = v221;
      *(v237 + 8) = v228;
      *(v237 + 16) = v230;
      *(v237 + 24) = v232;
      *(v237 + 32) = v234;
      *(v237 + 40) = 0;
      v238 = v272;
      sub_213DBBD08(v272);
      sub_213F4D280();
      sub_213F4D270();
      v226(v222, v225);
      v226(v238, v225);
      sub_213F4EEE0();
      sub_213F4D4E0();
      v239 = v270;
      sub_213DE2B44(v236, v270, &qword_27C8FC650, &qword_213F645F8);
      v240 = (v239 + *(v264 + 36));
      v241 = v318[4];
      v240[4] = v318[3];
      v240[5] = v241;
      v240[6] = v318[5];
      v242 = v318[0];
      *v240 = v317;
      v240[1] = v242;
      v243 = v318[2];
      v240[2] = v318[1];
      v240[3] = v243;
      v244 = v275;
      sub_213DBBD08(v275);
      sub_213F4D280();
      sub_213F4D270();
      v226(v222, v225);
      v226(v244, v225);
      sub_213F4EEE0();
      sub_213F4D4E0();
      v245 = v271;
      sub_213DE2B44(v239, v271, &qword_27C8FC658, &qword_213F64600);
      v246 = (v245 + *(v268 + 36));
      v247 = v326;
      v246[4] = v325;
      v246[5] = v247;
      v246[6] = v327;
      v248 = v322;
      *v246 = v321;
      v246[1] = v248;
      v249 = v324;
      v246[2] = v323;
      v246[3] = v249;
      v250 = v269;
      sub_213DE2B44(v245, v269, &qword_27C8FC660, &qword_213F64608);
      *(v250 + *(v293 + 36)) = 257;
      v192 = &qword_27C8FC668;
      v193 = &qword_213F64610;
      v194 = v273;
      sub_213DE2B44(v250, v273, &qword_27C8FC668, &qword_213F64610);
      sub_213DE3164(v194, v296, &qword_27C8FC668, &qword_213F64610);
      swift_storeEnumTagMultiPayload();
      sub_213F3AC68();
      sub_213F3B088();
      v151 = v294;
    }

    else
    {

      v103 = v267;
      v104 = v316;
      v105 = v308;
      v302 = (v316 + *(v267 + 20));
      sub_213DBBD08(v308);
      v106 = v300;
      sub_213F4D280();
      v107 = sub_213F4D270();
      v108 = *(v309 + 1);
      v109 = v106;
      v110 = v310;
      v108(v109, v310);
      v309 = v108;
      v108(v105, v110);
      v111 = 0x4000000000000000;
      if (v107)
      {
        v111 = 0;
      }

      *(&v301 + 1) = v111;
      *&v301 = sub_213F4DA40();
      v339 = 0;
      sub_213F24F28(v104, &v321);
      v333 = v323;
      v334 = v324;
      v335 = v325;
      v336 = v326;
      v331 = v321;
      v332 = v322;
      v337[2] = v323;
      v337[3] = v324;
      v337[5] = v326;
      v337[4] = v325;
      v337[0] = v321;
      v337[1] = v322;
      sub_213DE3164(&v331, &v317, &qword_27C8FC6D0, &qword_213F646C8);
      sub_213DE36FC(v337, &qword_27C8FC6D0, &qword_213F646C8);
      *&v338[23] = v332;
      *&v338[87] = v336;
      *&v338[71] = v335;
      *&v338[55] = v334;
      *&v338[39] = v333;
      *&v338[7] = v331;
      v112 = v339;
      if (*(v104 + *(v103 + 32)) == 1)
      {
        v113 = [objc_opt_self() _carSystemFocusLabelColor];
        v114 = sub_213F4E870();
      }

      else
      {
        v114 = sub_213F4E8F0();
      }

      v168 = v114;
      v169 = sub_213F4E040();
      v170 = v308;
      sub_213DBBD08(v308);
      v171 = v300;
      sub_213F4D280();
      sub_213F4D270();
      v172 = v171;
      v173 = v309;
      v174 = v310;
      v309(v172, v310);
      v173(v170, v174);
      sub_213F4CDA0();
      *(&v318[3] + 1) = *&v338[48];
      *(&v318[4] + 1) = *&v338[64];
      *(&v318[5] + 1) = *&v338[80];
      *(v318 + 1) = *v338;
      *(&v318[1] + 1) = *&v338[16];
      v340 = 0;
      v317 = v301;
      LOBYTE(v318[0]) = v112;
      *(&v318[2] + 1) = *&v338[32];
      *&v318[6] = *&v338[95];
      *(&v318[6] + 1) = v168;
      LOBYTE(v319) = v169;
      *(&v319 + 1) = v175;
      *&v320[0] = v176;
      *(&v320[0] + 1) = v177;
      *&v320[1] = v178;
      BYTE8(v320[1]) = 0;
      sub_213F4E180();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC6A8, &qword_213F64648);
      sub_213F3B268();
      sub_213F4E370();
      v329 = v319;
      v330[0] = v320[0];
      *(v330 + 9) = *(v320 + 9);
      v325 = v318[3];
      v326 = v318[4];
      v327 = v318[5];
      v328 = v318[6];
      v321 = v317;
      v322 = v318[0];
      v323 = v318[1];
      v324 = v318[2];
      sub_213DE36FC(&v321, &qword_27C8FC6A8, &qword_213F64648);
      v179 = v266;
      sub_213DBBD08(v266);
      sub_213F4D280();
      sub_213F4D270();
      v173(v170, v174);
      v173(v179, v174);
      sub_213F4EEE0();
      sub_213F4D4E0();
      v180 = v281;
      (*(v277 + 32))(v281, v292, v278);
      v181 = (v180 + *(v276 + 36));
      v182 = v346;
      v181[4] = v345;
      v181[5] = v182;
      v181[6] = v347;
      v183 = v342;
      *v181 = v341;
      v181[1] = v183;
      v184 = v344;
      v181[2] = v343;
      v181[3] = v184;
      v185 = v274;
      sub_213DBBD08(v274);
      sub_213F4D280();
      sub_213F4D270();
      v173(v170, v174);
      v173(v185, v174);
      sub_213F4EEE0();
      sub_213F4D4E0();
      v186 = v282;
      sub_213DE2B44(v180, v282, &qword_27C8FC610, &qword_213F645B8);
      v187 = (v186 + *(v279 + 36));
      v188 = v318[4];
      v187[4] = v318[3];
      v187[5] = v188;
      v187[6] = v318[5];
      v189 = v318[0];
      *v187 = v317;
      v187[1] = v189;
      v190 = v318[2];
      v187[2] = v318[1];
      v187[3] = v190;
      v191 = v280;
      sub_213DE2B44(v186, v280, &qword_27C8FC618, &qword_213F645C0);
      *(v191 + *(v297 + 36)) = 257;
      v192 = &qword_27C8FC620;
      v193 = &qword_213F645C8;
      v194 = v283;
      sub_213DE2B44(v191, v283, &qword_27C8FC620, &qword_213F645C8);
      sub_213DE3164(v194, v296, &qword_27C8FC620, &qword_213F645C8);
      swift_storeEnumTagMultiPayload();
      sub_213F3AC68();
      sub_213F3B088();
      v151 = v294;
    }

    sub_213F4DBA0();
    sub_213DE36FC(v194, v192, v193);
    v139 = &qword_27C8FC670;
    v140 = &qword_213F64618;
    sub_213DE3164(v151, v305, &qword_27C8FC670, &qword_213F64618);
    swift_storeEnumTagMultiPayload();
    sub_213F3ABDC();
    sub_213DE3AE4(&qword_27C8FC6C0, &qword_27C8FC5E8, &qword_213F64590);
    v152 = v306;
    sub_213F4DBA0();
    v153 = &qword_27C8FC600;
    v154 = &qword_213F645A8;
    sub_213DE3164(v152, v313, &qword_27C8FC600, &qword_213F645A8);
LABEL_31:
    swift_storeEnumTagMultiPayload();
    sub_213F3AB24();
    sub_213F3B3D8();
    sub_213F4DBA0();
    sub_213DE36FC(v152, v153, v154);
    v117 = v151;
    goto LABEL_32;
  }

  *v22 = sub_213F4E010();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC6C8, &qword_213F64660);
  sub_213F25600(v316, &v22[*(v115 + 44)]);
  sub_213DE3164(v22, v305, &qword_27C8FC5E8, &qword_213F64590);
  swift_storeEnumTagMultiPayload();
  sub_213F3ABDC();
  sub_213DE3AE4(&qword_27C8FC6C0, &qword_27C8FC5E8, &qword_213F64590);
  v116 = v306;
  sub_213F4DBA0();
  sub_213DE3164(v116, v313, &qword_27C8FC600, &qword_213F645A8);
  swift_storeEnumTagMultiPayload();
  sub_213F3AB24();
  sub_213F3B3D8();
  sub_213F4DBA0();
  sub_213DE36FC(v116, &qword_27C8FC600, &qword_213F645A8);
  v117 = v22;
  v118 = &qword_27C8FC5E8;
  v119 = &qword_213F64590;
  return sub_213DE36FC(v117, v118, v119);
}

uint64_t sub_213F24F28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = v71 - v5;
  v6 = sub_213F4CB60();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_213F4F210();
  v9 = *(v72 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v72);
  v13 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v71 - v14;
  v16 = sub_213F4D290();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v71 - v22;
  v80 = sub_213F4EA10();
  v24 = *(type metadata accessor for RoutePlanningCellPrimaryActionLabel(0) + 20);
  v76 = a1;
  v71[1] = v24;
  sub_213DBBD08(v23);
  sub_213F4D280();
  LOBYTE(a1) = sub_213F4D270();
  v25 = *(v17 + 8);
  v25(v21, v16);
  v75 = v16;
  v73 = v25;
  v25(v23, v16);
  if (a1)
  {
    v26 = sub_213F4E200();
  }

  else
  {
    v26 = sub_213F4E1C0();
  }

  v78 = v26;
  KeyPath = swift_getKeyPath();
  sub_213F4F200();
  v27 = v13;
  v28 = v72;
  (*(v9 + 16))(v27, v15, v72);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v29 = qword_281182518;
  sub_213F4CB50();
  v30 = sub_213F4F260();
  v32 = v31;
  (*(v9 + 8))(v15, v28);
  v88 = v30;
  v89 = v32;
  sub_213DBC9EC();
  v33 = sub_213F4E310();
  v35 = v34;
  v37 = v36;
  sub_213DBBD08(v23);
  sub_213F4D280();
  LOBYTE(v30) = sub_213F4D270();
  v38 = v21;
  v39 = v75;
  v40 = v73;
  v73(v38, v75);
  v40(v23, v39);
  if (v30)
  {
    sub_213F4E200();
  }

  else
  {
    sub_213F4E1E0();
  }

  v76 = sub_213F4E2E0();
  v42 = v41;
  v44 = v43;

  sub_213DBCA40(v33, v35, v37 & 1);

  v45 = *MEMORY[0x277CE09A0];
  v46 = sub_213F4E0F0();
  v47 = *(v46 - 8);
  v48 = v79;
  (*(v47 + 104))(v79, v45, v46);
  (*(v47 + 56))(v48, 0, 1, v46);
  v49 = v76;
  v50 = sub_213F4E290();
  v52 = v51;
  v54 = v53;
  sub_213DBCA40(v49, v42, v44 & 1);

  sub_213DE36FC(v48, &qword_27C8F7668, &qword_213F52190);
  sub_213F4E110();
  v55 = sub_213F4E2A0();
  v57 = v56;
  LOBYTE(v42) = v58;
  v60 = v59;
  sub_213DBCA40(v50, v52, v54 & 1);

  v61 = swift_getKeyPath();
  v62 = swift_getKeyPath();
  v63 = v42 & 1;
  v102 = v42 & 1;
  v100 = 0;
  *&v83 = v55;
  *(&v83 + 1) = v57;
  LOBYTE(v84) = v42 & 1;
  *(&v84 + 1) = *v101;
  DWORD1(v84) = *&v101[3];
  *(&v84 + 1) = v60;
  *&v85 = v61;
  *(&v85 + 1) = 1;
  LOBYTE(v86) = 0;
  DWORD1(v86) = *&v99[3];
  *(&v86 + 1) = *v99;
  *(&v86 + 1) = v62;
  v87 = 0x3FE999999999999ALL;
  v64 = v81;
  v66 = KeyPath;
  v65 = v78;
  *v81 = v80;
  v64[1] = v66;
  v64[2] = v65;
  v67 = v85;
  v68 = v86;
  v64[11] = 0x3FE999999999999ALL;
  *(v64 + 9) = v68;
  *(v64 + 7) = v67;
  v69 = v83;
  *(v64 + 5) = v84;
  *(v64 + 3) = v69;
  v88 = v55;
  v89 = v57;
  v90 = v63;
  *&v91[3] = *&v101[3];
  *v91 = *v101;
  v92 = v60;
  v93 = v61;
  v94 = 1;
  v95 = 0;
  *&v96[3] = *&v99[3];
  *v96 = *v99;
  v97 = v62;
  v98 = 0x3FE999999999999ALL;

  sub_213DE3164(&v83, &v82, &qword_27C8FC6D8, &qword_213F646D0);
  sub_213DE36FC(&v88, &qword_27C8FC6D8, &qword_213F646D0);
}

uint64_t sub_213F25600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v205 = a1;
  v201 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v186 = &v161 - v4;
  v5 = sub_213F4CB60();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v180 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_213F4F210();
  v179 = *(v181 - 8);
  v8 = *(v179 + 64);
  v9 = MEMORY[0x28223BE20](v181);
  v177 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v178 = &v161 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC6E0, &qword_213F646D8);
  v192 = *(v12 - 8);
  v193 = v12;
  v13 = *(v192 + 64);
  MEMORY[0x28223BE20](v12);
  v191 = &v161 - v14;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC6E8, &qword_213F646E0);
  v15 = *(*(v190 - 8) + 64);
  MEMORY[0x28223BE20](v190);
  v196 = &v161 - v16;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC6F0, &qword_213F646E8);
  v17 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v198 = &v161 - v18;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC6F8, &qword_213F646F0);
  v19 = *(*(v197 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v197);
  v200 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v194 = &v161 - v23;
  MEMORY[0x28223BE20](v22);
  v199 = &v161 - v24;
  v204 = sub_213F4D290();
  v206 = *(v204 - 8);
  v25 = *(v206 + 64);
  v26 = MEMORY[0x28223BE20](v204);
  v189 = &v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v187 = &v161 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v176 = (&v161 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v203 = &v161 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v161 - v34;
  v36 = sub_213F4CEA0();
  v37 = *(v36 - 8);
  v38 = v37[8];
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v161 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = &v161 - v42;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC700, &qword_213F646F8);
  v165 = *(v175 - 8);
  v44 = *(v165 + 64);
  MEMORY[0x28223BE20](v175);
  v164 = &v161 - v45;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC708, &qword_213F64700);
  v46 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v168 = &v161 - v47;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC710, &qword_213F64708);
  v48 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v170 = &v161 - v49;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC718, &qword_213F64710);
  v50 = *(*(v169 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v169);
  v188 = &v161 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v166 = &v161 - v54;
  MEMORY[0x28223BE20](v53);
  v202 = &v161 - v55;
  v162 = sub_213F4DA40();
  LOBYTE(v207) = 0;
  sub_213F26914(&v221);
  v257 = v223;
  v258 = v224;
  v259 = v225;
  v260 = v226;
  v255 = v221;
  v256 = v222;
  v261[2] = v223;
  v261[3] = v224;
  v261[4] = v225;
  v261[5] = v226;
  v261[0] = v221;
  v261[1] = v222;
  sub_213DE3164(&v255, &v216, &qword_27C8FC6D0, &qword_213F646C8);
  sub_213DE36FC(v261, &qword_27C8FC6D0, &qword_213F646C8);
  *&v232[39] = v257;
  *&v232[55] = v258;
  *&v232[71] = v259;
  *&v232[87] = v260;
  *&v232[7] = v255;
  *&v232[23] = v256;
  v56 = v207;
  v57 = sub_213F4E040();
  sub_213F4CDA0();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v233 = 0;
  sub_213EA8894(v43);
  v66 = v37[13];
  v172 = *MEMORY[0x277CDF3C0];
  v173 = v37 + 13;
  v171 = v66;
  v66(v41);
  v67 = sub_213F4CE90();
  v68 = v37[1];
  v183 = v41;
  v68(v41, v36);
  v182 = v43;
  v184 = v37 + 1;
  v185 = v36;
  v174 = v68;
  v68(v43, v36);
  if (v67)
  {
    v69 = sub_213F4E8F0();
  }

  else
  {
    v69 = sub_213F4E8B0();
  }

  *(&v217[3] + 1) = *&v232[48];
  *(&v217[4] + 1) = *&v232[64];
  *(&v217[5] + 1) = *&v232[80];
  *(v217 + 1) = *v232;
  *(&v217[1] + 1) = *&v232[16];
  *&v216 = v162;
  *(&v216 + 1) = 0x4000000000000000;
  LOBYTE(v217[0]) = v56;
  *&v217[6] = *&v232[95];
  *(&v217[2] + 1) = *&v232[32];
  BYTE8(v217[6]) = v57;
  *&v218 = v59;
  *(&v218 + 1) = v61;
  *&v219 = v63;
  *(&v219 + 1) = v65;
  LOBYTE(v220) = 0;
  *(&v220 + 1) = v69;
  sub_213F4E180();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC720, &qword_213F64718);
  sub_213F3B464();
  v70 = v164;
  sub_213F4E370();
  v229 = v218;
  v230 = v219;
  v231 = v220;
  v225 = v217[3];
  v226 = v217[4];
  v227 = v217[5];
  v228 = v217[6];
  v221 = v216;
  v222 = v217[0];
  v223 = v217[1];
  v224 = v217[2];
  sub_213DE36FC(&v221, &qword_27C8FC720, &qword_213F64718);
  v71 = v205 + *(type metadata accessor for RoutePlanningCellPrimaryActionLabel(0) + 20);
  sub_213DBBD08(v35);
  v72 = v203;
  sub_213F4D280();
  sub_213F4D270();
  v74 = v206 + 8;
  v73 = *(v206 + 8);
  v75 = v204;
  v73(v72, v204);
  v73(v35, v75);
  sub_213F4EEE0();
  sub_213F4D4E0();
  v76 = v168;
  (*(v165 + 32))(v168, v70, v175);
  v77 = (v76 + *(v163 + 36));
  v78 = v239;
  v77[4] = v238;
  v77[5] = v78;
  v77[6] = v240;
  v79 = v235;
  *v77 = v234;
  v77[1] = v79;
  v80 = v237;
  v77[2] = v236;
  v77[3] = v80;
  v81 = v176;
  v175 = v71;
  sub_213DBBD08(v176);
  sub_213F4D280();
  sub_213F4D270();
  v73(v72, v75);
  v206 = v74;
  v176 = v73;
  v73(v81, v75);
  sub_213F4EEE0();
  sub_213F4D4E0();
  v82 = v170;
  sub_213DE2B44(v76, v170, &qword_27C8FC708, &qword_213F64700);
  v83 = (v82 + *(v167 + 36));
  v84 = v246;
  v83[4] = v245;
  v83[5] = v84;
  v83[6] = v247;
  v85 = v242;
  *v83 = v241;
  v83[1] = v85;
  v86 = v244;
  v83[2] = v243;
  v83[3] = v86;
  v87 = v82;
  v88 = v166;
  sub_213DE2B44(v87, v166, &qword_27C8FC710, &qword_213F64708);
  *(v88 + *(v169 + 36)) = 257;
  sub_213DE2B44(v88, v202, &qword_27C8FC718, &qword_213F64710);
  v89 = v178;
  sub_213F4F200();
  v90 = v179;
  v91 = v181;
  (*(v179 + 16))(v177, v89, v181);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v92 = qword_281182518;
  sub_213F4CB50();
  v93 = sub_213F4F260();
  v95 = v94;
  (*(v90 + 8))(v89, v91);
  *&v216 = v93;
  *(&v216 + 1) = v95;
  sub_213DBC9EC();
  v96 = sub_213F4F6C0();
  v98 = v97;

  *&v207 = v96;
  *(&v207 + 1) = v98;
  v99 = sub_213F4E310();
  v101 = v100;
  v103 = v102;
  sub_213F4E0C0();
  v104 = sub_213F4E2E0();
  v106 = v105;
  v108 = v107;

  sub_213DBCA40(v99, v101, v103 & 1);

  v109 = *MEMORY[0x277CE09A0];
  v110 = sub_213F4E0F0();
  v111 = *(v110 - 8);
  v112 = v186;
  (*(v111 + 104))(v186, v109, v110);
  (*(v111 + 56))(v112, 0, 1, v110);
  v113 = sub_213F4E290();
  v115 = v114;
  LOBYTE(v111) = v116;
  sub_213DBCA40(v104, v106, v108 & 1);

  sub_213DE36FC(v112, &qword_27C8F7668, &qword_213F52190);
  sub_213F4E110();
  v186 = sub_213F4E2A0();
  v180 = v118;
  v181 = v117;
  LOBYTE(v96) = v119;
  sub_213DBCA40(v113, v115, v111 & 1);

  KeyPath = swift_getKeyPath();
  v121 = swift_getKeyPath();
  v122 = v96 & 1;
  LOBYTE(v216) = v96 & 1;
  LOBYTE(v207) = 0;
  v123 = sub_213F4E040();
  sub_213F4CDA0();
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v215 = 0;
  v132 = v182;
  sub_213EA8894(v182);
  v133 = v183;
  v134 = v185;
  v171(v183, v172, v185);
  LOBYTE(v96) = sub_213F4CE90();
  v135 = v174;
  v174(v133, v134);
  v135(v132, v134);
  if (v96)
  {
    v136 = sub_213F4E8F0();
  }

  else
  {
    v136 = sub_213F4E8B0();
  }

  *&v207 = v186;
  *(&v207 + 1) = v181;
  LOBYTE(v208) = v122;
  *(&v208 + 1) = v180;
  *&v209 = KeyPath;
  *(&v209 + 1) = 2;
  LOBYTE(v210) = 0;
  *(&v210 + 1) = v121;
  LOBYTE(v211) = 1;
  BYTE8(v211) = v123;
  *&v212 = v125;
  *(&v212 + 1) = v127;
  *&v213 = v129;
  *(&v213 + 1) = v131;
  LOBYTE(v214) = 0;
  *(&v214 + 1) = v136;
  sub_213F4E180();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC730, &qword_213F64758);
  sub_213F3B5D4();
  v137 = v191;
  sub_213F4E370();
  v217[3] = v211;
  v217[4] = v212;
  v217[5] = v213;
  v217[6] = v214;
  v216 = v207;
  v217[0] = v208;
  v217[1] = v209;
  v217[2] = v210;
  sub_213DE36FC(&v216, &qword_27C8FC730, &qword_213F64758);
  v138 = v187;
  sub_213DBBD08(v187);
  v139 = v203;
  sub_213F4D280();
  sub_213F4D270();
  v140 = v204;
  v141 = v176;
  v176(v139, v204);
  v141(v138, v140);
  sub_213F4EEE0();
  sub_213F4D4E0();
  v142 = v196;
  (*(v192 + 32))(v196, v137, v193);
  v143 = v189;
  v144 = (v142 + *(v190 + 36));
  v145 = v253;
  v144[4] = v252;
  v144[5] = v145;
  v144[6] = v254;
  v146 = v249;
  *v144 = v248;
  v144[1] = v146;
  v147 = v251;
  v144[2] = v250;
  v144[3] = v147;
  sub_213DBBD08(v143);
  sub_213F4D280();
  sub_213F4D270();
  v141(v139, v140);
  v141(v143, v140);
  sub_213F4EEE0();
  sub_213F4D4E0();
  v148 = v198;
  sub_213DE2B44(v142, v198, &qword_27C8FC6E8, &qword_213F646E0);
  v149 = (v148 + *(v195 + 36));
  v150 = v212;
  v149[4] = v211;
  v149[5] = v150;
  v149[6] = v213;
  v151 = v208;
  *v149 = v207;
  v149[1] = v151;
  v152 = v210;
  v149[2] = v209;
  v149[3] = v152;
  v153 = v194;
  sub_213DE2B44(v148, v194, &qword_27C8FC6F0, &qword_213F646E8);
  *(v153 + *(v197 + 36)) = 257;
  v154 = v199;
  sub_213DE2B44(v153, v199, &qword_27C8FC6F8, &qword_213F646F0);
  v155 = v202;
  v156 = v188;
  sub_213DE3164(v202, v188, &qword_27C8FC718, &qword_213F64710);
  v157 = v200;
  sub_213DE3164(v154, v200, &qword_27C8FC6F8, &qword_213F646F0);
  v158 = v201;
  sub_213DE3164(v156, v201, &qword_27C8FC718, &qword_213F64710);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC750, &unk_213F64768);
  sub_213DE3164(v157, v158 + *(v159 + 48), &qword_27C8FC6F8, &qword_213F646F0);
  sub_213DE36FC(v154, &qword_27C8FC6F8, &qword_213F646F0);
  sub_213DE36FC(v155, &qword_27C8FC718, &qword_213F64710);
  sub_213DE36FC(v157, &qword_27C8FC6F8, &qword_213F646F0);
  return sub_213DE36FC(v156, &qword_27C8FC718, &qword_213F64710);
}

uint64_t sub_213F26914@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v54 = &v54 - v4;
  v5 = sub_213F4CB60();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_213F4F210();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - v13;
  v57 = sub_213F4E9F0();
  v56 = sub_213F4E1C0();
  KeyPath = swift_getKeyPath();
  sub_213F4F200();
  (*(v8 + 16))(v12, v14, v7);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v15 = qword_281182518;
  sub_213F4CB50();
  v16 = sub_213F4F260();
  v18 = v17;
  (*(v8 + 8))(v14, v7);
  v66 = v16;
  v67 = v18;
  sub_213DBC9EC();
  v19 = sub_213F4F6C0();
  v21 = v20;

  *&v61 = v19;
  *(&v61 + 1) = v21;
  v22 = sub_213F4E310();
  v24 = v23;
  v26 = v25;
  sub_213F4E1E0();
  v27 = sub_213F4E2E0();
  v29 = v28;
  LOBYTE(v18) = v30;

  sub_213DBCA40(v22, v24, v26 & 1);

  v31 = *MEMORY[0x277CE09A0];
  v32 = sub_213F4E0F0();
  v33 = *(v32 - 8);
  v34 = v54;
  (*(v33 + 104))(v54, v31, v32);
  (*(v33 + 56))(v34, 0, 1, v32);
  v35 = sub_213F4E290();
  v37 = v36;
  LOBYTE(v33) = v38;
  sub_213DBCA40(v27, v29, v18 & 1);

  sub_213DE36FC(v34, &qword_27C8F7668, &qword_213F52190);
  sub_213F4E110();
  v39 = sub_213F4E2A0();
  v41 = v40;
  LOBYTE(v18) = v42;
  v44 = v43;
  sub_213DBCA40(v35, v37, v33 & 1);

  v45 = swift_getKeyPath();
  v46 = swift_getKeyPath();
  *&v61 = v39;
  *(&v61 + 1) = v41;
  LOBYTE(v62) = v18 & 1;
  v47 = *v60;
  *(&v62 + 1) = *v60;
  DWORD1(v62) = *&v60[3];
  *(&v62 + 1) = v44;
  *&v63 = v45;
  *(&v63 + 1) = 1;
  LOBYTE(v64) = 0;
  DWORD1(v64) = *&v59[3];
  v48 = *v59;
  *(&v64 + 1) = *v59;
  *(&v64 + 1) = v46;
  v65 = 0x3FE999999999999ALL;
  v49 = KeyPath;
  *a1 = v57;
  *(a1 + 8) = v49;
  *(a1 + 16) = v56;
  v50 = v63;
  v51 = v64;
  *(a1 + 88) = 0x3FE999999999999ALL;
  *(a1 + 72) = v51;
  *(a1 + 56) = v50;
  v52 = v61;
  *(a1 + 40) = v62;
  *(a1 + 24) = v52;
  v66 = v39;
  v67 = v41;
  v68 = v18 & 1;
  *&v69[3] = *&v60[3];
  *v69 = v47;
  v70 = v44;
  v71 = v45;
  v72 = 1;
  v73 = 0;
  *&v74[3] = *&v59[3];
  *v74 = v48;
  v75 = v46;
  v76 = 0x3FE999999999999ALL;

  sub_213DE3164(&v61, v58, &qword_27C8FC6D8, &qword_213F646D0);
  sub_213DE36FC(&v66, &qword_27C8FC6D8, &qword_213F646D0);
}

uint64_t sub_213F26EAC(uint64_t a1)
{
  v2 = sub_213F4CEA0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = type metadata accessor for RoutePlanningCellPrimaryActionLabel(0);
  if (*(a1 + *(v10 + 32)) == 1)
  {
    v11 = [objc_opt_self() _carSystemFocusColor];

    return sub_213F4E870();
  }

  else
  {
    v13 = *(a1 + *(v10 + 24));
    if ((v13 - 2) >= 2)
    {
      if (v13 == 1)
      {

        return sub_213F4E8E0();
      }

      else
      {

        return sub_213F4E8D0();
      }
    }

    else
    {
      sub_213EA8894(v9);
      v14 = v3[13];
      v14(v7, *MEMORY[0x277CDF3C0], v2);
      v15 = sub_213F4CE90();
      v16 = v3[1];
      v16(v7, v2);
      v16(v9, v2);
      if (v15)
      {
        sub_213F4E8F0();
      }

      else
      {
        sub_213F4E8B0();
      }

      sub_213EA8894(v9);
      v14(v7, *MEMORY[0x277CDF3D0], v2);
      sub_213F4CE90();
      v16(v7, v2);
      v16(v9, v2);
      v17 = sub_213F4E900();

      return v17;
    }
  }
}

void sub_213F271C8(uint64_t a1, id *a2, double *a3, void *a4)
{
  sub_213E15130(0, &qword_281182338, 0x277D74300);
  v7 = *a3;
  v8 = *a2;
  v9 = static UIFont.withStyleAndWeight(_:_:)(v8, v7);

  *a4 = v9;
}

id sub_213F272E8(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_213F2732C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_213F2752C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_213F4D7F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_213DE3164(v2 + *(a1 + 36), &v18 - v12, &qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_213F4CEA0();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_213F4F520();
    v17 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_213F27730(uint64_t a1)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1 + 40);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_213F4F520();
    v10 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    sub_213E053BC(v9, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v9) = v12[15];
  }

  return v9 & 1;
}

uint64_t sub_213F27884()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_213F2732C(&v11 - v6);
  sub_213F4D280();
  v8 = sub_213F4D270();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_213F279DC(unsigned __int8 a1)
{
  sub_213F4F880();
  MEMORY[0x216052C90](a1);
  return sub_213F4F8C0();
}

uint64_t sub_213F27A24(uint64_t a1)
{
  v2 = (v1 + *(a1 + 76));
  v7 = *v2;
  v8 = *(v2 + 1);
  v9 = v2[16];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  sub_213F4F6B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4CE10();
  sub_213F4CDC0();
  return v6;
}

uint64_t sub_213F27AE8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 76));
  v7 = *v3;
  v8 = *(v3 + 1);
  v9 = v3[16];
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  sub_213F4F6B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4CE10();
  return sub_213F4CDD0();
}

uint64_t sub_213F27BB4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 76));
  v7 = *v2;
  v8 = *(v2 + 1);
  v9 = v2[16];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  sub_213F4F6B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4CE10();
  sub_213F4CDE0();
  return v6;
}

uint64_t sub_213F27C7C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 80));
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87B0, &qword_213F547C8);
  return sub_213F4EC30();
}

uint64_t sub_213F27CFC()
{
  sub_213F4F880();
  sub_213F279B4(v2, *v0);
  return sub_213F4F8C0();
}

double sub_213F27D3C()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_213F2732C(&v11 - v6);
  sub_213F4D280();
  v8 = sub_213F4D270();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  result = 16.0;
  if (v8)
  {
    return 10.0;
  }

  return result;
}

double sub_213F27E68()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_213F2732C(&v11 - v6);
  sub_213F4D280();
  v8 = sub_213F4D270();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  result = 16.0;
  if (v8)
  {
    return 6.0;
  }

  return result;
}

double sub_213F27F94()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_213F2732C(&v11 - v6);
  sub_213F4D280();
  v8 = sub_213F4D270();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  result = 6.0;
  if (v8)
  {
    return 4.0;
  }

  return result;
}

uint64_t sub_213F280C0(uint64_t a1)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = v1 + *(a1 + 44);
  *(*(v11 + *(type metadata accessor for RoutePlanningCellViewModel(0) + 44)) + 16);
  sub_213F2732C(v10);
  sub_213F4D280();
  sub_213F4D270();
  v12 = *(v4 + 8);
  v12(v8, v3);
  return (v12)(v10, v3);
}

double sub_213F28224()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_213F2732C(&v11 - v6);
  sub_213F4D280();
  v8 = sub_213F4D270();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  result = 112.0;
  if (v8)
  {
    return 66.0;
  }

  return result;
}

uint64_t sub_213F2835C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v4();
  v6 = *(*(v3 - 8) + 56);

  return v6(a1, 0, 1, v3);
}

id sub_213F283D8(uint64_t a1)
{
  if (sub_213F27884())
  {
    if (qword_27C8F7380 != -1)
    {
      swift_once();
    }

    v2 = qword_27C8FC468;
    if (sub_213F27A24(a1))
    {
      if (qword_27C8F7390 != -1)
      {
        swift_once();
      }

      v3 = &qword_27C8FC478;
    }

    else
    {
      if (qword_27C8F7388 != -1)
      {
        swift_once();
      }

      v3 = &qword_27C8FC470;
    }
  }

  else
  {
    if (qword_281184110 != -1)
    {
      swift_once();
    }

    v4 = qword_2811840C8;
    v2 = qword_281184118[0];
    if (v4 != -1)
    {
      swift_once();
    }

    v3 = &qword_2811840D0;
  }

  v5 = *v3;
  return v2;
}

id sub_213F28558(uint64_t a1)
{
  if ((sub_213F27884() & 1) == 0)
  {
    if (qword_2811840F8 != -1)
    {
      swift_once();
    }

    v4 = qword_2811840E0;
    v5 = qword_281184100;
    if (v4 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (*(v1 + *(a1 + 52)) == 1)
  {
    if (qword_27C8F73A8 != -1)
    {
      swift_once();
    }

    v3 = &qword_27C8FC488;
  }

  else
  {
    if (qword_27C8F73A0 != -1)
    {
      swift_once();
    }

    v3 = &qword_27C8FC480;
  }

  v5 = *v3;
  if (sub_213F27A24(a1))
  {
    if (qword_2811840E0 == -1)
    {
LABEL_9:
      v6 = &qword_2811840E8;
      goto LABEL_10;
    }

LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  if (qword_27C8F73B8 != -1)
  {
    swift_once();
  }

  v6 = &qword_27C8FC490;
LABEL_10:
  v7 = *v6;
  return v5;
}

double sub_213F286FC()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_213F2732C(&v11 - v6);
  sub_213F4D280();
  v8 = sub_213F4D270();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  result = 20.0;
  if (v8)
  {
    return 12.0;
  }

  return result;
}

double sub_213F28828()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_213F2732C(&v11 - v6);
  sub_213F4D280();
  v8 = sub_213F4D270();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  result = 8.0;
  if (v8)
  {
    return 6.0;
  }

  return result;
}

uint64_t sub_213F28954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v6 = sub_213F4DF50();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4F0, &qword_213F63E10);
  v10 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v12 = &v37 - v11;
  v13 = sub_213F4CEA0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = *a1;
  v40 = *(a1 + 8);
  v41 = v21;
  v39 = *(a1 + 16);
  LODWORD(v21) = *(a1 + 24);
  v37 = *(a1 + 25);
  v38 = v21;
  v42 = sub_213F28558(a2);
  v43 = v22;
  sub_213F2752C(a2, v20);
  (*(v14 + 104))(v18, *MEMORY[0x277CDF3C0], v13);
  v23 = sub_213F4CE90();
  v24 = *(v14 + 8);
  v24(v18, v13);
  v24(v20, v13);
  if (v23)
  {
    v25 = sub_213F4E8F0();
  }

  else
  {
    v25 = sub_213F4E8B0();
  }

  v26 = v25;
  v27 = sub_213F27884();
  v28 = sub_213F4D880();
  v29 = 0x4020000000000000;
  if (v27)
  {
    v29 = 0x4010000000000000;
  }

  *v12 = v28;
  *(v12 + 1) = v29;
  v12[16] = 0;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC758, &qword_213F64798) + 44);
  v31 = *(a2 + 24);
  if (v37)
  {
    v32 = 256;
  }

  else
  {
    v32 = 0;
  }

  v36 = *(a2 + 16);
  v34 = v42;
  v33 = v43;
  sub_213F28CC4(v41, v40, v39, v32 | v38, v3, v43, v26, v42, &v12[v30], v36, v31);
  sub_213F4DF30();
  sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  sub_213F4E640();

  (*(v46 + 8))(v9, v47);
  return sub_213DE36FC(v12, &qword_27C8FC4F0, &qword_213F63E10);
}

uint64_t sub_213F28CC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v146 = a8;
  v141 = a7;
  v164 = a5;
  v160 = a4;
  v158 = a3;
  v157 = a2;
  v156 = a9;
  v162 = a10;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC760, &qword_213F647A0);
  v13 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v137 = &v124 - v14;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC768, &qword_213F647A8);
  v15 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v154 = &v124 - v16;
  v150 = sub_213F4DCA0();
  v130 = *(v150 - 8);
  v17 = *(v130 + 64);
  MEMORY[0x28223BE20](v150);
  v128 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC770, &qword_213F647B0);
  v127 = *(v148 - 8);
  v19 = *(v127 + 64);
  MEMORY[0x28223BE20](v148);
  v126 = &v124 - v20;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC778, &qword_213F647B8);
  v131 = *(v151 - 8);
  v21 = *(v131 + 64);
  MEMORY[0x28223BE20](v151);
  v136 = &v124 - v22;
  v135 = sub_213F4D290();
  v134 = *(v135 - 8);
  v23 = *(v134 + 64);
  v24 = MEMORY[0x28223BE20](v135);
  v133 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v132 = &v124 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC780, &unk_213F647C0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v153 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v152 = &v124 - v31;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9640, &qword_213F584C8);
  v32 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v161 = &v124 - v33;
  v34 = sub_213F4EA00();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC788, &qword_213F647D0);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v124 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v124 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC790, &unk_213F647D8);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v47 - 8);
  v147 = &v124 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v159 = &v124 - v51;
  v163 = a11;
  v129 = a1;
  if (a1)
  {
    v52 = a1;
    sub_213F4E9D0();
    v145 = a6;
    (*(v35 + 104))(v38, *MEMORY[0x277CE0FE0], v34);
    v53 = sub_213F4EA40();

    (*(v35 + 8))(v38, v34);
    type metadata accessor for RoutePlanningCell();
    sub_213F286FC();
    sub_213F286FC();
    sub_213F4EEE0();
    sub_213F4D0C0();
    v165 = v53;
    v166 = v173;
    LOBYTE(v167) = v174;
    v168 = v175;
    LOBYTE(v169) = v176;
    v170 = v177;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC690, &qword_213F64638);
    sub_213F3AAA0();
    a6 = v145;
    v54 = v159;
    sub_213F4E6D0();

    sub_213F4D3F0();

    sub_213DE36FC(v44, &qword_27C8FC788, &qword_213F647D0);
    sub_213DE2B44(v46, v54, &qword_27C8FC788, &qword_213F647D0);
    (*(v40 + 56))(v54, 0, 1, v39);
  }

  else
  {
    (*(v40 + 56))();
  }

  v165 = v157;
  v166 = v158;
  sub_213DBC9EC();

  v55 = sub_213F4E310();
  v57 = v56;
  v59 = v58;
  v60 = v162;
  v61 = type metadata accessor for RoutePlanningCell();
  v62 = sub_213F27A24(v61);
  v138 = v61;
  if (v62 == 2 || !sub_213F27A24(v61))
  {
    v65 = [objc_opt_self() _carSystemFocusLabelColor];
    v64 = sub_213F4E870();
  }

  else
  {
    v63 = a6;
    v64 = sub_213F4E870();
  }

  v165 = v64;
  v66 = sub_213F4E2B0();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  sub_213DBCA40(v55, v57, v59 & 1);

  v145 = v72;
  v144 = v66;
  v143 = v68;
  v142 = v70;
  if (v160)
  {
    v73 = v164;
    v74 = sub_213F29E70(v164, v141, v66, v68, v70 & 1, v72, v60, v163);
    v68 = v75;
    v70 = v76;
    v72 = v77;
    v78 = v73;
  }

  else
  {
    sub_213DBCA50(v66, v68, v70 & 1);

    v74 = v66;
    v78 = v164;
  }

  v79 = v146;
  sub_213F4E240();
  v139 = v70;
  v146 = v74;
  v141 = v68;
  v140 = v72;
  v80 = sub_213F4E2E0();
  v82 = v81;
  v84 = v83;
  v86 = v85;

  KeyPath = swift_getKeyPath();
  v165 = v80;
  v166 = v82;
  v84 &= 1u;
  LOBYTE(v167) = v84;
  v168 = v86;
  v169 = KeyPath;
  LOBYTE(v170) = 0;
  v171 = 0x79726F7369766441;
  v172 = 0xE800000000000000;
  MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9648, &unk_213F58500);
  sub_213E3D854();
  sub_213F4E6D0();
  sub_213DBCA40(v80, v82, v84);

  v88 = (v78 + *(v138 + 72));
  v89 = *v88;
  v90 = v152;
  if (*v88 && (v160 & 0x100) != 0)
  {
    v91 = v88[1];

    v92 = v132;
    sub_213F2732C(v132);
    v93 = v133;
    sub_213F4D280();
    sub_213F39194(&qword_2811834A8, MEMORY[0x277CDF7E8]);
    v94 = v135;
    v95 = sub_213F4F1F0();
    v96 = *(v134 + 8);
    v96(v93, v94);
    v96(v92, v94);
    if ((v95 & 1) == 0)
    {
      v112 = swift_allocObject();
      *(v112 + 16) = v89;
      *(v112 + 24) = v91;
      v113 = v129;
      v114 = v157;
      *(v112 + 32) = v129;
      *(v112 + 40) = v114;
      *(v112 + 48) = v158;
      *(v112 + 56) = v160 & 1;
      *(v112 + 57) = 1;
      MEMORY[0x28223BE20](v112);
      v103 = v161;
      *(&v124 - 2) = v161;
      sub_213DD74C4(v89);
      sub_213F3C6EC(&qword_281183070, &qword_27C8F9640, &qword_213F584C8, sub_213E3D854);
      v115 = v113;

      v164 = v91;
      v116 = v126;
      sub_213F4EB00();
      v117 = v128;
      sub_213F4DC90();
      v163 = sub_213DE3AE4(&qword_281182778, &qword_27C8FC770, &qword_213F647B0);
      v118 = sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8]);
      v119 = v136;
      v120 = v148;
      v121 = v150;
      sub_213F4E3B0();
      (*(v130 + 8))(v117, v121);
      (*(v127 + 8))(v116, v120);
      v122 = v131;
      v123 = v151;
      (*(v131 + 16))(v154, v119, v151);
      swift_storeEnumTagMultiPayload();
      v165 = v120;
      v166 = v121;
      v167 = v163;
      v168 = v118;
      swift_getOpaqueTypeConformance2();
      sub_213F3BCF4();
      sub_213F4DBA0();
      sub_213DD7558(v89);
      (*(v122 + 8))(v136, v123);
      goto LABEL_16;
    }

    sub_213DD7558(v89);
  }

  v97 = sub_213F4EEE0();
  v99 = v98;
  v100 = v137;
  v101 = &v137[*(v155 + 36)];
  sub_213F2A2AC(v101);
  v102 = (v101 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC798, &qword_213F647E8) + 36));
  *v102 = v97;
  v102[1] = v99;
  v103 = v161;
  sub_213DE3164(v161, v100, &qword_27C8F9640, &qword_213F584C8);
  sub_213DE3164(v100, v154, &qword_27C8FC760, &qword_213F647A0);
  swift_storeEnumTagMultiPayload();
  v104 = sub_213DE3AE4(&qword_281182778, &qword_27C8FC770, &qword_213F647B0);
  v105 = sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8]);
  v165 = v148;
  v166 = v150;
  v167 = v104;
  v168 = v105;
  swift_getOpaqueTypeConformance2();
  sub_213F3BCF4();
  sub_213F4DBA0();
  sub_213DE36FC(v100, &qword_27C8FC760, &qword_213F647A0);
LABEL_16:
  v106 = v159;
  v107 = v147;
  sub_213DE3164(v159, v147, &qword_27C8FC790, &unk_213F647D8);
  v108 = v153;
  sub_213DE3164(v90, v153, &qword_27C8FC780, &unk_213F647C0);
  v109 = v156;
  sub_213DE3164(v107, v156, &qword_27C8FC790, &unk_213F647D8);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7A0, &qword_213F647F0);
  sub_213DE3164(v108, v109 + *(v110 + 48), &qword_27C8FC780, &unk_213F647C0);
  sub_213DBCA40(v146, v141, v139 & 1);

  sub_213DBCA40(v144, v143, v142 & 1);

  sub_213DE36FC(v90, &qword_27C8FC780, &unk_213F647C0);
  sub_213DE36FC(v106, &qword_27C8FC790, &unk_213F647D8);
  sub_213DE36FC(v108, &qword_27C8FC780, &unk_213F647C0);
  sub_213DE36FC(v107, &qword_27C8FC790, &unk_213F647D8);
  return sub_213DE36FC(v103, &qword_27C8F9640, &qword_213F584C8);
}

uint64_t sub_213F29E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a7;
  v47 = a8;
  v50 = a4;
  v51 = a6;
  v49 = a5;
  v48 = a3;
  v45 = a2;
  v8 = sub_213F4D910();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_213F4CB60();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_213F4F210();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  sub_213F4F200();
  (*(v13 + 16))(v17, v19, v12);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v20 = qword_281182518;
  sub_213F4CB50();
  v21 = sub_213F4F260();
  v23 = v22;
  (*(v13 + 8))(v19, v12);
  v52 = v21;
  v53 = v23;
  sub_213DBC9EC();
  v24 = sub_213F4E310();
  v26 = v25;
  v28 = v27;
  sub_213F4E160();
  v29 = sub_213F4E2A0();
  v31 = v30;
  v33 = v32;
  sub_213DBCA40(v24, v26, v28 & 1);

  v34 = type metadata accessor for RoutePlanningCell();
  if (sub_213F27A24(v34) == 2 || !sub_213F27A24(v34))
  {
    v36 = [objc_opt_self() _carSystemFocusLabelColor];
    v35 = sub_213F4E870();
  }

  else
  {
    v35 = v45;
  }

  v52 = v35;
  v37 = sub_213F4E2B0();
  v39 = v38;
  v41 = v40;
  sub_213DBCA40(v29, v31, v33 & 1);

  sub_213F4D900();
  sub_213F4D8F0();
  sub_213F4D8C0();
  sub_213F4D8F0();
  sub_213F4D8C0();
  sub_213F4D8F0();
  sub_213F4D930();
  v42 = sub_213F4E2F0();
  sub_213DBCA40(v37, v39, v41 & 1);

  return v42;
}

uint64_t sub_213F2A2AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4D470();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D90, &qword_213F61EB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = *(v3 + 28);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_213F4D950();
  (*(*(v13 - 8) + 104))(&v6[v11], v12, v13);
  __asm { FMOV            V0.2D, #6.0 }

  *v6 = _Q0;
  v19 = type metadata accessor for RoutePlanningCell();
  if (sub_213F27A24(v19) == 2)
  {
    v20 = [objc_opt_self() _carSystemFocusColor];
    v21 = sub_213F4E870();
  }

  else
  {
    v21 = sub_213F4E8D0();
  }

  v22 = v21;
  sub_213DEEF8C(v6, v10);
  *&v10[*(v7 + 36)] = v22;
  LOBYTE(v22) = sub_213F4E050();
  sub_213F4CDA0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_213DE2B44(v10, a1, &qword_27C8F7D90, &qword_213F61EB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D98, &qword_213F52630);
  v32 = a1 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_213F2A4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = sub_213F4DF50();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &OpaqueTypeMetadata2 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v54 = v53;
  v39 = *(a1 + 16);
  sub_213F4D400();
  v55 = sub_213F4F6B0();
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  v36 = sub_213F4EFE0();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_213F4EBC0();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v32 = &OpaqueTypeMetadata2 - v9;
  v33 = swift_getWitnessTable();
  v52 = v7;
  v53 = v33;
  v37 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = *(OpaqueTypeMetadata2 - 8);
  v10 = *(v38 + 64);
  v11 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = &OpaqueTypeMetadata2 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v34 = &OpaqueTypeMetadata2 - v14;
  v15 = a1;
  sub_213F27884();
  v16 = sub_213F283D8(a1);
  v18 = v17;
  v19 = sub_213F28558(v15);
  v21 = v20;
  sub_213F4DA50();
  v22 = *(v15 + 24);
  v45 = v39;
  v46 = v22;
  v47 = v2;
  v48 = v16;
  v49 = v18;
  v50 = v19;
  v51 = v21;
  v23 = v32;
  sub_213F4EBB0();
  v24 = v41;
  sub_213F4DF30();
  v25 = v33;
  sub_213F4E640();

  (*(v42 + 8))(v24, v43);
  (*(v40 + 8))(v23, v7);
  v52 = v7;
  v53 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v34;
  v28 = OpaqueTypeMetadata2;
  sub_213DBFEEC(v13, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v29 = *(v38 + 8);
  v29(v13, v28);
  sub_213DBFEEC(v27, v28, OpaqueTypeConformance2);
  return (v29)(v27, v28);
}

uint64_t sub_213F2A95C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, void (*a4)(void, void)@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v189 = a5;
  v190 = a4;
  v188 = a8;
  v169 = sub_213F4DCA0();
  v167 = *(v169 - 8);
  v13 = *(v167 + 64);
  MEMORY[0x28223BE20](v169);
  v165 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = a7;
  v15 = type metadata accessor for RoutePlanningCell();
  v160 = *(v15 - 8);
  v158 = *(v160 + 64);
  MEMORY[0x28223BE20](v15);
  v159 = &v153 - v16;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC818, &qword_213F64868);
  v162 = *(v164 - 8);
  v17 = *(v162 + 64);
  MEMORY[0x28223BE20](v164);
  v161 = &v153 - v18;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC820, &qword_213F64870);
  v19 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v166 = &v153 - v20;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC828, &qword_213F64878);
  v21 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v171 = &v153 - v22;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC830, &qword_213F64880);
  v182 = *(v184 - 8);
  v23 = *(v182 + 64);
  MEMORY[0x28223BE20](v184);
  v168 = &v153 - v24;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4C8, &unk_213F63DE0);
  v25 = *(*(v185 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v185);
  v187 = &v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v186 = &v153 - v28;
  v29 = sub_213F4D400();
  v178 = *(v29 - 8);
  v30 = *(v178 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v157 = &v153 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v156 = &v153 - v33;
  v155 = sub_213F4F6B0();
  v153 = *(v155 - 8);
  v34 = *(v153 + 64);
  v35 = MEMORY[0x28223BE20](v155);
  v176 = &v153 - v36;
  v180 = a6;
  v177 = *(a6 - 8);
  v37 = *(v177 + 64);
  MEMORY[0x28223BE20](v35);
  v154 = &v153 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = v29;
  v199 = sub_213F4F6B0();
  v193 = *(v199 - 8);
  v39 = *(v193 + 64);
  v40 = MEMORY[0x28223BE20](v199);
  v205 = &v153 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v196 = &v153 - v42;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v43 = *(*(v179 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v179);
  v183 = &v153 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v197 = &v153 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v204 = &v153 - v49;
  MEMORY[0x28223BE20](v48);
  v195 = &v153 - v50;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4B8, &qword_213F63DD0);
  v175 = *(v203 - 8);
  v51 = *(v175 + 64);
  v52 = MEMORY[0x28223BE20](v203);
  v202 = &v153 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v55 = &v153 - v54;
  v181 = v15;
  v56 = *(v15 + 44);
  v191 = a1;
  v57 = a1 + v56;
  v58 = type metadata accessor for RoutePlanningCellViewModel(0);
  v59 = (v57 + v58[5]);
  v60 = v59[1];
  v61 = *(v57 + v58[9]);
  v217[0] = *v59;
  v217[1] = v60;
  v62 = a2;
  v218 = a2;
  v219 = a3;
  LOWORD(v220) = v61;
  v63 = a3;
  v64 = v62;

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC838, &qword_213F64888);
  v66 = sub_213F3C500();
  v194 = v55;
  v67 = v66;
  sub_213F4E6D0();

  v192 = v58;
  v68 = v58[6];
  v200 = v57;
  v69 = (v57 + v68);
  v70 = *v69;
  v174 = v61;
  v173 = v65;
  v172 = v67;
  if (v70)
  {
    v71 = v69[1];
    v217[0] = v70;
    v217[1] = v71;
    v72 = v190;
    v73 = v189;
    v218 = v190;
    v219 = v189;
    LOWORD(v220) = v61;
    sub_213F3C9E8(v70);
    v74 = v73;
    v75 = v72;
    v76 = v202;
    sub_213F4E6D0();

    v77 = v76;
    v78 = v195;
    sub_213DE2B44(v76, v195, &qword_27C8FC4B8, &qword_213F63DD0);
    v79 = 0;
    v80 = v78;
  }

  else
  {
    v77 = v202;
    v79 = 1;
    v80 = v195;
  }

  v81 = *(v175 + 56);
  v82 = 1;
  v81(v80, v79, 1, v203);
  v83 = (v200 + v192[7]);
  v84 = *v83;
  if (*v83)
  {
    v85 = v83[1];
    v217[0] = *v83;
    v217[1] = v85;
    v86 = v190;
    v218 = v190;
    v219 = v189;
    LOWORD(v220) = v174;
    v87 = v189;
    v88 = v86;
    sub_213F3C9E8(v84);
    sub_213F4E6D0();

    v89 = v204;
    sub_213DE2B44(v77, v204, &qword_27C8FC4B8, &qword_213F63DD0);
    v82 = 0;
    v90 = v198;
    v91 = v205;
  }

  else
  {
    v90 = v198;
    v91 = v205;
    v89 = v204;
  }

  v92 = (v81)(v89, v82, 1, v203);
  v93 = v181;
  v94 = v191 + *(v181 + 56);
  v95 = *(v94 + 8);
  v96 = v176;
  (*v94)(v92);
  v97 = v177;
  v98 = v180;
  v99 = (*(v177 + 48))(v96, 1, v180);
  v100 = MEMORY[0x277CDF918];
  if (v99 == 1)
  {
    (*(v153 + 8))(v96, v155);
    (*(v178 + 56))(v91, 1, 1, v90);
    v221 = v201;
    v222 = v100;
    swift_getWitnessTable();
  }

  else
  {
    v101 = v154;
    (*(v97 + 32))(v154, v96, v98);
    sub_213F4E060();
    sub_213F27F94();
    v102 = v157;
    v103 = v201;
    sub_213F4E7D0();
    (*(v97 + 8))(v101, v98);
    v206 = v103;
    v207 = v100;
    WitnessTable = swift_getWitnessTable();
    v105 = v156;
    sub_213DBFEEC(v102, v90, WitnessTable);
    v106 = v178;
    v107 = *(v178 + 8);
    v107(v102, v90);
    sub_213DBFEEC(v105, v90, WitnessTable);
    v91 = v205;
    v107(v105, v90);
    (*(v106 + 32))(v91, v102, v90);
    (*(v106 + 56))(v91, 0, 1, v90);
  }

  v108 = v192;
  sub_213F43E1C(v91, v196);
  v109 = *(v193 + 8);
  v192 = (v193 + 8);
  v190 = v109;
  v109(v91, v199);
  if (*(v200 + v108[10]) == 1)
  {
    v110 = v108;
    v111 = v160;
    v112 = v159;
    (*(v160 + 16))(v159, v191, v93);
    v113 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v114 = swift_allocObject();
    v115 = v201;
    *(v114 + 16) = v98;
    *(v114 + 24) = v115;
    (*(v111 + 32))(v114 + v113, v112, v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9648, &unk_213F58500);
    sub_213E3D854();
    v116 = v161;
    sub_213F4EB00();
    v117 = v165;
    sub_213F4DC90();
    sub_213DE3AE4(&qword_281182788, &qword_27C8FC818, &qword_213F64868);
    sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8]);
    v118 = v166;
    v119 = v164;
    v120 = v169;
    sub_213F4E3B0();
    (*(v167 + 8))(v117, v120);
    (*(v162 + 8))(v116, v119);
    v121 = sub_213F4E060();
    sub_213F27F94();
    sub_213F4CDA0();
    v122 = &v118[*(v163 + 36)];
    *v122 = v121;
    *(v122 + 1) = v123;
    *(v122 + 2) = v124;
    *(v122 + 3) = v125;
    *(v122 + 4) = v126;
    v122[40] = 0;
    v127 = sub_213F4E070();
    if (*(*(v200 + v110[11]) + 16))
    {
      sub_213F27F94();
    }

    sub_213F4CDA0();
    v131 = v130;
    v133 = v132;
    v135 = v134;
    v137 = v136;
    v138 = v118;
    v139 = v171;
    sub_213DE2B44(v138, v171, &qword_27C8FC820, &qword_213F64870);
    v140 = v139 + *(v170 + 36);
    *v140 = v127;
    *(v140 + 8) = v131;
    *(v140 + 16) = v133;
    *(v140 + 24) = v135;
    *(v140 + 32) = v137;
    *(v140 + 40) = 0;
    strcpy(v217, "PreviewRoute");
    BYTE5(v217[1]) = 0;
    HIWORD(v217[1]) = -5120;
    MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);
    sub_213F3C7A0();
    v141 = v168;
    sub_213F4E6D0();

    sub_213DE36FC(v139, &qword_27C8FC828, &qword_213F64878);
    v142 = v141;
    v129 = v186;
    sub_213DE2B44(v142, v186, &qword_27C8FC830, &qword_213F64880);
    v128 = 0;
  }

  else
  {
    v128 = 1;
    v129 = v186;
  }

  (*(v182 + 56))(v129, v128, 1, v184);
  v143 = v202;
  sub_213DE3164(v194, v202, &qword_27C8FC4B8, &qword_213F63DD0);
  v217[0] = v143;
  v144 = v195;
  v145 = v197;
  sub_213DE3164(v195, v197, &qword_27C8FC4C0, &qword_213F63DD8);
  v217[1] = v145;
  v146 = v183;
  sub_213DE3164(v204, v183, &qword_27C8FC4C0, &qword_213F63DD8);
  v218 = v146;
  v147 = v205;
  v148 = v196;
  v149 = v199;
  (*(v193 + 16))(v205, v196, v199);
  v219 = v147;
  v150 = v187;
  sub_213DE3164(v129, v187, &qword_27C8FC4C8, &unk_213F63DE0);
  v220 = v150;
  v216[0] = v203;
  v216[1] = v179;
  v216[2] = v179;
  v216[3] = v149;
  v216[4] = v185;
  v211 = sub_213F3C6EC(&qword_281183118, &qword_27C8FC4B8, &qword_213F63DD0, sub_213F3C500);
  v212 = sub_213F3C58C();
  v213 = v212;
  v209 = v201;
  v210 = MEMORY[0x277CDF918];
  v208 = swift_getWitnessTable();
  v214 = swift_getWitnessTable();
  v215 = sub_213F3C63C();
  sub_213E95270(v217, 5uLL, v216);
  sub_213DE36FC(v129, &qword_27C8FC4C8, &unk_213F63DE0);
  v151 = v190;
  v190(v148, v149);
  sub_213DE36FC(v204, &qword_27C8FC4C0, &qword_213F63DD8);
  sub_213DE36FC(v144, &qword_27C8FC4C0, &qword_213F63DD8);
  sub_213DE36FC(v194, &qword_27C8FC4B8, &qword_213F63DD0);
  sub_213DE36FC(v150, &qword_27C8FC4C8, &unk_213F63DE0);
  v151(v205, v149);
  sub_213DE36FC(v146, &qword_27C8FC4C0, &qword_213F63DD8);
  sub_213DE36FC(v197, &qword_27C8FC4C0, &qword_213F63DD8);
  return sub_213DE36FC(v202, &qword_27C8FC4B8, &qword_213F63DD0);
}

uint64_t sub_213F2BDF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4CB60();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_213F4F210();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = sub_213F4E8B0();
  sub_213F4F200();
  (*(v5 + 16))(v9, v11, v4);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v13 = qword_281182518;
  sub_213F4CB50();
  v14 = sub_213F4F260();
  v16 = v15;
  (*(v5 + 8))(v11, v4);
  v31 = v14;
  v32 = v16;
  sub_213DBC9EC();
  v17 = sub_213F4E310();
  v19 = v18;
  v21 = v20;
  v31 = v12;
  v22 = sub_213F4E2B0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_213DBCA40(v17, v19, v21 & 1);

  result = swift_getKeyPath();
  *a1 = v22;
  *(a1 + 8) = v24;
  *(a1 + 16) = v26 & 1;
  *(a1 + 24) = v28;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_213F2C098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  swift_getOpaqueTypeConformance2();
  v19[15] = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v6 = sub_213DE295C();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8);
  v19[14] = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v19[12] = OpaqueTypeConformance2;
  v19[13] = v6;
  v7 = swift_getOpaqueTypeConformance2();
  v19[10] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v19[11] = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  v19[8] = v7;
  v19[9] = swift_getOpaqueTypeConformance2();
  v19[7] = swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_213F4EBC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  sub_213F4DA50();
  v19[4] = v3;
  v19[5] = v4;
  v19[6] = v19[0];
  sub_213F4EBB0();
  WitnessTable = swift_getWitnessTable();
  sub_213DBFEEC(v13, v8, WitnessTable);
  v17 = *(v9 + 8);
  v17(v13, v8);
  sub_213DBFEEC(v15, v8, WitnessTable);
  return (v17)(v15, v8);
}

uint64_t sub_213F2C504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a1;
  v56 = a4;
  v51 = a2;
  v52 = a3;
  v4 = type metadata accessor for RoutePlanningCell();
  v47 = *(v4 - 8);
  v55 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  v49 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  v8 = sub_213F4F6B0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  v10 = sub_213F39294();
  v61 = v9;
  v62 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v61 = v7;
  v62 = v8;
  v63 = OpaqueTypeConformance2;
  v64 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = OpaqueTypeMetadata2;
  v61 = v7;
  v62 = v8;
  v63 = OpaqueTypeConformance2;
  v64 = v12;
  v14 = swift_getOpaqueTypeConformance2();
  v44 = v14;
  v43 = sub_213DE295C();
  v61 = OpaqueTypeMetadata2;
  v62 = &type metadata for CarGestureRepresentable;
  v63 = v14;
  v64 = v43;
  v42[2] = MEMORY[0x277CDEEC8];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  v15 = sub_213F4DBB0();
  v46 = v15;
  v48 = sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8);
  v61 = v6;
  v62 = MEMORY[0x277D83B88];
  v63 = v15;
  v64 = v48;
  v65 = MEMORY[0x277D83B98];
  v16 = sub_213F4ECE0();
  v50 = *(v16 - 8);
  v17 = *(v50 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v42 - v21;
  v23 = v4;
  v24 = v54;
  v25 = v54 + *(v4 + 44);
  v26 = type metadata accessor for RoutePlanningCellViewModel(0);
  v60 = sub_213EAA460(*(v25 + *(v26 + 44)));
  v42[1] = swift_getKeyPath();
  v27 = v47;
  v28 = v53;
  (*(v47 + 16))(v53, v24, v23);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  v32 = v51;
  v31 = v52;
  *(v30 + 16) = v51;
  *(v30 + 24) = v31;
  (*(v27 + 32))(v30 + v29, v28, v23);
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = v31;
  v33[4] = sub_213F3BBBC;
  v33[5] = v30;
  v61 = v45;
  v62 = &type metadata for CarGestureRepresentable;
  v63 = v44;
  v64 = v43;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v36 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  v61 = v35;
  v62 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v58 = v34;
  v59 = v37;
  v41 = swift_getWitnessTable();
  sub_213F4ECC0();
  v57 = v41;
  v38 = swift_getWitnessTable();
  sub_213DBFEEC(v20, v16, v38);
  v39 = *(v50 + 8);
  v39(v20, v16);
  sub_213DBFEEC(v22, v16, v38);
  return (v39)(v22, v16);
}

uint64_t sub_213F2CAFC@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v100 = a4;
  v102 = a3;
  v111 = a5;
  v112 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4F8, &qword_213F63E18);
  v99 = *(v6 - 8);
  v7 = *(v99 + 64);
  MEMORY[0x28223BE20](v6);
  v98 = &v82[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4E8, &qword_213F63E08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v91 = &v82[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4E0, &qword_213F63E00);
  v95 = *(v12 - 8);
  v13 = *(v95 + 64);
  MEMORY[0x28223BE20](v12);
  v94 = &v82[-v14];
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  v15 = sub_213F4F6B0();
  v16 = sub_213F39294();
  v92 = v9;
  v116 = v9;
  v117 = v16;
  v86 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v116 = v12;
  v117 = v15;
  v118 = OpaqueTypeConformance2;
  v119 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v90 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v90 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v89 = &v82[-v21];
  v85 = v12;
  v116 = v12;
  v117 = v15;
  v84 = v15;
  v88 = OpaqueTypeConformance2;
  v118 = OpaqueTypeConformance2;
  v119 = v18;
  v87 = v18;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_213DE295C();
  v108 = v22;
  v109 = OpaqueTypeMetadata2;
  v116 = OpaqueTypeMetadata2;
  v117 = &type metadata for CarGestureRepresentable;
  v118 = v22;
  v119 = v23;
  v107 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v96 = *(v24 - 8);
  v25 = *(v96 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v93 = &v82[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v97 = &v82[-v28];
  v29 = sub_213F4D290();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v82[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32);
  v36 = &v82[-v35];
  v103 = v24;
  v110 = v6;
  v37 = sub_213F4DBB0();
  v105 = *(v37 - 8);
  v106 = v37;
  v38 = *(v105 + 64);
  MEMORY[0x28223BE20](v37);
  v104 = &v82[-v39];
  v41 = *a1;
  v40 = *(a1 + 8);
  v42 = *(a1 + 16);
  v101 = *(a1 + 24);
  v43 = *(a1 + 25);
  v44 = v112;
  v45 = type metadata accessor for RoutePlanningCell();
  v46 = &v44[*(v45 + 72)];
  if (!*v46 || !v43)
  {
    goto LABEL_6;
  }

  v102 = *v46;
  v100 = v46[1];

  sub_213F2732C(v36);
  sub_213F4D280();
  v83 = sub_213F4D270();
  v47 = *(v30 + 8);
  v47(v34, v29);
  v47(v36, v29);
  if ((v83 & 1) == 0)
  {
    sub_213DD7558(v102);
LABEL_6:
    v116 = v41;
    v117 = v40;
    v118 = v42;
    LOBYTE(v119) = v101;
    BYTE1(v119) = v43;
    v71 = v98;
    sub_213F28954(&v116, v45, v98);
    v61 = v108;
    v60 = v109;
    v116 = v109;
    v117 = &type metadata for CarGestureRepresentable;
    v118 = v108;
    v62 = v107;
    v119 = v107;
    swift_getOpaqueTypeConformance2();
    v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
    v73 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
    v116 = v72;
    v117 = v73;
    swift_getOpaqueTypeConformance2();
    v70 = v104;
    v74 = v110;
    sub_213DBFF2C(v71, v103, v110);
    (*(v99 + 8))(v71, v74);
    goto LABEL_7;
  }

  v116 = v41;
  v117 = v40;
  v48 = v40;
  v118 = v42;
  v49 = v101;
  LOBYTE(v119) = v101;
  BYTE1(v119) = 1;
  v50 = v91;
  sub_213F28954(&v116, v45, v91);
  v50[*(v92 + 36)] = 0;
  v51 = v94;
  sub_213F4E840();
  sub_213DE36FC(v50, &qword_27C8FC4E8, &qword_213F63E08);
  v116 = sub_213F27BB4(v45);
  v117 = v52;
  LOBYTE(v118) = v53;
  v113 = 2;
  swift_checkMetadataState();
  v54 = v89;
  v55 = v85;
  sub_213F4E770();

  (*(v95 + 8))(v51, v55);
  v56 = swift_allocObject();
  v57 = v102;
  *(v56 + 16) = v102;
  *(v56 + 24) = v100;
  *(v56 + 32) = v41;
  *(v56 + 40) = v48;
  *(v56 + 48) = v42;
  *(v56 + 56) = v49;
  *(v56 + 57) = 1;
  v116 = sub_213F3BC90;
  v117 = v56;
  sub_213DD74C4(v57);
  v58 = v41;

  v59 = v93;
  v61 = v108;
  v60 = v109;
  v62 = v107;
  sub_213F4E7A0();

  (*(v90 + 8))(v54, v60);
  v116 = v60;
  v117 = &type metadata for CarGestureRepresentable;
  v118 = v61;
  v119 = v62;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v97;
  v65 = v103;
  sub_213DBFEEC(v59, v103, v63);
  v112 = *(v96 + 8);
  (v112)(v59, v65);
  sub_213DBFEEC(v64, v65, v63);
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v67 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  v116 = v66;
  v117 = v67;
  swift_getOpaqueTypeConformance2();
  v68 = v104;
  sub_213E95440(v59, v65);
  sub_213DD7558(v102);
  v69 = v112;
  (v112)(v59, v65);
  (v69)(v97, v65);
  v70 = v68;
LABEL_7:
  v116 = v60;
  v117 = &type metadata for CarGestureRepresentable;
  v118 = v61;
  v119 = v62;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v77 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  v116 = v76;
  v117 = v77;
  v78 = swift_getOpaqueTypeConformance2();
  v114 = v75;
  v115 = v78;
  v79 = v106;
  v80 = swift_getWitnessTable();
  sub_213DBFEEC(v70, v79, v80);
  return (*(v105 + 8))(v70, v79);
}

double sub_213F2D658()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_213F2732C(&v11 - v6);
  sub_213F4D280();
  v8 = sub_213F4D270();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  result = 0.0;
  if (v8)
  {
    return 8.0;
  }

  return result;
}

double sub_213F2D784()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_213F2732C(&v11 - v6);
  sub_213F4D280();
  v8 = sub_213F4D270();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  result = 8.0;
  if (v8)
  {
    return 5.0;
  }

  return result;
}

uint64_t sub_213F2D8B0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7F0, &qword_213F64840);
  v4 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v150 = &v123 - v5;
  v146 = sub_213F4DCA0();
  v130 = *(v146 - 8);
  v6 = *(v130 + 64);
  MEMORY[0x28223BE20](v146);
  v129 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7E8, &qword_213F64838);
  v128 = *(v144 - 8);
  v8 = *(v128 + 64);
  MEMORY[0x28223BE20](v144);
  v126 = &v123 - v9;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7F8, &qword_213F64848);
  v133 = *(v145 - 8);
  v10 = *(v133 + 64);
  MEMORY[0x28223BE20](v145);
  v131 = &v123 - v11;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC800, &qword_213F64850);
  v12 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v143 = &v123 - v13;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7C8, &qword_213F64818);
  v14 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v125 = &v123 - v15;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7C0, &qword_213F64810);
  v16 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v127 = &v123 - v17;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC808, &qword_213F64858);
  v134 = *(v142 - 8);
  v18 = *(v134 + 64);
  MEMORY[0x28223BE20](v142);
  v132 = &v123 - v19;
  v138 = sub_213F4D290();
  v137 = *(v138 - 8);
  v20 = *(v137 + 64);
  v21 = MEMORY[0x28223BE20](v138);
  v136 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v135 = &v123 - v23;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7B8, &qword_213F64808);
  v24 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v141 = &v123 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7B0, &qword_213F64800);
  v161 = *(v26 - 8);
  v162 = v26;
  v27 = *(v161 + 64);
  MEMORY[0x28223BE20](v26);
  v147 = &v123 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7A8, &qword_213F647F8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v160 = &v123 - v31;
  v158 = sub_213F4D390();
  v156 = *(v158 - 8);
  v32 = *(v156 + 64);
  MEMORY[0x28223BE20](v158);
  v154 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for RoutePlanningCellPrimaryActionLabel(0);
  v35 = *(*(v34 - 1) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = (&v123 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC810, &qword_213F64860);
  v159 = *(v164 - 8);
  v38 = *(v159 + 64);
  MEMORY[0x28223BE20](v164);
  v152 = &v123 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7D8, &qword_213F64828);
  v41 = *(v40 - 8);
  v157 = v40 - 8;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v153 = &v123 - v43;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7D0, &qword_213F64820);
  v44 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165 - 8);
  v46 = &v123 - v45;
  v151 = v2 + a1[11];
  v47 = v151;
  v155 = *(type metadata accessor for RoutePlanningCellViewModel(0) + 32);
  v48 = *(v47 + v155);
  v49 = *(v2 + a1[12]);
  v50 = v2;
  v51 = sub_213F27A24(a1) == 1;
  LOBYTE(v47) = *(v50 + a1[13]);
  *v37 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v52 = v34[5];
  *(v37 + v52) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v53 = v46;
  swift_storeEnumTagMultiPayload();
  *(v37 + v34[6]) = v48;
  *(v37 + v34[7]) = v49;
  *(v37 + v34[8]) = v51;
  *(v37 + v34[9]) = v47;
  v54 = v50;
  v55 = v156;
  v56 = v154;
  v57 = v158;
  (*(v156 + 104))(v154, *MEMORY[0x277CDF9E8], v158);
  sub_213F39194(qword_281183A78, type metadata accessor for RoutePlanningCellPrimaryActionLabel);
  v58 = v152;
  sub_213F4E560();
  (*(v55 + 8))(v56, v57);
  sub_213F3C414(v37, type metadata accessor for RoutePlanningCellPrimaryActionLabel);
  LOBYTE(v57) = sub_213F4E080();
  sub_213F2D784();
  sub_213F4CDA0();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v153;
  (*(v159 + 32))(v153, v58, v164);
  v68 = v151;
  v69 = v67 + *(v157 + 44);
  *v69 = v57;
  *(v69 + 8) = v60;
  *(v69 + 16) = v62;
  *(v69 + 24) = v64;
  *(v69 + 32) = v66;
  *(v69 + 40) = 0;
  LOBYTE(v57) = sub_213F4E0B0();
  sub_213F2D658();
  sub_213F4CDA0();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  sub_213DE2B44(v67, v53, &qword_27C8FC7D8, &qword_213F64828);
  v78 = *(v165 + 36);
  v164 = v53;
  v79 = v53 + v78;
  v80 = v155;
  *v79 = v57;
  *(v79 + 8) = v71;
  *(v79 + 16) = v73;
  *(v79 + 24) = v75;
  *(v79 + 32) = v77;
  *(v79 + 40) = 0;
  if (*(v68 + v80))
  {
    v81 = (v54 + a1[16]);
    v82 = *v81;
    if (*v81)
    {
      v83 = v81[1];

      v84 = v135;
      sub_213F2732C(v135);
      v85 = v136;
      sub_213F4D280();
      v86 = sub_213F4D270();
      v87 = *(v137 + 8);
      v88 = v85;
      v89 = v138;
      v87(v88, v138);
      v87(v84, v89);
      v158 = v83;
      v159 = v82;
      if (v86)
      {
        v90 = sub_213F4E050();
        v91 = v125;
        sub_213DE3164(v164, v125, &qword_27C8FC7D0, &qword_213F64820);
        v92 = v91 + *(v124 + 36);
        *v92 = v90;
        *(v92 + 8) = 0x4024000000000000;
        v93 = *(v68 + v80);
        if (v93 > 2)
        {
          if (v93 == 3)
          {
            v94 = 0xEB00000000657475;
            v95 = 0x6F526D6F74737543;
          }

          else if (v93 == 4)
          {
            v94 = 0xED00006E65704F65;
            v95 = 0x7261685365646952;
          }

          else
          {
            v94 = 0xEA00000000006E6FLL;
            v95 = 0x747475426F666E49;
          }
        }

        else if (*(v68 + v80))
        {
          if (v93 == 1)
          {
            v94 = 0xE200000000000000;
            v95 = 28487;
          }

          else
          {
            v94 = 0xE500000000000000;
            v95 = 0x7370657453;
          }
        }

        else
        {
          v94 = 0xE400000000000000;
          v95 = 1701736270;
        }

        v166 = v95;
        v167 = v94;

        MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);

        sub_213F3C1E4();
        v112 = v127;
        sub_213F4E6D0();

        sub_213DE36FC(v91, &qword_27C8FC7C8, &qword_213F64818);
        v113 = swift_allocObject();
        *(v113 + 16) = v82;
        *(v113 + 24) = v83;
        v166 = sub_213F3C4AC;
        v167 = v113;
        v114 = sub_213F3C6EC(&qword_281182D98, &qword_27C8FC7C0, &qword_213F64810, sub_213F3C1E4);
        v115 = sub_213DE295C();

        v116 = v132;
        v117 = v139;
        sub_213F4E7A0();

        sub_213DE36FC(v112, &qword_27C8FC7C0, &qword_213F64810);
        v118 = v134;
        v119 = v142;
        (*(v134 + 16))(v143, v116, v142);
        swift_storeEnumTagMultiPayload();
        v166 = v117;
        v167 = &type metadata for CarGestureRepresentable;
        v168 = v114;
        v169 = v115;
        swift_getOpaqueTypeConformance2();
        v120 = sub_213DE3AE4(&qword_281182770, &qword_27C8FC7E8, &qword_213F64838);
        v121 = sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8]);
        v166 = v144;
        v167 = v146;
        v168 = v120;
        v169 = v121;
        swift_getOpaqueTypeConformance2();
        v111 = v141;
        sub_213F4DBA0();
        (*(v118 + 8))(v116, v119);
      }

      else
      {
        v99 = swift_allocObject();
        *(v99 + 16) = v82;
        *(v99 + 24) = v83;
        MEMORY[0x28223BE20](v99);
        *(&v123 - 2) = v164;
        sub_213F3C29C();

        v100 = v126;
        sub_213F4EB00();
        v101 = v129;
        sub_213F4DC90();
        v102 = sub_213DE3AE4(&qword_281182770, &qword_27C8FC7E8, &qword_213F64838);
        v103 = sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8]);
        v104 = v131;
        v105 = v144;
        v106 = v146;
        sub_213F4E3B0();
        (*(v130 + 8))(v101, v106);
        (*(v128 + 8))(v100, v105);
        v107 = v133;
        v108 = v145;
        (*(v133 + 16))(v143, v104, v145);
        swift_storeEnumTagMultiPayload();
        v109 = sub_213F3C6EC(&qword_281182D98, &qword_27C8FC7C0, &qword_213F64810, sub_213F3C1E4);
        v110 = sub_213DE295C();
        v166 = v139;
        v167 = &type metadata for CarGestureRepresentable;
        v168 = v109;
        v169 = v110;
        swift_getOpaqueTypeConformance2();
        v166 = v105;
        v167 = v106;
        v168 = v102;
        v169 = v103;
        swift_getOpaqueTypeConformance2();
        v111 = v141;
        sub_213F4DBA0();
        (*(v107 + 8))(v104, v108);
      }

      sub_213DE3164(v111, v150, &qword_27C8FC7B8, &qword_213F64808);
      swift_storeEnumTagMultiPayload();
      sub_213F3C01C();
      sub_213F3C29C();
      v98 = v147;
      sub_213F4DBA0();
      sub_213DD7558(v159);
      sub_213DE36FC(v111, &qword_27C8FC7B8, &qword_213F64808);
    }

    else
    {
      sub_213DE3164(v164, v150, &qword_27C8FC7D0, &qword_213F64820);
      swift_storeEnumTagMultiPayload();
      sub_213F3C01C();
      sub_213F3C29C();
      v98 = v147;
      sub_213F4DBA0();
    }

    v97 = v160;
    sub_213DE2B44(v98, v160, &qword_27C8FC7B0, &qword_213F64800);
    v96 = 0;
  }

  else
  {
    v96 = 1;
    v97 = v160;
  }

  (*(v161 + 56))(v97, v96, 1, v162);
  sub_213DE2B44(v97, v163, &qword_27C8FC7A8, &qword_213F647F8);
  return sub_213DE36FC(v164, &qword_27C8FC7D0, &qword_213F64820);
}

uint64_t sub_213F2EB90(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_281183558 != -1)
  {
    swift_once();
  }

  v3 = sub_213F4CC40();
  __swift_project_value_buffer(v3, qword_28118EDE0);
  v4 = sub_213F4CC20();
  v5 = sub_213F4F510();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_213DBA000, v4, v5, "CarPlay route planning cell tapped", v6, 2u);
    MEMORY[0x2160533A0](v6, -1, -1);
  }

  return a2();
}

uint64_t sub_213F2EC84(uint64_t (*a1)(void))
{
  if (qword_281183558 != -1)
  {
    swift_once();
  }

  v2 = sub_213F4CC40();
  __swift_project_value_buffer(v2, qword_28118EDE0);
  v3 = sub_213F4CC20();
  v4 = sub_213F4F510();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_213DBA000, v3, v4, "iOS route planning cell tapped", v5, 2u);
    MEMORY[0x2160533A0](v5, -1, -1);
  }

  return a1();
}

uint64_t sub_213F2ED78(uint64_t a1)
{
  sub_213F4DA50();
  sub_213F28828();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_213DE295C();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8);
  sub_213F4ECE0();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  return sub_213F4EBB0();
}

uint64_t sub_213F2F2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v57 = a2;
  v63 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v6 = sub_213DE295C();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8);
  v77 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v7 = a1;
  v75 = OpaqueTypeConformance2;
  v76 = v6;
  v8 = swift_getOpaqueTypeConformance2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v58 = MEMORY[0x277CE1138];
  v73 = v9;
  v74 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  v72[3] = v8;
  v72[4] = swift_getOpaqueTypeConformance2();
  v72[2] = swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = sub_213F4EBC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v53 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v52 - v15;
  v64 = v16;
  v61 = sub_213F4F6B0();
  v59 = *(v61 - 8);
  v17 = *(v59 + 64);
  v18 = MEMORY[0x28223BE20](v61);
  v65 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v60 = &v52 - v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v75 = v74;
  v21 = v57;
  sub_213F4D400();
  v76 = sub_213F4F6B0();
  v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v22 = sub_213F4EBC0();
  v23 = swift_getWitnessTable();
  v73 = v22;
  v74 = v23;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v24 = sub_213F4EB40();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v52 - v30;
  v66 = v21;
  v67 = v62;
  v68 = v7;
  sub_213F4D8A0();
  sub_213F4EB30();
  v32 = swift_getWitnessTable();
  v55 = v31;
  v54 = v32;
  sub_213DBFEEC(v29, v24, v32);
  v33 = v25;
  v34 = *(v25 + 8);
  v58 = v25 + 8;
  v56 = v34;
  v34(v29, v24);
  v35 = type metadata accessor for RoutePlanningCell();
  v36 = v7 + *(v35 + 44);
  if (*(*(v36 + *(type metadata accessor for RoutePlanningCellViewModel(0) + 44)) + 16))
  {
    v37 = v53;
    sub_213F2C098(v35, v53);
    v38 = v64;
    v39 = swift_getWitnessTable();
    v40 = v52;
    sub_213DBFEEC(v37, v38, v39);
    v41 = *(v11 + 8);
    v41(v37, v38);
    sub_213DBFEEC(v40, v38, v39);
    v41(v40, v38);
    v42 = v65;
    (*(v11 + 32))(v65, v37, v38);
    (*(v11 + 56))(v42, 0, 1, v38);
  }

  else
  {
    (*(v11 + 56))(v65, 1, 1, v64);
    swift_getWitnessTable();
  }

  v43 = v60;
  v44 = v65;
  sub_213F43E1C(v65, v60);
  v45 = v59;
  v46 = *(v59 + 8);
  v47 = v61;
  v46(v44, v61);
  v48 = *(v33 + 16);
  v49 = v55;
  v48(v29, v55, v24);
  v73 = v29;
  (*(v45 + 16))(v44, v43, v47);
  v74 = v44;
  v72[0] = v24;
  v72[1] = v47;
  v70 = v54;
  v69 = swift_getWitnessTable();
  v71 = swift_getWitnessTable();
  sub_213E95270(&v73, 2uLL, v72);
  v46(v43, v47);
  v50 = v56;
  v56(v49, v24);
  v46(v44, v47);
  return v50(v29, v24);
}