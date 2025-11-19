uint64_t sub_1C3FC327C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FC3314(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1C3FC337C(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3FC3160;
}

void sub_1C3FC340C(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_1C3F2C800(*a1, (v4 + 5));
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_1C3FC3524(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3FC3744(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3FC35B0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FC3668(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3FC3744(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3FC36D8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FC3744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3FC3BC4(uint64_t a1)
{
  result = sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FC3C1C(uint64_t a1)
{
  result = sub_1C3FC3744(&qword_1EC0919F8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FC3C74()
{
  v45 = sub_1C4031070();
  v0 = *(v45 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1C4031020();
  v46 = *(v39 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v6 = *(v0 + 72);
  v44 = v0;
  v7 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v40 = 32 * v6;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4048850;
  v42 = v7;
  v43 = v8;
  v9 = v8 + v7;
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v10 = MEMORY[0x1E69E7290];
  *(&v51 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v50) = 0;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v11 = MEMORY[0x1E69E6530];
  *(&v51 + 1) = MEMORY[0x1E69E6530];
  *&v50 = 0;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v51 + 1) = v11;
  *&v50 = 0;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v51 + 1) = v11;
  *&v50 = 0;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v51 + 1) = v11;
  *&v50 = 0;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v51 + 1) = v11;
  *&v50 = 0;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v51 + 1) = v11;
  *&v50 = 0;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v51 + 1) = v11;
  *&v50 = 0;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v51 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v50) = 0;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v51 + 1) = v10;
  LOWORD(v50) = 0;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v51 + 1) = v10;
  LOWORD(v50) = 0;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v51 + 1) = v10;
  LOWORD(v50) = 0;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1C4031060();
  v38 = (v9 + 30 * v6);
  swift_getKeyPath();
  *(&v51 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091A00, &qword_1C404AC00);
  *&v50 = MEMORY[0x1E69E7CC0];
  v12 = *MEMORY[0x1E697BCD8];
  v13 = *(v46 + 104);
  v46 += 104;
  v14 = v5;
  v15 = v39;
  v13(v5, v12, v39);
  v16 = sub_1C4031030();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1C4031040();
  *(&v48 + 1) = v16;
  v20 = sub_1C3FC3744(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  v49 = v20;
  *&v47 = v19;
  sub_1C4031060();
  v40 -= v6;
  v38 = "originatingBundleID";
  swift_getKeyPath();
  *(&v51 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091A08, &qword_1C404AC30);
  v21 = MEMORY[0x1E69E7CC0];
  *&v50 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  v13(v14, *MEMORY[0x1E697BCE0], v15);
  v22 = *(v16 + 48);
  v23 = *(v16 + 52);
  swift_allocObject();
  v24 = sub_1C4031040();
  *(&v48 + 1) = v16;
  v49 = v20;
  *&v47 = v24;
  sub_1C4031060();
  swift_getKeyPath();
  v50 = 0u;
  v51 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091A10, &unk_1C404AC90);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C403DAB0;
  *(v26 + 32) = swift_getKeyPath();
  *(v25 + 32) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091A18, &qword_1C404ACA0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_1C4031090();
  *(&v48 + 1) = v27;
  v31 = v41;
  v49 = sub_1C3FC4B28();
  *&v47 = v30;
  sub_1C4031060();
  v32 = sub_1C3EFFFE8(0, 1, 1, v21);
  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = sub_1C3EFFFE8(v33 > 1, v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  v35 = v32;
  (*(v44 + 32))(&v32[v42 + v34 * v6], v31, v45);
  *&v47 = v43;
  sub_1C40173FC(v35);
  return v47;
}

unint64_t sub_1C3FC4B28()
{
  result = qword_1EC091A20;
  if (!qword_1EC091A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091A18, &qword_1C404ACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091A20);
  }

  return result;
}

uint64_t sub_1C3FC4B8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC27D0();
}

unint64_t sub_1C3FC4BA8()
{
  result = qword_1EC091A28;
  if (!qword_1EC091A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091A30, &qword_1C404ACA8);
    sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091A28);
  }

  return result;
}

unint64_t sub_1C3FC4CA8()
{
  result = qword_1EC091A38;
  if (!qword_1EC091A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091A08, &qword_1C404AC30);
    sub_1C3FC3744(&qword_1EC0919C8, type metadata accessor for CallHistorySchemaV30.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091A38);
  }

  return result;
}

unint64_t sub_1C3FC4DA8()
{
  result = qword_1EC091A40;
  if (!qword_1EC091A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091A00, &qword_1C404AC00);
    sub_1C3FC3744(&qword_1EC0919A0, type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091A40);
  }

  return result;
}

uint64_t sub_1C3FC4E5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC044C();
}

uint64_t sub_1C3FC4EDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC044C();
}

uint64_t sub_1C3FC4FB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC044C();
}

uint64_t sub_1C3FC504C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC044C();
}

uint64_t sub_1C3FC52F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC044C();
}

uint64_t sub_1C3FC54BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3FBF5EC();
}

uint64_t sub_1C3FC5570()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC044C();
}

uint64_t sub_1C3FC55F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4038040;
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FC5744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C40407B0;
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091A30, &qword_1C404ACA8);
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FC5A64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC19DC();
}

uint64_t sub_1C3FC5BC4@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3FC5CE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FC5DD4(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3FC5EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3FC5FA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FC60B8(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3FC6194()
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FC62A4()
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3FC6414(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3FC6528(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v15[-v11];
  sub_1C3EF1A60(a1, &v15[-v11], a5, a6);
  v18 = *a2;
  v13 = v18;
  swift_getKeyPath();
  v16 = v13;
  v17 = v12;
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C3FC668C(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3FC679C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  a4();
  sub_1C4030FB0();
}

double sub_1C3FC6860@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FC696C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FC6A40()
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FC6B4C@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FC6C54(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FC6D28()
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FC6E24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FC6F30(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FC7004()
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FC7104()
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3FC71E0@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, void (*a3)(void)@<X5>, void *a4@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  a3();
  sub_1C4030F80();

  *a4 = v8;
  return result;
}

uint64_t sub_1C3FC7314(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FC740C(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B10, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  a3();
  sub_1C4030F80();

  return v3;
}

uint64_t sub_1C3FC7534(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  a5();
  sub_1C4030FA0();
}

uint64_t sub_1C3FC7604@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AE8, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV31.CallRecord(0);
  sub_1C3FCA400(&qword_1EC091B00, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C3FCB8A8();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FC7724(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AE8, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FC77F0(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV31.CallRecord(0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091B80, &qword_1C404B948);
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  *(v1 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 48));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 18) = 1;
  v4 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 19) = 0;
  v5 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 20) = 256;
  *(v1 + 22) = 1;
  v6 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v7 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v8 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 25) = 0;
  v9 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 26) = 0;
  v10 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 27) = 0;
  v11 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906B0, &unk_1C403E190);
  sub_1C3F4DD50();
  sub_1C4030E10();

  *(v1 + 28) = 256;
  *(v1 + 30) = 1;
  v12 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 31) = 16843009;
  v13 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 35) = 16843009;
  *(v1 + 39) = 257;
  *(v1 + 41) = 1;
  v14 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 42) = 1;
  v15 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091B38, &qword_1C404B898);
  type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem(0);
  sub_1C3FCBAA8();
  sub_1C4030E00();

  v16 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091B40, &qword_1C404B8C8);
  type metadata accessor for CallHistorySchemaV31.Handle(0);
  sub_1C3FCB9A8();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 39) = 0;
  *(v1 + 32) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));
  sub_1C3EAE504(a1, v1 + 48);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FC7EAC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3110CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FC7F78()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3FC8068@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AC0, type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AD8, type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FC8178(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AC0, type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FC8250()
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AC0, type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AD8, type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FC8358@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AC0, type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AD8, type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem);
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FC8494(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AC0, type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FC8560()
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AC0, type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AD8, type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem);
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C3FC8698()
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AD8, type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem);
  sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  sub_1C4030FC0();
}

uint64_t sub_1C3FC8770(__int128 *a1)
{
  type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091B90, &unk_1C404BA20);
  sub_1C3FCA400(&qword_1EC091AD8, type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FC88D0()
{
  result = sub_1C4030AC0();
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

double sub_1C3FC897C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AE8, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B00, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FC8A8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AE8, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FC8B64()
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AE8, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B00, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FC8C6C@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AE8, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B00, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FC8D78(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AE8, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FC8E48()
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AE8, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B00, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FC8F4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FCA400(a4, a5);
  sub_1C4030FB0();
}

double sub_1C3FC8FE0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AE8, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B00, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FC90F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AE8, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FC91C8()
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AE8, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091B00, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FC92D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FCA400(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3FC9374()
{
  swift_getKeyPath();
  sub_1C3FCA400(&qword_1EC091AE8, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV31.CallRecord(0);
  sub_1C3FCA400(&qword_1EC091B00, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C3FCB8A8();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FC948C()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV31.CallRecord(0);
  sub_1C3FCA400(&qword_1EC091B00, type metadata accessor for CallHistorySchemaV31.Handle);
  sub_1C3FCB8A8();
  sub_1C4030FA0();
}

uint64_t sub_1C3FC9548(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV31.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091B88, &qword_1C404B9C8);
  sub_1C3FCA400(&qword_1EC091B00, type metadata accessor for CallHistorySchemaV31.Handle);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v4 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 17) = 1;
  v5 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091B68, &qword_1C404B940);
  type metadata accessor for CallHistorySchemaV31.CallRecord(0);
  sub_1C3FCB8A8();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FC978C()
{
  result = sub_1C4030AC0();
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

uint64_t sub_1C3FC9888()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40407B0;
  v1 = type metadata accessor for CallHistorySchemaV31.CallRecord(0);
  v2 = sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV31.Handle(0);
  v4 = sub_1C3FCA400(&qword_1EC091B00, type metadata accessor for CallHistorySchemaV31.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem(0);
  v6 = sub_1C3FCA400(&qword_1EC091AD8, type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v8 = sub_1C3FCA400(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

unint64_t sub_1C3FC9A44(uint64_t a1)
{
  result = sub_1C3FC9A6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3FC9A6C()
{
  result = qword_1EC091AB0;
  if (!qword_1EC091AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091AB0);
  }

  return result;
}

void (*sub_1C3FC9AEC(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 48, v4);
  return sub_1C3FB4D6C;
}

uint64_t sub_1C3FC9BC8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FC9C80(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FC9D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3FC9D8C(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3FC9E1C;
}

uint64_t sub_1C3FC9E80()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FC9F38(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FC9FD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1C3FCA038(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3FC9E1C;
}

void sub_1C3FCA0C8(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_1C3F2C800(*a1, (v4 + 5));
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_1C3FCA1E0(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3FCA400(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3FCA26C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FCA324(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3FCA400(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3FCA394(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FCA400(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3FCA880(uint64_t a1)
{
  result = sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FCA8D8(uint64_t a1)
{
  result = sub_1C3FCA400(&qword_1EC091B30, type metadata accessor for CallHistorySchemaV31.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FCA930()
{
  v42 = sub_1C4031070();
  v0 = *(v42 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v38 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1C4031020();
  v43 = *(v37 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v5 = *(v0 + 72);
  v41 = v0;
  v6 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v35[1] = 32 * v5;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C404AD90;
  v39 = v6;
  v40 = v7;
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v8 = MEMORY[0x1E69E7290];
  *(&v48 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v47) = 0;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v9 = MEMORY[0x1E69E6530];
  *(&v48 + 1) = MEMORY[0x1E69E6530];
  *&v47 = 0;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v48 + 1) = v9;
  *&v47 = 0;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v48 + 1) = v9;
  *&v47 = 0;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v48 + 1) = v9;
  *&v47 = 0;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v48 + 1) = v9;
  *&v47 = 0;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v48 + 1) = v9;
  *&v47 = 0;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v48 + 1) = v9;
  *&v47 = 0;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v48 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v47) = 0;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v48 + 1) = v8;
  LOWORD(v47) = 0;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v48 + 1) = v8;
  LOWORD(v47) = 0;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v48 + 1) = v8;
  LOWORD(v47) = 0;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C4031060();
  v35[0] = "screenSharingType";
  swift_getKeyPath();
  *(&v48 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091B38, &qword_1C404B898);
  *&v47 = MEMORY[0x1E69E7CC0];
  v10 = *MEMORY[0x1E697BCD8];
  v11 = *(v43 + 104);
  v43 += 104;
  v13 = v36;
  v12 = v37;
  v11(v36, v10, v37);
  v14 = sub_1C4031030();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_1C4031040();
  *(&v45 + 1) = v14;
  v18 = sub_1C3FCA400(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  v46 = v18;
  *&v44 = v17;
  sub_1C4031060();
  v35[0] = "originatingBundleID";
  swift_getKeyPath();
  *(&v48 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091B40, &qword_1C404B8C8);
  v19 = MEMORY[0x1E69E7CC0];
  *&v47 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  v11(v13, *MEMORY[0x1E697BCE0], v12);
  v20 = *(v14 + 48);
  v21 = *(v14 + 52);
  swift_allocObject();
  v22 = sub_1C4031040();
  *(&v45 + 1) = v14;
  v46 = v18;
  *&v44 = v22;
  sub_1C4031060();
  swift_getKeyPath();
  v47 = 0u;
  v48 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091B48, &unk_1C404B928);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C403DAB0;
  *(v24 + 32) = swift_getKeyPath();
  *(v23 + 32) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091B50, &qword_1C404B938);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_1C4031090();
  *(&v45 + 1) = v25;
  v29 = v38;
  v46 = sub_1C3FCB828();
  *&v44 = v28;
  sub_1C4031060();
  v30 = sub_1C3EFFFE8(0, 1, 1, v19);
  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_1C3EFFFE8(v31 > 1, v32 + 1, 1, v30);
  }

  *(v30 + 2) = v32 + 1;
  v33 = v30;
  (*(v41 + 32))(&v30[v39 + v32 * v5], v29, v42);
  *&v44 = v40;
  sub_1C40173FC(v33);
  return v44;
}

unint64_t sub_1C3FCB828()
{
  result = qword_1EC091B58;
  if (!qword_1EC091B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091B50, &qword_1C404B938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091B58);
  }

  return result;
}

uint64_t sub_1C3FCB88C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC948C();
}

unint64_t sub_1C3FCB8A8()
{
  result = qword_1EC091B60;
  if (!qword_1EC091B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091B68, &qword_1C404B940);
    sub_1C3FCA400(&qword_1EC091B28, type metadata accessor for CallHistorySchemaV31.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091B60);
  }

  return result;
}

unint64_t sub_1C3FCB9A8()
{
  result = qword_1EC091B70;
  if (!qword_1EC091B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091B40, &qword_1C404B8C8);
    sub_1C3FCA400(&qword_1EC091B00, type metadata accessor for CallHistorySchemaV31.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091B70);
  }

  return result;
}

unint64_t sub_1C3FCBAA8()
{
  result = qword_1EC091B78;
  if (!qword_1EC091B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091B38, &qword_1C404B898);
    sub_1C3FCA400(&qword_1EC091AD8, type metadata accessor for CallHistorySchemaV31.EmergencyMediaItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091B78);
  }

  return result;
}

uint64_t sub_1C3FCBB5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC7104();
}

uint64_t sub_1C3FCBBDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC7104();
}

uint64_t sub_1C3FCBCB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC7104();
}

uint64_t sub_1C3FCBD4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC7104();
}

uint64_t sub_1C3FCBFF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC7104();
}

uint64_t sub_1C3FCC1BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3FC62A4();
}

uint64_t sub_1C3FCC2C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC7104();
}

uint64_t sub_1C3FCC348()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4038040;
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FCC49C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C40407B0;
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091B68, &qword_1C404B940);
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FCC7BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FC8698();
}

uint64_t sub_1C3FCC870@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C3FD3474();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 2) = v6;
  return result;
}

uint64_t sub_1C3FCC988(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FCCA68()
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C3FD3474();
  sub_1C4030F90();

  return v1 | (v2 << 16);
}

uint64_t sub_1C3FCCB78()
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C3FD33F8();
  sub_1C4030FB0();
}

uint64_t sub_1C3FCCCD8@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3FCCDFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FCCEE8(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3FCCFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3FCD0B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FCD1CC(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3FCD2A8()
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FCD3B8()
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3FCD528(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3FCD63C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v15[-v11];
  sub_1C3EF1A60(a1, &v15[-v11], a5, a6);
  v18 = *a2;
  v13 = v18;
  swift_getKeyPath();
  v16 = v13;
  v17 = v12;
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C3FCD7A0(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3FCD8B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  a4();
  sub_1C4030FB0();
}

double sub_1C3FCD974@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FCDA80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FCDB54()
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FCDC60@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FCDD68(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FCDE3C()
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FCDF38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FCE044(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FCE118()
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FCE218()
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3FCE2F4@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, void (*a3)(void)@<X5>, void *a4@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  a3();
  sub_1C4030F80();

  *a4 = v8;
  return result;
}

uint64_t sub_1C3FCE428(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FCE520(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C48, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  a3();
  sub_1C4030F80();

  return v3;
}

uint64_t sub_1C3FCE648(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  a5();
  sub_1C4030FA0();
}

uint64_t sub_1C3FCE718@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C20, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV32.CallRecord(0);
  sub_1C3FD1588(&qword_1EC091C38, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C3FD2A78();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FCE838(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C20, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FCE904(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV32.CallRecord(0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091CD0, &qword_1C404C618);
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  *(v1 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 48));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 18) = 1;
  v4 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 19) = 0;
  v5 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091CC0, &qword_1C404C610);
  sub_1C3FD33F8();
  sub_1C4030E10();

  *(v1 + 20) = 0;
  v6 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 21) = 256;
  *(v1 + 23) = 1;
  v7 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v8 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 25) = 0;
  v9 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 26) = 0;
  v10 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 27) = 0;
  v11 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 28) = 0;
  v12 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906B0, &unk_1C403E190);
  sub_1C3F4DD50();
  sub_1C4030E10();

  *(v1 + 29) = 256;
  *(v1 + 31) = 1;
  v13 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 32) = 16843009;
  v14 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 36) = 16843009;
  *(v1 + 40) = 257;
  *(v1 + 42) = 1;
  v15 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 43) = 1;
  v16 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091C70, &qword_1C404C560);
  type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem(0);
  sub_1C3FD2C78();
  sub_1C4030E00();

  v17 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091C78, &qword_1C404C590);
  type metadata accessor for CallHistorySchemaV32.Handle(0);
  sub_1C3FD2B78();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));
  sub_1C3EAE504(a1, v1 + 48);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FCF030()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3210CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FCF0FC()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3FCF1F0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091BF8, type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C10, type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FCF300(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091BF8, type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FCF3D8()
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091BF8, type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C10, type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FCF4E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091BF8, type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C10, type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem);
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FCF61C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091BF8, type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FCF6E8()
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091BF8, type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C10, type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem);
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C3FCF820()
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C10, type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem);
  sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  sub_1C4030FC0();
}

uint64_t sub_1C3FCF8F8(__int128 *a1)
{
  type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091CE0, &unk_1C404C6F0);
  sub_1C3FD1588(&qword_1EC091C10, type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FCFA58()
{
  result = sub_1C4030AC0();
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

double sub_1C3FCFB04@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C20, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C38, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FCFC14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C20, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FCFCEC()
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C20, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C38, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FCFDF4@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C20, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C38, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FCFF00(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C20, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FCFFD0()
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C20, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C38, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FD00D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FD1588(a4, a5);
  sub_1C4030FB0();
}

double sub_1C3FD0168@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C20, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C38, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FD0278(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C20, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FD0350()
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C20, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C38, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FD0458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FD1588(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3FD04FC()
{
  swift_getKeyPath();
  sub_1C3FD1588(&qword_1EC091C20, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV32.CallRecord(0);
  sub_1C3FD1588(&qword_1EC091C38, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C3FD2A78();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FD0614()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV32.CallRecord(0);
  sub_1C3FD1588(&qword_1EC091C38, type metadata accessor for CallHistorySchemaV32.Handle);
  sub_1C3FD2A78();
  sub_1C4030FA0();
}

uint64_t sub_1C3FD06D0(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV32.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091CD8, &qword_1C404C698);
  sub_1C3FD1588(&qword_1EC091C38, type metadata accessor for CallHistorySchemaV32.Handle);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v4 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 17) = 1;
  v5 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091CA0, &qword_1C404C608);
  type metadata accessor for CallHistorySchemaV32.CallRecord(0);
  sub_1C3FD2A78();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FD0914()
{
  result = sub_1C4030AC0();
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

uint64_t sub_1C3FD0A10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40407B0;
  v1 = type metadata accessor for CallHistorySchemaV32.CallRecord(0);
  v2 = sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV32.Handle(0);
  v4 = sub_1C3FD1588(&qword_1EC091C38, type metadata accessor for CallHistorySchemaV32.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem(0);
  v6 = sub_1C3FD1588(&qword_1EC091C10, type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v8 = sub_1C3FD1588(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

unint64_t sub_1C3FD0BCC(uint64_t a1)
{
  result = sub_1C3FD0BF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3FD0BF4()
{
  result = qword_1EC091BE8;
  if (!qword_1EC091BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091BE8);
  }

  return result;
}

void (*sub_1C3FD0C74(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 48, v4);
  return sub_1C3FB4D6C;
}

uint64_t sub_1C3FD0D50()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FD0E08(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FD0EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3FD0F14(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3FD0FA4;
}

uint64_t sub_1C3FD1008()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FD10C0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FD1158(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1C3FD11C0(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3FD0FA4;
}

void sub_1C3FD1250(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_1C3F2C800(*a1, (v4 + 5));
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_1C3FD1368(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3FD1588(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3FD13F4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FD14AC(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3FD1588(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3FD151C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FD1588(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3FD1A08(uint64_t a1)
{
  result = sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FD1A60(uint64_t a1)
{
  result = sub_1C3FD1588(&qword_1EC091C68, type metadata accessor for CallHistorySchemaV32.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FD1AB8()
{
  v45 = sub_1C4031070();
  v0 = *(v45 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v41 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1C4031020();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v7 = *(v0 + 72);
  v44 = v0;
  v8 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C404BA30;
  v42 = v9;
  v43 = v8;
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v10 = MEMORY[0x1E69E7290];
  *(&v50 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v49) = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v11 = MEMORY[0x1E69E6530];
  *(&v50 + 1) = MEMORY[0x1E69E6530];
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v11;
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v11;
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v11;
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v11;
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v11;
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v11;
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v11;
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v49) = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v10;
  LOWORD(v49) = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v10;
  LOWORD(v49) = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v10;
  LOWORD(v49) = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  v38 = "screenSharingType";
  swift_getKeyPath();
  *(&v50 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091C70, &qword_1C404C560);
  *&v49 = MEMORY[0x1E69E7CC0];
  v12 = *MEMORY[0x1E697BCD8];
  v13 = *(v3 + 104);
  v39 = v3 + 104;
  v14 = v6;
  v15 = v40;
  v13(v6, v12, v40);
  v16 = sub_1C4031030();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1C4031040();
  *(&v47 + 1) = v16;
  v20 = sub_1C3FD1588(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  v48 = v20;
  *&v46 = v19;
  sub_1C4031060();
  v38 = 33 * v7;
  v37[1] = "originatingBundleID";
  swift_getKeyPath();
  *(&v50 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091C78, &qword_1C404C590);
  v21 = MEMORY[0x1E69E7CC0];
  *&v49 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  v13(v14, *MEMORY[0x1E697BCE0], v15);
  v22 = *(v16 + 48);
  v23 = *(v16 + 52);
  swift_allocObject();
  v24 = sub_1C4031040();
  *(&v47 + 1) = v16;
  v48 = v20;
  *&v46 = v24;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091C80, &unk_1C404C5F0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C403DAB0;
  *(v26 + 32) = swift_getKeyPath();
  *(v25 + 32) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091C88, &qword_1C404C600);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_1C4031090();
  *(&v47 + 1) = v27;
  v31 = v41;
  v48 = sub_1C3FD29F8();
  *&v46 = v30;
  sub_1C4031060();
  v32 = sub_1C3EFFFE8(0, 1, 1, v21);
  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = sub_1C3EFFFE8(v33 > 1, v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  v35 = v32;
  (*(v44 + 32))(&v32[v43 + v34 * v7], v31, v45);
  *&v46 = v42;
  sub_1C40173FC(v35);
  return v46;
}

unint64_t sub_1C3FD29F8()
{
  result = qword_1EC091C90;
  if (!qword_1EC091C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091C88, &qword_1C404C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091C90);
  }

  return result;
}

uint64_t sub_1C3FD2A5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FD0614();
}

unint64_t sub_1C3FD2A78()
{
  result = qword_1EC091C98;
  if (!qword_1EC091C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091CA0, &qword_1C404C608);
    sub_1C3FD1588(&qword_1EC091C60, type metadata accessor for CallHistorySchemaV32.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091C98);
  }

  return result;
}

unint64_t sub_1C3FD2B78()
{
  result = qword_1EC091CA8;
  if (!qword_1EC091CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091C78, &qword_1C404C590);
    sub_1C3FD1588(&qword_1EC091C38, type metadata accessor for CallHistorySchemaV32.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091CA8);
  }

  return result;
}

unint64_t sub_1C3FD2C78()
{
  result = qword_1EC091CB0;
  if (!qword_1EC091CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091C70, &qword_1C404C560);
    sub_1C3FD1588(&qword_1EC091C10, type metadata accessor for CallHistorySchemaV32.EmergencyMediaItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091CB0);
  }

  return result;
}

uint64_t sub_1C3FD2D2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FCE218();
}

uint64_t sub_1C3FD2DAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FCE218();
}

uint64_t sub_1C3FD2E84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FCE218();
}

uint64_t sub_1C3FD2F1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FCE218();
}

uint64_t sub_1C3FD31C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FCE218();
}

uint64_t sub_1C3FD338C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3FCD3B8();
}

uint64_t sub_1C3FD33C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) | (*(v0 + 26) << 16);
  return sub_1C3FCCB78();
}

unint64_t sub_1C3FD33F8()
{
  result = qword_1EC091CB8;
  if (!qword_1EC091CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091CC0, &qword_1C404C610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091CB8);
  }

  return result;
}

unint64_t sub_1C3FD3474()
{
  result = qword_1EC091CC8;
  if (!qword_1EC091CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091CC0, &qword_1C404C610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091CC8);
  }

  return result;
}

uint64_t sub_1C3FD35C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FCE218();
}

uint64_t sub_1C3FD3640()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4038040;
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FD3794()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C40407B0;
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091CA0, &qword_1C404C608);
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FD3AB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FCF820();
}

uint64_t sub_1C3FD3B68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C3FD3474();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 2) = v6;
  return result;
}

uint64_t sub_1C3FD3C80(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FD3D60()
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C3FD3474();
  sub_1C4030F90();

  return v1 | (v2 << 16);
}

uint64_t sub_1C3FD3E70()
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C3FD33F8();
  sub_1C4030FB0();
}

uint64_t sub_1C3FD3FD0@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3FD40F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FD41E0(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3FD42EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3FD43B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FD44C4(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3FD45A0()
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FD4770(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3FD4884(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v15[-v11];
  sub_1C3EF1A60(a1, &v15[-v11], a5, a6);
  v18 = *a2;
  v13 = v18;
  swift_getKeyPath();
  v16 = v13;
  v17 = v12;
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C3FD49E8(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3FD4AF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  a4();
  sub_1C4030FB0();
}

double sub_1C3FD4BBC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FD4CC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FD4D9C()
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FD4EA8@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FD4FB0(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FD5084()
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FD5180@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FD528C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FD5360()
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FD5460()
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3FD553C@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, void (*a3)(void)@<X5>, void *a4@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  a3();
  sub_1C4030F80();

  *a4 = v8;
  return result;
}

uint64_t sub_1C3FD5670(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FD5768(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D98, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  a3();
  sub_1C4030F80();

  return v3;
}

uint64_t sub_1C3FD5890(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  a5();
  sub_1C4030FA0();
}

uint64_t sub_1C3FD5960@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D70, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV33.CallRecord(0);
  sub_1C3FD8C08(&qword_1EC091D88, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C3FDA0F8();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FD5A80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D70, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FD5B4C(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV33.CallRecord(0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091E08, &qword_1C404D2E8);
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  *(v1 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 48));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 18) = 1;
  v4 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 19) = 0;
  v5 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091CC0, &qword_1C404C610);
  sub_1C3FD33F8();
  sub_1C4030E10();

  *(v1 + 20) = 0;
  v6 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 21) = 256;
  *(v1 + 23) = 1;
  v7 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v8 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 25) = 0;
  v9 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 26) = 0;
  v10 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 27) = 0;
  v11 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 28) = 0;
  v12 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906B0, &unk_1C403E190);
  sub_1C3F4DD50();
  sub_1C4030E10();

  *(v1 + 29) = 256;
  *(v1 + 31) = 1;
  v13 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 32) = 16843009;
  v14 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 36) = 16843009;
  *(v1 + 40) = 257;
  *(v1 + 42) = 1;
  v15 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 43) = 1;
  v16 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091DC0, &qword_1C404D230);
  type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem(0);
  sub_1C3FDA2F8();
  sub_1C4030E00();

  v17 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091DC8, &qword_1C404D260);
  type metadata accessor for CallHistorySchemaV33.Handle(0);
  sub_1C3FDA1F8();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));
  sub_1C3EAE504(a1, v1 + 48);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FD6278()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3310CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FD6344()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3FD6438@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D48, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D60, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FD6548(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D48, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FD6620()
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D48, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D60, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FD6728@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D48, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D60, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FD6840(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D48, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C4030A90();
}

unint64_t sub_1C3FD6920()
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D48, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D60, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FD6A38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FD8C08(a4, a5);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3FD6AD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D48, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D60, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FD6C14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D48, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FD6CE0()
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D48, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D60, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C3FD6E18()
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D60, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  sub_1C4030FC0();
}

uint64_t sub_1C3FD6EF0(__int128 *a1)
{
  type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091E18, &qword_1C404D3E8);
  sub_1C3FD8C08(&qword_1EC091D60, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v3 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 17) = 256;
  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FD70D8()
{
  result = sub_1C4030AC0();
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

double sub_1C3FD7184@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D70, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D88, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FD7294(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D70, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FD736C()
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D70, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D88, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FD7474@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D70, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D88, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FD7580(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D70, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FD7650()
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D70, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D88, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FD7754(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FD8C08(a4, a5);
  sub_1C4030FB0();
}

double sub_1C3FD77E8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D70, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D88, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FD78F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D70, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FD79D0()
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D70, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D88, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FD7AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FD8C08(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3FD7B7C()
{
  swift_getKeyPath();
  sub_1C3FD8C08(&qword_1EC091D70, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV33.CallRecord(0);
  sub_1C3FD8C08(&qword_1EC091D88, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C3FDA0F8();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FD7C94()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV33.CallRecord(0);
  sub_1C3FD8C08(&qword_1EC091D88, type metadata accessor for CallHistorySchemaV33.Handle);
  sub_1C3FDA0F8();
  sub_1C4030FA0();
}

uint64_t sub_1C3FD7D50(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV33.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091E10, &qword_1C404D368);
  sub_1C3FD8C08(&qword_1EC091D88, type metadata accessor for CallHistorySchemaV33.Handle);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v4 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 17) = 1;
  v5 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091DF0, &unk_1C404D2D8);
  type metadata accessor for CallHistorySchemaV33.CallRecord(0);
  sub_1C3FDA0F8();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FD7F94()
{
  result = sub_1C4030AC0();
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

uint64_t sub_1C3FD8090()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40407B0;
  v1 = type metadata accessor for CallHistorySchemaV33.CallRecord(0);
  v2 = sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV33.Handle(0);
  v4 = sub_1C3FD8C08(&qword_1EC091D88, type metadata accessor for CallHistorySchemaV33.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem(0);
  v6 = sub_1C3FD8C08(&qword_1EC091D60, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v8 = sub_1C3FD8C08(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

unint64_t sub_1C3FD824C(uint64_t a1)
{
  result = sub_1C3FD8274();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3FD8274()
{
  result = qword_1EC091D38;
  if (!qword_1EC091D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091D38);
  }

  return result;
}

void (*sub_1C3FD82F4(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 48, v4);
  return sub_1C3FB4D6C;
}

uint64_t sub_1C3FD83D0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FD8488(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FD8520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3FD8594(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3FD8624;
}

uint64_t sub_1C3FD8688()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FD8740(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FD87D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1C3FD8840(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3FD8624;
}

void sub_1C3FD88D0(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_1C3F2C800(*a1, (v4 + 5));
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_1C3FD89E8(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3FD8C08(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3FD8A74()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FD8B2C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3FD8C08(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3FD8B9C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FD8C08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3FD9088(uint64_t a1)
{
  result = sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FD90E0(uint64_t a1)
{
  result = sub_1C3FD8C08(&qword_1EC091DB8, type metadata accessor for CallHistorySchemaV33.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FD9138()
{
  v45 = sub_1C4031070();
  v0 = *(v45 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v41 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1C4031020();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v7 = *(v0 + 72);
  v44 = v0;
  v8 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C404BA30;
  v42 = v9;
  v43 = v8;
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v10 = MEMORY[0x1E69E7290];
  *(&v50 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v49) = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v11 = MEMORY[0x1E69E6530];
  *(&v50 + 1) = MEMORY[0x1E69E6530];
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v11;
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v11;
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v11;
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v11;
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v11;
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v11;
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v11;
  *&v49 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v49) = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v10;
  LOWORD(v49) = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v10;
  LOWORD(v49) = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v50 + 1) = v10;
  LOWORD(v49) = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_1C4031060();
  v38 = "screenSharingType";
  swift_getKeyPath();
  *(&v50 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091DC0, &qword_1C404D230);
  *&v49 = MEMORY[0x1E69E7CC0];
  v12 = *MEMORY[0x1E697BCD8];
  v13 = *(v3 + 104);
  v39 = v3 + 104;
  v14 = v6;
  v15 = v40;
  v13(v6, v12, v40);
  v16 = sub_1C4031030();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1C4031040();
  *(&v47 + 1) = v16;
  v20 = sub_1C3FD8C08(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  v48 = v20;
  *&v46 = v19;
  sub_1C4031060();
  v38 = 33 * v7;
  v37[1] = "originatingBundleID";
  swift_getKeyPath();
  *(&v50 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091DC8, &qword_1C404D260);
  v21 = MEMORY[0x1E69E7CC0];
  *&v49 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  v13(v14, *MEMORY[0x1E697BCE0], v15);
  v22 = *(v16 + 48);
  v23 = *(v16 + 52);
  swift_allocObject();
  v24 = sub_1C4031040();
  *(&v47 + 1) = v16;
  v48 = v20;
  *&v46 = v24;
  sub_1C4031060();
  swift_getKeyPath();
  v49 = 0u;
  v50 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091DD0, &unk_1C404D2C0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C403DAB0;
  *(v26 + 32) = swift_getKeyPath();
  *(v25 + 32) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091DD8, &qword_1C404D2D0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_1C4031090();
  *(&v47 + 1) = v27;
  v31 = v41;
  v48 = sub_1C3FDA078();
  *&v46 = v30;
  sub_1C4031060();
  v32 = sub_1C3EFFFE8(0, 1, 1, v21);
  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = sub_1C3EFFFE8(v33 > 1, v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  v35 = v32;
  (*(v44 + 32))(&v32[v43 + v34 * v7], v31, v45);
  *&v46 = v42;
  sub_1C40173FC(v35);
  return v46;
}

unint64_t sub_1C3FDA078()
{
  result = qword_1EC091DE0;
  if (!qword_1EC091DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091DD8, &qword_1C404D2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091DE0);
  }

  return result;
}

uint64_t sub_1C3FDA0DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FD7C94();
}

unint64_t sub_1C3FDA0F8()
{
  result = qword_1EC091DE8;
  if (!qword_1EC091DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091DF0, &unk_1C404D2D8);
    sub_1C3FD8C08(&qword_1EC091DB0, type metadata accessor for CallHistorySchemaV33.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091DE8);
  }

  return result;
}

unint64_t sub_1C3FDA1F8()
{
  result = qword_1EC091DF8;
  if (!qword_1EC091DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091DC8, &qword_1C404D260);
    sub_1C3FD8C08(&qword_1EC091D88, type metadata accessor for CallHistorySchemaV33.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091DF8);
  }

  return result;
}

unint64_t sub_1C3FDA2F8()
{
  result = qword_1EC091E00;
  if (!qword_1EC091E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091DC0, &qword_1C404D230);
    sub_1C3FD8C08(&qword_1EC091D60, type metadata accessor for CallHistorySchemaV33.EmergencyMediaItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091E00);
  }

  return result;
}

uint64_t sub_1C3FDA3AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FD5460();
}

uint64_t sub_1C3FDA42C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FD5460();
}

uint64_t sub_1C3FDA504()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FD5460();
}

uint64_t sub_1C3FDA59C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FD5460();
}

uint64_t sub_1C3FDA844()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FD5460();
}

uint64_t sub_1C3FDAAB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) | (*(v0 + 26) << 16);
  return sub_1C3FD3E70();
}

uint64_t sub_1C3FDABE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FD5460();
}

uint64_t sub_1C3FDAC64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C40385C0;
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FDAE1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C40407B0;
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091DF0, &unk_1C404D2D8);
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FDB13C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FD6E18();
}

uint64_t sub_1C3FDB2F8@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3FDB41C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FDB508(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3FDB614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3FDB6D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FDB7EC(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3FDB8C8()
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FDBA98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3FDBBAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v15[-v11];
  sub_1C3EF1A60(a1, &v15[-v11], a5, a6);
  v18 = *a2;
  v13 = v18;
  swift_getKeyPath();
  v16 = v13;
  v17 = v12;
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C3FDBD10(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3FDBE20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C3FDBED8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C3FD3474();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 2) = v6;
  return result;
}

uint64_t sub_1C3FDBFEC(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FDC0C8()
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C3FD3474();
  sub_1C4030F90();

  return v1 | (v2 << 16);
}

uint64_t sub_1C3FDC1D0()
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C3FD33F8();
  sub_1C4030FB0();
}

double sub_1C3FDC28C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FDC398(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FDC46C()
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FDC578@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FDC680(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FDC754()
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FDC850@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FDC95C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FDCA30()
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FDCB30()
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3FDCC0C@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, void (*a3)(void)@<X5>, void *a4@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  a3();
  sub_1C4030F80();

  *a4 = v8;
  return result;
}

uint64_t sub_1C3FDCD40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FDCE38(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091ED0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  a3();
  sub_1C4030F80();

  return v3;
}

uint64_t sub_1C3FDCF60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  a5();
  sub_1C4030FA0();
}

uint64_t sub_1C3FDD030@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EA8, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV34.CallRecord(0);
  sub_1C3FE0328(&qword_1EC091EC0, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C3FE186C();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FDD150(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EA8, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FDD21C(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV34.CallRecord(0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091F40, &qword_1C404E010);
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  *(v1 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 48));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 18) = 1;
  v4 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 19) = 0;
  v5 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091CC0, &qword_1C404C610);
  sub_1C3FD33F8();
  sub_1C4030E10();

  *(v1 + 20) = 0;
  v6 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 21) = 256;
  *(v1 + 23) = 1;
  v7 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v8 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 25) = 0;
  v9 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 26) = 0;
  v10 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 27) = 0;
  v11 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 28) = 0;
  v12 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906B0, &unk_1C403E190);
  sub_1C3F4DD50();
  sub_1C4030E10();

  *(v1 + 29) = 256;
  *(v1 + 31) = 1;
  v13 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 32) = 16843009;
  v14 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 36) = 16843009;
  v15 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 40) = 16843008;
  v16 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 44) = 1;
  v17 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091EF8, &qword_1C404DF58);
  type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem(0);
  sub_1C3FE1A6C();
  sub_1C4030E00();

  v18 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091F00, &qword_1C404DF88);
  type metadata accessor for CallHistorySchemaV34.Handle(0);
  sub_1C3FE196C();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 37) = 0;
  *(v1 + 32) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));
  sub_1C3EAE504(a1, v1 + 48);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FDD998()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3410CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FDDA64()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3FDDB58@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E80, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E98, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FDDC68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E80, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FDDD40()
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E80, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E98, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FDDE48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E80, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E98, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FDDF60(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E80, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C4030A90();
}

unint64_t sub_1C3FDE040()
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E80, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E98, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FDE158(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FE0328(a4, a5);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3FDE1F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E80, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E98, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FDE334(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E80, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FDE400()
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E80, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E98, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C3FDE538()
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091E98, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  sub_1C4030FC0();
}

uint64_t sub_1C3FDE610(__int128 *a1)
{
  type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091F50, &unk_1C404E110);
  sub_1C3FE0328(&qword_1EC091E98, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v3 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 17) = 256;
  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FDE7F8()
{
  result = sub_1C4030AC0();
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

double sub_1C3FDE8A4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EA8, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EC0, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FDE9B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EA8, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FDEA8C()
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EA8, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EC0, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FDEB94@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EA8, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EC0, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FDECA0(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EA8, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FDED70()
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EA8, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EC0, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FDEE74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FE0328(a4, a5);
  sub_1C4030FB0();
}

double sub_1C3FDEF08@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EA8, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EC0, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FDF018(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EA8, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FDF0F0()
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EA8, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EC0, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FDF1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FE0328(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3FDF29C()
{
  swift_getKeyPath();
  sub_1C3FE0328(&qword_1EC091EA8, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV34.CallRecord(0);
  sub_1C3FE0328(&qword_1EC091EC0, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C3FE186C();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FDF3B4()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV34.CallRecord(0);
  sub_1C3FE0328(&qword_1EC091EC0, type metadata accessor for CallHistorySchemaV34.Handle);
  sub_1C3FE186C();
  sub_1C4030FA0();
}

uint64_t sub_1C3FDF470(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV34.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091F48, &qword_1C404E090);
  sub_1C3FE0328(&qword_1EC091EC0, type metadata accessor for CallHistorySchemaV34.Handle);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v4 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 17) = 1;
  v5 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091F28, &unk_1C404E000);
  type metadata accessor for CallHistorySchemaV34.CallRecord(0);
  sub_1C3FE186C();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FDF6B4()
{
  result = sub_1C4030AC0();
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

uint64_t sub_1C3FDF7B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40407B0;
  v1 = type metadata accessor for CallHistorySchemaV34.CallRecord(0);
  v2 = sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV34.Handle(0);
  v4 = sub_1C3FE0328(&qword_1EC091EC0, type metadata accessor for CallHistorySchemaV34.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem(0);
  v6 = sub_1C3FE0328(&qword_1EC091E98, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v8 = sub_1C3FE0328(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

unint64_t sub_1C3FDF96C(uint64_t a1)
{
  result = sub_1C3FDF994();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3FDF994()
{
  result = qword_1EC091E70;
  if (!qword_1EC091E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091E70);
  }

  return result;
}

void (*sub_1C3FDFA14(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 48, v4);
  return sub_1C3FB4D6C;
}

uint64_t sub_1C3FDFAF0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FDFBA8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FDFC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3FDFCB4(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3FDFD44;
}

uint64_t sub_1C3FDFDA8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FDFE60(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FDFEF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1C3FDFF60(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3FDFD44;
}

void sub_1C3FDFFF0(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_1C3F2C800(*a1, (v4 + 5));
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_1C3FE0108(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3FE0328(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3FE0194()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FE024C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3FE0328(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3FE02BC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FE0328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3FE07A8(uint64_t a1)
{
  result = sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FE0800(uint64_t a1)
{
  result = sub_1C3FE0328(&qword_1EC091EF0, type metadata accessor for CallHistorySchemaV34.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FE0858()
{
  v44 = sub_1C4031070();
  v0 = *(v44 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v40 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1C4031020();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v7 = *(v0 + 72);
  v43 = v0;
  v8 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C404D3F0;
  v41 = v9;
  v42 = v8;
  v10 = v9 + v8;
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v11 = MEMORY[0x1E69E7290];
  *(&v49 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v48) = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v12 = MEMORY[0x1E69E6530];
  *(&v49 + 1) = MEMORY[0x1E69E6530];
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v12;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v12;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v12;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v12;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v12;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v12;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v12;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v48) = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v11;
  LOWORD(v48) = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v11;
  LOWORD(v48) = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v12;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v11;
  LOWORD(v48) = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  v38[0] = 33 * v7;
  swift_getKeyPath();
  *(&v49 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091EF8, &qword_1C404DF58);
  *&v48 = MEMORY[0x1E69E7CC0];
  v13 = *MEMORY[0x1E697BCD8];
  v14 = v3 + 104;
  v15 = *(v3 + 104);
  v38[1] = v14;
  v16 = v6;
  v17 = v39;
  v15(v6, v13, v39);
  v18 = sub_1C4031030();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_1C4031040();
  *(&v46 + 1) = v18;
  v22 = sub_1C3FE0328(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  v47 = v22;
  *&v45 = v21;
  sub_1C4031060();
  v38[0] = v10 + 34 * v7;
  swift_getKeyPath();
  *(&v49 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091F00, &qword_1C404DF88);
  *&v48 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  v15(v16, *MEMORY[0x1E697BCE0], v17);
  v23 = *(v18 + 48);
  v24 = *(v18 + 52);
  swift_allocObject();
  v25 = sub_1C4031040();
  *(&v46 + 1) = v18;
  v47 = v22;
  *&v45 = v25;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091F08, &unk_1C404DFE8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C403DAB0;
  *(v27 + 32) = swift_getKeyPath();
  *(v26 + 32) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091F10, &qword_1C404DFF8);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_1C4031090();
  *(&v46 + 1) = v28;
  v32 = v40;
  v47 = sub_1C3FE17EC();
  *&v45 = v31;
  sub_1C4031060();
  v33 = sub_1C3EFFFE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_1C3EFFFE8(v34 > 1, v35 + 1, 1, v33);
  }

  *(v33 + 2) = v35 + 1;
  v36 = v33;
  (*(v43 + 32))(&v33[v42 + v35 * v7], v32, v44);
  *&v45 = v41;
  sub_1C40173FC(v36);
  return v45;
}

unint64_t sub_1C3FE17EC()
{
  result = qword_1EC091F18;
  if (!qword_1EC091F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091F10, &qword_1C404DFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091F18);
  }

  return result;
}

uint64_t sub_1C3FE1850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FDF3B4();
}

unint64_t sub_1C3FE186C()
{
  result = qword_1EC091F20;
  if (!qword_1EC091F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091F28, &unk_1C404E000);
    sub_1C3FE0328(&qword_1EC091EE8, type metadata accessor for CallHistorySchemaV34.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091F20);
  }

  return result;
}

unint64_t sub_1C3FE196C()
{
  result = qword_1EC091F30;
  if (!qword_1EC091F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091F00, &qword_1C404DF88);
    sub_1C3FE0328(&qword_1EC091EC0, type metadata accessor for CallHistorySchemaV34.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091F30);
  }

  return result;
}

unint64_t sub_1C3FE1A6C()
{
  result = qword_1EC091F38;
  if (!qword_1EC091F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091EF8, &qword_1C404DF58);
    sub_1C3FE0328(&qword_1EC091E98, type metadata accessor for CallHistorySchemaV34.EmergencyMediaItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091F38);
  }

  return result;
}

uint64_t sub_1C3FE1B20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FDCB30();
}

uint64_t sub_1C3FE1BA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FDCB30();
}

uint64_t sub_1C3FE1C98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FDCB30();
}

uint64_t sub_1C3FE1D30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FDCB30();
}

uint64_t sub_1C3FE1FD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FDCB30();
}

uint64_t sub_1C3FE2268()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) | (*(v0 + 26) << 16);
  return sub_1C3FDC1D0();
}

uint64_t sub_1C3FE239C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FDCB30();
}

uint64_t sub_1C3FE241C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C40385C0;
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FE25D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C40407B0;
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091F28, &unk_1C404E000);
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FE28F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FDE538();
}

uint64_t sub_1C3FE2AB0@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3FE2BD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FE2CC0(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3FE2DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3FE2E90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FE2FA4(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3FE3080()
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FE325C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3FE3370(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v15[-v11];
  sub_1C3EF1A60(a1, &v15[-v11], a5, a6);
  v18 = *a2;
  v13 = v18;
  swift_getKeyPath();
  v16 = v13;
  v17 = v12;
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C3FE34D4(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3FE35E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C3FE369C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C3FD3474();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 2) = v6;
  return result;
}

uint64_t sub_1C3FE37B0(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FE388C()
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C3FD3474();
  sub_1C4030F90();

  return v1 | (v2 << 16);
}

uint64_t sub_1C3FE3994()
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C3FD33F8();
  sub_1C4030FB0();
}

double sub_1C3FE3A50@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FE3B5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FE3C30()
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FE3D3C@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FE3E44(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FE3F18()
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FE4014@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FE4120(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FE41F4()
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FE42F4()
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3FE43D0@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, void (*a3)(void)@<X5>, void *a4@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  a3();
  sub_1C4030F80();

  *a4 = v8;
  return result;
}

uint64_t sub_1C3FE4504(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FE45FC(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC092008, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  a3();
  sub_1C4030F80();

  return v3;
}

uint64_t sub_1C3FE4724(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  a5();
  sub_1C4030FA0();
}

uint64_t sub_1C3FE47F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FE0, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV35.CallRecord(0);
  sub_1C3FE7AE8(&qword_1EC091FF8, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C3FE9074();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FE4914(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FE0, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FE49E0(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV35.CallRecord(0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092078, &qword_1C404ED78);
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  *(v1 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 48));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 18) = 1;
  v4 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 19) = 0;
  v5 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091CC0, &qword_1C404C610);
  sub_1C3FD33F8();
  sub_1C4030E10();

  *(v1 + 20) = 0;
  v6 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 21) = 256;
  *(v1 + 23) = 1;
  v7 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v8 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 25) = 0;
  v9 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 26) = 0;
  v10 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 27) = 0;
  v11 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 28) = 0;
  v12 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906B0, &unk_1C403E190);
  sub_1C3F4DD50();
  sub_1C4030E10();

  *(v1 + 29) = 16843008;
  v13 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 33) = 16843009;
  v14 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 37) = 16843009;
  v15 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 41) = 16843008;
  v16 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 45) = 1;
  v17 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092030, &qword_1C404ECC0);
  type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem(0);
  sub_1C3FE9274();
  sub_1C4030E00();

  v18 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092038, &qword_1C404ECF0);
  type metadata accessor for CallHistorySchemaV35.Handle(0);
  sub_1C3FE9174();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 38) = 0;
  *(v1 + 32) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));
  sub_1C3EAE504(a1, v1 + 48);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FE5154()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3510CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FE5220()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3FE5318@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FB8, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FD0, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FE5428(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FB8, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FE5500()
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FB8, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FD0, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FE5608@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FB8, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FD0, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FE5720(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FB8, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C4030A90();
}

unint64_t sub_1C3FE5800()
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FB8, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FD0, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FE5918(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FE7AE8(a4, a5);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3FE59B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FB8, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FD0, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FE5AF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FB8, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FE5BC0()
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FB8, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FD0, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C3FE5CF8()
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FD0, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  sub_1C4030FC0();
}

uint64_t sub_1C3FE5DD0(__int128 *a1)
{
  type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092088, &qword_1C404EE78);
  sub_1C3FE7AE8(&qword_1EC091FD0, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v3 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 17) = 256;
  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FE5FB8()
{
  result = sub_1C4030AC0();
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

double sub_1C3FE6064@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FE0, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FF8, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FE6174(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FE0, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FE624C()
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FE0, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FF8, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FE6354@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FE0, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FF8, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FE6460(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FE0, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FE6530()
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FE0, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FF8, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FE6634(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FE7AE8(a4, a5);
  sub_1C4030FB0();
}

double sub_1C3FE66C8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FE0, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FF8, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FE67D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FE0, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FE68B0()
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FE0, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FF8, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FE69B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FE7AE8(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3FE6A5C()
{
  swift_getKeyPath();
  sub_1C3FE7AE8(&qword_1EC091FE0, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV35.CallRecord(0);
  sub_1C3FE7AE8(&qword_1EC091FF8, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C3FE9074();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FE6B74()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV35.CallRecord(0);
  sub_1C3FE7AE8(&qword_1EC091FF8, type metadata accessor for CallHistorySchemaV35.Handle);
  sub_1C3FE9074();
  sub_1C4030FA0();
}

uint64_t sub_1C3FE6C30(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV35.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092080, &qword_1C404EDF8);
  sub_1C3FE7AE8(&qword_1EC091FF8, type metadata accessor for CallHistorySchemaV35.Handle);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v4 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 17) = 1;
  v5 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092060, &unk_1C404ED68);
  type metadata accessor for CallHistorySchemaV35.CallRecord(0);
  sub_1C3FE9074();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FE6E74()
{
  result = sub_1C4030AC0();
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

uint64_t sub_1C3FE6F70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40407B0;
  v1 = type metadata accessor for CallHistorySchemaV35.CallRecord(0);
  v2 = sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV35.Handle(0);
  v4 = sub_1C3FE7AE8(&qword_1EC091FF8, type metadata accessor for CallHistorySchemaV35.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem(0);
  v6 = sub_1C3FE7AE8(&qword_1EC091FD0, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v8 = sub_1C3FE7AE8(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

unint64_t sub_1C3FE712C(uint64_t a1)
{
  result = sub_1C3FE7154();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3FE7154()
{
  result = qword_1EC091FA8;
  if (!qword_1EC091FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091FA8);
  }

  return result;
}

void (*sub_1C3FE71D4(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 48, v4);
  return sub_1C3FB4D6C;
}

uint64_t sub_1C3FE72B0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FE7368(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FE7400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3FE7474(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3FE7504;
}

uint64_t sub_1C3FE7568()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FE7620(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FE76B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1C3FE7720(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3FE7504;
}

void sub_1C3FE77B0(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_1C3F2C800(*a1, (v4 + 5));
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_1C3FE78C8(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3FE7AE8(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3FE7954()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FE7A0C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3FE7AE8(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3FE7A7C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FE7AE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3FE7F68(uint64_t a1)
{
  result = sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FE7FC0(uint64_t a1)
{
  result = sub_1C3FE7AE8(&qword_1EC092028, type metadata accessor for CallHistorySchemaV35.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FE8018()
{
  v43 = sub_1C4031070();
  v0 = *(v43 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C4031020();
  v44 = *(v38 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v6 = *(v0 + 72);
  v42 = v0;
  v7 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C404E120;
  v40 = v8;
  v41 = v7;
  v9 = v8 + v7;
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v10 = MEMORY[0x1E69E7290];
  *(&v49 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v48) = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v11 = MEMORY[0x1E69E6530];
  *(&v49 + 1) = MEMORY[0x1E69E6530];
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v11;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v11;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v11;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v11;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v11;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v11;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v11;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v48) = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v10;
  LOWORD(v48) = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v10;
  LOWORD(v48) = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v11;
  *&v48 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v49 + 1) = v10;
  LOWORD(v48) = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1C4031060();
  v37 = v9 + 34 * v6;
  swift_getKeyPath();
  *(&v49 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092030, &qword_1C404ECC0);
  *&v48 = MEMORY[0x1E69E7CC0];
  v12 = *MEMORY[0x1E697BCD8];
  v13 = *(v44 + 104);
  v44 += 104;
  v14 = v5;
  v15 = v38;
  v13(v5, v12, v38);
  v16 = sub_1C4031030();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1C4031040();
  *(&v46 + 1) = v16;
  v20 = sub_1C3FE7AE8(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  v47 = v20;
  *&v45 = v19;
  sub_1C4031060();
  v37 = v9 + 35 * v6;
  swift_getKeyPath();
  *(&v49 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092038, &qword_1C404ECF0);
  v21 = MEMORY[0x1E69E7CC0];
  *&v48 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  v13(v14, *MEMORY[0x1E697BCE0], v15);
  v22 = *(v16 + 48);
  v23 = *(v16 + 52);
  swift_allocObject();
  v24 = sub_1C4031040();
  *(&v46 + 1) = v16;
  v47 = v20;
  *&v45 = v24;
  sub_1C4031060();
  swift_getKeyPath();
  v48 = 0u;
  v49 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092040, &unk_1C404ED50);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C403DAB0;
  *(v26 + 32) = swift_getKeyPath();
  *(v25 + 32) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092048, &qword_1C404ED60);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_1C4031090();
  *(&v46 + 1) = v27;
  v31 = v39;
  v47 = sub_1C3FE8FF4();
  *&v45 = v30;
  sub_1C4031060();
  v32 = sub_1C3EFFFE8(0, 1, 1, v21);
  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = sub_1C3EFFFE8(v33 > 1, v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  v35 = v32;
  (*(v42 + 32))(&v32[v41 + v34 * v6], v31, v43);
  *&v45 = v40;
  sub_1C40173FC(v35);
  return v45;
}

unint64_t sub_1C3FE8FF4()
{
  result = qword_1EC092050;
  if (!qword_1EC092050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC092048, &qword_1C404ED60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC092050);
  }

  return result;
}

uint64_t sub_1C3FE9058()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FE6B74();
}

unint64_t sub_1C3FE9074()
{
  result = qword_1EC092058;
  if (!qword_1EC092058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC092060, &unk_1C404ED68);
    sub_1C3FE7AE8(&qword_1EC092020, type metadata accessor for CallHistorySchemaV35.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC092058);
  }

  return result;
}

unint64_t sub_1C3FE9174()
{
  result = qword_1EC092068;
  if (!qword_1EC092068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC092038, &qword_1C404ECF0);
    sub_1C3FE7AE8(&qword_1EC091FF8, type metadata accessor for CallHistorySchemaV35.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC092068);
  }

  return result;
}

unint64_t sub_1C3FE9274()
{
  result = qword_1EC092070;
  if (!qword_1EC092070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC092030, &qword_1C404ECC0);
    sub_1C3FE7AE8(&qword_1EC091FD0, type metadata accessor for CallHistorySchemaV35.EmergencyMediaItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC092070);
  }

  return result;
}

uint64_t sub_1C3FE9328()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FE42F4();
}

uint64_t sub_1C3FE93A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FE42F4();
}

uint64_t sub_1C3FE94A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FE42F4();
}

uint64_t sub_1C3FE9538()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FE42F4();
}

uint64_t sub_1C3FE9838()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FE42F4();
}

uint64_t sub_1C3FE9AC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) | (*(v0 + 26) << 16);
  return sub_1C3FE3994();
}

uint64_t sub_1C3FE9BFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FE42F4();
}

uint64_t sub_1C3FE9C7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C40385C0;
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FE9E34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C40407B0;
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092060, &unk_1C404ED68);
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FEA154()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FE5CF8();
}

uint64_t sub_1C3FEA37C@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3FEA4A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FEA58C(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3FEA698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3FEA75C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FEA870(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3FEA94C()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FEAB54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3FEAC68(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v15[-v11];
  sub_1C3EF1A60(a1, &v15[-v11], a5, a6);
  v18 = *a2;
  v13 = v18;
  swift_getKeyPath();
  v16 = v13;
  v17 = v12;
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C3FEADCC(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3FEAEDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C3FEAF94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C3FD3474();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 2) = v6;
  return result;
}

uint64_t sub_1C3FEB0A8(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FEB184()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C3FD3474();
  sub_1C4030F90();

  return v1 | (v2 << 16);
}

uint64_t sub_1C3FEB28C()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C3FD33F8();
  sub_1C4030FB0();
}

double sub_1C3FEB348@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FEB454(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FEB528()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FEB634@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FEB73C(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FEB810()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FEB90C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FEBA18(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FEBAEC()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FEBBEC()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3FEBCFC@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, void (*a3)(void)@<X5>, void *a4@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  a3();
  sub_1C4030F80();

  *a4 = v8;
  return result;
}

uint64_t sub_1C3FEBE84(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  a3();
  sub_1C4030F80();

  return v3;
}

uint64_t sub_1C3FEBFAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  a5();
  sub_1C4030FA0();
}

uint64_t sub_1C3FEC07C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C3FEF8D0(&qword_1EC092130, type metadata accessor for CallHistorySchemaV36.Handle);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FEC1D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FEC29C()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C3FEF8D0(&qword_1EC092130, type metadata accessor for CallHistorySchemaV36.Handle);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C3FEC3D4()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C3FEF8D0(&qword_1EC092130, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030FC0();
}

uint64_t sub_1C3FEC4AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092118, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV36.CallRecord(0);
  sub_1C3FEF8D0(&qword_1EC092130, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C3FF0ED8();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FEC5C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092118, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FEC694(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV36.CallRecord(0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0921B0, &qword_1C404FB00);
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  *(v1 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 48));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 18) = 1;
  v4 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 19) = 0;
  v5 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091CC0, &qword_1C404C610);
  sub_1C3FD33F8();
  sub_1C4030E10();

  *(v1 + 20) = 0;
  v6 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 21) = 256;
  *(v1 + 23) = 1;
  v7 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v8 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 25) = 0;
  v9 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 26) = 0;
  v10 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 27) = 0;
  v11 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 28) = 0;
  v12 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906B0, &unk_1C403E190);
  sub_1C3F4DD50();
  sub_1C4030E10();

  *(v1 + 29) = 16843008;
  v13 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 33) = 16843009;
  v14 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 37) = 16843009;
  v15 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 41) = 16843008;
  v16 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 45) = 1;
  v17 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092168, &qword_1C404FA20);
  type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem(0);
  sub_1C3FF10D8();
  sub_1C4030E00();

  v18 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092170, &qword_1C404FA50);
  type metadata accessor for CallHistorySchemaV36.Handle(0);
  sub_1C3FF0FD8();
  sub_1C4030E00();

  *(v1 + 46) = 1;
  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 39) = 0;
  *(v1 + 32) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));
  sub_1C3EAE504(a1, v1 + 48);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FECE0C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3610CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FECED8()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3FECFD0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC0920F0, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092108, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FED0E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC0920F0, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FED1B8()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC0920F0, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092108, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FED2C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC0920F0, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092108, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FED3D8(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC0920F0, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C4030A90();
}

unint64_t sub_1C3FED4B8()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC0920F0, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092108, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FED5D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FEF8D0(a4, a5);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3FED670@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC0920F0, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092108, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FED7AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC0920F0, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FED878()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC0920F0, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092108, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C3FED9B0()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092108, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030FC0();
}

uint64_t sub_1C3FEDA88(__int128 *a1)
{
  type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0921C0, &qword_1C404FC28);
  sub_1C3FEF8D0(&qword_1EC092108, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v3 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 17) = 256;
  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FEDC70()
{
  result = sub_1C4030AC0();
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

double sub_1C3FEDD1C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092118, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092130, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FEDE2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092118, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FEDF04()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092118, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092130, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FEE00C@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092118, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092130, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FEE118(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092118, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FEE1E8()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092118, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092130, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FEE2EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FEF8D0(a4, a5);
  sub_1C4030FB0();
}

double sub_1C3FEE380@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092118, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092130, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FEE490(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092118, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FEE568()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092118, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092130, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FEE670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FEF8D0(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3FEE720()
{
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092118, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV36.CallRecord(0);
  sub_1C3FEF8D0(&qword_1EC092130, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C3FF0ED8();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FEE830()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV36.CallRecord(0);
  sub_1C3FEF8D0(&qword_1EC092130, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C3FF0ED8();
  sub_1C4030FA0();
}

uint64_t sub_1C3FEE8E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FEF8D0(&qword_1EC092118, type metadata accessor for CallHistorySchemaV36.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FEE9C0(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV36.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0921B8, &qword_1C404FBA8);
  sub_1C3FEF8D0(&qword_1EC092130, type metadata accessor for CallHistorySchemaV36.Handle);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v4 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 17) = 1;
  v5 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092198, &unk_1C404FAF0);
  type metadata accessor for CallHistorySchemaV36.CallRecord(0);
  sub_1C3FF0ED8();
  sub_1C4030E00();

  v6 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FEEC5C()
{
  result = sub_1C4030AC0();
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

uint64_t sub_1C3FEED58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40407B0;
  v1 = type metadata accessor for CallHistorySchemaV36.CallRecord(0);
  v2 = sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV36.Handle(0);
  v4 = sub_1C3FEF8D0(&qword_1EC092130, type metadata accessor for CallHistorySchemaV36.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem(0);
  v6 = sub_1C3FEF8D0(&qword_1EC092108, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v8 = sub_1C3FEF8D0(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

unint64_t sub_1C3FEEF14(uint64_t a1)
{
  result = sub_1C3FEEF3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3FEEF3C()
{
  result = qword_1EC0920E0;
  if (!qword_1EC0920E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0920E0);
  }

  return result;
}

void (*sub_1C3FEEFBC(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 48, v4);
  return sub_1C3FB4D6C;
}

uint64_t sub_1C3FEF098()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FEF150(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FEF1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3FEF25C(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3FEF2EC;
}

uint64_t sub_1C3FEF350()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FEF408(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FEF4A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1C3FEF508(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3FEF2EC;
}