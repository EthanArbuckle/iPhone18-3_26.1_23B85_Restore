uint64_t sub_1A3340FAC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{

  result = a2(v4);
  *a1 = result;
  return result;
}

__n128 sub_1A3341094@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3344320(&qword_1EB0C13A8, type metadata accessor for ContactPosterScrollGeometryObserver);
  sub_1A34C99A0();

  swift_beginAccess();
  v4 = v3[2].n128_u8[0];
  result = v3[1];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1A334118C()
{
  swift_getKeyPath();
  sub_1A3344320(&qword_1EB0C13A8, type metadata accessor for ContactPosterScrollGeometryObserver);
  sub_1A34C99A0();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1A3341264(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  if ((*(v3 + 32) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *(v3 + 16) == *&a1 && *(v3 + 24) == *&a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3344320(&qword_1EB0C13A8, type metadata accessor for ContactPosterScrollGeometryObserver);
    sub_1A34C9990();
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v3 + 16) = *&a1;
  *(v3 + 24) = *&a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t sub_1A33413C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

void (*sub_1A334142C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC14ContactsUICore35ContactPosterScrollGeometryObserver___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A3344320(&qword_1EB0C13A8, type metadata accessor for ContactPosterScrollGeometryObserver);
  sub_1A34C99A0();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A34C99C0();

  v4[7] = sub_1A3341044();
  return sub_1A3341564;
}

__n128 sub_1A33415C0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3344320(&qword_1EB0C13A8, type metadata accessor for ContactPosterScrollGeometryObserver);
  sub_1A34C99A0();

  swift_beginAccess();
  v4 = *(v3 + 72);
  result = *(v3 + 40);
  v6 = *(v3 + 56);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_1A3341688(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1A3341790(v3);
}

__n128 sub_1A33416C8@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3344320(&qword_1EB0C13A8, type metadata accessor for ContactPosterScrollGeometryObserver);
  sub_1A34C99A0();

  swift_beginAccess();
  v3 = *(v1 + 72);
  result = *(v1 + 40);
  v5 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1A3341790(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(v1 + 72) & 1) == 0)
  {
    if (*(a1 + 32))
    {
      goto LABEL_7;
    }

    result = sub_1A34CA450();
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v4 = *(a1 + 16);
    *(v1 + 40) = *a1;
    *(v1 + 56) = v4;
    *(v1 + 72) = *(a1 + 32);
    return result;
  }

  if (*(a1 + 32))
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3344320(&qword_1EB0C13A8, type metadata accessor for ContactPosterScrollGeometryObserver);
  sub_1A34C9990();
}

__n128 sub_1A3341904()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = *v1;
  v4 = *(v1 + 16);
  *(v2 + 72) = *(v1 + 32);
  *(v2 + 56) = v4;
  *(v2 + 40) = result;
  return result;
}

void (*sub_1A3341964(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC14ContactsUICore35ContactPosterScrollGeometryObserver___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A3344320(&qword_1EB0C13A8, type metadata accessor for ContactPosterScrollGeometryObserver);
  sub_1A34C99A0();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A34C99C0();

  v4[7] = sub_1A3341570();
  return sub_1A3341A9C;
}

void sub_1A3341AA8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A34C99B0();

  free(v1);
}

uint64_t ContactPosterScrollGeometryObserver.__allocating_init(contentOffset:contentInsets:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = swift_allocObject();
  ContactPosterScrollGeometryObserver.init(contentOffset:contentInsets:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t ContactPosterScrollGeometryObserver.init(contentOffset:contentInsets:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 1;
  sub_1A34C99D0();
  sub_1A3341264(*&a1, *&a2, 0);
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  swift_beginAccess();
  if ((*(v6 + 72) & 1) != 0 || (sub_1A34CA450() & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3344320(&qword_1EB0C13A8, type metadata accessor for ContactPosterScrollGeometryObserver);
    sub_1A34C9990();
  }

  else
  {
    *(v6 + 40) = v15;
    *(v6 + 56) = v16;
    *(v6 + 72) = 0;
  }

  return v6;
}

uint64_t ContactPosterScrollGeometryObserver.deinit()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore35ContactPosterScrollGeometryObserver___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ContactPosterScrollGeometryObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore35ContactPosterScrollGeometryObserver___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3341E80(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for ContactPosterScrollGeometryObserver(0);

  return sub_1A34CA500();
}

uint64_t sub_1A3341F04()
{
  type metadata accessor for ContactPosterScrollGeometryObserver(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 1;
  sub_1A34C99D0();
  return v0;
}

uint64_t sub_1A3341FD0()
{
  sub_1A34C9010();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8138);
  sub_1A34CC750();
}

void ContactPosterView.init(contact:content:)(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContactPosterView();
  sub_1A3341E80(sub_1A3341F04, 0);
  v7 = a3 + v6[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6090);
  sub_1A34CC730();
  *v7 = v10;
  *(v7 + 16) = v11;
  *(v7 + 32) = v12;
  *(v7 + 40) = v13;
  v8 = v6[12];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA5E0);
  swift_storeEnumTagMultiPayload();
  *(a3 + v6[9]) = a1;
  v9 = a1;
  a2();
}

uint64_t ContactPosterView.init(contact:actionsProvider:content:)@<X0>(void *a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  ContactPosterView.init(contact:content:)(a1, a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t ContactPosterView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C80B0);
  v37 = a1;
  v3 = *(a1 + 16);
  v35 = *(a1 + 24);
  v44 = v3;
  v45 = &type metadata for ContactPosterScrollGeometry;
  v46 = v35;
  v47 = sub_1A33442C0();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C80B8);
  sub_1A34CAC30();
  sub_1A34CB970();
  sub_1A34CAC30();
  swift_getTupleTypeMetadata2();
  sub_1A34CCDA0();
  swift_getWitnessTable();
  v4 = sub_1A34CC8C0();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - v5;
  v7 = type metadata accessor for ContactPosterScrollGeometryObserver(255);
  WitnessTable = swift_getWitnessTable();
  v29 = sub_1A3344320(&qword_1EB0C13A8, type metadata accessor for ContactPosterScrollGeometryObserver);
  v44 = v4;
  v45 = v7;
  v46 = WitnessTable;
  v47 = v29;
  v31 = MEMORY[0x1E69811C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = &v27 - v9;
  v11 = sub_1A34CAC30();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v27 - v15;
  sub_1A34CCC70();
  v39 = v3;
  v40 = v35;
  v41 = v36;
  sub_1A34CC8B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8120);
  sub_1A34CA510();
  v16 = swift_checkMetadataState();
  v17 = WitnessTable;
  v18 = v29;
  sub_1A34CBED0();

  (*(v34 + 8))(v6, v4);
  v44 = v4;
  v45 = v16;
  v46 = v17;
  v47 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v28;
  v21 = OpaqueTypeMetadata2;
  sub_1A34CC1F0();
  (*(v33 + 8))(v10, v21);
  v22 = sub_1A3344320(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  v42 = OpaqueTypeConformance2;
  v43 = v22;
  swift_getWitnessTable();
  v23 = *(v12 + 16);
  v24 = v32;
  v23(v32, v20, v11);
  v25 = *(v12 + 8);
  v25(v20, v11);
  v23(v38, v24, v11);
  return (v25)(v24, v11);
}

uint64_t sub_1A3342738@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a4;
  v62 = sub_1A33442C0();
  *&v87 = a2;
  *(&v87 + 1) = &type metadata for ContactPosterScrollGeometry;
  *&v88 = a3;
  *(&v88 + 1) = v62;
  v75 = a3;
  v68 = MEMORY[0x1E697D340];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v60 = &v53 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C80B8);
  v67 = sub_1A34CAC30();
  v71 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v61 = &v53 - v8;
  sub_1A34CB970();
  v73 = sub_1A34CAC30();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v64 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v53 - v11;
  v12 = a2;
  v13 = type metadata accessor for ContactPosterView();
  v14 = *(v13 - 8);
  v56 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8128);
  MEMORY[0x1EEE9AC00](v59);
  v18 = (&v53 - v17);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80B0);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v76 = &v53 - v21;
  v22 = *(v13 + 36);
  v57 = a1;
  v54 = *(a1 + v22);
  v23 = v54;
  v24 = *(type metadata accessor for ContactPosterBackgroundView(0) + 20);
  *(v18 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA5E0);
  swift_storeEnumTagMultiPayload();
  *v18 = v23;
  v25 = v14;
  v58 = *(v14 + 16);
  v53 = v13;
  v58(v16, a1, v13);
  v26 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v27 = swift_allocObject();
  v28 = v75;
  *(v27 + 16) = v12;
  *(v27 + 24) = v28;
  v55 = *(v25 + 32);
  v55(v27 + v26, v16, v13);
  v29 = (v18 + *(v59 + 36));
  *v29 = sub_1A3345678;
  v29[1] = v27;
  sub_1A3345704();
  v30 = v54;
  sub_1A34CC1F0();
  sub_1A3288FDC(v18, &qword_1EB0C8128);
  v31 = v53;
  v58(v16, v57, v53);
  v32 = swift_allocObject();
  v33 = v75;
  *(v32 + 16) = v12;
  *(v32 + 24) = v33;
  v55(v32 + v26, v16, v31);
  v34 = v62;
  v35 = v60;
  sub_1A34CC1D0();

  swift_getKeyPath();
  sub_1A3341F68();
  v85[0] = v87;
  v85[1] = v88;
  v86 = v89;
  v81 = v12;
  v82 = &type metadata for ContactPosterScrollGeometry;
  v83 = v33;
  v84 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v61;
  v38 = OpaqueTypeMetadata2;
  sub_1A34CBEE0();

  (*(v70 + 8))(v35, v38);
  v39 = sub_1A3284D0C(&unk_1EB0C06C0, &qword_1EB0C80B8);
  v79 = OpaqueTypeConformance2;
  v80 = v39;
  v40 = v67;
  WitnessTable = swift_getWitnessTable();
  v42 = v64;
  sub_1A34CC1F0();
  (*(v71 + 8))(v37, v40);
  v43 = sub_1A3344320(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  v77 = WitnessTable;
  v78 = v43;
  v44 = v73;
  v45 = swift_getWitnessTable();
  v46 = v72;
  v47 = *(v72 + 16);
  v48 = v69;
  v47(v69, v42, v44);
  v49 = *(v46 + 8);
  v49(v42, v44);
  v50 = v76;
  v51 = v63;
  sub_1A328D790(v76, v63, &qword_1EB0C80B0);
  *&v87 = v51;
  v47(v42, v48, v44);
  *(&v87 + 1) = v42;
  *&v85[0] = v66;
  *(&v85[0] + 1) = v44;
  v81 = sub_1A3345ADC();
  v82 = v45;
  sub_1A33D22C4(&v87, 2uLL, v85);
  v49(v48, v44);
  sub_1A3288FDC(v50, &qword_1EB0C80B0);
  v49(v42, v44);
  return sub_1A3288FDC(v51, &qword_1EB0C80B0);
}

uint64_t ContactPosterBackgroundView.init(contact:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for ContactPosterBackgroundView(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA5E0);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t sub_1A33430BC(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
  }

  type metadata accessor for ContactPosterView();
  return sub_1A3341FD0();
}

uint64_t sub_1A334314C@<X0>(void *a1@<X8>)
{
  sub_1A34CAA50();
  v3 = v2;
  v5 = v4;
  result = sub_1A34CAA40();
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = v10;
  return result;
}

uint64_t sub_1A3343194(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  type metadata accessor for ContactPosterView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8120);
  sub_1A34CA510();
  sub_1A3341264(v2, v3, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8120);
  sub_1A34CA510();
  v8 = v11;
  *&v12 = v4;
  *(&v12 + 1) = v5;
  *&v13 = v6;
  *(&v13 + 1) = v7;
  swift_beginAccess();
  if ((*(v8 + 72) & 1) != 0 || (sub_1A34CA450() & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3344320(&qword_1EB0C13A8, type metadata accessor for ContactPosterScrollGeometryObserver);
    sub_1A34C9990();
  }

  else
  {
    *(v8 + 40) = v12;
    *(v8 + 56) = v13;
    *(v8 + 72) = 0;
  }
}

uint64_t sub_1A33433A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34CB0B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA5E0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ContactPosterBackgroundView(0);
  sub_1A328D790(v1 + *(v10 + 20), v9, &unk_1EB0CA5E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A3345608(v9, a1);
  }

  sub_1A34CD650();
  v12 = sub_1A34CBA30();
  sub_1A34CA210();

  sub_1A34CB0A0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ContactPosterBackgroundView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80C0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v7 - v2);
  *v3 = sub_1A34CCC70();
  v3[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80C8);
  sub_1A33436A4(v0, v3 + *(v5 + 44));
  sub_1A3284D0C(&qword_1EB0C0440, &qword_1EB0C80C0);
  sub_1A34CC1F0();
  return sub_1A3288FDC(v3, &qword_1EB0C80C0);
}

uint64_t sub_1A33436A4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v77 = a2;
  v3 = sub_1A34CB5F0();
  v69 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80F8) - 8;
  MEMORY[0x1EEE9AC00](v70);
  v6 = &v64 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80D8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v64 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9B90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v64 - v14;
  v15 = type metadata accessor for SensitiveContentBlur(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8100);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8108);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v76 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v64 - v23;
  v24 = type metadata accessor for ContactCardHeroView(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8110);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v72 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v64 - v30;
  v32 = *a1;
  v33 = v24[5];
  *&v26[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  swift_storeEnumTagMultiPayload();
  v34 = v24[6];
  *&v26[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA5E0);
  swift_storeEnumTagMultiPayload();
  v35 = &v26[v24[7]];
  *v35 = vdupq_n_s64(0x3FD6666666666666uLL);
  *(v35 + 1) = xmmword_1A34E7710;
  *(v35 + 2) = vdupq_n_s64(0x3FDB851EB851EB85uLL);
  *(v35 + 3) = xmmword_1A34E7720;
  *(v35 + 8) = 0x3FE0A3D70A3D70A4;
  v36 = swift_allocObject();
  *(v36 + 16) = v32;
  *v26 = sub_1A3345408;
  *(v26 + 1) = v36;
  v26[16] = 0;
  sub_1A3344320(&qword_1EB0C2408, type metadata accessor for ContactCardHeroView);
  v37 = v32;
  v71 = v31;
  sub_1A34CC1F0();
  sub_1A33454EC(v26, type metadata accessor for ContactCardHeroView);
  v38 = *(v16 + 28);
  sub_1A34CA500();
  *v18 = v37;
  *(swift_allocObject() + 16) = v37;
  v39 = v37;
  v40 = v68;
  v41 = v78;
  sub_1A34CA500();
  v42 = v18 + v38;
  v43 = v79;
  v44 = v69;
  sub_1A3345418(v40, v42);
  sub_1A33433A4(v43);
  (*(v44 + 104))(v41, *MEMORY[0x1E697FF38], v3);
  (*(v44 + 56))(v41, 0, 1, v3);
  v45 = *(v70 + 56);
  sub_1A328D790(v43, v6, &qword_1EB0C80D8);
  sub_1A328D790(v41, &v6[v45], &qword_1EB0C80D8);
  v46 = *(v44 + 48);
  if (v46(v6, 1, v3) == 1)
  {
    sub_1A3288FDC(v41, &qword_1EB0C80D8);
    sub_1A3288FDC(v43, &qword_1EB0C80D8);
    if (v46(&v6[v45], 1, v3) == 1)
    {
      sub_1A3288FDC(v6, &qword_1EB0C80D8);
LABEL_9:
      v48 = sub_1A34CBA90();
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v47 = v66;
  sub_1A328D790(v6, v66, &qword_1EB0C80D8);
  if (v46(&v6[v45], 1, v3) == 1)
  {
    sub_1A3288FDC(v78, &qword_1EB0C80D8);
    sub_1A3288FDC(v79, &qword_1EB0C80D8);
    (*(v44 + 8))(v47, v3);
LABEL_6:
    sub_1A3288FDC(v6, &qword_1EB0C80F8);
    goto LABEL_7;
  }

  v49 = &v6[v45];
  v50 = v65;
  (*(v44 + 32))(v65, v49, v3);
  sub_1A3344320(&qword_1EB0C0720, MEMORY[0x1E697FF50]);
  v51 = sub_1A34CD040();
  v52 = *(v44 + 8);
  v52(v50, v3);
  sub_1A3288FDC(v78, &qword_1EB0C80D8);
  sub_1A3288FDC(v79, &qword_1EB0C80D8);
  v52(v47, v3);
  sub_1A3288FDC(v6, &qword_1EB0C80D8);
  if (v51)
  {
    goto LABEL_9;
  }

LABEL_7:
  v48 = sub_1A34CBAD0();
LABEL_10:
  v53 = v48;
  v54 = sub_1A34CAC60();
  v55 = v73;
  sub_1A3345488(v18, v73);
  v56 = v55 + *(v74 + 36);
  *v56 = v54;
  *(v56 + 8) = v53;
  sub_1A33454EC(v18, type metadata accessor for SensitiveContentBlur);
  sub_1A334554C();
  v57 = v75;
  sub_1A34CC1F0();
  sub_1A3288FDC(v55, &qword_1EB0C8100);
  v59 = v71;
  v58 = v72;
  sub_1A328D790(v71, v72, &qword_1EB0C8110);
  v60 = v76;
  sub_1A328D790(v57, v76, &qword_1EB0C8108);
  v61 = v77;
  sub_1A328D790(v58, v77, &qword_1EB0C8110);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8118);
  sub_1A328D790(v60, v61 + *(v62 + 48), &qword_1EB0C8108);
  sub_1A3288FDC(v57, &qword_1EB0C8108);
  sub_1A3288FDC(v59, &qword_1EB0C8110);
  sub_1A3288FDC(v60, &qword_1EB0C8108);
  return sub_1A3288FDC(v58, &qword_1EB0C8110);
}

uint64_t sub_1A33440D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80C0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v7 - v2);
  *v3 = sub_1A34CCC70();
  v3[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80C8);
  sub_1A33436A4(v0, v3 + *(v5 + 44));
  sub_1A3284D0C(&qword_1EB0C0440, &qword_1EB0C80C0);
  sub_1A34CC1F0();
  return sub_1A3288FDC(v3, &qword_1EB0C80C0);
}

uint64_t sub_1A3344218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A328D790(a1, &v5 - v3, &qword_1EB0C80D8);
  return sub_1A34CAF90();
}

unint64_t sub_1A33442C0()
{
  result = qword_1EB0C1A78;
  if (!qword_1EB0C1A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1A78);
  }

  return result;
}

uint64_t sub_1A3344320(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3344404(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3344424(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1A334452C()
{
  result = sub_1A34C99E0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ContactPosterScrollGeometryObserver.contentInsets.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 184);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

void sub_1A3344728()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A31EE0D8();
    if (v1 <= 0x3F)
    {
      sub_1A3344F68();
      if (v2 <= 0x3F)
      {
        sub_1A3344FC0(319, &unk_1EB0C0558, &qword_1EB0C6090, &unk_1A34E7AB0, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1A3344FC0(319, &qword_1EB0C2C10, &qword_1EB0C80D8, &unk_1A34E7AB8, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A3344850(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v29 = *(a3 + 16);
  v5 = *(v29 - 8);
  v6 = *(v5 + 84);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80D0);
  v7 = *(v28 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_1A34CB5F0() - 8);
  v12 = *(v11 + 64);
  v13 = *(v5 + 64);
  if (!*(v11 + 84))
  {
    ++v12;
  }

  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v7 + 80) & 0xF8 | 7;
  if (a2 <= v10)
  {
    goto LABEL_33;
  }

  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = v12 + ((((*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v15 + ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + 56) & ~v15) + 1;
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_14;
  }

  v20 = ((a2 - v10 + ~(-1 << v17)) >> v17) + 1;
  if (HIWORD(v20))
  {
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v20 <= 0xFF)
    {
      if (v20 < 2)
      {
        goto LABEL_33;
      }

LABEL_14:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_33;
      }

LABEL_22:
      v21 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v21 = 0;
      }

      if (v16)
      {
        if (v16 > 3)
        {
          LODWORD(v16) = 4;
        }

        if (v16 > 2)
        {
          if (v16 == 3)
          {
            LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v16) = *a1;
          }
        }

        else if (v16 == 1)
        {
          LODWORD(v16) = *a1;
        }

        else
        {
          LODWORD(v16) = *a1;
        }
      }

      return v10 + (v16 | v21) + 1;
    }

    v18 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_22;
    }
  }

LABEL_33:
  if (v6 == v10)
  {
    v22 = v29;
    v23 = *(v5 + 48);
    v24 = a1;
    v25 = v6;
LABEL_40:

    return v23(v24, v25, v22);
  }

  v26 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v23 = *(v7 + 48);
    v24 = (v26 + v14 + 8) & ~v14;
    v25 = v8;
    v22 = v28;
    goto LABEL_40;
  }

  v27 = *v26;
  if (v27 >= 0xFFFFFFFF)
  {
    LODWORD(v27) = -1;
  }

  return (v27 + 1);
}

void sub_1A3344B7C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v37 = *(a4 + 16);
  v6 = *(v37 - 8);
  v36 = v6;
  v7 = *(v6 + 84);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80D0);
  v8 = *(v35 - 8);
  v34 = *(v8 + 84);
  if (v34 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v8 + 84);
  }

  if (v7 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(sub_1A34CB5F0() - 8);
  v13 = *(v12 + 64);
  v14 = *(v6 + 64);
  v15 = *(v8 + 80) & 0xF8 | 7;
  v16 = (*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v12 + 80) & 0xF8 | 7;
  v18 = (v16 + v17 + ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15) + 56) & ~v17;
  if (!*(v12 + 84))
  {
    ++v13;
  }

  if (v13 <= 8)
  {
    v13 = 8;
  }

  v19 = v13 + v18 + 1;
  if (a3 <= v11)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v11 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v11 < a2)
  {
    v21 = ~v11 + a2;
    if (v19 >= 4)
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_21;
      }

      goto LABEL_59;
    }

    v22 = (v21 >> (8 * v19)) + 1;
    if (v19)
    {
      v25 = v21 & ~(-1 << (8 * v19));
      bzero(a1, v19);
      if (v19 != 3)
      {
        if (v19 == 2)
        {
          *a1 = v25;
          if (v20 > 1)
          {
            goto LABEL_21;
          }
        }

        else
        {
          *a1 = v21;
          if (v20 > 1)
          {
LABEL_21:
            if (v20 == 2)
            {
              *&a1[v19] = v22;
            }

            else
            {
              *&a1[v19] = v22;
            }

            return;
          }
        }

LABEL_59:
        if (v20)
        {
          a1[v19] = v22;
        }

        return;
      }

      *a1 = v25;
      a1[2] = BYTE2(v25);
    }

    if (v20 > 1)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *&a1[v19] = 0;
  }

  else if (v20)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v7 == v11)
  {
    v26 = v37;
    v27 = *(v36 + 56);
    v28 = a1;
    v29 = a2;
    v30 = v7;
LABEL_44:

    v27(v28, v29, v30, v26);
    return;
  }

  v31 = (&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
  if ((v10 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v32 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v32 = a2 - 1;
    }

    *v31 = v32;
    return;
  }

  v28 = ((v31 + v15 + 8) & ~v15);
  if (v9 >= a2)
  {
    v27 = *(v8 + 56);
    v29 = a2;
    v30 = v34;
    v26 = v35;
    goto LABEL_44;
  }

  if (v16 != -8)
  {
    v33 = ((v31 + v15 + 8) & ~v15);
    bzero(v28, (v16 + 8));
    *v33 = ~v9 + a2;
  }
}

void sub_1A3344F68()
{
  if (!qword_1EB0C11F0)
  {
    type metadata accessor for ContactPosterScrollGeometryObserver(255);
    v0 = sub_1A34CA530();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C11F0);
    }
  }
}

void sub_1A3344FC0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A334504C()
{
  sub_1A31EE0D8();
  if (v0 <= 0x3F)
  {
    sub_1A3344FC0(319, &qword_1EB0C2C10, &qword_1EB0C80D8, &unk_1A34E7AB8, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A33450FC()
{
  result = qword_1EB0C0ED0;
  if (!qword_1EB0C0ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C80A8);
    sub_1A3284D0C(&qword_1EB0C0758, &qword_1EB0C80A0);
    sub_1A3284D0C(&unk_1EB0C06F0, &qword_1EB0C80E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0ED0);
  }

  return result;
}

unint64_t sub_1A33451E0()
{
  result = qword_1EB0C0CB0;
  if (!qword_1EB0C0CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C80F0);
    sub_1A3284D0C(&qword_1EB0C0440, &qword_1EB0C80C0);
    sub_1A3344320(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0CB0);
  }

  return result;
}

unint64_t sub_1A33452F8()
{
  result = qword_1EB0C1FC0;
  if (!qword_1EB0C1FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C6090);
    sub_1A334537C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1FC0);
  }

  return result;
}

unint64_t sub_1A334537C()
{
  result = qword_1EB0C1FC8;
  if (!qword_1EB0C1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1FC8);
  }

  return result;
}

uint64_t sub_1A3345418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9B90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3345488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentBlur(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33454EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A334554C()
{
  result = qword_1EB0C0FA8;
  if (!qword_1EB0C0FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8100);
    sub_1A3344320(&unk_1EB0C22F0, type metadata accessor for SensitiveContentBlur);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0FA8);
  }

  return result;
}

uint64_t sub_1A3345608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3345678(uint64_t a1)
{
  type metadata accessor for ContactPosterView();

  return sub_1A33430BC(a1);
}

unint64_t sub_1A3345704()
{
  result = qword_1EB0C0F08;
  if (!qword_1EB0C0F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8128);
    sub_1A3344320(&unk_1EB0C1A90, type metadata accessor for ContactPosterBackgroundView);
    sub_1A33457C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F08);
  }

  return result;
}

unint64_t sub_1A33457C0()
{
  result = qword_1EB0C1390;
  if (!qword_1EB0C1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1390);
  }

  return result;
}

uint64_t objectdestroy_69Tm_0()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ContactPosterView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  v4 = v3 + v2[12];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80D0);
  (*(*(v5 - 8) + 8))(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8130);

  v6 = v2[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA5E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A34CB5F0();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3345A40(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for ContactPosterView();

  return sub_1A3343194(a1, a2);
}

unint64_t sub_1A3345ADC()
{
  result = qword_1EB0C0C38;
  if (!qword_1EB0C0C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C80B0);
    sub_1A3345704();
    sub_1A3344320(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0C38);
  }

  return result;
}

uint64_t sub_1A3345B98@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14ContactsUICore28ContactCardViewConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A3345C24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1A3345C6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3345CCC()
{
  v1 = *(v0 + 16);
  v35[0] = *v0;
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v35[1] = v1;
  v35[2] = v2;
  v35[3] = v3;
  v36 = *(v0 + 64);
  v4 = *&v35[0];
  v6 = sub_1A3347D98();
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v8 = v5;
    v34 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5748);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A34DAA10;
    if (qword_1EB0C4A30 != -1)
    {
      goto LABEL_37;
    }

    while (1)
    {
      v10 = qword_1EB0EDE68;
      *(inited + 56) = &type metadata for ContactCardGroupHeaderItem;
      *(inited + 64) = &protocol witness table for ContactCardGroupHeaderItem;
      v11 = swift_allocObject();
      *(inited + 32) = v11;
      *(v11 + 16) = v6;
      *(v11 + 24) = v8;
      *(v11 + 32) = v10;
      *(v11 + 56) = 0u;
      *(v11 + 40) = 0u;
      *(v11 + 72) = 1;

      sub_1A33B94AC(inited);
      if (qword_1EB0C21B8 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
      v6 = sub_1A34CD350();
      v12 = [v4 areKeysAvailable_];

      if (!v12)
      {
        return v34;
      }

      if (qword_1EB0C21C0 != -1)
      {
        swift_once();
      }

      v13 = qword_1EB0ED400;
      inited = *(qword_1EB0ED400 + 16);
      if (inited)
      {
        v14 = 0;
        v8 = 0;
        v4 = MEMORY[0x1E69E7CC0];
        while (v14 < *(v13 + 16))
        {
          v6 = *(v13 + 32 + 8 * v14);
          v33 = v6;

          sub_1A334842C(&v33, v35, v32);

          if (*&v32[8])
          {
            v31 = *&v32[8];
            v16 = *v32;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_1A3298C90(0, v4[2] + 1, 1, v4);
            }

            v18 = v4[2];
            v17 = v4[3];
            v6 = (v18 + 1);
            v19 = v31;
            if (v18 >= v17 >> 1)
            {
              v20 = sub_1A3298C90((v17 > 1), v18 + 1, 1, v4);
              v19 = v31;
              v4 = v20;
            }

            v4[2] = v6;
            v15 = &v4[3 * v18];
            v15[4] = v16;
            *(v15 + 5) = v19;
          }

          if (inited == ++v14)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
      }

      else
      {
        v4 = MEMORY[0x1E69E7CC0];
LABEL_19:
        v21 = v4[2];
        if (!v21)
        {
          v8 = MEMORY[0x1E69E7CC0];
LABEL_32:

          sub_1A33B94AC(v8);
          return v34;
        }

        v22 = 0;
        v8 = MEMORY[0x1E69E7CC0];
        v23 = v4 + 6;
        v6 = &unk_1F1621CE0;
        while (v22 < v4[2])
        {
          v25 = *(v23 - 2);
          inited = *(v23 - 1);
          v26 = HIBYTE(inited) & 0xF;
          if ((inited & 0x2000000000000000) == 0)
          {
            v26 = v25 & 0xFFFFFFFFFFFFLL;
          }

          if (v26)
          {
            v27 = *v23;
            v28 = swift_allocObject();
            *(v28 + 16) = v25;
            *(v28 + 24) = inited;
            *(v28 + 32) = v27;
            *(v28 + 40) = 0u;
            *(v28 + 56) = 0u;
            *(v28 + 72) = 1;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_1A3298B70(0, *(v8 + 2) + 1, 1, v8);
            }

            v30 = *(v8 + 2);
            v29 = *(v8 + 3);
            inited = v30 + 1;
            if (v30 >= v29 >> 1)
            {
              v8 = sub_1A3298B70((v29 > 1), v30 + 1, 1, v8);
            }

            *(v8 + 2) = inited;
            v24 = &v8[40 * v30];
            *(v24 + 4) = v28;
            *(v24 + 40) = *v32;
            *(v24 + 7) = &type metadata for ContactCardGroupHeaderItem;
            *(v24 + 8) = &protocol witness table for ContactCardGroupHeaderItem;
          }

          ++v22;
          v23 += 3;
          if (v21 == v22)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_37:
      swift_once();
    }
  }

  return result;
}

unint64_t sub_1A334610C(unint64_t isUniquelyReferenced_nonNull_native)
{
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_30;
  }

  v1 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v19 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v3 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x1E69E7CC0];
    while (v19)
    {
      v5 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = MEMORY[0x1A58EF310](v2);
      v6 = isUniquelyReferenced_nonNull_native;
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      sub_1A3346304(v6);
      v9 = v8;

      v10 = *(v9 + 16);
      v11 = *(v4 + 16);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v12 <= *(v4 + 24) >> 1)
      {
        if (*(v9 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v11 <= v12)
        {
          v13 = v11 + v10;
        }

        else
        {
          v13 = v11;
        }

        isUniquelyReferenced_nonNull_native = sub_1A3298B70(isUniquelyReferenced_nonNull_native, v13, 1, v4);
        v4 = isUniquelyReferenced_nonNull_native;
        if (*(v9 + 16))
        {
LABEL_18:
          if ((*(v4 + 24) >> 1) - *(v4 + 16) < v10)
          {
            goto LABEL_28;
          }

          swift_arrayInitWithCopy();

          if (v10)
          {
            v14 = *(v4 + 16);
            v15 = __OFADD__(v14, v10);
            v16 = v14 + v10;
            if (v15)
            {
              goto LABEL_29;
            }

            *(v4 + 16) = v16;
          }

          goto LABEL_5;
        }
      }

      if (v10)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v2;
      isUniquelyReferenced_nonNull_native = v5;
      if (v7 == v1)
      {
        return v4;
      }
    }

    if (v2 >= *(v3 + 16))
    {
      goto LABEL_25;
    }

    v5 = isUniquelyReferenced_nonNull_native;
    v6 = *(isUniquelyReferenced_nonNull_native + 8 * v2 + 32);
    isUniquelyReferenced_nonNull_native = sub_1A34C9010();
    v7 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v17 = isUniquelyReferenced_nonNull_native;
    v1 = sub_1A34CD9B0();
    isUniquelyReferenced_nonNull_native = v17;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1A3346304(uint64_t a1)
{
  v3 = v1[3];
  v39 = v1[2];
  v40 = v3;
  v41 = *(v1 + 8);
  v4 = v1[1];
  v37 = *v1;
  v38 = v4;
  *&v34 = swift_getKeyPath();
  *&v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8140);
  v5 = sub_1A34CD040();

  if (v5)
  {
    sub_1A3346930();
    return;
  }

  *&v34 = swift_getKeyPath();
  *&v31 = a1;
  v6 = sub_1A34CD040();

  if (v6)
  {
    sub_1A3346C10();
    return;
  }

  *&v34 = swift_getKeyPath();
  *&v31 = a1;
  v7 = sub_1A34CD040();

  if (v7)
  {
    sub_1A3346EF0();
    return;
  }

  *&v34 = swift_getKeyPath();
  *&v31 = a1;
  v8 = sub_1A34CD040();

  if (v8)
  {
    v9 = MEMORY[0x1E695C418];
    v10 = &selRef_urlAddresses;
    v11 = sub_1A34345BC;
LABEL_15:
    sub_1A33471B8(v9, v10, v11);
    return;
  }

  *&v34 = swift_getKeyPath();
  *&v31 = a1;
  v12 = sub_1A34CD040();

  if (v12)
  {
    v9 = MEMORY[0x1E695C1F0];
    v10 = &selRef_dates;
    v11 = sub_1A3434A14;
    goto LABEL_15;
  }

  *&v34 = swift_getKeyPath();
  *&v31 = a1;
  v13 = sub_1A34CD040();

  if (v13)
  {
    v9 = MEMORY[0x1E695C3A8];
    v10 = &selRef_contactRelations;
    v11 = sub_1A3434E50;
    goto LABEL_15;
  }

  *&v34 = swift_getKeyPath();
  *&v31 = a1;
  v14 = sub_1A34CD040();

  if (v14)
  {
    v9 = MEMORY[0x1E695C3D0];
    v10 = &selRef_socialProfiles;
    v11 = sub_1A3435274;
    goto LABEL_15;
  }

  *&v34 = swift_getKeyPath();
  *&v31 = a1;
  v15 = sub_1A34CD040();

  if (v15)
  {
    sub_1A3347430();
    return;
  }

  *&v34 = swift_getKeyPath();
  *&v31 = a1;
  v16 = sub_1A34CD040();

  if (v16 & 1) != 0 || (*&v34 = swift_getKeyPath(), *&v31 = a1, v17 = sub_1A34CD040(), , (v17))
  {
    KeyPath = swift_getKeyPath();
    sub_1A33476BC(KeyPath, &v31);
    goto LABEL_21;
  }

  *&v34 = swift_getKeyPath();
  *&v31 = a1;
  v22 = sub_1A34CD040();

  if (v22)
  {
    sub_1A33479C8();
    return;
  }

  *&v34 = swift_getKeyPath();
  *&v31 = a1;
  v23 = sub_1A34CD040();

  if (v23 & 1) != 0 || (*&v34 = swift_getKeyPath(), *&v31 = a1, v24 = sub_1A34CD040(), , (v24))
  {
    v25 = swift_getKeyPath();
    sub_1A3347B58(v25, &v31);
LABEL_21:

    if (*(&v32 + 1))
    {
      v34 = v31;
      v35 = v32;
      v36 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5748);
      v19 = swift_allocObject();
      v20 = v34;
      v21 = v35;
      *(v19 + 16) = xmmword_1A34DAA10;
      *(v19 + 32) = v20;
      *(v19 + 48) = v21;
      *(v19 + 64) = v36;
    }

    else
    {
      sub_1A3288FDC(&v31, &unk_1EB0C8150);
    }

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8148);
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    sub_1A34C9010();
    sub_1A3347C68(v27, &v31);
    if (*(&v32 + 1))
    {
      v34 = v31;
      v35 = v32;
      v36 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5748);
      v28 = swift_allocObject();
      v29 = v34;
      v30 = v35;
      *(v28 + 16) = xmmword_1A34DAA10;
      *(v28 + 32) = v29;
      *(v28 + 48) = v30;
      *(v28 + 64) = v36;
    }

    else
    {
      sub_1A3288FDC(&v31, &unk_1EB0C8150);
    }
  }
}

void sub_1A3346930()
{
  v1 = *v0;
  v30 = *(v0 + 16);
  v31 = *(v0 + 8);
  v28 = *(v0 + 32);
  v29 = *(v0 + 24);
  v26 = *(v0 + 56);
  v27 = *(v0 + 40);
  v24 = *(v0 + 48);
  v25 = *(v0 + 64);
  if (![*v0 isKeyAvailable_])
  {
    return;
  }

  v2 = [v1 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
  v3 = sub_1A34CD370();

  v4 = v3;
  if (v3 >> 62)
  {
    v21 = sub_1A34CD9B0();
    v4 = v3;
    v5 = v21;
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_17:

    return;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v5 >= 1)
  {
    v6 = 0;
    v22 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x1E69E7CC0];
    v23 = v4;
    do
    {
      if (v22)
      {
        v8 = MEMORY[0x1A58EF310](v6);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v31;
      v11 = v30;
      sub_1A3348BF8(v29, v28, v27, v24);
      v12 = v26;
      v13 = v25;
      v14 = [v9 value];
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v13;
      sub_1A3433C14(v9, sub_1A3348C38, v15, v32);

      sub_1A3348C40(v29, v28, v27, v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1A3298B70(0, *(v7 + 2) + 1, 1, v7);
      }

      v17 = *(v7 + 2);
      v16 = *(v7 + 3);
      if (v17 >= v16 >> 1)
      {
        v7 = sub_1A3298B70((v16 > 1), v17 + 1, 1, v7);
      }

      ++v6;

      *(v7 + 2) = v17 + 1;
      v18 = &v7[40 * v17];
      v19 = v32[0];
      v20 = v32[1];
      *(v18 + 8) = v33;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
      v4 = v23;
    }

    while (v5 != v6);
    goto LABEL_17;
  }

  __break(1u);
}

void sub_1A3346C10()
{
  v1 = *v0;
  v31 = *(v0 + 16);
  v32 = *(v0 + 8);
  v29 = *(v0 + 32);
  v30 = *(v0 + 24);
  v26 = *(v0 + 48);
  v27 = *(v0 + 56);
  v28 = *(v0 + 40);
  if (![*v0 isKeyAvailable_])
  {
    return;
  }

  v2 = [v1 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
  v3 = sub_1A34CD370();

  v4 = v3;
  if (v3 >> 62)
  {
    v23 = sub_1A34CD9B0();
    v4 = v3;
    v5 = v23;
    if (v23)
    {
      goto LABEL_4;
    }

LABEL_17:

    return;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v5 >= 1)
  {
    v6 = 0;
    v24 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x1E69E7CC0];
    v25 = v4;
    do
    {
      if (v24)
      {
        v8 = MEMORY[0x1A58EF310](v6);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v32;
      v11 = v31;
      sub_1A3348BF8(v30, v29, v28, v26);
      v12 = v27;
      v13 = [v9 value];
      v14 = sub_1A34CD110();
      v16 = v15;

      v17 = swift_allocObject();
      *(v17 + 16) = v14;
      *(v17 + 24) = v16;
      sub_1A3433F60(v9, sub_1A3348C84, v17, v33);

      sub_1A3348C40(v30, v29, v28, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1A3298B70(0, *(v7 + 2) + 1, 1, v7);
      }

      v19 = *(v7 + 2);
      v18 = *(v7 + 3);
      if (v19 >= v18 >> 1)
      {
        v7 = sub_1A3298B70((v18 > 1), v19 + 1, 1, v7);
      }

      ++v6;

      *(v7 + 2) = v19 + 1;
      v20 = &v7[40 * v19];
      v21 = v33[0];
      v22 = v33[1];
      *(v20 + 8) = v34;
      *(v20 + 2) = v21;
      *(v20 + 3) = v22;
      v4 = v25;
    }

    while (v5 != v6);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_1A3346EF0()
{
  v1 = *v0;
  v30 = *(v0 + 16);
  v31 = *(v0 + 8);
  v28 = *(v0 + 32);
  v29 = *(v0 + 24);
  v26 = *(v0 + 56);
  v27 = *(v0 + 40);
  v24 = *(v0 + 64);
  v25 = *(v0 + 48);
  if (![*v0 isKeyAvailable_])
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = [v1 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
  v3 = sub_1A34CD370();

  v4 = v3;
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_17:
    v7 = MEMORY[0x1E69E7CC0];
LABEL_18:

    return v7;
  }

  result = sub_1A34CD9B0();
  v4 = v3;
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (result >= 1)
  {
    v6 = 0;
    v21 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x1E69E7CC0];
    v22 = result;
    v23 = v4;
    do
    {
      v32 = v6;
      if (v21)
      {
        v8 = MEMORY[0x1A58EF310](v6);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = v24;
      v11 = v31;
      v12 = v30;
      sub_1A3348BF8(v29, v28, v27, v25);
      v13 = v26;
      v14 = v24;
      v15 = v9;
      sub_1A343427C(v15, sub_1A3348C8C, v10, v33);

      sub_1A3348C40(v29, v28, v27, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1A3298B70(0, *(v7 + 2) + 1, 1, v7);
      }

      v17 = *(v7 + 2);
      v16 = *(v7 + 3);
      if (v17 >= v16 >> 1)
      {
        v7 = sub_1A3298B70((v16 > 1), v17 + 1, 1, v7);
      }

      ++v6;

      *(v7 + 2) = v17 + 1;
      v18 = &v7[40 * v17];
      v19 = v33[0];
      v20 = v33[1];
      *(v18 + 8) = v34;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
      v4 = v23;
    }

    while (v22 != v32 + 1);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void sub_1A33471B8(void *a1, SEL *a2, void (*a3)(_OWORD *__return_ptr, void *))
{
  v5 = *v3;
  v31 = *(v3 + 8);
  v29 = *(v3 + 24);
  v30 = *(v3 + 16);
  v27 = *(v3 + 40);
  v28 = *(v3 + 32);
  v25 = *(v3 + 48);
  v26 = *(v3 + 56);
  if (![*v3 isKeyAvailable_])
  {
    return;
  }

  v6 = [v5 *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
  v7 = sub_1A34CD370();

  v8 = v7;
  if (v7 >> 62)
  {
    v22 = sub_1A34CD9B0();
    v8 = v7;
    v9 = v22;
    if (v22)
    {
      goto LABEL_4;
    }

LABEL_17:

    return;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v9 >= 1)
  {
    v10 = 0;
    v23 = v8 & 0xC000000000000001;
    v11 = MEMORY[0x1E69E7CC0];
    v24 = v8;
    do
    {
      if (v23)
      {
        v12 = MEMORY[0x1A58EF310](v10);
      }

      else
      {
        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v31;
      v15 = v30;
      sub_1A3348BF8(v29, v28, v27, v25);
      v16 = v26;
      a3(v33, v13);

      sub_1A3348C40(v29, v28, v27, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1A3298B70(0, *(v11 + 2) + 1, 1, v11);
      }

      v18 = *(v11 + 2);
      v17 = *(v11 + 3);
      if (v18 >= v17 >> 1)
      {
        v11 = sub_1A3298B70((v17 > 1), v18 + 1, 1, v11);
      }

      ++v10;

      *(v11 + 2) = v18 + 1;
      v19 = &v11[40 * v18];
      v20 = v33[0];
      v21 = v33[1];
      *(v19 + 8) = v34;
      *(v19 + 2) = v20;
      *(v19 + 3) = v21;
      v8 = v24;
    }

    while (v9 != v10);
    goto LABEL_17;
  }

  __break(1u);
}

void sub_1A3347430()
{
  v1 = *v0;
  v26 = *(v0 + 16);
  v27 = *(v0 + 8);
  v24 = *(v0 + 32);
  v25 = *(v0 + 24);
  v21 = *(v0 + 48);
  v22 = *(v0 + 56);
  v23 = *(v0 + 40);
  if ([*v0 isKeyAvailable_] && (objc_msgSend(v1, sel_isCoreRecentsAccepted) & 1) == 0)
  {
    v2 = [v1 instantMessageAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
    v3 = sub_1A34CD370();

    v4 = v3;
    if (v3 >> 62)
    {
      v18 = sub_1A34CD9B0();
      v4 = v3;
      v5 = v18;
      if (!v18)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    if (v5 < 1)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    v19 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x1E69E7CC0];
    v20 = v4;
    do
    {
      if (v19)
      {
        v8 = MEMORY[0x1A58EF310](v6);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v27;
      v11 = v26;
      sub_1A3348BF8(v25, v24, v23, v21);
      v12 = v22;
      sub_1A3435598(v9, v28);

      sub_1A3348C40(v25, v24, v23, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1A3298B70(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        v7 = sub_1A3298B70((v13 > 1), v14 + 1, 1, v7);
      }

      ++v6;

      *(v7 + 2) = v14 + 1;
      v15 = &v7[40 * v14];
      v16 = v28[0];
      v17 = v28[1];
      *(v15 + 8) = v29;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      v4 = v20;
    }

    while (v5 != v6);
LABEL_18:
  }
}

void sub_1A33476BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v4 = sub_1A34C9330();
  v40 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = *v2;
  v14 = *(v2 + 8);
  v16 = *(v2 + 16);
  v15 = *(v2 + 24);
  v37 = *(v2 + 32);
  v17 = *(v2 + 40);
  v35 = v14;
  v36 = v17;
  v18 = *(v2 + 56);
  v38 = *(v2 + 48);
  v39 = v15;
  v19 = *MEMORY[0x1E695C1D0];
  v20 = v13;
  if ([v20 isKeyAvailable_] && objc_msgSend(v20, sel_isKeyAvailable_, *MEMORY[0x1E695C318]))
  {
    v42 = v20;
    swift_getAtKeyPath();

    sub_1A3303784(v12, v9);
    v21 = v40;
    if ((*(v40 + 48))(v9, 1, v4) == 1)
    {
      sub_1A3288FDC(v12, &qword_1EB0C6C50);
      sub_1A3288FDC(v9, &qword_1EB0C6C50);
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0;
    }

    else
    {
      (*(v21 + 32))(v6, v9, v4);
      v22 = v35;
      v23 = v36;
      v42 = v35;
      v43 = v16;
      v24 = v37;
      v44 = v39;
      v45 = v37;
      v46 = v36;
      v47 = v38;
      v48 = v18;
      v25 = v16;
      v26 = v22;
      sub_1A3348BF8(v39, v24, v23, v38);
      v27 = v18;
      v28 = v21;
      sub_1A3435154(v41, v6, a2);
      v29 = v43;
      v30 = v44;
      v31 = v45;
      v32 = v46;
      v33 = v47;
      v34 = v48;

      sub_1A3348C40(v30, v31, v32, v33);
      (*(v28 + 8))(v6, v4);
      sub_1A3288FDC(v12, &qword_1EB0C6C50);
    }
  }

  else
  {

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t sub_1A33479C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  if ([*v0 isKeyAvailable_] && (objc_msgSend(v1, sel_isCoreRecentsAccepted) & 1) == 0)
  {
    v9 = [v1 note];
    v10 = sub_1A34CD110();
    v12 = v11;

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5748);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1A34DAA10;
      v15 = v14;
      v16 = v4;
      v17 = v2;
      sub_1A3348BF8(v3, v6, v5, v7);
      v18 = v8;
      sub_1A34358BC(v10, v12, (v15 + 32));

      sub_1A3348C40(v3, v6, v5, v7);
      return v15;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

double sub_1A3347B58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = *v2;
  swift_getAtKeyPath();

  if (v17)
  {
    v13 = v6;
    v14 = v5;
    sub_1A3348BF8(v7, v8, v9, v10);
    v15 = v11;
    sub_1A3435AFC(a1, v17, a2);

    sub_1A3348C40(v7, v8, v9, v10);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_1A3347C68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *v2;
  swift_getAtKeyPath();

  v12 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v12 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = v5;
    v14 = v4;
    sub_1A3348BF8(v6, v7, v8, v9);
    v15 = v10;
    sub_1A3435988(a1, v17, v18, a2);

    sub_1A3348C40(v6, v7, v8, v9);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t sub_1A3347D98()
{
  v1 = v0;
  v2 = sub_1A34C9550();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A34DAA30;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 descriptorForRequiredKeysForStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v8 = sub_1A34CD350();

  LODWORD(v6) = [v1 areKeysAvailable_];

  if (v6)
  {
    v9 = [v7 stringFromContact:v1 style:0];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1A34CD110();
LABEL_39:

      return v11;
    }
  }

  if (qword_1EB0C4A38 != -1)
  {
    swift_once();
  }

  v12 = sub_1A34CD350();
  v13 = [v1 areKeysAvailable_];

  if (v13)
  {
    sub_1A34C9540();
    v14 = [v1 givenName];
    sub_1A34CD110();

    sub_1A34C94B0();
    v15 = [v1 familyName];
    sub_1A34CD110();

    sub_1A34C94D0();
    v16 = objc_opt_self();
    v17 = sub_1A34C9520();
    v18 = [v16 localizedStringFromPersonNameComponents:v17 style:0 options:0];

    v11 = sub_1A34CD110();
    v20 = v19;

    (*(v3 + 8))(v5, v2);
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      return v11;
    }
  }

  if (![v1 isKeyAvailable_])
  {
    goto LABEL_22;
  }

  v22 = [v1 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
  v23 = sub_1A34CD370();

  if (v23 >> 62)
  {
    if (sub_1A34CD9B0())
    {
      goto LABEL_14;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_14:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x1A58EF310](0, v23);
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_42;
    }

    v24 = *(v23 + 32);
  }

  v25 = v24;

  v26 = [v25 value];
  v27 = [v26 formattedStringValue];

  if (v27)
  {
    v11 = sub_1A34CD110();
LABEL_29:

    return v11;
  }

LABEL_22:
  if ([v1 isKeyAvailable_])
  {
    v28 = [v1 emailAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
    v29 = sub_1A34CD370();

    if (v29 >> 62)
    {
      if (sub_1A34CD9B0())
      {
        goto LABEL_25;
      }
    }

    else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      if ((v29 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1A58EF310](0, v29);
        goto LABEL_28;
      }

      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v30 = *(v29 + 32);
LABEL_28:
        v31 = v30;

        v27 = [v31 value];
        v25 = [v27 description];
        v11 = sub_1A34CD110();

        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_48;
    }
  }

  if (![v1 isKeyAvailable_])
  {
    return 0;
  }

  v32 = [v1 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
  v1 = sub_1A34CD370();

  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_35;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = sub_1A34CD9B0();
  if (!result)
  {
LABEL_43:

    return 0;
  }

LABEL_35:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_48:
    v34 = MEMORY[0x1A58EF310](0, v1);
    goto LABEL_38;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v1 + 32);
LABEL_38:
    v35 = v34;

    v36 = objc_opt_self();
    v37 = [v35 value];
    v10 = [v36 stringFromPostalAddress:v37 style:0];

    v11 = sub_1A34CD110();
    goto LABEL_39;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A334842C@<X0>(uint64_t *a1@<X0>, id *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (!(*a1 >> 62))
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_22:
  v6 = sub_1A34CD9B0();
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v28 = v8;
    v9 = v7;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1A58EF310](v9, v4);
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v9 >= *(v5 + 16))
        {
          goto LABEL_21;
        }

        sub_1A34C9010();
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v10 = *a2;
      swift_getAtPartialKeyPath();

      if (swift_dynamicCast())
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        v8 = v28;
        goto LABEL_24;
      }
    }

    v11 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1A32984C4(0, *(v28 + 2) + 1, 1, v28);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    v14 = v11;
    if (v13 >= v12 >> 1)
    {
      v14 = sub_1A32984C4((v12 > 1), v13 + 1, 1, v11);
    }

    *(v14 + 2) = v13 + 1;
    v8 = v14;
    v15 = &v14[16 * v13];
    *(v15 + 4) = v29;
    *(v15 + 5) = v30;
  }

  while (v7 != v6);
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A34E7C90;
  *(v16 + 32) = swift_getKeyPath();
  *(v16 + 40) = swift_getKeyPath();
  *(v16 + 48) = swift_getKeyPath();
  v17 = sub_1A3427244(v16, v4);

  if (v17)
  {

    v18 = [objc_opt_self() stringFromContact:*a2 style:1];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1A34CD110();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    goto LABEL_33;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A34DC310;
  *(v23 + 32) = swift_getKeyPath();
  *(v23 + 40) = swift_getKeyPath();
  v24 = sub_1A3427244(v23, v4);

  if (v24)
  {
    v20 = sub_1A3348854(v8);
    v22 = v25;

    if (!v22)
    {
      goto LABEL_35;
    }

LABEL_33:
    *a3 = v20;
    a3[1] = v22;
    a3[2] = v4;
  }

  if (*(v8 + 2))
  {
    v20 = *(v8 + 4);
    v22 = *(v8 + 5);

    goto LABEL_33;
  }

LABEL_35:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void sub_1A3348800(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_1A34CD110();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

uint64_t sub_1A3348854(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v3 = a1[4];
    v4 = a1[5];
    if ((v4 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {

      v6 = sub_1A32984C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v8 = *(v6 + 2);
      v7 = *(v6 + 3);
      if (v8 >= v7 >> 1)
      {
        v6 = sub_1A32984C4((v7 > 1), v8 + 1, 1, v6);
      }

      *(v6 + 2) = v8 + 1;
      v9 = &v6[16 * v8];
      *(v9 + 4) = v3;
      *(v9 + 5) = v4;
      if (v1 == 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
      if (v1 == 1)
      {
LABEL_21:

        return v3;
      }
    }

    v11 = a1[6];
    v10 = a1[7];
    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1A32984C4(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_1A32984C4((v13 > 1), v14 + 1, 1, v6);
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v10;
    }

    sub_1A3348A54(0xD000000000000028);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7380);
    sub_1A329A208();
    v3 = sub_1A34CD010();

    goto LABEL_21;
  }

  return 0;
}

uint64_t sub_1A3348A54(uint64_t a1)
{
  v2 = sub_1A34CD0E0();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_1A34CD0E0();
    v5 = sub_1A34CD0E0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    a1 = sub_1A34CD110();
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1A3348BF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a4;
  }

  return result;
}

void sub_1A3348C40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

uint64_t sub_1A3348CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C81E0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (v18 - v7);
  if (*a1)
  {
    v18[0] = v5;
    *v8 = sub_1A34CCC80();
    v8[1] = v9;
    v10 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C81E8) + 44);
    sub_1A34CBA50();
    sub_1A34CCC80();
    sub_1A32F68F4();
    sub_1A34CC1C0();
    v20 = *(a1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA6C0);
    sub_1A34CC740();
    sub_1A34CCC80();
    sub_1A34CA760();
    v11 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C81F0) + 36)];
    v12 = v21;
    *v11 = v20;
    *(v11 + 1) = v12;
    *(v11 + 2) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C81F8);
    if (qword_1EB0C4958 != -1)
    {
      swift_once();
    }

    sub_1A34CBF60();
    v19 = *(a1 + 24);
    sub_1A34CC740();
    v13 = -*&v18[1];
    v14 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8200) + 36));
    *v14 = 0.0;
    v14[1] = v13;
    v15 = v8 + *(v4 + 36);
    *v15 = 1;
    *(v15 + 8) = xmmword_1A34E8160;
    sub_1A3204E90(v8, a2);
    return (*(v18[0] + 56))(a2, 0, 1, v4);
  }

  else
  {
    v17 = *(v5 + 56);

    return v17(a2, 1, 1, v4, v6);
  }
}

uint64_t sub_1A3348FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C81C0);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = sub_1A34CC610();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C81C8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  if (qword_1EB0C4960 != -1)
  {
    swift_once();
  }

  (*(v9 + 104))(v11, *MEMORY[0x1E6981630], v8);
  v18 = sub_1A34CC680();
  (*(v9 + 8))(v11, v8);
  *&v33 = v18;
  sub_1A34CBA50();
  sub_1A34CCC80();
  sub_1A34CC1C0();

  v19 = *(a1 + 8);
  v33 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA6C0);
  sub_1A34CC740();
  v20 = *(a1 + 16);
  sub_1A34CCC80();
  sub_1A34CA760();
  v21 = &v17[*(v12 + 36)];
  v22 = v34;
  *v21 = v33;
  *(v21 + 1) = v22;
  *(v21 + 2) = v35;
  sub_1A34CBA50();
  sub_1A34CCC80();
  sub_1A32F68F4();
  sub_1A34CC1C0();
  v32 = *(a1 + 24);
  sub_1A34CC740();
  v23 = v20 + v19 + v31;
  v24 = &v7[*(v29 + 36)];
  *v24 = 0;
  *(v24 + 1) = v23;
  sub_1A328D790(v17, v14, &qword_1EB0C81C8);
  sub_1A328D790(v7, v4, &qword_1EB0C81C0);
  v25 = v30;
  sub_1A328D790(v14, v30, &qword_1EB0C81C8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C81D0);
  sub_1A328D790(v4, v25 + *(v26 + 48), &qword_1EB0C81C0);
  sub_1A3288FDC(v7, &qword_1EB0C81C0);
  sub_1A3288FDC(v17, &qword_1EB0C81C8);
  sub_1A3288FDC(v4, &qword_1EB0C81C0);
  return sub_1A3288FDC(v14, &qword_1EB0C81C8);
}

uint64_t sub_1A3349438@<X0>(void *a1@<X8>)
{
  v2 = sub_1A34CB470();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34CB670();
  sub_1A34CA7D0();
  v7 = v6;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  return result;
}

uint64_t sub_1A3349590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v28 = *v2;
  v29 = v5;
  v30 = *(v2 + 4);
  v6 = sub_1A34CCC70();
  v8 = v7;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8178) + 36);
  sub_1A3348CD0(&v28, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8180) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8188);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = sub_1A34CCC70();
  v14 = v13;
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8190) + 36));
  v16 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8198) + 36));
  *v16 = sub_1A34CCC70();
  v16[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C81A0);
  sub_1A3348FE4(&v28, v16 + *(v18 + 44));
  v19 = v30;
  v27[0] = *(&v29 + 1);
  v27[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA6C0);
  sub_1A34CC740();
  v20 = -v26;
  v21 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C81A8) + 36));
  *v21 = 0.0;
  v21[1] = v20;
  *v15 = v12;
  v15[1] = v14;
  v22 = swift_allocObject();
  v23 = v29;
  *(v22 + 16) = v28;
  *(v22 + 32) = v23;
  *(v22 + 48) = v30;
  v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C81B0) + 36));
  *v24 = sub_1A3349438;
  v24[1] = 0;
  v24[2] = sub_1A3349960;
  v24[3] = v22;
  v27[0] = v19;
  return sub_1A3349968(v27, &v26);
}

uint64_t sub_1A33497D4(char a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v18 = 0;
  sub_1A34CC730();
  v10 = v13;
  v11 = v14;
  LOBYTE(v13) = a1;
  v14 = a4;
  v15 = a5;
  v16 = v10;
  v17 = v11;
  MEMORY[0x1A58EDBC0](&v13, a2, &type metadata for ScrollPocketEffectModifier, a3);
}

uint64_t sub_1A334987C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1A33498D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1A3349968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C81B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33499F8()
{
  v0 = sub_1A34CAB90();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C81D8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DD060;
  sub_1A34CC4D0();
  *(v4 + 32) = sub_1A34CCA80();
  *(v4 + 40) = v5;
  sub_1A34CC4D0();
  *(v4 + 48) = sub_1A34CCA80();
  *(v4 + 56) = v6;
  sub_1A34CC4E0();
  *(v4 + 64) = sub_1A34CCA80();
  *(v4 + 72) = v7;
  sub_1A34CCA90();
  sub_1A34CBD10();
  sub_1A34CAB70();

  sub_1A34CAB30();
  sub_1A32ABEC0(v10);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A3349BCC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_1A34CB120();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E697F3A0], v5);
  result = sub_1A34CC660();
  *a3 = result;
  return result;
}

uint64_t sub_1A3349CC8()
{
  v0 = sub_1A34CAB90();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C81D8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34E8170;
  sub_1A34CC4D0();
  *(v4 + 32) = sub_1A34CCA80();
  *(v4 + 40) = v5;
  sub_1A34CC4D0();
  sub_1A34CC540();

  *(v4 + 48) = sub_1A34CCA80();
  *(v4 + 56) = v6;
  sub_1A34CC4D0();
  sub_1A34CC540();

  *(v4 + 64) = sub_1A34CCA80();
  *(v4 + 72) = v7;
  sub_1A34CC4D0();
  sub_1A34CC540();

  *(v4 + 80) = sub_1A34CCA80();
  *(v4 + 88) = v8;
  sub_1A34CC4D0();
  sub_1A34CC540();

  *(v4 + 96) = sub_1A34CCA80();
  *(v4 + 104) = v9;
  sub_1A34CC4D0();
  sub_1A34CC540();

  *(v4 + 112) = sub_1A34CCA80();
  *(v4 + 120) = v10;
  sub_1A34CC4D0();
  sub_1A34CC540();

  *(v4 + 128) = sub_1A34CCA80();
  *(v4 + 136) = v11;
  sub_1A34CC4D0();
  sub_1A34CC540();

  *(v4 + 144) = sub_1A34CCA80();
  *(v4 + 152) = v12;
  sub_1A34CC4D0();
  sub_1A34CC540();

  *(v4 + 160) = sub_1A34CCA80();
  *(v4 + 168) = v13;
  sub_1A34CC4D0();
  sub_1A34CC540();

  *(v4 + 176) = sub_1A34CCA80();
  *(v4 + 184) = v14;
  sub_1A34CC4E0();
  *(v4 + 192) = sub_1A34CCA80();
  *(v4 + 200) = v15;
  sub_1A34CCA90();
  sub_1A34CBD10();
  sub_1A34CAB70();

  sub_1A34CAB30();
  sub_1A32ABEC0(v18);
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_1A334A074()
{
  result = qword_1EB0C8208;
  if (!qword_1EB0C8208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C81B0);
    sub_1A334A12C();
    sub_1A3284D0C(&qword_1EB0C8238, &qword_1EB0C8240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8208);
  }

  return result;
}

unint64_t sub_1A334A12C()
{
  result = qword_1EB0C8210;
  if (!qword_1EB0C8210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8190);
    sub_1A334A1E4();
    sub_1A3284D0C(&qword_1EB0C8230, &qword_1EB0C8198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8210);
  }

  return result;
}

unint64_t sub_1A334A1E4()
{
  result = qword_1EB0C8218;
  if (!qword_1EB0C8218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8178);
    sub_1A3284D0C(&qword_1EB0C8220, &qword_1EB0C8188);
    sub_1A3284D0C(&qword_1EB0C8228, &qword_1EB0C8180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8218);
  }

  return result;
}

uint64_t sub_1A334A2E8()
{
  result = type metadata accessor for AvatarViewRecipe_Provider.Silhouette(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AvatarViewRecipe_Provider.Monogram(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AvatarViewRecipe_Provider.Image(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for AvatarViewRecipe_Provider.Emoji(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1A34C9FB0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_1(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1A34C9FB0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A334A5E0()
{
  result = sub_1A34C9FB0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_15Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A34C9FB0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_16Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A34C9FB0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A334A760()
{
  result = sub_1A34C9FB0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A334A7EC()
{
  result = type metadata accessor for AvatarViewRecipe_Color(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A334A92C()
{
  result = sub_1A34C9FB0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A334AA28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_69Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = sub_1A34C9FB0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_70Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, v9);
  }

  else
  {
    v13 = sub_1A34C9FB0();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

void sub_1A334ACFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1A334AA28(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1A34C9FB0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A334ADD4()
{
  sub_1A34C9FB0();
  if (v0 <= 0x3F)
  {
    sub_1A334AA28(319, &qword_1EB0C8310, type metadata accessor for AvatarViewRecipe_Provider, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A334AA28(319, &qword_1EB0C8318, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A334AEDC()
{
  v0 = sub_1A34CA1C0();
  __swift_allocate_value_buffer(v0, qword_1EB0EDD40);
  __swift_project_value_buffer(v0, qword_1EB0EDD40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6198) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DE7A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "silhouette";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1A34CA190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "monogram";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "emoji";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_1A34CA1A0();
}

uint64_t sub_1A334B12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1A34CA010();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1A334BD7C(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_1A334C338(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_1A334B210(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_1A334B7C0(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1A334B210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AvatarViewRecipe_Provider.Silhouette(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69C8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8418);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1A328D790(a1, v12, &qword_1EB0C69C8);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1A3288FDC(v12, &qword_1EB0C69C8);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1A33525A4(v12, v19, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
    sub_1A33525A4(v19, v16, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1A335260C(v16, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
      v30 = v45;
    }

    else
    {
      sub_1A3288FDC(v25, &qword_1EB0C8418);
      v32 = v40;
      sub_1A33525A4(v16, v40, type metadata accessor for AvatarViewRecipe_Provider.Silhouette);
      sub_1A33525A4(v32, v25, type metadata accessor for AvatarViewRecipe_Provider.Silhouette);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1A3351BCC(&qword_1EB0C83D0, type metadata accessor for AvatarViewRecipe_Provider.Silhouette);
  v34 = v44;
  sub_1A34CA0A0();
  if (v34)
  {
    return sub_1A3288FDC(v25, &qword_1EB0C8418);
  }

  sub_1A328D790(v25, v33, &qword_1EB0C8418);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1A3288FDC(v25, &qword_1EB0C8418);
    return sub_1A3288FDC(v33, &qword_1EB0C8418);
  }

  else
  {
    v36 = v41;
    sub_1A33525A4(v33, v41, type metadata accessor for AvatarViewRecipe_Provider.Silhouette);
    if (v29 != 1)
    {
      sub_1A34CA020();
    }

    sub_1A3288FDC(v25, &qword_1EB0C8418);
    v37 = v39;
    sub_1A3288FDC(v39, &qword_1EB0C69C8);
    sub_1A33525A4(v36, v37, type metadata accessor for AvatarViewRecipe_Provider.Silhouette);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1A334B7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AvatarViewRecipe_Provider.Monogram(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69C8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8420);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1A328D790(a1, v12, &qword_1EB0C69C8);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1A3288FDC(v12, &qword_1EB0C69C8);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1A33525A4(v12, v19, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
    sub_1A33525A4(v19, v16, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1A3288FDC(v25, &qword_1EB0C8420);
      v32 = v41;
      sub_1A33525A4(v16, v41, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
      sub_1A33525A4(v32, v25, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1A335260C(v16, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1A3351BCC(&unk_1EB0C6A00, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
  v34 = v44;
  sub_1A34CA0A0();
  if (v34)
  {
    return sub_1A3288FDC(v25, &qword_1EB0C8420);
  }

  sub_1A328D790(v25, v33, &qword_1EB0C8420);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1A3288FDC(v25, &qword_1EB0C8420);
    return sub_1A3288FDC(v33, &qword_1EB0C8420);
  }

  else
  {
    v36 = v40;
    sub_1A33525A4(v33, v40, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
    if (v29 != 1)
    {
      sub_1A34CA020();
    }

    sub_1A3288FDC(v25, &qword_1EB0C8420);
    v37 = v39;
    sub_1A3288FDC(v39, &qword_1EB0C69C8);
    sub_1A33525A4(v36, v37, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1A334BD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AvatarViewRecipe_Provider.Image(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69C8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8428);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1A328D790(a1, v12, &qword_1EB0C69C8);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1A3288FDC(v12, &qword_1EB0C69C8);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1A33525A4(v12, v19, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
    sub_1A33525A4(v19, v16, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1A3288FDC(v25, &qword_1EB0C8428);
      v32 = v41;
      sub_1A33525A4(v16, v41, type metadata accessor for AvatarViewRecipe_Provider.Image);
      sub_1A33525A4(v32, v25, type metadata accessor for AvatarViewRecipe_Provider.Image);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1A335260C(v16, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1A3351BCC(&qword_1EB0C8398, type metadata accessor for AvatarViewRecipe_Provider.Image);
  v34 = v44;
  sub_1A34CA0A0();
  if (v34)
  {
    return sub_1A3288FDC(v25, &qword_1EB0C8428);
  }

  sub_1A328D790(v25, v33, &qword_1EB0C8428);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1A3288FDC(v25, &qword_1EB0C8428);
    return sub_1A3288FDC(v33, &qword_1EB0C8428);
  }

  else
  {
    v36 = v40;
    sub_1A33525A4(v33, v40, type metadata accessor for AvatarViewRecipe_Provider.Image);
    if (v29 != 1)
    {
      sub_1A34CA020();
    }

    sub_1A3288FDC(v25, &qword_1EB0C8428);
    v37 = v39;
    sub_1A3288FDC(v39, &qword_1EB0C69C8);
    sub_1A33525A4(v36, v37, type metadata accessor for AvatarViewRecipe_Provider.Image);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1A334C338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AvatarViewRecipe_Provider.Emoji(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69C8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8430);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1A328D790(a1, v12, &qword_1EB0C69C8);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1A3288FDC(v12, &qword_1EB0C69C8);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1A33525A4(v12, v19, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
    sub_1A33525A4(v19, v16, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1A3288FDC(v25, &qword_1EB0C8430);
      v32 = v41;
      sub_1A33525A4(v16, v41, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
      sub_1A33525A4(v32, v25, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1A335260C(v16, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1A3351BCC(&qword_1EB0C69F8, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
  v34 = v44;
  sub_1A34CA0A0();
  if (v34)
  {
    return sub_1A3288FDC(v25, &qword_1EB0C8430);
  }

  sub_1A328D790(v25, v33, &qword_1EB0C8430);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1A3288FDC(v25, &qword_1EB0C8430);
    return sub_1A3288FDC(v33, &qword_1EB0C8430);
  }

  else
  {
    v36 = v40;
    sub_1A33525A4(v33, v40, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
    if (v29 != 1)
    {
      sub_1A34CA020();
    }

    sub_1A3288FDC(v25, &qword_1EB0C8430);
    v37 = v39;
    sub_1A3288FDC(v39, &qword_1EB0C69C8);
    sub_1A33525A4(v36, v37, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1A334C8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1A328D790(v3, &v14 - v9, &qword_1EB0C69C8);
  v11 = type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1A334CF34(v3, a1, a2, a3);
    }

    else
    {
      sub_1A334D16C(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1A334CCFC(v3, a1, a2, a3);
  }

  else
  {
    sub_1A334CAC8(v3, a1, a2, a3);
  }

  result = sub_1A335260C(v10, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for AvatarViewRecipe_Provider(0);
    return sub_1A34C9F90();
  }

  return result;
}

uint64_t sub_1A334CAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AvatarViewRecipe_Provider.Silhouette(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A328D790(a1, v7, &qword_1EB0C69C8);
  v11 = type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1A3288FDC(v7, &qword_1EB0C69C8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1A33525A4(v7, v10, type metadata accessor for AvatarViewRecipe_Provider.Silhouette);
    sub_1A3351BCC(&qword_1EB0C83D0, type metadata accessor for AvatarViewRecipe_Provider.Silhouette);
    sub_1A34CA180();
    return sub_1A335260C(v10, type metadata accessor for AvatarViewRecipe_Provider.Silhouette);
  }

  result = sub_1A335260C(v7, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
  __break(1u);
  return result;
}

uint64_t sub_1A334CCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AvatarViewRecipe_Provider.Monogram(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A328D790(a1, v7, &qword_1EB0C69C8);
  v11 = type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1A3288FDC(v7, &qword_1EB0C69C8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A33525A4(v7, v10, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
    sub_1A3351BCC(&unk_1EB0C6A00, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
    sub_1A34CA180();
    return sub_1A335260C(v10, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
  }

  result = sub_1A335260C(v7, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
  __break(1u);
  return result;
}

uint64_t sub_1A334CF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AvatarViewRecipe_Provider.Image(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A328D790(a1, v7, &qword_1EB0C69C8);
  v11 = type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1A3288FDC(v7, &qword_1EB0C69C8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1A33525A4(v7, v10, type metadata accessor for AvatarViewRecipe_Provider.Image);
    sub_1A3351BCC(&qword_1EB0C8398, type metadata accessor for AvatarViewRecipe_Provider.Image);
    sub_1A34CA180();
    return sub_1A335260C(v10, type metadata accessor for AvatarViewRecipe_Provider.Image);
  }

  result = sub_1A335260C(v7, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
  __break(1u);
  return result;
}

uint64_t sub_1A334D16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AvatarViewRecipe_Provider.Emoji(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A328D790(a1, v7, &qword_1EB0C69C8);
  v11 = type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1A3288FDC(v7, &qword_1EB0C69C8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1A33525A4(v7, v10, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
    sub_1A3351BCC(&qword_1EB0C69F8, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
    sub_1A34CA180();
    return sub_1A335260C(v10, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
  }

  result = sub_1A335260C(v7, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
  __break(1u);
  return result;
}

uint64_t sub_1A334D408(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3351BCC(&qword_1EB0C8410, type metadata accessor for AvatarViewRecipe_Provider);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1A334D4A8(uint64_t a1)
{
  v2 = sub_1A3351BCC(&qword_1EB0C69E8, type metadata accessor for AvatarViewRecipe_Provider);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1A334D514()
{
  sub_1A3351BCC(&qword_1EB0C69E8, type metadata accessor for AvatarViewRecipe_Provider);

  return sub_1A34CA0F0();
}

uint64_t sub_1A334D5A0()
{
  do
  {
    result = sub_1A34CA010();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1A334D638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3351BCC(&qword_1EB0C8448, type metadata accessor for AvatarViewRecipe_Provider.Silhouette);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1A334D6D8(uint64_t a1)
{
  v2 = sub_1A3351BCC(&qword_1EB0C83D0, type metadata accessor for AvatarViewRecipe_Provider.Silhouette);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1A334D744()
{
  sub_1A3351BCC(&qword_1EB0C83D0, type metadata accessor for AvatarViewRecipe_Provider.Silhouette);

  return sub_1A34CA0F0();
}

uint64_t sub_1A334D820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3351BCC(&qword_1EB0C8450, type metadata accessor for AvatarViewRecipe_Provider.Monogram);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1A334D8C0(uint64_t a1)
{
  v2 = sub_1A3351BCC(&unk_1EB0C6A00, type metadata accessor for AvatarViewRecipe_Provider.Monogram);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1A334D92C()
{
  sub_1A3351BCC(&unk_1EB0C6A00, type metadata accessor for AvatarViewRecipe_Provider.Monogram);

  return sub_1A34CA0F0();
}

uint64_t sub_1A334D9B4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A34CA1C0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1A34CA1B0();
}

uint64_t sub_1A334DA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3351BCC(&qword_1EB0C8458, type metadata accessor for AvatarViewRecipe_Provider.Image);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1A334DAC0(uint64_t a1)
{
  v2 = sub_1A3351BCC(&qword_1EB0C8398, type metadata accessor for AvatarViewRecipe_Provider.Image);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1A334DB2C()
{
  sub_1A3351BCC(&qword_1EB0C8398, type metadata accessor for AvatarViewRecipe_Provider.Image);

  return sub_1A34CA0F0();
}

uint64_t sub_1A334DBA8()
{
  sub_1A34C9FB0();
  sub_1A3351BCC(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
  return sub_1A34CD040() & 1;
}

uint64_t sub_1A334DC48()
{
  while (1)
  {
    result = sub_1A34CA010();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1A34CA050();
    }
  }

  return result;
}

uint64_t sub_1A334DCB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2 || *(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
    if (v6 == v6 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v9 = a4;
  result = sub_1A34CA130();
  if (v5)
  {
    return result;
  }

  a4 = v9;
LABEL_11:
  a4(0);
  return sub_1A34C9F90();
}

uint64_t sub_1A334DDE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3351BCC(&qword_1EB0C8460, type metadata accessor for AvatarViewRecipe_Provider.Emoji);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1A334DE88(uint64_t a1)
{
  v2 = sub_1A3351BCC(&qword_1EB0C69F8, type metadata accessor for AvatarViewRecipe_Provider.Emoji);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1A334DEF4()
{
  sub_1A3351BCC(&qword_1EB0C69F8, type metadata accessor for AvatarViewRecipe_Provider.Emoji);

  return sub_1A34CA0F0();
}

uint64_t sub_1A334DF70(uint64_t a1, uint64_t a2)
{
  if ((sub_1A3352AE4(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  sub_1A34C9FB0();
  sub_1A3351BCC(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
  return sub_1A34CD040() & 1;
}

uint64_t sub_1A334E01C()
{
  v0 = sub_1A34CA1C0();
  __swift_allocate_value_buffer(v0, qword_1EB0EDDB8);
  __swift_project_value_buffer(v0, qword_1EB0EDDB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6198) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DE7A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "red";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1A34CA190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "green";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "blue";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "opacity";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_1A34CA1A0();
}

uint64_t sub_1A334E268()
{
  result = sub_1A34CA010();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_1A34CA070();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_1A34CA010();
    }
  }

  return result;
}

uint64_t sub_1A334E314()
{
  if (*v0 == 0.0 || (result = sub_1A34CA150(), !v1))
  {
    if (v0[1] == 0.0 || (result = sub_1A34CA150(), !v1))
    {
      if (v0[2] == 0.0 || (result = sub_1A34CA150(), !v1))
      {
        if (v0[3] == 0.0 || (result = sub_1A34CA150(), !v1))
        {
          type metadata accessor for AvatarViewRecipe_Color(0);
          return sub_1A34C9F90();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A334E418@<X0>(_OWORD *a1@<X8>)
{
  *a1 = 0u;
  a1[1] = 0u;
  return sub_1A34C9FA0();
}

uint64_t sub_1A334E454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1A34C9FB0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1A334E4C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1A34C9FB0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1A334E590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3351BCC(&qword_1EB0C8468, type metadata accessor for AvatarViewRecipe_Color);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1A334E630(uint64_t a1)
{
  v2 = sub_1A3351BCC(&qword_1EB0C6BD8, type metadata accessor for AvatarViewRecipe_Color);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1A334E69C()
{
  sub_1A3351BCC(&qword_1EB0C6BD8, type metadata accessor for AvatarViewRecipe_Color);

  return sub_1A34CA0F0();
}

uint64_t sub_1A334E71C()
{
  v0 = sub_1A34CA1C0();
  __swift_allocate_value_buffer(v0, qword_1EB0EDDD0);
  __swift_project_value_buffer(v0, qword_1EB0EDDD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6198) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DE7A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "solid";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1A34CA190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dynamic";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "linearGradient";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "defaultNatural";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1A34CA1A0();
}

uint64_t sub_1A334E96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1A34CA010();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1A334F5BC(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_1A334FB78(a1, v5);
      }
    }

    else if (result == 1)
    {
      sub_1A334EA50(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_1A334F000(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1A334EA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AvatarViewRecipe_Color(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8478);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1A328D790(a1, v12, &qword_1EB0C6BC0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1A3288FDC(v12, &qword_1EB0C6BC0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1A33525A4(v12, v19, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
    sub_1A33525A4(v19, v16, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1A335260C(v16, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
      v30 = v45;
    }

    else
    {
      sub_1A3288FDC(v25, &qword_1EB0C8478);
      v32 = v40;
      sub_1A33525A4(v16, v40, type metadata accessor for AvatarViewRecipe_Color);
      sub_1A33525A4(v32, v25, type metadata accessor for AvatarViewRecipe_Color);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1A3351BCC(&qword_1EB0C6BD8, type metadata accessor for AvatarViewRecipe_Color);
  v34 = v44;
  sub_1A34CA0A0();
  if (v34)
  {
    return sub_1A3288FDC(v25, &qword_1EB0C8478);
  }

  sub_1A328D790(v25, v33, &qword_1EB0C8478);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1A3288FDC(v25, &qword_1EB0C8478);
    return sub_1A3288FDC(v33, &qword_1EB0C8478);
  }

  else
  {
    v36 = v41;
    sub_1A33525A4(v33, v41, type metadata accessor for AvatarViewRecipe_Color);
    if (v29 != 1)
    {
      sub_1A34CA020();
    }

    sub_1A3288FDC(v25, &qword_1EB0C8478);
    v37 = v39;
    sub_1A3288FDC(v39, &qword_1EB0C6BC0);
    sub_1A33525A4(v36, v37, type metadata accessor for AvatarViewRecipe_Color);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1A334F000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AvatarViewRecipe_Color(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8478);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1A328D790(a1, v12, &qword_1EB0C6BC0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1A3288FDC(v12, &qword_1EB0C6BC0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1A33525A4(v12, v19, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
    sub_1A33525A4(v19, v16, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1A3288FDC(v25, &qword_1EB0C8478);
      v32 = v41;
      sub_1A33525A4(v16, v41, type metadata accessor for AvatarViewRecipe_Color);
      sub_1A33525A4(v32, v25, type metadata accessor for AvatarViewRecipe_Color);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1A335260C(v16, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1A3351BCC(&qword_1EB0C6BD8, type metadata accessor for AvatarViewRecipe_Color);
  v34 = v44;
  sub_1A34CA0A0();
  if (v34)
  {
    return sub_1A3288FDC(v25, &qword_1EB0C8478);
  }

  sub_1A328D790(v25, v33, &qword_1EB0C8478);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1A3288FDC(v25, &qword_1EB0C8478);
    return sub_1A3288FDC(v33, &qword_1EB0C8478);
  }

  else
  {
    v36 = v40;
    sub_1A33525A4(v33, v40, type metadata accessor for AvatarViewRecipe_Color);
    if (v29 != 1)
    {
      sub_1A34CA020();
    }

    sub_1A3288FDC(v25, &qword_1EB0C8478);
    v37 = v39;
    sub_1A3288FDC(v39, &qword_1EB0C6BC0);
    sub_1A33525A4(v36, v37, type metadata accessor for AvatarViewRecipe_Color);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1A334F5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8480);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1A328D790(a1, v12, &qword_1EB0C6BC0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1A3288FDC(v12, &qword_1EB0C6BC0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1A33525A4(v12, v19, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
    sub_1A33525A4(v19, v16, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1A3288FDC(v25, &qword_1EB0C8480);
      v32 = v41;
      sub_1A33525A4(v16, v41, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
      sub_1A33525A4(v32, v25, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1A335260C(v16, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1A3351BCC(&qword_1EB0C6BD0, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
  v34 = v44;
  sub_1A34CA0A0();
  if (v34)
  {
    return sub_1A3288FDC(v25, &qword_1EB0C8480);
  }

  sub_1A328D790(v25, v33, &qword_1EB0C8480);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1A3288FDC(v25, &qword_1EB0C8480);
    return sub_1A3288FDC(v33, &qword_1EB0C8480);
  }

  else
  {
    v36 = v40;
    sub_1A33525A4(v33, v40, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
    if (v29 != 1)
    {
      sub_1A34CA020();
    }

    sub_1A3288FDC(v25, &qword_1EB0C8480);
    v37 = v39;
    sub_1A3288FDC(v39, &qword_1EB0C6BC0);
    sub_1A33525A4(v36, v37, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1A334FB78(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v15 = 2;
  result = sub_1A34CA030();
  if (!v2)
  {
    v8 = v15;
    if (v15 != 2)
    {
      v14 = 0;
      sub_1A328D790(a2, v6, &qword_1EB0C6BC0);
      v9 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
      v10 = *(v9 - 8);
      v11 = (*(v10 + 48))(v6, 1, v9);
      sub_1A3288FDC(v6, &qword_1EB0C6BC0);
      if (v11 != 1)
      {
        v12 = v14;
        result = sub_1A34CA020();
        if (v12)
        {
          return result;
        }

        v14 = 0;
      }

      sub_1A3288FDC(a2, &qword_1EB0C6BC0);
      *a2 = v8 & 1;
      swift_storeEnumTagMultiPayload();
      return (*(v10 + 56))(a2, 0, 1, v9);
    }
  }

  return result;
}

uint64_t sub_1A334FD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1A328D790(v3, &v14 - v9, &qword_1EB0C6BC0);
  v11 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        result = sub_1A33505C8(v3);
        if (v4)
        {
          return result;
        }

        goto LABEL_11;
      }

      sub_1A3350390(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload)
    {
      sub_1A3350158(v3, a1, a2, a3);
    }

    else
    {
      sub_1A334FF24(v3, a1, a2, a3);
    }

    result = sub_1A335260C(v10, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
    if (v4)
    {
      return result;
    }
  }

LABEL_11:
  type metadata accessor for AvatarViewRecipe_BackgroundRepresentation(0);
  return sub_1A34C9F90();
}

uint64_t sub_1A334FF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AvatarViewRecipe_Color(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A328D790(a1, v7, &qword_1EB0C6BC0);
  v11 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1A3288FDC(v7, &qword_1EB0C6BC0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1A33525A4(v7, v10, type metadata accessor for AvatarViewRecipe_Color);
    sub_1A3351BCC(&qword_1EB0C6BD8, type metadata accessor for AvatarViewRecipe_Color);
    sub_1A34CA180();
    return sub_1A335260C(v10, type metadata accessor for AvatarViewRecipe_Color);
  }

  result = sub_1A335260C(v7, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
  __break(1u);
  return result;
}

uint64_t sub_1A3350158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AvatarViewRecipe_Color(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A328D790(a1, v7, &qword_1EB0C6BC0);
  v11 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1A3288FDC(v7, &qword_1EB0C6BC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A33525A4(v7, v10, type metadata accessor for AvatarViewRecipe_Color);
    sub_1A3351BCC(&qword_1EB0C6BD8, type metadata accessor for AvatarViewRecipe_Color);
    sub_1A34CA180();
    return sub_1A335260C(v10, type metadata accessor for AvatarViewRecipe_Color);
  }

  result = sub_1A335260C(v7, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
  __break(1u);
  return result;
}

uint64_t sub_1A3350390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A328D790(a1, v7, &qword_1EB0C6BC0);
  v11 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1A3288FDC(v7, &qword_1EB0C6BC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1A33525A4(v7, v10, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
    sub_1A3351BCC(&qword_1EB0C6BD0, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
    sub_1A34CA180();
    return sub_1A335260C(v10, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
  }

  result = sub_1A335260C(v7, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
  __break(1u);
  return result;
}

uint64_t sub_1A33505C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_1A328D790(a1, &v7 - v3, &qword_1EB0C6BC0);
  v5 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1A3288FDC(v4, &qword_1EB0C6BC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    return sub_1A34CA110();
  }

  result = sub_1A335260C(v4, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
  __break(1u);
  return result;
}

uint64_t sub_1A3350744@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return sub_1A34C9FA0();
}

uint64_t sub_1A3350804(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3351BCC(&qword_1EB0C8470, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1A33508A4(uint64_t a1)
{
  v2 = sub_1A3351BCC(&qword_1EB0C69F0, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1A3350910()
{
  sub_1A3351BCC(&qword_1EB0C69F0, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);

  return sub_1A34CA0F0();
}

uint64_t sub_1A33509A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1A34CA1C0();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6190);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6198) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A34DAA10;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v13 = sub_1A34CA190();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_1A34CA1A0();
}

uint64_t sub_1A3350B14()
{
  result = sub_1A34CA010();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for AvatarViewRecipe_Color(0);
        sub_1A3351BCC(&qword_1EB0C6BD8, type metadata accessor for AvatarViewRecipe_Color);
        sub_1A34CA090();
      }

      result = sub_1A34CA010();
    }
  }

  return result;
}

uint64_t sub_1A3350BF4()
{
  if (!*(*v0 + 16) || (type metadata accessor for AvatarViewRecipe_Color(0), sub_1A3351BCC(&qword_1EB0C6BD8, type metadata accessor for AvatarViewRecipe_Color), result = sub_1A34CA170(), !v1))
  {
    type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient(0);
    return sub_1A34C9F90();
  }

  return result;
}

uint64_t sub_1A3350D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3351BCC(&qword_1EB0C8498, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1A3350DF0(uint64_t a1)
{
  v2 = sub_1A3351BCC(&qword_1EB0C6BD0, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1A3350E5C()
{
  sub_1A3351BCC(&qword_1EB0C6BD0, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);

  return sub_1A34CA0F0();
}

uint64_t sub_1A3350ED8(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1A34260B4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1A34C9FB0();
  sub_1A3351BCC(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
  return sub_1A34CD040() & 1;
}

uint64_t sub_1A3350F80()
{
  v0 = sub_1A34CA1C0();
  __swift_allocate_value_buffer(v0, qword_1EB0EDE00);
  __swift_project_value_buffer(v0, qword_1EB0EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6198) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DCA90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "provider";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1A34CA190();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "backgroundRepresentation";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_1A34CA1A0();
}

uint64_t sub_1A3351148()
{
  while (1)
  {
    result = sub_1A34CA010();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1A33511DC();
    }

    else if (result == 2)
    {
      sub_1A3351290();
    }
  }

  return result;
}

uint64_t sub_1A33511DC()
{
  type metadata accessor for AvatarViewRecipe_Recipe(0);
  type metadata accessor for AvatarViewRecipe_Provider(0);
  sub_1A3351BCC(&qword_1EB0C69E8, type metadata accessor for AvatarViewRecipe_Provider);
  return sub_1A34CA0A0();
}

uint64_t sub_1A3351290()
{
  type metadata accessor for AvatarViewRecipe_Recipe(0);
  type metadata accessor for AvatarViewRecipe_BackgroundRepresentation(0);
  sub_1A3351BCC(&qword_1EB0C69F0, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
  return sub_1A34CA0A0();
}

uint64_t sub_1A3351344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A33513B4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1A33515D0(v3, a1, a2, a3);
    return sub_1A34C9F90();
  }

  return result;
}

uint64_t sub_1A33513B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6800);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AvatarViewRecipe_Provider(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AvatarViewRecipe_Recipe(0);
  sub_1A328D790(a1 + *(v12 + 20), v7, &qword_1EB0C6800);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1A3288FDC(v7, &qword_1EB0C6800);
  }

  sub_1A33525A4(v7, v11, type metadata accessor for AvatarViewRecipe_Provider);
  sub_1A3351BCC(&qword_1EB0C69E8, type metadata accessor for AvatarViewRecipe_Provider);
  sub_1A34CA180();
  return sub_1A335260C(v11, type metadata accessor for AvatarViewRecipe_Provider);
}

uint64_t sub_1A33515D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C67F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AvatarViewRecipe_Recipe(0);
  sub_1A328D790(a1 + *(v12 + 24), v7, &qword_1EB0C67F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1A3288FDC(v7, &qword_1EB0C67F8);
  }

  sub_1A33525A4(v7, v11, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
  sub_1A3351BCC(&qword_1EB0C69F0, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
  sub_1A34CA180();
  return sub_1A335260C(v11, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
}

uint64_t sub_1A33517EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A34C9FA0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for AvatarViewRecipe_Provider(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1A33518B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34C9FB0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1A3351918(uint64_t a1)
{
  v3 = sub_1A34C9FB0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1A33519B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3351BCC(&qword_1EB0C8408, type metadata accessor for AvatarViewRecipe_Recipe);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1A3351A50(uint64_t a1)
{
  v2 = sub_1A3351BCC(&qword_1EB0C6750, type metadata accessor for AvatarViewRecipe_Recipe);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1A3351ABC()
{
  sub_1A3351BCC(&qword_1EB0C6750, type metadata accessor for AvatarViewRecipe_Recipe);

  return sub_1A34CA0F0();
}

uint64_t sub_1A3351BCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A33525A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A335260C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A335266C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1A34C91D0();
    if (v10)
    {
      v11 = sub_1A34C91F0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1A34C91E0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1A34C91D0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1A34C91F0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1A34C91E0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1A335289C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1A3352A2C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1A31EC234(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1A335266C(v13, a3, a4, &v12);
  v10 = v4;
  sub_1A31EC234(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1A3352A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1A34C91D0();
  v11 = result;
  if (result)
  {
    result = sub_1A34C91F0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1A34C91E0();
  sub_1A335266C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1A3352AE4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1A31EC1E0(a3, a4);
          return sub_1A335289C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1A3352C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6BC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8488);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1A328D790(a1, &v20 - v12, &qword_1EB0C6BC0);
  sub_1A328D790(a2, &v13[v15], &qword_1EB0C6BC0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1A3288FDC(v13, &qword_1EB0C6BC0);
LABEL_9:
      type metadata accessor for AvatarViewRecipe_BackgroundRepresentation(0);
      sub_1A34C9FB0();
      sub_1A3351BCC(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
      v17 = sub_1A34CD040();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1A328D790(v13, v10, &qword_1EB0C6BC0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1A335260C(v10, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
LABEL_6:
    sub_1A3288FDC(v13, &qword_1EB0C8488);
    goto LABEL_7;
  }

  sub_1A33525A4(&v13[v15], v7, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
  v18 = sub_1A3352F90(v10, v7);
  sub_1A335260C(v7, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
  sub_1A335260C(v10, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
  sub_1A3288FDC(v13, &qword_1EB0C6BC0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1A3352F90(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v36 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient(0);
  MEMORY[0x1EEE9AC00](v36);
  v37 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AvatarViewRecipe_Color(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v36 - v8);
  v10 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v38 = (&v36 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v36 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v36 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8490);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v36 - v22;
  v25 = *(v24 + 56);
  sub_1A3354120(a1, &v36 - v22, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
  sub_1A3354120(v39, &v23[v25], type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1A3354120(v23, v17, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v27 = type metadata accessor for AvatarViewRecipe_Color;
        v28 = v17;
        goto LABEL_16;
      }

      sub_1A33525A4(&v23[v25], v6, type metadata accessor for AvatarViewRecipe_Color);
      v32 = sub_1A3353560(v17, v6);
      sub_1A335260C(v6, type metadata accessor for AvatarViewRecipe_Color);
      v33 = v17;
    }

    else
    {
      sub_1A3354120(v23, v20, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
      if (swift_getEnumCaseMultiPayload())
      {
        v27 = type metadata accessor for AvatarViewRecipe_Color;
        v28 = v20;
LABEL_16:
        sub_1A335260C(v28, v27);
        goto LABEL_17;
      }

      sub_1A33525A4(&v23[v25], v9, type metadata accessor for AvatarViewRecipe_Color);
      v32 = sub_1A3353560(v20, v9);
      sub_1A335260C(v9, type metadata accessor for AvatarViewRecipe_Color);
      v33 = v20;
    }

    sub_1A335260C(v33, type metadata accessor for AvatarViewRecipe_Color);
    sub_1A335260C(v23, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
    return v32 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v29 = v38;
    sub_1A3354120(v23, v38, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v27 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient;
      v28 = v29;
      goto LABEL_16;
    }

    v30 = &v23[v25];
    v31 = v37;
    sub_1A33525A4(v30, v37, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
    if ((sub_1A34260B4(*v29, *v31) & 1) == 0 || (sub_1A34C9FB0(), sub_1A3351BCC(&qword_1EB0CB300, MEMORY[0x1E69AAC08]), (sub_1A34CD040() & 1) == 0))
    {
      sub_1A335260C(v31, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
      sub_1A335260C(v29, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
      sub_1A335260C(v23, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
      goto LABEL_18;
    }

    sub_1A335260C(v31, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
    sub_1A335260C(v29, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.LinearGradient);
    sub_1A335260C(v23, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
    v32 = 1;
  }

  else
  {
    sub_1A3354120(v23, v12, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
LABEL_17:
      sub_1A3288FDC(v23, &qword_1EB0C8490);
LABEL_18:
      v32 = 0;
      return v32 & 1;
    }

    v34 = *v12 ^ v23[v25];
    sub_1A335260C(v23, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation.OneOf_Representation);
    v32 = v34 ^ 1;
  }

  return v32 & 1;
}

uint64_t sub_1A3353560(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for AvatarViewRecipe_Color(0);
  sub_1A34C9FB0();
  sub_1A3351BCC(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
  return sub_1A34CD040() & 1;
}

uint64_t sub_1A3353638(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v44 = type metadata accessor for AvatarViewRecipe_Provider.Emoji(0);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AvatarViewRecipe_Provider.Image(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for AvatarViewRecipe_Provider.Monogram(0);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AvatarViewRecipe_Provider.Silhouette(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8440);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v43 - v23;
  v26 = *(v25 + 56);
  sub_1A3354120(a1, &v43 - v23, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
  sub_1A3354120(v48, &v24[v26], type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1A3354120(v24, v15, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v28 = type metadata accessor for AvatarViewRecipe_Provider.Image;
        v29 = v15;
        goto LABEL_20;
      }

      v30 = v45;
      sub_1A33525A4(&v24[v26], v45, type metadata accessor for AvatarViewRecipe_Provider.Image);
      sub_1A34C9FB0();
      sub_1A3351BCC(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
      v31 = sub_1A34CD040();
      sub_1A335260C(v30, type metadata accessor for AvatarViewRecipe_Provider.Image);
      v32 = v15;
      v33 = type metadata accessor for AvatarViewRecipe_Provider.Image;
      goto LABEL_22;
    }

    sub_1A3354120(v24, v12, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v28 = type metadata accessor for AvatarViewRecipe_Provider.Emoji;
      v29 = v12;
      goto LABEL_20;
    }

    v38 = &v24[v26];
    v39 = v47;
    sub_1A33525A4(v38, v47, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
    if (sub_1A3352AE4(*v12, *(v12 + 1), *v39, *(v39 + 8)))
    {
      sub_1A34C9FB0();
      sub_1A3351BCC(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
      if (sub_1A34CD040())
      {
        v36 = type metadata accessor for AvatarViewRecipe_Provider.Emoji;
        sub_1A335260C(v39, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
        v37 = v12;
        goto LABEL_16;
      }
    }

    v40 = type metadata accessor for AvatarViewRecipe_Provider.Emoji;
    sub_1A335260C(v39, type metadata accessor for AvatarViewRecipe_Provider.Emoji);
    v41 = v12;
LABEL_25:
    sub_1A335260C(v41, v40);
    sub_1A335260C(v24, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
    goto LABEL_26;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1A3354120(v24, v21, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
    if (swift_getEnumCaseMultiPayload())
    {
      v28 = type metadata accessor for AvatarViewRecipe_Provider.Silhouette;
      v29 = v21;
LABEL_20:
      sub_1A335260C(v29, v28);
      sub_1A3288FDC(v24, &qword_1EB0C8440);
LABEL_26:
      v31 = 0;
      return v31 & 1;
    }

    sub_1A33525A4(&v24[v26], v9, type metadata accessor for AvatarViewRecipe_Provider.Silhouette);
    sub_1A34C9FB0();
    sub_1A3351BCC(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
    v31 = sub_1A34CD040();
    sub_1A335260C(v9, type metadata accessor for AvatarViewRecipe_Provider.Silhouette);
    v32 = v21;
    v33 = type metadata accessor for AvatarViewRecipe_Provider.Silhouette;
LABEL_22:
    sub_1A335260C(v32, v33);
    sub_1A335260C(v24, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
    return v31 & 1;
  }

  sub_1A3354120(v24, v18, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = type metadata accessor for AvatarViewRecipe_Provider.Monogram;
    v29 = v18;
    goto LABEL_20;
  }

  v34 = &v24[v26];
  v35 = v46;
  sub_1A33525A4(v34, v46, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
  if ((sub_1A3352AE4(*v18, *(v18 + 1), *v35, *(v35 + 8)) & 1) == 0 || (sub_1A34C9FB0(), sub_1A3351BCC(&qword_1EB0CB300, MEMORY[0x1E69AAC08]), (sub_1A34CD040() & 1) == 0))
  {
    v40 = type metadata accessor for AvatarViewRecipe_Provider.Monogram;
    sub_1A335260C(v35, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
    v41 = v18;
    goto LABEL_25;
  }

  v36 = type metadata accessor for AvatarViewRecipe_Provider.Monogram;
  sub_1A335260C(v35, type metadata accessor for AvatarViewRecipe_Provider.Monogram);
  v37 = v18;
LABEL_16:
  sub_1A335260C(v37, v36);
  sub_1A335260C(v24, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
  v31 = 1;
  return v31 & 1;
}

uint64_t sub_1A3353DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8438);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1A328D790(a1, &v20 - v12, &qword_1EB0C69C8);
  sub_1A328D790(a2, &v13[v15], &qword_1EB0C69C8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1A3288FDC(v13, &qword_1EB0C69C8);
LABEL_9:
      type metadata accessor for AvatarViewRecipe_Provider(0);
      sub_1A34C9FB0();
      sub_1A3351BCC(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
      v17 = sub_1A34CD040();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1A328D790(v13, v10, &qword_1EB0C69C8);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1A335260C(v10, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
LABEL_6:
    sub_1A3288FDC(v13, &qword_1EB0C8438);
    goto LABEL_7;
  }

  sub_1A33525A4(&v13[v15], v7, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
  v18 = sub_1A3353638(v10, v7);
  sub_1A335260C(v7, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
  sub_1A335260C(v10, type metadata accessor for AvatarViewRecipe_Provider.OneOf_Provider);
  sub_1A3288FDC(v13, &qword_1EB0C69C8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1A3354120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3354188(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for AvatarViewRecipe_BackgroundRepresentation(0);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C67F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v36 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C84A0);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v36 - v7;
  v8 = type metadata accessor for AvatarViewRecipe_Provider(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6800);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C84A8);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v39 = type metadata accessor for AvatarViewRecipe_Recipe(0);
  v19 = *(v39 + 20);
  v20 = *(v16 + 56);
  v44 = a1;
  sub_1A328D790(a1 + v19, v18, &qword_1EB0C6800);
  sub_1A328D790(v45 + v19, &v18[v20], &qword_1EB0C6800);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) != 1)
  {
    sub_1A328D790(v18, v14, &qword_1EB0C6800);
    if (v21(&v18[v20], 1, v8) != 1)
    {
      sub_1A33525A4(&v18[v20], v11, type metadata accessor for AvatarViewRecipe_Provider);
      v24 = sub_1A3353DDC(v14, v11);
      sub_1A335260C(v11, type metadata accessor for AvatarViewRecipe_Provider);
      sub_1A335260C(v14, type metadata accessor for AvatarViewRecipe_Provider);
      sub_1A3288FDC(v18, &qword_1EB0C6800);
      if ((v24 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1A335260C(v14, type metadata accessor for AvatarViewRecipe_Provider);
LABEL_6:
    v22 = &qword_1EB0C84A8;
    v23 = v18;
LABEL_14:
    sub_1A3288FDC(v23, v22);
    goto LABEL_15;
  }

  if (v21(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_1A3288FDC(v18, &qword_1EB0C6800);
LABEL_8:
  v25 = *(v39 + 24);
  v26 = *(v40 + 48);
  v27 = v43;
  sub_1A328D790(v44 + v25, v43, &qword_1EB0C67F8);
  sub_1A328D790(v45 + v25, v27 + v26, &qword_1EB0C67F8);
  v28 = v42;
  v29 = *(v41 + 48);
  if (v29(v27, 1, v42) == 1)
  {
    if (v29(v27 + v26, 1, v28) == 1)
    {
      sub_1A3288FDC(v27, &qword_1EB0C67F8);
LABEL_18:
      sub_1A34C9FB0();
      sub_1A3351BCC(&qword_1EB0CB300, MEMORY[0x1E69AAC08]);
      v31 = sub_1A34CD040();
      return v31 & 1;
    }

    goto LABEL_13;
  }

  v30 = v38;
  sub_1A328D790(v27, v38, &qword_1EB0C67F8);
  if (v29(v27 + v26, 1, v28) == 1)
  {
    sub_1A335260C(v30, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
LABEL_13:
    v22 = &qword_1EB0C84A0;
    v23 = v27;
    goto LABEL_14;
  }

  v33 = v27 + v26;
  v34 = v37;
  sub_1A33525A4(v33, v37, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
  v35 = sub_1A3352C4C(v30, v34);
  sub_1A335260C(v34, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
  sub_1A335260C(v30, type metadata accessor for AvatarViewRecipe_BackgroundRepresentation);
  sub_1A3288FDC(v27, &qword_1EB0C67F8);
  if (v35)
  {
    goto LABEL_18;
  }

LABEL_15:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1A3354818()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0ECFA8);
  __swift_project_value_buffer(v0, qword_1EB0ECFA8);
  return sub_1A34CA240();
}

uint64_t sub_1A3354894@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  *a1 = *(v1 + 40);
  return result;
}

uint64_t sub_1A335493C(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *a1;
  if (v6 == *(v1 + 40))
  {
    *(v1 + 40) = v6;
    v9 = type metadata accessor for VisualIdentity(0);
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = v1;
    *(&v11 - 1) = v5;
    v12 = v1;
    sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();

    sub_1A3288FDC(v5, &qword_1EB0C5D28);
    return sub_1A3358EFC();
  }

  else
  {
    v7 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v7);
    *(&v11 - 2) = v1;
    *(&v11 - 8) = v6;
    v12 = v1;
    sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();
  }
}

uint64_t sub_1A3354BC8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  *(a1 + 40) = a2 & 1;
  v7 = type metadata accessor for VisualIdentity(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  swift_getKeyPath();
  v10 = a1;
  v11 = v6;
  v12 = a1;
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C9990();

  sub_1A3288FDC(v6, &qword_1EB0C5D28);
  return sub_1A3358EFC();
}

uint64_t sub_1A3354D64()
{
  swift_getKeyPath();
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  return *(v0 + 41);
}

uint64_t sub_1A3354E04(uint64_t result)
{
  if (*(v1 + 41) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();
  }

  return result;
}

uint64_t sub_1A3354F0C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v24 = type metadata accessor for VisualIdentity(0);
  v5 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  swift_getKeyPath();
  v26 = v0;
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v14 = *(v0 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_suggestionStore);
  if (*(v0 + 42) == 2)
  {
    swift_getKeyPath();
    v26 = v0;
    sub_1A34C99A0();

    v15 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__pendingIdentity;
    swift_beginAccess();
    sub_1A328D790(v1 + v15, v4, &qword_1EB0C5D28);
    v16 = v5 + 48;
    v17 = *(v5 + 48);
    v23 = v16;
    if (v17(v4, 1, v24) == 1)
    {
      swift_getKeyPath();
      v25 = v1;
      sub_1A34C99A0();

      v18 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
      swift_beginAccess();
      sub_1A3300BB8(v1 + v18, v13);
      if (v17(v4, 1, v24) != 1)
      {
        sub_1A3288FDC(v4, &qword_1EB0C5D28);
      }
    }

    else
    {
      sub_1A3336E78(v4, v13);
    }

    v21 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_currentIdentity;
    swift_beginAccess();
    sub_1A3300BB8(v14 + v21, v10);
    swift_beginAccess();
    sub_1A335D2F4(v13, v14 + v21);
    swift_endAccess();
    v7 = v10;
  }

  else
  {
    swift_getKeyPath();
    v26 = v0;
    sub_1A34C99A0();

    v19 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
    swift_beginAccess();
    sub_1A3300BB8(v1 + v19, v10);
    v20 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_currentIdentity;
    swift_beginAccess();
    sub_1A3300BB8(v14 + v20, v7);
    swift_beginAccess();
    sub_1A335D2F4(v10, v14 + v20);
    swift_endAccess();
    v13 = v10;
  }

  sub_1A3461E08(v7);
  sub_1A335DAD4(v7, type metadata accessor for VisualIdentity);
  return sub_1A335DAD4(v13, type metadata accessor for VisualIdentity);
}

uint64_t sub_1A3355358()
{
  swift_getKeyPath();
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  return *(v0 + 42);
}

uint64_t sub_1A33553F8(unsigned __int8 a1)
{
  if (*(v1 + 42) == a1)
  {

    return sub_1A3354F0C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();
  }
}

uint64_t sub_1A3355558()
{
  swift_getKeyPath();
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  return *(v0 + 43);
}

uint64_t sub_1A33555F8(uint64_t result)
{
  if (*(v1 + 43) == (result & 1))
  {
    *(v1 + 43) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();
  }

  return result;
}

uint64_t sub_1A3355710()
{
  swift_getKeyPath();
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  return *(v0 + 44);
}

uint64_t sub_1A33557B0(uint64_t result)
{
  if (*(v1 + 44) == (result & 1))
  {
    *(v1 + 44) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();
  }

  return result;
}

uint64_t sub_1A33558C8()
{
  swift_getKeyPath();
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  return *(v0 + 45);
}

uint64_t sub_1A3355968@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + 45);
  return result;
}

uint64_t sub_1A3355A10(uint64_t result)
{
  if (*(v1 + 45) == (result & 1))
  {
    *(v1 + 45) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();
  }

  return result;
}

uint64_t sub_1A3355B20()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_sharedProfileController);
  if (v2)
  {
    swift_getKeyPath();
    sub_1A335DE28(&qword_1EB0C3020, type metadata accessor for SharedProfileController);
    sub_1A34C99A0();

    swift_beginAccess();
    v3 = *(*(v2 + 72) + 16) != 0;
  }

  else
  {
    v3 = 0;
  }

  swift_getKeyPath();
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v4 = v0 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
  swift_beginAccess();
  if (*(v4 + *(type metadata accessor for VisualIdentity(0) + 24)))
  {
    v5 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_1A34C99A0();

    v5 = *(v1 + 45) | v3;
  }

  return v5 & 1;
}

uint64_t sub_1A3355CE8()
{
  v1 = v0;
  v2 = type metadata accessor for VisualIdentity(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13[-v6];
  if (*(v0 + 45) == 1)
  {
    *(v0 + 45) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v13[-16] = v0;
    v13[-8] = 1;
    v14 = v0;
    sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();
  }

  v9 = *(v0 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_suggestionStore);
  swift_getKeyPath();
  v14 = v0;
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v10 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
  swift_beginAccess();
  sub_1A3300BB8(v1 + v10, v7);
  v11 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_currentIdentity;
  swift_beginAccess();
  sub_1A3300BB8(v9 + v11, v4);
  swift_beginAccess();
  sub_1A335D2F4(v7, v9 + v11);
  swift_endAccess();
  sub_1A3461E08(v4);
  sub_1A335DAD4(v4, type metadata accessor for VisualIdentity);
  sub_1A335DAD4(v7, type metadata accessor for VisualIdentity);
  if (*(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_sharedProfileController))
  {
    sub_1A3497E98(0);
  }

  return sub_1A3358EFC();
}

uint64_t sub_1A3355FB0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v3 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
  swift_beginAccess();
  return sub_1A3300BB8(v5 + v3, a1);
}

uint64_t sub_1A3356078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIdentity(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3300BB8(a2, v6);
  v7 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
  swift_beginAccess();
  sub_1A335D2F4(v6, a1 + v7);
  swift_endAccess();
  sub_1A3355CE8();
  return sub_1A335DAD4(v6, type metadata accessor for VisualIdentity);
}

uint64_t sub_1A3356158()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for VisualIdentity(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  swift_getKeyPath();
  v22 = v0;
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  if (*(v0 + 42) == 2)
  {
    v20 = v8;
    v12 = *(v0 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_suggestionStore);
    swift_getKeyPath();
    v22 = v0;
    sub_1A34C99A0();

    v13 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__pendingIdentity;
    swift_beginAccess();
    sub_1A328D790(v1 + v13, v4, &qword_1EB0C5D28);
    v14 = *(v6 + 48);
    if (v14(v4, 1, v5) == 1)
    {
      swift_getKeyPath();
      v19 = v5;
      v21 = v1;
      sub_1A34C99A0();

      v15 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
      swift_beginAccess();
      sub_1A3300BB8(v1 + v15, v11);
      if (v14(v4, 1, v19) != 1)
      {
        sub_1A3288FDC(v4, &qword_1EB0C5D28);
      }
    }

    else
    {
      sub_1A3336E78(v4, v11);
    }

    v16 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_currentIdentity;
    swift_beginAccess();
    v17 = v20;
    sub_1A3300BB8(v12 + v16, v20);
    swift_beginAccess();
    sub_1A335D2F4(v11, v12 + v16);
    swift_endAccess();
    sub_1A3461E08(v17);
    sub_1A335DAD4(v17, type metadata accessor for VisualIdentity);
    sub_1A335DAD4(v11, type metadata accessor for VisualIdentity);
  }

  return sub_1A3358EFC();
}

uint64_t sub_1A33564F4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v5 = *a1;
  swift_beginAccess();
  return sub_1A328D790(v2 + v5, a2, &qword_1EB0C5D28);
}

uint64_t sub_1A33565CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v4 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__pendingIdentity;
  swift_beginAccess();
  return sub_1A328D790(v3 + v4, a2, &qword_1EB0C5D28);
}

uint64_t sub_1A33566A4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1A328D790(a1, &v9[-v5], &qword_1EB0C5D28);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C9990();

  return sub_1A3288FDC(v6, &qword_1EB0C5D28);
}

uint64_t sub_1A33567F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1A328D790(a2, &v9 - v5, &qword_1EB0C5D28);
  v7 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__pendingIdentity;
  swift_beginAccess();
  sub_1A335D284(v6, a1 + v7);
  swift_endAccess();
  sub_1A3356158();
  return sub_1A3288FDC(v6, &qword_1EB0C5D28);
}

uint64_t sub_1A335695C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__coupledIdentity;
  swift_beginAccess();
  sub_1A335D284(a2, a1 + v4);
  return swift_endAccess();
}

void (*sub_1A33569C8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A34C99C0();

  v4[7] = sub_1A33568E8();
  return sub_1A3356B00;
}

void sub_1A3356B00(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A34C99B0();

  free(v1);
}

uint64_t sub_1A3356B94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  swift_getKeyPath();
  v13 = v1;
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v7 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__pendingIdentity;
  swift_beginAccess();
  sub_1A328D790(v2 + v7, v6, &qword_1EB0C5D28);
  v8 = type metadata accessor for VisualIdentity(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1A3336E78(v6, a1);
  }

  swift_getKeyPath();
  v12 = v2;
  sub_1A34C99A0();

  v10 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
  swift_beginAccess();
  sub_1A3300BB8(v2 + v10, a1);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1A3288FDC(v6, &qword_1EB0C5D28);
  }

  return result;
}

uint64_t sub_1A3356DBC(uint64_t a1)
{
  v3 = type metadata accessor for VisualIdentity(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  swift_getKeyPath();
  v14 = v1;
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  if (*(v1 + 42) == 2)
  {
    sub_1A3300BB8(a1, v9);
    (*(v4 + 56))(v9, 0, 1, v3);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v13 - 2) = v1;
    *(&v13 - 1) = v9;
    v14 = v1;
    sub_1A34C9990();

    sub_1A335DAD4(a1, type metadata accessor for VisualIdentity);
    return sub_1A3288FDC(v9, &qword_1EB0C5D28);
  }

  else
  {
    sub_1A3300BB8(a1, v6);
    v12 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v12);
    *(&v13 - 2) = v1;
    *(&v13 - 1) = v6;
    v14 = v1;
    sub_1A34C9990();

    sub_1A335DAD4(a1, type metadata accessor for VisualIdentity);
    return sub_1A335DAD4(v6, type metadata accessor for VisualIdentity);
  }
}

id sub_1A33570E0()
{
  swift_getKeyPath();
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v1 = *(v0 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__contact);

  return v1;
}

id sub_1A3357198@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v4 = *(v3 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__contact);
  *a2 = v4;

  return v4;
}

void sub_1A3357258(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__contact;
  v5 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__contact);
  sub_1A31EE0D8();
  v6 = v5;
  v7 = sub_1A34CD830();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();
  }
}

uint64_t sub_1A33573BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_sharedProfileController);
  if (v3)
  {
    swift_getKeyPath();
    sub_1A335DE28(&qword_1EB0C3020, type metadata accessor for SharedProfileController);
    sub_1A34C99A0();

    v4 = *(v3 + 24);
    v6 = *(v3 + 32);
    v5 = *(v3 + 40);
    v8 = *(v3 + 48);
    v7 = *(v3 + 56);
    LOBYTE(v3) = *(v3 + 64);
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v5 = 0;
    v8 = 0;
    v7 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_1A33574C0(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = *result;
    v3 = *(result + 8);
    v6 = *(result + 24);
    v5 = *(result + 32);
    v7 = *(result + 40);
    v8 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_sharedProfileController);
    if (v8)
    {
      swift_getKeyPath();
      *&v23 = v8;
      sub_1A335DE28(&qword_1EB0C3020, type metadata accessor for SharedProfileController);
      sub_1A34C99A0();

      v10 = *(v8 + 32);
      v9 = *(v8 + 40);
      v11 = *(v8 + 48);
      v12 = *(v8 + 56);
      v13 = *(v8 + 64);
      LOBYTE(v23) = *(v8 + 24);
      *(&v23 + 1) = v10;
      v24 = v9;
      v25 = v11;
      v26 = v12;
      v27 = v13;
      v14 = v4 & 1;
      v17[0] = v14;
      v18 = v3;
      v19 = v2;
      v20 = v6;
      v21 = v5;
      v15 = v7 & 1;
      v22 = v15;

      sub_1A3497FA4(&v23, v17);

      LOBYTE(v23) = v14;
      *(&v23 + 1) = v3;
      v24 = v2;
      v25 = v6;
      v26 = v5;
      v27 = v15;
      return sub_1A34964F0(&v23);
    }

    else
    {
      v16 = *result;

      return sub_1A335DB34(v16, v3, v2);
    }
  }

  return result;
}

uint64_t sub_1A3357660(void *a1, unsigned __int8 a2, uint64_t a3, void *a4, int a5, uint64_t *a6, void *a7)
{
  v8 = v7;
  v145 = a7;
  v136 = a5;
  v135 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v134 = &v129[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v129[-v16];
  v18 = type metadata accessor for VisualIdentity(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v133 = &v129[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v137 = &v129[-v22];
  v23 = *(a3 + 8);
  *&v138 = *a3;
  *(&v138 + 1) = v23;
  v24 = *(a3 + 24);
  v144 = *(a3 + 16);
  v139 = v24;
  v140 = *(a3 + 32);
  v141 = *(a3 + 40);
  v143 = *a6;
  type metadata accessor for VisualIdentityEditorStyleProvider();
  swift_allocObject();
  *(v8 + 32) = sub_1A32D6178();
  *(v8 + 40) = 65792;
  *(v8 + 44) = 0;
  if (qword_1EB0C27F8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v18, qword_1EB0ED9C8);
  sub_1A3300BB8(v25, v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity);
  v26 = *(v19 + 56);
  v26(v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__pendingIdentity, 1, 1, v18);
  v142 = v18;
  v26(v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__coupledIdentity, 1, 1, v18);
  sub_1A34C99D0();
  *(v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__contact) = a1;
  if (a2 == 2)
  {
    v27 = objc_opt_self();
    v28 = a1;
    v29 = [v27 unifiedMeContactMonitor];
    a2 = [v29 isMeContact_];
  }

  else
  {
    v30 = a1;
  }

  v31 = a2 & 1;
  *(v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_isMeContact) = a2 & 1;
  if (v144)
  {
    v152[0] = v138;
    *&v152[1] = v144;
    *(&v152[1] + 1) = v139;
    *&v152[2] = v140;
    BYTE8(v152[2]) = v141;
    type metadata accessor for SharedProfileController();
    swift_allocObject();
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      v46 = 0;
      goto LABEL_17;
    }

    if (qword_1EB0C1250 != -1)
    {
      swift_once();
    }

    v32 = sub_1A34CA250();
    __swift_project_value_buffer(v32, qword_1EB0ECFA8);
    v33 = a1;
    v34 = sub_1A34CA230();
    v35 = sub_1A34CD660();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v131 = v36;
      v132 = swift_slowAlloc();
      *&v152[0] = v132;
      *v36 = 136315138;
      v37 = [v33 identifier];
      v38 = sub_1A34CD110();
      v130 = v35;
      v39 = v38;
      v40 = v34;
      v42 = v41;

      v43 = sub_1A31EE23C(v39, v42, v152);

      v44 = v131;
      *(v131 + 1) = v43;
      _os_log_impl(&dword_1A31E6000, v40, v130, "Creating new shared profile editor for Me contact with identifier: %s", v44, 0xCu);
      v45 = v132;
      __swift_destroy_boxed_opaque_existential_0(v132);
      MEMORY[0x1A58F1010](v45, -1, -1);
      MEMORY[0x1A58F1010](v44, -1, -1);
    }

    else
    {
    }

    type metadata accessor for SharedProfileController();
    memset(v152, 0, 41);
    swift_allocObject();
  }

  v46 = sub_1A3496F88(v152);
LABEL_17:
  *(v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_sharedProfileController) = v46;
  v47 = v135;
  *(v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_contactStore) = v135;
  *(v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_shouldSaveChangesToContactStore) = v136 & 1;
  v48 = v25;
  v49 = v137;
  sub_1A3300BB8(v48, v137);
  v50 = a1;
  v51 = v47;
  *(v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_suggestionStore) = sub_1A3467410(v50, v31, v49);
  type metadata accessor for UserInputRequestCoordinator();
  v52 = swift_allocObject();
  *(v52 + 16) = 0u;
  *(v52 + 32) = 0u;
  *(v52 + 48) = 0;
  v53 = v50;
  LODWORD(v50) = v31;
  v54 = v53;
  sub_1A34C99D0();
  v55 = v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer;
  *v55 = v54;
  *(v55 + 8) = v50;
  *(v55 + 16) = v52;
  v56 = v145;
  *(v8 + 16) = v143;
  *(v8 + 24) = v56;
  v136 = v50;
  if (!v50)
  {

LABEL_23:
    v58 = *(v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer);
    v59 = *(v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer + 8);
    v60 = *(v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer + 16);
    v135 = v51;
    v61 = v51;
    v62 = v58;
    sub_1A34C9010();
    sub_1A3467910(v54, v62, v17);
    if ((*(v19 + 48))(v17, 1, v142) == 1)
    {
      sub_1A3288FDC(v17, &qword_1EB0C5D28);
      v63 = sub_1A34CD4A0();
      v64 = v134;
      (*(*(v63 - 8) + 56))(v134, 1, 1, v63);
      sub_1A34CD450();
      v65 = v54;
      v66 = v61;
      v67 = v62;
      sub_1A34C9010();
      sub_1A34C9010();
      v68 = sub_1A34CD440();
      v69 = swift_allocObject();
      v70 = MEMORY[0x1E69E85E0];
      *(v69 + 16) = v68;
      *(v69 + 24) = v70;
      *(v69 + 32) = v8;
      *(v69 + 40) = v66;
      *(v69 + 48) = v67;
      *(v69 + 56) = v59;
      *(v69 + 64) = v60;
      *(v69 + 72) = v65;
      sub_1A32C0B38(0, 0, v64, &unk_1A34E9510, v69);
    }

    else
    {
      v71 = v133;
      sub_1A3336E78(v17, v133);
      v72 = v137;
      sub_1A3300BB8(v71, v137);
      KeyPath = swift_getKeyPath();
      v134 = v129;
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v129[-16] = v8;
      *&v129[-8] = v72;
      *&v152[0] = v8;
      sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
      sub_1A34C9990();

      sub_1A335DAD4(v71, type metadata accessor for VisualIdentity);
      sub_1A335DAD4(v72, type metadata accessor for VisualIdentity);
    }

    v51 = v135;
    goto LABEL_27;
  }

  v57 = qword_1EB0C2E98;

  if (v57 != -1)
  {
    swift_once();
  }

  if ((sub_1A3498E5C() & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_27:
  if (qword_1EB0C1250 != -1)
  {
    swift_once();
  }

  v74 = sub_1A34CA250();
  v75 = __swift_project_value_buffer(v74, qword_1EB0ECFA8);
  v76 = v54;
  v77 = sub_1A34CA230();
  v78 = sub_1A34CD660();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    *&v152[0] = v137;
    *v79 = 136315394;
    v80 = [v76 identifier];
    LODWORD(v135) = v78;
    v81 = v75;
    v82 = v8;
    v83 = v76;
    v84 = v51;
    v85 = v80;
    v86 = sub_1A34CD110();
    v88 = v87;

    v51 = v84;
    v76 = v83;
    v8 = v82;
    v75 = v81;
    v89 = sub_1A31EE23C(v86, v88, v152);

    *(v79 + 4) = v89;
    *(v79 + 12) = 1024;
    *(v79 + 14) = v136;
    _os_log_impl(&dword_1A31E6000, v77, v135, "Created visual identity editor for contact with identifier: %s isMeContact: %{BOOL}d", v79, 0x12u);
    v90 = v137;
    __swift_destroy_boxed_opaque_existential_0(v137);
    MEMORY[0x1A58F1010](v90, -1, -1);
    MEMORY[0x1A58F1010](v79, -1, -1);
  }

  swift_getKeyPath();
  *&v152[0] = v8;
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v91 = v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
  swift_beginAccess();
  if (*(v91 + *(v142 + 24)) == 1)
  {
    if (*(v8 + 41))
    {
      v92 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v92);
      *&v129[-16] = v8;
      v129[-8] = 0;
      *&v152[0] = v8;
      sub_1A34C9990();
    }

    if (*(v8 + 42))
    {
      v93 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v93);
      *&v129[-16] = v8;
      v129[-8] = 0;
      *&v152[0] = v8;
      sub_1A34C9990();

      sub_1A335DB34(v138, *(&v138 + 1), v144);
    }

    else
    {

      sub_1A335DB34(v138, *(&v138 + 1), v144);
      *(v8 + 42) = 0;
      sub_1A3354F0C();
    }

    if (v136)
    {
      v94 = *(v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_sharedProfileController);
      if (v94)
      {
        swift_getKeyPath();
        v95 = OBJC_IVAR____TtC14ContactsUICore23SharedProfileController___observationRegistrar;
        *&v152[0] = v94;
        v96 = sub_1A335DE28(&qword_1EB0C3020, type metadata accessor for SharedProfileController);
        sub_1A34C9010();
        sub_1A34C99A0();

        if (*(v94 + 24))
        {
        }

        else
        {
          v144 = v95;
          v135 = v51;
          v145 = v76;
          v97 = v76;
          v98 = sub_1A34CA230();
          v99 = sub_1A34CD660();

          v100 = os_log_type_enabled(v98, v99);
          v134 = v75;
          v143 = v96;
          if (v100)
          {
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            *&v152[0] = v102;
            *v101 = 136315138;
            v103 = [v97 identifier];
            v104 = sub_1A34CD110();
            v106 = v105;

            v107 = sub_1A31EE23C(v104, v106, v152);

            *(v101 + 4) = v107;
            _os_log_impl(&dword_1A31E6000, v98, v99, "Enabling SNaP in onboarding flow for contact with identifier: %s", v101, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v102);
            MEMORY[0x1A58F1010](v102, -1, -1);
            MEMORY[0x1A58F1010](v101, -1, -1);
          }

          swift_getKeyPath();
          *&v152[0] = v94;
          sub_1A34C99A0();

          v108 = *(v94 + 40);
          v142 = *(v94 + 32);
          v110 = *(v94 + 48);
          v109 = *(v94 + 56);
          v111 = *(v94 + 64);
          swift_getKeyPath();
          *&v152[0] = v94;

          sub_1A34C99A0();

          v113 = *(v94 + 32);
          v112 = *(v94 + 40);
          v114 = *(v94 + 48);
          v115 = *(v94 + 56);
          v116 = *(v94 + 64);
          LOBYTE(v152[0]) = *(v94 + 24);
          *(&v152[0] + 1) = v113;
          *&v152[1] = v112;
          *(&v152[1] + 1) = v114;
          *&v152[2] = v115;
          BYTE8(v152[2]) = v116;
          v146[0] = 1;
          v117 = v142;
          v147 = v142;
          v148 = v108;
          v149 = v110;
          v150 = v109;
          v151 = v111;

          sub_1A3497FA4(v152, v146);

          LOBYTE(v152[0]) = 1;
          *(&v152[0] + 1) = v117;
          *&v152[1] = v108;
          *(&v152[1] + 1) = v110;
          *&v152[2] = v109;
          BYTE8(v152[2]) = v111;
          sub_1A34964F0(v152);

          v51 = v135;
          v76 = v145;
        }
      }
    }

    v118 = v76;
    v119 = sub_1A34CA230();
    v120 = sub_1A34CD660();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *&v152[0] = v122;
      *v121 = 136315138;
      v123 = [v118 identifier];
      v124 = sub_1A34CD110();
      v126 = v125;

      v127 = sub_1A31EE23C(v124, v126, v152);

      *(v121 + 4) = v127;
      _os_log_impl(&dword_1A31E6000, v119, v120, "Current visual identity is missing from contact with identifier: %s, starting flow to create new visual identity", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v122);
      MEMORY[0x1A58F1010](v122, -1, -1);
      MEMORY[0x1A58F1010](v121, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_1A335DB34(v138, *(&v138 + 1), v144);
  }

  return v8;
}

uint64_t sub_1A3358804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v8[3] = a4;
  v8[4] = v18;
  v13 = sub_1A34C9780();
  v8[5] = v13;
  v8[6] = *(v13 - 8);
  v8[7] = swift_task_alloc();
  type metadata accessor for VisualIdentity(0);
  v14 = swift_task_alloc();
  v8[8] = v14;
  v8[9] = sub_1A34CD450();
  v8[10] = sub_1A34CD440();
  v15 = swift_task_alloc();
  v8[11] = v15;
  *v15 = v8;
  v15[1] = sub_1A3358984;

  return sub_1A3467EFC(v14, v18, a5, a6, a7, a8);
}

uint64_t sub_1A3358984()
{
  *(*v1 + 96) = v0;

  v3 = sub_1A34CD3E0();
  if (v0)
  {
    v4 = sub_1A3358C38;
  }

  else
  {
    v4 = sub_1A3358ADC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1A3358ADC()
{
  v1 = v0[8];
  v2 = v0[3];

  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[2] = v2;
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C9990();

  sub_1A335DAD4(v1, type metadata accessor for VisualIdentity);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3358C38()
{
  v27 = v0;

  if (qword_1EB0C1250 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[4];
  v3 = sub_1A34CA250();
  __swift_project_value_buffer(v3, qword_1EB0ECFA8);
  v4 = v2;
  v5 = v1;
  v6 = sub_1A34CA230();
  v7 = sub_1A34CD640();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  if (v8)
  {
    v11 = v0[6];
    v10 = v0[7];
    v13 = v0[4];
    v12 = v0[5];
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 136315394;
    v15 = [v13 id];
    sub_1A34C9760();

    sub_1A335DE28(&qword_1ED854E60, MEMORY[0x1E69695A8]);
    v16 = sub_1A34CDDF0();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_1A31EE23C(v16, v18, &v26);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v9;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v24 = v21;
    _os_log_impl(&dword_1A31E6000, v6, v7, "Error importing current visual identity from contact: %s error: %@", v14, 0x16u);
    sub_1A3288FDC(v24, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1A58F1010](v25, -1, -1);
    MEMORY[0x1A58F1010](v14, -1, -1);
  }

  else
  {
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1A3358EFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for VisualIdentity(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v30 = *(v0 + 32);
  swift_getKeyPath();
  v35 = v0;
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v13 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__pendingIdentity;
  swift_beginAccess();
  sub_1A328D790(v1 + v13, v6, &qword_1EB0C5D28);
  v29 = v8;
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    swift_getKeyPath();
    v34 = v1;
    sub_1A34C99A0();

    v15 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
    swift_beginAccess();
    sub_1A3300BB8(v1 + v15, v12);
    if (v14(v6, 1, v7) != 1)
    {
      sub_1A3288FDC(v6, &qword_1EB0C5D28);
    }
  }

  else
  {
    sub_1A3336E78(v6, v12);
  }

  swift_getKeyPath();
  v33 = v1;
  sub_1A34C99A0();

  v16 = *(v1 + 40);
  v17 = sub_1A34CD4A0();
  v18 = v32;
  (*(*(v17 - 8) + 56))(v32, 1, 1, v17);
  v19 = v31;
  sub_1A3300BB8(v12, v31);
  sub_1A34CD450();
  v20 = v30;
  sub_1A34C9010();
  v21 = sub_1A34CD440();
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = v22 + v28;
  v24 = (v22 + v28) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 16) = v21;
  *(v25 + 24) = v26;
  sub_1A3336E78(v19, v25 + v22);
  *(v25 + v23) = v16;
  *(v25 + v24 + 8) = v20;
  sub_1A32C0B38(0, 0, v18, &unk_1A34E9460, v25);

  return sub_1A335DAD4(v12, type metadata accessor for VisualIdentity);
}

uint64_t sub_1A3359340(uint64_t a1, int a2)
{
  v3 = v2;
  v40 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v43 = type metadata accessor for VisualIdentity(0);
  v10 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v37 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  swift_getKeyPath();
  v45 = v2;
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v17 = *(v2 + 42);
  v42 = a1;
  v37 = v16;
  if (!v17)
  {
    sub_1A3300BB8(a1, v16);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v37 - 2) = v2;
    *(&v37 - 1) = v16;
    v45 = v2;
    sub_1A34C9990();

    result = sub_1A335DAD4(v16, type metadata accessor for VisualIdentity);
    if (*(v2 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_isMeContact))
    {
      return result;
    }

    if (*(v2 + 42) == 1)
    {
      sub_1A3354F0C();
    }

    else
    {
      v36 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v36);
      *(&v37 - 2) = v2;
      *(&v37 - 8) = 1;
      v45 = v2;
      sub_1A34C9990();
    }
  }

  v18 = *(v2 + 24);
  swift_getKeyPath();
  v45 = v2;
  sub_1A34C99A0();

  if (sub_1A3335964((*(v2 + 40) & 1) == 0, v18))
  {
    sub_1A3300BB8(v42, v9);
    (*(v10 + 56))(v9, 0, 1, v43);
    v19 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v19);
    *(&v37 - 2) = v2;
    *(&v37 - 1) = v9;
    v45 = v2;
    sub_1A34C9990();

    sub_1A3288FDC(v9, &qword_1EB0C5D28);
  }

  v20 = v43;
  if (v40)
  {
    sub_1A3300BB8(v42, v9);
    (*(v10 + 56))(v9, 0, 1, v20);
    sub_1A335ADC8(v9);
    return sub_1A3288FDC(v9, &qword_1EB0C5D28);
  }

  else
  {
    sub_1A3300BB8(v42, v41);
    swift_getKeyPath();
    v45 = v2;
    sub_1A34C99A0();

    v22 = *(v2 + 40);
    swift_getKeyPath();
    v45 = v2;
    sub_1A34C99A0();

    v23 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__pendingIdentity;
    swift_beginAccess();
    v24 = v3 + v23;
    v25 = v39;
    sub_1A328D790(v24, v39, &qword_1EB0C5D28);
    v26 = *(v10 + 48);
    if (v26(v25, 1, v20) == 1)
    {
      swift_getKeyPath();
      v44 = v3;
      sub_1A34C99A0();

      v27 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
      swift_beginAccess();
      v28 = v3 + v27;
      v30 = v38;
      v29 = v39;
      sub_1A3300BB8(v28, v38);
      v31 = v26(v29, 1, v20);
      v32 = v37;
      if (v31 != 1)
      {
        sub_1A3288FDC(v29, &qword_1EB0C5D28);
      }
    }

    else
    {
      v30 = v38;
      sub_1A3336E78(v25, v38);
      v32 = v37;
    }

    v34 = 32;
    if (v22)
    {
      v34 = 28;
    }

    v35 = v41;
    __swift_assign_boxed_opaque_existential_1((v41 + *(v20 + v34)), (v30 + *(v20 + v34)));
    sub_1A335DAD4(v30, type metadata accessor for VisualIdentity);
    sub_1A3300BB8(v35, v32);
    sub_1A3356DBC(v32);
    return sub_1A335DAD4(v35, type metadata accessor for VisualIdentity);
  }
}

uint64_t sub_1A33599F0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v5 + 736) = v4;
  *(v5 + 728) = a3;
  *(v5 + 720) = a2;
  *(v5 + 712) = a1;
  type metadata accessor for VisualIdentityExporter();
  *(v5 + 744) = swift_task_alloc();
  v7 = a4[1];
  *(v5 + 16) = *a4;
  *(v5 + 32) = v7;
  *(v5 + 48) = a4[2];
  *(v5 + 57) = *(a4 + 41);
  sub_1A34CD450();
  *(v5 + 752) = sub_1A34CD440();
  v8 = sub_1A34CD3E0();
  *(v5 + 760) = v8;
  *(v5 + 768) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A3359B14, v8, v9);
}

uint64_t sub_1A3359B14()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  *(v0 + 560) = *(v0 + 712);
  *(v0 + 568) = *(v0 + 720);
  *(v0 + 776) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5AD8);
  MEMORY[0x1A58EE120]();
  v3 = *(v0 + 656);
  v4 = [v3 selfOrMutableCopy];
  *(v0 + 784) = v4;

  v5 = v4;
  v6 = [v5 identifier];
  v7 = sub_1A34CD110();
  v9 = v8;

  *(v0 + 792) = v7;
  *(v0 + 800) = v9;
  swift_getKeyPath();
  *(v0 + 664) = v2;
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  v10 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
  swift_beginAccess();
  sub_1A3300BB8(v2 + v10, v1);
  v11 = swift_task_alloc();
  *(v0 + 808) = v11;
  *v11 = v0;
  v11[1] = sub_1A3359D20;

  return sub_1A3415504(v5);
}

uint64_t sub_1A3359D20()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {

    v3 = *(v2 + 768);
    v4 = *(v2 + 760);
    v5 = sub_1A335AD00;
  }

  else
  {
    v3 = *(v2 + 768);
    v4 = *(v2 + 760);
    v5 = sub_1A3359E84;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3359E84()
{
  v120 = v0;
  v119[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 736);

  v2 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_sharedProfileController);
  if (v2)
  {
    swift_getKeyPath();
    *(v0 + 704) = v2;
    sub_1A335DE28(&qword_1EB0C3020, type metadata accessor for SharedProfileController);
    sub_1A34C99A0();

    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = *(v2 + 40);
    v6 = *(v2 + 56);
    v115 = *(v2 + 48);
    v7 = *(v2 + 64);
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v115 = 0;
    v6 = 0;
    v7 = 0;
  }

  v116 = v4;
  v8 = *(v0 + 784);
  v9 = [objc_allocWithZone(MEMORY[0x1E695CF88]) init];
  v10 = [v8 hasBeenPersisted];
  v113 = v3;
  v114 = v6;
  v117 = v5;
  v118 = v7;
  if (v10)
  {
    v111 = v10;
    v11 = v9;
    if (qword_1EB0C1250 != -1)
    {
      swift_once();
    }

    v12 = sub_1A34CA250();
    __swift_project_value_buffer(v12, qword_1EB0ECFA8);

    sub_1A34C9010();
    v13 = sub_1A34CA230();
    v14 = sub_1A34CD660();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 800);
      v16 = *(v0 + 792);
      v17 = *(v0 + 736);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v119[0] = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_1A31EE23C(v16, v15, v119);
      *(v18 + 12) = 1024;
      *(v18 + 14) = *(v17 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_isMeContact);
      v7 = v118;
      v3 = v113;

      _os_log_impl(&dword_1A31E6000, v13, v14, "Updating existing contact with identifier: %s isMeContact: %{BOOL}d", v18, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1A58F1010](v19, -1, -1);
      MEMORY[0x1A58F1010](v18, -1, -1);
    }

    else
    {
    }

    v29 = v11;
    v30 = *(v0 + 736);
    [v11 updateContact_];
    if (*(v30 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_shouldSaveChangesToContactStore))
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

  if (*(*(v0 + 736) + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_isMeContact) == 1 && v5 != 0)
  {
    v111 = 0;
    v36 = qword_1EB0C1250;

    if (v36 != -1)
    {
      swift_once();
    }

    v108 = v9;
    v37 = sub_1A34CA250();
    __swift_project_value_buffer(v37, qword_1EB0ECFA8);

    v38 = sub_1A34CA230();
    v39 = sub_1A34CD660();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 800);
      v41 = *(v0 + 792);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v119[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1A31EE23C(v41, v40, v119);
      _os_log_impl(&dword_1A31E6000, v38, v39, "Creating new Me contact with identifier: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1A58F1010](v43, -1, -1);
      v44 = v3;
      MEMORY[0x1A58F1010](v42, -1, -1);
    }

    else
    {

      v44 = v3;
    }

    v75 = *(v0 + 784);
    v76 = *(v0 + 736);
    v77 = sub_1A34CD0E0();
    [v75 setGivenName_];

    v78 = sub_1A34CD0E0();
    v7 = v118;
    sub_1A335DB34(v44, v116, v117);
    [v75 setFamilyName_];

    v29 = v108;
    [v108 addContact:v75 toContainerWithIdentifier:0];
    v3 = v44;
    if (*(v76 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_shouldSaveChangesToContactStore))
    {
LABEL_20:
      v31 = *(*(v0 + 736) + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_contactStore);
      *(v0 + 688) = 0;
      v32 = [v31 executeSaveRequest:v29 error:{v0 + 688, v108}];
      v33 = *(v0 + 688);
      if (v32)
      {
        if (v111)
        {
          v34 = *(v0 + 784);
          v35 = v33;
LABEL_39:

LABEL_40:
          if (v2)
          {
            sub_1A34980C4(*(v0 + 784));
          }

          goto LABEL_43;
        }

        v94 = qword_1EB0C1250;
        v95 = v33;
        if (v94 != -1)
        {
          swift_once();
        }

        v96 = sub_1A34CA250();
        __swift_project_value_buffer(v96, qword_1EB0ECFA8);

        v97 = sub_1A34CA230();
        v98 = sub_1A34CD660();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = *(v0 + 800);
          v100 = *(v0 + 792);
          v110 = v29;
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v119[0] = v102;
          *v101 = 136315138;
          *(v101 + 4) = sub_1A31EE23C(v100, v99, v119);
          _os_log_impl(&dword_1A31E6000, v97, v98, "Setting new Me contact with identifier: %s", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v102);
          v103 = v102;
          v7 = v118;
          v3 = v113;
          MEMORY[0x1A58F1010](v103, -1, -1);
          v104 = v101;
          v29 = v110;
          MEMORY[0x1A58F1010](v104, -1, -1);
        }

        v105 = *(v0 + 784);
        *(v0 + 696) = 0;
        v106 = [v31 setMeContact:v105 error:v0 + 696];

        v107 = *(v0 + 696);
        if (v106)
        {
          goto LABEL_40;
        }

        v46 = v107;
      }

      else
      {
        v45 = *(v0 + 784);
        v46 = v33;
      }

      v47 = sub_1A34C9580();

      swift_willThrow();
      if (qword_1EB0C1250 != -1)
      {
        swift_once();
      }

      v48 = sub_1A34CA250();
      __swift_project_value_buffer(v48, qword_1EB0ECFA8);

      v49 = v47;
      v50 = sub_1A34CA230();
      v51 = sub_1A34CD640();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = *(v0 + 800);
        v53 = *(v0 + 792);
        v54 = swift_slowAlloc();
        v109 = v29;
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v119[0] = v56;
        *v54 = 136315394;
        v57 = v53;
        v7 = v118;
        v3 = v113;
        *(v54 + 4) = sub_1A31EE23C(v57, v52, v119);
        *(v54 + 12) = 2112;
        v58 = v47;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 14) = v59;
        *v55 = v59;
        _os_log_impl(&dword_1A31E6000, v50, v51, "Error saving visual identity edits to contact with identifier: %s error: %@", v54, 0x16u);
        sub_1A3288FDC(v55, &unk_1EB0C6C40);
        v60 = v55;
        v61 = v117;
        MEMORY[0x1A58F1010](v60, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x1A58F1010](v56, -1, -1);
        MEMORY[0x1A58F1010](v54, -1, -1);

LABEL_44:
        if (qword_1EB0C1250 != -1)
        {
          swift_once();
        }

        v62 = (v0 + 272);
        v79 = (v0 + 336);
        v80 = sub_1A34CA250();
        __swift_project_value_buffer(v80, qword_1EB0ECFA8);

        v81 = sub_1A34CA230();
        v82 = sub_1A34CD660();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = *(v0 + 800);
          v84 = *(v0 + 792);
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v119[0] = v86;
          *v85 = 136315138;
          v87 = v84;
          v61 = v117;
          *(v85 + 4) = sub_1A31EE23C(v87, v83, v119);
          _os_log_impl(&dword_1A31E6000, v81, v82, "Returning edited contact with identifier: %s", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x1A58F1010](v86, -1, -1);
          v88 = v85;
          v7 = v118;
          v3 = v113;
          MEMORY[0x1A58F1010](v88, -1, -1);
        }

        v69 = v116;
        v89 = *(v0 + 784);
        *(v0 + 632) = *(v0 + 712);
        *(v0 + 640) = *(v0 + 720);
        *(v0 + 680) = v89;
        v112 = v89;
        sub_1A34CC910();
        v90 = *(v0 + 32);
        *v79 = *(v0 + 16);
        *(v0 + 352) = v90;
        *(v0 + 368) = *(v0 + 48);
        *(v0 + 377) = *(v0 + 57);
        *(v0 + 512) = v3;
        *(v0 + 520) = v116;
        *(v0 + 528) = v61;
        *(v0 + 536) = v115;
        v70 = v61;
        *(v0 + 544) = v114;
        *(v0 + 552) = v7;
        sub_1A328D790(v0 + 16, v0 + 400, &qword_1EB0C84B8);
        sub_1A32B6068(v3, v116, v61);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C84B8);
        sub_1A34CC910();
        v91 = *(v0 + 352);
        *v62 = *v79;
        *(v0 + 288) = v91;
        *(v0 + 304) = *(v0 + 368);
        v74 = *(v0 + 377);
        goto LABEL_49;
      }

LABEL_43:
      v61 = v117;
      goto LABEL_44;
    }

LABEL_38:
    v34 = *(v0 + 784);
    goto LABEL_39;
  }

  if (qword_1EB0C1250 != -1)
  {
    swift_once();
  }

  v21 = sub_1A34CA250();
  __swift_project_value_buffer(v21, qword_1EB0ECFA8);

  v22 = sub_1A34CA230();
  v23 = sub_1A34CD640();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 800);
    v25 = *(v0 + 792);
    v26 = v9;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v119[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1A31EE23C(v25, v24, v119);
    _os_log_impl(&dword_1A31E6000, v22, v23, "Contact is not persisted and is not the Me contact, saving changes is not supported for contact with identifier: %s.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1A58F1010](v28, -1, -1);
    MEMORY[0x1A58F1010](v27, -1, -1);
  }

  else
  {
  }

  v62 = (v0 + 80);

  v63 = sub_1A34CA230();
  v64 = sub_1A34CD660();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = *(v0 + 800);
    v66 = *(v0 + 792);
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v119[0] = v68;
    *v67 = 136315138;
    *(v67 + 4) = sub_1A31EE23C(v66, v65, v119);
    _os_log_impl(&dword_1A31E6000, v63, v64, "Returning edited contact with identifier: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x1A58F1010](v68, -1, -1);
    MEMORY[0x1A58F1010](v67, -1, -1);
  }

  v69 = v116;
  v70 = v117;
  v71 = *(v0 + 784);
  *(v0 + 608) = *(v0 + 712);
  *(v0 + 616) = *(v0 + 720);
  *(v0 + 672) = v71;
  v112 = v71;
  sub_1A34CC910();
  v72 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v72;
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 185) = *(v0 + 57);
  *(v0 + 464) = v3;
  *(v0 + 472) = v116;
  *(v0 + 480) = v117;
  *(v0 + 488) = v115;
  *(v0 + 496) = v114;
  *(v0 + 504) = v118;
  sub_1A328D790(v0 + 16, v0 + 208, &qword_1EB0C84B8);
  sub_1A32B6068(v3, v116, v117);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C84B8);
  sub_1A34CC910();
  v73 = *(v0 + 160);
  *v62 = *(v0 + 144);
  *(v0 + 96) = v73;
  *(v0 + 112) = *(v0 + 176);
  v74 = *(v0 + 185);
LABEL_49:
  *(v62 + 41) = v74;
  sub_1A3288FDC(v62, &qword_1EB0C84B8);
  sub_1A335DB34(v3, v69, v70);

  sub_1A335DAD4(*(v0 + 744), type metadata accessor for VisualIdentityExporter);

  v92 = *(v0 + 8);

  return v92();
}

uint64_t sub_1A335AD00()
{
  v1 = v0[98];
  v2 = v0[93];

  sub_1A335DAD4(v2, type metadata accessor for VisualIdentityExporter);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A335ADC8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel___observationRegistrar;
  v20 = v1;
  v11 = sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  if ((*(v1 + 40) & 1) == 0)
  {
    v19[1] = v11;
    v19[2] = v10;
    sub_1A328D790(a1, v6, &qword_1EB0C5D28);
    v12 = type metadata accessor for VisualIdentity(0);
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    if (v14(v6, 1, v12) == 1)
    {
      swift_getKeyPath();
      v20 = v1;
      sub_1A34C99A0();

      v15 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
      swift_beginAccess();
      sub_1A3300BB8(v2 + v15, v9);
      if (v14(v6, 1, v12) != 1)
      {
        sub_1A3288FDC(v6, &qword_1EB0C5D28);
      }
    }

    else
    {
      sub_1A3336E78(v6, v9);
    }

    (*(v13 + 56))(v9, 0, 1, v12);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v19[-2] = v2;
    v19[-1] = v9;
    v21 = v2;
    sub_1A34C9990();

    sub_1A3288FDC(v9, &qword_1EB0C5D28);
  }

  if (*(v2 + 42) == 2)
  {
    return sub_1A3354F0C();
  }

  v18 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v18);
  v19[-2] = v2;
  LOBYTE(v19[-1]) = 2;
  v21 = v2;
  sub_1A34C9990();
}

uint64_t sub_1A335B170(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v59 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v59 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  v14 = type metadata accessor for VisualIdentity(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v59 - v23;
  if ((a1 & 1) == 0)
  {
    v64 = v22;
    v60 = v6;
    swift_getKeyPath();
    v24 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel___observationRegistrar;
    v73[0] = v2;
    sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C99A0();

    v25 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__pendingIdentity;
    swift_beginAccess();
    sub_1A328D790(v2 + v25, v13, &qword_1EB0C5D28);
    v68 = v15;
    v26 = *(v15 + 48);
    v27 = v26(v13, 1, v14);
    v65 = 0;
    v62 = v15 + 48;
    v61 = v26;
    v63 = v24;
    if (v27 == 1)
    {
      swift_getKeyPath();
      v73[0] = v2;
      sub_1A34C99A0();

      v28 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
      swift_beginAccess();
      v29 = v2 + v28;
      v30 = v70;
      sub_1A3300BB8(v29, v70);
      v31 = v26(v13, 1, v14);
      v32 = v30;
      if (v31 != 1)
      {
        sub_1A3288FDC(v13, &qword_1EB0C5D28);
      }
    }

    else
    {
      v32 = v70;
      sub_1A3336E78(v13, v70);
    }

    swift_getKeyPath();
    v73[0] = v2;
    sub_1A34C99A0();

    v33 = *(v2 + 40);
    swift_getKeyPath();
    v73[0] = v2;
    sub_1A34C99A0();

    v34 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
    swift_beginAccess();
    sub_1A3300BB8(v2 + v34, v20);
    v35 = 32;
    if (v33)
    {
      v35 = 28;
    }

    __swift_assign_boxed_opaque_existential_1((v32 + *(v14 + v35)), &v20[*(v14 + v35)]);
    sub_1A335DAD4(v20, type metadata accessor for VisualIdentity);
    v36 = v64;
    sub_1A3300BB8(v32, v64);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v59 - 2) = v2;
    *(&v59 - 1) = v36;
    v73[0] = v2;
    sub_1A34C9990();

    sub_1A335DAD4(v36, type metadata accessor for VisualIdentity);
    swift_getKeyPath();
    v73[0] = v2;
    sub_1A34C99A0();

    v38 = v70;
    if ((*(v2 + 40) & 1) == 0)
    {
      swift_getKeyPath();
      v71 = v2;
      sub_1A34C99A0();

      v39 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__coupledIdentity;
      swift_beginAccess();
      v40 = v2 + v39;
      v41 = v66;
      sub_1A328D790(v40, v66, &qword_1EB0C5D28);
      if (v61(v41, 1, v14))
      {
        sub_1A3288FDC(v41, &qword_1EB0C5D28);
      }

      else
      {
        sub_1A31EE4BC(v41 + *(v14 + 28), v72);
        sub_1A3288FDC(v41, &qword_1EB0C5D28);
        sub_1A31EE568(v72, v73);
        v42 = sub_1A34CD4A0();
        v43 = v60;
        (*(*(v42 - 8) + 56))(v60, 1, 1, v42);
        sub_1A31EE4BC(v73, v72);
        sub_1A34CD450();
        sub_1A34C9010();
        v44 = sub_1A34CD440();
        v45 = swift_allocObject();
        v46 = MEMORY[0x1E69E85E0];
        v45[2] = v44;
        v45[3] = v46;
        sub_1A31EE568(v72, (v45 + 4));
        v45[9] = v2;
        sub_1A32C0B38(0, 0, v43, &unk_1A34E93E0, v45);

        __swift_destroy_boxed_opaque_existential_0(v73);
      }

      v38 = v70;
    }

    sub_1A335DAD4(v38, type metadata accessor for VisualIdentity);
    v15 = v68;
  }

  v47 = sub_1A33569C8(v73);
  v49 = v48;
  if ((*(v15 + 48))(v48, 1, v14))
  {
    (v47)(v73, 0);
  }

  else
  {
    swift_getKeyPath();
    v70 = v14;
    v68 = v15;
    *&v72[0] = v2;
    sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C99A0();

    v50 = *(v2 + 40);
    swift_getKeyPath();
    *&v72[0] = v2;
    sub_1A34C99A0();
    v15 = v68;
    v14 = v70;

    v51 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
    swift_beginAccess();
    v52 = v2 + v51;
    v53 = v67;
    sub_1A3300BB8(v52, v67);
    v54 = 28;
    if (v50)
    {
      v54 = 32;
    }

    __swift_assign_boxed_opaque_existential_1((v49 + *(v14 + v54)), (v53 + *(v14 + v54)));
    sub_1A335DAD4(v53, type metadata accessor for VisualIdentity);
    (v47)(v73, 0);
  }

  v55 = v69;
  (*(v15 + 56))(v69, 1, 1, v14);
  v56 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v56);
  *(&v59 - 2) = v2;
  *(&v59 - 1) = v55;
  v73[0] = v2;
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C9990();

  sub_1A3288FDC(v55, &qword_1EB0C5D28);
  if (*(v2 + 42) == 1)
  {
    return sub_1A3354F0C();
  }

  v58 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v58);
  *(&v59 - 2) = v2;
  *(&v59 - 8) = 1;
  v73[0] = v2;
  sub_1A34C9990();
}

uint64_t sub_1A335BC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[106] = a5;
  v5[105] = a4;
  sub_1A34CD450();
  v5[107] = sub_1A34CD440();
  v7 = sub_1A34CD3E0();
  v5[108] = v7;
  v5[109] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A335BD0C, v7, v6);
}

uint64_t sub_1A335BD0C()
{
  *(v0 + 248) = 0u;
  v1 = *(v0 + 840);
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0;
  sub_1A31EE4BC(v1, v0 + 664);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBD80);
  type metadata accessor for MemojiAvatarSource();
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 848);
    v3 = *(v0 + 816);
    *(v0 + 880) = v3;
    swift_getKeyPath();
    *(v0 + 832) = v2;
    sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C99A0();

    v4 = *(v2 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__contact);
    *(v0 + 888) = v4;
    v5 = v4;
    v6 = swift_task_alloc();
    *(v0 + 896) = v6;
    *v6 = v0;
    v6[1] = sub_1A335C154;

    return sub_1A34198E8(v0 + 536, v5, v3);
  }

  else
  {
    sub_1A31EE4BC(*(v0 + 840), v0 + 704);
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 848);
      *(v0 + 904) = *(v0 + 608);
      *(v0 + 145) = *(v0 + 616);
      *(v0 + 912) = *(v0 + 632);
      swift_getKeyPath();
      *(v0 + 824) = v8;
      sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
      sub_1A34C99A0();

      v9 = *(v8 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__contact);
      *(v0 + 920) = v9;
      v10 = v9;

      return MEMORY[0x1EEE6DFA0](sub_1A335C498, 0, 0);
    }

    else
    {

      sub_1A328D790(v0 + 248, v0 + 392, &qword_1EB0C84B0);
      if (*(v0 + 416))
      {
        v11 = *(v0 + 392);
        *(v0 + 336) = *(v0 + 408);
        v12 = *(v0 + 440);
        *(v0 + 352) = *(v0 + 424);
        *(v0 + 368) = v12;
        *(v0 + 384) = *(v0 + 456);
        *(v0 + 320) = v11;
        v13 = sub_1A33569C8((v0 + 784));
        v15 = v14;
        v16 = type metadata accessor for VisualIdentity(0);
        if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
        {
          *(v0 + 768) = &type metadata for PosterConfigurationSource;
          *(v0 + 776) = &off_1F16220A8;
          v17 = swift_allocObject();
          *(v0 + 744) = v17;
          sub_1A335DA24(v0 + 320, v17 + 16);
          v18 = *(v16 + 32);
          __swift_destroy_boxed_opaque_existential_0(v15 + v18);
          sub_1A31EE568((v0 + 744), v15 + v18);
        }

        (v13)(v0 + 784, 0);
        sub_1A335D9D0(v0 + 320);
        v19 = v0 + 248;
      }

      else
      {
        sub_1A3288FDC(v0 + 248, &qword_1EB0C84B0);
        v19 = v0 + 392;
      }

      sub_1A3288FDC(v19, &qword_1EB0C84B0);
      v20 = *(v0 + 8);

      return v20();
    }
  }
}

uint64_t sub_1A335C154()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 888);
  if (v0)
  {

    v5 = *(v3 + 872);
    v6 = *(v3 + 864);
    v7 = sub_1A335CCC0;
  }

  else
  {

    v5 = *(v3 + 872);
    v6 = *(v3 + 864);
    v7 = sub_1A335C298;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A335C298()
{

  sub_1A3288FDC(v0 + 248, &qword_1EB0C84B0);
  v1 = *(v0 + 568);
  v2 = *(v0 + 584);
  v3 = *(v0 + 536);
  *(v0 + 264) = *(v0 + 552);
  *(v0 + 280) = v1;
  *(v0 + 296) = v2;
  *(v0 + 312) = *(v0 + 600);
  *(v0 + 248) = v3;
  sub_1A328D790(v0 + 248, v0 + 392, &qword_1EB0C84B0);
  if (*(v0 + 416))
  {
    v4 = *(v0 + 440);
    *(v0 + 352) = *(v0 + 424);
    *(v0 + 368) = v4;
    *(v0 + 384) = *(v0 + 456);
    v5 = *(v0 + 408);
    *(v0 + 320) = *(v0 + 392);
    *(v0 + 336) = v5;
    v6 = sub_1A33569C8((v0 + 784));
    v8 = v7;
    v9 = type metadata accessor for VisualIdentity(0);
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {
      *(v0 + 768) = &type metadata for PosterConfigurationSource;
      *(v0 + 776) = &off_1F16220A8;
      v10 = swift_allocObject();
      *(v0 + 744) = v10;
      sub_1A335DA24(v0 + 320, v10 + 16);
      v11 = *(v9 + 32);
      __swift_destroy_boxed_opaque_existential_0(v8 + v11);
      sub_1A31EE568((v0 + 744), v8 + v11);
    }

    (v6)(v0 + 784, 0);
    sub_1A335D9D0(v0 + 320);
    v12 = v0 + 248;
  }

  else
  {
    sub_1A3288FDC(v0 + 248, &qword_1EB0C84B0);
    v12 = v0 + 392;
  }

  sub_1A3288FDC(v12, &qword_1EB0C84B0);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1A335C498()
{
  v1 = *(v0 + 920);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 152) = 0u;
  v2 = v1;
  sub_1A34604B4(v2, v0 + 152, v0 + 16);

  v3 = swift_task_alloc();
  *(v0 + 928) = v3;
  *v3 = v0;
  v3[1] = sub_1A335C594;

  return (sub_1A33837BC)(0xD00000000000002CLL, 0x80000001A350EE80);
}

uint64_t sub_1A335C594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v5;
  v7[117] = a2;
  v7[118] = a3;
  v7[119] = a4;
  v7[120] = v4;

  if (v4)
  {
    v8 = sub_1A335C814;
  }

  else
  {
    v7[121] = a1;
    v8 = sub_1A335C6C8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A335C6C8()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 944);
  v3 = *(v0 + 920);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = sub_1A3444DEC(v2, v1);
  v7 = sub_1A34CD0E0();
  v8 = [v4 finalizedConfiguration:v6 forExtensionIdentifier:v7];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = sub_1A3444DEC(*(v0 + 944), *(v0 + 952));
  }

  v10 = sub_1A3444A44(v9, 0);
  v11 = *(v0 + 952);
  v12 = *(v0 + 920);
  sub_1A335DED4(v10 & 0xFFFFFFFF00000001, v13 & 1, v14, v5, v0 + 464);

  sub_1A335DA80(v0 + 16);
  v15 = *(v0 + 872);
  v16 = *(v0 + 864);

  return MEMORY[0x1EEE6DFA0](sub_1A335CAB0, v16, v15);
}

uint64_t sub_1A335C814()
{
  v1 = v0[120];
  v2 = v0[115];
  sub_1A335DA80((v0 + 2));

  v3 = v0[109];
  v4 = v0[108];

  return MEMORY[0x1EEE6DFA0](sub_1A335C890, v4, v3);
}

uint64_t sub_1A335C890()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 145);

  sub_1A3288FDC(v0 + 248, &qword_1EB0C84B0);
  sub_1A31ECC9C(v1, v2);

  *(v0 + 312) = 0;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 248) = 0u;
  sub_1A328D790(v0 + 248, v0 + 392, &qword_1EB0C84B0);
  if (*(v0 + 416))
  {
    v3 = *(v0 + 440);
    *(v0 + 352) = *(v0 + 424);
    *(v0 + 368) = v3;
    *(v0 + 384) = *(v0 + 456);
    v4 = *(v0 + 408);
    *(v0 + 320) = *(v0 + 392);
    *(v0 + 336) = v4;
    v5 = sub_1A33569C8((v0 + 784));
    v7 = v6;
    v8 = type metadata accessor for VisualIdentity(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      *(v0 + 768) = &type metadata for PosterConfigurationSource;
      *(v0 + 776) = &off_1F16220A8;
      v9 = swift_allocObject();
      *(v0 + 744) = v9;
      sub_1A335DA24(v0 + 320, v9 + 16);
      v10 = *(v8 + 32);
      __swift_destroy_boxed_opaque_existential_0(v7 + v10);
      sub_1A31EE568((v0 + 744), v7 + v10);
    }

    (v5)(v0 + 784, 0);
    sub_1A335D9D0(v0 + 320);
    v11 = v0 + 248;
  }

  else
  {
    sub_1A3288FDC(v0 + 248, &qword_1EB0C84B0);
    v11 = v0 + 392;
  }

  sub_1A3288FDC(v11, &qword_1EB0C84B0);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A335CAB0()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 145);

  sub_1A31ECC9C(v1, v2);

  sub_1A3288FDC(v0 + 248, &qword_1EB0C84B0);
  v3 = *(v0 + 496);
  v4 = *(v0 + 512);
  v5 = *(v0 + 464);
  *(v0 + 264) = *(v0 + 480);
  *(v0 + 280) = v3;
  *(v0 + 296) = v4;
  *(v0 + 312) = *(v0 + 528);
  *(v0 + 248) = v5;
  sub_1A328D790(v0 + 248, v0 + 392, &qword_1EB0C84B0);
  if (*(v0 + 416))
  {
    v6 = *(v0 + 440);
    *(v0 + 352) = *(v0 + 424);
    *(v0 + 368) = v6;
    *(v0 + 384) = *(v0 + 456);
    v7 = *(v0 + 408);
    *(v0 + 320) = *(v0 + 392);
    *(v0 + 336) = v7;
    v8 = sub_1A33569C8((v0 + 784));
    v10 = v9;
    v11 = type metadata accessor for VisualIdentity(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      *(v0 + 768) = &type metadata for PosterConfigurationSource;
      *(v0 + 776) = &off_1F16220A8;
      v12 = swift_allocObject();
      *(v0 + 744) = v12;
      sub_1A335DA24(v0 + 320, v12 + 16);
      v13 = *(v11 + 32);
      __swift_destroy_boxed_opaque_existential_0(v10 + v13);
      sub_1A31EE568((v0 + 744), v10 + v13);
    }

    (v8)(v0 + 784, 0);
    sub_1A335D9D0(v0 + 320);
    v14 = v0 + 248;
  }

  else
  {
    sub_1A3288FDC(v0 + 248, &qword_1EB0C84B0);
    v14 = v0 + 392;
  }

  sub_1A3288FDC(v14, &qword_1EB0C84B0);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1A335CCC0()
{

  sub_1A3288FDC(v0 + 248, &qword_1EB0C84B0);
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0;
  sub_1A328D790(v0 + 248, v0 + 392, &qword_1EB0C84B0);
  if (*(v0 + 416))
  {
    v1 = *(v0 + 440);
    *(v0 + 352) = *(v0 + 424);
    *(v0 + 368) = v1;
    *(v0 + 384) = *(v0 + 456);
    v2 = *(v0 + 408);
    *(v0 + 320) = *(v0 + 392);
    *(v0 + 336) = v2;
    v3 = sub_1A33569C8((v0 + 784));
    v5 = v4;
    v6 = type metadata accessor for VisualIdentity(0);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      *(v0 + 768) = &type metadata for PosterConfigurationSource;
      *(v0 + 776) = &off_1F16220A8;
      v7 = swift_allocObject();
      *(v0 + 744) = v7;
      sub_1A335DA24(v0 + 320, v7 + 16);
      v8 = *(v6 + 32);
      __swift_destroy_boxed_opaque_existential_0(v5 + v8);
      sub_1A31EE568((v0 + 744), v5 + v8);
    }

    (v3)(v0 + 784, 0);
    sub_1A335D9D0(v0 + 320);
    v9 = v0 + 248;
  }

  else
  {
    sub_1A3288FDC(v0 + 248, &qword_1EB0C84B0);
    v9 = v0 + 392;
  }

  sub_1A3288FDC(v9, &qword_1EB0C84B0);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A335CEB4()
{

  sub_1A335DAD4(v0 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity, type metadata accessor for VisualIdentity);
  sub_1A3288FDC(v0 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__pendingIdentity, &qword_1EB0C5D28);
  sub_1A3288FDC(v0 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__coupledIdentity, &qword_1EB0C5D28);

  v1 = *(v0 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer);

  v2 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel___observationRegistrar;
  v3 = sub_1A34C99E0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1A335CFF4()
{
  sub_1A335CEB4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisualIdentityEditorViewModel()
{
  result = qword_1ED853588;
  if (!qword_1ED853588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A335D0A0()
{
  type metadata accessor for VisualIdentity(319);
  if (v0 <= 0x3F)
  {
    sub_1A335D218();
    if (v1 <= 0x3F)
    {
      sub_1A34C99E0();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1A335D218()
{
  if (!qword_1ED8536E0)
  {
    type metadata accessor for VisualIdentity(255);
    v0 = sub_1A34CD890();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8536E0);
    }
  }
}

uint64_t sub_1A335D284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A335D2F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIdentity(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A335D368()
{
  swift_getKeyPath();
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  if (*(v0 + 41))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1A34C99A0();

  v2 = v0 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel__currentIdentity;
  swift_beginAccess();
  return *(v2 + *(type metadata accessor for VisualIdentity(0) + 24));
}

BOOL sub_1A335D480()
{
  swift_getKeyPath();
  sub_1A335DE28(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
  sub_1A34C99A0();

  if (*(v0 + 40) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1A34C99A0();

  return *(v0 + 42) == 2;
}

uint64_t sub_1A335D578(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  if (a1)
  {
    if (sub_1A3335964(1, *(v1 + 24)))
    {
      v9 = 1;
      sub_1A335493C(&v9);
    }

    v6 = type metadata accessor for VisualIdentity(0);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_1A335ADC8(v5);
    return sub_1A3288FDC(v5, &qword_1EB0C5D28);
  }

  else
  {

    return sub_1A335B170(0);
  }
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;
        sub_1A34C9010();

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
          sub_1A34C9010();
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
          sub_1A34C9010();
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}