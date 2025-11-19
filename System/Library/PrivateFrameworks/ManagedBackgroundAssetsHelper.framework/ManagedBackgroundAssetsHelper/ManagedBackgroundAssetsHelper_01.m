uint64_t sub_1D2FF3DD4(uint64_t a1)
{
  v2 = sub_1D2FF6818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF3E10(uint64_t a1)
{
  v2 = sub_1D2FF6818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LicenseRecord.StaticRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7494D8, &unk_1D30EF6C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FF6818();
  sub_1D30E992C();
  v11 = *v3;
  v16 = 0;
  sub_1D30E975C();
  if (!v2)
  {
    v15 = v3[1];
    v14[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749208, &qword_1D30EEC18);
    sub_1D2FF68C0(&qword_1EC749200, &qword_1EC749210);
    sub_1D30E974C();
    v14[14] = *(v3 + 16);
    v14[13] = 2;
    sub_1D2FF686C();
    sub_1D30E974C();
    v12 = *(type metadata accessor for LicenseRecord.StaticRepresentation(0) + 28);
    v14[12] = 3;
    sub_1D30E8A2C();
    sub_1D2FF675C(&qword_1EC7491D8, MEMORY[0x1E6969530]);
    sub_1D30E974C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LicenseRecord.StaticRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1D30E8A2C();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7494F0, &qword_1D30EF6D0);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for LicenseRecord.StaticRepresentation(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D2FF6818();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v23 = v12;
  v24 = v7;
  v18 = v27;
  v19 = v28;
  v35 = 0;
  v20 = v15;
  *v15 = sub_1D30E969C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749208, &qword_1D30EEC18);
  v34 = 1;
  sub_1D2FF68C0(&qword_1EC749218, &qword_1EC749220);
  sub_1D30E967C();
  *(v15 + 1) = v30;
  v32 = 2;
  sub_1D2FF695C();
  sub_1D30E967C();
  v15[16] = v33;
  v31 = 3;
  sub_1D2FF675C(&qword_1EC7491E8, MEMORY[0x1E6969530]);
  v21 = v24;
  sub_1D30E967C();
  (*(v18 + 8))(v11, v19);
  (*(v25 + 32))(v20 + *(v23 + 28), v21, v4);
  sub_1D2FF69B0(v20, v26, type metadata accessor for LicenseRecord.StaticRepresentation);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1D2FF6A18(v20, type metadata accessor for LicenseRecord.StaticRepresentation);
}

uint64_t sub_1D2FF4524(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  if (sub_1D30E89FC())
  {
    return *a1 < *a2;
  }

  return sub_1D30E89EC();
}

BOOL sub_1D2FF459C(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  if (sub_1D30E89FC())
  {
    v6 = *a2 < *a1;
  }

  else
  {
    v6 = sub_1D30E89EC();
  }

  return (v6 & 1) == 0;
}

BOOL sub_1D2FF4604(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  if (sub_1D30E89FC())
  {
    v6 = *a1 < *a2;
  }

  else
  {
    v6 = sub_1D30E89EC();
  }

  return (v6 & 1) == 0;
}

uint64_t sub_1D2FF466C(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  if (sub_1D30E89FC())
  {
    return *a2 < *a1;
  }

  return sub_1D30E89EC();
}

uint64_t sub_1D2FF46FC()
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D2FF4800()
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  sub_1D30E8F1C();
}

uint64_t sub_1D2FF48A8()
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  sub_1D2FF68C0(&qword_1EC749218, &qword_1EC749220);
  sub_1D30E8F0C();

  return v0;
}

uint64_t sub_1D2FF49E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  sub_1D2FF68C0(&qword_1EC749218, &qword_1EC749220);
  sub_1D30E8F0C();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2FF4B30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord);
  sub_1D30E8ADC();
}

uint64_t sub_1D2FF4BFC()
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  sub_1D2FF68C0(&qword_1EC749200, &qword_1EC749210);
  sub_1D30E8F1C();
}

uint64_t sub_1D2FF4CE0()
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  sub_1D2FF7FF8();
  sub_1D30E8F0C();
}

double sub_1D2FF4DE8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  sub_1D2FF7FF8();
  sub_1D30E8F0C();

  *a2 = v4;
  a2[1] = v5;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_1D2FF4F00(__int128 *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v2 = *a2;
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord);
  sub_1D30E8ADC();
}

uint64_t sub_1D2FF4FDC(uint64_t a1, __int128 *a2)
{
  swift_getKeyPath();
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  sub_1D2FF8108();
  sub_1D30E8F1C();
}

uint64_t sub_1D2FF5094()
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  sub_1D2FF675C(&qword_1EC7491E8, MEMORY[0x1E6969530]);
  sub_1D30E8F0C();
}

uint64_t sub_1D2FF51CC(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  sub_1D2FF675C(&qword_1EC7491E8, MEMORY[0x1E6969530]);
  sub_1D30E8F0C();
}

uint64_t sub_1D2FF5304(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1D30E8A2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord);
  sub_1D30E8ADC();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D2FF548C()
{
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  sub_1D2FF675C(&qword_1EC7491D8, MEMORY[0x1E6969530]);
  sub_1D30E8F1C();
}

uint64_t sub_1D2FF5564@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_1D30E8A2C();
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v21 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v1;
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B10, type metadata accessor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  sub_1D30E8F0C();

  v20 = v26;
  v26 = v1;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF68C0(&qword_1EC749218, &qword_1EC749220);
  sub_1D30E8F0C();

  v5 = v26;
  v26 = v1;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF7FF8();
  sub_1D30E8F0C();

  v18 = v27;
  v19 = v26;
  v6 = v28;
  v7 = v31;
  v16 = v30;
  v17 = v29;
  v25 = v1;
  swift_getKeyPath();
  v8 = v21;
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EC7491E8, MEMORY[0x1E6969530]);
  sub_1D30E8F0C();
  v9 = v22;

  *v9 = v20;
  *(v9 + 8) = v5;
  v10 = (v7 >> 60) & 3;
  if (v10)
  {
    if (v10 != 1)
    {
      v11 = 0;
      v13 = v23;
      v12 = v24;
      goto LABEL_7;
    }

    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v13 = v23;
  v12 = v24;
  sub_1D2FF804C(v19, v18, v6, v17, v16, v7);
LABEL_7:
  *(v9 + 16) = v11;
  v14 = type metadata accessor for LicenseRecord.StaticRepresentation(0);
  return (*(v13 + 32))(v9 + *(v14 + 28), v8, v12);
}

uint64_t *sub_1D2FF5928(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1D30E8A2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749500, &qword_1D30EF6D8);
  v12 = sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  *&v18 = v6;
  *(&v18 + 1) = v6;
  *&v19 = v12;
  *(&v19 + 1) = v12;
  v3[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v3 + 2);
  sub_1D30E8ECC();
  sub_1D30E8AFC();
  v13 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  swift_getKeyPath();
  *&v18 = a1;
  sub_1D30E8DEC();

  v14 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  swift_getKeyPath();
  *&v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749208, &qword_1D30EEC18);
  sub_1D2FF68C0(&qword_1EC749200, &qword_1EC749210);
  sub_1D30E8DEC();

  v15 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  swift_getKeyPath();
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = 0x2000000000000000;
  sub_1D2FF8108();
  sub_1D30E8DEC();

  sub_1D30E8A0C();
  v16 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  swift_getKeyPath();
  sub_1D2FF675C(&qword_1EC7491D8, MEMORY[0x1E6969530]);
  sub_1D30E8DEC();

  (*(v8 + 8))(v11, v7);
  return v3;
}

uint64_t sub_1D2FF5D04(uint64_t a1, uint64_t *a2)
{
  sub_1D2FE022C(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  sub_1D2FE02DC(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t LicenseRecord.persistentBackingData.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  sub_1D2FE02DC(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t (*LicenseRecord.persistentBackingData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2FE022C(v1 + 16, v4);
  return sub_1D2FF5E50;
}

uint64_t *LicenseRecord.__allocating_init(backingData:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v5[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749500, &qword_1D30EF6D8);
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  v5[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v5 + 2);
  sub_1D30E8ECC();
  sub_1D30E8AFC();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v5 + 2);
  sub_1D2FE02DC(a1, (v5 + 2));
  swift_endAccess();
  return v5;
}

uint64_t *LicenseRecord.init(backingData:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749500, &qword_1D30EF6D8);
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  v2[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v2 + 2);
  sub_1D30E8ECC();
  sub_1D30E8AFC();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  sub_1D2FE02DC(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t LicenseRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper13LicenseRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LicenseRecord.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper13LicenseRecord___observationRegistrar;
  v2 = sub_1D30E8B0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t LicenseRecord.hashValue.getter()
{
  v1 = *v0;
  sub_1D30E98AC();
  sub_1D2FF675C(&qword_1EE313B00, type metadata accessor for LicenseRecord);
  sub_1D30E903C();
  return sub_1D30E98EC();
}

uint64_t *sub_1D2FF6270(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v5[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749500, &qword_1D30EF6D8);
  v5[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v5 + 2);
  sub_1D30E8ECC();
  sub_1D30E8AFC();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v5 + 2);
  sub_1D2FE02DC(a1, (v5 + 2));
  swift_endAccess();
  return v5;
}

uint64_t sub_1D2FF63A8(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  sub_1D2FE02DC(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t (*sub_1D2FF6400(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2FE022C(v1 + 16, v4);
  return sub_1D2FF8C70;
}

void sub_1D2FF6490(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1D2FE022C(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    sub_1D2FE02DC((v2 + 40), v3 + 16);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    sub_1D2FE02DC(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1D2FF654C()
{
  v1 = *v0;
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  return sub_1D30E8EFC();
}

uint64_t sub_1D2FF65C0()
{
  v1 = *v0;
  sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  return sub_1D30E8EEC();
}

uint64_t sub_1D2FF6634(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1D2FF675C(&qword_1EE313B08, type metadata accessor for LicenseRecord);

  return MEMORY[0x1EEDD9288](v3, v4, v2, v5);
}

unint64_t sub_1D2FF66B4()
{
  result = qword_1EC7494A0;
  if (!qword_1EC7494A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7494A0);
  }

  return result;
}

unint64_t sub_1D2FF6708()
{
  result = qword_1EC7494A8;
  if (!qword_1EC7494A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7494A8);
  }

  return result;
}

uint64_t sub_1D2FF675C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2FF67A4()
{
  result = qword_1EC7494C0;
  if (!qword_1EC7494C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7494C0);
  }

  return result;
}

unint64_t sub_1D2FF6818()
{
  result = qword_1EC7494E0;
  if (!qword_1EC7494E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7494E0);
  }

  return result;
}

unint64_t sub_1D2FF686C()
{
  result = qword_1EC7494E8;
  if (!qword_1EC7494E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7494E8);
  }

  return result;
}

uint64_t sub_1D2FF68C0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749208, &qword_1D30EEC18);
    sub_1D2FF675C(a2, type metadata accessor for LicenseRecord.ElementID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2FF695C()
{
  result = qword_1EC7494F8;
  if (!qword_1EC7494F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7494F8);
  }

  return result;
}

uint64_t sub_1D2FF69B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2FF6A18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2FF6A78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C61626F6C67 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xE900000000000044 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EB250 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t sub_1D2FF6BA0(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749590, &qword_1D30EFDD8);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749598, &qword_1D30EFDE0);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7495A0, &qword_1D30EFDE8);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7495A8, &unk_1D30EFDF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D2FF7EA8();
  v18 = v39;
  sub_1D30E990C();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1D30E96AC();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_1D302D668();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1D2FF7F50();
          sub_1D30E95FC();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v12;
        }

        v45 = 2;
        sub_1D2FF7EFC();
        v29 = v15;
        sub_1D30E95FC();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1D2FF7FA4();
        v29 = v15;
        sub_1D30E95FC();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1D30E94EC();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30) + 48);
    *v27 = &type metadata for LicenseRecord.StaticRepresentation.State;
    sub_1D30E960C();
    sub_1D30E94DC();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

uint64_t sub_1D2FF7110(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4965736E6563696CLL && a2 == 0xE900000000000044;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E656D656C65 && a2 == 0xEA00000000007344 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4474736575716572 && a2 == 0xEB00000000657461)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t _s29ManagedBackgroundAssetsHelper13LicenseRecordC14schemaMetadataSay9SwiftData6SchemaC08PropertyH0VGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491B8, &qword_1D30EEB60);
  v0 = *(sub_1D30E8F8C() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D30EE920;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C0, &qword_1D30EEB90);
  v4 = *(sub_1D30E8FCC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1D30EE930;
  sub_1D30E8FBC();
  v7 = sub_1D30E8FDC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1D30E8FEC();
  sub_1D2FF675C(&qword_1EE3140E0, MEMORY[0x1E697BD30]);
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  swift_getKeyPath();
  sub_1D30E8F7C();
  return v3;
}

uint64_t sub_1D2FF759C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2FF781C()
{
  result = sub_1D30E8B0C();
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

uint64_t sub_1D2FF7920()
{
  result = sub_1D30E8A4C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D2FF79CC()
{
  sub_1D2FF7A68();
  if (v0 <= 0x3F)
  {
    sub_1D30E8A2C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D2FF7A68()
{
  if (!qword_1EE314088)
  {
    type metadata accessor for LicenseRecord.ElementID(255);
    v0 = sub_1D30E919C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE314088);
    }
  }
}

uint64_t getEnumTagSinglePayload for LicenseRecord.StaticRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LicenseRecord.StaticRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2FF7C44()
{
  result = qword_1EC749518;
  if (!qword_1EC749518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749518);
  }

  return result;
}

unint64_t sub_1D2FF7C9C()
{
  result = qword_1EC749520;
  if (!qword_1EC749520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749520);
  }

  return result;
}

unint64_t sub_1D2FF7CF4()
{
  result = qword_1EC749528;
  if (!qword_1EC749528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749528);
  }

  return result;
}

unint64_t sub_1D2FF7D4C()
{
  result = qword_1EC749530;
  if (!qword_1EC749530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749530);
  }

  return result;
}

unint64_t sub_1D2FF7DA4()
{
  result = qword_1EC749538;
  if (!qword_1EC749538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749538);
  }

  return result;
}

unint64_t sub_1D2FF7DFC()
{
  result = qword_1EC749540;
  if (!qword_1EC749540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749540);
  }

  return result;
}

unint64_t sub_1D2FF7E54()
{
  result = qword_1EC749548;
  if (!qword_1EC749548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749548);
  }

  return result;
}

unint64_t sub_1D2FF7EA8()
{
  result = qword_1EC749570;
  if (!qword_1EC749570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749570);
  }

  return result;
}

unint64_t sub_1D2FF7EFC()
{
  result = qword_1EC749578;
  if (!qword_1EC749578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749578);
  }

  return result;
}

unint64_t sub_1D2FF7F50()
{
  result = qword_1EC749580;
  if (!qword_1EC749580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749580);
  }

  return result;
}

unint64_t sub_1D2FF7FA4()
{
  result = qword_1EC749588;
  if (!qword_1EC749588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749588);
  }

  return result;
}

unint64_t sub_1D2FF7FF8()
{
  result = qword_1EC7495B0;
  if (!qword_1EC7495B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495B0);
  }

  return result;
}

void sub_1D2FF804C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = (a6 >> 60) & 3;
  if (v7 == 1)
  {
  }

  else if (!v7)
  {

    sub_1D2FF1804(a3, a4);

    sub_1D2FF1804(a5, a6);
  }
}

uint64_t sub_1D2FF80D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D2FF548C();
}

unint64_t sub_1D2FF8108()
{
  result = qword_1EC7495B8;
  if (!qword_1EC7495B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495B8);
  }

  return result;
}

uint64_t sub_1D2FF815C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D2FF4BFC();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_29ManagedBackgroundAssetsHelper13LicenseRecordC5StateO(uint64_t a1)
{
  if (((*(a1 + 40) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 40) >> 60) & 3;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D2FF81C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 48))
  {
    return (*a1 + 14);
  }

  v3 = ((*(a1 + 40) >> 60) & 3 | (*(a1 + 24) >> 58) & 0xC) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D2FF8224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = ((-a2 >> 2) & 3) << 60;
      *(result + 32) = 0;
      *(result + 40) = (((-a2 >> 2) & 3 | (4 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_1D2FF82A0(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
    *(result + 24) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 40) = v2;
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x2000000000000000;
  }

  return result;
}

unint64_t sub_1D2FF8338()
{
  result = qword_1EC7495C0;
  if (!qword_1EC7495C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495C0);
  }

  return result;
}

unint64_t sub_1D2FF8390()
{
  result = qword_1EC7495C8;
  if (!qword_1EC7495C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495C8);
  }

  return result;
}

unint64_t sub_1D2FF83E8()
{
  result = qword_1EC7495D0;
  if (!qword_1EC7495D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495D0);
  }

  return result;
}

unint64_t sub_1D2FF8440()
{
  result = qword_1EC7495D8;
  if (!qword_1EC7495D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495D8);
  }

  return result;
}

unint64_t sub_1D2FF8498()
{
  result = qword_1EC7495E0;
  if (!qword_1EC7495E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495E0);
  }

  return result;
}

unint64_t sub_1D2FF84F0()
{
  result = qword_1EC7495E8;
  if (!qword_1EC7495E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495E8);
  }

  return result;
}

unint64_t sub_1D2FF8548()
{
  result = qword_1EC7495F0;
  if (!qword_1EC7495F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495F0);
  }

  return result;
}

unint64_t sub_1D2FF85A0()
{
  result = qword_1EC7495F8;
  if (!qword_1EC7495F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7495F8);
  }

  return result;
}

unint64_t sub_1D2FF85F8()
{
  result = qword_1EC749600;
  if (!qword_1EC749600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749600);
  }

  return result;
}

unint64_t sub_1D2FF864C()
{
  result = qword_1EC749628;
  if (!qword_1EC749628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749628);
  }

  return result;
}

unint64_t sub_1D2FF86A0()
{
  result = qword_1EC749630;
  if (!qword_1EC749630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749630);
  }

  return result;
}

unint64_t sub_1D2FF86F4()
{
  result = qword_1EC749638;
  if (!qword_1EC749638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749638);
  }

  return result;
}

unint64_t sub_1D2FF8748()
{
  result = qword_1EC749640;
  if (!qword_1EC749640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749640);
  }

  return result;
}

unint64_t sub_1D2FF879C()
{
  result = qword_1EC749648;
  if (!qword_1EC749648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749648);
  }

  return result;
}

unint64_t sub_1D2FF87F0()
{
  result = qword_1EC749670;
  if (!qword_1EC749670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749670);
  }

  return result;
}

unint64_t sub_1D2FF8888()
{
  result = qword_1EC749678;
  if (!qword_1EC749678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749678);
  }

  return result;
}

unint64_t sub_1D2FF88E0()
{
  result = qword_1EC749680;
  if (!qword_1EC749680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749680);
  }

  return result;
}

unint64_t sub_1D2FF8938()
{
  result = qword_1EC749688;
  if (!qword_1EC749688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749688);
  }

  return result;
}

unint64_t sub_1D2FF8990()
{
  result = qword_1EC749690;
  if (!qword_1EC749690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749690);
  }

  return result;
}

unint64_t sub_1D2FF89E8()
{
  result = qword_1EC749698;
  if (!qword_1EC749698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749698);
  }

  return result;
}

unint64_t sub_1D2FF8A40()
{
  result = qword_1EC7496A0;
  if (!qword_1EC7496A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7496A0);
  }

  return result;
}

unint64_t sub_1D2FF8A98()
{
  result = qword_1EC7496A8;
  if (!qword_1EC7496A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7496A8);
  }

  return result;
}

unint64_t sub_1D2FF8AF0()
{
  result = qword_1EC7496B0;
  if (!qword_1EC7496B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7496B0);
  }

  return result;
}

unint64_t sub_1D2FF8B48()
{
  result = qword_1EC7496B8;
  if (!qword_1EC7496B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7496B8);
  }

  return result;
}

unint64_t sub_1D2FF8BA0()
{
  result = qword_1EC7496C0;
  if (!qword_1EC7496C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7496C0);
  }

  return result;
}

unint64_t sub_1D2FF8BF8()
{
  result = qword_1EC7496C8;
  if (!qword_1EC7496C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7496C8);
  }

  return result;
}

uint64_t AppLicenseDelivery.Request.StaticRepresentation.requestData.getter()
{
  v1 = *(v0 + 16);
  sub_1D2FF17B0(v1, *(v0 + 24));
  return v1;
}

uint64_t AppLicenseDelivery.Request.StaticRepresentation.wrappedKeyData.getter()
{
  v1 = *(v0 + 32);
  sub_1D2FF17B0(v1, *(v0 + 40));
  return v1;
}

uint64_t AppLicenseDelivery.Request.StaticRepresentation.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0xD000000000000025, 0x80000001D30EB1E0);
  v7 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v7);

  MEMORY[0x1D38B2610](0x6E6F697372657620, 0xEE00203A73444920);
  v8 = sub_1D30E8A4C();
  v9 = MEMORY[0x1D38B26B0](v1, v8);
  MEMORY[0x1D38B2610](v9);

  MEMORY[0x1D38B2610](0x7473657571657220, 0xEF203A6174616420);
  v10 = sub_1D30E88EC();
  MEMORY[0x1D38B2610](v10);

  MEMORY[0x1D38B2610](0xD000000000000013, 0x80000001D30EB270);
  v11 = sub_1D30E88EC();
  MEMORY[0x1D38B2610](v11);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D2FF8EAC()
{
  v1 = 0x4965736E6563696CLL;
  v2 = 0x4474736575716572;
  if (*v0 != 2)
  {
    v2 = 0x4B64657070617277;
  }

  if (*v0)
  {
    v1 = 0x496E6F6973726576;
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

uint64_t sub_1D2FF8F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2FFF248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2FF8F6C(uint64_t a1)
{
  v2 = sub_1D2FF9270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FF8FA8(uint64_t a1)
{
  v2 = sub_1D2FF9270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppLicenseDelivery.Request.StaticRepresentation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749718, &qword_1D30F07B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v23 = v1[2];
  v24 = v9;
  v12 = v1[5];
  v21 = v1[4];
  v22 = v11;
  v20 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FF9270();
  sub_1D30E992C();
  LOBYTE(v25) = 0;
  sub_1D30E975C();
  if (!v2)
  {
    v15 = v22;
    v14 = v23;
    v16 = v20;
    v17 = v21;
    v25 = v24;
    v27 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749728, &qword_1D30F07B8);
    sub_1D2FF9648(&qword_1EC749730, &qword_1EC7494B0);
    sub_1D30E974C();
    v25 = v14;
    v26 = v15;
    v27 = 2;
    sub_1D2FF17B0(v14, v15);
    sub_1D2FF92C4();
    sub_1D30E974C();
    sub_1D2FF1804(v25, v26);
    v25 = v17;
    v26 = v16;
    v27 = 3;
    sub_1D2FF17B0(v17, v16);
    sub_1D30E974C();
    sub_1D2FF1804(v25, v26);
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D2FF9270()
{
  result = qword_1EC749720;
  if (!qword_1EC749720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749720);
  }

  return result;
}

unint64_t sub_1D2FF92C4()
{
  result = qword_1EC749738;
  if (!qword_1EC749738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749738);
  }

  return result;
}

uint64_t AppLicenseDelivery.Request.StaticRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749740, &unk_1D30F07C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FF9270();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  v21 = sub_1D30E969C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749728, &qword_1D30F07B8);
  v24 = 1;
  sub_1D2FF9648(&qword_1EC749748, &qword_1EC7494C8);
  sub_1D30E967C();
  v11 = v22;
  v24 = 2;
  sub_1D2FF96E8();
  sub_1D30E967C();
  v20 = v11;
  v12 = v22;
  v19 = v23;
  v24 = 3;
  sub_1D30E967C();
  (*(v6 + 8))(v9, v5);
  v13 = v22;
  v14 = v23;
  v15 = v20;
  *a2 = v21;
  a2[1] = v15;
  v16 = v19;
  a2[2] = v12;
  a2[3] = v16;
  a2[4] = v13;
  a2[5] = v14;

  sub_1D2FF17B0(v12, v16);
  sub_1D2FF17B0(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);

  sub_1D2FF1804(v12, v16);
  return sub_1D2FF1804(v13, v14);
}

uint64_t sub_1D2FF9648(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749728, &qword_1D30F07B8);
    sub_1D3000E00(a2, 255, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2FF96E8()
{
  result = qword_1EC749750;
  if (!qword_1EC749750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749750);
  }

  return result;
}

uint64_t sub_1D2FF9770()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EC7496D0);
  __swift_project_value_buffer(v0, qword_1EC7496D0);
  return sub_1D30E8B2C();
}

uint64_t sub_1D2FF97F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  *(v5 + 226) = a4;
  *(v5 + 64) = a3;
  *(v5 + 72) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v6 = sub_1D30E8A4C();
  *(v5 + 80) = v6;
  v7 = *(v6 - 8);
  *(v5 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v9 = type metadata accessor for LicenseRecord.ElementID(0);
  *(v5 + 104) = v9;
  v10 = *(v9 - 8);
  *(v5 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D8, v12, type metadata accessor for AppLicenseDelivery.Isolation);
  v13 = sub_1D30E91AC();
  *(v5 + 128) = v13;
  *(v5 + 136) = v14;
  v15 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D2FF99D0, v13, v14);
}

uint64_t sub_1D2FF99D0()
{
  v34 = v0;
  v33[1] = *MEMORY[0x1E69E9840];
  if (qword_1EC748FF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = sub_1D30E8B3C();
  *(v0 + 144) = __swift_project_value_buffer(v3, qword_1EC7496D0);
  v4 = sub_1D30E928C();

  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v4))
  {
    v6 = *(v0 + 104);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v32 = *(v0 + 226);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33[0] = v11;
    *v10 = 136446978;
    v12 = MEMORY[0x1D38B26B0](v9, v6);
    v14 = sub_1D2FFEA04(v12, v13, v33);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v8;
    *(v10 + 22) = 1024;
    *(v10 + 24) = v32;
    *(v10 + 28) = 2082;
    *(v0 + 40) = v7;
    type metadata accessor for CertificateManager();

    v15 = sub_1D30E909C();
    v17 = sub_1D2FFEA04(v15, v16, v33);

    *(v10 + 30) = v17;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Init with: %{public}s license ID: %llu static: %{BOOL}d certificate manager: %{public}s", v10, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v11, -1, -1);
    MEMORY[0x1D38B3760](v10, -1, -1);
  }

  if (*(v0 + 226) == 1 && (os_variant_allows_internal_security_policies() & 1) == 0)
  {
    v25 = *(v0 + 72);
    v26 = *(v0 + 56);

    sub_1D2FFF3F0();
    swift_allocError();
    *v27 = 18;
    *(v27 + 8) = 4;
    swift_willThrow();

    v28 = *(v0 + 120);
    v29 = *(v0 + 96);

    v30 = *(v0 + 8);
    v31 = *MEMORY[0x1E69E9840];

    return v30();
  }

  else
  {
    v18 = sub_1D30E8B1C();
    v19 = sub_1D30E92BC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D2FD9000, v18, v19, "Creating a Core ALD context…", v20, 2u);
      MEMORY[0x1D38B3760](v20, -1, -1);
    }

    *(v0 + 224) = 0;
    v21 = swift_task_alloc();
    *(v0 + 152) = v21;
    *v21 = v0;
    v21[1] = sub_1D2FF9DBC;
    v22 = *(v0 + 72);
    v23 = *MEMORY[0x1E69E9840];

    return sub_1D3034F00((v0 + 224));
  }
}

uint64_t sub_1D2FF9DBC(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(*v3 + 152);
  v5 = *v3;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  *(v5 + 176) = v2;

  if (v2)
  {
    v6 = *(v5 + 56);

    v7 = *(v5 + 128);
    v8 = *(v5 + 136);
    v9 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DFA0](sub_1D2FFA848, v7, v8);
  }

  else
  {
    *(v5 + 225) = 1;
    v10 = swift_task_alloc();
    *(v5 + 184) = v10;
    *v10 = v5;
    v10[1] = sub_1D2FF9F8C;
    v11 = *(v5 + 72);
    v12 = *MEMORY[0x1E69E9840];

    return sub_1D3034F00((v5 + 225));
  }
}

uint64_t sub_1D2FF9F8C(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  v5 = *(*v3 + 184);
  v13 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {
    v6 = v4[7];

    v7 = v4[16];
    v8 = v4[17];
    v9 = sub_1D2FFA8F4;
  }

  else
  {
    v7 = v4[16];
    v8 = v4[17];
    v9 = sub_1D2FFA0E0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D2FFA0E0()
{
  v110 = v0;
  v109[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  sub_1D2FF17B0(v4, v3);
  v7 = sub_1D2FFA9AC(v4, v3);
  sub_1D2FF17B0(v1, v2);
  v8 = sub_1D2FFA9AC(v1, v2);
  v9 = *(v7 + 16);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(v0 + 208);
  sub_1D2FFAB28(*(v8 + 16), v9, (v0 + 16), v109);
  if (v12)
  {
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = *(v0 + 72);
    v16 = *(v0 + 56);
    sub_1D2FF1804(*(v0 + 192), *(v0 + 200));
    sub_1D2FF1804(v14, v13);

    v17 = *(v0 + 16);

LABEL_26:

    v55 = *(v0 + 120);
    v56 = *(v0 + 96);

    v57 = *(v0 + 8);
    v58 = *MEMORY[0x1E69E9840];
    goto LABEL_27;
  }

  v18 = *(v0 + 144);

  v19 = v109[0];

  v20 = sub_1D30E8B1C();
  v21 = sub_1D30E92BC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 226);
    v23 = *(v0 + 64);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v109[0] = v25;
    *v24 = 136446466;
    if (v22)
    {
      v26 = 0x20636974617473;
    }

    else
    {
      v26 = 0;
    }

    if (v22)
    {
      v27 = 0xE700000000000000;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    v28 = sub_1D2FFEA04(v26, v27, v109);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2048;
    *(v24 + 14) = v23;
    _os_log_impl(&dword_1D2FD9000, v20, v21, "Generating a request for the %{public}slicense with the ID “%llu”…", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1D38B3760](v25, -1, -1);
    MEMORY[0x1D38B3760](v24, -1, -1);
  }

  v29 = *(v0 + 56);
  v30 = *(v29 + 16);
  v105 = v30;
  if (v30)
  {
    v103 = v19;
    v31 = *(v0 + 104);
    v32 = *(v0 + 112);
    v109[0] = MEMORY[0x1E69E7CC0];
    sub_1D3028B74(0, v30, 0);
    v33 = v109[0];
    v34 = v29 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v35 = *(v32 + 72);
    do
    {
      v36 = *(v0 + 120);
      sub_1D3000CF8(v34, v36);
      v37 = *(v36 + *(v31 + 24));
      sub_1D3000D5C(v36);
      v109[0] = v33;
      v39 = *(v33 + 16);
      v38 = *(v33 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        sub_1D3028B74((v38 > 1), v39 + 1, 1);
        v33 = v109[0];
      }

      *(v33 + 16) = v40;
      *(v33 + 8 * v39 + 32) = v37;
      v34 += v35;
      --v30;
    }

    while (v30);
    v19 = v103;
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
    v40 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v41 = *(v0 + 226);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 216) = 0;
  if (HIDWORD(v40))
  {
    __break(1u);
  }

  v42 = (v0 + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D30D7D0C(0, v40, 0, v33);
  }

  v43 = niaOacKH();
  if (v43)
  {
    v44 = v43;
    v46 = *(v0 + 192);
    v45 = *(v0 + 200);
    v48 = *(v0 + 160);
    v47 = *(v0 + 168);
    v49 = *(v0 + 72);
    v50 = *(v0 + 56);

    v51 = sub_1D2FFF3C8(v44);
    v53 = v52;
    sub_1D2FFF3F0();
    swift_allocError();
    *v54 = v51;
    *(v54 + 8) = v53;
    swift_willThrow();
LABEL_25:
    sub_1D2FF1804(v48, v47);
    sub_1D2FF1804(v46, v45);
    goto LABEL_26;
  }

  if (*(v0 + 226))
  {
    v101 = 0;
    v102 = 0;
    v99 = 0xC000000000000000;
    v100 = 0xC000000000000000;
    v104 = v19;
    if (v105)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

  v74 = *(v0 + 24);
  if (!v74)
  {
    v46 = *(v0 + 192);
    v45 = *(v0 + 200);
    v48 = *(v0 + 160);
    v47 = *(v0 + 168);
    v91 = *(v0 + 72);
    v92 = *(v0 + 56);

    sub_1D2FFF3F0();
    swift_allocError();
    v94 = 19;
LABEL_44:
    *v93 = v94;
    *(v93 + 8) = 4;
    swift_willThrow();
    v97 = *(v0 + 24);
    qENIaLkr();
    v98 = *(v0 + 32);
    qENIaLkr();
    goto LABEL_25;
  }

  v75 = *v42;
  if (!*v42)
  {
    v46 = *(v0 + 192);
    v45 = *(v0 + 200);
    v48 = *(v0 + 160);
    v47 = *(v0 + 168);
    v95 = *(v0 + 72);
    v96 = *(v0 + 56);

    sub_1D2FFF3F0();
    swift_allocError();
    v94 = 21;
    goto LABEL_44;
  }

  v102 = sub_1D2FFF658(v74, *(v0 + 216));
  v100 = v76;
  v101 = sub_1D2FFF658(v75, *(v0 + 220));
  v99 = v77;
  v104 = v19;
  if (v105)
  {
LABEL_32:
    v60 = *(v0 + 112);
    v107 = *(v0 + 104);
    v61 = *(v0 + 88);
    v62 = *(v0 + 56);
    v109[0] = MEMORY[0x1E69E7CC0];
    sub_1D3028B30(0, v105, 0);
    v63 = v109[0];
    v64 = v62 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v65 = *(v60 + 72);
    v66 = v105;
    v106 = v65;
    do
    {
      v67 = *(v0 + 120);
      v68 = *(v0 + 96);
      v69 = *(v0 + 80);
      sub_1D3000CF8(v64, v67);
      (*(v61 + 16))(v68, v67 + *(v107 + 20), v69);
      sub_1D3000D5C(v67);
      v109[0] = v63;
      v71 = *(v63 + 16);
      v70 = *(v63 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1D3028B30(v70 > 1, v71 + 1, 1);
        v63 = v109[0];
      }

      v72 = *(v0 + 96);
      v73 = *(v0 + 80);
      *(v63 + 16) = v71 + 1;
      (*(v61 + 32))(v63 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v71, v72, v73);
      v64 += v106;
      --v66;
    }

    while (v66);
    v79 = *(v0 + 56);

    goto LABEL_41;
  }

LABEL_40:
  v78 = *(v0 + 56);

  v63 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v81 = *(v0 + 192);
  v80 = *(v0 + 200);
  v83 = *(v0 + 160);
  v82 = *(v0 + 168);
  v84 = *(v0 + 120);
  v108 = *(v0 + 96);
  v85 = *(v0 + 64);
  v86 = *(v0 + 72);
  v87 = *(v0 + 48);
  v88 = *(v0 + 24);
  qENIaLkr();
  v89 = *(v0 + 32);
  qENIaLkr();
  sub_1D2FF1804(v83, v82);
  sub_1D2FF1804(v81, v80);

  *v87 = v104;
  *(v87 + 8) = v85;
  *(v87 + 16) = v63;
  *(v87 + 24) = v102;
  *(v87 + 32) = v100;
  *(v87 + 40) = v101;
  *(v87 + 48) = v99;

  v57 = *(v0 + 8);
  v90 = *MEMORY[0x1E69E9840];
LABEL_27:

  return v57();
}

uint64_t sub_1D2FFA848()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[9];

  v2 = v0[22];
  v3 = v0[15];
  v4 = v0[12];

  v5 = v0[1];
  v6 = *MEMORY[0x1E69E9840];

  return v5();
}

uint64_t sub_1D2FFA8F4()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[9];
  sub_1D2FF1804(v0[20], v0[21]);

  v2 = v0[26];
  v3 = v0[15];
  v4 = v0[12];

  v5 = v0[1];
  v6 = *MEMORY[0x1E69E9840];

  return v5();
}

uint64_t sub_1D2FFA9AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D30E895C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_1D2FF1804(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_1D2FFEE44(v11, 0);
      v15 = sub_1D30E88FC();
      sub_1D2FF1804(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1D2FFAB28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X4>, _DWORD *a4@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D8, v8, type metadata accessor for AppLicenseDelivery.Isolation);
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((a2 | a1) < 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (a1 > 0xFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  result = fyzGzQHg();
  if (result)
  {
    v10 = sub_1D2FFF3C8(result);
    v12 = v11;
    sub_1D2FFF3F0();
    v13 = swift_allocError();
    *v14 = v10;
    *(v14 + 8) = v12;
    result = swift_willThrow();
    *a3 = v13;
  }

  else
  {
    *a4 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AppLicenseDelivery.Request.deinit()
{
  v1 = v0;
  if (qword_1EC748FF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EC7496D0);
  v3 = sub_1D30E928C();
  v4 = sub_1D30E8B1C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Deinit", v5, 2u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = v0[1];
  v25 = *v0;
  v26 = v6;
  v27 = v0[2];
  v28 = *(v0 + 6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v24[6] = &v25;
  MEMORY[0x1EEE9AC00](v8);
  v24[2] = sub_1D2FFB048;
  v24[3] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D2FFF054;
  *(v10 + 24) = v24;
  sub_1D2FFDC28(sub_1D2FFF06C);
  v12 = v11;
  v29 = v26;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  else
  {
    if (v12)
    {
      v14 = sub_1D2FFF3C8(v12);
      v16 = v15;
      v17 = sub_1D30E929C();
      v18 = sub_1D30E8B1C();
      if (os_log_type_enabled(v18, v17))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138543362;
        sub_1D2FFF3F0();
        swift_allocError();
        *v21 = v14;
        *(v21 + 8) = v16;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v22;
        *v20 = v22;
        _os_log_impl(&dword_1D2FD9000, v18, v17, "A context couldn’t be destroyed: %{public}@", v19, 0xCu);
        sub_1D2FF14DC(v20, &qword_1EC7493A0, &qword_1D30EF480);
        MEMORY[0x1D38B3760](v20, -1, -1);
        MEMORY[0x1D38B3760](v19, -1, -1);
      }
    }

    sub_1D2FF14DC(&v29, &qword_1EC749728, &qword_1D30F07B8);
    sub_1D2FF1804(*(v1 + 3), *(v1 + 4));
    return sub_1D2FF1804(*(v1 + 5), *(v1 + 6));
  }

  return result;
}

uint64_t sub_1D2FFB048@<X0>(_DWORD *a1@<X8>)
{
  v3 = **(v1 + 16);
  result = cdHFeFDJ();
  *a1 = result;
  return result;
}

uint64_t static AppLicenseDelivery.Isolation.runSynchronously<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = a1;
  v4[4] = a2;
  return _s29ManagedBackgroundAssetsHelper18AppLicenseDeliveryO9IsolationC16runSynchronously4with_q_x_q_xYbKAEYcXEtKs8SendableRzRi_zr0_lFZ(a1, sub_1D2FFF444, v4, MEMORY[0x1E69E7CA8] + 8, a3);
}

uint64_t sub_1D2FFB0D0()
{
  v1 = *v0;
  sub_1D30E98AC();
  sub_1D30E98CC();
  return sub_1D30E98EC();
}

uint64_t sub_1D2FFB158()
{
  v1 = *v0;
  sub_1D30E98AC();
  sub_1D30E98CC();
  return sub_1D30E98EC();
}

_DWORD *sub_1D2FFB1A4@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_1D2FFB1C4(int *a1@<X8>)
{
  if (*v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_1D2FFB28C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749828, &qword_1D30F1060);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D300108C();
  sub_1D30E992C();
  v11 = *v3;
  v14[0] = 0;
  sub_1D30E975C();
  if (!v2)
  {
    v13 = *(v3 + 8);
    v14[0] = 1;
    sub_1D30E975C();
    v14[0] = *(v3 + 16);
    LOBYTE(v15) = 2;
    sub_1D3001134();
    sub_1D30E974C();
    v15 = *(v3 + 24);
    v14[47] = 3;
    sub_1D3001188(v3, v14);
    sub_1D2FF92C4();
    sub_1D30E974C();
    sub_1D2FF1804(v15, *(&v15 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D2FFB4C0()
{
  v1 = 25705;
  v2 = 0x6570795479656BLL;
  if (*v0 != 2)
  {
    v2 = 7955819;
  }

  if (*v0)
  {
    v1 = 0x4449746E65726170;
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

uint64_t sub_1D2FFB528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2FFF708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2FFB550(uint64_t a1)
{
  v2 = sub_1D300108C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FFB58C(uint64_t a1)
{
  v2 = sub_1D300108C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2FFB5C8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D2FFF864(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D2FFB610(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_1D2FFB28C(a1);
}

uint64_t sub_1D2FFB64C()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EC7496E8);
  __swift_project_value_buffer(v0, qword_1EC7496E8);
  return sub_1D30E8B2C();
}

uint64_t sub_1D2FFB6CC(uint64_t *a1, unsigned int *a2, uint64_t *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D8, v6, type metadata accessor for AppLicenseDelivery.Isolation);
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1[1];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (HIDWORD(v7))
  {
    goto LABEL_12;
  }

  v8 = *a2;
  v9 = *a1;
  v10 = jYWQDEvI();
  if (v10)
  {
    v11 = sub_1D2FFF3C8(v10);
    v13 = v12;
    sub_1D2FFF3F0();
    v14 = swift_allocError();
    *v15 = v11;
    *(v15 + 8) = v13;
  }

  else
  {
    sub_1D2FFF3F0();
    v14 = swift_allocError();
    *v18 = 20;
    *(v18 + 8) = 4;
  }

  result = swift_willThrow();
  *a3 = v14;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2FFB8B4()
{
  v0 = QSIlMWCo();
  if (v0)
  {
    v1 = sub_1D2FFF3C8(v0);
    v3 = v2;
    if (qword_1EC749000 != -1)
    {
      swift_once();
    }

    v4 = sub_1D30E8B3C();
    __swift_project_value_buffer(v4, qword_1EC7496E8);
    v5 = sub_1D30E929C();
    log = sub_1D30E8B1C();
    if (os_log_type_enabled(log, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      sub_1D2FFF3F0();
      swift_allocError();
      *v8 = v1;
      *(v8 + 8) = v3;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_1D2FD9000, log, v5, "A response couldn’t be deallocated: %{public}@", v6, 0xCu);
      sub_1D2FF14DC(v7, &qword_1EC7493A0, &qword_1D30EF480);
      MEMORY[0x1D38B3760](v7, -1, -1);
      MEMORY[0x1D38B3760](v6, -1, -1);
    }
  }
}

uint64_t sub_1D2FFBA44@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = result;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 64;
    v6 = MEMORY[0x1E69E7CC0];
    v46 = a2 + 64;
    do
    {
      v51 = v6;
      v7 = (v5 + 40 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v3)
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_57;
        }

        v53 = *(v7 - 2);
        v9 = *(v7 - 16);
        v10 = *(v7 - 1);
        v11 = *v7;
        sub_1D2FF17B0(v10, *v7);
        if (qword_1EE3132E0 != -1)
        {
          swift_once();
        }

        type metadata accessor for AppLicenseDelivery.Isolation();
        sub_1D3000E00(&qword_1EE3132D8, v12, type metadata accessor for AppLicenseDelivery.Isolation);
        sub_1D30E91AC();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if ((v9 & 1) == 0)
        {
          break;
        }

        result = sub_1D2FF1804(v10, v11);
        ++v8;
        v7 += 5;
        if (v4 == v3)
        {
          v6 = v51;
          goto LABEL_20;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v6 = v51;
      if ((result & 1) == 0)
      {
        result = sub_1D3028BA4(0, v51[2] + 1, 1);
        v6 = v51;
      }

      v5 = v46;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_1D3028BA4((v13 > 1), v14 + 1, 1);
        v6 = v51;
      }

      v6[2] = v14 + 1;
      v15 = &v6[5 * v14];
      *(v15 + 2) = v53;
      *(v15 + 48) = 0;
      v15[7] = v10;
      v15[8] = v11;
    }

    while (v4 != v3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_20:
  v47 = v6[2];
  if (v47)
  {
    v16 = 0;
    v17 = v6 + 8;
    while (v16 < v6[2])
    {
      v18 = v6;
      v19 = *(v17 - 4);
      v20 = *v17;
      v52 = *(v17 - 3);
      v54 = *(v17 - 1);
      sub_1D2FF17B0(v54, *v17);
      if (qword_1EE3132E0 != -1)
      {
        swift_once();
      }

      type metadata accessor for AppLicenseDelivery.Isolation();
      sub_1D3000E00(&qword_1EE3132D8, v21, type metadata accessor for AppLicenseDelivery.Isolation);
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v19 == v49)
      {

        v45 = v20;
        result = sub_1D2FF17B0(v54, v20);
        if (v3)
        {
          v23 = 0;
          v24 = a2 + 64;
          v48 = MEMORY[0x1E69E7CC0];
          v44 = a2 + 64;
LABEL_32:
          v25 = (v24 + 40 * v23);
          v26 = v23;
          while (v26 < v3)
          {
            v23 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_60;
            }

            v50 = *(v25 - 2);
            v27 = *(v25 - 16);
            v29 = *(v25 - 1);
            v28 = *v25;
            sub_1D2FF17B0(v29, *v25);
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            if (v27)
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D3028BA4(0, v48[2] + 1, 1);
              }

              v24 = v44;
              v31 = v48[2];
              v30 = v48[3];
              v32 = v31 + 1;
              if (v31 >= v30 >> 1)
              {
                result = sub_1D3028BA4((v30 > 1), v31 + 1, 1);
                v32 = v31 + 1;
              }

              v48[2] = v32;
              v33 = &v48[5 * v31];
              *(v33 + 2) = v50;
              *(v33 + 48) = 1;
              v33[7] = v29;
              v33[8] = v28;
              if (v23 != v3)
              {
                goto LABEL_32;
              }

              goto LABEL_47;
            }

            result = sub_1D2FF1804(v29, v28);
            ++v26;
            v25 += 5;
            if (v23 == v3)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_59;
        }

        v48 = MEMORY[0x1E69E7CC0];
LABEL_47:
        v34 = v45;
        v35 = v48[2];
        if (!v35)
        {
LABEL_54:

          sub_1D2FFF3F0();
          swift_allocError();
          *v41 = v52;
          *(v41 + 8) = 2;
          swift_willThrow();
          sub_1D2FF1804(v54, v34);
          return sub_1D2FF1804(v54, v34);
        }

        v36 = 0;
        v37 = v48 + 8;
        while (v36 < v48[2])
        {
          v38 = *(v37 - 4);
          v40 = *(v37 - 1);
          v39 = *v37;
          sub_1D2FF17B0(v40, *v37);
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          if (v38 == v52)
          {

            result = sub_1D2FF1804(v54, v45);
            *a3 = v54;
            a3[1] = v45;
            a3[2] = v40;
            a3[3] = v39;
            return result;
          }

          ++v36;
          result = sub_1D2FF1804(v40, v39);
          v37 += 5;
          v34 = v45;
          if (v35 == v36)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_61;
      }

      ++v16;
      result = sub_1D2FF1804(v54, v20);
      v17 += 5;
      v6 = v18;
      if (v47 == v16)
      {
        goto LABEL_29;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
LABEL_29:

    sub_1D2FFF3F0();
    swift_allocError();
    *v22 = v49;
    *(v22 + 8) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D2FFC07C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497F8, &qword_1D30F1050);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3000F18();
  sub_1D30E992C();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497E0, &qword_1D30F1048);
  sub_1D3000F6C(&qword_1EC749800, sub_1D3001038);
  sub_1D30E974C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D2FFC220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2FFC2A8(uint64_t a1)
{
  v2 = sub_1D3000F18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FFC2E4(uint64_t a1)
{
  v2 = sub_1D3000F18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D2FFC320@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D300004C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D2FFC37C()
{
  if (*v0)
  {
    result = 0x4B65736E6563696CLL;
  }

  else
  {
    result = 0x79654B707061;
  }

  *v0;
  return result;
}

uint64_t sub_1D2FFC3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B707061 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B65736E6563696CLL && a2 == 0xEA00000000007965)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D2FFC498(uint64_t a1)
{
  v2 = sub_1D2FFF46C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2FFC4D4(uint64_t a1)
{
  v2 = sub_1D2FFF46C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppLicenseDelivery.Keys.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749760, &qword_1D30F07D0);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14 = v1[3];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FF17B0(v8, v9);
  sub_1D2FFF46C();
  sub_1D30E992C();
  v17 = v8;
  v18 = v9;
  v19 = 0;
  sub_1D2FF92C4();
  sub_1D30E974C();
  sub_1D2FF1804(v17, v18);
  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v19 = 1;
    sub_1D2FF17B0(v15, v14);
    sub_1D30E974C();
    sub_1D2FF1804(v17, v18);
  }

  return (*(v16 + 8))(v7, v4);
}

uint64_t AppLicenseDelivery.Keys.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749770, &qword_1D30F07D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2FFF46C();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_1D2FF96E8();
  sub_1D30E967C();
  v11 = v18;
  v17 = v19;
  v20 = 1;
  sub_1D30E967C();
  (*(v6 + 8))(v9, v5);
  v12 = v18;
  v13 = v19;
  v14 = v17;
  *a2 = v11;
  a2[1] = v14;
  a2[2] = v12;
  a2[3] = v13;
  sub_1D2FF17B0(v11, v14);
  sub_1D2FF17B0(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1D2FF1804(v11, v14);
  return sub_1D2FF1804(v12, v13);
}

uint64_t sub_1D2FFC948()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EC749700);
  __swift_project_value_buffer(v0, qword_1EC749700);
  return sub_1D30E8B2C();
}

void AppLicenseDelivery.CryptSession.init(keys:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  if (qword_1EC749008 != -1)
  {
    swift_once();
  }

  v8 = sub_1D30E8B3C();
  __swift_project_value_buffer(v8, qword_1EC749700);
  v9 = sub_1D30E928C();
  sub_1D2FF17B0(v4, v5);
  sub_1D2FF17B0(v6, v7);
  v10 = sub_1D30E8B1C();
  sub_1D2FF1804(v4, v5);
  sub_1D2FF1804(v6, v7);
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1D2FFEA04(0x3E7379654B3CLL, 0xE600000000000000, v26);
    _os_log_impl(&dword_1D2FD9000, v10, v9, "Init keys: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v13 = v12;
    v3 = v2;
    MEMORY[0x1D38B3760](v13, -1, -1);
    MEMORY[0x1D38B3760](v11, -1, -1);
  }

  v14 = sub_1D30E8B1C();
  v15 = sub_1D30E92BC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1D2FD9000, v14, v15, "Starting a crypt session…", v16, 2u);
    MEMORY[0x1D38B3760](v16, -1, -1);
  }

  sub_1D2FF17B0(v4, v5);
  v17 = sub_1D2FFA9AC(v4, v5);
  sub_1D2FF17B0(v6, v7);
  v18 = sub_1D2FFA9AC(v6, v7);
  sub_1D2FF1804(v4, v5);
  sub_1D2FF1804(v6, v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1D2FFEFAC(v17);
  }

  v19 = *(v17 + 16);
  v26[0] = v17 + 32;
  v26[1] = v19;
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D8, v20, type metadata accessor for AppLicenseDelivery.Isolation);
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1D2FFEFAC(v18);
  }

  v21 = *(v18 + 16);
  v25[0] = v18 + 32;
  v25[1] = v21;
  sub_1D2FFCD70(v25, v26, &v24, &v27);
  if (v3)
  {

    v26[0] = 0;
    AppLicenseDelivery.CryptSession.deinit();
  }

  else
  {
    v22 = v27;

    *a2 = v22;
  }
}

uint64_t sub_1D2FFCD70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D8, v8, type metadata accessor for AppLicenseDelivery.Isolation);
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a2[1];
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = a1[1];
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (HIDWORD(v10))
  {
    goto LABEL_16;
  }

  v11 = *a2;
  v12 = *a1;
  result = CWeMQvFE();
  if (result)
  {
    v14 = sub_1D2FFF3C8(result);
    v16 = v15;
    sub_1D2FFF3F0();
    v17 = swift_allocError();
    *v18 = v14;
    *(v18 + 8) = v16;
    result = swift_willThrow();
    *a3 = v17;
  }

  else
  {
    *a4 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void AppLicenseDelivery.CryptSession.deinit()
{
  if (qword_1EC749008 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EC749700);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Deinit", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v5 = *v0;
  if (*v0)
  {
    v6 = sub_1D30E8B1C();
    v7 = sub_1D30E92BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D2FD9000, v6, v7, "Stopping a crypt session…", v8, 2u);
      MEMORY[0x1D38B3760](v8, -1, -1);
    }

    v10 = MEMORY[0x1EEE9AC00](v9);
    v25[6] = v5;
    MEMORY[0x1EEE9AC00](v10);
    v25[2] = sub_1D2FFF4E4;
    v25[3] = v11;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1D30015EC;
    *(v12 + 24) = v25;
    sub_1D2FFDC28(sub_1D3001604);
    v14 = v13;
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    else if (v14)
    {
      v16 = sub_1D2FFF3C8(v14);
      v18 = v17;
      v19 = sub_1D30E929C();
      v20 = sub_1D30E8B1C();
      if (os_log_type_enabled(v20, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138543362;
        sub_1D2FFF3F0();
        swift_allocError();
        *v23 = v16;
        *(v23 + 8) = v18;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_1D2FD9000, v20, v19, "A crypt session couldn’t be stopped: %{public}@", v21, 0xCu);
        sub_1D2FF14DC(v22, &qword_1EC7493A0, &qword_1D30EF480);
        MEMORY[0x1D38B3760](v22, -1, -1);
        MEMORY[0x1D38B3760](v21, -1, -1);
      }
    }
  }
}

void AppLicenseDelivery.CryptSession.decrypt(chunk:)(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v7 = *v2;
  if (qword_1EC749008 != -1)
  {
    swift_once();
  }

  v8 = sub_1D30E8B3C();
  __swift_project_value_buffer(v8, qword_1EC749700);
  v9 = sub_1D30E928C();
  sub_1D2FF17B0(a1, a2);
  v10 = sub_1D30E8B1C();
  sub_1D2FF1804(a1, a2);
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    *v11 = 136446210;
    v13 = sub_1D30E88EC();
    v15 = a2;
    v16 = v7;
    v17 = sub_1D2FFEA04(v13, v14, v29);

    *(v11 + 4) = v17;
    v7 = v16;
    a2 = v15;
    _os_log_impl(&dword_1D2FD9000, v10, v9, "Decrypt chunk: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D38B3760](v12, -1, -1);
    v18 = v11;
    v4 = v3;
    MEMORY[0x1D38B3760](v18, -1, -1);
  }

  v19 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_24;
    }

    v21 = *(a1 + 16);
    v20 = *(a1 + 24);
    v22 = __OFSUB__(v20, v21);
    v23 = v20 - v21;
    if (!v22)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_13:
    LODWORD(v23) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_28;
    }

    v23 = v23;
LABEL_15:
    if (v23 <= 0x8000)
    {
      if (v19 == 2)
      {
        if (*(a1 + 16) != *(a1 + 24))
        {
          goto LABEL_18;
        }
      }

      else if (a1 != a1 >> 32)
      {
        goto LABEL_18;
      }

LABEL_24:
      v26 = sub_1D30E8B1C();
      v27 = sub_1D30E92BC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1D2FD9000, v26, v27, "Skipping decryption of an empty chunk…", v28, 2u);
        MEMORY[0x1D38B3760](v28, -1, -1);
      }

      sub_1D2FF17B0(a1, a2);
      return;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  if (v19)
  {
    goto LABEL_13;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  sub_1D2FF17B0(a1, a2);
  v24 = sub_1D2FFA9AC(a1, a2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1D2FFEFAC(v24);
  }

  v25 = *(v24 + 16);
  v29[0] = v24 + 32;
  v29[1] = v25;
  sub_1D2FFD5B8(v29, v7, &v30);
  if (!v4)
  {
    sub_1D3000300(v24);
  }
}

uint64_t sub_1D2FFD5B8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D8, v5, type metadata accessor for AppLicenseDelivery.Isolation);
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1[1];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (HIDWORD(v6))
  {
    goto LABEL_13;
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *a1;
  result = FbLnABIk();
  if (result)
  {
    v8 = sub_1D2FFF3C8(result);
    v10 = v9;
    sub_1D2FFF3F0();
    v11 = swift_allocError();
    *v12 = v8;
    *(v12 + 8) = v10;
    result = swift_willThrow();
    *a3 = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1D2FFD7A4()
{
  type metadata accessor for AppLicenseDelivery.Isolation();
  swift_allocObject();
  result = sub_1D2FFD860();
  off_1EE3132E8 = result;
  return result;
}

uint64_t static AppLicenseDelivery.Isolation.shared.getter()
{
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D2FFD860()
{
  v1 = v0;
  v17 = sub_1D30E92FC();
  v2 = *(v17 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D30E935C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1D30E8DDC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1D2FF1494(0, &qword_1EE313008, 0x1E69E9620);
  v16[1] = "AppLicenseDeliveryResponse";
  v16[2] = v10;
  sub_1D30E8DCC();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D3000E00(&qword_1EE313010, 255, MEMORY[0x1E69E8120]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497C0, &qword_1D30F0ED0);
  sub_1D2FF1768(&qword_1EE313048, &qword_1EC7497C0, &qword_1D30F0ED0);
  sub_1D30E93DC();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8098], v17);
  *(v0 + 16) = sub_1D30E936C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497C8, &qword_1D30F0ED8);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_1D30E8DBC();
  v14 = *(v0 + 16);
  v18 = 0;
  sub_1D30E92EC();
  return v1;
}

uint64_t _s29ManagedBackgroundAssetsHelper18AppLicenseDeliveryO9IsolationC16runSynchronously4with_q_x_q_xYbKAEYcXEtKs8SendableRzRi_zr0_lFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  sub_1D2FFDFE8(sub_1D30003DC, v12, v5, a1);
  if (v6)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  v15 = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

void sub_1D2FFDC28(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D2FF1494(0, &unk_1EE313018, 0x1E69E9610);
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  v2 = off_1EE3132E8;
  v3 = *(off_1EE3132E8 + 3);

  sub_1D30E92DC();

  if (v10)
  {
    v6 = v2[2];
    MEMORY[0x1EEE9AC00](v4);
    v8 = v7;
    sub_1D30E930C();
  }

  else
  {
    sub_1D3000E00(&qword_1EE3132D0, v5, type metadata accessor for AppLicenseDelivery.Isolation);
    sub_1D30E942C();

    a1(&v11, v9);
  }
}

void sub_1D2FFDE08(void (*a1)(uint64_t))
{
  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D2FF1494(0, &unk_1EE313018, 0x1E69E9610);
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  v2 = off_1EE3132E8;
  v3 = *(off_1EE3132E8 + 3);

  sub_1D30E92DC();

  if (v10)
  {
    v6 = v2[2];
    MEMORY[0x1EEE9AC00](v4);
    v8 = v7;
    sub_1D30E930C();
  }

  else
  {
    sub_1D3000E00(&qword_1EE3132D0, v5, type metadata accessor for AppLicenseDelivery.Isolation);
    sub_1D30E942C();

    a1(v9);
  }
}

void sub_1D2FFDFE8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v13 = a4;
  sub_1D2FF1494(0, &unk_1EE313018, 0x1E69E9610);
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  v4 = off_1EE3132E8;
  v5 = *(off_1EE3132E8 + 3);

  sub_1D30E92DC();

  if (v14 == 1)
  {
    v11[1] = v11;
    v7 = v4[2];
    MEMORY[0x1EEE9AC00](v6);
    v9 = v8;
    sub_1D30E930C();
  }

  else
  {
    type metadata accessor for AppLicenseDelivery.Isolation();
    sub_1D3000E00(&qword_1EE3132D0, v10, type metadata accessor for AppLicenseDelivery.Isolation);
    sub_1D30E942C();

    v12(v13);
  }
}

uint64_t sub_1D2FFE1EC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D0, v6, type metadata accessor for AppLicenseDelivery.Isolation);
  sub_1D30E942C();

  a2(a4);
}

uint64_t AppLicenseDelivery.Isolation.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t AppLicenseDelivery.Isolation.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1D2FFE344()
{
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D2FFE3A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AppLicenseDelivery.Isolation();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_1D2FFE3E0()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE313300);
  __swift_project_value_buffer(v0, qword_1EE313300);
  return sub_1D30E8B2C();
}

unint64_t sub_1D2FFE4D8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000024, 0x80000001D30EB480);
      v4 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v4);

      v2 = 0x7563636F209D80E2;
      v3 = 0xAD00002E64657272;
      goto LABEL_12;
    }

    sub_1D30E948C();
    v5 = "y policies are disallowed.";
    v6 = 40;
LABEL_11:
    MEMORY[0x1D38B2610](v6 | 0x1000000000000014, v5 | 0x8000000000000000);
    v8 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v8);

    v2 = 782074082;
    v3 = 0xA400000000000000;
    goto LABEL_12;
  }

  if (a2 == 2)
  {
    sub_1D30E948C();
    v5 = "t return a license request.";
    v6 = 34;
    goto LABEL_11;
  }

  if (a2 == 3)
  {
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0x1000000000000014, 0x80000001D30EB320);
    type metadata accessor for LicenseObjectType_(0);
    sub_1D30E955C();
    v2 = 0x75207369209D80E2;
    v3 = 0xAF2E6E776F6E6B6ELL;
LABEL_12:
    MEMORY[0x1D38B2610](v2, v3);
    return 0;
  }

  switch(a1)
  {
    case 1:
    case 4:
      v9 = 5;
      goto LABEL_24;
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x100000000000001BLL;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x100000000000001DLL;
      break;
    case 11:
      v9 = 9;
LABEL_24:
      result = v9 | 0xD000000000000012;
      break;
    case 12:
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0xD00000000000001ELL;
      break;
    case 17:
      result = 0x1000000000000017;
      break;
    case 18:
      result = 0xD00000000000002ALL;
      break;
    case 19:
      result = 0x100000000000002BLL;
      break;
    case 20:
      result = 0x100000000000002CLL;
      break;
    case 21:
      result = 0x1000000000000027;
      break;
    default:
      result = 0x1000000000000021;
      break;
  }

  return result;
}

uint64_t sub_1D2FFE9AC()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1D2FFF3F0();
  return sub_1D30E984C();
}

uint64_t sub_1D2FFEA04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D2FFEAD0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D2FF1430(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D2FFEAD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D2FFEBDC(a5, a6);
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
    result = sub_1D30E94FC();
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

uint64_t sub_1D2FFEBDC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D2FFEC28(a1, a2);
  sub_1D2FFED58(&unk_1F4EA8BE8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D2FFEC28(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D2FFEE44(v5, 0);
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

  result = sub_1D30E94FC();
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
        v10 = sub_1D30E910C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D2FFEE44(v10, 0);
        result = sub_1D30E946C();
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

uint64_t sub_1D2FFED58(uint64_t result)
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

  result = sub_1D2FFEEB8(result, v12, 1, v3);
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

void *sub_1D2FFEE44(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497B8, &unk_1D30F3440);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D2FFEEB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497B8, &unk_1D30F3440);
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

_BYTE *sub_1D2FFEFC0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1D2FFF5A0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1D3000200(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1D300027C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1D2FFF084@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t)@<X0>, _DWORD *a2@<X8>)
{
  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D0, v5, type metadata accessor for AppLicenseDelivery.Isolation);
  sub_1D30E942C();

  a1(&v8, v6);

  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1D2FFF16C(void (*a1)(uint64_t))
{
  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D0, v2, type metadata accessor for AppLicenseDelivery.Isolation);
  sub_1D30E942C();

  a1(v3);
}

uint64_t sub_1D2FFF248(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4965736E6563696CLL && a2 == 0xE900000000000044;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xEA00000000007344 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4474736575716572 && a2 == 0xEB00000000617461 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4B64657070617277 && a2 == 0xEE00617461447965)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t sub_1D2FFF3C8(uint64_t result)
{
  v1 = (result + 7018);
  if (v1 >= 0x12)
  {
    return result;
  }

  else
  {
    return 17 - v1;
  }
}

unint64_t sub_1D2FFF3F0()
{
  result = qword_1EC749758;
  if (!qword_1EC749758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749758);
  }

  return result;
}

uint64_t sub_1D2FFF444()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

unint64_t sub_1D2FFF46C()
{
  result = qword_1EC749768;
  if (!qword_1EC749768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749768);
  }

  return result;
}

uint64_t sub_1D2FFF4E4@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = OZpDoyky();
  *a1 = result;
  return result;
}

void *sub_1D2FFF518@<X0>(_DWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

void *sub_1D2FFF55C@<X0>(_DWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1D2FFF5A0(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D2FFF658(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1D2FFF5A0(a1, &a1[a2]);
  }

  v3 = sub_1D30E868C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1D30E867C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1D30E890C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1D2FFF708(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449746E65726170 && a2 == 0xE800000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795479656BLL && a2 == 0xE700000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t sub_1D2FFF864@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749810, &qword_1D30F1058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D300108C();
  sub_1D30E990C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v16[0]) = 0;
  v11 = sub_1D30E969C();
  LOBYTE(v16[0]) = 1;
  v12 = sub_1D30E969C();
  v18 = 2;
  sub_1D30010E0();
  sub_1D30E967C();
  v17 = LOBYTE(v16[0]);
  v18 = 3;
  sub_1D2FF96E8();
  sub_1D30E967C();
  (*(v6 + 8))(v9, v5);
  v13 = v16[0];
  v14 = v16[1];
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_1D2FFFAA0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v54 = *a1;
  v55 = v6;
  v56 = v7;
  v8 = *(a1 + 40);
  v57 = *(a1 + 24);
  v58 = v8;
  if (qword_1EC749000 != -1)
  {
    swift_once();
  }

  v9 = sub_1D30E8B3C();
  __swift_project_value_buffer(v9, qword_1EC7496E8);
  v10 = sub_1D30E928C();
  sub_1D2FF17B0(a2, a3);
  v11 = sub_1D30E8B1C();
  sub_1D2FF1804(a2, a3);
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&__dst = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_1D2FFEA04(0x7473657571655228, 0xE900000000000029, &__dst);
    *(v12 + 12) = 2082;
    sub_1D2FF17B0(a2, a3);
    v14 = sub_1D30E88EC();
    v16 = v15;
    sub_1D2FF1804(a2, a3);
    v17 = sub_1D2FFEA04(v14, v16, &__dst);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_1D2FD9000, v11, v10, "Init to: %{public}s from: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v13, -1, -1);
    MEMORY[0x1D38B3760](v12, -1, -1);
  }

  sub_1D2FF17B0(a2, a3);
  v18 = sub_1D2FFA9AC(a2, a3);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1D2FFEFAC(v18);
  }

  v19 = *(v18 + 16);
  *&__dst = v18 + 32;
  *(&__dst + 1) = v19;
  sub_1D2FFB6CC(&__dst, &v54, &v48);
  if (v3)
  {

    v20 = a2;
    v21 = a3;
    goto LABEL_9;
  }

  v22 = *(v49 + 20);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v22)
  {
LABEL_32:
    sub_1D2FFB8B4();
    sub_1D2FF1804(a2, a3);
    LODWORD(__dst) = v54;
    *(&__dst + 1) = v55;
    v51 = v56;
    v52 = v57;
    v53 = v58;
    AppLicenseDelivery.Request.deinit();
    goto LABEL_33;
  }

  v44 = a2;
  v45 = a3;
  v23 = *(v49 + 24);
  v49 = MEMORY[0x1E69E7CC0];
  sub_1D3028BA4(0, v22, 0);
  v10 = v49;
  if (qword_1EE3132E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLicenseDelivery.Isolation();
  sub_1D3000E00(&qword_1EE3132D8, v24, type metadata accessor for AppLicenseDelivery.Isolation);
  v25 = (v23 + 16);
  while (1)
  {
    v26 = *(v25 - 4);
    v27 = *(v25 - 1);
    v47 = *v25;
    v28 = v25[1];
    v29 = *(v25 + 4);
    sub_1D30E91AC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v26 == 2)
    {
      v30 = 0;
      goto LABEL_20;
    }

    if (v26 != 3)
    {
      break;
    }

    v30 = 1;
LABEL_20:
    if (!v28)
    {
      __break(1u);
    }

    if (v29)
    {
      if (v29 <= 0xE)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v29;
        memcpy(&__dst, v28, v29);
        v35 = __dst;
        v36 = v46 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v46 = v36;
      }

      else
      {
        v31 = sub_1D30E868C();
        v32 = *(v31 + 48);
        v33 = *(v31 + 52);
        swift_allocObject();
        v34 = sub_1D30E867C();
        if (v29 >= 0x7FFFFFFF)
        {
          sub_1D30E890C();
          v35 = swift_allocObject();
          *(v35 + 16) = 0;
          *(v35 + 24) = v29;
          v36 = v34 | 0x8000000000000000;
        }

        else
        {
          v35 = v29 << 32;
          v36 = v34 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v35 = 0;
      v36 = 0xC000000000000000;
    }

    v49 = v10;
    v38 = *(v10 + 16);
    v37 = *(v10 + 24);
    if (v38 >= v37 >> 1)
    {
      v40 = v35;
      sub_1D3028BA4((v37 > 1), v38 + 1, 1);
      v35 = v40;
      v10 = v49;
    }

    v25 += 5;
    *(v10 + 16) = v38 + 1;
    v39 = v10 + 40 * v38;
    *(v39 + 32) = v27;
    *(v39 + 40) = v47;
    *(v39 + 48) = v30;
    *(v39 + 56) = v35;
    *(v39 + 64) = v36;
    if (!--v22)
    {
      a2 = v44;
      a3 = v45;
      goto LABEL_32;
    }
  }

  sub_1D2FFF3F0();
  swift_allocError();
  *v43 = v26;
  *(v43 + 8) = 3;
  swift_willThrow();

  sub_1D2FFB8B4();
  v20 = v44;
  v21 = v45;
LABEL_9:
  sub_1D2FF1804(v20, v21);
  LODWORD(__dst) = v54;
  *(&__dst + 1) = v55;
  v51 = v56;
  v52 = v57;
  v53 = v58;
  AppLicenseDelivery.Request.deinit();
LABEL_33:
  v41 = *MEMORY[0x1E69E9840];
  return v10;
}

void *sub_1D300004C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497D0, &qword_1D30F1040);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D3000F18();
  sub_1D30E990C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497E0, &qword_1D30F1048);
    sub_1D3000F6C(&qword_1EC7497E8, sub_1D3000FE4);
    sub_1D30E967C();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_1D3000200(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D30E868C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D30E867C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D30E890C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D300027C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D30E868C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D30E867C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D3000300(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497A8, &unk_1D30F0EC0);
  v10 = sub_1D2FF1768(&qword_1EC7497B0, &qword_1EC7497A8, &unk_1D30F0EC0);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1D2FFEFC0(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_1D30003DC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1D300047C(const char *a1, const char *a2, uint64_t (*a3)(void))
{
  if (qword_1EE3132F8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D30E8B3C();
  __swift_project_value_buffer(v6, qword_1EE313300);
  v7 = sub_1D30E928C();
  v8 = sub_1D30E8B1C();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D2FD9000, v8, v7, a1, v9, 2u);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  v10 = sub_1D30E8B1C();
  v11 = sub_1D30E92BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D2FD9000, v10, v11, a2, v12, 2u);
    MEMORY[0x1D38B3760](v12, -1, -1);
  }

  result = a3();
  if (result)
  {
    v14 = sub_1D2FFF3C8(result);
    v16 = v15;
    sub_1D2FFF3F0();
    swift_allocError();
    *v17 = v14;
    *(v17 + 8) = v16;
    return swift_willThrow();
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for AppLicenseDelivery.Request(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  sub_1D2FF1804(v6, v7);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  sub_1D2FF1804(v8, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppLicenseDelivery.Request(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for AppLicenseDelivery.Request(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D30007BC(uint64_t a1, int a2)
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

uint64_t sub_1D3000804(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D300086C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D30008C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1D3000950(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D3000970(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppLicenseDeliveryError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AppLicenseDeliveryError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D3000A94(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1D3000AAC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1D3000AE8()
{
  result = qword_1EC749778;
  if (!qword_1EC749778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749778);
  }

  return result;
}

unint64_t sub_1D3000B44()
{
  result = qword_1EC749780;
  if (!qword_1EC749780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749780);
  }

  return result;
}

unint64_t sub_1D3000B9C()
{
  result = qword_1EC749788;
  if (!qword_1EC749788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749788);
  }

  return result;
}

unint64_t sub_1D3000BF4()
{
  result = qword_1EC749790;
  if (!qword_1EC749790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749790);
  }

  return result;
}

unint64_t sub_1D3000C4C()
{
  result = qword_1EC749798;
  if (!qword_1EC749798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749798);
  }

  return result;
}

unint64_t sub_1D3000CA4()
{
  result = qword_1EC7497A0;
  if (!qword_1EC7497A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7497A0);
  }

  return result;
}

uint64_t sub_1D3000CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LicenseRecord.ElementID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3000D5C(uint64_t a1)
{
  v2 = type metadata accessor for LicenseRecord.ElementID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D3000DB8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1D2FFF16C(*(v0 + 16));
}

uint64_t sub_1D3000DD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D2FFE1EC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
}

uint64_t sub_1D3000E00(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D3000E48@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1D2FFF084(*(v1 + 16), a1);
}

uint64_t sub_1D3000E78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D3000EBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D3000F18()
{
  result = qword_1EC7497D8;
  if (!qword_1EC7497D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7497D8);
  }

  return result;
}

uint64_t sub_1D3000F6C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7497E0, &qword_1D30F1048);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D3000FE4()
{
  result = qword_1EC7497F0;
  if (!qword_1EC7497F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7497F0);
  }

  return result;
}

unint64_t sub_1D3001038()
{
  result = qword_1EC749808;
  if (!qword_1EC749808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749808);
  }

  return result;
}

unint64_t sub_1D300108C()
{
  result = qword_1EC749818;
  if (!qword_1EC749818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749818);
  }

  return result;
}

unint64_t sub_1D30010E0()
{
  result = qword_1EC749820;
  if (!qword_1EC749820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749820);
  }

  return result;
}

unint64_t sub_1D3001134()
{
  result = qword_1EC749830;
  if (!qword_1EC749830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749830);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPackHost.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssetPackHost.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D3001334()
{
  result = qword_1EC749838;
  if (!qword_1EC749838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749838);
  }

  return result;
}

unint64_t sub_1D300138C()
{
  result = qword_1EC749840;
  if (!qword_1EC749840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749840);
  }

  return result;
}

unint64_t sub_1D30013E4()
{
  result = qword_1EC749848;
  if (!qword_1EC749848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749848);
  }

  return result;
}

unint64_t sub_1D300143C()
{
  result = qword_1EC749850;
  if (!qword_1EC749850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749850);
  }

  return result;
}

unint64_t sub_1D3001494()
{
  result = qword_1EC749858;
  if (!qword_1EC749858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749858);
  }

  return result;
}

unint64_t sub_1D30014EC()
{
  result = qword_1EC749860;
  if (!qword_1EC749860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749860);
  }

  return result;
}

unint64_t sub_1D3001544()
{
  result = qword_1EC749868;
  if (!qword_1EC749868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749868);
  }

  return result;
}

unint64_t sub_1D3001598()
{
  result = qword_1EC749870[0];
  if (!qword_1EC749870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC749870);
  }

  return result;
}

uint64_t XPCResult.Failure.description.getter()
{
  v2 = *v0;
  swift_getWitnessTable();
  return sub_1D30E984C();
}

uint64_t XPCResult.Failure.errorDescription.getter()
{
  v0 = sub_1D3003688();

  return v0;
}

uint64_t XPCResult.Failure.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_1D30E984C();
  v8 = v7;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  a3[1] = v8;
  return result;
}

uint64_t sub_1D300174C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D30EB7B0 == a2)
  {

    v2 = 0;
  }

  else
  {
    v3 = sub_1D30E97CC();

    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1D30017EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1D300174C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D3001824@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1D2FDD584();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D300185C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D30018B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t XPCResult.Failure.encode(to:)(void *a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  type metadata accessor for XPCResult.Failure.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1D30E976C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  v12 = v2[1];
  v15[1] = *v2;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D30E992C();
  sub_1D30E96EC();
  return (*(v8 + 8))(v11, v7);
}

uint64_t XPCResult.Failure.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  type metadata accessor for XPCResult.Failure.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1D30E96CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D30E990C();
  if (!v2)
  {
    v10 = v16;
    v11 = sub_1D30E961C();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
    *v10 = v11;
    v10[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D3001C18@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  return XPCResult.Failure.init(from:)(a1, a3);
}

uint64_t sub_1D3001C58()
{
  v0 = sub_1D3003688();

  return v0;
}

uint64_t XPCResult.init(catching:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for XPCResult();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v11 - v8;
  a1(v7);
  swift_storeEnumTagMultiPayload();
  return (*(v5 + 32))(a2, v9, v4);
}

uint64_t static XPCResult.failure<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  v9 = sub_1D30E984C();
  v11 = v10;
  (*(v5 + 8))(v8, a2);
  *a3 = v9;
  a3[1] = v11;
  type metadata accessor for XPCResult();
  return swift_storeEnumTagMultiPayload();
}

uint64_t XPCResult.init(catching:)(uint64_t a1, int *a2)
{
  v2[6] = a1;
  v4 = type metadata accessor for XPCResult();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[9] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v2[10] = v9;
  *v9 = v2;
  v9[1] = sub_1D3002084;

  return v11(v7);
}

uint64_t sub_1D3002084()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1D3002234;
  }

  else
  {
    v3 = sub_1D3002198;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D3002198()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D3002234()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  swift_getErrorValue();
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v5 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  (*(v7 + 16))(v9, v4, v5);
  v10 = sub_1D30E984C();
  v12 = v11;
  (*(v7 + 8))(v9, v5);

  *v3 = v10;
  v3[1] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D3002390(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D3002494(char a1)
{
  sub_1D30E98AC();
  MEMORY[0x1D38B2DE0](a1 & 1);
  return sub_1D30E98EC();
}

uint64_t sub_1D30024DC(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1D300250C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D30E97CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_1D300257C(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1D300245C(*a1, *a2);
}

uint64_t sub_1D3002594(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1D3002494(*v1);
}

uint64_t sub_1D30025A8(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_1D300246C(a1, *v2);
}

uint64_t sub_1D30025BC(uint64_t a1, void *a2)
{
  sub_1D30E98AC();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_1D300246C(v8, *v2);
  return sub_1D30E98EC();
}

uint64_t sub_1D3002608(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1D30024DC(*v1);
}

uint64_t sub_1D300261C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1D3002390(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1D3002650@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1D3003CE4();
  *a2 = result;
  return result;
}

uint64_t sub_1D3002684(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D30026D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D300272C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D3002780(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D30027D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D3002828(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t XPCResult.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for XPCResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v50 = v7;
  v8 = sub_1D30E976C();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v41 - v10;
  v11 = type metadata accessor for XPCResult.SuccessCodingKeys();
  v12 = swift_getWitnessTable();
  v45 = v11;
  v43 = v12;
  v13 = sub_1D30E976C();
  v47 = *(v13 - 8);
  v48 = v13;
  v14 = *(v47 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v44 = &v41 - v16;
  v46 = *(v4 - 8);
  v17 = *(v46 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v42 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v23 = (&v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = v4;
  v52 = v5;
  v58 = v6;
  type metadata accessor for XPCResult.CodingKeys();
  swift_getWitnessTable();
  v24 = sub_1D30E976C();
  v56 = *(v24 - 8);
  v57 = v24;
  v25 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v41 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D30E992C();
  (*(v20 + 16))(v23, v55, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v23;
    v30 = v23[1];
    LOBYTE(v59) = 1;
    v31 = v51;
    v32 = v57;
    sub_1D30E96DC();
    v59 = v29;
    v60 = v30;
    type metadata accessor for XPCResult.Failure();
    swift_getWitnessTable();
    v33 = v54;
    sub_1D30E974C();
    (*(v53 + 8))(v31, v33);
    (*(v56 + 8))(v27, v32);
  }

  else
  {
    v35 = v46;
    v36 = v42;
    v37 = v61;
    (*(v46 + 32))(v42, v23, v61);
    LOBYTE(v59) = 0;
    v38 = v44;
    v39 = v57;
    sub_1D30E96DC();
    v40 = v48;
    sub_1D30E974C();
    (*(v47 + 8))(v38, v40);
    (*(v35 + 8))(v36, v37);
    return (*(v56 + 8))(v27, v39);
  }
}

uint64_t XPCResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v69 = a5;
  v67 = type metadata accessor for XPCResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v64 = sub_1D30E96CC();
  v63 = *(v64 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v70 = &v55 - v10;
  v11 = type metadata accessor for XPCResult.SuccessCodingKeys();
  v12 = swift_getWitnessTable();
  v66 = v11;
  v65 = v12;
  v61 = sub_1D30E96CC();
  v60 = *(v61 - 8);
  v13 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v72 = &v55 - v14;
  type metadata accessor for XPCResult.CodingKeys();
  swift_getWitnessTable();
  v74 = sub_1D30E96CC();
  v76 = *(v74 - 8);
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v17 = &v55 - v16;
  v71 = a2;
  v75 = a3;
  v62 = a4;
  v18 = type metadata accessor for XPCResult();
  v59 = *(v18 - 8);
  v19 = *(v59 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v55 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v55 - v26;
  v28 = a1;
  v29 = a1[3];
  v30 = a1[4];
  v82 = v28;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v73 = v17;
  v31 = v77;
  sub_1D30E990C();
  if (!v31)
  {
    v58 = v25;
    v56 = v22;
    v32 = v72;
    v57 = v27;
    v33 = v74;
    v77 = v18;
    v34 = v73;
    *&v78 = sub_1D30E96AC();
    sub_1D30E919C();
    swift_getWitnessTable();
    *&v80 = sub_1D30E93CC();
    *(&v80 + 1) = v35;
    *&v81 = v36;
    *(&v81 + 1) = v37;
    sub_1D30E93BC();
    swift_getWitnessTable();
    sub_1D30E925C();
    v38 = v78;
    if (v78 == 2 || (v55 = v80, v78 = v80, v79 = v81, (sub_1D30E926C() & 1) == 0))
    {
      v42 = sub_1D30E94EC();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30) + 48);
      *v44 = v77;
      sub_1D30E960C();
      sub_1D30E94DC();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
      swift_willThrow();
      (*(v76 + 8))(v34, v33);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v38)
      {
        LOBYTE(v78) = 1;
        sub_1D30E95FC();
        v39 = v69;
        type metadata accessor for XPCResult.Failure();
        swift_getWitnessTable();
        v40 = v64;
        v41 = v70;
        sub_1D30E967C();
        (*(v63 + 8))(v41, v40);
        (*(v76 + 8))(v34, v33);
        swift_unknownObjectRelease();
        v51 = v56;
        *v56 = v78;
        v52 = v77;
        swift_storeEnumTagMultiPayload();
        v53 = *(v59 + 32);
        v54 = v57;
        v53(v57, v51, v52);
      }

      else
      {
        LOBYTE(v78) = 0;
        v46 = v32;
        sub_1D30E95FC();
        v48 = v58;
        v49 = v61;
        sub_1D30E967C();
        v50 = v76;
        (*(v60 + 8))(v46, v49);
        (*(v50 + 8))(v34, v33);
        swift_unknownObjectRelease();
        v52 = v77;
        swift_storeEnumTagMultiPayload();
        v53 = *(v59 + 32);
        v54 = v57;
        v53(v57, v48, v52);
        v39 = v69;
      }

      v53(v39, v54, v52);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v82);
}

uint64_t sub_1D3003688()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_1D3003744(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    v6 = a1[4];
    result = type metadata accessor for XPCResult.Failure();
    if (v7 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D30037C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1D30038DC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1D3003A94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D3003AE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1D3003B44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D3003CF4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v106 = a2;
  v101 = a3;
  v112[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749928, &unk_1D30F1B00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v98 - v8;
  v10 = sub_1D30E8D9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v103 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v104 = &v98 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v105 = &v98 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v98 - v19;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v21 = sub_1D30E8B3C();
  __swift_project_value_buffer(v21, qword_1EE3133A8);
  v22 = sub_1D30E928C();
  v23 = *(v11 + 16);
  v107 = a1;
  v108 = v11 + 16;
  v109 = v23;
  v23(v20, a1, v10);
  v24 = sub_1D30E8B1C();
  if (os_log_type_enabled(v24, v22))
  {
    v25 = swift_slowAlloc();
    v99 = v3;
    v26 = v25;
    v27 = swift_slowAlloc();
    v112[0] = v27;
    *v26 = 136446466;
    sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v28 = sub_1D30E977C();
    v100 = v9;
    v29 = v10;
    v31 = v30;
    v102 = *(v11 + 8);
    v102(v20, v29);
    v32 = sub_1D2FFEA04(v28, v31, v112);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2082;
    v33 = sub_1D3004888(v106);
    v35 = sub_1D2FFEA04(v33, v34, v112);

    *(v26 + 14) = v35;
    v10 = v29;
    v9 = v100;
    _os_log_impl(&dword_1D2FD9000, v24, v22, "Absolute path for: %{public}s options: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v27, -1, -1);
    v36 = v26;
    v4 = v99;
    MEMORY[0x1D38B3760](v36, -1, -1);
  }

  else
  {

    v102 = *(v11 + 8);
    v102(v20, v10);
  }

  v37 = v107;
  v38 = sub_1D30E8CDC();
  v39 = v109;
  if (v38)
  {
    os_unfair_lock_lock((v4 + 16));
    v40 = *(v4 + 32);
    path = container_get_path();
    os_unfair_lock_unlock((v4 + 16));
    v42 = path;
    if (path)
    {
      v43 = v105;
      MEMORY[0x1D38B2230](v42);
      v39(v104, v43, v10);
      v39(v103, v37, v10);
      sub_1D30E8D1C();
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_1D2FF14DC(v9, &qword_1EC749928, &unk_1D30F1B00);
        v110 = type metadata accessor for FilePath.ResolutionError();
        sub_1D300A61C(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
        v44 = swift_allocError();
        v46 = v45;
        v47 = v37;
        v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749930, &qword_1D30F38F0) + 48);
        v49 = v105;
        v39(v46, v105, v10);
        v39(&v46[v48], v47, v10);
        swift_storeEnumTagMultiPayload();
        v110 = v44;
        swift_willThrow();
        v50 = v49;
LABEL_21:
        result = (v102)(v50, v10);
        goto LABEL_22;
      }

      v55 = v101;
      (*(v11 + 32))(v101, v9, v10);
      v56 = v106;
      if (v106)
      {
        v57 = objc_opt_self();
        v58 = [v57 defaultManager];
        sub_1D30E8D3C();
        v59 = v11;
        v60 = v10;
        v61 = sub_1D30E906C();

        v62 = [v58 fileExistsAtPath_];

        v56 = v106;
        v10 = v60;
        v11 = v59;
        v39 = v109;
        if (v62)
        {
          v63 = [v57 defaultManager];
          sub_1D30E8D3C();
          v64 = sub_1D30E906C();

          v112[0] = 0;
          v65 = [v63 removeItemAtPath:v64 error:v112];

          if (!v65)
          {
            v89 = v112[0];
            v90 = sub_1D30E87DC();

            v110 = v90;
            swift_willThrow();
            v91 = v102;
            v102(v55, v10);
            result = v91(v105, v10);
            goto LABEL_22;
          }

          v66 = v112[0];
          v56 = v106;
        }
      }

      if ((v56 & 2) != 0)
      {
        v67 = [objc_opt_self() defaultManager];
        v68 = v101;
        v39(v103, v101, v10);
        v69 = v104;
        sub_1D30E8D2C();
        sub_1D30E8D3C();
        v70 = v69;
        v71 = v102;
        v102(v70, v10);
        v72 = sub_1D30E906C();

        v112[0] = 0;
        v73 = [v67 createDirectoryAtPath:v72 withIntermediateDirectories:1 attributes:0 error:v112];

        if (!v73)
        {
          v82 = v112[0];
          v83 = sub_1D30E87DC();

          v110 = v83;
          swift_willThrow();
          v71(v68, v10);
          result = (v71)(v105, v10);
          goto LABEL_22;
        }

        v74 = v112[0];
        v56 = v106;
      }

      if ((v56 & 4) == 0)
      {
        v50 = v105;
        goto LABEL_21;
      }

      v107 = v11;
      v76 = v10;
      v111 = 1;
      v77 = objc_opt_self();
      v78 = [v77 defaultManager];
      v79 = v101;
      sub_1D30E8D3C();
      v80 = sub_1D30E906C();

      v81 = [v78 fileExistsAtPath:v80 isDirectory:&v111];

      if (v81)
      {
        if (v111)
        {
          result = (v102)(v105, v76);
        }

        else
        {
          type metadata accessor for ContainerManagerError();
          sub_1D300A61C(&qword_1EC749920, type metadata accessor for ContainerManagerError);
          v92 = swift_allocError();
          v93 = v101;
          v109(v94, v101, v76);
          swift_storeEnumTagMultiPayload();
          v110 = v92;
          swift_willThrow();
          v95 = v102;
          v102(v93, v76);
          result = v95(v105, v76);
        }
      }

      else
      {
        v84 = [v77 defaultManager];
        sub_1D30E8D3C();
        v85 = sub_1D30E906C();

        v112[0] = 0;
        v86 = [v84 createDirectoryAtPath:v85 withIntermediateDirectories:0 attributes:0 error:v112];

        v87 = v102;
        if (v86)
        {
          v88 = v112[0];
        }

        else
        {
          v96 = v112[0];
          v97 = sub_1D30E87DC();

          v110 = v97;
          swift_willThrow();
          v87(v79, v76);
        }

        result = (v87)(v105, v76);
      }
    }

    else
    {
      type metadata accessor for ContainerManagerError();
      sub_1D300A61C(&qword_1EC749920, type metadata accessor for ContainerManagerError);
      v54 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      v110 = v54;
      result = swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for HelperError();
    sub_1D300A61C(&qword_1EE313E48, type metadata accessor for HelperError);
    v51 = swift_allocError();
    v39(v52, v37, v10);
    swift_storeEnumTagMultiPayload();
    v110 = v51;
    result = swift_willThrow();
  }

LABEL_22:
  v75 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1D3004888(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    if (a1)
    {
      MEMORY[0x1D38B2610](0xD000000000000014, 0x80000001D30EBA00);
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
LABEL_6:
          sub_1D30E948C();

          MEMORY[0x1D38B2610](0, 0xE000000000000000);

          MEMORY[0x1D38B2610](62, 0xE100000000000000);
          return 0xD00000000000001BLL;
        }

LABEL_5:
        MEMORY[0x1D38B2610](0xD000000000000015, 0x80000001D30EB990);
        goto LABEL_6;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    MEMORY[0x1D38B2610](0xD00000000000001FLL, 0x80000001D30EB9E0);
    if ((v1 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return 0xD000000000000019;
}

uint64_t sub_1D3004A10()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE3133A8);
  __swift_project_value_buffer(v0, qword_1EE3133A8);
  return sub_1D30E8B2C();
}

void *sub_1D3004A90()
{
  v2 = v0;
  v3 = *v0;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v4 = sub_1D30E8B3C();
  __swift_project_value_buffer(v4, qword_1EE3133A8);
  v5 = sub_1D30E928C();
  v6 = sub_1D30E8B1C();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D2FD9000, v6, v5, "Init", v7, 2u);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v8 = container_query_create();
  if (!v8)
  {
    type metadata accessor for ContainerManagerError();
    sub_1D300A61C(&qword_1EC749920, type metadata accessor for ContainerManagerError);
    swift_allocError();
LABEL_14:
    swift_storeEnumTagMultiPayload();
    goto LABEL_15;
  }

  v9 = v8;
  container_query_set_class();
  container_query_operation_set_flags();
  v10 = *MEMORY[0x1E69E9980];
  container_query_set_persona_unique_string();
  single_result = container_query_get_single_result();
  if (!single_result)
  {
    container_query_get_last_error();
    v19 = container_error_copy_unlocalized_description();
    container_query_free();
    type metadata accessor for ContainerManagerError();
    sub_1D300A61C(&qword_1EC749920, type metadata accessor for ContainerManagerError);
    swift_allocError();
    v21 = v20;
    if (v19)
    {
      v22 = sub_1D30E90FC();
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *v21 = v22;
    v21[1] = v23;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    free(v19);
    goto LABEL_19;
  }

  v12 = single_result;
  v13 = container_copy_sandbox_token();
  if (!v13)
  {
    container_query_free();
    type metadata accessor for ContainerManagerError();
    sub_1D300A61C(&qword_1EC749920, type metadata accessor for ContainerManagerError);
    swift_allocError();
    goto LABEL_14;
  }

  v14 = v13;
  v15 = sub_1D30E90FC();
  v17 = v16;
  free(v14);
  v18 = sub_1D30E7844(v15, v17);
  if (v1)
  {
    container_query_free();
LABEL_15:
    swift_willThrow();
LABEL_19:
    swift_deallocPartialClassInstance();
    return v2;
  }

  *(v2 + 4) = 0;
  v2[3] = v9;
  v2[4] = v12;
  v2[5] = v18;
  return v2;
}

uint64_t sub_1D3004DEC()
{
  v1 = v0;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE3133A8);
  v3 = sub_1D30E928C();
  v4 = sub_1D30E8B1C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Deinit", v5, 2u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = *(v1 + 24);
  container_query_free();
  v7 = *(v1 + 40);
  sub_1D30E70C4();
  return v1;
}

uint64_t sub_1D3004ED8()
{
  sub_1D3004DEC();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

__n128 sub_1D3004F38(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D3004F44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1D3004F88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for ContainerManagerError()
{
  result = qword_1EC749900;
  if (!qword_1EC749900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D3005020()
{
  sub_1D30050CC(319, &qword_1EC749910, MEMORY[0x1E69E83A8]);
  if (v0 <= 0x3F)
  {
    sub_1D30050CC(319, &qword_1EC749918, sub_1D2FE39EC);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D30050CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_1D3005160(char *a1)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v47 - v4;
  v6 = sub_1D30E8D5C();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D30E8D9C();
  v10 = *(v9 - 1);
  v11 = *(v10 + 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - v15;
  if (qword_1EE3133A0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v17 = sub_1D30E8B3C();
    __swift_project_value_buffer(v17, qword_1EE3133A8);
    v18 = sub_1D30E928C();
    v19 = *(v10 + 2);
    v50 = a1;
    v19(v16, a1, v9);
    a1 = sub_1D30E8B1C();
    v20 = os_log_type_enabled(a1, v18);
    v53 = v6;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v51 = v9;
      v22 = v21;
      v23 = swift_slowAlloc();
      v49 = v14;
      v24 = v10;
      v25 = v23;
      v57[0] = v23;
      *v22 = 136446210;
      sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v26 = sub_1D30E977C();
      v28 = v27;
      v48 = *(v24 + 1);
      v48(v16, v51);
      v29 = sub_1D2FFEA04(v26, v28, v57);
      v6 = v53;

      *(v22 + 4) = v29;
      _os_log_impl(&dword_1D2FD9000, a1, v18, "Contents of directory at: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v30 = v25;
      v10 = v24;
      v14 = v49;
      MEMORY[0x1D38B3760](v30, -1, -1);
      v31 = v22;
      v9 = v51;
      MEMORY[0x1D38B3760](v31, -1, -1);
    }

    else
    {

      v48 = *(v10 + 1);
      v48(v16, v9);
    }

    v32 = v55;
    sub_1D3003CF4(v50, 0, v14);
    if (v32)
    {
      break;
    }

    v50 = 0;
    v33 = [objc_opt_self() defaultManager];
    sub_1D30E8D3C();
    v34 = sub_1D30E906C();

    v57[0] = 0;
    v35 = [v33 contentsOfDirectoryAtPath:v34 error:v57];

    a1 = v57[0];
    if (!v35)
    {
      v44 = v57[0];
      sub_1D30E87DC();

      swift_willThrow();
      v48(v14, v9);
      break;
    }

    v49 = v14;
    v47 = v10;
    v51 = v9;
    v36 = sub_1D30E917C();
    v37 = a1;

    v55 = v36;
    v16 = *(v36 + 16);
    if (!v16)
    {
      a1 = MEMORY[0x1E69E7CC0];
LABEL_20:

      v48(v49, v51);
      break;
    }

    v10 = 0;
    v9 = (v52 + 48);
    v54 = (v52 + 32);
    v14 = (v55 + 40);
    a1 = MEMORY[0x1E69E7CC0];
    while (v10 < *(v55 + 16))
    {
      v38 = *(v14 - 1);
      v39 = *v14;

      sub_1D30E8D6C();
      if ((*v9)(v5, 1, v6) == 1)
      {
        sub_1D2FF14DC(v5, &qword_1EC749940, &qword_1D30F1B10);
      }

      else
      {
        v40 = *v54;
        (*v54)(v56, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_1D30D7E10(0, *(a1 + 2) + 1, 1, a1);
        }

        v42 = *(a1 + 2);
        v41 = *(a1 + 3);
        if (v42 >= v41 >> 1)
        {
          a1 = sub_1D30D7E10(v41 > 1, v42 + 1, 1, a1);
        }

        *(a1 + 2) = v42 + 1;
        v43 = &a1[((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v42];
        v6 = v53;
        v40(v43, v56, v53);
      }

      ++v10;
      v14 += 16;
      if (v16 == v10)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  v45 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_1D30057B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v6[24] = a5;
  v6[25] = v5;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749948, &unk_1D30F1B20);
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v9 = *(v8 + 64) + 15;
  v6[28] = swift_task_alloc();
  v10 = sub_1D30E881C();
  v6[29] = v10;
  v11 = *(v10 - 8);
  v6[30] = v11;
  v12 = *(v11 + 64) + 15;
  v6[31] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500) - 8) + 64) + 15;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v14 = sub_1D30E88CC();
  v6[34] = v14;
  v15 = *(v14 - 8);
  v6[35] = v15;
  v16 = *(v15 + 64) + 15;
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v17 = sub_1D30E8D9C();
  v6[43] = v17;
  v18 = *(v17 - 8);
  v6[44] = v18;
  v19 = *(v18 + 64) + 15;
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v20 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D3005A78, 0, 0);
}

uint64_t sub_1D3005A78()
{
  v244 = v0;
  v1 = v0;
  v243[1] = *MEMORY[0x1E69E9840];
  v2 = v0[24];
  v225 = v2;
  if (v2)
  {
    if (qword_1EE3133A0 != -1)
    {
      swift_once();
    }

    v3 = v0[48];
    v4 = v0[43];
    v5 = v0[44];
    v235 = v1[43];
    v7 = v1[21];
    v6 = v1[22];
    v8 = v1[20];
    v9 = sub_1D30E8B3C();
    __swift_project_value_buffer(v9, qword_1EE3133A8);
    v10 = sub_1D30E928C();
    v11 = *(v5 + 16);
    v11(v3, v6, v235);
    sub_1D2FF17B0(v8, v7);

    v12 = sub_1D30E8B1C();
    sub_1D2FF1804(v8, v7);

    v236 = v10;
    v13 = v10;
    v14 = v12;
    v15 = os_log_type_enabled(v12, v13);
    v16 = v1[48];
    v18 = v1[43];
    v17 = v1[44];
    v229 = v11;
    if (v15)
    {
      v19 = v2;
      v220 = v1[23];
      v20 = v242[21];
      v21 = v242[20];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v243[0] = v23;
      *v22 = 136446722;
      v24 = sub_1D30E88EC();
      v26 = sub_1D2FFEA04(v24, v25, v243);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v27 = sub_1D30E977C();
      v29 = v28;
      v30 = *(v17 + 8);
      v30(v16, v18);
      v31 = sub_1D2FFEA04(v27, v29, v243);
      v1 = v242;

      *(v22 + 14) = v31;
      *(v22 + 22) = 2082;
      *(v22 + 24) = sub_1D2FFEA04(v220, v19, v243);
      _os_log_impl(&dword_1D2FD9000, v14, v236, "Copy item resolved from bookmark data: %{public}s to: %{public}s attributing to bundle with ID: %{public}s", v22, 0x20u);
LABEL_10:
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v23, -1, -1);
      v54 = v22;
      v55 = v30;
      MEMORY[0x1D38B3760](v54, -1, -1);

      goto LABEL_13;
    }

    v55 = *(v17 + 8);
    v55(v16, v18);
  }

  else
  {
    if (qword_1EE3133A0 != -1)
    {
      swift_once();
    }

    v32 = v0[47];
    v33 = v0[43];
    v34 = v0[44];
    v36 = v1[21];
    v35 = v1[22];
    v37 = v1[20];
    v38 = sub_1D30E8B3C();
    __swift_project_value_buffer(v38, qword_1EE3133A8);
    v39 = sub_1D30E928C();
    v40 = *(v34 + 16);
    v40(v32, v35, v33);
    sub_1D2FF17B0(v37, v36);
    v14 = sub_1D30E8B1C();
    sub_1D2FF1804(v37, v36);
    v41 = os_log_type_enabled(v14, v39);
    v42 = v1[47];
    v44 = v1[43];
    v43 = v1[44];
    v229 = v40;
    if (v41)
    {
      v237 = v39;
      v46 = v1[20];
      v45 = v1[21];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v243[0] = v23;
      *v22 = 136446466;
      v47 = sub_1D30E88EC();
      v49 = sub_1D2FFEA04(v47, v48, v243);

      *(v22 + 4) = v49;
      *(v22 + 12) = 2082;
      sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v50 = sub_1D30E977C();
      v52 = v51;
      v30 = *(v43 + 8);
      v30(v42, v44);
      v53 = sub_1D2FFEA04(v50, v52, v243);

      *(v22 + 14) = v53;
      _os_log_impl(&dword_1D2FD9000, v14, v237, "Copy item resolved from bookmark data: %{public}s to: %{public}s", v22, 0x16u);
      goto LABEL_10;
    }

    v55 = *(v43 + 8);
    v55(v42, v44);
  }

LABEL_13:
  v1[49] = v55;
  v56 = v1[42];
  v57 = v1[34];
  v58 = v1[35];
  v59 = v1[33];
  v61 = v1[20];
  v60 = v1[21];
  *(v1 + 448) = 0;
  (*(v58 + 56))(v59, 1, 1, v57);
  sub_1D30E883C();
  sub_1D2FF14DC(v1[33], &qword_1EC7493C0, &qword_1D30EF500);
  if (*(v1 + 448) == 1)
  {
    if (qword_1EE3133A0 != -1)
    {
      swift_once();
    }

    v62 = v1[41];
    v63 = v1[42];
    v64 = v1[34];
    v65 = v1[35];
    v66 = sub_1D30E8B3C();
    __swift_project_value_buffer(v66, qword_1EE3133A8);
    (*(v65 + 16))(v62, v63, v64);
    v67 = sub_1D30E8B1C();
    v68 = sub_1D30E92BC();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v1[41];
    v72 = v1[34];
    v71 = v1[35];
    if (v69)
    {
      v221 = v55;
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v243[0] = v74;
      *v73 = 136446210;
      sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
      v75 = sub_1D30E977C();
      v77 = v76;
      (*(v71 + 8))(v70, v72);
      v78 = sub_1D2FFEA04(v75, v77, v243);

      *(v73 + 4) = v78;
      _os_log_impl(&dword_1D2FD9000, v67, v68, "The bookmark data for “%{public}s” are stale.", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1D38B3760](v74, -1, -1);
      v79 = v73;
      v55 = v221;
      MEMORY[0x1D38B3760](v79, -1, -1);
    }

    else
    {

      (*(v71 + 8))(v70, v72);
    }
  }

  v80 = v1[25];
  sub_1D3003CF4(v1[22], 0, v1[46]);
  v222 = v55;
  v81 = v1[45];
  v82 = v1[34];
  v83 = v1[35];
  v85 = v1[31];
  v84 = v1[32];
  v86 = v1[29];
  v87 = v1[30];
  v88 = v1[44] + 16;
  v229(v81, v1[46], v1[43]);
  (*(v87 + 104))(v85, *MEMORY[0x1E6968F70], v86);
  sub_1D3040AB4(v81, v85, v84);
  if ((*(v83 + 48))(v84, 1, v82) == 1)
  {
    v89 = v1[46];
    v90 = v242[44];
    v91 = v242[43];
    v92 = v242[42];
    v93 = v242[35];
    v226 = v242[34];
    sub_1D2FF14DC(v242[32], &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for HelperError();
    sub_1D300A61C(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    v229(v94, v89, v91);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v95 = v242;
    v222(v89, v91);
    sub_1D30E885C();
    (*(v93 + 8))(v92, v226);
LABEL_33:
    v170 = v95[47];
    v169 = v95[48];
    v172 = v95[45];
    v171 = v95[46];
    v174 = v95[41];
    v173 = v95[42];
    v176 = v95[39];
    v175 = v95[40];
    v177 = v242[38];
    v178 = v242[37];
    v216 = v242[36];
    v218 = v242[33];
    v223 = v242[32];
    v227 = v242[31];
    v233 = v242[28];

    v179 = v242[1];
    v180 = *MEMORY[0x1E69E9840];
LABEL_34:

    return v179();
  }

  (*(v1[35] + 32))(v1[40], v1[32], v1[34]);
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v96 = v1[42];
  v98 = v1[39];
  v97 = v1[40];
  v99 = v1[38];
  v101 = v1[34];
  v100 = v1[35];
  v102 = sub_1D30E8B3C();
  __swift_project_value_buffer(v102, qword_1EE3133A8);
  v103 = sub_1D30E927C();
  v104 = *(v100 + 16);
  v104(v98, v96, v101);
  v215 = v104;
  v104(v99, v97, v101);
  v105 = sub_1D30E8B1C();
  v238 = v103;
  v106 = os_log_type_enabled(v105, v103);
  v107 = v1;
  v110 = v1 + 38;
  v109 = v1[38];
  v108 = v110[1];
  v112 = v107[34];
  v111 = v107[35];
  if (v106)
  {
    v113 = swift_slowAlloc();
    v213 = swift_slowAlloc();
    v243[0] = v213;
    *v113 = 136446466;
    sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
    v114 = sub_1D30E977C();
    v116 = v115;
    log = v105;
    v117 = *(v111 + 8);
    v118 = (v111 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v117(v108, v112);
    v119 = sub_1D2FFEA04(v114, v116, v243);

    *(v113 + 4) = v119;
    *(v113 + 12) = 2082;
    v120 = sub_1D30E977C();
    v122 = v121;
    v123 = v112;
    v124 = v117;
    v117(v109, v123);
    v125 = sub_1D2FFEA04(v120, v122, v243);

    *(v113 + 14) = v125;
    _os_log_impl(&dword_1D2FD9000, log, v238, "Copying the item at “%{public}s” to “%{public}s”…", v113, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v213, -1, -1);
    MEMORY[0x1D38B3760](v113, -1, -1);
  }

  else
  {

    v126 = *(v111 + 8);
    v118 = (v111 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v126(v109, v112);
    v127 = v112;
    v124 = v126;
    v126(v108, v127);
  }

  v95 = v242;
  v242[50] = v124;
  v128 = v242[40];
  v129 = v242[37];
  v130 = v242[34];
  v131 = objc_opt_self();
  v132 = [v131 defaultManager];
  sub_1D30E884C();
  v133 = sub_1D30E882C();
  v242[51] = v118;
  v124(v129, v130);
  v242[18] = 0;
  LODWORD(v129) = [v132 createDirectoryAtURL:v133 withIntermediateDirectories:1 attributes:0 error:v242 + 18];

  v134 = v242[18];
  if (!v129)
  {
    v231 = v242[46];
    v157 = v242[43];
    v158 = v242[44];
    v159 = v242[42];
    v160 = v242[40];
    v161 = v242[34];
    v162 = v134;
    sub_1D30E87DC();

    swift_willThrow();
    v124(v160, v161);
    v222(v231, v157);
    sub_1D30E885C();
    v124(v159, v161);
    goto LABEL_33;
  }

  v135 = v242[42];
  v136 = v242[40];
  v137 = v134;
  v138 = [v131 defaultManager];
  v139 = sub_1D30E882C();
  v140 = sub_1D30E882C();
  v242[19] = 0;
  LODWORD(v136) = [v138 copyItemAtURL:v139 toURL:v140 error:v242 + 19];

  v141 = v242[19];
  if (!v136)
  {
    v232 = v242[46];
    v164 = v242[43];
    v163 = v242[44];
    v165 = v242[42];
    v166 = v242[40];
    v167 = v242[34];
    v168 = v141;
    sub_1D30E87DC();

    swift_willThrow();
    v124(v166, v167);
    v222(v232, v164);
    sub_1D30E885C();
    v124(v165, v167);
    goto LABEL_33;
  }

  if (!v225)
  {
    v182 = v242[46];
    v183 = v242[43];
    v184 = v242[44];
    v185 = v242[40];
    v186 = v242[34];
    v187 = v141;
    v124(v185, v186);
    v222(v182, v183);
    v188 = v242[50];
    v189 = v242[51];
    v191 = v242[47];
    v190 = v242[48];
    v193 = v242[45];
    v192 = v242[46];
    v194 = v242[42];
    v195 = v242[41];
    v196 = v242[40];
    loga = v242[39];
    v214 = v242[38];
    v217 = v242[37];
    v219 = v242[36];
    v197 = v242[34];
    v224 = v242[33];
    v228 = v242[32];
    v234 = v242[31];
    v240 = v242[28];
    sub_1D30E885C();
    v188(v194, v197);

    v179 = v242[1];
    v198 = *MEMORY[0x1E69E9840];
    goto LABEL_34;
  }

  v142 = v124;
  v143 = v242[24];
  v215(v242[36], v242[40], v242[34]);

  v144 = v141;
  v145 = sub_1D30E8B1C();
  v146 = sub_1D30E92BC();

  v147 = os_log_type_enabled(v145, v146);
  v148 = v242[36];
  v149 = v242[34];
  if (v147)
  {
    v230 = v242[23];
    v150 = swift_slowAlloc();
    v239 = v143;
    v151 = swift_slowAlloc();
    v243[0] = v151;
    *v150 = 136446466;
    sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
    v152 = sub_1D30E977C();
    v154 = v153;
    v142(v148, v149);
    v155 = v152;
    v95 = v242;
    v156 = sub_1D2FFEA04(v155, v154, v243);

    *(v150 + 4) = v156;
    *(v150 + 12) = 2082;
    *(v150 + 14) = sub_1D2FFEA04(v230, v239, v243);
    _os_log_impl(&dword_1D2FD9000, v145, v146, "Attributing the item at “%{public}s” to the bundle with the ID “%{public}s”…", v150, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v151, -1, -1);
    MEMORY[0x1D38B3760](v150, -1, -1);
  }

  else
  {

    v142(v148, v149);
  }

  v199 = v95[40];
  v200 = v95[27];
  v241 = v95[28];
  v201 = v95[26];
  v202 = v95[23];
  v203 = [objc_opt_self() defaultManager];
  v95[52] = v203;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749950, &unk_1D30F1B30);
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_1D30F1A10;
  v205 = sub_1D30E882C();
  v206 = [objc_opt_self() pathInfoWithBinaryURL_];

  *(v204 + 32) = v206;
  sub_1D300A5B8();
  v207 = sub_1D30E916C();
  v95[53] = v207;

  v208 = sub_1D30E906C();
  v95[54] = v208;
  v95[2] = v95;
  v95[3] = sub_1D3006ED0;
  swift_continuation_init();
  v95[17] = v201;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v95 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
  sub_1D30E91BC();
  (*(v200 + 32))(boxed_opaque_existential_0Tm, v241, v201);
  v95[10] = MEMORY[0x1E69E9820];
  v95[11] = 1107296256;
  v95[12] = sub_1D3007390;
  v95[13] = &block_descriptor_0;
  [v203 registerPaths:v207 forBundleID:v208 completionHandler:?];
  (*(v200 + 8))(boxed_opaque_existential_0Tm, v201);
  v210 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DEC8](v95 + 2);
}

uint64_t sub_1D3006ED0()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 440) = v2;
  if (v2)
  {
    v3 = sub_1D30071BC;
  }

  else
  {
    v3 = sub_1D300700C;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D300700C()
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 408);
  v4 = *(v0 + 416);
  v5 = *(v0 + 392);
  v6 = *(v0 + 368);
  v7 = *(v0 + 344);
  v8 = *(v0 + 352);
  (*(v0 + 400))(*(v0 + 320), *(v0 + 272));
  v5(v6, v7);

  v9 = *(v0 + 400);
  v10 = *(v0 + 408);
  v12 = *(v0 + 376);
  v11 = *(v0 + 384);
  v14 = *(v0 + 360);
  v13 = *(v0 + 368);
  v16 = *(v0 + 328);
  v15 = *(v0 + 336);
  v21 = *(v0 + 320);
  v22 = *(v0 + 312);
  v23 = *(v0 + 304);
  v24 = *(v0 + 296);
  v17 = *(v0 + 272);
  v25 = *(v0 + 288);
  v26 = *(v0 + 264);
  v27 = *(v0 + 256);
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  sub_1D30E885C();
  v9(v15, v17);

  v18 = *(v0 + 8);
  v19 = *MEMORY[0x1E69E9840];

  return v18();
}

uint64_t sub_1D30071BC()
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = v0[55];
  v29 = v0[54];
  v31 = v0[53];
  v2 = v0[50];
  v3 = v0[51];
  v25 = v0[49];
  v27 = v0[52];
  v4 = v0[46];
  v5 = v0[43];
  v6 = v0[44];
  v7 = v0[42];
  v8 = v0[40];
  v9 = v0[34];
  swift_willThrow();
  v2(v8, v9);
  v25(v4, v5);

  sub_1D30E885C();
  v2(v7, v9);
  v11 = v0[47];
  v10 = v0[48];
  v13 = v0[45];
  v12 = v0[46];
  v15 = v0[41];
  v14 = v0[42];
  v17 = v0[39];
  v16 = v0[40];
  v18 = v0[37];
  v19 = v0[38];
  v23 = v0[55];
  v24 = v0[36];
  v26 = v0[33];
  v28 = v0[32];
  v30 = v0[31];
  v32 = v0[28];

  v20 = v0[1];
  v21 = *MEMORY[0x1E69E9840];

  return v20();
}

void sub_1D3007390(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749948, &unk_1D30F1B20);
    sub_1D30E91CC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749948, &unk_1D30F1B20);
    sub_1D30E91DC();
  }
}

uint64_t sub_1D3007420(char *a1, uint64_t a2, unint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1D3008D30(a1, a2, a3, "Copy item at: %{public}s to bookmark with data: %{public}s", "Copying the item at “%{public}s” to “%{public}s”…");
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D300747C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v6[24] = a5;
  v6[25] = v5;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749948, &unk_1D30F1B20);
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v9 = *(v8 + 64) + 15;
  v6[28] = swift_task_alloc();
  v10 = sub_1D30E881C();
  v6[29] = v10;
  v11 = *(v10 - 8);
  v6[30] = v11;
  v12 = *(v11 + 64) + 15;
  v6[31] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500) - 8) + 64) + 15;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v14 = sub_1D30E88CC();
  v6[34] = v14;
  v15 = *(v14 - 8);
  v6[35] = v15;
  v16 = *(v15 + 64) + 15;
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v17 = sub_1D30E8D9C();
  v6[43] = v17;
  v18 = *(v17 - 8);
  v6[44] = v18;
  v19 = *(v18 + 64) + 15;
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v20 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D3007740, 0, 0);
}

uint64_t sub_1D3007740()
{
  v244 = v0;
  v1 = v0;
  v243[1] = *MEMORY[0x1E69E9840];
  v2 = v0[24];
  v225 = v2;
  if (v2)
  {
    if (qword_1EE3133A0 != -1)
    {
      swift_once();
    }

    v3 = v0[48];
    v4 = v0[43];
    v5 = v0[44];
    v235 = v1[43];
    v7 = v1[21];
    v6 = v1[22];
    v8 = v1[20];
    v9 = sub_1D30E8B3C();
    __swift_project_value_buffer(v9, qword_1EE3133A8);
    v10 = sub_1D30E928C();
    v11 = *(v5 + 16);
    v11(v3, v6, v235);
    sub_1D2FF17B0(v8, v7);

    v12 = sub_1D30E8B1C();
    sub_1D2FF1804(v8, v7);

    v236 = v10;
    v13 = v10;
    v14 = v12;
    v15 = os_log_type_enabled(v12, v13);
    v16 = v1[48];
    v18 = v1[43];
    v17 = v1[44];
    v229 = v11;
    if (v15)
    {
      v19 = v2;
      v220 = v1[23];
      v20 = v242[21];
      v21 = v242[20];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v243[0] = v23;
      *v22 = 136446722;
      v24 = sub_1D30E88EC();
      v26 = sub_1D2FFEA04(v24, v25, v243);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v27 = sub_1D30E977C();
      v29 = v28;
      v30 = *(v17 + 8);
      v30(v16, v18);
      v31 = sub_1D2FFEA04(v27, v29, v243);
      v1 = v242;

      *(v22 + 14) = v31;
      *(v22 + 22) = 2082;
      *(v22 + 24) = sub_1D2FFEA04(v220, v19, v243);
      _os_log_impl(&dword_1D2FD9000, v14, v236, "Resolved from bookmark data: %{public}s to: %{public}s attributing to bundle with ID: %{public}s", v22, 0x20u);
LABEL_10:
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v23, -1, -1);
      v54 = v22;
      v55 = v30;
      MEMORY[0x1D38B3760](v54, -1, -1);

      goto LABEL_13;
    }

    v55 = *(v17 + 8);
    v55(v16, v18);
  }

  else
  {
    if (qword_1EE3133A0 != -1)
    {
      swift_once();
    }

    v32 = v0[47];
    v33 = v0[43];
    v34 = v0[44];
    v36 = v1[21];
    v35 = v1[22];
    v37 = v1[20];
    v38 = sub_1D30E8B3C();
    __swift_project_value_buffer(v38, qword_1EE3133A8);
    v39 = sub_1D30E928C();
    v40 = *(v34 + 16);
    v40(v32, v35, v33);
    sub_1D2FF17B0(v37, v36);
    v14 = sub_1D30E8B1C();
    sub_1D2FF1804(v37, v36);
    v41 = os_log_type_enabled(v14, v39);
    v42 = v1[47];
    v44 = v1[43];
    v43 = v1[44];
    v229 = v40;
    if (v41)
    {
      v237 = v39;
      v46 = v1[20];
      v45 = v1[21];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v243[0] = v23;
      *v22 = 136446466;
      v47 = sub_1D30E88EC();
      v49 = sub_1D2FFEA04(v47, v48, v243);

      *(v22 + 4) = v49;
      *(v22 + 12) = 2082;
      sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v50 = sub_1D30E977C();
      v52 = v51;
      v30 = *(v43 + 8);
      v30(v42, v44);
      v53 = sub_1D2FFEA04(v50, v52, v243);

      *(v22 + 14) = v53;
      _os_log_impl(&dword_1D2FD9000, v14, v237, "Resolved from bookmark data: %{public}s to: %{public}s", v22, 0x16u);
      goto LABEL_10;
    }

    v55 = *(v43 + 8);
    v55(v42, v44);
  }

LABEL_13:
  v1[49] = v55;
  v56 = v1[42];
  v57 = v1[34];
  v58 = v1[35];
  v59 = v1[33];
  v61 = v1[20];
  v60 = v1[21];
  *(v1 + 448) = 0;
  (*(v58 + 56))(v59, 1, 1, v57);
  sub_1D30E883C();
  sub_1D2FF14DC(v1[33], &qword_1EC7493C0, &qword_1D30EF500);
  if (*(v1 + 448) == 1)
  {
    if (qword_1EE3133A0 != -1)
    {
      swift_once();
    }

    v62 = v1[41];
    v63 = v1[42];
    v64 = v1[34];
    v65 = v1[35];
    v66 = sub_1D30E8B3C();
    __swift_project_value_buffer(v66, qword_1EE3133A8);
    (*(v65 + 16))(v62, v63, v64);
    v67 = sub_1D30E8B1C();
    v68 = sub_1D30E92BC();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v1[41];
    v72 = v1[34];
    v71 = v1[35];
    if (v69)
    {
      v221 = v55;
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v243[0] = v74;
      *v73 = 136446210;
      sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
      v75 = sub_1D30E977C();
      v77 = v76;
      (*(v71 + 8))(v70, v72);
      v78 = sub_1D2FFEA04(v75, v77, v243);

      *(v73 + 4) = v78;
      _os_log_impl(&dword_1D2FD9000, v67, v68, "The bookmark data for “%{public}s” are stale.", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1D38B3760](v74, -1, -1);
      v79 = v73;
      v55 = v221;
      MEMORY[0x1D38B3760](v79, -1, -1);
    }

    else
    {

      (*(v71 + 8))(v70, v72);
    }
  }

  v80 = v1[25];
  sub_1D3003CF4(v1[22], 0, v1[46]);
  v222 = v55;
  v81 = v1[45];
  v82 = v1[34];
  v83 = v1[35];
  v85 = v1[31];
  v84 = v1[32];
  v86 = v1[29];
  v87 = v1[30];
  v88 = v1[44] + 16;
  v229(v81, v1[46], v1[43]);
  (*(v87 + 104))(v85, *MEMORY[0x1E6968F70], v86);
  sub_1D3040AB4(v81, v85, v84);
  if ((*(v83 + 48))(v84, 1, v82) == 1)
  {
    v89 = v1[46];
    v90 = v242[44];
    v91 = v242[43];
    v92 = v242[42];
    v93 = v242[35];
    v226 = v242[34];
    sub_1D2FF14DC(v242[32], &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for HelperError();
    sub_1D300A61C(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    v229(v94, v89, v91);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v95 = v242;
    v222(v89, v91);
    sub_1D30E885C();
    (*(v93 + 8))(v92, v226);
LABEL_33:
    v170 = v95[47];
    v169 = v95[48];
    v172 = v95[45];
    v171 = v95[46];
    v174 = v95[41];
    v173 = v95[42];
    v176 = v95[39];
    v175 = v95[40];
    v177 = v242[38];
    v178 = v242[37];
    v216 = v242[36];
    v218 = v242[33];
    v223 = v242[32];
    v227 = v242[31];
    v233 = v242[28];

    v179 = v242[1];
    v180 = *MEMORY[0x1E69E9840];
LABEL_34:

    return v179();
  }

  (*(v1[35] + 32))(v1[40], v1[32], v1[34]);
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v96 = v1[42];
  v98 = v1[39];
  v97 = v1[40];
  v99 = v1[38];
  v101 = v1[34];
  v100 = v1[35];
  v102 = sub_1D30E8B3C();
  __swift_project_value_buffer(v102, qword_1EE3133A8);
  v103 = sub_1D30E927C();
  v104 = *(v100 + 16);
  v104(v98, v96, v101);
  v215 = v104;
  v104(v99, v97, v101);
  v105 = sub_1D30E8B1C();
  v238 = v103;
  v106 = os_log_type_enabled(v105, v103);
  v107 = v1;
  v110 = v1 + 38;
  v109 = v1[38];
  v108 = v110[1];
  v112 = v107[34];
  v111 = v107[35];
  if (v106)
  {
    v113 = swift_slowAlloc();
    v213 = swift_slowAlloc();
    v243[0] = v213;
    *v113 = 136446466;
    sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
    v114 = sub_1D30E977C();
    v116 = v115;
    log = v105;
    v117 = *(v111 + 8);
    v118 = (v111 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v117(v108, v112);
    v119 = sub_1D2FFEA04(v114, v116, v243);

    *(v113 + 4) = v119;
    *(v113 + 12) = 2082;
    v120 = sub_1D30E977C();
    v122 = v121;
    v123 = v112;
    v124 = v117;
    v117(v109, v123);
    v125 = sub_1D2FFEA04(v120, v122, v243);

    *(v113 + 14) = v125;
    _os_log_impl(&dword_1D2FD9000, log, v238, "Moving the item at “%{public}s” to “%{public}s”…", v113, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v213, -1, -1);
    MEMORY[0x1D38B3760](v113, -1, -1);
  }

  else
  {

    v126 = *(v111 + 8);
    v118 = (v111 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v126(v109, v112);
    v127 = v112;
    v124 = v126;
    v126(v108, v127);
  }

  v95 = v242;
  v242[50] = v124;
  v128 = v242[40];
  v129 = v242[37];
  v130 = v242[34];
  v131 = objc_opt_self();
  v132 = [v131 defaultManager];
  sub_1D30E884C();
  v133 = sub_1D30E882C();
  v242[51] = v118;
  v124(v129, v130);
  v242[18] = 0;
  LODWORD(v129) = [v132 createDirectoryAtURL:v133 withIntermediateDirectories:1 attributes:0 error:v242 + 18];

  v134 = v242[18];
  if (!v129)
  {
    v231 = v242[46];
    v157 = v242[43];
    v158 = v242[44];
    v159 = v242[42];
    v160 = v242[40];
    v161 = v242[34];
    v162 = v134;
    sub_1D30E87DC();

    swift_willThrow();
    v124(v160, v161);
    v222(v231, v157);
    sub_1D30E885C();
    v124(v159, v161);
    goto LABEL_33;
  }

  v135 = v242[42];
  v136 = v242[40];
  v137 = v134;
  v138 = [v131 defaultManager];
  v139 = sub_1D30E882C();
  v140 = sub_1D30E882C();
  v242[19] = 0;
  LODWORD(v136) = [v138 moveItemAtURL:v139 toURL:v140 error:v242 + 19];

  v141 = v242[19];
  if (!v136)
  {
    v232 = v242[46];
    v164 = v242[43];
    v163 = v242[44];
    v165 = v242[42];
    v166 = v242[40];
    v167 = v242[34];
    v168 = v141;
    sub_1D30E87DC();

    swift_willThrow();
    v124(v166, v167);
    v222(v232, v164);
    sub_1D30E885C();
    v124(v165, v167);
    goto LABEL_33;
  }

  if (!v225)
  {
    v182 = v242[46];
    v183 = v242[43];
    v184 = v242[44];
    v185 = v242[40];
    v186 = v242[34];
    v187 = v141;
    v124(v185, v186);
    v222(v182, v183);
    v188 = v242[50];
    v189 = v242[51];
    v191 = v242[47];
    v190 = v242[48];
    v193 = v242[45];
    v192 = v242[46];
    v194 = v242[42];
    v195 = v242[41];
    v196 = v242[40];
    loga = v242[39];
    v214 = v242[38];
    v217 = v242[37];
    v219 = v242[36];
    v197 = v242[34];
    v224 = v242[33];
    v228 = v242[32];
    v234 = v242[31];
    v240 = v242[28];
    sub_1D30E885C();
    v188(v194, v197);

    v179 = v242[1];
    v198 = *MEMORY[0x1E69E9840];
    goto LABEL_34;
  }

  v142 = v124;
  v143 = v242[24];
  v215(v242[36], v242[40], v242[34]);

  v144 = v141;
  v145 = sub_1D30E8B1C();
  v146 = sub_1D30E92BC();

  v147 = os_log_type_enabled(v145, v146);
  v148 = v242[36];
  v149 = v242[34];
  if (v147)
  {
    v230 = v242[23];
    v150 = swift_slowAlloc();
    v239 = v143;
    v151 = swift_slowAlloc();
    v243[0] = v151;
    *v150 = 136446466;
    sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
    v152 = sub_1D30E977C();
    v154 = v153;
    v142(v148, v149);
    v155 = v152;
    v95 = v242;
    v156 = sub_1D2FFEA04(v155, v154, v243);

    *(v150 + 4) = v156;
    *(v150 + 12) = 2082;
    *(v150 + 14) = sub_1D2FFEA04(v230, v239, v243);
    _os_log_impl(&dword_1D2FD9000, v145, v146, "Attributing the item at “%{public}s” to the bundle with the ID “%{public}s”…", v150, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v151, -1, -1);
    MEMORY[0x1D38B3760](v150, -1, -1);
  }

  else
  {

    v142(v148, v149);
  }

  v199 = v95[40];
  v200 = v95[27];
  v241 = v95[28];
  v201 = v95[26];
  v202 = v95[23];
  v203 = [objc_opt_self() defaultManager];
  v95[52] = v203;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749950, &unk_1D30F1B30);
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_1D30F1A10;
  v205 = sub_1D30E882C();
  v206 = [objc_opt_self() pathInfoWithBinaryURL_];

  *(v204 + 32) = v206;
  sub_1D300A5B8();
  v207 = sub_1D30E916C();
  v95[53] = v207;

  v208 = sub_1D30E906C();
  v95[54] = v208;
  v95[2] = v95;
  v95[3] = sub_1D3008B98;
  swift_continuation_init();
  v95[17] = v201;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v95 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
  sub_1D30E91BC();
  (*(v200 + 32))(boxed_opaque_existential_0Tm, v241, v201);
  v95[10] = MEMORY[0x1E69E9820];
  v95[11] = 1107296256;
  v95[12] = sub_1D3007390;
  v95[13] = &block_descriptor_11;
  [v203 registerPaths:v207 forBundleID:v208 completionHandler:?];
  (*(v200 + 8))(boxed_opaque_existential_0Tm, v201);
  v210 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DEC8](v95 + 2);
}

uint64_t sub_1D3008B98()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 440) = v2;
  if (v2)
  {
    v3 = sub_1D300A664;
  }

  else
  {
    v3 = sub_1D300A6E0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D3008CD4(char *a1, uint64_t a2, unint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1D3008D30(a1, a2, a3, "Move item at: %{public}s to bookmark with data: %{public}s", "Moving the item at “%{public}s” to “%{public}s”…");
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D3008D30(char *a1, uint64_t a2, unint64_t a3, const char *a4, const char *a5)
{
  v127 = a5;
  v142 = a4;
  v6 = v5;
  v153[1] = *MEMORY[0x1E69E9840];
  v10 = sub_1D30E881C();
  v138 = *(v10 - 8);
  v139 = v10;
  v11 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v136 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v146 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v137 = &v124 - v17;
  v18 = sub_1D30E88CC();
  v141 = *(v18 - 8);
  v19 = *(v141 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v129 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v128 = &v124 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v147 = &v124 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v133 = &v124 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v148 = &v124 - v28;
  v29 = sub_1D30E8D9C();
  v150 = *(v29 - 8);
  v151 = v29;
  v30 = v150[8];
  v31 = MEMORY[0x1EEE9AC00](v29);
  v134 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v149 = &v124 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v124 - v35;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v37 = sub_1D30E8B3C();
  v38 = __swift_project_value_buffer(v37, qword_1EE3133A8);
  v39 = sub_1D30E928C();
  v40 = v150[2];
  v143 = v150 + 2;
  v144 = a1;
  v40(v36, a1, v151);
  sub_1D2FF17B0(a2, a3);
  v130 = v38;
  v41 = a3;
  v42 = v39;
  v43 = sub_1D30E8B1C();
  sub_1D2FF1804(a2, v41);
  v44 = os_log_type_enabled(v43, v42);
  v132 = v41;
  v131 = a2;
  v135 = v40;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v126 = v5;
    v46 = v45;
    v125 = swift_slowAlloc();
    v153[0] = v125;
    *v46 = 136446466;
    sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v47 = v151;
    v48 = sub_1D30E977C();
    v49 = v47;
    v51 = v50;
    v140 = v150[1];
    v140(v36, v49);
    v52 = sub_1D2FFEA04(v48, v51, v153);

    *(v46 + 4) = v52;
    *(v46 + 12) = 2082;
    v53 = sub_1D30E88EC();
    v55 = sub_1D2FFEA04(v53, v54, v153);

    *(v46 + 14) = v55;
    _os_log_impl(&dword_1D2FD9000, v43, v42, v142, v46, 0x16u);
    v56 = v125;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v56, -1, -1);
    v57 = v46;
    v6 = v126;
    MEMORY[0x1D38B3760](v57, -1, -1);
  }

  else
  {

    v140 = v150[1];
    v140(v36, v151);
  }

  result = sub_1D3003CF4(v144, 0, v149);
  v60 = v147;
  v59 = v148;
  v61 = v146;
  if (!v6)
  {
    v145 = 0;
    v63 = v134;
    v62 = v135;
    v135(v134, v149, v151);
    v64 = v136;
    (*(v138 + 104))(v136, *MEMORY[0x1E6968F70], v139);
    v65 = v137;
    sub_1D3040AB4(v63, v64, v137);
    v66 = v141;
    if ((*(v141 + 48))(v65, 1, v18) == 1)
    {
      sub_1D2FF14DC(v65, &qword_1EC7493C0, &qword_1D30EF500);
      type metadata accessor for HelperError();
      sub_1D300A61C(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      v67 = v149;
      v68 = v151;
      v62(v69, v149, v151);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      result = (v140)(v67, v68);
    }

    else
    {
      (*(v66 + 32))(v59, v65, v18);
      v152 = 0;
      (*(v66 + 56))(v61, 1, 1, v18);
      v70 = v133;
      v71 = v145;
      sub_1D30E883C();
      v145 = v71;
      if (v71)
      {
        sub_1D2FF14DC(v61, &qword_1EC7493C0, &qword_1D30EF500);
        (*(v66 + 8))(v59, v18);
      }

      else
      {
        sub_1D2FF14DC(v61, &qword_1EC7493C0, &qword_1D30EF500);
        v72 = v59;
        if (v152 == 1)
        {
          (*(v66 + 16))(v60, v70, v18);
          v73 = v60;
          v74 = v18;
          v75 = sub_1D30E8B1C();
          v76 = v66;
          v77 = sub_1D30E92BC();
          if (os_log_type_enabled(v75, v77))
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v153[0] = v79;
            *v78 = 136446210;
            sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
            v80 = sub_1D30E977C();
            v82 = v81;
            (*(v76 + 8))(v73, v74);
            v83 = sub_1D2FFEA04(v80, v82, v153);
            v72 = v148;

            *(v78 + 4) = v83;
            _os_log_impl(&dword_1D2FD9000, v75, v77, "The bookmark data for “%{public}s” are stale.", v78, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v79);
            MEMORY[0x1D38B3760](v79, -1, -1);
            v84 = v78;
            v70 = v133;
            MEMORY[0x1D38B3760](v84, -1, -1);
          }

          else
          {

            (*(v66 + 8))(v60, v74);
          }

          v18 = v74;
          v66 = v76;
        }

        v85 = sub_1D30E927C();
        v86 = v18;
        v87 = *(v66 + 16);
        v88 = v128;
        v87(v128, v72, v18);
        v89 = v129;
        v87(v129, v70, v86);
        v90 = sub_1D30E8B1C();
        v91 = os_log_type_enabled(v90, v85);
        v124 = v86;
        if (v91)
        {
          v92 = v66;
          v93 = v89;
          v94 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          v153[0] = v147;
          *v94 = 136446466;
          sub_1D300A61C(&qword_1EC7493D8, MEMORY[0x1E6968FB0]);
          v95 = sub_1D30E977C();
          LODWORD(v146) = v85;
          v97 = v96;
          v98 = *(v92 + 8);
          v98(v88, v86);
          v99 = sub_1D2FFEA04(v95, v97, v153);

          *(v94 + 4) = v99;
          *(v94 + 12) = 2082;
          v100 = sub_1D30E977C();
          v102 = v101;
          v98(v93, v86);
          v103 = v98;
          v104 = sub_1D2FFEA04(v100, v102, v153);
          v72 = v148;

          *(v94 + 14) = v104;
          _os_log_impl(&dword_1D2FD9000, v90, v146, v127, v94, 0x16u);
          v105 = v147;
          swift_arrayDestroy();
          MEMORY[0x1D38B3760](v105, -1, -1);
          MEMORY[0x1D38B3760](v94, -1, -1);
        }

        else
        {

          v106 = v88;
          v103 = *(v66 + 8);
          v103(v89, v86);
          v103(v106, v86);
        }

        v107 = objc_opt_self();
        v108 = [v107 defaultManager];
        v109 = v133;
        v110 = sub_1D30E882C();
        v153[0] = 0;
        v111 = [v108 removeItemAtURL:v110 error:v153];

        if (!v111)
        {
          v119 = v153[0];
          sub_1D30E87DC();

          swift_willThrow();
          sub_1D30E885C();
          v120 = v124;
          v103(v109, v124);
          v103(v72, v120);
          result = (v140)(v149, v151);
          goto LABEL_25;
        }

        v112 = v153[0];
        v113 = [v107 defaultManager];
        v114 = sub_1D30E882C();
        v115 = sub_1D30E882C();
        v153[0] = 0;
        v116 = [v113 copyItemAtURL:v114 toURL:v115 error:v153];

        if ((v116 & 1) == 0)
        {
          v121 = v153[0];
          sub_1D30E87DC();

          swift_willThrow();
          sub_1D30E885C();
          v122 = v124;
          v103(v109, v124);
          v103(v72, v122);
          result = (v140)(v149, v151);
          goto LABEL_25;
        }

        v117 = v153[0];
        sub_1D30E885C();
        v118 = v124;
        v103(v109, v124);
        v103(v72, v118);
      }

      result = (v140)(v149, v151);
    }
  }

LABEL_25:
  v123 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D3009B38(char *a1)
{
  v80[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D30E84EC();
  v79 = *(v2 - 8);
  v3 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v73 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D30E8D9C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v68 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v68 - v14;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v16 = sub_1D30E8B3C();
  v17 = __swift_project_value_buffer(v16, qword_1EE3133A8);
  v18 = sub_1D30E928C();
  v19 = v6[2];
  v76 = a1;
  v70 = v19;
  v71 = v6 + 2;
  v19(v15, a1, v5);
  v72 = v17;
  v20 = sub_1D30E8B1C();
  v21 = os_log_type_enabled(v20, v18);
  v74 = v2;
  v75 = v6;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v68 = v10;
    v23 = v22;
    v24 = swift_slowAlloc();
    v69 = v13;
    v25 = v5;
    v26 = v24;
    v80[0] = v24;
    *v23 = 136446210;
    sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v27 = sub_1D30E977C();
    v29 = v28;
    v30 = v6[1];
    v30(v15, v25);
    v31 = sub_1D2FFEA04(v27, v29, v80);

    *(v23 + 4) = v31;
    _os_log_impl(&dword_1D2FD9000, v20, v18, "Remove item at: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v32 = v26;
    v5 = v25;
    v13 = v69;
    MEMORY[0x1D38B3760](v32, -1, -1);
    v33 = v23;
    v10 = v68;
    MEMORY[0x1D38B3760](v33, -1, -1);
  }

  else
  {

    v30 = v6[1];
    v30(v15, v5);
  }

  v34 = v78;
  result = sub_1D3003CF4(v76, 0, v13);
  v36 = v79;
  if (!v34)
  {
    v78 = v30;
    v37 = [objc_opt_self() defaultManager];
    sub_1D30E8D3C();
    v38 = sub_1D30E906C();

    v80[0] = 0;
    v39 = [v37 removeItemAtPath:v38 error:v80];

    if (v39)
    {
      v40 = v80[0];
      result = (v78)(v13, v5);
    }

    else
    {
      v41 = v80[0];
      v42 = sub_1D30E87DC();

      swift_willThrow();
      v43 = v42;
      v44 = v73;
      sub_1D30E84CC();
      sub_1D300A61C(&qword_1EC749938, MEMORY[0x1E6967E70]);
      v45 = v74;
      v46 = sub_1D30E86DC();
      v77 = v42;
      v47 = v42;
      v48 = v45;

      v51 = *(v36 + 8);
      v50 = v36 + 8;
      v49 = v51;
      v51(v44, v48);
      if (v46)
      {
        goto LABEL_11;
      }

      v79 = v50;
      v52 = v48;
      v53 = v77;
      v54 = v77;
      sub_1D30E84DC();
      v55 = sub_1D30E86DC();

      v49(v44, v52);
      if (v55)
      {
LABEL_11:

        v56 = sub_1D30E92AC();
        v70(v10, v13, v5);
        v57 = sub_1D30E8B1C();
        if (os_log_type_enabled(v57, v56))
        {
          v58 = swift_slowAlloc();
          LODWORD(v79) = v56;
          v59 = v58;
          v60 = swift_slowAlloc();
          v80[0] = v60;
          *v59 = 136446210;
          sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8]);
          v61 = sub_1D30E977C();
          v63 = v62;
          v64 = v78;
          v78(v10, v5);
          v65 = sub_1D2FFEA04(v61, v63, v80);

          *(v59 + 4) = v65;
          _os_log_impl(&dword_1D2FD9000, v57, v79, "No item exists at “%{public}s”.", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v60);
          MEMORY[0x1D38B3760](v60, -1, -1);
          MEMORY[0x1D38B3760](v59, -1, -1);

          result = v64(v13, v5);
        }

        else
        {

          v66 = v78;
          v78(v10, v5);
          result = v66(v13, v5);
        }
      }

      else
      {
        result = (v78)(v13, v5);
      }
    }
  }

  v67 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D300A268()
{
  v1 = v0;
  v2 = sub_1D30E8D9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContainerManagerError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D300A554(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v15 = v10[1];
      if (v15)
      {
        v16 = *v10;
        v17 = 0;
        v18 = 0xE000000000000000;
        sub_1D30E948C();

        v17 = 0x1000000000000027;
        v18 = 0x80000001D30EB900;
        MEMORY[0x1D38B2610](v16, v15);

        return v17;
      }

      else
      {
        return 0x1000000000000026;
      }
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_1D30E948C();

      v17 = 0x1000000000000014;
      v18 = 0x80000001D30EB930;
      sub_1D300A61C(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v13 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v13);

      MEMORY[0x1D38B2610](782074082, 0xA400000000000000);
      v14 = v17;
      (*(v3 + 8))(v6, v2);
      return v14;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    return 0x1000000000000026;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x1000000000000028;
  }

  else
  {
    return 0xD000000000000022;
  }
}