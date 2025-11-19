uint64_t sub_1C3F97C2C()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV24.Handle(0);
  sub_1C3F99A34(&qword_1EC0912D0, type metadata accessor for CallHistorySchemaV24.CallRecord);
  sub_1C3F9AAE8();
  sub_1C4030FA0();
}

uint64_t sub_1C3F97CE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F99A34(&qword_1EC091290, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV24.CallRecord(0);
  sub_1C3F99A34(&qword_1EC0912A8, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C3F9AA18();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F97E08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F99A34(&qword_1EC091290, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3F97ED4(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV24.CallRecord(0);
  *(v1 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091320, &qword_1C4046088);
  sub_1C3F99A34(&qword_1EC0912D0, type metadata accessor for CallHistorySchemaV24.CallRecord);
  *(v1 + 72) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 40));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  v4 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 256;
  v5 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 21) = 0;
  v6 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v7 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v8 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v9 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 25) = 256;
  *(v1 + 27) = 1;
  v10 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 28) = 257;
  *(v1 + 30) = 1;
  v11 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 31) = 16843009;
  *(v1 + 35) = 257;
  v12 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  v13 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0912E0, &qword_1C4046008);
  type metadata accessor for CallHistorySchemaV24.Handle(0);
  sub_1C3F9AAE8();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 29) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));
  sub_1C3EAE504(a1, v1 + 40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F98444()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV2410CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3F98510()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3F985F0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3F99A34(&qword_1EC091290, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F99A34(&qword_1EC0912A8, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3F986FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F99A34(&qword_1EC091290, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3F987D0()
{
  swift_getKeyPath();
  sub_1C3F99A34(&qword_1EC091290, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F99A34(&qword_1EC0912A8, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F988D0@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F99A34(&qword_1EC091290, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F99A34(&qword_1EC0912A8, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F989DC(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F99A34(&qword_1EC091290, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3F98AAC()
{
  swift_getKeyPath();
  sub_1C3F99A34(&qword_1EC091290, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F99A34(&qword_1EC0912A8, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F98BB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3F99A34(a4, a5);
  sub_1C4030FB0();
}

uint64_t sub_1C3F98C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3F99A34(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3F98CF4()
{
  swift_getKeyPath();
  sub_1C3F99A34(&qword_1EC091290, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV24.CallRecord(0);
  sub_1C3F99A34(&qword_1EC0912A8, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C3F9AA18();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3F98E0C()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV24.CallRecord(0);
  sub_1C3F99A34(&qword_1EC0912A8, type metadata accessor for CallHistorySchemaV24.Handle);
  sub_1C3F9AA18();
  sub_1C4030FA0();
}

uint64_t sub_1C3F98EC8(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV24.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091328, &qword_1C4046108);
  sub_1C3F99A34(&qword_1EC0912A8, type metadata accessor for CallHistorySchemaV24.Handle);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091308, &qword_1C4046080);
  type metadata accessor for CallHistorySchemaV24.CallRecord(0);
  sub_1C3F9AA18();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F990D8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV246Handle___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3F991A4()
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

uint64_t sub_1C3F99290()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40385C0;
  v1 = type metadata accessor for CallHistorySchemaV24.CallRecord(0);
  v2 = sub_1C3F99A34(&qword_1EC0912D0, type metadata accessor for CallHistorySchemaV24.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV24.Handle(0);
  v4 = sub_1C3F99A34(&qword_1EC0912A8, type metadata accessor for CallHistorySchemaV24.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v6 = sub_1C3F99A34(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

unint64_t sub_1C3F99408(uint64_t a1)
{
  result = sub_1C3F99430();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3F99430()
{
  result = qword_1EC091280;
  if (!qword_1EC091280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091280);
  }

  return result;
}

void (*sub_1C3F994B0(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 40, v4);
  return sub_1C3F5A61C;
}

uint64_t sub_1C3F9958C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3F99644(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F996DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3F99738(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C3F4CCAC;
}

uint64_t sub_1C3F99814(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3F99A34(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F998A0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3F99958(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3F99A34(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3F999C8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F99A34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3F99D4C(uint64_t a1)
{
  result = sub_1C3F99A34(&qword_1EC0912D0, type metadata accessor for CallHistorySchemaV24.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F99DA4(uint64_t a1)
{
  result = sub_1C3F99A34(&qword_1EC0912D8, type metadata accessor for CallHistorySchemaV24.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F99DFC()
{
  v35 = sub_1C4031070();
  v0 = *(v35 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C4031020();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v7 = *(v0 + 72);
  v34 = v0;
  v8 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4044510;
  v32 = v9;
  v33 = v8;
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v10 = MEMORY[0x1E69E6530];
  *(&v40 + 1) = MEMORY[0x1E69E6530];
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v11 = MEMORY[0x1E69E7290];
  *(&v40 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v11;
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v11;
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0912E0, &qword_1C4046008);
  v13 = MEMORY[0x1E69E7CC0];
  *(&v40 + 1) = v12;
  *&v39 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  (*(v3 + 104))(v6, *MEMORY[0x1E697BCE0], v30);
  v14 = sub_1C4031030();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_1C4031040();
  *(&v37 + 1) = v14;
  v38 = sub_1C3F99A34(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  *&v36 = v17;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0912E8, &unk_1C4046068);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C403DAB0;
  *(v19 + 32) = swift_getKeyPath();
  *(v18 + 32) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0912F0, &qword_1C4046078);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_1C4031090();
  *(&v37 + 1) = v20;
  v38 = sub_1C3F9A998();
  *&v36 = v23;
  v24 = v31;
  sub_1C4031060();
  v25 = sub_1C3EFFFE8(0, 1, 1, v13);
  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1C3EFFFE8(v26 > 1, v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = v25;
  (*(v34 + 32))(&v25[v33 + v27 * v7], v24, v35);
  *&v36 = v32;
  sub_1C40173FC(v28);
  return v36;
}

unint64_t sub_1C3F9A998()
{
  result = qword_1EC0912F8;
  if (!qword_1EC0912F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0912F0, &qword_1C4046078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0912F8);
  }

  return result;
}

uint64_t sub_1C3F9A9FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F98E0C();
}

unint64_t sub_1C3F9AA18()
{
  result = qword_1EC091300;
  if (!qword_1EC091300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091308, &qword_1C4046080);
    sub_1C3F99A34(&qword_1EC0912D0, type metadata accessor for CallHistorySchemaV24.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091300);
  }

  return result;
}

uint64_t sub_1C3F9AACC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F97C2C();
}

unint64_t sub_1C3F9AAE8()
{
  result = qword_1EC091310;
  if (!qword_1EC091310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0912E0, &qword_1C4046008);
    sub_1C3F99A34(&qword_1EC0912A8, type metadata accessor for CallHistorySchemaV24.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091310);
  }

  return result;
}

uint64_t sub_1C3F9ACA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F972BC();
}

uint64_t sub_1C3F9AD3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F972BC();
}

unint64_t sub_1C3F9AF8C()
{
  result = qword_1EC091318;
  if (!qword_1EC091318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F130, &qword_1C4038450);
    sub_1C3F99A34(&qword_1EC090318, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091318);
  }

  return result;
}

uint64_t sub_1C3F9B1A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3F96A50();
}

uint64_t sub_1C3F9B204()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F972BC();
}

uint64_t sub_1C3F9B284()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091308, &qword_1C4046080);
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3F9B658@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3F9B77C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F9B868(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3F9B974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3F9BA38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3F9BB4C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3F9BC28()
{
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3F9BD38()
{
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3F9BDE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F9BEF4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F9BFC4()
{
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F9C0C8()
{
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030FB0();
}

uint64_t sub_1C3F9C218(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3F9C32C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C3F9C490(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3F9C5A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C3F9C64C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F9C758(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F9C82C()
{
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F9C92C()
{
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

double sub_1C3F9C9E0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3F9CAEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F9CBC0()
{
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F9CCC0@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F9CDC8(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F9CE9C()
{
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F9CF98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV25.Handle(0);
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C3FA020C();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F9D0B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F9D184()
{
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC0913A0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV25.Handle(0);
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C3FA020C();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3F9D29C()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV25.Handle(0);
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  sub_1C3FA020C();
  sub_1C4030FA0();
}

uint64_t sub_1C3F9D358@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC091378, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV25.CallRecord(0);
  sub_1C3F9F0F4(&qword_1EC091390, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C3FA013C();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F9D478(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC091378, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3F9D544(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV25.CallRecord(0);
  *(v1 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091400, &qword_1C4046A10);
  sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  *(v1 + 72) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 40));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  v4 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 256;
  v5 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 21) = 0;
  v6 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v7 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v8 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v9 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 25) = 0;
  v10 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 26) = 257;
  v11 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 28) = 257;
  *(v1 + 30) = 1;
  v12 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 31) = 16843009;
  *(v1 + 35) = 257;
  v13 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  v14 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0913C8, &qword_1C4046990);
  type metadata accessor for CallHistorySchemaV25.Handle(0);
  sub_1C3FA020C();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 29) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));
  sub_1C3EAE504(a1, v1 + 40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F9DB00()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV2510CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3F9DBCC()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3F9DCB0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC091378, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC091390, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3F9DDBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC091378, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3F9DE90()
{
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC091378, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC091390, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F9DF90@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC091378, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC091390, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F9E09C(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC091378, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3F9E16C()
{
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC091378, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC091390, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F9E270(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3F9F0F4(a4, a5);
  sub_1C4030FB0();
}

uint64_t sub_1C3F9E310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3F9F0F4(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3F9E3B4()
{
  swift_getKeyPath();
  sub_1C3F9F0F4(&qword_1EC091378, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV25.CallRecord(0);
  sub_1C3F9F0F4(&qword_1EC091390, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C3FA013C();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3F9E4CC()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV25.CallRecord(0);
  sub_1C3F9F0F4(&qword_1EC091390, type metadata accessor for CallHistorySchemaV25.Handle);
  sub_1C3FA013C();
  sub_1C4030FA0();
}

uint64_t sub_1C3F9E588(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV25.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091408, &unk_1C4046A90);
  sub_1C3F9F0F4(&qword_1EC091390, type metadata accessor for CallHistorySchemaV25.Handle);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0913F0, &qword_1C4046A08);
  type metadata accessor for CallHistorySchemaV25.CallRecord(0);
  sub_1C3FA013C();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F9E798()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV256Handle___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3F9E864()
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

uint64_t sub_1C3F9E950()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40385C0;
  v1 = type metadata accessor for CallHistorySchemaV25.CallRecord(0);
  v2 = sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV25.Handle(0);
  v4 = sub_1C3F9F0F4(&qword_1EC091390, type metadata accessor for CallHistorySchemaV25.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v6 = sub_1C3F9F0F4(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

unint64_t sub_1C3F9EAC8(uint64_t a1)
{
  result = sub_1C3F9EAF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3F9EAF0()
{
  result = qword_1EC091368;
  if (!qword_1EC091368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091368);
  }

  return result;
}

void (*sub_1C3F9EB70(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 40, v4);
  return sub_1C3F5A61C;
}

uint64_t sub_1C3F9EC4C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3F9ED04(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F9ED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3F9EDF8(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C3F4CCAC;
}

uint64_t sub_1C3F9EED4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3F9F0F4(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F9EF60()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3F9F018(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3F9F0F4(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3F9F088(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F9F0F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3F9F40C(uint64_t a1)
{
  result = sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F9F464(uint64_t a1)
{
  result = sub_1C3F9F0F4(&qword_1EC0913C0, type metadata accessor for CallHistorySchemaV25.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F9F4BC()
{
  v35 = sub_1C4031070();
  v0 = *(v35 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C4031020();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v7 = *(v0 + 72);
  v34 = v0;
  v8 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4046110;
  v32 = v9;
  v33 = v8;
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v10 = MEMORY[0x1E69E6530];
  *(&v40 + 1) = MEMORY[0x1E69E6530];
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v11 = MEMORY[0x1E69E7290];
  *(&v40 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v11;
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v11;
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0913C8, &qword_1C4046990);
  v13 = MEMORY[0x1E69E7CC0];
  *(&v40 + 1) = v12;
  *&v39 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  (*(v3 + 104))(v6, *MEMORY[0x1E697BCE0], v30);
  v14 = sub_1C4031030();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_1C4031040();
  *(&v37 + 1) = v14;
  v38 = sub_1C3F9F0F4(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  *&v36 = v17;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0913D0, &unk_1C40469F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C403DAB0;
  *(v19 + 32) = swift_getKeyPath();
  *(v18 + 32) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0913D8, &qword_1C4046A00);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_1C4031090();
  *(&v37 + 1) = v20;
  v38 = sub_1C3FA00BC();
  *&v36 = v23;
  v24 = v31;
  sub_1C4031060();
  v25 = sub_1C3EFFFE8(0, 1, 1, v13);
  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1C3EFFFE8(v26 > 1, v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = v25;
  (*(v34 + 32))(&v25[v33 + v27 * v7], v24, v35);
  *&v36 = v32;
  sub_1C40173FC(v28);
  return v36;
}

unint64_t sub_1C3FA00BC()
{
  result = qword_1EC0913E0;
  if (!qword_1EC0913E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0913D8, &qword_1C4046A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0913E0);
  }

  return result;
}

uint64_t sub_1C3FA0120()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F9E4CC();
}

unint64_t sub_1C3FA013C()
{
  result = qword_1EC0913E8;
  if (!qword_1EC0913E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0913F0, &qword_1C4046A08);
    sub_1C3F9F0F4(&qword_1EC0913B8, type metadata accessor for CallHistorySchemaV25.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0913E8);
  }

  return result;
}

uint64_t sub_1C3FA01F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F9D29C();
}

unint64_t sub_1C3FA020C()
{
  result = qword_1EC0913F8;
  if (!qword_1EC0913F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0913C8, &qword_1C4046990);
    sub_1C3F9F0F4(&qword_1EC091390, type metadata accessor for CallHistorySchemaV25.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0913F8);
  }

  return result;
}

uint64_t sub_1C3FA03C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F9C92C();
}

uint64_t sub_1C3FA0460()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F9C92C();
}

uint64_t sub_1C3FA06B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F9C0C8();
}

uint64_t sub_1C3FA0838()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3F9BD38();
}

uint64_t sub_1C3FA0894()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F9C92C();
}

uint64_t sub_1C3FA0914()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0913F0, &qword_1C4046A08);
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FA0CE8@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3FA0E0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FA0EF8(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3FA1004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3FA10C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FA11DC(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3FA12B8()
{
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FA13C8()
{
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3FA1538(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3FA164C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C3FA17B0(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3FA18C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C3FA196C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FA1A78(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FA1B4C()
{
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FA1C4C()
{
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

double sub_1C3FA1D00@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FA1E0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FA1EE0()
{
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FA1FE0@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FA20E8(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FA21BC()
{
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FA22B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV26.Handle(0);
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C3FA5594();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FA23D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FA24A4()
{
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091480, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV26.Handle(0);
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C3FA5594();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FA25BC()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV26.Handle(0);
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  sub_1C3FA5594();
  sub_1C4030FA0();
}

uint64_t sub_1C3FA2678@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091458, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV26.CallRecord(0);
  sub_1C3FA4430(&qword_1EC091470, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C3FA54C4();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FA2798(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091458, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FA2864(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV26.CallRecord(0);
  *(v1 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0914E0, &qword_1C40473C8);
  sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  *(v1 + 72) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 40));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  v4 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 256;
  v5 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 21) = 0;
  v6 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v7 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v8 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v9 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 25) = 0;
  v10 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906B0, &unk_1C403E190);
  sub_1C3F4DD50();
  sub_1C4030E10();

  *(v1 + 26) = 256;
  *(v1 + 28) = 1;
  v11 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 29) = 16843009;
  v12 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 33) = 16843009;
  *(v1 + 37) = 257;
  v13 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  v14 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0914A8, &qword_1C4047348);
  type metadata accessor for CallHistorySchemaV26.Handle(0);
  sub_1C3FA5594();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 31) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));
  sub_1C3EAE504(a1, v1 + 40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FA2E3C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV2610CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FA2F08()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3FA2FEC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091458, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091470, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FA30F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091458, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FA31CC()
{
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091458, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091470, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FA32CC@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091458, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091470, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FA33D8(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091458, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FA34A8()
{
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091458, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091470, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FA35AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FA4430(a4, a5);
  sub_1C4030FB0();
}

uint64_t sub_1C3FA364C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FA4430(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3FA36F0()
{
  swift_getKeyPath();
  sub_1C3FA4430(&qword_1EC091458, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV26.CallRecord(0);
  sub_1C3FA4430(&qword_1EC091470, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C3FA54C4();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FA3808()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV26.CallRecord(0);
  sub_1C3FA4430(&qword_1EC091470, type metadata accessor for CallHistorySchemaV26.Handle);
  sub_1C3FA54C4();
  sub_1C4030FA0();
}

uint64_t sub_1C3FA38C4(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV26.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0914E8, &qword_1C4047448);
  sub_1C3FA4430(&qword_1EC091470, type metadata accessor for CallHistorySchemaV26.Handle);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0914D0, &qword_1C40473C0);
  type metadata accessor for CallHistorySchemaV26.CallRecord(0);
  sub_1C3FA54C4();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FA3AD4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV266Handle___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FA3BA0()
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

uint64_t sub_1C3FA3C8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40385C0;
  v1 = type metadata accessor for CallHistorySchemaV26.CallRecord(0);
  v2 = sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV26.Handle(0);
  v4 = sub_1C3FA4430(&qword_1EC091470, type metadata accessor for CallHistorySchemaV26.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v6 = sub_1C3FA4430(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

unint64_t sub_1C3FA3E04(uint64_t a1)
{
  result = sub_1C3FA3E2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3FA3E2C()
{
  result = qword_1EC091448;
  if (!qword_1EC091448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091448);
  }

  return result;
}

void (*sub_1C3FA3EAC(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 40, v4);
  return sub_1C3F5A61C;
}

uint64_t sub_1C3FA3F88()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FA4040(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FA40D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3FA4134(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C3F4CCAC;
}

uint64_t sub_1C3FA4210(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3FA4430(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3FA429C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FA4354(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3FA4430(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3FA43C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FA4430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3FA4748(uint64_t a1)
{
  result = sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FA47A0(uint64_t a1)
{
  result = sub_1C3FA4430(&qword_1EC0914A0, type metadata accessor for CallHistorySchemaV26.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FA47F8()
{
  v35 = sub_1C4031070();
  v0 = *(v35 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C4031020();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v7 = *(v0 + 72);
  v34 = v0;
  v8 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4046AA0;
  v32 = v9;
  v33 = v8;
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v10 = MEMORY[0x1E69E6530];
  *(&v40 + 1) = MEMORY[0x1E69E6530];
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v11 = MEMORY[0x1E69E7290];
  *(&v40 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v11;
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v11;
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0914A8, &qword_1C4047348);
  v13 = MEMORY[0x1E69E7CC0];
  *(&v40 + 1) = v12;
  *&v39 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  (*(v3 + 104))(v6, *MEMORY[0x1E697BCE0], v30);
  v14 = sub_1C4031030();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_1C4031040();
  *(&v37 + 1) = v14;
  v38 = sub_1C3FA4430(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  *&v36 = v17;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0914B0, &unk_1C40473A8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C403DAB0;
  *(v19 + 32) = swift_getKeyPath();
  *(v18 + 32) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0914B8, &qword_1C40473B8);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_1C4031090();
  *(&v37 + 1) = v20;
  v38 = sub_1C3FA5444();
  *&v36 = v23;
  v24 = v31;
  sub_1C4031060();
  v25 = sub_1C3EFFFE8(0, 1, 1, v13);
  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1C3EFFFE8(v26 > 1, v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = v25;
  (*(v34 + 32))(&v25[v33 + v27 * v7], v24, v35);
  *&v36 = v32;
  sub_1C40173FC(v28);
  return v36;
}

unint64_t sub_1C3FA5444()
{
  result = qword_1EC0914C0;
  if (!qword_1EC0914C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0914B8, &qword_1C40473B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0914C0);
  }

  return result;
}

uint64_t sub_1C3FA54A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FA3808();
}

unint64_t sub_1C3FA54C4()
{
  result = qword_1EC0914C8;
  if (!qword_1EC0914C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0914D0, &qword_1C40473C0);
    sub_1C3FA4430(&qword_1EC091498, type metadata accessor for CallHistorySchemaV26.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0914C8);
  }

  return result;
}

uint64_t sub_1C3FA5578()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FA25BC();
}

unint64_t sub_1C3FA5594()
{
  result = qword_1EC0914D8;
  if (!qword_1EC0914D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0914A8, &qword_1C4047348);
    sub_1C3FA4430(&qword_1EC091470, type metadata accessor for CallHistorySchemaV26.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0914D8);
  }

  return result;
}

uint64_t sub_1C3FA5750()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FA1C4C();
}

uint64_t sub_1C3FA57E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FA1C4C();
}

uint64_t sub_1C3FA5A90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FA1C4C();
}

uint64_t sub_1C3FA5C20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3FA13C8();
}

uint64_t sub_1C3FA5C7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FA1C4C();
}

uint64_t sub_1C3FA5CFC()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0914D0, &qword_1C40473C0);
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FA60F0@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3FA6214(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FA6300(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3FA640C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3FA64D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FA65E4(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3FA66C0()
{
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FA67D0()
{
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3FA6940(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3FA6A54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C3FA6BB8(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3FA6CC8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C3FA6D74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FA6E80(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FA6F54()
{
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FA7054()
{
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

double sub_1C3FA7108@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FA7214(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FA72E8()
{
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FA73E8@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FA74F0(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FA75C4()
{
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FA76C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV27.Handle(0);
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C3FAAA00();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FA77E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FA78AC()
{
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091560, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV27.Handle(0);
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C3FAAA00();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FA79C4()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV27.Handle(0);
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  sub_1C3FAAA00();
  sub_1C4030FA0();
}

uint64_t sub_1C3FA7A80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091538, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV27.CallRecord(0);
  sub_1C3FA9844(&qword_1EC091550, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C3FAA930();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FA7BA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091538, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FA7C6C(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV27.CallRecord(0);
  *(v1 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0915C0, &qword_1C4047DB0);
  sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  *(v1 + 72) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 40));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  v4 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 256;
  *(v1 + 21) = 1;
  v5 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v6 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v7 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v8 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 25) = 0;
  v9 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 26) = 0;
  v10 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906B0, &unk_1C403E190);
  sub_1C3F4DD50();
  sub_1C4030E10();

  *(v1 + 27) = 256;
  *(v1 + 29) = 1;
  v11 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 30) = 16843009;
  v12 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 34) = 16843009;
  *(v1 + 38) = 257;
  v13 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  v14 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091588, &qword_1C4047D30);
  type metadata accessor for CallHistorySchemaV27.Handle(0);
  sub_1C3FAAA00();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));
  sub_1C3EAE504(a1, v1 + 40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FA824C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV2710CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FA8318()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3FA8400@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091538, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091550, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FA850C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091538, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FA85E0()
{
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091538, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091550, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FA86E0@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091538, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091550, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FA87EC(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091538, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FA88BC()
{
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091538, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091550, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FA89C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FA9844(a4, a5);
  sub_1C4030FB0();
}

uint64_t sub_1C3FA8A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FA9844(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3FA8B04()
{
  swift_getKeyPath();
  sub_1C3FA9844(&qword_1EC091538, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV27.CallRecord(0);
  sub_1C3FA9844(&qword_1EC091550, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C3FAA930();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FA8C1C()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV27.CallRecord(0);
  sub_1C3FA9844(&qword_1EC091550, type metadata accessor for CallHistorySchemaV27.Handle);
  sub_1C3FAA930();
  sub_1C4030FA0();
}

uint64_t sub_1C3FA8CD8(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV27.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0915C8, &unk_1C4047E30);
  sub_1C3FA9844(&qword_1EC091550, type metadata accessor for CallHistorySchemaV27.Handle);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0915B0, &qword_1C4047DA8);
  type metadata accessor for CallHistorySchemaV27.CallRecord(0);
  sub_1C3FAA930();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FA8EE8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV276Handle___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FA8FB4()
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

uint64_t sub_1C3FA90A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40385C0;
  v1 = type metadata accessor for CallHistorySchemaV27.CallRecord(0);
  v2 = sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV27.Handle(0);
  v4 = sub_1C3FA9844(&qword_1EC091550, type metadata accessor for CallHistorySchemaV27.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v6 = sub_1C3FA9844(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

unint64_t sub_1C3FA9218(uint64_t a1)
{
  result = sub_1C3FA9240();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3FA9240()
{
  result = qword_1EC091528;
  if (!qword_1EC091528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091528);
  }

  return result;
}

void (*sub_1C3FA92C0(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 40, v4);
  return sub_1C3F5A61C;
}

uint64_t sub_1C3FA939C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FA9454(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FA94EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3FA9548(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C3F4CCAC;
}

uint64_t sub_1C3FA9624(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3FA9844(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3FA96B0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FA9768(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3FA9844(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3FA97D8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FA9844(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3FA9B5C(uint64_t a1)
{
  result = sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FA9BB4(uint64_t a1)
{
  result = sub_1C3FA9844(&qword_1EC091580, type metadata accessor for CallHistorySchemaV27.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FA9C0C()
{
  v35 = sub_1C4031070();
  v0 = *(v35 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C4031020();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v7 = *(v0 + 72);
  v34 = v0;
  v8 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4047450;
  v32 = v9;
  v33 = v8;
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v10 = MEMORY[0x1E69E6530];
  *(&v40 + 1) = MEMORY[0x1E69E6530];
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v11 = MEMORY[0x1E69E7290];
  *(&v40 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v11;
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v11;
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091588, &qword_1C4047D30);
  v13 = MEMORY[0x1E69E7CC0];
  *(&v40 + 1) = v12;
  *&v39 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  (*(v3 + 104))(v6, *MEMORY[0x1E697BCE0], v30);
  v14 = sub_1C4031030();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_1C4031040();
  *(&v37 + 1) = v14;
  v38 = sub_1C3FA9844(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  *&v36 = v17;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091590, &unk_1C4047D90);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C403DAB0;
  *(v19 + 32) = swift_getKeyPath();
  *(v18 + 32) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091598, &qword_1C4047DA0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_1C4031090();
  *(&v37 + 1) = v20;
  v38 = sub_1C3FAA8B0();
  *&v36 = v23;
  v24 = v31;
  sub_1C4031060();
  v25 = sub_1C3EFFFE8(0, 1, 1, v13);
  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1C3EFFFE8(v26 > 1, v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = v25;
  (*(v34 + 32))(&v25[v33 + v27 * v7], v24, v35);
  *&v36 = v32;
  sub_1C40173FC(v28);
  return v36;
}

unint64_t sub_1C3FAA8B0()
{
  result = qword_1EC0915A0;
  if (!qword_1EC0915A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091598, &qword_1C4047DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0915A0);
  }

  return result;
}

uint64_t sub_1C3FAA914()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FA8C1C();
}

unint64_t sub_1C3FAA930()
{
  result = qword_1EC0915A8;
  if (!qword_1EC0915A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0915B0, &qword_1C4047DA8);
    sub_1C3FA9844(&qword_1EC091578, type metadata accessor for CallHistorySchemaV27.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0915A8);
  }

  return result;
}

uint64_t sub_1C3FAA9E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FA79C4();
}

unint64_t sub_1C3FAAA00()
{
  result = qword_1EC0915B8;
  if (!qword_1EC0915B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091588, &qword_1C4047D30);
    sub_1C3FA9844(&qword_1EC091550, type metadata accessor for CallHistorySchemaV27.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0915B8);
  }

  return result;
}

uint64_t sub_1C3FAABBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FA7054();
}

uint64_t sub_1C3FAAC54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FA7054();
}

uint64_t sub_1C3FAAEFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FA7054();
}

uint64_t sub_1C3FAB0C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3FA67D0();
}

uint64_t sub_1C3FAB120()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FA7054();
}

uint64_t sub_1C3FAB1A0()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0915B0, &qword_1C4047DA8);
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FAB5A0@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3FAB6C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FAB7B0(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3FAB8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3FAB980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FABA94(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3FABB70()
{
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FABC80()
{
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3FABDF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3FABF04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C3FAC068(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3FAC178(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C3FAC224@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FAC330(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FAC404()
{
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FAC504()
{
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

double sub_1C3FAC5B8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FAC6C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FAC798()
{
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FAC898@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FAC9A0(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FACA74()
{
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FACB70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV28.Handle(0);
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C3FAFF5C();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FACC90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FACD5C()
{
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091640, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV28.Handle(0);
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C3FAFF5C();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FACE74()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV28.Handle(0);
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  sub_1C3FAFF5C();
  sub_1C4030FA0();
}

uint64_t sub_1C3FACF30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091618, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV28.CallRecord(0);
  sub_1C3FAED44(&qword_1EC091630, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C3FAFE8C();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FAD050(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091618, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FAD11C(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV28.CallRecord(0);
  *(v1 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0916A0, &qword_1C40487C8);
  sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  *(v1 + 72) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 40));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  v4 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  v5 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 256;
  *(v1 + 21) = 1;
  v6 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v7 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v8 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v9 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 25) = 0;
  v10 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 26) = 0;
  v11 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906B0, &unk_1C403E190);
  sub_1C3F4DD50();
  sub_1C4030E10();

  *(v1 + 27) = 256;
  *(v1 + 29) = 1;
  v12 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 30) = 16843009;
  v13 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 34) = 16843009;
  *(v1 + 38) = 257;
  v14 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  v15 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091668, &qword_1C4048748);
  type metadata accessor for CallHistorySchemaV28.Handle(0);
  sub_1C3FAFF5C();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));
  sub_1C3EAE504(a1, v1 + 40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FAD74C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV2810CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FAD818()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3FAD900@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091618, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091630, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FADA0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091618, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FADAE0()
{
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091618, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091630, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FADBE0@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091618, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091630, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FADCEC(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091618, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FADDBC()
{
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091618, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091630, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FADEC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FAED44(a4, a5);
  sub_1C4030FB0();
}

uint64_t sub_1C3FADF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FAED44(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3FAE004()
{
  swift_getKeyPath();
  sub_1C3FAED44(&qword_1EC091618, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV28.CallRecord(0);
  sub_1C3FAED44(&qword_1EC091630, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C3FAFE8C();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FAE11C()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV28.CallRecord(0);
  sub_1C3FAED44(&qword_1EC091630, type metadata accessor for CallHistorySchemaV28.Handle);
  sub_1C3FAFE8C();
  sub_1C4030FA0();
}

uint64_t sub_1C3FAE1D8(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV28.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0916A8, &qword_1C4048848);
  sub_1C3FAED44(&qword_1EC091630, type metadata accessor for CallHistorySchemaV28.Handle);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091690, &qword_1C40487C0);
  type metadata accessor for CallHistorySchemaV28.CallRecord(0);
  sub_1C3FAFE8C();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FAE3E8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV286Handle___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FAE4B4()
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

uint64_t sub_1C3FAE5A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40385C0;
  v1 = type metadata accessor for CallHistorySchemaV28.CallRecord(0);
  v2 = sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV28.Handle(0);
  v4 = sub_1C3FAED44(&qword_1EC091630, type metadata accessor for CallHistorySchemaV28.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v6 = sub_1C3FAED44(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

unint64_t sub_1C3FAE718(uint64_t a1)
{
  result = sub_1C3FAE740();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3FAE740()
{
  result = qword_1EC091608;
  if (!qword_1EC091608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091608);
  }

  return result;
}

void (*sub_1C3FAE7C0(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_1C3F2C800(v1 + 40, v4);
  return sub_1C3F5A61C;
}

uint64_t sub_1C3FAE89C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FAE954(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FAE9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3FAEA48(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C3F4CCAC;
}

uint64_t sub_1C3FAEB24(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3FAED44(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3FAEBB0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FAEC68(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3FAED44(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3FAECD8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FAED44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3FAF05C(uint64_t a1)
{
  result = sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FAF0B4(uint64_t a1)
{
  result = sub_1C3FAED44(&qword_1EC091660, type metadata accessor for CallHistorySchemaV28.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FAF10C()
{
  v35 = sub_1C4031070();
  v0 = *(v35 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C4031020();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v7 = *(v0 + 72);
  v34 = v0;
  v8 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4047E40;
  v32 = v9;
  v33 = v8;
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v10 = MEMORY[0x1E69E7290];
  *(&v40 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v11 = MEMORY[0x1E69E6530];
  *(&v40 + 1) = MEMORY[0x1E69E6530];
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v11;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v11;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v11;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v11;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v11;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v11;
  *&v39 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v40 + 1) = v10;
  LOWORD(v39) = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091668, &qword_1C4048748);
  v13 = MEMORY[0x1E69E7CC0];
  *(&v40 + 1) = v12;
  *&v39 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  (*(v3 + 104))(v6, *MEMORY[0x1E697BCE0], v30);
  v14 = sub_1C4031030();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_1C4031040();
  *(&v37 + 1) = v14;
  v38 = sub_1C3FAED44(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  *&v36 = v17;
  sub_1C4031060();
  swift_getKeyPath();
  v39 = 0u;
  v40 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091670, &unk_1C40487A8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C403DAB0;
  *(v19 + 32) = swift_getKeyPath();
  *(v18 + 32) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091678, &qword_1C40487B8);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_1C4031090();
  *(&v37 + 1) = v20;
  v38 = sub_1C3FAFE0C();
  *&v36 = v23;
  v24 = v31;
  sub_1C4031060();
  v25 = sub_1C3EFFFE8(0, 1, 1, v13);
  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1C3EFFFE8(v26 > 1, v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = v25;
  (*(v34 + 32))(&v25[v33 + v27 * v7], v24, v35);
  *&v36 = v32;
  sub_1C40173FC(v28);
  return v36;
}

unint64_t sub_1C3FAFE0C()
{
  result = qword_1EC091680;
  if (!qword_1EC091680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091678, &qword_1C40487B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091680);
  }

  return result;
}

uint64_t sub_1C3FAFE70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FAE11C();
}

unint64_t sub_1C3FAFE8C()
{
  result = qword_1EC091688;
  if (!qword_1EC091688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091690, &qword_1C40487C0);
    sub_1C3FAED44(&qword_1EC091658, type metadata accessor for CallHistorySchemaV28.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091688);
  }

  return result;
}

uint64_t sub_1C3FAFF40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FACE74();
}

unint64_t sub_1C3FAFF5C()
{
  result = qword_1EC091698;
  if (!qword_1EC091698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091668, &qword_1C4048748);
    sub_1C3FAED44(&qword_1EC091630, type metadata accessor for CallHistorySchemaV28.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091698);
  }

  return result;
}

uint64_t sub_1C3FB0118()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FAC504();
}

uint64_t sub_1C3FB01B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FAC504();
}

uint64_t sub_1C3FB0458()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FAC504();
}

uint64_t sub_1C3FB0620()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3FABC80();
}

uint64_t sub_1C3FB06D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FAC504();
}

uint64_t sub_1C3FB0754()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091690, &qword_1C40487C0);
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FB0AD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3FB0BE8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF40, &unk_1C403ED30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C3EF1A60(a1, &v10[-v6], &qword_1EC08EF40, &unk_1C403ED30);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v7, &qword_1EC08EF40, &unk_1C403ED30);
}

uint64_t sub_1C3FB0D58(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3FB0E68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C3FB0F74@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3FB1098(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FB1184(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3FB1290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3FB1354@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FB1468(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3FB1544()
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FB1654()
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3FB1710(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C3EF1A60(a1, &v10[-v6], &qword_1EC08F130, &qword_1C4038450);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v7, &qword_1EC08F130, &qword_1C4038450);
}

uint64_t sub_1C3FB1914(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v9[-v5];
  sub_1C3EF1A60(a1, &v9[-v5], &qword_1EC08F218, &qword_1C4041840);
  v12 = *a2;
  v7 = v12;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v6, &qword_1EC08F218, &qword_1C4041840);
}

double sub_1C3FB1A98@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FB1BA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FB1C78()
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FB1D84@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FB1E8C(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FB1F60()
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FB205C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FB2168(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FB223C()
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FB233C()
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3FB2418@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, void (*a3)(void)@<X5>, void *a4@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  a3();
  sub_1C4030F80();

  *a4 = v8;
  return result;
}

uint64_t sub_1C3FB254C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FB2644(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091768, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  a3();
  sub_1C4030F80();

  return v3;
}

uint64_t sub_1C3FB276C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  a5();
  sub_1C4030FA0();
}

uint64_t sub_1C3FB283C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091740, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV29.CallRecord(0);
  sub_1C3FB56A8(&qword_1EC091758, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C3FB6B0C();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FB295C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091740, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FB2A28(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV29.CallRecord(0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0917D8, &qword_1C40493D0);
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  *(v1 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 48));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  v4 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  v5 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 256;
  *(v1 + 21) = 1;
  v6 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v7 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v8 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v9 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 25) = 0;
  v10 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 26) = 0;
  v11 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906B0, &unk_1C403E190);
  sub_1C3F4DD50();
  sub_1C4030E10();

  *(v1 + 27) = 256;
  *(v1 + 29) = 1;
  v12 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 30) = 16843009;
  v13 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 34) = 16843009;
  *(v1 + 38) = 257;
  *(v1 + 40) = 1;
  v14 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 41) = 1;
  v15 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091790, &qword_1C4049320);
  type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem(0);
  sub_1C3FB6D0C();
  sub_1C4030E00();

  v16 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091798, &qword_1C4049350);
  type metadata accessor for CallHistorySchemaV29.Handle(0);
  sub_1C3FB6C0C();
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

uint64_t sub_1C3FB30E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV2910CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FB31AC()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C3FB329C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091718, type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091730, type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem);
  sub_1C3F40EA8();
  sub_1C4030F90();
}

uint64_t sub_1C3FB33A4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C3EF1A60(a1, &v10[-v6], &qword_1EC08F218, &qword_1C4041840);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1C3FB56A8(&qword_1EC091718, type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem);
  sub_1C4030A90();

  return sub_1C3EED388(v7, &qword_1EC08F218, &qword_1C4041840);
}

uint64_t sub_1C3FB34F4()
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091718, type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091730, type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem);
  sub_1C3F40EA8();
  sub_1C4030F90();
}

uint64_t sub_1C3FB35FC()
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091730, type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem);
  sub_1C3F6A128();
  sub_1C4030FB0();
}

uint64_t sub_1C3FB36A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091718, type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091730, type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem);
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FB37E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091718, type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FB38AC()
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091718, type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091730, type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem);
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C3FB39E4()
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091730, type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem);
  sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  sub_1C4030FC0();
}

uint64_t sub_1C3FB3ABC(__int128 *a1)
{
  type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0917E8, &qword_1C40494A8);
  sub_1C3FB56A8(&qword_1EC091730, type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem);
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

uint64_t sub_1C3FB3C1C()
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

double sub_1C3FB3CC8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091740, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091758, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FB3DD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091740, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FB3EA8()
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091740, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091758, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FB3FA8@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091740, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091758, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FB40B4(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091740, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FB4184()
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091740, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091758, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FB4288(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FB56A8(a4, a5);
  sub_1C4030FB0();
}

uint64_t sub_1C3FB4328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FB56A8(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3FB43CC()
{
  swift_getKeyPath();
  sub_1C3FB56A8(&qword_1EC091740, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV29.CallRecord(0);
  sub_1C3FB56A8(&qword_1EC091758, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C3FB6B0C();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FB44E4()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV29.CallRecord(0);
  sub_1C3FB56A8(&qword_1EC091758, type metadata accessor for CallHistorySchemaV29.Handle);
  sub_1C3FB6B0C();
  sub_1C4030FA0();
}

uint64_t sub_1C3FB45A0(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV29.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0917E0, &qword_1C4049450);
  sub_1C3FB56A8(&qword_1EC091758, type metadata accessor for CallHistorySchemaV29.Handle);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0917C0, &qword_1C40493C8);
  type metadata accessor for CallHistorySchemaV29.CallRecord(0);
  sub_1C3FB6B0C();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FB47BC(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 3);
  v3 = *a1;
  v4 = sub_1C4030AC0();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v5, v6);
}

uint64_t sub_1C3FB4888()
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

uint64_t sub_1C3FB4984()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40407B0;
  v1 = type metadata accessor for CallHistorySchemaV29.CallRecord(0);
  v2 = sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV29.Handle(0);
  v4 = sub_1C3FB56A8(&qword_1EC091758, type metadata accessor for CallHistorySchemaV29.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem(0);
  v6 = sub_1C3FB56A8(&qword_1EC091730, type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v8 = sub_1C3FB56A8(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

unint64_t sub_1C3FB4B40()
{
  result = qword_1EC091700;
  if (!qword_1EC091700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091700);
  }

  return result;
}

unint64_t sub_1C3FB4B94(uint64_t a1)
{
  result = sub_1C3FB4BBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3FB4BBC()
{
  result = qword_1EC091708;
  if (!qword_1EC091708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091708);
  }

  return result;
}

uint64_t sub_1C3FB4C84(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));
  sub_1C3EAE504(a1, v1 + 48);
  return swift_endAccess();
}

void (*sub_1C3FB4CDC(uint64_t *a1))(uint64_t *a1, char a2)
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

void sub_1C3FB4D6C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1C3F2C800(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 48));
    sub_1C3EAE504((v2 + 40), v3 + 48);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 48));
    sub_1C3EAE504(v2, v3 + 48);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1C3FB4E70()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FB4F28(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FB4FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3FB5034(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C3FB50C4;
}

uint64_t sub_1C3FB5128()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FB51E0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FB5278(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1C3FB52E0(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C3FB50C4;
}

void sub_1C3FB5370(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
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

uint64_t sub_1C3FB5488(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3FB56A8(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3FB5514()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FB55CC(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3FB56A8(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3FB563C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FB56A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3FB5B28(uint64_t a1)
{
  result = sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FB5B80(uint64_t a1)
{
  result = sub_1C3FB56A8(&qword_1EC091788, type metadata accessor for CallHistorySchemaV29.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FB5BD8()
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
  *(&v51 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091790, &qword_1C4049320);
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
  v20 = sub_1C3FB56A8(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  v49 = v20;
  *&v47 = v19;
  sub_1C4031060();
  v40 -= v6;
  v38 = "originatingBundleID";
  swift_getKeyPath();
  *(&v51 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091798, &qword_1C4049350);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0917A0, &unk_1C40493B0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C403DAB0;
  *(v26 + 32) = swift_getKeyPath();
  *(v25 + 32) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0917A8, &qword_1C40493C0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_1C4031090();
  *(&v48 + 1) = v27;
  v31 = v41;
  v49 = sub_1C3FB6A8C();
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

unint64_t sub_1C3FB6A8C()
{
  result = qword_1EC0917B0;
  if (!qword_1EC0917B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0917A8, &qword_1C40493C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0917B0);
  }

  return result;
}

uint64_t sub_1C3FB6AF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FB44E4();
}

unint64_t sub_1C3FB6B0C()
{
  result = qword_1EC0917B8;
  if (!qword_1EC0917B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0917C0, &qword_1C40493C8);
    sub_1C3FB56A8(&qword_1EC091780, type metadata accessor for CallHistorySchemaV29.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0917B8);
  }

  return result;
}

unint64_t sub_1C3FB6C0C()
{
  result = qword_1EC0917C8;
  if (!qword_1EC0917C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091798, &qword_1C4049350);
    sub_1C3FB56A8(&qword_1EC091758, type metadata accessor for CallHistorySchemaV29.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0917C8);
  }

  return result;
}

unint64_t sub_1C3FB6D0C()
{
  result = qword_1EC0917D0;
  if (!qword_1EC0917D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC091790, &qword_1C4049320);
    sub_1C3FB56A8(&qword_1EC091730, type metadata accessor for CallHistorySchemaV29.EmergencyMediaItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0917D0);
  }

  return result;
}

uint64_t sub_1C3FB6DC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FB233C();
}

uint64_t sub_1C3FB6E40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FB233C();
}

uint64_t sub_1C3FB6F18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FB233C();
}

uint64_t sub_1C3FB6FB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FB233C();
}

uint64_t sub_1C3FB7258()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FB233C();
}

uint64_t sub_1C3FB7420()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3FB1654();
}

uint64_t sub_1C3FB74D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FB233C();
}

uint64_t sub_1C3FB7554()
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

uint64_t sub_1C3FB76A8()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0917C0, &qword_1C40493C8);
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FB79C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FB39E4();
}

uint64_t sub_1C3FB79E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FB35FC();
}

uint64_t sub_1C3FB7A64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3FB7B78(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF40, &unk_1C403ED30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C3EF1A60(a1, &v10[-v6], &qword_1EC08EF40, &unk_1C403ED30);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v7, &qword_1EC08EF40, &unk_1C403ED30);
}

uint64_t sub_1C3FB7CE8(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3FB7DF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C3FB7F04@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3FB8028(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FB8114(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3FB8220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3FB82E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FB83F8(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3FB84D4()
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FB85E4()
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3FB86A0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C3EF1A60(a1, &v10[-v6], &qword_1EC08F130, &qword_1C4038450);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v7, &qword_1EC08F130, &qword_1C4038450);
}

uint64_t sub_1C3FB88A4(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v9[-v5];
  sub_1C3EF1A60(a1, &v9[-v5], &qword_1EC08F218, &qword_1C4041840);
  v12 = *a2;
  v7 = v12;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v6, &qword_1EC08F218, &qword_1C4041840);
}

double sub_1C3FB8A28@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FB8B34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FB8C08()
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FB8D14@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FB8E1C(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FB8EF0()
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FB8FEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FB90F8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FB91CC()
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FB92CC()
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3FB93A8@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, void (*a3)(void)@<X5>, void *a4@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  a3();
  sub_1C4030F80();

  *a4 = v8;
  return result;
}

uint64_t sub_1C3FB94DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FB95D4(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC0918A0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  a3();
  sub_1C4030F80();

  return v3;
}

uint64_t sub_1C3FB96FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  a5();
  sub_1C4030FA0();
}

uint64_t sub_1C3FB97CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091878, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV29_1.CallRecord(0);
  sub_1C3FBCA30(&qword_1EC091890, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C3FBDE94();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FB98EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091878, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FB99B8(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV29_1.CallRecord(0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091910, &qword_1C404A030);
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  *(v1 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 48));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  v4 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  v5 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 256;
  *(v1 + 21) = 1;
  v6 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v7 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v8 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v9 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 25) = 0;
  v10 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 26) = 0;
  v11 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906B0, &unk_1C403E190);
  sub_1C3F4DD50();
  sub_1C4030E10();

  *(v1 + 27) = 256;
  *(v1 + 29) = 1;
  v12 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 30) = 16843009;
  v13 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 34) = 16843009;
  *(v1 + 38) = 257;
  *(v1 + 40) = 1;
  v14 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 41) = 1;
  v15 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0918C8, &qword_1C4049F80);
  type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem(0);
  sub_1C3FBE094();
  sub_1C4030E00();

  v16 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0918D0, &qword_1C4049FB0);
  type metadata accessor for CallHistorySchemaV29_1.Handle(0);
  sub_1C3FBDF94();
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

uint64_t sub_1C3FBA070()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v1 = OBJC_IVAR____TtCO11CallHistory22CallHistorySchemaV29_110CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FBA13C()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3FBA22C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091850, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091868, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FBA33C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091850, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FBA414()
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091850, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091868, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FBA56C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091850, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091868, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C3F40EA8();
  sub_1C4030F90();
}

uint64_t sub_1C3FBA674(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C3EF1A60(a1, &v10[-v6], &qword_1EC08F218, &qword_1C4041840);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1C3FBCA30(&qword_1EC091850, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C4030A90();

  return sub_1C3EED388(v7, &qword_1EC08F218, &qword_1C4041840);
}

uint64_t sub_1C3FBA7C4()
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091850, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091868, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C3F40EA8();
  sub_1C4030F90();
}

uint64_t sub_1C3FBA8CC()
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091868, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C3F6A128();
  sub_1C4030FB0();
}

uint64_t sub_1C3FBA974@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091850, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091868, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FBAAB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091850, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FBAB7C()
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091850, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091868, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C3FBACB4()
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091868, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  sub_1C4030FC0();
}

uint64_t sub_1C3FBAD8C(__int128 *a1)
{
  type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091920, &unk_1C404A130);
  sub_1C3FBCA30(&qword_1EC091868, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  *(v1 + 18) = 1;
  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FBAF00()
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

double sub_1C3FBAFAC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091878, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091890, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FBB0BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091878, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FBB194()
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091878, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091890, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FBB29C@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091878, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091890, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FBB3A8(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091878, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FBB478()
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091878, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091890, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FBB57C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FBCA30(a4, a5);
  sub_1C4030FB0();
}

double sub_1C3FBB610@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091878, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091890, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FBB720(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091878, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FBB7F8()
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091878, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091890, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FBB900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FBCA30(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3FBB9A4()
{
  swift_getKeyPath();
  sub_1C3FBCA30(&qword_1EC091878, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV29_1.CallRecord(0);
  sub_1C3FBCA30(&qword_1EC091890, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C3FBDE94();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FBBABC()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV29_1.CallRecord(0);
  sub_1C3FBCA30(&qword_1EC091890, type metadata accessor for CallHistorySchemaV29_1.Handle);
  sub_1C3FBDE94();
  sub_1C4030FA0();
}

uint64_t sub_1C3FBBB78(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV29_1.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091918, &qword_1C404A0B0);
  sub_1C3FBCA30(&qword_1EC091890, type metadata accessor for CallHistorySchemaV29_1.Handle);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0918F8, &qword_1C404A028);
  type metadata accessor for CallHistorySchemaV29_1.CallRecord(0);
  sub_1C3FBDE94();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FBBDBC()
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

uint64_t sub_1C3FBBEB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40407B0;
  v1 = type metadata accessor for CallHistorySchemaV29_1.CallRecord(0);
  v2 = sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV29_1.Handle(0);
  v4 = sub_1C3FBCA30(&qword_1EC091890, type metadata accessor for CallHistorySchemaV29_1.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem(0);
  v6 = sub_1C3FBCA30(&qword_1EC091868, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v8 = sub_1C3FBCA30(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

unint64_t sub_1C3FBC074(uint64_t a1)
{
  result = sub_1C3FBC09C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3FBC09C()
{
  result = qword_1EC091840;
  if (!qword_1EC091840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091840);
  }

  return result;
}

void (*sub_1C3FBC11C(uint64_t *a1))(uint64_t *a1, char a2)
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

uint64_t sub_1C3FBC1F8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FBC2B0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FBC348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3FBC3BC(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C3FBC44C;
}

uint64_t sub_1C3FBC4B0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FBC568(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FBC600(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1C3FBC668(uint64_t *a1))(uint64_t *a1, char a2)
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
  return sub_1C3FBC44C;
}

void sub_1C3FBC6F8(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
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

uint64_t sub_1C3FBC810(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3FBCA30(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3FBC89C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FBC954(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3FBCA30(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3FBC9C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FBCA30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3FBCEB0(uint64_t a1)
{
  result = sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FBCF08(uint64_t a1)
{
  result = sub_1C3FBCA30(&qword_1EC0918C0, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3FBCF60()
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
  *(&v51 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0918C8, &qword_1C4049F80);
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
  v20 = sub_1C3FBCA30(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  v49 = v20;
  *&v47 = v19;
  sub_1C4031060();
  v40 -= v6;
  v38 = "originatingBundleID";
  swift_getKeyPath();
  *(&v51 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0918D0, &qword_1C4049FB0);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0918D8, &unk_1C404A010);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C40385D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C403DAB0;
  *(v26 + 32) = swift_getKeyPath();
  *(v25 + 32) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0918E0, &qword_1C404A020);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_1C4031090();
  *(&v48 + 1) = v27;
  v31 = v41;
  v49 = sub_1C3FBDE14();
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

unint64_t sub_1C3FBDE14()
{
  result = qword_1EC0918E8;
  if (!qword_1EC0918E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0918E0, &qword_1C404A020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0918E8);
  }

  return result;
}

uint64_t sub_1C3FBDE78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FBBABC();
}

unint64_t sub_1C3FBDE94()
{
  result = qword_1EC0918F0;
  if (!qword_1EC0918F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0918F8, &qword_1C404A028);
    sub_1C3FBCA30(&qword_1EC0918B8, type metadata accessor for CallHistorySchemaV29_1.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0918F0);
  }

  return result;
}

unint64_t sub_1C3FBDF94()
{
  result = qword_1EC091900;
  if (!qword_1EC091900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0918D0, &qword_1C4049FB0);
    sub_1C3FBCA30(&qword_1EC091890, type metadata accessor for CallHistorySchemaV29_1.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091900);
  }

  return result;
}

unint64_t sub_1C3FBE094()
{
  result = qword_1EC091908;
  if (!qword_1EC091908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0918C8, &qword_1C4049F80);
    sub_1C3FBCA30(&qword_1EC091868, type metadata accessor for CallHistorySchemaV29_1.EmergencyMediaItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091908);
  }

  return result;
}

uint64_t sub_1C3FBE148()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FB92CC();
}

uint64_t sub_1C3FBE1C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FB92CC();
}

uint64_t sub_1C3FBE2A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FB92CC();
}

uint64_t sub_1C3FBE338()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FB92CC();
}

uint64_t sub_1C3FBE5E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FB92CC();
}

uint64_t sub_1C3FBE7A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3FB85E4();
}

uint64_t sub_1C3FBE85C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FB92CC();
}

uint64_t sub_1C3FBE8DC()
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

uint64_t sub_1C3FBEA7C()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0918F8, &qword_1C404A028);
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3FBED9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FBACB4();
}

uint64_t sub_1C3FBEDB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3FBA8CC();
}

uint64_t sub_1C3FBEF0C@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3FBF030(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FBF11C(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3FBF228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3FBF2EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3FBF400(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3FBF4DC()
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3FBF5EC()
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3FBF75C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3FBF870(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C3FBF9D4(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3FBFAE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  a4();
  sub_1C4030FB0();
}

double sub_1C3FBFBA8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FBFCB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FBFD88()
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FBFE94@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FBFF9C(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FC0070()
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FC016C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FC0278(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FC034C()
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FC044C()
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3FC0528@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, void (*a3)(void)@<X5>, void *a4@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  a3();
  sub_1C4030F80();

  *a4 = v8;
  return result;
}

uint64_t sub_1C3FC065C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3FC0754(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919D8, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  a2(0);
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  a3();
  sub_1C4030F80();

  return v3;
}

uint64_t sub_1C3FC087C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  a5();
  sub_1C4030FA0();
}

uint64_t sub_1C3FC094C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919B0, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV30.CallRecord(0);
  sub_1C3FC3744(&qword_1EC0919C8, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C3FC4BA8();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FC0A6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919B0, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FC0B38(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV30.CallRecord(0);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091A48, &qword_1C404ACB0);
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  *(v1 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 48));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  v4 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  v5 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 256;
  *(v1 + 21) = 1;
  v6 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v7 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v8 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v9 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 25) = 0;
  v10 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 26) = 0;
  v11 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906B0, &unk_1C403E190);
  sub_1C3F4DD50();
  sub_1C4030E10();

  *(v1 + 27) = 256;
  *(v1 + 29) = 1;
  v12 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 30) = 16843009;
  v13 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 34) = 16843009;
  *(v1 + 38) = 257;
  *(v1 + 40) = 1;
  v14 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 41) = 1;
  v15 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091A00, &qword_1C404AC00);
  type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem(0);
  sub_1C3FC4DA8();
  sub_1C4030E00();

  v16 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091A08, &qword_1C404AC30);
  type metadata accessor for CallHistorySchemaV30.Handle(0);
  sub_1C3FC4CA8();
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

uint64_t sub_1C3FC11F0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV3010CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3FC12BC()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3FC13AC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC091988, type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919A0, type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FC14BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC091988, type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FC1594()
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC091988, type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919A0, type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FC169C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC091988, type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919A0, type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem);
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3FC17D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC091988, type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem);
  sub_1C4030A90();
}

uint64_t sub_1C3FC18A4()
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC091988, type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919A0, type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem);
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C3FC19DC()
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919A0, type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem);
  sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  sub_1C4030FC0();
}

uint64_t sub_1C3FC1AB4(__int128 *a1)
{
  type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091A58, &qword_1C404AD88);
  sub_1C3FC3744(&qword_1EC0919A0, type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem);
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

uint64_t sub_1C3FC1C14()
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

double sub_1C3FC1CC0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919B0, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919C8, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FC1DD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919B0, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FC1EA8()
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919B0, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919C8, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FC1FB0@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919B0, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919C8, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3FC20BC(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919B0, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FC218C()
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919B0, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919C8, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3FC2290(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FC3744(a4, a5);
  sub_1C4030FB0();
}

double sub_1C3FC2324@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919B0, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919C8, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3FC2434(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919B0, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3FC250C()
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919B0, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919C8, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3FC2614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3FC3744(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3FC26B8()
{
  swift_getKeyPath();
  sub_1C3FC3744(&qword_1EC0919B0, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV30.CallRecord(0);
  sub_1C3FC3744(&qword_1EC0919C8, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C3FC4BA8();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3FC27D0()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV30.CallRecord(0);
  sub_1C3FC3744(&qword_1EC0919C8, type metadata accessor for CallHistorySchemaV30.Handle);
  sub_1C3FC4BA8();
  sub_1C4030FA0();
}

uint64_t sub_1C3FC288C(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV30.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091A50, &qword_1C404AD30);
  sub_1C3FC3744(&qword_1EC0919C8, type metadata accessor for CallHistorySchemaV30.Handle);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC091A30, &qword_1C404ACA8);
  type metadata accessor for CallHistorySchemaV30.CallRecord(0);
  sub_1C3FC4BA8();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3FC2AD0()
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

uint64_t sub_1C3FC2BCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40407B0;
  v1 = type metadata accessor for CallHistorySchemaV30.CallRecord(0);
  v2 = sub_1C3FC3744(&qword_1EC0919F0, type metadata accessor for CallHistorySchemaV30.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV30.Handle(0);
  v4 = sub_1C3FC3744(&qword_1EC0919C8, type metadata accessor for CallHistorySchemaV30.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem(0);
  v6 = sub_1C3FC3744(&qword_1EC0919A0, type metadata accessor for CallHistorySchemaV30.EmergencyMediaItem);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v8 = sub_1C3FC3744(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

unint64_t sub_1C3FC2D88(uint64_t a1)
{
  result = sub_1C3FC2DB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3FC2DB0()
{
  result = qword_1EC091978;
  if (!qword_1EC091978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC091978);
  }

  return result;
}

void (*sub_1C3FC2E30(uint64_t *a1))(uint64_t *a1, char a2)
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

uint64_t sub_1C3FC2F0C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3FC2FC4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3FC305C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3FC30D0(uint64_t *a1))(uint64_t *a1, char a2)
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

uint64_t sub_1C3FC31C4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}