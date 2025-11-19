uint64_t NRSettings.deinit()
{
  v1 = OBJC_IVAR____TtC15NameRecognition10NRSettings__isNameRecognitionEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NRSettings.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15NameRecognition10NRSettings__isNameRecognitionEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25AE55794@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NRSettings();
  result = sub_25AEA1428();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for NRSettings()
{
  result = qword_27FA1DA40;
  if (!qword_27FA1DA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25AE55838()
{
  sub_25AE49B94();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AE559D8()
{
  v0 = type metadata accessor for EnrollmentCoordinator(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_25AE79BC4();
}

uint64_t sub_25AE55A10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25AEA18E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for OnboardingCoordinatorView();
  sub_25AE57C30(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25AEA1698();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_25AEA2498();
    v16 = sub_25AEA1A98();
    sub_25AEA1298();

    sub_25AEA18D8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_25AE55C00@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for OnboardingCoordinatorView() + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_25AE57B74;
  a2[1] = v6;
}

uint64_t sub_25AE55C80(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for OnboardingCoordinatorView() + 24));
  v7 = v6[1];

  *v6 = sub_25AE57B4C;
  v6[1] = v5;
  return result;
}

uint64_t OnboardingCoordinatorView.completionHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for OnboardingCoordinatorView() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for OnboardingCoordinatorView()
{
  result = qword_27FA1DB00;
  if (!qword_27FA1DB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OnboardingCoordinatorView.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OnboardingCoordinatorView() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t OnboardingCoordinatorView.init(completionHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_25AE559D8;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = type metadata accessor for OnboardingCoordinatorView();
  v7 = *(v6 + 20);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  result = swift_storeEnumTagMultiPayload();
  v9 = (a3 + *(v6 + 24));
  *v9 = a1;
  v9[1] = a2;
  return result;
}

uint64_t OnboardingCoordinatorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v2 = type metadata accessor for OnboardingCoordinatorView();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  type metadata accessor for EnrollmentCoordinator(0);
  sub_25AE570B0();
  sub_25AEA15D8();
  swift_getKeyPath();
  sub_25AEA16F8();

  v24 = v26;
  v25 = v27;
  v17 = v1;
  v14[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA50, &qword_25AEA4810);
  v14[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA58, &qword_25AEA4818);
  sub_25AE47F60(&qword_27FA1DA60, &qword_27FA1DA50, &qword_25AEA4810);
  sub_25AE47F60(&qword_27FA1DA68, &qword_27FA1DA50, &qword_25AEA4810);
  sub_25AE47F60(&qword_27FA1DA70, &qword_27FA1DA50, &qword_25AEA4810);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DA78, &qword_25AEA4820);
  v19 = &type metadata for EnrollmentCoordinator.NavigationStage;
  v20 = v18;
  v21 = sub_25AE57118();
  v22 = sub_25AE574EC();
  v23 = v21;
  swift_getOpaqueTypeConformance2();
  v7 = v15;
  sub_25AEA1748();
  sub_25AE57540(v1, v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v9 = swift_allocObject();
  sub_25AE575B0(v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAE8, &qword_25AEA4840) + 36));
  *v10 = sub_25AE57614;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  sub_25AE57540(v1, v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  sub_25AE575B0(v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAF0, &qword_25AEA4848);
  v13 = (v7 + *(result + 36));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = sub_25AE5762C;
  v13[3] = v11;
  return result;
}

uint64_t sub_25AE56220@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  *a2 = v5;
  return result;
}

uint64_t sub_25AE562A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  return sub_25AE79730();
}

uint64_t sub_25AE56320(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingCoordinatorView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25AE564B0(0, v8);
  sub_25AE57540(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25AE575B0(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA78, &qword_25AEA4820);
  sub_25AE57118();
  sub_25AE574EC();
  sub_25AEA1CC8();

  v10[2] = v8[2];
  v10[3] = v8[3];
  v11[0] = v9[0];
  *(v11 + 11) = *(v9 + 11);
  v10[0] = v8[0];
  v10[1] = v8[1];
  return sub_25AE57E78(v10);
}

double sub_25AE564B0@<D0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X8>)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v23 = *v2;
      v24 = v2[1];
      v25 = *(v2 + 16);
      type metadata accessor for EnrollmentCoordinator(0);
      sub_25AE570B0();
      sub_25AEA15C8();
      v26 = sub_25AEA16D8();
      v28 = v27;
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      sub_25AEA1E68();
      sub_25AEA1E68();
      *&v34 = v26;
      *(&v34 + 1) = v28;
      v35 = v53;
      *&v36 = v54;
      BYTE8(v36) = v53;
      *&v37 = *(&v53 + 1);
      BYTE8(v37) = sub_25AEA1568() & 1;
      *&v38 = v29;
      BYTE8(v38) = v30 & 1;
      v39 = 30;
      v55 = v36;
      v56 = v37;
      *v57 = v38;
      *&v57[16] = 30;
      v53 = v34;
      v54 = v35;
      v40 = 1;
      v57[24] = 1;
      sub_25AE4DE0C(&v34, &v48);
      sub_25AE572BC();
      sub_25AE57310();
      sub_25AEA19E8();
      v55 = v50;
      v56 = v51;
      *v57 = *v52;
      *&v57[9] = *&v52[9];
      v53 = v48;
      v54 = v49;
      v46 = 0;
      v57[25] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAA0, &qword_25AEA4830);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAC0, &qword_25AEA4838);
      sub_25AE57230();
      sub_25AE57364();
      sub_25AEA19E8();
      v55 = v43;
      v56 = v44;
      *v57 = v45[0];
      *&v57[10] = *(v45 + 10);
      v53 = v41;
      v54 = v42;
      v47 = 0;
      v57[26] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA90, &qword_25AEA4828);
      sub_25AE571A4();
      sub_25AE57498();
      sub_25AEA19E8();
      sub_25AE57EE0(&v34);
      goto LABEL_12;
    }

    v10 = *v2;
    v11 = v2[1];
    v12 = *(v2 + 16);
    type metadata accessor for EnrollmentCoordinator(0);
    sub_25AE570B0();
    sub_25AEA15C8();
    sub_25AEA16D8();
    v46 = 0;
    sub_25AE572BC();
    sub_25AE57310();

    sub_25AEA19E8();
    v47 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAA0, &qword_25AEA4830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAC0, &qword_25AEA4838);
    sub_25AE57230();
    sub_25AE57364();
    sub_25AEA19E8();
    v55 = v43;
    v56 = v44;
    *v57 = v45[0];
    *&v57[10] = *(v45 + 10);
    v53 = v41;
    v54 = v42;
    LOBYTE(v34) = 0;
    v57[26] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA90, &qword_25AEA4828);
    sub_25AE571A4();
    sub_25AE57498();
    sub_25AEA19E8();
LABEL_9:

LABEL_12:
    v55 = v50;
    v56 = v51;
    *v57 = *v52;
    *&v57[11] = *&v52[11];
    v53 = v48;
    v54 = v49;
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v13 = *v2;
    v14 = v2[1];
    v15 = *(v2 + 16);
    type metadata accessor for EnrollmentCoordinator(0);
    sub_25AE570B0();
    sub_25AEA15C8();
    v16 = sub_25AEA16D8();
    v18 = v17;
    sub_25AEA1E68();
    *&v48 = v16;
    *(&v48 + 1) = v18;
    *&v49 = v53;
    *(&v49 + 1) = *(&v53 + 1);
    *&v50 = 0;
    BYTE8(v50) = 0;
    sub_25AE573F0();
    sub_25AE57444();

    sub_25AEA19E8();
    v47 = BYTE8(v55);
    v46 = 1;
    v57[25] = 1;
    goto LABEL_8;
  }

  if (a1 == 3)
  {
    v4 = *v2;
    v5 = v2[1];
    v6 = *(v2 + 16);
    type metadata accessor for EnrollmentCoordinator(0);
    sub_25AE570B0();
    sub_25AEA15C8();
    v7 = sub_25AEA16D8();
    v9 = v8;
    sub_25AEA1E68();
    *&v48 = v7;
    *(&v48 + 1) = v9;
    v49 = v53;
    *&v50 = 3;
    BYTE8(v50) = 1;
    sub_25AE573F0();
    sub_25AE57444();

    sub_25AEA19E8();
    v47 = BYTE8(v55);
    v46 = 1;
    v57[25] = 1;
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAA0, &qword_25AEA4830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAC0, &qword_25AEA4838);
    sub_25AE57230();
    sub_25AE57364();
    sub_25AEA19E8();
    v55 = v43;
    v56 = v44;
    *v57 = v45[0];
    *&v57[10] = *(v45 + 10);
    v53 = v41;
    v54 = v42;
    LOBYTE(v34) = 0;
    v57[26] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA90, &qword_25AEA4828);
    sub_25AE571A4();
    sub_25AE57498();
    sub_25AEA19E8();

    goto LABEL_9;
  }

  v19 = *v2;
  v20 = v2[1];
  v21 = *(v2 + 16);
  type metadata accessor for EnrollmentCoordinator(0);
  sub_25AE570B0();
  sub_25AEA15C8();
  LOBYTE(v41) = 1;
  *&v48 = sub_25AEA16D8();
  *(&v48 + 1) = v22;
  v52[26] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA90, &qword_25AEA4828);
  sub_25AE571A4();
  sub_25AE57498();
  sub_25AEA19E8();
LABEL_13:
  v31 = v56;
  a2[2] = v55;
  a2[3] = v31;
  a2[4] = *v57;
  *(a2 + 75) = *&v57[11];
  result = *&v53;
  v33 = v54;
  *a2 = v53;
  a2[1] = v33;
  return result;
}

uint64_t sub_25AE56C38(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingCoordinatorView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  type metadata accessor for EnrollmentCoordinator(0);
  sub_25AE570B0();
  v8 = sub_25AEA15C8();
  sub_25AE57540(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_25AE575B0(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = (v8 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_dismissEnrollmentFlow);
  v12 = *(v8 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_dismissEnrollmentFlow + 8);
  *v11 = sub_25AE57B9C;
  v11[1] = v10;
}

uint64_t sub_25AE56D8C(uint64_t *a1)
{
  v14 = sub_25AEA1698();
  v2 = *(v14 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  type metadata accessor for EnrollmentCoordinator(0);
  sub_25AE570B0();
  v9 = *(sub_25AEA15C8() + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_wasNameRecognitinoEnabledBeforeOnboarding);

  if (v9 == 1)
  {
    if (qword_27FA1D230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    v10 = *(sub_25AEA15C8() + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_wasNameRecognitinoEnabledBeforeOnboarding);

    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v10;

    sub_25AEA1488();
    sub_25AEA2478();
    v11 = MEMORY[0x25F859F80]();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478();

    [v11 setNameRecognitionEnabled_];
  }

  sub_25AE55A10(v5);
  sub_25AEA1688();
  return (*(v2 + 8))(v5, v14);
}

uint64_t sub_25AE56FFC(uint64_t a1)
{
  if (qword_27FA1D270 != -1)
  {
    swift_once();
  }

  sub_25AE6A0A8(qword_27FA1E0F8, qword_27FA1E100);
  v2 = a1 + *(type metadata accessor for OnboardingCoordinatorView() + 24);
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_25AE570B0()
{
  result = qword_27FA1D438;
  if (!qword_27FA1D438)
  {
    type metadata accessor for EnrollmentCoordinator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D438);
  }

  return result;
}

unint64_t sub_25AE57118()
{
  result = qword_27FA1DA80;
  if (!qword_27FA1DA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DA78, &qword_25AEA4820);
    sub_25AE571A4();
    sub_25AE57498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DA80);
  }

  return result;
}

unint64_t sub_25AE571A4()
{
  result = qword_27FA1DA88;
  if (!qword_27FA1DA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DA90, &qword_25AEA4828);
    sub_25AE57230();
    sub_25AE57364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DA88);
  }

  return result;
}

unint64_t sub_25AE57230()
{
  result = qword_27FA1DA98;
  if (!qword_27FA1DA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DAA0, &qword_25AEA4830);
    sub_25AE572BC();
    sub_25AE57310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DA98);
  }

  return result;
}

unint64_t sub_25AE572BC()
{
  result = qword_27FA1DAA8;
  if (!qword_27FA1DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DAA8);
  }

  return result;
}

unint64_t sub_25AE57310()
{
  result = qword_27FA1DAB0;
  if (!qword_27FA1DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DAB0);
  }

  return result;
}

unint64_t sub_25AE57364()
{
  result = qword_27FA1DAB8;
  if (!qword_27FA1DAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DAC0, &qword_25AEA4838);
    sub_25AE573F0();
    sub_25AE57444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DAB8);
  }

  return result;
}

unint64_t sub_25AE573F0()
{
  result = qword_27FA1DAC8;
  if (!qword_27FA1DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DAC8);
  }

  return result;
}

unint64_t sub_25AE57444()
{
  result = qword_27FA1DAD0;
  if (!qword_27FA1DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DAD0);
  }

  return result;
}

unint64_t sub_25AE57498()
{
  result = qword_27FA1DAD8;
  if (!qword_27FA1DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DAD8);
  }

  return result;
}

unint64_t sub_25AE574EC()
{
  result = qword_27FA1DAE0;
  if (!qword_27FA1DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DAE0);
  }

  return result;
}

uint64_t sub_25AE57540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingCoordinatorView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE575B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingCoordinatorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE5767C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAF8, &qword_25AEA48A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25AE5775C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAF8, &qword_25AEA48A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_25AE57824()
{
  sub_25AE578C0();
  if (v0 <= 0x3F)
  {
    sub_25AE57924();
    if (v1 <= 0x3F)
    {
      sub_25AE5797C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25AE578C0()
{
  if (!qword_27FA1DB10)
  {
    type metadata accessor for EnrollmentCoordinator(255);
    sub_25AE570B0();
    v0 = sub_25AEA15E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1DB10);
    }
  }
}

void sub_25AE57924()
{
  if (!qword_27FA1DB18)
  {
    sub_25AEA1698();
    v0 = sub_25AEA15B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1DB18);
    }
  }
}

unint64_t sub_25AE5797C()
{
  result = qword_27FA1DB20;
  if (!qword_27FA1DB20)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FA1DB20);
  }

  return result;
}

unint64_t sub_25AE579D0()
{
  result = qword_27FA1DB28;
  if (!qword_27FA1DB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DAF0, &qword_25AEA4848);
    sub_25AE57A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DB28);
  }

  return result;
}

unint64_t sub_25AE57A5C()
{
  result = qword_27FA1DB30;
  if (!qword_27FA1DB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DAE8, &qword_25AEA4840);
    sub_25AE47F60(&qword_27FA1DB38, &qword_27FA1DB40, &qword_25AEA48D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DB30);
  }

  return result;
}

uint64_t sub_25AE57B14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE57B4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25AE57B74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25AE57BB4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OnboardingCoordinatorView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_25AE57C30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for OnboardingCoordinatorView();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_25AE575A8();
  v9 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_25AEA1698();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = *(v5 + *(v1 + 24) + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

double sub_25AE57DDC@<D0>(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for OnboardingCoordinatorView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  sub_25AE564B0(*a1, v10);
  v7 = v10[3];
  a2[2] = v10[2];
  a2[3] = v7;
  a2[4] = v11[0];
  *(a2 + 75) = *(v11 + 11);
  result = *v10;
  v9 = v10[1];
  *a2 = v10[0];
  a2[1] = v9;
  return result;
}

uint64_t sub_25AE57E78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA78, &qword_25AEA4820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

int *ErrorView.init(title:description:errorType:continueAction:finishLaterAction:onDismissAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = *a5;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ErrorView();
  v21 = (a9 + result[5]);
  *v21 = a1;
  v21[1] = a2;
  v22 = (a9 + result[6]);
  *v22 = a3;
  v22[1] = a4;
  *(a9 + result[7]) = v19;
  v23 = (a9 + result[8]);
  *v23 = a6;
  v23[1] = a7;
  v24 = (a9 + result[9]);
  *v24 = a8;
  v24[1] = a10;
  v25 = (a9 + result[10]);
  *v25 = a11;
  v25[1] = a12;
  return result;
}

uint64_t ErrorViewType.hashValue.getter()
{
  v1 = *v0;
  sub_25AEA28B8();
  MEMORY[0x25F85A3E0](v1);
  return sub_25AEA28D8();
}

uint64_t sub_25AE580C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25AEA18E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_25AE57C30(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25AEA1698();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_25AEA2498();
    v16 = sub_25AEA1A98();
    sub_25AEA1298();

    sub_25AEA18D8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t ErrorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ErrorView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_25AEA1988();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DB48, &qword_25AEA4970);
  sub_25AE583F8(v1, a1 + *(v6 + 44));
  sub_25AE598BC(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_25AE59924(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DB50, &qword_25AEA4978);
  v10 = (a1 + *(result + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_25AE59988;
  v10[3] = v8;
  return result;
}

uint64_t sub_25AE583F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[3] = a2;
  v3 = sub_25AEA1238();
  v4 = *(v3 - 8);
  v5 = v4;
  v6 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A8, &qword_25AEA3B18);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for ErrorView();
  v12 = *(v11 + 24);
  v13 = (a1 + *(v11 + 20));
  v14 = *v13;
  v20[0] = v13[1];
  v15 = *(a1 + v12 + 8);
  v20[1] = *(a1 + v12);
  v20[2] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3B8, &unk_25AEA4000);
  v16 = *(v4 + 72);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25AEA3540;

  sub_25AEA1228();
  v20[11] = v18;
  sub_25AE5A1D0(&qword_27FA1D3C0, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3C8, &qword_25AEA3B80);
  sub_25AE47F60(&qword_27FA1D3D0, &qword_27FA1D3C8, &qword_25AEA3B80);
  sub_25AEA2578();
  sub_25AEA1F38();
  (*(v5 + 8))(v8, v3);
  v20[10] = a1;
  v20[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DB98, &qword_25AEA4A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBA0, &qword_25AEA4A80);
  sub_25AE59E10();
  sub_25AE47F60(&qword_27FA1DBC0, &qword_27FA1DBA0, &qword_25AEA4A80);
  return sub_25AEA11F8();
}

double sub_25AE58754@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_25AEA1988();
  sub_25AE587D8(&v8);
  v3 = v9;
  v4 = v10;
  v7 = v8;
  v5 = sub_25AEA1AE8();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v7;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_25AE587D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D528, &qword_25AEA3D80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBF0, &qword_25AEA4AE8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  if (*(v1 + *(type metadata accessor for ErrorView() + 28)))
  {
    v11 = sub_25AEA1D88();
  }

  else
  {
    v11 = sub_25AEA1DD8();
  }

  sub_25AEA1E08();
  v12 = *MEMORY[0x277CE1020];
  v13 = sub_25AEA1E48();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v10, v12, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  v15 = sub_25AEA1E28();

  sub_25AE41938(v10, &qword_27FA1DBF0, &qword_25AEA4AE8);
  v16 = sub_25AEA1AF8();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = sub_25AEA1B28();

  sub_25AE41938(v6, &qword_27FA1D528, &qword_25AEA3D80);
  result = swift_getKeyPath();
  *a1 = v15;
  a1[1] = v11;
  a1[2] = result;
  a1[3] = v17;
  return result;
}

uint64_t sub_25AE58A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBA0, &qword_25AEA4A80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  *v8 = sub_25AEA1988();
  *(v8 + 1) = 0x4030000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBC8, &qword_25AEA4A90);
  sub_25AE58B68(a1, &v8[*(v9 + 44)]);
  sub_25AE59EC8(v8, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_25AE58B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v82 = a1;
  v2 = sub_25AEA1288();
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v2);
  v70 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBD0, &qword_25AEA4A98);
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  MEMORY[0x28223BE20](v5);
  v69 = &v65 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBD8, &qword_25AEA4AA0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v80 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v77 = &v65 - v12;
  v13 = sub_25AEA1278();
  v14 = *(v13 - 8);
  v74 = v13;
  v75 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v73 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ErrorView();
  v18 = v17 - 8;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D698, &qword_25AEA4080);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v65 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBE0, &qword_25AEA4AA8);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v76 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v65 - v31;
  sub_25AE598BC(v82, &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v67 = v20;
  v34 = swift_allocObject();
  v66 = v33;
  v68 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AE59924(v68, v34 + v33);
  sub_25AEA1EB8();
  v35 = v73;
  sub_25AEA1588();
  v36 = sub_25AE47F60(&qword_27FA1D690, &qword_27FA1D698, &qword_25AEA4080);
  sub_25AE5A1D0(&qword_27FA1DA00, MEMORY[0x277CE76F0]);
  v37 = v74;
  v65 = v36;
  sub_25AEA1C28();
  (*(v75 + 8))(v35, v37);
  v38 = *(v22 + 8);
  v73 = v25;
  v74 = v22 + 8;
  v75 = v21;
  v38(v25, v21);
  v39 = v38;
  v40 = v82;
  LOBYTE(v35) = *(v82 + *(v18 + 40)) == 0;
  KeyPath = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v35;
  v43 = *(v27 + 44);
  v44 = v32;
  v45 = &v32[v43];
  *v45 = KeyPath;
  v45[1] = sub_25AE59FC0;
  v45[2] = v42;
  if (*(v40 + *(v18 + 44)))
  {
    v46 = v68;
    sub_25AE598BC(v40, v68);
    v47 = v66;
    v48 = swift_allocObject();
    sub_25AE59924(v46, v48 + v47);
    v49 = v73;
    sub_25AEA1EB8();
    v50 = v70;
    sub_25AEA1598();
    sub_25AE5A1D0(&qword_27FA1DA10, MEMORY[0x277CE7708]);
    v51 = v69;
    v52 = v75;
    v53 = v72;
    sub_25AEA1C28();
    (*(v71 + 8))(v50, v53);
    v39(v49, v52);
    v55 = v77;
    v54 = v78;
    v56 = v79;
    (*(v78 + 32))(v77, v51, v79);
    v57 = 0;
    v58 = v56;
    v59 = v54;
  }

  else
  {
    v57 = 1;
    v59 = v78;
    v58 = v79;
    v55 = v77;
  }

  (*(v59 + 56))(v55, v57, 1, v58);
  v60 = v76;
  sub_25AE479E0(v44, v76, &qword_27FA1DBE0, &qword_25AEA4AA8);
  v61 = v80;
  sub_25AE479E0(v55, v80, &qword_27FA1DBD8, &qword_25AEA4AA0);
  v62 = v81;
  sub_25AE479E0(v60, v81, &qword_27FA1DBE0, &qword_25AEA4AA8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBE8, &qword_25AEA4AE0);
  sub_25AE479E0(v61, v62 + *(v63 + 48), &qword_27FA1DBD8, &qword_25AEA4AA0);
  sub_25AE41938(v55, &qword_27FA1DBD8, &qword_25AEA4AA0);
  sub_25AE41938(v44, &qword_27FA1DBE0, &qword_25AEA4AA8);
  sub_25AE41938(v61, &qword_27FA1DBD8, &qword_25AEA4AA0);
  return sub_25AE41938(v60, &qword_27FA1DBE0, &qword_25AEA4AA8);
}

uint64_t sub_25AE5932C(uint64_t a1)
{
  v2 = sub_25AEA1698();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AE580C8(v6);
  sub_25AEA1688();
  (*(v3 + 8))(v6, v2);
  result = type metadata accessor for ErrorView();
  v8 = a1 + *(result + 36);
  if (*v8)
  {
    v9 = *(v8 + 8);
    return (*v8)();
  }

  return result;
}

uint64_t sub_25AE59428@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_25AE59510(uint64_t a1)
{
  v2 = sub_25AEA1698();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AE580C8(v6);
  sub_25AEA1688();
  (*(v3 + 8))(v6, v2);
  result = type metadata accessor for ErrorView();
  v8 = a1 + *(result + 32);
  if (*v8)
  {
    v9 = *(v8 + 8);
    return (*v8)();
  }

  return result;
}

uint64_t sub_25AE5960C@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_25AE596E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_25AEA1988();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DB48, &qword_25AEA4970);
  sub_25AE583F8(v2, a2 + *(v6 + 44));
  sub_25AE598BC(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_25AE59924(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DB50, &qword_25AEA4978);
  v10 = (a2 + *(result + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_25AE5A274;
  v10[3] = v8;
  return result;
}

uint64_t type metadata accessor for ErrorView()
{
  result = qword_27FA1DB60;
  if (!qword_27FA1DB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AE598BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE59924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AE59990()
{
  result = qword_27FA1DB58;
  if (!qword_27FA1DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DB58);
  }

  return result;
}

uint64_t sub_25AE59A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAF8, &qword_25AEA48A8);
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

uint64_t sub_25AE59B04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DAF8, &qword_25AEA48A8);
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

void sub_25AE59BCC()
{
  sub_25AE57924();
  if (v0 <= 0x3F)
  {
    sub_25AE59C6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25AE59C6C()
{
  if (!qword_27FA1DB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DB78, &qword_25AEA4A68);
    v0 = sub_25AEA2538();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1DB70);
    }
  }
}

unint64_t sub_25AE59CD4()
{
  result = qword_27FA1DB80;
  if (!qword_27FA1DB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DB50, &qword_25AEA4978);
    sub_25AE47F60(&qword_27FA1DB88, &qword_27FA1DB90, &qword_25AEA4A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DB80);
  }

  return result;
}

uint64_t sub_25AE59D8C()
{
  v1 = type metadata accessor for ErrorView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 48) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

unint64_t sub_25AE59E10()
{
  result = qword_27FA1DBA8;
  if (!qword_27FA1DBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DB98, &qword_25AEA4A78);
    sub_25AE47F60(&qword_27FA1DBB0, &qword_27FA1DBB8, &qword_25AEA4A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DBA8);
  }

  return result;
}

uint64_t sub_25AE59EC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DBA0, &qword_25AEA4A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE59F50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AEA1848();
  *a1 = result;
  return result;
}

uint64_t sub_25AE59F7C(uint64_t *a1)
{
  v1 = *a1;

  return sub_25AEA1858();
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for ErrorView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25AEA1698();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5] + 8);

  v9 = *(v5 + v1[6] + 8);

  v10 = (v5 + v1[8]);
  if (*v10)
  {
    v11 = v10[1];
  }

  v12 = (v5 + v1[9]);
  if (*v12)
  {
    v13 = v12[1];
  }

  v14 = (v5 + v1[10]);
  if (*v14)
  {
    v15 = v14[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AE5A15C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ErrorView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_25AE5A1D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AE5A218@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AEA1848();
  *a1 = result;
  return result;
}

uint64_t sub_25AE5A244(uint64_t *a1)
{
  v1 = *a1;

  return sub_25AEA1858();
}

uint64_t sub_25AE5A280()
{
  type metadata accessor for AutomationService();
  v0 = swift_allocObject();
  if (qword_27FA1D278 != -1)
  {
    v1 = v0;
    swift_once();
    v0 = v1;
  }

  *(v0 + 16) = qword_27FA1E140;
  qword_27FA1DBF8 = v0;

  return MEMORY[0x2821F9840]();
}

uint64_t static AutomationService.shared.getter()
{
  if (qword_27FA1D238 != -1)
  {
    swift_once();
  }
}

uint64_t AutomationService.enableNameRecognition(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_25AE5A38C, 0, 0);
}

uint64_t sub_25AE5A38C()
{
  v1 = *(v0 + 48);
  *(v0 + 24) = sub_25AEA2478();
  v2 = MEMORY[0x25F859F80]();
  v3 = [v2 isNameRecognitionEnabled];

  if (v1 != v3)
  {
    if (*(v0 + 48) == 1)
    {
      v4 = *(*(v0 + 16) + 16);
      v5 = swift_task_alloc();
      *(v0 + 32) = v5;
      *v5 = v0;
      v5[1] = sub_25AE5A4C8;

      return NameRecognitionClient.enrolledNames()();
    }

    v7 = *(v0 + 24);
    v8 = MEMORY[0x25F859F80]();
    [v8 setNameRecognitionEnabled_];
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_25AE5A4C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_25AE5A614, 0, 0);
  }
}

uint64_t sub_25AE5A614()
{
  v1 = *(*(v0 + 40) + 16);

  if (v1)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 48);
    v5 = MEMORY[0x25F859F80](v2);
    [v5 setNameRecognitionEnabled_];
  }

  else
  {
    sub_25AE426AC();
    swift_allocError();
    *v7 = 12;
    *(v7 + 8) = 0xD000000000000033;
    *(v7 + 16) = 0x800000025AEA8A00;
    swift_willThrow();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t AutomationService.enroll(name:audioPaths:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_25AEA1178();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25AE5A830, 0, 0);
}

uint64_t sub_25AE5A830()
{
  sub_25AEA2478();
  v1 = MEMORY[0x25F859F80]();
  v2 = [v1 isNameRecognitionEnabled];

  if (v2)
  {
    v3 = MEMORY[0x25F859F80]();
    [v3 setNameRecognitionEnabled_];
  }

  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = type metadata accessor for EnrollmentCoordinator(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_25AE79BC4();
  v0[17] = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v0[5] = v6;
  v0[6] = v5;

  v39 = v10;
  sub_25AEA1488();
  v11 = *(v4 + 16);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_collectedEnrollments;
    v36 = v0[13];
    v37 = v0[14];
    v13 = v0[11];
    v35 = *MEMORY[0x277D79820];
    v33 = (v13 + 8);
    v34 = (v13 + 104);
    v14 = (v0[9] + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;

      v17 = sub_25AE6A858(v15, v16);
      v19 = v0[15];
      v18 = v0[16];
      (*v34)(v0[12], v35, v0[10]);
      v20 = sub_25AEA1168();
      v22 = v21;
      sub_25AEA0E38();
      *(v18 + *(v36 + 20)) = v17;
      v23 = (v18 + *(v36 + 24));
      *v23 = v20;
      v23[1] = v22;
      sub_25AE47A48(v18, v19);
      swift_beginAccess();
      v24 = *(v39 + v12);
      v38 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v39 + v12) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_25AE5B844(0, v24[2] + 1, 1, v24, &qword_27FA1DC18, &qword_25AEA4C00, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
        *(v39 + v12) = v24;
      }

      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v24 = sub_25AE5B844(v26 > 1, v27 + 1, 1, v24, &qword_27FA1DC18, &qword_25AEA4C00, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
      }

      v14 += 2;
      v28 = v0[15];
      v29 = v0[12];
      v30 = v0[10];
      v24[2] = v27 + 1;
      sub_25AE47A48(v28, v24 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v27);
      *(v39 + v12) = v24;
      swift_endAccess();

      (*v33)(v29, v30);
      --v11;
    }

    while (v11);
  }

  v31 = swift_task_alloc();
  v0[18] = v31;
  *v31 = v0;
  v31[1] = sub_25AE5AC24;

  return sub_25AE7C6D8();
}

uint64_t sub_25AE5AC24()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_25AE5ADC4;
  }

  else
  {
    v3 = sub_25AE5AD38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25AE5AD38()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25AE5ADC4()
{
  v1 = v0[17];

  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t AutomationService.listenForAudio(at:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25AE5AE70, 0, 0);
}

uint64_t sub_25AE5AE70()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_25AE5BB6C;
  v4 = v0[2];
  v3 = v0[3];

  return sub_25AE6C61C(v4, v3);
}

uint64_t sub_25AE5AF2C()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_25AE5BB70;

  return NameRecognitionClient.enrolledNames()();
}

uint64_t AutomationService.deleteName(with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25AE5AFE8, 0, 0);
}

uint64_t sub_25AE5AFE8()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_25AE5B088;
  v4 = v0[2];
  v3 = v0[3];

  return NameRecognitionClient.deleteName(with:)(v4, v3);
}

uint64_t sub_25AE5B088()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25AE5B19C()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_25AE5B234;

  return NameRecognitionClient.deleteAllNames()();
}

uint64_t sub_25AE5B234()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AutomationService.sendNotification(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25AE5B34C, 0, 0);
}

uint64_t sub_25AE5B34C()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_25AE5BB6C;
  v4 = v0[2];
  v3 = v0[3];

  return sub_25AE6D7DC(v4, v3);
}

uint64_t sub_25AE5B408()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_25AE5B49C;

  return sub_25AE6DC2C();
}

uint64_t sub_25AE5B49C(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t AutomationService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_25AE5B5F4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_25AE5B678(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

char *sub_25AE5B700(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC00, &qword_25AEA4BE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

size_t sub_25AE5B844(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_25AE5BA20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC08, &qword_25AEA4BF0);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_25AE5BBB4()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if ((v7 & 0xFE) == 4)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (v7 == 2)
  {
    v3 = 0xD00000000000001FLL;
  }

  else
  {
    v3 = 0xD000000000000020;
  }

  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC70, &qword_25AEA4D90);
  sub_25AEA1E78();
  if (v4 == v5)
  {
  }

  return v3;
}

double sub_25AE5BD80@<D0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = sub_25AEA1238();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v55 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A8, &qword_25AEA3B18);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC20, &qword_25AEA4CB0);
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v8);
  v59 = v54 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC28, &qword_25AEA4CB8);
  v11 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v58 = v54 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC30, &qword_25AEA4CC0);
  v13 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v64 = v54 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC38, &qword_25AEA4CC8);
  v15 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v68 = v54 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC40, &unk_25AEA4CD0);
  v66 = *(v69 - 8);
  v17 = *(v66 + 64);
  MEMORY[0x28223BE20](v69);
  v65 = v54 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25AEA3540;
  v62 = v1;
  v74[0] = *v1;
  v20 = *(&v74[0] + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  v63 = v20;
  sub_25AEA1478();

  v21 = v73[0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_25AE4172C();
  if (*(&v21 + 1))
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = 0xE000000000000000;
  if (*(&v21 + 1))
  {
    v23 = *(&v21 + 1);
  }

  *(v19 + 32) = v22;
  *(v19 + 40) = v23;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v24 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v25 = qword_27FA22788;
  }

  else
  {
    v25 = [objc_opt_self() mainBundle];
    v24 = 0;
  }

  v26 = v24;
  sub_25AEA0CC8();

  v54[2] = sub_25AEA21B8();
  v54[1] = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3B8, &unk_25AEA4000);
  v28 = *(v3 + 72);
  v29 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_25AEA3550;
  sub_25AEA1228();
  sub_25AEA1208();
  *&v73[0] = v30;
  sub_25AE618C0(&qword_27FA1D3C0, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3C8, &qword_25AEA3B80);
  sub_25AE47F60(&qword_27FA1D3D0, &qword_27FA1D3C8, &qword_25AEA3B80);
  v31 = v55;
  sub_25AEA2578();
  sub_25AEA1F38();
  v32 = (*(v3 + 8))(v31, v2);
  v55 = v54;
  v33 = MEMORY[0x28223BE20](v32);
  v34 = v62;
  MEMORY[0x28223BE20](v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC48, &qword_25AEA4D28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC50, &unk_25AEA4D30);
  sub_25AE47F60(&qword_27FA1DC58, &qword_27FA1DC48, &qword_25AEA4D28);
  sub_25AE47F60(&qword_27FA1DC60, &qword_27FA1DC50, &unk_25AEA4D30);
  v35 = v59;
  sub_25AEA11F8();
  v36 = v58;
  (*(v60 + 32))(v58, v35, v61);
  v37 = (v36 + *(v57 + 36));
  v39 = v63;
  v38 = v64;
  *v37 = sub_25AE602CC;
  v37[1] = v39;
  v37[2] = 0;
  v37[3] = 0;
  sub_25AE49BE4(v36, v38, &qword_27FA1DC28, &qword_25AEA4CB8);
  v40 = (v38 + *(v56 + 36));
  *v40 = 0;
  v40[1] = 0;
  v40[2] = sub_25AE602D4;
  v40[3] = v39;
  swift_beginAccess();
  v41 = v67;
  v42 = *(v67 + 52);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v43 = v68;
  sub_25AEA1448();
  swift_endAccess();
  v73[0] = v34[1];
  v44 = swift_allocObject();
  v45 = v34[1];
  *(v44 + 16) = *v34;
  *(v44 + 32) = v45;
  *(v44 + 48) = *(v34 + 4);
  v46 = swift_allocObject();
  *(v46 + 16) = sub_25AE602DC;
  *(v46 + 24) = v44;
  sub_25AE49BE4(v38, v43, &qword_27FA1DC30, &qword_25AEA4CC0);
  v47 = (v43 + *(v41 + 56));
  *v47 = sub_25AE6031C;
  v47[1] = v46;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AE479E0(v74, v72, &qword_27FA1DC68, &qword_25AEA4D88);
  sub_25AE479E0(v73, v72, &qword_27FA1DC70, &qword_25AEA4D90);
  sub_25AEA1478();

  v71 = v72[1];
  v48 = swift_allocObject();
  v49 = v34[1];
  *(v48 + 16) = *v34;
  *(v48 + 32) = v49;
  *(v48 + 48) = *(v34 + 4);
  sub_25AE479E0(v74, v72, &qword_27FA1DC68, &qword_25AEA4D88);
  sub_25AE479E0(v73, v72, &qword_27FA1DC70, &qword_25AEA4D90);
  sub_25AE47F60(&qword_27FA1DC78, &qword_27FA1DC38, &qword_25AEA4CC8);
  sub_25AE6044C();
  v50 = v65;
  sub_25AEA1D38();

  sub_25AE41938(v43, &qword_27FA1DC38, &qword_25AEA4CC8);
  LOBYTE(v44) = sub_25AEA1AB8();
  v51 = v70;
  (*(v66 + 32))(v70, v50, v69);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC88, &qword_25AEA4D98) + 36);
  *v52 = v44;
  result = 0.0;
  *(v52 + 8) = 0u;
  *(v52 + 24) = 0u;
  *(v52 + 40) = 1;
  return result;
}

uint64_t sub_25AE5C868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_25AEA1988();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DCB8, &qword_25AEA4E10);
  return sub_25AE5C8C0(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_25AE5C8C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DCC0, &qword_25AEA4E18);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 15];
  MEMORY[0x28223BE20](v6);
  v10 = &v30[-v9 - 15];
  v11 = *(a1 + 8);
  type metadata accessor for EnrollmentCoordinator(0);
  sub_25AE618C0(&qword_27FA1D438, type metadata accessor for EnrollmentCoordinator);
  swift_retain_n();
  v12 = sub_25AEA16D8();
  v14 = v13;
  sub_25AE5CBA8(v10);
  v15 = sub_25AEA16D8();
  v17 = v16;
  v18 = sub_25AEA1AB8();
  LOBYTE(v37[0]) = 1;
  sub_25AE479E0(v10, v8, &qword_27FA1DCC0, &qword_25AEA4E18);
  *a2 = v12;
  a2[1] = v14;
  a2[2] = 0x4040000000000000;
  a2[3] = 3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DCC8, &qword_25AEA4E20);
  sub_25AE479E0(v8, a2 + *(v19 + 48), &qword_27FA1DCC0, &qword_25AEA4E18);
  v20 = a2 + *(v19 + 64);
  *&v31 = v15;
  *(&v31 + 1) = v17;
  __asm { FMOV            V0.2D, #8.0 }

  v29 = _Q0;
  v32 = _Q0;
  *&v33 = 0x4054000000000000;
  BYTE8(v33) = v18;
  *(&v33 + 9) = *v30;
  HIDWORD(v33) = *&v30[3];
  v34 = 0u;
  v35 = 0u;
  v36 = 1;
  v20[80] = 1;
  v26 = v32;
  *v20 = v31;
  *(v20 + 1) = v26;
  v27 = v34;
  *(v20 + 2) = v33;
  *(v20 + 3) = v27;
  *(v20 + 4) = v35;

  sub_25AE479E0(&v31, v37, &qword_27FA1DCD0, &qword_25AEA4E28);
  sub_25AE41938(v10, &qword_27FA1DCC0, &qword_25AEA4E18);
  v37[0] = v15;
  v37[1] = v17;
  v38 = v29;
  v39 = 0x4054000000000000;
  v40 = v18;
  *v41 = *v30;
  *&v41[3] = *&v30[3];
  v42 = 0u;
  v43 = 0u;
  v44 = 1;
  sub_25AE41938(v37, &qword_27FA1DCD0, &qword_25AEA4E28);
  sub_25AE41938(v8, &qword_27FA1DCC0, &qword_25AEA4E18);
}

uint64_t sub_25AE5CBA8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DCD8, &qword_25AEA4E30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DCE0, &qword_25AEA4E38);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (v24 == 5 && (v13 = sub_25AE60A0C(), v14) || (swift_getKeyPath(), swift_getKeyPath(), sub_25AEA1478(), , , (v23 & 0xFE) != 4) && (v13 = sub_25AE5BBB4(), v15))
  {
    v22 = a1;
    *(&v22 - 4) = MEMORY[0x28223BE20](v13);
    *(&v22 - 3) = v16;
    *(&v22 - 2) = v17;
    *(&v22 - 1) = v18;
    sub_25AEA1258();
    sub_25AE618C0(&qword_27FA1DCF0, MEMORY[0x277CE76A8]);
    sub_25AEA1268();

    (*(v8 + 16))(v6, v11, v7);
    swift_storeEnumTagMultiPayload();
    sub_25AE47F60(&qword_27FA1DCF8, &qword_27FA1DCE0, &qword_25AEA4E38);
    a1 = v22;
    sub_25AEA19E8();
    (*(v8 + 8))(v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DCE8, &qword_25AEA4E40);
  return (*(*(v20 - 8) + 56))(a1, v19, 1, v20);
}

uint64_t sub_25AE5CFD0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v9 = a1[1];
  v10 = v4;
  v5 = swift_allocObject();
  v6 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 4);
  *a2 = 2;
  a2[1] = sub_25AE60504;
  a2[2] = v5;
  sub_25AE479E0(&v10, v8, &qword_27FA1DC68, &qword_25AEA4D88);
  return sub_25AE479E0(&v9, v8, &qword_27FA1DC70, &qword_25AEA4D90);
}

double sub_25AE5D07C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25AEA1988();
  v23 = 1;
  sub_25AE5D7F8(a1, &v13);
  v30 = v19;
  v31 = v20;
  v32[0] = v21[0];
  *(v32 + 9) = *(v21 + 9);
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v24 = v13;
  v25 = v14;
  v33[6] = v19;
  v33[7] = v20;
  v34[0] = v21[0];
  *(v34 + 9) = *(v21 + 9);
  v33[2] = v15;
  v33[3] = v16;
  v33[4] = v17;
  v33[5] = v18;
  v33[0] = v13;
  v33[1] = v14;
  sub_25AE479E0(&v24, &v12, &qword_27FA1DC90, &qword_25AEA4DA8);
  sub_25AE41938(v33, &qword_27FA1DC90, &qword_25AEA4DA8);
  *(&v22[3] + 7) = v27;
  *(&v22[2] + 7) = v26;
  *(&v22[6] + 7) = v30;
  *(&v22[7] + 7) = v31;
  *(&v22[8] + 7) = v32[0];
  v22[9] = *(v32 + 9);
  *(&v22[4] + 7) = v28;
  *(&v22[5] + 7) = v29;
  *(v22 + 7) = v24;
  *(&v22[1] + 7) = v25;
  v5 = v22[7];
  *(a2 + 113) = v22[6];
  *(a2 + 129) = v5;
  v6 = v22[9];
  *(a2 + 145) = v22[8];
  *(a2 + 161) = v6;
  v7 = v22[3];
  *(a2 + 49) = v22[2];
  *(a2 + 65) = v7;
  v8 = v22[5];
  *(a2 + 81) = v22[4];
  *(a2 + 97) = v8;
  result = *v22;
  v10 = v22[1];
  *(a2 + 17) = v22[0];
  v11 = v23;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 33) = v10;
  return result;
}

void sub_25AE5D280(uint64_t a1)
{
  sub_25AE7F854();
  sub_25AE7B478();
  v2 = *(a1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager);
  if (v2)
  {
    v3 = v2;
    sub_25AE502C8();
  }
}

uint64_t sub_25AE5D340(char a1, __int128 *a2)
{
  v36 = sub_25AEA20C8();
  v4 = *(v36 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v36);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_25AEA20E8();
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25AEA2108();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v20 = &v29 - v19;
  if (a1)
  {
    v21 = result;
    v33 = result;
    sub_25AE604A0();
    v31 = sub_25AEA24C8();
    sub_25AEA20F8();
    sub_25AEA2118();
    v22 = *(v13 + 8);
    v32 = v13 + 8;
    v34 = v22;
    v22(v17, v21);
    v23 = *a2;
    v39 = a2[1];
    v40 = v23;
    v24 = swift_allocObject();
    v25 = a2[1];
    *(v24 + 16) = *a2;
    *(v24 + 32) = v25;
    *(v24 + 48) = *(a2 + 4);
    aBlock[4] = sub_25AE4700C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25AE93330;
    aBlock[3] = &block_descriptor_4;
    v30 = _Block_copy(aBlock);
    sub_25AE479E0(&v40, v37, &qword_27FA1DC68, &qword_25AEA4D88);
    sub_25AE479E0(&v39, v37, &qword_27FA1DC70, &qword_25AEA4D90);

    sub_25AEA20D8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25AE618C0(&qword_27FA1D908, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D910, &qword_25AEA4DA0);
    v26 = v36;
    sub_25AE47F60(&qword_27FA1D918, &qword_27FA1D910, &qword_25AEA4DA0);
    sub_25AEA2578();
    v28 = v30;
    v27 = v31;
    MEMORY[0x25F859FD0](v20, v11, v7, v30);
    _Block_release(v28);

    (*(v4 + 8))(v7, v26);
    (*(v8 + 8))(v11, v35);
    return v34(v20, v33);
  }

  return result;
}

unsigned __int8 *sub_25AE5D760(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *result;
  v4 = *a2;
  if (v4 == 5)
  {
    if (v3 != 5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (v4 == 4)
    {
      if (v3 == 4)
      {
        return result;
      }

      goto LABEL_4;
    }

    if ((v3 & 0xFE) == 4 || v4 != v3)
    {
LABEL_4:
      v6 = *(a3 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC70, &qword_25AEA4D90);
      return sub_25AEA1E88();
    }
  }

  return result;
}

uint64_t sub_25AE5D7F8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v72[0] = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (BYTE1(v66) != 5 && ((swift_getKeyPath(), swift_getKeyPath(), sub_25AEA1478(), , , (BYTE1(v66) & 0xFE) == 4) || sub_25AE60780()))
  {
    v13 = 0;
    v47 = 0u;
    v48 = 0u;
    v14 = -1;
    v45 = 0u;
    v46 = 0u;
  }

  else
  {
    v71 = *(a1 + 16);
    v66 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC70, &qword_25AEA4D90);
    sub_25AEA1E78();
    if (v60 == *(a1 + 32))
    {
      v4 = sub_25AEA1958();
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v11 = swift_allocObject();
      v12 = *(a1 + 16);
      *(v11 + 16) = *a1;
      *(v11 + 32) = v12;
      *(v11 + 48) = *(a1 + 32);
      LOBYTE(v66) = 0;
      LOBYTE(v58[0]) = 0;
      *&v60 = swift_getKeyPath();
      BYTE8(v60) = 0;
      *&v61 = v4;
      *(&v61 + 1) = v6;
      LOBYTE(v62) = v8 & 1;
      *(&v62 + 1) = v10;
      LOBYTE(v63) = 0;
      *(&v63 + 1) = sub_25AE61C5C;
      v64 = v11;
      v65 = 0;
    }

    else
    {
      v15 = sub_25AEA1958();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = swift_allocObject();
      v23 = *(a1 + 16);
      *(v22 + 16) = *a1;
      *(v22 + 32) = v23;
      *(v22 + 48) = *(a1 + 32);
      LOBYTE(v66) = 0;
      LOBYTE(v58[0]) = 1;
      *&v60 = swift_getKeyPath();
      BYTE8(v60) = 0;
      *&v61 = v15;
      *(&v61 + 1) = v17;
      LOBYTE(v62) = v19 & 1;
      *(&v62 + 1) = v21;
      LOBYTE(v63) = 0;
      *(&v63 + 1) = sub_25AE608C0;
      v64 = v22;
      v65 = 1;
    }

    sub_25AE479E0(v72, &v66, &qword_27FA1DC68, &qword_25AEA4D88);
    sub_25AE479E0(&v71, &v66, &qword_27FA1DC70, &qword_25AEA4D90);
    sub_25AE60868();
    sub_25AEA19E8();
    v47 = v67;
    v48 = v66;
    v45 = v68;
    v46 = *v69;
    v13 = *&v69[16];
    v14 = v69[24];
  }

  if (sub_25AE60780())
  {
    v24 = sub_25AEA1958();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v70 = *(a1 + 16);
    v31 = swift_allocObject();
    v32 = *(a1 + 16);
    *(v31 + 16) = *a1;
    *(v31 + 32) = v32;
    *(v31 + 48) = *(a1 + 32);
    KeyPath = swift_getKeyPath();
    LOBYTE(v66) = 0;
    LOBYTE(v58[0]) = 0;
    *&v60 = KeyPath;
    BYTE8(v60) = 0;
    *&v61 = v24;
    *(&v61 + 1) = v26;
    LOBYTE(v62) = v28 & 1;
    *(&v62 + 1) = v30;
    LOBYTE(v63) = 0;
    *(&v63 + 1) = sub_25AE608BC;
    v64 = v31;
    v65 = 0;
  }

  else
  {
    v34 = sub_25AEA1958();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v70 = *(a1 + 16);
    v41 = swift_allocObject();
    v42 = *(a1 + 16);
    *(v41 + 16) = *a1;
    *(v41 + 32) = v42;
    *(v41 + 48) = *(a1 + 32);
    v43 = swift_getKeyPath();
    LOBYTE(v66) = 0;
    LOBYTE(v58[0]) = 1;
    *&v60 = v43;
    BYTE8(v60) = 0;
    *&v61 = v34;
    *(&v61 + 1) = v36;
    LOBYTE(v62) = v38 & 1;
    *(&v62 + 1) = v40;
    LOBYTE(v63) = 1;
    *(&v63 + 1) = sub_25AE6085C;
    v64 = v41;
    v65 = 1;
  }

  sub_25AE479E0(v72, &v66, &qword_27FA1DC68, &qword_25AEA4D88);
  sub_25AE479E0(&v70, &v66, &qword_27FA1DC70, &qword_25AEA4D90);
  sub_25AE60868();
  sub_25AEA19E8();
  v58[2] = v68;
  v59[0] = *v69;
  *(v59 + 9) = *&v69[9];
  v58[0] = v66;
  v58[1] = v67;
  v54[0] = v48;
  v54[1] = v47;
  v54[2] = v45;
  *v55 = v46;
  *&v55[16] = v13;
  v55[24] = v14;
  *v49 = *&v55[9];
  *(v57 + 9) = *&v69[9];
  v56[2] = v68;
  v57[0] = *v69;
  v56[0] = v66;
  v56[1] = v67;
  *&v53[9] = *&v69[9];
  v52 = v68;
  *v53 = *v69;
  v50 = v66;
  v51 = v67;
  *a2 = v48;
  a2[1] = v47;
  a2[4] = *&v49[7];
  a2[5] = v50;
  a2[2] = v45;
  a2[3] = v46;
  *(a2 + 137) = *&v53[9];
  a2[7] = v52;
  a2[8] = *v53;
  a2[6] = v51;
  sub_25AE479E0(v54, &v60, &qword_27FA1DCA0, &qword_25AEA4DE0);
  sub_25AE479E0(v56, &v60, &qword_27FA1DCA8, &qword_25AEA4DE8);
  sub_25AE41938(v58, &qword_27FA1DCA8, &qword_25AEA4DE8);
  v60 = v48;
  v61 = v47;
  v62 = v45;
  v63 = v46;
  v64 = v13;
  v65 = v14;
  return sub_25AE41938(&v60, &qword_27FA1DCA0, &qword_25AEA4DE0);
}

void sub_25AE5DE0C(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if ((BYTE1(v5) & 0xFE) == 4 || sub_25AE60780())
  {
    goto LABEL_5;
  }

  v5 = *(a1 + 16);
  v3[1] = *(a1 + 16);
  v6 = *(&v5 + 1);
  sub_25AE479E0(&v6, v3, &qword_27FA1DCB0, &unk_25AEA4DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DC70, &qword_25AEA4D90);
  sub_25AEA1E78();
  if (!__OFADD__(v4, 1))
  {
    v3[0] = v5;
    sub_25AEA1E88();
    sub_25AE41938(&v5, &qword_27FA1DC70, &qword_25AEA4D90);
LABEL_5:
    sub_25AE7D49C();
    return;
  }

  __break(1u);
}

uint64_t sub_25AE5DF44(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13[-v4];
  v6 = sub_25AEA2388();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *a1;
  v14 = a1[1];
  v15 = v7;
  sub_25AEA2368();
  sub_25AE479E0(&v15, v13, &qword_27FA1DC68, &qword_25AEA4D88);
  sub_25AE479E0(&v14, v13, &qword_27FA1DC70, &qword_25AEA4D90);
  v8 = sub_25AEA2358();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  v11 = a1[1];
  *(v9 + 32) = *a1;
  *(v9 + 48) = v11;
  *(v9 + 64) = *(a1 + 4);
  sub_25AE82E98(0, 0, v5, &unk_25AEA4E08, v9);
}

uint64_t sub_25AE5E0B0()
{
  v0 = qword_27FA1D250;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v2 = qword_27FA22788;
    v3 = qword_27FA22788;
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v2 = 0;
  }

  v4 = v2;
  sub_25AEA0CC8();

  sub_25AEA2278();
  if (v1)
  {

    v5 = v4;
  }

  else
  {
    v6 = objc_opt_self();

    v5 = [v6 mainBundle];
  }

  v7 = v4;
  sub_25AEA0CC8();

  sub_25AEA2278();
  sub_25AEA1DD8();
  return sub_25AEA1248();
}

uint64_t sub_25AE5E2E4()
{
  v0 = qword_27FA1D250;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v2 = qword_27FA22788;
    v3 = qword_27FA22788;
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v2 = 0;
  }

  v4 = v2;
  sub_25AEA0CC8();

  sub_25AEA2278();
  if (v1)
  {

    v5 = v4;
  }

  else
  {
    v6 = objc_opt_self();

    v5 = [v6 mainBundle];
  }

  v7 = v4;
  sub_25AEA0CC8();

  sub_25AEA2278();
  sub_25AEA1D88();
  return sub_25AEA1248();
}

uint64_t sub_25AE5E518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_25AEA2368();
  v4[3] = sub_25AEA2358();
  v6 = *(a4 + 8);
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_25AE5E5C4;

  return sub_25AE7CFA4();
}

uint64_t sub_25AE5E5C4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_25AEA2348();

  return MEMORY[0x2822009F8](sub_25AE5E700, v5, v4);
}

uint64_t sub_25AE5E700()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

double sub_25AE5E760@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_25AE5BD80(a1);
}

uint64_t sub_25AE5E79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = sub_25AEA1988();
  *(a5 + 8) = 0x4020000000000000;
  *(a5 + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD30, &qword_25AEA5030);
  return sub_25AE5E82C(a2, a3, a4, a1, (a5 + *(v12 + 44)), a6);
}

uint64_t sub_25AE5E82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>, double a6@<D0>)
{
  v59 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD38, &qword_25AEA5038);
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v57 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - v15;
  sub_25AEA1AA8();
  v62 = a1;
  v63 = a2;
  v64 = a6;
  v65 = a3;
  v66 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD40, &qword_25AEA5040);
  sub_25AE60F9C();
  v58 = v16;
  sub_25AEA1578();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25AEA3550;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v18 = v67;
  v19 = MEMORY[0x277D83B88];
  v20 = MEMORY[0x277D83C10];
  *(v17 + 56) = MEMORY[0x277D83B88];
  *(v17 + 64) = v20;
  if (v18 + 1 < a3)
  {
    v21 = v18 + 1;
  }

  else
  {
    v21 = a3;
  }

  *(v17 + 32) = v21;
  *(v17 + 96) = v19;
  *(v17 + 104) = v20;
  *(v17 + 72) = a3;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v22 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v23 = qword_27FA22788;
  }

  else
  {
    v23 = [objc_opt_self() mainBundle];
    v22 = 0;
  }

  v24 = v22;
  sub_25AEA0CC8();

  v25 = sub_25AEA21B8();
  v27 = v26;

  v67 = v25;
  v68 = v27;
  sub_25AE4E8AC();
  v28 = sub_25AEA1BC8();
  v30 = v29;
  LOBYTE(v27) = v31;
  sub_25AEA1B48();
  v32 = sub_25AEA1B98();
  v34 = v33;
  v36 = v35;

  sub_25AE479D0(v28, v30, v27 & 1);

  LODWORD(v67) = sub_25AEA1A48();
  v54 = sub_25AEA1B88();
  v38 = v37;
  v55 = v39;
  v56 = v40;
  sub_25AE479D0(v32, v34, v36 & 1);

  v41 = sub_25AEA2038();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  LOBYTE(v32) = v67;
  v43 = v60;
  v42 = v61;
  v44 = *(v60 + 16);
  v45 = v57;
  v46 = v58;
  v44(v57, v58, v61);
  v47 = v59;
  v44(v59, v45, v42);
  v48 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD60, &qword_25AEA5050) + 48)];
  v49 = v54;
  *v48 = v54;
  *(v48 + 1) = v38;
  v50 = v55;
  v51 = v55 & 1;
  v48[16] = v55 & 1;
  *(v48 + 3) = v56;
  *(v48 + 4) = v41;
  v48[40] = v32;
  sub_25AE47B08(v49, v38, v50 & 1);
  v52 = *(v43 + 8);

  v52(v46, v42);
  sub_25AE479D0(v49, v38, v51);

  return (v52)(v45, v42);
}

uint64_t sub_25AE5ED30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a5;
  *(v10 + 40) = a3;

  LOBYTE(a3) = sub_25AEA1AB8();
  sub_25AEA16A8();
  result = sub_25AEA1508();
  *a4 = sub_25AE61054;
  *(a4 + 8) = v10;
  *(a4 + 16) = a3;
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  *(a4 + 40) = v14;
  *(a4 + 48) = v15;
  *(a4 + 56) = 0;
  return result;
}

uint64_t sub_25AE5EDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = sub_25AEA1988();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD68, &qword_25AEA5058);
  return sub_25AE5EE84(a2, a3, a4, a1, a5 + *(v12 + 44), a6);
}

uint64_t sub_25AE5EE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v29 = a4;
  v24 = a3;
  v25 = a1;
  v31 = a5;
  v28 = sub_25AEA1768();
  v10 = *(v28 - 8);
  v27 = *(v10 + 64);
  MEMORY[0x28223BE20](v28);
  v26 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD70, &qword_25AEA5060);
  v12 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v14 = (v23 - v13);
  *v14 = sub_25AEA1908();
  v14[1] = a6;
  *(v14 + 16) = 0;
  v23[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD78, &qword_25AEA5068) + 44);
  v34 = &unk_286C3CAD8;
  swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v23[0] = a2;
  *(v15 + 32) = a6;
  *(v15 + 40) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD80, "xp");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD88, &qword_25AEA5090);
  sub_25AE47F60(&qword_27FA1DD90, &qword_27FA1DD80, "xp");
  sub_25AE61078();
  sub_25AE47F60(&qword_27FA1DDA0, &qword_27FA1DD88, &qword_25AEA5090);
  sub_25AEA1F48();
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v23[0];
  sub_25AEA1478();

  v32 = v33;
  v17 = v26;
  v18 = v28;
  (*(v10 + 16))(v26, v29, v28);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = swift_allocObject();
  v21 = v24;
  *(v20 + 16) = v25;
  *(v20 + 24) = v16;
  *(v20 + 32) = a6;
  *(v20 + 40) = v21;
  (*(v10 + 32))(v20 + v19, v17, v18);
  sub_25AE47F60(&qword_27FA1DDA8, &qword_27FA1DD70, &qword_25AEA5060);
  sub_25AE61200();

  sub_25AEA1D38();

  return sub_25AE61254(v14);
}

uint64_t sub_25AE5F270@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v80 = a3;
  v79 = a2;
  v78 = a1;
  v91 = a4;
  v4 = a1;
  v5 = sub_25AEA20B8();
  v89 = *(v5 - 8);
  v90 = v5;
  v6 = *(v89 + 64);
  MEMORY[0x28223BE20](v5);
  v86 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25AEA2098();
  v9 = *(v8 - 8);
  v87 = v8;
  v88 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25AEA1E18();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DDB8, &qword_25AEA5098);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v74 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DDC0, &qword_25AEA50A0);
  v23 = *(v22 - 8);
  v77 = v22 - 8;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v76 = &v74 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DDC8, &qword_25AEA50A8);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v75 = &v74 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DDD0, &qword_25AEA50B0);
  v31 = *(v30 - 8);
  v84 = v30 - 8;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v81 = &v74 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DDD8, &qword_25AEA50B8);
  v35 = *(v34 - 8);
  v85 = v34 - 8;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v82 = &v74 - v37;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  sub_25AEA1E08();
  (*(v13 + 104))(v16, *MEMORY[0x277CE0FE0], v12);
  v38 = sub_25AEA1E58();

  (*(v13 + 8))(v16, v12);
  *&v93 = v38;
  sub_25AEA1B18();
  sub_25AEA1C08();

  v39 = v78;
  v40 = sub_25AE5FA8C(v78);
  KeyPath = swift_getKeyPath();
  v42 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DDE0, &qword_25AEA50F0) + 36)];
  *v42 = KeyPath;
  v42[1] = v40;
  sub_25AEA1FE8();
  sub_25AEA1668();
  v43 = &v21[*(v18 + 44)];
  v44 = v94;
  *v43 = v93;
  *(v43 + 1) = v44;
  *(v43 + 2) = v95;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (v92 == v4)
  {
    v45 = 1.2;
  }

  else
  {
    v45 = 1.0;
  }

  sub_25AEA2078();
  v47 = v46;
  v49 = v48;
  v50 = v76;
  sub_25AE49BE4(v21, v76, &qword_27FA1DDB8, &qword_25AEA5098);
  v51 = v50 + *(v77 + 44);
  *v51 = v45;
  *(v51 + 8) = v45;
  *(v51 + 16) = v47;
  *(v51 + 24) = v49;
  v52 = v83;
  sub_25AEA2088();
  v53 = v86;
  sub_25AEA20A8();
  v54 = v75;
  v55 = &v75[*(v27 + 44)];
  v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DDE8, &qword_25AEA50F8) + 28);
  sub_25AE618C0(&qword_27FA1DDF0, MEMORY[0x277CE1598]);
  v57 = v87;
  sub_25AEA17B8();
  (*(v89 + 8))(v53, v90);
  (*(v88 + 8))(v52, v57);
  *v55 = swift_getKeyPath();
  v58 = sub_25AE49BE4(v50, v54, &qword_27FA1DDC0, &qword_25AEA50A0);
  v59 = MEMORY[0x25F859B20](v58, 0.5, 1.0, 0.0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  LOBYTE(v55) = v92;
  v60 = v81;
  sub_25AE49BE4(v54, v81, &qword_27FA1DDC8, &qword_25AEA50A8);
  v61 = v60 + *(v84 + 44);
  *v61 = v59;
  *(v61 + 8) = v55;
  LOBYTE(v55) = sub_25AEA1AE8();
  sub_25AEA1508();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = v82;
  sub_25AE49BE4(v60, v82, &qword_27FA1DDD0, &qword_25AEA50B0);
  v71 = v70 + *(v85 + 44);
  *v71 = v55;
  *(v71 + 8) = v63;
  *(v71 + 16) = v65;
  *(v71 + 24) = v67;
  *(v71 + 32) = v69;
  *(v71 + 40) = 0;
  v72 = v91;
  sub_25AE49BE4(v70, v91, &qword_27FA1DDD8, &qword_25AEA50B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD88, &qword_25AEA5090);
  *(v72 + *(result + 52)) = v39;
  return result;
}

uint64_t sub_25AE5FA8C(unsigned __int8 a1)
{
  v2 = a1;
  v3 = [objc_opt_self() systemLightGrayColor];
  v4 = sub_25AEA1D68();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v6 = v11 == 5 && v12 == v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if ((v10 & 0xFE) != 4)
  {
    if (v13 <= a1)
    {
      if (v12 == a1)
      {
        v7 = sub_25AEA1D88();
        goto LABEL_13;
      }

      return v4;
    }

LABEL_12:
    v7 = sub_25AEA1DC8();
    goto LABEL_13;
  }

  if (v13 > a1)
  {
    goto LABEL_12;
  }

  if (!v6)
  {
    if (v12 == a1)
    {
      v7 = sub_25AEA1D98();
      goto LABEL_13;
    }

    return v4;
  }

  v7 = sub_25AEA1DD8();
LABEL_13:
  v8 = v7;

  return v8;
}

uint64_t sub_25AE5FC88()
{
  sub_25AEA2018();
  sub_25AEA16B8();
}

uint64_t sub_25AE5FCF8()
{
  sub_25AEA2078();
  sub_25AE61078();
  return sub_25AEA1758();
}

uint64_t sub_25AE5FD64@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v5;
  v7[5] = v6;
  *a1 = sub_25AE60F7C;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
}

uint64_t sub_25AE5FDEC@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_25AEA18F8();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD10, &qword_25AEA4FB8) + 44);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = *(v1 + 1);
  *(v6 + 48) = v1[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD18, &unk_25AEA6090);
  sub_25AE47F60(&qword_27FA1DD20, &qword_27FA1DD18, &unk_25AEA6090);
  sub_25AE60EF0();
  return sub_25AEA1F48();
}

uint64_t sub_25AE5FF7C@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = sub_25AEA1798();
  v7 = *(v6 + 20);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_25AEA1978();
  v10 = *(*(v9 - 8) + 104);
  v10(a1 + v7, v8, v9);
  *a1 = a2;
  a1[1] = a2;
  v11 = [objc_opt_self() systemLightMidGrayColor];
  sub_25AEA1D68();
  v12 = sub_25AEA1F98();
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE28, &qword_25AEA51C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25AEA3550;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;

  sub_25AEA1D98();
  *(v15 + 48) = sub_25AEA1F98();
  *(v15 + 56) = v16;
  sub_25AEA2068();
  sub_25AEA2058();
  sub_25AEA1FA8();
  sub_25AEA16C8();

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE30, &qword_25AEA51C8);
  v18 = a1 + *(v17 + 52);
  *v18 = v29;
  *(v18 + 1) = v30;
  *(v18 + 4) = v31;
  *(a1 + *(v17 + 56)) = 256;
  sub_25AEA1FE8();
  sub_25AEA1668();
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE38, &qword_25AEA51D0) + 36));
  *v19 = v32;
  v19[1] = v33;
  v19[2] = v34;
  v20 = sub_25AEA1FD8();
  v22 = v21;
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE40, &qword_25AEA51D8) + 36));
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE48, &qword_25AEA51E0) + 36));
  v10(v24 + *(v6 + 20), v8, v9);
  *v24 = a2;
  v24[1] = a2;
  sub_25AEA1FE8();
  sub_25AEA1668();
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE50, &qword_25AEA51E8) + 36));
  *v25 = v35;
  v25[1] = v36;
  v25[2] = v37;
  v26 = sub_25AEA2028();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE58, &unk_25AEA51F0);
  v28 = (v24 + *(result + 36));
  *v28 = v26;
  v28[1] = a3;
  *v23 = v20;
  v23[1] = v22;
  return result;
}

uint64_t sub_25AE602E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE6031C(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_25AE60348@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  *a2 = v5;
  return result;
}

uint64_t sub_25AE603CC(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

unint64_t sub_25AE6044C()
{
  result = qword_27FA1DC80;
  if (!qword_27FA1DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DC80);
  }

  return result;
}

unint64_t sub_25AE604A0()
{
  result = qword_27FA1D900;
  if (!qword_27FA1D900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA1D900);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AE6050C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();
}

uint64_t sub_25AE60588(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD00, &qword_25AEA4E48);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_25AE479E0(a1, &v13 - v9, &qword_27FA1DD00, &qword_25AEA4E48);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AE479E0(v10, v8, &qword_27FA1DD00, &qword_25AEA4E48);

  sub_25AEA1488();
  return sub_25AE41938(v10, &qword_27FA1DD00, &qword_25AEA4E48);
}

uint64_t sub_25AE606B8(uint64_t a1)
{
  v2 = sub_25AEA17C8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25AEA1808();
}

BOOL sub_25AE60780()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if ((v2 & 0xFE) == 4)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  return v1 == 2;
}

unint64_t sub_25AE60868()
{
  result = qword_27FA1DC98;
  if (!qword_27FA1DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DC98);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25AE60908()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25AE60950(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25AE47200;

  return sub_25AE5E518(a1, v4, v5, v1 + 32);
}

uint64_t sub_25AE60A00()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_25AE5E2E4();
}

unint64_t sub_25AE60A0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD00, &qword_25AEA4E48);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11[-v2];
  v4 = sub_25AEA1148();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  result = 0;
  if (v11[15] == 5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_25AE41938(v3, &qword_27FA1DD00, &qword_25AEA4E48);
      return 0;
    }

    else
    {
      (*(v5 + 32))(v8, v3, v4);
      v10 = sub_25AE67E64();
      (*(v5 + 8))(v8, v4);
      return v10;
    }
  }

  return result;
}

uint64_t sub_25AE60C68()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_25AE5E0B0();
}

uint64_t sub_25AE60C80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25AE60CCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25AE60D38()
{
  result = qword_27FA1DD08;
  if (!qword_27FA1DD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DC88, &qword_25AEA4D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DC38, &qword_25AEA4CC8);
    sub_25AE47F60(&qword_27FA1DC78, &qword_27FA1DC38, &qword_25AEA4CC8);
    sub_25AE6044C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DD08);
  }

  return result;
}

uint64_t sub_25AE60E88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

float *sub_25AE60EC0@<X0>(float *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 48);
  v4 = v3 * *result;
  if (v4 >= v3)
  {
    v4 = *(v2 + 48);
  }

  if (v4 <= *(v2 + 32))
  {
    v4 = *(v2 + 32);
  }

  *a2 = *(v2 + 40);
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return result;
}

unint64_t sub_25AE60EF0()
{
  result = qword_27FA1DD28;
  if (!qword_27FA1DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DD28);
  }

  return result;
}

uint64_t sub_25AE60F44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25AE60F9C()
{
  result = qword_27FA1DD48;
  if (!qword_27FA1DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DD40, &qword_25AEA5040);
    sub_25AE47F60(&qword_27FA1DD50, &qword_27FA1DD58, &qword_25AEA5048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DD48);
  }

  return result;
}

uint64_t sub_25AE61064@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_25AE5F270(*a1, v2[2], v2[5], a2);
}

unint64_t sub_25AE61078()
{
  result = qword_27FA1DD98;
  if (!qword_27FA1DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DD98);
  }

  return result;
}

uint64_t sub_25AE610CC()
{
  v1 = sub_25AEA1768();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25AE61190(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(sub_25AEA1768() - 8);
  v5 = *a2;
  v6 = v2 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_25AE612BC(v5, v6);
}

unint64_t sub_25AE61200()
{
  result = qword_27FA1DDB0;
  if (!qword_27FA1DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DDB0);
  }

  return result;
}

uint64_t sub_25AE61254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD70, &qword_25AEA5060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AE612BC(unsigned __int8 a1, uint64_t a2)
{
  v41 = a2;
  v2 = a1;
  v3 = sub_25AEA20C8();
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25AEA20E8();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25AEA1768();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = sub_25AEA2108();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v22 = &v35 - v21;
  v23 = &byte_286C3CAF8;
  for (i = qword_286C3CAE8; i; --i)
  {
    v25 = *v23++;
    if (v25 == v2)
    {
      if (v2 != 3)
      {
        v37 = v6;
        v26 = result;
        v39 = result;
        v35 = v10;
        v27 = v20;
        sub_25AE604A0();
        v36 = v3;
        v38 = sub_25AEA24C8();
        sub_25AEA20F8();
        sub_25AEA2118();
        v40 = *(v27 + 8);
        v40(v18, v26);
        (*(v12 + 16))(&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v11);
        v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
        v29 = swift_allocObject();
        (*(v12 + 32))(v29 + v28, &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
        *(v29 + v28 + v13) = v2;
        aBlock[4] = sub_25AE61818;
        aBlock[5] = v29;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_25AE93330;
        aBlock[3] = &block_descriptor_91;
        v30 = _Block_copy(aBlock);

        v31 = v35;
        sub_25AEA20D8();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_25AE618C0(&qword_27FA1D908, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D910, &qword_25AEA4DA0);
        sub_25AE47F60(&qword_27FA1D918, &qword_27FA1D910, &qword_25AEA4DA0);
        v33 = v36;
        v32 = v37;
        sub_25AEA2578();
        v34 = v38;
        MEMORY[0x25F859FD0](v22, v31, v32, v30);
        _Block_release(v30);

        (*(v44 + 8))(v32, v33);
        (*(v42 + 8))(v31, v43);
        return (v40)(v22, v39);
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_25AE6178C()
{
  v1 = sub_25AEA1768();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_25AE61818()
{
  v1 = *(sub_25AEA1768() - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + *(v1 + 64));

  return sub_25AE5FC88();
}

uint64_t sub_25AE61898()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25AE5FCF8();
}

uint64_t sub_25AE618C0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WaveformBarView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WaveformBarView(uint64_t result, int a2, int a3)
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

unint64_t sub_25AE619E8()
{
  result = qword_27FA1DE08;
  if (!qword_27FA1DE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DE10, &qword_25AEA5160);
    sub_25AE47F60(&qword_27FA1DE18, &qword_27FA1DE20, &qword_25AEA5168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DE08);
  }

  return result;
}

unint64_t sub_25AE61AC0()
{
  result = qword_27FA1DE60;
  if (!qword_27FA1DE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DE40, &qword_25AEA51D8);
    sub_25AE61B78();
    sub_25AE47F60(&qword_27FA1DE78, &qword_27FA1DE48, &qword_25AEA51E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DE60);
  }

  return result;
}

unint64_t sub_25AE61B78()
{
  result = qword_27FA1DE68;
  if (!qword_27FA1DE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DE38, &qword_25AEA51D0);
    sub_25AE47F60(&qword_27FA1DE70, &qword_27FA1DE30, &qword_25AEA51C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DE68);
  }

  return result;
}

uint64_t sub_25AE61C68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000013;
  v4 = 0x800000025AEA7AA0;
  if (v2 == 1)
  {
    v5 = 0x800000025AEA7AA0;
  }

  else
  {
    v3 = 0x7461446F69647561;
    v5 = 0xE900000000000061;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x696669746E656469;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000007265;
  }

  v8 = 0xD000000000000013;
  if (*a2 != 1)
  {
    v8 = 0x7461446F69647561;
    v4 = 0xE900000000000061;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25AEA2828();
  }

  return v11 & 1;
}

uint64_t sub_25AE61D6C()
{
  v1 = *v0;
  sub_25AEA28B8();
  sub_25AEA21F8();

  return sub_25AEA28D8();
}

uint64_t sub_25AE61E1C()
{
  *v0;
  *v0;
  sub_25AEA21F8();
}

uint64_t sub_25AE61EB8()
{
  v1 = *v0;
  sub_25AEA28B8();
  sub_25AEA21F8();

  return sub_25AEA28D8();
}

uint64_t sub_25AE61F64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25AE63A8C();
  *a2 = result;
  return result;
}

void sub_25AE61F94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x800000025AEA7AA0;
  v5 = 0xD000000000000013;
  if (v2 != 1)
  {
    v5 = 0x7461446F69647561;
    v4 = 0xE900000000000061;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25AE62000()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x7461446F69647561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_25AE62068@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AE63A8C();
  *a1 = result;
  return result;
}

uint64_t sub_25AE620A8(uint64_t a1)
{
  v2 = sub_25AE62F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AE620E4(uint64_t a1)
{
  v2 = sub_25AE62F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NRCollectedEnrollment.audioSourceRawValue.getter()
{
  v1 = (v0 + *(type metadata accessor for NRCollectedEnrollment() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for NRCollectedEnrollment()
{
  result = qword_27FA1DEE0;
  if (!qword_27FA1DEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NRCollectedEnrollment.audioSourceRawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NRCollectedEnrollment() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NRCollectedEnrollment.audioData.getter()
{
  v1 = v0 + *(type metadata accessor for NRCollectedEnrollment() + 24);
  v2 = *v1;
  sub_25AE622FC(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_25AE622FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25AE62310(a1, a2);
  }

  return a1;
}

uint64_t sub_25AE62310(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t NRCollectedEnrollment.audioData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NRCollectedEnrollment() + 24);
  result = sub_25AE623AC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_25AE623AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25AE42754(a1, a2);
  }

  return a1;
}

uint64_t sub_25AE62498(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t NRCollectedEnrollment.init(identifier:audioSourceRawValue:audioData:nameConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_25AEA0E38();
  v10 = sub_25AEA0E48();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(a7, 0, 1, v10);
  v13 = type metadata accessor for NRCollectedEnrollment();
  v14 = (a7 + v13[5]);
  v15 = a7 + v13[6];
  *v15 = xmmword_25AEA5200;
  v16 = v13[7];
  v17 = type metadata accessor for NRNameConfiguration();
  (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
  sub_25AE626EC(a7);
  (*(v11 + 32))(a7, a1, v10);
  v12(a7, 0, 1, v10);
  *v14 = a2;
  v14[1] = a3;
  sub_25AE623AC(*v15, *(v15 + 8));
  *v15 = a4;
  *(v15 + 8) = a5;
  return sub_25AE62498(a6, a7 + v16, &qword_27FA1DE80, &unk_25AEA6E80);
}

uint64_t sub_25AE626EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NRCollectedEnrollment.init(enrollment:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE80, &unk_25AEA6E80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  sub_25AEA0E38();
  v15 = sub_25AEA0E48();
  v16 = *(*(v15 - 8) + 56);
  v16(a2, 0, 1, v15);
  v17 = type metadata accessor for NRCollectedEnrollment();
  v18 = a2 + *(v17 + 24);
  *v18 = xmmword_25AEA5200;
  v41 = v17;
  v19 = *(v17 + 28);
  v20 = type metadata accessor for NRNameConfiguration();
  v21 = *(v20 - 8);
  v43 = *(v21 + 56);
  v44 = v19;
  v22 = a2 + v19;
  v23 = v20;
  v42 = v21 + 56;
  v43(v22, 1, 1, v20);
  if (a1)
  {
    v40 = v7;
    v24 = [a1 identifier];
    if (v24)
    {
      v25 = v24;
      sub_25AEA0E28();

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v16(v12, v26, 1, v15);
    sub_25AE62AE0(v12, v14);
    sub_25AE62498(v14, a2, &qword_27FA1D380, &unk_25AEA3E80);
    v29 = [a1 audioData];
    if (v29)
    {
      v30 = v29;
      v27 = sub_25AEA0DE8();
      v28 = v31;
    }

    else
    {
      v27 = 0;
      v28 = 0xF000000000000000;
    }

    v7 = v40;
  }

  else
  {
    v16(v14, 1, 1, v15);
    sub_25AE62498(v14, a2, &qword_27FA1D380, &unk_25AEA3E80);
    v27 = 0;
    v28 = 0xF000000000000000;
  }

  sub_25AE623AC(*v18, *(v18 + 8));
  *v18 = v27;
  *(v18 + 8) = v28;
  if (a1 && (v32 = [a1 audioSourceRawValue]) != 0)
  {
    v33 = v32;
    v34 = sub_25AEA21A8();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = (a2 + *(v41 + 20));
  *v37 = v34;
  v37[1] = v36;
  NRNameConfiguration.init(config:)([a1 nameConfiguration], v7);

  v43(v7, 0, 1, v23);
  return sub_25AE62498(v7, a2 + v44, &qword_27FA1DE80, &unk_25AEA6E80);
}

uint64_t sub_25AE62AE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NRCollectedEnrollment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = v32 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE88, &qword_25AEA5210);
  v34 = *(v37 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = v32 - v7;
  v9 = type metadata accessor for NRCollectedEnrollment();
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AEA0E38();
  v14 = sub_25AEA0E48();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v32[1] = v15 + 56;
  v33 = v16;
  v16(v13, 0, 1, v14);
  v17 = &v13[v10[7]];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v13[v10[8]];
  *v18 = xmmword_25AEA5200;
  v19 = v10[9];
  v20 = type metadata accessor for NRNameConfiguration();
  (*(*(v20 - 8) + 56))(&v13[v19], 1, 1, v20);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AE62F18();
  v35 = v8;
  v22 = v38;
  sub_25AEA28E8();
  if (!v22)
  {
    v23 = v33;
    v38 = v18;
    LOBYTE(v39) = 0;
    sub_25AE6334C(&qword_27FA1DE98);
    v24 = v35;
    sub_25AEA27C8();
    v25 = v36;
    v23(v36, 0, 1, v14);
    sub_25AE62498(v25, v13, &qword_27FA1D380, &unk_25AEA3E80);
    LOBYTE(v39) = 1;
    *v17 = sub_25AEA27B8();
    v17[1] = v27;
    v41 = 2;
    sub_25AE62FC8();
    v28 = v37;
    sub_25AEA27C8();
    (*(v34 + 8))(v24, v28);
    v29 = v39;
    v30 = v40;
    v31 = v38;
    sub_25AE623AC(*v38, *(v38 + 1));
    *v31 = v29;
    *(v31 + 1) = v30;
    sub_25AE6301C(v13, v32[0]);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_25AE62F6C(v13);
}

unint64_t sub_25AE62F18()
{
  result = qword_27FA1DE90;
  if (!qword_27FA1DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DE90);
  }

  return result;
}

uint64_t sub_25AE62F6C(uint64_t a1)
{
  v2 = type metadata accessor for NRCollectedEnrollment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25AE62FC8()
{
  result = qword_27FA1DEA0;
  if (!qword_27FA1DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DEA0);
  }

  return result;
}

uint64_t sub_25AE6301C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NRCollectedEnrollment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NRCollectedEnrollment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DEA8, &qword_25AEA5218);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AE62F18();
  sub_25AEA28F8();
  LOBYTE(v17) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  sub_25AE632AC();
  sub_25AEA27E8();
  if (!v2)
  {
    v11 = type metadata accessor for NRCollectedEnrollment();
    v17 = *(v3 + *(v11 + 20));
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D388, &qword_25AEA5220);
    sub_25AE63390();
    sub_25AEA27E8();
    v12 = (v3 + *(v11 + 24));
    v13 = v12[1];
    *&v17 = *v12;
    *(&v17 + 1) = v13;
    v16 = 2;
    sub_25AE622FC(v17, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DEC8, &qword_25AEA5228);
    sub_25AE6340C();
    sub_25AEA27E8();
    sub_25AE623AC(v17, *(&v17 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_25AE632AC()
{
  result = qword_27FA1DEB0;
  if (!qword_27FA1DEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D380, &unk_25AEA3E80);
    sub_25AE6334C(&qword_27FA1DEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DEB0);
  }

  return result;
}

uint64_t sub_25AE6334C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25AEA0E48();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25AE63390()
{
  result = qword_27FA1DEC0;
  if (!qword_27FA1DEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D388, &qword_25AEA5220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DEC0);
  }

  return result;
}

unint64_t sub_25AE6340C()
{
  result = qword_27FA1DED0;
  if (!qword_27FA1DED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DEC8, &qword_25AEA5228);
    sub_25AE63490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DED0);
  }

  return result;
}

unint64_t sub_25AE63490()
{
  result = qword_27FA1DED8;
  if (!qword_27FA1DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DED8);
  }

  return result;
}

uint64_t sub_25AE63528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE80, &unk_25AEA6E80);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_25AE63688(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE80, &unk_25AEA6E80);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_25AE637C8()
{
  sub_25AE63920(319, &qword_27FA1DEF0, MEMORY[0x277CC95F0]);
  if (v0 <= 0x3F)
  {
    sub_25AE638D4(319, &qword_27FA1DEF8);
    if (v1 <= 0x3F)
    {
      sub_25AE638D4(319, &qword_27FA1DF00);
      if (v2 <= 0x3F)
      {
        sub_25AE63920(319, &qword_27FA1DF08, type metadata accessor for NRNameConfiguration);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25AE638D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25AEA2538();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_25AE63920(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25AEA2538();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_25AE63988()
{
  result = qword_27FA1DF10;
  if (!qword_27FA1DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DF10);
  }

  return result;
}

unint64_t sub_25AE639E0()
{
  result = qword_27FA1DF18;
  if (!qword_27FA1DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DF18);
  }

  return result;
}

unint64_t sub_25AE63A38()
{
  result = qword_27FA1DF20;
  if (!qword_27FA1DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DF20);
  }

  return result;
}

uint64_t sub_25AE63A8C()
{
  v0 = sub_25AEA2798();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25AE63AD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25AE63B20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AE63B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v38 = a2;
  v2 = sub_25AEA1238();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v34 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A8, &qword_25AEA3B18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = v33 - v7;
  v33[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
  v8 = swift_allocObject();
  v39 = xmmword_25AEA3540;
  *(v8 + 16) = xmmword_25AEA3540;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v9 = v40;
  v10 = v41;
  *(v8 + 56) = MEMORY[0x277D837D0];
  v11 = sub_25AE4172C();
  *(v8 + 64) = v11;
  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0xE000000000000000;
  if (v10)
  {
    v13 = v10;
  }

  *(v8 + 32) = v12;
  *(v8 + 40) = v13;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v14 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v15 = qword_27FA22788;
    v16 = qword_27FA22788;
  }

  else
  {
    v16 = [objc_opt_self() mainBundle];
    v15 = 0;
  }

  v17 = v15;
  sub_25AEA0CC8();

  v18 = sub_25AEA21B8();
  v33[1] = v19;
  v33[2] = v18;

  v20 = [objc_opt_self() currentDevice];
  [v20 userInterfaceIdiom];

  v21 = swift_allocObject();
  *(v21 + 16) = v39;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v22 = v40;
  v23 = v41;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = v11;
  if (!v23)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  v24 = v17;
  if (!v14)
  {
    v24 = [objc_opt_self() mainBundle];
  }

  v25 = v17;
  sub_25AEA0CC8();

  v33[0] = sub_25AEA21B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3B8, &unk_25AEA4000);
  v26 = v35;
  v27 = *(v35 + 72);
  v28 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v39;
  sub_25AEA1208();
  v40 = v29;
  sub_25AE643C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3C8, &qword_25AEA3B80);
  sub_25AE47F60(&qword_27FA1D3D0, &qword_27FA1D3C8, &qword_25AEA3B80);
  v30 = v34;
  sub_25AEA2578();
  sub_25AEA1F38();
  v31 = (*(v26 + 8))(v30, v2);
  MEMORY[0x28223BE20](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF28, &qword_25AEA54E0);
  sub_25AE47F60(&qword_27FA1DF30, &qword_27FA1DF28, &qword_25AEA54E0);
  return sub_25AEA11F8();
}

uint64_t sub_25AE641D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25AEA1958();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8;
  *(a3 + 32) = v10 & 1;
  *(a3 + 40) = v12;
  *(a3 + 48) = 0;
  *(a3 + 56) = sub_25AE644D4;
  *(a3 + 64) = v13;
}

uint64_t sub_25AE642AC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_25AEA2388();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_25AE82E98(0, 0, v6, &unk_25AEA5520, v8);
}

unint64_t sub_25AE643C8()
{
  result = qword_27FA1D3C0;
  if (!qword_27FA1D3C0)
  {
    sub_25AEA1238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D3C0);
  }

  return result;
}

uint64_t sub_25AE64420@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = 2;
  a1[1] = sub_25AE644CC;
  a1[2] = v5;
}

uint64_t sub_25AE64494()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE644E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AE64520(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AE47200;

  return sub_25AE7D63C(a1, v4, v5, v6);
}

unint64_t sub_25AE6461C(uint64_t a1, unint64_t a2)
{
  __src[2] = *MEMORY[0x277D85DE8];
  if (qword_27FA1D240 != -1)
  {
    swift_once();
  }

  if (!qword_27FA22780)
  {
    goto LABEL_8;
  }

  v5 = qword_27FA22780;
  LODWORD(v6) = *([v5 streamDescription] + 6);
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_29;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = __OFSUB__(v10, v11);
    v8 = v10 - v11;
    if (!v12)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v7)
  {
    LODWORD(v8) = BYTE6(a2);
    if (v6)
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  LODWORD(v8) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v8 = v8;
LABEL_15:
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (HIDWORD(v8))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_25AE426AC();
    swift_allocError();
    *v9 = 5;
    *(v9 + 8) = 0xD000000000000015;
    *(v9 + 16) = 0x800000025AEA8C90;
    swift_willThrow();
    goto LABEL_43;
  }

  while (1)
  {
LABEL_18:
    v2 = v8 / v6;
    v13 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v5 frameCapacity:v2];
    if (!v13)
    {
      sub_25AE426AC();
      swift_allocError();
      *v17 = 5;
      *(v17 + 8) = 0xD00000000000001BLL;
      *(v17 + 16) = 0x800000025AEA8D30;
      swift_willThrow();
LABEL_42:

      goto LABEL_43;
    }

    v2 = v13;
    [v13 setFrameLength_];
    v14 = [v2 audioBufferList];
    v15 = *(v14 + 3);
    v16 = v14[2];
    if (v7 <= 1)
    {
      if (!v7)
      {
        __src[0] = a1;
        LOWORD(__src[1]) = a2;
        BYTE2(__src[1]) = BYTE2(a2);
        BYTE3(__src[1]) = BYTE3(a2);
        BYTE4(__src[1]) = BYTE4(a2);
        BYTE5(__src[1]) = BYTE5(a2);
        if (v16)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      v20 = a1;
      if (a1 <= a1 >> 32)
      {
        v21 = sub_25AEA0C58();
        if (!v21)
        {
LABEL_40:
          sub_25AEA0C68();
LABEL_41:
          sub_25AE426AC();
          swift_allocError();
          *v24 = 5;
          *(v24 + 8) = 0xD000000000000026;
          *(v24 + 16) = 0x800000025AEA8D50;
          swift_willThrow();

          goto LABEL_42;
        }

        a1 = v21;
        v22 = sub_25AEA0C78();
        v6 = v20 - v22;
        if (!__OFSUB__(v20, v22))
        {
LABEL_34:
          v23 = (v6 + a1);
          sub_25AEA0C68();
          if (v23)
          {
            if (v16)
            {
              memmove(v16, v23, v15);
            }

            goto LABEL_39;
          }

          goto LABEL_41;
        }

LABEL_48:
        __break(1u);
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v7 != 2)
    {
      break;
    }

    a2 &= 0x3FFFFFFFFFFFFFFFuLL;
    v7 = *(a1 + 16);
    v18 = sub_25AEA0C58();
    if (!v18)
    {
      goto LABEL_40;
    }

    a1 = v18;
    v19 = sub_25AEA0C78();
    v6 = v7 - v19;
    if (!__OFSUB__(v7, v19))
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_29:
    LODWORD(v8) = 0;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  memset(__src, 0, 14);
  if (v16)
  {
LABEL_38:
    memcpy(v16, __src, v15);
  }

LABEL_39:

LABEL_43:
  v25 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_25AE649DC()
{
  v36 = *MEMORY[0x277D85DE8];
  if (qword_27FA1D240 != -1)
  {
    swift_once();
  }

  if (qword_27FA22780)
  {
    v2 = qword_27FA22780;
    v1 = &off_27992A000;
    v3 = [v0 format];
    v4 = [objc_allocWithZone(MEMORY[0x277CB8380]) initFromFormat:v3 toFormat:v2];

    if (!v4)
    {
      sub_25AE426AC();
      swift_allocError();
      *v25 = 5;
      *(v25 + 8) = 0xD00000000000001ALL;
      *(v25 + 16) = 0x800000025AEA8CB0;
      swift_willThrow();
LABEL_21:

      goto LABEL_23;
    }

    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v6 = v0;
    [v2 sampleRate];
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v7 > -1.0)
    {
      if (v7 < 4294967300.0)
      {
        v8 = v7 * [v6 frameLength];
        if ((v8 & 0xFFFFFFFF00000000) == 0)
        {
          v9 = [v6 format];
          [v9 sampleRate];
          v11 = *&v10;
          v1 = v10;

          if ((v1 & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v11 > -1.0)
            {
              if (v11 < 4294967300.0)
              {
                if (v11)
                {
                  v12 = v11;
                  v13 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v2 frameCapacity:v8 / v12];
                  if (!v13)
                  {
                    sub_25AE426AC();
                    swift_allocError();
                    *v26 = 5;
                    *(v26 + 8) = 0xD00000000000001ELL;
                    *(v26 + 16) = 0x800000025AEA8CD0;
                    swift_willThrow();

                    goto LABEL_23;
                  }

                  v1 = v13;
                  v33 = sub_25AE6568C;
                  v34 = v5;
                  v29 = MEMORY[0x277D85DD0];
                  v30 = 1107296256;
                  v31 = sub_25AE65104;
                  v32 = &block_descriptor_6;
                  v14 = _Block_copy(&v29);

                  v29 = 0;
                  v15 = [v4 convertToBuffer:v1 error:&v29 withInputFromBlock:v14];
                  _Block_release(v14);
                  v16 = v29;
                  if (v15 != 3 && v29 == 0)
                  {

                    goto LABEL_23;
                  }

                  v29 = 0;
                  v30 = 0xE000000000000000;
                  v18 = v16;
                  sub_25AEA2688();

                  v29 = 0xD00000000000001ALL;
                  v30 = 0x800000025AEA8D10;
                  v35 = v16;
                  v19 = v18;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF48, &qword_25AEA5530);
                  v20 = sub_25AEA21D8();
                  MEMORY[0x25F859D40](v20);

                  v21 = v29;
                  v22 = v30;
                  sub_25AE426AC();
                  swift_allocError();
                  *v23 = 5;
                  *(v23 + 8) = v21;
                  *(v23 + 16) = v22;
                  swift_willThrow();

                  goto LABEL_21;
                }

LABEL_32:
                __break(1u);
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_27;
  }

  sub_25AE426AC();
  swift_allocError();
  *v24 = 5;
  *(v24 + 8) = 0xD000000000000015;
  *(v24 + 16) = 0x800000025AEA8C90;
  swift_willThrow();
LABEL_23:
  v27 = *MEMORY[0x277D85DE8];
  return v1;
}

id sub_25AE64EB4()
{
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  qword_27FA22780 = result;
  return result;
}

unint64_t sub_25AE64F00(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
LABEL_29:
    result = sub_25AEA25B8();
    v2 = result;
    if (!result)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_26;
    }
  }

  v3 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F85A1C0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    v4 = *(v1 + 32);
  }

  v5 = v4;
  v6 = [v4 format];

  if (!v6)
  {
LABEL_26:

    return 0;
  }

  v7 = 0;
  v8 = 0;
  while (v2 != v7)
  {
    if (v3)
    {
      v9 = MEMORY[0x25F85A1C0](v7, v1);
    }

    else
    {
      if (v7 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v9 = *(v1 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v11 = [v9 frameLength];

    ++v7;
    v12 = __CFADD__(v8, v11);
    v8 = v8 + v11;
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPCMFormat:v6 frameCapacity:v8];
  if (!result)
  {

    goto LABEL_26;
  }

  if (v2 < 1)
  {
    goto LABEL_33;
  }

  v13 = result;
  v14 = result;
  for (i = 0; i != v2; ++i)
  {
    if (v3)
    {
      v16 = MEMORY[0x25F85A1C0](i, v1);
    }

    else
    {
      v16 = *(v1 + 8 * i + 32);
    }

    v17 = v16;
    [v14 appendDataFromBuffer_];
  }

  return v13;
}

id sub_25AE65104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = v6(a2, a3);

  return v7;
}

unint64_t sub_25AE65170()
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:1 sampleRate:1 channels:0 interleaved:16000.0];
  if (v2)
  {
    v3 = v2;
    v1 = &off_27992A000;
    v4 = [v0 format];
    v5 = [objc_allocWithZone(MEMORY[0x277CB8380]) initFromFormat:v4 toFormat:v3];

    if (!v5)
    {
      sub_25AE426AC();
      swift_allocError();
      *v26 = 5;
      *(v26 + 8) = 0xD00000000000001ALL;
      *(v26 + 16) = 0x800000025AEA8CB0;
      swift_willThrow();
LABEL_19:

      goto LABEL_21;
    }

    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = v0;
    [v3 sampleRate];
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v8 > -1.0)
    {
      if (v8 < 4294967300.0)
      {
        v9 = v8 * [v7 frameLength];
        if ((v9 & 0xFFFFFFFF00000000) == 0)
        {
          v10 = [v7 format];
          [v10 sampleRate];
          v12 = *&v11;
          v1 = v11;

          if ((v1 & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v12 > -1.0)
            {
              if (v12 < 4294967300.0)
              {
                if (v12)
                {
                  v13 = v12;
                  v14 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v3 frameCapacity:v9 / v13];
                  if (!v14)
                  {
                    sub_25AE426AC();
                    swift_allocError();
                    *v27 = 5;
                    *(v27 + 8) = 0xD00000000000001ELL;
                    *(v27 + 16) = 0x800000025AEA8CD0;
                    swift_willThrow();

                    goto LABEL_21;
                  }

                  v1 = v14;
                  v34 = sub_25AE656C0;
                  v35 = v6;
                  v30 = MEMORY[0x277D85DD0];
                  v31 = 1107296256;
                  v32 = sub_25AE65104;
                  v33 = &block_descriptor_5;
                  v15 = _Block_copy(&v30);

                  v30 = 0;
                  v16 = [v5 convertToBuffer:v1 error:&v30 withInputFromBlock:v15];
                  _Block_release(v15);
                  v17 = v30;
                  if (v16 != 3 && v30 == 0)
                  {

                    goto LABEL_21;
                  }

                  v30 = 0;
                  v31 = 0xE000000000000000;
                  v19 = v17;
                  sub_25AEA2688();

                  v30 = 0xD00000000000001ALL;
                  v31 = 0x800000025AEA8D10;
                  v36 = v17;
                  v20 = v19;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF48, &qword_25AEA5530);
                  v21 = sub_25AEA21D8();
                  MEMORY[0x25F859D40](v21);

                  v22 = v30;
                  v23 = v31;
                  sub_25AE426AC();
                  swift_allocError();
                  *v24 = 5;
                  *(v24 + 8) = v22;
                  *(v24 + 16) = v23;
                  swift_willThrow();

                  goto LABEL_19;
                }

LABEL_30:
                __break(1u);
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_25;
  }

  sub_25AE426AC();
  swift_allocError();
  *v25 = 5;
  *(v25 + 8) = 0xD000000000000015;
  *(v25 + 16) = 0x800000025AEA8C90;
  swift_willThrow();
LABEL_21:
  v28 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_25AE6563C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_25AE6568C(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  *a2 = 0;
  v4 = v3;
  return v3;
}

uint64_t sub_25AE656C8()
{
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v0 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v1 = qword_27FA22788;
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v0 = 0;
  }

  v2 = v0;
  sub_25AEA0CC8();

  return sub_25AEA2278();
}

void NRLogError(_:additionalMessage:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v27 = 2108704;
    v28 = 0xE300000000000000;

    MEMORY[0x25F859D40](a2, a3);

    v7 = 2108704;
    v6 = 0xE300000000000000;
  }

  else
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  v30 = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
  if (!swift_dynamicCast())
  {
    if (qword_27FA1D248 != -1)
    {
      swift_once();
    }

    v22 = sub_25AEA12C8();
    __swift_project_value_buffer(v22, qword_27FA1DF50);
    v23 = a1;

    v13 = sub_25AEA12A8();
    v14 = sub_25AEA2488();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v15 = 138412546;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v25;
      *v16 = v25;
      *(v15 + 12) = 2080;
      v26 = sub_25AE65D2C(v7, v6, &v27);

      *(v15 + 14) = v26;
      v21 = "❌ [Name Recognition] - %@%s";
      goto LABEL_13;
    }

LABEL_15:

    goto LABEL_16;
  }

  v9 = v27;
  v11 = v28;
  v10 = v29;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v12 = sub_25AEA12C8();
  __swift_project_value_buffer(v12, qword_27FA1DF50);

  v13 = sub_25AEA12A8();
  v14 = sub_25AEA2488();

  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_15;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v27 = v17;
  *v15 = 138412546;
  sub_25AE426AC();
  swift_allocError();
  *v18 = v9;
  *(v18 + 8) = v11;
  *(v18 + 16) = v10;
  v19 = _swift_stdlib_bridgeErrorToNSError();
  *(v15 + 4) = v19;
  *v16 = v19;
  *(v15 + 12) = 2080;
  v20 = sub_25AE65D2C(v7, v6, &v27);

  *(v15 + 14) = v20;
  v21 = "%@%s";
LABEL_13:
  _os_log_impl(&dword_25AE3C000, v13, v14, v21, v15, 0x16u);
  sub_25AE65DF8(v16);
  MEMORY[0x25F85AB80](v16, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v17);
  MEMORY[0x25F85AB80](v17, -1, -1);
  MEMORY[0x25F85AB80](v15, -1, -1);
LABEL_16:
}

uint64_t sub_25AE65B90()
{
  v0 = sub_25AEA12C8();
  __swift_allocate_value_buffer(v0, qword_27FA1DF50);
  __swift_project_value_buffer(v0, qword_27FA1DF50);
  return sub_25AEA12B8();
}

uint64_t NRLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v2 = sub_25AEA12C8();
  v3 = __swift_project_value_buffer(v2, qword_27FA1DF50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_25AE65CBC()
{
  v0 = sub_25AEA2178();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_27FA22788 = v1;
}

uint64_t sub_25AE65D2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25AE65E60(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25AE418A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_25AE65DF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2F0, &unk_25AEA35F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25AE65E60(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25AE65F6C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25AEA26E8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25AE65F6C(uint64_t a1, unint64_t a2)
{
  v4 = sub_25AE65FB8(a1, a2);
  sub_25AE660E8(&unk_286C3CA88);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25AE65FB8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25AE661D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25AEA26E8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25AEA2248();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25AE661D4(v10, 0);
        result = sub_25AEA2668();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25AE660E8(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25AE66248(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25AE661D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF68, &qword_25AEA5540);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25AE66248(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF68, &qword_25AEA5540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_25AE6638C(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_25AEA0F28();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF70, &qword_25AEA55A8) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF78, &qword_25AEA55B0);
  v3[21] = v8;
  v9 = *(v8 - 8);
  v3[22] = v9;
  v10 = *(v9 + 64) + 15;
  v3[23] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF80, &qword_25AEA55B8);
  v3[24] = v11;
  v12 = *(v11 - 8);
  v3[25] = v12;
  v13 = *(v12 + 64) + 15;
  v3[26] = swift_task_alloc();
  v14 = sub_25AEA0F88();
  v3[27] = v14;
  v15 = *(v14 - 8);
  v3[28] = v15;
  v16 = *(v15 + 64) + 15;
  v3[29] = swift_task_alloc();
  v17 = sub_25AEA0F18();
  v3[30] = v17;
  v18 = *(v17 - 8);
  v3[31] = v18;
  v19 = *(v18 + 64) + 15;
  v3[32] = swift_task_alloc();
  v20 = sub_25AEA0F08();
  v3[33] = v20;
  v21 = *(v20 - 8);
  v3[34] = v21;
  v22 = *(v21 + 64) + 15;
  v3[35] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF88, &qword_25AEA55C0) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v24 = sub_25AEA0FA8();
  v3[37] = v24;
  v25 = *(v24 - 8);
  v3[38] = v25;
  v26 = *(v25 + 64) + 15;
  v3[39] = swift_task_alloc();
  v27 = sub_25AEA0EB8();
  v3[40] = v27;
  v28 = *(v27 - 8);
  v3[41] = v28;
  v29 = *(v28 + 64) + 15;
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25AE6675C, 0, 0);
}

uint64_t sub_25AE6675C()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = MEMORY[0x277D84F90];

  sub_25AEA2478();
  v3 = MEMORY[0x25F859F80]();
  v4 = *MEMORY[0x277CE7928];
  swift_beginAccess();
  v5 = *&v3[v4];
  *(v0 + 344) = v5;
  v6 = v5;

  v7 = sub_25AEA2448();
  v8 = *(v0 + 336);
  if (v7)
  {
    sub_25AEA2438();
  }

  else
  {
    sub_25AEA0EA8();
  }

  v9 = *(v0 + 336);
  v11 = *(v0 + 280);
  v10 = *(v0 + 288);
  v13 = *(v0 + 264);
  v12 = *(v0 + 272);
  v15 = *(v0 + 248);
  v14 = *(v0 + 256);
  v16 = *(v0 + 240);
  v32 = *(v0 + 232);
  v17 = *(v0 + 224);
  v33 = *(v0 + 216);
  v34 = *(v0 + 312);
  v39 = *(v0 + 208);
  v36 = *(v0 + 184);
  v37 = *(v0 + 176);
  v38 = *(v0 + 168);
  v35 = *(v0 + 128);
  v31 = *(v0 + 112);
  v18 = sub_25AEA0F38();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = swift_task_alloc();
  *(v19 + 16) = v31;
  *(v19 + 32) = v9;
  (*(v12 + 104))(v11, *MEMORY[0x277D70198], v13);
  (*(v15 + 104))(v14, *MEMORY[0x277D701A0], v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DF90, &qword_25AEA55C8);
  v20 = *(v17 + 72);
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25AEA3F30;
  sub_25AEA0F78();
  sub_25AEA0F68();
  sub_25AEA0F58();
  *(v0 + 96) = v22;
  sub_25AE675D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DFA0, &qword_25AEA55D0);
  sub_25AE67630();
  sub_25AEA2578();
  sub_25AEA0F98();

  v23 = *(v35 + 24);
  sub_25AEA0F48();
  sub_25AEA2398();
  (*(v37 + 8))(v36, v38);
  v24 = MEMORY[0x277D701F0];
  *(v0 + 360) = *MEMORY[0x277D701D0];
  *(v0 + 364) = *v24;
  v25 = *(MEMORY[0x277D858B8] + 4);
  v26 = swift_task_alloc();
  *(v0 + 352) = v26;
  *v26 = v0;
  v26[1] = sub_25AE66AFC;
  v27 = *(v0 + 208);
  v28 = *(v0 + 192);
  v29 = *(v0 + 160);

  return MEMORY[0x2822005A8](v29, 0, 0, v28, v0 + 104);
}

uint64_t sub_25AE66AFC()
{
  v2 = *(*v1 + 352);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_25AE67298;
  }

  else
  {
    v3 = sub_25AE66C0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25AE66C0C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 344);
    v6 = *(v0 + 304);
    v5 = *(v0 + 312);
    v7 = *(v0 + 296);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    sub_25AE426AC();
    swift_allocError();
    *v8 = 3;
    *(v8 + 8) = 0xD00000000000003BLL;
    *(v8 + 16) = 0x800000025AEA8E00;
    swift_willThrow();

    (*(v6 + 8))(v5, v7);
LABEL_3:
    v9 = *(v0 + 312);
    v11 = *(v0 + 280);
    v10 = *(v0 + 288);
    v12 = *(v0 + 256);
    v13 = *(v0 + 232);
    v14 = *(v0 + 208);
    v15 = *(v0 + 184);
    v16 = *(v0 + 160);
    v71 = *(v0 + 152);
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

    v17 = *(v0 + 8);

    return v17();
  }

  v19 = *(v0 + 360);
  v20 = *(v0 + 152);
  (*(v3 + 32))(v20, v1, v2);
  v21 = (*(v3 + 88))(v20, v2);
  if (v21 == v19)
  {
    v22 = *(v0 + 152);
    (*(*(v0 + 144) + 96))(v22, *(v0 + 136));
    v23 = *v22;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v24 = *(v0 + 128);
      v26 = sub_25AE6633C();
      if (*v25)
      {
        v27 = v25;
        v23 = v23;
        MEMORY[0x25F859DF0]();
        if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v55 = *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_25AEA2318();
        }

        sub_25AEA2338();
      }

      (v26)(v0 + 16, 0);
    }

    else
    {
      sub_25AE426AC();
      v41 = swift_allocError();
      *v42 = 3;
      *(v42 + 8) = 0xD000000000000025;
      *(v42 + 16) = 0x800000025AEA8EC0;
      NRLogError(_:additionalMessage:)(v41, 0, 0);
    }

    goto LABEL_24;
  }

  if (v21 != *(v0 + 364))
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
LABEL_24:
    v43 = *(MEMORY[0x277D858B8] + 4);
    v44 = swift_task_alloc();
    *(v0 + 352) = v44;
    *v44 = v0;
    v44[1] = sub_25AE66AFC;
    v45 = *(v0 + 208);
    v46 = *(v0 + 192);
    v47 = *(v0 + 160);

    return MEMORY[0x2822005A8](v47, 0, 0, v46, v0 + 104);
  }

  v28 = *(*(v0 + 128) + 16);
  if (!v28)
  {
    goto LABEL_29;
  }

  if (v28 >> 62)
  {
    if (sub_25AEA25B8())
    {
      goto LABEL_17;
    }

LABEL_29:
    v56 = *(v0 + 344);
    v58 = *(v0 + 304);
    v57 = *(v0 + 312);
    v59 = *(v0 + 296);
    v61 = *(v0 + 200);
    v60 = *(v0 + 208);
    v62 = *(v0 + 192);
    sub_25AE426AC();
    swift_allocError();
    *v63 = 3;
    *(v63 + 8) = 0xD00000000000003DLL;
    *(v63 + 16) = 0x800000025AEA8E40;
    swift_willThrow();

    (*(v61 + 8))(v60, v62);
    (*(v58 + 8))(v57, v59);
    goto LABEL_3;
  }

  if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

LABEL_17:
  sub_25AE67694();

  v30 = sub_25AE64F00(v29);
  v31 = *(v0 + 344);
  if (!v30)
  {
    v49 = *(v0 + 304);
    v48 = *(v0 + 312);
    v50 = *(v0 + 296);
    v52 = *(v0 + 200);
    v51 = *(v0 + 208);
    v53 = *(v0 + 192);
    sub_25AE426AC();
    swift_allocError();
    *v54 = 3;
    *(v54 + 8) = 0xD00000000000003ALL;
    *(v54 + 16) = 0x800000025AEA8E80;
    swift_willThrow();

    (*(v52 + 8))(v51, v53);
    (*(v49 + 8))(v48, v50);
    goto LABEL_3;
  }

  v33 = *(v0 + 328);
  v32 = *(v0 + 336);
  v34 = *(v0 + 312);
  v36 = *(v0 + 296);
  v35 = *(v0 + 304);
  v64 = *(v0 + 320);
  v65 = *(v0 + 288);
  v66 = *(v0 + 280);
  v67 = *(v0 + 256);
  v37 = *(v0 + 200);
  v38 = *(v0 + 208);
  v39 = *(v0 + 192);
  v68 = *(v0 + 232);
  v69 = *(v0 + 184);
  v70 = *(v0 + 160);
  v72 = *(v0 + 152);
  v73 = v30;

  (*(v37 + 8))(v38, v39);
  (*(v35 + 8))(v34, v36);
  (*(v33 + 8))(v32, v64);

  v40 = *(v0 + 8);

  return v40(v73);
}

uint64_t sub_25AE67298()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 192);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 312);
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  v10 = *(v0 + 256);
  v11 = *(v0 + 232);
  v12 = *(v0 + 208);
  v13 = *(v0 + 184);
  v14 = *(v0 + 160);
  v17 = *(v0 + 152);
  v18 = *(v0 + 104);
  (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_25AE673E8()
{
  v0 = sub_25AEA0FF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_25AEA1008();
  sub_25AEA0E68();
  sub_25AEA0EF8();

  (*(v1 + 8))(v4, v0);
  sub_25AEA0FD8();
  __swift_destroy_boxed_opaque_existential_0(v6);
  sub_25AEA0FD8();
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_25AE6752C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25AE67590@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NameGenerator();
  result = sub_25AEA1428();
  *a1 = result;
  return result;
}

uint64_t sub_25AE675CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_25AE673E8();
}

unint64_t sub_25AE675D8()
{
  result = qword_27FA1DF98;
  if (!qword_27FA1DF98)
  {
    sub_25AEA0F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DF98);
  }

  return result;
}

unint64_t sub_25AE67630()
{
  result = qword_27FA1DFA8;
  if (!qword_27FA1DFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1DFA0, &qword_25AEA55D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1DFA8);
  }

  return result;
}

unint64_t sub_25AE67694()
{
  result = qword_27FA1DFB0[0];
  if (!qword_27FA1DFB0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FA1DFB0);
  }

  return result;
}

uint64_t sub_25AE676E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25AE67728(uint64_t a1, int a2)
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

uint64_t sub_25AE67770(uint64_t result, int a2, int a3)
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

uint64_t sub_25AE6780C(double a1)
{
  if (a1 == 55.0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  if (a1 == 16.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 0.0)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25AE67858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = sub_25AE67DBC();

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25AE678D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = sub_25AE67E10();

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25AE67940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = sub_25AE67E10();

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25AE679BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = sub_25AE67E10();

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25AE67A38@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25AE6780C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25AE67A90@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v25 = a1;
  v26 = a5;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25AEA1738();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v25 - v19;
  a2(v18);
  sub_25AEA1AD8();
  v21 = qword_25AEA5748[v25];
  sub_25AEA1D18();
  (*(v8 + 8))(v11, a3);
  v27 = a4;
  v28 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v22 = v13[2];
  v22(v20, v17, v12);
  v23 = v13[1];
  v23(v17, v12);
  v22(v26, v20, v12);
  return (v23)(v20, v12);
}

uint64_t sub_25AE67D3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_25AEA1738();
  return swift_getWitnessTable();
}

unint64_t sub_25AE67DBC()
{
  result = qword_27FA1E0B8;
  if (!qword_27FA1E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E0B8);
  }

  return result;
}

unint64_t sub_25AE67E10()
{
  result = qword_27FA1E0C0;
  if (!qword_27FA1E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E0C0);
  }

  return result;
}

unint64_t sub_25AE67E64()
{
  v1 = v0;
  v2 = sub_25AEA1148();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D79808])
  {
    return 0xD000000000000028;
  }

  if (v7 == *MEMORY[0x277D79810])
  {
    return 0xD000000000000026;
  }

  if (v7 == *MEMORY[0x277D797F8])
  {
    return 0xD00000000000002ELL;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_25AE6803C()
{
  v1 = sub_25AEA0D18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 collectedEnrollments];
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = v6;
    v15 = MEMORY[0x277D84F90];
    sub_25AEA24F8();
    sub_25AE68220();
    sub_25AEA2548();
    while (v14)
    {
      sub_25AE417EC(&v13, v11);
      type metadata accessor for CollectedEnrollment();
      if ((swift_dynamicCast() & 1) != 0 && v12)
      {
        MEMORY[0x25F859DF0]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v9 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_25AEA2318();
        }

        sub_25AEA2338();
        v7 = v15;
      }

      sub_25AEA2548();
    }

    (*(v2 + 8))(v5, v1);
  }

  return v7;
}

unint64_t sub_25AE68220()
{
  result = qword_27FA1D390;
  if (!qword_27FA1D390)
  {
    sub_25AEA0D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D390);
  }

  return result;
}

id NameConfiguration.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id NameConfiguration.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for NameConfiguration();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id NameConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NameConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static NameConfiguration.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_25AEA2178();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_25AE6845C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    sub_25AEA0E28();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_25AEA0E48();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_25AE68500(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_25AE6884C(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_25AEA0E48();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25AEA0E18();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier_];
}

void sub_25AE6862C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_25AEA21A8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_25AE68690(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_25AEA2178();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

uint64_t sub_25AE68700@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for NameConfiguration();
  result = sub_25AEA2698();
  *a1 = result;
  return result;
}

id sub_25AE687FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 collectedEnrollments];
  *a2 = result;
  return result;
}

uint64_t sub_25AE6884C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE688BC()
{
  sub_25AEA2688();
  if (qword_27FA1D260 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA1E0D8;
  v0 = unk_27FA1E0E0;

  result = MEMORY[0x25F859D40](0xD000000000000027, 0x800000025AEA9120);
  qword_27FA1E0C8 = v1;
  unk_27FA1E0D0 = v0;
  return result;
}

uint64_t static FileUtility.baseDirectory.getter()
{
  if (qword_27FA1D258 != -1)
  {
    swift_once();
  }

  v0 = qword_27FA1E0C8;

  return v0;
}

uint64_t static FileUtility.writeAllNamesToFiles(for:)(unint64_t a1)
{
  v11 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25AEA25B8())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F85A1C0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = sub_25AE68B10(v5);
      if (v1)
      {
      }

      v9 = v8;

      sub_25AE69FB4(v9);
      if (v7 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_25AE68B10(void *a1)
{
  v2 = v1;
  v4 = sub_25AEA0E48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = [a1 identifier];
  if (v16)
  {
    v17 = v16;
    sub_25AEA0E28();

    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
  }

  sub_25AE62AE0(v13, v15);
  if ((*(v5 + 48))(v15, 1, v4))
  {
    sub_25AE41938(v15, &qword_27FA1D380, &unk_25AEA3E80);
LABEL_6:
    v18 = 0x800000025AEA90C0;
    sub_25AE426AC();
    swift_allocError();
    *v19 = 10;
    *(v19 + 8) = 0xD00000000000002ELL;
    *(v19 + 16) = 0x800000025AEA90C0;
    swift_willThrow();
    return v18;
  }

  (*(v5 + 16))(v8, v15, v4);
  sub_25AE41938(v15, &qword_27FA1D380, &unk_25AEA3E80);
  v45 = sub_25AEA0E08();
  v22 = v21;
  (*(v5 + 8))(v8, v4);
  v23 = [a1 humanReadableName];
  if (!v23)
  {

    goto LABEL_6;
  }

  v24 = v23;
  v43 = sub_25AEA21A8();
  v46 = v25;

  v26 = sub_25AE6803C();
  v27 = v26;
  if (v26 >> 62)
  {
    goto LABEL_28;
  }

  v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_29:

    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v44 = v22;
    v51 = MEMORY[0x277D84F90];
    result = sub_25AE8E0E8(0, v28 & ~(v28 >> 63), 0);
    if (v28 < 0)
    {
      break;
    }

    v29 = 0;
    v18 = v51;
    v41 = v27 & 0xFFFFFFFFFFFFFF8;
    v42 = v27 & 0xC000000000000001;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v42)
      {
        v31 = MEMORY[0x25F85A1C0](v29, v27);
      }

      else
      {
        if (v29 >= *(v41 + 16))
        {
          goto LABEL_27;
        }

        v31 = *(v27 + 8 * v29 + 32);
      }

      v32 = v31;
      v49 = v31;
      sub_25AE68FAC(&v49, v43, v46, v45, v44, &v48, v50);
      if (v2)
      {

        return v18;
      }

      v47 = 0;
      v33 = v28;

      v35 = v50[0];
      v34 = v50[1];
      v51 = v18;
      v37 = *(v18 + 16);
      v36 = *(v18 + 24);
      v22 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        sub_25AE8E0E8((v36 > 1), v37 + 1, 1);
        v18 = v51;
      }

      *(v18 + 16) = v22;
      v38 = v18 + 16 * v37;
      *(v38 + 32) = v35;
      *(v38 + 40) = v34;
      ++v29;
      v28 = v33;
      v39 = v30 == v33;
      v2 = v47;
      if (v39)
      {

        return v18;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v28 = sub_25AEA25B8();
    if (!v28)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25AE68FAC@<X0>(id *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>)
{
  v102 = a6;
  v99 = a3;
  v88 = a4;
  v89 = a5;
  v98 = a2;
  v87 = a7;
  v8 = sub_25AEA0D38();
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = *(v93 + 64);
  MEMORY[0x28223BE20](v8);
  v92 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D950, &unk_25AEA4490);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v90 = &v86 - v13;
  v97 = sub_25AEA0DB8();
  v14 = *(v97 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v97);
  v95 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v91 = &v86 - v18;
  v19 = sub_25AEA0E48();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v107 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v86 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v86 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v86 - v34;
  v36 = *a1;
  v37 = [*a1 identifier];
  v96 = v14;
  if (v37)
  {
    v38 = v37;
    sub_25AEA0E28();

    v39 = *(v20 + 56);
    v40 = v33;
    v41 = 0;
  }

  else
  {
    v39 = *(v20 + 56);
    v40 = v33;
    v41 = 1;
  }

  v101 = v39;
  v39(v40, v41, 1, v19);
  sub_25AE62AE0(v33, v35);
  v42 = *(v20 + 48);
  if (v42(v35, 1, v19))
  {
    sub_25AE41938(v35, &qword_27FA1D380, &unk_25AEA3E80);
LABEL_6:
    v105 = 0;
    v106 = 0xE000000000000000;
    sub_25AEA2688();

    v105 = 0xD000000000000029;
    v106 = 0x800000025AEA90F0;
    v43 = [v36 identifier];
    if (v43)
    {
      v44 = v43;
      sub_25AEA0E28();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v60 = v107;
    v101(v27, v45, 1, v19);
    sub_25AE62AE0(v27, v30);
    if (v42(v30, 1, v19))
    {
      sub_25AE41938(v30, &qword_27FA1D380, &unk_25AEA3E80);
      v61 = 0;
      v62 = 0;
    }

    else
    {
      (*(v20 + 16))(v60, v30, v19);
      sub_25AE41938(v30, &qword_27FA1D380, &unk_25AEA3E80);
      v61 = sub_25AEA0E08();
      v62 = v63;
      (*(v20 + 8))(v60, v19);
    }

    v103 = v61;
    v104 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D388, &qword_25AEA5220);
    v64 = sub_25AEA21D8();
    MEMORY[0x25F859D40](v64);

    v65 = v105;
    v66 = v106;
    sub_25AE426AC();
    v58 = swift_allocError();
    *v67 = 10;
    *(v67 + 8) = v65;
    *(v67 + 16) = v66;
    result = swift_willThrow();
    goto LABEL_16;
  }

  v46 = v107;
  (*(v20 + 16))(v107, v35, v19);
  sub_25AE41938(v35, &qword_27FA1D380, &unk_25AEA3E80);
  v86 = sub_25AEA0E08();
  v48 = v47;
  (*(v20 + 8))(v46, v19);
  v49 = [v36 audioData];
  if (!v49)
  {

    goto LABEL_6;
  }

  v50 = v49;
  v51 = sub_25AEA0DE8();
  v53 = v52;

  v105 = v98;
  v106 = v99;

  MEMORY[0x25F859D40](45, 0xE100000000000000);
  MEMORY[0x25F859D40](v86, v48);

  v55 = v105;
  v54 = v106;
  v56 = v100;
  v57 = sub_25AE6461C(v51, v53);
  v58 = v56;
  if (v56)
  {

    result = sub_25AE42754(v51, v53);
LABEL_16:
    *v102 = v58;
    return result;
  }

  v100 = v57;
  v101 = v51;
  v107 = v53;
  if (qword_27FA1D268 != -1)
  {
    swift_once();
  }

  v69 = qword_27FA1E0E8;
  v68 = qword_27FA1E0F0;
  v105 = v88;
  v106 = v89;

  MEMORY[0x25F859D40](47, 0xE100000000000000);
  v70 = v105;
  v71 = v106;
  v105 = v69;
  v106 = v68;

  MEMORY[0x25F859D40](v70, v71);

  v72 = v105;
  v73 = v106;
  v99 = v105;
  v105 = v55;
  v106 = v54;
  MEMORY[0x25F859D40](1986098990, 0xE400000000000000);
  v74 = v105;
  v75 = v106;
  v105 = v72;
  v106 = v73;

  MEMORY[0x25F859D40](v74, v75);

  v76 = v96;
  v77 = v97;
  (*(v96 + 56))(v90, 1, 1, v97);
  (*(v93 + 104))(v92, *MEMORY[0x277CC91D8], v94);

  v78 = v95;
  sub_25AEA0DA8();
  v79 = v91;
  v80 = v100;
  sub_25AE6991C(v100, v78, v91);
  v99 = 0;
  v81 = *(v76 + 8);
  v81(v78, v77);

  v82 = sub_25AEA0D98();
  v84 = v83;

  sub_25AE42754(v101, v107);
  result = (v81)(v79, v77);
  v85 = v87;
  *v87 = v82;
  v85[1] = v84;
  return result;
}

void sub_25AE6991C(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_self() defaultManager];
  sub_25AEA0D98();
  v7 = sub_25AEA2178();

  v8 = [v6 fileExistsAtPath_];

  if (v8)
  {
    v9 = sub_25AEA0DB8();
    (*(*(v9 - 8) + 16))(a3, a2, v9);

    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  v36 = 1;
  v11 = sub_25AEA2178();
  v12 = [v6 fileExistsAtPath:v11 isDirectory:&v36];

  v34 = v6;
  if ((v12 & 1) == 0)
  {
    v13 = sub_25AEA2178();
    v35 = 0;
    v14 = [v6 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v35];

    if (!v14)
    {
LABEL_9:
      v30 = v35;
      sub_25AEA0D08();

      swift_willThrow();
LABEL_11:

      goto LABEL_12;
    }

    v15 = v35;
  }

  v16 = [a1 format];
  v17 = [v16 settings];

  sub_25AEA2138();
  v18 = [a1 format];
  v19 = [v18 commonFormat];

  v20 = [a1 format];
  v21 = [v20 isInterleaved];

  v22 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v23 = sub_25AEA0D78();
  v24 = sub_25AEA2128();

  v35 = 0;
  v25 = [v22 initForWriting:v23 settings:v24 commonFormat:v19 interleaved:v21 error:&v35];

  v26 = v35;
  if (!v25)
  {
    goto LABEL_9;
  }

  v35 = 0;
  v27 = v26;
  if (([v25 writeFromBuffer:a1 error:&v35] & 1) == 0)
  {
    v31 = v35;
    sub_25AEA0D08();

    swift_willThrow();
    goto LABEL_11;
  }

  v28 = v35;

  v29 = sub_25AEA0DB8();
  (*(*(v29 - 8) + 16))(v33, a2, v29);
LABEL_12:
  v32 = *MEMORY[0x277D85DE8];
}

void sub_25AE69D0C()
{
  v0 = AXCPSharedResourcesDirectory();
  if (v0)
  {
    v1 = v0;
    v2 = sub_25AEA21A8();
    v4 = v3;

    qword_27FA1E0D8 = v2;
    unk_27FA1E0E0 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AE69DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (qword_27FA1D258 != -1)
  {
    swift_once();
  }

  v10 = qword_27FA1E0C8;
  v11 = unk_27FA1E0D0;

  result = MEMORY[0x25F859D40](a2, a3);
  *a4 = v10;
  *a5 = v11;
  return result;
}

id sub_25AE69E58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = sub_25AEA0D78();
  v18[0] = 0;
  v9 = [v4 initForReading:v8 commonFormat:a2 interleaved:a3 & 1 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_25AEA0DB8();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v18[0];
    sub_25AEA0D08();

    swift_willThrow();
    v15 = sub_25AEA0DB8();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_25AE69FB4(uint64_t result)
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
  v7 = *v1;
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25AE5BA20(result, v11, 1, v3);
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_25AE6A0A8(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = sub_25AEA0D38();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D950, &unk_25AEA4490);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  v12 = sub_25AEA0DB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  v35 = a1;
  v34 = a2;
  v19 = sub_25AEA2178();
  LODWORD(a2) = [v18 fileExistsAtPath_];

  if (a2)
  {
    v20 = [v17 defaultManager];
    (*(v13 + 56))(v11, 1, 1, v12);
    (*(v32 + 104))(v7, *MEMORY[0x277CC91D8], v33);
    v21 = v34;

    sub_25AEA0DA8();
    v22 = sub_25AEA0D78();
    (*(v13 + 8))(v16, v12);
    v37 = 0;
    v23 = [v20 removeItemAtURL:v22 error:&v37];

    if (v23)
    {
      v24 = v37;
    }

    else
    {
      v25 = v37;
      v26 = sub_25AEA0D08();

      swift_willThrow();
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_25AEA2688();
      MEMORY[0x25F859D40](0xD000000000000017, 0x800000025AEA90A0);
      MEMORY[0x25F859D40](v35, v21);
      MEMORY[0x25F859D40](2108704, 0xE300000000000000);
      v36 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
      sub_25AEA2738();
      v27 = v37;
      v28 = v38;
      sub_25AE426AC();
      swift_allocError();
      *v29 = 10;
      *(v29 + 8) = v27;
      *(v29 + 16) = v28;
      swift_willThrow();
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_25AE6A498()
{
  v31 = *MEMORY[0x277D85DE8];
  v0 = sub_25AEA0DB8();
  v28 = *(v0 - 8);
  v1 = *(v28 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25AEA0CF8();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  v30 = 1;
  if (qword_27FA1D258 != -1)
  {
    swift_once();
  }

  v9 = sub_25AEA2178();
  v10 = [v8 fileExistsAtPath:v9 isDirectory:&v30];

  if (v10)
  {
  }

  else
  {
    v25 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E108, &qword_25AEA57D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25AEA3540;
    v12 = *MEMORY[0x277CCA1B0];
    *(inited + 32) = *MEMORY[0x277CCA1B0];
    v13 = *MEMORY[0x277CCA1A0];
    *(inited + 40) = *MEMORY[0x277CCA1A0];
    v14 = v12;
    v15 = v13;
    v16 = sub_25AE70054(inited);
    swift_setDeallocating();
    sub_25AE41938(inited + 32, &qword_27FA1E110, &qword_25AEA57D8);
    sub_25AEA0CE8();
    sub_25AEA0CD8();
    sub_25AEA0D48();
    v17 = sub_25AEA0D78();
    sub_25AE6E478(v16);

    type metadata accessor for FileAttributeKey(0);
    sub_25AE6ADA4();
    v18 = sub_25AEA2128();

    v29 = 0;
    v19 = [v8 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:v18 error:&v29];

    if (v19)
    {
      v20 = v29;
      sub_25AEA0D68();
    }

    else
    {
      v21 = v29;
      sub_25AEA0D08();

      swift_willThrow();
    }

    v22 = v25;

    (*(v28 + 8))(v3, v22);
    (*(v26 + 8))(v7, v27);
  }

  v23 = *MEMORY[0x277D85DE8];
}

id sub_25AE6A858(id a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = sub_25AEA0DB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - v10;
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_25AEA2178();
  v14 = [v12 fileExistsAtPath_];

  if (v14)
  {
    sub_25AEA0D58();
    (*(v5 + 16))(v9, v11, v4);
    v15 = objc_allocWithZone(MEMORY[0x277CB8398]);
    v16 = v35[1];
    v17 = sub_25AE69E58(v9, 3, 0);
    if (!v16)
    {
      v21 = v17;
      v22 = v4;
      v23 = [v17 processingFormat];
      v24 = [v21 length];
      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!HIDWORD(v24))
      {
        a1 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v23 frameCapacity:v24];

        if (a1)
        {
          v36 = 0;
          if ([v21 readIntoBuffer:a1 error:&v36])
          {
            v25 = *(v5 + 8);
            v26 = v36;
            v25(v11, v22);

            goto LABEL_13;
          }

          v28 = v36;
          v29 = sub_25AEA0D08();

          swift_willThrow();
          v36 = 0;
          v37 = 0xE000000000000000;
          sub_25AEA2688();
          MEMORY[0x25F859D40](0xD00000000000002ALL, 0x800000025AEA91B0);
          v35[2] = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
          sub_25AEA2738();
          v30 = v36;
          v31 = v37;
          sub_25AE426AC();
          swift_allocError();
          *v32 = 10;
          *(v32 + 8) = v30;
          *(v32 + 16) = v31;
          swift_willThrow();
        }

        else
        {
          a1 = 0x800000025AEA9170;
          sub_25AE426AC();
          swift_allocError();
          *v27 = 10;
          *(v27 + 8) = 0xD000000000000039;
          *(v27 + 16) = 0x800000025AEA9170;
          swift_willThrow();
        }

        (*(v5 + 8))(v11, v22);
        goto LABEL_13;
      }

      __break(1u);
    }

    (*(v5 + 8))(v11, v4);
  }

  else
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_25AEA2688();

    v36 = 0xD00000000000001DLL;
    v37 = 0x800000025AEA9150;
    MEMORY[0x25F859D40](a1, a2);
    v18 = v36;
    v19 = v37;
    sub_25AE426AC();
    swift_allocError();
    *v20 = 10;
    *(v20 + 8) = v18;
    *(v20 + 16) = v19;
    swift_willThrow();
  }

LABEL_13:
  v33 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t getEnumTagSinglePayload for FileUtility(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FileUtility(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25AE6ADA4()
{
  result = qword_27FA1D350;
  if (!qword_27FA1D350)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1D350);
  }

  return result;
}

uint64_t static TapToRadarUtils.generateAndOpenRadar(attachmentPaths:)(uint64_t a1)
{
  v3 = sub_25AEA0DB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25AE6AF1C(0xD000000000000018, 0x800000025AEA91E0, 0xD0000000000000A6, 0x800000025AEA9200, a1, v7);
  if (!v1)
  {
    sub_25AE6C040();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_25AE6AF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v104 = a3;
  v105 = a4;
  v103 = a2;
  v102 = a1;
  v100 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D950, &unk_25AEA4490);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v99 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v109 = &v97 - v11;
  v12 = sub_25AEA0BD8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v111 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v113 = &v97 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v112 = &v97 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v114 = &v97 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v115 = &v97 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v116 = &v97 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v117 = &v97 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v118 = &v97 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v97 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v97 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v97 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v97 - v40;
  v42 = sub_25AEA0C38();
  v107 = *(v42 - 8);
  v108 = v42;
  v43 = *(v107 + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v98 = &v97 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = &v97 - v46;
  result = [objc_opt_self() defaultManager];
  v119 = v13;
  v120 = result;
  v49 = *(a5 + 16);
  v122 = v39;
  v123 = v47;
  v106 = v12;
  v124 = v36;
  v121 = v33;
  if (v49)
  {
    v50 = 0;
    v51 = a5 + 40;
    v110 = MEMORY[0x277D84F90];
    v101 = a5 + 40;
    do
    {
      v52 = (v51 + 16 * v50);
      v53 = v50;
      while (1)
      {
        if (v53 >= v49)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return result;
        }

        v54 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_24;
        }

        v55 = v49;
        v56 = v41;
        v58 = *(v52 - 1);
        v57 = *v52;

        v59 = sub_25AEA2178();
        v60 = [v120 fileExistsAtPath_];

        if (v60)
        {
          break;
        }

        ++v53;
        v52 += 2;
        v49 = v55;
        v61 = v54 == v55;
        v13 = v119;
        v41 = v56;
        v39 = v122;
        v33 = v121;
        if (v61)
        {
          goto LABEL_17;
        }
      }

      v62 = v110;
      result = swift_isUniquelyReferenced_nonNull_native();
      v125 = v62;
      if ((result & 1) == 0)
      {
        result = sub_25AE8E0E8(0, *(v62 + 2) + 1, 1);
        v62 = v125;
      }

      v49 = v55;
      v50 = v53 + 1;
      v64 = *(v62 + 2);
      v63 = *(v62 + 3);
      if (v64 >= v63 >> 1)
      {
        result = sub_25AE8E0E8((v63 > 1), v64 + 1, 1);
        v50 = v54;
        v49 = v55;
        v62 = v125;
      }

      *(v62 + 2) = v64 + 1;
      v110 = v62;
      v65 = &v62[16 * v64];
      *(v65 + 4) = v58;
      *(v65 + 5) = v57;
      v13 = v119;
      v41 = v56;
      v39 = v122;
      v33 = v121;
      v51 = v101;
    }

    while (v50 != v49);
  }

  else
  {
    v110 = MEMORY[0x277D84F90];
  }

LABEL_17:
  v125 = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E128, &qword_25AEA5910);
  sub_25AE6C3E4();
  v101 = sub_25AEA2158();
  v66 = v106;

  sub_25AEA0C28();
  sub_25AEA0C18();
  MEMORY[0x25F858720](7824750, 0xE300000000000000);
  v67 = v41;
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();
  sub_25AEA0BC8();

  sub_25AEA0BC8();
  sub_25AEA0BC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E138, &qword_25AEA5808);
  v68 = *(v13 + 72);
  v69 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v70 = swift_allocObject();
  v105 = v70;
  *(v70 + 16) = xmmword_25AEA57E0;
  v71 = v33;
  v72 = v13;
  v73 = v70 + v69;
  v74 = v39;
  v75 = *(v72 + 16);
  v110 = v67;
  v75(v73, v67, v66);
  v75(v73 + v68, v74, v66);
  v75(v73 + 2 * v68, v124, v66);
  v75(v73 + 3 * v68, v71, v66);
  v75(v73 + 4 * v68, v118, v66);
  v75(v73 + 5 * v68, v117, v66);
  v75(v73 + 6 * v68, v116, v66);
  v75(v73 + 7 * v68, v115, v66);
  v75(v73 + 8 * v68, v114, v66);
  v76 = v112;
  v77 = v123;
  v75(v73 + 9 * v68, v112, v66);
  v75(v73 + 10 * v68, v113, v66);
  v78 = v73 + 11 * v68;
  v79 = v111;
  (v75)(v78);
  sub_25AEA0BE8();
  v80 = v109;
  sub_25AEA0BF8();
  v81 = sub_25AEA0DB8();
  v105 = *(v81 - 8);
  v82 = *(v105 + 48);
  if (v82(v80, 1, v81) == 1)
  {
    v83 = v66;
    sub_25AE6C448(v80);
    sub_25AE426AC();
    v84 = swift_allocError();
    *v85 = 9;
    *(v85 + 8) = 0xD000000000000049;
    *(v85 + 16) = 0x800000025AEA93B0;
    NRLogError(_:additionalMessage:)(v84, 0, 0);

    v86 = v98;
    sub_25AEA0C28();
    sub_25AEA0C18();
    MEMORY[0x25F858720](7824750, 0xE300000000000000);
    v87 = v99;
    sub_25AEA0BF8();
    if (v82(v87, 1, v81) == 1)
    {
      sub_25AE6C448(v87);
      swift_allocError();
      *v88 = 9;
      *(v88 + 8) = 0xD00000000000002CLL;
      *(v88 + 16) = 0x800000025AEA9400;
      swift_willThrow();

      v89 = v108;
      v90 = *(v107 + 8);
      v90(v86, v108);
      v91 = *(v119 + 8);
      v91(v111, v83);
      v91(v113, v83);
      v91(v112, v83);
      v91(v114, v83);
      v91(v115, v83);
      v91(v116, v83);
      v91(v117, v83);
      v91(v118, v83);
      v91(v121, v83);
      v91(v124, v83);
      v91(v122, v83);
      v91(v110, v83);
      return (v90)(v123, v89);
    }

    v94 = v108;
    v95 = *(v107 + 8);
    v95(v86, v108);
    v96 = *(v119 + 8);
    v96(v111, v83);
    v96(v113, v83);
    v96(v112, v83);
    v96(v114, v83);
    v96(v115, v83);
    v96(v116, v83);
    v96(v117, v83);
    v96(v118, v83);
    v96(v121, v83);
    v96(v124, v83);
    v96(v122, v83);
    v96(v110, v83);
    v95(v123, v94);
    v93 = v87;
  }

  else
  {

    v92 = *(v72 + 8);
    v92(v79, v66);
    v92(v113, v66);
    v92(v76, v66);
    v92(v114, v66);
    v92(v115, v66);
    v92(v116, v66);
    v92(v117, v66);
    v92(v118, v66);
    v92(v121, v66);
    v92(v124, v66);
    v92(v122, v66);
    v92(v110, v66);
    v93 = v109;
    (*(v107 + 8))(v77, v108);
  }

  return (*(v105 + 32))(v100, v93, v81);
}

uint64_t sub_25AE6BE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v9 = sub_25AEA0DB8();
  v21 = *(v9 - 8);
  v10 = *(v21 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25AEA3550;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  v15 = sub_25AE4172C();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 64) = v15;
  *(v13 + 72) = a3;
  *(v13 + 80) = a4;

  v16 = sub_25AEA21C8();
  v17 = v23;
  sub_25AE6AF1C(v16, v18, 0xD0000000000000A6, 0x800000025AEA9200, v22, v12);
  if (v17)
  {
  }

  v20 = v21;

  sub_25AE6C040();
  return (*(v20 + 8))(v12, v9);
}

void sub_25AE6C040()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
  if (v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E118, &qword_25AEA5800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25AEA3550;
    v2 = *MEMORY[0x277D0AC70];
    *(inited + 32) = sub_25AEA21A8();
    *(inited + 40) = v3;
    v4 = MEMORY[0x277D839B0];
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    v5 = *MEMORY[0x277D0AC58];
    *(inited + 80) = sub_25AEA21A8();
    *(inited + 88) = v6;
    *(inited + 120) = v4;
    *(inited + 96) = 1;
    sub_25AE70194(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1E260, &qword_25AEA5900);
    swift_arrayDestroy();
    v7 = sub_25AEA2128();

    [v0 setFrontBoardOptions_];
  }

  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v9 = v8;
    v10 = sub_25AEA0D78();
    v20 = 0;
    v11 = [v9 openURL:v10 configuration:v0 error:&v20];

    if (v11)
    {
      v12 = v20;
    }

    else
    {
      v13 = v20;
      v14 = sub_25AEA0D08();

      swift_willThrow();
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_25AEA2688();
      MEMORY[0x25F859D40](0xD000000000000028, 0x800000025AEA9300);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1EA50, &qword_25AEA3A60);
      sub_25AEA2738();
      MEMORY[0x25F859D40](0x203A4C5255202D20, 0xE800000000000000);
      sub_25AEA0DB8();
      sub_25AE6C38C();
      v15 = sub_25AEA27F8();
      MEMORY[0x25F859D40](v15);

      v16 = v20;
      v17 = v21;
      sub_25AE426AC();
      swift_allocError();
      *v18 = 9;
      *(v18 + 8) = v16;
      *(v18 + 16) = v17;
      swift_willThrow();
    }
  }

  else
  {
  }

  v19 = *MEMORY[0x277D85DE8];
}

unint64_t sub_25AE6C38C()
{
  result = qword_27FA1E120;
  if (!qword_27FA1E120)
  {
    sub_25AEA0DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E120);
  }

  return result;
}

unint64_t sub_25AE6C3E4()
{
  result = qword_27FA1E130;
  if (!qword_27FA1E130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E128, &qword_25AEA5910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E130);
  }

  return result;
}

uint64_t sub_25AE6C448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D950, &unk_25AEA4490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CollectedEnrollment.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CollectedEnrollment.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CollectedEnrollment();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id CollectedEnrollment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectedEnrollment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25AE6C61C(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return MEMORY[0x2822009F8](sub_25AE6C640, 0, 0);
}

uint64_t sub_25AE6C640()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2D0, &qword_25AEA35C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AEA3540;
  *(v0 + 120) = 0x68746150656C6966;
  *(v0 + 128) = 0xE800000000000000;
  v5 = MEMORY[0x277D837D0];
  sub_25AEA2608();
  *(inited + 96) = v5;
  *(inited + 72) = v3;
  *(inited + 80) = v1;

  v6 = sub_25AE6FDCC(inited);
  *(v0 + 160) = v6;
  swift_setDeallocating();
  sub_25AE41938(inited + 32, &qword_27FA1E170, &unk_25AEA35D0);
  sub_25AE6E8FC();
  *(v0 + 168) = v7;
  *(v0 + 192) = 9;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_25AE6C7AC;

  return sub_25AE41F28((v0 + 192), v6);
}

uint64_t sub_25AE6C7AC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v10 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    v6 = sub_25AE70714;
  }

  else
  {
    v7 = *(v2 + 160);
    v8 = *(v2 + 168);

    v6 = sub_25AE6C8F0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25AE6C8F0()
{
  v9 = v0;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = sub_25AEA12C8();
  __swift_project_value_buffer(v1, qword_27FA1DF50);
  v2 = sub_25AEA12A8();
  v3 = sub_25AEA24A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AE65D2C(0xD000000000000013, 0x800000025AEA9620, &v8);
    _os_log_impl(&dword_25AE3C000, v2, v3, "Client received %s success callback", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x25F85AB80](v5, -1, -1);
    MEMORY[0x25F85AB80](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25AE6CA88()
{
  v1 = *(v0 + 128);
  sub_25AE6E8FC();
  *(v0 + 136) = v2;
  *(v0 + 168) = 3;
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_25AE6CB38;

  return sub_25AE41F28((v0 + 168), 0);
}

uint64_t sub_25AE6CB38(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v7 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v5 = sub_25AE70710;
  }

  else
  {
    v5 = sub_25AE6CC5C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25AE6CC5C()
{
  v23 = v0;
  strcpy((v0 + 88), "enrolledNames");
  v1 = *(v0 + 152);
  *(v0 + 102) = -4864;
  sub_25AEA2608();
  if (!*(v1 + 16) || (v2 = *(v0 + 152), v3 = sub_25AE6F6C8(v0 + 16), (v4 & 1) == 0))
  {
    v11 = *(v0 + 152);

    sub_25AE41798(v0 + 16);
    goto LABEL_7;
  }

  sub_25AE418A4(*(*(v0 + 152) + 56) + 32 * v3, v0 + 56);
  sub_25AE41798(v0 + 16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_25AE426AC();
    swift_allocError();
    *v12 = 8;
    *(v12 + 8) = 0xD000000000000034;
    *(v12 + 16) = 0x800000025AEA9430;
    swift_willThrow();
    goto LABEL_8;
  }

  v5 = *(v0 + 160);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = sub_25AEA0B08();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_25AEA0AF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E150, &qword_25AEA5848);
  sub_25AE6F70C();
  sub_25AEA0AE8();
  if (v5)
  {

    sub_25AE42754(v7, v6);
LABEL_8:
    v13 = *(v0 + 8);

    return v13();
  }

  v15 = *(v0 + 120);
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v16 = sub_25AEA12C8();
  __swift_project_value_buffer(v16, qword_27FA1DF50);
  v17 = sub_25AEA12A8();
  v18 = sub_25AEA24A8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_25AE65D2C(0x64656C6C6F726E65, 0xEF292873656D614ELL, &v22);
    _os_log_impl(&dword_25AE3C000, v17, v18, "Client received %s success callback", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x25F85AB80](v20, -1, -1);
    MEMORY[0x25F85AB80](v19, -1, -1);
  }

  sub_25AE42754(v7, v6);

  v21 = *(v0 + 8);

  return v21(v15);
}

uint64_t NameRecognitionClient.deleteName(with:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return MEMORY[0x2822009F8](sub_25AE6CFF8, 0, 0);
}

uint64_t sub_25AE6CFF8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2D0, &qword_25AEA35C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AEA3540;
  *(v0 + 120) = 0x696669746E656469;
  *(v0 + 128) = 0xEA00000000007265;
  v5 = MEMORY[0x277D837D0];
  sub_25AEA2608();
  *(inited + 96) = v5;
  *(inited + 72) = v3;
  *(inited + 80) = v1;

  v6 = sub_25AE6FDCC(inited);
  *(v0 + 160) = v6;
  swift_setDeallocating();
  sub_25AE41938(inited + 32, &qword_27FA1E170, &unk_25AEA35D0);
  sub_25AE6E8FC();
  *(v0 + 168) = v7;
  *(v0 + 192) = 4;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_25AE6D168;

  return sub_25AE41F28((v0 + 192), v6);
}

uint64_t sub_25AE6D168()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v10 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    v6 = sub_25AE6D424;
  }

  else
  {
    v7 = *(v2 + 160);
    v8 = *(v2 + 168);

    v6 = sub_25AE6D2AC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25AE6D2AC()
{
  v9 = v0;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = sub_25AEA12C8();
  __swift_project_value_buffer(v1, qword_27FA1DF50);
  v2 = sub_25AEA12A8();
  v3 = sub_25AEA24A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AE65D2C(0xD000000000000011, 0x800000025AEA9470, &v8);
    _os_log_impl(&dword_25AE3C000, v2, v3, "Client received %s success callback", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x25F85AB80](v5, -1, -1);
    MEMORY[0x25F85AB80](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25AE6D45C()
{
  v1 = *(v0 + 16);
  sub_25AE6E8FC();
  *(v0 + 24) = v2;
  *(v0 + 48) = 5;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_25AE6D50C;

  return sub_25AE41F28((v0 + 48), 0);
}

uint64_t sub_25AE6D50C()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_25AE6D7C4;
  }

  else
  {

    v4 = sub_25AE6D64C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25AE6D64C()
{
  v9 = v0;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = sub_25AEA12C8();
  __swift_project_value_buffer(v1, qword_27FA1DF50);
  v2 = sub_25AEA12A8();
  v3 = sub_25AEA24A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AE65D2C(0xD000000000000010, 0x800000025AEA9490, &v8);
    _os_log_impl(&dword_25AE3C000, v2, v3, "Client received %s success callback", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x25F85AB80](v5, -1, -1);
    MEMORY[0x25F85AB80](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25AE6D7DC(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return MEMORY[0x2822009F8](sub_25AE6D800, 0, 0);
}

uint64_t sub_25AE6D800()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2D0, &qword_25AEA35C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AEA3540;
  *(v0 + 120) = 0x696669746E656469;
  *(v0 + 128) = 0xEA00000000007265;
  v5 = MEMORY[0x277D837D0];
  sub_25AEA2608();
  *(inited + 96) = v5;
  *(inited + 72) = v3;
  *(inited + 80) = v1;

  v6 = sub_25AE6FDCC(inited);
  *(v0 + 160) = v6;
  swift_setDeallocating();
  sub_25AE41938(inited + 32, &qword_27FA1E170, &unk_25AEA35D0);
  sub_25AE6E8FC();
  *(v0 + 168) = v7;
  *(v0 + 192) = 10;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_25AE6D970;

  return sub_25AE41F28((v0 + 192), v6);
}

uint64_t sub_25AE6D970()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v10 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    v6 = sub_25AE70714;
  }

  else
  {
    v7 = *(v2 + 160);
    v8 = *(v2 + 168);

    v6 = sub_25AE6DAB4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25AE6DAB4()
{
  v9 = v0;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = sub_25AEA12C8();
  __swift_project_value_buffer(v1, qword_27FA1DF50);
  v2 = sub_25AEA12A8();
  v3 = sub_25AEA24A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AE65D2C(0xD000000000000016, 0x800000025AEA95E0, &v8);
    _os_log_impl(&dword_25AE3C000, v2, v3, "Client received %s success callback", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x25F85AB80](v5, -1, -1);
    MEMORY[0x25F85AB80](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25AE6DC4C()
{
  v1 = *(v0 + 128);
  sub_25AE6E8FC();
  *(v0 + 136) = v2;
  *(v0 + 168) = 8;
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_25AE6DCFC;

  return sub_25AE41F28((v0 + 168), 0);
}

uint64_t sub_25AE6DCFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v7 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v5 = sub_25AE6E198;
  }

  else
  {
    v5 = sub_25AE6DE20;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25AE6DE20()
{
  v23 = v0;
  v0[11] = 0x68746150656C6966;
  v1 = v0[19];
  v0[12] = 0xE900000000000073;
  sub_25AEA2608();
  if (!*(v1 + 16) || (v2 = v0[19], v3 = sub_25AE6F6C8((v0 + 2)), (v4 & 1) == 0))
  {
    v11 = v0[19];

    sub_25AE41798((v0 + 2));
    goto LABEL_7;
  }

  sub_25AE418A4(*(v0[19] + 56) + 32 * v3, (v0 + 7));
  sub_25AE41798((v0 + 2));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_25AE426AC();
    swift_allocError();
    *v12 = 8;
    *(v12 + 8) = 0xD000000000000028;
    *(v12 + 16) = 0x800000025AEA95B0;
    swift_willThrow();
    goto LABEL_8;
  }

  v5 = v0[20];
  v7 = v0[13];
  v6 = v0[14];
  v8 = sub_25AEA0B08();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_25AEA0AF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E128, &qword_25AEA5910);
  sub_25AE70694();
  sub_25AEA0AE8();
  if (v5)
  {

    sub_25AE42754(v7, v6);
LABEL_8:
    v13 = v0[1];

    return v13();
  }

  v15 = v0[15];
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v16 = sub_25AEA12C8();
  __swift_project_value_buffer(v16, qword_27FA1DF50);
  v17 = sub_25AEA12A8();
  v18 = sub_25AEA24A8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_25AE65D2C(0x64754165726F7473, 0xEC00000029286F69, &v22);
    _os_log_impl(&dword_25AE3C000, v17, v18, "Client received %s success callback", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x25F85AB80](v20, -1, -1);
    MEMORY[0x25F85AB80](v19, -1, -1);
  }

  sub_25AE42754(v7, v6);

  v21 = v0[1];

  return v21(v15);
}

uint64_t sub_25AE6E1B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2E8, &qword_25AEA35E8);
    v2 = sub_25AEA2778();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    sub_25AE62310(v17, v18);
    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_25AE417EC(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_25AE417EC(v34, v35);
    v19 = *(v2 + 40);
    result = sub_25AEA25E8();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_25AE417EC(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25AE6E478(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E208, &qword_25AEA58C8);
    v1 = sub_25AEA2778();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v27 = *(*(a1 + 56) + v11);
    v13 = v27;
    type metadata accessor for FileProtectionType(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_25AE417EC((v28 + 8), v26);
    sub_25AE417EC(v26, v28);
    v16 = *(v1 + 40);
    sub_25AEA21A8();
    sub_25AEA28B8();
    sub_25AEA21F8();
    v17 = sub_25AEA28D8();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v6 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v6 + 8 * v20);
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*(v6 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_25AE417EC(v28, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}