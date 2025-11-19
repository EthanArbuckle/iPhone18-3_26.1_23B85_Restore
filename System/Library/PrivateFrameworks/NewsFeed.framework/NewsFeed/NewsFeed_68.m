uint64_t sub_1D6179A74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a1;
  v4[3] = *a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1D6179B3C;

  return sub_1D5EA8098(a1);
}

uint64_t sub_1D6179B3C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6179C38, 0, 0);
}

uint64_t sub_1D6179C38()
{
  type metadata accessor for FeedGroupEmitTaskGroupResult();
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6179CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = MEMORY[0x1E69E85F0];
  v11 = MEMORY[0x1E69E6720];
  sub_1D5B6BFD8(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v25 - v14;
  sub_1D617D174(a1, v25 - v14, &qword_1EDF1ADB0, v10, v11, sub_1D5B6BFD8);
  v16 = sub_1D726294C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1D5B88AA0(v15, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5B6BFD8);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_1D726285C();
      v20 = v19;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D726293C();
    (*(v17 + 8))(v15, v16);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
  v20 = 0;
LABEL_6:
  v21 = *v5;
  v22 = swift_allocObject();
  v22[2] = *(a4 + 16);
  v22[3] = a2;
  v22[4] = a3;
  v23 = (v20 | v18);
  if (v20 | v18)
  {
    v26[0] = 0;
    v26[1] = 0;
    v23 = v26;
    v26[2] = v18;
    v26[3] = v20;
  }

  v25[1] = 1;
  v25[2] = v23;
  v25[3] = v21;
  swift_task_create();
}

uint64_t sub_1D6179F44()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1D617A0D4;
  }

  else
  {
    v2 = sub_1D617A058;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D617A058()
{
  **(v0 + 64) = 0;
  type metadata accessor for FeedGroupEmitTaskGroupResult();
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D617A0D4()
{
  v1 = *(v0 + 88);
  *(v0 + 56) = v1;
  v2 = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  type metadata accessor for FeedServiceError();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    if (v7 == 6)
    {
      if ((v8 = v5 | v4 | v6, v3 == 12) && !v8 || v3 == 13 && !v8)
      {

        type metadata accessor for FeedGroupEmitTaskGroupResult();
        swift_storeEnumTagMultiPayload();

        goto LABEL_10;
      }
    }

    sub_1D5EAD330(v3, v4, v5, v6, v7);
  }

  v9 = *(v0 + 88);
  v10 = *(v0 + 64);

  *v10 = v9;
  type metadata accessor for FeedGroupEmitTaskGroupResult();
  swift_storeEnumTagMultiPayload();
LABEL_10:
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D617A26C(uint64_t *a1)
{
  v1 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for FeedGroupEmitTaskGroupResult();

  return MEMORY[0x1EEE6D8B8](v1, v2, v3, v4);
}

void sub_1D617A310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for FeedGroupEmitTask();
  sub_1D72627FC();

  swift_getWitnessTable();
  sub_1D7263E7C();
  swift_getWitnessTable();
  v7 = sub_1D726241C();
  swift_getWitnessTable();
  v8 = sub_1D7262CCC();

  if (v8 & 1) == 0 && (v7)
  {
    sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7273AE0;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1D5B7E2C0();
    *(v9 + 32) = a4;
    *(v9 + 40) = a5;

    sub_1D7262EDC();
    sub_1D725C30C();

    sub_1D5FE66F8();
  }
}

uint64_t sub_1D617A554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_1D7263F5C();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D617A618, 0, 0);
}

uint64_t sub_1D617A618()
{
  v1 = *(v0 + 24);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_1D726496C();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1D617A6F8;

  return sub_1D6CDBFF8(v2, v3, 0, 0, 1);
}

uint64_t sub_1D617A6F8()
{
  v2 = *v1;

  v3 = v2[8];
  v4 = v2[7];
  v5 = v2[6];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1D617DADC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1D617A890;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D617A890()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedGroupEmitTaskGroupResult();
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

int *sub_1D617A970@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v40 = a3;
  v42 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v41 = type metadata accessor for FeedGroupEmitterOutput();
  MEMORY[0x1EEE9AC00](v41, v5);
  v7 = (&v39 - v6);
  v8 = type metadata accessor for FeedGroupEmitTaskResult();
  v9 = sub_1D726393C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v39 - v12;
  v14 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v39 - v17;
  v19 = *a1;
  v44 = sub_1D5C0BA9C();
  v45 = v20;
  sub_1D7261E3C();

  if ((*(v14 + 48))(v13, 1, v8) == 1)
  {
    (*(v10 + 8))(v13, v9);
    *v7 = 0xD00000000000002CLL;
    v7[1] = 0x80000001D73CC400;
    swift_storeEnumTagMultiPayload();
    v21 = *(v19 + 16);
    v44 = 0;
    LOBYTE(v45) = 1;
    v46 = 0;
    v47 = 1;
    v48 = 0;
    v49 = 1;
    sub_1D71A8414(v7, v21, MEMORY[0x1E69E7CC0], &v44, v43, 0.0);
  }

  v42 = v7;
  v23 = v43;
  v39 = v14;
  v24 = *(v14 + 32);
  v24(v18, v13, v8);
  if (sub_1D6EB5F68(v41))
  {
    v25 = v23;
    if (*v40)
    {
      v26 = v42;
      *v42 = 0xD00000000000004FLL;
      *(v26 + 8) = 0x80000001D73CC430;
      swift_storeEnumTagMultiPayload();
      v27 = *(v19 + 16);
      v28 = *&v18[v8[10]];
      v29 = &v18[v8[11]];
      v30 = *v29;
      v31 = v29[8];
      v32 = *(v29 + 2);
      v33 = v29[24];
      v34 = *(v29 + 4);
      v35 = v29[40];
      LOBYTE(v29) = v29[41];
      v44 = v30;
      LOBYTE(v45) = v31;
      v46 = v32;
      v47 = v33;
      v48 = v34;
      LOBYTE(v49) = v35;
      HIBYTE(v49) = v29;
      v36 = *&v18[v8[12]];
      v37 = *(v39 + 8);

      v37(v18, v8);
      return sub_1D71A8414(v26, v27, v28, &v44, v25, v36);
    }

    *v40 = 1;
    v38 = v23;
  }

  else
  {
    v38 = v23;
  }

  return (v24)(v38, v18, v8);
}

uint64_t sub_1D617AE30(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for FeedGroupEmitterOutput();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v20 - v7;
  (*(v4 + 16))(&v20 - v7, a1, v3, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload > 1)
    {
      (*(v4 + 8))(v8, v3);
    }

    else
    {
      v10 = MEMORY[0x1E69E7CA0];
      v11 = MEMORY[0x1E69E6720];
      sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1D5B88AA0(&v8[*(TupleTypeMetadata2 + 48)], &qword_1EDF43B70, v10 + 8, v11, sub_1D5BEE1B8);
      (*(*(AssociatedTypeWitness - 8) + 8))(v8, AssociatedTypeWitness);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 4 || EnumCaseMultiPayload == 5)
    {
      (*(v4 + 8))(v8, v3);
      return 0;
    }

    v14 = type metadata accessor for FeedGroupEmitterEmbeddedOutput();
    sub_1D5B49474(255, qword_1EDF37D80);
    v15 = *(swift_getTupleTypeMetadata2() + 48);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16)
    {
      if (v16 != 1)
      {
        (*(*(v14 - 8) + 8))(v8, v14);
        __swift_destroy_boxed_opaque_existential_1(&v8[v15]);
        return 0;
      }

      (*(*(v14 - 8) + 8))(v8, v14);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CA0];
      v18 = MEMORY[0x1E69E6720];
      sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
      v19 = swift_getTupleTypeMetadata2();
      sub_1D5B88AA0(&v8[*(v19 + 48)], &qword_1EDF43B70, v17 + 8, v18, sub_1D5BEE1B8);
      (*(*(AssociatedTypeWitness - 8) + 8))(v8, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(&v8[v15]);
  }

  return 1;
}

uint64_t sub_1D617B280@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = a1 + *(type metadata accessor for FeedScoredResult() + 44);
  *a2 = *(v4 + *(type metadata accessor for FeedGroupEmitTaskResult() + 36));
}

uint64_t FeedService.deinit()
{

  v1 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  swift_unknownObjectRelease();
  sub_1D617D2E4(v0 + 120, &qword_1EDF37A60, &qword_1EDF37A68, &protocol descriptor for FeedOfflineProviding);
  return v0;
}

uint64_t FeedService.__deallocating_deinit()
{
  FeedService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D617B400()
{
  sub_1D617C808();
}

uint64_t FeedServiceType.fetchAllGroups(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult();
  sub_1D725BDCC();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v6 = sub_1D725B92C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1D72627FC();
  v7 = sub_1D725BA7C();

  return v7;
}

uint64_t sub_1D617B5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6 = sub_1D726275C();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = sub_1D617B760(&v10, v6, sub_1D5DF55B8, v7, a3, a4);

  return v8;
}

uint64_t sub_1D617B760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v24 = a3;
  v25 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = *v13;
  v26 = v15;
  v27 = v16;
  v28 = v7;
  v29 = v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult();
  sub_1D725BDCC();
  (*(v11 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a5);
  v17 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a5;
  *(v18 + 3) = a6;
  v19 = v24;
  v20 = v25;
  *(v18 + 4) = a2;
  *(v18 + 5) = v19;
  *(v18 + 6) = v20;
  (*(v11 + 32))(&v18[v17], &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5);

  v21 = sub_1D725B92C();
  v22 = sub_1D725BA7C();

  return v22;
}

uint64_t sub_1D617B974(unint64_t *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v4);
  v6 = &v16 - v5;
  v7 = *a1;
  v8 = v7 >> 61;
  if ((v7 >> 61) <= 1)
  {
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8 != 2)
  {
    if (v8 != 3)
    {
      sub_1D72627FC();
      sub_1D725BC0C();
      v17 = sub_1D726275C();
      return sub_1D725BB0C();
    }

LABEL_6:
    v9 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1D72627FC();
    sub_1D725BC0C();
    v17 = v9;

    return sub_1D725BB0C();
  }

  type metadata accessor for FeedCursorContainer();
  v11 = swift_projectBox();
  v12 = *(v3 + 16);
  v12(v6, v11, AssociatedTypeWitness);
  sub_1D72627FC();
  sub_1D725BC0C();
  sub_1D5D0DDD4(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v13 = sub_1D726270C();
  v12(v14, v6, AssociatedTypeWitness);
  v17 = sub_1D5BFCB60(v13);
  v15 = sub_1D725BB0C();
  (*(v3 + 8))(v6, AssociatedTypeWitness);
  return v15;
}

uint64_t FeedServiceType.fetchAll(from:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v5 = sub_1D726275C();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = sub_1D617B760(&v9, v5, sub_1D5DF55B8, v6, a2, a3);

  return v7;
}

uint64_t sub_1D617BDCC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a5;
  v67 = a4;
  v68 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v69 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v62 - v20;
  v22 = *a1;
  v23 = v22 >> 61;
  if ((v22 >> 61) <= 1)
  {
    v64 = a3;
    v26 = v67;
    if (v23)
    {
      v54 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v55 = sub_1D726274C();
      v56 = v26;
      v57 = v64;
      if (v64())
      {
        type metadata accessor for FeedServiceFetchResult();
        sub_1D725BC0C();
        v58 = swift_allocObject();
        *(v58 + 16) = v55;
        *(v58 + 24) = v54;
        v70 = v58 | 0x2000000000000000;

        return sub_1D725BB0C();
      }

      else
      {
        swift_checkMetadataState();
        static FeedLocation.container(_:)(v54, &v70);
        v61 = sub_1D617B760(&v70, v55, v57, v56, a6, a7);

        return v61;
      }
    }

    v65 = v7;
    v27 = v19;
    type metadata accessor for FeedCursorContainer();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v29 = swift_projectBox();
    v30 = *(v29 + *(TupleTypeMetadata2 + 48));
    v63 = v27;
    v31 = *(v27 + 16);
    v31(v21, v29, AssociatedTypeWitness);
    sub_1D5D0DDD4(AssociatedTypeWitness, AssociatedTypeWitness);
    swift_allocObject();
    v62 = v30;

    v32 = sub_1D726270C();
    v31(v33, v21, AssociatedTypeWitness);
    sub_1D5BFCB60(v32);
    v34 = sub_1D726274C();

    v35 = v26;
    v36 = v64;
    if ((v64)(v34))
    {
      type metadata accessor for FeedServiceFetchResult();
      sub_1D725BC0C();
      v37 = swift_allocObject();
      v38 = v62;
      *(v37 + 16) = v34;
      *(v37 + 24) = v38;
      v70 = v37 | 0x2000000000000000;
      v39 = sub_1D725BB0C();
    }

    else
    {
      static FeedLocation.container(_:)(v62, &v70);
      v39 = sub_1D617B760(&v70, v34, v36, v35, a6, a7);
    }

    (*(v63 + 8))(v21, AssociatedTypeWitness);
    return v39;
  }

  if (v23 == 2)
  {
    v40 = v19;
    type metadata accessor for FeedCursorContainer();
    v41 = swift_getTupleTypeMetadata2();
    v65 = v7;
    v42 = v41;
    v43 = swift_projectBox();
    v44 = *(v43 + *(v42 + 48));
    v45 = *(v40 + 16);
    v45(v16, v43, AssociatedTypeWitness);
    type metadata accessor for FeedServiceFetchResult();
    v69 = sub_1D725BC0C();
    v46 = swift_allocObject();
    sub_1D5D0DDD4(AssociatedTypeWitness, AssociatedTypeWitness);
    swift_allocObject();

    v47 = sub_1D726270C();
    v45(v48, v16, AssociatedTypeWitness);
    sub_1D5BFCB60(v47);
    v49 = sub_1D726274C();

    *(v46 + 16) = v49;
    *(v46 + 24) = v44;
    v70 = v46 | 0x6000000000000000;
    v39 = sub_1D725BB0C();
    (*(v40 + 8))(v16, AssociatedTypeWitness);
    return v39;
  }

  if (v23 == 3)
  {
    v24 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    type metadata accessor for FeedServiceFetchResult();
    sub_1D725BC0C();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1D726274C();
    *(v25 + 24) = v24;
    v70 = v25 | 0x6000000000000000;
  }

  else
  {
    v50 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v51 = v68;
    v70 = v68;
    sub_1D72627FC();

    swift_getWitnessTable();
    if (sub_1D7262CCC())
    {
      v52 = swift_allocObject();
      *(v52 + 16) = v50;
      v53 = v52 | 0x8000000000000000;
    }

    else
    {
      v60 = swift_allocObject();
      *(v60 + 16) = v51;
      *(v60 + 24) = v50;
      v53 = v60 | 0x6000000000000000;
    }

    type metadata accessor for FeedServiceFetchResult();
    sub_1D725BC0C();
    v70 = v53;
  }

  return sub_1D725BB0C();
}

uint64_t sub_1D617C514()
{
  type metadata accessor for FeedGroupEmitter();
  sub_1D72627FC();

  swift_getWitnessTable();
  sub_1D7263E7C();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
  }

  sub_1D7261E1C();
  return sub_1D7261E4C();
}

BOOL sub_1D617C650()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0 = type metadata accessor for FeedGroupEmitTaskResult();
  v1 = sub_1D726393C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v9 - v4;
  v9[0] = sub_1D5C0BA9C();
  v9[1] = v6;
  sub_1D7261E3C();

  v7 = (*(*(v0 - 8) + 48))(v5, 1, v0) == 1;
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_1D617C808()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  FeedServiceContextType.feedMode.getter(AssociatedTypeWitness, AssociatedConformanceWitness, &v5);
  v3 = 16;
  if (v5)
  {
    v3 = 24;
  }

  return *(v0 + v3);
}

uint64_t sub_1D617C9B4(uint64_t a1)
{
  v3 = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(type metadata accessor for FeedReplaceLocation() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D5B64680;

  return sub_1D616069C(a1, v7, v1 + v6);
}

uint64_t sub_1D617CBE4(uint64_t a1)
{
  nullsub_1(a1);
}

uint64_t sub_1D617CCB4(uint64_t a1, uint64_t a2)
{
  sub_1D5B5DD74(0, &qword_1EDF37A60, &qword_1EDF37A68, &protocol descriptor for FeedOfflineProviding, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D617CD6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6B6AE5C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D617CDE0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D5B64680;

  return sub_1D6177B68(a1, a2, v7, v8, v9, v10, v11, v6);
}

uint64_t sub_1D617CF74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6179A74(a1, v4, v5, v6);
}

uint64_t objectdestroy_69Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D617D07C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64680;

  return sub_1D617A554(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_1D617D174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D617D1E8()
{

  swift_getAtKeyPath();
}

BOOL sub_1D617D260()
{
  v1 = *(v0 + 32);
  v2 = sub_1D5C0BA9C();
  LOBYTE(v1) = sub_1D5BE240C(v2, v3, v1);

  return (v1 & 1) == 0;
}

uint64_t sub_1D617D2E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5B5DD74(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D617D354()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[5];
  return (*(v2 + 32))(&v4, v1);
}

uint64_t objectdestroy_40Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D617D43C()
{
  result = type metadata accessor for FeedScoredResult();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FeedGroupEmitter();
    result = sub_1D72627FC();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for FeedGroupEmitterCachedOutput();
      result = sub_1D7261E1C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D617D5C0(int *a1, int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 64);
  if (v5 <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  if ((v5 & 0xFFFFFFFFFFFFFFF8) + 48 > v5)
  {
    v5 = (v5 & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = *(v4 + 80) & 0xF8;
  v7 = v6 | 7;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  v10 = ((((((v6 + 31) & ~v7) + (((((((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  v12 = a2 - 2147483646;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (v14 == 4)
  {
    v15 = *(a1 + v10);
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  else if (v14 == 2)
  {
    v15 = *(a1 + v10);
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = *(a1 + v10);
    if (!v15)
    {
LABEL_9:
      v8 = *((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7) + v5 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v8 >= 0xFFFFFFFF)
      {
        LODWORD(v8) = -1;
      }

      return (v8 + 1);
    }
  }

  v16 = v15 - 1;
  if (v11)
  {
    v16 = 0;
    v17 = *a1;
  }

  else
  {
    v17 = 0;
  }

  return (v17 | v16) ^ 0x80000000;
}

void sub_1D617D7E8(int *a1, int a2, int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 64);
  if (v7 <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v7 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  if ((v7 & 0xFFFFFFFFFFFFFFF8) + 48 > v7)
  {
    v7 = (v7 & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  v8 = *(v6 + 80) & 0xF8;
  v9 = v8 | 7;
  v10 = ((((((v8 + 31) & ~(v8 | 7)) + (((((((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 < 0)
  {
    v12 = a3 - 2147483646;
    if (v10)
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = v13;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_22:
    v14 = a2 & 0x7FFFFFFF;
    if (v10)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14 + 1;
    }

    if (v10)
    {
      bzero(a1, v10);
      *a1 = v14;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v11)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  v11 = 0;
  if (a2 < 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  if (v11 <= 1)
  {
    if (v11)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (v11 == 2)
  {
    *(a1 + v10) = 0;
    goto LABEL_32;
  }

  *(a1 + v10) = 0;
  if (a2)
  {
LABEL_33:
    *((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9) + v7 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }
}

uint64_t sub_1D617DA3C()
{
  result = type metadata accessor for FeedGroupEmitTaskResult();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id FeedBannerAdView.bannerView.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1D617DB50(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  sub_1D617DCE0(*a1);
  v5 = v4 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = v2;
  *(v5 + 8) = v3;
  v7 = v2;

  sub_1D617DD78();
}

void FeedBannerAdView.bannerView.setter(id a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView];
  swift_beginAccess();
  if (*v5)
  {
    v6 = [*v5 superview];
    if (v6)
    {
      v7 = v6;

      if (v7 == v2)
      {
        v8 = *v5;
        if (*v5 && v8 != a1)
        {
          [v8 removeFromSuperview];
        }
      }
    }
  }

  v10 = *v5;
  *v5 = a1;
  *(v5 + 1) = a2;
  v11 = a1;

  if (*v5)
  {
    v12 = *v5;
    v13 = [v12 superview];
    if (!v13 || (v14 = v13, v13, v14 != v2))
    {
      [v2 addSubview_];
    }
  }

  else
  {
    v12 = v11;
  }
}

void sub_1D617DCE0(void *a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = [v4 superview];
    if (v5)
    {
      v6 = v5;

      if (v6 == v1)
      {
        v7 = *&v1[v3];
        if (v7)
        {
          v8 = v7 == a1;
        }

        else
        {
          v8 = 1;
        }

        if (!v8)
        {
          [v7 removeFromSuperview];
        }
      }
    }
  }
}

void sub_1D617DD78()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 superview];
    if (!v4 || (v5 = v4, v4, v5 != v0))
    {
      [v0 addSubview_];
    }
  }
}

void (*FeedBannerAdView.bannerView.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1D617DEB0;
}

void sub_1D617DEB0(id **a1, char a2)
{
  v2 = *a1;
  v4 = *a1 + 3;
  v3 = *v4;
  v5 = (*a1)[4];
  v6 = (*a1)[6] + (*a1)[5];
  if (a2)
  {
    v7 = v3;
    sub_1D617DCE0(v3);
    v8 = *v6;
    *v6 = v3;
    *(v6 + 1) = v5;
    v9 = v7;

    if (*v6)
    {
      v10 = *v6;
      v11 = [v10 superview];
      if (!v11 || (v12 = v2[5], v13 = v11, v11, v13 != v12))
      {
        [v2[5] addSubview_];
      }
    }

    v14 = *v4;
  }

  else
  {
    sub_1D617DCE0((*a1)[3]);
    v15 = *v6;
    *v6 = v3;
    *(v6 + 1) = v5;
    v14 = v3;

    if (*v6)
    {
      v16 = *v6;
      v17 = [v16 superview];
      if (!v17 || (v18 = v2[5], v19 = v17, v17, v19 != v18))
      {
        [v2[5] addSubview_];
      }
    }
  }

  free(v2);
}

id FeedBannerAdView.debugView.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView;
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView];
  }

  else
  {
    sub_1D7260B2C();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v0 addSubview_];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void FeedBannerAdView.debugView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView);
  *(v1 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView) = a1;
}

void (*FeedBannerAdView.debugView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = FeedBannerAdView.debugView.getter();
  return sub_1D617E100;
}

void sub_1D617E100(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView);
  *(v1 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView) = v2;
}

id FeedBannerAdView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id FeedBannerAdView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id FeedBannerAdView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FeedBannerAdView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id FeedBannerAdView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D617E470()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1D617E4F0()
{
  sub_1D5BBAF70(&qword_1EDF394C0);

  JUMPOUT(0x1DA6F6FC0);
}

uint64_t FormatProgressViewNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatProgressViewNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatProgressViewNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatProgressViewNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatProgressViewNodeStyle.progressColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatProgressViewNodeStyle.trackColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatProgressViewNodeStyle.__allocating_init(identifier:class:selectors:alpha:progressColor:trackColor:ignoresSmartInvertColors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, char a9)
{
  v17 = swift_allocObject();
  v18 = *a6;
  v19 = *a7;
  v20 = *a8;
  swift_beginAccess();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  swift_beginAccess();
  *(v17 + 48) = a5;
  *(v17 + 56) = v18;
  *(v17 + 64) = v19;
  *(v17 + 72) = v20;
  *(v17 + 80) = a9;
  return v17;
}

uint64_t FormatProgressViewNodeStyle.init(identifier:class:selectors:alpha:progressColor:trackColor:ignoresSmartInvertColors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, char a9)
{
  v15 = *a6;
  v16 = *a7;
  v17 = *a8;
  swift_beginAccess();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  swift_beginAccess();
  *(v9 + 48) = a5;
  *(v9 + 56) = v15;
  *(v9 + 64) = v16;
  *(v9 + 72) = v17;
  *(v9 + 80) = a9;
  return v9;
}

uint64_t sub_1D617E8D4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  v131 = v2;
  v8 = v2[6];
  swift_beginAccess();
  v130 = a1;
  v9 = *(a1 + 48);
  v154 = MEMORY[0x1E69E7CC8];
  v10 = *(v8 + 16);
  if (!__OFADD__(v10, *(v9 + 16)))
  {
    v138 = *(v9 + 16);
    v127 = v6;
    v129 = v4;
    sub_1D6180498();
    v128 = v5;

    v126 = v7;

    v140 = v9;

    sub_1D7261DAC();
    v153 = sub_1D698F4BC(0, v10, 0, MEMORY[0x1E69E7CC0]);
    v147 = *(v8 + 16);
    v141 = v8;
    if (v147)
    {
      v11 = 0;
      v12 = (v8 + 72);
      while (1)
      {
        if (v11 >= *(v141 + 16))
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v13 = *(v12 - 5);
        v14 = *(v12 - 4);
        v16 = *(v12 - 3);
        v15 = *(v12 - 2);
        v17 = *(v12 - 1);
        v149 = *v12;

        sub_1D5CFCFAC(v15);
        sub_1D5CFCFAC(v17);

        sub_1D5CFCFAC(v15);
        sub_1D5CFCFAC(v17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = sub_1D6D8CB60(v13, v14);
        v21 = v154[2];
        v22 = (v20 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (v23)
        {
          goto LABEL_84;
        }

        v25 = v20;
        if (v154[3] < v24)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_10;
        }

        v30 = v19;
        sub_1D6D8248C();
        v19 = v30;
        v27 = v154;
        if ((v25 & 1) == 0)
        {
LABEL_13:
          v27[(v19 >> 6) + 8] |= 1 << v19;
          v31 = (v27[6] + 16 * v19);
          *v31 = v13;
          v31[1] = v14;
          v32 = v27[7] + 48 * v19;
          *v32 = v13;
          *(v32 + 8) = v14;
          *(v32 + 16) = v16;
          *(v32 + 24) = v15;
          *(v32 + 32) = v17;
          *(v32 + 40) = v149;
          v33 = v27[2];
          v23 = __OFADD__(v33, 1);
          v34 = v33 + 1;
          if (v23)
          {
            goto LABEL_89;
          }

          v27[2] = v34;

          goto LABEL_15;
        }

LABEL_11:
        v28 = v27[7] + 48 * v19;
        v29 = *(v28 + 24);
        v143 = *(v28 + 32);
        *v28 = v13;
        *(v28 + 8) = v14;
        *(v28 + 16) = v16;
        *(v28 + 24) = v15;
        *(v28 + 32) = v17;
        *(v28 + 40) = v149;

        sub_1D5C84FF4(v29);
        sub_1D5C84FF4(v143);
LABEL_15:
        v154 = v27;

        sub_1D5C84FF4(v15);
        sub_1D5C84FF4(v17);
        v36 = *(v153 + 2);
        v35 = *(v153 + 3);
        if (v36 >= v35 >> 1)
        {
          v153 = sub_1D698F4BC((v35 > 1), v36 + 1, 1, v153);
        }

        ++v11;
        *(v153 + 2) = v36 + 1;
        v37 = &v153[16 * v36];
        *(v37 + 4) = v13;
        *(v37 + 5) = v14;
        v12 += 48;
        if (v147 == v11)
        {
          goto LABEL_18;
        }
      }

      sub_1D6D6DDF0(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1D6D8CB60(v13, v14);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_94;
      }

LABEL_10:
      v27 = v154;
      if ((v25 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

LABEL_18:
    v148 = sub_1D698F4BC(0, v138, 0, MEMORY[0x1E69E7CC0]);
    v38 = v140;
    v137 = *(v140 + 16);
    if (v137)
    {
      v39 = 0;
      v40 = (v140 + 72);
      do
      {
        if (v39 >= *(v38 + 16))
        {
          goto LABEL_85;
        }

        v45 = *(v40 - 5);
        v44 = *(v40 - 4);
        v47 = *(v40 - 3);
        v46 = *(v40 - 2);
        v48 = *(v40 - 1);
        v150 = *v40;
        v49 = v154[2];

        sub_1D5CFCFAC(v46);
        sub_1D5CFCFAC(v48);
        if (!v49 || (v50 = sub_1D6D8CB60(v45, v44), (v51 & 1) == 0))
        {
          v145 = v39;

          v71 = v47;

          v72 = v46;
          sub_1D5CFCFAC(v46);
          v73 = v48;
          sub_1D5CFCFAC(v48);
          v74 = swift_isUniquelyReferenced_nonNull_native();
          v75 = sub_1D6D8CB60(v45, v44);
          v77 = v154[2];
          v78 = (v76 & 1) == 0;
          v23 = __OFADD__(v77, v78);
          v79 = v77 + v78;
          if (v23)
          {
            goto LABEL_88;
          }

          v80 = v76;
          if (v154[3] >= v79)
          {
            if (v74)
            {
              goto LABEL_44;
            }

            v90 = v75;
            sub_1D6D8248C();
            v75 = v90;
            v82 = v154;
            if ((v80 & 1) == 0)
            {
              goto LABEL_51;
            }

LABEL_45:
            v83 = v82[7] + 48 * v75;
            v84 = *(v83 + 24);
            v85 = *(v83 + 32);
            *v83 = v45;
            *(v83 + 8) = v44;
            *(v83 + 16) = v71;
            *(v83 + 24) = v72;
            *(v83 + 32) = v73;
            *(v83 + 40) = v150;

            sub_1D5C84FF4(v84);
            sub_1D5C84FF4(v85);
          }

          else
          {
            sub_1D6D6DDF0(v79, v74);
            v75 = sub_1D6D8CB60(v45, v44);
            if ((v80 & 1) != (v81 & 1))
            {
              goto LABEL_94;
            }

LABEL_44:
            v82 = v154;
            if (v80)
            {
              goto LABEL_45;
            }

LABEL_51:
            v82[(v75 >> 6) + 8] |= 1 << v75;
            v91 = (v82[6] + 16 * v75);
            *v91 = v45;
            v91[1] = v44;
            v92 = v82[7] + 48 * v75;
            *v92 = v45;
            *(v92 + 8) = v44;
            *(v92 + 16) = v71;
            *(v92 + 24) = v72;
            *(v92 + 32) = v73;
            *(v92 + 40) = v150;
            v93 = v82[2];
            v23 = __OFADD__(v93, 1);
            v94 = v93 + 1;
            if (v23)
            {
              goto LABEL_90;
            }

            v82[2] = v94;
          }

          v154 = v82;
          v95 = *(v148 + 2);
          v96 = *(v148 + 3);

          if (v95 >= v96 >> 1)
          {
            v148 = sub_1D698F4BC((v96 > 1), v95 + 1, 1, v148);
          }

          sub_1D5C84FF4(v72);
          sub_1D5C84FF4(v73);
          v39 = v145;
          *(v148 + 2) = v95 + 1;
          v97 = &v148[16 * v95];
          *(v97 + 4) = v45;
          *(v97 + 5) = v44;
          goto LABEL_22;
        }

        v52 = v154[7] + 48 * v50;
        v53 = *(v52 + 8);
        v144 = *v52;
        v54 = *(v52 + 24);
        v55 = *(v52 + 32);
        v56 = *(v52 + 40);
        v57 = *(v52 + 16);
        v139 = v54;
        if (!v57)
        {

          v54 = v139;
          v57 = v47;
        }

        v136 = v57;
        v58 = v54;
        if ((~v54 & 0xF000000000000007) == 0)
        {
          sub_1D5CFCFAC(v46);
          v58 = v46;
        }

        v135 = v58;
        v59 = v55;
        if ((~v55 & 0xF000000000000007) == 0)
        {
          sub_1D5CFCFAC(v48);
          v59 = v48;
        }

        v133 = v48;
        v134 = v59;
        v60 = v150;
        if (v56 != 2)
        {
          v60 = v56;
        }

        v151 = v60;

        sub_1D5CFCFAC(v139);
        sub_1D5CFCFAC(v55);

        sub_1D5CFCFAC(v139);
        v132 = v55;
        sub_1D5CFCFAC(v55);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v63 = sub_1D6D8CB60(v144, v53);
        v64 = v154[2];
        v65 = (v62 & 1) == 0;
        v66 = v64 + v65;
        if (__OFADD__(v64, v65))
        {
          goto LABEL_91;
        }

        v67 = v62;
        if (v154[3] >= v66)
        {
          if (v61)
          {
            v70 = v154;
            if ((v62 & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            sub_1D6D8248C();
            v70 = v154;
            if ((v67 & 1) == 0)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          sub_1D6D6DDF0(v66, v61);
          v68 = sub_1D6D8CB60(v144, v53);
          if ((v67 & 1) != (v69 & 1))
          {
            goto LABEL_94;
          }

          v63 = v68;
          v70 = v154;
          if ((v67 & 1) == 0)
          {
LABEL_48:
            v70[(v63 >> 6) + 8] |= 1 << v63;
            v86 = (v70[6] + 16 * v63);
            *v86 = v144;
            v86[1] = v53;
            v87 = v70[7] + 48 * v63;
            *v87 = v144;
            *(v87 + 8) = v53;
            *(v87 + 16) = v136;
            *(v87 + 24) = v135;
            *(v87 + 32) = v134;
            *(v87 + 40) = v151;
            v88 = v70[2];
            v23 = __OFADD__(v88, 1);
            v89 = v88 + 1;
            if (v23)
            {
              goto LABEL_92;
            }

            v70[2] = v89;
            goto LABEL_21;
          }
        }

        v41 = v70[7] + 48 * v63;
        v42 = *(v41 + 24);
        v43 = *(v41 + 32);
        *v41 = v144;
        *(v41 + 8) = v53;
        *(v41 + 16) = v136;
        *(v41 + 24) = v135;
        *(v41 + 32) = v134;
        *(v41 + 40) = v151;

        sub_1D5C84FF4(v42);
        sub_1D5C84FF4(v43);

LABEL_21:

        sub_1D5C84FF4(v139);
        sub_1D5C84FF4(v132);

        sub_1D5C84FF4(v46);
        sub_1D5C84FF4(v133);
        v154 = v70;
LABEL_22:
        v38 = v140;
        ++v39;
        v40 += 48;
      }

      while (v137 != v39);
    }

    sub_1D6985DAC(v98);
    v99 = *(v148 + 2);
    if (!v99)
    {
      v102 = MEMORY[0x1E69E7CC0];
LABEL_74:

      v117 = v131;
      v118 = v131[7];
      if (!v118)
      {
        v118 = *(v130 + 56);

        v117 = v131;
      }

      v119 = v117[8];
      v120 = v119;
      if ((~v119 & 0xF000000000000007) == 0)
      {
        v120 = *(v130 + 64);
        sub_1D5CFCFAC(v120);
        v117 = v131;
      }

      v121 = v117[9];
      v122 = v121;
      if ((~v121 & 0xF000000000000007) == 0)
      {
        v122 = *(v130 + 72);
        sub_1D5CFCFAC(v122);
        v117 = v131;
      }

      v123 = *(v117 + 80);
      if (v123 == 2)
      {
        LOBYTE(v123) = *(v130 + 80);
      }

      v124 = swift_allocObject();
      swift_beginAccess();
      *(v124 + 16) = v129;
      *(v124 + 24) = v128;
      *(v124 + 32) = v127;
      *(v124 + 40) = v126;
      swift_beginAccess();
      *(v124 + 48) = v102;
      *(v124 + 56) = v118;
      *(v124 + 64) = v120;
      *(v124 + 72) = v122;
      *(v124 + 80) = v123;

      sub_1D5CFCFAC(v119);
      sub_1D5CFCFAC(v121);
      return v124;
    }

    v100 = 0;
    v101 = v148 + 40;
    v102 = MEMORY[0x1E69E7CC0];
LABEL_60:
    v103 = &v101[16 * v100];
    v104 = v100;
    while (v104 < v99)
    {
      v100 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        goto LABEL_87;
      }

      if (v154[2])
      {
        v105 = *(v103 - 1);
        v106 = *v103;

        v107 = sub_1D6D8CB60(v105, v106);
        if (v108)
        {
          v109 = v154[7] + 48 * v107;
          v110 = *(v109 + 8);
          v146 = *v109;
          v111 = *(v109 + 16);
          v112 = *(v109 + 24);
          v113 = *(v109 + 32);
          v142 = *(v109 + 40);

          sub_1D5CFCFAC(v112);
          sub_1D5CFCFAC(v113);

          v152 = v101;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_1D698ED38(0, *(v102 + 2) + 1, 1, v102);
          }

          v115 = *(v102 + 2);
          v114 = *(v102 + 3);
          if (v115 >= v114 >> 1)
          {
            v102 = sub_1D698ED38((v114 > 1), v115 + 1, 1, v102);
          }

          *(v102 + 2) = v115 + 1;
          v116 = &v102[48 * v115];
          *(v116 + 4) = v146;
          *(v116 + 5) = v110;
          *(v116 + 6) = v111;
          *(v116 + 7) = v112;
          *(v116 + 8) = v113;
          v116[72] = v142;
          v101 = v152;
          if (v100 != v99)
          {
            goto LABEL_60;
          }

          goto LABEL_74;
        }
      }

      ++v104;
      v103 += 16;
      if (v100 == v99)
      {
        goto LABEL_74;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  __break(1u);
LABEL_94:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D617F45C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v3 + 16);

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1D698ED38(0, v4, 0, MEMORY[0x1E69E7CC0]);
  result = sub_1D698EBC8(0, v4, 0, v5);
  v59 = result;
  v62 = *(v3 + 16);
  if (v62)
  {
    v8 = 0;
    v60 = v3;
    v61 = v3 + 32;
    v9 = v6;
    while (v8 < *(v3 + 16))
    {
      v10 = v61 + 48 * v8;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 24);
      v14 = *(v10 + 32);
      v64 = *(v10 + 40);
      v67 = *(v10 + 16);
      v69 = v9;

      sub_1D5CFCFAC(v13);
      v66 = v14;
      sub_1D5CFCFAC(v14);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v63 = v11;
      v72[0] = v11;
      v72[1] = v12;

      v15 = sub_1D6844380(v72);

      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = 0;
        v18 = 32;
        while (1)
        {
          if (v17 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_42;
          }

          v20 = *(v15 + v18 + 16);
          v19 = *(v15 + v18 + 32);
          v21 = *(v15 + v18);
          v74 = *(v15 + v18 + 48);
          v73[1] = v20;
          v73[2] = v19;
          v73[0] = v21;
          v22 = v20;
          sub_1D5E3B610(v73, v72);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v17;
          result = sub_1D5E3B66C(v73);
          v18 += 56;
          if (v16 == v17)
          {
            goto LABEL_3;
          }
        }

        result = sub_1D5E3B66C(v73);
        if (v22 <= 1)
        {
          v9 = v69;
          v27 = *(v69 + 16);
          v26 = *(v69 + 24);
          v3 = v60;
          if (v27 >= v26 >> 1)
          {
            result = sub_1D698ED38((v26 > 1), v27 + 1, 1, v69);
            v9 = result;
          }

          *(v9 + 16) = v27 + 1;
          v28 = v9 + 48 * v27;
          *(v28 + 32) = v63;
          *(v28 + 40) = v12;
          *(v28 + 48) = v67;
          *(v28 + 56) = v13;
          *(v28 + 64) = v66;
          *(v28 + 72) = v64;
        }

        else
        {

          sub_1D5CFCFAC(v13);
          sub_1D5CFCFAC(v66);
          v3 = v60;
          v24 = v59[2];
          v23 = v59[3];
          if (v24 >= v23 >> 1)
          {
            v59 = sub_1D698EBC8((v23 > 1), v24 + 1, 1, v59);
          }

          sub_1D5C84FF4(v13);
          result = sub_1D5C84FF4(v66);
          v59[2] = v24 + 1;
          v25 = &v59[7 * v24];
          v25[4] = v63;
          v25[5] = v12;
          v25[6] = v67;
          v25[7] = v13;
          v25[8] = v66;
          *(v25 + 72) = v64;
          v25[10] = v22;
          v9 = v69;
        }
      }

      else
      {
LABEL_3:

        sub_1D5C84FF4(v13);
        sub_1D5C84FF4(v66);

        v9 = v69;
        v3 = v60;
      }

      if (++v8 == v62)
      {
        v6 = v9;
        goto LABEL_22;
      }
    }

    goto LABEL_43;
  }

LABEL_22:

  sub_1D61804FC();
  v29 = sub_1D72626AC();

  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = (v29 + 72);
    do
    {
      v33 = *(v31 - 5);
      v32 = *(v31 - 4);
      v35 = *(v31 - 3);
      v34 = *(v31 - 2);
      v36 = *(v31 - 1);
      v70 = *v31;

      sub_1D5CFCFAC(v34);
      sub_1D5CFCFAC(v36);
      v38 = *(v6 + 2);
      v37 = *(v6 + 3);
      if (v38 >= v37 >> 1)
      {
        v6 = sub_1D698ED38((v37 > 1), v38 + 1, 1, v6);
      }

      v31 += 56;
      *(v6 + 2) = v38 + 1;
      v39 = &v6[48 * v38];
      *(v39 + 4) = v33;
      *(v39 + 5) = v32;
      *(v39 + 6) = v35;
      *(v39 + 7) = v34;
      *(v39 + 8) = v36;
      v39[72] = v70;
      --v30;
    }

    while (v30);
  }

  v40 = *(v6 + 2);
  v41 = v58;

  v65 = v40;
  if (v40)
  {
    v42 = 0;
    v43 = (v6 + 72);
    v71 = v6;
    while (v42 < *(v6 + 2))
    {
      v46 = *(v43 - 3);
      v45 = *(v43 - 2);
      v47 = *(v43 - 1);
      v68 = *v43;
      v48 = swift_allocObject();
      swift_beginAccess();
      v50 = v41[2];
      v49 = v41[3];
      swift_beginAccess();
      *(v48 + 16) = v50;
      *(v48 + 24) = v49;
      v51 = v41[5];
      *(v48 + 32) = v41[4];
      *(v48 + 40) = v51;
      swift_beginAccess();
      v52 = v41[6];
      swift_beginAccess();
      *(v48 + 48) = v52;
      v53 = v46;
      if (!v46)
      {
      }

      v54 = v41;
      *(v48 + 56) = v53;
      v55 = v45;
      if ((~v45 & 0xF000000000000007) == 0)
      {
        v55 = v54[8];
        sub_1D5CFCFAC(v55);
      }

      *(v48 + 64) = v55;
      v56 = v47;
      if ((~v47 & 0xF000000000000007) == 0)
      {
        v56 = v54[9];
        sub_1D5CFCFAC(v56);
      }

      *(v48 + 72) = v56;
      v57 = v68;
      if (v68 == 2)
      {
        v57 = *(v54 + 80);
      }

      ++v42;
      v44 = v57;

      sub_1D5CFCFAC(v45);
      sub_1D5CFCFAC(v47);

      *(v48 + 80) = v44;
      v43 += 48;
      v41 = v48;
      v6 = v71;
      if (v65 == v42)
      {
        goto LABEL_40;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  v48 = v58;
LABEL_40:

  return v48;
}

uint64_t sub_1D617FA90()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v11 = *(v0 + 16);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_beginAccess();
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  if ((~v6 & 0xF000000000000007) != 0)
  {
    sub_1D5CFCFAC(v6);
    sub_1D6E0CAE0(v12);

    v6 = v12[0];
  }

  v7 = *(v0 + 72);
  if ((~v7 & 0xF000000000000007) != 0)
  {

    sub_1D6E0CAE0(v12);

    v7 = v12[0];
  }

  v8 = *(v0 + 80);
  v9 = swift_allocObject();
  swift_beginAccess();
  *(v9 + 16) = v11;
  *(v9 + 24) = v1;
  *(v9 + 32) = v3;
  *(v9 + 40) = v2;
  swift_beginAccess();
  *(v9 + 48) = v4;
  *(v9 + 56) = v5;
  *(v9 + 64) = v6;
  *(v9 + 72) = v7;
  *(v9 + 80) = v8;
  return v9;
}

uint64_t FormatProgressViewNodeStyle.deinit()
{

  sub_1D5C84FF4(*(v0 + 64));
  sub_1D5C84FF4(*(v0 + 72));
  return v0;
}

uint64_t FormatProgressViewNodeStyle.__deallocating_deinit()
{

  sub_1D5C84FF4(*(v0 + 64));
  sub_1D5C84FF4(*(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1D617FCF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D666A204(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t FormatProgressViewNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatProgressViewNodeStyle.Selector.progressColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatProgressViewNodeStyle.Selector.trackColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

BOOL _s8NewsFeed27FormatProgressViewNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v7)
    {
      return 0;
    }

    v10 = sub_1D633A310(v2, v7);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v7)
    {
      return 0;
    }
  }

  if ((~v4 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v4);
    sub_1D5CFCFAC(v6);
    if ((~v6 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v4);
      goto LABEL_17;
    }

LABEL_15:
    sub_1D5C84FF4(v4);
    v11 = v6;
LABEL_23:
    sub_1D5C84FF4(v11);
    return 0;
  }

  v16 = v4;
  if ((~v6 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v4);
    sub_1D5CFCFAC(v6);
    sub_1D5CFCFAC(v4);

    goto LABEL_15;
  }

  v15 = v6;
  sub_1D5CFCFAC(v4);
  sub_1D5CFCFAC(v6);
  sub_1D5CFCFAC(v4);
  v12 = static FormatColor.== infix(_:_:)(&v16, &v15);

  sub_1D5C84FF4(v4);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if ((~v3 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v3);
    sub_1D5CFCFAC(v8);
    if ((~v8 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v3);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v16 = v3;
  if ((~v8 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v3);
    sub_1D5CFCFAC(v8);
    sub_1D5CFCFAC(v3);

LABEL_22:
    sub_1D5C84FF4(v3);
    v11 = v8;
    goto LABEL_23;
  }

  v15 = v8;
  sub_1D5CFCFAC(v3);
  sub_1D5CFCFAC(v8);
  sub_1D5CFCFAC(v3);
  v14 = static FormatColor.== infix(_:_:)(&v16, &v15);

  sub_1D5C84FF4(v3);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  if (v5 != 2)
  {
    return v9 != 2 && ((v9 ^ v5) & 1) == 0;
  }

  return v9 == 2;
}

uint64_t sub_1D6180044(uint64_t a1)
{
  result = sub_1D61801A0(&qword_1EC884720);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D61800AC(uint64_t a1)
{
  *(a1 + 16) = sub_1D61801A0(&qword_1EDF22150);
  result = sub_1D61801A0(&unk_1EDF0AF40);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D6180114(void *a1)
{
  a1[1] = sub_1D61801A0(&qword_1EDF22150);
  a1[2] = sub_1D61801A0(&unk_1EDF0AF40);
  result = sub_1D61801A0(&qword_1EC884728);
  a1[3] = result;
  return result;
}

uint64_t sub_1D61801A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatProgressViewNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D61801E0(uint64_t a1)
{
  result = sub_1D6180208();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6180208()
{
  result = qword_1EC884730;
  if (!qword_1EC884730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884730);
  }

  return result;
}

unint64_t sub_1D618025C(uint64_t a1)
{
  *(a1 + 8) = sub_1D618028C();
  result = sub_1D61802E0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D618028C()
{
  result = qword_1EDF22158;
  if (!qword_1EDF22158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22158);
  }

  return result;
}

unint64_t sub_1D61802E0()
{
  result = qword_1EDF22160;
  if (!qword_1EDF22160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22160);
  }

  return result;
}

unint64_t sub_1D6180334(void *a1)
{
  a1[1] = sub_1D618028C();
  a1[2] = sub_1D61802E0();
  result = sub_1D618036C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D618036C()
{
  result = qword_1EC884738;
  if (!qword_1EC884738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884738);
  }

  return result;
}

uint64_t sub_1D61803F4(uint64_t a1, int a2)
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

uint64_t sub_1D618043C(uint64_t result, int a2, int a3)
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

void sub_1D6180498()
{
  if (!qword_1EDF05820)
  {
    sub_1D601014C();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05820);
    }
  }
}

void sub_1D61804FC()
{
  if (!qword_1EDF0A968)
  {
    sub_1D6180558();
    v0 = type metadata accessor for FormatNodeStyleSelectorOrder();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0A968);
    }
  }
}

unint64_t sub_1D6180558()
{
  result = qword_1EDF0AF50;
  if (!qword_1EDF0AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AF50);
  }

  return result;
}

void *sub_1D61805AC(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v3);
  sub_1D5EA74B8();
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v36 = *(*(v5 - 8) + 72);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  v35 = v6;
  v8 = (v7 + v6);
  if (a2)
  {
    v9 = *(a2 + 40);
    v34 = *(a2 + 32);

    v10 = sub_1D617FA90();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 64) = 0x7800000000000000;
    v12 = sub_1D601118C;
  }

  else
  {
    v12 = sub_1D70DD9D8;
    v11 = 0;
    v34 = 0;
    v9 = 0xE000000000000000;
  }

  v13 = type metadata accessor for FormatInspectionItem(0);
  v14 = &v8[*(v13 + 24)];
  *v14 = v12;
  v14[1] = v11;
  v15 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  *(v7 + v6) = v34;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v9;
  v16 = &v8[*(v13 + 28)];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = -1;
  v17 = *(*(v13 - 8) + 56);
  v17(v8, 0, 1, v13);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v7, v37);
  swift_setDeallocating();
  sub_1D6180C78(v8);
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v18 = swift_allocObject();
  *(inited + 32) = v18;
  *(v18 + 48) = v38;
  v19 = v37[1];
  *(v18 + 16) = v37[0];
  *(v18 + 32) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7279970;
  v21 = v20 + v6;
  sub_1D711F844(1701869908, 0xE400000000000000, 0x73736572676F7250, 0xED00007765695620, (v20 + v6));
  v17((v20 + v6), 0, 1, v13);
  if (a2)
  {
    v22 = *(a2 + 56);

    sub_1D711B070(0x6168706C41, 0xE500000000000000, v22, (v21 + v36));
    v17((v21 + v36), 0, 1, v13);
    v23 = *(a2 + 80);
  }

  else
  {
    sub_1D711B070(0x6168706C41, 0xE500000000000000, 0, (v21 + v36));
    v17((v21 + v36), 0, 1, v13);
    v23 = 2;
  }

  sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, v23, (v21 + 2 * v36));
  v17((v21 + 2 * v36), 0, 1, v13);
  sub_1D6795150(2003134806, 0xE400000000000000, 0, 0, v20, v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(inited + 104) = &off_1F518B2C0;
  v24 = swift_allocObject();
  *(inited + 72) = v24;
  *(v24 + 48) = v40;
  v25 = v39[1];
  *(v24 + 16) = v39[0];
  *(v24 + 32) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D7270C10;
  v27 = (v26 + v35);
  if (a2)
  {
    v28 = *(a2 + 64);
    sub_1D5CFCFAC(v28);
    sub_1D711B4B4(0x73736572676F7250, 0xEE00726F6C6F4320, v28, v27);
    v17(v27, 0, 1, v13);
    v29 = *(a2 + 72);
    sub_1D5CFCFAC(v29);
  }

  else
  {
    v29 = 0xF000000000000007;
    sub_1D711B4B4(0x73736572676F7250, 0xEE00726F6C6F4320, 0xF000000000000007, v27);
    v17(v27, 0, 1, v13);
  }

  sub_1D711B4B4(0x6F43206B63617254, 0xEB00000000726F6CLL, v29, &v27[v36]);
  v17(&v27[v36], 0, 1, v13);
  sub_1D6795150(0x73736572676F7250, 0xE800000000000000, 0, 0, v26, v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 136) = &type metadata for FormatInspectionGroup;
  *(inited + 144) = &off_1F518B2C0;
  v30 = swift_allocObject();
  *(inited + 112) = v30;
  *(v30 + 48) = v42;
  v31 = v41[1];
  *(v30 + 16) = v41[0];
  *(v30 + 32) = v31;
  v32 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v32;
}

uint64_t sub_1D6180C78(uint64_t a1)
{
  sub_1D5EA74B8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TagMastheadViewBackgroundView()
{
  result = qword_1EDF3A2C0;
  if (!qword_1EDF3A2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1D6180D74(double a1, double a2, double a3, double a4)
{
  v9 = qword_1EDF3A2E8;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v10 = qword_1EDF3A2D8;
  *&v4[v10] = [objc_allocWithZone(sub_1D725CD6C()) initWithFrame_];
  v11 = qword_1EDF3A2E0;
  *&v4[v11] = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v12 = qword_1EDF3A2D0;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TagMastheadViewBackgroundView();
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[qword_1EDF3A2E8];
  v15 = v13;
  [v15 addSubview_];
  [v15 addSubview_];
  [v15 addSubview_];
  [v15 addSubview_];

  return v15;
}

void sub_1D6180F68(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for TagMastheadViewBackgroundView();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  [v1 gutterViewBoundsDidChange];
}

void sub_1D6180FD4()
{
  v1 = *(v0 + qword_1EDF3A2D0);
}

id sub_1D6181034()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagMastheadViewBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D618106C(uint64_t a1)
{
  v2 = *(a1 + qword_1EDF3A2D0);
}

void sub_1D61810E0(void *a1)
{
  v1 = a1;
  sub_1D72634AC();
  sub_1D72634AC();
  sub_1D72634AC();
  sub_1D72634AC();
}

void sub_1D618116C()
{
  v1 = qword_1EDF3A2E8;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v2 = qword_1EDF3A2D8;
  *(v0 + v2) = [objc_allocWithZone(sub_1D725CD6C()) initWithFrame_];
  v3 = qword_1EDF3A2E0;
  *(v0 + v3) = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v4 = qword_1EDF3A2D0;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

NewsFeed::FormatShineSizer_optional __swiftcall FormatShineSizer.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatShineSizer.rawValue.getter()
{
  if (*v0)
  {
    return 0x7473756A64616E75;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t sub_1D618132C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7473756A64616E75;
  }

  else
  {
    v3 = 1702521203;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v5 = 0x7473756A64616E75;
  }

  else
  {
    v5 = 1702521203;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006465;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

unint64_t sub_1D61813D4()
{
  result = qword_1EC884740;
  if (!qword_1EC884740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884740);
  }

  return result;
}

uint64_t sub_1D6181428()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D61814A8()
{
  sub_1D72621EC();
}

uint64_t sub_1D6181514()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6181590@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D61815F0(uint64_t *a1@<X8>)
{
  v2 = 1702521203;
  if (*v1)
  {
    v2 = 0x7473756A64616E75;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006465;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D618162C(uint64_t a1)
{
  *(a1 + 8) = sub_1D618165C();
  result = sub_1D61816B0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D618165C()
{
  result = qword_1EC884748;
  if (!qword_1EC884748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884748);
  }

  return result;
}

unint64_t sub_1D61816B0()
{
  result = qword_1EC884750;
  if (!qword_1EC884750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884750);
  }

  return result;
}

unint64_t sub_1D6181704(uint64_t a1)
{
  result = sub_1D618172C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D618172C()
{
  result = qword_1EC884758;
  if (!qword_1EC884758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884758);
  }

  return result;
}

unint64_t sub_1D6181780(void *a1)
{
  a1[1] = sub_1D61817B8();
  a1[2] = sub_1D618180C();
  result = sub_1D61813D4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61817B8()
{
  result = qword_1EC884760;
  if (!qword_1EC884760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884760);
  }

  return result;
}

unint64_t sub_1D618180C()
{
  result = qword_1EC884768;
  if (!qword_1EC884768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884768);
  }

  return result;
}

uint64_t FormatBorder.edges.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FormatBorder.linePattern.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t FormatBorder.init(edges:color:width:inset:lineCap:linePattern:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  *a7 = result;
  *(a7 + 8) = v7;
  *(a7 + 16) = v8;
  *(a7 + 24) = v9;
  *(a7 + 25) = v10;
  *(a7 + 32) = a6;
  return result;
}

NewsFeed::FormatBorderInset_optional __swiftcall FormatBorderInset.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatBorderInset.rawValue.getter()
{
  v1 = 0x656C6464696DLL;
  if (*v0 != 1)
  {
    v1 = 0x72657474756FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656E6E69;
  }
}

uint64_t sub_1D6181B14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656C6464696DLL;
  if (v2 != 1)
  {
    v3 = 0x72657474756FLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x72656E6E69;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x656C6464696DLL;
  if (*a2 != 1)
  {
    v6 = 0x72657474756FLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x72656E6E69;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

uint64_t sub_1D6181C04()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6181C9C()
{
  sub_1D72621EC();
}

uint64_t sub_1D6181D20()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6181DC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C6464696DLL;
  if (v2 != 1)
  {
    v4 = 0x72657474756FLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x72656E6E69;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t _s8NewsFeed12FormatBorderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 25);
  v11 = *(a2 + 32);
  if ((sub_1D5E22398(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v26 = v7;
  v27 = v2;

  v12 = static FormatColor.== infix(_:_:)(&v27, &v26);

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v26 = v8;
  v27 = v3;

  v13 = static FormatFloat.== infix(_:_:)(&v27, &v26);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    v14 = 0xE600000000000000;
    if (v4 == 1)
    {
      v15 = 0x656C6464696DLL;
    }

    else
    {
      v15 = 0x72657474756FLL;
    }
  }

  else
  {
    v14 = 0xE500000000000000;
    v15 = 0x72656E6E69;
  }

  v16 = 0x656C6464696DLL;
  if (v9 != 1)
  {
    v16 = 0x72657474756FLL;
  }

  if (v9)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x72656E6E69;
  }

  if (v9)
  {
    v18 = 0xE600000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  if (v15 == v17 && v14 == v18)
  {
  }

  else
  {
    v19 = sub_1D72646CC();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = 1953789282;
  if (!v5)
  {
    v21 = 0xE400000000000000;
    v22 = 1953789282;
    if (v10)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  if (v5 != 1)
  {
    v21 = 0xE600000000000000;
    v22 = 0x657261757173;
    if (v10)
    {
      goto LABEL_26;
    }

LABEL_29:
    v23 = 0xE400000000000000;
    goto LABEL_31;
  }

  v21 = 0xE500000000000000;
  v22 = 0x646E756F72;
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_26:
  if (v10 == 1)
  {
    v23 = 0xE500000000000000;
    v20 = 0x646E756F72;
  }

  else
  {
    v23 = 0xE600000000000000;
    v20 = 0x657261757173;
  }

LABEL_31:
  if (v22 != v20 || v21 != v23)
  {
    v24 = sub_1D72646CC();

    if (v24)
    {
      goto LABEL_35;
    }

    return 0;
  }

LABEL_35:

  return sub_1D635A390(v6, v11);
}

unint64_t sub_1D6182160(uint64_t a1)
{
  result = sub_1D6182188();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6182188()
{
  result = qword_1EC884770;
  if (!qword_1EC884770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884770);
  }

  return result;
}

unint64_t sub_1D618221C()
{
  result = qword_1EDF125E0;
  if (!qword_1EDF125E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF125E0);
  }

  return result;
}

unint64_t sub_1D6182270()
{
  result = qword_1EC884778;
  if (!qword_1EC884778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884778);
  }

  return result;
}

unint64_t sub_1D61822C8()
{
  result = qword_1EC884780;
  if (!qword_1EC884780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884780);
  }

  return result;
}

unint64_t sub_1D618231C(uint64_t a1)
{
  *(a1 + 8) = sub_1D618234C();
  result = sub_1D61823A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D618234C()
{
  result = qword_1EC884788;
  if (!qword_1EC884788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884788);
  }

  return result;
}

unint64_t sub_1D61823A0()
{
  result = qword_1EDF2F8D8;
  if (!qword_1EDF2F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F8D8);
  }

  return result;
}

unint64_t sub_1D61823F4(uint64_t a1)
{
  result = sub_1D618241C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D618241C()
{
  result = qword_1EC884790;
  if (!qword_1EC884790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884790);
  }

  return result;
}

uint64_t sub_1D61824B0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6182504()
{
  result = qword_1EDF2F8D0;
  if (!qword_1EDF2F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F8D0);
  }

  return result;
}

unint64_t sub_1D6182558()
{
  result = qword_1EDF10CF0;
  if (!qword_1EDF10CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10CF0);
  }

  return result;
}

void *sub_1D61825CC(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v22 = *(a2 + 32);
  v23 = *(a2 + 24);
  v5 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v5);
  sub_1D5EA74B8();
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7284F00;
  v11 = (v10 + v9);
  if (v2)
  {
  }

  sub_1D7123F60(0x7365676445, 0xE500000000000000, v2, v11);
  v12 = type metadata accessor for FormatInspectionItem(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  if (v2)
  {

    sub_1D711B4B4(0x726F6C6F43, 0xE500000000000000, v3, v11 + v8);
    v13((v11 + v8), 0, 1, v12);
  }

  else
  {
    v4 = 0xF000000000000007;
    sub_1D711B4B4(0x726F6C6F43, 0xE500000000000000, 0xF000000000000007, v11 + v8);
    v13((v11 + v8), 0, 1, v12);
  }

  sub_1D7123FB0(0x6874646957, 0xE500000000000000, v4, v11 + 2 * v8);
  v13((v11 + 2 * v8), 0, 1, v12);
  if (v2)
  {
    v14 = v23;
  }

  else
  {
    v14 = 3;
  }

  v15 = 3 * v8;
  if (v2)
  {
    v16 = BYTE1(v23);
  }

  else
  {
    v16 = 3;
  }

  sub_1D7124218(0x7465736E49, 0xE500000000000000, v14, v11 + v15);
  v13((v11 + v15), 0, 1, v12);
  sub_1D7124528(0x70614320656E694CLL, 0xE800000000000000, v16, v11 + 4 * v8);
  v13((v11 + 4 * v8), 0, 1, v12);
  if (v2)
  {
    v2 = v22;
  }

  v17 = 5 * v8;
  sub_1D7124534(0x74615020656E694CLL, 0xEC0000006E726574, v2, (v11 + v17));
  v13((v11 + v17), 0, 1, v12);
  sub_1D6795150(0x726564726F42, 0xE600000000000000, 0, 0, v10, v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v18 = swift_allocObject();
  *(inited + 32) = v18;
  *(v18 + 48) = v25;
  v19 = v24[1];
  *(v18 + 16) = v24[0];
  *(v18 + 32) = v19;
  v20 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5F10AA0(inited + 32);
  return v20;
}

uint64_t sub_1D61829F0()
{
  sub_1D5F5FB48(*(v0 + 24));
  v1 = OBJC_IVAR____TtC8NewsFeed19DebugFormatLogEntry_timestamp;
  v2 = sub_1D725891C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatLogEntry()
{
  result = qword_1EC8847B0;
  if (!qword_1EC8847B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6182B18()
{
  result = sub_1D725891C();
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

uint64_t sub_1D6182BCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = OBJC_IVAR____TtC8NewsFeed19DebugFormatLogEntry_timestamp;
  v31 = sub_1D725891C();
  v10 = *(v31 - 8);
  (*(v10 + 16))(v4 + v9, a1, v31);
  v11 = (v4 + OBJC_IVAR____TtC8NewsFeed19DebugFormatLogEntry_message);
  *v11 = a2;
  v11[1] = a3;
  *(v4 + 24) = a4;
  v12 = sub_1D726210C();
  v13 = (v4 + OBJC_IVAR____TtC8NewsFeed19DebugFormatLogEntry_normalizedMessage);
  *v13 = v12;
  v13[1] = v14;
  sub_1D5DF6790();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v16 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v17 = objc_opt_self();
  v18 = *MEMORY[0x1E69DB970];

  sub_1D5F5F838(a4);
  v19 = v16;
  v20 = [v17 monospacedSystemFontOfSize:14.0 weight:v18];
  v21 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v20;
  v22 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v21;
  *(inited + 72) = v22;
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 labelColor];
  *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v25;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v27 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v28 = sub_1D7261D2C();

  v29 = [v26 initWithString:v27 attributes:v28];

  (*(v10 + 8))(a1, v31);
  *(v4 + 16) = v29;
  return v4;
}

uint64_t static FormatSelectorValue.== infix(_:_:)()
{
  if (sub_1D7261FBC())
  {
    type metadata accessor for FormatSelectorValue();
    type metadata accessor for FormatSelectorValueSelector();

    swift_getWitnessTable();
    swift_getWitnessTable();
    type metadata accessor for FormatCodingEmptyArrayStrategy();
    swift_getWitnessTable();
    sub_1D72627FC();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v0 = static FormatCodingDefault<>.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t FormatSelectorValue.selectors.getter(uint64_t a1)
{
  sub_1D61834A8(a1);
}

uint64_t sub_1D6183084@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FormatSelectorValue();
  *a1 = sub_1D61834A8(v2);
}

uint64_t sub_1D61830D0()
{
  v0 = type metadata accessor for FormatSelectorValue();

  return FormatSelectorValue.selectors.setter(v1, v0);
}

uint64_t FormatSelectorValue.selectors.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
  return result;
}

uint64_t FormatSelectorValueSelector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static FormatSelectorValueSelector.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FormatSelectorValueSelector();
  return sub_1D7261FBC() & 1;
}

uint64_t sub_1D6183294@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v19 = *a1;
  v21 = *a1;
  v22 = a1[1];

  MEMORY[0x1DA6F9910](46, 0xE100000000000000);

  MEMORY[0x1DA6F9910](v4, v3);

  a2[3] = MEMORY[0x1E69E6158];
  *a2 = v21;
  a2[1] = v22;
  v6 = *(v5 + 16);
  if (v6)
  {
    v20 = MEMORY[0x1E69E7CC0];

    sub_1D6997AD0(0, v6, 0);
    v7 = v20;
    v8 = (v5 + 56);
    v9 = v22;
    v18 = v22;
    do
    {
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 1);
      v13 = *v8;
      v23 = v9;

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      MEMORY[0x1DA6F9910](46, 0xE100000000000000);
      MEMORY[0x1DA6F9910](v12, v13);

      v15 = *(v20 + 16);
      v14 = *(v20 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D6997AD0((v14 > 1), v15 + 1, 1);
      }

      *(v20 + 16) = v15 + 1;
      v16 = (v20 + 48 * v15);
      v16[4] = v19;
      v16[5] = v23;
      v16[7] = MEMORY[0x1E69E6158];
      v16[8] = v10;
      v16[9] = v11;
      v8 += 4;
      --v6;
      v9 = v18;
    }

    while (v6);

    result = swift_bridgeObjectRelease_n();
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  a2[4] = v7;
  return result;
}

uint64_t sub_1D61834B4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6183530(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D61835AC(uint64_t a1, int a2)
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

uint64_t sub_1D61835F4(uint64_t result, int a2, int a3)
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

uint64_t sub_1D6183650(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D6183698(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1D61836F0(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), , v4 = sub_1D7264A5C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v20 = ~v5;
    v7 = 0x6D6F74746F62;
    v8 = 7105633;
    v9 = 0xE700000000000000;
    v10 = 0xE600000000000000;
    while (1)
    {
      v11 = *(*(a2 + 48) + v6);
      if (v11 <= 1)
      {
        if (*(*(a2 + 48) + v6))
        {
          v12 = 0x676E696461656CLL;
        }

        else
        {
          v12 = 7368564;
        }

        if (*(*(a2 + 48) + v6))
        {
          v13 = 0xE700000000000000;
        }

        else
        {
          v13 = 0xE300000000000000;
        }
      }

      else if (v11 == 2)
      {
        v13 = 0xE800000000000000;
        v12 = 0x676E696C69617274;
      }

      else
      {
        if (v11 == 3)
        {
          v12 = v7;
        }

        else
        {
          v12 = 7105633;
        }

        if (v11 == 3)
        {
          v13 = 0xE600000000000000;
        }

        else
        {
          v13 = 0xE300000000000000;
        }
      }

      if (a1 == 3)
      {
        v8 = v7;
      }

      else
      {
        v10 = 0xE300000000000000;
      }

      if (a1 == 2)
      {
        v8 = 0x676E696C69617274;
        v10 = 0xE800000000000000;
      }

      if (a1)
      {
        v14 = 0x676E696461656CLL;
      }

      else
      {
        v14 = 7368564;
      }

      if (!a1)
      {
        v9 = 0xE300000000000000;
      }

      v15 = a1 <= 1u ? v14 : v8;
      v16 = a1 <= 1u ? v9 : v10;
      if (v12 == v15 && v13 == v16)
      {
        break;
      }

      v17 = v7;
      v18 = sub_1D72646CC();

      if ((v18 & 1) == 0)
      {
        v6 = (v6 + 1) & v20;
        v7 = v17;
        v8 = 7105633;
        v9 = 0xE700000000000000;
        v10 = 0xE600000000000000;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v18 & 1;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6183980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D7264A0C();
  switch(a2)
  {
    case 1:
      MEMORY[0x1DA6FC0B0](1);
      break;
    case 2:
      MEMORY[0x1DA6FC0B0](2);
      break;
    case 3:
      MEMORY[0x1DA6FC0B0](3);
      break;
    default:
      MEMORY[0x1DA6FC0B0](0);
      sub_1D7264A2C();
      if (a2)
      {
        sub_1D72621EC();
      }

      break;
  }

  v7 = sub_1D7264A5C();
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
    v12 = *v11;
    v13 = v11[1];
    switch(v13)
    {
      case 1:
        if (a2 == 1)
        {
          v17 = *v11;
          v18 = 1;
          goto LABEL_43;
        }

        v14 = a2;
        v13 = 1;
        goto LABEL_24;
      case 2:
        if (a2 == 2)
        {
          v17 = *v11;
          v18 = 2;
          goto LABEL_43;
        }

        v14 = a2;
        v13 = 2;
        goto LABEL_24;
      case 3:
        if (a2 == 3)
        {
          v17 = *v11;
          v18 = 3;
          goto LABEL_43;
        }

        v14 = a2;
        v13 = 3;
LABEL_24:
        sub_1D5B7CD94(a1, v14);
        sub_1D5C39250(v12, v13);
LABEL_25:
        sub_1D5C39250(a1, v14);
        goto LABEL_26;
    }

    v14 = a2;
    if ((a2 - 1) < 3)
    {
      goto LABEL_23;
    }

    if (!v13)
    {
      sub_1D5B7CD94(*v11, 0);
      sub_1D5B7CD94(a1, a2);
      sub_1D5B7CD94(v12, 0);
      sub_1D5B7CD94(a1, a2);
      sub_1D5C39250(v12, 0);
      sub_1D5C39250(a1, a2);
      v14 = a2;
      if (!a2)
      {
        return 1;
      }

      goto LABEL_25;
    }

    if (!a2)
    {
      sub_1D5B7CD94(a1, 0);
      v14 = 0;
LABEL_23:
      sub_1D5B7CD94(v12, v13);
      goto LABEL_24;
    }

    if (v12 == a1 && v13 == a2)
    {
      break;
    }

    v16 = sub_1D72646CC();
    sub_1D5B7CD94(v12, v13);
    sub_1D5B7CD94(a1, a2);
    sub_1D5C39250(v12, v13);
    sub_1D5C39250(a1, a2);
    if (v16)
    {
      return 1;
    }

LABEL_26:
    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D5B7CD94(a1, a2);
  sub_1D5B7CD94(a1, a2);
  v17 = a1;
  v18 = a2;
LABEL_43:
  sub_1D5C39250(v17, v18);
  sub_1D5C39250(a1, a2);
  return 1;
}

uint64_t sub_1D6183C84(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1D7264A0C(), FormatOptionType.rawValue.getter(), sub_1D72621EC(), , v4 = sub_1D7264A5C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v22 = ~v5;
    while (1)
    {
      v7 = *(*(a2 + 48) + v6);
      if (v7 > 5)
      {
        if (*(*(a2 + 48) + v6) > 8u)
        {
          if (v7 == 9)
          {
            v9 = 0xE500000000000000;
            v8 = 0x6F65646976;
          }

          else if (v7 == 10)
          {
            v9 = 0xE400000000000000;
            v8 = 1953394534;
          }

          else
          {
            v8 = 0x616C506F65646976;
            v9 = 0xEB00000000726579;
          }
        }

        else if (v7 == 6)
        {
          v9 = 0xE300000000000000;
          v8 = 7107189;
        }

        else
        {
          v9 = 0xE500000000000000;
          if (v7 == 7)
          {
            v8 = 0x726F6C6F63;
          }

          else
          {
            v8 = 0x6567616D69;
          }
        }
      }

      else if (*(*(a2 + 48) + v6) > 2u)
      {
        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
          v8 = 0x74616F6C66;
        }

        else if (v7 == 4)
        {
          v9 = 0xE700000000000000;
          v8 = 0x72656765746E69;
        }

        else
        {
          v9 = 0xE600000000000000;
          v8 = 0x676E69727473;
        }
      }

      else if (*(*(a2 + 48) + v6))
      {
        if (v7 == 1)
        {
          v8 = 1702125924;
        }

        else
        {
          v8 = 1836412517;
        }

        v9 = 0xE400000000000000;
      }

      else
      {
        v9 = 0xE700000000000000;
        v8 = 0x6E61656C6F6F62;
      }

      v10 = 0x616C506F65646976;
      if (a1 == 10)
      {
        v10 = 1953394534;
      }

      v11 = 0xEB00000000726579;
      if (a1 == 10)
      {
        v11 = 0xE400000000000000;
      }

      if (a1 == 9)
      {
        v10 = 0x6F65646976;
        v11 = 0xE500000000000000;
      }

      v12 = 0x726F6C6F63;
      if (a1 != 7)
      {
        v12 = 0x6567616D69;
      }

      v13 = 0xE500000000000000;
      if (a1 == 6)
      {
        v12 = 7107189;
        v13 = 0xE300000000000000;
      }

      if (a1 <= 8u)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x72656765746E69;
      if (a1 != 4)
      {
        v14 = 0x676E69727473;
      }

      v15 = 0xE600000000000000;
      if (a1 == 4)
      {
        v15 = 0xE700000000000000;
      }

      if (a1 == 3)
      {
        v14 = 0x74616F6C66;
        v15 = 0xE500000000000000;
      }

      v16 = 1836412517;
      if (a1 == 1)
      {
        v16 = 1702125924;
      }

      v17 = 0xE400000000000000;
      if (!a1)
      {
        v16 = 0x6E61656C6F6F62;
        v17 = 0xE700000000000000;
      }

      if (a1 <= 2u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = a1 <= 5u ? v14 : v10;
      v19 = a1 <= 5u ? v15 : v11;
      if (v8 == v18 && v9 == v19)
      {
        break;
      }

      v20 = sub_1D72646CC();

      if ((v20 & 1) == 0)
      {
        v6 = (v6 + 1) & v22;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v20 & 1;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1D6184038(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D7264A0C();
  FormatItemKind.hash(into:)();
  v6 = sub_1D7264A5C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = *(a3 + 48) + 16 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    switch(v12)
    {
      case 0uLL:
        if (a2)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 0);
        sub_1D5CBA0FC(a1, 0);
        v16 = v11;
        v17 = 0;
        goto LABEL_50;
      case 1uLL:
        if (a2 != 1)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 1uLL);
        sub_1D5CBA0FC(a1, 1uLL);
        sub_1D5CBA0FC(v11, 1uLL);
        return a2;
      case 2uLL:
        if (a2 != 2)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 2uLL);
        sub_1D5CBA0FC(a1, 2uLL);
        v16 = v11;
        v17 = 2;
        goto LABEL_50;
      case 3uLL:
        if (a2 != 3)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 3uLL);
        sub_1D5CBA0FC(a1, 3uLL);
        v16 = v11;
        v17 = 3;
        goto LABEL_50;
      case 4uLL:
        if (a2 != 4)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 4uLL);
        v16 = a1;
        v17 = 4;
        goto LABEL_50;
      case 5uLL:
        if (a2 != 5)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 5uLL);
        v16 = a1;
        v17 = 5;
        goto LABEL_50;
      case 6uLL:
        if (a2 != 6)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 6uLL);
        v16 = a1;
        v17 = 6;
        goto LABEL_50;
      case 7uLL:
        if (a2 != 7)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 7uLL);
        v16 = a1;
        v17 = 7;
        goto LABEL_50;
      case 8uLL:
        if (a2 != 8)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 8uLL);
        v16 = a1;
        v17 = 8;
        goto LABEL_50;
      case 9uLL:
        if (a2 != 9)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 9uLL);
        v16 = a1;
        v17 = 9;
        goto LABEL_50;
      case 0xAuLL:
        if (a2 != 10)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 0xAuLL);
        v16 = a1;
        v17 = 10;
        goto LABEL_50;
      case 0xBuLL:
        if (a2 != 11)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 0xBuLL);
        v16 = a1;
        v17 = 11;
        goto LABEL_50;
      case 0xCuLL:
        if (a2 != 12)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 0xCuLL);
        v16 = a1;
        v17 = 12;
        goto LABEL_50;
      case 0xDuLL:
        if (a2 != 13)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 0xDuLL);
        v16 = a1;
        v17 = 13;
        goto LABEL_50;
      case 0xEuLL:
        if (a2 != 14)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 0xEuLL);
        v16 = a1;
        v17 = 14;
        goto LABEL_50;
      case 0xFuLL:
        if (a2 != 15)
        {
          goto LABEL_38;
        }

        sub_1D5CBA0FC(*v10, 0xFuLL);
        v16 = a1;
        v17 = 15;
        goto LABEL_50;
      default:
        if (a2 < 0x10)
        {
LABEL_38:
          sub_1D5CBA110(*v10, *(v10 + 8));
          sub_1D5CBA110(v11, v12);
          sub_1D5CBA110(a1, a2);
          sub_1D5CBA0FC(v11, v12);
          sub_1D5CBA0FC(a1, a2);
          sub_1D5CBA0FC(v11, v12);
          goto LABEL_39;
        }

        if (v11 != a1 || v12 != a2)
        {
          v14 = sub_1D72646CC();
          sub_1D5CBA110(v11, v12);
          sub_1D5CBA110(a1, a2);
          sub_1D5CBA0FC(v11, v12);
          sub_1D5CBA0FC(a1, a2);
          if (v14)
          {
            return 1;
          }

LABEL_39:
          v8 = (v8 + 1) & v9;
          if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        sub_1D5CBA110(a1, a2);
        sub_1D5CBA110(a1, a2);
        sub_1D5CBA0FC(a1, a2);
        v16 = a1;
        v17 = a2;
LABEL_50:
        sub_1D5CBA0FC(v16, v17);
        return 1;
    }
  }
}

uint64_t sub_1D618449C(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1D695471C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 <= 2)
      {
        if (*(*(a2 + 48) + v6))
        {
          if (v8 == 1)
          {
            v9 = 1852138867;
          }

          else
          {
            v9 = 0x6E657A6F7266;
          }

          if (v8 == 1)
          {
            v10 = 0xE400000000000000;
          }

          else
          {
            v10 = 0xE600000000000000;
          }
        }

        else
        {
          v10 = 0xE600000000000000;
          v9 = 0x657669746361;
        }
      }

      else if (*(*(a2 + 48) + v6) > 4u)
      {
        v10 = 0xE800000000000000;
        if (v8 == 5)
        {
          v11 = 0x6C6F6F706572;
        }

        else
        {
          v11 = 0x646E61707865;
        }

        v9 = v11 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x656546664F646E65;
        }

        else
        {
          v9 = 0x646568636163;
        }

        if (v8 == 3)
        {
          v10 = 0xE900000000000064;
        }

        else
        {
          v10 = 0xE600000000000000;
        }
      }

      v12 = 0x64656C6F6F706572;
      if (a1 != 5)
      {
        v12 = 0x6465646E61707865;
      }

      v13 = 0xE800000000000000;
      v14 = 0x656546664F646E65;
      if (a1 != 3)
      {
        v14 = 0x646568636163;
      }

      v15 = 0xE900000000000064;
      if (a1 != 3)
      {
        v15 = 0xE600000000000000;
      }

      if (a1 <= 4u)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0x6E657A6F7266;
      if (a1 == 1)
      {
        v16 = 1852138867;
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE600000000000000;
      }

      if (!a1)
      {
        v16 = 0x657669746361;
        v17 = 0xE600000000000000;
      }

      v18 = a1 <= 2u ? v16 : v12;
      v19 = a1 <= 2u ? v17 : v13;
      if (v9 == v18 && v10 == v19)
      {
        break;
      }

      v20 = sub_1D72646CC();

      if ((v20 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v20 & 1;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

BOOL sub_1D6184708(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1D72649FC();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1D61847B0(char a1, uint64_t a2)
{
  if (*(a2 + 16) && ((sub_1D7264A0C(), (a1 & 1) == 0) ? (v4 = 0x746C7561666564) : (v4 = 0x656E696C66666FLL), sub_1D72621EC(), , v5 = sub_1D7264A5C(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(a2 + 48) + v7) ? 0x656E696C66666FLL : 0x746C7561666564;
      if (v9 == v4)
      {
        break;
      }

      v10 = sub_1D72646CC();
      swift_bridgeObjectRelease_n();
      if ((v10 & 1) == 0)
      {
        v7 = (v7 + 1) & v8;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v10 & 1;
    }

    swift_bridgeObjectRelease_n();
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D61848F8(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();

    v4 = sub_1D7264A5C();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        if (*(*(a2 + 48) + v6))
        {
          if (*(*(a2 + 48) + v6) == 1)
          {
            v8 = 0xE700000000000000;
            v9 = 0x64657269707865;
            v10 = a1;
            if (!a1)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v8 = 0xE800000000000000;
            v9 = 0x64656C6261736964;
            v10 = a1;
            if (!a1)
            {
LABEL_18:
              v12 = 0xE600000000000000;
              if (v9 != 0x657669746361)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }
        }

        else
        {
          v8 = 0xE600000000000000;
          v9 = 0x657669746361;
          v10 = a1;
          if (!a1)
          {
            goto LABEL_18;
          }
        }

        if (v10 == 1)
        {
          v11 = 0x64657269707865;
        }

        else
        {
          v11 = 0x64656C6261736964;
        }

        if (v10 == 1)
        {
          v12 = 0xE700000000000000;
        }

        else
        {
          v12 = 0xE800000000000000;
        }

        if (v9 != v11)
        {
          goto LABEL_20;
        }

LABEL_19:
        if (v8 == v12)
        {

          v13 = 1;
          return v13 & 1;
        }

LABEL_20:
        v13 = sub_1D72646CC();

        if ((v13 & 1) == 0)
        {
          v6 = (v6 + 1) & v7;
          if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
          {
            continue;
          }
        }

        return v13 & 1;
      }
    }
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1D6184B08(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1D7264A0C(), FormatSlotTransformPolicy.rawValue.getter(), sub_1D72621EC(), , v4 = sub_1D7264A5C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v22 = ~v5;
    while (1)
    {
      v7 = *(*(a2 + 48) + v6);
      if (v7 > 5)
      {
        if (*(*(a2 + 48) + v6) > 8u)
        {
          if (v7 == 9)
          {
            v9 = 0xE400000000000000;
            v8 = 1953656691;
          }

          else if (v7 == 10)
          {
            v9 = 0xE800000000000000;
            v8 = 0x65746164696C6176;
          }

          else
          {
            v9 = 0xE500000000000000;
            v8 = 0x7974706D65;
          }
        }

        else if (v7 == 6)
        {
          v8 = 0x7453656C7A7A7570;
          v9 = 0xEF63697473697461;
        }

        else if (v7 == 7)
        {
          v9 = 0xE800000000000000;
          v8 = 0x726F7463656C6573;
        }

        else
        {
          v9 = 0xE600000000000000;
          v8 = 0x7265746C6966;
        }
      }

      else if (*(*(a2 + 48) + v6) > 2u)
      {
        if (v7 == 3)
        {
          v9 = 0xE700000000000000;
          v8 = 0x65726975716572;
        }

        else if (v7 == 4)
        {
          v8 = 0x6F43657269707865;
          v9 = 0xED0000746E65746ELL;
        }

        else
        {
          v9 = 0xE300000000000000;
          v8 = 6775156;
        }
      }

      else if (*(*(a2 + 48) + v6))
      {
        if (v7 == 1)
        {
          v8 = 0x74696D696CLL;
        }

        else
        {
          v8 = 0x6C616E6F73726570;
        }

        if (v7 == 1)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xEB00000000657A69;
        }
      }

      else
      {
        v9 = 0xE600000000000000;
        v8 = 0x657571696E75;
      }

      v10 = 0x65746164696C6176;
      if (a1 == 10)
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v10 = 0x7974706D65;
        v11 = 0xE500000000000000;
      }

      if (a1 == 9)
      {
        v10 = 1953656691;
        v11 = 0xE400000000000000;
      }

      v12 = 0x726F7463656C6573;
      if (a1 == 7)
      {
        v13 = 0xE800000000000000;
      }

      else
      {
        v12 = 0x7265746C6966;
        v13 = 0xE600000000000000;
      }

      if (a1 == 6)
      {
        v12 = 0x7453656C7A7A7570;
        v13 = 0xEF63697473697461;
      }

      if (a1 <= 8u)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6F43657269707865;
      if (a1 != 4)
      {
        v14 = 6775156;
      }

      v15 = 0xED0000746E65746ELL;
      if (a1 != 4)
      {
        v15 = 0xE300000000000000;
      }

      if (a1 == 3)
      {
        v14 = 0x65726975716572;
        v15 = 0xE700000000000000;
      }

      v16 = 0x6C616E6F73726570;
      if (a1 == 1)
      {
        v16 = 0x74696D696CLL;
      }

      v17 = 0xEB00000000657A69;
      if (a1 == 1)
      {
        v17 = 0xE500000000000000;
      }

      if (!a1)
      {
        v16 = 0x657571696E75;
        v17 = 0xE600000000000000;
      }

      if (a1 <= 2u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = a1 <= 5u ? v14 : v10;
      v19 = a1 <= 5u ? v15 : v11;
      if (v8 == v18 && v9 == v19)
      {
        break;
      }

      v20 = sub_1D72646CC();

      if ((v20 & 1) == 0)
      {
        v6 = (v6 + 1) & v22;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v20 & 1;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1D6184F28(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1D6953BC0(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 <= 2)
      {
        if (*(*(a2 + 48) + v6))
        {
          if (v8 == 1)
          {
            v9 = 0x726564616568;
          }

          else
          {
            v9 = 0x7265746F6F66;
          }

          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0xE600000000000000;
          v9 = 0x74756F79616CLL;
        }
      }

      else if (*(*(a2 + 48) + v6) > 4u)
      {
        if (v8 == 5)
        {
          v10 = 0xE700000000000000;
          v9 = 0x7972617262696CLL;
        }

        else
        {
          v9 = 0x756F72676B636162;
          v10 = 0xEA0000000000646ELL;
        }
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x6C6C6177796170;
        }

        else
        {
          v9 = 0x656D656874;
        }

        if (v8 == 3)
        {
          v10 = 0xE700000000000000;
        }

        else
        {
          v10 = 0xE500000000000000;
        }
      }

      v11 = 0x756F72676B636162;
      if (a1 == 5)
      {
        v11 = 0x7972617262696CLL;
      }

      v12 = 0xEA0000000000646ELL;
      if (a1 == 5)
      {
        v12 = 0xE700000000000000;
      }

      v13 = 0x6C6C6177796170;
      if (a1 != 3)
      {
        v13 = 0x656D656874;
      }

      v14 = 0xE500000000000000;
      if (a1 == 3)
      {
        v14 = 0xE700000000000000;
      }

      if (a1 <= 4u)
      {
        v11 = v13;
        v12 = v14;
      }

      v15 = 0x7265746F6F66;
      if (a1 == 1)
      {
        v15 = 0x726564616568;
      }

      if (!a1)
      {
        v15 = 0x74756F79616CLL;
      }

      v16 = a1 <= 2u ? v15 : v11;
      v17 = a1 <= 2u ? 0xE600000000000000 : v12;
      if (v9 == v16 && v10 == v17)
      {
        break;
      }

      v18 = sub_1D72646CC();

      if ((v18 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v18 & 1;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D61851A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D7264A0C();
  FeedItem.Kind.hash(into:)();
  v6 = sub_1D7264A5C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = *(a3 + 48) + 16 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    switch(v12)
    {
      case 0uLL:
        if (a2)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 0;
        goto LABEL_55;
      case 1uLL:
        if (a2 != 1)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 1;
        goto LABEL_55;
      case 2uLL:
        if (a2 != 2)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 2;
        goto LABEL_55;
      case 3uLL:
        if (a2 != 3)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 3;
        goto LABEL_55;
      case 4uLL:
        if (a2 != 4)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 4;
        goto LABEL_55;
      case 5uLL:
        if (a2 != 5)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 5;
        goto LABEL_55;
      case 6uLL:
        if (a2 != 6)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 6;
        goto LABEL_55;
      case 7uLL:
        if (a2 != 7)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 7;
        goto LABEL_55;
      case 8uLL:
        if (a2 != 8)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 8;
        goto LABEL_55;
      case 9uLL:
        if (a2 != 9)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 9;
        goto LABEL_55;
      case 0xAuLL:
        if (a2 != 10)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 10;
        goto LABEL_55;
      case 0xBuLL:
        if (a2 != 11)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 11;
        goto LABEL_55;
      case 0xCuLL:
        if (a2 != 12)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 12;
        goto LABEL_55;
      case 0xDuLL:
        if (a2 != 13)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 13;
        goto LABEL_55;
      case 0xEuLL:
        if (a2 != 14)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 14;
        goto LABEL_55;
      case 0xFuLL:
        if (a2 != 15)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 15;
        goto LABEL_55;
      case 0x10uLL:
        if (a2 != 16)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 16;
        goto LABEL_55;
      case 0x11uLL:
        if (a2 != 17)
        {
          goto LABEL_42;
        }

        v16 = *v10;
        v17 = 17;
        goto LABEL_55;
      default:
        if (a2 < 0x12)
        {
          sub_1D5BF2DDC(*v10, *(v10 + 8));
LABEL_42:
          sub_1D5BF2DDC(a1, a2);
          sub_1D5BF6680(v11, v12);
          sub_1D5BF6680(a1, a2);
          goto LABEL_43;
        }

        if (v11 != a1 || v12 != a2)
        {
          v14 = sub_1D72646CC();
          sub_1D5BF2DDC(a1, a2);
          sub_1D5BF2DDC(v11, v12);
          sub_1D5BF6680(v11, v12);
          sub_1D5BF6680(a1, a2);
          if (v14)
          {
            return 1;
          }

LABEL_43:
          v8 = (v8 + 1) & v9;
          if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        sub_1D5BF2DDC(a1, a2);
        sub_1D5BF2DDC(a1, a2);
        v16 = a1;
        v17 = a2;
LABEL_55:
        sub_1D5BF6680(v16, v17);
        sub_1D5BF6680(a1, a2);
        return 1;
    }
  }
}

BOOL sub_1D6185530(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a1);
  v4 = sub_1D7264A5C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1D61855FC(char a1, uint64_t a2)
{
  if (*(a2 + 16) && ((v4 = 1685217635, sub_1D7264A0C(), (a1 & 1) == 0) ? (v5 = 0xE400000000000000) : (v4 = 0x746C7561666564, v5 = 0xE700000000000000), sub_1D72621EC(), , v6 = sub_1D7264A5C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8) ? 0x746C7561666564 : 1685217635;
      v11 = *(*(a2 + 48) + v8) ? 0xE700000000000000 : 0xE400000000000000;
      if (v10 == v4 && v11 == v5)
      {
        break;
      }

      v13 = sub_1D72646CC();

      if ((v13 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1D6185778(__int16 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = 0xE900000000000065;
  v5 = 0x7469617274726F70;
  sub_1D7264A0C();
  sub_1D6E23ADC(a1);
  sub_1D72621EC();

  if ((a1 & 0x100) != 0)
  {
    v5 = 0x70616373646E616CLL;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  sub_1D72621EC();

  v6 = sub_1D7264A5C();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v28 = ~v7;
  v9 = 0x7258656E6F685069;
  while (2)
  {
    v10 = (*(a2 + 48) + 2 * v8);
    v11 = v10[1];
    v12 = 0xE800000000000000;
    v13 = v9;
    switch(*v10)
    {
      case 1:
        goto LABEL_10;
      case 2:
        v12 = 0xEB0000000078614DLL;
LABEL_10:
        v13 = 0x7358656E6F685069;
        break;
      case 3:
        v13 = 0x4553656E6F685069;
        break;
      case 4:
        v13 = 0x3131656E6F685069;
        break;
      case 5:
        v13 = 0x3131656E6F685069;
        goto LABEL_32;
      case 6:
        v13 = 0x3131656E6F685069;
        goto LABEL_48;
      case 7:
        v13 = 0x3231656E6F685069;
        break;
      case 8:
        v13 = 0x3231656E6F685069;
        goto LABEL_37;
      case 9:
        v13 = 0x3231656E6F685069;
        goto LABEL_32;
      case 0xA:
        v13 = 0x3231656E6F685069;
        goto LABEL_48;
      case 0xB:
        v13 = 0x3331656E6F685069;
        break;
      case 0xC:
        v13 = 0x3331656E6F685069;
LABEL_37:
        v12 = 0xEC000000696E694DLL;
        break;
      case 0xD:
        v13 = 0x3331656E6F685069;
        goto LABEL_32;
      case 0xE:
        v13 = 0x3331656E6F685069;
        goto LABEL_48;
      case 0xF:
        v13 = 0x3431656E6F685069;
        break;
      case 0x10:
        v13 = 0x3431656E6F685069;
        goto LABEL_28;
      case 0x11:
        v13 = 0x3431656E6F685069;
        goto LABEL_32;
      case 0x12:
        v13 = 0x3431656E6F685069;
        goto LABEL_48;
      case 0x13:
        v13 = 0x3531656E6F685069;
        break;
      case 0x14:
        v13 = 0x3531656E6F685069;
        goto LABEL_28;
      case 0x15:
        v13 = 0x3531656E6F685069;
        goto LABEL_32;
      case 0x16:
        v13 = 0x3531656E6F685069;
        goto LABEL_48;
      case 0x17:
        v13 = 0x3631656E6F685069;
        break;
      case 0x18:
        v13 = 0x3631656E6F685069;
LABEL_28:
        v12 = 0xEC00000073756C50;
        break;
      case 0x19:
        v13 = 0x3631656E6F685069;
LABEL_32:
        v12 = 0xEB000000006F7250;
        break;
      case 0x1A:
        v13 = 0x3631656E6F685069;
LABEL_48:
        v12 = 0xEE0078614D6F7250;
        break;
      case 0x1B:
        v12 = 0xE400000000000000;
        v13 = 1684099177;
        break;
      case 0x1C:
        v12 = 0xE700000000000000;
        v13 = 0x72694164615069;
        break;
      case 0x1D:
        v13 = 0x696E694D64615069;
        break;
      case 0x1E:
        v14 = 895430705;
        goto LABEL_40;
      case 0x1F:
        v12 = 0xEA00000000003131;
        goto LABEL_41;
      case 0x20:
        v14 = 962540081;
LABEL_40:
        v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_41:
        v13 = 0x5F6F725064615069;
        break;
      case 0x21:
        v12 = 0xE300000000000000;
        v13 = 6513005;
        break;
      case 0x22:
        v13 = 0x6465727265666E69;
        break;
      default:
        break;
    }

    v15 = 0xE800000000000000;
    v16 = v9;
    switch(a1)
    {
      case 1:
        goto LABEL_51;
      case 2:
        v15 = 0xEB0000000078614DLL;
LABEL_51:
        if (v13 != 0x7358656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 3:
        if (v13 != 0x4553656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 4:
        if (v13 != 0x3131656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 5:
        v19 = 0x3131656E6F685069;
        goto LABEL_82;
      case 6:
        v18 = 0x3131656E6F685069;
        goto LABEL_108;
      case 7:
        if (v13 != 0x3231656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 8:
        v17 = 0x3231656E6F685069;
        goto LABEL_88;
      case 9:
        v19 = 0x3231656E6F685069;
        goto LABEL_82;
      case 10:
        v18 = 0x3231656E6F685069;
        goto LABEL_108;
      case 11:
        if (v13 != 0x3331656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 12:
        v17 = 0x3331656E6F685069;
LABEL_88:
        v20 = 1768843597;
        goto LABEL_89;
      case 13:
        v19 = 0x3331656E6F685069;
        goto LABEL_82;
      case 14:
        v18 = 0x3331656E6F685069;
        goto LABEL_108;
      case 15:
        if (v13 != 0x3431656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 16:
        v17 = 0x3431656E6F685069;
        goto LABEL_78;
      case 17:
        v19 = 0x3431656E6F685069;
        goto LABEL_82;
      case 18:
        v18 = 0x3431656E6F685069;
        goto LABEL_108;
      case 19:
        if (v13 != 0x3531656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 20:
        v17 = 0x3531656E6F685069;
        goto LABEL_78;
      case 21:
        v19 = 0x3531656E6F685069;
        goto LABEL_82;
      case 22:
        v18 = 0x3531656E6F685069;
        goto LABEL_108;
      case 23:
        if (v13 != 0x3631656E6F685069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 24:
        v17 = 0x3631656E6F685069;
LABEL_78:
        v20 = 1937075280;
LABEL_89:
        v15 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v13 != v17)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 25:
        v19 = 0x3631656E6F685069;
LABEL_82:
        v15 = 0xEB000000006F7250;
        if (v13 != v19)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 26:
        v18 = 0x3631656E6F685069;
LABEL_108:
        v15 = 0xEE0078614D6F7250;
        if (v13 != v18)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 27:
        v15 = 0xE400000000000000;
        if (v13 != 1684099177)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 28:
        v15 = 0xE700000000000000;
        if (v13 != 0x72694164615069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 29:
        v9 = 0x696E694D64615069;
        goto LABEL_104;
      case 30:
        v21 = 895430705;
        goto LABEL_93;
      case 31:
        v15 = 0xEA00000000003131;
        goto LABEL_94;
      case 32:
        v21 = 962540081;
LABEL_93:
        v15 = v21 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_94:
        if (v13 != 0x5F6F725064615069)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 33:
        v15 = 0xE300000000000000;
        if (v13 != 6513005)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      case 34:
        if (v13 != 0x6465727265666E69)
        {
          goto LABEL_109;
        }

        goto LABEL_105;
      default:
LABEL_104:
        if (v13 != v9)
        {
          goto LABEL_109;
        }

LABEL_105:
        if (v12 == v15)
        {
        }

        else
        {
LABEL_109:
          v22 = sub_1D72646CC();

          if ((v22 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        if (v11)
        {
          v23 = 0x70616373646E616CLL;
        }

        else
        {
          v23 = 0x7469617274726F70;
        }

        if (v11)
        {
          v24 = 0xE900000000000065;
        }

        else
        {
          v24 = 0xE800000000000000;
        }

        if (v23 != v5 || v24 != v4)
        {
          v26 = sub_1D72646CC();

          if (v26)
          {
            return 1;
          }

LABEL_7:
          v8 = (v8 + 1) & v28;
          v9 = v16;
          if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
    }
  }
}

BOOL sub_1D6186018(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v3);
  v4 = sub_1D7264A5C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1D61860E4(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), , v4 = sub_1D7264A5C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v18 = ~v5;
    v7 = a1;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      v9 = 0xD00000000000001CLL;
      if (v8 == 1)
      {
        v10 = "unusedProperties";
      }

      else
      {
        v9 = 0xD000000000000028;
        v10 = "duplicateNewsroomIdentifiers";
      }

      v11 = v8 == 0;
      if (*(*(a2 + 48) + v6))
      {
        v12 = v9;
      }

      else
      {
        v12 = 0xD000000000000010;
      }

      v13 = "bility-news-plus-via-hardware";
      if (!v11)
      {
        v13 = v10;
      }

      if (a1)
      {
        v14 = a1 == 1 ? 0xD00000000000001CLL : 0xD000000000000028;
        v15 = a1 == 1 ? "unusedProperties" : "duplicateNewsroomIdentifiers";
      }

      else
      {
        v14 = 0xD000000000000010;
        v15 = "bility-news-plus-via-hardware";
      }

      if (v12 == v14 && (v13 | 0x8000000000000000) == (v15 | 0x8000000000000000))
      {
        break;
      }

      v16 = sub_1D72646CC();

      if ((v16 & 1) == 0)
      {
        v6 = (v6 + 1) & v18;
        a1 = v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v16 & 1;
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1D61862E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WebEmbedDataVisualization();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v38 - v23);
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D61880A0(a1, v24);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v43 = v16;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D6188104(v24, v7);
      sub_1D72621EC();
      sub_1D5B88B00(v7, type metadata accessor for GenericDataVisualization);
    }

    else
    {
      v44 = *v24;
      SportsDataVisualization.identifier.getter();
      sub_1D72621EC();
    }

    v26 = sub_1D7264A5C();
    v27 = -1 << *(a2 + 32);
    v28 = v26 & ~v27;
    v40 = a2 + 56;
    if ((*(a2 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
    {
      v38 = v7;
      v39 = ~v27;
      v41 = *(v9 + 72);
      v42 = v20;
      while (1)
      {
        sub_1D61880A0(*(a2 + 48) + v41 * v28, v20);
        v29 = v43;
        sub_1D61880A0(v20, v43);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D6188104(v29, v7);
          v45 = 0x3A636972656E6567;
          v46 = 0xE90000000000003ALL;
          MEMORY[0x1DA6F9910](*v7, v7[1]);
          v31 = v45;
          v30 = v46;
          sub_1D5B88B00(v7, type metadata accessor for GenericDataVisualization);
        }

        else
        {
          v44 = *v29;
          v45 = 0x3A3A7374726F7073;
          v46 = 0xE800000000000000;
          v32 = SportsDataVisualization.identifier.getter();
          MEMORY[0x1DA6F9910](v32);

          v31 = v45;
          v30 = v46;
        }

        sub_1D61880A0(a1, v12);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D6188104(v12, v7);
          v45 = 0x3A636972656E6567;
          v46 = 0xE90000000000003ALL;
          MEMORY[0x1DA6F9910](*v7, v7[1]);
          v34 = v45;
          v33 = v46;
          sub_1D5B88B00(v7, type metadata accessor for GenericDataVisualization);
          if (v31 != v34)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v44 = *v12;
          v45 = 0x3A3A7374726F7073;
          v46 = 0xE800000000000000;
          v35 = SportsDataVisualization.identifier.getter();
          MEMORY[0x1DA6F9910](v35);

          v7 = v38;

          v33 = v46;
          if (v31 != v45)
          {
            goto LABEL_15;
          }
        }

        if (v30 == v33)
        {

          sub_1D5B88B00(v42, type metadata accessor for WebEmbedDataVisualization);
          v36 = 1;
          return v36 & 1;
        }

LABEL_15:
        v36 = sub_1D72646CC();

        v20 = v42;
        sub_1D5B88B00(v42, type metadata accessor for WebEmbedDataVisualization);
        if ((v36 & 1) == 0)
        {
          v28 = (v28 + 1) & v39;
          if ((*(v40 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
          {
            continue;
          }
        }

        return v36 & 1;
      }
    }
  }

  v36 = 0;
  return v36 & 1;
}

uint64_t sub_1D61867BC(char a1, uint64_t a2)
{
  if (*(a2 + 16) && ((v4 = 0xE900000000000065, v5 = 0x7469617274726F70, sub_1D7264A0C(), (a1 & 1) == 0) ? (v4 = 0xE800000000000000) : (v5 = 0x70616373646E616CLL), sub_1D72621EC(), , v6 = sub_1D7264A5C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8) ? 0x70616373646E616CLL : 0x7469617274726F70;
      v11 = *(*(a2 + 48) + v8) ? 0xE900000000000065 : 0xE800000000000000;
      if (v10 == v5 && v11 == v4)
      {
        break;
      }

      v13 = sub_1D72646CC();

      if ((v13 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1D6186944(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1D7264A0C();
    sub_1D6BCA4C4(a1);
    sub_1D72621EC();

    v4 = sub_1D7264A5C();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v30 = ~v5;
      v7 = 0x6576694C7261656ELL;
      v8 = 0x656E6F7074736F70;
      while (1)
      {
        v9 = *(*(a2 + 48) + v6);
        if (v9 <= 4)
        {
          if (v9 == 3)
          {
            v11 = 0x6B61657262;
          }

          else
          {
            v11 = v8;
          }

          if (v9 == 3)
          {
            v12 = 0xE500000000000000;
          }

          else
          {
            v12 = 0xE900000000000064;
          }

          if (v9 == 2)
          {
            v11 = 0x6572676F72506E69;
            v12 = 0xEA00000000007373;
          }

          if (*(*(a2 + 48) + v6))
          {
            v13 = v7;
          }

          else
          {
            v13 = 0x656D6167657270;
          }

          if (*(*(a2 + 48) + v6))
          {
            v14 = 0xE800000000000000;
          }

          else
          {
            v14 = 0xE700000000000000;
          }

          if (*(*(a2 + 48) + v6) <= 1u)
          {
            v10 = v13;
          }

          else
          {
            v10 = v11;
          }

          if (*(*(a2 + 48) + v6) <= 1u)
          {
            v15 = v14;
          }

          else
          {
            v15 = v12;
          }
        }

        else if (*(*(a2 + 48) + v6) > 7u)
        {
          if (v9 == 8)
          {
            v15 = 0xE500000000000000;
            v10 = 0x6C616E6966;
          }

          else
          {
            v15 = 0xE700000000000000;
            if (v9 == 9)
            {
              v10 = 0x74696566726F66;
            }

            else
            {
              v10 = 0x6E776F6E6B6E75;
            }
          }
        }

        else
        {
          if (v9 == 5)
          {
            v10 = 0x65646E6570737573;
            goto LABEL_33;
          }

          if (v9 == 6)
          {
            v10 = 0x656C6C65636E6163;
LABEL_33:
            v15 = 0xE900000000000064;
            goto LABEL_37;
          }

          v15 = 0xE700000000000000;
          v10 = 0x646579616C6564;
        }

LABEL_37:
        v16 = 0x74696566726F66;
        if (a1 != 9)
        {
          v16 = 0x6E776F6E6B6E75;
        }

        v17 = 0xE700000000000000;
        if (a1 == 8)
        {
          v16 = 0x6C616E6966;
          v17 = 0xE500000000000000;
        }

        v18 = 0x656C6C65636E6163;
        if (a1 == 6)
        {
          v19 = 0xE900000000000064;
        }

        else
        {
          v18 = 0x646579616C6564;
          v19 = 0xE700000000000000;
        }

        if (a1 == 5)
        {
          v18 = 0x65646E6570737573;
          v19 = 0xE900000000000064;
        }

        if (a1 <= 7u)
        {
          v16 = v18;
          v17 = v19;
        }

        if (a1 == 3)
        {
          v20 = 0x6B61657262;
        }

        else
        {
          v20 = v8;
        }

        if (a1 == 3)
        {
          v21 = 0xE500000000000000;
        }

        else
        {
          v21 = 0xE900000000000064;
        }

        if (a1 == 2)
        {
          v20 = 0x6572676F72506E69;
          v21 = 0xEA00000000007373;
        }

        if (a1)
        {
          v22 = v7;
        }

        else
        {
          v22 = 0x656D6167657270;
        }

        if (a1)
        {
          v23 = 0xE800000000000000;
        }

        else
        {
          v23 = 0xE700000000000000;
        }

        if (a1 <= 1u)
        {
          v20 = v22;
          v21 = v23;
        }

        if (a1 <= 4u)
        {
          v24 = v20;
        }

        else
        {
          v24 = v16;
        }

        if (a1 <= 4u)
        {
          v25 = v21;
        }

        else
        {
          v25 = v17;
        }

        if (v10 == v24 && v15 == v25)
        {

          v28 = 1;
          return v28 & 1;
        }

        v26 = v8;
        v27 = v7;
        v28 = sub_1D72646CC();

        if ((v28 & 1) == 0)
        {
          v6 = (v6 + 1) & v30;
          v7 = v27;
          v8 = v26;
          if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
          {
            continue;
          }
        }

        return v28 & 1;
      }
    }
  }

  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1D6186CE4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), , v4 = sub_1D7264A5C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v25 = ~v5;
    v7 = 0x64657375636F66;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      v9 = v8 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v10 = v8 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v11 = *(*(a2 + 48) + v6) ? v7 : 0x64656C6261736964;
      v12 = *(*(a2 + 48) + v6) ? 0xE700000000000000 : 0xE800000000000000;
      v13 = *(*(a2 + 48) + v6) <= 1u ? v11 : v9;
      v14 = *(*(a2 + 48) + v6) <= 1u ? v12 : v10;
      v15 = a1;
      v16 = a1 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v17 = a1 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v18 = a1 ? v7 : 0x64656C6261736964;
      v19 = a1 ? 0xE700000000000000 : 0xE800000000000000;
      v20 = a1 <= 1u ? v18 : v16;
      v21 = a1 <= 1u ? v19 : v17;
      if (v13 == v20 && v14 == v21)
      {
        break;
      }

      v22 = v7;
      v23 = sub_1D72646CC();

      if ((v23 & 1) == 0)
      {
        v6 = (v6 + 1) & v25;
        a1 = v15;
        v7 = v22;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v23 & 1;
    }

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1D6186F50(unint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D7264A0C();
  if (a2)
  {
    v6 = qword_1D72A7AC0[a1];
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    v6 = a1;
  }

  MEMORY[0x1DA6FC0B0](v6);
  v8 = sub_1D7264A5C();
  v9 = -1 << *(a3 + 32);
  v10 = v8 & ~v9;
  if ((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(a3 + 48) + 16 * v10;
      v13 = *v12;
      if (*(v12 + 8) == 1)
      {
        if (v13 > 1)
        {
          if (v13 == 2)
          {
            if ((a2 & (a1 == 2)) != 0)
            {
              return 1;
            }
          }

          else if ((a2 & (a1 > 2)) != 0)
          {
            return 1;
          }
        }

        else if (v13)
        {
          if ((a2 & (a1 == 1)) != 0)
          {
            return 1;
          }
        }

        else if ((a2 & (a1 == 0)) != 0)
        {
          return 1;
        }
      }

      else if ((a2 & 1) == 0 && v13 == a1)
      {
        return 1;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return 0;
}

uint64_t sub_1D61870B4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  sub_1D7264A0C();
  sub_1D6BE3D70(v17, a1, a2, a3);
  v8 = sub_1D7264A5C();
  v9 = a4 + 56;
  v10 = -1 << *(a4 + 32);
  v11 = v8 & ~v10;
  if ((*(a4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(a4 + 48);
    while (1)
    {
      v14 = v13 + 24 * v11;
      switch(*(v14 + 16))
      {
        case 1:
          if (a3 != 1)
          {
            goto LABEL_5;
          }

          goto LABEL_30;
        case 2:
          if (a3 == 2)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 3:
          if (a3 == 3)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 4:
          if (a3 == 4)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 5:
          if (a3 == 5)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 6:
          if (a3 == 6)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 7:
          if (a3 == 7)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 8:
          if (a3 == 8)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 9:
          if (a3 == 9)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 0xA:
          if (a3 == 10)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 0xB:
          if (a3 == 11)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        case 0xC:
          if (a3 == 12)
          {
            goto LABEL_30;
          }

          goto LABEL_5;
        default:
          if (a3)
          {
            goto LABEL_5;
          }

LABEL_30:
          v15 = *v14 == a1 && *(v14 + 8) == a2;
          if (v15 || (sub_1D72646CC() & 1) != 0)
          {
            return 1;
          }

LABEL_5:
          v11 = (v11 + 1) & v12;
          if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            return 0;
          }

          break;
      }
    }
  }

  return 0;
}

uint64_t sub_1D61872AC(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), , v4 = sub_1D7264A5C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          v10 = 0xE600000000000000;
          v9 = 0x73656D656874;
        }

        else
        {
          if (v8 == 4)
          {
            v9 = 0x6C6C6177796170;
          }

          else
          {
            v9 = 0x756F72676B636162;
          }

          if (v8 == 4)
          {
            v10 = 0xE700000000000000;
          }

          else
          {
            v10 = 0xEB0000000073646ELL;
          }
        }
      }

      else if (*(*(a2 + 48) + v6))
      {
        if (v8 == 1)
        {
          v9 = 0x73726564616568;
        }

        else
        {
          v9 = 0x737265746F6F66;
        }

        v10 = 0xE700000000000000;
      }

      else
      {
        v10 = 0xE700000000000000;
        v9 = 0x7374756F79616CLL;
      }

      v11 = 0x756F72676B636162;
      if (a1 == 4)
      {
        v11 = 0x6C6C6177796170;
      }

      v12 = 0xEB0000000073646ELL;
      if (a1 == 4)
      {
        v12 = 0xE700000000000000;
      }

      if (a1 == 3)
      {
        v11 = 0x73656D656874;
        v12 = 0xE600000000000000;
      }

      v13 = 0x737265746F6F66;
      if (a1 == 1)
      {
        v13 = 0x73726564616568;
      }

      if (!a1)
      {
        v13 = 0x7374756F79616CLL;
      }

      v14 = a1 <= 2u ? v13 : v11;
      v15 = a1 <= 2u ? 0xE700000000000000 : v12;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = sub_1D72646CC();

      if ((v16 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v16 & 1;
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t FeedSubscriptionPaidAccess.init(paidAccessChecker:tag:)@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = [a1 purchaseProvider];
  if ([swift_unknownObjectRetain_n() tagType] == 3)
  {
    v7 = [a2 asSection];
    if (!v7 || (v8 = [v7 parentID], swift_unknownObjectRelease(), !v8))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_7;
    }
  }

  else
  {
    v8 = [a2 identifier];
  }

  v9 = sub_1D726207C();
  v11 = v10;

  v12 = [v6 purchasedTagIDs];
  v13 = sub_1D7262B0C();

  LOBYTE(v12) = sub_1D5BE240C(v9, v11, v13);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v12)
  {
    goto LABEL_30;
  }

LABEL_7:
  v14 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v14, v14 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    sub_1D5B88B00(&v36, sub_1D5BE1404);
    goto LABEL_15;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v15 = 0;
    v17 = 0;
    goto LABEL_16;
  }

  v15 = v33;
  v16 = [v33 integerValue];
  if (v16 == -1)
  {

LABEL_27:
    v20 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v21 = [a2 identifier];
    if (!v21)
    {
      sub_1D726207C();
      v21 = sub_1D726203C();
    }

    v22 = [v20 containsTagID_];

    if ((v22 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_30:
    v23 = [a1 purchaseProvider];
    if ([swift_unknownObjectRetain() tagType] == 3)
    {
      v24 = [a2 asSection];
      if (!v24 || (v25 = [v24 parentID], swift_unknownObjectRelease(), !v25))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
        result = swift_unknownObjectRelease();
        goto LABEL_38;
      }
    }

    else
    {
      v25 = [a2 identifier];
    }

    v28 = sub_1D726207C();
    v30 = v29;

    v31 = [v23 purchasedTagIDs];
    v32 = sub_1D7262B0C();

    LOBYTE(v31) = sub_1D5BE240C(v28, v30, v32);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease_n();
    if (v31)
    {
      v27 = 1;
      goto LABEL_39;
    }

LABEL_38:
    v27 = 2;
    goto LABEL_39;
  }

  v17 = v16;
LABEL_16:
  if (objc_getAssociatedObject(v14, ~v17))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    sub_1D5B88B00(&v36, sub_1D5BE1404);
LABEL_24:

    if ((v17 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v18 = v33;
  v19 = [v18 integerValue];

  if ((v19 ^ v17))
  {
    goto LABEL_27;
  }

LABEL_34:
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease_n();
  v27 = 0;
LABEL_39:
  *a3 = v27;
  return result;
}

NewsFeed::FeedSubscriptionPaidAccess_optional __swiftcall FeedSubscriptionPaidAccess.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedSubscriptionPaidAccess.rawValue.getter()
{
  v1 = 0x6574726143614C61;
  if (*v0 != 1)
  {
    v1 = 0x646E754264696170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6373627553746F6ELL;
  }
}

uint64_t sub_1D6187BF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6574726143614C61;
  if (v2 != 1)
  {
    v4 = 0x646E754264696170;
    v3 = 0xEA0000000000656CLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6373627553746F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED00006465626972;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6574726143614C61;
  if (*a2 != 1)
  {
    v8 = 0x646E754264696170;
    v7 = 0xEA0000000000656CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6373627553746F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00006465626972;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6187D08()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6187DBC()
{
  sub_1D72621EC();
}

uint64_t sub_1D6187E5C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6187F18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006465626972;
  v4 = 0xE800000000000000;
  v5 = 0x6574726143614C61;
  if (v2 != 1)
  {
    v5 = 0x646E754264696170;
    v4 = 0xEA0000000000656CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6373627553746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D618803C()
{
  result = qword_1EC8847C0;
  if (!qword_1EC8847C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8847C0);
  }

  return result;
}

uint64_t sub_1D61880A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedDataVisualization();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6188104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericDataVisualization();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6188168()
{
  result = qword_1EDF138B0;
  if (!qword_1EDF138B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF138B0);
  }

  return result;
}

uint64_t FormatSlotDefinitionCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8);
  if (*(v5 + 16) && (v6 = sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for FormatSlotDefinition();
    v17 = *(v10 - 8);
    sub_1D5CAF694(v9 + *(v17 + 72) * v8, a3);
    v11 = *(v17 + 56);
    v12 = a3;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = type metadata accessor for FormatSlotDefinition();
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a3;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t FormatSlotDefinitionCollection.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1D5CAAC54();
  sub_1D5CAACF4(&qword_1EDF04E68, &qword_1EDF0ED20);
  sub_1D726476C();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

NewsFeed::FormatSlotDefinitionCollection __swiftcall FormatSlotDefinitionCollection.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D5C4C26C(MEMORY[0x1E69E7CC0]);
  *v1 = v2;
  v1[1] = v3;
  result.slotsByIdentifier._rawValue = v4;
  result.slots._rawValue = v3;
  return result;
}

unint64_t sub_1D6188428@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1D5C4C26C(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D618846C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSlotDefinition();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D61884D0()
{
  if (!qword_1EC8847C8)
  {
    type metadata accessor for FormatSlotDefinition();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8847C8);
    }
  }
}

uint64_t _s8NewsFeed25FormatMediaTimingFunctionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if ((v6 & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      v14 = sub_1D6DD65C0(*a1, *a2);
      sub_1D618909C(v3, v2, v5, v4, 0);
      sub_1D618909C(v8, v7, v10, v9, 0);
      return v14 & 1;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 32) & 1) == 0)
  {

LABEL_11:
    sub_1D618903C(v8, v7, v10, v9, v11);
    sub_1D618909C(v3, v2, v5, v4, v6);
    v15 = v8;
    v16 = v7;
    v17 = v10;
    v18 = v9;
    v19 = v11;
LABEL_13:
    sub_1D618909C(v15, v16, v17, v18, v19);
    return 0;
  }

  sub_1D618903C(*a2, *(a2 + 8), v10, v9, 1);
  sub_1D618903C(v3, v2, v5, v4, 1);
  sub_1D618903C(v8, v7, v10, v9, 1);
  sub_1D618903C(v3, v2, v5, v4, 1);
  if ((sub_1D633A310(v3, v8) & 1) == 0 || (sub_1D633A310(v2, v7) & 1) == 0 || (sub_1D633A310(v5, v10) & 1) == 0)
  {
    sub_1D618909C(v3, v2, v5, v4, 1);
    sub_1D618909C(v8, v7, v10, v9, 1);
    sub_1D618909C(v8, v7, v10, v9, 1);
    v15 = v3;
    v16 = v2;
    v17 = v5;
    v18 = v4;
    v19 = 1;
    goto LABEL_13;
  }

  v12 = sub_1D633A310(v4, v9);
  sub_1D618909C(v3, v2, v5, v4, 1);
  sub_1D618909C(v8, v7, v10, v9, 1);
  sub_1D618909C(v8, v7, v10, v9, 1);
  sub_1D618909C(v3, v2, v5, v4, 1);
  result = 1;
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D61887F0(uint64_t a1)
{
  result = sub_1D6188818();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6188818()
{
  result = qword_1EC8847D0;
  if (!qword_1EC8847D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8847D0);
  }

  return result;
}

unint64_t sub_1D618886C(void *a1)
{
  a1[1] = sub_1D61888A4();
  a1[2] = sub_1D61888F8();
  result = sub_1D618894C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61888A4()
{
  result = qword_1EDF0C0D0;
  if (!qword_1EDF0C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C0D0);
  }

  return result;
}

unint64_t sub_1D61888F8()
{
  result = qword_1EDF0C0D8;
  if (!qword_1EDF0C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C0D8);
  }

  return result;
}

unint64_t sub_1D618894C()
{
  result = qword_1EC8847D8;
  if (!qword_1EC8847D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8847D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatRadialGradientCircleRadius(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatRadialGradientCircleRadius(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void *sub_1D6188A58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4 == 255)
  {
    v16 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v16);
  }

  else
  {
    v33 = v2;
    v34 = v3;
    v5 = *a2;
    if (v4)
    {
      v6 = *(a2 + 8);
      v29 = *(a2 + 16);
      v30 = *(a2 + 24);
      v7 = MEMORY[0x1E69E6F90];
      sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v7);
      sub_1D5EA74B8();
      v10 = *(*(v9 - 8) + 72);
      v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D7279960;
      v13 = v12 + v11;
      sub_1D711F844(1701869908, 0xE400000000000000, 0x206C6F72746E6F43, 0xEE0073746E696F50, (v12 + v11));
      v14 = type metadata accessor for FormatInspectionItem(0);
      v15 = *(*(v14 - 8) + 56);
      v15(v13, 0, 1, v14);

      sub_1D711B070(0x3120746E696F50, 0xE700000000000000, v5, (v13 + v10));
      v15(v13 + v10, 0, 1, v14);

      sub_1D711B070(0x3220746E696F50, 0xE700000000000000, v6, (v13 + 2 * v10));
      v15(v13 + 2 * v10, 0, 1, v14);

      sub_1D711B070(0x3320746E696F50, 0xE700000000000000, v29, (v13 + 3 * v10));
      v15(v13 + 3 * v10, 0, 1, v14);

      sub_1D711B070(0x3420746E696F50, 0xE700000000000000, v30, (v13 + 4 * v10));
      v15(v13 + 4 * v10, 0, 1, v14);
      sub_1D6795150(0x4620676E696D6954, 0xEF6E6F6974636E75, 0, 0, v12, v31);
    }

    else
    {
      v18 = MEMORY[0x1E69E6F90];
      sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v18);
      sub_1D5EA74B8();
      v20 = *(*(v19 - 8) + 72);
      v21 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D7270C10;
      v23 = (v22 + v21);
      sub_1D711F844(1701869908, 0xE400000000000000, 1701667150, 0xE400000000000000, v23);
      v24 = type metadata accessor for FormatInspectionItem(0);
      v25 = *(*(v24 - 8) + 56);
      v25(v23, 0, 1, v24);
      sub_1D711F844(1701667150, 0xE400000000000000, *&aLinear_3[8 * v5], qword_1D72A7D30[v5], (v23 + v20));
      v25((v23 + v20), 0, 1, v24);
      sub_1D6795150(0x4620676E696D6954, 0xEF6E6F6974636E75, 0, 0, v22, v31);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(inited + 56) = &type metadata for FormatInspectionGroup;
    *(inited + 64) = &off_1F518B2C0;
    v26 = swift_allocObject();
    *(inited + 32) = v26;
    *(v26 + 48) = v32;
    v27 = v31[1];
    *(v26 + 16) = v31[0];
    *(v26 + 32) = v27;
    v28 = sub_1D7073500(inited);
    swift_setDeallocating();
    sub_1D5F10AA0(inited + 32);
    return v28;
  }
}

uint64_t sub_1D618903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1D618909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

NewsFeed::NotificationsCommandState_optional __swiftcall NotificationsCommandState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NotificationsCommandState.rawValue.getter()
{
  v1 = 0x6465696E6564;
  if (*v0 != 1)
  {
    v1 = 0x7A69726F68747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265746544746F6ELL;
  }
}

uint64_t sub_1D61891C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6465696E6564;
  if (v2 != 1)
  {
    v4 = 0x7A69726F68747561;
    v3 = 0xEA00000000006465;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7265746544746F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED000064656E696DLL;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6465696E6564;
  if (*a2 != 1)
  {
    v8 = 0x7A69726F68747561;
    v7 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7265746544746F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED000064656E696DLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

unint64_t sub_1D61892D0()
{
  result = qword_1EC8847E0;
  if (!qword_1EC8847E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8847E0);
  }

  return result;
}

uint64_t sub_1D6189324()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D61893D4()
{
  sub_1D72621EC();
}

uint64_t sub_1D6189470()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6189528(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000064656E696DLL;
  v4 = 0xE600000000000000;
  v5 = 0x6465696E6564;
  if (v2 != 1)
  {
    v5 = 0x7A69726F68747561;
    v4 = 0xEA00000000006465;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265746544746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D6189598(uint64_t a1)
{
  v2 = sub_1D61895F4();

  return MEMORY[0x1EEE48380](a1, v2);
}

unint64_t sub_1D61895F4()
{
  result = qword_1EC8847E8;
  if (!qword_1EC8847E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8847E8);
  }

  return result;
}

uint64_t FormatVideoProperties.looping.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t sub_1D6189668(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D5E04CC4(result);
  }

  return result;
}

uint64_t FormatVideoProperties.preventDisplaySleep.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t FormatVideoProperties.muted.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 72);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t FormatVideoProperties.shouldPlayInBackground.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 96);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

id sub_1D61896E0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  v5 = v1[24];
  v17 = v1[25];
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  v8 = v1[48];
  v20 = *(v1 + 8);
  v21 = *(v1 + 7);
  v22 = v1[72];
  v16 = v1[73];
  v18 = v1[74];
  v23 = **(&unk_1E84CE0B8 + *v1);
  if (v5 == 255)
  {
    v9 = 1;
    if (v8 == 255)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v24 = v4;
    v25 = v3;
    v26 = v5 & 1;
    sub_1D5E04CC4(v4);
    sub_1D725A7EC();
    v9 = FormatBoolean.value(contextLayoutOptions:)(v27);
    sub_1D5D2F2C4(v24, v3, v5 & 1);
    if (v2)
    {
LABEL_10:
    }

    if (v8 == 255)
    {
LABEL_4:
      v10 = 1;
      goto LABEL_8;
    }
  }

  v24 = v7;
  v25 = v6;
  v26 = v8 & 1;
  sub_1D5E04CC4(v7);
  sub_1D725A7EC();
  v10 = FormatBoolean.value(contextLayoutOptions:)(v27);
  sub_1D5D2F2C4(v24, v6, v8 & 1);
  if (v2)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (v22 == 255)
  {
    v11 = 1;
  }

  else
  {
    v24 = v21;
    v25 = v20;
    v26 = v22 & 1;
    sub_1D5E04CC4(v21);
    sub_1D725A7EC();
    v11 = FormatBoolean.value(contextLayoutOptions:)(v27);
    sub_1D5D2F2C4(v21, v20, v22 & 1);
    if (v2)
    {
      goto LABEL_10;
    }
  }

  if (v16 == 12)
  {
    v13 = 11;
  }

  else
  {
    v13 = v16;
  }

  LOBYTE(v24) = v13;
  v14 = sub_1D6B58370(&v24);
  v15 = qword_1D72A8158[v18];
  *a1 = v23;
  *(a1 + 8) = v9 & 1;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v10 & 1;
  *(a1 + 25) = v11 & 1;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  return v14;
}

BOOL _s8NewsFeed21FormatVideoPropertiesV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = a1[24];
  v6 = a1[25];
  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = a1[48];
  v11 = *(a1 + 7);
  v10 = *(a1 + 8);
  v12 = a1[72];
  v13 = a1[73];
  v14 = a1[74];
  v15 = *(a1 + 10);
  v16 = *(a1 + 11);
  v17 = a1[96];
  v18 = *a2;
  v20 = *(a2 + 1);
  v19 = *(a2 + 2);
  v21 = a2[24];
  v124 = a2[25];
  v122 = *(a2 + 4);
  v123 = *(a2 + 5);
  v22 = a2[48];
  v24 = *(a2 + 7);
  v23 = *(a2 + 8);
  v25 = a2[72];
  v26 = a2[73];
  v27 = a2[74];
  v29 = *(a2 + 10);
  v28 = *(a2 + 11);
  v30 = a2[96];
  if (v2 == 3)
  {
    v102 = v13;
    v103 = v12;
    v104 = v11;
    v105 = v10;
    v100 = v14;
    v101 = v27;
    v98 = v30;
    v99 = v29;
    v106 = v28;
    if (v18 != 3)
    {
      return 0;
    }

LABEL_3:
    if (v5 != 255)
    {
      goto LABEL_4;
    }

LABEL_29:
    v119 = v22;
    v121 = v6;
    v107 = v17;
    v109 = v16;
    v96 = v15;
    v117 = v25;
    v113 = v24;
    v115 = v23;
    v111 = v26;
    sub_1D6189668(v4, v3, 255);
    if (v21 == 255)
    {
      sub_1D6189668(v20, v19, 255);
      sub_1D60107F0(v4, v3, 255);
      goto LABEL_36;
    }

    sub_1D6189668(v20, v19, v21);
LABEL_31:
    sub_1D60107F0(v4, v3, v5);
    v39 = v20;
    v40 = v19;
    v41 = v21;
LABEL_32:
    sub_1D60107F0(v39, v40, v41);
    return 0;
  }

  if (v18 == 3)
  {
    return 0;
  }

  v95 = v7;
  v97 = v8;
  v114 = v24;
  v116 = v23;
  v112 = v26;
  v108 = v17;
  v110 = v16;
  v118 = v25;
  v120 = v22;
  v94 = v9;
  v32 = v15;
  if (v2)
  {
    if (v2 == 1)
    {
      v33 = 0x7341657A69736572;
    }

    else
    {
      v33 = 0xD000000000000010;
    }

    if (v2 == 1)
    {
      v34 = 0xEC00000074636570;
    }

    else
    {
      v34 = 0x80000001D73BA2F0;
    }
  }

  else
  {
    v34 = 0xE600000000000000;
    v33 = 0x657A69736572;
  }

  v35 = 0x7341657A69736572;
  v36 = 0x80000001D73BA2F0;
  if (v18 == 1)
  {
    v36 = 0xEC00000074636570;
  }

  else
  {
    v35 = 0xD000000000000010;
  }

  if (v18)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0x657A69736572;
  }

  if (v18)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0xE600000000000000;
  }

  v102 = v13;
  v103 = v12;
  v104 = v11;
  v105 = v10;
  v100 = v14;
  v101 = v27;
  v98 = v30;
  v99 = v29;
  v106 = v28;
  if (v33 != v37 || v34 != v38)
  {
    v42 = sub_1D72646CC();

    v16 = v110;
    v15 = v32;
    v17 = v108;
    v26 = v112;
    v24 = v114;
    v23 = v116;
    v25 = v118;
    v22 = v120;
    v7 = v95;
    v8 = v97;
    v9 = v94;
    if ((v42 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  v16 = v110;
  v15 = v32;
  v17 = v108;
  v26 = v112;
  v24 = v114;
  v23 = v116;
  v25 = v118;
  v22 = v120;
  v7 = v95;
  v8 = v97;
  v9 = v94;
  if (v5 == 255)
  {
    goto LABEL_29;
  }

LABEL_4:
  v128 = v4;
  v129 = v3;
  v130 = v5;
  if (v21 == 255)
  {
    sub_1D6189668(v4, v3, v5);
    sub_1D6189668(v20, v19, 255);
    sub_1D6189668(v4, v3, v5);
    sub_1D5D2F2C4(v4, v3, v5 & 1);
    goto LABEL_31;
  }

  v119 = v22;
  v121 = v6;
  v107 = v17;
  v109 = v16;
  v96 = v15;
  v117 = v25;
  v113 = v24;
  v115 = v23;
  v111 = v26;
  v125 = v20;
  v126 = v19;
  v127 = v21 & 1;
  sub_1D6189668(v4, v3, v5);
  sub_1D6189668(v20, v19, v21);
  sub_1D6189668(v4, v3, v5);
  v31 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v128, &v125);
  sub_1D5D2F2C4(v125, v126, v127);
  sub_1D5D2F2C4(v128, v129, v130);
  sub_1D60107F0(v4, v3, v5);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  if (v121 == 2)
  {
    v43 = v8;
    v44 = v7;
    v45 = v119;
    if (v124 != 2)
    {
      return 0;
    }

LABEL_38:
    if (v9 != 255)
    {
      goto LABEL_39;
    }

LABEL_59:
    v58 = v43;
    v59 = v44;
    sub_1D6189668(v44, v43, 255);
    v46 = v106;
    v48 = v122;
    v47 = v123;
    if (v45 == 255)
    {
      sub_1D6189668(v122, v123, 255);
      sub_1D60107F0(v59, v58, 255);
      goto LABEL_66;
    }

    sub_1D6189668(v122, v123, v45);
    goto LABEL_64;
  }

  if (v124 == 2)
  {
    return 0;
  }

  if (v121)
  {
    v54 = 0x74696E4972657375;
  }

  else
  {
    v54 = 1869903201;
  }

  if (v121)
  {
    v55 = 0xED00006465746169;
  }

  else
  {
    v55 = 0xE400000000000000;
  }

  if (v124)
  {
    v56 = 0x74696E4972657375;
  }

  else
  {
    v56 = 1869903201;
  }

  if (v124)
  {
    v57 = 0xED00006465746169;
  }

  else
  {
    v57 = 0xE400000000000000;
  }

  if (v54 != v56 || v55 != v57)
  {
    v60 = sub_1D72646CC();

    v43 = v8;
    v44 = v7;
    v45 = v119;
    if ((v60 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_38;
  }

  v43 = v8;
  v44 = v7;
  v45 = v119;
  if (v9 == 255)
  {
    goto LABEL_59;
  }

LABEL_39:
  v128 = v44;
  v129 = v43;
  v130 = v9;
  v46 = v106;
  v48 = v122;
  v47 = v123;
  if (v45 == 255)
  {
    v58 = v43;
    v59 = v44;
    sub_1D6189668(v44, v43, v9);
    sub_1D6189668(v122, v123, 255);
    sub_1D6189668(v59, v58, v9);
    sub_1D5D2F2C4(v59, v58, v9 & 1);
LABEL_64:
    sub_1D60107F0(v59, v58, v9);
    v39 = v48;
    v40 = v47;
    v41 = v45;
    goto LABEL_32;
  }

  v125 = v122;
  v126 = v123;
  v127 = v45 & 1;
  v49 = v45;
  v50 = v43;
  v51 = v44;
  sub_1D6189668(v44, v43, v9);
  sub_1D6189668(v122, v123, v49);
  sub_1D6189668(v51, v50, v9);
  v52 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v128, &v125);
  sub_1D5D2F2C4(v125, v126, v127);
  sub_1D5D2F2C4(v128, v129, v130);
  sub_1D60107F0(v51, v50, v9);
  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_66:
  if (v103 == 255)
  {
    sub_1D6189668(v104, v105, 255);
    v61 = v117;
    if (v117 == 255)
    {
      sub_1D6189668(v113, v115, 255);
      v63 = sub_1D60107F0(v104, v105, 255);
      goto LABEL_75;
    }

    v65 = v113;
    v64 = v115;
    sub_1D6189668(v113, v115, v117);
    v66 = v105;
    v67 = v104;
    goto LABEL_73;
  }

  v128 = v104;
  v129 = v105;
  v130 = v103;
  v61 = v117;
  if (v117 == 255)
  {
    sub_1D6189668(v104, v105, v103);
    v65 = v113;
    v64 = v115;
    sub_1D6189668(v113, v115, 255);
    sub_1D6189668(v104, v105, v103);
    sub_1D5D2F2C4(v104, v105, v103 & 1);
    v66 = v105;
    v67 = v104;
LABEL_73:
    sub_1D60107F0(v67, v66, v103);
    v39 = v65;
    v40 = v64;
    v41 = v61;
    goto LABEL_32;
  }

  v125 = v113;
  v126 = v115;
  v127 = v117 & 1;
  sub_1D6189668(v104, v105, v103);
  sub_1D6189668(v113, v115, v117);
  sub_1D6189668(v104, v105, v103);
  v62 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v128, &v125);
  sub_1D5D2F2C4(v125, v126, v127);
  sub_1D5D2F2C4(v128, v129, v130);
  v63 = sub_1D60107F0(v104, v105, v103);
  if ((v62 & 1) == 0)
  {
    return 0;
  }

LABEL_75:
  if (v102 == 12)
  {
    v68 = v96;
    v69 = v109;
    v70 = v107;
    if (v111 != 12)
    {
      return 0;
    }
  }

  else
  {
    if (v111 == 12)
    {
      return 0;
    }

    LOBYTE(v128) = v102;
    LOBYTE(v125) = v111;
    v71 = FormatImageGravity.rawValue.getter(v63);
    v73 = v72;
    if (v71 == FormatImageGravity.rawValue.getter(v71) && v73 == v74)
    {

      v68 = v96;
      v69 = v109;
      v70 = v107;
    }

    else
    {
      v75 = sub_1D72646CC();

      v68 = v96;
      v69 = v109;
      v70 = v107;
      if ((v75 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v100 == 3)
  {
    if (v101 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v101 == 3)
    {
      return 0;
    }

    v76 = 0x65636E61766461;
    if (v100)
    {
      if (v100 == 1)
      {
        v77 = 0xE500000000000000;
        v78 = 0x6573756170;
      }

      else
      {
        v77 = 0xE400000000000000;
        v78 = 1701736302;
      }
    }

    else
    {
      v77 = 0xE700000000000000;
      v78 = 0x65636E61766461;
    }

    if (v101)
    {
      v79 = v46;
      if (v101 == 1)
      {
        v80 = 0xE500000000000000;
        v76 = 0x6573756170;
      }

      else
      {
        v80 = 0xE400000000000000;
        v76 = 1701736302;
      }
    }

    else
    {
      v79 = v46;
      v80 = 0xE700000000000000;
    }

    v81 = v69;
    v82 = v68;
    if (v78 == v76 && v77 == v80)
    {

      v46 = v79;
      v68 = v82;
      v69 = v81;
    }

    else
    {
      v83 = sub_1D72646CC();

      v46 = v79;
      v68 = v82;
      v69 = v81;
      if ((v83 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v70 != 255)
  {
    v128 = v68;
    v129 = v69;
    v130 = v70;
    v84 = v98;
    if (v98 != 255)
    {
      v125 = v99;
      v126 = v46;
      v127 = v98 & 1;
      v85 = v68;
      v86 = v69;
      sub_1D6189668(v68, v69, v70);
      sub_1D6189668(v99, v46, v98);
      sub_1D6189668(v85, v86, v70);
      v87 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v128, &v125);
      sub_1D5D2F2C4(v125, v126, v127);
      sub_1D5D2F2C4(v128, v129, v130);
      sub_1D60107F0(v85, v86, v70);
      return (v87 & 1) != 0;
    }

    v92 = v70;
    v88 = v68;
    v93 = v69;
    sub_1D6189668(v68, v69, v70);
    v90 = v99;
    sub_1D6189668(v99, v46, 255);
    sub_1D6189668(v88, v93, v70);
    sub_1D5D2F2C4(v88, v93, v70 & 1);
    v91 = v93;
    goto LABEL_108;
  }

  v88 = v68;
  v89 = v69;
  sub_1D6189668(v68, v69, 255);
  v84 = v98;
  if (v98 != 255)
  {
    v90 = v99;
    sub_1D6189668(v99, v46, v98);
    v91 = v89;
    v92 = -1;
LABEL_108:
    sub_1D60107F0(v88, v91, v92);
    v39 = v90;
    v40 = v46;
    v41 = v84;
    goto LABEL_32;
  }

  sub_1D6189668(v99, v46, 255);
  sub_1D60107F0(v88, v89, 255);
  return 1;
}

unint64_t sub_1D618A46C(uint64_t a1)
{
  result = sub_1D618A494();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D618A494()
{
  result = qword_1EC8847F0;
  if (!qword_1EC8847F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8847F0);
  }

  return result;
}

unint64_t sub_1D618A4E8(void *a1)
{
  a1[1] = sub_1D618A520();
  a1[2] = sub_1D618A574();
  result = sub_1D618A5C8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D618A520()
{
  result = qword_1EDF0DE88;
  if (!qword_1EDF0DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DE88);
  }

  return result;
}

unint64_t sub_1D618A574()
{
  result = qword_1EC8847F8;
  if (!qword_1EC8847F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8847F8);
  }

  return result;
}

unint64_t sub_1D618A5C8()
{
  result = qword_1EC884800;
  if (!qword_1EC884800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884800);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D618A648(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 97))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1D618A694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

uint64_t FeedRefreshTrigger.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D618A794()
{
  result = qword_1EC884808;
  if (!qword_1EC884808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884808);
  }

  return result;
}

uint64_t sub_1D618A8C4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *a3 = result | 0x1000000000000000;
  return result;
}

uint64_t sub_1D618A94C@<X0>(char a1@<W2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *a3 = result | 0x1000000000000000;
  return result;
}

BOOL sub_1D618A9C8(unint64_t *a1, char a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = 0;
  v8 = v5;
  v9 = v6 | 0x1000000000000000;
  LOBYTE(a3) = static FormatColor.== infix(_:_:)(&v9, &v8);

  return (a3 & 1) == 0;
}

unint64_t sub_1D618AA4C(uint64_t a1)
{
  result = sub_1D618AA74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D618AA74()
{
  result = qword_1EC884810;
  if (!qword_1EC884810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884810);
  }

  return result;
}

unint64_t sub_1D618AAC8(uint64_t a1)
{
  result = sub_1D618AAF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D618AAF0()
{
  result = qword_1EC884818;
  if (!qword_1EC884818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884818);
  }

  return result;
}

unint64_t sub_1D618AB44(uint64_t a1)
{
  result = sub_1D618AB6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D618AB6C()
{
  result = qword_1EDF208C8;
  if (!qword_1EDF208C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF208C8);
  }

  return result;
}

uint64_t static FeedLocation.topOfFeed(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8, v9);
  v11 = &v18 - v10;
  type metadata accessor for FeedCursorTracker();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = swift_allocBox();
  v15 = v14;
  v16 = *(TupleTypeMetadata2 + 48);
  (*(*(a2 - 8) + 16))(v14, a1, a2);
  (*(a3 + 48))(a2, a3);
  result = FeedCursorTracker.__allocating_init(context:)(v11);
  *(v15 + v16) = result;
  *a4 = v13;
  return result;
}

uint64_t FeedLocation.serviceConfig.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = v5 >> 60;
  if ((v5 >> 60) <= 4)
  {
    if (v6 <= 1)
    {
      v16 = *(a1 + 16);
      if (!v6)
      {
        type metadata accessor for FeedCursorTracker();
      }

      v17 = swift_projectBox();
      v19 = *(v16 - 8);
      (*(v19 + 16))(a3, v17, v16);
      v13 = *(v19 + 56);
      v14 = a3;
      v15 = 0;
      goto LABEL_14;
    }

    if (v6 != 2)
    {
      if (v6 != 3)
      {
        MEMORY[0x1EEE9AC00](a1, a2);
        v8 = *(v7 + 16);
        type metadata accessor for FeedCursor();
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v10 = swift_projectBox();
        v11 = *(v8 - 8);
        (*(v11 + 16))(a3, v10 + *(TupleTypeMetadata + 48), v8);
        return (*(v11 + 56))(a3, 0, 1, v8);
      }

      goto LABEL_7;
    }

LABEL_9:
    v18 = *(*(a1 + 16) - 8);
    (*(v18 + 16))(a3, *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + *(**((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 256), *(a1 + 16));
    v13 = *(v18 + 56);
    v14 = a3;
    v15 = 0;
    goto LABEL_14;
  }

  if ((v6 - 6) >= 2)
  {
    if (v6 != 5)
    {
      return FeedLocation.serviceConfig.getter();
    }

    goto LABEL_9;
  }

LABEL_7:
  v13 = *(*(*(a1 + 16) - 8) + 56);
  v14 = a3;
  v15 = 1;
LABEL_14:

  return v13(v14, v15, 1);
}

uint64_t static FeedLocation.container(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 & 0x7FFFFFFFFFFFFFFFLL;
  if (a1 < 0)
  {
    v4 = 0x7000000000000000;
  }

  else
  {
    v4 = 0x2000000000000000;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *a2 = v4 | v5;
}

BOOL static FeedLocation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v5 = &v63[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v6, v7);
  v14 = &v63[-1] - v13;
  v15 = *v8;
  v16 = *v9;
  v17 = *v8 >> 60;
  if (v17 > 3)
  {
    if (v17 <= 5)
    {
      if (v17 == 4)
      {
        MEMORY[0x1EEE9AC00](v8, v9);
        strcpy(&v62 - 48, "cursor serviceConfig strategy trigger ");
        v26 = v25;
        v63[0] = type metadata accessor for FeedCursor();
        v63[1] = v26;
        v63[2] = &type metadata for FeedRefreshStrategy;
        v63[3] = &type metadata for FeedRefreshTrigger;
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v28 = swift_projectBox();
        if (v16 >> 60 == 4)
        {
          v29 = *(TupleTypeMetadata + 64);
          v30 = *(v28 + v29);
          v31 = *(TupleTypeMetadata + 80);
          v32 = *(v28 + v31);
          v33 = *v28;
          v34 = swift_projectBox();
          v35 = *v34;
          v36 = *(v34 + v29);
          v37 = *(v34 + v31);
          type metadata accessor for FeedCursor();

          if (static FeedCursor.== infix(_:_:)(v33, v35))
          {
            v38 = sub_1D6DE4138(v30, v36);

            if (v38)
            {
              return (v32 ^ v37 ^ 1) & 1;
            }
          }

          else
          {
          }
        }
      }

      else if (v16 >> 60 == 5)
      {
        v57 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v58 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        type metadata accessor for FeedCursor();
        v20 = static FeedCursor.== infix(_:_:)(v57, v58);
        return v20 & 1;
      }
    }

    else if (v17 == 6)
    {
      if (v16 >> 60 == 6)
      {
        v39 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v40 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        type metadata accessor for FeedCursorReference();
        v20 = static FeedCursorReference.== infix(_:_:)(v39, v40);
        return v20 & 1;
      }
    }

    else if (v17 == 7)
    {
      if (v16 >> 60 == 7)
      {
        v18 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v19 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        type metadata accessor for FeedDeferredCursor();
        v20 = static FeedDeferredCursor.== infix(_:_:)(v18, v19);
        return v20 & 1;
      }
    }

    else if (v16 >> 60 == 8)
    {
      v56 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v63[0] = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v64 = v56;
      return static FeedLocation.== infix(_:_:)(v63, &v64, v12) & 1;
    }

    return 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if (v16 >> 60 != 2)
      {
        return 0;
      }

      v22 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      type metadata accessor for FeedCursor();

      v24 = static FeedCursor.== infix(_:_:)(v22, v23);
    }

    else
    {
      if (v16 >> 60 != 3)
      {
        return 0;
      }

      v53 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v54 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      type metadata accessor for FeedCursorReference();

      v24 = static FeedCursorReference.== infix(_:_:)(v53, v54);
    }

    v55 = v24;

    return v55 & 1;
  }

  if (!v17)
  {
    return !(v16 >> 60);
  }

  if (v16 >> 60 != 1)
  {
    return 0;
  }

  v41 = v10;
  v42 = v11;
  v43 = swift_projectBox();
  v44 = swift_projectBox();
  v45 = *(v3 + 16);
  v45(v14, v43, v41);
  v45(v5, v44, v41);
  v46 = *(v42 + 80);
  v47 = v46(v41, v42);
  v49 = v48;
  v62 = v41;
  if (v47 == v46(v41, v42) && v49 == v50)
  {
    v52 = 1;
  }

  else
  {
    v52 = sub_1D72646CC();
  }

  v59 = *(v3 + 8);
  v60 = v5;
  v61 = v62;
  v59(v60, v62);
  v59(v14, v61);
  return v52 & 1;
}

uint64_t FeedLocation.feedMode.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D618B838(*v2, *(a1 + 16), *(a1 + 24), v11);
  sub_1D618C048(v11, v8);
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    FeedServiceContextType.feedMode.getter(v4, v5, &v7);
    sub_1D618C168(v11);
    LOBYTE(v4) = v7;
    result = __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_1D618C168(v11);
    result = sub_1D618C168(v8);
  }

  *a2 = v4;
  return result;
}

void sub_1D618B838(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D726393C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1 >> 60;
  if ((a1 >> 60) > 4)
  {
    if ((v20 - 6) >= 2)
    {
      if (v20 == 5)
      {
        v28 = *(a3 + 48);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        *(a4 + 24) = swift_getAssociatedTypeWitness();
        *(a4 + 32) = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_1(a4);
        v28(a2, a3);
        return;
      }

      v21 = v16;
      v29 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v22 = type metadata accessor for FeedLocation();
      FeedLocation.serviceConfig.getter(v22, v23, v12);
      if ((*(v13 + 48))(v12, 1, a2) != 1)
      {
        v28 = *(a3 + 48);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        *(a4 + 24) = swift_getAssociatedTypeWitness();
        *(a4 + 32) = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_1(a4);
        v28(a2, a3);
        (*(v13 + 8))(v12, a2);
        return;
      }

      (*(v9 + 8))(v12, v21);
    }

    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  if (v20 <= 1)
  {
    if (!v20)
    {
      type metadata accessor for FeedCursorTracker();
    }

    v26 = swift_projectBox();
    (*(v13 + 16))(v19, v26, a2);
    goto LABEL_20;
  }

  if (v20 == 2)
  {
    v28 = *(a3 + 48);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    *(a4 + 24) = swift_getAssociatedTypeWitness();
    *(a4 + 32) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a4);

    v28(a2, a3);
    goto LABEL_13;
  }

  if (v20 != 3)
  {
    MEMORY[0x1EEE9AC00](v16, v17);
    strcpy(&v27 - 48, "cursor serviceConfig strategy trigger ");
    v29 = type metadata accessor for FeedCursor();
    v30 = a2;
    v31 = &type metadata for FeedRefreshStrategy;
    v32 = &type metadata for FeedRefreshTrigger;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v25 = swift_projectBox();
    (*(v13 + 16))(v19, v25 + *(TupleTypeMetadata + 48), a2);
LABEL_20:
    v28 = *(a3 + 48);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    *(a4 + 24) = swift_getAssociatedTypeWitness();
    *(a4 + 32) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a4);
    v28(a2, a3);
    (*(v13 + 8))(v19, a2);
    return;
  }

  FeedCursorReference.serviceContext.getter(a4);
LABEL_13:
}