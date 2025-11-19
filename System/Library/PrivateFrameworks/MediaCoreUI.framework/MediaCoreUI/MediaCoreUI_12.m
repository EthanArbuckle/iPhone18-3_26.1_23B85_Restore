uint64_t sub_1C5A6AA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C59498C4(*(a1 + 32));
  v5 = *(a3 + 248);
  swift_unknownObjectRetain();
  v5(0, a2, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5A6AA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C59498C4(*(a1 + 32));
  v7 = *(a3 + 248);
  swift_unknownObjectRetain();
  v7(a4, a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5A6AB24(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  v25 = a7;
  v26 = a8;
  v27 = a5;
  v24 = sub_1C5BC8F34();
  v13 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = *(a1 + 24);
  v32 = *(a1 + 16);
  v16 = v33;

  if ((v16 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v18 = sub_1C5BC9844();
    v23 = a4;
    v19 = v18;
    sub_1C5BC7C54();

    LOBYTE(a4) = v23;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v32, &qword_1EC195628);
    v17 = (*(v13 + 8))(v15, v24);
  }

  v30 = v25;
  v31 = v26(v17);
  v28[0] = a2;
  v28[1] = a3;
  v29 = a4 & 1;
  sub_1C5951550();

  sub_1C5BC7F34();

  v20 = __swift_destroy_boxed_opaque_existential_0(v28);
  MEMORY[0x1EEE9AC00](v20);
  *&v22[-32] = v27;
  *&v22[-24] = a6;
  *&v22[-16] = a1;
  sub_1C5BCAB14();
  sub_1C5BC87F4();
}

uint64_t sub_1C5A6AD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C59498C4(*(a1 + 32));
  v5 = *(a3 + 256);
  swift_unknownObjectRetain();
  v5(0, a2, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5A6AE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C59498C4(*(a1 + 32));
  v7 = *(a3 + 256);
  swift_unknownObjectRetain();
  v7(a4, a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5A6AEA0()
{
  sub_1C5954684();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5A6AEE0(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  sub_1C59498C4(*(a1 + 16));
  swift_unknownObjectRetain();
  sub_1C5B3E468(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5A6AF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = sub_1C5BC92E4();
  v6 = *(v5 - 8);
  v44 = v5;
  v45 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NowPlayingTransportButtonStyle(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195680);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195688);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v16 = &v39 - v15;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195690);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v39 - v17;
  v18 = *v3;
  v52 = v3[1];
  v53 = v18;
  v51 = v3[2];
  v19 = swift_allocObject();
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  v22 = v3[1];
  *(v19 + 32) = *v3;
  *(v19 + 48) = v22;
  *(v19 + 64) = v3[2];
  v47 = v20;
  v48 = v21;
  v49 = v3;
  v23 = sub_1C5BC8C94();
  (*(*(v23 - 8) + 16))(v50, &v53, v23);
  sub_1C59400B0(&v52, v50, &qword_1EC1955F0);
  sub_1C59400B0(&v51, v50, &qword_1EC192880);
  sub_1C5A6D0A0();
  sub_1C5BCA6E4();
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40);
  swift_storeEnumTagMultiPayload();
  v24 = v10 + v8[5];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v10 + v8[6];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  *(v10 + v8[7]) = 0x3FED70A3D70A3D71;
  v26 = sub_1C5924F54(&unk_1EDA45FD0, &qword_1EC195680);
  v27 = sub_1C5950DFC(qword_1EDA47650, 255, type metadata accessor for NowPlayingTransportButtonStyle);
  sub_1C5BC9DB4();
  sub_1C595391C(v10, type metadata accessor for NowPlayingTransportButtonStyle);
  (*(v12 + 8))(v14, v11);

  v28 = sub_1C595397C();
  v30 = v29;
  LOBYTE(v12) = v31;

  v50[0] = v11;
  v50[1] = v8;
  v50[2] = v26;
  v50[3] = v27;
  swift_getOpaqueTypeConformance2();
  v32 = v39;
  v33 = v41;
  sub_1C5BCA024();
  sub_1C5953BD8(v28, v30, v12 & 1);

  (*(v42 + 8))(v16, v33);
  v34 = &v32[*(v40 + 36)];
  v35 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195620);
  sub_1C5BC8BF4();
  *v34 = 0xC024000000000000;
  v34[8] = 0;
  v36 = v43;
  sub_1C5BC8C54();
  sub_1C5A6D0F4();
  sub_1C5950DFC(&qword_1EDA462E0, 255, MEMORY[0x1E697C658]);
  v37 = v44;
  sub_1C5BC9E04();
  (*(v45 + 8))(v36, v37);
  return sub_1C5924EF4(v35, &qword_1EC195690);
}

uint64_t sub_1C5A6B5C0(uint64_t *a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  _s21CenterTransportButtonVMa();
  sub_1C59498C4(*a1);
  swift_unknownObjectRetain();
  sub_1C5B3E468(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5A6B638@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s21CenterTransportButtonVMa();
  v4 = a1[3];
  swift_beginAccess();
  v5 = *(v4 + 33);
  v6 = *&aPlay_3[8 * v5];
  v7 = qword_1C5BE0B68[v5];
  v9 = a1[4];
  v8 = a1[5];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  *a2 = 0xD000000000000018;
  *(a2 + 8) = 0x80000001C5BF9350;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = sub_1C5A6D8C8;
  *(a2 + 40) = v10;
  *(a2 + 48) = 0;
}

uint64_t sub_1C5A6B748()
{
  result = sub_1C5BC9974();
  qword_1EC195560 = v1;
  return result;
}

uint64_t sub_1C5A6B768()
{
  v0 = sub_1C5BCA5D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for MiniPlayerTransportSpecs(0);
  __swift_allocate_value_buffer(v7, qword_1EDA482A8);
  v8 = __swift_project_value_buffer(v7, qword_1EDA482A8);
  sub_1C5BC9964();
  v9 = sub_1C5BC9954();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 1, 1, v9);
  v14 = sub_1C5BC99A4();
  sub_1C5924EF4(v6, &qword_1EC190F90);
  (*(v1 + 104))(v3, *MEMORY[0x1E69816C0], v0);
  sub_1C5BC9964();
  v10(v6, 1, 1, v9);
  v11 = sub_1C5BC99A4();
  sub_1C5924EF4(v6, &qword_1EC190F90);
  *v8 = v14;
  result = (*(v1 + 32))(&v8[*(v7 + 20)], v3, v0);
  *&v8[*(v7 + 24)] = v11;
  return result;
}

uint64_t sub_1C5A6B9CC@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v1 + 32);
  *(a1 + 16) = v5;
  return sub_1C59525FC(v3, v4, v5);
}

uint64_t sub_1C5A6BA64@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = a3;
  if (*a2 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
    v4 = a3;
  }

  v6 = __swift_project_value_buffer(a1, v4);

  return sub_1C59534C8(v6, a4);
}

uint64_t sub_1C5A6BAD4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v1 + 56);
  *(a1 + 16) = v5;
  return sub_1C59525FC(v3, v4, v5);
}

uint64_t sub_1C5A6BB8C()
{
  sub_1C596EAC0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1C596EAC0(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t NowPlayingViewModel.TransportButtonAction.hashValue.getter(unsigned __int8 a1)
{
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](a1);
  return sub_1C5BCBF94();
}

unint64_t sub_1C5A6BC58()
{
  result = qword_1EC195568;
  if (!qword_1EC195568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195568);
  }

  return result;
}

void (*sub_1C5A6BCAC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

uint64_t sub_1C5A6BD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  result = sub_1C5BCA694();
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = sub_1C5AFB544;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_1C5A6BDC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1956F8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-v3];
  v5 = v0[3];
  v19 = v0[2];
  v20 = v5;
  v21 = v0[4];
  v6 = v0[1];
  v17 = *v0;
  v18 = v6;
  v7 = swift_allocObject();
  v8 = v0[3];
  v7[3] = v0[2];
  v7[4] = v8;
  v7[5] = v0[4];
  v9 = v0[1];
  v7[1] = *v0;
  v7[2] = v9;
  v15 = &v17;
  sub_1C5A6D778(&v17, v16);
  sub_1C5A6D7B0();
  sub_1C5BCA6E4();
  v10 = swift_allocObject();
  v11 = v20;
  v10[3] = v19;
  v10[4] = v11;
  v10[5] = v21;
  v12 = v18;
  v10[1] = v17;
  v10[2] = v12;
  sub_1C5A6D778(&v17, v16);
  sub_1C5924F54(&qword_1EC195708, &qword_1EC1956F8);
  sub_1C5BCA074();

  return (*(v2 + 8))(v4, v1);
}

double sub_1C5A6C004()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for NowPlayingTransportButtonStyle(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1C5BCB4E4();
    v7 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  result = 32.0;
  if (v6)
  {
    return 44.0;
  }

  return result;
}

uint64_t sub_1C5A6C170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5A6CF18();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5A6C1D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1C5A6C23C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 122))
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

uint64_t sub_1C5A6C284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 122) = 1;
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

    *(result + 122) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5A6C2FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1C5A6C344(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C5A6C3E0()
{
  result = qword_1EDA46588;
  if (!qword_1EDA46588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195578);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195570);
    type metadata accessor for NowPlayingTransportButtonStyle(255);
    sub_1C5951914();
    sub_1C5950DFC(qword_1EDA47650, 255, type metadata accessor for NowPlayingTransportButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1C5924F54(&qword_1EDA461F0, &qword_1EC1955B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46588);
  }

  return result;
}

double sub_1C5A6C528(uint64_t a1)
{
  if (*(a1 + 18))
  {
    return 68.0;
  }

  v2 = sub_1C5A0B298();
  result = 48.0;
  if (v2)
  {
    return 30.0;
  }

  return result;
}

unint64_t sub_1C5A6C5DC()
{
  result = qword_1EDA46580;
  if (!qword_1EDA46580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195578);
    sub_1C5A6C3E0();
    swift_getOpaqueTypeConformance2();
    sub_1C5950DFC(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46580);
  }

  return result;
}

unint64_t sub_1C5A6C700()
{
  result = qword_1EC1955F8;
  if (!qword_1EC1955F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955C0);
    sub_1C5A6C784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1955F8);
  }

  return result;
}

unint64_t sub_1C5A6C784()
{
  result = qword_1EC195600;
  if (!qword_1EC195600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955D8);
    sub_1C5BC92E4();
    sub_1C5A6C8D4();
    sub_1C5950DFC(&qword_1EDA462E0, 255, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    sub_1C5950DFC(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195600);
  }

  return result;
}

unint64_t sub_1C5A6C8D4()
{
  result = qword_1EC195608;
  if (!qword_1EC195608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195610);
    sub_1C5951214();
    swift_getOpaqueTypeConformance2();
    sub_1C5924F54(&qword_1EDA461C0, &qword_1EC195620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195608);
  }

  return result;
}

unint64_t sub_1C5A6C9C8()
{
  result = qword_1EDA46680;
  if (!qword_1EDA46680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195618);
    sub_1C59512CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46680);
  }

  return result;
}

unint64_t sub_1C5A6CAD0()
{
  result = qword_1EDA4A228;
  if (!qword_1EDA4A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4A228);
  }

  return result;
}

uint64_t objectdestroy_55Tm()
{

  swift_unknownObjectRelease();
  sub_1C596AC80(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 153));
  sub_1C5950CE4();

  return swift_deallocObject();
}

uint64_t objectdestroy_58Tm()
{

  swift_unknownObjectRelease();
  sub_1C596AC80(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 153));

  return swift_deallocObject();
}

uint64_t sub_1C5A6CD84()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5A6CDC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C5A6CE08(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1C5A6CE54()
{
  result = qword_1EDA46488;
  if (!qword_1EDA46488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195638);
    sub_1C5A6C5DC();
    sub_1C5950DFC(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46488);
  }

  return result;
}

unint64_t sub_1C5A6CF18()
{
  result = qword_1EC195640;
  if (!qword_1EC195640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195640);
  }

  return result;
}

uint64_t objectdestroy_114Tm()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  sub_1C5942458(*(v0 + 96), *(v0 + 104));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1C5A6D0A0()
{
  result = qword_1EDA4DAC0;
  if (!qword_1EDA4DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4DAC0);
  }

  return result;
}

unint64_t sub_1C5A6D0F4()
{
  result = qword_1EC195698;
  if (!qword_1EC195698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195690);
    sub_1C5A6D1AC();
    sub_1C5924F54(&qword_1EDA461C0, &qword_1EC195620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195698);
  }

  return result;
}

unint64_t sub_1C5A6D1AC()
{
  result = qword_1EC1956A0;
  if (!qword_1EC1956A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1956A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195680);
    type metadata accessor for NowPlayingTransportButtonStyle(255);
    sub_1C5924F54(&unk_1EDA45FD0, &qword_1EC195680);
    sub_1C5950DFC(qword_1EDA47650, 255, type metadata accessor for NowPlayingTransportButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1C5950DFC(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1956A0);
  }

  return result;
}

unint64_t sub_1C5A6D330()
{
  result = qword_1EDA46670;
  if (!qword_1EDA46670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1956B8);
    sub_1C59514F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46670);
  }

  return result;
}

uint64_t sub_1C5A6D3BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1C5A6D404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C5A6D458()
{
  result = qword_1EDA46578;
  if (!qword_1EDA46578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1956C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195610);
    type metadata accessor for NowPlayingTransportButtonStyle(255);
    sub_1C5951214();
    sub_1C5950DFC(qword_1EDA47650, 255, type metadata accessor for NowPlayingTransportButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C5924F54(&qword_1EDA461F0, &qword_1EC1955B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46578);
  }

  return result;
}

unint64_t sub_1C5A6D5E4()
{
  result = qword_1EDA46460;
  if (!qword_1EDA46460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195660);
    sub_1C5953D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46460);
  }

  return result;
}

unint64_t sub_1C5A6D670()
{
  result = qword_1EDA46018;
  if (!qword_1EDA46018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1956D8);
    sub_1C5951418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46018);
  }

  return result;
}

uint64_t sub_1C5A6D710()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1C5A6D740()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1C5A6D7B0()
{
  result = qword_1EC195700;
  if (!qword_1EC195700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195700);
  }

  return result;
}

uint64_t objectdestroy_161Tm()
{

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  if (v0[10])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C5A6D8D0@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v166 = a4;
  v168 = a2;
  v160 = a5;
  v161 = a1;
  v164 = sub_1C5BC8354();
  v167 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v7 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3;
  type metadata accessor for PPTRunnerModifier();
  swift_getWitnessTable();
  v9 = sub_1C5BC9394();
  WitnessTable = swift_getWitnessTable();
  v169 = v9;
  v170 = WitnessTable;
  v11 = MEMORY[0x1E697D560];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v138 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v14 = &v122 - v13;
  v169 = v9;
  v170 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v169 = OpaqueTypeMetadata2;
  v170 = OpaqueTypeConformance2;
  v16 = OpaqueTypeMetadata2;
  v123 = OpaqueTypeMetadata2;
  v17 = OpaqueTypeConformance2;
  v124 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v142 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v122 = &v122 - v19;
  v169 = v16;
  v170 = v17;
  v20 = swift_getOpaqueTypeConformance2();
  v169 = v18;
  v170 = v20;
  v126 = v18;
  v21 = v20;
  v127 = v20;
  v22 = v11;
  v23 = swift_getOpaqueTypeMetadata2();
  v147 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v125 = &v122 - v24;
  v169 = v18;
  v170 = v21;
  v25 = swift_getOpaqueTypeConformance2();
  v169 = v23;
  v170 = v25;
  v26 = v23;
  v128 = v23;
  v27 = v25;
  v129 = v25;
  v28 = swift_getOpaqueTypeMetadata2();
  v149 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v162 = &v122 - v29;
  v169 = v26;
  v170 = v27;
  v30 = v22;
  v31 = swift_getOpaqueTypeConformance2();
  v169 = v28;
  v170 = v31;
  v32 = v28;
  v131 = v28;
  v33 = v31;
  v132 = v31;
  v34 = swift_getOpaqueTypeMetadata2();
  v150 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v130 = &v122 - v35;
  v169 = v32;
  v170 = v33;
  v36 = v30;
  v37 = swift_getOpaqueTypeConformance2();
  v169 = v34;
  v170 = v37;
  v38 = v34;
  v135 = v34;
  v39 = v37;
  v136 = v37;
  v40 = swift_getOpaqueTypeMetadata2();
  v152 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v134 = &v122 - v41;
  v169 = v38;
  v170 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v169 = v40;
  v170 = v42;
  v43 = v40;
  v139 = v40;
  v44 = v42;
  v140 = v42;
  v45 = swift_getOpaqueTypeMetadata2();
  v155 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v137 = &v122 - v46;
  v169 = v43;
  v170 = v44;
  v47 = v36;
  v48 = swift_getOpaqueTypeConformance2();
  v169 = v45;
  v170 = v48;
  v49 = v45;
  v143 = v45;
  v50 = v48;
  v144 = v48;
  v51 = swift_getOpaqueTypeMetadata2();
  v158 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v141 = &v122 - v52;
  v169 = v49;
  v170 = v50;
  v53 = swift_getOpaqueTypeConformance2();
  v169 = v51;
  v170 = v53;
  v54 = v51;
  v145 = v51;
  v55 = v53;
  v146 = v53;
  v56 = swift_getOpaqueTypeMetadata2();
  v154 = v56;
  v159 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v163 = &v122 - v57;
  v169 = v54;
  v170 = v55;
  v133 = v47;
  v153 = swift_getOpaqueTypeConformance2();
  v169 = v56;
  v170 = v153;
  v58 = swift_getOpaqueTypeMetadata2();
  v59 = *(v58 - 8);
  v156 = v58;
  v157 = v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v148 = &v122 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v151 = &v122 - v62;
  sub_1C5BC8364();
  v63 = swift_allocObject();
  v64 = v8;
  v165 = v8;
  v63[2] = v8;
  v65 = v166;
  v63[3] = v166;
  v66 = v168;
  v63[4] = v168;
  v67 = v66;
  swift_unknownObjectRetain();
  swift_checkMetadataState();
  sub_1C5BCA274();

  v68 = v167 + 8;
  v69 = *(v167 + 8);
  v70 = v164;
  v69(v7, v164);
  v161 = v69;
  sub_1C5BC8364();
  v71 = swift_allocObject();
  v71[2] = v64;
  v71[3] = v65;
  v71[4] = v67;
  swift_unknownObjectRetain();
  v72 = v122;
  v73 = v123;
  sub_1C5BCA274();

  v74 = v70;
  v167 = v68;
  v69(v7, v70);
  (*(v138 + 8))(v14, v73);
  sub_1C5BC8364();
  v75 = swift_allocObject();
  v76 = v165;
  v75[2] = v165;
  v75[3] = v65;
  v77 = v168;
  v75[4] = v168;
  v78 = v77;
  swift_unknownObjectRetain();
  v79 = v125;
  v80 = v126;
  v81 = v72;
  sub_1C5BCA274();

  v82 = v7;
  v83 = v7;
  v84 = v74;
  v85 = v161;
  v161(v83, v74);
  (*(v142 + 8))(v81, v80);
  sub_1C5BC8364();
  v86 = swift_allocObject();
  v87 = v166;
  v86[2] = v76;
  v86[3] = v87;
  v86[4] = v78;
  swift_unknownObjectRetain();
  v88 = v128;
  sub_1C5BCA274();

  v85(v82, v84);
  (*(v147 + 8))(v79, v88);
  sub_1C5BC8364();
  v89 = swift_allocObject();
  v89[2] = v76;
  v89[3] = v87;
  v89[4] = v168;
  swift_unknownObjectRetain();
  v90 = v130;
  v91 = v131;
  v92 = v162;
  sub_1C5BCA274();

  v93 = v84;
  v94 = v161;
  v161(v82, v84);
  (*(v149 + 8))(v92, v91);
  sub_1C5BC8364();
  v95 = swift_allocObject();
  v96 = v165;
  v95[2] = v165;
  v95[3] = v87;
  v95[4] = v168;
  swift_unknownObjectRetain();
  v97 = v134;
  v98 = v135;
  sub_1C5BCA274();

  v94(v82, v93);
  (*(v150 + 8))(v90, v98);
  sub_1C5BC8364();
  v99 = swift_allocObject();
  v99[2] = v96;
  v100 = v166;
  v99[3] = v166;
  v99[4] = v168;
  swift_unknownObjectRetain();
  v101 = v137;
  v102 = v139;
  sub_1C5BCA274();

  v103 = v164;
  v94(v82, v164);
  (*(v152 + 8))(v97, v102);
  sub_1C5BC8364();
  v104 = swift_allocObject();
  v104[2] = v165;
  v104[3] = v100;
  v104[4] = v168;
  swift_unknownObjectRetain();
  v105 = v141;
  v106 = v143;
  sub_1C5BCA274();

  v94(v82, v103);
  (*(v155 + 8))(v101, v106);
  sub_1C5BC8364();
  v107 = swift_allocObject();
  v108 = v165;
  v107[2] = v165;
  v107[3] = v100;
  v109 = v168;
  v107[4] = v168;
  swift_unknownObjectRetain();
  v110 = v145;
  sub_1C5BCA274();

  v94(v82, v103);
  (*(v158 + 8))(v105, v110);
  sub_1C5BC8364();
  v111 = swift_allocObject();
  v112 = v166;
  v111[2] = v108;
  v111[3] = v112;
  v111[4] = v109;
  swift_unknownObjectRetain();
  v113 = v148;
  v115 = v153;
  v114 = v154;
  v116 = v163;
  sub_1C5BCA274();

  v94(v82, v164);
  (*(v159 + 8))(v116, v114);
  v169 = v114;
  v170 = v115;
  v117 = swift_getOpaqueTypeConformance2();
  v118 = v151;
  v119 = v156;
  sub_1C593EDC0(v113, v156, v117);
  v120 = *(v157 + 8);
  v120(v113, v119);
  sub_1C593EDC0(v118, v119, v117);
  return (v120)(v118, v119);
}

uint64_t sub_1C5A6EA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 224))(a3, a4);
  if (*(result + 112))
  {
    v9[0] = 0;
    v9[1] = 0;

    sub_1C5A37C44(v9, 0);

    return sub_1C5A6EAC0(a1, a2, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A6EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5BC8384();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  sub_1C5BC8374();
  v15 = sub_1C5BCB214();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a2, v8);
  sub_1C5BCB1E4();
  swift_unknownObjectRetain();
  v16 = sub_1C5BCB1D4();
  v17 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  *(v18 + 6) = a1;
  (*(v9 + 32))(&v18[v17], v11, v8);
  sub_1C59D2F9C(0, 0, v14, &unk_1C5BE0D48, v18);
}

uint64_t sub_1C5A6ECD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v39 = a7;
  v34 = a5;
  v35 = a3;
  v36 = a2;
  v37 = a4;
  v31 = a1;
  v41 = sub_1C5BCAC14();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCAC44();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C5BC8384();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = sub_1C5BCAC64();
  v33 = v14;
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  sub_1C5929CA0();
  v30 = sub_1C5BCB5A4();
  sub_1C5BCAC54();
  sub_1C5BCAC84();
  v32 = *(v15 + 8);
  v32(v18, v14);
  (*(v12 + 16))(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v11);
  v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v23 = v36;
  v24 = v37;
  *(v22 + 2) = v35;
  *(v22 + 3) = v24;
  *(v22 + 4) = v23;
  (*(v12 + 32))(&v22[v21], &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = v38;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = v39;
  v25 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1C5BCAC34();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C5A755E4(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
  sub_1C5A3437C();
  v26 = v40;
  v27 = v41;
  sub_1C5BCB8F4();
  v28 = v30;
  MEMORY[0x1C694F7C0](v20, v10, v26, v25);
  _Block_release(v25);

  (*(v44 + 8))(v26, v27);
  (*(v42 + 8))(v10, v43);
  return (v32)(v20, v33);
}

uint64_t sub_1C5A6F144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 224))(a3, a4);
  if (*(result + 112))
  {
    v9 = xmmword_1C5BE0B80;

    sub_1C5A37C44(&v9, 0);

    return sub_1C5A6EAC0(a1, a2, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A6F208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_1C5BCB1E4();
  v7[7] = sub_1C5BCB1D4();
  v9 = sub_1C5BCB194();
  v7[8] = v9;
  v7[9] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C5A6F2A8, v9, v8);
}

uint64_t sub_1C5A6F2A8()
{
  v1 = *(v0 + 16);
  v8 = *(v0 + 32);
  v2 = sub_1C5BCB1D4();
  *(v0 + 80) = v2;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1C5A6F3C8;
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v4, v2, v5, 0x6E6F632879646F62, 0xEE00293A746E6574, sub_1C5A75D04, v3, v6);
}

uint64_t sub_1C5A6F3C8()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1C5A6F528, v3, v2);
}

uint64_t sub_1C5A6F528()
{

  sub_1C5BC8344();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A6F590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195730);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_1C5BCB214();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a3;
  *(v17 + 5) = a4;
  *(v17 + 6) = a2;
  (*(v9 + 32))(&v17[v16], v11, v8);
  swift_unknownObjectRetain();
  sub_1C5B77CE4(0, 0, v14, &unk_1C5BE0D38, v17);

  return sub_1C5929C38(v14);
}

uint64_t sub_1C5A6F798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v8 = sub_1C5BCBB74();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v9 = sub_1C5BCBB84();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5A6F8E8, 0, 0);
}

uint64_t sub_1C5A6F8E8()
{
  sub_1C5BCBEB4();
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_1C5A6F9B4;

  return sub_1C59D9270(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1C5A6F9B4()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v2[29] = v0;

  v6 = *(v4 + 8);
  v2[30] = v6;
  v2[31] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_1C5A6FBE4;
  }

  else
  {
    v7 = sub_1C5A6FB38;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C5A6FB38()
{
  v1 = v0[17];
  v0[32] = *(v1 + 224);
  v0[33] = 0;
  v0[34] = (v1 + 224) & 0xFFFFFFFFFFFFLL | 0x3906000000000000;
  v0[35] = sub_1C5BCB1E4();
  v0[36] = sub_1C5BCB1D4();
  v3 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A6FC8C, v3, v2);
}

uint64_t sub_1C5A6FBE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A6FC8C()
{
  v1 = v0[32];
  v3 = v0[16];
  v2 = v0[17];

  v0[37] = v1(v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1C5A6FD24, 0, 0);
}

uint64_t sub_1C5A6FD24()
{
  *(v0 + 304) = sub_1C5BCB1D4();
  v2 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A6FDB0, v2, v1);
}

uint64_t sub_1C5A6FDB0()
{
  v1 = *(v0 + 296);

  if (*(v1 + 112))
  {
    *(v0 + 64) = xmmword_1C5BE0B80;

    sub_1C5A37C44((v0 + 64), 1);

    v2 = sub_1C5A6FE64;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5A6FE64()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  sub_1C5BCBEB4();
  *(v0 + 80) = xmmword_1C5BE0B90;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v4 = sub_1C5A755E4(&qword_1EDA45D18, MEMORY[0x1E69E8820]);
  *(v0 + 312) = v4;
  sub_1C5BCBE94();
  *(v0 + 320) = sub_1C5A755E4(&qword_1EDA45D20, MEMORY[0x1E69E87E8]);
  sub_1C5BCBB94();
  v5 = *(v3 + 8);
  *(v0 + 328) = v5;
  *(v0 + 336) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = swift_task_alloc();
  *(v0 + 344) = v6;
  *v6 = v0;
  v6[1] = sub_1C5A70024;
  v8 = *(v0 + 176);
  v7 = *(v0 + 184);

  return MEMORY[0x1EEE6DE58](v8, v0 + 16, v7, v4);
}

uint64_t sub_1C5A70024()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    (*(v2 + 328))(*(v2 + 176), *(v2 + 144));
    v3 = sub_1C5A70678;
  }

  else
  {
    v4 = *(v2 + 240);
    v5 = *(v2 + 208);
    v6 = *(v2 + 184);
    (*(v2 + 328))(*(v2 + 176), *(v2 + 144));
    v4(v5, v6);
    v3 = sub_1C5A7017C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C5A7017C()
{
  *(v0 + 360) = sub_1C5BCB1D4();
  v2 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A70208, v2, v1);
}

uint64_t sub_1C5A70208()
{
  v1 = v0[32];
  v3 = v0[16];
  v2 = v0[17];

  v0[46] = v1(v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1C5A702A0, 0, 0);
}

uint64_t sub_1C5A702A0()
{
  *(v0 + 376) = sub_1C5BCB1D4();
  v2 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A7032C, v2, v1);
}

uint64_t sub_1C5A7032C()
{
  v7 = v0;
  v1 = *(v0 + 368);

  if (*(v1 + 112))
  {
    v6[0] = 0;
    v6[1] = 0;

    sub_1C5A37C44(v6, 1);

    v2 = sub_1C5A703D4;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5A703D4()
{
  v8 = *(v0 + 328);
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  sub_1C5BCBEB4();
  *(v0 + 96) = xmmword_1C5BE0B90;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  sub_1C5BCBE94();
  sub_1C5BCBB94();
  v8(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  *v3 = v0;
  v3[1] = sub_1C5A7051C;
  v4 = *(v0 + 312);
  v5 = *(v0 + 184);
  v6 = *(v0 + 160);

  return MEMORY[0x1EEE6DE58](v6, v0 + 40, v5, v4);
}

uint64_t sub_1C5A7051C()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    (*(v2 + 328))(*(v2 + 160), *(v2 + 144));
    v3 = sub_1C5A708A0;
  }

  else
  {
    v4 = *(v2 + 240);
    v5 = *(v2 + 200);
    v6 = *(v2 + 184);
    (*(v2 + 328))(*(v2 + 160), *(v2 + 144));
    v4(v5, v6);
    v3 = sub_1C5A70730;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C5A70678()
{
  (*(v0 + 240))(*(v0 + 208), *(v0 + 184));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A70730()
{
  if (v0[33] == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195730);
    sub_1C5BCB1B4();

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = (v0[17] + 224) & 0xFFFFFFFFFFFFLL | 0x3906000000000000;
    ++v0[33];
    v0[34] = v3;
    v0[35] = sub_1C5BCB1E4();
    v0[36] = sub_1C5BCB1D4();
    v5 = sub_1C5BCB194();

    return MEMORY[0x1EEE6DFA0](sub_1C5A6FC8C, v5, v4);
  }
}

uint64_t sub_1C5A708A0()
{
  (*(v0 + 240))(*(v0 + 200), *(v0 + 184));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A70958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_1C5BCBB74();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v9 = sub_1C5BCBB84();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  sub_1C5BCB1E4();
  v7[18] = sub_1C5BCB1D4();
  v11 = sub_1C5BCB194();
  v7[19] = v11;
  v7[20] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C5A70AB8, v11, v10);
}

uint64_t sub_1C5A70AB8()
{
  *(v0 + 168) = 0;
  sub_1C5BCBEB4();
  *(v0 + 40) = xmmword_1C5BE0BA0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A70B3C, 0, 0);
}

uint64_t sub_1C5A70B3C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = sub_1C5A755E4(&qword_1EDA45D18, MEMORY[0x1E69E8820]);
  sub_1C5BCBE94();
  sub_1C5A755E4(&qword_1EDA45D20, MEMORY[0x1E69E87E8]);
  sub_1C5BCBB94();
  v5 = *(v2 + 8);
  v0[22] = v5;
  v0[23] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1C5A70CC0;
  v8 = v0[14];
  v7 = v0[15];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v7, v4);
}

uint64_t sub_1C5A70CC0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    v3 = sub_1C5A70F90;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);
    v8 = *(v2 + 120);
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v3 = sub_1C5A70E20;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5A70E20()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 72);
  *(v3 + 32) = v2;
  sub_1C5BCAB14();
  sub_1C5BC87F4();

  if (v1 == 9)
  {

    sub_1C5BC8344();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    ++*(v0 + 168);
    sub_1C5BCBEB4();
    *(v0 + 40) = xmmword_1C5BE0BA0;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1C5A70B3C, 0, 0);
  }
}

uint64_t sub_1C5A70F90()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[19];
  v2 = v0[20];

  return MEMORY[0x1EEE6DFA0](sub_1C5A71004, v1, v2);
}

uint64_t sub_1C5A71004()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A7108C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_1C5BCBB74();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v9 = sub_1C5BCBB84();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  sub_1C5BCB1E4();
  v7[18] = sub_1C5BCB1D4();
  v11 = sub_1C5BCB194();
  v7[19] = v11;
  v7[20] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C5A711EC, v11, v10);
}

uint64_t sub_1C5A711EC()
{
  *(v0 + 168) = 0;
  sub_1C5BCBEB4();
  *(v0 + 40) = xmmword_1C5BE0BB0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A71270, 0, 0);
}

uint64_t sub_1C5A71270()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = sub_1C5A755E4(&qword_1EDA45D18, MEMORY[0x1E69E8820]);
  sub_1C5BCBE94();
  sub_1C5A755E4(&qword_1EDA45D20, MEMORY[0x1E69E87E8]);
  sub_1C5BCBB94();
  v5 = *(v2 + 8);
  v0[22] = v5;
  v0[23] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1C5A713F4;
  v8 = v0[14];
  v7 = v0[15];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v7, v4);
}

uint64_t sub_1C5A713F4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    v3 = sub_1C5A716C4;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);
    v8 = *(v2 + 120);
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v3 = sub_1C5A71554;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5A71554()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 72);
  *(v3 + 32) = v2;
  sub_1C5BCAB14();
  sub_1C5BC87F4();

  if (v1 == 9)
  {

    sub_1C5BC8344();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    ++*(v0 + 168);
    sub_1C5BCBEB4();
    *(v0 + 40) = xmmword_1C5BE0BB0;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1C5A71270, 0, 0);
  }
}

uint64_t sub_1C5A716C4()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[19];
  v2 = v0[20];

  return MEMORY[0x1EEE6DFA0](sub_1C5A761AC, v1, v2);
}

uint64_t sub_1C5A71738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, char *, uint64_t, char *))
{
  v27 = a6;
  v28 = a7;
  v26[1] = a5;
  v26[0] = sub_1C5BC8384();
  v11 = *(v26[0] - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v26[0]);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v26 - v15;
  v17 = a3;
  result = (*(a4 + 224))(a3, a4);
  if (*(result + 112))
  {
    v29[0] = 0;
    v29[1] = 0;

    sub_1C5A37C44(v29, 0);

    LOBYTE(v29[0]) = 1;
    NowPlayingController.transition(to:animated:)(v29, 0, a3, a4);
    sub_1C5BC8374();
    v19 = sub_1C5BCB214();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    v20 = a2;
    v21 = v26[0];
    (*(v11 + 16))(v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v26[0]);
    sub_1C5BCB1E4();
    swift_unknownObjectRetain();
    v22 = sub_1C5BCB1D4();
    v23 = (*(v11 + 80) + 56) & ~*(v11 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    *(v24 + 2) = v22;
    *(v24 + 3) = v25;
    *(v24 + 4) = v17;
    *(v24 + 5) = a4;
    *(v24 + 6) = a1;
    (*(v11 + 32))(&v24[v23], v13, v21);
    v28(0, 0, v16, v27, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A719D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = sub_1C5BCBB84();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  sub_1C5BCB1E4();
  v7[13] = sub_1C5BCB1D4();
  v10 = sub_1C5BCB194();
  v7[14] = v10;
  v7[15] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C5A71AE0, v10, v9);
}

uint64_t sub_1C5A71AE0()
{
  *(v0 + 128) = 0;
  sub_1C5BCBEB4();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1C5A71BB0;

  return sub_1C59D9270(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1C5A71BB0()
{
  v2 = *v1;
  v2[18] = v0;

  v3 = v2[12];
  v4 = v2[9];
  v5 = v2[8];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = v2[14];
    v10 = v2[15];
    v11 = sub_1C5A72008;
  }

  else
  {
    v2[19] = v7;
    v2[20] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = v2[14];
    v10 = v2[15];
    v11 = sub_1C5A71D30;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1C5A71D30()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v2 + 224);
  v0[21] = v3;
  v0[22] = (v2 + 224) & 0xFFFFFFFFFFFFLL | 0x3906000000000000;
  result = v3(v1);
  if (*(result + 112))
  {
    *(v0 + 1) = xmmword_1C5BE0B80;

    sub_1C5A37C44(v0 + 2, 1);

    sub_1C5BCBEB4();
    v5 = swift_task_alloc();
    v0[23] = v5;
    *v5 = v0;
    v5[1] = sub_1C5A71E78;

    return sub_1C59D9270(300000000000000000, 0, 0, 0, 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A71E78()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  (*(v2 + 152))(*(v2 + 88), *(v2 + 64));
  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1C5A72360;
  }

  else
  {
    v5 = sub_1C5A72090;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C5A72008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A72090()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v1;
  sub_1C5BCAB14();
  sub_1C5BC87F4();

  sub_1C5BCBEB4();
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_1C5A721D0;

  return sub_1C59D9270(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1C5A721D0()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  (*(v2 + 152))(*(v2 + 80), *(v2 + 64));
  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1C5A7258C;
  }

  else
  {
    v5 = sub_1C5A723E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C5A72360()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A723E8()
{
  v6 = v0;
  result = (*(v0 + 168))(*(v0 + 48), *(v0 + 56));
  if (*(result + 112))
  {
    v2 = *(v0 + 128);
    v5[0] = 0;
    v5[1] = 0;

    sub_1C5A37C44(v5, 1);

    if (v2 == 2)
    {

      sub_1C5BC8344();

      v3 = *(v0 + 8);

      return v3();
    }

    else
    {
      ++*(v0 + 128);
      sub_1C5BCBEB4();
      v4 = swift_task_alloc();
      *(v0 + 136) = v4;
      *v4 = v0;
      v4[1] = sub_1C5A71BB0;

      return sub_1C59D9270(2000000000000000000, 0, 0, 0, 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A7258C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A72614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_1C5BCBB74();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v9 = sub_1C5BCBB84();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  sub_1C5BCB1E4();
  v7[18] = sub_1C5BCB1D4();
  v11 = sub_1C5BCB194();
  v7[19] = v11;
  v7[20] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C5A72774, v11, v10);
}

uint64_t sub_1C5A72774()
{
  *(v0 + 168) = 0;
  sub_1C5BCBEB4();
  *(v0 + 40) = xmmword_1C5BE0BA0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A727F8, 0, 0);
}

uint64_t sub_1C5A727F8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = sub_1C5A755E4(&qword_1EDA45D18, MEMORY[0x1E69E8820]);
  sub_1C5BCBE94();
  sub_1C5A755E4(&qword_1EDA45D20, MEMORY[0x1E69E87E8]);
  sub_1C5BCBB94();
  v5 = *(v2 + 8);
  v0[22] = v5;
  v0[23] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1C5A7297C;
  v8 = v0[14];
  v7 = v0[15];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v7, v4);
}

uint64_t sub_1C5A7297C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    v3 = sub_1C5A716C4;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);
    v8 = *(v2 + 120);
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v3 = sub_1C5A72ADC;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5A72ADC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 72);
  *(v3 + 32) = v2;
  sub_1C5BCAB14();
  sub_1C5BC87F4();

  if (v1 == 9)
  {

    sub_1C5BC8344();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    ++*(v0 + 168);
    sub_1C5BCBEB4();
    *(v0 + 40) = xmmword_1C5BE0BA0;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1C5A727F8, 0, 0);
  }
}

uint64_t sub_1C5A72C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[2] = a5;
  v25 = a6;
  v10 = sub_1C5BC8384();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v24[1] = v12;
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v24 - v15;
  v17 = a3;
  result = (*(a4 + 224))(a3, a4);
  if (*(result + 112))
  {
    v26 = xmmword_1C5BE0B80;

    sub_1C5A37C44(&v26, 0);

    LOBYTE(v26) = 1;
    NowPlayingController.transition(to:animated:)(&v26, 0, a3, a4);
    sub_1C5BC8374();
    v19 = sub_1C5BCB214();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    (*(v11 + 16))(v13, a2, v10);
    sub_1C5BCB1E4();
    swift_unknownObjectRetain();
    v20 = sub_1C5BCB1D4();
    v21 = (*(v11 + 80) + 56) & ~*(v11 + 80);
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    *(v22 + 2) = v20;
    *(v22 + 3) = v23;
    *(v22 + 4) = v17;
    *(v22 + 5) = a4;
    *(v22 + 6) = a1;
    (*(v11 + 32))(&v22[v21], v13, v10);
    sub_1C59D2F9C(0, 0, v16, v25, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A72EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_1C5BCBB74();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v9 = sub_1C5BCBB84();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  sub_1C5BCB1E4();
  v7[18] = sub_1C5BCB1D4();
  v11 = sub_1C5BCB194();
  v7[19] = v11;
  v7[20] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C5A73044, v11, v10);
}

uint64_t sub_1C5A73044()
{
  *(v0 + 168) = 0;
  sub_1C5BCBEB4();
  *(v0 + 40) = xmmword_1C5BE0BB0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A730C8, 0, 0);
}

uint64_t sub_1C5A730C8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = sub_1C5A755E4(&qword_1EDA45D18, MEMORY[0x1E69E8820]);
  sub_1C5BCBE94();
  sub_1C5A755E4(&qword_1EDA45D20, MEMORY[0x1E69E87E8]);
  sub_1C5BCBB94();
  v5 = *(v2 + 8);
  v0[22] = v5;
  v0[23] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1C5A7324C;
  v8 = v0[14];
  v7 = v0[15];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v7, v4);
}

uint64_t sub_1C5A7324C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    v3 = sub_1C5A716C4;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);
    v8 = *(v2 + 120);
    (*(v2 + 176))(*(v2 + 112), *(v2 + 88));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v3 = sub_1C5A733AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5A733AC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 72);
  *(v3 + 32) = v2;
  sub_1C5BCAB14();
  sub_1C5BC87F4();

  if (v1 == 9)
  {

    sub_1C5BC8344();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    ++*(v0 + 168);
    sub_1C5BCBEB4();
    *(v0 + 40) = xmmword_1C5BE0BB0;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1C5A730C8, 0, 0);
  }
}

uint64_t sub_1C5A7351C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_1C5BCB1E4();
  v7[7] = sub_1C5BCB1D4();
  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = sub_1C5A7360C;
  v12.n128_u64[0] = 0;

  return (sub_1C59D04F0)(a4, a6, a6, a7, a7, v12);
}

uint64_t sub_1C5A7360C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v2;
  v3[1] = sub_1C5A7379C;
  v4 = v1[5];
  v5 = v1[4];
  v6 = v1[2];

  return sub_1C59D04F0(v6, v5, v5, v4, v4, 0.2);
}

uint64_t sub_1C5A7379C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v2;
  v3[1] = sub_1C5A7392C;
  v4 = v1[5];
  v5 = v1[4];
  v6 = v1[2];

  return sub_1C59D04F0(v6, v5, v5, v4, v4, 0.4);
}

uint64_t sub_1C5A7392C()
{

  v1 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A761B0, v1, v0);
}

uint64_t sub_1C5A73A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, char *, uint64_t, char *))
{
  v28 = a6;
  v29 = a7;
  v27 = a5;
  v25 = a2;
  v26 = sub_1C5BC8384();
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v30[0] = 1;
  v24 = a3;
  NowPlayingController.transition(to:animated:)(v30, 0, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195728);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BD21E0;
  *(inited + 32) = 0xD000000000000020;
  *(inited + 40) = 0x80000001C5BF9570;
  *(inited + 48) = xmmword_1C5BE0BC0;
  *(inited + 64) = 0x2072657470616843;
  *(inited + 72) = 0xE900000000000032;
  *(inited + 80) = xmmword_1C5BE0BD0;
  *(inited + 96) = 0x2072657470616843;
  *(inited + 104) = 0xE900000000000033;
  *(inited + 112) = xmmword_1C5BE0BE0;
  (*(a4 + 224))(a3, a4);
  sub_1C596EBE0(inited, 0, 0, 0, 0);
  swift_setDeallocating();
  swift_arrayDestroy();

  v16 = v25;
  sub_1C5BC8374();
  v17 = sub_1C5BCB214();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = v26;
  (*(v10 + 16))(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v26);
  sub_1C5BCB1E4();
  swift_unknownObjectRetain();
  v19 = sub_1C5BCB1D4();
  v20 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 2) = v19;
  *(v21 + 3) = v22;
  *(v21 + 4) = v24;
  *(v21 + 5) = a4;
  *(v21 + 6) = a1;
  (*(v10 + 32))(&v21[v20], &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v29(0, 0, v14, v28, v21);
}

uint64_t sub_1C5A73DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1C5BCBB84();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  sub_1C5BCB1E4();
  v7[9] = sub_1C5BCB1D4();
  v10 = sub_1C5BCB194();
  v7[10] = v10;
  v7[11] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C5A73EA8, v10, v9);
}

uint64_t sub_1C5A73EA8()
{
  (*(v0[5] + 232))(v0[4]);
  sub_1C5BCBEB4();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1C5A73F98;

  return sub_1C59D9270(0xA055690D9DB80000, 1, 0, 0, 1);
}

uint64_t sub_1C5A73F98()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_1C5A741A4;
  }

  else
  {
    v8 = sub_1C5A74130;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C5A74130()
{

  sub_1C5BC8344();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A741A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A74238()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5A745A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = sub_1C5BCBB74();
  v7[16] = v8;
  v7[17] = *(v8 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v9 = sub_1C5BCBB84();
  v7[21] = v9;
  v7[22] = *(v9 - 8);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  sub_1C5BCB1E4();
  v7[25] = sub_1C5BCB1D4();
  v11 = sub_1C5BCB194();
  v7[26] = v11;
  v7[27] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C5A74720, v11, v10);
}

uint64_t sub_1C5A74720()
{
  *(v0 + 224) = 0;
  sub_1C5BCBEB4();
  *(v0 + 64) = xmmword_1C5BE0B90;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A747A4, 0, 0);
}

uint64_t sub_1C5A747A4()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = sub_1C5A755E4(&qword_1EDA45D18, MEMORY[0x1E69E8820]);
  v0[29] = v4;
  sub_1C5BCBE94();
  v0[30] = sub_1C5A755E4(&qword_1EDA45D20, MEMORY[0x1E69E87E8]);
  sub_1C5BCBB94();
  v5 = *(v3 + 8);
  v0[31] = v5;
  v0[32] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_1C5A74930;
  v8 = v0[20];
  v7 = v0[21];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v7, v4);
}

uint64_t sub_1C5A74930()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    (*(v2 + 248))(*(v2 + 160), *(v2 + 128));
    v3 = sub_1C5A74DAC;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 192);
    v7 = *(v2 + 168);
    v8 = *(v2 + 176);
    (*(v2 + 248))(*(v2 + 160), *(v2 + 128));
    v9 = *(v8 + 8);
    *(v2 + 280) = v9;
    *(v2 + 288) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    v4 = *(v2 + 208);
    v5 = *(v2 + 216);
    v3 = sub_1C5A74AA0;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5A74AA0()
{
  v5 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = 1;
  NowPlayingController.transition(to:animated:)(&v4, 1, v1, v2);
  sub_1C5BCBEB4();
  *(v0 + 80) = xmmword_1C5BE0B90;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1C5A74B44, 0, 0);
}

uint64_t sub_1C5A74B44()
{
  v1 = v0[31];
  v2 = v0[19];
  v3 = v0[16];
  sub_1C5BCBE94();
  sub_1C5BCBB94();
  v1(v2, v3);
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_1C5A74C48;
  v5 = v0[29];
  v6 = v0[21];
  v7 = v0[18];

  return MEMORY[0x1EEE6DE58](v7, v0 + 5, v6, v5);
}

uint64_t sub_1C5A74C48()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    (*(v2 + 248))(*(v2 + 144), *(v2 + 128));
    v3 = sub_1C5A75014;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 280);
    v7 = *(v2 + 184);
    v8 = *(v2 + 168);
    (*(v2 + 248))(*(v2 + 144), *(v2 + 128));
    v6(v7, v8);
    v4 = *(v2 + 208);
    v5 = *(v2 + 216);
    v3 = sub_1C5A74EC8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5A74DAC()
{
  (*(v0[22] + 8))(v0[24], v0[21]);
  v1 = v0[26];
  v2 = v0[27];

  return MEMORY[0x1EEE6DFA0](sub_1C5A74E20, v1, v2);
}

uint64_t sub_1C5A74E20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A74EC8()
{
  v7 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v6 = 0;
  NowPlayingController.transition(to:animated:)(&v6, 1, v2, v3);
  if (v1 == 2)
  {

    sub_1C5BC8344();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    ++*(v0 + 224);
    sub_1C5BCBEB4();
    *(v0 + 64) = xmmword_1C5BE0B90;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1C5A747A4, 0, 0);
  }
}

uint64_t sub_1C5A75014()
{
  (*(v0 + 280))(*(v0 + 184), *(v0 + 168));
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1C5A75080, v1, v2);
}

uint64_t sub_1C5A75080()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A75128(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A73DB0(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A7527C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 2);
  v10 = *(v4 + 3);
  v11 = *(sub_1C5BC8384() - 8);
  return a4(*(v4 + 4), &v4[(*(v11 + 80) + 40) & ~*(v11 + 80)], v9, v10, a1, a2, a3);
}

uint64_t sub_1C5A75320(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A7351C(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A7544C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(sub_1C5BC8384() - 8);
  return sub_1C5A72C4C(v2[4], v2 + ((*(v7 + 80) + 40) & ~*(v7 + 80)), v5, v6, a1, a2);
}

uint64_t sub_1C5A754D8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A72EE4(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A755E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5A7564C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A72614(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A757A0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A719D0(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A758F4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A7108C(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A75A48(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A70958(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A75BF8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592ABD4;

  return sub_1C5A6F208(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A75D10(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195730) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592ABD4;

  return sub_1C5A6F798(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_1C5A75E40(uint64_t (*a1)(uint64_t, char *, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = *(sub_1C5BC8384() - 8);
  v5 = v1[4];
  v6 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a1(v5, v6, v2, v3);
}

uint64_t objectdestroy_33Tm()
{
  v1 = sub_1C5BC8384();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1C5A75FA0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_1C5BC8384() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592A748;

  return sub_1C5A745A8(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t objectdestroy_30Tm()
{
  v1 = sub_1C5BC8384();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1C5A761F0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for MaterialMotionContentObserver(0);

  return sub_1C5BC8194();
}

uint64_t sub_1C5A76274()
{
  type metadata accessor for MaterialMotionContentObserver(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_1C5BC7BA4();
  if (*(v0 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A7BB28(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
    sub_1C5BC7B64();
  }

  if (*(v0 + 24))
  {
    v2 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v2);
    sub_1C5A7BB28(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
    sub_1C5BC7B64();
  }

  return v0;
}

double sub_1C5A76454(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 52));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_1C5BCB4E4();
  v10 = sub_1C5BC9844();
  sub_1C5BC7C54();

  sub_1C5BC8F24();
  swift_getAtKeyPath();
  sub_1C5950E44(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

uint64_t sub_1C5A765AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195790);
  sub_1C5BCA684();
  return v1;
}

uint64_t sub_1C5A76604()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880);
  sub_1C5BCA694();
  return v1;
}

uint64_t NowPlayingArtworkBackground.init(videoURL:namespace:treatment:staticArt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v11 = *a4;
  v12 = type metadata accessor for NowPlayingArtworkBackground();
  sub_1C5A761F0(sub_1C5A76274, 0);
  v13 = a6 + v12[13];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a6 + v12[14];
  *v14 = sub_1C5A765AC();
  *(v14 + 8) = v15 & 1;
  *(v14 + 16) = v16;
  v17 = a6 + v12[16];
  *v17 = sub_1C5A76860();
  *(v17 + 8) = v18;
  *(v17 + 16) = v19 & 1;
  *(v17 + 24) = v20;
  v21 = sub_1C5A7A970(a1, a6);
  v22 = a6 + v12[9];
  *v22 = a2;
  *(v22 + 8) = a3 & 1;
  a5(v21);
  result = sub_1C5924EF4(a1, &qword_1EC195738);
  *(a6 + v12[11]) = v11;
  *(a6 + v12[15]) = 0;
  v24 = a6 + v12[17];
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 1;
  return result;
}

uint64_t sub_1C5A76860()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957A0);
  sub_1C5BCA684();
  return v1;
}

uint64_t NowPlayingArtworkBackground.init(videoURL:namespace:treatment:showsPlainMotion:maximumMotionSize:staticArt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, void (*a10)(uint64_t))
{
  v16 = *a4;
  v17 = type metadata accessor for NowPlayingArtworkBackground();
  sub_1C5A761F0(sub_1C5A76274, 0);
  v18 = a9 + v17[13];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a9 + v17[14];
  *v19 = sub_1C5A765AC();
  *(v19 + 8) = v20 & 1;
  *(v19 + 16) = v21;
  v22 = a9 + v17[16];
  *v22 = sub_1C5A76860();
  *(v22 + 8) = v23;
  *(v22 + 16) = v24 & 1;
  *(v22 + 24) = v25;
  v26 = sub_1C5A7A970(a1, a9);
  v27 = a9 + v17[9];
  *v27 = a2;
  *(v27 + 8) = a3 & 1;
  *(a9 + v17[11]) = v16;
  *(a9 + v17[15]) = a5;
  v28 = a9 + v17[17];
  *v28 = a6;
  *(v28 + 8) = a7;
  *(v28 + 16) = a8 & 1;
  a10(v26);
  return sub_1C5924EF4(a1, &qword_1EC195738);
}

uint64_t sub_1C5A76A3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957D0);
  sub_1C5BCA694();
  return v1;
}

__n128 sub_1C5A76AA8@<Q0>(__n128 *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957D0);
  sub_1C5BCA6B4();
  result = v5;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1] = v5;
  a1[2].n128_u8[0] = v6;
  return result;
}

uint64_t sub_1C5A76B28()
{
  v0 = COERCE_DOUBLE(sub_1C5A76A3C());
  if ((v2 & 1) != 0 || ((v3 = v0, v1 >= v0) ? (v4 = v0) : (v4 = v1), v4 <= 0.0))
  {
    *&result = 0.0;
  }

  else
  {
    if (v0 <= v1)
    {
      v3 = v1;
    }

    *&result = v3 / v4;
  }

  return result;
}

uint64_t NowPlayingArtworkBackground.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v6 + *(v5 + 36);
  v31 = *v7;
  v30 = *(v7 + 8);
  (*(v3 + 16))(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v29 = v9;
  v10 = *(a1 + 24);
  *(v9 + 16) = *(a1 + 16);
  *(v9 + 24) = v10;
  (*(v3 + 32))(v9 + v8, &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199F60);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  v55 = v10;
  v56 = MEMORY[0x1E697E070];
  WitnessTable = swift_getWitnessTable();
  v54 = MEMORY[0x1E697E270];
  v52 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195750);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195758);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910);
  sub_1C5BC8AB4();
  v11 = sub_1C5BC8AB4();
  v12 = sub_1C5924F54(&qword_1EC195760, &unk_1EC199F60);
  v13 = swift_getWitnessTable();
  v14 = sub_1C5924F54(&qword_1EC195768, &qword_1EC195750);
  v50 = v13;
  v51 = v14;
  v15 = swift_getWitnessTable();
  v16 = sub_1C5924F54(&qword_1EC195770, &qword_1EC195758);
  v48 = v15;
  v49 = v16;
  v46 = swift_getWitnessTable();
  v47 = MEMORY[0x1E697E040];
  v17 = swift_getWitnessTable();
  v18 = sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910);
  v44 = v17;
  v45 = v18;
  v42 = swift_getWitnessTable();
  v43 = MEMORY[0x1E69802C0];
  v19 = swift_getWitnessTable();
  *&v61 = v28;
  *(&v61 + 1) = v11;
  *&v62 = v12;
  *(&v62 + 1) = v19;
  sub_1C5BC8BB4();
  swift_getWitnessTable();
  sub_1C5BC8874();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195778);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v20 = swift_getWitnessTable();
  v21 = sub_1C5924F54(&qword_1EC195780, &qword_1EC195778);
  v40 = v20;
  v41 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_1C5943498();
  v38 = v22;
  v39 = v23;
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x1E6980A30];
  swift_getWitnessTable();
  sub_1C5AFA434(v31, v30, sub_1C5A7A9E0, v29, &v61);
  v33 = v61;
  v34 = v62;
  v35 = v63;
  v24 = type metadata accessor for WithNamespace();
  v25 = swift_getWitnessTable();
  sub_1C593EDC0(&v33, v24, v25);
  (*(*(v24 - 8) + 8))(&v61, v24);
  v33 = v57;
  LOBYTE(v34) = v58;
  *(&v34 + 1) = v59;
  v35 = v60;
  sub_1C593EDC0(&v33, v24, v25);
}

uint64_t sub_1C5A77248@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v39 = a1;
  v40 = a4;
  v7 = type metadata accessor for NowPlayingArtworkBackground();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  v11 = *(v8 + 16);
  v38 = v7;
  v11(&v35 - v9, a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v37 = v13;
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v10, v7);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199F60);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  v65 = a3;
  v66 = MEMORY[0x1E697E070];
  WitnessTable = swift_getWitnessTable();
  v64 = MEMORY[0x1E697E270];
  v62 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195750);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195758);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910);
  sub_1C5BC8AB4();
  v14 = sub_1C5BC8AB4();
  v15 = sub_1C5924F54(&qword_1EC195760, &unk_1EC199F60);
  v16 = swift_getWitnessTable();
  v17 = sub_1C5924F54(&qword_1EC195768, &qword_1EC195750);
  v60 = v16;
  v61 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_1C5924F54(&qword_1EC195770, &qword_1EC195758);
  v58 = v18;
  v59 = v19;
  v56 = swift_getWitnessTable();
  v57 = MEMORY[0x1E697E040];
  v20 = swift_getWitnessTable();
  v21 = sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910);
  v54 = v20;
  v55 = v21;
  v52 = swift_getWitnessTable();
  v53 = MEMORY[0x1E69802C0];
  v22 = swift_getWitnessTable();
  v82.n128_u64[0] = v36;
  v82.n128_u64[1] = v14;
  v83.n128_u64[0] = v15;
  v83.n128_u64[1] = v22;
  sub_1C5BC8BB4();
  swift_getWitnessTable();
  v67.n128_u64[0] = sub_1C5BC8864();
  v67.n128_u64[1] = v23;
  sub_1C5A76AA8(v71);
  v73 = v71[0].n128_u64[0];
  v78 = v71[0];
  v79 = v71[1];
  LOBYTE(v80) = v72;
  sub_1C5BCAA54();
  sub_1C5BC8874();
  v24 = swift_getWitnessTable();
  sub_1C5A7B578();
  sub_1C5BC9D04();
  sub_1C5A7B6C4(&v73);

  v69 = v84;
  v70[0] = v85;
  *&v70[1] = *&v86[0];
  v67 = v82;
  v68 = v83;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195778);
  v25 = sub_1C5BC8AB4();
  v26 = sub_1C5924F54(&qword_1EC195780, &qword_1EC195778);
  v50 = v24;
  v51 = v26;
  v27 = swift_getWitnessTable();
  sub_1C5BCA1D4();
  v74[2] = v69;
  v74[3] = v70[0];
  v75 = *&v70[1];
  v74[0] = v67;
  v74[1] = v68;
  (*(*(v25 - 8) + 8))(v74, v25);
  v69 = v80;
  v70[0] = v81[0];
  *(v70 + 9) = *(v81 + 9);
  v67 = v78;
  v68 = v79;
  sub_1C5BC8AC4();
  sub_1C5BC9894();
  v28 = sub_1C5BC8AB4();
  v29 = sub_1C5943498();
  v48 = v27;
  v49 = v29;
  v30 = swift_getWitnessTable();
  sub_1C5BC9F84();
  v76[2] = v69;
  v77[0] = v70[0];
  *(v77 + 9) = *(v70 + 9);
  v76[0] = v67;
  v76[1] = v68;
  (*(*(v28 - 8) + 8))(v76, v28);
  v45 = v84;
  v46 = v85;
  v47[0] = v86[0];
  *(v47 + 9) = *(v86 + 9);
  v43 = v82;
  v44 = v83;
  v31 = sub_1C5BC8AB4();
  v41 = v30;
  v42 = MEMORY[0x1E6980A30];
  v32 = swift_getWitnessTable();
  sub_1C593EDC0(&v43, v31, v32);
  v80 = v45;
  v81[0] = v46;
  v81[1] = v47[0];
  *(&v81[1] + 9) = *(v47 + 9);
  v78 = v43;
  v79 = v44;
  v33 = *(*(v31 - 8) + 8);
  v33(&v78, v31);
  v45 = v69;
  v46 = v70[0];
  v47[0] = v70[1];
  *(v47 + 9) = *(&v70[1] + 9);
  v43 = v67;
  v44 = v68;
  sub_1C593EDC0(&v43, v31, v32);
  v84 = v45;
  v85 = v46;
  v86[0] = v47[0];
  *(v86 + 9) = *(v47 + 9);
  v82 = v43;
  v83 = v44;
  return (v33)(&v82, v31);
}

uint64_t sub_1C5A77ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v99 = a2;
  v100 = a1;
  v95 = a5;
  v85 = a3;
  v98 = a4;
  v91 = type metadata accessor for NowPlayingArtworkBackground();
  v93 = *(v91 - 8);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v92 = v62 - v6;
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  v128 = a4;
  v129 = MEMORY[0x1E697E070];
  WitnessTable = swift_getWitnessTable();
  v127 = MEMORY[0x1E697E270];
  v125 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v79 = sub_1C5BCAB74();
  v78 = swift_getWitnessTable();
  v97 = sub_1C5BCA7D4();
  v84 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v76 = v62 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195750);
  v96 = sub_1C5BC8AB4();
  v87 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v77 = v62 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195758);
  v9 = sub_1C5BC8AB4();
  v89 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v81 = v62 - v10;
  v66 = v9;
  v11 = sub_1C5BC8AB4();
  v88 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v83 = v62 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910);
  v67 = v11;
  v13 = sub_1C5BC8AB4();
  v86 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v82 = v62 - v14;
  v64 = v13;
  v15 = sub_1C5BC8AB4();
  v90 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v80 = v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199F60);
  v73 = v17;
  v18 = sub_1C5924F54(&qword_1EC195760, &unk_1EC199F60);
  v72 = v18;
  v19 = swift_getWitnessTable();
  v62[1] = v19;
  v20 = sub_1C5924F54(&qword_1EC195768, &qword_1EC195750);
  v123 = v19;
  v124 = v20;
  v21 = swift_getWitnessTable();
  v62[2] = v21;
  v22 = sub_1C5924F54(&qword_1EC195770, &qword_1EC195758);
  v121 = v21;
  v122 = v22;
  v65 = swift_getWitnessTable();
  v119 = v65;
  v120 = MEMORY[0x1E697E040];
  v23 = swift_getWitnessTable();
  v62[3] = v23;
  v24 = sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910);
  v117 = v23;
  v118 = v24;
  v63 = swift_getWitnessTable();
  v115 = v63;
  v116 = MEMORY[0x1E69802C0];
  v70 = v15;
  v71 = swift_getWitnessTable();
  v111 = v17;
  v112 = v15;
  v113 = v18;
  v114 = v71;
  v25 = sub_1C5BC8BB4();
  v26 = *(v25 - 8);
  v74 = v25;
  v75 = v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v68 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v69 = v62 - v29;
  v30 = v85;
  v32 = v98;
  v31 = v99;
  v108 = v85;
  v109 = v98;
  v110 = v99;
  sub_1C5BC9134();
  v33 = v76;
  sub_1C5BCA7C4();
  sub_1C5BCAA34();
  v104 = v30;
  v105 = v32;
  v106 = v31;
  v107 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957D8);
  sub_1C5A7BB7C(&qword_1EC1957E0, &qword_1EC1957D8, &unk_1C5BE0FF8, sub_1C5A7B730);
  v34 = v77;
  v35 = v97;
  sub_1C5BCA2C4();
  (*(v84 + 8))(v33, v35);
  v101 = v30;
  v102 = v32;
  v36 = v30;
  v37 = v99;
  v103 = v99;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195868);
  sub_1C5A7BB7C(&qword_1EC195870, &qword_1EC195868, &unk_1C5BE1048, sub_1C5A7BBF8);
  v38 = v81;
  v39 = v96;
  sub_1C5BCA2C4();
  (*(v87 + 8))(v34, v39);
  sub_1C5BC86C4();
  sub_1C5BC86C4();
  v40 = v91;
  v41 = v37;
  sub_1C5A76B28();
  sub_1C5BCAA34();
  v42 = v83;
  v43 = v66;
  sub_1C5BCA234();
  (*(v89 + 8))(v38, v43);
  v44 = v82;
  v45 = v67;
  sub_1C5BCA2A4();
  (*(v88 + 8))(v42, v45);
  v46 = v80;
  v47 = v64;
  sub_1C5BC9FC4();
  (*(v86 + 8))(v44, v47);
  v48 = v41;
  v111 = sub_1C5A79C78();
  v50 = v92;
  v49 = v93;
  (*(v93 + 16))(v92, v48, v40);
  v51 = v49;
  v52 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v53 = swift_allocObject();
  v54 = v98;
  *(v53 + 16) = v36;
  *(v53 + 24) = v54;
  (*(v51 + 32))(v53 + v52, v50, v40);
  v55 = v68;
  v56 = v70;
  sub_1C5BCA3D4();

  (*(v90 + 8))(v46, v56);
  v57 = v74;
  v58 = swift_getWitnessTable();
  v59 = v69;
  sub_1C593EDC0(v55, v57, v58);
  v60 = *(v75 + 8);
  v60(v55, v57);
  sub_1C593EDC0(v59, v57, v58);
  return (v60)(v59, v57);
}

uint64_t sub_1C5A786CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = sub_1C5BC8AB4();
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v25 = v24 - v8;
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v9 = sub_1C5BCB804();
  v36[9] = a3;
  v36[10] = MEMORY[0x1E697E070];
  v24[2] = MEMORY[0x1E697E858];
  v36[7] = swift_getWitnessTable();
  v36[8] = MEMORY[0x1E697E270];
  v36[6] = swift_getWitnessTable();
  v24[1] = v9;
  v24[3] = swift_getWitnessTable();
  v24[4] = sub_1C5BC92A4();
  v10 = sub_1C5BC8AB4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - v15;
  type metadata accessor for NowPlayingArtworkBackground();
  v17 = a1;
  v18 = v25;
  sub_1C5BC9D94();
  v28 = a2;
  v29 = a3;
  v30 = v17;
  sub_1C5BCAA54();
  v36[4] = a3;
  v36[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1C5BC9CE4();
  (*(v26 + 8))(v18, v7);
  v20 = swift_getWitnessTable();
  v36[2] = WitnessTable;
  v36[3] = v20;
  v21 = swift_getWitnessTable();
  sub_1C593EDC0(v14, v10, v21);
  v22 = *(v11 + 8);
  v22(v14, v10);
  (*(v11 + 16))(v14, v16, v10);
  v34 = 0;
  v35 = 1;
  v36[0] = v14;
  v36[1] = &v34;
  v33[0] = v10;
  v33[1] = MEMORY[0x1E6981840];
  v31 = v21;
  v32 = MEMORY[0x1E6981838];
  sub_1C594226C(v36, 2uLL, v33);
  v22(v16, v10);
  return (v22)(v14, v10);
}

uint64_t sub_1C5A78B00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = sub_1C5BC8AB4();
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - v6;
  v47 = v7;
  v8 = sub_1C5BC8AB4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v38 - v13;
  v14 = sub_1C5BCB804();
  v44 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v38 - v18;
  v46 = a2;
  v19 = type metadata accessor for NowPlayingArtworkBackground();
  v20 = sub_1C5BC8294();
  v21 = MEMORY[0x1E697E070];
  if (v20)
  {
    v39 = v14;
    v22 = v41;
    sub_1C5BCABC4();
    v23 = v40;
    v24 = a1;
    v25 = v46;
    MEMORY[0x1C694E080](v24, v46, 1.0, -2.0, v26, v27);
    sub_1C5A76454(v19);
    v50 = v25;
    v51 = MEMORY[0x1E697E070];
    v28 = v47;
    WitnessTable = swift_getWitnessTable();
    sub_1C5BCA264();
    (*(v22 + 8))(v23, v28);
    v14 = v39;
    v48 = WitnessTable;
    v30 = MEMORY[0x1E697E270];
    v49 = MEMORY[0x1E697E270];
    v31 = swift_getWitnessTable();
    v32 = v42;
    sub_1C593EDC0(v12, v8, v31);
    v33 = *(v9 + 8);
    v33(v12, v8);
    sub_1C593EDC0(v32, v8, v31);
    v33(v32, v8);
    (*(v9 + 32))(v17, v12, v8);
    (*(v9 + 56))(v17, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v17, 1, 1, v8);
    v59 = v46;
    v60 = v21;
    v57 = swift_getWitnessTable();
    v30 = MEMORY[0x1E697E270];
    v58 = MEMORY[0x1E697E270];
    swift_getWitnessTable();
  }

  v34 = v43;
  sub_1C5941600(v17, v43);
  v35 = *(v44 + 8);
  v35(v17, v14);
  v55 = v46;
  v56 = MEMORY[0x1E697E070];
  v53 = swift_getWitnessTable();
  v54 = v30;
  v52 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  sub_1C593EDC0(v34, v14, v36);
  return (v35)(v34, v14);
}

uint64_t sub_1C5A7902C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a4;
  v72 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = &v57 - v9;
  v58 = type metadata accessor for MotionAsset();
  MEMORY[0x1EEE9AC00](v58);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195840);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v57 - v13);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195830);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v57 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195820);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v57 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195810);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v57 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957F8);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958B0);
  v70 = *(v19 - 8);
  v71 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v57 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957F0);
  v74 = *(v21 - 8);
  v75 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v57 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195738);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v57 - v24;
  v26 = sub_1C5BC7A24();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v73 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5A7A970(a1, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_1C5924EF4(v25, &qword_1EC195738);
    v29 = 1;
    v30 = v75;
  }

  else
  {
    v57 = a5;
    v31 = v73;
    (*(v27 + 32))(v73, v25, v26);
    (*(v27 + 16))(v11, v31, v26);
    swift_storeEnumTagMultiPayload();
    v32 = v12[17];
    if (qword_1EDA4B350 != -1)
    {
      swift_once();
    }

    *(v14 + v32) = off_1EDA4B358;
    sub_1C59C122C(v11, v14 + v12[14]);

    v33 = sub_1C5BCA484();
    sub_1C59C1338(v11);
    *v14 = v33;
    *(v14 + v12[15]) = 0;
    *(v14 + v12[16]) = 0;
    v58 = a3;
    v34 = type metadata accessor for NowPlayingArtworkBackground();
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    v35 = v60;
    sub_1C59E7D34(v14, v60, &qword_1EC195840);
    v36 = (v35 + *(v59 + 36));
    v37 = v78;
    *v36 = v77;
    v36[1] = v37;
    v36[2] = v79;
    v38 = v69;
    sub_1C59E7D34(v35, v69, &qword_1EC195830);
    KeyPath = swift_getKeyPath();
    v40 = v38;
    v41 = v62;
    sub_1C59E7D34(v40, v62, &qword_1EC195830);
    v42 = v64;
    v43 = v41 + *(v63 + 36);
    *v43 = KeyPath;
    *(v43 + 8) = 1;
    LOBYTE(v33) = *(a1 + *(v34 + 44));
    sub_1C59E7D34(v41, v42, &qword_1EC195820);
    v44 = v42 + *(v61 + 36);
    *v44 = 0;
    *(v44 + 8) = 1;
    *(v44 + 9) = v33;
    v45 = sub_1C5BCAA34();
    v47 = v46;
    v48 = v68;
    v49 = &v68[*(v67 + 36)];
    sub_1C5A798F8(v49);
    v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195850) + 36));
    *v50 = v45;
    v50[1] = v47;
    sub_1C59E7D34(v42, v48, &qword_1EC195810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0);
    sub_1C5BC81A4();
    type metadata accessor for MaterialMotionContentObserver(0);
    sub_1C5A7B874();
    sub_1C5A7BB28(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
    v51 = v66;
    sub_1C5BC9DE4();

    sub_1C5924EF4(v48, &qword_1EC1957F8);
    (*(v27 + 8))(v73, v26);
    v52 = swift_getKeyPath();
    v53 = v65;
    (*(v70 + 32))(v65, v51, v71);
    v30 = v75;
    v54 = &v53[*(v75 + 36)];
    *v54 = v52;
    v54[8] = 1;
    v55 = v53;
    a5 = v57;
    sub_1C59857BC(v55, v57);
    v29 = 0;
  }

  return (*(v74 + 56))(a5, v29, 1, v30);
}

uint64_t sub_1C5A798F8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  type metadata accessor for NowPlayingArtworkBackground();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0);
  sub_1C5BC81A4();
  v6 = *&v15[0];
  swift_getKeyPath();
  *&v15[0] = v6;
  sub_1C5A7BB28(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  sub_1C5BC7B74();

  v7 = *(v6 + 16);
  v8 = v7;

  if (v7)
  {
    if (sub_1C5BC8294())
    {
      sub_1C5A76604();
      if ((v9 & 1) == 0)
      {
        type metadata accessor for NowPlayingArtworkMotionReplicatorLayer();
        *(swift_allocObject() + 16) = v8;
        v12 = v8;
        sub_1C5BC85C4();
        sub_1C5BC86C4();
        sub_1C5BC86C4();
        sub_1C5BCAA54();
        sub_1C5BC85D4();

        v13 = &v5[*(v2 + 36)];
        v14 = v15[1];
        *v13 = v15[0];
        *(v13 + 1) = v14;
        *(v13 + 2) = v15[2];
        sub_1C59E7D34(v5, a1, &qword_1EC1958B8);
        v10 = 0;
        return (*(v3 + 56))(a1, v10, 1, v2);
      }
    }
  }

  v10 = 1;
  return (*(v3 + 56))(a1, v10, 1, v2);
}

uint64_t sub_1C5A79C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for NowPlayingArtworkBackground() + 60)))
  {
    KeyPath = 0;
    result = 0;
    v5 = 255;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    result = swift_getKeyPath();
    v5 = 0;
  }

  *a2 = KeyPath;
  *(a2 + 8) = v5;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1C5A79C78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195888);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0);
  sub_1C5BC81A4();
  v8 = v14;
  swift_getKeyPath();
  v14 = v8;
  sub_1C5A7BB28(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  sub_1C5BC7B74();

  v9 = *(v8 + 16);
  v10 = v9;

  if (v9)
  {
    swift_getKeyPath();
    sub_1C5BC7924();

    sub_1C5924F54(&qword_1EC195890, &unk_1EC199F50);
    v11 = sub_1C5BC8064();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957A0);
    sub_1C5BC7FD4();
    sub_1C5924F54(&qword_1EC195898, &qword_1EC195888);
    v11 = sub_1C5BC8064();
    (*(v1 + 8))(v3, v0);
  }

  return v11;
}

uint64_t sub_1C5A79F88(uint64_t result)
{
  if ((*(result + 16) & 1) == 0 && (*result != 0.0 || *(result + 8) != 0.0))
  {
    type metadata accessor for NowPlayingArtworkBackground();
    return sub_1C5A76670();
  }

  return result;
}

id sub_1C5A7A004()
{
  v1 = v0[1];
  v2 = *(v0 + 32);
  v15 = *v0;
  v16 = v1;
  v17 = *(v0 + 1);
  v18 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957C0);
  sub_1C5BCA834();
  v3 = v12;
  v4 = v13;
  v5 = v14;
  v6 = type metadata accessor for WindowSizeReaderViewController();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC11MediaCoreUIP33_7E157EA4C6EF7AA60D360FCDCEB8EEC230WindowSizeReaderViewController__windowSize];
  *v8 = v11;
  *(v8 + 2) = v3;
  *(v8 + 3) = v4;
  v8[32] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_1C5A7A0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A7B5CC();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1C5A7A134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A7B5CC();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1C5A7A198()
{
  sub_1C5A7B5CC();
  sub_1C5BC9784();
  __break(1u);
}

id sub_1C5A7A21C(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for WindowSizeReaderViewController();
  objc_msgSendSuper2(&v6, sel_viewIsAppearing_, a1 & 1);
  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = [result window];

    if (v5)
    {
      [v5 bounds];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957C0);
    return sub_1C5BCA824();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A7A384(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1C5BCAC14();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C5BCAC44();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WindowSizeReaderViewController();
  v22.receiver = v4;
  v22.super_class = v14;
  objc_msgSendSuper2(&v22, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  sub_1C5929CA0();
  v15 = sub_1C5BCB5A4();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C5A7B620;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = &block_descriptor_11;
  v17 = _Block_copy(aBlock);

  sub_1C5BCAC34();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C5A7BB28(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
  sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0);
  sub_1C5BCB8F4();
  MEMORY[0x1C694F7F0](0, v13, v10, v17);
  _Block_release(v17);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_1C5A7A6A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 view];

      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = [v4 window];

      if (v5)
      {
        [v5 bounds];
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957C0);
    sub_1C5BCA824();
  }
}

id sub_1C5A7A8C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WindowSizeReaderViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5A7A944@<X0>(void *a1@<X8>)
{
  result = sub_1C5BC8D04();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5A7A970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5A7A9E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for NowPlayingArtworkBackground() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1C5A77248(v6, v3, v4, a1);
}

void sub_1C5A7AAC0()
{
  sub_1C5A7B4CC(319, &unk_1EDA4E028, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C5953F60(319, &qword_1EDA45F80, MEMORY[0x1E6981EA0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1C5A7B4CC(319, &qword_1EC195788, type metadata accessor for MaterialMotionContentObserver, MEMORY[0x1E697DA80]);
        if (v3 <= 0x3F)
        {
          sub_1C5953F60(319, &qword_1EC193518, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1C5A7B478(319, &qword_1EDA45FF0, &qword_1EC195790);
            if (v5 <= 0x3F)
            {
              sub_1C5A7B478(319, &qword_1EC195798, &qword_1EC1957A0);
              if (v6 <= 0x3F)
              {
                sub_1C5A7B4CC(319, &qword_1EC1957A8, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
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

uint64_t sub_1C5A7ACF0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1C5BC7A24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v36 = *(a3 + 16);
  v37 = v6;
  v10 = *(v36 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = *(v7 + 64);
  v17 = *(v10 + 80);
  if (v15 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v14 + 84);
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  if (!v8)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v14 + 80) & 0xF8 | 7;
  v20 = *(v10 + 64) + 1;
  v21 = *(*(v13 - 8) + 64) + 7;
  if (v18 < a2)
  {
    v22 = (((v21 & 0xFFFFFFFFFFFFFFF8) + ((v20 + v19 + ((v17 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17)) & ~v19) + 95) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v22 <= 3)
    {
      v23 = ((a2 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *&a1[v22];
        if (*&a1[v22])
        {
          goto LABEL_30;
        }
      }

      else
      {
        v26 = *&a1[v22];
        if (v26)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v25)
    {
      v26 = a1[v22];
      if (a1[v22])
      {
LABEL_30:
        v27 = (v26 - 1) << (8 * v22);
        if (v22 <= 3)
        {
          v28 = *a1;
        }

        else
        {
          v27 = 0;
          v28 = *a1;
        }

        return v18 + (v28 | v27) + 1;
      }
    }
  }

  if (v9 == v18)
  {
    if (v8 >= 2)
    {
      v32 = (*(v7 + 48))(a1, v8, v37);
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = ((&a1[v16 + 7] & 0xFFFFFFFFFFFFFFF8) + v17 + 9) & ~v17;
  if (v11 == v18)
  {
    v31 = *(v10 + 48);

    return v31(v30, v11, v36);
  }

  else
  {
    v33 = (v20 + v30 + v19) & ~v19;
    if (v15 < 0x7FFFFFFE)
    {
      v35 = *((v21 + v33) & 0xFFFFFFFFFFFFFFF8);
      if (v35 >= 0xFFFFFFFF)
      {
        LODWORD(v35) = -1;
      }

      if ((v35 + 1) >= 2)
      {
        return v35;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v34 = *(v14 + 48);

      return v34(v33);
    }
  }
}

void sub_1C5A7B084(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = sub_1C5BC7A24();
  v7 = *(v6 - 8);
  v41 = v7;
  v42 = v6;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v40 = *(a4 + 16);
  v10 = *(v40 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740);
  v14 = 0;
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  v17 = *(v10 + 80);
  if (v16 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = *(v15 + 84);
  }

  if (v12 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v12;
  }

  if (v8)
  {
    v20 = *(v7 + 64);
  }

  else
  {
    v20 = *(v7 + 64) + 1;
  }

  v21 = *(v15 + 80) & 0xF8 | 7;
  v22 = *(v10 + 64) + 1;
  v23 = *(*(v13 - 8) + 64) + 7;
  v24 = v23 & 0xFFFFFFF8;
  v25 = (((v23 & 0xFFFFFFFFFFFFFFF8) + ((v22 + v21 + ((v17 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17)) & ~v21) + 95) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v19 < a3)
  {
    if (v25 <= 3)
    {
      v26 = ((a3 - v19 + 255) >> 8) + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v14 = v27;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v19 >= a2)
  {
    v30 = a1;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        *&a1[v25] = 0;
        if (!a2)
        {
          return;
        }

LABEL_46:
        if (v9 == v19)
        {
          v31 = v42;
          v32 = *(v41 + 56);
          v33 = a2 + 1;
          v34 = v8;
        }

        else
        {
          v30 = ((&a1[v20 + 7] & 0xFFFFFFFFFFFFFFF8) + v17 + 9) & ~v17;
          if (v11 != v19)
          {
            v35 = ((v22 + v30 + v21) & ~v21);
            if (v18 >= a2)
            {
              if (v16 < 0x7FFFFFFE)
              {
                v39 = ((v35 + v23) & 0xFFFFFFFFFFFFFFF8);
                if (a2 > 0x7FFFFFFE)
                {
                  *v39 = 0;
                  *v39 = a2 - 0x7FFFFFFF;
                }

                else
                {
                  *v39 = a2;
                }
              }

              else
              {
                v37 = *(v15 + 56);
                v38 = (v22 + v30 + v21) & ~v21;

                v37(v38, a2);
              }
            }

            else if (v24 != -8)
            {
              v36 = ~v18 + a2;
              bzero(((v22 + v30 + v21) & ~v21), (v24 + 8));
              *v35 = v36;
            }

            return;
          }

          v32 = *(v10 + 56);
          v33 = a2;
          v34 = v11;
          v31 = v40;
        }

        v32(v30, v33, v34, v31);
        return;
      }

      *&a1[v25] = 0;
    }

    else if (v14)
    {
      a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  v28 = ~v19 + a2;
  bzero(a1, (((v23 & 0xFFFFFFFFFFFFFFF8) + ((v22 + v21 + ((v17 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17)) & ~v21) + 95) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v25 <= 3)
  {
    v29 = (v28 >> 8) + 1;
  }

  else
  {
    v29 = 1;
  }

  if (v25 <= 3)
  {
    *a1 = v28;
    if (v14 > 1)
    {
LABEL_34:
      if (v14 == 2)
      {
        *&a1[v25] = v29;
      }

      else
      {
        *&a1[v25] = v29;
      }

      return;
    }
  }

  else
  {
    *a1 = v28;
    if (v14 > 1)
    {
      goto LABEL_34;
    }
  }

  if (v14)
  {
    a1[v25] = v29;
  }
}

void sub_1C5A7B478(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1C5BCA6C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5A7B4CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C5A7B578()
{
  result = qword_1EC1957B8;
  if (!qword_1EC1957B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1957B8);
  }

  return result;
}

unint64_t sub_1C5A7B5CC()
{
  result = qword_1EC1957C8;
  if (!qword_1EC1957C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1957C8);
  }

  return result;
}

uint64_t sub_1C5A7B628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for NowPlayingArtworkBackground() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1C5A77ADC(a1, v8, v5, v6, a2);
}

unint64_t sub_1C5A7B730()
{
  result = qword_1EC1957E8;
  if (!qword_1EC1957E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1957F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1957F8);
    type metadata accessor for MaterialMotionContentObserver(255);
    sub_1C5A7B874();
    sub_1C5A7BB28(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
    swift_getOpaqueTypeConformance2();
    sub_1C5924F54(&qword_1EC195858, &qword_1EC195860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1957E8);
  }

  return result;
}

unint64_t sub_1C5A7B874()
{
  result = qword_1EC195800;
  if (!qword_1EC195800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1957F8);
    sub_1C5A7B92C();
    sub_1C5924F54(&qword_1EC195848, &qword_1EC195850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195800);
  }

  return result;
}

unint64_t sub_1C5A7B92C()
{
  result = qword_1EC195808;
  if (!qword_1EC195808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195810);
    sub_1C5A7B9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195808);
  }

  return result;
}

unint64_t sub_1C5A7B9B8()
{
  result = qword_1EC195818;
  if (!qword_1EC195818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195820);
    sub_1C5A7BA70();
    sub_1C5924F54(&qword_1EC1940C8, &qword_1EC1940C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195818);
  }

  return result;
}

unint64_t sub_1C5A7BA70()
{
  result = qword_1EC195828;
  if (!qword_1EC195828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195830);
    sub_1C5924F54(&qword_1EC195838, &qword_1EC195840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195828);
  }

  return result;
}

uint64_t sub_1C5A7BB28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5A7BB7C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1C5A7BBF8()
{
  result = qword_1EC195878;
  if (!qword_1EC195878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195878);
  }

  return result;
}

uint64_t sub_1C5A7BC4C(uint64_t a1)
{
  type metadata accessor for NowPlayingArtworkBackground();

  return sub_1C5A79F88(a1);
}

uint64_t PresentedViewState.isPresented.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  return v1;
}

uint64_t sub_1C5A7BDD0@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t PresentedViewState.isPresented.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5BC8044();
}

void (*PresentedViewState.isPresented.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = sub_1C5BC8024();
  return sub_1C5A7BFCC;
}

void sub_1C5A7BFCC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t PresentedViewState.$isPresented.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0);
  sub_1C5BC8004();
  return swift_endAccess();
}

uint64_t sub_1C5A7C0A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return PresentedViewState.$isPresented.setter(v4);
}

uint64_t PresentedViewState.$isPresented.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0);
  sub_1C5BC8014();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PresentedViewState.$isPresented.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C8);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  PresentedViewState.$isPresented.getter();
  return sub_1C5A7C3C8;
}

void sub_1C5A7C3C8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    PresentedViewState.$isPresented.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PresentedViewState.$isPresented.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PresentedViewState.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = sub_1C5BCB804();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PresentedViewState.__allocating_init()()
{
  v0 = swift_allocObject();
  PresentedViewState.init()();
  return v0;
}

uint64_t *PresentedViewState.init()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-v4];
  v6 = qword_1EDA4B330;
  v7 = *(v1 + 80);
  v9[15] = 0;
  sub_1C5BC7FF4();
  (*(v3 + 32))(v0 + v6, v5, v2);
  (*(*(v7 - 8) + 56))(v0 + *(*v0 + 96), 1, 1, v7);
  return v0;
}

uint64_t PresentedViewState.present(_:animated:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 80);
  v6 = sub_1C5BCB804();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = *(v5 - 8);
  (*(v10 + 16))(&v13 - v8, a1, v5);
  (*(v10 + 56))(v9, 0, 1, v5);
  v11 = *(*v2 + 96);
  swift_beginAccess();
  (*(v7 + 40))(v2 + v11, v9, v6);
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return PresentedViewState.isPresented.setter();
  }

  sub_1C5BCAB14();
  sub_1C5BC87F4();
}

uint64_t PresentedViewState.deinit()
{
  v1 = qword_1EDA4B330;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 96);
  v4 = sub_1C5BCB804();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PresentedViewState.__deallocating_deinit()
{
  PresentedViewState.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A7C9E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t View.viewPresenting<A, B>(_:modifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v15[0] = a5;
  v15[1] = a6;
  v10 = sub_1C5BC8AB4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v15 - v12;
  MEMORY[0x1C694E550](a1, a2, a3, a4);
  type metadata accessor for PresentedViewState();
  v15[2] = a4;
  v15[3] = v15[0];
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC9FF4();
  return (*(v11 + 8))(v13, v10);
}

void sub_1C5A7CBE4()
{
  sub_1C5924EA4();
  if (v0 <= 0x3F)
  {
    sub_1C5BCB804();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

id sub_1C5A7CDD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisableDragView.DisableDragUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5A7CE34()
{
  sub_1C5A0594C();

  return sub_1C5BC8F44();
}

uint64_t VideoGravity.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t MCUINamespace<A>.videoGravity(_:)()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t sub_1C5A7CF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5A7D0EC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t View.videoGravity(_:)(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for MCUINamespace();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  LOBYTE(a1) = *a1;
  View.mcui.getter(a2, &v9[-v6]);
  v9[15] = a1;
  MCUINamespace<A>.videoGravity(_:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1C5A7D0EC()
{
  result = qword_1EC1958D0;
  if (!qword_1EC1958D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1958D0);
  }

  return result;
}

unint64_t sub_1C5A7D150()
{
  result = qword_1EDA461A0;
  if (!qword_1EDA461A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1958D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA461A0);
  }

  return result;
}

uint64_t sub_1C5A7D1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = a2;
  v17[7] = a3;
  sub_1C5BC8534();
  return (*(v14 + 8))(a1, a4);
}

uint64_t sub_1C5A7D31C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1C5BCBB44();
    for (i = (a3 + 48); ; i += 3)
    {
      v10 = *(i - 1);
      v11 = *i;
      v12[0] = *(i - 2);
      v12[1] = v10;
      v12[2] = v11;

      a1(&v13, v12);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_1C5BCBB24();
      sub_1C5BCBB54();
      sub_1C5BCBB64();
      sub_1C5BCBB34();
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A7D428(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1C5B8F068(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v19;
      v20 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C5B8F068((v13 > 1), v14 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 8 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v8)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_1C5A7D59C@<X0>(void *a1@<X8>)
{
  result = sub_1C5BC8D14();
  *a1 = v3;
  return result;
}

void sub_1C5A7D660(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E6988158]) init];
  [v5 setStyle_];

  *a3 = v5;
}

uint64_t sub_1C5A7D6C8()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  result = sub_1C5BCAE94();
  qword_1EC1A6B28 = result;
  unk_1EC1A6B30 = v4;
  return result;
}

uint64_t sub_1C5A7D808()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1C5A7D8B8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1C5AA3F20;
  a2[1] = v6;
}

uint64_t sub_1C5A7D990(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);

  sub_1C5BC7B64();
}

uint64_t sub_1C5A7DAAC()
{
  v1 = 0x2D2D3A2D2DLL;
  v2 = *(v0 + 16);
  v3 = *(*(v2 + 72) + 80);
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  if ((*(v3 + 32) & 1) == 0)
  {
    v4 = *(v3 + 24);
    swift_getKeyPath();
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
    sub_1C5BC7B74();

    if ((*(v0 + 57) & 1) == 0)
    {
      if (qword_1EC190720 != -1)
      {
        swift_once();
      }

      v5 = qword_1EC1A6B20;
      v6 = *(v2 + 72);
      swift_getKeyPath();
      sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
      sub_1C5BC7B74();

      v7 = [v5 stringFromSeconds_];
      v1 = sub_1C5BCAE74();
    }
  }

  return v1;
}

void sub_1C5A7DCE0(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  if (*(v1 + 40) != a1)
  {
    v3 = *MEMORY[0x1E69DD888];
    swift_getKeyPath();
    sub_1C5BC7B74();

    sub_1C5A7DE00(*(v1 + 40));
    v4 = sub_1C5BCAE44();

    UIAccessibilityPostNotification(v3, v4);
  }
}

uint64_t sub_1C5A7DE00(uint64_t a1)
{
  v2 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (qword_1EC190760 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BA0 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  if (qword_1EC190768 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BA8 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  if (qword_1EC190770 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BB0 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
LABEL_15:
      v4 = qword_1EDA5DD00;
      sub_1C5BC7B14();
      return sub_1C5BCAE94();
    }

LABEL_22:
    swift_once();
    goto LABEL_15;
  }

  if (qword_1EC190778 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BB8 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  return 0;
}

uint64_t sub_1C5A7E1D8()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  return *(v0 + 40);
}

uint64_t sub_1C5A7E278@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  *a2 = *(v3 + 40);
  return result;
}

void sub_1C5A7E320(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {

    sub_1C5A7DCE0(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A7E450(char *a1, double a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *(v2 + 16);
  v6 = *(v5 + 72);
  v7 = *(v6 + 96);
  *(v6 + 96) = a2;
  sub_1C5A89794(v7);
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  sub_1C5A83BDC(v8);

  swift_getKeyPath();
  v11 = v3;
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  v9 = *(v3 + 24);
  v11 = *(*(v5 + 72) + 96);
  v12 = v4;

  v9(&v11);
}

uint64_t sub_1C5A7E5D0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196200);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  swift_beginAccess();
  *(v2 + 48) = MEMORY[0x1E69E7CD0];

  if (a1)
  {
    v40 = v5;
    v41 = *(a1 + 24);
    sub_1C592535C(0, &qword_1EDA4E620);

    v39 = v4;
    v16 = sub_1C5BCB5A4();
    v38 = v7;
    v17 = v16;
    v42 = v16;
    v36 = sub_1C5BCB594();
    v18 = *(v36 - 8);
    v35 = *(v18 + 56);
    v37 = v18 + 56;
    v35(v10, 1, 1, v36);
    v31 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195A28);
    v32 = v11;
    sub_1C5924F54(&qword_1EC196220, &qword_1EC195A28);
    v34 = sub_1C5A11814(&qword_1EDA4E630, &qword_1EDA4E620);
    sub_1C5BC80D4();
    sub_1C5924EF4(v10, &unk_1EC199F20);

    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    v21 = v31;
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v19;
    v33 = MEMORY[0x1E695BE98];
    sub_1C5924F54(&qword_1EC196228, &qword_1EC196200);
    v23 = v32;
    sub_1C5BC8114();

    (*(v12 + 8))(v14, v23);
    swift_beginAccess();
    sub_1C5BC7EE4();
    swift_endAccess();

    v41 = *(v21 + 16);

    v24 = sub_1C5BCB5A4();
    v42 = v24;
    v35(v10, 1, 1, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195A20);
    sub_1C5924F54(&unk_1EC196208, &qword_1EC195A20);
    v25 = v38;
    sub_1C5BC80D4();
    sub_1C5924EF4(v10, &unk_1EC199F20);

    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = v26;
    sub_1C5924F54(&qword_1EC196218, &unk_1EC1961F0);
    v29 = v39;
    sub_1C5BC8114();

    (*(v40 + 8))(v25, v29);
    swift_beginAccess();
    sub_1C5BC7EE4();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1C5A7EBF0(double *a1)
{
  v2 = sub_1C5BC7D64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_1EC1A6BC0);
  (*(v3 + 16))(v5, v7, v2);

  v8 = sub_1C5BC7D44();
  v9 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26[0] = v11;
    *v10 = 134218242;
    *(v10 + 4) = v6;
    *(v10 + 12) = 2082;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      v24 = v11;
      v13 = sub_1C5BCAEA4();
      v15 = v14;
      v11 = v24;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_1C592ADA8(v13, v15, v26);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_1C5922000, v8, v9, "ScrubberViewModel seeking to time %f requested by proxy %{public}s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1C69510F0](v11, -1, -1);
    MEMORY[0x1C69510F0](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = *(v17 + 16);
    v19 = *(v18 + 72);
    v20 = *(v19 + 96);
    *(v19 + 96) = v6;
    sub_1C5A89794(v20);
    v21 = *(*(v18 + 72) + 80);
    swift_getKeyPath();
    v25 = v21;
    sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
    sub_1C5BC7B74();

    sub_1C5A83BDC(v22);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C5A82F70(v6);
  }

  return result;
}

uint64_t sub_1C5A7EF88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C5BC7D64();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v54 - v13;
  v16 = *a1;
  v15 = a1[1];
  if (v15 >> 62)
  {
    if (v15 >> 62 == 1)
    {
      v17 = *(a1 + 2);
      if (qword_1EC190798 != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v5, qword_1EC1A6BC0);
      (*(v6 + 16))(v12, v18, v5);

      v19 = sub_1C5BC7D44();
      v20 = sub_1C5BCB4F4();

      if (os_log_type_enabled(v19, v20))
      {
        v56 = a3;
        v21 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v57 = v54;
        *v21 = 136446466;
        v55 = v16;
        v58 = v16;
        v59 = v15 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78);
        v22 = sub_1C5BCAEA4();
        v24 = sub_1C592ADA8(v22, v23, &v57);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2082;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v58 = Strong;
          v26 = sub_1C5BCAEA4();
          v28 = v27;
        }

        else
        {
          v26 = 7104878;
          v28 = 0xE300000000000000;
        }

        v45 = sub_1C592ADA8(v26, v28, &v57);

        *(v21 + 14) = v45;
        _os_log_impl(&dword_1C5922000, v19, v20, "ScrubberViewModel showing section delimiters for %{public}s seconds requested by proxy %{public}s", v21, 0x16u);
        v46 = v54;
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v46, -1, -1);
        MEMORY[0x1C69510F0](v21, -1, -1);

        (*(v6 + 8))(v12, v5);
        v16 = v55;
      }

      else
      {

        (*(v6 + 8))(v12, v5);
      }

      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {

        sub_1C5A843D0(v16, v15 & 1, v17);
      }
    }

    else
    {
      if (qword_1EC190798 != -1)
      {
        swift_once();
      }

      v38 = __swift_project_value_buffer(v5, qword_1EC1A6BC0);
      (*(v6 + 16))(v9, v38, v5);

      v39 = sub_1C5BC7D44();
      v40 = sub_1C5BCB4F4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v58 = v42;
        *v41 = 136315394;
        v55 = v16;
        v56 = a3;
        if (v16)
        {
          if (v16 == 1)
          {
            v43 = 0x676E696B63617274;
          }

          else
          {
            v43 = 0x6172656C65636564;
          }

          if (v16 == 1)
          {
            v44 = 0xE800000000000000;
          }

          else
          {
            v44 = 0xEC000000676E6974;
          }
        }

        else
        {
          v44 = 0xE400000000000000;
          v43 = 1701602409;
        }

        v49 = sub_1C592ADA8(v43, v44, &v58);

        *(v41 + 4) = v49;
        *(v41 + 12) = 2082;
        swift_beginAccess();
        v50 = swift_weakLoadStrong();
        if (v50)
        {
          v57 = v50;
          v16 = sub_1C5BCAEA4();
          v52 = v51;
        }

        else
        {
          v16 = 7104878;
          v52 = 0xE300000000000000;
        }

        v53 = sub_1C592ADA8(v16, v52, &v58);

        *(v41 + 14) = v53;
        _os_log_impl(&dword_1C5922000, v39, v40, "ScrubberViewModel scrubState changed to %s requested by proxy %{public}s", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v42, -1, -1);
        MEMORY[0x1C69510F0](v41, -1, -1);

        (*(v6 + 8))(v9, v5);
        LOBYTE(v16) = v55;
      }

      else
      {

        (*(v6 + 8))(v9, v5);
      }

      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        LOBYTE(v57) = v16;
        sub_1C5A820C8(&v57);
      }
    }
  }

  else
  {
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v5, qword_1EC1A6BC0);
    (*(v6 + 16))(v14, v29, v5);

    v30 = sub_1C5BC7D44();
    v31 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v30, v31))
    {
      v56 = a3;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58 = v33;
      *v32 = 134218242;
      v55 = v16;
      *(v32 + 4) = v16;
      *(v32 + 12) = 2082;
      swift_beginAccess();
      v34 = swift_weakLoadStrong();
      if (v34)
      {
        v57 = v34;
        v35 = sub_1C5BCAEA4();
        v37 = v36;
      }

      else
      {
        v35 = 7104878;
        v37 = 0xE300000000000000;
      }

      v48 = sub_1C592ADA8(v35, v37, &v58);

      *(v32 + 14) = v48;
      _os_log_impl(&dword_1C5922000, v30, v31, "ScrubberViewModel notifying jumped by %f requested by proxy %{public}s", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1C69510F0](v33, -1, -1);
      MEMORY[0x1C69510F0](v32, -1, -1);

      (*(v6 + 8))(v14, v5);
      v16 = v55;
    }

    else
    {

      (*(v6 + 8))(v14, v5);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {

      sub_1C5A86138(*&v16);
    }
  }

  return result;
}

uint64_t ScrubState.rawValue.getter()
{
  v1 = 0x676E696B63617274;
  if (*v0 != 1)
  {
    v1 = 0x6172656C65636564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_1C5A7F844()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  return *(v0 + 56);
}

uint64_t sub_1C5A7F8E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_1C5A7F98C(uint64_t result)
{
  if (*(v1 + 56) == (result & 1))
  {
    *(v1 + 56) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5A7FA9C()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  return *(v0 + 57);
}

uint64_t sub_1C5A7FB3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  *a2 = *(v3 + 57);
  return result;
}

uint64_t sub_1C5A7FBE4(uint64_t result)
{
  if (*(v1 + 57) == (result & 1))
  {
    *(v1 + 57) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5A7FCF4()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  return *(v0 + 58);
}

uint64_t sub_1C5A7FD94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  *a2 = *(v3 + 58);
  return result;
}

uint64_t sub_1C5A7FE3C(uint64_t result)
{
  if (*(v1 + 58) == (result & 1))
  {
    *(v1 + 58) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5A7FF4C(double *a1)
{
  v2 = v1;
  v44 = sub_1C5BC7D64();
  v48 = *(v44 - 8);
  v4 = MEMORY[0x1EEE9AC00](v44);
  v43 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v42 = v40 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v40 - v8;
  v10 = *a1;
  v11 = *(a1 + 2);
  v46 = *(a1 + 1);
  v47 = v11;
  v12 = a1[1];
  v45 = *(a1 + 16);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC11MediaCoreUI17ScrubberViewModel___observationRegistrar;
  v49 = v2;
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  if (v10 == *(*&v2 + 56))
  {
    v41 = v12;
    v16 = v10 ^ 1;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v40[-2] = v2;
    LOBYTE(v40[-1]) = v16;
    v49 = v2;
    v40[1] = v13;
    sub_1C5BC7B64();

    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v15 = v44;
    v18 = __swift_project_value_buffer(v44, qword_1EC1A6BC0);
    (*(v48 + 16))(v9, v18, v15);
    v19 = sub_1C5BC7D44();
    v20 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = v16;
      _os_log_impl(&dword_1C5922000, v19, v20, "ScrubberViewModel.isInteractionEnabled changed to %{BOOL}d", v21, 8u);
      MEMORY[0x1C69510F0](v21, -1, -1);
    }

    v14 = v48;
    (*(v48 + 8))(v9, v15);
    v12 = v41;
  }

  else
  {
    v14 = v48;
    v15 = v44;
  }

  swift_getKeyPath();
  v49 = v2;
  sub_1C5BC7B74();

  v22 = v46;
  if (v46 != *(*&v2 + 57))
  {
    v23 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v23);
    *&v40[-2] = v2;
    LOBYTE(v40[-1]) = v22;
    v49 = v2;
    sub_1C5BC7B64();

    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v15, qword_1EC1A6BC0);
    v25 = v42;
    (*(v14 + 16))(v42, v24, v15);
    v26 = sub_1C5BC7D44();
    v27 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 4) = v46;
      _os_log_impl(&dword_1C5922000, v26, v27, "ScrubberViewModel.showPlaceholderLabels changed to %{BOOL}d", v28, 8u);
      v29 = v28;
      v14 = v48;
      MEMORY[0x1C69510F0](v29, -1, -1);
    }

    (*(v14 + 8))(v25, v15);
  }

  swift_getKeyPath();
  v49 = v2;
  sub_1C5BC7B74();

  v30 = v47;
  if (v47 != *(*&v2 + 58))
  {
    v31 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v31);
    *&v40[-2] = v2;
    LOBYTE(v40[-1]) = v30;
    v49 = v2;
    sub_1C5BC7B64();

    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v15, qword_1EC1A6BC0);
    v33 = v43;
    (*(v14 + 16))(v43, v32, v15);
    v34 = sub_1C5BC7D44();
    v35 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67109120;
      *(v36 + 4) = v47;
      _os_log_impl(&dword_1C5922000, v34, v35, "ScrubberViewModel.showSpinner changed to %{BOOL}d", v36, 8u);
      MEMORY[0x1C69510F0](v36, -1, -1);
    }

    (*(v14 + 8))(v33, v15);
  }

  swift_getKeyPath();
  v49 = v2;
  sub_1C5BC7B74();

  if (*(*&v2 + 72))
  {
    v38 = v45;
    if (v45)
    {
      return result;
    }

LABEL_27:
    v49 = v12;
    v50 = v38;
    return sub_1C5BC7F34();
  }

  v38 = v45;
  if (*(*&v2 + 64) == v12)
  {
    v39 = v45;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_1C5A80680()
{
  v1 = sub_1C5BC7D64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v1, qword_1EC1A6BC0);
  (*(v2 + 16))(v4, v5, v1);

  v6 = sub_1C5BC7D44();
  v7 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    swift_getKeyPath();
    v16 = v0;
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
    sub_1C5BC7B74();

    v10 = *(v0 + 72);
    v16 = *(v0 + 64);
    v17 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78);
    v11 = sub_1C5BCAEA4();
    v13 = sub_1C592ADA8(v11, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1C5922000, v6, v7, "ScrubberViewModel.availableDuration changed to %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1C69510F0](v9, -1, -1);
    MEMORY[0x1C69510F0](v8, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C5A80924()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  return *(v0 + 64);
}

uint64_t sub_1C5A809C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  v5 = *(v3 + 72);
  *a2 = *(v3 + 64);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C5A80A78(uint64_t a1, char a2)
{
  if (*(v2 + 72))
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
      sub_1C5BC7B64();
    }
  }

  else if ((a2 & 1) != 0 || *(v2 + 64) != *&a1)
  {
    goto LABEL_9;
  }

  *(v2 + 64) = *&a1;
  *(v2 + 72) = a2 & 1;

  return sub_1C5A80680();
}

uint64_t sub_1C5A80BD4()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();
}

uint64_t sub_1C5A80C78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  *a2 = *(v3 + 80);
}

uint64_t sub_1C5A80D24(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 80))
  {
    if (a1)
    {
      sub_1C5BC7F04();
      sub_1C5A9B150(&unk_1EC194D78, MEMORY[0x1E695BF10]);

      v4 = sub_1C5BCADB4();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
    sub_1C5BC7B64();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 80) = a1;
}

uint64_t sub_1C5A80ECC()
{
  v1 = v0;
  v2 = sub_1C5BCB7D4();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196290);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196298);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v23 = &v18 - v9;
  type metadata accessor for ScrubberInteractionViewModel(0);
  v10 = swift_allocObject();
  sub_1C5A877D8();
  *(v1 + 16) = v10;
  *(v1 + 24) = CGSizeMake;
  *(v1 + 32) = 0;
  if (qword_1EC190760 != -1)
  {
    swift_once();
  }

  v11 = MEMORY[0x1E69E7CD0];
  *(v1 + 40) = qword_1EC1A6BA0;
  *(v1 + 48) = v11;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1962A0);
  swift_allocObject();
  *(v1 + 88) = sub_1C5BC7F44();
  sub_1C5BC7BA4();
  v27 = *(v1 + 88);

  sub_1C5BCB7C4();
  v12 = [objc_opt_self() mainRunLoop];
  v26 = v12;
  sub_1C592535C(0, &unk_1EC1962A8);
  sub_1C5924F54(&qword_1EDA46880, &qword_1EC1962A0);
  sub_1C5A11814(&qword_1EC1962B8, &unk_1EC1962A8);
  sub_1C5BC80E4();

  (*(v19 + 8))(v4, v20);

  sub_1C5924F54(&qword_1EC1962C0, &qword_1EC196290);
  sub_1C59BD6B8();
  v13 = v22;
  v14 = v23;
  sub_1C5BC80F4();
  (*(v21 + 8))(v7, v13);
  swift_allocObject();
  swift_weakInit();
  sub_1C5924F54(&unk_1EC1962C8, &qword_1EC196298);
  v15 = v25;
  v16 = sub_1C5BC8114();

  (*(v24 + 8))(v14, v15);
  sub_1C5A80D24(v16);
  return v1;
}

uint64_t sub_1C5A81388(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C5A813FC(v1, v2);
  }

  return result;
}

uint64_t sub_1C5A813FC(uint64_t a1, int a2)
{
  v12 = a2;
  v4 = sub_1C5BC9704();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v13 = v2;
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  if (*(v2 + 72) == 1)
  {
    sub_1C5A80A78(0, 0);
  }

  if (qword_1EC190790 != -1)
  {
    swift_once();
  }

  v8 = swift_allocObject();
  v9 = swift_weakInit();
  MEMORY[0x1EEE9AC00](v9);
  *&v11[-32] = a1;
  v11[-24] = v12 & 1;
  *&v11[-16] = v8;
  swift_allocObject();
  swift_weakInit();

  sub_1C5BC96F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961E0);
  sub_1C5BC87E4();
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C5A816A0@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if (a2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v6 = *(*(*(Strong + 16) + 72) + 80);
        swift_getKeyPath();
        sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
        sub_1C5BC7B74();

        v7 = *(v6 + 24);
        v8 = *(v6 + 32);
      }

      else
      {
        v7 = 0;
        v8 = 1;
      }

      v10 = v7;
      v11 = v8;
      goto LABEL_10;
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v10 = a1;
      v11 = 0;
LABEL_10:
      sub_1C5A80A78(v10, v11);

      v12 = 0;
      goto LABEL_11;
    }
  }

  v12 = 1;
LABEL_11:
  *a3 = v12;
  return result;
}

uint64_t sub_1C5A8182C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(*(*(result + 16) + 72) + 80);
    swift_getKeyPath();
    sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
    sub_1C5BC7B74();

    if (*(v2 + 32))
    {
    }

    v3 = *(v2 + 24);
    swift_getKeyPath();
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
    sub_1C5BC7B74();

    if ((*(v1 + 72) & 1) != 0 || v3 > *(v1 + 64))
    {
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5BC7B64();
    }
  }

  return result;
}

uint64_t sub_1C5A81A34()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI17ScrubberViewModel___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A81AF8()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 80);
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  if (*(v2 + 32))
  {
    return 0x2D2D3A2D2DLL;
  }

  if (qword_1EC190718 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC1A6B18;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  v5 = [v4 stringFromSeconds_];
  v6 = sub_1C5BCAE74();

  return v6;
}

uint64_t sub_1C5A81C94(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16[-v10];
  v12 = *(v1 + 16);
  sub_1C59400B0(a1, &v16[-v10], &unk_1EC193058);
  v13 = *(v12 + 72);
  sub_1C59400B0(v11, v9, &unk_1EC193058);
  v14 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_latestDate;
  swift_beginAccess();
  sub_1C59400B0(v13 + v14, v6, &unk_1EC193058);
  swift_beginAccess();
  sub_1C5AA3184(v9, v13 + v14);
  swift_endAccess();
  sub_1C5A89E90(v6);
  sub_1C5924EF4(a1, &unk_1EC193058);
  sub_1C5924EF4(v6, &unk_1EC193058);
  sub_1C5924EF4(v9, &unk_1EC193058);
  return sub_1C5924EF4(v11, &unk_1EC193058);
}

uint64_t sub_1C5A81E3C()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  return *(v0 + 16);
}

uint64_t sub_1C5A81EE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C5A81F90(uint64_t result, char a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 16) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 16) = *&result;
    *(v2 + 24) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B64();
  *&result = COERCE_DOUBLE();
  return result;
}

void sub_1C5A820C8(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + 72);
  swift_getKeyPath();
  v14 = v3;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  v4 = 0xE800000000000000;
  v5 = 0x676E696B63617274;
  if (*(v3 + 57) != 1)
  {
    v5 = 0x6172656C65636564;
    v4 = 0xEC000000676E6974;
  }

  if (*(v3 + 57))
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701602409;
  }

  if (*(v3 + 57))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x676E696B63617274;
  if (v2 != 1)
  {
    v9 = 0x6172656C65636564;
    v8 = 0xEC000000676E6974;
  }

  if (v2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1701602409;
  }

  if (v2)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {
  }

  else
  {
    v12 = sub_1C5BCBDE4();

    if ((v12 & 1) == 0)
    {
      v13 = v2;
      sub_1C5A88ABC(&v13);
      sub_1C5A8227C();
    }
  }
}

void sub_1C5A8227C()
{
  v1 = v0;
  v2 = sub_1C5BC9704();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 72);
  swift_getKeyPath();
  v19 = v6;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  if (*(v6 + 57) && *(v6 + 57) == 1)
  {

    v7 = 1.05;
  }

  else
  {
    v8 = sub_1C5BCBDE4();

    if (v8)
    {
      v7 = 1.05;
    }

    else
    {
      v7 = 1.0;
    }
  }

  if (*(v0 + 64) == v7)
  {
    *(v0 + 64) = v7;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v18 = v5;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v17 - 2) = v0;
    *(&v17 - 1) = v7;
    v19 = v0;
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
    sub_1C5BC7B64();

    v5 = v18;
  }

  swift_getKeyPath();
  v19 = v6;
  sub_1C5BC7B74();

  if (*(v6 + 57))
  {
    if (*(v6 + 57) == 1)
    {
      [*(v0 + 128) invalidate];
      swift_getKeyPath();
      v19 = v0;
      sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
      sub_1C5BC7B74();

      if ((*(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8) & 1) == 0)
      {
        sub_1C5BC87F4();
      }

      swift_getKeyPath();
      v19 = v0;
      sub_1C5BC7B74();

      if ((*(v0 + 120) & 1) == 0)
      {
        v18 = v3;
        if (qword_1EC190788 != -1)
        {
          v10 = swift_once();
        }

        v17 = &v17;
        MEMORY[0x1EEE9AC00](v10);
        *(&v17 - 2) = v0;
        *(&v17 - 8) = 1;
        v11 = swift_allocObject();
        *(v11 + 16) = 1;
        *(v11 + 24) = v0;

        sub_1C5BC96F4();
        sub_1C5BC87E4();

        (*(v18 + 1))(v5, v2);
      }

      v12 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub);
      *(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub) = 0;
      sub_1C5A86C70(v12);
      swift_getKeyPath();
      v19 = v0;
      sub_1C5BC7B74();

      if ((*(v0 + 120) & 1) == 0)
      {
        if (*(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating))
        {
          v13 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v13);
          *(&v17 - 2) = v0;
          *(&v17 - 8) = 0;
          v19 = v0;
          sub_1C5BC7B64();
        }

        else
        {
          *(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) = 0;
          sub_1C5A8672C(0);
        }
      }

      sub_1C5A87328();
      if (qword_1EC190780 != -1)
      {
        swift_once();
      }

      [*(v0 + 112) invalidate];
      v16 = *(v0 + 112);
      *(v0 + 112) = 0;

      sub_1C5BC87F4();
    }

    else
    {
      v14 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_pauseDetectionTimer;
      [*(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_pauseDetectionTimer) invalidate];
      v15 = *(v1 + v14);
      *(v1 + v14) = 0;
    }
  }

  else
  {
    sub_1C5A85760();
    sub_1C5A84974(3.5);
  }
}

uint64_t sub_1C5A82940(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession;
  if (*(a1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8) == 1)
  {
    v2 = *v1;
    *v1 = 0;
    *(v1 + 8) = 1;
    return sub_1C5A85B30(v2, 1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
    sub_1C5BC7B64();
  }
}

double sub_1C5A82A7C()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  return *(v0 + 32);
}

__n128 sub_1C5A82B20@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  result = *(v3 + 32);
  v5 = *(v3 + 48);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void sub_1C5A82BC8(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4[2], v5), vceqq_f64(v4[3], v6)))))
  {
    v4[2].f64[0] = a1;
    v4[2].f64[1] = a2;
    v4[3].f64[0] = a3;
    v4[3].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
    sub_1C5BC7B64();
  }
}

double sub_1C5A82D10()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  return *(v0 + 64);
}

double sub_1C5A82DB0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  result = *(v3 + 64);
  *a2 = result;
  return result;
}

void sub_1C5A82E58(double a1)
{
  if (*(v1 + 64) == a1)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A82F70(double a1)
{
  v2 = *(v1 + 72);
  if (*(v2 + 72) == a1)
  {
    *(v2 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
    sub_1C5BC7B64();
  }

  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  sub_1C5A83BDC(v4);
}

void sub_1C5A8311C(double *a1)
{
  v2 = v1;
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = *(a1 + 1);
  v10 = a1[2];
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel___observationRegistrar;
  v35 = v2;
  v34 = sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  v12 = *(v2 + 88);
  if (!v12)
  {
    if (!v8)
    {

      return;
    }

    goto LABEL_7;
  }

  if (!v8)
  {
LABEL_7:

    goto LABEL_8;
  }

  v13 = *(v2 + 96);
  if (*(v2 + 80) == *&v9 && v12 == v8)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v23 = sub_1C5BCBDE4();
    swift_bridgeObjectRetain_n();
    if ((v23 & 1) == 0)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_8;
    }
  }

  swift_bridgeObjectRelease_n();
  if (v13 == v10)
  {
    return;
  }

LABEL_8:
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_1EC1A6BC0);
  (*(v5 + 16))(v7, v14, v4);

  v15 = sub_1C5BC7D44();
  v16 = sub_1C5BCB4F4();

  v17 = os_log_type_enabled(v15, v16);
  v33 = v11;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v18 = 136446210;
    swift_getKeyPath();
    v35 = v2;
    sub_1C5BC7B74();

    v19 = *(v2 + 88);
    if (v19)
    {
      v20 = *(v2 + 80);
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_1C5BCBA94();
      MEMORY[0x1C694F170](0x203A656C74697428, 0xE900000000000022);
      MEMORY[0x1C694F170](v20, v19);
      MEMORY[0x1C694F170](0x7472617473202C22, 0xEE00203A656D6954);
      sub_1C5BCB324();
      MEMORY[0x1C694F170](41, 0xE100000000000000);
      v21 = v35;
      v22 = v36;
    }

    else
    {
      v22 = 0xE300000000000000;
      v21 = 7104878;
    }

    v24 = sub_1C592ADA8(v21, v22, &v37);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1C5922000, v15, v16, "ScrubberInteractionViewModel.currentSection changed to %{public}s", v18, 0xCu);
    v25 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1C69510F0](v25, -1, -1);
    MEMORY[0x1C69510F0](v18, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v26 = *(v2 + 72);
  swift_getKeyPath();
  v35 = v26;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  if (*(v26 + 57))
  {
    v27 = sub_1C5BCBDE4();

    if ((v27 & 1) == 0)
    {
      if (*(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v31 - 2) = v2;
        *(&v31 - 8) = 0;
        v35 = v2;
        sub_1C5BC7B64();
      }

      else
      {
        *(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) = 0;
        sub_1C5A8672C(0);
      }

      v29 = *(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub);
      *(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub) = 0;
      sub_1C5A86C70(v29);
    }
  }

  else
  {
  }

  swift_getKeyPath();
  v35 = v26;
  sub_1C5BC7B74();

  if (*(v26 + 57) && *(v26 + 57) == 1)
  {
  }

  else
  {
    v30 = sub_1C5BCBDE4();

    if ((v30 & 1) == 0)
    {
      return;
    }
  }

  sub_1C5A87328();
}

uint64_t ScrubberSection.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0x203A656C74697428, 0xE900000000000022);
  MEMORY[0x1C694F170](v1, v2);
  MEMORY[0x1C694F170](0x7472617473202C22, 0xEE00203A656D6954);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C5A83888@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  *a1 = *(v1 + 80);
  *(a1 + 8) = *(v1 + 88);
}

uint64_t sub_1C5A83940@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  *a2 = *(v3 + 80);
  *(a2 + 8) = *(v3 + 88);
}

uint64_t sub_1C5A839F8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];

  LOBYTE(v5) = sub_1C5AA226C(v5, v6, v7, v3, v2, v4);

  if (v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v1;
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
    sub_1C5BC7B64();
  }

  else
  {
    v11 = v1[10];
    v10 = *(v1 + 11);
    v1[10] = v3;
    v1[11] = v2;
    v1[12] = v4;
    v12 = v10;
    sub_1C5A8311C(&v11);
  }
}

uint64_t sub_1C5A83B74(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[10];
  v5 = a1[11];
  v6 = a1[12];
  *(a1 + 10) = a2;
  *(a1 + 11) = a3;
  *(a1 + 12) = a4;

  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v6;
  sub_1C5A8311C(v8);
}

void sub_1C5A83BDC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = v2;

  v6 = (a1 + 24 * v4 + 24);
  v7 = v4 + 1;
  while (--v7)
  {
    v8 = v6 - 3;
    v9 = *v6;
    v10 = *(v5 + 72);
    swift_getKeyPath();
    v21[0] = v10;
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);

    sub_1C5BC7B74();

    v11 = *(v10 + 72);

    v6 = v8;
    if (v9 <= v11)
    {
      v12 = v5;

      v13 = *(v8 + 1);
      v14 = *(v8 + 2);
      v15 = v8[3];

      goto LABEL_6;
    }
  }

  v12 = v5;

  v13 = 0;
  v14 = 0;
  v15 = 0.0;
LABEL_6:
  swift_getKeyPath();
  v21[0] = v12;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  v16 = *(v12 + 88);
  if (!v16)
  {
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!v14)
  {
LABEL_12:

    goto LABEL_18;
  }

  v17 = *(v12 + 96);
  if (*(v12 + 80) == v13 && v16 == v14)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v18 = sub_1C5BCBDE4();
    swift_bridgeObjectRetain_n();
    if ((v18 & 1) == 0)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_18;
    }
  }

  swift_bridgeObjectRelease_n();
  if (v17 == v15)
  {
LABEL_15:

    return;
  }

LABEL_18:
  v21[0] = v13;
  v21[1] = v14;
  *&v21[2] = v15;

  sub_1C5A839F8(v21);
  if (v14)
  {
    v19 = *MEMORY[0x1E69DD888];
    v20 = sub_1C5BCAE44();

    UIAccessibilityPostNotification(v19, v20);
  }
}

uint64_t sub_1C5A83EC4(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1C5BC7D64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v15 = v1;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  if (*(v1 + 104) != v2)
  {
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v3, qword_1EC1A6BC0);
    (*(v4 + 16))(v6, v8, v3);

    v9 = sub_1C5BC7D44();
    v10 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v14 = v4;
      v12 = v11;
      *v11 = 67109120;
      swift_getKeyPath();
      v15 = v1;
      sub_1C5BC7B74();

      *(v12 + 1) = *(v1 + 104);

      _os_log_impl(&dword_1C5922000, v9, v10, "ScrubberInteractionViewModel.showSectionDelimiters changed to %{BOOL}d", v12, 8u);
      v13 = v12;
      v4 = v14;
      MEMORY[0x1C69510F0](v13, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_1C5A84154()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  return *(v0 + 104);
}

uint64_t sub_1C5A841F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_1C5A8429C(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 104);
  if (v3 == v2)
  {
    *(v1 + 104) = v2;

    return sub_1C5A83EC4(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
    sub_1C5BC7B64();
  }
}

void sub_1C5A843D0(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_1C5BC7D64();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v27 - v13;
  v15 = *(v3 + 72);
  swift_getKeyPath();
  v27[1] = v15;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  if (*(v15 + 57) && *(v15 + 57) == 1)
  {

LABEL_5:
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v8, qword_1EC1A6BC0);
    (*(v9 + 16))(v12, v17, v8);
    v18 = sub_1C5BC7D44();
    v19 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C5922000, v18, v19, "ScrubberInteractionViewModel ignoring request to show section delimiters because the scrubber is tracking.", v20, 2u);
      MEMORY[0x1C69510F0](v20, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    return;
  }

  v16 = sub_1C5BCBDE4();

  if (v16)
  {
    goto LABEL_5;
  }

  if (a2)
  {
    v21 = 3.5;
  }

  else
  {
    v21 = *&a1;
  }

  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v8, qword_1EC1A6BC0);
  (*(v9 + 16))(v14, v22, v8);
  v23 = sub_1C5BC7D44();
  v24 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    *(v25 + 4) = v21;
    *(v25 + 12) = 2048;
    *(v25 + 14) = a3;
    _os_log_impl(&dword_1C5922000, v23, v24, "ScrubberInteractionViewModel showing section delimiters for %f seconds with %f secs delay.", v25, 0x16u);
    MEMORY[0x1C69510F0](v25, -1, -1);
  }

  (*(v9 + 8))(v14, v8);
  if (qword_1EC190738 != -1)
  {
    swift_once();
  }

  sub_1C5BCAAB4();
  [*(v4 + 112) invalidate];
  v26 = *(v4 + 112);
  *(v4 + 112) = 0;

  sub_1C5BC87F4();

  sub_1C5A84974(v21 + a3);
}

uint64_t sub_1C5A8484C(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 1;
    return sub_1C5A83EC4(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
    sub_1C5BC7B64();
  }
}

void sub_1C5A84974(double a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v9[4] = sub_1C5AA38E0;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1C5A07474;
  v9[3] = &block_descriptor_562;
  v6 = _Block_copy(v9);

  v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:a1];
  _Block_release(v6);
  v8 = *(v1 + 112);
  *(v1 + 112) = v7;
}

uint64_t sub_1C5A84AA4(double a1)
{
  v2 = sub_1C5BC7D64();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v10 = *(Strong + 72);
  swift_getKeyPath();
  v21[2] = v10;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  if (*(v10 + 57) && *(v10 + 57) == 1)
  {

LABEL_7:
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v2, qword_1EC1A6BC0);
    (*(v3 + 16))(v6, v12, v2);
    v13 = sub_1C5BC7D44();
    v14 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C5922000, v13, v14, "ScrubberInteractionViewModel ignoring section delimiter dismissal because the scrubber is tracking.", v15, 2u);
      MEMORY[0x1C69510F0](v15, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  v11 = sub_1C5BCBDE4();

  if (v11)
  {

    goto LABEL_7;
  }

  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v2, qword_1EC1A6BC0);
  (*(v3 + 16))(v8, v17, v2);
  v18 = sub_1C5BC7D44();
  v19 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = a1;
    _os_log_impl(&dword_1C5922000, v18, v19, "ScrubberInteractionViewModel dismissing section delimiters because %f seconds elapsed.", v20, 0xCu);
    MEMORY[0x1C69510F0](v20, -1, -1);
  }

  (*(v3 + 8))(v8, v2);
  if (qword_1EC190730 != -1)
  {
    swift_once();
  }

  sub_1C5BC87F4();
}

uint64_t sub_1C5A84EF0(uint64_t a1)
{
  if (*(a1 + 104))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
    sub_1C5BC7B64();
  }

  else
  {
    *(a1 + 104) = 0;
    return sub_1C5A83EC4(0);
  }
}

uint64_t sub_1C5A85010(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1C5BC7D64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v15 = v1;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  if (*(v1 + 120) != v2)
  {
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v3, qword_1EC1A6BC0);
    (*(v4 + 16))(v6, v8, v3);

    v9 = sub_1C5BC7D44();
    v10 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v14 = v4;
      v12 = v11;
      *v11 = 67109120;
      swift_getKeyPath();
      v15 = v1;
      sub_1C5BC7B74();

      *(v12 + 1) = *(v1 + 120);

      _os_log_impl(&dword_1C5922000, v9, v10, "ScrubberInteractionViewModel.isTooltipPresented changed to %{BOOL}d", v12, 8u);
      v13 = v12;
      v4 = v14;
      MEMORY[0x1C69510F0](v13, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_1C5A852A0()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  return *(v0 + 120);
}

uint64_t sub_1C5A85340@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_1C5A853E8(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 120);
  if (v3 == v2)
  {
    *(v1 + 120) = v2;

    return sub_1C5A85010(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A8551C(uint64_t a1, char a2)
{
  v3 = *(a1 + 120);
  if (v3 == (a2 & 1))
  {
    *(a1 + 120) = a2 & 1;
    return sub_1C5A85010(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A85640(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    if (*(a2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
      sub_1C5BC7B64();
    }

    else
    {
      *(a2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) = 0;
      return sub_1C5A8672C(0);
    }
  }

  return result;
}

void sub_1C5A85760()
{
  [*(v0 + 128) invalidate];
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_1C5AA38D8;
  v6[5] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1C5A07474;
  v6[3] = &block_descriptor_549;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:1.0];
  _Block_release(v3);
  v5 = *(v0 + 128);
  *(v0 + 128) = v4;
}

uint64_t sub_1C5A85878(void *a1)
{
  v2 = sub_1C5BC9704();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 invalidate];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getKeyPath();
    v10[2] = v7;
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
    sub_1C5BC7B74();

    if (*(v7 + 120))
    {
      if (qword_1EC190788 != -1)
      {
        v8 = swift_once();
      }

      MEMORY[0x1EEE9AC00](v8);
      v10[-2] = v7;
      LOBYTE(v10[-1]) = 0;
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = v7;

      sub_1C5BC96F4();
      sub_1C5BC87E4();

      return (*(v3 + 8))(v5, v2);
    }

    else
    {
    }
  }

  return result;
}

BOOL sub_1C5A85AF4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1C5A85B30(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1C5BC7D64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v24 = v2;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  v11 = *&v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession;
  if (*(*&v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8))
  {
    if (a2)
    {
      return result;
    }
  }

  else if ((a2 & 1) == 0 && *v11 == *&a1)
  {
    return result;
  }

  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_1EC1A6BC0);
  (*(v7 + 16))(v9, v12, v6);

  v13 = sub_1C5BC7D44();
  v14 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26 = v22;
    *v15 = 136446210;
    swift_getKeyPath();
    v23 = v7;
    v24 = v3;
    HIDWORD(v21) = v14;
    sub_1C5BC7B74();

    v16 = *(v11 + 8);
    v24 = *v11;
    v25 = v16;
    v17 = sub_1C5BCAEA4();
    v19 = sub_1C592ADA8(v17, v18, &v26);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1C5922000, v13, BYTE4(v21), "ScrubberInteractionViewModel.tooltipSession changed to %{public}s", v15, 0xCu);
    v20 = v22;
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1C69510F0](v20, -1, -1);
    MEMORY[0x1C69510F0](v15, -1, -1);

    return (*(v23 + 8))(v9, v6);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1C5A85E60()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  return *(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession);
}

uint64_t sub_1C5A85F10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  v5 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C5A85FCC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession;
  v6 = *(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession);
  v7 = *(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8);
  if (v7)
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
      sub_1C5BC7B64();
    }
  }

  else if ((a2 & 1) != 0 || *&v6 != *&a1)
  {
    goto LABEL_9;
  }

  *v5 = *&a1;
  *(v5 + 8) = a2 & 1;

  return sub_1C5A85B30(v6, v7);
}

uint64_t sub_1C5A86138(double a1)
{
  v2 = v1;
  v4 = sub_1C5BC9704();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C5BC7AC4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  sub_1C5A85760();
  swift_getKeyPath();
  v28 = v1;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  v14 = &v1[OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession];
  v15 = 0;
  v16 = &qword_1EC194FB8[9];
  if ((v1[OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8] & 1) == 0)
  {
    sub_1C5BC7AB4();
    v17 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_latestJumpDate;
    swift_beginAccess();
    (*(v7 + 16))(v10, &v2[v17], v6);
    sub_1C5BC7A74();
    v19 = v18;
    v20 = *(v7 + 8);
    v20(v10, v6);
    v13 = (v20)(v12, v6);
    if (v19 <= 3.0)
    {
      swift_getKeyPath();
      v28 = v2;
      sub_1C5BC7B74();

      v16 = &qword_1EC194FB8[9];
      if ((v14[8] & 1) == 0)
      {
        v15 = *v14;
      }
    }

    else
    {
      v16 = qword_1EC194FB8 + 72;
    }
  }

  MEMORY[0x1EEE9AC00](v13);
  *(&v25 - 4) = v2;
  *(&v25 - 3) = v15;
  *(&v25 - 2) = a1;
  sub_1C5BC87F4();
  sub_1C5BC7AB4();
  v21 = v16[340];
  swift_beginAccess();
  (*(v7 + 40))(&v2[v21], v12, v6);
  swift_endAccess();
  swift_getKeyPath();
  v28 = v2;
  sub_1C5BC7B74();

  if ((v2[120] & 1) == 0)
  {
    if (qword_1EC190788 != -1)
    {
      result = swift_once();
    }

    MEMORY[0x1EEE9AC00](result);
    *(&v25 - 2) = v2;
    *(&v25 - 8) = 1;
    v23 = swift_allocObject();
    *(v23 + 16) = 1;
    *(v23 + 24) = v2;

    v24 = v25;
    sub_1C5BC96F4();
    sub_1C5BC87E4();

    return (*(v26 + 8))(v24, v27);
  }

  return result;
}

uint64_t sub_1C5A865E0(uint64_t a1, double a2, double a3)
{
  v3 = a2 + a3;
  v4 = a1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession;
  if ((*(a1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8) & 1) != 0 || (v5 = *v4, v3 != *v4))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
    sub_1C5BC7B64();
  }

  else
  {
    *v4 = v3;
    *(v4 + 8) = 0;
    return sub_1C5A85B30(*&v5, 0);
  }
}

uint64_t sub_1C5A8672C(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = sub_1C5BC7D64();
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v17 = v1;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  v9 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating;
  if (*(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) != v4)
  {
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v5, qword_1EC1A6BC0);
    (*(v16 + 16))(v7, v10, v5);

    v11 = sub_1C5BC7D44();
    v12 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109376;
      *(v13 + 4) = a1 & 1;
      *(v13 + 8) = 1024;
      swift_getKeyPath();
      v17 = v2;
      v15 = v12;
      sub_1C5BC7B74();

      *(v13 + 10) = *(v2 + v9);

      _os_log_impl(&dword_1C5922000, v11, v15, "ScrubberInteractionViewModel.isMarqueeAnimating changed from %{BOOL}d to %{BOOL}d", v13, 0xEu);
      MEMORY[0x1C69510F0](v13, -1, -1);
    }

    else
    {
    }

    return (*(v16 + 8))(v7, v5);
  }

  return result;
}

uint64_t sub_1C5A869DC()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  return *(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating);
}

uint64_t sub_1C5A86A84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  *a2 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating);
  return result;
}

uint64_t sub_1C5A86B34(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) = v2;

    return sub_1C5A8672C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
    sub_1C5BC7B64();
  }
}

void sub_1C5A86C70(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = sub_1C5BC7D64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub;
  if (*(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub) != v4)
  {
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v5, qword_1EC1A6BC0);
    (*(v6 + 16))(v8, v10, v5);

    v11 = sub_1C5BC7D44();
    v12 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109376;
      *(v13 + 4) = a1 & 1;
      *(v13 + 8) = 1024;
      *(v13 + 10) = *(v2 + v9);

      _os_log_impl(&dword_1C5922000, v11, v12, "ScrubberInteractionViewModel.hasPausedMidScrub changed from %{BOOL}d to %{BOOL}d", v13, 0xEu);
      MEMORY[0x1C69510F0](v13, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    if (*(v2 + v9) == 1)
    {
      if (*(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) == 1)
      {
        *(v2 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) = 1;
        sub_1C5A8672C(1);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v17[-2] = v2;
        LOBYTE(v17[-1]) = 1;
        v17[1] = v2;
        sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
        sub_1C5BC7B64();
      }

      v15 = *MEMORY[0x1E69DD888];
      sub_1C5A86FA4();
      v16 = sub_1C5BCAE44();

      UIAccessibilityPostNotification(v15, v16);
    }
  }
}

uint64_t sub_1C5A86FA4()
{
  v1 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C5BCAE14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C5A9D5E4();
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  if (*(v0 + 88))
  {

    sub_1C5BCAE04();
    sub_1C5BCADF4();
    sub_1C5BCADE4();

    sub_1C5BCADF4();
    sub_1C5BCADE4();
    sub_1C5BCADF4();
    sub_1C5BCADE4();

    sub_1C5BCADF4();
    sub_1C5BCAE24();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1C5BCAE04();
  sub_1C5BCADF4();
  sub_1C5BCADE4();
  sub_1C5BCADF4();
  sub_1C5BCADE4();

  sub_1C5BCADF4();
  sub_1C5BCAE24();
  if (qword_1EDA4E5D0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v4 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  return sub_1C5BCAE94();
}

void sub_1C5A87328()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_pauseDetectionTimer;
  [*(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_pauseDetectionTimer) invalidate];
  v3 = *(v0 + v2);
  *(v0 + v2) = 0;

  swift_getKeyPath();
  v12[0] = v0;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  if ((*(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) & 1) == 0)
  {
    v4 = sub_1C5A878C0();
    if ((v4 & 0x100000000) == 0)
    {
      v5 = *&v4;
      v6 = *(*(v0 + 72) + 80);
      swift_getKeyPath();
      v12[0] = v6;
      sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
      sub_1C5BC7B74();

      if ((*(v6 + 48) & 1) == 0)
      {
        *(v0 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_relativePointPositionAtLastTimerTick) = *(v6 + 40) * v5;
        v7 = objc_opt_self();
        v8 = swift_allocObject();
        swift_weakInit();
        v12[4] = sub_1C5AA3818;
        v12[5] = v8;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 1107296256;
        v12[2] = sub_1C5A07474;
        v12[3] = &block_descriptor_531;
        v9 = _Block_copy(v12);

        v10 = [v7 scheduledTimerWithTimeInterval:1 repeats:v9 block:1.0];
        _Block_release(v9);
        v11 = *(v1 + v2);
        *(v1 + v2) = v10;
      }
    }
  }
}

uint64_t sub_1C5A8758C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1C5A878C0();
    if ((v2 & 0x100000000) == 0)
    {
      v3 = *&v2;
      v4 = *(*(v1 + 72) + 80);
      swift_getKeyPath();
      sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
      sub_1C5BC7B74();

      if ((*(v4 + 48) & 1) == 0)
      {
        v5 = *(v4 + 40) * v3;
        v6 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_relativePointPositionAtLastTimerTick;
        v7 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub);
        *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub) = vabdd_f64(v5, *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_relativePointPositionAtLastTimerTick)) < 5.0;
        sub_1C5A86C70(v7);
        *(v1 + v6) = v5;
      }
    }
  }

  return result;
}

uint64_t sub_1C5A876CC()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_latestJumpDate;
  v2 = sub_1C5BC7AC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel___observationRegistrar;
  v4 = sub_1C5BC7BB4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A877D8()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v0 + 32) = *MEMORY[0x1E69DDCE0];
  *(v0 + 48) = v2;
  *(v0 + 64) = 0x3FF0000000000000;
  type metadata accessor for ScrubberPlayhead(0);
  v3 = swift_allocObject();
  sub_1C5A8A280();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 72) = v3;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  sub_1C5BC7A64();
  v4 = v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) = 0;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_pauseDetectionTimer) = 0;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_relativePointPositionAtLastTimerTick) = 0;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel_hasPausedMidScrub) = 0;
  sub_1C5BC7BA4();
  return v1;
}

unint64_t sub_1C5A878C0()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 80);
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 24);
    swift_getKeyPath();
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
    sub_1C5BC7B74();

    *&v6 = *(v1 + 72) / v5;
    v4 = v6;
  }

  return v4 | (v3 << 32);
}

uint64_t sub_1C5A87A0C()
{
  v1 = *(v0 + 72);
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  return *(v1 + 48);
}

uint64_t sub_1C5A87AB0()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  return *(v0 + 32);
}

uint64_t sub_1C5A87B54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  v5 = *(v3 + 40);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C5A87C04(uint64_t a1, char a2)
{
  if (*(v2 + 40))
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
      sub_1C5BC7B64();
    }
  }

  else if ((a2 & 1) != 0 || *(v2 + 32) != *&a1)
  {
    goto LABEL_9;
  }

  *(v2 + 32) = *&a1;
  *(v2 + 40) = a2 & 1;

  return sub_1C5A8A408();
}

uint64_t sub_1C5A87D60()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  return *(v0 + 48);
}

uint64_t sub_1C5A87E04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C5A87EB4(uint64_t a1, char a2)
{
  if (*(v2 + 56))
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
      sub_1C5BC7B64();
    }
  }

  else if ((a2 & 1) != 0 || *(v2 + 48) != a1)
  {
    goto LABEL_9;
  }

  *(v2 + 48) = a1;
  *(v2 + 56) = a2 & 1;

  return sub_1C5A8A408();
}

uint64_t sub_1C5A8800C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = 1701602409;
  v5 = sub_1C5BC7D64();
  v52 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v49[-v9];
  v11 = *a1;
  swift_getKeyPath();
  v54 = v2;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  v12 = 0xE800000000000000;
  v13 = 0x676E696B63617274;
  if (*(v2 + 57) != 1)
  {
    v13 = 0x6172656C65636564;
    v12 = 0xEC000000676E6974;
  }

  if (*(v2 + 57))
  {
    v14 = v13;
  }

  else
  {
    v14 = 1701602409;
  }

  if (*(v2 + 57))
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  if (v11)
  {
    if (v11 == 1)
    {
      v16 = 0xE800000000000000;
      if (v14 != 0x676E696B63617274)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v16 = 0xEC000000676E6974;
      if (v14 != 0x6172656C65636564)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v16 = 0xE400000000000000;
    if (v14 != 1701602409)
    {
      goto LABEL_18;
    }
  }

  if (v15 == v16)
  {
  }

LABEL_18:
  v51 = v5;
  v18 = sub_1C5BCBDE4();

  if ((v18 & 1) == 0)
  {
    swift_getKeyPath();
    v54 = v2;
    sub_1C5BC7B74();

    LOBYTE(v54) = *(v2 + 57);
    LOBYTE(v53) = v11;
    if (sub_1C5A88790(&v53))
    {
      v19 = v51;
      if (qword_1EC190798 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v19, qword_1EC1A6BC0);
      v21 = v52;
      (*(v52 + 16))(v8, v20, v19);

      v22 = sub_1C5BC7D44();
      v23 = sub_1C5BCB4F4();

      if (os_log_type_enabled(v22, v23))
      {
        v50 = v23;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v54 = v25;
        *v24 = 136446466;
        v26 = 0xE800000000000000;
        v27 = 0x676E696B63617274;
        if (v11 != 1)
        {
          v27 = 0x6172656C65636564;
          v26 = 0xEC000000676E6974;
        }

        if (v11)
        {
          v28 = v27;
        }

        else
        {
          v28 = 1701602409;
        }

        if (v11)
        {
          v29 = v26;
        }

        else
        {
          v29 = 0xE400000000000000;
        }

        v30 = sub_1C592ADA8(v28, v29, &v54);

        *(v24 + 4) = v30;
        *(v24 + 12) = 2082;
        swift_getKeyPath();
        v53 = v2;
        sub_1C5BC7B74();

        if (*(v2 + 57))
        {
          v31 = v52;
          if (*(v2 + 57) == 1)
          {
            v32 = 0xE800000000000000;
            v4 = 0x676E696B63617274;
          }

          else
          {
            v4 = 0x6172656C65636564;
            v32 = 0xEC000000676E6974;
          }
        }

        else
        {
          v32 = 0xE400000000000000;
          v31 = v52;
        }

        v47 = sub_1C592ADA8(v4, v32, &v54);

        *(v24 + 14) = v47;
        _os_log_impl(&dword_1C5922000, v22, v50, "ScrubberInteractionViewModel.scrubState changed from %{public}s to %{public}s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v25, -1, -1);
        MEMORY[0x1C69510F0](v24, -1, -1);

        return (*(v31 + 8))(v8, v51);
      }

      else
      {

        return (*(v21 + 8))(v8, v19);
      }
    }

    else
    {
      v33 = v51;
      if (qword_1EC190798 != -1)
      {
        swift_once();
      }

      v34 = __swift_project_value_buffer(v33, qword_1EC1A6BC0);
      v35 = v52;
      (*(v52 + 16))(v10, v34, v33);

      v36 = sub_1C5BC7D44();
      v37 = sub_1C5BCB4E4();

      if (os_log_type_enabled(v36, v37))
      {
        v50 = v37;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v54 = v39;
        *v38 = 136446466;
        v40 = 0xE800000000000000;
        v41 = 0x676E696B63617274;
        if (v11 != 1)
        {
          v41 = 0x6172656C65636564;
          v40 = 0xEC000000676E6974;
        }

        if (v11)
        {
          v42 = v41;
        }

        else
        {
          v42 = 1701602409;
        }

        if (v11)
        {
          v43 = v40;
        }

        else
        {
          v43 = 0xE400000000000000;
        }

        v44 = sub_1C592ADA8(v42, v43, &v54);

        *(v38 + 4) = v44;
        *(v38 + 12) = 2082;
        swift_getKeyPath();
        v53 = v2;
        sub_1C5BC7B74();

        if (*(v2 + 57))
        {
          v45 = v52;
          if (*(v2 + 57) == 1)
          {
            v46 = 0xE800000000000000;
            v4 = 0x676E696B63617274;
          }

          else
          {
            v4 = 0x6172656C65636564;
            v46 = 0xEC000000676E6974;
          }
        }

        else
        {
          v46 = 0xE400000000000000;
          v45 = v52;
        }

        v48 = sub_1C592ADA8(v4, v46, &v54);

        *(v38 + 14) = v48;
        _os_log_impl(&dword_1C5922000, v36, v50, "ScrubberInteractionViewModel.scrubState underwent illegal transition from %{public}s to %{public}s. This could cause animation and behavioural issues.", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v39, -1, -1);
        MEMORY[0x1C69510F0](v38, -1, -1);

        return (*(v45 + 8))(v10, v51);
      }

      else
      {

        return (*(v35 + 8))(v10, v33);
      }
    }
  }

  return result;
}

uint64_t sub_1C5A88790(_BYTE *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = 0xE800000000000000;
  v5 = 0x676E696B63617274;
  if (v2 != 1)
  {
    v5 = 0x6172656C65636564;
    v4 = 0xEC000000676E6974;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701602409;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x676E696B63617274;
  if (v3 != 1)
  {
    v9 = 0x6172656C65636564;
    v8 = 0xEC000000676E6974;
  }

  if (*v1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1701602409;
  }

  if (*v1)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v6 != v10 || v7 != v11)
  {
    v13 = sub_1C5BCBDE4();

    if ((v13 & 1) == 0)
    {
      if (v3)
      {
        if (v3 == 1)
        {
          goto LABEL_24;
        }

        if (v2 == 1)
        {
          v12 = 1;
          goto LABEL_20;
        }
      }

      else if (v2 > 1)
      {
        v12 = 1;
        goto LABEL_20;
      }

      v12 = sub_1C5BCBDE4();
      goto LABEL_20;
    }

LABEL_24:
    v12 = 1;
    return v12 & 1;
  }

  v12 = 1;
LABEL_20:

  return v12 & 1;
}

uint64_t sub_1C5A8896C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  *a1 = *(v1 + 57);
  return result;
}

uint64_t sub_1C5A88A14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  *a2 = *(v3 + 57);
  return result;
}

uint64_t sub_1C5A88ABC(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676E696B63617274;
  if (*(v1 + 57) != 1)
  {
    v4 = 0x6172656C65636564;
    v3 = 0xEC000000676E6974;
  }

  if (*(v1 + 57))
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701602409;
  }

  if (*(v1 + 57))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E696B63617274;
  if (v2 != 1)
  {
    v8 = 0x6172656C65636564;
    v7 = 0xEC000000676E6974;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701602409;
  }

  if (v2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {

LABEL_21:
    v12 = *(v1 + 57);
    *(v1 + 57) = v2;
    LOBYTE(v15) = v12;
    return sub_1C5A8800C(&v15);
  }

  v11 = sub_1C5BCBDE4();

  if (v11)
  {
    goto LABEL_21;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B64();
}

uint64_t sub_1C5A88CC0()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  return *(v0 + 64);
}

uint64_t sub_1C5A88D60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1C5A88E08(uint64_t result)
{
  if (*(v1 + 64) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
    sub_1C5BC7B64();
  }

  return result;
}

double sub_1C5A88F0C()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  return *(v0 + 72);
}

double sub_1C5A88FAC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  result = *(v3 + 72);
  *a2 = result;
  return result;
}

void sub_1C5A89054(double a1)
{
  if (*(v1 + 72) == a1)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A8916C(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = sub_1C5BC7D64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_1EC1A6BC0);
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_1C5BC7D44();
  v16 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = v7;
    v18 = v17;
    *v17 = 134218240;
    *(v17 + 4) = a1;
    *(v17 + 12) = 2048;
    swift_getKeyPath();
    v25 = v1;
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
    sub_1C5BC7B74();

    *(v18 + 14) = *(v1 + 88);
    _os_log_impl(&dword_1C5922000, v15, v16, "ScrubberViewModel.playbackRate changed from %f to %f", v18, 0x16u);
    v19 = v18;
    v7 = v24;
    MEMORY[0x1C69510F0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  sub_1C5A8A408();
  v20 = sub_1C5BC7AC4();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  v21 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_latestDate;
  swift_beginAccess();
  sub_1C59400B0(v2 + v21, v7, &unk_1EC193058);
  swift_beginAccess();
  sub_1C5AA3184(v9, v2 + v21);
  swift_endAccess();
  sub_1C5A89E90(v7);
  sub_1C5924EF4(v7, &unk_1EC193058);
  return sub_1C5924EF4(v9, &unk_1EC193058);
}

double sub_1C5A8950C()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  return *(v0 + 88);
}

double sub_1C5A895AC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  result = *(v3 + 88);
  *a2 = result;
  return result;
}

uint64_t sub_1C5A89654(double a1)
{
  v3 = *(v1 + 88);
  if (v3 == a1)
  {
    *(v1 + 88) = a1;

    return sub_1C5A8916C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
    sub_1C5BC7B64();
  }
}