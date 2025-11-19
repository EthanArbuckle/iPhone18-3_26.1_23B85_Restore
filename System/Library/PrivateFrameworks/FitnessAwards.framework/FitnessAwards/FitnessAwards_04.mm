uint64_t sub_24B42F090(uint64_t a1)
{
  v2 = sub_24B42F524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B42F0CC(uint64_t a1)
{
  v2 = sub_24B42F524();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B42F108(uint64_t a1)
{
  v2 = sub_24B42F578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B42F144(uint64_t a1)
{
  v2 = sub_24B42F578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B42F180(uint64_t a1)
{
  v2 = sub_24B42F5CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B42F1BC(uint64_t a1)
{
  v2 = sub_24B42F5CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastAction.hashValue.getter(char a1)
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](a1 & 1);
  return sub_24B45926C();
}

uint64_t AwardToastAction.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8E78, &qword_24B461F20);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8E80, &qword_24B461F28);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8E88, &qword_24B461F30);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B42F524();
  sub_24B45928C();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_24B42F578();
    sub_24B45910C();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_24B42F5CC();
    sub_24B45910C();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_24B42F524()
{
  result = qword_27EFE8E90;
  if (!qword_27EFE8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E90);
  }

  return result;
}

unint64_t sub_24B42F578()
{
  result = qword_27EFE8E98;
  if (!qword_27EFE8E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E98);
  }

  return result;
}

unint64_t sub_24B42F5CC()
{
  result = qword_27EFE8EA0;
  if (!qword_27EFE8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8EA0);
  }

  return result;
}

uint64_t sub_24B42F63C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B42F688(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_24B42F688(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8EE8, &qword_24B4622A0);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8EF0, &qword_24B4622A8);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8EF8, &unk_24B4622B0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B42F524();
  v15 = v32;
  sub_24B45927C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_24B4590FC();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_24B3E3810();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_24B458FFC();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
    *v24 = &type metadata for AwardToastAction;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_24B42F578();
    sub_24B45905C();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_24B42F5CC();
    sub_24B45905C();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_24B42FB48()
{
  result = qword_27EFE8EA8;
  if (!qword_27EFE8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8EA8);
  }

  return result;
}

unint64_t sub_24B42FBE0()
{
  result = qword_27EFE8EB0;
  if (!qword_27EFE8EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8EB0);
  }

  return result;
}

unint64_t sub_24B42FC38()
{
  result = qword_27EFE8EB8;
  if (!qword_27EFE8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8EB8);
  }

  return result;
}

unint64_t sub_24B42FC90()
{
  result = qword_27EFE8EC0;
  if (!qword_27EFE8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8EC0);
  }

  return result;
}

unint64_t sub_24B42FCE8()
{
  result = qword_27EFE8EC8;
  if (!qword_27EFE8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8EC8);
  }

  return result;
}

unint64_t sub_24B42FD40()
{
  result = qword_27EFE8ED0;
  if (!qword_27EFE8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8ED0);
  }

  return result;
}

unint64_t sub_24B42FD98()
{
  result = qword_27EFE8ED8;
  if (!qword_27EFE8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8ED8);
  }

  return result;
}

unint64_t sub_24B42FDF0()
{
  result = qword_27EFE8EE0;
  if (!qword_27EFE8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8EE0);
  }

  return result;
}

uint64_t AwardToastLayout.transformed()()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t AwardToastPresentationState.suggestedWorkoutsLoadStates.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t type metadata accessor for AwardToastPresentationState()
{
  result = qword_2810E2C50;
  if (!qword_2810E2C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardToastPresentationState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AwardToastPresentationState() + 24);

  return sub_24B4260C0(a1, v3);
}

uint64_t AwardToastPresentationState.progressLoadStates.getter()
{
  v1 = *(v0 + *(type metadata accessor for AwardToastPresentationState() + 28));
}

uint64_t AwardToastPresentationState.progressLoadStates.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AwardToastPresentationState() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AwardToastPresentationState.init(shouldObserveAppActivation:suggestedWorkoutsLoadStates:loadState:progressLoadStates:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v8 = type metadata accessor for AwardToastPresentationState();
  result = sub_24B3D00C4(a3, a5 + *(v8 + 24));
  *(a5 + *(v8 + 28)) = a4;
  return result;
}

unint64_t sub_24B4300F0()
{
  v1 = 0x7461745364616F6CLL;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000012;
  }

  v2 = 0xD00000000000001BLL;
  if (!*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24B430178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B430DFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4301A0(uint64_t a1)
{
  v2 = sub_24B4304B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4301DC(uint64_t a1)
{
  v2 = sub_24B4304B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastPresentationState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F00, &qword_24B4622C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4304B8();
  sub_24B45928C();
  v11 = *v3;
  LOBYTE(v16) = 0;
  sub_24B45915C();
  if (!v2)
  {
    v16 = *(v3 + 1);
    HIBYTE(v15) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C60, &qword_24B4617F8);
    sub_24B430940(&qword_27EFE8C68, sub_24B3D898C);
    sub_24B45918C();
    v12 = type metadata accessor for AwardToastPresentationState();
    v13 = *(v12 + 24);
    LOBYTE(v16) = 2;
    type metadata accessor for AwardToastLoadState();
    sub_24B4309C4(&qword_27EFE8C70, type metadata accessor for AwardToastLoadState);
    sub_24B45918C();
    v16 = *&v3[*(v12 + 28)];
    HIBYTE(v15) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C50, &qword_24B4617F0);
    sub_24B427244();
    sub_24B45918C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B4304B8()
{
  result = qword_27EFE8F08;
  if (!qword_27EFE8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8F08);
  }

  return result;
}

uint64_t AwardToastPresentationState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  State = type metadata accessor for AwardToastLoadState();
  v4 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F10, &qword_24B4622C8);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for AwardToastPresentationState();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24B4304B8();
  v17 = v25;
  sub_24B45927C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v25 = v11;
  v18 = v23;
  v19 = v24;
  LOBYTE(v28) = 0;
  *v14 = sub_24B4590BC() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C60, &qword_24B4617F8);
  v27 = 1;
  sub_24B430940(&qword_27EFE8CA8, sub_24B3D8E2C);
  sub_24B4590EC();
  *(v14 + 1) = v28;
  LOBYTE(v28) = 2;
  sub_24B4309C4(&qword_27EFE8CB0, type metadata accessor for AwardToastLoadState);
  sub_24B4590EC();
  v20 = v25;
  sub_24B3D00C4(v6, &v14[*(v25 + 24)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C50, &qword_24B4617F0);
  v27 = 3;
  sub_24B42752C();
  sub_24B4590EC();
  (*(v18 + 8))(v10, v19);
  *&v14[*(v20 + 28)] = v28;
  sub_24B430A0C(v14, v22, type metadata accessor for AwardToastPresentationState);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_24B430A74(v14, type metadata accessor for AwardToastPresentationState);
}

uint64_t sub_24B430940(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8C60, &qword_24B4617F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B4309C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B430A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B430A74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s13FitnessAwards27AwardToastPresentationStateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((sub_24B3D1A04(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AwardToastPresentationState();
  if ((_s13FitnessAwards19AwardToastLoadStateO2eeoiySbAC_ACtFZ_0(&a1[*(v4 + 24)], &a2[*(v4 + 24)]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *&a1[v5];
  v7 = *&a2[v5];

  return sub_24B3D0A7C(v6, v7);
}

void sub_24B430BD0()
{
  sub_24B3D0064();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AwardToastLoadState();
    if (v1 <= 0x3F)
    {
      sub_24B430C7C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B430C7C()
{
  if (!qword_2810E27A0)
  {
    type metadata accessor for AwardProgressLoadState();
    v0 = sub_24B458D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810E27A0);
    }
  }
}

unint64_t sub_24B430CF8()
{
  result = qword_27EFE8F18;
  if (!qword_27EFE8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8F18);
  }

  return result;
}

unint64_t sub_24B430D50()
{
  result = qword_27EFE8F20;
  if (!qword_27EFE8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8F20);
  }

  return result;
}

unint64_t sub_24B430DA8()
{
  result = qword_27EFE8F28;
  if (!qword_27EFE8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8F28);
  }

  return result;
}

uint64_t sub_24B430DFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x800000024B467000 == a2;
  if (v3 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024B467020 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B466FC0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24B430F74()
{
  v1 = *v0;
  v2 = 0x7465466567616D69;
  v3 = 0x616D496863746566;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6570704177656976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x616F4C6567616D69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B431034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4336EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B43105C(uint64_t a1)
{
  v2 = sub_24B431E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B431098(uint64_t a1)
{
  v2 = sub_24B431E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4310D4(uint64_t a1)
{
  v2 = sub_24B431F78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B431110(uint64_t a1)
{
  v2 = sub_24B431F78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B43114C()
{
  if (*v0)
  {
    result = 1702521203;
  }

  else
  {
    result = 0x4C5255656C6966;
  }

  *v0;
  return result;
}

uint64_t sub_24B431180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
  if (v6 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B4591AC();

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

uint64_t sub_24B43125C(uint64_t a1)
{
  v2 = sub_24B432020();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B431298(uint64_t a1)
{
  v2 = sub_24B432020();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4312D4(uint64_t a1)
{
  v2 = sub_24B431FCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B431310(uint64_t a1)
{
  v2 = sub_24B431FCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B43134C(uint64_t a1)
{
  v2 = sub_24B431F24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B431388(uint64_t a1)
{
  v2 = sub_24B431F24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4313C4(uint64_t a1)
{
  v2 = sub_24B431ED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B431400(uint64_t a1)
{
  v2 = sub_24B431ED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardImageAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F30, &qword_24B462490);
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v2);
  v68 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F38, &qword_24B462498);
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  MEMORY[0x28223BE20](v5);
  v65 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F40, &qword_24B4624A0);
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v8);
  v62 = &v59 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F48, &qword_24B4624A8);
  v61 = *(v74 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v59 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F50, &qword_24B4624B0);
  v60 = *(v72 - 8);
  v13 = *(v60 + 64);
  MEMORY[0x28223BE20](v72);
  v15 = &v59 - v14;
  v16 = sub_24B45830C();
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AwardImageAction();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F58, &qword_24B4624B8);
  v25 = *(v24 - 8);
  v78 = v24;
  v79 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v59 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B431E18();
  v76 = v28;
  sub_24B45928C();
  sub_24B431E6C(v75, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v50 = *v23;
      v51 = v23[1];
      LOBYTE(v80) = 2;
      sub_24B431F78();
      v33 = v62;
      v34 = v78;
      v35 = v76;
      sub_24B45910C();
      v80 = v50;
      v81 = v51;
      type metadata accessor for CGSize();
      sub_24B432EB0(&qword_2810E2768, type metadata accessor for CGSize);
      v36 = v64;
      sub_24B45918C();
      v37 = v63;
    }

    else
    {
      v31 = *v23;
      v32 = v23[1];
      if (EnumCaseMultiPayload == 3)
      {
        LOBYTE(v80) = 3;
        sub_24B431F24();
        v33 = v65;
        v34 = v78;
        v35 = v76;
        sub_24B45910C();
        v80 = v31;
        v81 = v32;
        type metadata accessor for CGSize();
        sub_24B432EB0(&qword_2810E2768, type metadata accessor for CGSize);
        v36 = v67;
        sub_24B45918C();
        v37 = v66;
      }

      else
      {
        LOBYTE(v80) = 4;
        sub_24B431ED0();
        v33 = v68;
        v34 = v78;
        v35 = v76;
        sub_24B45910C();
        v80 = v31;
        v81 = v32;
        type metadata accessor for CGSize();
        sub_24B432EB0(&qword_2810E2768, type metadata accessor for CGSize);
        v36 = v70;
        sub_24B45918C();
        v37 = v69;
      }
    }

    (*(v37 + 8))(v33, v36);
    goto LABEL_12;
  }

  v38 = v73;
  v39 = v74;
  v75 = v19;
  v40 = v71;
  v41 = v72;
  if (EnumCaseMultiPayload)
  {
    v52 = *v23;
    v53 = v23[1];
    LOBYTE(v80) = 1;
    sub_24B431FCC();
    v54 = v38;
    v34 = v78;
    v35 = v76;
    sub_24B45910C();
    v80 = v52;
    v81 = v53;
    type metadata accessor for CGSize();
    sub_24B432EB0(&qword_2810E2768, type metadata accessor for CGSize);
    sub_24B45918C();
    (*(v61 + 8))(v54, v39);
LABEL_12:
    v55 = *(v79 + 8);
    v56 = v35;
    v57 = v34;
    return v55(v56, v57);
  }

  v42 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87D0, &qword_24B4624C0) + 48));
  v43 = *v42;
  v44 = v42[1];
  v45 = v75;
  (*(v40 + 32))(v75, v23, v16);
  LOBYTE(v80) = 0;
  sub_24B432020();
  v46 = v15;
  v47 = v78;
  v48 = v76;
  sub_24B45910C();
  LOBYTE(v80) = 0;
  sub_24B432EB0(&qword_2810E36E0, MEMORY[0x277CC9260]);
  v49 = v77;
  sub_24B45918C();
  if (v49)
  {
    (*(v60 + 8))(v46, v41);
    (*(v40 + 8))(v45, v16);
  }

  else
  {
    v80 = v43;
    v81 = v44;
    v82 = 1;
    type metadata accessor for CGSize();
    sub_24B432EB0(&qword_2810E2768, type metadata accessor for CGSize);
    sub_24B45918C();
    (*(v60 + 8))(v46, v41);
    (*(v40 + 8))(v75, v16);
  }

  v55 = *(v79 + 8);
  v56 = v48;
  v57 = v47;
  return v55(v56, v57);
}

uint64_t type metadata accessor for AwardImageAction()
{
  result = qword_2810E3470;
  if (!qword_2810E3470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B431E18()
{
  result = qword_2810E34C8;
  if (!qword_2810E34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E34C8);
  }

  return result;
}

uint64_t sub_24B431E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardImageAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B431ED0()
{
  result = qword_2810E34B0;
  if (!qword_2810E34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E34B0);
  }

  return result;
}

unint64_t sub_24B431F24()
{
  result = qword_27EFE8F60;
  if (!qword_27EFE8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8F60);
  }

  return result;
}

unint64_t sub_24B431F78()
{
  result = qword_2810E3508;
  if (!qword_2810E3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3508);
  }

  return result;
}

unint64_t sub_24B431FCC()
{
  result = qword_27EFE8F68;
  if (!qword_27EFE8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8F68);
  }

  return result;
}

unint64_t sub_24B432020()
{
  result = qword_2810E34F0;
  if (!qword_2810E34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E34F0);
  }

  return result;
}

uint64_t AwardImageAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F70, &qword_24B4624C8);
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = *(v88 + 64);
  MEMORY[0x28223BE20](v3);
  v90 = &v75 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F78, &qword_24B4624D0);
  v86 = *(v87 - 8);
  v6 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v97 = &v75 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F80, &qword_24B4624D8);
  v84 = *(v96 - 8);
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = &v75 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F88, &qword_24B4624E0);
  v82 = *(v83 - 8);
  v10 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v95 = &v75 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F90, &qword_24B4624E8);
  v85 = *(v81 - 8);
  v12 = *(v85 + 64);
  MEMORY[0x28223BE20](v81);
  v91 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F98, &unk_24B4624F0);
  v93 = *(v14 - 8);
  v94 = v14;
  v15 = *(v93 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v75 - v16;
  v99 = type metadata accessor for AwardImageAction();
  v18 = *(*(v99 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v99);
  v80 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v75 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v75 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v75 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v75 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v75 - v33;
  v36 = a1[3];
  v35 = a1[4];
  v100 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_24B431E18();
  v37 = v106;
  sub_24B45927C();
  if (v37)
  {
    goto LABEL_9;
  }

  v75 = v29;
  v76 = v26;
  v77 = v23;
  v38 = v95;
  v78 = v32;
  v39 = v96;
  v40 = v97;
  v79 = v34;
  v41 = v98;
  v42 = v94;
  v106 = v17;
  v43 = sub_24B4590FC();
  v44 = (2 * *(v43 + 16)) | 1;
  v102 = v43;
  v103 = v43 + 32;
  v104 = 0;
  v105 = v44;
  v45 = sub_24B3E3814();
  if (v45 == 5 || v104 != v105 >> 1)
  {
    v49 = sub_24B458FFC();
    swift_allocError();
    v51 = v50;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
    *v51 = v99;
    v53 = v106;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84160], v49);
    swift_willThrow();
    (*(v93 + 8))(v53, v42);
    swift_unknownObjectRelease();
LABEL_9:
    v54 = v100;
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  if (v45 <= 1u)
  {
    if (v45)
    {
      v74 = v41;
      LOBYTE(v101) = 1;
      sub_24B431FCC();
      v65 = v38;
      sub_24B45905C();
      v66 = v93;
      type metadata accessor for CGSize();
      sub_24B432EB0(&qword_27EFE7A60, type metadata accessor for CGSize);
      v67 = v83;
      sub_24B4590EC();
      (*(v82 + 8))(v65, v67);
      (*(v66 + 8))(v106, v42);
      swift_unknownObjectRelease();
      v71 = v75;
      *v75 = v101;
      swift_storeEnumTagMultiPayload();
      v72 = v79;
      sub_24B432E4C(v71, v79);
      v73 = v100;
    }

    else
    {
      LOBYTE(v101) = 0;
      sub_24B432020();
      v56 = v106;
      sub_24B45905C();
      v57 = v93;
      sub_24B45830C();
      LOBYTE(v101) = 0;
      sub_24B432EB0(&qword_27EFE89E8, MEMORY[0x277CC9260]);
      v58 = v78;
      v59 = v81;
      sub_24B4590EC();
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87D0, &qword_24B4624C0) + 48);
      type metadata accessor for CGSize();
      LOBYTE(v101) = 1;
      sub_24B432EB0(&qword_27EFE7A60, type metadata accessor for CGSize);
      v70 = v91;
      sub_24B4590EC();
      (*(v85 + 8))(v70, v59);
      (*(v57 + 8))(v56, v42);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v72 = v79;
      sub_24B432E4C(v58, v79);
      v73 = v100;
      v74 = v98;
    }
  }

  else
  {
    if (v45 == 2)
    {
      LOBYTE(v101) = 2;
      sub_24B431F78();
      v60 = v106;
      sub_24B45905C();
      type metadata accessor for CGSize();
      sub_24B432EB0(&qword_27EFE7A60, type metadata accessor for CGSize);
      v61 = v92;
      sub_24B4590EC();
      v62 = v93;
      (*(v84 + 8))(v61, v39);
      (*(v62 + 8))(v60, v42);
      swift_unknownObjectRelease();
      v68 = v76;
      *v76 = v101;
    }

    else
    {
      v46 = v106;
      if (v45 == 3)
      {
        LOBYTE(v101) = 3;
        sub_24B431F24();
        sub_24B45905C();
        type metadata accessor for CGSize();
        sub_24B432EB0(&qword_27EFE7A60, type metadata accessor for CGSize);
        v47 = v87;
        sub_24B4590EC();
        v48 = v93;
        (*(v86 + 8))(v40, v47);
        (*(v48 + 8))(v46, v42);
        swift_unknownObjectRelease();
        v68 = v77;
        *v77 = v101;
      }

      else
      {
        LOBYTE(v101) = 4;
        sub_24B431ED0();
        v63 = v90;
        sub_24B45905C();
        type metadata accessor for CGSize();
        sub_24B432EB0(&qword_27EFE7A60, type metadata accessor for CGSize);
        v64 = v89;
        sub_24B4590EC();
        (*(v88 + 8))(v63, v64);
        (*(v93 + 8))(v46, v42);
        swift_unknownObjectRelease();
        v68 = v80;
        *v80 = v101;
      }
    }

    swift_storeEnumTagMultiPayload();
    v72 = v79;
    sub_24B432E4C(v68, v79);
    v73 = v100;
    v74 = v41;
  }

  sub_24B432E4C(v72, v74);
  v54 = v73;
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_24B432E4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardImageAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B432EB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24B432F28()
{
  sub_24B432FA0();
  if (v0 <= 0x3F)
  {
    sub_24B433014();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24B432FA0()
{
  if (!qword_2810E36F0)
  {
    sub_24B45830C();
    type metadata accessor for CGSize();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2810E36F0);
    }
  }
}

void sub_24B433014()
{
  if (!qword_2810E2770)
  {
    type metadata accessor for CGSize();
    if (!v1)
    {
      atomic_store(v0, &qword_2810E2770);
    }
  }
}

unint64_t sub_24B4330C0()
{
  result = qword_27EFE8FA0;
  if (!qword_27EFE8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8FA0);
  }

  return result;
}

unint64_t sub_24B433118()
{
  result = qword_27EFE8FA8;
  if (!qword_27EFE8FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8FA8);
  }

  return result;
}

unint64_t sub_24B433170()
{
  result = qword_27EFE8FB0;
  if (!qword_27EFE8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8FB0);
  }

  return result;
}

unint64_t sub_24B4331C8()
{
  result = qword_27EFE8FB8;
  if (!qword_27EFE8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8FB8);
  }

  return result;
}

unint64_t sub_24B433220()
{
  result = qword_27EFE8FC0;
  if (!qword_27EFE8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8FC0);
  }

  return result;
}

unint64_t sub_24B433278()
{
  result = qword_27EFE8FC8;
  if (!qword_27EFE8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8FC8);
  }

  return result;
}

unint64_t sub_24B4332D0()
{
  result = qword_2810E34E0;
  if (!qword_2810E34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E34E0);
  }

  return result;
}

unint64_t sub_24B433328()
{
  result = qword_2810E34E8;
  if (!qword_2810E34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E34E8);
  }

  return result;
}

unint64_t sub_24B433380()
{
  result = qword_2810E34D0;
  if (!qword_2810E34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E34D0);
  }

  return result;
}

unint64_t sub_24B4333D8()
{
  result = qword_2810E34D8;
  if (!qword_2810E34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E34D8);
  }

  return result;
}

unint64_t sub_24B433430()
{
  result = qword_2810E34F8;
  if (!qword_2810E34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E34F8);
  }

  return result;
}

unint64_t sub_24B433488()
{
  result = qword_2810E3500;
  if (!qword_2810E3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3500);
  }

  return result;
}

unint64_t sub_24B4334E0()
{
  result = qword_2810E3490;
  if (!qword_2810E3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3490);
  }

  return result;
}

unint64_t sub_24B433538()
{
  result = qword_2810E3498;
  if (!qword_2810E3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3498);
  }

  return result;
}

unint64_t sub_24B433590()
{
  result = qword_2810E34A0;
  if (!qword_2810E34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E34A0);
  }

  return result;
}

unint64_t sub_24B4335E8()
{
  result = qword_2810E34A8;
  if (!qword_2810E34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E34A8);
  }

  return result;
}

unint64_t sub_24B433640()
{
  result = qword_2810E34B8;
  if (!qword_2810E34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E34B8);
  }

  return result;
}

unint64_t sub_24B433698()
{
  result = qword_2810E34C0;
  if (!qword_2810E34C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E34C0);
  }

  return result;
}

uint64_t sub_24B4336EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465466567616D69 && a2 == 0xEC00000064656863;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616F4C6567616D69 && a2 == 0xEF64656C69614664 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616D496863746566 && a2 == 0xEE00617461446567 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B466E60 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t AwardCanvasSectionDescriptor.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AwardCanvasSectionDescriptor.templateUniqueName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void __swiftcall AwardCanvasSectionDescriptor.init(identifier:templateUniqueName:items:)(FitnessAwards::AwardCanvasSectionDescriptor *__return_ptr retstr, Swift::String identifier, Swift::String templateUniqueName, Swift::OpaquePointer items)
{
  retstr->identifier = identifier;
  retstr->templateUniqueName = templateUniqueName;
  retstr->items = items;
}

uint64_t sub_24B43393C()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x736D657469;
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

uint64_t sub_24B43399C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4346C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4339C4(uint64_t a1)
{
  v2 = sub_24B433C7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B433A00(uint64_t a1)
{
  v2 = sub_24B433C7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardCanvasSectionDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8FD0, &qword_24B462C60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17 = v1[3];
  v18 = v10;
  v16 = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B433C7C();
  sub_24B45928C();
  v23 = 0;
  v12 = v19;
  sub_24B45914C();
  if (!v12)
  {
    v14 = v16;
    v22 = 1;
    sub_24B45914C();
    v20 = v14;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8FD8, &qword_24B462C68);
    sub_24B433FF0(&qword_2810E2780, sub_24B433CD0);
    sub_24B45918C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24B433C7C()
{
  result = qword_2810E2BC0[0];
  if (!qword_2810E2BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E2BC0);
  }

  return result;
}

unint64_t sub_24B433CD0()
{
  result = qword_2810E2D28;
  if (!qword_2810E2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2D28);
  }

  return result;
}

uint64_t AwardCanvasSectionDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8FE0, &qword_24B462C70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B433C7C();
  sub_24B45927C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v11 = sub_24B4590AC();
  v13 = v12;
  v20 = v11;
  v23 = 1;
  v18 = sub_24B4590AC();
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8FD8, &qword_24B462C68);
  v22 = 2;
  sub_24B433FF0(&qword_27EFE8FE8, sub_24B434068);
  sub_24B4590EC();
  (*(v6 + 8))(v9, v5);
  v15 = v21;
  *a2 = v20;
  a2[1] = v13;
  v16 = v19;
  a2[2] = v18;
  a2[3] = v16;
  a2[4] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B433FF0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8FD8, &qword_24B462C68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B434068()
{
  result = qword_27EFE8FF0;
  if (!qword_27EFE8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8FF0);
  }

  return result;
}

uint64_t static AwardCanvasSectionDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_24B4591AC() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_24B4591AC() & 1) == 0)
  {
    return 0;
  }

  return sub_24B40E74C(v3, v7);
}

uint64_t AwardCanvasSectionDescriptor.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_24B458E6C();
  sub_24B458E6C();

  return sub_24B40FBDC(a1, v7);
}

uint64_t AwardCanvasSectionDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24B45922C();
  sub_24B458E6C();
  sub_24B458E6C();
  sub_24B40FBDC(v7, v5);
  return sub_24B45926C();
}

uint64_t sub_24B434288()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24B45922C();
  sub_24B458E6C();
  sub_24B458E6C();
  sub_24B40FBDC(v7, v5);
  return sub_24B45926C();
}

uint64_t sub_24B434308(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_24B458E6C();
  sub_24B458E6C();

  return sub_24B40FBDC(a1, v7);
}

uint64_t sub_24B434368()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24B45922C();
  sub_24B458E6C();
  sub_24B458E6C();
  sub_24B40FBDC(v7, v5);
  return sub_24B45926C();
}

uint64_t sub_24B4343E4(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_24B4591AC() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_24B4591AC() & 1) == 0)
  {
    return 0;
  }

  return sub_24B40E74C(v3, v7);
}

unint64_t sub_24B4344A4()
{
  result = qword_27EFE8FF8;
  if (!qword_27EFE8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8FF8);
  }

  return result;
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

uint64_t sub_24B43450C(uint64_t a1, int a2)
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

uint64_t sub_24B434554(uint64_t result, int a2, int a3)
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

unint64_t sub_24B4345C0()
{
  result = qword_27EFE9000;
  if (!qword_27EFE9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9000);
  }

  return result;
}

unint64_t sub_24B434618()
{
  result = qword_2810E2BB0;
  if (!qword_2810E2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2BB0);
  }

  return result;
}

unint64_t sub_24B434670()
{
  result = qword_2810E2BB8;
  if (!qword_2810E2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2BB8);
  }

  return result;
}

uint64_t sub_24B4346C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B466A10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B4347EC(uint64_t a1)
{
  v2 = sub_24B435B98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B434828(uint64_t a1)
{
  v2 = sub_24B435B98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B434884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7465447473616F74 && a2 == 0xEB000000006C6961)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B4591AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B434910(uint64_t a1)
{
  v2 = sub_24B435BEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B43494C(uint64_t a1)
{
  v2 = sub_24B435BEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B434988(uint64_t a1)
{
  v2 = sub_24B435C40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4349C4(uint64_t a1)
{
  v2 = sub_24B435C40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B434A00(uint64_t a1)
{
  v2 = sub_24B435C94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B434A3C(uint64_t a1)
{
  v2 = sub_24B435C94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9008, &qword_24B462EA0);
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v40 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9010, &qword_24B462EA8);
  v42 = *(v46 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v40 - v6;
  v7 = sub_24B45836C();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9018, &qword_24B462EB0);
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  State = type metadata accessor for AwardToastLoadState();
  v15 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9020, &qword_24B462EB8);
  v18 = *(v52 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v52);
  v21 = &v40 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B435B98();
  sub_24B45928C();
  sub_24B3D1D24(v51, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *v17;
      v49 = *(v17 + 1);
      v25 = *(v17 + 3);
      v50 = *(v17 + 2);
      v26 = v50;
      v51 = v24;
      v46 = v25;
      v27 = *(v17 + 4);
      v44 = *(v17 + 5);
      v28 = v17[48];
      LOBYTE(v53) = 2;
      sub_24B435BEC();
      v29 = v45;
      v30 = v52;
      sub_24B45910C();
      v53 = v24;
      v54 = v49;
      v55 = v26;
      v56 = v46;
      v57 = v27;
      v58 = v44;
      v59 = v28;
      sub_24B3E0FC0();
      v31 = v48;
      sub_24B45918C();
      (*(v47 + 8))(v29, v31);
      (*(v18 + 8))(v21, v30);
    }

    else
    {
      LOBYTE(v53) = 0;
      sub_24B435C94();
      v39 = v52;
      sub_24B45910C();
      (*(v41 + 8))(v13, v10);
      return (*(v18 + 8))(v21, v39);
    }
  }

  else
  {
    v33 = v42;
    v34 = v43;
    v35 = v17;
    v36 = v44;
    (*(v43 + 32))(v49, v35, v44);
    LOBYTE(v53) = 1;
    sub_24B435C40();
    v37 = v52;
    sub_24B45910C();
    sub_24B435D30(&qword_27EFE7E38, MEMORY[0x277CC95F0]);
    v38 = v46;
    sub_24B45918C();
    (*(v33 + 8))(v50, v38);
    (*(v34 + 8))(v49, v36);
    return (*(v18 + 8))(v21, v37);
  }
}

uint64_t AwardToastLoadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9048, &qword_24B462EC0);
  v4 = *(v3 - 8);
  v67 = v3;
  v68 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v74 = &v61 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9050, &qword_24B462EC8);
  v66 = *(v65 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  v73 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9058, &qword_24B462ED0);
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9060, &unk_24B462ED8);
  v75 = *(v72 - 8);
  v13 = *(v75 + 64);
  MEMORY[0x28223BE20](v72);
  v15 = &v61 - v14;
  State = type metadata accessor for AwardToastLoadState();
  v17 = *(*(State - 8) + 64);
  v18 = MEMORY[0x28223BE20](State);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v61 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v61 - v24;
  v26 = a1[3];
  v27 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_24B435B98();
  v28 = v76;
  sub_24B45927C();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  v29 = v70;
  v63 = v23;
  v62 = v20;
  v30 = v71;
  v32 = v73;
  v31 = v74;
  v76 = 0;
  v64 = v25;
  v33 = v72;
  v34 = sub_24B4590FC();
  v35 = (2 * *(v34 + 16)) | 1;
  v82 = v34;
  v83 = v34 + 32;
  v84 = 0;
  v85 = v35;
  v36 = sub_24B3E3808();
  v37 = v33;
  v38 = v15;
  if (v36 == 3 || v84 != v85 >> 1)
  {
    v41 = sub_24B458FFC();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
    *v43 = State;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    (*(v75 + 8))(v38, v37);
    goto LABEL_9;
  }

  if (v36)
  {
    if (v36 == 1)
    {
      LOBYTE(v77) = 1;
      sub_24B435C40();
      v39 = v76;
      sub_24B45905C();
      v40 = v75;
      if (v39)
      {
LABEL_7:
        (*(v75 + 8))(v38, v37);
LABEL_9:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v86);
      }

      sub_24B45836C();
      sub_24B435D30(&qword_27EFE7E68, MEMORY[0x277CC95F0]);
      v51 = v63;
      v52 = v32;
      v53 = v65;
      sub_24B4590EC();
      (*(v66 + 8))(v52, v53);
      (*(v40 + 8))(v38, v37);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v54 = v64;
      sub_24B3D00C4(v51, v64);
      v49 = v69;
    }

    else
    {
      LOBYTE(v77) = 2;
      sub_24B435BEC();
      v47 = v31;
      v48 = v76;
      sub_24B45905C();
      v49 = v69;
      v50 = v75;
      if (v48)
      {
        goto LABEL_7;
      }

      sub_24B3E24DC();
      v55 = v67;
      sub_24B4590EC();
      (*(v68 + 8))(v47, v55);
      (*(v50 + 8))(v38, v37);
      swift_unknownObjectRelease();
      v56 = v78;
      v57 = v80;
      v58 = v81;
      v59 = v62;
      *v62 = v77;
      *(v59 + 2) = v56;
      *(v59 + 24) = v79;
      *(v59 + 5) = v57;
      *(v59 + 48) = v58;
      swift_storeEnumTagMultiPayload();
      v60 = v59;
      v54 = v64;
      sub_24B3D00C4(v60, v64);
    }
  }

  else
  {
    LOBYTE(v77) = 0;
    sub_24B435C94();
    v46 = v76;
    sub_24B45905C();
    if (v46)
    {
      (*(v75 + 8))(v15, v37);
      goto LABEL_9;
    }

    (*(v29 + 8))(v12, v30);
    (*(v75 + 8))(v15, v37);
    swift_unknownObjectRelease();
    v54 = v64;
    swift_storeEnumTagMultiPayload();
    v49 = v69;
  }

  sub_24B3D00C4(v54, v49);
  return __swift_destroy_boxed_opaque_existential_1(v86);
}

uint64_t AwardToastLoadState.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24B45836C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardToastLoadState();
  v10 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B3D1D24(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v12;
      v15 = *(v12 + 1);
      v16 = *(v12 + 2);
      v17 = *(v12 + 3);
      v18 = *(v12 + 4);
      v19 = *(v12 + 5);
      v20 = v12[48];
      MEMORY[0x24C2403C0](2);
      v22[1] = v14;
      v22[2] = v15;
      v22[3] = v16;
      v22[4] = v17;
      v22[5] = v18;
      v22[6] = v19;
      v23 = v20;
      AwardToastDetail.hash(into:)(a1);
    }

    else
    {
      return MEMORY[0x24C2403C0](0);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    MEMORY[0x24C2403C0](1);
    sub_24B435D30(&qword_27EFE7E70, MEMORY[0x277CC95F0]);
    sub_24B458D9C();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t AwardToastLoadState.hashValue.getter()
{
  sub_24B45922C();
  AwardToastLoadState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t sub_24B435B14()
{
  sub_24B45922C();
  AwardToastLoadState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t sub_24B435B58()
{
  sub_24B45922C();
  AwardToastLoadState.hash(into:)(v1);
  return sub_24B45926C();
}

unint64_t sub_24B435B98()
{
  result = qword_27EFE9028;
  if (!qword_27EFE9028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9028);
  }

  return result;
}

unint64_t sub_24B435BEC()
{
  result = qword_27EFE9030;
  if (!qword_27EFE9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9030);
  }

  return result;
}

unint64_t sub_24B435C40()
{
  result = qword_27EFE9038;
  if (!qword_27EFE9038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9038);
  }

  return result;
}

unint64_t sub_24B435C94()
{
  result = qword_27EFE9040;
  if (!qword_27EFE9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9040);
  }

  return result;
}

uint64_t sub_24B435D30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B435DBC()
{
  result = qword_27EFE9070;
  if (!qword_27EFE9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9070);
  }

  return result;
}

unint64_t sub_24B435E14()
{
  result = qword_27EFE9078;
  if (!qword_27EFE9078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9078);
  }

  return result;
}

unint64_t sub_24B435E6C()
{
  result = qword_27EFE9080;
  if (!qword_27EFE9080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9080);
  }

  return result;
}

unint64_t sub_24B435EC4()
{
  result = qword_27EFE9088;
  if (!qword_27EFE9088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9088);
  }

  return result;
}

unint64_t sub_24B435F1C()
{
  result = qword_27EFE9090;
  if (!qword_27EFE9090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9090);
  }

  return result;
}

unint64_t sub_24B435F74()
{
  result = qword_27EFE9098;
  if (!qword_27EFE9098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9098);
  }

  return result;
}

unint64_t sub_24B435FCC()
{
  result = qword_27EFE90A0;
  if (!qword_27EFE90A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE90A0);
  }

  return result;
}

unint64_t sub_24B436024()
{
  result = qword_27EFE90A8;
  if (!qword_27EFE90A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE90A8);
  }

  return result;
}

unint64_t sub_24B43607C()
{
  result = qword_27EFE90B0;
  if (!qword_27EFE90B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE90B0);
  }

  return result;
}

unint64_t sub_24B4360D4()
{
  result = qword_27EFE90B8;
  if (!qword_27EFE90B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE90B8);
  }

  return result;
}

unint64_t sub_24B43612C()
{
  result = qword_27EFE90C0;
  if (!qword_27EFE90C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE90C0);
  }

  return result;
}

uint64_t sub_24B436180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE90C8, &unk_24B4633E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AwardProgressEnvironment.init(fetchAwardProgress:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

__n128 AwardToastLayout.init(fixedWidth:imageLayout:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *(a1 + 8);
  a3->n128_u64[0] = *a1;
  a3->n128_u8[8] = v3;
  result = *a2;
  a3[1] = *a2;
  return result;
}

uint64_t sub_24B43621C()
{
  if (*v0)
  {
    result = 0x79614C6567616D69;
  }

  else
  {
    result = 0x6469576465786966;
  }

  *v0;
  return result;
}

uint64_t sub_24B436264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6469576465786966 && a2 == 0xEA00000000006874;
  if (v6 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79614C6567616D69 && a2 == 0xEB0000000074756FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B4591AC();

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

uint64_t sub_24B43634C(uint64_t a1)
{
  v2 = sub_24B43656C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B436388(uint64_t a1)
{
  v2 = sub_24B43656C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastLayout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE90D0, &qword_24B463430);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v11 = v1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B43656C();
  sub_24B45928C();
  v16 = v8;
  LOBYTE(v17) = v9;
  v18 = 0;
  sub_24B4365C0();
  v13 = v15[1];
  sub_24B45918C();
  if (!v13)
  {
    v16 = v10;
    v17 = v11;
    v18 = 1;
    sub_24B3E3CA0();
    sub_24B45918C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24B43656C()
{
  result = qword_27EFE90D8;
  if (!qword_27EFE90D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE90D8);
  }

  return result;
}

unint64_t sub_24B4365C0()
{
  result = qword_27EFE90E0;
  if (!qword_27EFE90E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE90E0);
  }

  return result;
}

uint64_t AwardToastLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE90E8, &qword_24B463438);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B43656C();
  sub_24B45927C();
  if (!v2)
  {
    v16 = 0;
    sub_24B4367F4();
    sub_24B4590EC();
    v11 = v15;
    v12 = BYTE8(v15);
    v16 = 1;
    sub_24B3E4034();
    sub_24B4590EC();
    (*(v6 + 8))(v9, v5);
    v13 = v15;
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B4367F4()
{
  result = qword_27EFE90F0;
  if (!qword_27EFE90F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE90F0);
  }

  return result;
}

BOOL static AwardToastLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 24) == *(a2 + 24) && *(a1 + 16) == *(a2 + 16);
}

uint64_t AwardToastLayout.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v0[1])
  {
    MEMORY[0x24C2403C0](0);
  }

  else
  {
    v3 = *v0;
    MEMORY[0x24C2403C0](1);
    if ((*&v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0.0;
    }

    MEMORY[0x24C2403E0](*&v4);
  }

  return sub_24B3DB298(v1, v2);
}

uint64_t AwardToastLayout.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_24B45922C();
  if (v2)
  {
    MEMORY[0x24C2403C0](0);
  }

  else
  {
    MEMORY[0x24C2403C0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v1;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x24C2403E0](v5);
  }

  sub_24B3DB298(v3, v4);
  return sub_24B45926C();
}

uint64_t sub_24B4369E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_24B45922C();
  if (v2)
  {
    MEMORY[0x24C2403C0](0);
  }

  else
  {
    MEMORY[0x24C2403C0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v1;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x24C2403E0](v5);
  }

  sub_24B3DB298(v3, v4);
  return sub_24B45926C();
}

BOOL sub_24B436A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 24) == *(a2 + 24) && *(a1 + 16) == *(a2 + 16);
}

unint64_t sub_24B436AC4()
{
  result = qword_27EFE90F8;
  if (!qword_27EFE90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE90F8);
  }

  return result;
}

uint64_t sub_24B436B18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B436B38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_24B436B88()
{
  result = qword_27EFE9100;
  if (!qword_27EFE9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9100);
  }

  return result;
}

unint64_t sub_24B436BE0()
{
  result = qword_27EFE9108;
  if (!qword_27EFE9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9108);
  }

  return result;
}

unint64_t sub_24B436C38()
{
  result = qword_27EFE9110;
  if (!qword_27EFE9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9110);
  }

  return result;
}

uint64_t sub_24B436C8C()
{
  v0 = sub_24B45847C();
  __swift_allocate_value_buffer(v0, qword_2810E3618);
  __swift_project_value_buffer(v0, qword_2810E3618);
  return sub_24B45846C();
}

uint64_t awardsLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v2 = sub_24B45847C();
  v3 = __swift_project_value_buffer(v2, qword_2810E3618);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_24B436E24(uint64_t a1)
{
  v2 = sub_24B4372E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B436E60(uint64_t a1)
{
  v2 = sub_24B4372E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B436E9C(uint64_t a1)
{
  v2 = sub_24B43723C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B436ED8(uint64_t a1)
{
  v2 = sub_24B43723C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B436F14(uint64_t a1)
{
  v2 = sub_24B437290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B436F50(uint64_t a1)
{
  v2 = sub_24B437290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardRemoteParticipantStatusMonitorAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9118, &qword_24B463650);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9120, &qword_24B463658);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9128, &qword_24B463660);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B43723C();
  sub_24B45928C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_24B437290();
    v18 = v22;
    sub_24B45910C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_24B4372E4();
    sub_24B45910C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_24B43723C()
{
  result = qword_27EFE9130;
  if (!qword_27EFE9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9130);
  }

  return result;
}

unint64_t sub_24B437290()
{
  result = qword_27EFE9138;
  if (!qword_27EFE9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9138);
  }

  return result;
}

unint64_t sub_24B4372E4()
{
  result = qword_27EFE9140;
  if (!qword_27EFE9140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9140);
  }

  return result;
}

uint64_t AwardRemoteParticipantStatusMonitorAction.hashValue.getter()
{
  v1 = *v0;
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  return sub_24B45926C();
}

uint64_t AwardRemoteParticipantStatusMonitorAction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9148, &qword_24B463668);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9150, &qword_24B463670);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9158, &unk_24B463678);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B43723C();
  v16 = v36;
  sub_24B45927C();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_24B4590FC();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_24B3E3810();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_24B458FFC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
      *v26 = &type metadata for AwardRemoteParticipantStatusMonitorAction;
      sub_24B45906C();
      sub_24B458FEC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_24B437290();
        sub_24B45905C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_24B4372E4();
        sub_24B45905C();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_24B43789C()
{
  result = qword_27EFE9160;
  if (!qword_27EFE9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9160);
  }

  return result;
}

unint64_t sub_24B437934()
{
  result = qword_27EFE9168;
  if (!qword_27EFE9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9168);
  }

  return result;
}

unint64_t sub_24B43798C()
{
  result = qword_27EFE9170;
  if (!qword_27EFE9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9170);
  }

  return result;
}

unint64_t sub_24B4379E4()
{
  result = qword_27EFE9178;
  if (!qword_27EFE9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9178);
  }

  return result;
}

unint64_t sub_24B437A3C()
{
  result = qword_27EFE9180;
  if (!qword_27EFE9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9180);
  }

  return result;
}

unint64_t sub_24B437A94()
{
  result = qword_27EFE9188;
  if (!qword_27EFE9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9188);
  }

  return result;
}

unint64_t sub_24B437AEC()
{
  result = qword_27EFE9190;
  if (!qword_27EFE9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9190);
  }

  return result;
}

unint64_t sub_24B437B44()
{
  result = qword_27EFE9198;
  if (!qword_27EFE9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9198);
  }

  return result;
}

uint64_t sub_24B437B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B45870C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_24B45871C();
}

uint64_t sub_24B437C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24B45870C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_24B45871C();
}

uint64_t sub_24B437D88(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_24B458CEC();
}

uint64_t sub_24B437F58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9230, qword_24B463AC8);
  sub_24B3DF11C(&qword_27EFE9238, &qword_27EFE9230, qword_24B463AC8);

  return sub_24B45851C();
}

uint64_t sub_24B437FF8(uint64_t a1)
{
  v1 = *(a1 + 52);
  v2 = *(a1 + 24);
  swift_getFunctionTypeMetadata0();
  sub_24B4583CC();
  sub_24B4583BC();
  return v4;
}

uint64_t sub_24B438048(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 16);
  swift_getFunctionTypeMetadata0();
  sub_24B4583CC();
  sub_24B4583BC();
  return v4;
}

uint64_t AwardDetailView.init(store:awardHeaderViewBuilder:suggestedWorkoutsViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = sub_24B3DB5A8;
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  v7 = type metadata accessor for AwardDetailView();
  v8 = *(v7 + 52);

  swift_getFunctionTypeMetadata0();
  sub_24B4583AC();
  v9 = *(v7 + 56);
  swift_getFunctionTypeMetadata0();
  sub_24B4583AC();
}

uint64_t AwardDetailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  State = type metadata accessor for AwardEarnedLoadState();
  v3 = *(*(State - 8) + 64);
  v4 = MEMORY[0x28223BE20](State);
  v81 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a1;
  v91 = *(a1 - 8);
  v90 = *(v91 + 64);
  MEMORY[0x28223BE20](v4);
  v87 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE91A0, &qword_24B463A10);
  v92 = *(a1 + 16);
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  swift_getWitnessTable();
  sub_24B45849C();
  swift_getWitnessTable();
  sub_24B45858C();
  sub_24B4585BC();
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  WitnessTable = swift_getWitnessTable();
  sub_24B45849C();
  sub_24B45872C();
  v124 = swift_getWitnessTable();
  v125 = WitnessTable;
  swift_getWitnessTable();
  sub_24B45858C();
  sub_24B45872C();
  v65 = sub_24B458B7C();
  v8 = sub_24B4585BC();
  v122 = swift_getWitnessTable();
  v123 = MEMORY[0x277CE0880];
  v9 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v120 = v9;
  v121 = v10;
  v119 = swift_getWitnessTable();
  v66 = swift_getWitnessTable();
  v117 = v66;
  v118 = MEMORY[0x277CE0790];
  v11 = swift_getWitnessTable();
  v12 = sub_24B4103F8();
  v109 = v8;
  v110 = &type metadata for AwardSuggestedWorkoutsLoadState;
  v67 = v8;
  v111 = v11;
  v112 = v12;
  v13 = v11;
  v69 = v12;
  v70 = v11;
  v14 = v12;
  v76 = MEMORY[0x277CE0E40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = OpaqueTypeMetadata2;
  v80 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v80 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v68 = &v55 - v17;
  v109 = v8;
  v110 = &type metadata for AwardSuggestedWorkoutsLoadState;
  v111 = v13;
  v112 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = OpaqueTypeConformance2;
  v73 = sub_24B438C1C();
  v109 = OpaqueTypeMetadata2;
  v110 = State;
  v111 = OpaqueTypeConformance2;
  v112 = v73;
  v19 = swift_getOpaqueTypeMetadata2();
  v20 = *(v19 - 8);
  v77 = v19;
  v78 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v71 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v72 = &v55 - v24;
  v25 = v89;
  v95 = v89;
  v26 = v79;
  v88 = *(v79 + 32);
  v93 = v92;
  v94 = v88;
  swift_checkMetadataState();
  sub_24B458B6C();
  v62 = v97;
  LODWORD(v63) = BYTE1(v100);
  v105 = v97;
  v106 = v98;
  v107 = v99;
  v108 = v100;
  v27 = v91;
  v84 = *(v91 + 16);
  v85 = v91 + 16;
  v28 = v87;
  v84(v87, v25, v26);
  v83 = *(v27 + 80);
  v29 = (v83 + 48) & ~v83;
  v56 = v29;
  v30 = swift_allocObject();
  v31 = v88;
  *(v30 + 16) = v92;
  *(v30 + 32) = v31;
  v32 = *(v27 + 32);
  v91 = v27 + 32;
  v32(v30 + v29, v28, v26);
  v64 = v32;
  swift_checkMetadataState();
  sub_24B458AAC();

  sub_24B3DE5B8();
  v60 = v110;
  v61 = v109;
  v59 = v111;
  v57 = BYTE1(v112);
  v58 = v112;
  v100 = v112;
  v62 = v114;
  v63 = v113;
  v65 = v116;
  v66 = v115;
  v97 = v109;
  v98 = v110;
  v99 = v111;
  v101 = v113;
  v102 = v114;
  v103 = v115;
  v104 = v116;
  v33 = v89;
  sub_24B437F58();
  swift_getKeyPath();
  sub_24B458D5C();

  v34 = v105;
  v96 = v105;
  v35 = v87;
  v84(v87, v33, v26);
  v36 = v56;
  v37 = swift_allocObject();
  v38 = v88;
  *(v37 + 16) = v92;
  *(v37 + 32) = v38;
  v32(v37 + v36, v35, v26);
  swift_checkMetadataState();
  v39 = v68;
  sub_24B458ABC();

  sub_24B3D8220(v34);
  sub_24B3DE5B8();
  sub_24B43A6CC(v63);
  sub_24B43A6CC(v66);
  v40 = v89;
  sub_24B437F58();
  swift_getKeyPath();
  v41 = v81;
  sub_24B458D5C();

  v84(v35, v40, v26);
  v42 = swift_allocObject();
  v43 = v88;
  *(v42 + 16) = v92;
  *(v42 + 32) = v43;
  v64(v42 + v36, v35, v26);
  v44 = v71;
  v45 = v41;
  v47 = v74;
  v46 = v75;
  v48 = State;
  v49 = v73;
  sub_24B458ABC();

  sub_24B400E14(v45);
  (*(v80 + 8))(v39, v46);
  v109 = v46;
  v110 = v48;
  v111 = v47;
  v112 = v49;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v72;
  v52 = v77;
  sub_24B3ECD00(v44, v77, v50);
  v53 = *(v78 + 8);
  v53(v44, v52);
  sub_24B3ECD00(v51, v52, v50);
  return (v53)(v51, v52);
}

unint64_t sub_24B438C1C()
{
  result = qword_27EFE82D0;
  if (!qword_27EFE82D0)
  {
    type metadata accessor for AwardEarnedLoadState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE82D0);
  }

  return result;
}

uint64_t sub_24B438C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a6;
  v41 = a2;
  *&v65 = a2;
  *(&v65 + 1) = a3;
  v40 = a3;
  v66 = a4;
  v67 = a5;
  *&v38 = a5;
  v8 = type metadata accessor for AwardDetailView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v37 - v11;
  State = type metadata accessor for AwardEarnedLoadState();
  v14 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B437F58();
  swift_getKeyPath();
  sub_24B458D5C();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = MEMORY[0x277CE0880];
  if (EnumCaseMultiPayload != 1)
  {
    sub_24B400E14(v16);
    goto LABEL_5;
  }

  if (*v16 != 1)
  {
LABEL_5:
    (*(v9 + 16))(v12, a1, v8);
    v22 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v23 = swift_allocObject();
    v24 = v40;
    *(v23 + 2) = v41;
    *(v23 + 3) = v24;
    v25 = v38;
    *(v23 + 4) = a4;
    *(v23 + 5) = v25;
    (*(v9 + 32))(&v23[v22], v12, v8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
    swift_getTupleTypeMetadata3();
    sub_24B458CDC();
    *&v38 = MEMORY[0x277CE14C0];
    swift_getWitnessTable();
    v26 = sub_24B458C1C();
    v37[1] = MEMORY[0x277CE1198];
    WitnessTable = swift_getWitnessTable();
    sub_24B43A10C(sub_24B43BD9C, v23, v8, v26, WitnessTable, &v65);

    v49 = v65;
    sub_24B45849C();
    sub_24B45872C();
    v63 = swift_getWitnessTable();
    v64 = WitnessTable;
    swift_getWitnessTable();
    v28 = sub_24B45858C();
    v29 = swift_getWitnessTable();
    sub_24B3ECD00(&v49, v28, v29);

    v65 = v52;
    sub_24B3ECD00(&v65, v28, v29);
    v44 = v49;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE91A0, &qword_24B463A10);
    sub_24B45872C();
    swift_getTupleTypeMetadata3();
    sub_24B458CDC();
    swift_getWitnessTable();
    sub_24B458C1C();
    swift_getWitnessTable();
    sub_24B45849C();
    swift_getWitnessTable();
    sub_24B45858C();
    v30 = sub_24B4585BC();
    v61 = swift_getWitnessTable();
    v62 = MEMORY[0x277CE0880];
    swift_getWitnessTable();
    sub_24B437C90(&v44, v30, v28);

    goto LABEL_6;
  }

  sub_24B4397F4(v8);
  v49 = v65;
  v50 = v66;
  v51 = v67;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE91A0, &qword_24B463A10);
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  swift_getWitnessTable();
  sub_24B45849C();
  swift_getWitnessTable();
  sub_24B45858C();
  v19 = sub_24B4585BC();
  v47 = swift_getWitnessTable();
  v48 = v18;
  v20 = swift_getWitnessTable();
  sub_24B3ECD00(&v49, v19, v20);

  v65 = v52;
  v66 = v53;
  LOBYTE(v67) = v54;
  sub_24B3ECD00(&v65, v19, v20);
  v44 = v49;
  v45 = v50;
  v46 = v51;
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  v21 = swift_getWitnessTable();
  sub_24B45849C();
  sub_24B45872C();
  v42 = swift_getWitnessTable();
  v43 = v21;
  swift_getWitnessTable();
  sub_24B45858C();
  swift_getWitnessTable();
  sub_24B437B98(&v44, v19);

LABEL_6:

  v38 = v65;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE91A0, &qword_24B463A10);
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  swift_getWitnessTable();
  sub_24B45849C();
  swift_getWitnessTable();
  sub_24B45858C();
  sub_24B4585BC();
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  v31 = swift_getWitnessTable();
  sub_24B45849C();
  sub_24B45872C();
  v59 = swift_getWitnessTable();
  v60 = v31;
  swift_getWitnessTable();
  sub_24B45858C();
  v32 = sub_24B45872C();
  v57 = swift_getWitnessTable();
  v58 = MEMORY[0x277CE0880];
  v33 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v55 = v33;
  v56 = v34;
  v35 = swift_getWitnessTable();
  sub_24B3ECD00(&v65, v32, v35);
  return sub_24B3DE5B8();
}

uint64_t sub_24B4397F4(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v5 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  v12 = *(a1 + 24);
  *(v6 + 24) = v12;
  *(v6 + 40) = *(a1 + 40);
  (*(v3 + 32))(v6 + v5, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE91A0, &qword_24B463A10);
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  swift_getWitnessTable();
  sub_24B45849C();
  swift_getWitnessTable();
  v21 = sub_24B45857C();
  v22 = v7;
  sub_24B437F58();
  swift_getKeyPath();
  sub_24B458D5C();

  if (v17 == 1)
  {
    sub_24B4587DC();
  }

  else
  {
    sub_24B4587EC();
  }

  sub_24B4585CC();
  sub_24B45858C();
  WitnessTable = swift_getWitnessTable();
  sub_24B458A0C();

  v15[0] = v17;
  v15[1] = v18;
  v15[2] = v19;
  v16 = v20;
  v9 = sub_24B4585BC();
  v13 = WitnessTable;
  v14 = MEMORY[0x277CE0880];
  v10 = swift_getWitnessTable();
  sub_24B3ECD00(v15, v9, v10);

  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  sub_24B3ECD00(&v17, v9, v10);
}

uint64_t sub_24B439B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a2;
  v24 = a6;
  v25 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  v11 = sub_24B458C1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = v24;
  v30 = a1;
  v31 = v23;
  sub_24B4586EC();
  sub_24B458C0C();
  WitnessTable = swift_getWitnessTable();
  sub_24B3ECD00(v16, v11, WitnessTable);
  v20 = *(v12 + 8);
  v20(v16, v11);
  sub_24B3ECD00(v18, v11, WitnessTable);
  return (v20)(v18, v11);
}

uint64_t sub_24B439DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a7;
  v32 = a6;
  v25 = a1;
  v26 = a2;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  sub_24B45856C();
  sub_24B458CBC();
  sub_24B45855C();
  v27 = v57[3];
  v28 = v59;
  v29 = v62;
  v30 = v61;
  v74 = 1;
  v72 = v58;
  v70 = v60;
  v48 = a3;
  v49 = a4;
  v17 = v32;
  v50 = a5;
  v51 = v32;
  v18 = type metadata accessor for AwardDetailView();
  v19 = sub_24B437FF8(v18);
  v19();

  sub_24B3ECD00(v14, a4, v17);
  v20 = *(v10 + 8);
  v20(v14, a4);
  sub_24B45856C();
  sub_24B458CBC();
  sub_24B45855C();
  v21 = v63;
  v22 = v65;
  v25 = v68;
  v26 = v67;
  v80 = 1;
  v78 = v64;
  v76 = v66;
  v48 = 0;
  LOBYTE(v49) = v74;
  *(&v49 + 1) = *v73;
  HIDWORD(v49) = *&v73[3];
  v50 = v27;
  LOBYTE(v51) = v72;
  *(&v51 + 1) = *v71;
  HIDWORD(v51) = *&v71[3];
  v52 = v28;
  v53 = v70;
  *&v54[3] = *&v69[3];
  *v54 = *v69;
  v55 = v30;
  v56 = v29;
  v57[0] = &v48;
  (*(v10 + 16))(v14, v16, a4);
  v37 = 0;
  v38 = v80;
  *v39 = *v79;
  *&v39[3] = *&v79[3];
  v40 = v21;
  v41 = v78;
  *v42 = *v77;
  *&v42[3] = *&v77[3];
  v43 = v22;
  v44 = v76;
  *v45 = *v75;
  *&v45[3] = *&v75[3];
  v46 = v26;
  v47 = v25;
  v57[1] = v14;
  v57[2] = &v37;
  v36[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7D08, &qword_24B45D850);
  v36[1] = a4;
  v36[2] = v36[0];
  v33 = sub_24B3EC908();
  v34 = v32;
  v35 = v33;
  sub_24B437D88(v57, 3uLL, v36);
  v20(v16, a4);
  return (v20)(v14, a4);
}

uint64_t sub_24B43A10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24[1] = a6;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v14);
  v15 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(a3 + 32);
  *(v17 + 16) = *(a3 + 16);
  *(v17 + 32) = a4;
  *(v17 + 40) = v18;
  *(v17 + 56) = a5;
  (*(v11 + 32))(v17 + v15, v13, a3);
  v19 = (v17 + v16);
  *v19 = a1;
  v19[1] = a2;
  sub_24B45849C();
  sub_24B45872C();

  WitnessTable = swift_getWitnessTable();
  v28 = a5;
  swift_getWitnessTable();
  v25 = sub_24B45857C();
  v26 = v20;
  v21 = sub_24B45858C();
  v22 = swift_getWitnessTable();
  sub_24B3ECD00(&v25, v21, v22);

  v25 = v29;
  v26 = v30;
  sub_24B3ECD00(&v25, v21, v22);
}

uint64_t sub_24B43A370()
{
  type metadata accessor for AwardDetailView();
  sub_24B437F58();
  sub_24B458D6C();
}

unint64_t sub_24B43A3E4(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v6 = type metadata accessor for AwardDetailView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  sub_24B437F58();
  swift_getKeyPath();
  sub_24B458D5C();

  v11 = v21;
  result = sub_24B3D8220(v21);
  if (v11 >= 2)
  {
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v13 = sub_24B45847C();
    __swift_project_value_buffer(v13, qword_2810E3618);
    (*(v7 + 16))(v10, a1, v6);
    v14 = sub_24B45845C();
    v15 = sub_24B458F4C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      sub_24B437F58();
      swift_getKeyPath();
      sub_24B458D5C();

      (*(v7 + 8))(v10, v6);
      v18 = sub_24B3F17BC(v21, v22, &v20);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_24B3CE000, v14, v15, "[AwardDetailView] Suggested workouts updated for %s, requesting refresh", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x24C2408A0](v17, -1, -1);
      MEMORY[0x24C2408A0](v16, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    sub_24B437F58();
    LOBYTE(v21) = 5;
    sub_24B458D6C();
  }

  return result;
}

uint64_t sub_24B43A6CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24B43A6DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v6 = type metadata accessor for AwardDetailView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  State = type metadata accessor for AwardEarnedLoadState();
  v12 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B437F58();
  swift_getKeyPath();
  sub_24B458D5C();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_24B400E14(v14);
  if (EnumCaseMultiPayload == 2)
  {
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v17 = sub_24B45847C();
    __swift_project_value_buffer(v17, qword_2810E3618);
    (*(v7 + 16))(v10, a1, v6);
    v18 = sub_24B45845C();
    v19 = sub_24B458F4C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315138;
      sub_24B437F58();
      swift_getKeyPath();
      sub_24B458D5C();

      (*(v7 + 8))(v10, v6);
      v22 = sub_24B3F17BC(v25, v26, &v24);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_24B3CE000, v18, v19, "[AwardDetailView] Load state was reset to idle for  %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x24C2408A0](v21, -1, -1);
      MEMORY[0x24C2408A0](v20, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    sub_24B437F58();
    LOBYTE(v25) = 2;
    sub_24B458D6C();
  }

  return result;
}

uint64_t sub_24B43AA20(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for AwardDetailView() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_24B43AAD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B43AB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v52 = a3;
  v53 = a4;
  v50 = a2;
  v51 = a1;
  v56 = a9;
  v49 = *(a7 - 8);
  v15 = *(v49 + 64);
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v44 = &v42 - v19;
  v20 = sub_24B45849C();
  v48 = *(v20 - 8);
  v21 = *(v48 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v43 = &v42 - v25;
  v26 = sub_24B45872C();
  v54 = *(v26 - 8);
  v55 = v26;
  v27 = *(v54 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v45 = a5;
  v46 = a6;
  v59 = a5;
  v60 = a6;
  v47 = a8;
  v61 = a8;
  v62 = a10;
  type metadata accessor for AwardDetailView();
  sub_24B437F58();
  swift_getKeyPath();
  sub_24B458D5C();

  if (BYTE1(v59) == 1)
  {
    v30 = sub_24B4587AC();
    MEMORY[0x28223BE20](v30);
    v31 = v46;
    *(&v42 - 10) = v45;
    *(&v42 - 9) = v31;
    v32 = v47;
    *(&v42 - 8) = a7;
    *(&v42 - 7) = v32;
    *(&v42 - 6) = a10;
    *(&v42 - 5) = a11;
    v33 = v53;
    *(&v42 - 4) = v52;
    *(&v42 - 3) = v33;
    *(&v42 - 2) = v51;
    sub_24B4584AC();
    WitnessTable = swift_getWitnessTable();
    v35 = v43;
    sub_24B3ECD00(v24, v20, WitnessTable);
    v36 = *(v48 + 8);
    v36(v24, v20);
    sub_24B3ECD00(v35, v20, WitnessTable);
    sub_24B437B98(v24, v20);
    v36(v24, v20);
    v36(v35, v20);
  }

  else
  {
    v52(v51);
    v37 = v44;
    sub_24B3ECD00(v18, a7, a11);
    v38 = *(v49 + 8);
    v38(v18, a7);
    sub_24B3ECD00(v37, a7, a11);
    swift_getWitnessTable();
    sub_24B437C90(v18, v20, a7);
    v38(v18, a7);
    v38(v37, a7);
  }

  v57 = swift_getWitnessTable();
  v58 = a11;
  v39 = v55;
  v40 = swift_getWitnessTable();
  sub_24B3ECD00(v29, v39, v40);
  return (*(v54 + 8))(v29, v39);
}

uint64_t sub_24B43AFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v18(v17);
  sub_24B3ECD00(v14, a6, a9);
  v19 = *(v10 + 8);
  v19(v14, a6);
  sub_24B3ECD00(v16, a6, a9);
  return (v19)(v16, a6);
}

uint64_t sub_24B43B114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a5;
  v24 = a6;
  v25 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE91A0, &qword_24B463A10);
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  swift_getWitnessTable();
  v11 = sub_24B45849C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  sub_24B4587AC();
  v26 = a3;
  v27 = a4;
  v28 = v23;
  v29 = v24;
  v30 = a2;
  v31 = a1;
  sub_24B4584AC();
  WitnessTable = swift_getWitnessTable();
  sub_24B3ECD00(v16, v11, WitnessTable);
  v20 = *(v12 + 8);
  v20(v16, v11);
  sub_24B3ECD00(v18, v11, WitnessTable);
  return (v20)(v18, v11);
}

uint64_t sub_24B43B37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a2;
  v24 = a6;
  v25 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE91A0, &qword_24B463A10);
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  v11 = sub_24B458C1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = v24;
  v30 = a1;
  v31 = v23;
  sub_24B4586EC();
  sub_24B458C0C();
  WitnessTable = swift_getWitnessTable();
  sub_24B3ECD00(v16, v11, WitnessTable);
  v20 = *(v12 + 8);
  v20(v16, v11);
  sub_24B3ECD00(v18, v11, WitnessTable);
  return (v20)(v18, v11);
}

uint64_t sub_24B43B5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v59 = a2;
  v70 = a7;
  v61 = *(a3 - 8);
  v11 = *(v61 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v57 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFE91A0, &qword_24B463A10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v58 = &v56 - v17;
  v62 = v18;
  v68 = sub_24B45872C();
  v66 = *(v68 - 8);
  v19 = *(v66 + 64);
  v20 = MEMORY[0x28223BE20](v68);
  v67 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v73 = &v56 - v23;
  v24 = *(a4 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v22);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v56 - v29;
  v80 = a3;
  v81 = a4;
  v72 = a5;
  v82 = a5;
  v83 = a6;
  v31 = type metadata accessor for AwardDetailView();
  v32 = sub_24B437FF8(v31);
  v32();

  v71 = v30;
  v69 = a6;
  sub_24B3ECD00(v28, a4, a6);
  v63 = v24;
  v33 = v28;
  v34 = v28;
  v35 = a4;
  v64 = *(v24 + 8);
  v65 = v24 + 8;
  v64(v34, a4);
  sub_24B437F58();
  swift_getKeyPath();
  sub_24B458D5C();

  if (v80 > 1)
  {
    sub_24B3D8220(v80);
    v40 = sub_24B438048(v31);
    v41 = v57;
    v40();

    v42 = v60;
    v43 = v72;
    sub_24B3ECD00(v41, a3, v72);
    v44 = *(v61 + 8);
    v44(v41, a3);
    sub_24B3ECD00(v42, a3, v43);
    sub_24B43C034();
    sub_24B437C90(v41, v62, a3);
    v44(v41, a3);
    v44(v42, a3);
  }

  else
  {
    v36 = v58;
    sub_24B45854C();
    sub_24B45856C();
    sub_24B458CBC();
    sub_24B45855C();
    v37 = v62;
    v38 = (v36 + *(v62 + 36));
    v39 = v97;
    *v38 = v96;
    v38[1] = v39;
    v38[2] = v98;
    sub_24B43C034();
    sub_24B437B98(v36, v37);
    sub_24B43C0EC(v36);
  }

  sub_24B458CBC();
  sub_24B45855C();
  v45 = v99;
  v46 = v101;
  v47 = v103;
  v48 = v104;
  v95 = 1;
  v93 = v100;
  v91 = v102;
  v49 = v33;
  (*(v63 + 16))(v33, v71, v35);
  v89[0] = v33;
  v50 = v66;
  v51 = v67;
  v52 = v68;
  (*(v66 + 16))(v67, v73, v68);
  v80 = 0;
  LOBYTE(v81) = v95;
  *(&v81 + 1) = *v94;
  HIDWORD(v81) = *&v94[3];
  v82 = v45;
  LOBYTE(v83) = v93;
  *(&v83 + 1) = *v92;
  HIDWORD(v83) = *&v92[3];
  v84 = v46;
  v85 = v91;
  *v86 = *v90;
  *&v86[3] = *&v90[3];
  v87 = v47;
  v88 = v48;
  v89[1] = v51;
  v89[2] = &v80;
  v79[0] = v35;
  v79[1] = v52;
  v79[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7D08, &qword_24B45D850);
  v76 = v69;
  v74 = sub_24B43C034();
  v75 = v72;
  WitnessTable = swift_getWitnessTable();
  v78 = sub_24B3EC908();
  sub_24B437D88(v89, 3uLL, v79);
  v53 = *(v50 + 8);
  v53(v73, v52);
  v54 = v64;
  v64(v71, v35);
  v53(v51, v52);
  return v54(v49, v35);
}

void sub_24B43BC14(uint64_t a1)
{
  sub_24B43BCF8();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 24);
    swift_getFunctionTypeMetadata0();
    sub_24B4583CC();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      swift_getFunctionTypeMetadata0();
      sub_24B4583CC();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B43BCF8()
{
  if (!qword_27EFE9228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE9230, qword_24B463AC8);
    sub_24B3DF11C(&qword_27EFE9238, &qword_27EFE9230, qword_24B463AC8);
    v0 = sub_24B45852C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFE9228);
    }
  }
}

uint64_t objectdestroy_2Tm_2()
{
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  v14 = *(v0 + 40);
  v1 = (type metadata accessor for AwardDetailView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80)));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  sub_24B3DE5B8();
  v7 = v1[15];
  swift_getFunctionTypeMetadata0();
  v8 = sub_24B4583CC();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = v1[16];
  swift_getFunctionTypeMetadata0();
  v10 = sub_24B4583CC();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);
  return swift_deallocObject();
}

uint64_t sub_24B43BF3C(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(type metadata accessor for AwardDetailView() - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

unint64_t sub_24B43C034()
{
  result = qword_27EFE9240;
  if (!qword_27EFE9240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE91A0, &qword_24B463A10);
    sub_24B3DF11C(&qword_2810E28D8, &qword_27EFE7AE8, &qword_24B45A220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9240);
  }

  return result;
}

uint64_t sub_24B43C0EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFE91A0, &qword_24B463A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B43C154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v11 = *(v2 + 16);
  v12 = *(v2 + 40);
  v6 = *(v2 + 56);
  v7 = *(type metadata accessor for AwardDetailView() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_24B43AB14(a1, v2 + v8, *v9, *(v9 + 8), v11, *(&v11 + 1), v5, v12, a2, *(&v12 + 1), v6);
}

uint64_t sub_24B43C2AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9248, &unk_24B463B20);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - v3;
  v5 = sub_24B4588BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v11 = v0[1];
  (*(v6 + 104))(v9, **(&unk_279009508 + v10), v5);
  v12 = sub_24B45881C();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  if (v11)
  {
    if (v11 == 1)
    {
      sub_24B45883C();
    }

    else
    {
      sub_24B45884C();
    }
  }

  else
  {
    sub_24B45882C();
  }

  v13 = sub_24B45885C();
  sub_24B43C470(v4);
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_24B43C470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9248, &unk_24B463B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AwardToastPresentationEnvironment.fetchImageData.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AwardToastPresentationEnvironment.fetchAwardDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AwardToastPresentationEnvironment.fetchSuggestedWorkoutsSectionDescriptors.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AwardToastPresentationEnvironment.fetchPersonalizedAwardProgressUpdates.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AwardToastPresentationEnvironment.fetchWeeklyStreakNotification.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t AwardToastPresentationEnvironment.fetchUserFirstName.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t AwardToastPresentationEnvironment.makeAppDidBecomeActiveStream.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t AwardToastPresentationEnvironment.requestToastPresentation.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t AwardToastPresentationEnvironment.queryEligibleToPresentAwardToast.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

__n128 AwardToastPresentationEnvironment.init(fetchImageData:fetchAwardDescription:fetchSuggestedWorkoutsSectionDescriptors:fetchPersonalizedAwardProgressUpdates:fetchWeeklyStreakNotification:fetchUserFirstName:makeAppDidBecomeActiveStream:requestToastPresentation:queryEligibleToPresentAwardToast:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __n128 a13, uint64_t a14, uint64_t a15)
{
  result = a13;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 136) = a15;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_24B43C6E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_24B43C728(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AchievementEnvironmentCacheMonitorState.earnedLoadStates.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AchievementEnvironmentCacheMonitorState.imageLoadStates.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t AchievementEnvironmentCacheMonitorState.progressLoadStates.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t AchievementEnvironmentCacheMonitorState.suggestedWorkoutsStates.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t AchievementEnvironmentCacheMonitorState.toastLoadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AchievementEnvironmentCacheMonitorState() + 32);

  return sub_24B4260C0(a1, v3);
}

uint64_t sub_24B43C9C8(uint64_t a1)
{
  v2 = sub_24B43D648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B43CA04(uint64_t a1)
{
  v2 = sub_24B43D648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AchievementEnvironmentCacheMonitorState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9250, &unk_24B463BD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B43D648();
  sub_24B45928C();
  v14 = *v3;
  HIBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C20, &qword_24B4617D8);
  sub_24B427018();
  sub_24B45918C();
  if (!v2)
  {
    v14 = v3[1];
    HIBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C30, &unk_24B4617E0);
    sub_24B4270D4(&qword_27EFE8C38, sub_24B427158);
    sub_24B45918C();
    v14 = v3[2];
    HIBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C50, &qword_24B4617F0);
    sub_24B427244();
    sub_24B45918C();
    v14 = v3[3];
    HIBYTE(v13) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C60, &qword_24B4617F8);
    sub_24B427300(&qword_27EFE8C68, sub_24B3D898C);
    sub_24B45918C();
    v11 = *(type metadata accessor for AchievementEnvironmentCacheMonitorState() + 32);
    LOBYTE(v14) = 4;
    type metadata accessor for AwardToastLoadState();
    sub_24B43D7A8(&qword_27EFE8C70, type metadata accessor for AwardToastLoadState);
    sub_24B45918C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AchievementEnvironmentCacheMonitorState.hash(into:)(__int128 *a1)
{
  v3 = sub_24B45836C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardToastLoadState();
  v9 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B41B3E4(a1, *v1);
  sub_24B41AB64(a1, v1[1]);
  sub_24B41A504(a1, v1[2]);
  sub_24B41A114(a1, v1[3]);
  v12 = type metadata accessor for AchievementEnvironmentCacheMonitorState();
  sub_24B43D69C(v1 + *(v12 + 32), v11, type metadata accessor for AwardToastLoadState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v11;
      v15 = *(v11 + 1);
      v16 = *(v11 + 2);
      v17 = *(v11 + 3);
      v18 = *(v11 + 4);
      v19 = *(v11 + 5);
      v20 = v11[48];
      MEMORY[0x24C2403C0](2);
      v22[1] = v14;
      v22[2] = v15;
      v22[3] = v16;
      v22[4] = v17;
      v22[5] = v18;
      v22[6] = v19;
      v23 = v20;
      AwardToastDetail.hash(into:)(a1);
    }

    else
    {
      return MEMORY[0x24C2403C0](0);
    }
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    MEMORY[0x24C2403C0](1);
    sub_24B43D7A8(&qword_27EFE7E70, MEMORY[0x277CC95F0]);
    sub_24B458D9C();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t AchievementEnvironmentCacheMonitorState.hashValue.getter()
{
  sub_24B45922C();
  AchievementEnvironmentCacheMonitorState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t AchievementEnvironmentCacheMonitorState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  State = type metadata accessor for AwardToastLoadState();
  v4 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9260, &qword_24B463BE0);
  v25 = *(v27 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v9 = v23 - v8;
  v10 = type metadata accessor for AchievementEnvironmentCacheMonitorState();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B43D648();
  v26 = v9;
  v15 = v28;
  sub_24B45927C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v6;
  v16 = v25;
  v17 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C20, &qword_24B4617D8);
  v29 = 0;
  sub_24B427384();
  v18 = v27;
  v19 = v26;
  sub_24B4590EC();
  v23[1] = v30;
  *v17 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C30, &unk_24B4617E0);
  v29 = 1;
  sub_24B4270D4(&qword_27EFE8C88, sub_24B427440);
  sub_24B4590EC();
  v17[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C50, &qword_24B4617F0);
  v29 = 2;
  sub_24B42752C();
  v23[0] = 0;
  sub_24B4590EC();
  v20 = a1;
  v17[2] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C60, &qword_24B4617F8);
  v29 = 3;
  sub_24B427300(&qword_27EFE8CA8, sub_24B3D8E2C);
  sub_24B4590EC();
  v17[3] = v30;
  LOBYTE(v30) = 4;
  sub_24B43D7A8(&qword_27EFE8CB0, type metadata accessor for AwardToastLoadState);
  v21 = v28;
  sub_24B4590EC();
  (*(v16 + 8))(v19, v18);
  sub_24B3D00C4(v21, v17 + *(v10 + 32));
  sub_24B43D69C(v17, v24, type metadata accessor for AchievementEnvironmentCacheMonitorState);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_24B43D704(v17);
}

uint64_t sub_24B43D5C8()
{
  sub_24B45922C();
  AchievementEnvironmentCacheMonitorState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t sub_24B43D60C()
{
  sub_24B45922C();
  AchievementEnvironmentCacheMonitorState.hash(into:)(v1);
  return sub_24B45926C();
}

unint64_t sub_24B43D648()
{
  result = qword_27EFE9258;
  if (!qword_27EFE9258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9258);
  }

  return result;
}

uint64_t sub_24B43D69C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B43D704(uint64_t a1)
{
  v2 = type metadata accessor for AchievementEnvironmentCacheMonitorState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B43D7A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B43D82C()
{
  result = qword_27EFE9268;
  if (!qword_27EFE9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9268);
  }

  return result;
}

unint64_t sub_24B43D884()
{
  result = qword_27EFE9270;
  if (!qword_27EFE9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9270);
  }

  return result;
}

unint64_t sub_24B43D8DC()
{
  result = qword_27EFE9278;
  if (!qword_27EFE9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9278);
  }

  return result;
}

uint64_t AchievementEnvironmentCacheMonitorEnvironment.init(makeAchievementEnvironmentCacheUpdatedStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AwardToastEnvironment.init(requestToastDismissal:navigateToDetail:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t AwardToastEnvironment.requestToastDismissal.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AwardToastEnvironment.navigateToDetail.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_24B43D9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B4591AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B43DA78(uint64_t a1)
{
  v2 = sub_24B43DDAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B43DAB4(uint64_t a1)
{
  v2 = sub_24B43DDAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B43DAF0(uint64_t a1)
{
  v2 = sub_24B43DE00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B43DB2C(uint64_t a1)
{
  v2 = sub_24B43DE00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardHeaderAction.hashValue.getter()
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](0);
  return sub_24B45926C();
}

uint64_t AwardHeaderAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9280, "Ԉ");
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9288, &qword_24B463EE8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B43DDAC();
  sub_24B45928C();
  sub_24B43DE00();
  sub_24B45910C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_24B43DDAC()
{
  result = qword_27EFE9290;
  if (!qword_27EFE9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9290);
  }

  return result;
}

unint64_t sub_24B43DE00()
{
  result = qword_27EFE9298;
  if (!qword_27EFE9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9298);
  }

  return result;
}

uint64_t AwardHeaderAction.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE92A0, &qword_24B463EF0);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE92A8, &unk_24B463EF8);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B43DDAC();
  sub_24B45927C();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_24B4590FC();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if (sub_24B3DF6BC() || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_24B458FFC();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
    *v19 = &type metadata for AwardHeaderAction;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_24B43DE00();
  sub_24B45905C();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t sub_24B43E1A4()
{
  result = qword_27EFE92B0;
  if (!qword_27EFE92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE92B0);
  }

  return result;
}

uint64_t sub_24B43E210(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9280, "Ԉ");
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9288, &qword_24B463EE8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B43DDAC();
  sub_24B45928C();
  sub_24B43DE00();
  sub_24B45910C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_24B43E41C()
{
  result = qword_27EFE92B8;
  if (!qword_27EFE92B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE92B8);
  }

  return result;
}

unint64_t sub_24B43E474()
{
  result = qword_27EFE92C0;
  if (!qword_27EFE92C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE92C0);
  }

  return result;
}

unint64_t sub_24B43E4CC()
{
  result = qword_27EFE92C8;
  if (!qword_27EFE92C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE92C8);
  }

  return result;
}

unint64_t sub_24B43E524()
{
  result = qword_27EFE92D0;
  if (!qword_27EFE92D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE92D0);
  }

  return result;
}

unint64_t sub_24B43E57C()
{
  result = qword_27EFE92D8;
  if (!qword_27EFE92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE92D8);
  }

  return result;
}

unint64_t sub_24B43E5E4()
{
  v1 = 0x63736544676E6F6CLL;
  v2 = 0x73736572676F7270;
  if (*v0 != 2)
  {
    v2 = 0x6C6E4F65756C6176;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_24B43E67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B43FA58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B43E6A4(uint64_t a1)
{
  v2 = sub_24B43EDA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B43E6E0(uint64_t a1)
{
  v2 = sub_24B43EDA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B43E71C(uint64_t a1)
{
  v2 = sub_24B43EEF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B43E758(uint64_t a1)
{
  v2 = sub_24B43EEF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B43E794(uint64_t a1)
{
  v2 = sub_24B43EE50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B43E7D0(uint64_t a1)
{
  v2 = sub_24B43EE50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B43E80C(uint64_t a1)
{
  v2 = sub_24B43EEA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B43E848(uint64_t a1)
{
  v2 = sub_24B43EEA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B43E884(uint64_t a1)
{
  v2 = sub_24B43EDFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B43E8C0(uint64_t a1)
{
  v2 = sub_24B43EDFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardProgressDescriptionStyle.hashValue.getter()
{
  v1 = *v0;
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  return sub_24B45926C();
}

uint64_t AwardProgressDescriptionStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE92E0, &qword_24B4641C0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE92E8, &qword_24B4641C8);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE92F0, &qword_24B4641D0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE92F8, &qword_24B4641D8);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9300, &qword_24B4641E0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B43EDA8();
  sub_24B45928C();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_24B43EE50();
      v24 = v33;
      sub_24B45910C();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_24B43EDFC();
      v24 = v36;
      sub_24B45910C();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_24B43EEA4();
    v24 = v30;
    sub_24B45910C();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_24B43EEF8();
  sub_24B45910C();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_24B43EDA8()
{
  result = qword_27EFE9308;
  if (!qword_27EFE9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9308);
  }

  return result;
}

unint64_t sub_24B43EDFC()
{
  result = qword_27EFE9310;
  if (!qword_27EFE9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9310);
  }

  return result;
}

unint64_t sub_24B43EE50()
{
  result = qword_27EFE9318;
  if (!qword_27EFE9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9318);
  }

  return result;
}

unint64_t sub_24B43EEA4()
{
  result = qword_27EFE9320;
  if (!qword_27EFE9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9320);
  }

  return result;
}

unint64_t sub_24B43EEF8()
{
  result = qword_27EFE9328;
  if (!qword_27EFE9328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9328);
  }

  return result;
}

uint64_t AwardProgressDescriptionStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9330, &qword_24B4641E8);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9338, &qword_24B4641F0);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9340, &qword_24B4641F8);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9348, &qword_24B464200);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9350, &unk_24B464208);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24B43EDA8();
  v21 = v53;
  sub_24B45927C();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_24B4590FC();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_24B3E380C();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_24B458FFC();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
      *v34 = &type metadata for AwardProgressDescriptionStyle;
      sub_24B45906C();
      sub_24B458FEC();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_24B43EEA4();
        v39 = v42;
        sub_24B45905C();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_24B43EEF8();
        v31 = v42;
        sub_24B45905C();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_24B43EE50();
      v38 = v42;
      sub_24B45905C();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_24B43EDFC();
      v40 = v42;
      sub_24B45905C();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

unint64_t sub_24B43F5AC()
{
  result = qword_27EFE9358;
  if (!qword_27EFE9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9358);
  }

  return result;
}

unint64_t sub_24B43F694()
{
  result = qword_27EFE9360;
  if (!qword_27EFE9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9360);
  }

  return result;
}

unint64_t sub_24B43F6EC()
{
  result = qword_27EFE9368;
  if (!qword_27EFE9368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9368);
  }

  return result;
}

unint64_t sub_24B43F744()
{
  result = qword_27EFE9370;
  if (!qword_27EFE9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9370);
  }

  return result;
}

unint64_t sub_24B43F79C()
{
  result = qword_27EFE9378;
  if (!qword_27EFE9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9378);
  }

  return result;
}

unint64_t sub_24B43F7F4()
{
  result = qword_27EFE9380;
  if (!qword_27EFE9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9380);
  }

  return result;
}

unint64_t sub_24B43F84C()
{
  result = qword_27EFE9388;
  if (!qword_27EFE9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9388);
  }

  return result;
}

unint64_t sub_24B43F8A4()
{
  result = qword_27EFE9390;
  if (!qword_27EFE9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9390);
  }

  return result;
}

unint64_t sub_24B43F8FC()
{
  result = qword_27EFE9398;
  if (!qword_27EFE9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9398);
  }

  return result;
}

unint64_t sub_24B43F954()
{
  result = qword_27EFE93A0;
  if (!qword_27EFE93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE93A0);
  }

  return result;
}

unint64_t sub_24B43F9AC()
{
  result = qword_27EFE93A8;
  if (!qword_27EFE93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE93A8);
  }

  return result;
}

unint64_t sub_24B43FA04()
{
  result = qword_27EFE93B0;
  if (!qword_27EFE93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE93B0);
  }

  return result;
}

uint64_t sub_24B43FA58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63736544676E6F6CLL && a2 == 0xEF6E6F6974706972;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B467070 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xEB00000000726142 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6E4F65756C6176 && a2 == 0xE900000000000079)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t AwardLockupLayout.init(artworkContentSpacing:artworkMargins:contentMargins:cornerRadius:isAccessibilityLayout:lineLimit:minimumHeight:subtitleFontDescriptor:titleFontDescriptor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, __int16 *a7@<X6>, __int16 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v23 = *a7;
  v24 = *a8;
  *a9 = a10;
  v17 = type metadata accessor for AwardLockupLayout();
  v18 = v17[5];
  v19 = sub_24B45843C();
  v20 = *(*(v19 - 8) + 32);
  v20(a9 + v18, a1, v19);
  result = (v20)(a9 + v17[6], a2, v19);
  *(a9 + v17[7]) = a11;
  *(a9 + v17[8]) = a3;
  *(a9 + v17[9]) = a4;
  v22 = a9 + v17[10];
  *v22 = a5;
  v22[8] = a6 & 1;
  *(a9 + v17[11]) = v23;
  *(a9 + v17[12]) = v24;
  return result;
}

uint64_t type metadata accessor for AwardLockupLayout()
{
  result = qword_2810E3240;
  if (!qword_2810E3240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardLockupLayout.artworkMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AwardLockupLayout() + 20);
  v4 = sub_24B45843C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AwardLockupLayout.contentMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AwardLockupLayout() + 24);
  v4 = sub_24B45843C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AwardLockupLayout.minimumHeight.getter()
{
  v1 = (v0 + *(type metadata accessor for AwardLockupLayout() + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t AwardLockupLayout.subtitleFontDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AwardLockupLayout();
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t AwardLockupLayout.titleFontDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AwardLockupLayout();
  *a1 = *(v1 + *(result + 48));
  return result;
}

unint64_t sub_24B43FF58(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4D6B726F77747261;
    v6 = 0x4D746E65746E6F63;
    if (a1 != 2)
    {
      v6 = 0x615272656E726F63;
    }

    if (!a1)
    {
      v5 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x486D756D696E696DLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000016;
    }

    else
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    if (a1 != 4)
    {
      v3 = 0x696D694C656E696CLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B4400A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B441220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4400DC(uint64_t a1)
{
  v2 = sub_24B440E88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B440118(uint64_t a1)
{
  v2 = sub_24B440E88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardLockupLayout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE93B8, &qword_24B464720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B440E88();
  sub_24B45928C();
  v22 = *v3;
  v24 = 0;
  sub_24B3E3CF4();
  sub_24B45918C();
  if (!v2)
  {
    v20 = type metadata accessor for AwardLockupLayout();
    v11 = *(v20 + 20);
    LOBYTE(v22) = 1;
    sub_24B45843C();
    sub_24B440F88(&qword_27EFE93C8, MEMORY[0x277D096F0]);
    v21 = v3;
    sub_24B45918C();
    v12 = v20;
    v13 = *(v20 + 24);
    LOBYTE(v22) = 2;
    sub_24B45918C();
    v14 = v21;
    v22 = *(v21 + v12[7]);
    v24 = 3;
    sub_24B45918C();
    v15 = *(v14 + v12[8]);
    LOBYTE(v22) = 4;
    sub_24B45915C();
    v16 = *(v14 + v12[9]);
    LOBYTE(v22) = 5;
    sub_24B45917C();
    v17 = (v14 + v12[10]);
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    v22 = v18;
    v23 = v17;
    v24 = 6;
    sub_24B45913C();
    LOWORD(v22) = *(v14 + v12[11]);
    v24 = 7;
    sub_24B423720();
    sub_24B45918C();
    LOWORD(v22) = *(v14 + v12[12]);
    v24 = 8;
    sub_24B45918C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AwardLockupLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_24B45843C();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE93D0, &qword_24B464728);
  v43 = *(v45 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AwardLockupLayout();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B440E88();
  v44 = v12;
  v18 = v46;
  sub_24B45927C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v46 = v7;
  v19 = v16;
  v49 = 0;
  v20 = sub_24B3E4088();
  sub_24B4590EC();
  v21 = v19;
  *v19 = v47;
  LOBYTE(v47) = 1;
  v22 = sub_24B440F88(&qword_27EFE93D8, MEMORY[0x277D096F0]);
  v23 = v9;
  v24 = v42;
  v39 = v22;
  sub_24B4590EC();
  v37 = v20;
  v25 = v13;
  v26 = *(v13 + 20);
  v27 = v21;
  v28 = *(v41 + 32);
  v38 = v27;
  v28(&v27[v26], v23, v24);
  LOBYTE(v47) = 2;
  v29 = v46;
  sub_24B4590EC();
  v28((v38 + v25[6]), v29, v24);
  v49 = 3;
  sub_24B4590EC();
  v30 = v25;
  v31 = v38;
  *(v38 + v25[7]) = v47;
  LOBYTE(v47) = 4;
  v32 = sub_24B4590BC();
  v33 = v43;
  *(v31 + v30[8]) = v32 & 1;
  LOBYTE(v47) = 5;
  *(v31 + v30[9]) = sub_24B4590DC();
  v49 = 6;
  sub_24B45909C();
  v34 = v48;
  v35 = v31 + v30[10];
  *v35 = v47;
  *(v35 + 8) = v34;
  v49 = 7;
  sub_24B423C18();
  sub_24B4590EC();
  *(v31 + v30[11]) = v47;
  v49 = 8;
  sub_24B4590EC();
  (*(v33 + 8))(v44, v45);
  *(v31 + v30[12]) = v47;
  sub_24B440EDC(v31, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B3F6618(v31);
}

uint64_t AwardLockupLayout.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  if (*v0 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x24C2403E0](*&v2);
  v3 = type metadata accessor for AwardLockupLayout();
  v4 = v3[5];
  sub_24B45843C();
  sub_24B440F88(&qword_27EFE93E0, MEMORY[0x277D096F0]);
  sub_24B458D9C();
  v5 = v1 + v3[6];
  sub_24B458D9C();
  v6 = *(v1 + v3[7]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x24C2403E0](*&v6);
  v7 = *(v1 + v3[8]);
  sub_24B45924C();
  MEMORY[0x24C2403C0](*(v1 + v3[9]));
  v8 = v1 + v3[10];
  if (v8[8] == 1)
  {
    sub_24B45924C();
  }

  else
  {
    v9 = *v8;
    sub_24B45924C();
    if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x24C2403E0](v10);
  }

  v11 = v1 + v3[11];
  v12 = v11[1];
  MEMORY[0x24C2403C0](*v11);
  MEMORY[0x24C2403C0](v12);
  v13 = v1 + v3[12];
  v14 = v13[1];
  MEMORY[0x24C2403C0](*v13);
  return MEMORY[0x24C2403C0](v14);
}

uint64_t AwardLockupLayout.hashValue.getter()
{
  sub_24B45922C();
  AwardLockupLayout.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B440CB4()
{
  sub_24B45922C();
  AwardLockupLayout.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B440CF8()
{
  sub_24B45922C();
  AwardLockupLayout.hash(into:)();
  return sub_24B45926C();
}

BOOL _s13FitnessAwards17AwardLockupLayoutV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for AwardLockupLayout();
  if ((MEMORY[0x24C23F580](a1 + v4[5], a2 + v4[5]) & 1) == 0 || (MEMORY[0x24C23F580](a1 + v4[6], a2 + v4[6]) & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]) || *(a1 + v4[9]) != *(a2 + v4[9]))
  {
    return 0;
  }

  v5 = v4[10];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  result = 0;
  v11 = v4[11];
  v12 = a1 + v11;
  v13 = *(a1 + v11);
  v14 = a2 + v11;
  if (v13 == *v14 && v12[1] == v14[1])
  {
    v15 = v4[12];
    v16 = *(a1 + v15);
    v17 = *(a1 + v15 + 1);
    v18 = a2 + v15;
    v19 = *v18;
    v20 = v18[1];
    return v16 == v19 && v17 == v20;
  }

  return result;
}

unint64_t sub_24B440E88()
{
  result = qword_27EFE93C0;
  if (!qword_27EFE93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE93C0);
  }

  return result;
}

uint64_t sub_24B440EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardLockupLayout();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B440F88(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24B440FF8()
{
  sub_24B45843C();
  if (v0 <= 0x3F)
  {
    sub_24B4410B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B4410B8()
{
  if (!qword_2810E36C8)
  {
    v0 = sub_24B458F6C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810E36C8);
    }
  }
}

unint64_t sub_24B44111C()
{
  result = qword_27EFE93F0;
  if (!qword_27EFE93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE93F0);
  }

  return result;
}

unint64_t sub_24B441174()
{
  result = qword_27EFE93F8;
  if (!qword_27EFE93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE93F8);
  }

  return result;
}

unint64_t sub_24B4411CC()
{
  result = qword_27EFE9400;
  if (!qword_27EFE9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9400);
  }

  return result;
}

uint64_t sub_24B441220(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000024B467090 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D6B726F77747261 && a2 == 0xEE00736E69677261 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024B4670B0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696D694C656E696CLL && a2 == 0xE900000000000074 || (sub_24B4591AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x486D756D696E696DLL && a2 == 0xED00007468676965 || (sub_24B4591AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B4670D0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B4670F0 == a2)
  {

    return 8;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t AwardHeaderEnvironment.init(resolveAwardDescription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AwardHeaderLayout.init(awardImageLayout:contentPadding:descriptionFont:descriptionToProgressSpacing:imagePadding:imageToDescriptionSpacing:isAccessibilityLayout:isCompact:isPortraitMode:progressToBottomSpacing:progressViewWidthScaleFactor:sectionDensityFactor:textAlignment:titleFont:titleToDescriptionSpacing:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, char a14, uint64_t *a15, char *a16, __int16 *a17)
{
  v24 = *a3;
  v34 = *a15;
  v25 = a15[1];
  v26 = a15[2];
  v35 = *a16;
  v36 = *a17;
  *a9 = *a1;
  v27 = type metadata accessor for AwardHeaderLayout();
  v28 = v27[5];
  v29 = sub_24B45843C();
  v30 = *(*(v29 - 8) + 32);
  v30(&a9[v28], a2, v29);
  *&a9[v27[6]] = v24;
  *&a9[v27[7]] = a10;
  result = (v30)(&a9[v27[8]], a4, v29);
  *&a9[v27[9]] = a11;
  a9[v27[10]] = a5;
  a9[v27[11]] = a6;
  a9[v27[12]] = a7;
  *&a9[v27[13]] = a12;
  v32 = &a9[v27[14]];
  *v32 = a8;
  v32[8] = a14 & 1;
  v33 = &a9[v27[15]];
  *v33 = v34;
  *(v33 + 1) = v25;
  *(v33 + 2) = v26;
  a9[v27[16]] = v35;
  *&a9[v27[17]] = v36;
  *&a9[v27[18]] = a13;
  return result;
}

uint64_t type metadata accessor for AwardHeaderLayout()
{
  result = qword_27EFE9448;
  if (!qword_27EFE9448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 AwardHeaderLayout.awardImageLayout.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t AwardHeaderLayout.contentPadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AwardHeaderLayout() + 20);
  v4 = sub_24B45843C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AwardHeaderLayout.descriptionFont.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AwardHeaderLayout();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AwardHeaderLayout.imagePadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AwardHeaderLayout() + 32);
  v4 = sub_24B45843C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AwardHeaderLayout.progressViewWidthScaleFactor.getter()
{
  v1 = (v0 + *(type metadata accessor for AwardHeaderLayout() + 56));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

double AwardHeaderLayout.sectionDensityFactor.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AwardHeaderLayout() + 60));
  v4 = *v3;
  result = v3[1];
  v6 = *(v3 + 2);
  *a1 = v4;
  *(a1 + 8) = result;
  *(a1 + 16) = v6;
  return result;
}

uint64_t AwardHeaderLayout.textAlignment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AwardHeaderLayout();
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t AwardHeaderLayout.titleFont.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AwardHeaderLayout();
  *a1 = *(v1 + *(result + 68));
  return result;
}

unint64_t sub_24B441A60(char a1)
{
  result = 0x50746E65746E6F63;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0x6461506567616D69;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x6361706D6F437369;
      break;
    case 8:
      result = 0x617274726F507369;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x67696C4174786574;
      break;
    case 13:
      result = 0x6E6F46656C746974;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_24B441C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4435C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B441C7C(uint64_t a1)
{
  v2 = sub_24B442FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B441CB8(uint64_t a1)
{
  v2 = sub_24B442FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AwardHeaderLayout.zero.getter@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for AwardHeaderLayout();
  v3 = a1 + v2[5];
  sub_24B45840C();
  v4 = a1 + v2[8];
  result = sub_24B45840C();
  *a1 = 0;
  a1[1] = 0;
  *(a1 + v2[6]) = 261;
  *(a1 + v2[7]) = 0;
  *(a1 + v2[9]) = 0;
  *(a1 + v2[10]) = 0;
  *(a1 + v2[11]) = 1;
  *(a1 + v2[12]) = 1;
  *(a1 + v2[13]) = 0;
  v6 = a1 + v2[14];
  *v6 = 0;
  v6[8] = 1;
  v7 = (a1 + v2[15]);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  *(a1 + v2[16]) = 1;
  *(a1 + v2[17]) = 0;
  *(a1 + v2[18]) = 0;
  return result;
}

uint64_t AwardHeaderLayout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9408, &qword_24B4649A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B442FC0();
  sub_24B45928C();
  v29 = *v3;
  v31 = 0;
  sub_24B3E3CA0();
  sub_24B45918C();
  if (!v2)
  {
    v11 = type metadata accessor for AwardHeaderLayout();
    v12 = v11[5];
    LOBYTE(v29) = 1;
    sub_24B45843C();
    sub_24B443210(&qword_27EFE93C8, MEMORY[0x277D096F0]);
    sub_24B45918C();
    v13 = v11[6];
    v28 = v3;
    LOWORD(v29) = *(v3 + v13);
    v31 = 2;
    v14 = sub_24B423720();
    sub_24B45918C();
    v27[2] = v14;
    *&v29 = *(v28 + v11[7]);
    v31 = 3;
    v15 = sub_24B3E3CF4();
    sub_24B45918C();
    v27[1] = v15;
    v16 = v11[8];
    LOBYTE(v29) = 4;
    sub_24B45918C();
    *&v29 = *(v28 + v11[9]);
    v31 = 5;
    sub_24B45918C();
    v17 = *(v28 + v11[10]);
    LOBYTE(v29) = 6;
    sub_24B45915C();
    v18 = *(v28 + v11[11]);
    LOBYTE(v29) = 7;
    sub_24B45915C();
    v19 = *(v28 + v11[12]);
    LOBYTE(v29) = 8;
    sub_24B45915C();
    *&v29 = *(v28 + v11[13]);
    v31 = 9;
    sub_24B45918C();
    v20 = v28 + v11[14];
    v21 = *v20;
    LOBYTE(v20) = v20[8];
    *&v29 = v21;
    BYTE8(v29) = v20;
    v31 = 10;
    sub_24B45913C();
    v22 = (v28 + v11[15]);
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    *&v29 = v23;
    *(&v29 + 1) = v24;
    v30 = v25;
    v31 = 11;
    sub_24B443014();
    sub_24B45918C();
    LOBYTE(v29) = *(v28 + v11[16]);
    v31 = 12;
    sub_24B443068();
    sub_24B45918C();
    LOWORD(v29) = *(v28 + v11[17]);
    v31 = 13;
    sub_24B45918C();
    *&v29 = *(v28 + v11[18]);
    v31 = 14;
    sub_24B45918C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AwardHeaderLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_24B45843C();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9428, &qword_24B4649A8);
  v44 = *(v46 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v12 = &v36 - v11;
  v13 = type metadata accessor for AwardHeaderLayout();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B442FC0();
  v45 = v12;
  v18 = v47;
  sub_24B45927C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v7;
  v39 = v13;
  v40 = v16;
  v47 = a1;
  v50 = 0;
  sub_24B3E4034();
  sub_24B4590EC();
  v20 = v40;
  *v40 = v48;
  LOBYTE(v48) = 1;
  v21 = sub_24B443210(&qword_27EFE93D8, MEMORY[0x277D096F0]);
  v22 = v9;
  v23 = v43;
  sub_24B4590EC();
  v38 = v21;
  v24 = *(v42 + 32);
  v24(&v20[v39[5]], v22, v23);
  v50 = 2;
  v25 = sub_24B423C18();
  sub_24B4590EC();
  v26 = v23;
  v36 = v25;
  v37 = v24;
  v27 = v39;
  *&v20[v39[6]] = v48;
  v50 = 3;
  sub_24B3E4088();
  sub_24B4590EC();
  *&v20[v27[7]] = v48;
  LOBYTE(v48) = 4;
  sub_24B4590EC();
  v37(&v20[v39[8]], v19, v26);
  v50 = 5;
  sub_24B4590EC();
  v28 = v39;
  *&v20[v39[9]] = v48;
  LOBYTE(v48) = 6;
  v20[v28[10]] = sub_24B4590BC() & 1;
  LOBYTE(v48) = 7;
  v20[v28[11]] = sub_24B4590BC() & 1;
  LOBYTE(v48) = 8;
  v20[v28[12]] = sub_24B4590BC() & 1;
  v50 = 9;
  sub_24B4590EC();
  *&v40[v39[13]] = v48;
  v50 = 10;
  sub_24B45909C();
  v29 = BYTE8(v48);
  v30 = &v40[v39[14]];
  *v30 = v48;
  v30[8] = v29;
  v50 = 11;
  sub_24B4430BC();
  sub_24B4590EC();
  v31 = *(&v48 + 1);
  v32 = v49;
  v33 = &v40[v39[15]];
  *v33 = v48;
  *(v33 + 1) = v31;
  *(v33 + 2) = v32;
  v50 = 12;
  sub_24B443110();
  sub_24B4590EC();
  v40[v39[16]] = v48;
  v50 = 13;
  sub_24B4590EC();
  *&v40[v39[17]] = v48;
  v50 = 14;
  sub_24B4590EC();
  (*(v44 + 8))(v45, v46);
  v34 = v40;
  *&v40[v39[18]] = v48;
  sub_24B443164(v34, v41);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_24B3EC714(v34);
}

uint64_t AwardHeaderLayout.hash(into:)()
{
  v1 = v0;
  sub_24B3DB298(*v0, v0[1]);
  v2 = type metadata accessor for AwardHeaderLayout();
  v3 = v2[5];
  sub_24B45843C();
  sub_24B443210(&qword_27EFE93E0, MEMORY[0x277D096F0]);
  sub_24B458D9C();
  v4 = v1 + v2[6];
  v5 = v4[1];
  MEMORY[0x24C2403C0](*v4);
  MEMORY[0x24C2403C0](v5);
  v6 = *(v1 + v2[7]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x24C2403E0](*&v6);
  v7 = v1 + v2[8];
  sub_24B458D9C();
  v8 = *(v1 + v2[9]);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x24C2403E0](*&v8);
  v9 = *(v1 + v2[10]);
  sub_24B45924C();
  v10 = *(v1 + v2[11]);
  sub_24B45924C();
  v11 = *(v1 + v2[12]);
  sub_24B45924C();
  v12 = *(v1 + v2[13]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x24C2403E0](*&v12);
  v13 = v1 + v2[14];
  if (v13[8] == 1)
  {
    sub_24B45924C();
  }

  else
  {
    v14 = *v13;
    sub_24B45924C();
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x24C2403E0](v15);
  }

  v16 = (v1 + v2[15]);
  v17 = v16[1];
  v18 = *(v16 + 2);
  MEMORY[0x24C2403C0](*v16);
  if (v17 == 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v17;
  }

  MEMORY[0x24C2403E0](*&v19);
  MEMORY[0x24C2403C0](v18);
  MEMORY[0x24C2403C0](*(v1 + v2[16]));
  v20 = v1 + v2[17];
  v21 = v20[1];
  MEMORY[0x24C2403C0](*v20);
  MEMORY[0x24C2403C0](v21);
  v22 = *(v1 + v2[18]);
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  return MEMORY[0x24C2403E0](*&v22);
}

uint64_t AwardHeaderLayout.hashValue.getter()
{
  sub_24B45922C();
  AwardHeaderLayout.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B442D48()
{
  sub_24B45922C();
  AwardHeaderLayout.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B442D8C()
{
  sub_24B45922C();
  AwardHeaderLayout.hash(into:)();
  return sub_24B45926C();
}

BOOL _s13FitnessAwards17AwardHeaderLayoutV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v6 = type metadata accessor for AwardHeaderLayout();
  if ((MEMORY[0x24C23F580](a1 + v6[5], a2 + v6[5]) & 1) == 0)
  {
    return 0;
  }

  v7 = v6[6];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 1);
  v10 = a2 + v7;
  v11 = *v10;
  v12 = v10[1];
  v13 = v8 == v11 && v9 == v12;
  if (!v13 || *(a1 + v6[7]) != *(a2 + v6[7]) || (MEMORY[0x24C23F580](a1 + v6[8], a2 + v6[8]) & 1) == 0 || *(a1 + v6[9]) != *(a2 + v6[9]) || *(a1 + v6[10]) != *(a2 + v6[10]) || *(a1 + v6[11]) != *(a2 + v6[11]) || *(a1 + v6[12]) != *(a2 + v6[12]) || *(a1 + v6[13]) != *(a2 + v6[13]))
  {
    return 0;
  }

  v14 = v6[14];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 8);
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      LOBYTE(v18) = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  result = 0;
  v19 = v6[15];
  v20 = (a1 + v19);
  v21 = *(a1 + v19);
  v22 = (a2 + v19);
  if (v21 != *v22 || v20[1] != v22[1] || *(v20 + 2) != *(v22 + 2))
  {
    return result;
  }

  if (*(a1 + v6[16]) != *(a2 + v6[16]))
  {
    return 0;
  }

  result = 0;
  v23 = v6[17];
  v24 = a1 + v23;
  v25 = *(a1 + v23);
  v26 = a2 + v23;
  if (v25 == *v26 && v24[1] == v26[1])
  {
    return *(a1 + v6[18]) == *(a2 + v6[18]);
  }

  return result;
}

unint64_t sub_24B442FC0()
{
  result = qword_27EFE9410;
  if (!qword_27EFE9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9410);
  }

  return result;
}

unint64_t sub_24B443014()
{
  result = qword_27EFE9418;
  if (!qword_27EFE9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9418);
  }

  return result;
}

unint64_t sub_24B443068()
{
  result = qword_27EFE9420;
  if (!qword_27EFE9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9420);
  }

  return result;
}

unint64_t sub_24B4430BC()
{
  result = qword_27EFE9430;
  if (!qword_27EFE9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9430);
  }

  return result;
}

unint64_t sub_24B443110()
{
  result = qword_27EFE9438;
  if (!qword_27EFE9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9438);
  }

  return result;
}

uint64_t sub_24B443164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardHeaderLayout();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B443210(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24B443280()
{
  sub_24B45843C();
  if (v0 <= 0x3F)
  {
    sub_24B4410B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for AwardHeaderLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AwardHeaderLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B4434BC()
{
  result = qword_27EFE9458;
  if (!qword_27EFE9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9458);
  }

  return result;
}

unint64_t sub_24B443514()
{
  result = qword_27EFE9460;
  if (!qword_27EFE9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9460);
  }

  return result;
}

unint64_t sub_24B44356C()
{
  result = qword_27EFE9468;
  if (!qword_27EFE9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9468);
  }

  return result;
}

uint64_t sub_24B4435C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x800000024B466D30 == a2;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50746E65746E6F63 && a2 == 0xEE00676E69646461 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEF746E6F466E6F69 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024B467110 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6461506567616D69 && a2 == 0xEC000000676E6964 || (sub_24B4591AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024B467130 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024B4670B0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6361706D6F437369 && a2 == 0xE900000000000074 || (sub_24B4591AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x617274726F507369 && a2 == 0xEE0065646F4D7469 || (sub_24B4591AC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B467150 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024B467170 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B467190 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x67696C4174786574 && a2 == 0xED0000746E656D6ELL || (sub_24B4591AC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E6F46656C746974 && a2 == 0xE900000000000074 || (sub_24B4591AC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024B4671B0 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t AwardImageEnvironment.init(fetchSeymourAchievementImageURL:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24B443AB0(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardProgressLoadState();
  v46 = *(State - 8);
  v4 = *(v46 + 64);
  v5 = MEMORY[0x28223BE20](State);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v42 - v8;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v49 = a1;

  v14 = 0;
  v43 = v13;
  v44 = a1 + 64;
  v45 = a2;
  while (v12)
  {
LABEL_11:
    v17 = (*(v49 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v12)))));
    v18 = *v17;
    v19 = v17[1];
    v20 = v47;
    swift_storeEnumTagMultiPayload();
    v21 = *(type metadata accessor for AwardToastPresentationState() + 28);
    v22 = v20;
    v23 = v7;
    sub_24B44E1C0(v22, v7, type metadata accessor for AwardProgressLoadState);

    v24 = *(a2 + v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v21;
    v26 = *(a2 + v21);
    v51 = v26;
    v27 = v18;
    v29 = sub_24B412140(v18, v19);
    v30 = v26[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_22;
    }

    v33 = v28;
    if (v26[3] >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24B44C5D4();
      }
    }

    else
    {
      sub_24B44C020(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_24B412140(v27, v19);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_24;
      }

      v29 = v34;
    }

    v7 = v23;
    v36 = v51;
    if (v33)
    {
      sub_24B423104(v23, v51[7] + *(v46 + 72) * v29);
    }

    else
    {
      v51[(v29 >> 6) + 8] |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v27;
      v37[1] = v19;
      sub_24B44E1C0(v23, v36[7] + *(v46 + 72) * v29, type metadata accessor for AwardProgressLoadState);
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_23;
      }

      v36[2] = v40;
    }

    v12 &= v12 - 1;
    v9 = v44;
    v15 = v45;
    *(v45 + v50) = v36;
    a2 = v15;
    v13 = v43;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      v14 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_24B4591CC();
  __break(1u);
  return result;
}

uint64_t sub_24B443DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_24B458F7C();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 0uLL;
    v7 = -1;
    v8 = 0uLL;
  }

  else
  {
    sub_24B44D6D4(result, *(a1 + 36), a1, v12);
    v9 = v12[1];
    v10 = v12[0];
    v7 = v13;
    result = sub_24B3F24BC(v12, v11);
    v8 = v9;
    v6 = v10;
  }

  *a2 = v6;
  *(a2 + 16) = v8;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24B443E80()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 > 0xFC)
  {
    if (v3 == 253)
    {
      v4 = 3;
      return MEMORY[0x24C2403C0](v4);
    }

    if (v3 == 254)
    {
      v4 = 1;
      return MEMORY[0x24C2403C0](v4);
    }

    goto LABEL_4;
  }

  if (v3 == 251)
  {
    v4 = 5;
    return MEMORY[0x24C2403C0](v4);
  }

  if (v3 == 252)
  {
    v4 = 4;
    return MEMORY[0x24C2403C0](v4);
  }

  MEMORY[0x24C2403C0](2);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
LABEL_4:
      v4 = 0;
      return MEMORY[0x24C2403C0](v4);
    }

    MEMORY[0x24C2403C0](3);

    return sub_24B458E6C();
  }

  else
  {
    if (!v3)
    {
      MEMORY[0x24C2403C0](1);
      v4 = v1;
      return MEMORY[0x24C2403C0](v4);
    }

    MEMORY[0x24C2403C0](2);
    result = MEMORY[0x24C2403C0](*(v1 + 16));
    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = (v1 + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;

        sub_24B458E6C();

        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_24B443FD8()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_24B45922C();
  sub_24B443E80();
  return sub_24B45926C();
}

uint64_t sub_24B444030()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_24B45922C();
  sub_24B443E80();
  return sub_24B45926C();
}

__n128 AwardToastPresentationFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for AwardToastPresentationFeature() + 20);
  sub_24B45835C();
  v5 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v5;
  *(a2 + 128) = *(a1 + 128);
  v6 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v6;
  v7 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v7;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t type metadata accessor for AwardToastPresentationFeature()
{
  result = qword_2810E2A80;
  if (!qword_2810E2A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardToastPresentationFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v456 = a3;
  v457 = a2;
  v5 = sub_24B45836C();
  v449 = *(v5 - 8);
  v450 = v5;
  v6 = v449[8];
  v7 = MEMORY[0x28223BE20](v5);
  v432 = &v430 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v433 = &v430 - v10;
  MEMORY[0x28223BE20](v9);
  v444 = &v430 - v11;
  State = type metadata accessor for AwardProgressLoadState();
  i = *(State - 8);
  v13 = *(i + 64);
  v14 = MEMORY[0x28223BE20](State);
  v16 = &v430 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v430 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v430 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v430 - v23;
  v446 = type metadata accessor for AwardToastPresentationFeature();
  v451 = *(v446 - 8);
  v25 = *(v451 + 8);
  v26 = MEMORY[0x28223BE20](v446);
  v447 = &v430 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v438 = &v430 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v439 = &v430 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v441 = &v430 - v33;
  *&v452 = v34;
  MEMORY[0x28223BE20](v32);
  v434 = &v430 - v35;
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F10, &qword_24B45BC90);
  v36 = *(v454 - 1);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v454);
  v448 = &v430 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v445 = &v430 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v442 = &v430 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v440 = &v430 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v437 = &v430 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v443 = &v430 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v435 = &v430 - v51;
  MEMORY[0x28223BE20](v50);
  v436 = &v430 - v52;
  v53 = type metadata accessor for AwardToastLoadState();
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v53);
  v56 = MEMORY[0x28223BE20](v55);
  v58 = &v430 - v57;
  v59 = MEMORY[0x28223BE20](v56);
  v60 = MEMORY[0x28223BE20](v59);
  v62 = &v430 - v61;
  v63 = MEMORY[0x28223BE20](v60);
  v65 = &v430 - v64;
  v66 = MEMORY[0x28223BE20](v63);
  v67 = MEMORY[0x28223BE20](v66);
  v68 = MEMORY[0x28223BE20](v67);
  v69 = MEMORY[0x28223BE20](v68);
  v70 = MEMORY[0x28223BE20](v69);
  v71 = MEMORY[0x28223BE20](v70);
  v80 = &v430 - v79;
  v458 = *a4;
  v81 = *(a4 + 48);
  v82 = v81 >> 5;
  if (v81 >> 5 <= 1)
  {
    v453 = v19;
    v454 = v24;
    v451 = v22;
    *&v452 = v16;
    v456 = State;
    if (v82)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE80B8, &qword_24B45C3F8);
      v209 = v458;
      v210 = sub_24B45901C();
      v119 = v210;
      v19 = 0;
      v211 = *(v209 + 64);
      v451 = (v209 + 64);
      v212 = 1 << *(v209 + 32);
      v213 = -1;
      if (v212 < 64)
      {
        v213 = ~(-1 << v212);
      }

      v214 = v213 & v211;
      v215 = (v212 + 63) >> 6;
      v453 = (v210 + 64);
      v452 = xmmword_24B459800;
      v454 = v210;
      if (!v214)
      {
        goto LABEL_75;
      }

LABEL_74:
      v216 = __clz(__rbit64(v214));
      for (i = (v214 - 1) & v214; ; i = (v218 - 1) & v218)
      {
        v219 = v216 | (v19 << 6);
        v85 = 16 * v219;
        v220 = *(v209 + 56);
        v221 = *(v209 + 48) + 16 * v219;
        v84 = *(v221 + 8);
        v456 = *v221;
        v222 = (v220 + 40 * v219);
        v223 = *v222;
        v58 = v222[1];
        v224 = v222[2];
        v86 = v222[3];
        v225 = v222[4];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9470, &qword_24B464C80);
        v226 = swift_allocObject();
        *(v226 + 16) = v452;
        *(v226 + 32) = v223;
        *(v226 + 40) = v58;
        *(v226 + 48) = v224;
        *(v226 + 56) = v86;
        *(v226 + 64) = v225;
        v119 = v454;
        *(v453 + ((v219 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v219;
        v227 = (*(v119 + 48) + 16 * v219);
        *v227 = v456;
        v227[1] = v84;
        *(*(v119 + 56) + 8 * v219) = v226;
        v228 = *(v119 + 16);
        v139 = __OFADD__(v228, 1);
        v229 = v228 + 1;
        if (v139)
        {
          break;
        }

        *(v119 + 16) = v229;

        v209 = v458;
        v214 = i;
        if (i)
        {
          goto LABEL_74;
        }

LABEL_75:
        v217 = v19;
        do
        {
          v19 = v217 + 1;
          if (__OFADD__(v217, 1))
          {
            __break(1u);
            goto LABEL_171;
          }

          if (v19 >= v215)
          {
            v230 = v457;
            v231 = *(v457 + 8);

            *(v230 + 8) = v119;
            return result;
          }

          v218 = *&v451[8 * v19];
          ++v217;
        }

        while (!v218);
        v216 = __clz(__rbit64(v218));
      }

      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

    v119 = v458;
    v85 = v458 + 56;
    v120 = 1 << *(v458 + 32);
    v121 = -1;
    if (v120 < 64)
    {
      v121 = ~(-1 << v120);
    }

    v122 = v121 & *(v458 + 56);
    v84 = (v120 + 63) >> 6;
    v450 = 0x800000024B4668F0;

    v123 = 0;
    while (1)
    {
      while (1)
      {
        v72 = v456;
        v124 = v454;
        v125 = v453;
        if (!v122)
        {
          while (1)
          {
            v86 = v123 + 1;
            if (__OFADD__(v123, 1))
            {
              break;
            }

            if (v86 >= v84)
            {
            }

            v122 = *(v85 + 8 * v86);
            ++v123;
            if (v122)
            {
              goto LABEL_24;
            }
          }

LABEL_171:
          __break(1u);
LABEL_172:
          v194 = v73;
          v191 = v77;
          v195 = v72;
          v416 = *(type metadata accessor for AwardToastPresentationState() + 24);
          sub_24B44E158(v19 + v416, v195, type metadata accessor for AwardToastLoadState);
          sub_24B44E158(v195, v58, type metadata accessor for AwardToastLoadState);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_24B44E040(v195, type metadata accessor for AwardToastLoadState);
            sub_24B44E040(v58, type metadata accessor for AwardToastLoadState);
            v417 = v19 + v416;
            goto LABEL_177;
          }

LABEL_179:
          sub_24B44E040(v58, type metadata accessor for AwardToastLoadState);
          if (qword_2810E3610 != -1)
          {
            swift_once();
          }

          v421 = sub_24B45847C();
          __swift_project_value_buffer(v421, qword_2810E3618);
          sub_24B44E158(v195, v194, type metadata accessor for AwardToastLoadState);
          v422 = sub_24B45845C();
          v423 = sub_24B458F4C();
          if (os_log_type_enabled(v422, v423))
          {
            v424 = swift_slowAlloc();
            v425 = swift_slowAlloc();
            v459 = v425;
            *v424 = 136315138;
            sub_24B44E158(v194, v191, type metadata accessor for AwardToastLoadState);
            v426 = sub_24B458E4C();
            v428 = v427;
            sub_24B44E040(v194, type metadata accessor for AwardToastLoadState);
            v429 = sub_24B3F17BC(v426, v428, &v459);

            *(v424 + 4) = v429;
            _os_log_impl(&dword_24B3CE000, v422, v423, "[AwardToastPresentationFeature] Toast was presented but the load state was %s", v424, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v425);
            MEMORY[0x24C2408A0](v425, -1, -1);
            MEMORY[0x24C2408A0](v424, -1, -1);
          }

          else
          {

            sub_24B44E040(v194, type metadata accessor for AwardToastLoadState);
          }

          v401 = v195;
          return sub_24B44E040(v401, type metadata accessor for AwardToastLoadState);
        }

        v86 = v123;
LABEL_24:
        v126 = __clz(__rbit64(v122));
        v122 &= v122 - 1;
        v127 = *(v119 + 48) + 40 * (v126 | (v86 << 6));
        v129 = *v127;
        v128 = *(v127 + 8);
        v131 = *(v127 + 16);
        v130 = *(v127 + 24);
        if ((*(v127 + 32) & 1) == 0)
        {
          break;
        }

        *v453 = v129;
        v125[1] = v128;
        v125[2] = v131;
        v125[3] = v130;
        *(v125 + 32) = 1;
        swift_storeEnumTagMultiPayload();
        v58 = *(type metadata accessor for AwardToastPresentationState() + 28);
        sub_24B44E1C0(v125, v452, type metadata accessor for AwardProgressLoadState);
        v19 = v457;
        v132 = *(v457 + v58);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v459 = *(v19 + v58);
        v134 = v459;
        v135 = sub_24B412140(0xD00000000000001CLL, v450);
        v137 = *(v134 + 16);
        v138 = (v136 & 1) == 0;
        v139 = __OFADD__(v137, v138);
        v140 = v137 + v138;
        if (v139)
        {
          goto LABEL_186;
        }

        v141 = v136;
        if (*(v134 + 24) >= v140)
        {
          v143 = i;
          v144 = v452;
          if (isUniquelyReferenced_nonNull_native)
          {
            v145 = v459;
            if (v136)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v165 = v135;
            sub_24B44C5D4();
            v144 = v452;
            v143 = i;
            v135 = v165;
            v145 = v459;
            if (v141)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
          sub_24B44C020(v140, isUniquelyReferenced_nonNull_native);
          v135 = sub_24B412140(0xD00000000000001CLL, v450);
          if ((v141 & 1) != (v142 & 1))
          {
            goto LABEL_191;
          }

          v143 = i;
          v144 = v452;
          v145 = v459;
          if (v141)
          {
LABEL_17:
            sub_24B423104(v144, v145[7] + *(v143 + 72) * v135);
            goto LABEL_18;
          }
        }

        v145[(v135 >> 6) + 8] |= 1 << v135;
        v162 = (v145[6] + 16 * v135);
        *v162 = 0xD00000000000001CLL;
        v162[1] = v450;
        sub_24B44E1C0(v144, v145[7] + *(v143 + 72) * v135, type metadata accessor for AwardProgressLoadState);
        v163 = v145[2];
        v139 = __OFADD__(v163, 1);
        v164 = v163 + 1;
        if (v139)
        {
          goto LABEL_188;
        }

        v145[2] = v164;
LABEL_18:
        *(v19 + v58) = v145;
        v123 = v86;
      }

      *v454 = v129;
      v124[1] = v128;
      v124[2] = v131;
      v124[3] = v130;
      *(v124 + 32) = 0;
      v146 = v124;
      v119 = v130;
      swift_storeEnumTagMultiPayload();
      v58 = *(type metadata accessor for AwardToastPresentationState() + 28);
      sub_24B44E1C0(v146, v451, type metadata accessor for AwardProgressLoadState);
      v448 = v131;
      v449 = v119;
      sub_24B3F1F54(v129, v128, v131, v119, 0);

      v147 = v457;
      v148 = *(v457 + v58);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v149 = *(v147 + v58);
      v459 = v149;
      v150 = sub_24B412140(v129, v128);
      v152 = *(v149 + 16);
      v153 = (v151 & 1) == 0;
      v139 = __OFADD__(v152, v153);
      v154 = v152 + v153;
      if (v139)
      {
        goto LABEL_187;
      }

      v119 = v151;
      if (*(v149 + 24) >= v154)
      {
        v156 = i;
        v157 = v451;
        if ((v19 & 1) == 0)
        {
          v166 = v150;
          sub_24B44C5D4();
          v157 = v451;
          v156 = i;
          v150 = v166;
        }

        v19 = v457;
        v158 = v459;
        if (v119)
        {
          goto LABEL_43;
        }
      }

      else
      {
        sub_24B44C020(v154, v19);
        v150 = sub_24B412140(v129, v128);
        if ((v119 & 1) != (v155 & 1))
        {
LABEL_191:
          result = sub_24B4591CC();
          __break(1u);
          return result;
        }

        v19 = v457;
        v156 = i;
        v157 = v451;
        v158 = v459;
        if (v119)
        {
LABEL_43:
          sub_24B423104(v157, v158[7] + *(v156 + 72) * v150);
          sub_24B3DF468(v129, v128, v448, v449, 0);
          goto LABEL_44;
        }
      }

      v158[(v150 >> 6) + 8] |= 1 << v150;
      v159 = (v158[6] + 16 * v150);
      *v159 = v129;
      v159[1] = v128;
      sub_24B44E1C0(v157, v158[7] + *(v156 + 72) * v150, type metadata accessor for AwardProgressLoadState);
      v160 = v158[2];
      v139 = __OFADD__(v160, 1);
      v161 = v160 + 1;
      if (v139)
      {
        goto LABEL_189;
      }

      v158[2] = v161;
LABEL_44:
      *(v19 + v58) = v158;
      v123 = v86;
      v119 = v458;
    }
  }

  i = v36;
  v83 = *(a4 + 8);
  v84 = *(a4 + 16);
  v85 = *(a4 + 24);
  v19 = *(a4 + 32);
  v86 = *(a4 + 40);
  if (v82 == 2)
  {
    v441 = v74;
    v439 = v78;
    v447 = v83;
    v435 = v77;
    v448 = v76;
    v443 = v71;
    LODWORD(v440) = v81 & 0x1F;
    v167 = qword_2810E3610;
    v119 = v458;
    LODWORD(v58) = v81;

    if (v167 == -1)
    {
LABEL_48:
      v168 = sub_24B45847C();
      v169 = __swift_project_value_buffer(v168, qword_2810E3618);

      v437 = v169;
      v170 = sub_24B45845C();
      v171 = sub_24B458F4C();
      v172 = v447;
      LODWORD(v436) = v58;
      sub_24B44B98C(v119, v447, v84, v85, v19, v86, v58);
      v173 = os_log_type_enabled(v170, v171);
      v431 = v19;
      if (v173)
      {
        v174 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v466 = v175;
        *v174 = 136315138;
        v459 = v119;
        v460 = v172;
        v461 = v84;
        v462 = v85;
        v463 = v19;
        v464 = v86;
        v465 = v440;

        v176 = sub_24B458E4C();
        v178 = sub_24B3F17BC(v176, v177, &v466);

        *(v174 + 4) = v178;
        v87 = v456;
        _os_log_impl(&dword_24B3CE000, v170, v171, "[AwardToastPresentationFeature] Fetched award toast detail %s", v174, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v175);
        MEMORY[0x24C2408A0](v175, -1, -1);
        MEMORY[0x24C2408A0](v174, -1, -1);

        v179 = v454;
      }

      else
      {

        v179 = v454;
        v87 = v456;
      }

      v180 = v457;
      v232 = v180 + *(type metadata accessor for AwardToastPresentationState() + 24);
      v233 = v448;
      sub_24B44E158(v232, v448, type metadata accessor for AwardToastLoadState);
      v234 = v233;
      v235 = v441;
      sub_24B44E158(v234, v441, type metadata accessor for AwardToastLoadState);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_24B44B98C(v458, v447, v84, v85, v431, v86, v436);
        sub_24B44E040(v235, type metadata accessor for AwardToastLoadState);
      }

      else
      {
        v286 = v449;
        v287 = v444;
        v288 = v235;
        v289 = v450;
        (v449[4])(v444, v288, v450);
        v290 = *(v446 + 20);
        v291 = v453;
        if (sub_24B45834C())
        {
          sub_24B44E040(v232, type metadata accessor for AwardToastLoadState);
          v292 = v458;
          v293 = v447;
          *v232 = v458;
          *(v232 + 8) = v293;
          *(v232 + 16) = v84;
          *(v232 + 24) = v85;
          v294 = v431;
          *(v232 + 32) = v431;
          *(v232 + 40) = v86;
          *(v232 + 48) = v440;
          swift_storeEnumTagMultiPayload();
          v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
          v296 = v295[12];
          v297 = v86;
          v298 = v295[16];
          v457 = v295[20];
          v299 = v442;
          v456 = &v442[v295[24]];
          v459 = 0;
          v460 = 0;
          LOBYTE(v461) = -5;
          sub_24B44BA44();
          v446 = v85;

          sub_24B458F9C();
          sub_24B458EFC();
          v300 = *MEMORY[0x277D04400];
          v301 = sub_24B458D4C();
          (*(*(v301 - 8) + 104))(&v299[v298], v300, v301);
          v302 = v291;
          v303 = v438;
          sub_24B44E158(v302, v438, type metadata accessor for AwardToastPresentationFeature);
          v304 = (v451[80] + 16) & ~v451[80];
          v305 = (v452 + v304 + 7) & 0xFFFFFFFFFFFFFFF8;
          v306 = swift_allocObject();
          sub_24B44E1C0(v303, v306 + v304, type metadata accessor for AwardToastPresentationFeature);
          v307 = v306 + v305;
          v308 = v447;
          *v307 = v292;
          *(v307 + 8) = v308;
          v309 = v446;
          *(v307 + 16) = v84;
          *(v307 + 24) = v309;
          *(v307 + 32) = v294;
          *(v307 + 40) = v297;
          v310 = v454;
          *(v307 + 48) = v440;
          v311 = v456;
          *v456 = &unk_24B464C70;
          *(v311 + 1) = v306;
          v312 = *MEMORY[0x277D043E8];
          v313 = sub_24B458D3C();
          (*(*(v313 - 8) + 104))(&v299[v457], v312, v313);
          v314 = i;
          (*(i + 104))(v299, *MEMORY[0x277D043B0], v310);
          v315 = *v87;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v315 = sub_24B3F1508(0, *(v315 + 2) + 1, 1, v315);
          }

          v317 = *(v315 + 2);
          v316 = *(v315 + 3);
          if (v317 >= v316 >> 1)
          {
            v315 = sub_24B3F1508(v316 > 1, v317 + 1, 1, v315);
          }

          (v449[1])();
          sub_24B44E040(v448, type metadata accessor for AwardToastLoadState);
          *(v315 + 2) = v317 + 1;
          result = (*(v314 + 32))(&v315[((*(v314 + 80) + 32) & ~*(v314 + 80)) + *(v314 + 72) * v317], v442, v310);
          *v87 = v315;
          return result;
        }

        (*(v286 + 8))(v287, v289);
        sub_24B44B98C(v458, v447, v84, v85, v431, v86, v436);
      }

      v365 = v439;
      sub_24B44E158(v448, v439, type metadata accessor for AwardToastLoadState);
      v366 = sub_24B45845C();
      v367 = sub_24B458F4C();
      v368 = os_log_type_enabled(v366, v367);
      v369 = i;
      if (v368)
      {
        v370 = swift_slowAlloc();
        v371 = swift_slowAlloc();
        v459 = v371;
        *v370 = 136315138;
        sub_24B44E158(v365, v435, type metadata accessor for AwardToastLoadState);
        v372 = sub_24B458E4C();
        v374 = v373;
        sub_24B44E040(v365, type metadata accessor for AwardToastLoadState);
        v375 = sub_24B3F17BC(v372, v374, &v459);

        *(v370 + 4) = v375;
        _os_log_impl(&dword_24B3CE000, v366, v367, "[AwardToastPresentationFeature] Toast detail was fetched but the load state was %s", v370, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v371);
        MEMORY[0x24C2408A0](v371, -1, -1);
        MEMORY[0x24C2408A0](v370, -1, -1);
      }

      else
      {

        sub_24B44E040(v365, type metadata accessor for AwardToastLoadState);
      }

      v376 = v445;
      v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
      v378 = v377[12];
      v379 = v377[16];
      v380 = v377[20];
      v381 = &v376[v377[24]];
      v459 = 0;
      v460 = 0;
      LOBYTE(v461) = -1;
      sub_24B44BA44();
      sub_24B458F9C();
      sub_24B458EFC();
      v382 = *MEMORY[0x277D04400];
      v383 = sub_24B458D4C();
      (*(*(v383 - 8) + 104))(&v376[v379], v382, v383);
      *v381 = &unk_24B464C60;
      *(v381 + 1) = 0;
      v384 = *MEMORY[0x277D043E8];
      v385 = sub_24B458D3C();
      (*(*(v385 - 8) + 104))(&v376[v380], v384, v385);
      (*(v369 + 104))(v376, *MEMORY[0x277D043B0], v179);
      v257 = *v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v257 = sub_24B3F1508(0, *(v257 + 2) + 1, 1, v257);
      }

      v387 = *(v257 + 2);
      v386 = *(v257 + 3);
      if (v387 >= v386 >> 1)
      {
        v257 = sub_24B3F1508(v386 > 1, v387 + 1, 1, v257);
      }

      sub_24B44E040(v448, type metadata accessor for AwardToastLoadState);
      *(v257 + 2) = v387 + 1;
      result = (*(v369 + 32))(&v257[((*(v369 + 80) + 32) & ~*(v369 + 80)) + *(v369 + 72) * v387], v376, v179);
LABEL_139:
      *v87 = v257;
      return result;
    }

LABEL_190:
    swift_once();
    goto LABEL_48;
  }

  v87 = v456;
  if (v82 == 3)
  {
    v88 = v81;
    v89 = v458;
    v90 = *(a4 + 8);
    sub_24B4070AC(v458, v90, *(a4 + 16));
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v91 = sub_24B45847C();
    __swift_project_value_buffer(v91, qword_2810E3618);
    sub_24B4070AC(v89, v90, v84);
    v92 = sub_24B45845C();
    v93 = sub_24B458F4C();
    sub_24B44B98C(v89, v90, v84, v85, v19, v86, v88);
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v466 = v95;
      *v94 = 136315138;
      v459 = v89;
      v460 = v90;
      LOBYTE(v461) = v84;
      sub_24B4070AC(v89, v90, v84);
      v96 = sub_24B458E4C();
      v98 = sub_24B3F17BC(v96, v97, &v466);

      *(v94 + 4) = v98;
      _os_log_impl(&dword_24B3CE000, v92, v93, "[AwardToastPresentationFeature] Fetched award toast kind %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      MEMORY[0x24C2408A0](v95, -1, -1);
      MEMORY[0x24C2408A0](v94, -1, -1);
    }

    v99 = v448;
    v100 = v447;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
    v102 = v101[12];
    v103 = v101[16];
    v104 = v101[20];
    v105 = (v99 + v101[24]);
    v459 = v89;
    v460 = v90;
    LOBYTE(v461) = v84;
    sub_24B4070AC(v89, v90, v84);
    sub_24B44BA44();
    sub_24B458F9C();
    sub_24B458EFC();
    v106 = *MEMORY[0x277D04400];
    v107 = sub_24B458D4C();
    (*(*(v107 - 8) + 104))(v99 + v103, v106, v107);
    sub_24B44E158(v453, v100, type metadata accessor for AwardToastPresentationFeature);
    v108 = (v451[80] + 33) & ~v451[80];
    v109 = swift_allocObject();
    *(v109 + 16) = v89;
    *(v109 + 24) = v90;
    *(v109 + 32) = v84;
    sub_24B44E1C0(v100, v109 + v108, type metadata accessor for AwardToastPresentationFeature);
    *v105 = &unk_24B464C58;
    v105[1] = v109;
    v110 = *MEMORY[0x277D043E8];
    v111 = sub_24B458D3C();
    (*(*(v111 - 8) + 104))(v99 + v104, v110, v111);
    v113 = v454;
    v112 = i;
    (*(i + 104))(v99, *MEMORY[0x277D043B0], v454);
    v114 = v456;
    v115 = *v456;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v115 = sub_24B3F1508(0, v115[2] + 1, 1, v115);
    }

    v117 = v115[2];
    v116 = v115[3];
    if (v117 >= v116 >> 1)
    {
      v115 = sub_24B3F1508(v116 > 1, v117 + 1, 1, v115);
    }

    v115[2] = v117 + 1;
    result = (*(v112 + 32))(v115 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v117, v99, v113);
    *v114 = v115;
    return result;
  }

  v181 = v84 | v83;
  v182 = v84 | v83 | v458 | v85;
  v183 = v19 | v86;
  v184 = v182 | v19 | v86;
  v19 = v457;
  if (!v184 && v81 == 128)
  {
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v185 = sub_24B45847C();
    __swift_project_value_buffer(v185, qword_2810E3618);
    v186 = sub_24B45845C();
    v187 = sub_24B458F4C();
    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      *v188 = 0;
      _os_log_impl(&dword_24B3CE000, v186, v187, "[AwardToastPresentationFeature] Fetching award toast kind", v188, 2u);
      MEMORY[0x24C2408A0](v188, -1, -1);
    }

    v189 = *(type metadata accessor for AwardToastPresentationState() + 24);
    sub_24B44E040(v19 + v189, type metadata accessor for AwardToastLoadState);
    (v449[2])(v19 + v189, v453 + *(v446 + 20), v450);
    swift_storeEnumTagMultiPayload();
    v190 = *(v19 + 8);
    v191 = v190 + 64;
    v192 = 1 << *(v190 + 32);
    v193 = -1;
    if (v192 < 64)
    {
      v193 = ~(-1 << v192);
    }

    v194 = v193 & *(v190 + 64);
    v195 = (v192 + 63) >> 6;
    v196 = *(v19 + 8);

    v197 = 0;
    v198 = MEMORY[0x277D84F90];
    if (!v194)
    {
      goto LABEL_61;
    }

    do
    {
LABEL_59:
      while (1)
      {
        v199 = __clz(__rbit64(v194));
        v194 &= v194 - 1;
        v200 = v199 | (v197 << 6);
        v201 = *(*(v190 + 56) + 8 * v200);
        if (v201 >= 2)
        {
          break;
        }

        if (!v194)
        {
          goto LABEL_61;
        }
      }

      v203 = (*(v190 + 48) + 16 * v200);
      v204 = v203[1];
      v458 = *v203;
      v205 = v204;
      swift_bridgeObjectRetain_n();
      sub_24B3D81E4(v201);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v198 = sub_24B3F13B4(0, *(v198 + 2) + 1, 1, v198);
      }

      v58 = *(v198 + 2);
      v206 = *(v198 + 3);
      v457 = v58 + 1;
      if (v58 >= v206 >> 1)
      {
        v198 = sub_24B3F13B4((v206 > 1), v58 + 1, 1, v198);
      }

      sub_24B3D8220(v201);
      v207 = v458;
      *(v198 + 2) = v457;
      v208 = &v198[16 * v58];
      *(v208 + 4) = v207;
      *(v208 + 5) = v205;
    }

    while (v194);
    while (1)
    {
LABEL_61:
      v202 = v197 + 1;
      if (__OFADD__(v197, 1))
      {
        __break(1u);
        goto LABEL_179;
      }

      if (v202 >= v195)
      {
        break;
      }

      v194 = *(v191 + 8 * v202);
      ++v197;
      if (v194)
      {
        v197 = v202;
        goto LABEL_59;
      }
    }

    v260 = sub_24B45845C();
    v261 = sub_24B458F4C();

    if (os_log_type_enabled(v260, v261))
    {
      v262 = swift_slowAlloc();
      v263 = swift_slowAlloc();
      v459 = v263;
      *v262 = 136315138;
      v264 = MEMORY[0x24C240030](v198, MEMORY[0x277D837D0]);
      v266 = sub_24B3F17BC(v264, v265, &v459);

      *(v262 + 4) = v266;
      _os_log_impl(&dword_24B3CE000, v260, v261, "[AwardToastPresentationFeature] Award candidates: %s", v262, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v263);
      MEMORY[0x24C2408A0](v263, -1, -1);
      MEMORY[0x24C2408A0](v262, -1, -1);
    }

    v267 = v456;
    v268 = v454;
    v269 = v443;
    if (*(v198 + 2))
    {
      v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
      v271 = v270[12];
      v272 = v270[16];
      v273 = v270[20];
      v274 = &v269[v270[24]];
      v459 = 0;
      v460 = 0;
      LOBYTE(v461) = -1;
      sub_24B44BA44();
      sub_24B458F9C();
      sub_24B458EFC();
      v275 = *MEMORY[0x277D04400];
      v276 = sub_24B458D4C();
      (*(*(v276 - 8) + 104))(&v269[v272], v275, v276);
      v277 = v441;
      sub_24B44E158(v453, v441, type metadata accessor for AwardToastPresentationFeature);
      v278 = (v451[80] + 16) & ~v451[80];
      v279 = (v452 + v278 + 7) & 0xFFFFFFFFFFFFFFF8;
      v280 = swift_allocObject();
      sub_24B44E1C0(v277, v280 + v278, type metadata accessor for AwardToastPresentationFeature);
      *(v280 + v279) = v198;
      *v274 = &unk_24B464CA0;
      *(v274 + 1) = v280;
      v281 = *MEMORY[0x277D043E8];
      v282 = sub_24B458D3C();
      (*(*(v282 - 8) + 104))(&v269[v273], v281, v282);
      (*(i + 104))(v269, *MEMORY[0x277D043B0], v268);
      v283 = *v267;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v283 = sub_24B3F1508(0, v283[2] + 1, 1, v283);
      }

      v285 = v283[2];
      v284 = v283[3];
      if (v285 >= v284 >> 1)
      {
        v283 = sub_24B3F1508(v284 > 1, v285 + 1, 1, v283);
      }

      v283[2] = v285 + 1;
      result = (*(i + 32))(v283 + ((*(i + 80) + 32) & ~*(i + 80)) + *(i + 72) * v285, v269, v268);
    }

    else
    {

      v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
      v389 = v388[12];
      v390 = v388[16];
      v391 = v388[20];
      v392 = v437;
      v393 = &v437[v388[24]];
      v459 = 0;
      v460 = 0;
      LOBYTE(v461) = -2;
      sub_24B44BA44();
      sub_24B458F9C();
      sub_24B458EFC();
      v394 = *MEMORY[0x277D04400];
      v395 = sub_24B458D4C();
      (*(*(v395 - 8) + 104))(&v392[v390], v394, v395);
      *v393 = &unk_24B464CA8;
      *(v393 + 1) = 0;
      v396 = *MEMORY[0x277D043E8];
      v397 = sub_24B458D3C();
      (*(*(v397 - 8) + 104))(&v392[v391], v396, v397);
      (*(i + 104))(v392, *MEMORY[0x277D043B0], v268);
      v283 = *v267;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v283 = sub_24B3F1508(0, v283[2] + 1, 1, v283);
      }

      v399 = v283[2];
      v398 = v283[3];
      if (v399 >= v398 >> 1)
      {
        v283 = sub_24B3F1508(v398 > 1, v399 + 1, 1, v283);
      }

      v283[2] = v399 + 1;
      result = (*(i + 32))(v283 + ((*(i + 80) + 32) & ~*(i + 80)) + *(i + 72) * v399, v392, v268);
    }

    *v267 = v283;
    return result;
  }

  v236 = v181 | v85 | v183;
  v237 = i;
  if (v81 == 128 && v458 == 1 && !v236)
  {
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v238 = sub_24B45847C();
    __swift_project_value_buffer(v238, qword_2810E3618);
    v239 = sub_24B45845C();
    v240 = sub_24B458F4C();
    v241 = os_log_type_enabled(v239, v240);
    v242 = v454;
    v243 = v440;
    if (v241)
    {
      v244 = swift_slowAlloc();
      *v244 = 0;
      _os_log_impl(&dword_24B3CE000, v239, v240, "[AwardToastPresentationFeature] Fetching candidates", v244, 2u);
      MEMORY[0x24C2408A0](v244, -1, -1);
    }

    v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
    v246 = v245[12];
    v247 = v245[16];
    v248 = v245[20];
    v249 = &v243[v245[24]];
    v459 = 0;
    v460 = 0;
    LOBYTE(v461) = -2;
    sub_24B44BA44();
    sub_24B458F9C();
    sub_24B458EFC();
    v250 = *MEMORY[0x277D04400];
    v251 = sub_24B458D4C();
    (*(*(v251 - 8) + 104))(&v243[v247], v250, v251);
    v252 = v439;
    sub_24B44E158(v453, v439, type metadata accessor for AwardToastPresentationFeature);
    v253 = (v451[80] + 16) & ~v451[80];
    v254 = swift_allocObject();
    sub_24B44E1C0(v252, v254 + v253, type metadata accessor for AwardToastPresentationFeature);
    *v249 = &unk_24B464C90;
    *(v249 + 1) = v254;
    v255 = *MEMORY[0x277D043E8];
    v256 = sub_24B458D3C();
    (*(*(v256 - 8) + 104))(&v243[v248], v255, v256);
    (*(v237 + 104))(v243, *MEMORY[0x277D043B0], v242);
    v257 = *v87;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v257 = sub_24B3F1508(0, *(v257 + 2) + 1, 1, v257);
    }

    v259 = *(v257 + 2);
    v258 = *(v257 + 3);
    if (v259 >= v258 >> 1)
    {
      v257 = sub_24B3F1508(v258 > 1, v259 + 1, 1, v257);
    }

    *(v257 + 2) = v259 + 1;
    result = (*(v237 + 32))(&v257[((*(v237 + 80) + 32) & ~*(v237 + 80)) + *(v237 + 72) * v259], v243, v242);
    goto LABEL_139;
  }

  if (v81 == 128 && v458 == 2 && !v236)
  {
    v318 = v75;
    v458 = v80;
    v319 = v77;
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v320 = sub_24B45847C();
    __swift_project_value_buffer(v320, qword_2810E3618);
    v321 = sub_24B45845C();
    v322 = sub_24B458F4C();
    if (os_log_type_enabled(v321, v322))
    {
      v323 = swift_slowAlloc();
      *v323 = 0;
      _os_log_impl(&dword_24B3CE000, v321, v322, "Checking for eligible toast, if any", v323, 2u);
      MEMORY[0x24C2408A0](v323, -1, -1);
    }

    v324 = v19 + *(type metadata accessor for AwardToastPresentationState() + 24);
    v325 = v458;
    sub_24B44E158(v324, v458, type metadata accessor for AwardToastLoadState);
    swift_storeEnumTagMultiPayload();
    StateO2eeoiySbAC_ACtFZ_0 = _s13FitnessAwards19AwardToastLoadStateO2eeoiySbAC_ACtFZ_0(v325, v319);
    sub_24B44E040(v319, type metadata accessor for AwardToastLoadState);
    if ((StateO2eeoiySbAC_ACtFZ_0 & 1) == 0)
    {
      sub_24B44E158(v325, v318, type metadata accessor for AwardToastLoadState);
      v402 = sub_24B45845C();
      v403 = sub_24B458F4C();
      if (os_log_type_enabled(v402, v403))
      {
        v404 = swift_slowAlloc();
        v405 = swift_slowAlloc();
        v459 = v405;
        *v404 = 136315138;
        sub_24B44E158(v318, v319, type metadata accessor for AwardToastLoadState);
        v406 = sub_24B458E4C();
        v408 = v407;
        sub_24B44E040(v318, type metadata accessor for AwardToastLoadState);
        v409 = sub_24B3F17BC(v406, v408, &v459);

        *(v404 + 4) = v409;
        _os_log_impl(&dword_24B3CE000, v402, v403, "[AwardToastPresentationFeature] Skipping toast presentation due to loadState: %s", v404, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v405);
        MEMORY[0x24C2408A0](v405, -1, -1);
        MEMORY[0x24C2408A0](v404, -1, -1);
      }

      else
      {

        sub_24B44E040(v318, type metadata accessor for AwardToastLoadState);
      }

      v401 = v325;
      return sub_24B44E040(v401, type metadata accessor for AwardToastLoadState);
    }

    v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
    v328 = v327[12];
    v329 = v327[16];
    v330 = v327[20];
    v331 = v436;
    v332 = &v436[v327[24]];
    v459 = 0;
    v460 = 0;
    LOBYTE(v461) = -4;
    v447 = sub_24B44BA44();
    sub_24B458F9C();
    sub_24B458EFC();
    v333 = *MEMORY[0x277D04400];
    v334 = sub_24B458D4C();
    v335 = *(v334 - 8);
    v336 = *(v335 + 104);
    LODWORD(v444) = v333;
    v443 = v336;
    v442 = (v335 + 104);
    (v336)(&v331[v329], v333, v334);
    *v332 = &unk_24B464CB0;
    *(v332 + 1) = 0;
    v337 = *MEMORY[0x277D043E8];
    v338 = sub_24B458D3C();
    v339 = *(v338 - 8);
    v340 = *(v339 + 104);
    LODWORD(v450) = v337;
    v448 = v339 + 104;
    v449 = v340;
    (v340)(&v331[v330], v337, v338);
    v341 = *(v237 + 104);
    LODWORD(v446) = *MEMORY[0x277D043B0];
    v445 = v341;
    (v341)(v331);
    v342 = *v87;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v342 = sub_24B3F1508(0, *(v342 + 2) + 1, 1, v342);
    }

    v344 = *(v342 + 2);
    v343 = *(v342 + 3);
    if (v344 >= v343 >> 1)
    {
      v342 = sub_24B3F1508(v343 > 1, v344 + 1, 1, v342);
    }

    *(v342 + 2) = v344 + 1;
    v347 = *(v237 + 32);
    v346 = v237 + 32;
    v345 = v347;
    v348 = (*(v346 + 48) + 32) & ~*(v346 + 48);
    v349 = v346;
    v350 = *(v346 + 40);
    v351 = v454;
    i = v349;
    v347(&v342[v348 + v350 * v344], v436, v454);
    v352 = v457;
    *v456 = v342;
    if (*v352 != 1)
    {
      v401 = v458;
      return sub_24B44E040(v401, type metadata accessor for AwardToastLoadState);
    }

    v440 = v350;
    v441 = v348;
    v457 = v345;
    v353 = v327[12];
    v354 = v327[16];
    v439 = v327[20];
    v355 = v435;
    v356 = (v435 + v327[24]);
    v459 = 0;
    v460 = 0;
    LOBYTE(v461) = -3;
    sub_24B458F9C();
    sub_24B458EFC();
    (v443)(v355 + v354, v444, v334);
    v357 = v434;
    sub_24B44E158(v453, v434, type metadata accessor for AwardToastPresentationFeature);
    v358 = (v451[80] + 16) & ~v451[80];
    v359 = swift_allocObject();
    sub_24B44E1C0(v357, v359 + v358, type metadata accessor for AwardToastPresentationFeature);
    *v356 = &unk_24B464CC0;
    v356[1] = v359;
    (v449)(v355 + v439, v450, v338);
    (v445)(v355, v446, v351);
    v361 = *(v342 + 2);
    v360 = *(v342 + 3);
    if (v361 >= v360 >> 1)
    {
      v342 = sub_24B3F1508(v360 > 1, v361 + 1, 1, v342);
    }

    v362 = v456;
    v363 = v457;
    v364 = v441;
    sub_24B44E040(v458, type metadata accessor for AwardToastLoadState);
    *(v342 + 2) = v361 + 1;
    result = v363(&v342[v364 + v361 * v440], v435, v351);
    *v362 = v342;
  }

  else
  {
    if (v81 == 128 && v458 == 3 && !v236)
    {
      v400 = *(type metadata accessor for AwardToastPresentationState() + 24);
      sub_24B44E158(v19 + v400, v65, type metadata accessor for AwardToastLoadState);
      if (swift_getEnumCaseMultiPayload())
      {
        v401 = v65;
        return sub_24B44E040(v401, type metadata accessor for AwardToastLoadState);
      }

      v411 = v449;
      v412 = v449[4];
      v413 = v433;
      v414 = v433;
      v415 = v65;
    }

    else
    {
      if (v81 != 128 || v458 != 4 || v236)
      {
        if (v81 != 128 || v458 != 5 || v236)
        {
          goto LABEL_172;
        }

        v410 = type metadata accessor for AwardToastPresentationState();
        sub_24B44E040(v19 + *(v410 + 24), type metadata accessor for AwardToastLoadState);

        return swift_storeEnumTagMultiPayload();
      }

      v400 = *(type metadata accessor for AwardToastPresentationState() + 24);
      sub_24B44E158(v19 + v400, v62, type metadata accessor for AwardToastLoadState);
      if (swift_getEnumCaseMultiPayload())
      {
        v401 = v62;
        return sub_24B44E040(v401, type metadata accessor for AwardToastLoadState);
      }

      v411 = v449;
      v412 = v449[4];
      v413 = v432;
      v414 = v432;
      v415 = v62;
    }

    v418 = v450;
    v412(v414, v415, v450);
    v419 = *(v446 + 20);
    v420 = sub_24B45834C();
    result = (*(v411 + 8))(v413, v418);
    if (v420)
    {
      v417 = v19 + v400;
LABEL_177:
      sub_24B44E040(v417, type metadata accessor for AwardToastLoadState);
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_24B4471E8(uint64_t a1)
{
  v1[9] = a1;
  sub_24B458EEC();
  v1[10] = sub_24B458EDC();
  v3 = sub_24B458EBC();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_24B447280, v3, v2);
}

uint64_t sub_24B447280()
{
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = sub_24B45847C();
  __swift_project_value_buffer(v1, qword_2810E3618);
  v2 = sub_24B45845C();
  v3 = sub_24B458F4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardToastPresentationFeature] Fetching award toast kind", v4, 2u);
    MEMORY[0x24C2408A0](v4, -1, -1);
  }

  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0x80;
  v5 = *(MEMORY[0x277D043C8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9478, &qword_24B464E70);
  *v6 = v0;
  v6[1] = sub_24B447408;
  v8 = *(v0 + 72);

  return MEMORY[0x282159B08](v0 + 16, v7);
}

uint64_t sub_24B447408()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_24B44E228, v4, v3);
}

uint64_t sub_24B447528(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v2[21] = sub_24B458EEC();
  v2[22] = sub_24B458EDC();
  v4 = sub_24B458EBC();
  v2[23] = v4;
  v2[24] = v3;

  return MEMORY[0x2822009F8](sub_24B4475C4, v4, v3);
}

uint64_t sub_24B4475C4()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 104);
  v6 = (*(v1 + 96) + **(v1 + 96));
  v3 = *(*(v1 + 96) + 4);
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *v4 = v0;
  v4[1] = sub_24B4476B8;

  return v6(v0 + 112);
}

uint64_t sub_24B4476B8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_24B447EB8;
  }

  else
  {
    v7 = sub_24B4477F4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24B4477F4()
{
  v1 = v0[17];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 14, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[12] = swift_getAssociatedTypeWitness();
  v0[13] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 9);
  sub_24B458F1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v6 = v0[21];
  v7 = sub_24B458EDC();
  v0[27] = v7;
  v8 = v0[13];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 9), v0[12]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = sub_24B4479CC;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 65, v7, v11);
}

uint64_t sub_24B4479CC()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[27];

    v6 = v2[23];
    v7 = v2[24];

    return MEMORY[0x2822009F8](sub_24B447AE0, v6, v7);
  }

  return result;
}

uint64_t sub_24B447AE0()
{
  if (*(v0 + 65) == 1)
  {
    v1 = *(v0 + 176);

    __swift_destroy_boxed_opaque_existential_1((v0 + 72));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v4 = sub_24B45847C();
    __swift_project_value_buffer(v4, qword_2810E3618);
    v5 = sub_24B45845C();
    v6 = sub_24B458F4C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24B3CE000, v5, v6, "[AwardToastPresentationFeature] App did become active, fetching award toast kind", v7, 2u);
      MEMORY[0x24C2408A0](v7, -1, -1);
    }

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0x80;
    v8 = *(MEMORY[0x277D043C8] + 4);
    v9 = swift_task_alloc();
    *(v0 + 232) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9478, &qword_24B464E70);
    *v9 = v0;
    v9[1] = sub_24B447CBC;
    v11 = *(v0 + 152);

    return MEMORY[0x282159B08](v0 + 16, v10);
  }
}

uint64_t sub_24B447CBC()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v6 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_24B447DDC, v4, v3);
}

uint64_t sub_24B447DDC()
{
  v1 = v0[21];
  v2 = sub_24B458EDC();
  v0[27] = v2;
  v3 = v0[13];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 9), v0[12]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_24B4479CC;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 65, v2, v6);
}

uint64_t sub_24B447EB8()
{
  v1 = v0[22];

  v2 = v0[1];
  v3 = v0[26];

  return v2();
}

uint64_t sub_24B447F1C()
{
  *(v0 + 72) = sub_24B458EEC();
  *(v0 + 80) = sub_24B458EDC();
  *(v0 + 16) = 1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0x80;
  v1 = *(MEMORY[0x277D043C8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9478, &qword_24B464E70);
  *v2 = v0;
  v2[1] = sub_24B448018;

  return MEMORY[0x282159B08](v0 + 16, v3);
}

uint64_t sub_24B448018()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v5 = sub_24B458EBC();

  return MEMORY[0x2822009F8](sub_24B3F0F48, v5, v4);
}

uint64_t sub_24B448154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_24B458EEC();
  v3[3] = sub_24B458EDC();
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_24B448218;

  return sub_24B4483B8(a1, a3);
}

uint64_t sub_24B448218()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_24B458EBC();

  return MEMORY[0x2822009F8](sub_24B448354, v5, v4);
}

uint64_t sub_24B448354()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}