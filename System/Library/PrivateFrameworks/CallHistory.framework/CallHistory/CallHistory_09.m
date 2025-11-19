void sub_1C3FEF598(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
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

uint64_t sub_1C3FEF6B0(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3FEF8D0(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3FEF73C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FEF7F4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3FEF8D0(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3FEF864(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FEF8D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3FEFD50(uint64_t a1)
{
  result = sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FEFDA8(uint64_t a1)
{
  result = sub_1C3FEF8D0(&qword_1EC092160, type metadata accessor for CallHistorySchemaV36.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FEFE00()
{
  v43 = sub_1C4031070();
  v0 = *(v43 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v39 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C4031020();
  v44 = *(v38 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v6 = *(v0 + 72);
  v42 = v0;
  v7 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C404EE80;
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
  *(&v49 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092168, &qword_1C404FA20);
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
  v20 = sub_1C3FEF8D0(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  v47 = v20;
  *&v45 = v19;
  sub_1C4031060();
  v36[1] = "originatingBundleID";
  v37 = v9 + 35 * v6;
  swift_getKeyPath();
  *(&v49 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092170, &qword_1C404FA50);
  *&v48 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  v13(v14, *MEMORY[0x1E697BCE0], v15);
  v21 = *(v16 + 48);
  v22 = *(v16 + 52);
  swift_allocObject();
  v23 = sub_1C4031040();
  *(&v46 + 1) = v16;
  v47 = v20;
  *&v45 = v23;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092178, &unk_1C404FAD8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C403DAB0;
  *(v25 + 32) = swift_getKeyPath();
  *(v24 + 32) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092180, &qword_1C404FAE8);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_1C4031090();
  *(&v46 + 1) = v26;
  v30 = v39;
  v47 = sub_1C3FF0E34();
  *&v45 = v29;
  sub_1C4031060();
  v31 = sub_1C3EFFFE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_1C3EFFFE8(v32 > 1, v33 + 1, 1, v31);
  }

  *(v31 + 2) = v33 + 1;
  v34 = v31;
  (*(v42 + 32))(&v31[v41 + v33 * v6], v30, v43);
  *&v45 = v40;
  sub_1C40173FC(v34);
  return v45;
}

unint64_t sub_1C3FF0E34()
{
  result = qword_1EC092188;
  if (!qword_1EC092188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC092180, &qword_1C404FAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC092188);
  }

  return result;
}

uint64_t sub_1C3FF0E98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FEC3D4();
}

uint64_t sub_1C3FF0EB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FEE830();
}

unint64_t sub_1C3FF0ED8()
{
  result = qword_1EC092190;
  if (!qword_1EC092190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC092198, &unk_1C404FAF0);
    sub_1C3FEF8D0(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC092190);
  }

  return result;
}

unint64_t sub_1C3FF0FD8()
{
  result = qword_1EC0921A0;
  if (!qword_1EC0921A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC092170, &qword_1C404FA50);
    sub_1C3FEF8D0(&qword_1EC092130, type metadata accessor for CallHistorySchemaV36.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0921A0);
  }

  return result;
}

unint64_t sub_1C3FF10D8()
{
  result = qword_1EC0921A8;
  if (!qword_1EC0921A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC092168, &qword_1C404FA20);
    sub_1C3FEF8D0(&qword_1EC092108, type metadata accessor for CallHistorySchemaV36.EmergencyMediaItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0921A8);
  }

  return result;
}

uint64_t sub_1C3FF118C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FEBBEC();
}

uint64_t sub_1C3FF120C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FEBBEC();
}

uint64_t sub_1C3FF1304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FEBBEC();
}

uint64_t sub_1C3FF139C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FEBBEC();
}

uint64_t sub_1C3FF169C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FEBBEC();
}

uint64_t sub_1C3FF192C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) | (*(v0 + 26) << 16);
  return sub_1C3FEB28C();
}

uint64_t sub_1C3FF1A60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FEBBEC();
}

uint64_t sub_1C3FF1AE0()
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

uint64_t sub_1C3FF1C98()
{
  v0 = sub_1C4031020();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v5 = *(sub_1C4031070() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15[1] = 4 * *(v5 + 72);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4039150;
  swift_getKeyPath();
  v19 = 0u;
  v20 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v20 + 1) = MEMORY[0x1E69E6530];
  *&v19 = 1;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v19 = 0u;
  v20 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092198, &unk_1C404FAF0);
  v9 = MEMORY[0x1E69E7CC0];
  *(&v20 + 1) = v8;
  *&v19 = MEMORY[0x1E69E7CC0];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v20 + 1) = v8;
  *&v19 = v9;
  swift_getKeyPath();
  (*(v1 + 104))(v4, *MEMORY[0x1E697BCE0], v0);
  v10 = sub_1C4031030();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_1C4031040();
  *(&v17 + 1) = v10;
  v18 = sub_1C3FEF8D0(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  *&v16 = v13;
  sub_1C4031060();
  return v7;
}

uint64_t sub_1C3FF2064()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FEE830();
}

uint64_t sub_1C3FF2190()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FED9B0();
}

uint64_t sub_1C3FF2358@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3FF247C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FF2568(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3FF2674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3FF2738@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FF284C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3FF2928()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FF2B04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3FF2C18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C3FF2D7C(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3FF2E8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C3FF2F44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C3FD3474();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 2) = v6;
  return result;
}

uint64_t sub_1C3FF3058(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FF3134()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C3FD3474();
  sub_1C4030F90();

  return v1 | (v2 << 16);
}

uint64_t sub_1C3FF323C()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C3FD33F8();
  sub_1C4030FB0();
}

double sub_1C3FF32F8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FF3404(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FF34D8()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FF35E4@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FF36EC(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FF37C0()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FF38BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FF39C8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FF3A9C()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FF3B9C()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3FF3C78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C3FF7808(&qword_1EC092268, type metadata accessor for CallHistorySchemaV37.Handle);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FF3DB4()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C3FF7808(&qword_1EC092268, type metadata accessor for CallHistorySchemaV37.Handle);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C3FF3EEC()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C3FF7808(&qword_1EC092268, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030FC0();
}

uint64_t sub_1C3FF3FC4@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, void (*a3)(void)@<X5>, void *a4@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  a3();
  sub_1C4030F80();

  *a4 = v8;
  return result;
}

uint64_t sub_1C3FF40F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FF41F0(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092278, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  a3();
  sub_1C4030F80();

  return v3;
}

uint64_t sub_1C3FF4318(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  a5();
  sub_1C4030FA0();
}

uint64_t sub_1C3FF43E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092250, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV37.CallRecord(0);
  sub_1C3FF7808(&qword_1EC092268, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C3FF8E44();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FF4504(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092250, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FF45D0(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV37.CallRecord(0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0922E8, &qword_1C40508E8);
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  *(v1 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 48));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 18) = 257;
  v4 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 20) = 0;
  v5 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091CC0, &qword_1C404C610);
  sub_1C3FD33F8();
  sub_1C4030E10();

  *(v1 + 21) = 0;
  v6 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 22) = 256;
  *(v1 + 24) = 1;
  v7 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 25) = 0;
  v8 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 26) = 0;
  v9 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 27) = 0;
  v10 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 28) = 0;
  v11 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 29) = 0;
  v12 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906B0, &unk_1C403E190);
  sub_1C3F4DD50();
  sub_1C4030E10();

  *(v1 + 30) = 16843008;
  v13 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 34) = 16843009;
  v14 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 38) = 16843009;
  v15 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 42) = 16843008;
  v16 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 46) = 1;
  v17 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0922A0, &qword_1C4050808);
  type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem(0);
  sub_1C3FF9060();
  sub_1C4030E00();

  *(v1 + 47) = 1;
  v18 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0922A8, &qword_1C4050860);
  type metadata accessor for CallHistorySchemaV37.Handle(0);
  sub_1C3FF8F44();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));
  sub_1C3EAE504(a1, v1 + 48);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FF4D40()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3710CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FF4E0C()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3FF4F08@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092228, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092240, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FF5018(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092228, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FF50F0()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092228, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092240, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FF51F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092228, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092240, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FF5310(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092228, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C4030A90();
}

unint64_t sub_1C3FF53F0()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092228, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092240, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FF5508(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FF7808(a4, a5);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3FF55A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092228, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092240, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FF56E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092228, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FF57B0()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092228, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092240, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C3FF58E8()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092240, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  sub_1C4030FC0();
}

uint64_t sub_1C3FF59C0(__int128 *a1)
{
  type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0922F8, &unk_1C4050A10);
  sub_1C3FF7808(&qword_1EC092240, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
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

uint64_t sub_1C3FF5BA8()
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

double sub_1C3FF5C54@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092250, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092268, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FF5D64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092250, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FF5E3C()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092250, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092268, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FF5F44@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092250, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092268, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FF6050(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092250, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FF6120()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092250, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092268, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FF6224(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FF7808(a4, a5);
  sub_1C4030FB0();
}

double sub_1C3FF62B8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092250, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092268, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FF63C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092250, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FF64A0()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092250, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092268, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FF65A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FF7808(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3FF664C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092250, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FF6724()
{
  swift_getKeyPath();
  sub_1C3FF7808(&qword_1EC092250, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV37.CallRecord(0);
  sub_1C3FF7808(&qword_1EC092268, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C3FF8E44();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FF6834()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV37.CallRecord(0);
  sub_1C3FF7808(&qword_1EC092268, type metadata accessor for CallHistorySchemaV37.Handle);
  sub_1C3FF8E44();
  sub_1C4030FA0();
}

uint64_t sub_1C3FF68F8(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV37.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0922F0, &qword_1C4050990);
  sub_1C3FF7808(&qword_1EC092268, type metadata accessor for CallHistorySchemaV37.Handle);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0922D0, &unk_1C40508D8);
  type metadata accessor for CallHistorySchemaV37.CallRecord(0);
  sub_1C3FF8E44();
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

uint64_t sub_1C3FF6B94()
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

uint64_t sub_1C3FF6C90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40407B0;
  v1 = type metadata accessor for CallHistorySchemaV37.CallRecord(0);
  v2 = sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV37.Handle(0);
  v4 = sub_1C3FF7808(&qword_1EC092268, type metadata accessor for CallHistorySchemaV37.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem(0);
  v6 = sub_1C3FF7808(&qword_1EC092240, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v8 = sub_1C3FF7808(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

unint64_t sub_1C3FF6E4C(uint64_t a1)
{
  result = sub_1C3FF6E74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3FF6E74()
{
  result = qword_1EC092218;
  if (!qword_1EC092218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC092218);
  }

  return result;
}

void (*sub_1C3FF6EF4(uint64_t *a1))(uint64_t *a1, char a2)
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

uint64_t sub_1C3FF6FD0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FF7088(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FF7120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3FF7194(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C3FF7224;
}

uint64_t sub_1C3FF7288()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FF7340(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FF73D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1C3FF7440(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C3FF7224;
}

void sub_1C3FF74D0(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
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

uint64_t sub_1C3FF75E8(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3FF7808(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3FF7674()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FF772C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3FF7808(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3FF779C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FF7808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3FF7C88(uint64_t a1)
{
  result = sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FF7CE0(uint64_t a1)
{
  result = sub_1C3FF7808(&qword_1EC092298, type metadata accessor for CallHistorySchemaV37.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FF7D38()
{
  v41 = sub_1C4031070();
  v0 = *(v41 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C4031020();
  v35 = v3;
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v6 = *(v0 + 72);
  v40 = v0;
  v7 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C404FC30;
  v38 = v8;
  v39 = v7;
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v9 = MEMORY[0x1E69E7290];
  *(&v47 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v46) = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v10 = MEMORY[0x1E69E6530];
  *(&v47 + 1) = MEMORY[0x1E69E6530];
  *&v46 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = v10;
  *&v46 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = v10;
  *&v46 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = v10;
  *&v46 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = v10;
  *&v46 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = v10;
  *&v46 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = v10;
  *&v46 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = v10;
  *&v46 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v46) = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = v9;
  LOWORD(v46) = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = v9;
  LOWORD(v46) = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = v10;
  *&v46 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = v9;
  LOWORD(v46) = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0922A0, &qword_1C4050808);
  *&v46 = MEMORY[0x1E69E7CC0];
  v11 = *MEMORY[0x1E697BCD8];
  v12 = *(v42 + 104);
  v42 += 104;
  v13 = v36;
  v12(v36, v11, v3);
  v14 = sub_1C4031030();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_1C4031040();
  *(&v44 + 1) = v14;
  v18 = sub_1C3FF7808(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  v45 = v18;
  *&v43 = v17;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0922A8, &qword_1C4050860);
  v19 = MEMORY[0x1E69E7CC0];
  *&v46 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  v12(v13, *MEMORY[0x1E697BCE0], v35);
  v20 = *(v14 + 48);
  v21 = *(v14 + 52);
  swift_allocObject();
  v22 = sub_1C4031040();
  *(&v44 + 1) = v14;
  v45 = v18;
  *&v43 = v22;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0922B0, &unk_1C40508C0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C403DAB0;
  *(v24 + 32) = swift_getKeyPath();
  *(v23 + 32) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0922B8, &qword_1C40508D0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_1C4031090();
  *(&v44 + 1) = v25;
  v29 = v37;
  v45 = sub_1C3FF8DBC();
  *&v43 = v28;
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
  (*(v40 + 32))(&v30[v39 + v32 * v6], v29, v41);
  *&v43 = v38;
  sub_1C40173FC(v33);
  return v43;
}

unint64_t sub_1C3FF8DBC()
{
  result = qword_1EC0922C0;
  if (!qword_1EC0922C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0922B8, &qword_1C40508D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0922C0);
  }

  return result;
}

uint64_t sub_1C3FF8E20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FF6834();
}

unint64_t sub_1C3FF8E44()
{
  result = qword_1EC0922C8;
  if (!qword_1EC0922C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0922D0, &unk_1C40508D8);
    sub_1C3FF7808(&qword_1EC092290, type metadata accessor for CallHistorySchemaV37.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0922C8);
  }

  return result;
}

unint64_t sub_1C3FF8F44()
{
  result = qword_1EC0922D8;
  if (!qword_1EC0922D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0922A8, &qword_1C4050860);
    sub_1C3FF7808(&qword_1EC092268, type metadata accessor for CallHistorySchemaV37.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0922D8);
  }

  return result;
}

uint64_t sub_1C3FF8FF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FF3EEC();
}

unint64_t sub_1C3FF9060()
{
  result = qword_1EC0922E0;
  if (!qword_1EC0922E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0922A0, &qword_1C4050808);
    sub_1C3FF7808(&qword_1EC092240, type metadata accessor for CallHistorySchemaV37.EmergencyMediaItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0922E0);
  }

  return result;
}

uint64_t sub_1C3FF9114()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FF3B9C();
}

uint64_t sub_1C3FF9194()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FF3B9C();
}

uint64_t sub_1C3FF928C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FF3B9C();
}

uint64_t sub_1C3FF9324()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FF3B9C();
}

uint64_t sub_1C3FF9624()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FF3B9C();
}

uint64_t sub_1C3FF98B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) | (*(v0 + 26) << 16);
  return sub_1C3FF323C();
}

uint64_t sub_1C3FF9A40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FF3B9C();
}

uint64_t sub_1C3FF9AC0()
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

uint64_t sub_1C3FF9C78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4039150;
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0922D0, &unk_1C40508D8);
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FF9EF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FF6834();
}

uint64_t sub_1C3FFA024()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FF58E8();
}

uint64_t sub_1C3FFA310(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3FFA474(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3FFA584(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C3FFA770@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3FFA8B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FFA9A0(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3FFAAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3FFAB7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FFACB0(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3FFAD8C()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FFB234(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

double sub_1C3FFB44C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FFB578(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FFB64C()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FFB784@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FFB890(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FFB960()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FFBA70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FFBB9C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FFBC70()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FFBD70()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3FFBEA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FFBFFC()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C3FFC134()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030FC0();
}

uint64_t sub_1C3FFC240@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, void (*a3)(void)@<X5>, void *a4@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  a3();
  sub_1C4030F80();

  *a4 = v8;
  return result;
}

uint64_t sub_1C3FFC394(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FFC48C(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  a3();
  sub_1C4030F80();

  return v3;
}

uint64_t sub_1C3FFC5B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  a5();
  sub_1C4030FA0();
}

uint64_t sub_1C3FFC690@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C3FD3474();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 2) = v6;
  return result;
}

uint64_t sub_1C3FFC7C4(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FFC8A0()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C3FD3474();
  sub_1C4030F90();

  return v1 | (v2 << 16);
}

uint64_t sub_1C3FFC9A8()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C3FD33F8();
  sub_1C4030FB0();
}

uint64_t sub_1C3FFCA58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV38.CallRecord(0);
  sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4001440();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FFCB74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FFCC40(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV38.CallRecord(0);
  *(v1 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092458, &qword_1C4051718);
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  *(v1 + 88) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 56));
  sub_1C4030F10();
  *(v1 + 16) = 16843009;
  *(v1 + 20) = 1;
  v3 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 21) = 0;
  v4 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091CC0, &qword_1C404C610);
  sub_1C3FD33F8();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v5 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 23) = 256;
  *(v1 + 25) = 1;
  v6 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 26) = 0;
  v7 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 27) = 0;
  v8 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 28) = 0;
  v9 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 29) = 0;
  v10 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 30) = 0x101010101010100;
  *(v1 + 38) = 257;
  v11 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 40) = 16843008;
  *(v1 + 44) = 1;
  v12 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 45) = 16843008;
  v13 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 49) = 16843009;
  *(v1 + 53) = 1;
  sub_1C4030AB0();
  *(v1 + 46) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 56));
  sub_1C3EAE504(a1, v1 + 56);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FFD1D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3810CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FFD29C()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3FFD398@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092368, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092380, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FFD4A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092368, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FFD580()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092368, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092380, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FFD688@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092368, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092380, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FFD7A0(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092368, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C4030A90();
}

unint64_t sub_1C3FFD880()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092368, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092380, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FFD998(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FFFE20(a4, a5);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3FFDA38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092368, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092380, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FFDB74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092368, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FFDC40()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092368, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092380, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C3FFDD78()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092380, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030FC0();
}

uint64_t sub_1C3FFDE50(__int128 *a1)
{
  type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092480, &unk_1C4051850);
  sub_1C3FFFE20(&qword_1EC092380, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
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

uint64_t sub_1C3FFE038()
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

double sub_1C3FFE0E4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FFE1F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FFE2CC()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FFE3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FFFE20(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3FFE478@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FFE584(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FFE654()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FFE758(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FFFE20(a4, a5);
  sub_1C4030FB0();
}

uint64_t sub_1C3FFE7EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030F90();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C3FFE8F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FFE9D0()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FFEAD4()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030FB0();
}

uint64_t sub_1C3FFEB88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FFEC60()
{
  swift_getKeyPath();
  sub_1C3FFFE20(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV38.CallRecord(0);
  sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4001440();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FFED70()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV38.CallRecord(0);
  sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4001440();
  sub_1C4030FA0();
}

uint64_t sub_1C3FFEE34(__int128 *a1)
{
  type metadata accessor for CallHistorySchemaV38.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092478, &qword_1C40517D0);
  sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v3 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 17) = 257;
  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FFF000()
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

uint64_t sub_1C3FFF0FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40407B0;
  v1 = type metadata accessor for CallHistorySchemaV38.CallRecord(0);
  v2 = sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV38.Handle(0);
  v4 = sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem(0);
  v6 = sub_1C3FFFE20(&qword_1EC092380, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v8 = sub_1C3FFFE20(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

unint64_t sub_1C3FFF2B8()
{
  result = qword_1EC092350;
  if (!qword_1EC092350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC092350);
  }

  return result;
}

unint64_t sub_1C3FFF30C(uint64_t a1)
{
  result = sub_1C3FFF334();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3FFF334()
{
  result = qword_1EC092358;
  if (!qword_1EC092358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC092358);
  }

  return result;
}

uint64_t sub_1C3FFF3FC(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 56));
  sub_1C3EAE504(a1, v1 + 56);
  return swift_endAccess();
}

void (*sub_1C3FFF454(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 56, v4);
  return sub_1C3FFF4E4;
}

void sub_1C3FFF4E4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1C3F2C800(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 56));
    sub_1C3EAE504((v2 + 40), v3 + 56);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 56));
    sub_1C3EAE504(v2, v3 + 56);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1C3FFF5E8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FFF6A0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FFF738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3FFF7AC(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C3FFF83C;
}

uint64_t sub_1C3FFF8A0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FFF958(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FFF9F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1C3FFFA58(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C3FFF83C;
}

void sub_1C3FFFAE8(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
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

uint64_t sub_1C3FFFC00(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3FFFE20(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3FFFC8C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FFFD44(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3FFFE20(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3FFFDB4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FFFE20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C40002A0(uint64_t a1)
{
  result = sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C40002F8(uint64_t a1)
{
  result = sub_1C3FFFE20(&qword_1EC0923D8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4000350()
{
  v39 = sub_1C4031070();
  v0 = *(v39 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C4031020();
  v33 = v3;
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v7 = *(v0 + 72);
  v38 = v0;
  v8 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4050A20;
  v36 = v9;
  v37 = v8;
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v10 = MEMORY[0x1E69E6530];
  *(&v45 + 1) = MEMORY[0x1E69E6530];
  *&v44 = 0;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v45 + 1) = v10;
  *&v44 = 0;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v45 + 1) = v10;
  *&v44 = 0;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v45 + 1) = v10;
  *&v44 = 0;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v45 + 1) = v10;
  *&v44 = 0;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v45 + 1) = v10;
  *&v44 = 0;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v45 + 1) = v10;
  *&v44 = 0;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v45 + 1) = v10;
  *&v44 = 0;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v45 + 1) = v10;
  *&v44 = 0;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v45 + 1) = v10;
  *&v44 = 0;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v45 + 1) = v10;
  *&v44 = 0;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v11 = *MEMORY[0x1E697BCD8];
  v12 = *(v40 + 104);
  v40 += 104;
  v34 = v12;
  v12(v6, v11, v3);
  v13 = sub_1C4031030();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_1C4031040();
  *(&v42 + 1) = v13;
  v17 = sub_1C3FFFE20(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  v43 = v17;
  *&v41 = v16;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v34(v6, v11, v33);
  swift_getKeyPath();
  v18 = *(v13 + 48);
  v19 = *(v13 + 52);
  swift_allocObject();
  v20 = sub_1C4031040();
  *(&v42 + 1) = v13;
  v43 = v17;
  *&v41 = v20;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v44 = 0u;
  v45 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0923E0, &unk_1C40516C8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C403DAB0;
  *(v22 + 32) = swift_getKeyPath();
  *(v21 + 32) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0923E8, &unk_1C40516D8);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_1C4031090();
  *(&v42 + 1) = v23;
  v27 = v35;
  v43 = sub_1C3EF7BF0(&qword_1EC0923F0, &qword_1EC0923E8, &unk_1C40516D8);
  *&v41 = v26;
  sub_1C4031060();
  v28 = sub_1C3EFFFE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  if (v30 >= v29 >> 1)
  {
    v28 = sub_1C3EFFFE8(v29 > 1, v30 + 1, 1, v28);
  }

  *(v28 + 2) = v30 + 1;
  v31 = v28;
  (*(v38 + 32))(&v28[v37 + v30 * v7], v27, v39);
  *&v41 = v36;
  sub_1C40173FC(v31);
  return v41;
}

uint64_t sub_1C400141C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FFED70();
}

unint64_t sub_1C4001440()
{
  result = qword_1EC0923F8;
  if (!qword_1EC0923F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC092400, &qword_1C40516E8);
    sub_1C3EF7BF0(&qword_1EC092408, &qword_1EC092410, &qword_1C40516F0);
    sub_1C3FFFE20(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0923F8);
  }

  return result;
}

unint64_t sub_1C4001574()
{
  result = qword_1EC092418;
  if (!qword_1EC092418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC092420, &qword_1C40516F8);
    sub_1C3EF7BF0(&qword_1EC092428, &qword_1EC092430, &unk_1C4051700);
    sub_1C3FFFE20(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC092418);
  }

  return result;
}

uint64_t sub_1C400165C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FFC134();
}

unint64_t sub_1C40016C4()
{
  result = qword_1EC092438;
  if (!qword_1EC092438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC092440, &unk_1C4052BA0);
    sub_1C3EF7BF0(&qword_1EC092448, &qword_1EC092450, &qword_1C4051710);
    sub_1C3FFFE20(&qword_1EC092380, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC092438);
  }

  return result;
}

uint64_t sub_1C40017AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FFBD70();
}

uint64_t sub_1C400182C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FFBD70();
}

uint64_t sub_1C4001924()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) | (*(v0 + 26) << 16);
  return sub_1C3FFC9A8();
}

uint64_t sub_1C4001958()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FFBD70();
}

uint64_t sub_1C40019F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FFBD70();
}

uint64_t sub_1C4001C80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FFBD70();
}

uint64_t sub_1C4002030()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FFBD70();
}

uint64_t sub_1C40020B0()
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

uint64_t sub_1C4002268()
{
  v23 = sub_1C4031070();
  v0 = *(v23 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v4 = *(v0 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4039150;
  v22 = v5;
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v28 + 1) = MEMORY[0x1E69E6530];
  *&v27 = 1;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092460, &qword_1C40517C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4038040;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v8 = swift_allocObject();
  v20 = xmmword_1C403DAB0;
  *(v8 + 16) = xmmword_1C403DAB0;
  *(v8 + 32) = swift_getKeyPath();
  *(v7 + 32) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v20;
  *(v9 + 32) = swift_getKeyPath();
  *(v7 + 40) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092468, &qword_1C40517C8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_1C4031080();
  *(&v25 + 1) = v10;
  v14 = v21;
  v26 = sub_1C3EF7BF0(&qword_1EC092470, &qword_1EC092468, &qword_1C40517C8);
  *&v24 = v13;
  sub_1C4031060();
  v15 = sub_1C3EFFFE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1C3EFFFE8(v16 > 1, v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = v15;
  (*(v1 + 32))(&v15[v22 + v17 * v4], v14, v23);
  *&v24 = v6;
  sub_1C40173FC(v18);
  return v24;
}

uint64_t sub_1C40026F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FFED70();
}

uint64_t sub_1C4002714()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3FFEAD4();
}

uint64_t sub_1C40027E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FFDD78();
}

uint64_t sub_1C4002988@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030F90();

  *a2 = v4;
  return result;
}

uint64_t sub_1C4002A94()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C4002B98()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030FB0();
}

uint64_t sub_1C4002C6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4009534(a5, a6);
  sub_1C4030F90();
}

uint64_t sub_1C4002D98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v14[-v10];
  (*(v8 + 16))(&v14[-v10], a1, v7);
  v17 = *a2;
  v12 = v17;
  swift_getKeyPath();
  v15 = v12;
  v16 = v11;
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030A90();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1C4002F58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4009534(a2, a3);
  sub_1C4030F90();
}

uint64_t sub_1C4003080(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4009534(a4, a5);
  sub_1C4030FB0();
}

double sub_1C4003150@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030F90();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C400325C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030A90();
}

double sub_1C4003334()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C4003438()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030FB0();
}

uint64_t sub_1C40034F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C4003604(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C4003768(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C4003878(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C40039A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C3EF79AC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C4003AB0()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C3EF79AC();
  sub_1C4030F90();
}

uint64_t sub_1C4003BB8()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C3F096C0();
  sub_1C4030FB0();
}

uint64_t sub_1C4003C74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C4003D7C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030A90();
}

uint64_t sub_1C4003E50()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C4003F4C()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030FB0();
}

double sub_1C4004008@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C4004120()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C4004240@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C3F3F894();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C4004350()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C3F3F894();
  sub_1C4030F90();
}

uint64_t sub_1C4004458()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C3F3F618();
  sub_1C4030FB0();
}

uint64_t sub_1C4004538@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C4004674()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C40047AC()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030FC0();
}

uint64_t sub_1C4004884@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, void (*a3)(void)@<X5>, void *a4@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  a3();
  sub_1C4030F80();

  *a4 = v8;
  return result;
}

uint64_t sub_1C40049B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030A90();
}

uint64_t sub_1C4004AB0(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  a3();
  sub_1C4030F80();

  return v3;
}

uint64_t sub_1C4004BD8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  a5();
  sub_1C4030FA0();
}

uint64_t sub_1C4004CA8@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  v6 = sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  a2(v6);
  sub_1C4030F90();

  *a3 = v8;
  return result;
}

uint64_t sub_1C4004DE4(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C4004EF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C4004FB0@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C40050B8(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030A90();
}

uint64_t sub_1C400518C()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C4005288()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030FB0();
}

uint64_t sub_1C400532C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030F90();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C4005438(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030A90();
}

uint64_t sub_1C4005500()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092540, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C4005604(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  v3 = a2 >> 62;
  if (!v22)
  {
    goto LABEL_30;
  }

  v17 = a2 >> 62;
  v20 = a2 & 0xFFFFFFFFFFFFFF8;
  if (v3)
  {
    v4 = sub_1C40317E0();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = a2 & 0xC000000000000001;
  v19 = a2;
  while (1)
  {
    if (v4 == v5)
    {
      goto LABEL_15;
    }

    if (!v6)
    {
      break;
    }

    v8 = MEMORY[0x1C6933590](v5, a2);
    if (__OFADD__(v5, 1))
    {
      goto LABEL_14;
    }

LABEL_10:
    swift_getKeyPath();
    sub_1C4009534(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
    sub_1C4030AA0();

    swift_getKeyPath();
    sub_1C4009534(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
    sub_1C4030F90();

    if (v8 == a1)
    {

      goto LABEL_28;
    }

    v7 = sub_1C4031BF0();

    ++v5;
    a2 = v19;
    if (v7)
    {
      goto LABEL_27;
    }
  }

  if (v5 >= *(v20 + 16))
  {
    __break(1u);
LABEL_41:
    __break(1u);
    return sub_1C40317E0();
  }

  v8 = *(a2 + 8 * v5 + 32);

  if (!__OFADD__(v5, 1))
  {
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  if (!v4)
  {
LABEL_32:

    if (v17)
    {
      v16 = sub_1C40317E0();
      v15 = __OFADD__(v16, 1);
      result = v16 + 1;
      if (!v15)
      {
        return result;
      }
    }

    else
    {
      v14 = *(v20 + 16);
      v15 = __OFADD__(v14, 1);
      result = v14 + 1;
      if (!v15)
      {
        return result;
      }
    }

    __break(1u);
LABEL_39:

LABEL_28:
    a2 = v19;
    goto LABEL_29;
  }

  v9 = 0;
  v18 = v6;
  while (2)
  {
    if (v6)
    {
      v10 = MEMORY[0x1C6933590](v9, a2);
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      goto LABEL_21;
    }

    if (v9 >= *(v20 + 16))
    {
      goto LABEL_41;
    }

    v10 = *(a2 + 8 * v9 + 32);

    v11 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
LABEL_21:
      swift_getKeyPath();
      sub_1C4009534(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
      sub_1C4030AA0();

      swift_getKeyPath();
      sub_1C4009534(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
      sub_1C4030F90();

      if (v10 == a1)
      {
        goto LABEL_39;
      }

      v12 = sub_1C4031BF0();

      a2 = v19;
      if (v12)
      {
        goto LABEL_27;
      }

      ++v9;
      v6 = v18;
      if (v11 == v4)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_27:

LABEL_29:
  v3 = v17;
LABEL_30:
  if (!v3)
  {
    return *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1C40317E0();
}

uint64_t sub_1C4005B18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall(0);
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C400ED30();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C4005C34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030A90();
}

uint64_t sub_1C4005D00(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall(0);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0925B0, &qword_1C40524D8);
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  *(v1 + 64) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  sub_1C4030F10();
  *(v1 + 16) = 0x101010101010101;
  *(v1 + 24) = 16843009;
  v4 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092568, &qword_1C4052358);
  type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem(0);
  sub_1C400EF4C();
  sub_1C4030E00();

  v5 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV38_1.ManagedHandle(0);
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030E20();

  *(v1 + 28) = 0;
  v6 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092570, &qword_1C40523B0);
  sub_1C400EE30();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 21) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));
  sub_1C3EAE504(a1, v1 + 32);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C4005FC8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v1 = OBJC_IVAR____TtCO11CallHistory22CallHistorySchemaV38_117ManagedRecentCall___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C4006094()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C400618C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0924F0, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092508, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C4030F90();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C4006298(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0924F0, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C4006370()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0924F0, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092508, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C4006474@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0924F0, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092508, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C3F09F8C();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C4006584(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0924F0, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C4006654()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0924F0, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092508, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C3F09F8C();
  sub_1C4030F90();
}

uint64_t sub_1C400675C()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092508, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C3F09FE0();
  sub_1C4030FB0();
}

uint64_t sub_1C400680C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0924F0, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092508, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C4006948(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0924F0, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C4006A14()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0924F0, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092508, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C4006B4C()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092508, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030FC0();
}

uint64_t sub_1C4006C24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C40309F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem(0);
  *(v2 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0925F0, &qword_1C4052620);
  v10 = sub_1C4009534(&qword_1EC092508, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  v28 = v9;
  v29 = v9;
  v30 = v10;
  v31 = v10;
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v2 + 24));
  sub_1C4030F10();
  sub_1C40309E0();
  v11 = sub_1C40309A0();
  v13 = v12;
  v25 = *(v5 + 8);
  v26 = v4;
  v25(v8, v4);
  v14 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  v28 = v11;
  v29 = v13;
  sub_1C4030E10();

  v15 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall(0);
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030E20();

  *(v2 + 16) = 0;
  sub_1C4030AB0();
  v16 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3818EmergencyMediaItem___observationRegistrar;
  v28 = a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092368, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  v27 = v16;
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092380, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  v17 = v29;
  if (v29)
  {
    v18 = v28;
  }

  else
  {
    sub_1C40309E0();
    v18 = sub_1C40309A0();
    v17 = v19;
    v25(v8, v26);
  }

  v20 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  v28 = v18;
  v29 = v17;
  sub_1C4030E10();

  v28 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4E39C();
  sub_1C4030F90();

  if ((v28 & 0x100000000) != 0)
  {
    v21 = 0;
LABEL_10:
    v23 = *(v2 + 56);
    __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
    swift_getKeyPath();
    LOBYTE(v28) = v21;
    sub_1C3F09FE0();
    sub_1C4030E10();

    return v2;
  }

  v28 = a1;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  if ((v28 & 0x100000000) == 0)
  {
    if (v28 < -32768)
    {
      __break(1u);
    }

    else if (v28 < 0x8000)
    {
      v21 = v28 == 1;
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4007194(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1C40309F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem(0);
  *(v2 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0925F0, &qword_1C4052620);
  v10 = sub_1C4009534(&qword_1EC092508, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  v17 = v9;
  v18 = v9;
  v19 = v10;
  v20 = v10;
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v2 + 24));
  sub_1C4030F10();
  sub_1C40309E0();
  v11 = sub_1C40309A0();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  v14 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  v17 = v11;
  v18 = v13;
  sub_1C4030E10();

  v15 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall(0);
  sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  sub_1C4030E20();

  *(v2 + 16) = 0;
  sub_1C4030AB0();
  *(v2 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v2 + 24));
  sub_1C3EAE504(a1, v2 + 24);
  swift_endAccess();
  return v2;
}

uint64_t sub_1C400748C()
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

uint64_t sub_1C4007544@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C3F0A1D4();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C4007654(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030A90();
}

uint64_t sub_1C4007724()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C3F0A1D4();
  sub_1C4030F90();
}

uint64_t sub_1C400782C()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C3F0A228();
  sub_1C4030FB0();
}

uint64_t sub_1C40078D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030F90();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C40079E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030A90();
}

uint64_t sub_1C4007ABC()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C4007BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C4009534(a5, a6);
  sub_1C4030FB0();
}

double sub_1C4007C60@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C4007D70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030A90();
}

uint64_t sub_1C4007E48()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C4007F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C4009534(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C4007FF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030A90();
}

uint64_t sub_1C40080CC()
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall(0);
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C400ED30();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C40081DC()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall(0);
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C400ED30();
  sub_1C4030FA0();
}

uint64_t sub_1C40082A0()
{
  v1 = v0;
  type metadata accessor for CallHistorySchemaV38_1.ManagedHandle(0);
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0925D0, &qword_1C4052590);
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  *(v0 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v0 + 24));
  sub_1C4030F10();
  *(v0 + 16) = 1;
  v2 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092598, &unk_1C40524C8);
  type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall(0);
  sub_1C400ED30();
  sub_1C4030E00();

  v3 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  sub_1C4030E00();

  sub_1C4030AB0();
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092390, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  sub_1C4030F90();

  v4 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  swift_getKeyPath();
  sub_1C3F0A228();
  sub_1C4030E10();

  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v5 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F3189C();
  sub_1C4030F90();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030A90();

  return v0;
}

uint64_t sub_1C4008784(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV38_1.ManagedHandle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0925D0, &qword_1C4052590);
  sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v4 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092598, &unk_1C40524C8);
  type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall(0);
  sub_1C400ED30();
  sub_1C4030E00();

  v5 = *(v1 + 56);
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

uint64_t sub_1C40089CC()
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

unint64_t sub_1C4008B24()
{
  result = qword_1EC0924D8;
  if (!qword_1EC0924D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0924D8);
  }

  return result;
}

unint64_t sub_1C4008B78(uint64_t a1)
{
  result = sub_1C4008BA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4008BA0()
{
  result = qword_1EC0924E0;
  if (!qword_1EC0924E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0924E0);
  }

  return result;
}

void (*sub_1C4008C20(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 32, v4);
  return sub_1C3F4C914;
}

uint64_t sub_1C4008CFC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C4008DB4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C4008E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C4008EC0(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C4008F50;
}

uint64_t sub_1C4008FB4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C400906C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C4009104(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1C400916C(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C4008F50;
}

void sub_1C40091FC(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
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

uint64_t sub_1C4009314(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C4009534(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C40093A0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C4009458(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C4009534(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C40094C8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C4009534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C40099B4(uint64_t a1)
{
  result = sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4009A0C(uint64_t a1)
{
  result = sub_1C4009534(&qword_1EC092560, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4009A64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4051860;
  v1 = type metadata accessor for CallHistorySchemaV38.CallRecord(0);
  v2 = sub_1C4009534(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV38.Handle(0);
  v4 = sub_1C4009534(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem(0);
  v6 = sub_1C4009534(&qword_1EC092380, type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall(0);
  v8 = sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem(0);
  v10 = sub_1C4009534(&qword_1EC092508, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for CallHistorySchemaV38_1.ManagedHandle(0);
  v12 = sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  return v0;
}

uint64_t sub_1C4009C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if ((a3 & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

  if (a3 < -32768)
  {
    __break(1u);
  }

  else if (a3 < 0x8000)
  {
    if ((a3 & 0xFFFC) == 0)
    {
      v14 = type metadata accessor for CallHistorySchemaV38_1.ManagedHandle(0);
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      v6 = swift_allocObject();
      *(v6 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0925D0, &qword_1C4052590);
      sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
      *(v6 + 56) = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1((v6 + 24));
      sub_1C4030F10();
      *(v6 + 16) = 1;
      v17 = *(v6 + 56);
      __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092598, &unk_1C40524C8);
      type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall(0);
      sub_1C400ED30();
      sub_1C4030E00();

      v18 = *(v6 + 56);
      __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
      swift_getKeyPath();
      sub_1C4030E00();

      sub_1C4030AB0();
      v19 = *(v6 + 56);
      __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F878, &qword_1C403A790);
      sub_1C3F4DCAC();
      sub_1C4030E10();

      *(v6 + 16) = 0;
      v20 = *(v6 + 56);
      __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
      swift_getKeyPath();
      sub_1C3F0A228();
      sub_1C4030E10();

      v21 = *(v6 + 56);
      __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
      swift_getKeyPath();
      sub_1C4030E10();

      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
      sub_1C4030A90();

      v23 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v23);
      goto LABEL_9;
    }

LABEL_6:
    sub_1C4010284();
    sub_1C40316E0();
    v3 = type metadata accessor for CallHistorySchemaV38_1.ManagedHandle(0);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v6 = swift_allocObject();
    *(v6 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0925D0, &qword_1C4052590);
    sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
    *(v6 + 56) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v6 + 24));
    sub_1C4030F10();
    *(v6 + 16) = 1;
    v7 = *(v6 + 56);
    __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092598, &unk_1C40524C8);
    type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall(0);
    sub_1C400ED30();
    sub_1C4030E00();

    v8 = *(v6 + 56);
    __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
    swift_getKeyPath();
    sub_1C4030E00();

    sub_1C4030AB0();
    v9 = *(v6 + 56);
    __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F878, &qword_1C403A790);
    sub_1C3F4DCAC();
    sub_1C4030E10();

    *(v6 + 16) = 0;
    v10 = *(v6 + 56);
    __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
    swift_getKeyPath();
    sub_1C3F0A228();
    sub_1C4030E10();

    v11 = *(v6 + 56);
    __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
    swift_getKeyPath();
    sub_1C4030E10();

    v12 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v12);
    sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
    sub_1C4030A90();

    v13 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v13);
LABEL_9:
    sub_1C4030A90();

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C400A818(unint64_t a1, void *a2)
{
  KeyPath = a1;
  v33 = MEMORY[0x1E69E7CC0];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_41:
    v5 = sub_1C40317E0();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (v5 != v6)
  {
    if ((KeyPath & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6933590](v6, KeyPath);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_39;
      }

      v8 = *(KeyPath + 8 * v6 + 32);

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    v10 = type metadata accessor for CallHistorySchemaV38_1.ManagedHandle(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    ++v6;
    if (sub_1C40082A0())
    {
      MEMORY[0x1C6933090]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C4031400();
      }

      sub_1C4031430();
      v7 = v33;
      v6 = v9;
    }
  }

  v35 = v7;
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  v4 = a2;
  v33 = a2;
  swift_getKeyPath();
  sub_1C4030AA0();

  KeyPath = swift_getKeyPath();
  sub_1C3F4E39C();
  sub_1C4030F90();

  LOBYTE(v33) = BYTE4(a2);
  v14 = sub_1C4009C4C(a2, v34, a2 | (BYTE4(a2) << 32));

  if (v14)
  {
    v30 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      v32 = sub_1C40317E0();
    }

    else
    {
      v32 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = 0;
    v29 = v7;
    v31 = v7 & 0xC000000000000001;
    while (v32 != v15)
    {
      if (v31)
      {
        v17 = MEMORY[0x1C6933590](v15, v7);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v15 >= *(v30 + 16))
        {
          goto LABEL_40;
        }

        v17 = *(v7 + 8 * v15 + 32);

        if (__OFADD__(v15, 1))
        {
LABEL_28:
          __break(1u);
          break;
        }
      }

      a2 = &unk_1C4052508;
      swift_getKeyPath();
      sub_1C4009534(&qword_1EC092518, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
      sub_1C4030AA0();

      swift_getKeyPath();
      KeyPath = sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
      sub_1C4030F90();

      v4 = v34;
      v33 = v14;
      swift_getKeyPath();
      sub_1C4030AA0();

      swift_getKeyPath();
      sub_1C4030F90();

      if (v17 == v14)
      {

        return v29;
      }

      v16 = sub_1C4031BF0();

      ++v15;
      v7 = v29;
      if (v16)
      {

        return v7;
      }
    }

    if (qword_1EC08EB88 != -1)
    {
      swift_once();
    }

    v18 = sub_1C4030D10();
    __swift_project_value_buffer(v18, qword_1EC0B0D10);

    v19 = sub_1C4030CF0();
    v20 = sub_1C40315C0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      type metadata accessor for CallHistorySchemaV38_1.ManagedHandle(0);

      v23 = sub_1C4031230();
      v25 = sub_1C3EEFC68(v23, v24, &v33);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1C3E90000, v19, v20, "Inserting legacy handle %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1C6934650](v22, -1, -1);
      MEMORY[0x1C6934650](v21, -1, -1);
    }

    MEMORY[0x1C6933090](v26);
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C4031400();
    }

    sub_1C4031430();

    return v35;
  }

  return v7;
}

unint64_t sub_1C400AEF8(void *a1)
{
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV38.Handle(0);
  sub_1C4009534(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4001574();
  sub_1C4030F80();

  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1C4005604(a1, v2);
  v4 = sub_1C400A818(v2, a1);

  if (v4 >> 62)
  {
    if (v3 == sub_1C40317E0())
    {
      return v4;
    }
  }

  else if (v3 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v4;
  }

  if (qword_1EC08EB88 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4030D10();
  __swift_project_value_buffer(v5, qword_1EC0B0D10);

  v6 = sub_1C4030CF0();
  v7 = sub_1C40315C0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v3;
    *(v8 + 12) = 2048;
    if (v4 >> 62)
    {
      v9 = sub_1C40317E0();
    }

    else
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 14) = v9;

    _os_log_impl(&dword_1C3E90000, v6, v7, "Incorrect handle count after migration. Expected %ld but got %ld", v8, 0x16u);
    MEMORY[0x1C6934650](v8, -1, -1);
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1C400B184(char *a1)
{
  v2 = v1;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  v4 = *(*(v183 - 8) + 64);
  MEMORY[0x1EEE9AC00](v183);
  v184 = &v163 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF40, &unk_1C403ED30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v193 = &v163 - v8;
  v195 = sub_1C4030980();
  v200 = *(v195 - 8);
  v9 = *(v200 + 64);
  v10 = MEMORY[0x1EEE9AC00](v195);
  v192 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v194 = &v163 - v12;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v13 = *(*(v203 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v203);
  v191 = &v163 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v163 - v16;
  v197 = sub_1C40309F0();
  v201 = *(v197 - 8);
  v18 = *(v201 + 64);
  v19 = MEMORY[0x1EEE9AC00](v197);
  v190 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v196 = &v163 - v21;
  *&v22 = COERCE_DOUBLE(type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall(0));
  v2[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0925B0, &qword_1C40524D8);
  v23 = sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
  v209 = *&v22;
  v210 = v22;
  v211 = v23;
  v212 = v23;
  v2[8] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v2 + 4);
  sub_1C4030F10();
  v2[2] = 0x101010101010101;
  *(v2 + 6) = 16843009;
  v24 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  v25 = MEMORY[0x1E69E7CC0];
  v209 = MEMORY[0x1E69E7CC0];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092568, &qword_1C4052358);
  v27 = type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem(0);
  v28 = sub_1C400EF4C();
  v180 = v26;
  v182 = v27;
  v179 = v28;
  sub_1C4030E00();

  v29 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  v30 = type metadata accessor for CallHistorySchemaV38_1.ManagedHandle(0);
  v177 = sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
  sub_1C4030E20();

  *(v2 + 28) = 0;
  v31 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  v209 = v25;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092570, &qword_1C40523B0);
  v33 = sub_1C400EE30();
  v178 = v32;
  v181 = v30;
  v176 = v33;
  sub_1C4030E00();

  v199 = v2;
  sub_1C4030AB0();
  v34 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3810CallRecord___observationRegistrar;
  v209 = *&a1;
  swift_getKeyPath();
  v35 = sub_1C4009534(&qword_1EC0923B8, type metadata accessor for CallHistorySchemaV38.CallRecord);
  v206 = v34;
  v208 = v35;
  sub_1C4030AA0();

  v36 = v197;
  swift_getKeyPath();
  v37 = sub_1C4009534(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  v38 = sub_1C3F3189C();
  v207 = v37;
  v204 = v38;
  v205 = a1;
  sub_1C4030F90();
  v39 = v201;

  sub_1C4030990();

  v40 = *(v39 + 48);
  if (v40(v17, 1, v36) == 1)
  {
    sub_1C40309E0();
    if (v40(v17, 1, v36) != 1)
    {
      sub_1C3EED388(v17, &qword_1EC08F218, &qword_1C4041840);
    }
  }

  else
  {
    (*(v39 + 32))(v196, v17, v36);
  }

  v209 = *&v205;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4E39C();
  sub_1C4030F90();

  if (BYTE4(v209))
  {
    v41 = 1;
    v189 = 1;
  }

  else
  {
    v209 = *&v205;
    swift_getKeyPath();
    sub_1C4030AA0();

    swift_getKeyPath();
    sub_1C4030F90();

    if (BYTE4(v209))
    {
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v41 = LODWORD(v209);
    if ((LOBYTE(v209) & 2) != 0)
    {
      v43 = 2;
    }

    else
    {
      v43 = LOBYTE(v209) & 1;
    }

    v189 = v43;
  }

  if ((v41 & 4) != 0)
  {
    v44 = 1;
  }

  else
  {
    v44 = (v41 >> 2) & 2;
  }

  v45 = v205;
  v209 = *&v205;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  v46 = sub_1C3F4DF7C();
  KeyPath = v207;
  v48 = *&v45;
  sub_1C4030F90();

  v49 = v209;
  if (v210)
  {
    v49 = 0.0;
  }

  if ((*&v49 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v188 = v46;
  v186 = v49;
  v187 = v44;
  v50 = *&v205;
  v209 = *&v205;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  v51 = sub_1C3F4DDCC();
  sub_1C4030F90();

  v52 = LOBYTE(v209);
  v209 = v50;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  v198 = v51;
  sub_1C4030F90();

  v53 = LOBYTE(v209);
  v209 = v50;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4E094();
  sub_1C4030F90();

  if (v52 == 2 || (v53 == 2) | v210 & 1)
  {
    v54 = 0;
  }

  else if (v53)
  {
    if (v209 <= 0.0)
    {
      v54 = 5;
    }

    else
    {
      v54 = 2;
    }
  }

  else if (v209 <= 0.0)
  {
    if (v52)
    {
      v54 = 3;
    }

    else
    {
      v54 = 4;
    }
  }

  else
  {
    v54 = 1;
  }

  v55 = *&v205;
  v209 = *&v205;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  v202 = sub_1C3FD3474();
  sub_1C4030F90();

  if (LOWORD(v209) == 2)
  {
    v56 = 2;
  }

  else
  {
    v56 = LOWORD(v209) == 1;
  }

  if (BYTE2(v209))
  {
    v56 = 0;
  }

  v185 = v56;
  v209 = v55;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F64A18();
  v57 = v193;
  sub_1C4030F90();

  v58 = v200;
  v59 = *(v200 + 48);
  v60 = v195;
  if (v59(v57, 1, v195) == 1)
  {
    sub_1C4030970();
    if (v59(v57, 1, v60) != 1)
    {
      sub_1C3EED388(v57, &qword_1EC08EF40, &unk_1C403ED30);
    }
  }

  else
  {
    (*(v58 + 32))(v194, v57, v60);
  }

  v61 = *&v205;
  v209 = *&v205;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  if (v210)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = v209;
  }

  v209 = v61;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v63 = LOWORD(v209);
  if (BYTE2(v209) & 1 | (LOWORD(v209) > 3u))
  {
    v63 = 0;
  }

  v173 = v63;
  v209 = v61;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v64 = LOBYTE(v209);
  LODWORD(v193) = v54;
  if (LOBYTE(v209) == 2)
  {
    v64 = v54 == 4;
  }

  v172 = v64;
  v209 = v61;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  if (v210)
  {
    v65 = v209;
  }

  else
  {
    v65 = 0.0;
  }

  if (v210)
  {
    v66 = v210;
  }

  else
  {
    v66 = 0xE000000000000000;
  }

  v67 = v197;
  if (v65 == -2.31584178e77 && 0x80000001C4056D00 == v66 || (sub_1C4031BF0() & 1) != 0)
  {
    v68 = 0;
LABEL_47:

    v65 = 0.0;
    goto LABEL_48;
  }

  if (v65 == -2.31584178e77 && 0x80000001C4056D20 == v66 || (v68 = v66, (sub_1C4031BF0() & 1) != 0))
  {
    v68 = 1;
    goto LABEL_47;
  }

LABEL_48:
  v174 = v68;
  v164 = *&v65;
  v165 = 0x80000001C4056D00;
  v69 = *&v205;
  v209 = *&v205;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  if (LOWORD(v209) >= 5u)
  {
    v70 = 4;
  }

  else
  {
    v70 = LOBYTE(v209);
  }

  v175 = v70;
  v209 = v69;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v171 = BYTE2(v209);
  v170 = LOWORD(v209) == 1;
  v209 = v69;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  if (BYTE2(v209))
  {
    v169 = 0;
  }

  else
  {
    v209 = *&v205;
    swift_getKeyPath();
    sub_1C4030AA0();

    swift_getKeyPath();
    sub_1C4030F90();

    if (BYTE2(v209))
    {
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    if (LOWORD(v209) == 2)
    {
      v71 = 2;
    }

    else
    {
      v71 = LOWORD(v209) == 1;
    }

    v169 = v71;
  }

  v209 = *&v205;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  if (BYTE2(v209))
  {
    v168 = 0;
  }

  else
  {
    v209 = *&v205;
    swift_getKeyPath();
    sub_1C4030AA0();

    swift_getKeyPath();
    sub_1C4030F90();

    if (BYTE2(v209))
    {
LABEL_124:
      __break(1u);
      return result;
    }

    v168 = LOWORD(v209);
  }

  v72 = *&v205;
  v209 = *&v205;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  if (BYTE2(v209))
  {
    v73 = 4;
  }

  else
  {
    v73 = LOWORD(v209);
  }

  CommunicationTrustScore.init(rawValue:)(v73);
  v166 = LOBYTE(v209);
  v74 = v201;
  v75 = v190;
  (*(v201 + 16))(v190, v196, v67);
  v76 = v67;
  v77 = v199;
  v78 = v199[8];
  __swift_project_boxed_opaque_existential_1(v199 + 4, v199[7]);
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC08F0B8, MEMORY[0x1E69695A8]);
  sub_1C4030E10();

  v79 = *(v74 + 8);
  v201 = v74 + 8;
  v167 = v79;
  v79(v75, v76);
  v209 = v72;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  v202 = sub_1C3F40EA8();
  v80 = v191;
  sub_1C4030F90();

  v81 = v77[8];
  __swift_project_boxed_opaque_existential_1(v77 + 4, v77[7]);
  swift_getKeyPath();
  v190 = sub_1C3F6A128();
  sub_1C4030E10();

  sub_1C3EED388(v80, &qword_1EC08F218, &qword_1C4041840);
  *(v77 + 16) = 0;
  v209 = v72;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v82 = v77[8];
  __swift_project_boxed_opaque_existential_1(v77 + 4, v77[7]);
  swift_getKeyPath();
  sub_1C4030E10();

  sub_1C3EED388(v80, &qword_1EC08F218, &qword_1C4041840);
  *(v77 + 17) = 0;
  v209 = v72;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v83 = v77[8];
  __swift_project_boxed_opaque_existential_1(v77 + 4, v77[7]);
  swift_getKeyPath();
  sub_1C4030E10();

  sub_1C3EED388(v80, &qword_1EC08F218, &qword_1C4041840);
  *(v77 + 18) = 0;
  v84 = v205;
  v209 = *&v205;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v85 = v77[8];
  __swift_project_boxed_opaque_existential_1(v77 + 4, v77[7]);
  swift_getKeyPath();
  sub_1C4030E10();

  sub_1C3EED388(v80, &qword_1EC08F218, &qword_1C4041840);
  *(v77 + 19) = 0;
  v86 = v77[8];
  __swift_project_boxed_opaque_existential_1(v77 + 4, v77[7]);
  swift_getKeyPath();
  LOWORD(v209) = v189;
  sub_1C4030E10();

  v87 = v77[8];
  __swift_project_boxed_opaque_existential_1(v77 + 4, v77[7]);
  swift_getKeyPath();
  LOBYTE(v209) = v187;
  sub_1C3F0A6B8();
  sub_1C4030E10();

  v88 = v77[8];
  __swift_project_boxed_opaque_existential_1(v77 + 4, v77[7]);
  swift_getKeyPath();
  v209 = v186;
  sub_1C4030E10();

  v89 = v77[8];
  __swift_project_boxed_opaque_existential_1(v77 + 4, v77[7]);
  swift_getKeyPath();
  LOWORD(v209) = v193;
  sub_1C4030E10();

  v90 = v77[8];
  __swift_project_boxed_opaque_existential_1(v77 + 4, v77[7]);
  swift_getKeyPath();
  LOBYTE(v209) = v185;
  sub_1C3F09B50();
  sub_1C4030E10();

  v45 = v84;
  v209 = *&v84;
  swift_getKeyPath();
  v27 = v206;
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v91 = v209;
  v92 = v210;
  v93 = v77[8];
  __swift_project_boxed_opaque_existential_1(v77 + 4, v77[7]);
  swift_getKeyPath();
  v209 = v91;
  v210 = v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F878, &qword_1C403A790);
  v95 = sub_1C3F4DCAC();
  v202 = v94;
  v203 = v95;
  sub_1C4030E10();

  *(v77 + 20) = 0;
  v96 = v200;
  v97 = v192;
  v98 = v195;
  (*(v200 + 16))(v192, v194, v195);
  v99 = v77[8];
  __swift_project_boxed_opaque_existential_1(v77 + 4, v77[7]);
  swift_getKeyPath();
  sub_1C4009534(&qword_1EC08FA20, MEMORY[0x1E6969530]);
  sub_1C4030E10();

  v101 = *(v96 + 8);
  v100 = v96 + 8;
  v2 = v101;
  (v101)(v97, v98);
  v209 = *&v45;
  swift_getKeyPath();
  sub_1C4030AA0();

  KeyPath = swift_getKeyPath();
  v48 = *&v45;
  sub_1C4030F90();

  if (v210)
  {
    v102 = 0;
  }

  else
  {
    v102 = *&v209;
  }

  if (v102 < -32768)
  {
    goto LABEL_106;
  }

  if (v102 >= 0x8000)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v45 = v2;
  v2 = v199;
  v103 = v199[8];
  __swift_project_boxed_opaque_existential_1(v199 + 4, v199[7]);
  swift_getKeyPath();
  LOWORD(v209) = v102;
  sub_1C4030E10();

  v104 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  v209 = v62;
  sub_1C4030E10();

  v105 = v205;
  v209 = *&v205;
  swift_getKeyPath();
  sub_1C4030AA0();

  KeyPath = swift_getKeyPath();
  v48 = *&v105;
  sub_1C4030F90();

  if (v210)
  {
    v106 = 0;
  }

  else
  {
    v106 = *&v209;
  }

  if (v106 < -32768)
  {
    goto LABEL_108;
  }

  if (v106 >= 0x8000)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v191 = v45;
  v200 = v100;
  LODWORD(v192) = v172 ^ 1;
  LODWORD(v193) = v170 & ~v171;
  v107 = v199;
  v108 = v199[8];
  __swift_project_boxed_opaque_existential_1(v199 + 4, v199[7]);
  swift_getKeyPath();
  LOWORD(v209) = v106;
  sub_1C4030E10();

  v109 = *&v205;
  v209 = *&v205;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F40F5C();
  v110 = v184;
  sub_1C4030F90();

  v111 = v107[8];
  __swift_project_boxed_opaque_existential_1(v107 + 4, v107[7]);
  swift_getKeyPath();
  sub_1C3F9AF8C();
  sub_1C4030E10();

  sub_1C3EED388(v110, &qword_1EC08F130, &qword_1C4038450);
  *(v107 + 21) = 0;
  v209 = v109;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v113 = v209;
  v112 = v210;
  v114 = v107[8];
  __swift_project_boxed_opaque_existential_1(v107 + 4, v107[7]);
  swift_getKeyPath();
  v209 = v113;
  v210 = v112;
  sub_1C4030E10();

  *(v107 + 22) = 0;
  v115 = v107[8];
  __swift_project_boxed_opaque_existential_1(v107 + 4, v107[7]);
  swift_getKeyPath();
  LOBYTE(v209) = v173;
  sub_1C3F3F5C4();
  sub_1C4030E10();

  v209 = v109;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v117 = v209;
  v116 = v210;
  v118 = v107[8];
  __swift_project_boxed_opaque_existential_1(v107 + 4, v107[7]);
  swift_getKeyPath();
  v209 = v117;
  v210 = v116;
  sub_1C4030E10();

  *(v107 + 23) = 0;
  v209 = v109;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v120 = v209;
  v119 = v210;
  v121 = v107[8];
  __swift_project_boxed_opaque_existential_1(v107 + 4, v107[7]);
  swift_getKeyPath();
  v209 = v120;
  v210 = v119;
  sub_1C4030E10();

  *(v107 + 24) = 0;
  v122 = v107[8];
  __swift_project_boxed_opaque_existential_1(v107 + 4, v107[7]);
  swift_getKeyPath();
  LOBYTE(v209) = v192 & 1;
  sub_1C4030E10();

  v123 = v174;
  if (v174)
  {
    v27 = v182;
    if (v174 == 1)
    {
      v123 = 0x80000001C4056D20;
      *&v124 = -2.31584178e77;
    }

    else
    {
      v124 = v164;
    }
  }

  else
  {
    *&v124 = -2.31584178e77;
    v27 = v182;
    v123 = v165;
  }

  v2 = v199;
  v125 = v199[8];
  __swift_project_boxed_opaque_existential_1(v199 + 4, v199[7]);
  swift_getKeyPath();
  v209 = *&v124;
  v210 = v123;
  sub_1C4030E10();

  v126 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  LOBYTE(v209) = v175;
  sub_1C3F0A900();
  sub_1C4030E10();

  v45 = v205;
  v209 = *&v205;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v127 = LOBYTE(v209);
  v128 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  LOBYTE(v209) = v127 & 1;
  sub_1C4030E10();

  v129 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  LOBYTE(v209) = v193;
  sub_1C3F096C0();
  sub_1C4030E10();

  v209 = *&v45;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v130 = LOBYTE(v209);
  v131 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  LOBYTE(v209) = v130 & 1;
  sub_1C4030E10();

  v209 = *&v45;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v132 = LOBYTE(v209);
  v133 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  LOBYTE(v209) = v132 & 1;
  sub_1C4030E10();

  v209 = *&v45;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v135 = v209;
  v134 = v210;
  v136 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  v209 = v135;
  v210 = v134;
  sub_1C4030E10();

  *(v2 + 25) = 0;
  v209 = *&v45;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v138 = v209;
  v137 = v210;
  v139 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  v209 = v138;
  v210 = v137;
  sub_1C4030E10();

  *(v2 + 26) = 0;
  v209 = *&v45;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4030F90();

  v141 = v209;
  v140 = v210;
  v142 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  v209 = v141;
  v210 = v140;
  sub_1C4030E10();

  *(v2 + 27) = 0;
  v143 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  LOBYTE(v209) = v169;
  sub_1C3F09908();
  sub_1C4030E10();

  v144 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  LOWORD(v209) = v168;
  sub_1C3F3F618();
  sub_1C4030E10();

  v209 = *&v45;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV38.EmergencyMediaItem(0);
  sub_1C40016C4();
  sub_1C4030F80();

  v48 = MEMORY[0x1E69E7CC0];
  if (v209 == 0.0)
  {
    KeyPath = MEMORY[0x1E69E7CC0];
  }

  else
  {
    KeyPath = *&v209;
  }

  if (KeyPath >> 62)
  {
LABEL_110:
    v145 = sub_1C40317E0();
    if (v145)
    {
      goto LABEL_85;
    }

LABEL_111:

    v151 = MEMORY[0x1E69E7CC0];
    goto LABEL_112;
  }

  v145 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v145)
  {
    goto LABEL_111;
  }

LABEL_85:
  v209 = v48;
  result = sub_1C4031950();
  if (v145 < 0)
  {
    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v146 = 0;
  do
  {
    if ((KeyPath & 0xC000000000000001) != 0)
    {
      v147 = MEMORY[0x1C6933590](v146, KeyPath);
    }

    else
    {
      v147 = *(KeyPath + 8 * v146 + 32);
    }

    ++v146;
    v148 = *(v27 + 48);
    v149 = *(v27 + 52);
    swift_allocObject();
    sub_1C4006C24(v147);
    sub_1C4031920();
    v150 = *(*&v209 + 16);
    sub_1C4031960();
    sub_1C4031970();
    sub_1C4031930();
  }

  while (v145 != v146);

  v151 = v209;
LABEL_112:
  v152 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  v209 = v151;
  sub_1C4030E00();

  v209 = *&v45;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C4009534(&qword_1EC0923A8, type metadata accessor for CallHistorySchemaV38.Handle);
  v153 = sub_1C4030F70();

  if (!v153)
  {
    v155 = v196;
    goto LABEL_116;
  }

  v209 = *&v45;
  swift_getKeyPath();
  sub_1C4030AA0();

  swift_getKeyPath();
  v154 = sub_1C4030F70();

  v155 = v196;
  if (!v154)
  {
    goto LABEL_121;
  }

  v156 = *(v181 + 48);
  v157 = *(v181 + 52);
  swift_allocObject();
  sub_1C40082A0();
LABEL_116:
  if (v166 == 10)
  {
    v158 = 4;
  }

  else
  {
    v158 = v166;
  }

  v159 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  sub_1C4030E20();

  *(v2 + 28) = 0;
  *&v160 = COERCE_DOUBLE(sub_1C400AEF8(v45));
  v161 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  v209 = *&v160;
  sub_1C4030E00();

  v162 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  swift_getKeyPath();
  LOBYTE(v209) = v158;
  sub_1C3F3F7EC();
  sub_1C4030E10();

  (v191)(v194, v195);
  v167(v155, v197);
  return v2;
}

uint64_t sub_1C400DC40()
{
  v39 = sub_1C4031070();
  v0 = *(v39 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v35 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1C4031020();
  v42 = *(v40 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v34 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v5 = *(v0 + 72);
  v38 = v0;
  v6 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C404E120;
  v36 = v7;
  v37 = v6;
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0xD000000000000010;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092568, &qword_1C4052358);
  *&v46 = MEMORY[0x1E69E7CC0];
  v8 = *MEMORY[0x1E697BCE0];
  v9 = *(v42 + 104);
  v42 += 104;
  v33 = v9;
  v10 = v34;
  v9(v34, v8, v40);
  v11 = sub_1C4031030();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = v10;
  v15 = sub_1C4031040();
  *(&v44 + 1) = v11;
  v16 = sub_1C4009534(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  v45 = v16;
  *&v43 = v15;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  v32[1] = 31 * v5;
  v32[0] = "managedInitiator";
  swift_getKeyPath();
  *(&v47 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092570, &qword_1C40523B0);
  *&v46 = MEMORY[0x1E69E7CC0];
  v33(v14, v8, v40);
  swift_getKeyPath();
  v17 = *(v11 + 48);
  v18 = *(v11 + 52);
  swift_allocObject();
  v19 = sub_1C4031040();
  *(&v44 + 1) = v11;
  v45 = v16;
  *&v43 = v19;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092578, &unk_1C40524B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C403DAB0;
  *(v21 + 32) = swift_getKeyPath();
  *(v20 + 32) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092580, &qword_1C40524C0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1C4031090();
  *(&v44 + 1) = v22;
  v26 = v35;
  v45 = sub_1C3EF7BF0(&qword_1EC092588, &qword_1EC092580, &qword_1C40524C0);
  *&v43 = v25;
  sub_1C4031060();
  v27 = sub_1C3EFFFE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1C3EFFFE8(v28 > 1, v29 + 1, 1, v27);
  }

  *(v27 + 2) = v29 + 1;
  v30 = v27;
  (*(v38 + 32))(&v27[v37 + v29 * v5], v26, v39);
  *&v43 = v36;
  sub_1C40173FC(v30);
  return v43;
}

uint64_t sub_1C400EC80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4005288();
}

uint64_t sub_1C400ECA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4005288();
}

uint64_t sub_1C400ED0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C40081DC();
}

unint64_t sub_1C400ED30()
{
  result = qword_1EC092590;
  if (!qword_1EC092590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC092598, &unk_1C40524C8);
    sub_1C4009534(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC092590);
  }

  return result;
}

unint64_t sub_1C400EE30()
{
  result = qword_1EC0925A0;
  if (!qword_1EC0925A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC092570, &qword_1C40523B0);
    sub_1C4009534(&qword_1EC092530, type metadata accessor for CallHistorySchemaV38_1.ManagedHandle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0925A0);
  }

  return result;
}

uint64_t sub_1C400EEE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C40047AC();
}

unint64_t sub_1C400EF4C()
{
  result = qword_1EC0925A8;
  if (!qword_1EC0925A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC092568, &qword_1C4052358);
    sub_1C4009534(&qword_1EC092508, type metadata accessor for CallHistorySchemaV38_1.ManagedEmergencyMediaItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0925A8);
  }

  return result;
}

uint64_t sub_1C400F000()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4004458();
}

uint64_t sub_1C400F164()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4003F4C();
}

uint64_t sub_1C400F18C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4003F4C();
}

uint64_t sub_1C400F1B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4003BB8();
}

uint64_t sub_1C400F1D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4003F4C();
}

uint64_t sub_1C400F238()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4003F4C();
}

uint64_t sub_1C400F3DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4005288();
}

uint64_t sub_1C400F404()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4003438();
}

uint64_t sub_1C400F424()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4005288();
}

uint64_t sub_1C400F534()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4002B98();
}

uint64_t sub_1C400F6C0()
{
  v30 = sub_1C4031070();
  v0 = *(v30 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C40309F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v9 = *(v0 + 72);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C40385C0;
  v28 = v10;
  v29 = v11;
  swift_getKeyPath();
  sub_1C40309E0();
  v12 = sub_1C40309A0();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  *(&v35 + 1) = MEMORY[0x1E69E6158];
  *&v34 = v12;
  *(&v34 + 1) = v14;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v34 = 0u;
  v35 = 0u;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v34 = 0u;
  v35 = 0u;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v34 = 0u;
  v35 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0925D8, &qword_1C4052610);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C403DAB0;
  *(v16 + 32) = swift_getKeyPath();
  *(v15 + 32) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0925E0, &qword_1C4052618);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1C4031090();
  *(&v32 + 1) = v17;
  v21 = v27;
  v33 = sub_1C3EF7BF0(&qword_1EC0925E8, &qword_1EC0925E0, &qword_1C4052618);
  *&v31 = v20;
  sub_1C4031060();
  v22 = sub_1C3EFFFE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_1C3EFFFE8(v23 > 1, v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  v25 = v22;
  (*(v1 + 32))(&v22[v28 + v24 * v9], v21, v30);
  *&v31 = v29;
  sub_1C40173FC(v25);
  return v31;
}

uint64_t sub_1C400FB38()
{
  v34 = sub_1C4031070();
  v0 = *(v34 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C4031020();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v8 = *(v0 + 72);
  v30 = v0;
  v9 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C4039150;
  v32 = v9;
  v33 = v10;
  swift_getKeyPath();
  v38 = 0u;
  v39 = 0u;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v38 = 0u;
  v39 = 0u;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v38 = 0u;
  v39 = 0u;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092598, &unk_1C40524C8);
  v12 = MEMORY[0x1E69E7CC0];
  *(&v39 + 1) = v11;
  *&v38 = MEMORY[0x1E69E7CC0];
  (*(v4 + 104))(v7, *MEMORY[0x1E697BCD8], v3);
  swift_getKeyPath();
  v13 = sub_1C4031030();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_1C4031040();
  *(&v36 + 1) = v13;
  v37 = sub_1C4009534(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  *&v35 = v16;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v39 + 1) = v11;
  *&v38 = v12;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v38 = 0u;
  v39 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0925B8, &qword_1C4052580);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C4038660;
  *(v18 + 32) = swift_getKeyPath();
  *(v18 + 40) = swift_getKeyPath();
  *(v17 + 32) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0925C0, &qword_1C4052588);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1C4031090();
  *(&v36 + 1) = v19;
  v23 = v31;
  v37 = sub_1C3EF7BF0(&qword_1EC0925C8, &qword_1EC0925C0, &qword_1C4052588);
  *&v35 = v22;
  sub_1C4031060();
  v24 = sub_1C3EFFFE8(0, 1, 1, v12);
  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1C3EFFFE8(v25 > 1, v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = v24;
  (*(v30 + 32))(&v24[v32 + v26 * v8], v23, v34);
  *&v35 = v33;
  sub_1C40173FC(v27);
  return v35;
}

uint64_t sub_1C40100FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C40081DC();
}

uint64_t sub_1C40101D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C400782C();
}

uint64_t sub_1C40101F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4006B4C();
}

uint64_t sub_1C401020C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C400675C();
}

unint64_t sub_1C4010284()
{
  result = qword_1EC0925F8;
  if (!qword_1EC0925F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0925F8);
  }

  return result;
}

uint64_t sub_1C4010324(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v31 = MEMORY[0x1E69E7CC0];
    v28 = a1;
    sub_1C4031950();
    v4 = v28 + 56;
    v5 = -1 << *(v28 + 32);
    result = sub_1C4031770();
    v6 = v28;
    v7 = result;
    v8 = 0;
    v9 = *(v28 + 36);
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v6 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_22;
      }

      v29 = v8;
      v12 = *(v6 + 48) + 40 * v7;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      v16 = *(v12 + 32);
      LOBYTE(v30[0]) = *v12;
      v30[1] = v13;
      v30[2] = v14;
      v30[3] = v15;
      v30[4] = v16;
      v17 = type metadata accessor for CallHistorySchemaV39.ManagedHandle(0);
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();

      sub_1C401A008(v30);
      sub_1C4031920();
      v20 = *(v31 + 16);
      sub_1C4031960();
      sub_1C4031970();
      result = sub_1C4031930();
      v6 = v28;
      v10 = 1 << *(v28 + 32);
      if (v7 >= v10)
      {
        goto LABEL_23;
      }

      v21 = *(v4 + 8 * v11);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v9 != *(v28 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v10 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v11 << 6;
        v24 = v11 + 1;
        v25 = (v28 + 64 + 8 * v11);
        while (v24 < (v10 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1C3E97CDC(v7, v9, 0);
            v6 = v28;
            v10 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_1C3E97CDC(v7, v9, 0);
        v6 = v28;
      }

LABEL_4:
      v8 = v29 + 1;
      v7 = v10;
      if (v29 + 1 == v2)
      {
        return v31;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4010594(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v31 = MEMORY[0x1E69E7CC0];
    v27 = a1;
    sub_1C4031950();
    v4 = v27 + 56;
    v5 = -1 << *(v27 + 32);
    result = sub_1C4031770();
    v6 = v27;
    v7 = result;
    v8 = 0;
    v9 = *(v27 + 36);
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v6 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_22;
      }

      v28 = v8;
      v12 = v4;
      v13 = *(v6 + 48) + 24 * v7;
      v14 = *v13;
      v15 = *(v13 + 8);
      LOBYTE(v13) = *(v13 + 16);
      v29[0] = v14;
      v29[1] = v15;
      v30 = v13;
      v16 = type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem(0);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();

      sub_1C40190F0(v29);
      sub_1C4031920();
      v19 = *(v31 + 16);
      sub_1C4031960();
      sub_1C4031970();
      result = sub_1C4031930();
      v6 = v27;
      v10 = 1 << *(v27 + 32);
      if (v7 >= v10)
      {
        goto LABEL_23;
      }

      v20 = *(v12 + 8 * v11);
      if ((v20 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v9 != *(v27 + 36))
      {
        goto LABEL_25;
      }

      v4 = v12;
      v21 = v20 & (-2 << (v7 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v27 + 64 + 8 * v11);
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1C3E97CDC(v7, v9, 0);
            v6 = v27;
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1C3E97CDC(v7, v9, 0);
        v6 = v27;
      }

LABEL_4:
      v8 = v28 + 1;
      v7 = v10;
      if (v28 + 1 == v2)
      {
        return v31;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C401094C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C401B164(a5, a6);
  sub_1C4030F90();
}

uint64_t sub_1C4010AAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v14[-v10];
  (*(v8 + 16))(&v14[-v10], a1, v7);
  v17 = *a2;
  v12 = v17;
  swift_getKeyPath();
  v15 = v12;
  v16 = v11;
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1C4010CC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C3F0A1D4();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C4010DD4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030A90();
}

uint64_t sub_1C4010EA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030F90();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C4010FB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030A90();
}

double sub_1C4011088@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C401DDDC(&qword_1EC0902D8);
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C40111BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030A90();
}

uint64_t sub_1C4011434()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C4011538()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030FB0();
}

double sub_1C4011640@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C401DDDC(&qword_1EC0902D8);
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C4011774(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

uint64_t sub_1C4011894(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C401B164(a2, a3);
  sub_1C4030F90();
}

uint64_t sub_1C40119BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C401B164(a4, a5);
  sub_1C4030FB0();
}

double sub_1C4011AB8@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F90();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C4011BC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

double sub_1C4011C9C()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C4011DA0()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030FB0();
}

uint64_t sub_1C4011EA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C4011FE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C401214C(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C401225C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  a4();
  sub_1C4030FB0();
}

double sub_1C4012308@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C401DDDC(&qword_1EC0902D8);
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C401243C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

double sub_1C4012580@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C401DDDC(&qword_1EC0902D8);
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C40126B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

double sub_1C4012798@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C401DDDC(&qword_1EC0902D8);
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C40128CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

uint64_t sub_1C4012A68()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C3EF79AC();
  sub_1C4030F90();
}

uint64_t sub_1C4012B70()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C3F096C0();
  sub_1C4030FB0();
}

uint64_t sub_1C4012C64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C4012D8C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

uint64_t sub_1C4012E60()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C4012F5C()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030FB0();
}

double sub_1C4013000@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C401DDDC(&qword_1EC0902D8);
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C4013134(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

double sub_1C4013218@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C401DDDC(&qword_1EC0902D8);
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C401334C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

double sub_1C4013430@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C401DDDC(&qword_1EC0902D8);
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C4013564(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

uint64_t sub_1C4013648()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C401DDDC(&qword_1EC0902D8);
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C40137CC@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C3F3F894();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C40138FC()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C3F3F894();
  sub_1C4030F90();
}

uint64_t sub_1C4013A04()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C3F3F618();
  sub_1C4030FB0();
}

uint64_t sub_1C4013AE4@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, void (*a3)(void)@<X5>, void *a4@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  a3();
  sub_1C4030F80();

  *a4 = v8;
  return result;
}

uint64_t sub_1C4013C6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C4013DC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

uint64_t sub_1C4013E8C()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C4013FC4()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030FC0();
}

uint64_t sub_1C40140D0(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  a3();
  sub_1C4030F80();

  return v3;
}

uint64_t sub_1C40141F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  a5();
  sub_1C4030FA0();
}

uint64_t sub_1C40142E8@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  v6 = sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  a2(v6);
  sub_1C4030F90();

  *a3 = v8;
  return result;
}

uint64_t sub_1C4014444(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C4014554(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C4014668@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C4014790(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

uint64_t sub_1C4014864()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C4014980()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030FB0();
}

uint64_t sub_1C4014A24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F90();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C4014B30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

uint64_t sub_1C4014C08()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F90();

  return v0;
}

CallHistory::CallStatus_optional sub_1C4014D0C@<W0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F90();

  result.value = CallStatus.init(rawValue:)(rawValue).value;
  if (v4 == 6)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_1C4014E30@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F90();

  if (v3 > 2u)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_1C4014F48@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030F90();

  v3 = v1;
  if (v1 == 0xD000000000000013 && 0x80000001C4056D00 == v6 || (sub_1C4031BF0() & 1) != 0)
  {
    v4 = 0;
LABEL_5:

    v3 = 0;
    goto LABEL_6;
  }

  if (v1 == 0xD000000000000012 && 0x80000001C4056D20 == v6 || (result = sub_1C4031BF0(), v4 = v6, (result & 1) != 0))
  {
    v4 = 1;
    goto LABEL_5;
  }

LABEL_6:
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C40150F8(uint64_t *a1)
{
  if (a1[1] > 1)
  {
    v1 = *a1;
  }

  swift_getKeyPath();
  MEMORY[0x1EEE9AC00]();
  sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030A90();
}

uint64_t sub_1C4015250(uint64_t a1)
{
  v2 = v1;
  v138 = a1;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  v3 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v127 = v123 - v4;
  v126 = sub_1C4030980();
  v125 = *(v126 - 8);
  v5 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v124 = v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v7 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v9 = v123 - v8;
  v139 = sub_1C40309F0();
  v10 = *(v139 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v13 = v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0926C8, &qword_1C4053988);
  v15 = sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  v140 = v14;
  v141 = v14;
  v142 = v15;
  v143 = v15;
  *(v1 + 64) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  v123[2] = v14;
  sub_1C4030F10();
  *(v1 + 16) = 0x101010101010101;
  *(v1 + 24) = 16843009;
  v16 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  v140 = MEMORY[0x1E69E7CC0];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090460, &qword_1C403D6F0);
  v18 = type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem(0);
  v19 = sub_1C3F410C4();
  v134 = v18;
  v135 = v17;
  v133 = v19;
  sub_1C4030E00();

  v20 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  v21 = type metadata accessor for CallHistorySchemaV39.ManagedHandle(0);
  v130 = sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030E20();

  *(v1 + 28) = 0;
  v22 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  v140 = MEMORY[0x1E69E7CC0];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FFD0, &qword_1C403C460);
  v131 = sub_1C3F41010();
  v132 = v23;
  v129 = v21;
  sub_1C4030E00();

  v123[1] = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3917ManagedRecentCall___observationRegistrar;
  sub_1C4030AB0();
  v25 = v138;
  v24 = v139;
  (*(v10 + 16))(v13, v138, v139);
  v26 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F0B8, MEMORY[0x1E69695A8]);
  sub_1C4030E10();

  (*(v10 + 8))(v13, v24);
  v27 = type metadata accessor for RecentCall();
  sub_1C3EF1A60(v25 + v27[5], v9, &qword_1EC08F218, &qword_1C4041840);
  v28 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C3F6A128();
  sub_1C4030E10();

  sub_1C3EED388(v9, &qword_1EC08F218, &qword_1C4041840);
  *(v1 + 16) = 0;
  sub_1C3EF1A60(v25 + v27[6], v9, &qword_1EC08F218, &qword_1C4041840);
  v29 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C4030E10();

  sub_1C3EED388(v9, &qword_1EC08F218, &qword_1C4041840);
  *(v1 + 17) = 0;
  sub_1C3EF1A60(v25 + v27[7], v9, &qword_1EC08F218, &qword_1C4041840);
  v30 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C4030E10();

  sub_1C3EED388(v9, &qword_1EC08F218, &qword_1C4041840);
  *(v1 + 18) = 0;
  sub_1C3EF1A60(v25 + v27[8], v9, &qword_1EC08F218, &qword_1C4041840);
  v31 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C4030E10();

  sub_1C3EED388(v9, &qword_1EC08F218, &qword_1C4041840);
  *(v1 + 19) = 0;
  v32 = v27;
  LOWORD(v10) = *(v25 + v27[23]);
  v33 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOWORD(v140) = v10;
  sub_1C4030E10();

  LOBYTE(v10) = *(v25 + v27[26]);
  v34 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOBYTE(v140) = v10;
  sub_1C3F0A6B8();
  sub_1C4030E10();

  v35 = *(v25 + v27[9]);
  v36 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  v140 = v35;
  sub_1C4030E10();

  LOWORD(v35) = *(v25 + v27[13]);
  v37 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOWORD(v140) = v35;
  sub_1C4030E10();

  LOBYTE(v35) = *(v25 + v27[10]);
  v38 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOBYTE(v140) = v35;
  sub_1C3F09B50();
  sub_1C4030E10();

  v39 = (v25 + v27[11]);
  v40 = *v39;
  v41 = v39[1];
  v42 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  v140 = v40;
  v141 = v41;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F878, &qword_1C403A790);
  v137 = sub_1C401DDDC(&qword_1EC0906A0);
  sub_1C4030E10();

  *(v1 + 20) = 0;
  v43 = v125;
  v44 = v124;
  v45 = v126;
  (*(v125 + 16))(v124, v25 + v32[14], v126);
  v46 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08FA20, MEMORY[0x1E6969530]);
  sub_1C4030E10();

  (*(v43 + 8))(v44, v45);
  LOWORD(v43) = *(v25 + v32[15]);
  v47 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOWORD(v140) = v43;
  sub_1C4030E10();

  v48 = *(v25 + v32[16]);
  v49 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  v140 = v48;
  sub_1C4030E10();

  LOWORD(v43) = *(v25 + v32[17]);
  v50 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOWORD(v140) = v43;
  sub_1C4030E10();

  v51 = v32[19];
  v52 = v32;
  v139 = v32;
  v53 = v127;
  sub_1C3EF1A60(v25 + v51, v127, &qword_1EC08F130, &qword_1C4038450);
  v54 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C3F9AF8C();
  sub_1C4030E10();

  sub_1C3EED388(v53, &qword_1EC08F130, &qword_1C4038450);
  *(v1 + 21) = 0;
  v55 = (v25 + v52[20]);
  v56 = *v55;
  v57 = v55[1];
  v58 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  v140 = v56;
  v141 = v57;
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v59 = v139;
  LOBYTE(v56) = *(v25 + v139[21]);
  v60 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOBYTE(v140) = v56;
  sub_1C3F3F5C4();
  sub_1C4030E10();

  v61 = (v25 + v59[22]);
  v62 = *v61;
  v63 = v61[1];
  v64 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  v140 = v62;
  v141 = v63;
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v65 = v138;
  v66 = (v138 + v59[12]);
  v67 = *v66;
  v68 = v66[1];
  v69 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  v140 = v67;
  v141 = v68;
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v70 = v139;
  LOBYTE(v67) = *(v65 + v139[24]);
  v71 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOBYTE(v140) = v67;
  sub_1C4030E10();

  v72 = (v65 + v70[25]);
  v73 = *v72;
  v74 = v72[1];
  v75 = 0x80000001C4056D00;
  v76 = 0xD000000000000013;
  if (v74)
  {
    v76 = *v72;
    v75 = v72[1];
  }

  if (v74 == 1)
  {
    v77 = 0xD000000000000012;
  }

  else
  {
    v77 = v76;
  }

  if (v74 == 1)
  {
    v78 = 0x80000001C4056D20;
  }

  else
  {
    v78 = v75;
  }

  v79 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  v140 = v77;
  v141 = v78;
  sub_1C3F16304(v73, v74);
  v80 = v139;
  sub_1C4030E10();

  v81 = *(v65 + v80[27]);
  v82 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOBYTE(v140) = v81;
  sub_1C3F0A900();
  sub_1C4030E10();

  v83 = *(v65 + v80[18]);
  v84 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOBYTE(v140) = v83;
  sub_1C4030E10();

  v85 = *(v65 + v80[28]);
  v86 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOBYTE(v140) = v85;
  sub_1C3F096C0();
  sub_1C4030E10();

  v87 = *(v65 + v80[29]);
  v88 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOBYTE(v140) = v87;
  sub_1C4030E10();

  v89 = *(v65 + v80[30]);
  v90 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOBYTE(v140) = v89;
  sub_1C4030E10();

  v91 = (v65 + v80[31]);
  v92 = *v91;
  v93 = v91[1];
  v94 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  v140 = v92;
  v141 = v93;
  sub_1C4030E10();

  *(v2 + 25) = 0;
  v95 = v80[32];
  v96 = v138;
  v97 = (v138 + v95);
  v98 = *v97;
  v99 = v97[1];
  v100 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  v140 = v98;
  v141 = v99;
  sub_1C4030E10();

  *(v2 + 26) = 0;
  v101 = v139;
  v102 = (v96 + v139[33]);
  v103 = *v102;
  v104 = v102[1];
  v105 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  v140 = v103;
  v141 = v104;
  sub_1C4030E10();

  *(v2 + 27) = 0;
  LOBYTE(v103) = *(v96 + v101[34]);
  v106 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOBYTE(v140) = v103;
  sub_1C3F09908();
  sub_1C4030E10();

  LOWORD(v103) = *(v96 + v101[35]);
  v107 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOWORD(v140) = v103;
  sub_1C3F3F618();
  sub_1C4030E10();

  v108 = (v96 + v101[38]);
  v109 = v108[2];
  if (v109)
  {
    v110 = v108[3];
    v111 = v108[4];
    v112 = *(v96 + v101[38] + 8);
    LOBYTE(v140) = *v108;
    v141 = v112;
    v142 = v109;
    v143 = v110;
    v144 = v111;
    v113 = *(v129 + 48);
    v114 = *(v129 + 52);
    swift_allocObject();

    sub_1C401A008(&v140);
  }

  v115 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C4030E20();

  *(v2 + 28) = 0;
  v116 = sub_1C4010324(*(v96 + v101[37]));
  v117 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  v140 = v116;
  sub_1C4030E00();

  v118 = sub_1C4010594(*(v96 + v101[39]));
  v119 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  v140 = v118;
  sub_1C4030E00();

  v120 = *(v96 + v101[41]);
  v121 = *(v2 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  LOBYTE(v140) = v120;
  sub_1C3F3F7EC();
  sub_1C4030E10();

  sub_1C3F2AE38(v96);
  return v2;
}

uint64_t sub_1C40166EC(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + *(type metadata accessor for RecentCall() + 148));
  v90 = sub_1C3F15E44(MEMORY[0x1E69E7CC0]);
  v3 = v2 + 56;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;
  v74 = v2;

  v89 = 0;
  if (v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v12 >= v7)
    {

      v30 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3917ManagedRecentCall___observationRegistrar;
      v91 = v88;
      swift_getKeyPath();
      v86 = sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
      v87 = v30;
      sub_1C4030AA0();

      swift_getKeyPath();
      v31 = type metadata accessor for CallHistorySchemaV39.ManagedHandle(0);
      v80 = sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
      v81 = v31;
      v79 = sub_1C3F41010();
      sub_1C4030F80();

      v8 = v88;
      if (v88 >> 62)
      {
        goto LABEL_34;
      }

      v32 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
        goto LABEL_22;
      }

LABEL_35:

      v73 = MEMORY[0x1E69E7CC0];
LABEL_36:
      v91 = v88;
      swift_getKeyPath();
      sub_1C4030AA0();

      swift_getKeyPath();
      sub_1C4030F80();

      isUniquelyReferenced_nonNull_bridgeObject = v88;
      if (v88 >> 62)
      {
        goto LABEL_59;
      }

      v44 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44)
      {
LABEL_38:
        v45 = 0;
        v84 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
        v85 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
        v46 = -1;
        v82 = v44;
        v83 = isUniquelyReferenced_nonNull_bridgeObject;
        do
        {
          if (v85)
          {
            isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1C6933590](v45, isUniquelyReferenced_nonNull_bridgeObject);
            v55 = isUniquelyReferenced_nonNull_bridgeObject;
            v52 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              goto LABEL_56;
            }
          }

          else
          {
            if (v45 >= *(v84 + 16))
            {
              goto LABEL_57;
            }

            v55 = *(isUniquelyReferenced_nonNull_bridgeObject + 8 * v45 + 32);

            v52 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              v65 = isUniquelyReferenced_nonNull_bridgeObject;
              v44 = sub_1C40317E0();
              isUniquelyReferenced_nonNull_bridgeObject = v65;
              if (!v44)
              {
                break;
              }

              goto LABEL_38;
            }
          }

          v91 = v55;
          swift_getKeyPath();
          sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
          sub_1C4030AA0();

          swift_getKeyPath();
          sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
          sub_1C4030F90();

          if (v90[2])
          {
            v56 = sub_1C3F3C710(v91, v92);
            v58 = v57;

            if (v58)
            {
              v47 = v90[7] + 40 * v56;
              v48 = *v47;
              v78 = v52;
              v49 = *(v47 + 16);
              v76 = *(v47 + 24);
              v77 = v49;
              v50 = *(v47 + 32);
              v91 = v55;
              KeyPath = swift_getKeyPath();
              v75 = &v72;
              MEMORY[0x1EEE9AC00](KeyPath);

              v52 = v78;

              v53 = v89;
              sub_1C4030A90();

              v91 = v55;
              v54 = swift_getKeyPath();
              v75 = &v72;
              MEMORY[0x1EEE9AC00](v54);
              sub_1C4030A90();
              v89 = v53;

              goto LABEL_40;
            }
          }

          else
          {
          }

          v91 = v88;
          swift_getKeyPath();
          sub_1C4030AA0();

          swift_getKeyPath();
          sub_1C4030F80();

          v59 = v91;
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (!isUniquelyReferenced_nonNull_bridgeObject || (v59 & 0x8000000000000000) != 0 || (v59 & 0x4000000000000000) != 0)
          {
            isUniquelyReferenced_nonNull_bridgeObject = sub_1C401BCBC(v59);
            v59 = isUniquelyReferenced_nonNull_bridgeObject;
          }

          v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v45 >= v60)
          {
            goto LABEL_58;
          }

          v61 = v60 - 1;
          v62 = *((v59 & 0xFFFFFFFFFFFFFF8) + 8 * v45 + 0x20);
          memmove(((v59 & 0xFFFFFFFFFFFFFF8) + 8 * v45 + 32), ((v59 & 0xFFFFFFFFFFFFFF8) + 8 * v45 + 40), 8 * (v46 + v60));
          *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) = v61;

          v91 = v88;
          v63 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v63);
          v64 = v89;
          sub_1C4030A90();
          v89 = v64;

LABEL_40:
          ++v45;
          --v46;
          isUniquelyReferenced_nonNull_bridgeObject = v83;
        }

        while (v52 != v82);
      }

      v67 = sub_1C401C33C(v66, v73);

      v68 = sub_1C4010324(v67);

      if (v68 >> 62)
      {
        if (sub_1C40317E0())
        {
          goto LABEL_62;
        }
      }

      else if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_62:
        v69 = v88;
        v91 = v88;
        swift_getKeyPath();
        sub_1C4030AA0();

        swift_getKeyPath();
        sub_1C4030F80();

        sub_1C4017304(v68, sub_1C401BD20);
        v93 = v69;
        v70 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v70);
        sub_1C4030A90();
      }
    }

    v6 = *(v3 + 8 * v12);
    ++v1;
  }

  while (!v6);
  while (1)
  {
    v13 = (*(v74 + 48) + 40 * (__clz(__rbit64(v6)) | (v12 << 6)));
    LODWORD(v86) = *v13;
    v15 = v13[1];
    v14 = v13[2];
    v16 = v13[4];
    v87 = v13[3];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v90;
    v8 = sub_1C3F3C710(v15, v14);
    v19 = v90[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (v90[3] >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v8;
        sub_1C3F021B0();
        v8 = v29;
      }
    }

    else
    {
      sub_1C3F00A00(v22, isUniquelyReferenced_nonNull_native);
      v8 = sub_1C3F3C710(v15, v14);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_66;
      }
    }

    v6 &= v6 - 1;
    v90 = v91;
    if (v23)
    {
      v9 = *(v91 + 56) + 40 * v8;
      v10 = *(v9 + 16);
      v11 = *(v9 + 32);
      *v9 = v86;
      *(v9 + 8) = v15;
      *(v9 + 16) = v14;
      *(v9 + 24) = v87;
      *(v9 + 32) = v16;

      v1 = v12;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *(v91 + 8 * (v8 >> 6) + 64) |= 1 << v8;
      v25 = (v90[6] + 16 * v8);
      *v25 = v15;
      v25[1] = v14;
      v26 = v90[7] + 40 * v8;
      *v26 = v86;
      *(v26 + 8) = v15;
      *(v26 + 16) = v14;
      *(v26 + 24) = v87;
      *(v26 + 32) = v16;

      v27 = v90[2];
      v21 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v21)
      {
        goto LABEL_33;
      }

      v90[2] = v28;
      v1 = v12;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v12 = v1;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  v42 = v8;
  v32 = sub_1C40317E0();
  v8 = v42;
  if (!v32)
  {
    goto LABEL_35;
  }

LABEL_22:
  v33 = v8;
  v93 = MEMORY[0x1E69E7CC0];
  sub_1C3EF0270(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    v35 = v93;
    v36 = v33;
    v85 = v33 & 0xC000000000000001;
    do
    {
      if (v85)
      {
        v37 = MEMORY[0x1C6933590](v34, v36);
      }

      else
      {
        v37 = *(v36 + 8 * v34 + 32);
      }

      v91 = v37;
      swift_getKeyPath();
      sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);

      sub_1C4030AA0();

      swift_getKeyPath();
      sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
      sub_1C4030F90();

      v38 = v92;
      v93 = v35;
      v40 = *(v35 + 16);
      v39 = *(v35 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1C3EF0270((v39 > 1), v40 + 1, 1);
        v35 = v93;
      }

      ++v34;
      *(v35 + 16) = v40 + 1;
      v41 = v35 + 16 * v40;
      *(v41 + 32) = v37;
      *(v41 + 40) = v38;
      v36 = v33;
    }

    while (v32 != v34);
    v73 = v35;

    goto LABEL_36;
  }

  __break(1u);
LABEL_66:
  result = sub_1C4031C30();
  __break(1u);
  return result;
}

uint64_t sub_1C4017304(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1C40317E0();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_1C40317E0();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1C401B738(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C40173FC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1C3EFFFE8(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1C4031070();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C4017528(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + *(type metadata accessor for RecentCall() + 156));
  isUniquelyReferenced_nonNull_native = sub_1C3F15F80(MEMORY[0x1E69E7CC0]);
  v4 = v2 + 56;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 56);
  v8 = (v5 + 63) >> 6;
  v65 = v2;

  if (v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v12 >= v8)
    {

      v74 = v72;
      swift_getKeyPath();
      sub_1C401B164(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
      sub_1C4030AA0();

      swift_getKeyPath();
      v30 = type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem(0);
      sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
      v71 = v30;
      sub_1C3F410C4();
      sub_1C4030F80();

      v9 = v72;
      if (v72 >> 62)
      {
        goto LABEL_34;
      }

      v31 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v66 = isUniquelyReferenced_nonNull_native;
      if (v31)
      {
        goto LABEL_22;
      }

LABEL_35:

      v34 = MEMORY[0x1E69E7CC0];
LABEL_36:
      v74 = v72;
      swift_getKeyPath();
      sub_1C4030AA0();

      swift_getKeyPath();
      sub_1C4030F80();

      KeyPath = v72;
      if (v72 >> 62)
      {
        goto LABEL_59;
      }

      v43 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43)
      {
LABEL_38:
        v44 = 0;
        v69 = KeyPath & 0xFFFFFFFFFFFFFF8;
        v70 = KeyPath & 0xC000000000000001;
        v45 = -1;
        v67 = v43;
        v68 = KeyPath;
        do
        {
          if (v70)
          {
            v51 = MEMORY[0x1C6933590](v44, KeyPath);
            v52 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              goto LABEL_56;
            }
          }

          else
          {
            if (v44 >= *(v69 + 16))
            {
              goto LABEL_57;
            }

            v51 = *(KeyPath + 8 * v44 + 32);

            v52 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              v43 = sub_1C40317E0();
              if (!v43)
              {
                break;
              }

              goto LABEL_38;
            }
          }

          v73 = v52;
          v74 = v51;
          swift_getKeyPath();
          sub_1C401B164(&qword_1EC090468, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);

          sub_1C4030AA0();

          swift_getKeyPath();
          sub_1C401B164(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
          sub_1C4030F90();

          if (*(isUniquelyReferenced_nonNull_native + 16))
          {
            v53 = sub_1C3F3C710(v74, v75);
            v55 = v54;

            if (v55)
            {
              v46 = *(isUniquelyReferenced_nonNull_native + 56) + 24 * v53;
              v47 = *v46;
              v48 = *(v46 + 8);
              LOBYTE(v46) = *(v46 + 16);
              v74 = v47;
              v75 = v48;
              v76 = v46;
              v49 = *(v71 + 48);
              v50 = *(v71 + 52);
              swift_allocObject();

              sub_1C40190F0(&v74);

              goto LABEL_40;
            }
          }

          else
          {
          }

          v74 = v72;
          swift_getKeyPath();
          sub_1C4030AA0();

          KeyPath = swift_getKeyPath();
          sub_1C4030F80();

          isUniquelyReferenced_nonNull_native = v74;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || isUniquelyReferenced_nonNull_native < 0 || (isUniquelyReferenced_nonNull_native & 0x4000000000000000) != 0)
          {
            isUniquelyReferenced_nonNull_native = sub_1C401BCBC(isUniquelyReferenced_nonNull_native);
          }

          v56 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v44 >= v56)
          {
            goto LABEL_58;
          }

          v57 = v56 - 1;
          v58 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 8 * v44 + 0x20);
          memmove(((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 8 * v44 + 32), ((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 8 * v44 + 40), 8 * (v45 + v56));
          *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10) = v57;

          v74 = v72;
          v59 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v59);
          sub_1C4030A90();

          isUniquelyReferenced_nonNull_native = v66;
LABEL_40:
          ++v44;
          --v45;
          KeyPath = v68;
        }

        while (v73 != v67);
      }

      v61 = sub_1C401C7F0(v60, v34);

      v62 = sub_1C4010594(v61);

      if (v62 >> 62)
      {
        if (sub_1C40317E0())
        {
          goto LABEL_62;
        }
      }

      else if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_62:
        v74 = v72;
        swift_getKeyPath();
        sub_1C4030AA0();

        swift_getKeyPath();
        sub_1C4030F80();

        sub_1C4017304(v62, sub_1C401BEC4);
        v77 = v72;
        v63 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v63);
        sub_1C4030A90();
      }
    }

    v7 = *(v4 + 8 * v12);
    ++v1;
  }

  while (!v7);
  while (1)
  {
    v13 = *(v65 + 48) + 24 * (__clz(__rbit64(v7)) | (v12 << 6));
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    swift_bridgeObjectRetain_n();
    v17 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v17;
    v9 = sub_1C3F3C710(v15, v14);
    v19 = *(v17 + 16);
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (*(v17 + 24) >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v9;
        sub_1C3F02350();
        v9 = v29;
      }
    }

    else
    {
      sub_1C3F00CEC(v22, isUniquelyReferenced_nonNull_native);
      v9 = sub_1C3F3C710(v15, v14);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_66;
      }
    }

    v7 &= v7 - 1;
    isUniquelyReferenced_nonNull_native = v74;
    if (v23)
    {
      v10 = *(v74 + 56) + 24 * v9;
      v11 = *(v10 + 8);
      *v10 = v15;
      *(v10 + 8) = v14;
      *(v10 + 16) = v16;

      v1 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *(v74 + 8 * (v9 >> 6) + 64) |= 1 << v9;
      v25 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v9);
      *v25 = v15;
      v25[1] = v14;
      v26 = *(isUniquelyReferenced_nonNull_native + 56) + 24 * v9;
      *v26 = v15;
      *(v26 + 8) = v14;
      *(v26 + 16) = v16;
      v27 = *(isUniquelyReferenced_nonNull_native + 16);
      v21 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v21)
      {
        goto LABEL_33;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v28;
      v1 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v12 = v1;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  v41 = v9;
  v31 = sub_1C40317E0();
  v9 = v41;
  v66 = isUniquelyReferenced_nonNull_native;
  if (!v31)
  {
    goto LABEL_35;
  }

LABEL_22:
  v32 = v9;
  v77 = MEMORY[0x1E69E7CC0];
  sub_1C3EF0270(0, v31 & ~(v31 >> 63), 0);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    v34 = v77;
    v35 = v32;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1C6933590](v33, v35);
      }

      else
      {
        v36 = *(v35 + 8 * v33 + 32);
      }

      v74 = v36;
      swift_getKeyPath();
      sub_1C401B164(&qword_1EC090468, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);

      sub_1C4030AA0();

      swift_getKeyPath();
      sub_1C401B164(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
      sub_1C4030F90();

      v37 = v75;
      v77 = v34;
      v39 = *(v34 + 16);
      v38 = *(v34 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1C3EF0270((v38 > 1), v39 + 1, 1);
        v34 = v77;
      }

      ++v33;
      *(v34 + 16) = v39 + 1;
      v40 = v34 + 16 * v39;
      *(v40 + 32) = v36;
      *(v40 + 40) = v37;
      v35 = v32;
    }

    while (v31 != v33);

    isUniquelyReferenced_nonNull_native = v66;
    goto LABEL_36;
  }

  __break(1u);
LABEL_66:
  result = sub_1C4031C30();
  __break(1u);
  return result;
}

uint64_t sub_1C4017FE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC090468, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C4030F90();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C40180F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC090468, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C40181C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C401DBC0();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C40182E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030A90();
}

uint64_t sub_1C40183B0(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0926C8, &qword_1C4053988);
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  *(v1 + 64) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  sub_1C4030F10();
  *(v1 + 16) = 0x101010101010101;
  *(v1 + 24) = 16843009;
  v4 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090460, &qword_1C403D6F0);
  type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem(0);
  sub_1C3F410C4();
  sub_1C4030E00();

  v5 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV39.ManagedHandle(0);
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030E20();

  *(v1 + 28) = 0;
  v6 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FFD0, &qword_1C403C460);
  sub_1C3F41010();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 21) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));
  sub_1C3EAE504(a1, v1 + 32);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C4018678()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3917ManagedRecentCall___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C4018744()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C401883C()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC090468, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C4018940@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC090468, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C3F09F8C();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C4018A50(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC090468, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C4018B20()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC090468, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C3F09F8C();
  sub_1C4030F90();
}

uint64_t sub_1C4018C28()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C3F09FE0();
  sub_1C4030FB0();
}

uint64_t sub_1C4018CD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC090468, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C4018E14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC090468, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C4018EE0()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC090468, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C4019018()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030FC0();
}

uint64_t sub_1C40190F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C40309F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 8);
  v20 = *a1;
  v21 = *(a1 + 16);
  v10 = type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem(0);
  *(v2 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092708, &unk_1C4053AD0);
  v11 = sub_1C401B164(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  v22 = v10;
  v23 = v10;
  v24 = v11;
  v25 = v11;
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v2 + 24));
  sub_1C4030F10();
  sub_1C40309E0();
  v12 = sub_1C40309A0();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  v15 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  v22 = v12;
  v23 = v14;
  sub_1C4030E10();

  v16 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030E20();

  *(v2 + 16) = 0;
  sub_1C4030AB0();
  v17 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  v22 = v20;
  v23 = v9;

  sub_1C4030E10();

  v18 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  LOBYTE(v22) = v21;
  sub_1C3F09FE0();
  sub_1C4030E10();

  return v2;
}

uint64_t sub_1C4019460(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1C40309F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem(0);
  *(v2 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092708, &unk_1C4053AD0);
  v10 = sub_1C401B164(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  v17 = v9;
  v18 = v9;
  v19 = v10;
  v20 = v10;
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v2 + 24));
  sub_1C4030F10();
  sub_1C40309E0();
  v11 = sub_1C40309A0();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  v14 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  v17 = v11;
  v18 = v13;
  sub_1C4030E10();

  v15 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  sub_1C4030E20();

  *(v2 + 16) = 0;
  sub_1C4030AB0();
  *(v2 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v2 + 24));
  sub_1C3EAE504(a1, v2 + 24);
  swift_endAccess();
  return v2;
}

uint64_t sub_1C4019758()
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

uint64_t sub_1C4019810()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C3F0A1D4();
  sub_1C4030F90();
}

uint64_t sub_1C4019918()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C3F0A228();
  sub_1C4030FB0();
}

uint64_t sub_1C40199C4()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C4019AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C401B164(a5, a6);
  sub_1C4030FB0();
}

uint64_t sub_1C4019B68()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C401DDDC(&qword_1EC0902D8);
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C4019C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C401B164(a5, a6);
  sub_1C401DDDC(&qword_1EC0906A0);
  sub_1C4030FB0();
}

uint64_t sub_1C4019D5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030A90();
}

uint64_t sub_1C4019E34()
{
  swift_getKeyPath();
  sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C401DBC0();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C4019F44()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C401DBC0();
  sub_1C4030FA0();
}

uint64_t sub_1C401A008(void *a1)
{
  v2 = v1;
  v8 = *a1;
  v9 = a1[2];
  v10 = a1[1];
  v11 = a1[4];
  v12 = a1[3];
  type metadata accessor for CallHistorySchemaV39.ManagedHandle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0926E8, &qword_1C4053A40);
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v3 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0926C0, &unk_1C4053978);
  type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  sub_1C401DBC0();
  sub_1C4030E00();

  v4 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E00();

  sub_1C4030AB0();
  v5 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C3F0A228();
  sub_1C4030E10();

  v6 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  swift_getKeyPath();
  sub_1C401B164(&qword_1EC0902D0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  sub_1C4030A90();

  return v1;
}

uint64_t sub_1C401A344(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV39.ManagedHandle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0926E8, &qword_1C4053A40);
  sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v4 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0926C0, &unk_1C4053978);
  type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  sub_1C401DBC0();
  sub_1C4030E00();

  v5 = *(v1 + 56);
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

uint64_t sub_1C401A58C()
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

uint64_t sub_1C401A688()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40385C0;
  v1 = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  v2 = sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem(0);
  v4 = sub_1C401B164(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV39.ManagedHandle(0);
  v6 = sub_1C401B164(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

unint64_t sub_1C401A7FC(uint64_t a1)
{
  result = sub_1C3EFA738();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1C401A850(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 32, v4);
  return sub_1C3F4C914;
}

uint64_t sub_1C401A92C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C401A9E4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C401AA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C401AAF0(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C401AB80;
}

uint64_t sub_1C401ABE4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C401AC9C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C401AD34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1C401AD9C(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C401AB80;
}

void sub_1C401AE2C(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
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

uint64_t sub_1C401AF44(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C401B164(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C401AFD0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C401B088(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C401B164(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C401B0F8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C401B164(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C401B4C4(uint64_t a1)
{
  result = sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C401B51C(uint64_t a1)
{
  result = sub_1C401B164(&qword_1EC092688, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
  *(a1 + 8) = result;
  return result;
}

void *sub_1C401B694(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_1C401B738(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1C40317E0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1C40318E0();
  *v1 = result;
  return result;
}

uint64_t sub_1C401B7D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v8 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v8;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092728, &qword_1C4054110);
  result = sub_1C4031890();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 56;
  v33 = v4;
  v34 = result;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v35 = (v9 - 1) & v9;
LABEL_17:
    v15 = *(v4 + 48) + 40 * (v12 | (v10 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    v21 = *(v8 + 40);
    sub_1C4031C70();
    sub_1C4031CA0();

    sub_1C4031280();
    sub_1C4031C90();
    if (v20)
    {
      sub_1C4031280();
    }

    result = sub_1C4031CC0();
    v8 = v34;
    v22 = -1 << *(v34 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v11 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_33;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v11 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v34 + 48) + 40 * v25;
    *v30 = v16;
    *(v30 + 8) = v17;
    *(v30 + 16) = v18;
    *(v30 + 24) = v19;
    *(v30 + 32) = v20;
    ++*(v34 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_34;
    }

    v4 = v33;
    v9 = v35;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      goto LABEL_6;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v35 = (v14 - 1) & v14;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1C401BA74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092718, &unk_1C4053AE0);
  result = sub_1C4031890();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v9 + 40);
    sub_1C4031C70();

    sub_1C4031280();
    sub_1C4031CA0();
    result = sub_1C4031CC0();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v9 + 48) + 24 * v24;
    *v29 = v17;
    *(v29 + 8) = v18;
    *(v29 + 16) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C401BCBC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C40317E0();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1C40318E0();
}

uint64_t sub_1C401BD20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C40317E0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C40317E0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C3EF7BF0(&qword_1EC092720, &qword_1EC08FFD0, &qword_1C403C460);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FFD0, &qword_1C403C460);
            v9 = sub_1C401C068(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CallHistorySchemaV39.ManagedHandle(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C401BEC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C40317E0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C40317E0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C3EF7BF0(&qword_1EC092710, &qword_1EC090460, &qword_1C403D6F0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090460, &qword_1C403D6F0);
            v9 = sub_1C401C0F0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1C401C068(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C6933590](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1C401C0E8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1C401C0F0(uint64_t (*result)(uint64_t *), unint64_t a2, uint64_t a3))(uint64_t *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C6933590](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1C401F004;
  }

  __break(1u);
  return result;
}

unint64_t *sub_1C401C170(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = 0;
  v25 = a4;
  v22 = a2;
  v23 = result;
  v4 = 0;
  v26 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v26 + 48) + 40 * v13);
    v15 = v14[2];
    v16 = v14[4];
    v27[0] = v14[1];
    v27[1] = v15;
    MEMORY[0x1EEE9AC00](result);
    v21[2] = v27;

    v17 = v28;
    v18 = sub_1C3F0D47C(sub_1C3F161A4, v21, v25);
    v28 = v17;

    if ((v18 & 1) == 0)
    {
      *(v23 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        v20 = v26;

        return sub_1C401B7D8(v23, v22, v24, v20);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C401C33C(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v36[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v30 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v30;
  v34 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v35 = v3;
    v29 = &v29;
    MEMORY[0x1EEE9AC00](v8);
    v31 = &v29 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v7);
    v32 = 0;
    v33 = v4;
    v7 = 0;
    v10 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    v4 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v7 << 6);
      v3 = &v29;
      v18 = (*(v33 + 48) + 40 * v17);
      v19 = v18[2];
      v20 = v18[4];
      v36[0] = v18[1];
      v36[1] = v19;
      MEMORY[0x1EEE9AC00](v9);
      *(&v29 - 2) = v36;

      v21 = v35;
      v22 = sub_1C3F0D47C(sub_1C3F161A4, (&v29 - 4), v34);
      v35 = v21;

      if ((v22 & 1) == 0)
      {
        *&v31[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_16:
          v24 = sub_1C401B7D8(v31, v30, v32, v33);
          goto LABEL_17;
        }
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v4)
      {
        goto LABEL_16;
      }

      v16 = *(v10 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v34;

  v24 = sub_1C401B694(v27, v30, v4, v28, sub_1C401C170);
  v35 = v3;

  MEMORY[0x1C6934650](v27, -1, -1);
LABEL_17:

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

unint64_t *sub_1C401C63C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = result;
  v4 = 0;
  v25 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v25 + 48) + 24 * v13);
    v15 = v14[1];
    v24[0] = *v14;
    v24[1] = v15;
    MEMORY[0x1EEE9AC00](result);
    v19[2] = v24;

    v16 = sub_1C3F0D47C(sub_1C3F161A4, v19, v23);

    if ((v16 & 1) == 0)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v25;

        return sub_1C401BA74(v21, v20, v22, v18);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C401C7F0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v32 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27[1] = v27;
    v28 = v5;
    MEMORY[0x1EEE9AC00](v7);
    v29 = v27 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v6);
    v30 = 0;
    v31 = v2;
    v5 = 0;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v18 = (*(v31 + 48) + 24 * v17);
      v19 = v18[1];
      v33[0] = *v18;
      v33[1] = v19;
      MEMORY[0x1EEE9AC00](v8);
      v27[-2] = v33;

      v20 = sub_1C3F0D47C(sub_1C3F15878, &v27[-4], v32);

      if ((v20 & 1) == 0)
      {
        *&v29[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_1C401BA74(v29, v28, v30, v31);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = v32;

  v22 = sub_1C401B694(v25, v5, v2, v26, sub_1C401C63C);

  MEMORY[0x1C6934650](v25, -1, -1);
LABEL_17:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t sub_1C401CAD0()
{
  v39 = sub_1C4031070();
  v0 = *(v39 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v35 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1C4031020();
  v42 = *(v40 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v34 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v5 = *(v0 + 72);
  v38 = v0;
  v6 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C404E120;
  v36 = v7;
  v37 = v6;
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0xD000000000000010;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v47 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090460, &qword_1C403D6F0);
  *&v46 = MEMORY[0x1E69E7CC0];
  v8 = *MEMORY[0x1E697BCE0];
  v9 = *(v42 + 104);
  v42 += 104;
  v33 = v9;
  v10 = v34;
  v9(v34, v8, v40);
  v11 = sub_1C4031030();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = v10;
  v15 = sub_1C4031040();
  *(&v44 + 1) = v11;
  v16 = sub_1C401B164(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  v45 = v16;
  *&v43 = v15;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  v32[1] = 31 * v5;
  v32[0] = "managedInitiator";
  swift_getKeyPath();
  *(&v47 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FFD0, &qword_1C403C460);
  *&v46 = MEMORY[0x1E69E7CC0];
  v33(v14, v8, v40);
  swift_getKeyPath();
  v17 = *(v11 + 48);
  v18 = *(v11 + 52);
  swift_allocObject();
  v19 = sub_1C4031040();
  *(&v44 + 1) = v11;
  v45 = v16;
  *&v43 = v19;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v46 = 0u;
  v47 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0926A0, &unk_1C4053960);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C403DAB0;
  *(v21 + 32) = swift_getKeyPath();
  *(v20 + 32) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0926A8, &qword_1C4053970);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1C4031090();
  *(&v44 + 1) = v22;
  v26 = v35;
  v45 = sub_1C3EF7BF0(&qword_1EC0926B0, &qword_1EC0926A8, &qword_1C4053970);
  *&v43 = v25;
  sub_1C4031060();
  v27 = sub_1C3EFFFE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1C3EFFFE8(v28 > 1, v29 + 1, 1, v27);
  }

  *(v27 + 2) = v29 + 1;
  v30 = v27;
  (*(v38 + 32))(&v27[v37 + v29 * v5], v26, v39);
  *&v43 = v36;
  sub_1C40173FC(v30);
  return v43;
}

uint64_t sub_1C401DB10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4014980();
}

uint64_t sub_1C401DB38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4014980();
}

uint64_t sub_1C401DB9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4019F44();
}

unint64_t sub_1C401DBC0()
{
  result = qword_1EC0926B8;
  if (!qword_1EC0926B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0926C0, &unk_1C4053978);
    sub_1C401B164(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0926B8);
  }

  return result;
}

uint64_t sub_1C401DCC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4013FC4();
}

uint64_t sub_1C401DD28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4013A04();
}

uint64_t sub_1C401DDDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F878, &qword_1C403A790);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C401DEF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4012F5C();
}

uint64_t sub_1C401DF20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4012F5C();
}

uint64_t sub_1C401E100()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4014980();
}

uint64_t sub_1C401E128()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4011DA0();
}

uint64_t sub_1C401E148()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4014980();
}

uint64_t sub_1C401E3C8()
{
  v30 = sub_1C4031070();
  v0 = *(v30 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C40309F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v9 = *(v0 + 72);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C40385C0;
  v28 = v10;
  v29 = v11;
  swift_getKeyPath();
  sub_1C40309E0();
  v12 = sub_1C40309A0();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  *(&v35 + 1) = MEMORY[0x1E69E6158];
  *&v34 = v12;
  *(&v34 + 1) = v14;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v34 = 0u;
  v35 = 0u;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v34 = 0u;
  v35 = 0u;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v34 = 0u;
  v35 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0926F0, &qword_1C4053AC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C403DAB0;
  *(v16 + 32) = swift_getKeyPath();
  *(v15 + 32) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0926F8, &qword_1C4053AC8);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1C4031090();
  *(&v32 + 1) = v17;
  v21 = v27;
  v33 = sub_1C3EF7BF0(&qword_1EC092700, &qword_1EC0926F8, &qword_1C4053AC8);
  *&v31 = v20;
  sub_1C4031060();
  v22 = sub_1C3EFFFE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_1C3EFFFE8(v23 > 1, v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  v25 = v22;
  (*(v1 + 32))(&v22[v28 + v24 * v9], v21, v30);
  *&v31 = v29;
  sub_1C40173FC(v25);
  return v31;
}

uint64_t sub_1C401E840()
{
  v34 = sub_1C4031070();
  v0 = *(v34 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C4031020();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v8 = *(v0 + 72);
  v30 = v0;
  v9 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C4039150;
  v32 = v9;
  v33 = v10;
  swift_getKeyPath();
  v38 = 0u;
  v39 = 0u;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v38 = 0u;
  v39 = 0u;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v38 = 0u;
  v39 = 0u;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0926C0, &unk_1C4053978);
  v12 = MEMORY[0x1E69E7CC0];
  *(&v39 + 1) = v11;
  *&v38 = MEMORY[0x1E69E7CC0];
  (*(v4 + 104))(v7, *MEMORY[0x1E697BCD8], v3);
  swift_getKeyPath();
  v13 = sub_1C4031030();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_1C4031040();
  *(&v36 + 1) = v13;
  v37 = sub_1C401B164(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  *&v35 = v16;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v39 + 1) = v11;
  *&v38 = v12;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v38 = 0u;
  v39 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0926D0, &qword_1C4053A30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C4038660;
  *(v18 + 32) = swift_getKeyPath();
  *(v18 + 40) = swift_getKeyPath();
  *(v17 + 32) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0926D8, &qword_1C4053A38);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1C4031090();
  *(&v36 + 1) = v19;
  v23 = v31;
  v37 = sub_1C3EF7BF0(&qword_1EC0926E0, &qword_1EC0926D8, &qword_1C4053A38);
  *&v35 = v22;
  sub_1C4031060();
  v24 = sub_1C3EFFFE8(0, 1, 1, v12);
  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1C3EFFFE8(v25 > 1, v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = v24;
  (*(v30 + 32))(&v24[v32 + v26 * v8], v23, v34);
  *&v35 = v33;
  sub_1C40173FC(v27);
  return v35;
}

uint64_t sub_1C401EE04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4019F44();
}

uint64_t sub_1C401EED8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4019918();
}

uint64_t sub_1C401EEF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4019018();
}

uint64_t sub_1C401EF14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C4018C28();
}

void sub_1C401F0B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C4031200();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C401F688(a1, v14);
  if (!v15)
  {
    sub_1C401F620(v14);
    goto LABEL_6;
  }

  sub_1C3F65180();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v9 = v13[1];
  sub_1C40311C0();
  sub_1C40311F0();
  v10 = sub_1C40311D0();
  v12 = v11;

  (*(v5 + 8))(v8, v4);
  if (v12 >> 60 == 15)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = MEMORY[0x1E6969080];

    *a2 = v10;
    *(a2 + 8) = v12;
  }
}

double sub_1C401F264@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C4031200();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C401F688(a1, v13);
  if (v14)
  {
    if (swift_dynamicCast())
    {
      sub_1C40311F0();
      v6 = sub_1C40311E0();
      if (v7)
      {
        v8 = v6;
        v9 = v7;
        *(a2 + 24) = MEMORY[0x1E69E6158];
        sub_1C3F31480(v11, v12);
        *a2 = v8;
        *(a2 + 8) = v9;
        return result;
      }

      sub_1C3F31480(v11, v12);
    }
  }

  else
  {
    sub_1C401F620(v13);
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_1C401F3A0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1C4031750();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = a1;
  }

  a4(v17, v16);

  sub_1C401F620(v16);
  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_1C4031BE0();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_1C401F560()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MigrationEncryptionTransformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C401F5B8()
{
  type metadata accessor for MigrationEncryptionTransformer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092730, &unk_1C4053B20);
  sub_1C4031210();
  v0 = sub_1C4031190();

  qword_1EC0B0CA8 = v0;
  return result;
}

uint64_t sub_1C401F620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF20, &unk_1C4037F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C401F688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF20, &unk_1C4037F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C401F708(uint64_t a1)
{
  v3 = sub_1C40309F0();
  v73 = *(v3 - 8);
  v4 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092810, &qword_1C4053F98);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v64 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092818, &qword_1C4053FA0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092820, &qword_1C4053FA8);
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  type metadata accessor for CallHistorySchemaV12.CallRecord();
  v17 = sub_1C402545C(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030F00();
  v18 = sub_1C4030E60();
  result = (*(v12 + 8))(v15, v11);
  if (!v1)
  {
    v20 = v73;
    v71 = v6;
    v78 = MEMORY[0x1E69E7CD0];
    v21 = v18;
    if (v18 >> 62)
    {
      result = sub_1C40317E0();
      v21 = v18;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_4:
        v75 = 0;
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v68 = v3;
        v69 = v21;
        v64 = a1;
        v70 = v17;
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = 0;
          v67 = "notifyDelegatesOfDBChange()";
          v65 = (v20 + 8);
          v66 = "com.apple.Telephony";
          v74 = result;
          do
          {
            v35 = MEMORY[0x1C6933590](v22);
            v76 = v35;
            swift_getKeyPath();
            v73 = sub_1C402545C(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
            sub_1C4030AA0();

            swift_getKeyPath();
            sub_1C40253C8(&qword_1EC0902D8, &qword_1EC08F878, &qword_1C403A790);
            sub_1C4030F90();

            v36 = v71;
            if (v77)
            {
              v37 = v76;
              v38 = v77;
            }

            else
            {
              sub_1C40309E0();
              v37 = sub_1C40309A0();
              v38 = v39;
              (*v65)(v36, v68);
            }

            v40 = v78;

            v41 = sub_1C4020358(v37, v38, v40);

            if (v41)
            {

              sub_1C40309E0();
              v37 = sub_1C40309A0();
              v38 = v42;
              (*v65)(v36, v68);
            }

            v72 = v22 + 1;

            sub_1C4025C48(&v76, v37, v38);

            v76 = v35;
            KeyPath = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](KeyPath);
            *(&v64 - 4) = v35;
            *(&v64 - 3) = v37;
            *(&v64 - 2) = v38;
            v24 = v75;
            sub_1C4030A90();

            v76 = v35;
            swift_getKeyPath();
            sub_1C4030AA0();

            swift_getKeyPath();
            sub_1C40253C8(&qword_1EC090710, &qword_1EC090708, &qword_1C403E1B0);
            sub_1C4030F90();

            if ((v76 & 8) != 0)
            {
              v25 = BYTE4(v76);
            }

            else
            {
              v25 = 1;
            }

            if (v25)
            {
              v26 = 1;
            }

            else
            {
              v26 = 2;
            }

            if (BYTE4(v76))
            {
              v27 = 0;
            }

            else
            {
              v27 = v76;
            }

            v76 = v35;
            v28 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v28);
            *(&v64 - 2) = v35;
            *(&v64 - 2) = v26;
            *(&v64 - 4) = 0;
            sub_1C4030A90();

            v29 = 0xD000000000000012;
            if ((v27 & 0x18) == 0)
            {
              v29 = 0xD000000000000013;
            }

            v30 = v66;
            if ((v27 & 0x18) == 0)
            {
              v30 = v67;
            }

            if ((v27 & 3) != 0)
            {
              v31 = 0xD000000000000013;
            }

            else
            {
              v31 = v29;
            }

            if ((v27 & 3) != 0)
            {
              v32 = v67;
            }

            else
            {
              v32 = v30;
            }

            v33 = v32 | 0x8000000000000000;
            v76 = v35;
            v34 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v34);
            *(&v64 - 4) = v35;
            *(&v64 - 3) = v31;
            *(&v64 - 2) = v33;
            v22 = v72;
            sub_1C4030A90();
            v75 = v24;
            swift_unknownObjectRelease();
          }

          while (v74 != v22);
        }

        else
        {
          v43 = 32;
          v72 = "notifyDelegatesOfDBChange()";
          v66 = (v20 + 8);
          v67 = "com.apple.Telephony";
          do
          {
            v73 = v43;
            v74 = result;
            v56 = *(v21 + v43);
            v76 = v56;
            swift_getKeyPath();
            sub_1C402545C(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);

            sub_1C4030AA0();

            swift_getKeyPath();
            sub_1C40253C8(&qword_1EC0902D8, &qword_1EC08F878, &qword_1C403A790);
            sub_1C4030F90();

            v57 = v71;
            if (v77)
            {
              v58 = v76;
              v59 = v77;
            }

            else
            {
              sub_1C40309E0();
              v58 = sub_1C40309A0();
              v59 = v60;
              (*v66)(v57, v68);
            }

            v61 = v78;

            v62 = sub_1C4020358(v58, v59, v61);

            if (v62)
            {

              sub_1C40309E0();
              v58 = sub_1C40309A0();
              v59 = v63;
              (*v66)(v57, v68);
            }

            sub_1C4025C48(&v76, v58, v59);

            v76 = v56;
            v44 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v44);
            *(&v64 - 4) = v56;
            *(&v64 - 3) = v58;
            *(&v64 - 2) = v59;
            v45 = v75;
            sub_1C4030A90();

            v76 = v56;
            swift_getKeyPath();
            sub_1C4030AA0();

            swift_getKeyPath();
            sub_1C40253C8(&qword_1EC090710, &qword_1EC090708, &qword_1C403E1B0);
            sub_1C4030F90();

            if ((v76 & 8) != 0)
            {
              v46 = BYTE4(v76);
            }

            else
            {
              v46 = 1;
            }

            if (v46)
            {
              v47 = 1;
            }

            else
            {
              v47 = 2;
            }

            if (BYTE4(v76))
            {
              v48 = 0;
            }

            else
            {
              v48 = v76;
            }

            v76 = v56;
            v49 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v49);
            *(&v64 - 2) = v56;
            *(&v64 - 2) = v47;
            *(&v64 - 4) = 0;
            sub_1C4030A90();

            v50 = 0xD000000000000012;
            if ((v48 & 0x18) == 0)
            {
              v50 = 0xD000000000000013;
            }

            v51 = v67;
            if ((v48 & 0x18) == 0)
            {
              v51 = v72;
            }

            if ((v48 & 3) != 0)
            {
              v52 = 0xD000000000000013;
            }

            else
            {
              v52 = v50;
            }

            if ((v48 & 3) != 0)
            {
              v53 = v72;
            }

            else
            {
              v53 = v51;
            }

            v54 = v53 | 0x8000000000000000;
            v76 = v56;
            v55 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v55);
            *(&v64 - 4) = v56;
            *(&v64 - 3) = v52;
            *(&v64 - 2) = v54;
            sub_1C4030A90();
            v75 = v45;

            v43 = v73 + 8;
            result = v74 - 1;
            v21 = v69;
          }

          while (v74 != 1);
        }
      }
    }

    return sub_1C4030E50();
  }

  return result;
}

uint64_t sub_1C4020358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1C4031C70();
  sub_1C4031280();
  v7 = sub_1C4031CC0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1C4031BF0() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1C4020450(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0927F8, &qword_1C4053F30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092800, &qword_1C4053F38);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092808, &qword_1C4053F40);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  type metadata accessor for CallHistorySchemaV13.CallRecord();
  v13 = sub_1C402545C(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030F00();
  v14 = sub_1C4030E60();
  result = (*(v8 + 8))(v11, v7);
  if (!v1)
  {
    v16 = v14;
    if (v14 >> 62)
    {
      result = sub_1C40317E0();
      v16 = v14;
      v17 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_4:
        if (v17 < 1)
        {
          __break(1u);
          return result;
        }

        v36 = v13;
        v30 = a1;
        v31 = v16;
        if ((v16 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v17; ++i)
          {
            v20 = MEMORY[0x1C6933590](i);
            v34 = v20;
            swift_getKeyPath();
            sub_1C402545C(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
            sub_1C4030AA0();

            swift_getKeyPath();
            sub_1C4030F20();

            v21 = v34;
            if (v34 && (v34 = 0, v35 = 0, sub_1C40311B0(), v21, v35))
            {
              v32 = 64;
              v33 = 0xE100000000000000;
              sub_1C4010284();
              v22 = sub_1C40316E0();

              v34 = v20;
              KeyPath = swift_getKeyPath();
              MEMORY[0x1EEE9AC00](KeyPath);
              *(&v30 - 2) = v20;
              if (v22)
              {
                *(&v30 - 2) = 3;
              }

              else
              {
                *(&v30 - 2) = 2;
              }

              *(&v30 - 4) = 0;
            }

            else
            {
              v34 = v20;
              v19 = swift_getKeyPath();
              MEMORY[0x1EEE9AC00](v19);
              *(&v30 - 2) = v20;
              *(&v30 - 2) = 0;
              *(&v30 - 4) = 0;
            }

            sub_1C4030A90();
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v24 = 32;
          do
          {
            v26 = *(v16 + v24);
            v34 = v26;
            swift_getKeyPath();
            sub_1C402545C(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);

            sub_1C4030AA0();

            swift_getKeyPath();
            sub_1C4030F20();

            v27 = v34;
            if (v34 && (v34 = 0, v35 = 0, sub_1C40311B0(), v27, v35))
            {
              v32 = 64;
              v33 = 0xE100000000000000;
              sub_1C4010284();
              v28 = sub_1C40316E0();

              v34 = v26;
              v29 = swift_getKeyPath();
              MEMORY[0x1EEE9AC00](v29);
              *(&v30 - 2) = v26;
              if (v28)
              {
                *(&v30 - 2) = 3;
              }

              else
              {
                *(&v30 - 2) = 2;
              }

              *(&v30 - 4) = 0;
            }

            else
            {
              v34 = v26;
              v25 = swift_getKeyPath();
              MEMORY[0x1EEE9AC00](v25);
              *(&v30 - 2) = v26;
              *(&v30 - 2) = 0;
              *(&v30 - 4) = 0;
            }

            sub_1C4030A90();

            v24 += 8;
            --v17;
            v16 = v31;
          }

          while (v17);
        }
      }
    }

    return sub_1C4030E50();
  }

  return result;
}

uint64_t sub_1C4020BB4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0927E0, &qword_1C4053E50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0927E8, &qword_1C4053E58);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0927F0, &qword_1C4053E60);
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  type metadata accessor for CallHistorySchemaV15.CallRecord(0);
  v14 = sub_1C402545C(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030F00();
  v15 = sub_1C4030E60();
  result = (*(v9 + 8))(v12, v8);
  if (!v1)
  {
    v53 = v14;
    v17 = v15;
    v47 = a1;
    if (v15 >> 62)
    {
      goto LABEL_31;
    }

    for (result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); result; v17 = v15)
    {
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v18 = 0;
      v52 = v17 & 0xC000000000000001;
      v48 = xmmword_1C403DAB0;
      v50 = result;
      v51 = v17;
      while (1)
      {
        if (v52)
        {
          v27 = MEMORY[0x1C6933590](v18);
        }

        else
        {
          v27 = *(v17 + 8 * v18 + 32);
        }

        v54 = v27;
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v44 - 2) = v27;
        *(&v44 - 1) = 0;
        sub_1C402545C(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
        sub_1C4030A90();
        v56 = v2;

        v54 = v27;
        swift_getKeyPath();
        sub_1C4030AA0();

        swift_getKeyPath();
        sub_1C4030F20();

        v29 = v54;
        if (!v54 || (v54 = 0, v55 = 0, sub_1C40311B0(), v29, (v2 = v55) == 0))
        {
          v54 = v27;
          v30 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v30);
          *(&v44 - 2) = v27;
          *(&v44 - 1) = MEMORY[0x1E69E7CC0];
          v31 = v56;
          sub_1C4030A90();
          v2 = v31;

          goto LABEL_8;
        }

        v49 = v54;
        v54 = v27;
        swift_getKeyPath();
        sub_1C4030AA0();

        swift_getKeyPath();
        sub_1C40253C8(&qword_1EC090710, &qword_1EC090708, &qword_1C403E1B0);
        v15 = v27;
        sub_1C4030F90();

        if ((v54 & 0x100000000) != 0)
        {
          goto LABEL_6;
        }

        if (v54 < -32768)
        {
          break;
        }

        if (v54 >= 0x8000)
        {
          goto LABEL_30;
        }

        if (v54 > 1u)
        {
          if (v54 == 2)
          {
            v46 = sub_1C4031190();
            v54 = v27;
            swift_getKeyPath();
            sub_1C4030AA0();

            swift_getKeyPath();
            sub_1C40253C8(&qword_1EC0902D8, &qword_1EC08F878, &qword_1C403A790);
            sub_1C4030F90();

            v32 = sub_1C4031190();

            v33 = v46;
            v34 = CFPhoneNumberCreate();

            v46 = v34;
            String = CFPhoneNumberCreateString();
            if (String)
            {
              v36 = String;
              v45 = sub_1C40311C0();
            }

            else
            {
              v45 = 0;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
            v37 = swift_allocObject();
            *(v37 + 16) = v48;
            v38 = sub_1C4031190();

            v39 = type metadata accessor for CallHistorySchemaV15.Handle(0);
            v40 = *(v39 + 48);
            v41 = *(v39 + 52);
            swift_allocObject();
            *(v37 + 32) = sub_1C3F62448(2, v38);
            v54 = v27;
            v42 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v42);
            *(&v44 - 2) = v27;
            *(&v44 - 1) = v37;
            v43 = v56;
            sub_1C4030A90();
            v2 = v43;

            goto LABEL_8;
          }

          if (v54 == 3)
          {
            v19 = 3;
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_7;
        }

        if (v54)
        {
          v19 = 1;
          goto LABEL_7;
        }

LABEL_6:
        v19 = 0;
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
        v20 = swift_allocObject();
        *(v20 + 16) = v48;
        v21 = sub_1C4031190();

        v22 = type metadata accessor for CallHistorySchemaV15.Handle(0);
        v23 = *(v22 + 48);
        v24 = *(v22 + 52);
        swift_allocObject();
        *(v20 + 32) = sub_1C3F62448(v19, v21);
        v54 = v27;
        v25 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v25);
        *(&v44 - 2) = v27;
        *(&v44 - 1) = v20;
        v26 = v56;
        sub_1C4030A90();
        v2 = v26;

LABEL_8:
        ++v18;
        v17 = v51;
        if (v50 == v18)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_1C40317E0();
    }

LABEL_32:

    return sub_1C4030E50();
  }

  return result;
}

uint64_t sub_1C40214A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0927C8, &qword_1C4053DC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0927D0, &qword_1C4053DC8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0927D8, &qword_1C4053DD0);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  type metadata accessor for CallHistorySchemaV19.Handle(0);
  sub_1C402545C(&qword_1EC090D60, type metadata accessor for CallHistorySchemaV19.Handle);
  sub_1C4030F00();
  v29 = sub_1C4030E60();
  result = (*(v8 + 8))(v11, v7);
  if (v1)
  {
    return result;
  }

  v26 = 0;
  if (v29 >> 62)
  {
    result = sub_1C40317E0();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_17:

    return sub_1C4030E50();
  }

  result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (result >= 1)
  {
    v14 = 0;
    v15 = v29 & 0xC000000000000001;
    v27 = result;
    v28 = a1;
    v25 = v29 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v16 = MEMORY[0x1C6933590](v14, v29);
      }

      else
      {
        v16 = *(v29 + 8 * v14 + 32);
      }

      v30 = v16;
      swift_getKeyPath();
      sub_1C402545C(&qword_1EC090D48, type metadata accessor for CallHistorySchemaV19.Handle);
      sub_1C4030AA0();

      swift_getKeyPath();
      sub_1C4030F90();

      if (v30 > 1u)
      {
        if (v30 == 3)
        {
LABEL_15:
          v30 = v16;
          swift_getKeyPath();
          sub_1C4030AA0();

          swift_getKeyPath();
          sub_1C4030F20();

          v17 = v30;
          v18 = [v30 lowercaseString];

          v19 = sub_1C40311C0();
          v21 = v20;

          v30 = v16;
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          *(&v24 - 4) = v16;
          *(&v24 - 3) = v19;
          *(&v24 - 2) = v21;
          v23 = v26;
          sub_1C4030A90();
          v26 = v23;

          v15 = v25;

          goto LABEL_7;
        }
      }

      else if (v30 == 1)
      {
        goto LABEL_15;
      }

LABEL_7:
      if (v27 == ++v14)
      {
        goto LABEL_17;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4021958(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092798, &qword_1C4053CF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0927A0, &qword_1C4053CF8);
  v55 = *(v6 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0927A8, &qword_1C4053D00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0927B0, &qword_1C4053D08);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0927B8, &qword_1C4053D10);
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  type metadata accessor for CallHistorySchemaV22_1.CallRecord(0);
  v20 = sub_1C402545C(&qword_1EC091110, type metadata accessor for CallHistorySchemaV22_1.CallRecord);
  sub_1C4030F00();
  v21 = sub_1C4030E60();
  result = (*(v15 + 8))(v18, v14);
  if (!v1)
  {
    v53 = v9;
    v57 = v21;
    if (v21 >> 62)
    {
      v23 = sub_1C40317E0();
    }

    else
    {
      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v54;
    v24 = v55;
    v26 = v53;
    if (v23)
    {
      if (v23 < 1)
      {
        __break(1u);
        goto LABEL_44;
      }

      v51 = v6;
      v52 = a1;
      v27 = v57;
      v56 = v20;
      if ((v57 & 0xC000000000000001) != 0)
      {
        v28 = 0;
        v60 = v23;
        do
        {
          v32 = MEMORY[0x1C6933590](v28);
          v58 = v32;
          swift_getKeyPath();
          sub_1C402545C(&qword_1EC0910F8, type metadata accessor for CallHistorySchemaV22_1.CallRecord);
          sub_1C4030AA0();

          swift_getKeyPath();
          sub_1C4030F20();

          v30 = v58;
          if (v58)
          {
            v58 = 0;
            v59 = 0;
            sub_1C40311B0();

            v29 = v59;
            if (v59)
            {
              v30 = v58;
            }

            else
            {
              v30 = 0;
            }
          }

          else
          {
            v29 = 0;
          }

          ++v28;
          v58 = v32;
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          *(&v50 - 4) = v32;
          *(&v50 - 3) = v30;
          *(&v50 - 2) = v29;
          sub_1C4030A90();
          swift_unknownObjectRelease();
        }

        while (v60 != v28);
      }

      else
      {
        v33 = 32;
        do
        {
          v60 = v23;
          v37 = *(v27 + v33);
          v58 = v37;
          swift_getKeyPath();
          sub_1C402545C(&qword_1EC0910F8, type metadata accessor for CallHistorySchemaV22_1.CallRecord);

          sub_1C4030AA0();

          swift_getKeyPath();
          sub_1C4030F20();

          v35 = v58;
          if (v58)
          {
            v58 = 0;
            v59 = 0;
            sub_1C40311B0();

            v34 = v59;
            if (v59)
            {
              v35 = v58;
            }

            else
            {
              v35 = 0;
            }
          }

          else
          {
            v34 = 0;
          }

          v58 = v37;
          v36 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v36);
          *(&v50 - 4) = v37;
          *(&v50 - 3) = v35;
          *(&v50 - 2) = v34;
          sub_1C4030A90();

          v33 += 8;
          v23 = v60 - 1;
          v27 = v57;
        }

        while (v60 != 1);
      }

      v6 = v51;
      a1 = v52;
      v25 = v54;
      v24 = v55;
      v26 = v53;
    }

    else
    {
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0927C0, &qword_1C4053D68);
    (*(*(v38 - 8) + 56))(v25, 1, 1, v38);
    type metadata accessor for CallHistorySchemaV22_1.Handle(0);
    v20 = sub_1C402545C(&qword_1EC0910E8, type metadata accessor for CallHistorySchemaV22_1.Handle);
    sub_1C4030F00();
    v9 = sub_1C4030E60();
    (*(v24 + 8))(v26, v6);
    v39 = v9;
    if (!(v9 >> 62))
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_25:
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v52 = a1;
        v56 = v39;
        v57 = v20;
        if ((v39 & 0xC000000000000001) != 0)
        {
          v40 = 0;
          v60 = result;
          do
          {
            v44 = MEMORY[0x1C6933590](v40);
            v58 = v44;
            swift_getKeyPath();
            sub_1C402545C(&qword_1EC0910D0, type metadata accessor for CallHistorySchemaV22_1.Handle);
            sub_1C4030AA0();

            swift_getKeyPath();
            sub_1C4030F20();

            v42 = v58;
            if (v58)
            {
              v58 = 0;
              v59 = 0;
              sub_1C40311B0();

              v41 = v59;
              if (v59)
              {
                v42 = v58;
              }

              else
              {
                v42 = 0;
              }
            }

            else
            {
              v41 = 0;
            }

            ++v40;
            v58 = v44;
            v43 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v43);
            *(&v50 - 4) = v44;
            *(&v50 - 3) = v42;
            *(&v50 - 2) = v41;
            sub_1C4030A90();
            swift_unknownObjectRelease();
          }

          while (v60 != v40);
        }

        else
        {
          v45 = 32;
          do
          {
            v60 = result;
            v49 = *(v39 + v45);
            v58 = v49;
            swift_getKeyPath();
            sub_1C402545C(&qword_1EC0910D0, type metadata accessor for CallHistorySchemaV22_1.Handle);

            sub_1C4030AA0();

            swift_getKeyPath();
            sub_1C4030F20();

            v47 = v58;
            if (v58)
            {
              v58 = 0;
              v59 = 0;
              sub_1C40311B0();

              v46 = v59;
              if (v59)
              {
                v47 = v58;
              }

              else
              {
                v47 = 0;
              }
            }

            else
            {
              v46 = 0;
            }

            v58 = v49;
            v48 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v48);
            *(&v50 - 4) = v49;
            *(&v50 - 3) = v47;
            *(&v50 - 2) = v46;
            sub_1C4030A90();

            v45 += 8;
            result = v60 - 1;
            v39 = v56;
          }

          while (v60 != 1);
        }
      }

LABEL_45:

      return sub_1C4030E50();
    }

LABEL_44:
    result = sub_1C40317E0();
    v39 = v9;
    if (result)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

  return result;
}

uint64_t sub_1C4022430(uint64_t a1)
{
  v44 = sub_1C40309F0();
  v40 = *(v44 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092780, &qword_1C4053C88);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092788, &qword_1C4053C90);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092790, &qword_1C4053C98);
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem(0);
  v18 = sub_1C402545C(&qword_1EC091868, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C4030F00();
  v19 = v45;
  v20 = sub_1C4030E60();
  v21 = v19;
  result = (*(v13 + 8))(v16, v12);
  if (!v19)
  {
    v23 = v40;
    v41 = v18;
    v42 = v7;
    v34 = a1;
    v24 = v20;
    if (v20 >> 62)
    {
      result = sub_1C40317E0();
      v24 = v20;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_4:
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v25 = 0;
        v37 = (v23 + 48);
        v38 = v24 & 0xC000000000000001;
        v35 = (v23 + 16);
        v36 = (v23 + 8);
        v39 = result;
        v40 = v24;
        do
        {
          v45 = v21;
          if (v38)
          {
            v30 = MEMORY[0x1C6933590](v25);
          }

          else
          {
            v30 = *(v24 + 8 * v25 + 32);
          }

          v32 = v43;
          v31 = v44;
          v46 = v30;
          swift_getKeyPath();
          sub_1C402545C(&qword_1EC091850, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
          sub_1C4030AA0();

          swift_getKeyPath();
          sub_1C3F40EA8();
          v33 = v42;
          sub_1C4030F90();

          if ((*v37)(v33, 1, v31))
          {
            sub_1C3EED388(v33, &qword_1EC08F218, &qword_1C4041840);
            sub_1C40309E0();
          }

          else
          {
            (*v35)(v32, v33, v31);
            sub_1C3EED388(v33, &qword_1EC08F218, &qword_1C4041840);
          }

          v21 = v45;
          ++v25;
          v26 = sub_1C40309A0();
          v28 = v27;
          (*v36)(v32, v31);
          v46 = v30;
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          *(&v34 - 4) = v30;
          *(&v34 - 3) = v26;
          *(&v34 - 2) = v28;
          sub_1C4030A90();

          v24 = v40;
        }

        while (v39 != v25);
      }
    }

    return sub_1C4030E50();
  }

  return result;
}

uint64_t sub_1C40229B0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092768, &qword_1C4053BA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092770, &qword_1C4053BB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092778, &qword_1C4053BB8);
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  type metadata accessor for CallHistorySchemaV36.CallRecord(0);
  sub_1C402545C(&qword_1EC092158, type metadata accessor for CallHistorySchemaV36.CallRecord);
  sub_1C4030F00();
  v14 = sub_1C4030E60();
  result = (*(v9 + 8))(v12, v8);
  if (!v1)
  {
    v16 = v14;
    if (v14 >> 62)
    {
      goto LABEL_31;
    }

    for (result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); result; v16 = v14)
    {
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v17 = 0;
      v29 = a1;
      v30 = v16 & 0xC000000000000001;
      v27 = result;
      v28 = v16;
      while (1)
      {
        v31 = v17;
        v32 = v2;
        if (v30)
        {
          v18 = MEMORY[0x1C6933590](v17);
        }

        else
        {
          v18 = *(v16 + 8 * v17 + 32);
        }

        v2 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3610CallRecord___observationRegistrar;
        v33 = *&v18;
        swift_getKeyPath();
        sub_1C402545C(&qword_1EC092140, type metadata accessor for CallHistorySchemaV36.CallRecord);
        sub_1C4030AA0();

        swift_getKeyPath();
        sub_1C40253C8(&qword_1EC0906B8, &qword_1EC0906B0, &unk_1C403E190);
        sub_1C4030F90();

        v19 = LOBYTE(v33);
        v33 = *&v18;
        swift_getKeyPath();
        sub_1C4030AA0();

        swift_getKeyPath();
        sub_1C4030F90();

        v20 = LOBYTE(v33);
        v33 = *&v18;
        swift_getKeyPath();
        v35 = v2;
        sub_1C4030AA0();

        swift_getKeyPath();
        sub_1C40253C8(&qword_1EC0906E8, &qword_1EC0906E0, &unk_1C403E1A0);
        sub_1C4030F90();

        if (v19 == 2 || v20 == 2 || (v34 & 1) != 0 || (v20 & 1) != 0 || !((v33 > 0.0) | v19 & 1))
        {
          goto LABEL_26;
        }

        v33 = *&v18;
        v14 = &unk_1C4053C60;
        swift_getKeyPath();
        sub_1C4030AA0();

        swift_getKeyPath();
        type metadata accessor for CallHistorySchemaV36.Handle(0);
        sub_1C3FF0FD8();
        sub_1C4030F80();

        v21 = *&v33 >> 62 ? sub_1C40317E0() : *((*&v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v21 != 1)
        {
          goto LABEL_26;
        }

        v33 = *&v18;
        swift_getKeyPath();
        sub_1C4030AA0();

        swift_getKeyPath();
        sub_1C4030F80();

        a1 = *&v33;
        if (*&v33 >> 62)
        {
          if (!sub_1C40317E0())
          {
LABEL_25:

LABEL_26:
            v33 = *&v18;
            KeyPath = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](KeyPath);
            *(&v27 - 2) = v18;
            *(&v27 - 1) = 0;
            v26 = v32;
            sub_1C4030A90();
            v2 = v26;

            goto LABEL_27;
          }
        }

        else if (!*((*&v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1C6933590](0, a1);
          goto LABEL_22;
        }

        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        v22 = *(a1 + 32);

LABEL_22:

        v33 = *&v18;
        v23 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v23);
        *(&v27 - 2) = v18;
        *(&v27 - 1) = v22;
        v24 = v32;
        sub_1C4030A90();
        v2 = v24;

LABEL_27:
        v17 = v31 + 1;
        v16 = v28;
        if (v27 == v31 + 1)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_31:
      result = sub_1C40317E0();
    }

LABEL_32:

    return sub_1C4030E50();
  }

  return result;
}

uint64_t sub_1C4023100(unint64_t a1)
{
  v2 = sub_1C4030CA0();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v69 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092750, &qword_1C4053B90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v68 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092758, &qword_1C4053B98);
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v68 - v11;
  v13 = sub_1C4030C60();
  v77 = *(v13 - 8);
  v78 = v13;
  v14 = *(v77 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v73 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v68 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v68 - v20;
  if (qword_1EC08EB98 != -1)
  {
    swift_once();
  }

  v22 = sub_1C4030C90();
  v23 = __swift_project_value_buffer(v22, qword_1EC0B0D40);
  sub_1C4030C80();
  sub_1C4030C40();
  v72 = v23;
  v24 = sub_1C4030C80();
  v25 = sub_1C4031610();
  v26 = sub_1C4031690();
  v79 = a1;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = sub_1C4030C50();
    _os_signpost_emit_with_name_impl(&dword_1C3E90000, v24, v25, v28, "Migrating database from schema V38 to schema V38.1", "", v27, 2u);
    MEMORY[0x1C6934650](v27, -1, -1);
  }

  v29 = v77;
  v30 = v78;
  (*(v77 + 16))(v19, v21, v78);
  v31 = sub_1C4030CD0();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_1C4030CC0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092760, &qword_1C4053BA0);
  (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
  type metadata accessor for CallHistorySchemaV38.CallRecord(0);
  sub_1C402545C(&qword_1EC0923D0, type metadata accessor for CallHistorySchemaV38.CallRecord);
  sub_1C4030F00();
  v36 = v76;
  v37 = sub_1C4030E60();
  if (v36)
  {

    (*(v74 + 8))(v12, v75);
    return (*(v29 + 8))(v21, v30);
  }

  else
  {
    v39 = v37;
    v68[0] = 0;
    v68[1] = v34;
    v76 = v21;
    (*(v74 + 8))(v12, v75);
    if (qword_1EC08EB88 != -1)
    {
      swift_once();
    }

    v40 = sub_1C4030D10();
    v41 = __swift_project_value_buffer(v40, qword_1EC0B0D10);

    v75 = v41;
    v42 = sub_1C4030CF0();
    v43 = sub_1C40315D0();
    v44 = v39 >> 62;
    if (!os_log_type_enabled(v42, v43))
    {

      goto LABEL_14;
    }

    v29 = swift_slowAlloc();
    *v29 = 134217984;
    if (v44)
    {
      goto LABEL_34;
    }

    for (i = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C40317E0())
    {
      *(v29 + 4) = i;

      _os_log_impl(&dword_1C3E90000, v42, v43, "Got %ld calls to migrate", v29, 0xCu);
      MEMORY[0x1C6934650](v29, -1, -1);

LABEL_14:
      if (v44)
      {
        v46 = sub_1C40317E0();
        v44 = v79;
        if (!v46)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v46 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v44 = v79;
        if (!v46)
        {
          goto LABEL_23;
        }
      }

      if (v46 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_34:
      ;
    }

    v47 = 0;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6933590](v47, v39);
      }

      else
      {
        v52 = *(v39 + 8 * v47 + 32);
      }

      ++v47;
      v48 = type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall(0);
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();

      sub_1C400B184(v51);

      sub_1C402545C(&qword_1EC092558, type metadata accessor for CallHistorySchemaV38_1.ManagedRecentCall);
      sub_1C4030E80();
    }

    while (v46 != v47);
LABEL_23:

    v53 = sub_1C4030CF0();
    v54 = sub_1C40315D0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      *(v55 + 4) = v46;
      _os_log_impl(&dword_1C3E90000, v53, v54, "Migrated %ld calls", v55, 0xCu);
      MEMORY[0x1C6934650](v55, -1, -1);
    }

    v56 = v68[0];
    sub_1C4030E50();
    if (v56)
    {
      (*(v77 + 8))(v76, v78);
    }

    else
    {
      v57 = v78;
      v58 = sub_1C4030C80();
      v59 = v73;
      sub_1C4030CB0();
      v60 = sub_1C4031600();
      if (sub_1C4031690())
      {

        v61 = v69;
        sub_1C4030CE0();

        v63 = v70;
        v62 = v71;
        if ((*(v70 + 88))(v61, v71) == *MEMORY[0x1E69E93E8])
        {
          v64 = "[Error] Interval already ended";
        }

        else
        {
          (*(v63 + 8))(v61, v62);
          v64 = "";
        }

        v65 = swift_slowAlloc();
        *v65 = 0;
        v66 = sub_1C4030C50();
        _os_signpost_emit_with_name_impl(&dword_1C3E90000, v58, v60, v66, "Finished migrating to schema V38.1", v64, v65, 2u);
        MEMORY[0x1C6934650](v65, -1, -1);
      }

      v67 = *(v77 + 8);
      v67(v59, v57);
      return (v67)(v76, v57);
    }
  }
}

uint64_t sub_1C40239C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092748, &qword_1C4053B88);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092740, &qword_1C4053B80);
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v153 = v0 - 8;
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_1C404BA30;
  v4 = (v141 + v3);
  v5 = (v4 + *(v153 + 56));
  v6 = sub_1C3F4822C();
  *v4 = &type metadata for CallHistorySchemaV9;
  v4[1] = v6;
  v7 = v4;
  v8 = sub_1C3F4C764();
  v149 = sub_1C3F508E4();
  *v5 = &type metadata for CallHistorySchemaV9;
  v5[1] = v8;
  v5[2] = &type metadata for CallHistorySchemaV10;
  v5[3] = v149;
  v9 = *MEMORY[0x1E697BBA8];
  v10 = sub_1C4030EC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 104);
  v150 = v9;
  v12(v5, v9, v10);
  v152 = v12;
  v13 = *(v11 + 56);
  v13(v5, 0, 1, v10);
  v151 = v7;
  v14 = (v7 + v2);
  v15 = (v7 + v2 + *(v153 + 56));
  v16 = sub_1C3F481D8();
  *v14 = &type metadata for CallHistorySchemaV10;
  v14[1] = v16;
  v17 = sub_1C3F53C48();
  *v15 = &type metadata for CallHistorySchemaV10;
  v15[1] = v149;
  v15[2] = &type metadata for CallHistorySchemaV11;
  v15[3] = v17;
  v12(v15, v9, v10);
  v13(v15, 0, 1, v10);
  v154 = v2;
  v18 = (v7 + 2 * v2);
  v19 = (v18 + *(v153 + 56));
  v20 = sub_1C3F48184();
  *v18 = &type metadata for CallHistorySchemaV11;
  v18[1] = v20;
  v21 = sub_1C3F56EDC();
  *v19 = &type metadata for CallHistorySchemaV11;
  v19[1] = v17;
  v19[2] = &type metadata for CallHistorySchemaV12;
  v19[3] = v21;
  v19[4] = 0;
  v19[5] = 0;
  v19[6] = sub_1C401F708;
  v19[7] = 0;
  v22 = *MEMORY[0x1E697BBB0];
  LODWORD(v149) = *MEMORY[0x1E697BBB0];
  v152(v19, v22, v10);
  v13(v19, 0, 1, v10);
  v23 = (v7 + 3 * v2);
  v24 = (v23 + *(v153 + 56));
  v25 = sub_1C3F48130();
  *v23 = &type metadata for CallHistorySchemaV12;
  v23[1] = v25;
  v142 = sub_1C3F5A454();
  *v24 = &type metadata for CallHistorySchemaV12;
  v24[1] = v21;
  v24[2] = &type metadata for CallHistorySchemaV13;
  v24[3] = v142;
  v24[4] = 0;
  v24[5] = 0;
  v24[6] = sub_1C4020450;
  v24[7] = 0;
  v152(v24, v22, v10);
  v13(v24, 0, 1, v10);
  v26 = (v7 + 4 * v154);
  v27 = (v26 + *(v153 + 56));
  v28 = sub_1C3F480DC();
  *v26 = &type metadata for CallHistorySchemaV13;
  v26[1] = v28;
  v29 = sub_1C3F5DB40();
  *v27 = &type metadata for CallHistorySchemaV13;
  v27[1] = v142;
  v27[2] = &type metadata for CallHistorySchemaV14;
  v27[3] = v29;
  v152(v27, v150, v10);
  v13(v27, 0, 1, v10);
  v30 = (v7 + 5 * v154);
  v31 = (v30 + *(v153 + 56));
  v32 = sub_1C3F48088();
  *v30 = &type metadata for CallHistorySchemaV14;
  v30[1] = v32;
  v143 = sub_1C3F62DEC();
  *v31 = &type metadata for CallHistorySchemaV14;
  v31[1] = v29;
  v31[2] = &type metadata for CallHistorySchemaV15;
  v31[3] = v143;
  v31[4] = 0;
  v31[5] = 0;
  v31[6] = sub_1C4020BB4;
  v31[7] = 0;
  v152(v31, v149, v10);
  v13(v31, 0, 1, v10);
  v33 = (v7 + 6 * v154);
  v34 = (v33 + *(v153 + 56));
  v35 = sub_1C3F48034();
  *v33 = &type metadata for CallHistorySchemaV15;
  v33[1] = v35;
  v36 = sub_1C3F68710();
  *v34 = &type metadata for CallHistorySchemaV15;
  v34[1] = v143;
  v34[2] = &type metadata for CallHistorySchemaV16;
  v34[3] = v36;
  v152(v34, v150, v10);
  v13(v34, 0, 1, v10);
  v37 = (v151 + 7 * v154);
  v38 = (v37 + *(v153 + 56));
  v39 = sub_1C3F47FE0();
  *v37 = &type metadata for CallHistorySchemaV16;
  v37[1] = v39;
  v40 = sub_1C3F6DDA8();
  *v38 = &type metadata for CallHistorySchemaV16;
  v38[1] = v36;
  v38[2] = &type metadata for CallHistorySchemaV17;
  v38[3] = v40;
  v152(v38, v150, v10);
  v13(v38, 0, 1, v10);
  v41 = &v151[v154];
  v42 = (v41 + *(v153 + 56));
  v43 = sub_1C3F47F8C();
  *v41 = &type metadata for CallHistorySchemaV17;
  v41[1] = v43;
  v44 = sub_1C3F73458();
  *v42 = &type metadata for CallHistorySchemaV17;
  v42[1] = v40;
  v42[2] = &type metadata for CallHistorySchemaV18;
  v42[3] = v44;
  v152(v42, v150, v10);
  v13(v42, 0, 1, v10);
  v45 = (v151 + 9 * v154);
  v46 = (v45 + *(v153 + 56));
  v47 = sub_1C3F47F38();
  *v45 = &type metadata for CallHistorySchemaV18;
  v45[1] = v47;
  v48 = sub_1C3F78AFC();
  *v46 = &type metadata for CallHistorySchemaV18;
  v46[1] = v44;
  v46[2] = &type metadata for CallHistorySchemaV19;
  v46[3] = v48;
  v46[4] = 0;
  v46[5] = 0;
  v46[6] = sub_1C40214A0;
  v46[7] = 0;
  v152(v46, v149, v10);
  v13(v46, 0, 1, v10);
  v49 = (v151 + 10 * v154);
  v50 = (v49 + *(v153 + 56));
  v51 = sub_1C3F47EE4();
  *v49 = &type metadata for CallHistorySchemaV19;
  v49[1] = v51;
  v144 = sub_1C3F7E1F8();
  *v50 = &type metadata for CallHistorySchemaV19;
  v50[1] = v48;
  v50[2] = &type metadata for CallHistorySchemaV20;
  v50[3] = v144;
  v152(v50, v150, v10);
  v13(v50, 0, 1, v10);
  v52 = (v151 + 11 * v154);
  v53 = (v52 + *(v153 + 56));
  v54 = sub_1C3F47E90();
  *v52 = &type metadata for CallHistorySchemaV20;
  v52[1] = v54;
  v55 = sub_1C3F83984();
  *v53 = &type metadata for CallHistorySchemaV20;
  v53[1] = v144;
  v53[2] = &type metadata for CallHistorySchemaV21;
  v53[3] = v55;
  v152(v53, v150, v10);
  v13(v53, 0, 1, v10);
  v56 = (v151 + 12 * v154);
  v57 = (v56 + *(v153 + 56));
  v58 = sub_1C3F47E3C();
  *v56 = &type metadata for CallHistorySchemaV21;
  v56[1] = v58;
  v59 = sub_1C3F89254();
  *v57 = &type metadata for CallHistorySchemaV21;
  v57[1] = v55;
  v57[2] = &type metadata for CallHistorySchemaV22;
  v57[3] = v59;
  v152(v57, v150, v10);
  v13(v57, 0, 1, v10);
  v60 = (v151 + 13 * v154);
  v61 = (v60 + *(v153 + 56));
  v62 = sub_1C3F47DE8();
  *v60 = &type metadata for CallHistorySchemaV22;
  v60[1] = v62;
  v145 = sub_1C3F8EBE4();
  *v61 = &type metadata for CallHistorySchemaV22;
  v61[1] = v59;
  v61[2] = &type metadata for CallHistorySchemaV22_1;
  v61[3] = v145;
  v61[4] = 0;
  v61[5] = 0;
  v61[6] = sub_1C4021958;
  v61[7] = 0;
  v152(v61, v149, v10);
  v13(v61, 0, 1, v10);
  v63 = (v151 + 14 * v154);
  v64 = (v63 + *(v153 + 56));
  v65 = sub_1C3F891D8();
  *v63 = &type metadata for CallHistorySchemaV22_1;
  v63[1] = v65;
  v66 = sub_1C3F9416C();
  *v64 = &type metadata for CallHistorySchemaV22_1;
  v64[1] = v145;
  v64[2] = &type metadata for CallHistorySchemaV23;
  v64[3] = v66;
  v152(v64, v150, v10);
  v13(v64, 0, 1, v10);
  v67 = (v151 + 15 * v154);
  v68 = (v67 + *(v153 + 56));
  v69 = sub_1C3F47D94();
  *v67 = &type metadata for CallHistorySchemaV23;
  v67[1] = v69;
  v70 = sub_1C3F99430();
  *v68 = &type metadata for CallHistorySchemaV23;
  v68[1] = v66;
  v68[2] = &type metadata for CallHistorySchemaV24;
  v68[3] = v70;
  v152(v68, v150, v10);
  v13(v68, 0, 1, v10);
  v71 = &v151[2 * v154];
  v72 = (v71 + *(v153 + 56));
  v73 = sub_1C3F47D40();
  *v71 = &type metadata for CallHistorySchemaV24;
  v71[1] = v73;
  v74 = sub_1C3F9EAF0();
  *v72 = &type metadata for CallHistorySchemaV24;
  v72[1] = v70;
  v72[2] = &type metadata for CallHistorySchemaV25;
  v72[3] = v74;
  v152(v72, v150, v10);
  v13(v72, 0, 1, v10);
  v75 = (v151 + 17 * v154);
  v76 = (v75 + *(v153 + 56));
  v77 = sub_1C3F47CEC();
  *v75 = &type metadata for CallHistorySchemaV25;
  v75[1] = v77;
  v78 = sub_1C3FA3E2C();
  *v76 = &type metadata for CallHistorySchemaV25;
  v76[1] = v74;
  v76[2] = &type metadata for CallHistorySchemaV26;
  v76[3] = v78;
  v152(v76, v150, v10);
  v13(v76, 0, 1, v10);
  v79 = (v151 + 18 * v154);
  v80 = (v79 + *(v153 + 56));
  v81 = sub_1C3F47C98();
  *v79 = &type metadata for CallHistorySchemaV26;
  v79[1] = v81;
  v82 = sub_1C3FA9240();
  *v80 = &type metadata for CallHistorySchemaV26;
  v80[1] = v78;
  v80[2] = &type metadata for CallHistorySchemaV27;
  v80[3] = v82;
  v152(v80, v150, v10);
  v13(v80, 0, 1, v10);
  v83 = (v151 + 19 * v154);
  v84 = (v83 + *(v153 + 56));
  v85 = sub_1C3F47C44();
  *v83 = &type metadata for CallHistorySchemaV27;
  v83[1] = v85;
  v146 = sub_1C3FAE740();
  *v84 = &type metadata for CallHistorySchemaV27;
  v84[1] = v82;
  v84[2] = &type metadata for CallHistorySchemaV28;
  v84[3] = v146;
  v152(v84, v150, v10);
  v13(v84, 0, 1, v10);
  v86 = (v151 + 20 * v154);
  v87 = (v86 + *(v153 + 56));
  v88 = sub_1C3F47BF0();
  *v86 = &type metadata for CallHistorySchemaV28;
  v86[1] = v88;
  v89 = sub_1C3FB4BBC();
  *v87 = &type metadata for CallHistorySchemaV28;
  v87[1] = v146;
  v87[2] = &type metadata for CallHistorySchemaV29;
  v87[3] = v89;
  v152(v87, v150, v10);
  v13(v87, 0, 1, v10);
  v90 = (v151 + 21 * v154);
  v91 = (v90 + *(v153 + 56));
  v92 = sub_1C3F47B9C();
  *v90 = &type metadata for CallHistorySchemaV29;
  v90[1] = v92;
  v93 = sub_1C3FBC09C();
  *v91 = &type metadata for CallHistorySchemaV29;
  v91[1] = v89;
  v91[2] = &type metadata for CallHistorySchemaV29_1;
  v91[3] = v93;
  v91[4] = 0;
  v91[5] = 0;
  v91[6] = sub_1C4022430;
  v91[7] = 0;
  v152(v91, v149, v10);
  v13(v91, 0, 1, v10);
  v94 = (v151 + 22 * v154);
  v95 = (v94 + *(v153 + 56));
  v96 = sub_1C3FB4B40();
  *v94 = &type metadata for CallHistorySchemaV29_1;
  v94[1] = v96;
  v97 = sub_1C3FC2DB0();
  *v95 = &type metadata for CallHistorySchemaV29_1;
  v95[1] = v93;
  v95[2] = &type metadata for CallHistorySchemaV30;
  v95[3] = v97;
  v152(v95, v150, v10);
  v13(v95, 0, 1, v10);
  v98 = (v151 + 23 * v154);
  v99 = (v98 + *(v153 + 56));
  v100 = sub_1C3F47B48();
  *v98 = &type metadata for CallHistorySchemaV30;
  v98[1] = v100;
  v147 = sub_1C3FC9A6C();
  *v99 = &type metadata for CallHistorySchemaV30;
  v99[1] = v97;
  v99[2] = &type metadata for CallHistorySchemaV31;
  v99[3] = v147;
  v152(v99, v150, v10);
  v13(v99, 0, 1, v10);
  v101 = &v151[3 * v154];
  v102 = (v101 + *(v153 + 56));
  v103 = sub_1C3F47AF4();
  *v101 = &type metadata for CallHistorySchemaV31;
  v101[1] = v103;
  v104 = sub_1C3FD0BF4();
  *v102 = &type metadata for CallHistorySchemaV31;
  v102[1] = v147;
  v102[2] = &type metadata for CallHistorySchemaV32;
  v102[3] = v104;
  v152(v102, v150, v10);
  v13(v102, 0, 1, v10);
  v105 = (v151 + 25 * v154);
  v106 = (v105 + *(v153 + 56));
  v107 = sub_1C3F47AA0();
  *v105 = &type metadata for CallHistorySchemaV32;
  v105[1] = v107;
  v108 = sub_1C3FD8274();
  *v106 = &type metadata for CallHistorySchemaV32;
  v106[1] = v104;
  v106[2] = &type metadata for CallHistorySchemaV33;
  v106[3] = v108;
  v152(v106, v150, v10);
  v13(v106, 0, 1, v10);
  v109 = (v151 + 26 * v154);
  v110 = (v109 + *(v153 + 56));
  v111 = sub_1C3F47A4C();
  *v109 = &type metadata for CallHistorySchemaV33;
  v109[1] = v111;
  v112 = sub_1C3FDF994();
  *v110 = &type metadata for CallHistorySchemaV33;
  v110[1] = v108;
  v110[2] = &type metadata for CallHistorySchemaV34;
  v110[3] = v112;
  v152(v110, v150, v10);
  v13(v110, 0, 1, v10);
  v113 = (v151 + 27 * v154);
  v114 = (v113 + *(v153 + 56));
  v115 = sub_1C3F479F8();
  *v113 = &type metadata for CallHistorySchemaV34;
  v113[1] = v115;
  v116 = sub_1C3FE7154();
  *v114 = &type metadata for CallHistorySchemaV34;
  v114[1] = v112;
  v114[2] = &type metadata for CallHistorySchemaV35;
  v114[3] = v116;
  v152(v114, v150, v10);
  v13(v114, 0, 1, v10);
  v117 = (v151 + 28 * v154);
  v118 = (v117 + *(v153 + 56));
  v119 = sub_1C3F479A4();
  *v117 = &type metadata for CallHistorySchemaV35;
  v117[1] = v119;
  v120 = sub_1C3FEEF3C();
  *v118 = &type metadata for CallHistorySchemaV35;
  v118[1] = v116;
  v118[2] = &type metadata for CallHistorySchemaV36;
  v118[3] = v120;
  v121 = v120;
  v118[4] = 0;
  v118[5] = 0;
  v118[6] = sub_1C40229B0;
  v118[7] = 0;
  v152(v118, v149, v10);
  v13(v118, 0, 1, v10);
  v122 = (v151 + 29 * v154);
  v123 = (v122 + *(v153 + 56));
  v124 = sub_1C3F47950();
  *v122 = &type metadata for CallHistorySchemaV36;
  v122[1] = v124;
  v148 = sub_1C3FF6E74();
  *v123 = &type metadata for CallHistorySchemaV36;
  v123[1] = v121;
  v123[2] = &type metadata for CallHistorySchemaV37;
  v123[3] = v148;
  v152(v123, v150, v10);
  v13(v123, 0, 1, v10);
  v125 = (v151 + 30 * v154);
  v126 = (v125 + *(v153 + 56));
  v127 = sub_1C3F478FC();
  *v125 = &type metadata for CallHistorySchemaV37;
  v125[1] = v127;
  v128 = sub_1C3FFF334();
  *v126 = &type metadata for CallHistorySchemaV37;
  v126[1] = v148;
  v126[2] = &type metadata for CallHistorySchemaV38;
  v126[3] = v128;
  v152(v126, v150, v10);
  v13(v126, 0, 1, v10);
  v129 = (v151 + 31 * v154);
  v130 = (v129 + *(v153 + 56));
  v131 = sub_1C3F478A8();
  *v129 = &type metadata for CallHistorySchemaV38;
  v129[1] = v131;
  v132 = sub_1C4008BA0();
  *v130 = &type metadata for CallHistorySchemaV38;
  v130[1] = v128;
  v130[2] = &type metadata for CallHistorySchemaV38_1;
  v130[3] = v132;
  v130[4] = 0;
  v130[5] = 0;
  v130[6] = sub_1C4023100;
  v130[7] = 0;
  v152(v130, v149, v10);
  v13(v130, 0, 1, v10);
  v133 = &v151[4 * v154];
  v134 = (v133 + *(v153 + 56));
  v135 = sub_1C3FFF2B8();
  *v133 = &type metadata for CallHistorySchemaV38_1;
  v133[1] = v135;
  v136 = sub_1C3EFA738();
  *v134 = &type metadata for CallHistorySchemaV38_1;
  v134[1] = v132;
  v134[2] = &type metadata for CallHistorySchemaV39;
  v134[3] = v136;
  v152(v134, v150, v10);
  v13(v134, 0, 1, v10);
  v137 = (v151 + 33 * v154);
  v138 = *(v153 + 56);
  v139 = sub_1C4008B24();
  *v137 = &type metadata for CallHistorySchemaV39;
  v137[1] = v139;
  v13((v137 + v138), 1, 1, v10);
  return v141;
}

uint64_t sub_1C4024C68()
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092740, &qword_1C4053B80);
  v0 = *(v30 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x1EEE9AC00](v30);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v26 - v6);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v26 - v8);
  v10 = sub_1C40239C4();
  v11 = *(v10 + 16);
  if (v11)
  {
    v31 = MEMORY[0x1E69E7CC0];
    v12 = v10;
    sub_1C3EF05F8(0, v11, 0);
    result = v12;
    v14 = 0;
    v27 = v12 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
    v28 = v0;
    v15 = v31;
    v29 = v12;
    v26 = v11;
    while (v14 < *(result + 16))
    {
      v16 = (v27 + *(v0 + 72) * v14);
      v17 = v30;
      v18 = *(v30 + 48);
      *v9 = *v16;
      sub_1C3EF1A60(v16 + v18, v9 + v18, &qword_1EC092738, &qword_1C4053B78);
      sub_1C3EF1A60(v9, v7, &qword_1EC092740, &qword_1C4053B80);
      v20 = *v7;
      v19 = v7[1];
      v21 = *(v17 + 48);
      *v4 = *v7;
      v4[1] = v19;
      sub_1C40252D8(v7 + v21, v4 + v21);
      sub_1C3EED388(v4, &qword_1EC092740, &qword_1C4053B80);
      sub_1C3EED388(v9, &qword_1EC092740, &qword_1C4053B80);
      v31 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1C3EF05F8((v22 > 1), v23 + 1, 1);
        v15 = v31;
      }

      ++v14;
      v24 = *(v19 + 8);
      *(v15 + 16) = v23 + 1;
      v25 = v15 + 16 * v23;
      *(v25 + 32) = v20;
      *(v25 + 40) = v24;
      v0 = v28;
      result = v29;
      if (v26 == v14)
      {

        return v15;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *sub_1C4024EE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092738, &qword_1C4053B78);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v30 - v2;
  v32 = sub_1C4030EC0();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v41 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092740, &qword_1C4053B80);
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v40);
  v37 = (v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v39 = (v30 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v38 = v30 - v13;
  v14 = sub_1C40239C4();
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v30[1] = v14;
    v31 = v4;
    v17 = v14 + v16;
    v34 = (v4 + 32);
    v35 = (v4 + 48);
    v18 = MEMORY[0x1E69E7CC0];
    v33 = *(v7 + 72);
    v36 = v3;
    v19 = v32;
    do
    {
      v42 = v18;
      v20 = v38;
      sub_1C3EF1A60(v17, v38, &qword_1EC092740, &qword_1C4053B80);
      v21 = v39;
      sub_1C3EF1A60(v20, v39, &qword_1EC092740, &qword_1C4053B80);
      v22 = *(v40 + 48);
      v23 = v37;
      *v37 = *v21;
      sub_1C40252D8(v21 + v22, v23 + v22);
      v24 = v36;
      sub_1C3EF1A60(v23 + v22, v36, &qword_1EC092738, &qword_1C4053B78);
      sub_1C3EED388(v23, &qword_1EC092740, &qword_1C4053B80);
      sub_1C3EED388(v20, &qword_1EC092740, &qword_1C4053B80);
      if ((*v35)(v24, 1, v19) == 1)
      {
        sub_1C3EED388(v24, &qword_1EC092738, &qword_1C4053B78);
        v18 = v42;
      }

      else
      {
        v25 = *v34;
        (*v34)(v41, v24, v19);
        v18 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1C3F00010(0, v18[2] + 1, 1, v18);
        }

        v27 = v18[2];
        v26 = v18[3];
        if (v27 >= v26 >> 1)
        {
          v18 = sub_1C3F00010(v26 > 1, v27 + 1, 1, v18);
        }

        v18[2] = v27 + 1;
        v28 = v18 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27;
        v19 = v32;
        v25(v28, v41, v32);
      }

      v17 += v33;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v18;
}

uint64_t sub_1C40252D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092738, &qword_1C4053B78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C40253C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C402545C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C40254A4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F567D0();
}

uint64_t sub_1C40254F0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F56778();
}

uint64_t sub_1C4025638()
{
  v1 = sub_1C40309F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - v8;
  v10 = *v0;
  sub_1C4031CA0();
  v11 = v0[1];
  sub_1C4031CA0();
  v12 = *(v0 + 2);
  if (!v12)
  {
    v13 = 0;
    goto LABEL_5;
  }

  if (v12 == 1)
  {
    v13 = 1;
LABEL_5:
    MEMORY[0x1C6933940](v13);
    goto LABEL_7;
  }

  v14 = *(v0 + 1);
  MEMORY[0x1C6933940](2);
  sub_1C4031280();
LABEL_7:
  v15 = type metadata accessor for CoalescingManager.RecentsStrategyKey(0);
  sub_1C402B3A4(&v0[v15[7]], v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1C4031C90();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1C4031C90();
    sub_1C402B5AC(&qword_1EC08F290, MEMORY[0x1E69695A8]);
    sub_1C4031140();
    (*(v2 + 8))(v5, v1);
  }

  v16 = v0[v15[8]];
  sub_1C4031C90();
  v17 = &v0[v15[9]];
  if (*(v17 + 1))
  {
    v18 = *v17;
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  v19 = &v0[v15[10]];
  if (*(v19 + 1))
  {
    v20 = *v19;
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  v21 = v0[v15[11]];
  sub_1C4031C90();
  MEMORY[0x1C6933940](*&v0[v15[12]]);
  v22 = v15[13];
  sub_1C4030980();
  sub_1C402B5AC(&qword_1EC08FA70, MEMORY[0x1E6969530]);
  return sub_1C4031140();
}

uint64_t sub_1C4025984()
{
  sub_1C4031C70();
  sub_1C4025638();
  return sub_1C4031CC0();
}

uint64_t sub_1C40259C8()
{
  sub_1C4031C70();
  sub_1C4025638();
  return sub_1C4031CC0();
}

uint64_t sub_1C4025A08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for RecentCall();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1C4031C70();
  RecentCall.hash(into:)(v23);
  v12 = sub_1C4031CC0();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1C402B414(*(v10 + 48) + v16 * v14, v9, type metadata accessor for RecentCall);
      v17 = _s11CallHistory06RecentA0V2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1C402B47C(v9, type metadata accessor for RecentCall);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1C402B47C(a2, type metadata accessor for RecentCall);
    sub_1C402B414(*(v10 + 48) + v16 * v14, v22, type metadata accessor for RecentCall);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1C402B414(a2, v9, type metadata accessor for RecentCall);
    *&v23[0] = *v3;
    sub_1C40279AC(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = *&v23[0];
    sub_1C402B544(a2, v20, type metadata accessor for RecentCall);
    return 1;
  }
}

uint64_t sub_1C4025C48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1C4031C70();
  sub_1C4031280();
  v9 = sub_1C4031CC0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1C4031BF0() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1C4027BF0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C4025D98(_WORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1C6933910](*(*v2 + 40), a2, 2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 2 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1C4027D70(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C4025E80(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1C6933910](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1C4027E94(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C4025F68(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_1C4031C70();
  sub_1C4031280();
  v24 = a4 & 1;
  sub_1C4031CA0();
  v10 = sub_1C4031CC0();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v8 + 48);
    while (1)
    {
      v15 = v14 + 24 * v12;
      v16 = *(v15 + 16);
      v17 = *v15 == a2 && *(v15 + 8) == a3;
      if (v17 || (sub_1C4031BF0()) && ((v16 ^ a4) & 1) == 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v21 = *(v8 + 48) + 24 * v12;
    v23 = *v21;
    v22 = *(v21 + 8);
    LOBYTE(v21) = *(v21 + 16);
    *a1 = v23;
    *(a1 + 8) = v22;
    *(a1 + 16) = v21;

    return 0;
  }

  else
  {
LABEL_11:
    v18 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v25;

    sub_1C4027FB8(a2, a3, v24, v12, isUniquelyReferenced_nonNull_native);
    *v25 = v27;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v24;
    return 1;
  }
}

uint64_t sub_1C4026108(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1C4031C70();
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v36 = a2;
  v10 = a2[3];
  v9 = a2[4];
  sub_1C4031CA0();
  sub_1C4031280();
  v39 = v9;
  sub_1C4031C90();
  if (v9)
  {
    sub_1C4031280();
  }

  v11 = sub_1C4031CC0();
  v12 = v4 + 56;
  v13 = -1 << *(v4 + 32);
  v14 = v11 & ~v13;
  if ((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v38 = v10;
    v15 = ~v13;
    v34 = v4;
    v16 = *(v4 + 48);
    v17 = v9;
    do
    {
      v18 = (v16 + 40 * v14);
      if (*v18 == v6)
      {
        v19 = v18[3];
        v20 = v18[4];
        v21 = v18[1] == v7 && v18[2] == v8;
        if (v21 || (v22 = sub_1C4031BF0(), v17 = v39, (v22 & 1) != 0))
        {
          if (v20)
          {
            if (v17)
            {
              v23 = v19 == v38 && v20 == v17;
              if (v23 || (v24 = sub_1C4031BF0(), v17 = v39, (v24 & 1) != 0))
              {
LABEL_20:
                sub_1C3F2AF70(v36);
                v25 = *(v34 + 48) + 40 * v14;
                v26 = *(v25 + 8);
                v27 = *(v25 + 16);
                v29 = *(v25 + 24);
                v28 = *(v25 + 32);
                *a1 = *v25;
                *(a1 + 8) = v26;
                *(a1 + 16) = v27;
                *(a1 + 24) = v29;
                *(a1 + 32) = v28;

                return 0;
              }
            }
          }

          else if (!v17)
          {
            goto LABEL_20;
          }
        }
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  v31 = *v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v35;
  sub_1C3F2AF14(v36, v41);
  sub_1C4028174(v36, v14, isUniquelyReferenced_nonNull_native);
  *v35 = v40;
  v33 = *(v36 + 16);
  *a1 = *v36;
  *(a1 + 16) = v33;
  *(a1 + 32) = *(v36 + 32);
  return 1;
}

uint64_t sub_1C402638C(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1C40317F0();

    if (v17)
    {

      sub_1C3F03800(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_1C40317E0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_1C4026600(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_1C4027708(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_1C4027928(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_1C3F03800(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_1C4031670();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_1C4031680();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_1C40283B8(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1C4026600(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_1C4031880();
    v24 = v10;
    sub_1C40317A0();
    if (sub_1C4031810())
    {
      sub_1C3F03800(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_1C4027708(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_1C4031670();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_1C4031810());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_1C4026800(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecentCall();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092830, &qword_1C40540F8);
  result = sub_1C4031870();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v35 + 72);
      sub_1C402B544(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for RecentCall);
      v24 = *(v11 + 40);
      sub_1C4031C70();
      RecentCall.hash(into:)(v36);
      result = sub_1C4031CC0();
      v25 = -1 << *(v11 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1C402B544(v7, *(v11 + 48) + v19 * v23, type metadata accessor for RecentCall);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1C4026B08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092840, &qword_1C4054120);
  result = sub_1C4031870();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1C4031C70();
      sub_1C4031280();
      result = sub_1C4031CC0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C4026D68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092848, &qword_1C4054128);
  result = sub_1C4031870();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 2 * (v15 | (v7 << 6)));
      result = MEMORY[0x1C6933910](*(v6 + 40), v18, 2);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 2 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C4026F90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092838, &qword_1C4054118);
  result = sub_1C4031870();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      result = MEMORY[0x1C6933910](*(v6 + 40), v18, 4);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C40271B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092718, &unk_1C4053AE0);
  result = sub_1C4031870();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1C4031C70();
      sub_1C4031280();
      sub_1C4031CA0();
      result = sub_1C4031CC0();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C4027438(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092728, &qword_1C4054110);
  result = sub_1C4031870();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v36 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v37 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v24 = *(v19 + 24);
      v23 = *(v19 + 32);
      v25 = *(v6 + 40);
      sub_1C4031C70();
      sub_1C4031CA0();
      sub_1C4031280();
      sub_1C4031C90();
      if (v23)
      {
        sub_1C4031280();
      }

      result = sub_1C4031CC0();
      v6 = v36;
      v26 = -1 << *(v36 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v36 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v24;
      *(v15 + 32) = v23;
      ++*(v36 + 16);
      v3 = v35;
      v11 = v37;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C4027708(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1C4031870();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_1C4031670();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_1C4027928(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1C4031670();
  v5 = -1 << *(a2 + 32);
  result = sub_1C4031780();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1C40279AC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for RecentCall();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1C4026800(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1C4028548();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1C4028F50(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1C4031C70();
  RecentCall.hash(into:)(v29);
  v18 = sub_1C4031CC0();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1C402B414(*(v16 + 48) + v21 * a2, v13, type metadata accessor for RecentCall);
      v22 = _s11CallHistory06RecentA0V2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1C402B47C(v13, type metadata accessor for RecentCall);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1C402B544(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for RecentCall);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C4031C20();
  __break(1u);
  return result;
}

uint64_t sub_1C4027BF0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1C4026B08(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C4028754();
      goto LABEL_16;
    }

    sub_1C4029228(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1C4031C70();
  sub_1C4031280();
  result = sub_1C4031CC0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1C4031BF0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1C4031C20();
  __break(1u);
  return result;
}

uint64_t sub_1C4027D70(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C4026D68(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1C40288B0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1C4029460(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1C6933910](*(*v3 + 40), v4, 2);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 2 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 2 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C4031C20();
  __break(1u);
  return result;
}

uint64_t sub_1C4027E94(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C4026F90(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1C40289F0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1C4029654(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1C6933910](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C4031C20();
  __break(1u);
  return result;
}

uint64_t sub_1C4027FB8(uint64_t result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_1C40271B8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1C4028B30();
      goto LABEL_18;
    }

    sub_1C4029848(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  sub_1C4031C70();
  sub_1C4031280();
  sub_1C4031CA0();
  result = sub_1C4031CC0();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = result & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = v18 + 24 * a4;
      result = *v19;
      v20 = *(v19 + 16);
      v21 = *v19 == v10 && *(v19 + 8) == a2;
      if (v21 || (result = sub_1C4031BF0(), (result & 1) != 0))
      {
        if (((v20 ^ a3) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      a4 = (a4 + 1) & v17;
    }

    while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_18:
  v22 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = v10;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3 & 1;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_21:
  result = sub_1C4031C20();
  __break(1u);
  return result;
}

uint64_t sub_1C4028174(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v32 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_1C4027438(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1C4028C98();
      goto LABEL_28;
    }

    sub_1C4029AA0(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1C4031C70();
  v10 = *v5;
  v11 = v5[1];
  v12 = v5[2];
  v14 = v5[3];
  v13 = v5[4];
  sub_1C4031CA0();
  sub_1C4031280();
  v33 = v13;
  sub_1C4031C90();
  if (v13)
  {
    sub_1C4031280();
  }

  result = sub_1C4031CC0();
  v15 = v8 + 56;
  v16 = -1 << *(v8 + 32);
  a2 = result & ~v16;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 48);
    v19 = v33;
    do
    {
      v20 = (v18 + 40 * a2);
      if (*v20 == v10)
      {
        result = v20[1];
        v22 = v20[3];
        v21 = v20[4];
        v23 = result == v11 && v20[2] == v12;
        if (v23 || (result = sub_1C4031BF0(), v19 = v33, (result & 1) != 0))
        {
          if (v21)
          {
            if (v19)
            {
              v24 = v22 == v14 && v21 == v19;
              if (v24 || (result = sub_1C4031BF0(), v19 = v33, (result & 1) != 0))
              {
LABEL_27:
                result = sub_1C4031C20();
                __break(1u);
                break;
              }
            }
          }

          else if (!v19)
          {
            goto LABEL_27;
          }
        }
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v25 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = *(v25 + 48) + 40 * a2;
  v27 = *(v32 + 16);
  *v26 = *v32;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(v32 + 32);
  v28 = *(v25 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v30;
  }

  return result;
}

void sub_1C40283B8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_1C4027708(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1C4028E10(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_1C4029D50(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_1C4031670();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_1C3F03800(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_1C4031680();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C4031C20();
  __break(1u);
}

void *sub_1C4028548()
{
  v1 = v0;
  v2 = type metadata accessor for RecentCall();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092830, &qword_1C40540F8);
  v7 = *v0;
  v8 = sub_1C4031860();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1C402B414(*(v7 + 48) + v22, v6, type metadata accessor for RecentCall);
        result = sub_1C402B544(v6, *(v9 + 48) + v22, type metadata accessor for RecentCall);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1C4028754()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092840, &qword_1C4054120);
  v2 = *v0;
  v3 = sub_1C4031860();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C40288B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092848, &qword_1C4054128);
  v2 = *v0;
  v3 = sub_1C4031860();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C40289F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092838, &qword_1C4054118);
  v2 = *v0;
  v3 = sub_1C4031860();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C4028B30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092718, &unk_1C4053AE0);
  v2 = *v0;
  v3 = sub_1C4031860();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = v20;
        *(v21 + 8) = v19;
        *(v21 + 16) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C4028C98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092728, &qword_1C4054110);
  v2 = *v0;
  v3 = sub_1C4031860();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v22 = *(v18 + 24);
        v21 = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = *v18;
        *(v23 + 8) = v19;
        *(v23 + 16) = v20;
        *(v23 + 24) = v22;
        *(v23 + 32) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1C4028E10(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C4031860();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1C4028F50(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecentCall();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092830, &qword_1C40540F8);
  result = sub_1C4031870();
  v11 = result;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v33 + 72);
      sub_1C402B414(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for RecentCall);
      v23 = *(v11 + 40);
      sub_1C4031C70();
      RecentCall.hash(into:)(v34);
      result = sub_1C4031CC0();
      v24 = -1 << *(v11 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1C402B544(v7, *(v11 + 48) + v18 * v22, type metadata accessor for RecentCall);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v21 = *(v8 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1C4029228(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092840, &qword_1C4054120);
  result = sub_1C4031870();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1C4031C70();

      sub_1C4031280();
      result = sub_1C4031CC0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C4029460(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092848, &qword_1C4054128);
  result = sub_1C4031870();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 2 * (v14 | (v7 << 6)));
      result = MEMORY[0x1C6933910](*(v6 + 40), v17, 2);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 2 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C4029654(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092838, &qword_1C4054118);
  result = sub_1C4031870();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      result = MEMORY[0x1C6933910](*(v6 + 40), v17, 4);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C4029848(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092718, &unk_1C4053AE0);
  result = sub_1C4031870();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1C4031C70();

      sub_1C4031280();
      sub_1C4031CA0();
      result = sub_1C4031CC0();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C4029AA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC092728, &qword_1C4054110);
  result = sub_1C4031870();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v35 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      sub_1C4031C70();
      sub_1C4031CA0();

      sub_1C4031280();
      sub_1C4031C90();
      if (v24)
      {
        sub_1C4031280();
      }

      result = sub_1C4031CC0();
      v6 = v35;
      v26 = -1 << *(v35 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v35 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v23;
      *(v15 + 32) = v24;
      ++*(v35 + 16);
      v3 = v34;
      v11 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v33;
        goto LABEL_30;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C4029D50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1C4031870();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_1C4031670();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_1C4029F5C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CoalescingManager.RecentsStrategyKey(0);
  sub_1C402B544(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for CoalescingManager.RecentsStrategyKey);
  v10 = a4[7];
  v11 = type metadata accessor for CoalescingManager.Group(0);
  result = sub_1C402B544(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for CoalescingManager.Group);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1C402A048(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for CoalescingManager.Group(0);
  result = sub_1C402B544(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for CoalescingManager.Group);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1C402A0F0(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CoalescingManager.RecentsStrategyKey(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1C3F3C61C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for CoalescingManager.Group(0);
      return sub_1C402B4DC(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for CoalescingManager.Group);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1C3F01C90();
    goto LABEL_7;
  }

  sub_1C3F00264(v17, a3 & 1);
  v24 = *v4;
  v25 = sub_1C3F3C61C(a2);
  if ((v18 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_1C4031C30();
    __break(1u);
    return result;
  }

  v14 = v25;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1C402B414(a2, v11, type metadata accessor for CoalescingManager.RecentsStrategyKey);
  return sub_1C4029F5C(v14, v11, a1, v20);
}

uint64_t sub_1C402A29C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1C3F3C688(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for CoalescingManager.Group(0);
      return sub_1C402B4DC(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for CoalescingManager.Group);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1C3F01F7C();
    goto LABEL_7;
  }

  sub_1C3F006B8(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1C3F3C688(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_1C4031C30();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1C402A048(v10, a2, a1, v16);
}

uint64_t sub_1C402A3F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1C40309F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090420, &unk_1C4054100);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  if (*a1 != *a2)
  {
    goto LABEL_12;
  }

  if (a1[1] != a2[1])
  {
    goto LABEL_12;
  }

  v18 = v15;
  v19 = *(a1 + 2);
  v45 = *(a1 + 1);
  v46 = v19;
  v21 = *(a2 + 2);
  v43 = *(a2 + 1);
  v20 = v43;
  v44 = v21;
  sub_1C3F16304(v45, v19);
  sub_1C3F16304(v20, v21);
  LOBYTE(v20) = _s11CallHistory15ServiceProviderO2eeoiySbAC_ACtFZ_0(&v45, &v43);
  sub_1C3F17D70(v43, v44);
  sub_1C3F17D70(v45, v46);
  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

  v42 = type metadata accessor for CoalescingManager.RecentsStrategyKey(0);
  v22 = v42[7];
  v23 = *(v18 + 48);
  sub_1C402B3A4(&a1[v22], v17);
  sub_1C402B3A4(&a2[v22], &v17[v23]);
  v24 = *(v5 + 48);
  if (v24(v17, 1, v4) != 1)
  {
    sub_1C402B3A4(v17, v12);
    if (v24(&v17[v23], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v23], v4);
      sub_1C402B5AC(&qword_1EC08F0D0, MEMORY[0x1E69695A8]);
      v25 = sub_1C4031180();
      v26 = *(v5 + 8);
      v26(v8, v4);
      v26(v12, v4);
      sub_1C3EED388(v17, &qword_1EC08F218, &qword_1C4041840);
      if ((v25 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_1C3EED388(v17, &qword_1EC090420, &unk_1C4054100);
    goto LABEL_12;
  }

  if (v24(&v17[v23], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1C3EED388(v17, &qword_1EC08F218, &qword_1C4041840);
LABEL_11:
  v27 = v42;
  if (a1[v42[8]] == a2[v42[8]])
  {
    v30 = v42[9];
    v31 = &a1[v30];
    v32 = *&a1[v30 + 8];
    v33 = &a2[v30];
    v34 = *(v33 + 1);
    if (v32)
    {
      if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_1C4031BF0() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v34)
    {
      goto LABEL_12;
    }

    v35 = v27[10];
    v36 = &a1[v35];
    v37 = *&a1[v35 + 8];
    v38 = &a2[v35];
    v39 = *(v38 + 1);
    if (v37)
    {
      if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_1C4031BF0() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v39)
    {
      goto LABEL_12;
    }

    if (a1[v27[11]] == a2[v27[11]] && *&a1[v27[12]] == *&a2[v27[12]])
    {
      v40 = v27[13];
      v28 = sub_1C4030950();
      return v28 & 1;
    }
  }

LABEL_12:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1C402A848(uint64_t a1)
{
  v2 = type metadata accessor for CoalescingManager.Group(0);
  v105 = *(v2 - 8);
  v3 = *(v105 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v101 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v100 = &v91 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v93 = &v91 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v97 = &v91 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v91 - v12;
  v13 = type metadata accessor for CoalescingManager.RecentsStrategyKey(0);
  v98 = *(v13 - 8);
  v14 = *(v98 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v99 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v91 - v17;
  v19 = sub_1C4030980();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v121 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for RecentCall();
  v23 = *(v111 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v111);
  v95 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v94 = &v91 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v109 = &v91 - v29;
  v92 = sub_1C4030A20();
  v91 = *(v92 - 8);
  v30 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v32 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a1 + 16);
  v34 = sub_1C402B5AC(&qword_1EC092828, type metadata accessor for CoalescingManager.RecentsStrategyKey);
  v106 = v2;
  v107 = v13;
  v112 = MEMORY[0x1C6932DC0](v33, v13, v2, v34);
  v108 = v32;
  sub_1C4030A10();
  if (!v33)
  {
LABEL_21:
    (*(v91 + 8))(v108, v92);
    return v112;
  }

  v35 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v103 = (v20 + 8);
  v104 = (v20 + 16);
  v102 = *(v23 + 72);
  v36 = v109;
  while (1)
  {
    v113 = v35;
    v114 = v33;
    sub_1C402B414(v35, v36, type metadata accessor for RecentCall);
    v38 = v111;
    v110 = *(v111 + 56);
    v39 = v121;
    sub_1C4030A00();
    v40 = *(v36 + v38[23]);
    v41 = v38[25];
    v119 = *(v36 + v38[26]);
    v120 = v40;
    v42 = *(v36 + v41);
    v43 = *(v36 + v41 + 8);
    v44 = v107;
    sub_1C402B3A4(v36 + v38[6], &v18[v107[7]]);
    v118 = *(v36 + v38[18]);
    v45 = (v36 + v38[31]);
    v46 = *v45;
    v47 = v45[1];
    v48 = (v36 + v38[33]);
    v49 = v48[1];
    v116 = *v48;
    v117 = v46;
    v115 = *(v36 + v38[13]) - 1 < 2;
    v50 = v38[37];
    v51 = v19;
    v52 = *(v36 + v50);
    sub_1C3F16304(v42, v43);
    sub_1C3F3FE30();

    v19 = v51;
    v53 = sub_1C4031540();
    (*v104)(&v18[v44[13]], v39, v51);
    v54 = v119;
    *v18 = v120;
    v18[1] = v54;
    *(v18 + 1) = v42;
    *(v18 + 2) = v43;
    v18[v44[8]] = v118;
    v55 = &v18[v44[9]];
    v56 = v116;
    *v55 = v117;
    *(v55 + 1) = v47;
    v57 = &v18[v44[10]];
    *v57 = v56;
    *(v57 + 1) = v49;
    v18[v44[11]] = v115;
    *&v18[v44[12]] = v53;
    v58 = v112;
    if (*(v112 + 16))
    {
      v59 = sub_1C3F3C61C(v18);
      if (v60)
      {
        v61 = v97;
        sub_1C402B414(v58[7] + *(v105 + 72) * v59, v97, type metadata accessor for CoalescingManager.Group);
        v62 = v96;
        sub_1C402B544(v61, v96, type metadata accessor for CoalescingManager.Group);
        v63 = *(v111 + 56);
        v36 = v109;
        if (sub_1C4030940())
        {
          v64 = v95;
          sub_1C402B414(v62, v95, type metadata accessor for RecentCall);
          v65 = v62 + *(v106 + 20);
          v66 = v94;
          sub_1C4025A08(v94, v64);
          sub_1C402B47C(v66, type metadata accessor for RecentCall);
          sub_1C402B47C(v18, type metadata accessor for CoalescingManager.RecentsStrategyKey);
          (*v103)(v121, v19);
          sub_1C402B4DC(v36, v62, type metadata accessor for RecentCall);
        }

        else
        {
          v84 = v95;
          sub_1C402B414(v36, v95, type metadata accessor for RecentCall);
          v85 = v62 + *(v106 + 20);
          v86 = v94;
          sub_1C4025A08(v94, v84);
          v87 = v86;
          v36 = v109;
          sub_1C402B47C(v87, type metadata accessor for RecentCall);
          v88 = v93;
          sub_1C402B414(v62, v93, type metadata accessor for CoalescingManager.Group);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v122 = v58;
          sub_1C402A0F0(v88, v18, isUniquelyReferenced_nonNull_native);
          sub_1C402B47C(v18, type metadata accessor for CoalescingManager.RecentsStrategyKey);
          (*v103)(v121, v19);
          v112 = v122;
          sub_1C402B47C(v36, type metadata accessor for RecentCall);
        }

        v37 = v114;
        sub_1C402B47C(v62, type metadata accessor for CoalescingManager.Group);
        goto LABEL_5;
      }
    }

    v67 = v99;
    sub_1C402B414(v18, v99, type metadata accessor for CoalescingManager.RecentsStrategyKey);
    v36 = v109;
    v68 = v100;
    sub_1C402B414(v109, v100, type metadata accessor for RecentCall);
    *(v68 + *(v106 + 20)) = MEMORY[0x1E69E7CD0];
    v69 = v68;
    v70 = v101;
    sub_1C402B544(v69, v101, type metadata accessor for CoalescingManager.Group);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v58;
    v73 = sub_1C3F3C61C(v67);
    v74 = v58[2];
    v75 = (v72 & 1) == 0;
    v76 = v74 + v75;
    if (__OFADD__(v74, v75))
    {
      break;
    }

    v77 = v72;
    if (v58[3] >= v76)
    {
      if ((v71 & 1) == 0)
      {
        sub_1C3F01C90();
      }
    }

    else
    {
      sub_1C3F00264(v76, v71);
      v78 = sub_1C3F3C61C(v67);
      if ((v77 & 1) != (v79 & 1))
      {
        goto LABEL_24;
      }

      v73 = v78;
    }

    v80 = v122;
    v112 = v122;
    if (v77)
    {
      sub_1C402B4DC(v70, v122[7] + *(v105 + 72) * v73, type metadata accessor for CoalescingManager.Group);
      sub_1C402B47C(v67, type metadata accessor for CoalescingManager.RecentsStrategyKey);
      sub_1C402B47C(v18, type metadata accessor for CoalescingManager.RecentsStrategyKey);
      (*v103)(v121, v19);
    }

    else
    {
      v122[(v73 >> 6) + 8] |= 1 << v73;
      sub_1C402B414(v67, v80[6] + *(v98 + 72) * v73, type metadata accessor for CoalescingManager.RecentsStrategyKey);
      sub_1C402B544(v70, v80[7] + *(v105 + 72) * v73, type metadata accessor for CoalescingManager.Group);
      sub_1C402B47C(v67, type metadata accessor for CoalescingManager.RecentsStrategyKey);
      sub_1C402B47C(v18, type metadata accessor for CoalescingManager.RecentsStrategyKey);
      (*v103)(v121, v19);
      v81 = v80[2];
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (v82)
      {
        goto LABEL_23;
      }

      v80[2] = v83;
    }

    sub_1C402B47C(v36, type metadata accessor for RecentCall);
    v37 = v114;
LABEL_5:
    v35 = v113 + v102;
    v33 = v37 - 1;
    if (!v33)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C4031C30();
  __break(1u);
  return result;
}

uint64_t sub_1C402B3A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C402B414(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C402B47C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C402B4DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C402B544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C402B5AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C402B5F4(uint64_t a1)
{
  v2 = type metadata accessor for CoalescingManager.Group(0);
  v68 = *(v2 - 8);
  v3 = *(v68 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v65 = &v60 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v61 = &v60 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v64 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - v13;
  v70 = type metadata accessor for RecentCall();
  v15 = *(v70 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v70);
  v63 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v62 = &v60 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - v21;
  v23 = *(a1 + 16);
  v69 = v2;
  v24 = MEMORY[0x1C6932DC0](v23, MEMORY[0x1E69E6530], v2, MEMORY[0x1E69E6540]);
  if (!v23)
  {
    return v24;
  }

  v25 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v26 = *(v15 + 72);
  v66 = v22;
  v67 = v26;
  while (1)
  {
    sub_1C402B414(v25, v22, type metadata accessor for RecentCall);
    v29 = *&v22[*(v70 + 148)];
    sub_1C3F3FE30();
    v30 = sub_1C4031540();
    v31 = v30;
    if (v24[2])
    {
      v32 = sub_1C3F3C688(v30);
      if (v33)
      {
        v34 = v64;
        sub_1C402B414(v24[7] + *(v68 + 72) * v32, v64, type metadata accessor for CoalescingManager.Group);
        sub_1C402B544(v34, v14, type metadata accessor for CoalescingManager.Group);
        v35 = *(v70 + 56);
        if (sub_1C4030940())
        {
          v36 = v63;
          sub_1C402B414(v14, v63, type metadata accessor for RecentCall);
          v37 = &v14[*(v69 + 20)];
          v38 = v62;
          sub_1C4025A08(v62, v36);
          sub_1C402B47C(v38, type metadata accessor for RecentCall);
          sub_1C402B4DC(v22, v14, type metadata accessor for RecentCall);
        }

        else
        {
          v53 = v63;
          sub_1C402B414(v22, v63, type metadata accessor for RecentCall);
          v54 = &v14[*(v69 + 20)];
          v55 = v62;
          sub_1C4025A08(v62, v53);
          sub_1C402B47C(v55, type metadata accessor for RecentCall);
          v56 = v61;
          sub_1C402B414(v14, v61, type metadata accessor for CoalescingManager.Group);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71 = v24;
          v58 = v56;
          v22 = v66;
          sub_1C402A29C(v58, v31, isUniquelyReferenced_nonNull_native);
          v24 = v71;
          sub_1C402B47C(v22, type metadata accessor for RecentCall);
        }

        v27 = type metadata accessor for CoalescingManager.Group;
        v28 = v14;
        goto LABEL_5;
      }
    }

    v39 = v65;
    sub_1C402B414(v22, v65, type metadata accessor for RecentCall);
    *(v39 + *(v69 + 20)) = MEMORY[0x1E69E7CD0];
    v40 = v6;
    sub_1C402B544(v39, v6, type metadata accessor for CoalescingManager.Group);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v24;
    v43 = sub_1C3F3C688(v31);
    v44 = v24[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      break;
    }

    v47 = v42;
    if (v24[3] >= v46)
    {
      if ((v41 & 1) == 0)
      {
        sub_1C3F01F7C();
      }
    }

    else
    {
      sub_1C3F006B8(v46, v41);
      v48 = sub_1C3F3C688(v31);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_24;
      }

      v43 = v48;
    }

    v6 = v40;
    v24 = v71;
    v22 = v66;
    if (v47)
    {
      sub_1C402B4DC(v6, v71[7] + *(v68 + 72) * v43, type metadata accessor for CoalescingManager.Group);
    }

    else
    {
      v71[(v43 >> 6) + 8] |= 1 << v43;
      *(v24[6] + 8 * v43) = v31;
      sub_1C402B544(v6, v24[7] + *(v68 + 72) * v43, type metadata accessor for CoalescingManager.Group);
      v50 = v24[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_23;
      }

      v24[2] = v52;
    }

    v27 = type metadata accessor for RecentCall;
    v28 = v22;
LABEL_5:
    sub_1C402B47C(v28, v27);
    v25 += v67;
    if (!--v23)
    {
      return v24;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C4031C30();
  __break(1u);
  return result;
}

void sub_1C402BC64()
{
  sub_1C402BD3C();
  if (v0 <= 0x3F)
  {
    sub_1C3F1A124();
    if (v1 <= 0x3F)
    {
      sub_1C4030980();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C402BD3C()
{
  if (!qword_1EC0903C0)
  {
    sub_1C40309F0();
    v0 = sub_1C40316A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0903C0);
    }
  }
}

void sub_1C402BDBC()
{
  type metadata accessor for RecentCall();
  if (v0 <= 0x3F)
  {
    sub_1C402BE40();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C402BE40()
{
  if (!qword_1EC092880)
  {
    type metadata accessor for RecentCall();
    sub_1C402B5AC(&qword_1EC08F030, type metadata accessor for RecentCall);
    v0 = sub_1C4031550();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC092880);
    }
  }
}

uint64_t sub_1C402BF1C@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_1C40308A0();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C4030910();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v20);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  sub_1C402C890(v10);
  v22 = 0x65726F7453;
  v23 = 0xE500000000000000;
  v19 = *MEMORY[0x1E6968F70];
  v18 = v2[13];
  v18(v5);
  v17[1] = sub_1C4010284();
  sub_1C4030900();
  v13 = v2[1];
  v13(v5, v1);
  v14 = *(v6 + 8);
  v15 = v20;
  v14(v10, v20);
  sub_1C402CB58(v12);
  v22 = 0xD000000000000015;
  v23 = 0x80000001C4056BC0;
  (v18)(v5, v19, v1);
  sub_1C4030900();
  v13(v5, v1);
  return (v14)(v12, v15);
}

uint64_t sub_1C402C1A0@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_1C40308A0();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1C4030910();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v35 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v44 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v35 - v15;
  sub_1C40308C0();
  strcpy(v45, "Library");
  v45[1] = 0xE700000000000000;
  v16 = *MEMORY[0x1E6968F70];
  v39 = v2[13];
  v36 = v16;
  v39(v5, v16, v1);
  v35 = sub_1C4010284();
  sub_1C4030900();
  v37 = v2[1];
  v37(v5, v1);
  v42 = v6;
  v17 = *(v6 + 8);
  v18 = v40;
  v17(v10, v40);
  strcpy(v45, "CallHistoryDB");
  HIWORD(v45[1]) = -4864;
  v19 = v16;
  v20 = v39;
  v39(v5, v19, v1);
  v21 = v38;
  sub_1C4030900();
  v22 = v1;
  v23 = v1;
  v24 = v37;
  v37(v5, v23);
  v17(v21, v18);
  v45[0] = 0xD000000000000015;
  v45[1] = 0x80000001C4056BC0;
  v20(v5, v36, v22);
  v25 = v41;
  v26 = v44;
  sub_1C4030900();
  v24(v5, v22);
  v17(v26, v18);
  v27 = [objc_opt_self() defaultManager];
  sub_1C40308F0();
  v28 = sub_1C4031190();

  LODWORD(v5) = [v27 fileExistsAtPath_];

  if (v5)
  {
    v30 = v42;
    v29 = v43;
    (*(v42 + 32))(v43, v25, v18);
    v31 = 0;
    v32 = v29;
    v33 = v30;
  }

  else
  {
    v17(v25, v18);
    v31 = 1;
    v33 = v42;
    v32 = v43;
  }

  return (*(v33 + 56))(v32, v31, 1, v18);
}

uint64_t sub_1C402C604@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_1C40308A0();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C4030910();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v20);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  sub_1C402C890(v10);
  v22 = 0x726F7453706D6554;
  v23 = 0xE900000000000065;
  v19 = *MEMORY[0x1E6968F70];
  v18 = v2[13];
  v18(v5);
  v17[1] = sub_1C4010284();
  sub_1C4030900();
  v13 = v2[1];
  v13(v5, v1);
  v14 = *(v6 + 8);
  v15 = v20;
  v14(v10, v20);
  sub_1C402CB58(v12);
  v22 = 0xD000000000000019;
  v23 = 0x80000001C4058F40;
  (v18)(v5, v19, v1);
  sub_1C4030900();
  v13(v5, v1);
  return (v14)(v12, v15);
}

void sub_1C402C890(uint64_t a1@<X8>)
{
  v2 = sub_1C4030910();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_1C4031190();
  v9 = [v7 containerURLForSecurityApplicationGroupIdentifier_];

  if (v9)
  {
    sub_1C40308E0();

    if (qword_1EC08EB68 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4030D10();
    __swift_project_value_buffer(v10, qword_1EC0B0CB0);
    (*(v3 + 16))(v6, a1, v2);
    v11 = sub_1C4030CF0();
    v12 = sub_1C40315D0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136446210;
      sub_1C402CF00();
      v15 = sub_1C4031BB0();
      v17 = v16;
      (*(v3 + 8))(v6, v2);
      v18 = sub_1C3EEFC68(v15, v17, &v20);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1C3E90000, v11, v12, "AppGroup URL: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6934650](v14, -1, -1);
      MEMORY[0x1C6934650](v13, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    sub_1C402CB58(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C402CB58(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C4030910();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_1C40308D0();
  v30[0] = 0;
  v9 = [v7 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:v30];

  v10 = v30[0];
  if (v9)
  {
    v11 = *MEMORY[0x1E69E9840];

    v12 = v10;
  }

  else
  {
    v29 = v30[0];
    v13 = v30[0];
    v14 = sub_1C4030890();

    swift_willThrow();
    if (qword_1EC08EB68 != -1)
    {
      swift_once();
    }

    v15 = sub_1C4030D10();
    __swift_project_value_buffer(v15, qword_1EC0B0CB0);
    (*(v3 + 16))(v6, a1, v2);
    v16 = v14;
    v17 = sub_1C4030CF0();
    v18 = sub_1C40315C0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30[0] = v29;
      *v19 = 136446466;
      sub_1C402CF00();
      v21 = sub_1C4031BB0();
      v23 = v22;
      (*(v3 + 8))(v6, v2);
      v24 = sub_1C3EEFC68(v21, v23, v30);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2114;
      v25 = v14;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&dword_1C3E90000, v17, v18, "Failed to create directories to URL: %{public}s: %{public}@", v19, 0x16u);
      sub_1C3F31418(v20);
      MEMORY[0x1C6934650](v20, -1, -1);
      v27 = v29;
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1C6934650](v27, -1, -1);
      MEMORY[0x1C6934650](v19, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v28 = *MEMORY[0x1E69E9840];
  }
}

unint64_t sub_1C402CF00()
{
  result = qword_1EC08F1E0;
  if (!qword_1EC08F1E0)
  {
    sub_1C4030910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F1E0);
  }

  return result;
}

uint64_t sub_1C402CF58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C40316A0();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = (MEMORY[0x1EEE9AC00])();
  v9 = &v19 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  (*(v5 + 16))(v9, a1, v4);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v5 + 8))(v9, v4);
    return 7104878;
  }

  else
  {
    (*(v10 + 32))(v16, v9, a2);
    (*(v10 + 16))(v14, v16, a2);
    v18 = sub_1C4031230();
    (*(v10 + 8))(v16, a2);
    return v18;
  }
}

uint64_t sub_1C402D214(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C4030D10();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C4030D00();
}

uint64_t sub_1C402D28C()
{
  v0 = sub_1C4030D10();
  __swift_allocate_value_buffer(v0, qword_1EC0B0D28);
  __swift_project_value_buffer(v0, qword_1EC0B0D28);
  return sub_1C4030D00();
}

uint64_t sub_1C402D30C()
{
  v0 = sub_1C4030D10();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4030C90();
  __swift_allocate_value_buffer(v5, qword_1EC0B0D40);
  __swift_project_value_buffer(v5, qword_1EC0B0D40);
  if (qword_1EC08EB88 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EC0B0D10);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1C4030C70();
}

void createDirectoryAtPath_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C3E90000, a2, OS_LOG_TYPE_ERROR, "CallHistory: Expected a directory at location %{public}@ but found a file", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void createDirectoryAtPath_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1C3E90000, log, OS_LOG_TYPE_ERROR, "CallHistory: Directory creation failed at location %{public}@ error: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void DeserializeTransactions_cold_1(uint8_t *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v7 = [CHTransaction toString:a2];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_1C3E90000, a4, OS_LOG_TYPE_ERROR, "Transaction type %{public}@ not supported (yet)", a1, 0xCu);
}