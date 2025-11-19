uint64_t sub_1D5D0D0E8()
{
  v53 = v0;
  v1 = *(v0 + 1520);
  v49 = *(v0 + 1504);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 968);
  v4 = *(v0 + 960);
  v5 = *(v0 + 944);
  v6 = *(v0 + 912);
  v46 = v6;
  v47 = *(v0 + 904);
  v48 = *(v0 + 896);
  v7 = *(*(v0 + 952) + 16);
  v7(v4, v3, v5);

  sub_1D5D0D6DC(v4, v2, v6);
  *(v0 + 288) = v5;
  *(v0 + 296) = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 264));
  v7(boxed_opaque_existential_1, v3, v5);
  v9 = sub_1D5D0D80C();
  v11 = v10;
  v12 = (CACurrentMediaTime() - v1) * 1000.0;
  sub_1D5D0D85C(0, &qword_1EDF02300, &type metadata for FeedJournalGroup, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7273AE0;
  sub_1D5B68374(v0 + 264, v0 + 304);
  v14 = sub_1D725AA4C();
  v16 = v15;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  sub_1D5B68374(v0 + 304, v0 + 144);
  *(v0 + 184) = 0x3FF0000000000000;
  *(v0 + 208) = 1;
  sub_1D5B63F14((v0 + 304), v0 + 344);
  v17 = swift_allocObject();
  sub_1D5B63F14((v0 + 344), v17 + 16);
  *(v0 + 16) = v14;
  *(v0 + 24) = v16;
  *(v0 + 32) = v9;
  *(v0 + 40) = v11;
  *(v0 + 88) = MEMORY[0x1E69E7CC0];
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 216) = 0;
  *(v0 + 240) = v12;
  *(v0 + 248) = sub_1D617CD44;
  *(v0 + 256) = v17;
  *(v13 + 272) = v17;
  v18 = *(v0 + 224);
  *(v13 + 224) = *(v0 + 208);
  *(v13 + 240) = v18;
  *(v13 + 256) = *(v0 + 240);
  v19 = *(v0 + 160);
  *(v13 + 160) = *(v0 + 144);
  *(v13 + 176) = v19;
  v20 = *(v0 + 192);
  *(v13 + 192) = *(v0 + 176);
  *(v13 + 208) = v20;
  v21 = *(v0 + 96);
  *(v13 + 96) = *(v0 + 80);
  *(v13 + 112) = v21;
  v22 = *(v0 + 128);
  *(v13 + 128) = *(v0 + 112);
  *(v13 + 144) = v22;
  v23 = *(v0 + 32);
  *(v13 + 32) = *(v0 + 16);
  *(v13 + 48) = v23;
  v24 = *(v0 + 64);
  *(v13 + 64) = *(v0 + 48);
  *(v13 + 80) = v24;
  __swift_destroy_boxed_opaque_existential_1(v0 + 264);
  v50 = v13;
  v51 = 1;
  v52 = v12;
  v45 = sub_1D5D0D8AC(v46, &v50);
  v25 = v51;

  sub_1D5C08648(v25);
  (*(v47 + 8))(v46, v48);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D7274590;
  v27 = sub_1D5C89A48();
  v28 = MEMORY[0x1E69E6530];
  v29 = MEMORY[0x1E69E65A8];
  *(v26 + 56) = MEMORY[0x1E69E6530];
  *(v26 + 64) = v29;
  *(v26 + 32) = v27;
  *(v26 + 96) = v28;
  *(v26 + 104) = v29;
  *(v26 + 72) = v49;
  sub_1D725C4CC();
  sub_1D725C73C();

  v31 = *(v0 + 712);
  if (v31)
  {
    v32 = *(v0 + 1512);
    v33 = *(v0 + 968);
    v34 = *(v0 + 952);
    v35 = *(v0 + 944);
    v36 = *(v0 + 832);
    v37 = *(v0 + 704);
    v38 = MEMORY[0x1E69E6158];
    *(v26 + 136) = MEMORY[0x1E69E6158];
    *(v26 + 144) = v32;
    *(v26 + 112) = v37;
    *(v26 + 120) = v31;
    v39 = sub_1D72644BC();
    *(v26 + 176) = v38;
    *(v26 + 184) = v32;
    *(v26 + 152) = v39;
    *(v26 + 160) = v40;
    sub_1D7262EDC();
    sub_1D725C30C();

    sub_1D5D0DDD4(v35, v35);
    swift_allocObject();
    v41 = sub_1D726270C();
    (*(v34 + 32))(v42, v33, v35);
    v43 = sub_1D5BFCB60(v41);

    sub_1D5D0DE3C(v45, v43, v36);

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5D0D6A4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D0D6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D725890C();
  v6 = type metadata accessor for FeedDeferredCursorGroup();
  v7 = *(v6 + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a3 + v7, a1, AssociatedTypeWitness);
  *(a3 + *(v6 + 40)) = a2;
  return result;
}

uint64_t sub_1D5D0D80C()
{
  sub_1D725C4CC();
  sub_1D725C73C();

  if (v2)
  {
    return v1;
  }

  __break(1u);
  return result;
}

void sub_1D5D0D85C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D5D0D8AC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = *v3;
  v46 = a1;
  v47 = v6;
  v7 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v48 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725891C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v38 - v17;
  v19 = a2[1];
  v43 = *a2;
  v42 = v19;
  v20 = a2[2];
  *&v51 = *&v3[qword_1EDFFC658];
  v38[1] = *(v5 + 88);
  type metadata accessor for FeedDatabaseGroup();
  sub_1D72627FC();

  swift_getWitnessTable();
  sub_1D7262CDC();
  v51 = v53;
  v52 = v54;
  sub_1D7263AFC();
  swift_getWitnessTable();
  v21 = sub_1D726281C();
  v22 = *(v3 + 3);
  v44 = *(v3 + 2);
  v45 = v21;
  v40 = v22;
  v23 = *(v11 + 16);
  v23(v18, &v3[qword_1EDFFC670], v10);
  v23(v14, &v3[qword_1EDFFC688], v10);
  v50 = v3[qword_1EDFFC640];
  v39 = *&v3[qword_1EDFFC668];
  v24 = type metadata accessor for FeedDeferredCursorGroup();
  sub_1D72644CC();
  v25 = *(v24 - 8);
  swift_allocObject();

  v26 = sub_1D726270C();
  (*(v25 + 16))(v27, v46, v24);
  sub_1D5BFCB60(v26);
  v46 = sub_1D726274C();

  v28 = *&v3[qword_1EDFFC638];
  sub_1D5BE6814(&v3[qword_1EDFFC680], v48);
  v29 = *&v3[qword_1EDFFC650];
  v30 = *&v3[qword_1EDFFC648];
  v31 = *&v3[qword_1EDFFC678 + 8];
  v32 = *&v3[qword_1EDFFC678 + 16];
  *&v51 = *&v3[qword_1EDFFC678];
  *(&v51 + 1) = v31;
  *&v52 = v32;
  v49[0] = v43;
  v49[1] = v42;
  v49[2] = v20;

  sub_1D5C0C3EC(&v51, v49, &v53);

  v51 = v53;
  *&v52 = v54;
  v33 = &v3[qword_1EDF14B30];
  v35 = *&v3[qword_1EDF14B30];
  v34 = *(v33 + 1);
  swift_allocObject();
  v36 = sub_1D5C891B4(v44, v40, v18, v41, &v50, v39, v45, v46, v28, v48, v29, v30, &v51, v35, v34);

  return v36;
}

void sub_1D5D0DDD4(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    sub_1D5E42B34();
  }

  else
  {

    sub_1D72644CC();
  }
}

unint64_t sub_1D5D0DE3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = FeedCursorContainer.init(deferredCursor:)(a1);
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1D5D0DE68()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1D61602FC;
  }

  else
  {
    v2 = sub_1D5D0DF98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5D0DF98()
{
  v18 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v0[25] = v2;
  v0[26] = v1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v7 = v0[21];
    v6 = v0[22];
    v8 = v0[15];
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = v2;
    swift_retain_n();

    v10 = sub_1D5D0E228(v9 | 0x2000000000000000);

    v17 = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v11 = sub_1D5D0EA94(v10);
    v12 = *(v6 + 32);

    v12(&v17, v11, v7, v6);

    v14 = v0[13];
    v13 = v0[14];
    v15 = v0[12];
    sub_1D5D10534();

    (*(v14 + 8))(v13, v15);

    v16 = v0[1];

    return v16(v10);
  }

  else
  {
    v0[5] = v0[15];

    v3 = swift_task_alloc();
    v0[27] = v3;
    *v3 = v0;
    v3[1] = sub_1D616003C;
    v4 = *(v0 + 16);

    return sub_1D6160F2C(v0 + 5, v2, v1, v4);
  }
}

uint64_t sub_1D5D0E228(unint64_t a1)
{
  v2 = v1;
  v69 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedTypeWitness();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v60 = &v59 - v7;
  v68 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v68, v8);
  v67 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v59 - v13;
  v15 = swift_checkMetadataState();
  v64 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v59 - v17;
  v19 = sub_1D726393C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v59 - v22;
  v63 = v2;
  if (*(v2 + 64) != 1)
  {
    v26 = v69;
    goto LABEL_7;
  }

  v24 = sub_1D5D0EA94(v69);
  FeedCursorContainer.serviceConfig.getter(v24, AssociatedTypeWitness, v23);
  v25 = *(AssociatedTypeWitness - 8);
  if ((*(v25 + 48))(v23, 1, AssociatedTypeWitness) == 1)
  {
    (*(v20 + 8))(v23, v19);
    v26 = v69;
  }

  else
  {
    (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v25 + 8))(v23, AssociatedTypeWitness);
    (*(v10 + 40))(v15, v10);
    (*(v64 + 8))(v18, v15);
    v30 = v66;
    v31 = swift_getAssociatedConformanceWitness();
    (*(v31 + 56))(&v70, v30, v31);
    (*(v65 + 8))(v14, v30);
    if (v70 > 1u)
    {
      v26 = v69;
      if (v70 == 2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v26 = v69;
      if (!v70)
      {
        goto LABEL_11;
      }
    }
  }

  v27 = v67;
  FeedServiceFetchResult.feedContext.getter(v26, v67);
  v28 = *(v27 + *(v68 + 24));
  sub_1D5BE23B0(v27);
  if (v28 == 1)
  {
LABEL_7:

    return v26;
  }

LABEL_11:
  v32 = v26 >> 61;
  if ((v26 >> 61) > 1)
  {
    if (v32 == 2)
    {
      type metadata accessor for FeedCursorContainer();
      v46 = v62;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v48 = swift_projectBox();
      v49 = *(v48 + *(TupleTypeMetadata2 + 48));
      v51 = v60;
      v50 = v61;
      v52 = *(v61 + 16);
      v52(v60, v48, v46);
      v53 = swift_allocObject();
      sub_1D5D0DDD4(v46, v46);
      swift_allocObject();

      v54 = sub_1D726270C();
      v52(v55, v51, v46);
      sub_1D5BFCB60(v54);
      v56 = sub_1D5D0EF48();

      (*(v50 + 8))(v51, v46);
      *(v53 + 16) = v56;
      *(v53 + 24) = v49;
      return v53 | 0x6000000000000000;
    }

    if (v32 == 3)
    {
      v33 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v34 = swift_allocObject();

      *(v34 + 16) = sub_1D5D0EF48();
      *(v34 + 24) = v33;
      return v34 | 0x6000000000000000;
    }

    goto LABEL_7;
  }

  if (v32)
  {
    v57 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v58 = swift_allocObject();

    *(v58 + 16) = sub_1D5D0EF48();
    *(v58 + 24) = v57;
    return v58 | 0x2000000000000000;
  }

  else
  {
    type metadata accessor for FeedCursorContainer();
    v35 = v62;
    v36 = swift_getTupleTypeMetadata2();
    v37 = swift_projectBox();
    v38 = *(v37 + *(v36 + 48));
    v40 = v60;
    v39 = v61;
    v41 = *(v61 + 16);
    v41(v60, v37, v35);
    v42 = swift_allocObject();
    sub_1D5D0DDD4(v35, v35);
    swift_allocObject();

    v43 = sub_1D726270C();
    v41(v44, v40, v35);
    sub_1D5BFCB60(v43);
    v45 = sub_1D5D0EF48();

    (*(v39 + 8))(v40, v35);
    *(v42 + 16) = v45;
    *(v42 + 24) = v38;
    return v42 | 0x2000000000000000;
  }
}

uint64_t sub_1D5D0EA94(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v1)
    {
      v3 = (a1 & 0x1FFFFFFFFFFFFFFFLL) + 24;
      return *v3;
    }

    goto LABEL_7;
  }

  if (v1 == 2)
  {
LABEL_7:
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    type metadata accessor for FeedCursorContainer();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v3 = swift_projectBox() + *(TupleTypeMetadata2 + 48);
    return *v3;
  }

  v2 = v1 == 3;
  v3 = (a1 & 0x1FFFFFFFFFFFFFFFLL) + 16;
  if (v2)
  {
    v3 = (a1 & 0x1FFFFFFFFFFFFFFFLL) + 24;
  }

  return *v3;
}

uint64_t FeedCursorContainer.serviceConfig.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    v5 = *(a2 - 8);
    v6 = 1;
  }

  else
  {
    v9 = *(a2 - 8);
    (*(v9 + 16))(a3, a1 + *(*a1 + 256), a2);
    v5 = v9;
    v6 = 0;
  }

  v7 = *(v5 + 56);

  return v7(a3, v6, 1, a2);
}

uint64_t FeedServiceFetchResult.feedContext.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v2)
    {
      v4 = ((a1 & 0x1FFFFFFFFFFFFFFFLL) + 24);
      goto LABEL_11;
    }

    v5 = a2;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    type metadata accessor for FeedCursorContainer();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v7 = swift_projectBox();
    a2 = v5;
LABEL_9:
    v4 = (v7 + *(TupleTypeMetadata2 + 48));
    goto LABEL_11;
  }

  if (v2 == 2)
  {
    v8 = a2;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    type metadata accessor for FeedCursorContainer();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v7 = swift_projectBox();
    a2 = v8;
    goto LABEL_9;
  }

  v3 = v2 == 3;
  v4 = ((a1 & 0x1FFFFFFFFFFFFFFFLL) + 16);
  if (v3)
  {
    v4 = ((a1 & 0x1FFFFFFFFFFFFFFFLL) + 24);
  }

LABEL_11:
  v9 = *v4;

  return FeedCursorContainer.feedContext.getter(v9, a2);
}

uint64_t sub_1D5D0EF48()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v1 = sub_1D726275C();
  sub_1D72627FC();
  swift_getWitnessTable();
  sub_1D72624CC();
  return v1;
}

uint64_t sub_1D5D0F0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1D726393C();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v42 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v35 - v17;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v35 - v22;
  v44 = v11;
  v24 = *(v11 + 16);
  v24(&v35 - v22, a1, v6, v21);
  v37 = sub_1D72627FC();
  v43 = a2;
  sub_1D72627BC();
  v39 = v24;
  (v24)(v18, a1, v6);
  sub_1D5B49474(0, qword_1EDF37788);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v45, v47);
    __swift_project_boxed_opaque_existential_1(v47, v47[3]);
    DynamicType = swift_getDynamicType();
    v26 = MEMORY[0x1EEE9AC00](DynamicType, v47[4]);
    (*(v27 + 8))(v26);
    if (swift_dynamicCast())
    {
      v28 = v44;
      (*(v44 + 56))(v10, 0, 1, v6);
      v29 = v42;
      (*(v28 + 32))(v42, v10, v6);
      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D7273AE0;
      swift_getAssociatedConformanceWitness();
      v31 = sub_1D725AA4C();
      v33 = v32;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 64) = sub_1D5B7E2C0();
      *(v30 + 32) = v31;
      *(v30 + 40) = v33;
      sub_1D7262EDC();
      sub_1D725C30C();

      v39(v23, v29, v6);
      sub_1D72627BC();
      (*(v28 + 8))(v29, v6);
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v47);
      (*(v44 + 56))(v10, 1, 1, v6);
      return (*(v35 + 8))(v10, v36);
    }
  }

  else
  {
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    return sub_1D617D2E4(v45, &qword_1EC884708, qword_1EDF37788, &protocol descriptor for FeedGroupAdInsertable);
  }
}

uint64_t objectdestroy_16Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_16Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_16Tm_1(void (*a1)(void))
{
  a1(*(v1 + 80));

  return swift_deallocObject();
}

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_16Tm_2()
{
  v1 = sub_1D72585BC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 18) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_16Tm_3()
{
  v1 = type metadata accessor for DebugFormatUploadPrivateEntry(0);
  v2 = *(*(v1 - 8) + 80);

  v3 = v0 + ((v2 + 24) & ~v2);

  v4 = v3 + *(v1 + 20);
  type metadata accessor for FormatFile();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v5 = type metadata accessor for FormatContent(0);
      v6 = *(v5 + 20);
      v7 = sub_1D725891C();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);

      v8 = *(v5 + 44);
      v9 = sub_1D72608BC();
      v10 = *(v9 - 8);
      if (!(*(v10 + 48))(v4 + v8, 1, v9))
      {
        (*(v10 + 8))(v4 + v8, v9);
      }

      goto LABEL_7;
    case 1u:

      if (*(v4 + 106) != 255)
      {
        v18 = *(v4 + 104) | (*(v4 + 106) << 16);
        sub_1D60CF684(*(v4 + 96), v18, SBYTE2(v18));
      }

      break;
    case 2u:

      if (*(v4 + 72) >= 3uLL)
      {
      }

      goto LABEL_34;
    case 3u:

      if (*(v4 + 56) >= 0x10uLL)
      {
      }

      goto LABEL_34;
    case 4u:

      goto LABEL_34;
    case 5u:

      if (*(v4 + 168) >= 3uLL)
      {
      }

      v29 = type metadata accessor for FormatPackage();
      v19 = v4 + v29[23];

      v28 = type metadata accessor for FormatCompilerOptions(0);
      v20 = v19 + *(v28 + 24);
      if (*(v20 + 8) != 1)
      {
      }

      v21 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
      v22 = sub_1D725B76C();
      v30 = *(v22 - 8);
      v31 = *(v30 + 48);
      if (!v31(v20 + v21, 1, v22))
      {
        (*(v30 + 8))(v20 + v21, v22);
      }

      v23 = *(v28 + 28);
      if (!v31(v19 + v23, 1, v22))
      {
        (*(v30 + 8))(v19 + v23, v22);
      }

      v24 = v29[24];
      v25 = sub_1D725BD1C();
      (*(*(v25 - 8) + 8))(v4 + v24, v25);
      v26 = v29[25];
      if (!v31(v4 + v26, 1, v22))
      {
        (*(v30 + 8))(v4 + v26, v22);
      }

      goto LABEL_34;
    case 6u:

      goto LABEL_34;
    case 7u:

      break;
    case 8u:

      goto LABEL_34;
    case 9u:

      goto LABEL_34;
    case 0xAu:

      sub_1D60CF6F4(*(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80));
      break;
    case 0xBu:

      v11 = v4 + *(type metadata accessor for FormatBindingContent() + 28);

      v12 = type metadata accessor for FormatContent(0);
      v13 = *(v12 + 20);
      v14 = sub_1D725891C();
      (*(*(v14 - 8) + 8))(v11 + v13, v14);

      v15 = *(v12 + 44);
      v16 = sub_1D72608BC();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v11 + v15, 1, v16))
      {
        (*(v17 + 8))(v11 + v15, v16);
      }

LABEL_7:

      goto LABEL_34;
    case 0xCu:

LABEL_34:

      break;
    default:
      break;
  }

  sub_1D5DF6958(*(v3 + *(v1 + 24)), *(v3 + *(v1 + 24) + 8), *(v3 + *(v1 + 24) + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5D10198(uint64_t a1)
{
  sub_1D725A76C();
  swift_beginAccess();
  v3 = *(v1 + 56);
  v4 = sub_1D5BFB900(a1);
  v6 = v5;

  LOBYTE(v4) = sub_1D5BE240C(v4, v6, v3);

  if ((v4 & 1) == 0)
  {
    sub_1D5C384A0();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D7273AE0;
    v8 = sub_1D5BFB900(a1);
    v10 = v9;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D5B7E2C0();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;

    sub_1D7262EDC();
    sub_1D725C30C();

    v11 = sub_1D5BFB900(a1);
    v13 = v12;
    swift_beginAccess();

    sub_1D5B860D0(&v23, v11, v13);
    swift_endAccess();
  }

  v14 = sub_1D5BFB900(a1);
  v16 = v15;
  type metadata accessor for FeedCursorStore.WeakCursorContainer();
  swift_allocObject();

  v22 = sub_1D6125CCC();
  v23 = v14;
  v24 = v16;
  swift_beginAccess();
  sub_1D7261E1C();
  sub_1D7261E4C();
  swift_endAccess();
  v17 = sub_1D5BFB900(a1);
  v19 = v18;
  swift_beginAccess();
  v23 = v17;
  v24 = v19;
  type metadata accessor for FeedCursorContainer();

  sub_1D7261E3C();

  swift_endAccess();
  if ((~v22 & 0xF000000000000007) != 0)
  {
    sub_1D5BD9F54(v22);
    v23 = sub_1D5BFB900(a1);
    v24 = v20;
    swift_beginAccess();
    sub_1D7261E1C();

    sub_1D7261E4C();
    swift_endAccess();
  }

  return sub_1D725A77C();
}

uint64_t sub_1D5D10534()
{
  v0 = sub_1D725C38C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725C34C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725C36C();
  sub_1D725C39C();
  v11 = sub_1D726314C();
  if (sub_1D72638EC())
  {

    sub_1D725C3CC();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1D725C33C();
    _os_signpost_emit_with_name_impl(&dword_1D5B42000, v10, v11, v14, "News.FeedService.EmitGroup", v12, v13, 2u);
    MEMORY[0x1DA6FD500](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D5D107A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1D6160024;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1D5D1077C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5D108E0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v25 = a3;
  v22 = *a2;
  v23 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = &v19 - v7;
  v20 = *(v22 + 96);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19 - v11;
  v13 = *a1;
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  FeedServiceFetchResult.serviceContext.getter(v13, v14, AssociatedConformanceWitness, v8);
  v16 = v23;
  sub_1D5D10F2C(v12);
  if (v16)
  {

    (*(v5 + 8))(v8, AssociatedTypeWitness);
  }

  else
  {
    (*(v5 + 8))(v8, AssociatedTypeWitness);
    v17 = v20;
    (*(*(v22 + 120) + 72))(v13, v20);
    (*(v21 + 8))(v12, v17);
  }

  *v25 = v13;
}

uint64_t FeedServiceFetchResult.serviceContext.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v7)
    {
      v9 = ((a1 & 0x1FFFFFFFFFFFFFFFLL) + 24);
      goto LABEL_9;
    }

LABEL_7:
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    type metadata accessor for FeedCursorContainer();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v9 = (swift_projectBox() + *(TupleTypeMetadata2 + 48));
    goto LABEL_9;
  }

  if (v7 == 2)
  {
    goto LABEL_7;
  }

  v8 = v7 == 3;
  v9 = ((a1 & 0x1FFFFFFFFFFFFFFFLL) + 16);
  if (v8)
  {
    v9 = ((a1 & 0x1FFFFFFFFFFFFFFFLL) + 24);
  }

LABEL_9:
  v11 = *v9;

  FeedCursorContainer.serviceContext.getter(v11, a2, a3, a4);
}

uint64_t FeedCursorContainer.serviceContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    return (*(a3 + 48))(a2, a3);
  }

  v5 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + qword_1EDFFC638);
  v6 = *(*v5 + 96);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 16);

  return v9(a4, v5 + v6, AssociatedTypeWitness);
}

uint64_t sub_1D5D10F2C@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = type metadata accessor for FeedServiceOptions(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 104);
  v9 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (FeedServiceContextType.canWriteToDatabase()())
  {
    (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v12 = v7[*(v4 + 28)];
    sub_1D5B89A08(v7);
    LOBYTE(v17) = v12;
    return sub_1D5B98350(&v17, v16);
  }

  else
  {
    v17 = v9;
    v18 = *(v3 + 88);
    v19 = v8;
    v20 = *(v3 + 112);
    type metadata accessor for FeedManager.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }
}

uint64_t FeedDatabase.save(result:)(unint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D5B81F5C();
  v5 = *(v3 + 96);
  v6 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_1D5D0EA94(a1);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = *(v7 + 32);
    v9 = v8 > 6;
    v10 = (1 << v8) & 0x63;
    if (!v9 && v10 != 0)
    {
      v12 = v7;
      v13 = sub_1D5D0EA94(a1);

      sub_1D6825C10(v4, v13);

      v14 = swift_allocObject();
      swift_weakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v6;
      *(v15 + 24) = *(v3 + 88);
      *(v15 + 32) = v5;
      *(v15 + 40) = *(v3 + 104);
      *(v15 + 48) = *(v3 + 112);
      *(v15 + 56) = *(v3 + 120);
      *(v15 + 72) = *(v3 + 136);
      *(v15 + 80) = v14;
      *(v15 + 88) = a1;
      *(v15 + 96) = v4;
      *(v15 + 104) = v12;

      sub_1D6D114D8(sub_1D683699C, v15);
    }
  }
}

uint64_t sub_1D5D113BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D113F4()
{

  return swift_deallocObject();
}

uint64_t FeedDeferredCursor.__deallocating_deinit()
{
  FeedDeferredCursor.deinit();

  return swift_deallocClassInstance();
}

uint64_t FeedDeferredCursor.deinit()
{

  v1 = qword_1EDFFC670;
  v2 = sub_1D725891C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_1EDFFC688, v2);

  sub_1D5BE23B0(v0 + qword_1EDFFC680);

  return v0;
}

uint64_t PuzzleStatsState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1D725891C();
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D11A68(0, &qword_1EDF03A78, MEMORY[0x1E69E6F48]);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for PuzzleStatsState();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5D11ACC();
  v29 = v10;
  v15 = v30;
  sub_1D7264B0C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = a1;
  v17 = v27;
  v18 = v28;
  v30 = v3;
  LOBYTE(v32) = 0;
  *v14 = sub_1D72642BC();
  v14[1] = v19;
  sub_1D5B6A734();
  v31 = 1;
  sub_1D5D11C68(&qword_1EDF05760, sub_1D5D11CE0);
  sub_1D726431C();
  v14[2] = v32;
  sub_1D5B6DA30();
  v31 = 2;
  sub_1D5D12A84();
  v24 = 0;
  sub_1D726431C();
  v14[3] = v32;
  LOBYTE(v32) = 3;
  sub_1D5CE4528(&qword_1EDF45B08);
  v23 = v6;
  v20 = v30;
  sub_1D726431C();
  (*(v17 + 8))(v29, v18);
  (*(v25 + 32))(v14 + *(v11 + 28), v23, v20);
  sub_1D5D12B68(v14, v26);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_1D5D12BCC(v14);
}

void sub_1D5D11A68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5D11ACC();
    v7 = a3(a1, &type metadata for PuzzleStatsState.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5D11ACC()
{
  result = qword_1EDF11040;
  if (!qword_1EDF11040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11040);
  }

  return result;
}

unint64_t sub_1D5D11B24()
{
  result = qword_1EDF11030;
  if (!qword_1EDF11030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11030);
  }

  return result;
}

unint64_t sub_1D5D11B7C()
{
  result = qword_1EDF11038;
  if (!qword_1EDF11038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11038);
  }

  return result;
}

unint64_t sub_1D5D11BD0()
{
  v1 = 0x6D6E6F7269766E65;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x7461447472617473;
  }

  if (*v0)
  {
    v1 = 0x6974616C756D7563;
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

uint64_t sub_1D5D11C68(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B6A734();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5D11CE0()
{
  result = qword_1EDF11630;
  if (!qword_1EDF11630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11630);
  }

  return result;
}

uint64_t PuzzleTypeStats.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D5D12440(0, &qword_1EDF03A98, sub_1D5D124C0, &type metadata for PuzzleTypeStats.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  v11 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D5D124C0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v31 = a2;
  sub_1D5D125C4();
  LOBYTE(v33) = 0;
  sub_1D5D1262C();
  sub_1D726431C();
  v30 = v37[0];
  LOBYTE(v33) = 1;
  sub_1D726431C();
  v29 = v37[0];
  LOBYTE(v33) = 2;
  sub_1D726431C();
  v28 = v37[0];
  sub_1D5D127FC(0, &unk_1EDF055A0);
  LOBYTE(v33) = 3;
  sub_1D5D12850(&qword_1EDF05590);
  sub_1D726431C();
  v27 = v37[0];
  sub_1D5D127FC(0, &qword_1EDF055F0);
  LOBYTE(v33) = 4;
  sub_1D5D128D4(&unk_1EDF055D8);
  sub_1D726431C();
  v26 = v37[0];
  LOBYTE(v33) = 5;
  sub_1D726431C();
  v25 = v37[0];
  LOBYTE(v33) = 6;
  sub_1D726431C();
  v24 = v37[0];
  sub_1D5BC3F04(0, &qword_1EDF05060, type metadata accessor for PuzzleStreak, MEMORY[0x1E69E62F8]);
  v38 = 7;
  sub_1D5D12958(&qword_1EDF05050, &qword_1EDF11FC8);
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v12 = v39;
  v14 = v29;
  v13 = v30;
  *&v33 = v30;
  *(&v33 + 1) = v29;
  v15 = v28;
  v16 = v27;
  *&v34 = v28;
  *(&v34 + 1) = v27;
  v17 = v25;
  *&v35 = v26;
  *(&v35 + 1) = v25;
  v18 = v24;
  *&v36 = v24;
  *(&v36 + 1) = v39;
  v19 = v34;
  v20 = v31;
  *v31 = v33;
  v20[1] = v19;
  v21 = v36;
  v20[2] = v35;
  v20[3] = v21;
  sub_1D5D12A1C(&v33, v37);
  __swift_destroy_boxed_opaque_existential_1(v32);
  v37[0] = v13;
  v37[1] = v14;
  v37[2] = v15;
  v37[3] = v16;
  v37[4] = v26;
  v37[5] = v17;
  v37[6] = v18;
  v37[7] = v12;
  return sub_1D5D12A54(v37);
}

void sub_1D5D12440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D5D124C0()
{
  result = qword_1EDF11658;
  if (!qword_1EDF11658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11658);
  }

  return result;
}

unint64_t sub_1D5D12518()
{
  result = qword_1EDF11648;
  if (!qword_1EDF11648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11648);
  }

  return result;
}

unint64_t sub_1D5D12570()
{
  result = qword_1EDF11650;
  if (!qword_1EDF11650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11650);
  }

  return result;
}

void sub_1D5D125C4()
{
  if (!qword_1EDF055D0)
  {
    sub_1D5B81B04();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF055D0);
    }
  }
}

unint64_t sub_1D5D1262C()
{
  result = qword_1EDF055B0;
  if (!qword_1EDF055B0)
  {
    sub_1D5D125C4();
    sub_1D5CB5D1C(&qword_1EDF3C7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF055B0);
  }

  return result;
}

unint64_t sub_1D5D126D0()
{
  v1 = *v0;
  v2 = 0x4274636566726570;
  v3 = 0x5365676172657661;
  if (v1 != 6)
  {
    v3 = 0x736B6165727473;
  }

  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0x5374736568676968;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4264657472617473;
  if (v1 != 2)
  {
    v5 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1D5D127FC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D7261E1C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D5D12850(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5D127FC(255, &unk_1EDF055A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5D128D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5D127FC(255, &qword_1EDF055F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5D12958(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5BC3F04(255, &qword_1EDF05060, type metadata accessor for PuzzleStreak, MEMORY[0x1E69E62F8]);
    sub_1D5BC4174(a2, 255, type metadata accessor for PuzzleStreak);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5D12A84()
{
  result = qword_1EDF05800;
  if (!qword_1EDF05800)
  {
    sub_1D5B6DA30();
    sub_1D5CE4528(&qword_1EDF45B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05800);
  }

  return result;
}

uint64_t sub_1D5D12B20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5D12B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleStatsState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D12BCC(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleStatsState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5D12C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D725891C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5D12CE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D12D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D12DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D12E18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 520) = a4;
  *(v5 + 288) = a3;
  *(v5 + 296) = v4;
  *(v5 + 272) = a1;
  *(v5 + 280) = a2;
  type metadata accessor for PuzzleStatsProcessorContext();
  *(v5 + 304) = swift_task_alloc();
  v6 = sub_1D725876C();
  *(v5 + 312) = v6;
  *(v5 + 320) = *(v6 - 8);
  *(v5 + 328) = swift_task_alloc();
  v7 = sub_1D725878C();
  *(v5 + 336) = v7;
  *(v5 + 344) = *(v7 - 8);
  *(v5 + 352) = swift_task_alloc();
  sub_1D5B5B2A0();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  sub_1D5BC4580(0);
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  v8 = sub_1D725891C();
  *(v5 + 392) = v8;
  *(v5 + 400) = *(v8 - 8);
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  *(v5 + 432) = swift_task_alloc();
  *(v5 + 440) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5D1311C, v4, 0);
}

uint64_t type metadata accessor for PuzzleStatsProcessorContext()
{
  result = qword_1EDF0AEB0;
  if (!qword_1EDF0AEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5D130B0()
{
  result = sub_1D7258C2C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5D1311C()
{
  v122 = v0;
  v1 = *(v0 + 280);
  swift_getObjectType();
  v2 = [v1 identifier];
  v3 = sub_1D726207C();
  v5 = v4;

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v6 = sub_1D725C42C();
  __swift_project_value_buffer(v6, qword_1EDFFCFA8);

  v7 = sub_1D725C3FC();
  v8 = sub_1D7262EDC();

  v120 = v3;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v121[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1D5BC5100(v3, v5, v121);
    _os_log_impl(&dword_1D5B42000, v7, v8, "PuzzleStatsService: updating stats for puzzleType: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1DA6FD500](v10, -1, -1);
    MEMORY[0x1DA6FD500](v9, -1, -1);
  }

  v11 = *(v0 + 384);
  v12 = *(v0 + 296);
  v13 = v12[35];
  v14 = v12[36];
  __swift_project_boxed_opaque_existential_1(v12 + 32, v13);
  (*(v14 + 8))(v13, v14);
  v15 = type metadata accessor for PuzzleStatsState();
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v11, 1, v15);
  v18 = *(v0 + 384);
  if (v17 == 1)
  {
    sub_1D5D12CE8(*(v0 + 384), sub_1D5BC4580);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
  }

  else
  {
    v19 = *(v18 + 16);

    sub_1D5D12CE8(v18, type metadata accessor for PuzzleStatsState);
    if (*(v19 + 16) && (v20 = sub_1D5B69D90(v120, v5), (v21 & 1) != 0))
    {
      v22 = (*(v19 + 56) + (v20 << 6));
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[3];
      *(v0 + 176) = v22[2];
      *(v0 + 192) = v25;
      *(v0 + 144) = v23;
      *(v0 + 160) = v24;
      sub_1D5D12A1C(v0 + 144, v0 + 208);

      v26 = *(v0 + 160);
      *(v0 + 16) = *(v0 + 144);
      *(v0 + 32) = v26;
      v27 = *(v0 + 192);
      *(v0 + 48) = *(v0 + 176);
      *(v0 + 64) = v27;
    }

    else
    {

      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }
  }

  v28 = *(v0 + 376);
  v29 = v12[35];
  v30 = v12[36];
  __swift_project_boxed_opaque_existential_1(v12 + 32, v29);
  (*(v30 + 8))(v29, v30);
  if (v16(v28, 1, v15) == 1)
  {
    v31 = *(v0 + 392);
    v32 = *(v0 + 400);
    v33 = *(v0 + 368);
    sub_1D5D12CE8(*(v0 + 376), sub_1D5BC4580);
    v34 = *(v32 + 56);
    v34(v33, 1, 1, v31);
  }

  else
  {
    v35 = *(v0 + 376);
    v36 = *(v35 + 24);

    sub_1D5D12CE8(v35, type metadata accessor for PuzzleStatsState);
    if (*(v36 + 16) && (v37 = sub_1D5B69D90(v120, v5), (v38 & 1) != 0))
    {
      (*(*(v0 + 400) + 16))(*(v0 + 368), *(v36 + 56) + *(*(v0 + 400) + 72) * v37, *(v0 + 392));
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v41 = *(v0 + 392);
    v40 = *(v0 + 400);
    v42 = *(v0 + 368);

    v34 = *(v40 + 56);
    v34(v42, v39, 1, v41);
    if ((*(v40 + 48))(v42, 1, v41) != 1)
    {
      (*(*(v0 + 400) + 32))(*(v0 + 432), *(v0 + 368), *(v0 + 392));
      goto LABEL_21;
    }
  }

  v44 = *(v0 + 392);
  v43 = *(v0 + 400);
  v45 = *(v0 + 368);
  (*(v43 + 16))(*(v0 + 432), *(v0 + 288), v44);
  if ((*(v43 + 48))(v45, 1, v44) != 1)
  {
    sub_1D5D12CE8(*(v0 + 368), sub_1D5B5B2A0);
  }

LABEL_21:
  v118 = v34;
  *(v0 + 448) = v34;
  v46 = *(v0 + 432);
  v47 = *(v0 + 440);
  v49 = *(v0 + 416);
  v48 = *(v0 + 424);
  v51 = *(v0 + 392);
  v50 = *(v0 + 400);
  v52 = *(v0 + 288);
  v53 = *(v50 + 32);
  *(v0 + 456) = v53;
  *(v0 + 464) = (v50 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v53(v47, v46, v51);
  sub_1D5BC4174(&qword_1EDF3C3C0, 255, MEMORY[0x1E6969530]);
  v54 = sub_1D7261F6C();
  v55 = *(v50 + 16);
  if (v54)
  {
    v56 = v47;
  }

  else
  {
    v56 = v52;
  }

  v55(v48, v56, v51);
  v55(v49, v48, v51);

  v57 = sub_1D725C3FC();
  v58 = sub_1D7262EDC();

  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v0 + 416);
  v61 = *(v0 + 392);
  v62 = *(v0 + 400);
  v119 = v5;
  if (v59)
  {
    v64 = *(v0 + 344);
    v63 = *(v0 + 352);
    v114 = *(v0 + 336);
    v115 = *(v0 + 392);
    v117 = v58;
    v66 = *(v0 + 320);
    v65 = *(v0 + 328);
    v113 = *(v0 + 312);
    v67 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *&v121[0] = v116;
    *v67 = 136315394;
    *(v67 + 4) = sub_1D5BC5100(v120, v5, v121);
    *(v67 + 12) = 2080;
    sub_1D725877C();
    sub_1D725875C();
    v112 = sub_1D72588FC();
    v69 = v68;
    (*(v66 + 8))(v65, v113);
    (*(v64 + 8))(v63, v114);
    v70 = *(v62 + 8);
    v70(v60, v115);
    v71 = sub_1D5BC5100(v112, v69, v121);

    *(v67 + 14) = v71;
    _os_log_impl(&dword_1D5B42000, v57, v117, "PuzzleStatsService: Processing stats for puzzleType %s starting: [%s]", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v116, -1, -1);
    MEMORY[0x1DA6FD500](v67, -1, -1);
  }

  else
  {

    v70 = *(v62 + 8);
    v70(v60, v61);
  }

  *(v0 + 472) = v70;
  v72 = FCPuzzleTypeProviding.puzzleTypeTraits.getter();
  if (v72)
  {
    v73 = v72;
    v74 = *(v0 + 424);
    v75 = *(v0 + 288);
    v76 = *(v0 + 296);
    v77 = v76[17];
    v78 = v76[18];
    __swift_project_boxed_opaque_existential_1(v76 + 14, v77);
    v79 = v120;
    v80 = (*(v78 + 56))(v120, v119, v74, v77, v78);
    if (sub_1D5D13E60(v120, v119, v80, v75))
    {
      v81 = *(v0 + 288);

      sub_1D5D1AF74(v0 + 16);
      v82 = v76[17];
      v83 = v76[18];
      __swift_project_boxed_opaque_existential_1(v76 + 14, v82);
      v84 = (*(v83 + 56))(v120, v119, v81, v82, v83);
      *(v0 + 80) = 0u;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      *(v0 + 128) = 0u;
    }

    else
    {
      v84 = sub_1D5D146EC(v120, v119, v80);

      v91 = *(v0 + 32);
      *(v0 + 80) = *(v0 + 16);
      *(v0 + 96) = v91;
      v92 = *(v0 + 64);
      *(v0 + 112) = *(v0 + 48);
      *(v0 + 128) = v92;
    }

    *(v0 + 480) = v84;
    if (*(v0 + 520) == 1)
    {
      if (*(v0 + 80))
      {
        v93 = *(v0 + 96);
        v121[0] = *(v0 + 80);
        v121[1] = v93;
        v94 = *(v0 + 128);
        v121[2] = *(v0 + 112);
        v121[3] = v94;

        v95 = PuzzleTypeStats.debugDescription.getter();
        v97 = v96;
      }

      else
      {

        v97 = 0xE300000000000000;
        v95 = 7104878;
      }

      v98 = sub_1D725C3FC();
      v99 = sub_1D7262EDC();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v121[0] = v101;
        *v100 = 136315138;
        v102 = sub_1D5BC5100(v95, v97, v121);

        *(v100 + 4) = v102;
        _os_log_impl(&dword_1D5B42000, v98, v99, "PuzzleStatsService: using cumulative stats: %s", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v101);
        MEMORY[0x1DA6FD500](v101, -1, -1);
        MEMORY[0x1DA6FD500](v100, -1, -1);
      }

      else
      {
      }

      v79 = v120;
    }

    else
    {
    }

    v103 = sub_1D725C3FC();
    v104 = sub_1D7262EDC();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v121[0] = v106;
      *v105 = 134218242;
      *(v105 + 4) = *(v84 + 16);

      *(v105 + 12) = 2080;
      v107 = sub_1D5BC5100(v79, v119, v121);

      *(v105 + 14) = v107;
      _os_log_impl(&dword_1D5B42000, v103, v104, "PuzzleStatsService: processing %ld entries for puzzleType %s", v105, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v106);
      MEMORY[0x1DA6FD500](v106, -1, -1);
      MEMORY[0x1DA6FD500](v105, -1, -1);
    }

    else
    {
    }

    v108 = *(v0 + 392);
    v109 = *(v0 + 360);
    *(v0 + 488) = (*(v0 + 400) + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v118(v109, 1, 1, v108);
    v110 = swift_task_alloc();
    *(v0 + 496) = v110;
    *v110 = v0;
    v110[1] = sub_1D5D157C4;
    v111 = *(v0 + 520);

    return sub_1D5D14B40(v84, v73, v111);
  }

  else
  {
    v85 = *(v0 + 440);
    v86 = *(v0 + 424);
    v87 = *(v0 + 392);
    sub_1D5D1AF74(v0 + 16);

    sub_1D5E9E58C();
    swift_allocError();
    *v88 = xmmword_1D7279980;
    swift_willThrow();
    v70(v86, v87);
    v70(v85, v87);

    v89 = *(v0 + 8);

    return v89();
  }
}

uint64_t sub_1D5D13DCC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  v2 = sub_1D726203C();
  v3 = sub_1D725881C();
  v4 = [v1 sortedPuzzleIDsForPuzzleTypeID:v2 sinceLastPlayedDate:v3];

  v5 = sub_1D726267C();
  return v5;
}

uint64_t sub_1D5D13E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1D5BC4580(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v4[35];
  v15 = v4[36];
  __swift_project_boxed_opaque_existential_1(v4 + 32, v14);
  (*(v15 + 8))(v14, v15);
  v16 = type metadata accessor for PuzzleStatsState();
  if ((*(*(v16 - 8) + 48))(v13, 1, v16) == 1)
  {
    sub_1D5D12CE8(v13, sub_1D5BC4580);
    return 0;
  }

  v17 = *(v13 + 2);

  sub_1D5D12CE8(v13, type metadata accessor for PuzzleStatsState);
  if (!*(v17 + 16))
  {
    goto LABEL_15;
  }

  v18 = sub_1D5B69D90(a1, a2);
  if ((v19 & 1) == 0)
  {
    goto LABEL_15;
  }

  v84 = a4;
  v85 = a1;
  v88 = a2;
  v20 = *(*(v17 + 56) + (v18 << 6));

  v93[0] = MEMORY[0x1E69E7CC0];
  v21 = 1 << *(v20 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v20 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  if (v23)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v20 + 64 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      do
      {
LABEL_13:
        v23 &= v23 - 1;

        sub_1D5D55274(v27);
      }

      while (v23);
      continue;
    }
  }

  v89 = v5;
  v86 = v20;

  v29 = sub_1D5B86020(v93[0]);

  v87 = a3;
  v90 = *(a3 + 16);
  if (v90)
  {
    v30 = 0;
    v91 = v87 + 32;
    v31 = v29 + 56;
    while (1)
    {
      v32 = (v91 + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v36 = v89[17];
      v35 = v89[18];
      __swift_project_boxed_opaque_existential_1(v89 + 14, v36);
      v37 = *(v35 + 8);
      v38 = *(v37 + 16);

      if ((v38(v34, v33, v36, v37) & 1) == 0)
      {
        if (*(v29 + 16))
        {
          sub_1D7264A0C();
          sub_1D72621EC();
          v39 = sub_1D7264A5C();
          v40 = -1 << *(v29 + 32);
          v41 = v39 & ~v40;
          if ((*(v31 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
          {
            break;
          }
        }
      }

LABEL_19:
      ++v30;

      if (v30 == v90)
      {
        goto LABEL_34;
      }
    }

    v42 = ~v40;
    while (1)
    {
      v43 = (*(v29 + 48) + 16 * v41);
      v44 = *v43 == v34 && v43[1] == v33;
      if (v44 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v41 = (v41 + 1) & v42;
      if (((*(v31 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if (qword_1EDF3B838 == -1)
    {
LABEL_32:
      v45 = sub_1D725C42C();
      __swift_project_value_buffer(v45, qword_1EDFFCFA8);
      v46 = v88;

      v47 = sub_1D725C3FC();
      v48 = sub_1D7262EDC();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v93[0] = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_1D5BC5100(v85, v46, v93);
        v51 = "PuzzleStatsService: resetting stats for puzzleType %s triggered by a cleared puzzle previously completed";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

LABEL_69:
    swift_once();
    goto LABEL_32;
  }

LABEL_34:
  v83 = v29;

  v53 = sub_1D5B86020(v52);

  v54 = v89;
  v55 = v89[17];
  v56 = v89[18];
  __swift_project_boxed_opaque_existential_1(v89 + 14, v55);
  v57 = (*(v56 + 56))(v85, v88, v84, v55, v56);
  v58 = v57;
  v91 = *(v57 + 16);
  if (v91)
  {
    v59 = 0;
    v90 = v57 + 32;
    v60 = v53 + 56;
    v61 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v87 = v61;
    while (1)
    {
      if (v59 >= *(v58 + 16))
      {
        goto LABEL_68;
      }

      v62 = (v90 + 16 * v59);
      v63 = *v62;
      v64 = v62[1];
      ++v59;
      if (*(v53 + 16))
      {
        sub_1D7264A0C();

        sub_1D72621EC();
        v65 = sub_1D7264A5C();
        v66 = -1 << *(v53 + 32);
        v67 = v65 & ~v66;
        if ((*(v60 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
        {
          v68 = ~v66;
          do
          {
            v69 = (*(v53 + 48) + 16 * v67);
            v70 = *v69 == v63 && v69[1] == v64;
            if (v70 || (sub_1D72646CC() & 1) != 0)
            {
              goto LABEL_37;
            }

            v67 = (v67 + 1) & v68;
          }

          while (((*(v60 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) != 0);
        }
      }

      else
      {
      }

      v71 = v54[17];
      v72 = v54[18];
      __swift_project_boxed_opaque_existential_1(v54 + 14, v71);
      if ((*(*(v72 + 8) + 32))(v63, v64, v71))
      {
        v73 = v54[17];
        v74 = v54[18];
        __swift_project_boxed_opaque_existential_1(v54 + 14, v73);
        if (((*(*(v74 + 8) + 40))(v63, v64, v73) & 1) == 0)
        {
          v61 = v87;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v92 = v61;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D5BFC364(0, *(v61 + 16) + 1, 1);
            v61 = v92;
          }

          v77 = *(v61 + 16);
          v76 = *(v61 + 24);
          if (v77 >= v76 >> 1)
          {
            sub_1D5BFC364((v76 > 1), v77 + 1, 1);
            v61 = v92;
          }

          *(v61 + 16) = v77 + 1;
          v78 = v61 + 16 * v77;
          *(v78 + 32) = v63;
          *(v78 + 40) = v64;
          if (v59 != v91)
          {
            goto LABEL_36;
          }

          goto LABEL_60;
        }
      }

LABEL_37:

      if (v59 == v91)
      {
        v61 = v87;
        goto LABEL_60;
      }
    }
  }

  v61 = MEMORY[0x1E69E7CC0];
LABEL_60:

  v79 = sub_1D5B86020(v61);

  v80 = sub_1D5BFC390(v83, v79);

  if (v80)
  {
LABEL_15:

    return 0;
  }

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v81 = sub_1D725C42C();
  __swift_project_value_buffer(v81, qword_1EDFFCFA8);
  v82 = v88;

  v47 = sub_1D725C3FC();
  v48 = sub_1D7262EDC();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v93[0] = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_1D5BC5100(v85, v82, v93);
    v51 = "PuzzleStatsService: resetting stats for puzzleType %s triggered by a difference between the cached and history list of completed puzzles";
LABEL_65:
    _os_log_impl(&dword_1D5B42000, v47, v48, v51, v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1DA6FD500](v50, -1, -1);
    MEMORY[0x1DA6FD500](v49, -1, -1);
  }

LABEL_66:

  return 1;
}

uint64_t sub_1D5D146EC(uint64_t a1, uint64_t a2, char *a3)
{
  sub_1D5BC4580(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3[35];
  v12 = v3[36];
  v51 = v3;
  __swift_project_boxed_opaque_existential_1(v3 + 32, v11);
  (*(v12 + 8))(v11, v12);
  v13 = type metadata accessor for PuzzleStatsState();
  if ((*(*(v13 - 8) + 48))(v10, 1, v13) == 1)
  {
    sub_1D5D12CE8(v10, sub_1D5BC4580);
LABEL_16:

    return a3;
  }

  v14 = *(v10 + 2);

  sub_1D5D12CE8(v10, type metadata accessor for PuzzleStatsState);
  if (!*(v14 + 16) || (v15 = sub_1D5B69D90(a1, a2), (v16 & 1) == 0))
  {

    goto LABEL_16;
  }

  v17 = *(*(v14 + 56) + (v15 << 6));

  v53 = MEMORY[0x1E69E7CC0];
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v21 = (v18 + 63) >> 6;

  v23 = 0;
  if (v20)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return result;
    }

    if (v24 >= v21)
    {
      break;
    }

    v20 = *(v17 + 64 + 8 * v24);
    ++v23;
    if (v20)
    {
      v23 = v24;
      do
      {
LABEL_13:
        v20 &= v20 - 1;

        result = sub_1D5D55274(v25);
      }

      while (v20);
      continue;
    }
  }

  v26 = sub_1D5B86020(v53);

  v50 = *(a3 + 2);
  if (v50)
  {
    v27 = 0;
    v48 = v17;
    v49 = a3 + 32;
    v28 = v26 + 56;
    a3 = MEMORY[0x1E69E7CC0];
    do
    {
      v52 = v27;
      v29 = &v49[16 * v27];
      v31 = *v29;
      v30 = *(v29 + 1);
      v32 = v51[17];
      v33 = v51[18];
      __swift_project_boxed_opaque_existential_1(v51 + 14, v32);
      v34 = a3;
      v35 = v28;
      v36 = *(v33 + 8);
      v37 = *(v36 + 16);

      v38 = v36;
      v28 = v35;
      a3 = v34;
      if (v37(v31, v30, v32, v38) & 1) != 0 && *(v26 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v39 = sub_1D7264A5C(), v40 = -1 << *(v26 + 32), v41 = v39 & ~v40, ((*(v28 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41)))
      {
        v42 = ~v40;
        while (1)
        {
          v43 = (*(v26 + 48) + 16 * v41);
          v44 = *v43 == v31 && v43[1] == v30;
          if (v44 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v41 = (v41 + 1) & v42;
          if (((*(v28 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
LABEL_32:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1D5B858EC(0, *(v34 + 2) + 1, 1, v34);
        }

        v46 = *(a3 + 2);
        v45 = *(a3 + 3);
        if (v46 >= v45 >> 1)
        {
          a3 = sub_1D5B858EC((v45 > 1), v46 + 1, 1, a3);
        }

        *(a3 + 2) = v46 + 1;
        v47 = &a3[16 * v46];
        *(v47 + 4) = v31;
        *(v47 + 5) = v30;
      }

      v27 = v52 + 1;
    }

    while (v52 + 1 != v50);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return a3;
}

uint64_t sub_1D5D14B40(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 128) = a2;
  *(v4 + 136) = v3;
  *(v4 + 233) = a3;
  *(v4 + 120) = a1;
  sub_1D5B5B2A0();
  *(v4 + 144) = swift_task_alloc();
  v5 = type metadata accessor for PuzzleStatsProcessingData();
  *(v4 + 152) = v5;
  *(v4 + 160) = *(v5 - 8);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5D14D64, v3, 0);
}

uint64_t type metadata accessor for PuzzleStatsProcessingData()
{
  result = qword_1EDF0BE38;
  if (!qword_1EDF0BE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5D14C98()
{
  sub_1D5B5B2A0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FCPuzzleTypeTraits(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D5D14D64()
{
  v50 = v0;
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 88) = MEMORY[0x1E69E7CC0];
  v3 = v0 + 88;
  *(v0 + 96) = v2;
  v4 = (v0 + 96);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 233);
  v8 = *(v3 + 32);

  sub_1D5D15290(v8, v6, v5, v4, v3);

  if (v7 == 1)
  {
    v9 = *v4;
    v10 = *(*v4 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v47 = v1[23];
      v49[0] = MEMORY[0x1E69E7CC0];
      v12 = v1[20];
      sub_1D5BFC364(0, v10, 0);
      v11 = v49[0];
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v14 = *(v12 + 72);
      do
      {
        v15 = v1;
        v16 = v1[23];
        sub_1D5D12D48(v13, v16, type metadata accessor for PuzzleStatsProcessingData);
        v17 = *v16;
        v18 = *(v47 + 8);

        sub_1D5D12CE8(v16, type metadata accessor for PuzzleStatsProcessingData);
        v49[0] = v11;
        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D5BFC364((v19 > 1), v20 + 1, 1);
          v11 = v49[0];
        }

        *(v11 + 16) = v20 + 1;
        v21 = v11 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v18;
        v13 += v14;
        --v10;
        v1 = v15;
      }

      while (v10);
    }

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725C42C();
    __swift_project_value_buffer(v22, qword_1EDFFCFA8);

    v23 = sub_1D725C3FC();
    v24 = sub_1D7262EDC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v48 = v1;
      v49[0] = swift_slowAlloc();
      v26 = v49[0];
      *v25 = 136315394;
      v27 = MEMORY[0x1DA6F9D20](v11, MEMORY[0x1E69E6158]);
      v29 = v28;

      v30 = sub_1D5BC5100(v27, v29, v49);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      swift_beginAccess();

      v32 = MEMORY[0x1DA6F9D20](v31, MEMORY[0x1E69E6158]);
      v34 = v33;

      v35 = sub_1D5BC5100(v32, v34, v49);

      *(v25 + 14) = v35;
      _os_log_impl(&dword_1D5B42000, v23, v24, "PuzzleStatsService: puzzleStatsData using existing items: %s, fetching items: %s", v25, 0x16u);
      swift_arrayDestroy();
      v36 = v26;
      v1 = v48;
      MEMORY[0x1DA6FD500](v36, -1, -1);
      MEMORY[0x1DA6FD500](v25, -1, -1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v37 = v1[11];
  v1[24] = v37;
  if (*(v37 + 16))
  {
    v38 = v1[17];
    v39 = v38[23];
    v40 = v38[24];
    __swift_project_boxed_opaque_existential_1(v38 + 20, v39);
    v41 = *(v40 + 48);

    v46 = (v41 + *v41);
    v42 = swift_task_alloc();
    v1[25] = v42;
    *v42 = v1;
    v42[1] = sub_1D603DB30;

    return v46(v37, v39, v40);
  }

  else
  {

    v44 = v1[12];

    v45 = v1[1];

    return v45(v44);
  }
}

void sub_1D5D15290(uint64_t a1, void *a2, uint64_t a3, size_t *a4, char **a5)
{
  v76 = a4;
  v77 = a5;
  v72 = a3;
  v78 = a2;
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v71 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PuzzleStatsProcessingData();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v75 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v74 = (&v67 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v68 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v73 = &v67 - v20;
  v21 = *(a1 + 16);
  if (v21)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v24 = *(i - 1);
      v25 = *i;
      v27 = v78[17];
      v26 = v78[18];
      __swift_project_boxed_opaque_existential_1(v78 + 14, v27);
      v28 = *(v26 + 8);
      v29 = *(v28 + 56);

      v30 = v29(v24, v25, v27, v28);
      if (!v30)
      {
        goto LABEL_11;
      }

      v31 = v30;
      v32 = [v31 difficulty];
      if (!v32)
      {
        break;
      }

      v33 = v32;
      v34 = [v32 longLongValue];

      v35 = [v31 behaviorFlags];
      if (!v35)
      {
        break;
      }

      v36 = v35;
      v37 = [v35 unsignedIntegerValue];

      v38 = [v31 puzzleID];
      v39 = sub_1D726207C();
      v41 = v40;

      v42 = v74;
      *v74 = v39;
      v42[1] = v41;
      v42[2] = v34;
      v43 = [v31 publishDate];
      if (v43)
      {
        v44 = v71;
        v45 = v43;
        sub_1D72588BC();

        v46 = v44;
        v47 = 0;
      }

      else
      {
        v47 = 1;
        v46 = v71;
      }

      v53 = sub_1D725891C();
      (*(*(v53 - 8) + 56))(v46, v47, 1, v53);
      v54 = v70;
      v55 = v74;
      sub_1D5D12DB0(v46, v74 + *(v70 + 24), sub_1D5B5B2A0);
      *(v55 + *(v54 + 28)) = (v37 & 2) != 0;
      *(v55 + *(v54 + 32)) = v72;
      v56 = v68;
      sub_1D5D12DB0(v55, v68, type metadata accessor for PuzzleStatsProcessingData);
      v57 = v56;
      v58 = v73;
      sub_1D5D12DB0(v57, v73, type metadata accessor for PuzzleStatsProcessingData);
      sub_1D5D12D48(v58, v75, type metadata accessor for PuzzleStatsProcessingData);
      v59 = v76;
      v60 = *v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v59 = v60;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v60 = sub_1D6991944(0, v60[2] + 1, 1, v60);
        *v76 = v60;
      }

      v63 = v60[2];
      v62 = v60[3];
      if (v63 >= v62 >> 1)
      {
        v66 = sub_1D6991944(v62 > 1, v63 + 1, 1, v60);
        *v76 = v66;
      }

      sub_1D5D12CE8(v73, type metadata accessor for PuzzleStatsProcessingData);
      v64 = v75;
      v65 = *v76;
      *(v65 + 16) = v63 + 1;
      sub_1D5D12DB0(v64, v65 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v63, type metadata accessor for PuzzleStatsProcessingData);
LABEL_4:

      if (!--v21)
      {
        return;
      }
    }

LABEL_11:
    v48 = v77;
    v49 = *v77;

    v50 = swift_isUniquelyReferenced_nonNull_native();
    *v48 = v49;
    if ((v50 & 1) == 0)
    {
      v49 = sub_1D5B858EC(0, *(v49 + 2) + 1, 1, v49);
      *v77 = v49;
    }

    v52 = *(v49 + 2);
    v51 = *(v49 + 3);
    if (v52 >= v51 >> 1)
    {
      v49 = sub_1D5B858EC((v51 > 1), v52 + 1, 1, v49);
      *v77 = v49;
    }

    *(v49 + 2) = v52 + 1;
    v23 = &v49[16 * v52];
    *(v23 + 4) = v24;
    *(v23 + 5) = v25;
    goto LABEL_4;
  }
}

uint64_t sub_1D5D157C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v5 = *(v4 + 296);
    swift_bridgeObjectRelease_n();
    sub_1D5D1AF74(v4 + 80);
    v6 = sub_1D6038134;
  }

  else
  {
    v5 = *(v4 + 296);

    *(v4 + 512) = a1;
    v6 = sub_1D5D1590C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D5D1590C()
{
  v44 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 480);
  v3 = *(v0 + 304);
  v4 = *(v0 + 520);
  __swift_project_boxed_opaque_existential_1((*(v0 + 296) + 200), *(*(v0 + 296) + 224));
  v5 = *(v0 + 96);
  v43[0] = *(v0 + 80);
  v43[1] = v5;
  v6 = *(v0 + 128);
  v43[2] = *(v0 + 112);
  v43[3] = v6;
  sub_1D7258BCC();
  sub_1D5D15CD0(v1, v43, v3, v4, v42);

  sub_1D5D12CE8(v3, type metadata accessor for PuzzleStatsProcessorContext);
  sub_1D5D1AF74(v0 + 80);
  v7 = *(v0 + 480);
  if (*(v2 + 16))
  {
    v8 = *(v0 + 296);
    v10 = *(v7 + 32);
    v9 = *(v7 + 40);

    v11 = v8[17];
    v12 = v8[18];
    __swift_project_boxed_opaque_existential_1(v8 + 14, v11);
    v13 = (*(*(v12 + 8) + 56))(v10, v9, v11);

    if (v13)
    {
      v14 = [v13 lastPlayedDate];
      if (v14)
      {
        v15 = *(v0 + 472);
        v40 = *(v0 + 456);
        v41 = *(v0 + 448);
        v16 = *(v0 + 440);
        v17 = *(v0 + 424);
        v18 = *(v0 + 408);
        v19 = *(v0 + 392);
        v20 = *(v0 + 360);
        v21 = v14;
        sub_1D72588BC();

        sub_1D5D12CE8(v20, sub_1D5B5B2A0);
        v15(v17, v19);
        v15(v16, v19);
        v40(v20, v18, v19);
        v41(v20, 0, 1, v19);
      }

      else
      {
        v29 = *(v0 + 472);
        v30 = *(v0 + 440);
        v31 = *(v0 + 424);
        v32 = *(v0 + 392);

        v29(v31, v32);
        v29(v30, v32);
      }
    }

    else
    {
      v26 = *(v0 + 472);
      v27 = *(v0 + 440);
      v28 = *(v0 + 392);
      v26(*(v0 + 424), v28);
      v26(v27, v28);
    }
  }

  else
  {
    v22 = *(v0 + 472);
    v23 = *(v0 + 440);
    v24 = *(v0 + 424);
    v25 = *(v0 + 392);

    v22(v24, v25);
    v22(v23, v25);
  }

  v33 = *(v0 + 360);
  v34 = *(v0 + 272);
  v35 = type metadata accessor for PuzzleStatsService.StatsResult();
  sub_1D5D12DB0(v33, v34 + *(v35 + 20), sub_1D5B5B2A0);
  v36 = v42[1];
  *v34 = v42[0];
  v34[1] = v36;
  v37 = v42[3];
  v34[2] = v42[2];
  v34[3] = v37;

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1D5D15CD0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v482 = a4;
  v427 = a3;
  v483 = a1;
  v431 = a5;
  v461 = sub_1D725891C();
  v437 = *(v461 - 8);
  MEMORY[0x1EEE9AC00](v461, v6);
  v424 = &v424 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v426 = &v424 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v433 = &v424 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v439 = &v424 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v438 = &v424 - v19;
  sub_1D5B7B698(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v436 = &v424 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v432 = &v424 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v455 = &v424 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v454 = &v424 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v444 = &v424 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v466 = &v424 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v481 = &v424 - v40;
  v472 = type metadata accessor for PuzzleStatsProcessingData();
  v480 = *(v472 - 8);
  MEMORY[0x1EEE9AC00](v472, v41);
  v476 = (&v424 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *a2;
  v430 = a2[7];
  v429 = v43;
  if (v43)
  {
    v45 = a2[5];
    v44 = a2[6];
    v46 = a2[3];
    v47 = a2[4];
    v48 = a2[1];
    v49 = a2[2];
    v448 = swift_allocObject();
    *(v448 + 16) = v46;
    v460 = swift_allocObject();
    *(v460 + 16) = v47;
    v451 = swift_allocObject();
    *(v451 + 16) = v45;
    v50 = swift_allocObject();
    *(v50 + 16) = v44;
    swift_bridgeObjectRetain_n();

    v51 = v48;
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC0];
    v43 = sub_1D605C00C(MEMORY[0x1E69E7CC0]);
    v53 = sub_1D605C00C(v52);
    v54 = sub_1D605C00C(v52);
    v55 = swift_allocObject();
    v56 = sub_1D605C134(v52);
    v448 = v55;
    *(v55 + 16) = v56;
    v57 = swift_allocObject();
    v58 = sub_1D605C204(v52);
    v460 = v57;
    *(v57 + 16) = v58;
    v51 = v53;
    v59 = swift_allocObject();
    v60 = sub_1D605C134(v52);
    v451 = v59;
    *(v59 + 16) = v60;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1D605C204(v52);
    v49 = v54;
  }

  sub_1D5B81B04();

  v61 = v43;
  v62 = sub_1D7261D6C();
  v464 = v61;

  v457 = v62;
  v489 = v62;
  v63 = sub_1D7261D6C();
  v446 = v51;

  v449 = v63;
  v488 = v63;
  v64 = sub_1D7261D6C();
  v428 = 0;
  v465 = v49;

  v469 = v64;
  v487 = v64;
  v450 = v50;
  v66 = v476;
  if (v482)
  {
    if (qword_1EDF3B838 != -1)
    {
      goto LABEL_259;
    }

    goto LABEL_6;
  }

  while (2)
  {
    v84 = *(v483 + 16);
    v85 = v472;
    if (v84)
    {
      v86 = v483 + ((*(v480 + 80) + 32) & ~*(v480 + 80));
      v456 = (v437 + 48);
      v474 = *(v480 + 72);
      v445 = (v437 + 8);
      v452 = (v437 + 32);
      v453 = (v437 + 56);
      v425 = (v437 + 16);
      v443 = MEMORY[0x1E69E7CC0];
      v87 = &qword_1EDF45B00;
      *&v65 = 136315138;
      v442 = v65;
      *&v65 = 136315650;
      v441 = v65;
      *&v65 = 136316418;
      v440 = v65;
      *&v65 = 136315394;
      v458 = v65;
      *&v65 = 134218240;
      v447 = v65;
      v475 = v469;
      while (1)
      {
        sub_1D6EF7A64(v86, v66, type metadata accessor for PuzzleStatsProcessingData);
        v91 = v66[1];
        v92 = v66[2];
        v93 = *v66;
        sub_1D5D1A2BC(v66 + v85[6], v481, v87, MEMORY[0x1E6969530]);
        v94 = *(v66 + v85[7]);
        v483 = v91;
        if (v94 != 1)
        {
          break;
        }

        if (v482)
        {
          v95 = v87;
          if (qword_1EDF3B838 != -1)
          {
            swift_once();
          }

          v96 = sub_1D725C42C();
          __swift_project_value_buffer(v96, qword_1EDFFCFA8);
          v97 = v483;

          v98 = sub_1D725C3FC();
          v99 = sub_1D7262EDC();

          if (os_log_type_enabled(v98, v99))
          {
            v100 = v84;
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v486[0] = v102;
            *v101 = v442;
            *(v101 + 4) = sub_1D5BC5100(v93, v97, v486);
            _os_log_impl(&dword_1D5B42000, v98, v99, "PuzzleStatsProcessor: skipping %s - tagged as ignoreFromStatsAndStreaks", v101, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v102);
            v103 = v102;
            v66 = v476;
            MEMORY[0x1DA6FD500](v103, -1, -1);
            v104 = v101;
            v84 = v100;
            MEMORY[0x1DA6FD500](v104, -1, -1);

            v87 = &qword_1EDF45B00;
            v88 = MEMORY[0x1E6969530];
            v89 = v481;
            v90 = &qword_1EDF45B00;
          }

          else
          {

            v88 = MEMORY[0x1E6969530];
            v89 = v481;
            v87 = v95;
            v90 = v95;
          }
        }

        else
        {
          v88 = MEMORY[0x1E6969530];
          v89 = v481;
          v90 = v87;
        }

        sub_1D5B87A7C(v89, v90, v88);
LABEL_13:
        sub_1D6EF7A04(v66, type metadata accessor for PuzzleStatsProcessingData);
LABEL_14:
        v86 += v474;
        if (!--v84)
        {
          goto LABEL_237;
        }
      }

      v471 = v84;
      v105 = v462;
      v106 = v462[5];
      v107 = v462[6];
      __swift_project_boxed_opaque_existential_1(v462 + 2, v106);
      v470 = (*(v107 + 24))(v93, v91, v106, v107);
      v108 = v105[5];
      v109 = v105[6];
      __swift_project_boxed_opaque_existential_1(v105 + 2, v108);
      v478 = (*(v109 + 8))(v93, v91, v108, v109);
      v110 = v105[5];
      v111 = v105[6];
      __swift_project_boxed_opaque_existential_1(v105 + 2, v110);
      v480 = (*(v111 + 56))(v93, v91, v110, v111);
      v112 = v105[5];
      v113 = v105[6];
      __swift_project_boxed_opaque_existential_1(v105 + 2, v112);
      v473 = (*(v113 + 40))(v93, v91, v112, v113);
      v114 = v105[5];
      v115 = v105[6];
      __swift_project_boxed_opaque_existential_1(v105 + 2, v114);
      v116 = (*(v115 + 32))(v93, v91, v114, v115);
      v117 = v105[5];
      v118 = v105[6];
      v119 = v105 + 2;
      v120 = v116;
      __swift_project_boxed_opaque_existential_1(v119, v117);
      v467 = (*(v118 + 48))(v93, v91, v117, v118);
      v463 = *(v66 + v85[8]);
      v479 = v93;
      v477 = v92;
      if (v482)
      {
        v468 = v120;
        if (qword_1EDF3B838 != -1)
        {
          swift_once();
        }

        v121 = sub_1D725C42C();
        __swift_project_value_buffer(v121, qword_1EDFFCFA8);
        sub_1D5D1A2BC(v481, v466, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        v122 = v483;
        swift_bridgeObjectRetain_n();
        v123 = sub_1D725C3FC();
        v124 = sub_1D7262EDC();
        if (os_log_type_enabled(v123, v124))
        {
          v459 = v86;
          v125 = v92;
          v126 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v486[0] = v127;
          *v126 = v441;

          v128 = sub_1D5BC5100(v479, v122, v486);

          *(v126 + 4) = v128;
          swift_bridgeObjectRelease_n();
          *(v126 + 12) = 2048;
          *(v126 + 14) = v125;
          *(v126 + 22) = 2080;
          v129 = v444;
          sub_1D5D1A2BC(v466, v444, &qword_1EDF45B00, MEMORY[0x1E6969530]);
          v130 = v461;
          if ((*v456)(v129, 1, v461) == 1)
          {
            sub_1D5B87A7C(v129, &qword_1EDF45B00, MEMORY[0x1E6969530]);
            v131 = 0xE300000000000000;
            v132 = 7104878;
          }

          else
          {
            v133 = v129;
            v132 = sub_1D72587EC();
            v131 = v134;
            (*v445)(v133, v130);
          }

          v135 = sub_1D5BC5100(v132, v131, v486);

          *(v126 + 24) = v135;
          sub_1D5B87A7C(v466, &qword_1EDF45B00, MEMORY[0x1E6969530]);
          _os_log_impl(&dword_1D5B42000, v123, v124, "PuzzleStatsProcessor: processing %s - difficulty: %lld, publishDate: %s", v126, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1DA6FD500](v127, -1, -1);
          MEMORY[0x1DA6FD500](v126, -1, -1);

          v66 = v476;
          v86 = v459;
          v122 = v483;
          v92 = v477;
        }

        else
        {
          swift_bridgeObjectRelease_n();

          sub_1D5B87A7C(v466, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        }

        swift_bridgeObjectRetain_n();
        v136 = sub_1D725C3FC();
        v137 = sub_1D7262EDC();
        v138 = os_log_type_enabled(v136, v137);
        v120 = v468;
        if (!v138)
        {
          swift_bridgeObjectRelease_n();

          v85 = v472;
          v93 = v479;
          if (v120)
          {
            goto LABEL_34;
          }

          goto LABEL_42;
        }

        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v486[0] = v140;
        *v139 = v440;

        v141 = v479;
        v142 = sub_1D5BC5100(v479, v122, v486);

        *(v139 + 4) = v142;
        v93 = v141;
        swift_bridgeObjectRelease_n();
        *(v139 + 12) = 1024;
        *(v139 + 14) = v470 & 1;
        *(v139 + 18) = 1024;
        *(v139 + 20) = v478 & 1;
        *(v139 + 24) = 1024;
        *(v139 + 26) = v473 & 1;
        *(v139 + 30) = 1024;
        *(v139 + 32) = v120 & 1;
        *(v139 + 36) = 1024;
        *(v139 + 38) = v467 & 1;
        _os_log_impl(&dword_1D5B42000, v136, v137, "PuzzleStatsProcessor: processing %s - wasCompletedAtSomePoint: %{BOOL}d, isStarted: %{BOOL}d, usedReveal: %{BOOL}d, hasFirstCompletedDate: %{BOOL}d, hasPerfectScore: %{BOOL}d", v139, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v140);
        v143 = v140;
        v66 = v476;
        MEMORY[0x1DA6FD500](v143, -1, -1);
        MEMORY[0x1DA6FD500](v139, -1, -1);

        v85 = v472;
      }

      if (v120)
      {
LABEL_34:
        v144 = v464;
        v145 = sub_1D5EC4F58(v92, v464);
        v146 = MEMORY[0x1E69E7CD0];
        if (v145)
        {
          v146 = v145;
        }

        v485 = v146;
        v147 = v483;

        sub_1D5B860D0(v486, v93, v147);

        v148 = v485;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v486[0] = v144;
        sub_1D6D794DC(v148, v92, isUniquelyReferenced_nonNull_native);
        v464 = v486[0];
        v150 = v480;
        if (v482)
        {
          if (qword_1EDF3B838 != -1)
          {
            swift_once();
          }

          v151 = sub_1D725C42C();
          __swift_project_value_buffer(v151, qword_1EDFFCFA8);
          v152 = v483;
          swift_bridgeObjectRetain_n();
          v153 = sub_1D725C3FC();
          v154 = sub_1D7262EDC();
          if (os_log_type_enabled(v153, v154))
          {
            v155 = swift_slowAlloc();
            v156 = swift_slowAlloc();
            v486[0] = v156;
            *v155 = v458;

            v157 = v479;
            v158 = sub_1D5BC5100(v479, v152, v486);

            *(v155 + 4) = v158;
            v150 = v480;
            v93 = v157;
            v92 = v477;
            swift_bridgeObjectRelease_n();
            *(v155 + 12) = 2048;
            *(v155 + 14) = v92;

            _os_log_impl(&dword_1D5B42000, v153, v154, "PuzzleStatsProcessor: adding %s to completed puzzles set - difficulty: %lld", v155, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v156);
            v159 = v156;
            v66 = v476;
            MEMORY[0x1DA6FD500](v159, -1, -1);
            MEMORY[0x1DA6FD500](v155, -1, -1);

            v85 = v472;
          }

          else
          {

            swift_bridgeObjectRelease_n();
            v85 = v472;
            v93 = v479;
          }
        }

        else
        {
        }

        v87 = &qword_1EDF45B00;
        if (!v150 || (v160 = [v150 firstPlayDuration]) == 0)
        {
LABEL_58:
          if (v478)
          {
            v178 = v473 ^ 1;
            if (((v473 ^ 1 | v120) & 1) == 0)
            {
              v92 = v477;
              goto LABEL_74;
            }

            if (v150)
            {
              v179 = v150;
              v180 = [v179 bestScore];
              v468 = v120;
              if (v180 || (v180 = [v179 score]) != 0)
              {
                v181 = v180;
                v182 = [v180 integerValue];
              }

              else
              {
                v182 = ((v463 << 44 >> 63) & 0x7FFFFFFFFFFFFFFFLL);
              }

              v469 = v179;
              v459 = v182;
              if ((v463 & 0x80000) != 0)
              {
                if ((v470 & (v182 > 0)) != 1)
                {
LABEL_180:
                  v320 = v475;
                  v321 = v475[2];
                  if (v321)
                  {
                    v322 = sub_1D5C5E034(v477);
                    if (v323)
                    {
                      v321 = *(v320[7] + 8 * v322);
                    }

                    else
                    {
                      v321 = 0;
                    }
                  }

                  v324 = v321 + 1;
                  if (__OFADD__(v321, 1))
                  {
                    goto LABEL_254;
                  }

                  swift_beginAccess();
                  v325 = swift_isUniquelyReferenced_nonNull_native();
                  v485 = v487;
                  v487 = 0x8000000000000000;
                  v326 = v477;
                  sub_1D6D793B8(v324, v477, v325);
                  v475 = v485;
                  v487 = v485;
                  swift_endAccess();
                  if (v467)
                  {
                    v327 = sub_1D5EC4C54(v326, v449);
                    if (v328)
                    {
                      v329 = 0;
                    }

                    else
                    {
                      v329 = v327;
                    }

                    v330 = v329 + 1;
                    if (__OFADD__(v329, 1))
                    {
                      goto LABEL_257;
                    }

                    swift_beginAccess();
                    v331 = swift_isUniquelyReferenced_nonNull_native();
                    v485 = v488;
                    v488 = 0x8000000000000000;
                    sub_1D6D793B8(v330, v326, v331);
                    v449 = v485;
                    v488 = v485;
                    swift_endAccess();
                    v332 = v446;
                    v333 = sub_1D5EC4F58(v326, v446);
                    v334 = MEMORY[0x1E69E7CD0];
                    if (v333)
                    {
                      v334 = v333;
                    }

                    v485 = v334;
                    v335 = v483;

                    sub_1D5B860D0(v486, v93, v335);

                    v336 = v485;
                    v337 = swift_isUniquelyReferenced_nonNull_native();
                    v486[0] = v332;
                    v66 = v476;
                    sub_1D6D794DC(v336, v326, v337);
                    v446 = v486[0];
                    v188 = v475;
                    if (v482)
                    {
                      if (qword_1EDF3B838 != -1)
                      {
                        swift_once();
                      }

                      v338 = sub_1D725C42C();
                      __swift_project_value_buffer(v338, qword_1EDFFCFA8);
                      v339 = v483;
                      swift_bridgeObjectRetain_n();
                      v340 = sub_1D725C3FC();
                      v341 = sub_1D7262EDC();
                      if (os_log_type_enabled(v340, v341))
                      {
                        v342 = swift_slowAlloc();
                        v343 = swift_slowAlloc();
                        v486[0] = v343;
                        *v342 = v458;

                        v344 = v479;
                        v345 = sub_1D5BC5100(v479, v339, v486);

                        *(v342 + 4) = v345;
                        v150 = v480;
                        v93 = v344;
                        v188 = v475;
                        swift_bridgeObjectRelease_n();
                        *(v342 + 12) = 2048;
                        *(v342 + 14) = v477;
                        _os_log_impl(&dword_1D5B42000, v340, v341, "PuzzleStatsProcessor: adding %s to perfect puzzles set - difficulty: %lld", v342, 0x16u);
                        __swift_destroy_boxed_opaque_existential_1(v343);
                        v346 = v343;
                        v85 = v472;
                        MEMORY[0x1DA6FD500](v346, -1, -1);
                        v347 = v342;
                        v66 = v476;
                        MEMORY[0x1DA6FD500](v347, -1, -1);
                      }

                      else
                      {
                        swift_bridgeObjectRelease_n();

                        v93 = v479;
                      }
                    }

                    v200 = v454;
                  }

                  else
                  {
                    v200 = v454;
                    v188 = v475;
                  }

                  v199 = v469;
                  if ((v482 & 1) == 0)
                  {

                    v357 = v468 | v470 & v178;
                    v469 = v188;
                    v92 = v477;
                    if ((v357 & 1) == 0)
                    {
                      v475 = v188;
                      v282 = &v490;
LABEL_147:
                      *(v282 - 32) = v188;
                      v283 = v465;
                      v284 = sub_1D5EC4F58(v92, v465);
                      v285 = MEMORY[0x1E69E7CD0];
                      if (v284)
                      {
                        v285 = v284;
                      }

                      v485 = v285;
                      v286 = v483;

                      sub_1D5B860D0(v486, v93, v286);

                      v287 = v485;
                      v288 = swift_isUniquelyReferenced_nonNull_native();
                      v486[0] = v283;
                      sub_1D6D794DC(v287, v92, v288);
                      v465 = v486[0];
                      if (v482)
                      {
                        if (qword_1EDF3B838 != -1)
                        {
                          swift_once();
                        }

                        v289 = sub_1D725C42C();
                        __swift_project_value_buffer(v289, qword_1EDFFCFA8);
                        v290 = v483;
                        swift_bridgeObjectRetain_n();
                        v291 = sub_1D725C3FC();
                        v292 = sub_1D7262EDC();
                        if (os_log_type_enabled(v291, v292))
                        {
                          v293 = swift_slowAlloc();
                          v294 = swift_slowAlloc();
                          v486[0] = v294;
                          *v293 = v458;

                          v295 = sub_1D5BC5100(v479, v290, v486);

                          *(v293 + 4) = v295;
                          v85 = v472;
                          swift_bridgeObjectRelease_n();
                          *(v293 + 12) = 2048;
                          *(v293 + 14) = v92;
                          _os_log_impl(&dword_1D5B42000, v291, v292, "PuzzleStatsProcessor: adding %s to startedByLevel - difficulty %lld", v293, 0x16u);
                          __swift_destroy_boxed_opaque_existential_1(v294);
                          v296 = v294;
                          v66 = v476;
                          MEMORY[0x1DA6FD500](v296, -1, -1);
                          MEMORY[0x1DA6FD500](v293, -1, -1);
                        }

                        else
                        {

                          swift_bridgeObjectRelease_n();
                        }

                        v87 = &qword_1EDF45B00;
                        sub_1D5B87A7C(v481, &qword_1EDF45B00, MEMORY[0x1E6969530]);
                      }

                      else
                      {
                        v87 = &qword_1EDF45B00;
                        sub_1D5B87A7C(v481, &qword_1EDF45B00, MEMORY[0x1E6969530]);
                      }

                      v84 = v471;
                      goto LABEL_13;
                    }

                    goto LABEL_92;
                  }

                  if (qword_1EDF3B838 != -1)
                  {
                    swift_once();
                  }

                  v349 = sub_1D725C42C();
                  __swift_project_value_buffer(v349, qword_1EDFFCFA8);
                  v350 = v483;
                  swift_bridgeObjectRetain_n();
                  v351 = sub_1D725C3FC();
                  v352 = sub_1D7262EDC();
                  if (os_log_type_enabled(v351, v352))
                  {
                    v353 = swift_slowAlloc();
                    v354 = swift_slowAlloc();
                    v486[0] = v354;
                    *v353 = v458;

                    v355 = sub_1D5BC5100(v479, v350, v486);

                    *(v353 + 4) = v355;
                    swift_bridgeObjectRelease_n();
                    *(v353 + 12) = 2048;
                    *(v353 + 14) = v459;
                    _os_log_impl(&dword_1D5B42000, v351, v352, "PuzzleStatsProcessor: %s - using bestScore: %ld", v353, 0x16u);
                    __swift_destroy_boxed_opaque_existential_1(v354);
                    MEMORY[0x1DA6FD500](v354, -1, -1);
                    v356 = v353;
                    v66 = v476;
                    MEMORY[0x1DA6FD500](v356, -1, -1);
                  }

                  else
                  {
                    swift_bridgeObjectRelease_n();
                  }

                  v358 = sub_1D725C3FC();
                  v359 = sub_1D7262EDC();
                  v360 = os_log_type_enabled(v358, v359);
                  v93 = v479;
                  if (v360)
                  {
                    v361 = swift_slowAlloc();
                    *v361 = v447;
                    v362 = v477;
                    *(v361 + 4) = v477;
                    *(v361 + 12) = 2048;
                    v363 = v451;
                    swift_beginAccess();
                    v364 = *(v363 + 16);
                    if (*(v364 + 16) && (v365 = sub_1D5C5E034(v362), (v366 & 1) != 0))
                    {
                      v367 = *(*(v364 + 56) + 8 * v365);
                    }

                    else
                    {
                      v367 = 0;
                    }

                    v188 = v475;
                    swift_endAccess();
                    *(v361 + 14) = v367;
                    _os_log_impl(&dword_1D5B42000, v358, v359, "PuzzleStatsProcessor: updating bestScores for difficulty %lld to: %ld", v361, 0x16u);
                    MEMORY[0x1DA6FD500](v361, -1, -1);
                  }

                  v368 = sub_1D725C3FC();
                  v369 = sub_1D7262EDC();
                  if (os_log_type_enabled(v368, v369))
                  {
                    v370 = swift_slowAlloc();
                    *v370 = v447;
                    v371 = v477;
                    *(v370 + 4) = v477;
                    *(v370 + 12) = 2048;
                    v372 = v188[2];
                    if (v372)
                    {
                      v373 = sub_1D5C5E034(v371);
                      if (v374)
                      {
                        v372 = *(v188[7] + 8 * v373);
                      }

                      else
                      {
                        v372 = 0;
                      }
                    }

                    *(v370 + 14) = v372;
                    _os_log_impl(&dword_1D5B42000, v368, v369, "PuzzleStatsProcessor: updating startedRunningCounts for difficulty %lld to: %ld", v370, 0x16u);
                    MEMORY[0x1DA6FD500](v370, -1, -1);
                  }

                  v375 = sub_1D725C3FC();
                  v376 = sub_1D7262EDC();
                  v377 = os_log_type_enabled(v375, v376);
                  v92 = v477;
                  if (v377)
                  {
                    v378 = swift_slowAlloc();
                    *v378 = v447;
                    *(v378 + 4) = v92;
                    *(v378 + 12) = 2048;
                    v379 = v449;
                    v380 = *(v449 + 16);
                    if (v380)
                    {
                      v381 = sub_1D5C5E034(v92);
                      if (v382)
                      {
                        v380 = *(*(v379 + 56) + 8 * v381);
                      }

                      else
                      {
                        v380 = 0;
                      }

                      v66 = v476;
                    }

                    *(v378 + 14) = v380;
                    _os_log_impl(&dword_1D5B42000, v375, v376, "PuzzleStatsProcessor: updating perfectRunningCounts for difficulty %lld to: %ld", v378, 0x16u);
                    MEMORY[0x1DA6FD500](v378, -1, -1);
                  }

                  v475 = v188;
                  v85 = v472;
                  v150 = v480;
                  v87 = &qword_1EDF45B00;
                  LOBYTE(v120) = v468;
                  goto LABEL_69;
                }

                v227 = v451;
                swift_beginAccess();
                v228 = *(v227 + 16);
                v229 = v459;
                if (*(v228 + 16) && (v230 = sub_1D5C5E034(v477), (v231 & 1) != 0))
                {
                  v187 = *(*(v228 + 56) + 8 * v230);
                }

                else
                {
                  v187 = 0x7FFFFFFFFFFFFFFFLL;
                }

                swift_endAccess();
                if (v229 < v187)
                {
                  v187 = v229;
                }
              }

              else
              {
                v183 = v451;
                swift_beginAccess();
                v184 = *(v183 + 16);
                if (*(v184 + 16) && (v185 = sub_1D5C5E034(v477), (v186 & 1) != 0))
                {
                  v187 = *(*(v184 + 56) + 8 * v185);
                }

                else
                {
                  v187 = 0;
                }

                swift_endAccess();
                if (v182 > v187)
                {
                  v187 = v182;
                }
              }

              v182 = v451;
              swift_beginAccess();
              v319 = swift_isUniquelyReferenced_nonNull_native();
              v485 = v182[2];
              v182[2] = 0x8000000000000000;
              sub_1D6D793B8(v187, v477, v319);
              v182[2] = v485;
              swift_endAccess();
              goto LABEL_180;
            }

            v188 = v469;
            v92 = v477;
          }

          else
          {
            v188 = v469;
          }

LABEL_69:
          if (v120)
          {
            if ((v482 & 1) == 0)
            {
              v469 = v188;
              goto LABEL_90;
            }

            v189 = 1;
            v469 = v188;
            goto LABEL_79;
          }

          v469 = v188;
LABEL_74:
          if (v470)
          {
            if ((v482 & 1) == 0)
            {
              if ((v473 & 1) == 0)
              {
                goto LABEL_90;
              }

              goto LABEL_88;
            }

            v189 = v473 ^ 1;
          }

          else
          {
            if ((v482 & 1) == 0)
            {
              goto LABEL_144;
            }

            v189 = 0;
          }

LABEL_79:
          if (qword_1EDF3B838 != -1)
          {
            swift_once();
          }

          v190 = sub_1D725C42C();
          __swift_project_value_buffer(v190, qword_1EDFFCFA8);
          v191 = v483;
          swift_bridgeObjectRetain_n();
          v192 = sub_1D725C3FC();
          v193 = sub_1D7262EDC();
          if (os_log_type_enabled(v192, v193))
          {
            v194 = swift_slowAlloc();
            v195 = swift_slowAlloc();
            v486[0] = v195;
            *v194 = v458;

            v196 = v479;
            v197 = sub_1D5BC5100(v479, v191, v486);

            *(v194 + 4) = v197;
            v85 = v472;
            v93 = v196;
            v92 = v477;
            swift_bridgeObjectRelease_n();
            *(v194 + 12) = 1024;
            *(v194 + 14) = v189 & 1;
            _os_log_impl(&dword_1D5B42000, v192, v193, "PuzzleStatsProcessor: %s - will be checked for streaks: %{BOOL}d", v194, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v195);
            v198 = v195;
            v66 = v476;
            MEMORY[0x1DA6FD500](v198, -1, -1);
            MEMORY[0x1DA6FD500](v194, -1, -1);

            v87 = &qword_1EDF45B00;
            if (v189)
            {
              goto LABEL_90;
            }
          }

          else
          {
            swift_bridgeObjectRelease_n();

            v93 = v479;
            v87 = &qword_1EDF45B00;
            if (v189)
            {
LABEL_90:
              v150 = v480;
              if (v480)
              {
                v199 = v480;
                v188 = v475;
                v200 = v454;
LABEL_92:
                v201 = v199;
                v202 = [v201 firstCompletedDate];
                if (v202)
                {
                  v203 = v439;
                  v204 = v202;
                  sub_1D72588BC();

                  v205 = *v452;
                  v206 = v455;
                  v207 = v461;
                  (*v452)(v455, v203, v461);
                  v208 = *v453;
                  (*v453)(v206, 0, 1, v207);
                  v205(v200, v206, v207);
                  v208(v200, 0, 1, v207);
                  v150 = v480;
                  v209 = *v456;
                  v66 = v476;
                  v210 = (*v456)(v200, 1, v207);
                }

                else
                {
                  v211 = *v453;
                  v212 = 1;
                  (*v453)(v455, 1, 1, v461);
                  v475 = v201;
                  v213 = [v201 completedDate];
                  v214 = v86;
                  v215 = v432;
                  if (v213)
                  {
                    v216 = v213;
                    sub_1D72588BC();

                    v212 = 0;
                  }

                  v251 = v461;
                  v211(v215, v212, 1, v461);
                  sub_1D6EF7B30(v215, v200, &qword_1EDF45B00, MEMORY[0x1E6969530]);
                  v209 = *v456;
                  v252 = v455;
                  if ((*v456)(v455, 1, v251) != 1)
                  {
                    sub_1D5B87A7C(v252, &qword_1EDF45B00, MEMORY[0x1E6969530]);
                  }

                  v207 = v461;
                  v66 = v476;
                  v86 = v214;
                  v201 = v475;
                  v210 = v209(v200, 1, v461);
                }

                if (v210 == 1)
                {

                  v253 = v200;
                  v87 = &qword_1EDF45B00;
                  sub_1D5B87A7C(v253, &qword_1EDF45B00, MEMORY[0x1E6969530]);
                  v85 = v472;
                  v93 = v479;
                  v92 = v477;
                  goto LABEL_145;
                }

                v475 = v188;
                v254 = *v452;
                v255 = v438;
                (*v452)(v438, v200, v207);
                v256 = v436;
                v87 = &qword_1EDF45B00;
                sub_1D5D1A2BC(v481, v436, &qword_1EDF45B00, MEMORY[0x1E6969530]);
                if (v209(v256, 1, v207) == 1)
                {
                  (*v445)(v255, v207);

                  sub_1D5B87A7C(v256, &qword_1EDF45B00, MEMORY[0x1E6969530]);
                  v85 = v472;
                  v66 = v476;
LABEL_143:
                  v93 = v479;
                  v92 = v477;
                  v150 = v480;
                  goto LABEL_144;
                }

                v459 = v86;
                v257 = v433;
                v254(v433, v256, v207);
                if ((sub_1D6EF497C(v257, v427, v482 & 1) & 1) == 0)
                {

                  v281 = *v445;
                  (*v445)(v257, v207);
                  v281(v255, v207);
                  v85 = v472;
                  v66 = v476;
                  v86 = v459;
                  v87 = &qword_1EDF45B00;
                  goto LABEL_143;
                }

                v258 = *v425;
                (*v425)(v426, v257, v207);
                v259 = v443;
                v260 = swift_isUniquelyReferenced_nonNull_native();
                v188 = v475;
                if ((v260 & 1) == 0)
                {
                  v259 = sub_1D5D19690(0, v259[2] + 1, 1, v259);
                }

                v92 = v477;
                v443 = v259;
                v262 = v259[2];
                v261 = v259[3];
                v86 = v459;
                if (v262 >= v261 >> 1)
                {
                  v443 = sub_1D5D19690(v261 > 1, v262 + 1, 1, v443);
                }

                v263 = v443;
                v443[2] = v262 + 1;
                v264 = v461;
                v254(&v263[((*(v437 + 80) + 32) & ~*(v437 + 80)) + *(v437 + 72) * v262], v426, v461);
                if (v482)
                {
                  if (qword_1EDF3B838 != -1)
                  {
                    swift_once();
                  }

                  v265 = sub_1D725C42C();
                  __swift_project_value_buffer(v265, qword_1EDFFCFA8);
                  v266 = v424;
                  v267 = v433;
                  v268 = v461;
                  v258(v424, v433, v461);
                  v269 = v483;
                  swift_bridgeObjectRetain_n();
                  v270 = sub_1D725C3FC();
                  v271 = sub_1D7262EDC();
                  if (os_log_type_enabled(v270, v271))
                  {
                    v272 = swift_slowAlloc();
                    v473 = v271;
                    v273 = v266;
                    v274 = v272;
                    v275 = swift_slowAlloc();
                    v486[0] = v275;
                    *v274 = v458;

                    v93 = v479;
                    v276 = sub_1D5BC5100(v479, v269, v486);

                    *(v274 + 4) = v276;
                    swift_bridgeObjectRelease_n();
                    *(v274 + 12) = 2080;
                    sub_1D5CE4528(&qword_1EDF3C3B0);
                    v277 = sub_1D72644BC();
                    v279 = sub_1D5BC5100(v277, v278, v486);

                    *(v274 + 14) = v279;
                    v280 = *v445;
                    (*v445)(v273, v268);
                    _os_log_impl(&dword_1D5B42000, v270, v473, "PuzzleStatsProcessor: %s - adding to completedByPublishedDate: %s", v274, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x1DA6FD500](v275, -1, -1);
                    MEMORY[0x1DA6FD500](v274, -1, -1);

                    v280(v433, v268);
                    v280(v438, v268);
                    v85 = v472;
                    v66 = v476;
                    v86 = v459;
                  }

                  else
                  {

                    v383 = *v445;
                    (*v445)(v266, v268);
                    swift_bridgeObjectRelease_n();
                    v383(v267, v268);
                    v383(v438, v268);
                    v85 = v472;
                    v66 = v476;
                    v86 = v459;
                    v93 = v479;
                  }

                  v92 = v477;
                  v150 = v480;
                  v87 = &qword_1EDF45B00;
                  goto LABEL_144;
                }

                v348 = *v445;
                (*v445)(v433, v264);
                v348(v438, v264);
                v85 = v472;
                v66 = v476;
                v87 = &qword_1EDF45B00;
                v93 = v479;
LABEL_89:
                v150 = v480;
LABEL_145:
                if ((v478 & 1) == 0)
                {
                  sub_1D5B87A7C(v481, &qword_1EDF45B00, MEMORY[0x1E6969530]);

                  sub_1D6EF7A04(v66, type metadata accessor for PuzzleStatsProcessingData);
                  v475 = v188;
                  v84 = v471;
                  goto LABEL_14;
                }

                v282 = &v491;
                goto LABEL_147;
              }

LABEL_144:
              v188 = v475;
              goto LABEL_145;
            }
          }

LABEL_88:
          v188 = v475;
          goto LABEL_89;
        }

        v161 = v160;
        v162 = [v160 integerValue];

        v163 = v448;
        swift_beginAccess();
        v164 = sub_1D5EC4C54(v92, *(v163 + 16));
        v166 = v165;
        swift_endAccess();
        v167 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v166 & 1) == 0)
        {
          v167 = v164;
        }

        if (v162 >= v167)
        {
          v168 = v167;
        }

        else
        {
          v168 = v162;
        }

        swift_beginAccess();
        v169 = swift_isUniquelyReferenced_nonNull_native();
        v484 = *(v163 + 16);
        *(v163 + 16) = 0x8000000000000000;
        sub_1D6D793B8(v168, v92, v169);
        v435 = v484;
        *(v163 + 16) = v484;
        swift_endAccess();
        v170 = sub_1D5EC4C54(v92, v457);
        if (v171)
        {
          v66 = 0;
        }

        else
        {
          v66 = v170;
        }

        v434 = v162;
        v172 = v162;
        v173 = v460;
        swift_beginAccess();
        v174 = COERCE_DOUBLE(sub_1D5EC4C54(v92, *(v173 + 16)));
        v176 = v175;
        swift_endAccess();
        if (v176)
        {
          swift_beginAccess();
          v177 = swift_isUniquelyReferenced_nonNull_native();
          v484 = *(v173 + 16);
          *(v173 + 16) = 0x8000000000000000;
          sub_1D6D79290(v92, v177, v172);
          v459 = v484;
          *(v173 + 16) = v484;
        }

        else
        {
          if (__OFADD__(v66, 1))
          {
            __break(1u);
LABEL_257:
            __break(1u);
LABEL_258:
            __break(1u);
LABEL_259:
            swift_once();
LABEL_6:
            v67 = sub_1D725C42C();
            __swift_project_value_buffer(v67, qword_1EDFFCFA8);
            v68 = sub_1D725C3FC();
            v69 = sub_1D7262EDC();
            if (os_log_type_enabled(v68, v69))
            {
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v486[0] = v71;
              *v70 = 136315650;

              v72 = sub_1D7261D4C();
              v74 = v73;

              v75 = sub_1D5BC5100(v72, v74, v486);

              *(v70 + 4) = v75;
              *(v70 + 12) = 2080;

              v76 = sub_1D7261D4C();
              v78 = v77;

              v79 = sub_1D5BC5100(v76, v78, v486);
              v66 = v476;

              *(v70 + 14) = v79;
              *(v70 + 22) = 2080;

              v80 = sub_1D7261D4C();
              v82 = v81;

              v83 = sub_1D5BC5100(v80, v82, v486);

              *(v70 + 24) = v83;
              _os_log_impl(&dword_1D5B42000, v68, v69, "PuzzleStatsProcessor: computeStats using initial completedRunningCounts %s perfectRunningCounts %s startedRunningCounts %s", v70, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1DA6FD500](v71, -1, -1);
              MEMORY[0x1DA6FD500](v70, -1, -1);
            }

            continue;
          }

          v217 = v460;
          swift_beginAccess();
          v218 = swift_isUniquelyReferenced_nonNull_native();
          v484 = *(v217 + 16);
          *(v217 + 16) = 0x8000000000000000;
          sub_1D6D79290(v92, v218, (v66 * v174 + v172) / (v66 + 1));
          v459 = v484;
          *(v217 + 16) = v484;
        }

        swift_endAccess();
        v219 = [v150 score];
        v85 = v472;
        if (v219)
        {
          v468 = v120;
          v220 = v219;
          v221 = [v219 integerValue];

          v222 = v221;
          v223 = v450;
          swift_beginAccess();
          v224 = COERCE_DOUBLE(sub_1D5EC4C54(v92, *(v223 + 16)));
          LOBYTE(v221) = v225;
          swift_endAccess();
          if (v221)
          {
            swift_beginAccess();
            v226 = swift_isUniquelyReferenced_nonNull_native();
            v484 = *(v223 + 16);
            *(v223 + 16) = 0x8000000000000000;
            sub_1D6D79290(v92, v226, v222);
            *(v223 + 16) = v484;
          }

          else
          {
            if (__OFADD__(v66, 1))
            {
              goto LABEL_258;
            }

            v232 = v450;
            swift_beginAccess();
            v233 = swift_isUniquelyReferenced_nonNull_native();
            v484 = *(v232 + 16);
            *(v232 + 16) = 0x8000000000000000;
            sub_1D6D79290(v92, v233, (v66 * v224 + v222) / (v66 + 1));
            *(v232 + 16) = v484;
          }

          swift_endAccess();
          v120 = v468;
        }

        v182 = (v66 + 1);
        if (__OFADD__(v66, 1))
        {
          __break(1u);
LABEL_254:
          __break(1u);
          goto LABEL_255;
        }

        swift_beginAccess();
        v234 = swift_isUniquelyReferenced_nonNull_native();
        v484 = v489;
        v489 = 0x8000000000000000;
        sub_1D6D793B8(v66 + 1, v92, v234);
        v457 = v484;
        v489 = v484;
        swift_endAccess();
        if (v482)
        {
          v66 = v476;
          if (qword_1EDF3B838 != -1)
          {
            swift_once();
          }

          v235 = sub_1D725C42C();
          __swift_project_value_buffer(v235, qword_1EDFFCFA8);
          v236 = v483;
          swift_bridgeObjectRetain_n();
          v237 = sub_1D725C3FC();
          v238 = sub_1D7262EDC();
          if (os_log_type_enabled(v237, v238))
          {
            v239 = swift_slowAlloc();
            v240 = swift_slowAlloc();
            v486[0] = v240;
            *v239 = v458;

            v241 = sub_1D5BC5100(v479, v236, v486);

            *(v239 + 4) = v241;
            v92 = v477;
            swift_bridgeObjectRelease_n();
            *(v239 + 12) = 2048;
            *(v239 + 14) = v434;
            _os_log_impl(&dword_1D5B42000, v237, v238, "PuzzleStatsProcessor: %s - using playDuration: %ld", v239, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v240);
            MEMORY[0x1DA6FD500](v240, -1, -1);
            v242 = v239;
            v66 = v476;
            MEMORY[0x1DA6FD500](v242, -1, -1);
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          v243 = sub_1D725C3FC();
          v244 = sub_1D7262EDC();
          v245 = os_log_type_enabled(v243, v244);
          v93 = v479;
          if (v245)
          {
            v246 = swift_slowAlloc();
            *v246 = v447;
            *(v246 + 4) = v92;
            *(v246 + 12) = 2048;
            v247 = v435;
            if (*(v435 + 16) && (v248 = sub_1D5C5E034(v92), (v249 & 1) != 0))
            {
              v250 = *(*(v247 + 56) + 8 * v248);
            }

            else
            {
              v250 = 0x7FFFFFFFFFFFFFFFLL;
            }

            *(v246 + 14) = v250;
            _os_log_impl(&dword_1D5B42000, v243, v244, "PuzzleStatsProcessor: updating fastestCompletedTimes for difficulty %lld to: %ld", v246, 0x16u);
            MEMORY[0x1DA6FD500](v246, -1, -1);
          }

          v297 = sub_1D725C3FC();
          v298 = sub_1D7262EDC();
          if (os_log_type_enabled(v297, v298))
          {
            v299 = swift_slowAlloc();
            *v299 = v447;
            *(v299 + 4) = v92;
            *(v299 + 12) = 2048;
            if (v459[2] && (v300 = sub_1D5C5E034(v92), (v301 & 1) != 0))
            {
              v302 = *(v459[7] + 8 * v300);
            }

            else
            {
              v302 = 0x7FEFFFFFFFFFFFFFLL;
            }

            *(v299 + 14) = v302;
            _os_log_impl(&dword_1D5B42000, v297, v298, "PuzzleStatsProcessor: updating averageCompletionTimes for difficulty %lld to: %f", v299, 0x16u);
            MEMORY[0x1DA6FD500](v299, -1, -1);
          }

          v303 = sub_1D725C3FC();
          v304 = sub_1D7262EDC();
          if (os_log_type_enabled(v303, v304))
          {
            v305 = swift_slowAlloc();
            *v305 = v447;
            *(v305 + 4) = v92;
            *(v305 + 12) = 2048;
            v306 = v450;
            swift_beginAccess();
            v307 = *(v306 + 16);
            v308 = 0;
            if (*(v307 + 16))
            {
              v309 = sub_1D5C5E034(v92);
              if (v310)
              {
                v308 = *(*(v307 + 56) + 8 * v309);
              }
            }

            swift_endAccess();
            *(v305 + 14) = v308;
            _os_log_impl(&dword_1D5B42000, v303, v304, "PuzzleStatsProcessor: updating averageScores for difficulty %lld to: %f", v305, 0x16u);
            MEMORY[0x1DA6FD500](v305, -1, -1);
          }

          v311 = sub_1D725C3FC();
          v312 = sub_1D7262EDC();
          v313 = os_log_type_enabled(v311, v312);
          v150 = v480;
          if (v313)
          {
            v314 = swift_slowAlloc();
            *v314 = v447;
            *(v314 + 4) = v92;
            *(v314 + 12) = 2048;
            v315 = v457;
            v316 = *(v457 + 16);
            if (v316)
            {
              v317 = sub_1D5C5E034(v92);
              if (v318)
              {
                v316 = *(*(v315 + 56) + 8 * v317);
              }

              else
              {
                v316 = 0;
              }

              v93 = v479;
            }

            *(v314 + 14) = v316;
            _os_log_impl(&dword_1D5B42000, v311, v312, "PuzzleStatsProcessor: updating completedRunningCounts for difficulty %lld to: %ld", v314, 0x16u);
            MEMORY[0x1DA6FD500](v314, -1, -1);
          }

          v85 = v472;
        }

        else
        {
          v66 = v476;
        }

LABEL_43:
        v87 = &qword_1EDF45B00;
        goto LABEL_58;
      }

LABEL_42:
      v150 = v480;
      goto LABEL_43;
    }

    break;
  }

  v443 = MEMORY[0x1E69E7CC0];
LABEL_237:
  v182 = v443;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_255:
    v182 = sub_1D5D1967C(v182);
  }

  v384 = v460;
  v385 = v465;
  v386 = v430;
  v387 = v429;
  v388 = v182[2];
  v486[0] = v182 + ((*(v437 + 80) + 32) & ~*(v437 + 80));
  v486[1] = v388;
  sub_1D5D196C4(v486, MEMORY[0x1E6969530], sub_1D6EF63C0, sub_1D6EF5608);
  v389 = sub_1D5D19814(v182);

  v390 = v450;
  if (v387)
  {
  }

  else
  {
    v386 = 0;
  }

  v391 = sub_1D5D1A33C(v389, v386);

  v483 = v391;
  if (v482)
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v392 = sub_1D725C42C();
    __swift_project_value_buffer(v392, qword_1EDFFCFA8);
    swift_bridgeObjectRetain_n();
    v393 = sub_1D725C3FC();
    v394 = sub_1D7262EDC();
    if (os_log_type_enabled(v393, v394))
    {
      v395 = swift_slowAlloc();
      v396 = swift_slowAlloc();
      v486[0] = v396;
      *v395 = 136315138;
      v397 = type metadata accessor for PuzzleStreak();

      v399 = MEMORY[0x1DA6F9D20](v398, v397);
      v401 = v400;

      v402 = sub_1D5BC5100(v399, v401, v486);

      *(v395 + 4) = v402;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_1D5B42000, v393, v394, "PuzzleStatsProcessor: incremental streaks %s", v395, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v396);
      MEMORY[0x1DA6FD500](v396, -1, -1);
      MEMORY[0x1DA6FD500](v395, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRetain_n();
    v403 = sub_1D725C3FC();
    v404 = sub_1D7262EDC();
    if (os_log_type_enabled(v403, v404))
    {
      v405 = swift_slowAlloc();
      v406 = swift_slowAlloc();
      v486[0] = v406;
      *v405 = 136315138;
      v407 = type metadata accessor for PuzzleStreak();

      v409 = MEMORY[0x1DA6F9D20](v408, v407);
      v411 = v410;

      v412 = sub_1D5BC5100(v409, v411, v486);

      *(v405 + 4) = v412;
      swift_bridgeObjectRelease_n();

      _os_log_impl(&dword_1D5B42000, v403, v404, "PuzzleStatsProcessor: combined streaks %s", v405, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v406);
      MEMORY[0x1DA6FD500](v406, -1, -1);
      MEMORY[0x1DA6FD500](v405, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v384 = v460;
    v385 = v465;
  }

  else
  {
  }

  v460 = v384;
  v413 = v448;
  swift_beginAccess();
  v414 = *(v413 + 16);
  swift_beginAccess();
  v415 = *(v384 + 16);
  v416 = v451;
  swift_beginAccess();
  v417 = *(v416 + 16);
  swift_beginAccess();
  v418 = *(v390 + 16);
  v419 = v464;

  v420 = v446;

  v421 = v431;
  *v431 = v419;
  v421[1] = v420;
  v421[2] = v385;
  v421[3] = v414;
  v421[4] = v415;
  v421[5] = v417;
  v422 = v483;
  v421[6] = v418;
  v421[7] = v422;
}

uint64_t sub_1D5D19640()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D196C4(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1D726449C();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1D726276C();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void *sub_1D5D19814(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleStreak();
  v90 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v85 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v97 = &v83 - v7;
  v96 = sub_1D7258C2C();
  v115 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v8);
  v95 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7257ADC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v84 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v83 - v16;
  v18 = sub_1D725891C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v109 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v83 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v101 = &v83 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v83 - v31;
  sub_1D5B7B698(0, &qword_1EDF18AE8, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v86 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v83 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v98 = &v83 - v42;
  v45 = MEMORY[0x1EEE9AC00](v43, v44);
  v46 = *(v11 + 56);
  v99 = &v83 - v47;
  v107 = v46;
  v108 = v11 + 56;
  v46(v45);
  v48 = *(a1 + 16);
  v49 = v10;
  v89 = v10;
  v87 = v11;
  if (v48)
  {
    v103 = v32;
    v104 = v18;
    v100 = v17;
    v51 = *(v19 + 16);
    v50 = v19 + 16;
    v111 = v25;
    v112 = v51;
    v52 = a1 + ((*(v50 + 64) + 32) & ~*(v50 + 64));
    v53 = *(v50 + 56);
    v105 = (v11 + 48);
    v106 = v53;
    v93 = (v11 + 32);
    v92 = (v115 + 8);
    v110 = (v50 - 8);
    v88 = (v11 + 16);
    v91 = (v11 + 8);
    v102 = MEMORY[0x1E69E7CC0];
    v54 = v98;
    v55 = v99;
    v56 = v101;
    v113 = v50;
    v94 = v39;
    v57 = v32;
    do
    {
      v114 = v52;
      v115 = v48;
      v60 = v104;
      v61 = v112;
      (v112)(v57);
      sub_1D5D1A2BC(v55, v54, &qword_1EDF18AE8, MEMORY[0x1E6968130]);
      if ((*v105)(v54, 1, v49) == 1)
      {
        sub_1D5B87A7C(v54, &qword_1EDF18AE8, MEMORY[0x1E6968130]);
        v61(v111, v57, v60);
        v61(v109, v57, v60);
        v58 = v39;
        v56 = v101;
        sub_1D7257A8C();
        (*v110)(v57, v60);
      }

      else
      {
        v62 = v100;
        (*v93)(v100, v54, v49);
        sub_1D7257A7C();
        v63 = v95;
        sub_1D7258BCC();
        v64 = v56;
        v65 = v111;
        sub_1D725873C();
        (*v92)(v63, v96);
        v66 = sub_1D725883C();
        v67 = *v110;
        (*v110)(v65, v60);
        if (v66)
        {
          sub_1D7257AAC();
          v112(v109, v57, v60);
          v68 = v94;
          sub_1D7257A8C();
          v67(v64, v60);
          (*v91)(v62, v49);
          v67(v57, v60);
          v55 = v99;
          v58 = v68;
          v56 = v64;
        }

        else
        {
          (*v88)(v97, v62, v49);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_1D6991978(0, v102[2] + 1, 1, v102);
          }

          v69 = v94;
          v56 = v101;
          v71 = v102[2];
          v70 = v102[3];
          if (v71 >= v70 >> 1)
          {
            v102 = sub_1D6991978(v70 > 1, v71 + 1, 1, v102);
          }

          v72 = v102;
          v102[2] = v71 + 1;
          sub_1D6EF7ACC(v97, v72 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v71);
          v73 = v112;
          v112(v111, v57, v60);
          v73(v109, v57, v60);
          v58 = v69;
          sub_1D7257A8C();
          v67(v56, v60);
          v49 = v89;
          (*v91)(v100, v89);
          v67(v57, v60);
          v55 = v99;
        }

        v54 = v98;
      }

      v59 = MEMORY[0x1E6968130];
      sub_1D5B87A7C(v55, &qword_1EDF18AE8, MEMORY[0x1E6968130]);
      (v107)(v58, 0, 1, v49);
      v39 = v58;
      sub_1D6EF7B30(v58, v55, &qword_1EDF18AE8, v59);
      v52 = v114 + v106;
      v48 = v115 - 1;
    }

    while (v115 != 1);
  }

  else
  {
    v102 = MEMORY[0x1E69E7CC0];
    v55 = v99;
  }

  v74 = v86;
  sub_1D5D1A2BC(v55, v86, &qword_1EDF18AE8, MEMORY[0x1E6968130]);
  v75 = v87;
  if ((*(v87 + 48))(v74, 1, v49) == 1)
  {
    v76 = MEMORY[0x1E6968130];
    sub_1D5B87A7C(v55, &qword_1EDF18AE8, MEMORY[0x1E6968130]);
    sub_1D5B87A7C(v74, &qword_1EDF18AE8, v76);
  }

  else
  {
    v77 = v84;
    (*(v75 + 32))(v84, v74, v49);
    v78 = v85;
    (*(v75 + 16))(v85, v77, v49);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = sub_1D6991978(0, v102[2] + 1, 1, v102);
    }

    v80 = v102[2];
    v79 = v102[3];
    if (v80 >= v79 >> 1)
    {
      v102 = sub_1D6991978(v79 > 1, v80 + 1, 1, v102);
    }

    (*(v75 + 8))(v77, v89);
    sub_1D5B87A7C(v99, &qword_1EDF18AE8, MEMORY[0x1E6968130]);
    v81 = v102;
    v102[2] = v80 + 1;
    sub_1D6EF7ACC(v78, v81 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v80);
  }

  return v102;
}

uint64_t sub_1D5D1A2BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B7B698(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5D1A33C(void *a1, uint64_t a2)
{
  v105 = a1;
  v130 = sub_1D725891C();
  v116 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v3);
  v112 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v111 = &v99 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v110 = &v99 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v124 = &v99 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v123 = &v99 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v121 = &v99 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v131 = &v99 - v22;
  v127 = sub_1D7257ADC();
  v102 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v23);
  v109 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v114 = &v99 - v27;
  v28 = type metadata accessor for PuzzleStreak();
  v103 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v101 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v122 = &v99 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v113 = &v99 - v36;
  sub_1D5B7B698(0, &qword_1EDF43B40, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v99 - v39;
  v129 = sub_1D7258CFC();
  v41 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v42);
  v128 = &v99 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D7258ABC();
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v46);
  v48 = &v99 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1D7258C2C();
  MEMORY[0x1EEE9AC00](v125, v49);
  v120 = &v99 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v51, v52);
  v56 = &v99 - v55;
  if (!a2 || !*(a2 + 16))
  {
    v59 = v105;

    return v59;
  }

  v100 = v53;
  (*(v45 + 104))(v48, *MEMORY[0x1E6969868], v44, v54);

  sub_1D7258ACC();
  (*(v45 + 8))(v48, v44);
  sub_1D7258CCC();
  v57 = v129;
  result = (*(v41 + 48))(v40, 1, v129);
  if (result != 1)
  {
    (*(v41 + 32))(v128, v40, v57);
    v119 = v56;
    sub_1D7258BFC();
    v133 = v105;

    sub_1D6986D0C(a2);
    v59 = v133;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v127;
    v62 = v103;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = sub_1D5EC3B3C(v59);
    }

    v63 = v59[2];
    v108 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v64 = v59 + v108;
    v132[0] = v59 + v108;
    v132[1] = v63;
    sub_1D5D196C4(v132, type metadata accessor for PuzzleStreak, sub_1D6EF58B8, sub_1D6EF52B8);
    v65 = v59[2];
    if (v65)
    {
      v66 = v102;
      v67 = *(v102 + 16);
      v107 = v102 + 16;
      v106 = v67;
      v67(v114, v64, v61);
      v68 = (v65 - 1);
      if (v65 == 1)
      {

        v69 = MEMORY[0x1E69E7CC0];
        v70 = v114;
      }

      else
      {
        v71 = *(v62 + 72);
        v117 = (v100 + 8);
        v126 = v116 + 1;
        v104 = (v116 + 4);
        v115 = (v66 + 32);
        v116 = (v66 + 8);
        v105 = v59;
        v72 = v59 + v71 + v108;
        v69 = MEMORY[0x1E69E7CC0];
        v70 = v114;
        v73 = v113;
        v118 = v71;
        do
        {
          v128 = v68;
          v129 = v69;
          sub_1D6EF7A64(v72, v73, type metadata accessor for PuzzleStreak);
          v84 = v121;
          sub_1D7257A7C();
          v85 = v120;
          sub_1D7258BCC();
          sub_1D725872C();
          (*v117)(v85, v125);
          v86 = *v126;
          v87 = v130;
          (*v126)(v84, v130);
          v88 = v123;
          sub_1D7257AAC();
          sub_1D7258ADC();
          v86(v88, v87);
          sub_1D7258ADC();
          sub_1D5CE4528(&qword_1EDF3C3C0);
          v89 = sub_1D7261F5C();
          v86(v88, v87);
          v86(v84, v87);
          if (v89)
          {
            v106(v122, v70, v127);
            v69 = v129;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v69 = sub_1D6991978(0, v69[2] + 1, 1, v69);
            }

            v91 = v69[2];
            v90 = v69[3];
            if (v91 >= v90 >> 1)
            {
              v69 = sub_1D6991978(v90 > 1, v91 + 1, 1, v69);
            }

            v86(v131, v130);
            v92 = v114;
            v61 = v127;
            (*v116)(v114, v127);
            v69[2] = v91 + 1;
            v83 = v118;
            v93 = v69 + v108 + v91 * v118;
            v70 = v92;
            sub_1D6EF7ACC(v122, v93);
            v73 = v113;
            v82 = v113;
          }

          else
          {
            sub_1D7257AAC();
            v74 = v111;
            sub_1D7257AAC();
            v75 = v130;
            v76 = v112;
            sub_1D7257A7C();
            v77 = sub_1D7261F6C();
            v78 = (v77 & 1) == 0;
            if (v77)
            {
              v79 = v74;
            }

            else
            {
              v79 = v76;
            }

            if (v78)
            {
              v80 = v74;
            }

            else
            {
              v80 = v76;
            }

            v86(v79, v75);
            (*v104)(v110, v80, v75);
            v81 = v109;
            sub_1D7257A8C();
            v86(v131, v75);
            sub_1D6EF7A04(v73, type metadata accessor for PuzzleStreak);
            v61 = v127;
            (*v116)(v70, v127);
            v82 = v81;
            v69 = v129;
            v83 = v118;
          }

          (*v115)(v70, v82, v61);
          v72 += v83;
          v68 = v128 - 1;
        }

        while (v128 != 1);

        v62 = v103;
      }

      v94 = v101;
      v106(v101, v70, v61);
      v59 = v69;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v96 = v102;
      if ((v95 & 1) == 0)
      {
        v59 = sub_1D6991978(0, v59[2] + 1, 1, v59);
      }

      v98 = v59[2];
      v97 = v59[3];
      if (v98 >= v97 >> 1)
      {
        v59 = sub_1D6991978(v97 > 1, v98 + 1, 1, v59);
      }

      (*(v96 + 8))(v70, v61);
      (*(v100 + 8))(v119, v125);
      v59[2] = v98 + 1;
      sub_1D6EF7ACC(v94, v59 + v108 + *(v62 + 72) * v98);
    }

    else
    {
      (*(v100 + 8))(v119, v125);
    }

    return v59;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5D1AF74(uint64_t a1)
{
  sub_1D5B49DA8(0, &qword_1EDF11628, &type metadata for PuzzleTypeStats, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5D1AFF4()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {
    v4 = sub_1D6037AAC;
  }

  else
  {
    v4 = sub_1D5D1B120;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D5D1B120()
{
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v59 = *(v0 + 456);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  v56 = *(v0 + 312);
  v58 = *(v0 + 528);
  v7 = *(v0 + 296);
  v61 = *(v0 + 288);
  v63 = *(v0 + 280);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  *(v0 + 48) = v7[2];
  *(v0 + 64) = v10;
  *(v0 + 16) = v8;
  *(v0 + 32) = v9;
  v11 = *(v5 + 2);
  sub_1D5D12A1C(v0 + 16, v0 + 80);
  sub_1D5D12A1C(v0 + 16, v0 + 144);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D5D1B6DC((v0 + 16), v2, v1, isUniquelyReferenced_nonNull_native);
  v13 = v11;
  v14 = *v5;
  v15 = *(v5 + 1);
  v16 = *(v5 + 3);
  v59(&v6[*(v56 + 28)], &v5[v58], v3);
  *v6 = v14;
  *(v6 + 1) = v15;
  *(v6 + 2) = v13;
  *(v6 + 3) = v16;

  sub_1D5D12A54(v0 + 16);
  sub_1D5D12CE8(v5, type metadata accessor for PuzzleStatsState);
  sub_1D5D12DB0(v6, v5, type metadata accessor for PuzzleStatsState);
  sub_1D5D12D48(v7 + *(v61 + 20), v63, sub_1D5B5B2A0);
  if ((*(v4 + 48))(v63, 1, v3) == 1)
  {
    v17 = *(v0 + 280);
    sub_1D5D12CE8(*(v0 + 296), type metadata accessor for PuzzleStatsService.StatsResult);

    swift_unknownObjectRelease();
    sub_1D5D12CE8(v17, sub_1D5B5B2A0);
  }

  else
  {
    v57 = *(v0 + 496);
    v18 = *(v0 + 456);
    v20 = *(v0 + 360);
    v19 = *(v0 + 368);
    v21 = *(v0 + 344);
    v22 = *(v0 + 352);
    v55 = *(v0 + 504);
    v24 = *(v0 + 328);
    v23 = *(v0 + 336);
    v62 = *(v0 + 312);
    v64 = *(v0 + 528);
    v60 = *(v0 + 296);
    (*(v22 + 32))(v19, *(v0 + 280), v21);
    v25 = v23[3];
    v18(v20, v19, v21);

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v25;
    sub_1D6D77084(v20, v57, v55, v26);
    swift_unknownObjectRelease();

    (*(v22 + 8))(v19, v21);
    sub_1D5D12CE8(v60, type metadata accessor for PuzzleStatsService.StatsResult);
    v28 = *v23;
    v27 = v23[1];
    v29 = v23[2];
    v18(v24 + *(v62 + 28), v23 + v64, v21);

    sub_1D5D12CE8(v23, type metadata accessor for PuzzleStatsState);
    *v24 = v28;
    v24[1] = v27;
    v24[2] = v29;
    v24[3] = v65;
    sub_1D5D12DB0(v24, v23, type metadata accessor for PuzzleStatsState);
  }

  v30 = *(v0 + 480) + 1;
  if (v30 == *(v0 + 472))
  {

    v31 = *(v0 + 336);
    v32 = *(v0 + 272);
    v33 = *(v32 + 280);
    v34 = *(v32 + 288);
    __swift_project_boxed_opaque_existential_1((v32 + 256), v33);
    (*(v34 + 24))(v31, v33, v34);
    *(v32 + 312) = 0;
    v35 = sub_1D725C3FC();
    v36 = sub_1D7262EDC();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 376);
    v39 = *(v0 + 344);
    v40 = *(v0 + 352);
    v41 = *(v0 + 336);
    if (v37)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1D5B42000, v35, v36, "PuzzleStatsService: completed updating stats", v42, 2u);
      MEMORY[0x1DA6FD500](v42, -1, -1);
    }

    sub_1D5D12CE8(v41, type metadata accessor for PuzzleStatsState);
    (*(v40 + 8))(v38, v39);

    v43 = *(v0 + 8);

    return v43();
  }

  else
  {
    *(v0 + 480) = v30;
    v45 = *(v0 + 440);
    if ((v45 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x1DA6FB460]();
    }

    else
    {
      v46 = *(v45 + 8 * v30 + 32);
      swift_unknownObjectRetain();
    }

    *(v0 + 488) = v46;
    v47 = [v46 identifier];
    v48 = sub_1D726207C();
    v50 = v49;

    *(v0 + 496) = v48;
    *(v0 + 504) = v50;
    v51 = swift_task_alloc();
    *(v0 + 512) = v51;
    *v51 = v0;
    v51[1] = sub_1D5D1AFF4;
    v52 = *(v0 + 376);
    v53 = *(v0 + 296);
    v54 = *(v0 + 532);

    return sub_1D5D12E18(v53, v46, v52, v54);
  }
}

uint64_t sub_1D5D1B6DC(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D5B69D90(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D6D6B490(v16, a4 & 1);
      v11 = sub_1D5B69D90(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D5D1B864();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 6);

    return sub_1D5D1BA58(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + (v11 << 6));
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[3];
  v25[2] = a1[2];
  v25[3] = v28;
  *v25 = v26;
  v25[1] = v27;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

void *sub_1D5D1B864()
{
  v1 = v0;
  sub_1D5D1B9F8();
  v2 = *v0;
  v3 = sub_1D72640FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_1D5D12A1C(&v32, &v31);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1D5D1B9F8()
{
  if (!qword_1EDF04050)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04050);
    }
  }
}

uint64_t sub_1D5D1BADC()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D5D1BBEC, v1, 0);
}

uint64_t sub_1D5D1BBEC()
{
  v1 = *(v0 + 16);

  *(v1 + 304) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PuzzleStatsState.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5D11A68(0, &qword_1EDF02730, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5D11ACC();
  sub_1D7264B5C();
  LOBYTE(v13) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v13 = *(v3 + 16);
    HIBYTE(v12) = 1;
    sub_1D5B6A734();
    sub_1D5D11C68(&qword_1EDF05768, sub_1D5D1BEF8);
    sub_1D726443C();
    v13 = *(v3 + 24);
    HIBYTE(v12) = 2;
    sub_1D5B6DA30();
    sub_1D5D1CDC4();
    sub_1D726443C();
    type metadata accessor for PuzzleStatsState();
    LOBYTE(v13) = 3;
    sub_1D725891C();
    sub_1D5CE4528(&qword_1EDF45B18);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D5D1BEF8()
{
  result = qword_1EDF11638;
  if (!qword_1EDF11638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11638);
  }

  return result;
}

uint64_t PuzzleTypeStats.encode(to:)(void *a1)
{
  sub_1D5D12440(0, &unk_1EDF027A0, sub_1D5D124C0, &type metadata for PuzzleTypeStats.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v23 = v1[2];
  v24 = v9;
  v12 = v1[5];
  v21 = v1[4];
  v22 = v11;
  v13 = v1[7];
  v19 = v1[6];
  v20 = v12;
  v18 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5D124C0();

  sub_1D7264B5C();
  v27 = v10;
  v26 = 0;
  sub_1D5D125C4();
  sub_1D5D1C3F4();
  v14 = v25;
  sub_1D726443C();
  if (v14)
  {
  }

  else
  {
    v15 = v23;

    v27 = v24;
    v26 = 1;
    sub_1D726443C();
    v27 = v15;
    v26 = 2;
    sub_1D726443C();
    v27 = v22;
    v26 = 3;
    sub_1D5D127FC(0, &unk_1EDF055A0);
    sub_1D5D12850(&qword_1EDF05598);
    sub_1D726443C();
    v27 = v21;
    v26 = 4;
    sub_1D5D127FC(0, &qword_1EDF055F0);
    sub_1D5D128D4(&qword_1EDF055E8);
    sub_1D726443C();
    v27 = v20;
    v26 = 5;
    sub_1D726443C();
    v27 = v19;
    v26 = 6;
    sub_1D726443C();
    v27 = v18;
    v26 = 7;
    sub_1D5BC3F04(0, &qword_1EDF05060, type metadata accessor for PuzzleStreak, MEMORY[0x1E69E62F8]);
    sub_1D5D12958(&qword_1EDF05058, &qword_1EDF11FD0);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D5D1C3F4()
{
  result = qword_1EDF055C0;
  if (!qword_1EDF055C0)
  {
    sub_1D5D125C4();
    sub_1D5CB5D1C(&qword_1EDF047E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF055C0);
  }

  return result;
}

uint64_t sub_1D5D1C574(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v16 = sub_1D725891C();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = v8;
  v9 = sub_1D5D0EA94(v8);
  FeedCursorContainer.createdDate.getter(v9, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = v17;
  v13 = FeedServiceContextType.shouldRefreshRootCursor(createdDate:)(v7, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v7, v16);
  if (v13)
  {
    sub_1D7262EDC();
    sub_1D725C30C();
    return sub_1D5B971F8(v12);
  }

  else
  {
    type metadata accessor for FeedServiceFetchResult();
    sub_1D725BC0C();
    v18 = v15;

    return sub_1D725BB0C();
  }
}

uint64_t objectdestroy_31Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 64) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t objectdestroy_31Tm_0()
{

  if (*(v0 + 96) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_31Tm_1()
{
  v1 = type metadata accessor for FeedWebEmbed();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  if (*(v3 + 32) >= 0x12uLL)
  {
  }

  v4 = v1[8];
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  v21 = *(v6 + 8);
  v21(v3 + v4, v5);
  v7 = v1[9];
  if (!(*(v6 + 48))(v3 + v7, 1, v5))
  {
    v21(v3 + v7, v5);
  }

  v8 = v3 + v1[12];
  v9 = type metadata accessor for FeedHeadline(0);
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v10 = v9[10];
    v11 = v8 + v10 + *(type metadata accessor for FeedHeadline.State(0) + 24);
    v12 = type metadata accessor for SharedItem();
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v13 = sub_1D725891C();
      (*(*(v13 - 8) + 8))(v11, v13);

      v21(v11 + *(v12 + 28), v5);
    }

    v14 = v9[11];
    v15 = sub_1D726045C();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v8 + v14, 1, v15))
    {
      (*(v16 + 8))(v8 + v14, v15);
    }

    if (*(v8 + v9[12] + 8) >= 0x12uLL)
    {
    }

    if (*(v8 + v9[13]) >= 3uLL)
    {
      swift_unknownObjectRelease();
    }
  }

  v17 = v3 + v1[13];
  v18 = type metadata accessor for WebEmbedDataVisualization();
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v19 = type metadata accessor for GenericDataVisualization();
      v21(v17 + *(v19 + 20), v5);
    }

    else
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D1CCF8(double a1)
{
  sub_1D5C384A0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7273AE0;
  v3 = CACurrentMediaTime();
  v4 = MEMORY[0x1E69E6438];
  *(v2 + 56) = MEMORY[0x1E69E63B0];
  *(v2 + 64) = v4;
  *(v2 + 32) = (v3 - a1) * 1000.0;
  sub_1D7262EDC();
  sub_1D725C30C();
}

unint64_t sub_1D5D1CDC4()
{
  result = qword_1EDF05808;
  if (!qword_1EDF05808)
  {
    sub_1D5B6DA30();
    sub_1D5CE4528(&qword_1EDF45B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05808);
  }

  return result;
}

uint64_t FormatFeedGroup.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatFeedGroup() + 20));

  return v1;
}

uint64_t FormatFeedGroup.personalizingItems.getter()
{
  type metadata accessor for FormatFeedGroup();
}

uint64_t FormatContent.Resolved.tag.getter()
{
  type metadata accessor for FormatContent.Resolved();

  return swift_unknownObjectRetain();
}

uint64_t FeedDeferredCursor.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BA8F28(0, &qword_1EDF19560, sub_1D5BE1388, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 32) = 0x696669746E656469;
  *(inited + 16) = xmmword_1D7279960;
  *(inited + 40) = 0xEA00000000007265;
  v3 = MEMORY[0x1E69E6158];
  v4 = *(v1 + 24);
  *(inited + 48) = *(v1 + 16);
  *(inited + 56) = v4;
  *(inited + 72) = v3;
  *(inited + 80) = 1684957547;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = *(v1 + qword_1EDFFC640);
  *(inited + 120) = &type metadata for FeedCursorKind;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x80000001D73C0C70;
  v5 = MEMORY[0x1E69E6530];
  *(inited + 144) = *(v1 + qword_1EDFFC650);
  *(inited + 168) = v5;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x80000001D73C0C90;
  type metadata accessor for FeedDeferredCursorGroup();

  *(inited + 192) = sub_1D726279C();
  *(inited + 216) = v5;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x80000001D73C0CB0;
  type metadata accessor for FeedDatabaseGroup();
  v6 = sub_1D726279C();
  *(inited + 264) = v5;
  *(inited + 240) = v6;
  sub_1D5BE1168(inited);
  swift_setDeallocating();
  sub_1D5BE1388();
  swift_arrayDestroy();
  a1[3] = sub_1D725B0DC();
  a1[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D725B0CC();
}

uint64_t FeedServiceFetchResult.cursorContainer.getter(unint64_t a1)
{
  v1 = sub_1D5D0EA94(a1);

  return v1;
}

uint64_t FeedPluginManager.createPluginModels(fetchResult:layoutOptionsProvider:)(unint64_t a1, void *a2)
{
  v3 = v2;
  v36 = a1;
  v39 = *v3;
  v6 = *(v39 + class metadata base offset for FeedPluginManager);
  v41 = *(v39 + class metadata base offset for FeedPluginManager + 8);
  v7 = v6;
  v42 = type metadata accessor for FeedPluginFactoryContext();
  v38 = *(v42 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v42, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  v14 = *(v3 + qword_1EDF14DA8 + 8);
  v16 = *(v3 + qword_1EDF14DA8 + 16);
  v15 = *(v3 + qword_1EDF14DA8 + 24);
  v17 = *(v3 + qword_1EDF14DA8 + 32);
  v44[0] = *(v3 + qword_1EDF14DA8);
  v44[1] = v14;
  v44[2] = v16;
  v44[3] = v15;
  v45 = v17;
  v43 = *(v3 + qword_1EDF14D98);

  v18 = a2;

  v19 = v16;
  v20 = v15;
  v40 = v13;
  v21 = v41;
  sub_1D5D1D920(v44, &v43, a1, v18, v3, v13);
  v37 = sub_1D725A95C();
  v22 = v38;
  v23 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v42;
  (*(v38 + 16))(v23, v13, v42);
  v25 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = v7;
  *(v26 + 3) = v21;
  v27 = *(v39 + class metadata base offset for FeedPluginManager + 16);
  v28 = v36;
  *(v26 + 4) = v27;
  *(v26 + 5) = v28;
  (*(v22 + 32))(&v26[v25], v23, v24);
  sub_1D5D1D9FC(0);

  v29 = v37;
  sub_1D725BDBC();

  v30 = swift_allocObject();
  v31 = v41;
  v30[2] = v7;
  v30[3] = v31;
  v30[4] = v27;
  v30[5] = v28;

  v32 = sub_1D725B92C();
  type metadata accessor for FeedPluginManagerResult();
  v33 = sub_1D725BA8C();

  (*(v22 + 8))(v40, v42);
  return v33;
}

uint64_t sub_1D5D1D5EC()
{
  v1 = type metadata accessor for FeedPluginFactoryContext();
  v2 = *(*(v1 - 8) + 80);

  v3 = v0 + ((v2 + 48) & ~v2);

  v4 = (v3 + *(v1 + 40));
  v5 = type metadata accessor for FeedContext();
  v6 = v4 + v5[5];
  v7 = type metadata accessor for BundleSession();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = *(v7 + 20);
    v9 = sub_1D725891C();
    (*(*(v9 - 8) + 8))(&v6[v8], v9);
  }

  if (*(v4 + v5[12] + 8) - 1 >= 3)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D1D814()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D1D850()
{
  result = type metadata accessor for FeedContext();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeedCursorContainer();
    if (v2 <= 0x3F)
    {
      result = sub_1D725CF8C();
      if (v3 <= 0x3F)
      {
        result = sub_1D725EC2C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D5D1D920@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *a2;
  *a6 = *a1;
  *(a6 + 8) = *(a1 + 8);
  *(a6 + 24) = v10;
  *(a6 + 32) = v11;
  *(a6 + 33) = v12;
  v13 = type metadata accessor for FeedPluginFactoryContext();
  FeedServiceFetchResult.feedContext.getter(a3, a6 + v13[10]);
  v14 = sub_1D5D0EA94(a3);

  *(a6 + v13[11]) = v14;
  *(a6 + v13[13]) = a4;
  *(a6 + v13[12]) = a5;
  return result;
}

uint64_t sub_1D5D1DAA4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = FeedServiceFetchResult.groups.getter(a2);
  v5 = sub_1D5D1DD24(v4, a3);

  return v5;
}

uint64_t FeedServiceFetchResult.groups.getter(unint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v4);
  v6 = &v12 - v5;
  v7 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v7)
    {
    }
  }

  else if (v7 != 2)
  {
    if (v7 != 3)
    {
      return sub_1D726275C();
    }
  }

  type metadata accessor for FeedCursorContainer();
  v9 = swift_projectBox();
  (*(v3 + 16))(v6, v9, AssociatedTypeWitness);
  sub_1D5D0DDD4(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v10 = sub_1D726270C();
  (*(v3 + 32))(v11, v6, AssociatedTypeWitness);
  return sub_1D5BFCB60(v10);
}

uint64_t sub_1D5D1DD24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = a2;
  v5 = *v2;
  v7 = *(v5 + class metadata base offset for FeedPluginManager);
  v6 = *(v5 + class metadata base offset for FeedPluginManager + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = v7;
  v56 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = AssociatedTypeWitness;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v42 - v16;
  if (!sub_1D726279C())
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_40:
    if (*(v19 + 2))
    {
      sub_1D673ECC8(0);
      v39 = sub_1D71969D4(sub_1D673EDD8, v3, v19);

      v58 = v39;
      v40 = sub_1D725B92C();
      sub_1D5D1F120(0, &qword_1EDF053A0, sub_1D673ECC8, MEMORY[0x1E69E62F8]);
      sub_1D673ECFC();
      v41 = sub_1D725BA3C();

      return v41;
    }

    else
    {

      v58 = MEMORY[0x1E69E7CC0];
      sub_1D5D1F120(0, &unk_1EDF17990, sub_1D5D1D9FC, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      return sub_1D725BB1C();
    }
  }

  v45 = qword_1EDF14E38;
  v43 = v11;
  v44 = qword_1EDF14D90;
  swift_beginAccess();
  v18 = 0;
  v50 = (v10 + 32);
  v51 = (v10 + 16);
  v47 = (v10 + 8);
  v19 = MEMORY[0x1E69E7CC0];
  v54 = v5 + 16;
  v46 = v3;
  v48 = v17;
  v49 = v10;
  while (1)
  {
    v21 = sub_1D726277C();
    sub_1D726271C();
    if ((v21 & 1) == 0)
    {
      break;
    }

    result = (*(v10 + 16))(v17, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v9);
    v23 = __OFADD__(v18++, 1);
    if (v23)
    {
      goto LABEL_44;
    }

LABEL_8:
    (*v50)(v13, v17, v9);
    swift_getAssociatedConformanceWitness();
    sub_1D725AA4C();
    v24 = sub_1D725CF6C();

    if (v24)
    {
      v25 = swift_allocObject();
      *(v25 + 16) = v24;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D69940A8(0, *(v19 + 2) + 1, 1, v19);
      }

      v27 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v27 >= v26 >> 1)
      {
        v19 = sub_1D69940A8((v26 > 1), v27 + 1, 1, v19);
      }

      (*v47)(v13, v9);
      *(v19 + 2) = v27 + 1;
      *&v19[8 * v27 + 32] = v25;
    }

    else
    {
      sub_1D5D1E54C(v13, v57, &v58);
      v28 = v58;
      if ((~v58 & 0xF000000000000007) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1D69940A8(0, *(v19 + 2) + 1, 1, v19);
        }

        v36 = *(v19 + 2);
        v35 = *(v19 + 3);
        if (v36 >= v35 >> 1)
        {
          v19 = sub_1D69940A8((v35 > 1), v36 + 1, 1, v19);
        }

        (*v47)(v13, v9);
        *(v19 + 2) = v36 + 1;
        *&v19[8 * v36 + 32] = v28;
        goto LABEL_5;
      }

      v29 = *(v3 + v44);
      type metadata accessor for FeedPluginManager.FactoryWrapper();

      if (sub_1D726279C())
      {
        v30 = 0;
        while (1)
        {
          v31 = sub_1D726277C();
          sub_1D726271C();
          if (v31)
          {
            v32 = *(v29 + 8 * v30 + 32);

            v33 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              goto LABEL_43;
            }
          }

          else
          {
            result = sub_1D7263DBC();
            v32 = result;
            v33 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
LABEL_43:
              __break(1u);
              goto LABEL_44;
            }
          }

          (*(v32 + 16))(&v58, v13, v57);
          v34 = v58;
          if ((~v58 & 0xF000000000000007) != 0)
          {
            break;
          }

          type metadata accessor for FeedPluginManager.FactoryWrapper();
          ++v30;
          if (v33 == sub_1D726279C())
          {
            goto LABEL_3;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1D69940A8(0, *(v19 + 2) + 1, 1, v19);
        }

        v38 = *(v19 + 2);
        v37 = *(v19 + 3);
        if (v38 >= v37 >> 1)
        {
          v19 = sub_1D69940A8((v37 > 1), v38 + 1, 1, v19);
        }

        (*v47)(v13, v9);
        *(v19 + 2) = v38 + 1;
        *&v19[8 * v38 + 32] = v34;
      }

      else
      {
LABEL_3:
        (*v47)(v13, v9);
      }
    }

    v3 = v46;
LABEL_5:
    v20 = sub_1D726279C();
    v17 = v48;
    v10 = v49;
    if (v18 == v20)
    {
      goto LABEL_40;
    }
  }

  result = sub_1D7263DBC();
  if (v43 != 8)
  {
    goto LABEL_45;
  }

  v58 = result;
  (*v51)(v17, &v58, v9);
  result = swift_unknownObjectRelease();
  v23 = __OFADD__(v18++, 1);
  if (!v23)
  {
    goto LABEL_8;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1D5D1E4C0()
{

  return swift_deallocObject();
}

void sub_1D5D1E4F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5D1E54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v30 = a2;
  v32 = a1;
  v33 = a3;
  v4 = *v3;
  sub_1D5D1E4F8(0, &qword_1EDF11E38, type metadata accessor for FormatContent.Resolved);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for FormatContent.Resolved();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v29 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 96);
  v31 = *(v13 + 8);
  v28 = v3;
  swift_getAssociatedTypeWitness();
  v14 = v32;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31(AssociatedTypeWitness, v13);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_1D5D1F0C4(v8, &qword_1EDF11E38, type metadata accessor for FormatContent.Resolved);
LABEL_6:
    v26 = 0xF000000000000007;
    goto LABEL_7;
  }

  v17 = v29;
  v18 = sub_1D5D1E8C4(v8, v29);
  MEMORY[0x1EEE9AC00](v18, v19);
  *(&v27 - 4) = v28;
  *(&v27 - 3) = v14;
  *(&v27 - 2) = v30;
  MEMORY[0x1EEE9AC00](v20, v21);
  *(&v27 - 4) = v17;
  *(&v27 - 3) = sub_1D68651A0;
  *(&v27 - 2) = v22;
  v24 = sub_1D5D1ED48(sub_1D5D1F024, (&v27 - 6), v23);
  v25 = *(v24 + 2);
  sub_1D5CED730(v17, type metadata accessor for FormatContent.Resolved);
  if (!v25)
  {

    goto LABEL_6;
  }

  result = swift_allocObject();
  *(result + 16) = v24;
  v26 = result | 0x8000000000000000;
LABEL_7:
  *v33 = v26;
  return result;
}

uint64_t sub_1D5D1E88C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D1E8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContent.Resolved();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D1E934(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D5CEBE6C(result, v10, 1, v3, &qword_1EDF19898, &type metadata for FormatContentSlot.Resolved);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D5D1EA38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D1EA98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D1EAF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D1EB58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D1EBB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D1EC18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D1EC78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D1ECD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B5AB88(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_1D5D1ED48(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6[1];
    v9 = v6[3];
    v27 = v6[2];
    v28 = v9;
    v10 = v6[3];
    v29 = v6[4];
    v11 = v6[1];
    v26[0] = *v6;
    v26[1] = v11;
    v23 = v27;
    v24 = v10;
    v25 = v6[4];
    v21 = v26[0];
    v22 = v8;
    sub_1D5CE9930(v26, &v16);
    a1(&v30, &v21);
    if (v3)
    {
      break;
    }

    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    sub_1D5CEC67C(&v16);
    v12 = v30;
    if ((~v30 & 0xF000000000000007) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D69940A8(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        v7 = sub_1D69940A8((v13 > 1), v14 + 1, 1, v7);
      }

      *(v7 + 2) = v14 + 1;
      *&v7[8 * v14 + 32] = v12;
    }

    else
    {
      sub_1D5D1F044(v30);
    }

    v6 += 5;
    if (!--v4)
    {
      return v7;
    }
  }

  v18 = v23;
  v19 = v24;
  v20 = v25;
  v16 = v21;
  v17 = v22;
  sub_1D5CEC67C(&v16);

  return v7;
}

void sub_1D5D1EEF8(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for FormatContent.Resolved();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 32);
  if (v10 < 0)
  {
    v11 = *(a1 + 72);
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v14 = *a1;
    v15 = v13;
    v16 = v12;
    v17 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    v20 = v11;
    sub_1D698AB28(&v14, v9);
    a2(v9, v13, v12);
    sub_1D5CED730(v9, type metadata accessor for FormatContent.Resolved);
  }

  else
  {
    *a3 = 0xF000000000000007;
  }
}

uint64_t sub_1D5D1F044(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1D5D1F0C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5D1E4F8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D5D1F120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5D1F184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for FeedPluginManagerResult();
  *a3 = sub_1D5D1F218(a2, v5);
}

uint64_t sub_1D5D1F218(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FeedPluginManagerResult.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FeedCursorContainer.feedMode.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = &v15 - v11;
  FeedCursorContainer.serviceContext.getter(a1, a2, a3, &v15 - v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  FeedServiceContextType.feedMode.getter(AssociatedTypeWitness, AssociatedConformanceWitness, a4);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t FeedModeState.description.getter()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 > 1)
  {
    if (v2 == 2)
    {
      sub_1D7263D4C();

      v3 = 0x456D726177657270;
    }

    else
    {
      sub_1D7263D4C();

      v3 = 0x724564616F6C6572;
    }
  }

  else if (v2)
  {
    v3 = 0x7269736544746F6ELL;
  }

  else
  {
    v3 = 0x2064657269736564;
  }

  v6 = v3;
  if (v1)
  {
    v4 = 0x656E696C66666FLL;
  }

  else
  {
    v4 = 0x746C7561666564;
  }

  MEMORY[0x1DA6F9910](v4, 0xE700000000000000);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return v6;
}

uint64_t FeedCursorContainer.identifier.getter(uint64_t a1)
{
  v1 = sub_1D5BFB900(a1);

  return v1;
}

uint64_t sub_1D5D1F618()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FormatContent.Resolved.subgroups.getter()
{
  type metadata accessor for FormatContent.Resolved();
}

uint64_t FormatContentSubgroup.ResolvedContainer.identifier.getter()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v2 = v0[3];
  v6[2] = v0[2];
  v6[3] = v2;
  v6[4] = v0[4];
  v3 = *&v6[0];
  sub_1D5CE9930(v6, &v5);

  return v3;
}

uint64_t FormatContentSubgroup.ResolvedContainer.contents.getter()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v2 = v0[3];
  v6[2] = v0[2];
  v6[3] = v2;
  v6[4] = v0[4];
  v3 = *(&v2 + 1);
  sub_1D5CE9930(v6, &v5);

  return v3;
}

uint64_t FeedModelFactory.create(headline:context:namespace:nativeAdInfo:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;

  v14 = [a1 identifier];
  v15 = sub_1D726207C();
  v17 = v16;

  *(v13 + 48) = v15;
  *(v13 + 56) = v17;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v12, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v18 = sub_1D7261F3C();
  v20 = v19;

  sub_1D5D1FA14(v18, v20, a1, a2, a5, a6);

  sub_1D5D211DC();
  v22 = v21;
  result = sub_1D5BD81F0(a2, a6 + *(v21 + 52), type metadata accessor for FeedContext);
  v24 = (a6 + *(v22 + 56));
  *v24 = 0;
  v24[1] = 0;
  v25 = (a6 + *(v22 + 64));
  *v25 = sub_1D5C00104;
  v25[1] = 0;
  return result;
}

uint64_t sub_1D5D1FA14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a5;
  v44 = a1;
  v45 = a2;
  sub_1D5B49960(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v47 = &v43 - v11;
  v12 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v43 - v18;
  sub_1D5D1FEE4(a3, a4, &v43 - v18);
  sub_1D5D20C8C(a3, a4, &v48);
  v20 = v48;
  v21 = type metadata accessor for FeedContext();
  v22 = *(a4 + *(v21 + 36));
  v46 = v19;
  if (v22 == 1)
  {
    swift_unknownObjectRetain();
    v23 = 1;
  }

  else
  {
    v24 = v21;
    v25 = v19[v12[8]];
    v26 = *a4;
    swift_unknownObjectRetain();
    v27 = [v26 containsHeadline_];
    v23 = v27;
    if (v27 && !v25)
    {
      v23 = *(a4 + *(v24 + 32));
    }
  }

  swift_getObjectType();
  v28 = v47;
  sub_1D5BC7A6C(v43, v47);
  sub_1D5D20F80(v46, v15);
  v29 = type metadata accessor for FeedHeadline(0);
  *(a6 + v29[12]) = xmmword_1D727C330;
  v30 = v45;
  *a6 = v44;
  *(a6 + 8) = v30;
  *(a6 + 40) = a3;
  *(a6 + 48) = a3;
  sub_1D5BC7A6C(v28, a6 + v29[11]);
  sub_1D5D20F80(v15, a6 + v29[10]);
  *(a6 + v29[14]) = v20;
  *(a6 + 56) = v23;
  v44 = v20;
  swift_unknownObjectRetain();

  v31 = [a3 title];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 ne_isNaturallyRTL];

    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  *(a6 + 16) = v34;
  *(a6 + 24) = 0;
  sub_1D5BC7BD4(&v48);
  if (v15[v12[8]] - 1 <= 1 && (v48 & 0x1000) == 0)
  {
    v48 |= 0x1000uLL;
  }

  v35 = v12[10];
  v36 = v48;
  v37 = 0x80000000;
  if (!v15[v35])
  {
    v37 = 0x100000000;
  }

  if ((v48 & v37) != 0)
  {
    v37 = 0;
  }

  v38 = v48 | v37;
  if (v20)
  {

    v38 |= ~v36 & 0x200000;
  }

  v39 = v46;
  *(a6 + 32) = v38;
  if (v15[v12[7]])
  {
    if (v15[v12[9]])
    {
      sub_1D5D21134(v15, type metadata accessor for FeedHeadline.State);
      sub_1D5D2079C(v47, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      result = sub_1D5D21134(v39, type metadata accessor for FeedHeadline.State);
      v41 = 1;
    }

    else if (v15[v35] == 1)
    {
      v42 = [a3 sourceChannel];
      sub_1D5D21134(v15, type metadata accessor for FeedHeadline.State);
      sub_1D5D2079C(v47, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      result = sub_1D5D21134(v39, type metadata accessor for FeedHeadline.State);
      v41 = 2;
      if (v42)
      {
        v41 = v42;
      }
    }

    else
    {
      sub_1D5D21134(v15, type metadata accessor for FeedHeadline.State);
      sub_1D5D2079C(v47, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      result = sub_1D5D21134(v39, type metadata accessor for FeedHeadline.State);
      v41 = 2;
    }
  }

  else
  {
    sub_1D5D21134(v15, type metadata accessor for FeedHeadline.State);
    sub_1D5D2079C(v47, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
    result = sub_1D5D21134(v39, type metadata accessor for FeedHeadline.State);
    v41 = 0;
  }

  *(a6 + v29[13]) = v41;
  return result;
}

uint64_t sub_1D5D1FEE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v27 = a2;
  v6 = type metadata accessor for FeedItem.SharedState(0);
  *&v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7).n128_u64[0];
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 16);
  v12 = [a1 articleID];
  if (!v12)
  {
    sub_1D726207C();
    v12 = sub_1D726203C();
  }

  v13 = [v11 likingStatusForArticleID_];

  v14 = *(v3 + 24);
  v15 = [a1 articleID];
  if (!v15)
  {
    sub_1D726207C();
    v15 = sub_1D726203C();
  }

  v16 = [v14 isArticleOnReadingList_];

  sub_1D5D20174(a1, v10);
  v17 = [a1 articleID];
  if (!v17)
  {
    sub_1D726207C();
    v17 = sub_1D726203C();
  }

  v18 = [v11 hasArticleBeenMarkedAsOffensive_];

  v19 = [v14 shouldHideHeadline_];
  v20 = [a1 sourceChannelID];
  if (v20)
  {
    v21 = v20;
    v22 = [*(v3 + 32) hasMutedSubscriptionForTagID_];
  }

  else
  {
    v22 = 0;
  }

  if (v13 >= 3)
  {
    v23 = 2;
  }

  else
  {
    v23 = 0x10002u >> (8 * v13);
  }

  sub_1D5D2080C(a1, &v28);
  v24 = v28;
  *a3 = v23;
  a3[1] = v16 ^ 1;
  v25 = type metadata accessor for FeedHeadline.State(0);
  result = sub_1D5BE318C(v10, &a3[v25[6]], type metadata accessor for FeedItem.SharedState);
  a3[v25[7]] = v18 ^ 1;
  a3[v25[8]] = v24;
  a3[v25[9]] = v19;
  a3[v25[10]] = v22;
  return result;
}

uint64_t sub_1D5D20174@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B49960(0, &qword_1EDF343E0, type metadata accessor for SharedItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v19 - v7;
  v9 = v2[9];
  v10 = v2[10];
  __swift_project_boxed_opaque_existential_1(v2 + 6, v9);
  v11 = [a1 articleID];
  v12 = sub_1D726207C();
  v14 = v13;

  (*(v10 + 32))(v12, v14, v9, v10);

  v15 = type metadata accessor for SharedItem();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_1D5D2079C(v8, &qword_1EDF343E0, type metadata accessor for SharedItem);
    v17 = 1;
  }

  else
  {
    sub_1D5BE318C(v8, a2, type metadata accessor for SharedItem);
    v17 = 0;
  }

  return (*(v16 + 56))(a2, v17, 1, v15);
}

uint64_t sub_1D5D2035C()
{
  sub_1D725A7BC();
  sub_1D5D20438(0, &qword_1EDF343E0, type metadata accessor for SharedItem, MEMORY[0x1E69E6720]);

  sub_1D725B7CC();
}

void sub_1D5D20438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5D204AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_itemsByArticleID;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16) && (v10 = sub_1D5B69D90(a2, a3), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = type metadata accessor for SharedItem();
    v15 = *(v14 - 8);
    sub_1D673DB70(v13 + *(v15 + 72) * v12, a4, type metadata accessor for SharedItem);
    (*(v15 + 56))(a4, 0, 1, v14);
  }

  else
  {
    v16 = type metadata accessor for SharedItem();
    (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
  }

  return swift_endAccess();
}

uint64_t sub_1D5D2060C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5D20438(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D2067C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D206DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D5D2073C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2079C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B49960(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D2080C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 40);
  v6 = [a1 isPaid];
  if ([a1 respondsToSelector_])
  {
    v7 = [a1 isBundlePaid];
  }

  else
  {
    v7 = 0;
  }

  v8 = &off_1E84D3000;
  v9 = [a1 sourceChannel];
  if (v9)
  {
    v10 = [v9 identifier];
    swift_unknownObjectRelease();
    v11 = sub_1D726207C();
    v13 = v12;

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v11 = 0;
  v13 = 0;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_6:
  v14 = [v5 purchaseProvider];
  if (v13)
  {
    v15 = [v14 purchasedTagIDs];
    v16 = sub_1D7262B0C();

    LOBYTE(v15) = sub_1D5BE240C(v11, v13, v16);

    swift_unknownObjectRelease();
    if ((v15 & 1) == 0)
    {
      if (!v7)
      {
        goto LABEL_34;
      }

      goto LABEL_15;
    }

LABEL_12:

LABEL_13:
    v18 = 0;
    goto LABEL_40;
  }

  swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_34;
  }

LABEL_15:
  if (!v13)
  {
    goto LABEL_37;
  }

  v19 = [objc_msgSend(v5 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v19, v19 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (!*(&v32 + 1))
  {
    sub_1D5D21134(&v33, sub_1D5BE1404);
    goto LABEL_24;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v20 = 0;
    v22 = 0;
    goto LABEL_25;
  }

  v20 = v30;
  v21 = [v30 integerValue];
  if (v21 == -1)
  {

    v8 = &off_1E84D3000;
    goto LABEL_36;
  }

  v22 = v21;
LABEL_25:
  if (objc_getAssociatedObject(v19, ~v22))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (!*(&v32 + 1))
  {
    sub_1D5D21134(&v33, sub_1D5BE1404);
LABEL_33:

    v8 = &off_1E84D3000;
    if (v22)
    {
      goto LABEL_36;
    }

LABEL_34:

    goto LABEL_37;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v23 = v30;
  v24 = [v23 integerValue];

  v25 = v24 ^ v22;
  v8 = &off_1E84D3000;
  if ((v25 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_36:
  v26 = [objc_msgSend(v5 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v27 = [v26 bundleChannelIDs];

  v28 = sub_1D726203C();
  LOBYTE(v26) = [v27 containsObject_];

  if (v26)
  {
    goto LABEL_13;
  }

LABEL_37:
  v29 = [v5 canGetBundleSubscriptionToChannel_];
  result = swift_unknownObjectRelease();
  if (v29)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

LABEL_40:
  *a2 = v18;
  return result;
}

id sub_1D5D20C8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + *(type metadata accessor for FeedContext() + 24)) == 1)
  {
    if ([a1 respondsToSelector_])
    {
      result = [a1 narrativeTrack];
      if (result)
      {
        goto LABEL_15;
      }
    }

    if ([a1 respondsToSelector_])
    {
      result = [a1 narrativeTrackSample];
      if (result)
      {
        v6 = result;
        if (qword_1EDF1BB50 == -1)
        {
          goto LABEL_13;
        }

        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  if ([a1 respondsToSelector_])
  {
    result = [a1 narrativeTrackSample];
    if (result)
    {
      goto LABEL_15;
    }
  }

  if (([a1 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_14;
  }

  result = [a1 narrativeTrack];
  if (result)
  {
    v6 = result;
    if (qword_1EDF1BB50 == -1)
    {
LABEL_13:
      sub_1D7262EBC();
      sub_1D5B49960(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1D7273AE0;
      *(v7 + 56) = sub_1D5B5A498(0, &qword_1EDF1A9B0);
      *(v7 + 64) = sub_1D7100598();
      *(v7 + 32) = v6;
      v8 = v6;
      sub_1D725C30C();

      goto LABEL_14;
    }

LABEL_16:
    swift_once();
    goto LABEL_13;
  }

LABEL_15:
  *a3 = result;
  return result;
}

uint64_t sub_1D5D20F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedHeadline.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D21134(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D21194(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5D211DC()
{
  if (!qword_1EDF12FE8)
  {
    type metadata accessor for FeedHeadline(255);
    sub_1D5D21194(&unk_1EDF34AD8, type metadata accessor for FeedHeadline);
    sub_1D5D21194(&qword_1EDF34AE8, type metadata accessor for FeedHeadline);
    v0 = type metadata accessor for FeedModel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF12FE8);
    }
  }
}

unint64_t Blueprint.storedCursorContainer<A>(type:)()
{
  if (qword_1EDF37050 != -1)
  {
    swift_once();
  }

  sub_1D725FA8C();
  if (v5)
  {
    type metadata accessor for FeedCursorToken();
    if (swift_dynamicCast())
    {
      v0 = v3;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    sub_1D5EBD03C(v4);
    v0 = 0;
  }

  v1 = FeedCursorStoreManager.get<A>(token:)(v0);

  return v1;
}

unint64_t FeedCursorStoreManager.get<A>(token:)(uint64_t a1)
{
  if (!a1)
  {
    return 0xF000000000000007;
  }

  sub_1D725A76C();
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (v2 >> 62)
  {
    goto LABEL_25;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4 = 0xF000000000000007;
  while (v3)
  {

    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v5, v2);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        goto LABEL_13;
      }

      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

LABEL_13:
      if (swift_unknownObjectWeakLoadStrong())
      {
        type metadata accessor for FeedCursorStore();
        if (swift_dynamicCastClass())
        {
          v7 = _s8NewsFeed0B11CursorStoreC3get5tokenAA0bC9ContainerOyxGSgAA0bC5TokenC_tF_0();

          swift_unknownObjectRelease();
          if ((~v7 & 0xF000000000000007) != 0)
          {
            v4 = v7;
LABEL_20:

            goto LABEL_21;
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      ++v5;
      if (v6 == v3)
      {
        v4 = 0xF000000000000007;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v3 = sub_1D7263BFC();
    v4 = 0xF000000000000007;
  }

LABEL_21:
  sub_1D725A77C();

  return v4;
}

unint64_t _s8NewsFeed0B11CursorStoreC3get5tokenAA0bC9ContainerOyxGSgAA0bC5TokenC_tF_0()
{
  sub_1D725A76C();
  swift_beginAccess();
  type metadata accessor for FeedCursorContainer();

  sub_1D7261E3C();

  v0 = v3;
  swift_endAccess();
  if ((~v3 & 0xF000000000000007) == 0)
  {
    swift_beginAccess();
    type metadata accessor for FeedCursorStore.WeakCursorContainer();

    sub_1D7261E3C();

    swift_endAccess();
    if (v2)
    {
      v0 = sub_1D6125AFC();
    }

    else
    {
      v0 = 0xF000000000000007;
    }
  }

  sub_1D725A77C();
  return v0;
}

uint64_t sub_1D5D217C0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x656E696C66666FLL;
  }

  else
  {
    v2 = 0x746C7561666564;
  }

  if (*a2)
  {
    v3 = 0x656E696C66666FLL;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D5D21854@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  [a1 possiblyUnfetchedAppConfiguration];
  swift_getAtKeyPath();
  result = swift_unknownObjectRelease();
  v4 = v5;
  if (v6)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t FormatContent.Resolved.publishDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormatContent.Resolved() + 20);
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FormatFeedGroup.kindIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatFeedGroup() + 24));

  return v1;
}

uint64_t FormatContent.Resolved.headlinesIncludingAuxiliaries.getter()
{
  v0 = FormatContent.Resolved.slots.getter();
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v0 + 32);
    while (v4 < *(v1 + 16))
    {
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[3];
      v20[2] = v5[2];
      v20[3] = v8;
      v20[0] = v6;
      v20[1] = v7;
      v9 = v5[1];
      v16 = *v5;
      v17 = v9;
      v10 = v5[3];
      v18 = v5[2];
      v19 = v10;
      sub_1D5CB6F58(v20, &v12);
      sub_1D5D21CA0(&v21, &v16);
      ++v4;
      v12 = v16;
      v13 = v17;
      v14 = v18;
      v15 = v19;
      sub_1D5CB6FB4(&v12);
      v5 += 4;
      if (v3 == v4)
      {
        v2 = v21;
        goto LABEL_6;
      }
    }

    __break(1u);

    v12 = v16;
    v13 = v17;
    v14 = v18;
    v15 = v19;
    sub_1D5CB6FB4(&v12);

    __break(1u);
  }

  else
  {
LABEL_6:

    return v2;
  }

  return result;
}

uint64_t FormatContent.Resolved.slots.getter()
{
  result = type metadata accessor for FormatContent.Resolved();
  v2 = *(v0 + *(result + 36));
  v19 = *(v2 + 16);
  if (!v19)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v4 = (v2 + 32);
  v5 = MEMORY[0x1E69E7CC0];
  v18 = v2;
  while (v3 < *(v2 + 16))
  {
    v21[0] = *v4;
    v7 = v4[3];
    v6 = v4[4];
    v8 = v4[2];
    v21[1] = v4[1];
    v21[2] = v8;
    v21[3] = v7;
    v21[4] = v6;
    v9 = *(&v7 + 1);
    sub_1D5CE9930(v21, v20);

    v10 = *(v9 + 16);
    v11 = *(v5 + 16);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      goto LABEL_22;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v13 = *(v5 + 24) >> 1, v13 >= v12))
    {
      if (*(v9 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v14 = v11 + v10;
      }

      else
      {
        v14 = v11;
      }

      result = sub_1D5CEBE6C(result, v14, 1, v5, &qword_1EDF19898, &type metadata for FormatContentSlot.Resolved);
      v5 = result;
      v13 = *(result + 24) >> 1;
      if (*(v9 + 16))
      {
LABEL_15:
        if (v13 - *(v5 + 16) < v10)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v15 = *(v5 + 16);
          v16 = __OFADD__(v15, v10);
          v17 = v15 + v10;
          if (v16)
          {
            goto LABEL_25;
          }

          *(v5 + 16) = v17;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v3;
    v4 += 5;
    v2 = v18;
    if (v19 == v3)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1D5D21CA0(void *a1, uint64_t a2)
{
  v103 = a1;
  v3 = type metadata accessor for FormatContentSlotItemResolution();
  v88 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatCustomItem.Resolved();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v87 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v86 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5D160(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v91 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v84 - v18;
  v93 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v93, v20);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v85 = &v84 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v84 - v28;
  v105 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  v98 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v30);
  v32 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v84 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v84 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v102 = &v84 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v106 = &v84 - v46;
  v99 = *(a2 + 32);
  v97 = *(v99 + 16);
  if (v97)
  {
    v47 = 0;
    v48 = *(v98 + 80);
    v100 = *(a2 + 56);
    v94 = v29;
    v95 = v99 + ((v48 + 32) & ~v48);
    v92 = v6;
    v89 = v19;
    v90 = v22;
    v96 = v40;
    do
    {
      if (v47 >= *(v99 + 16))
      {
        __break(1u);
        return;
      }

      v101 = v47 + 1;
      v49 = v106;
      sub_1D5CEB5E0(v95 + *(v98 + 72) * v47, v106, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5CEB5E0(v49, v102, type metadata accessor for FormatContentSlotItemObject.Resolved);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (((1 << EnumCaseMultiPayload) & 0x3F6) != 0)
      {
        sub_1D5CEB140(v102, type metadata accessor for FormatContentSlotItemObject.Resolved);
        goto LABEL_8;
      }

      if (EnumCaseMultiPayload)
      {
        sub_1D5CEB3E0(v102, v29, type metadata accessor for FormatWebEmbed.Resolved);
        sub_1D5CEB5E0(&v29[*(v93 + 36)], v19, sub_1D5B5D160);
        sub_1D5B5D194();
        v80 = v79;
        v81 = *(v79 - 8);
        if ((*(v81 + 48))(v19, 1, v79) == 1)
        {
          sub_1D5CEB140(v29, type metadata accessor for FormatWebEmbed.Resolved);
          sub_1D5CEB140(v19, sub_1D5B5D160);
          v6 = v92;
          goto LABEL_8;
        }

        sub_1D725BF7C();
        sub_1D5CEB140(v29, type metadata accessor for FormatWebEmbed.Resolved);
        (*(v81 + 8))(v19, v80);
        v6 = v92;
      }

      v82 = swift_unknownObjectRetain();
      v83 = v103;
      MEMORY[0x1DA6F9CE0](v82);
      if (*((*v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
        v6 = v92;
      }

      sub_1D726278C();
      swift_unknownObjectRelease();
      v19 = v89;
LABEL_8:
      sub_1D5CEB5E0(v106, v40, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v51 = swift_getEnumCaseMultiPayload();
      if (v51 > 4)
      {
        if (v51 <= 6)
        {
          if (v51 == 5)
          {
            goto LABEL_24;
          }

          v56 = v86;
          sub_1D5CEB3E0(v40, v86, type metadata accessor for PuzzleStatistic);
          v53 = PuzzleStatistic.identifier.getter();
          v104 = v62;
          v57 = type metadata accessor for PuzzleStatistic;
        }

        else
        {
          if (v51 == 7)
          {
            goto LABEL_26;
          }

          if (v51 != 8)
          {
            v53 = *v40;
            v104 = *(v40 + 1);
            goto LABEL_31;
          }

          v56 = v87;
          sub_1D5CEB3E0(v40, v87, type metadata accessor for FormatCustomItem.Resolved);
          v53 = *v56;
          v104 = *(v56 + 8);

          v57 = type metadata accessor for FormatCustomItem.Resolved;
        }

        v54 = v57;
        v55 = v56;
        v19 = v89;
      }

      else
      {
        if (v51 <= 1)
        {
          if (v51)
          {
LABEL_26:
            v60 = *v40;
            v58 = [*v40 identifier];
            v53 = sub_1D726207C();
            v104 = v61;
          }

          else
          {
LABEL_24:
            v58 = [*v40 identifier];
            v53 = sub_1D726207C();
            v104 = v59;
            swift_unknownObjectRelease();
          }

          v29 = v94;
          goto LABEL_31;
        }

        if (v51 != 3)
        {
          goto LABEL_24;
        }

        v52 = v85;
        sub_1D5CEB3E0(v40, v85, type metadata accessor for FormatWebEmbed.Resolved);
        v53 = *v52;
        v104 = *(v52 + 8);

        v54 = type metadata accessor for FormatWebEmbed.Resolved;
        v55 = v52;
      }

      sub_1D5CEB140(v55, v54);
LABEL_31:
      if (!*(v100 + 16))
      {
        goto LABEL_3;
      }

      v63 = sub_1D5B69D90(v53, v104);
      v65 = v64;

      if (v65)
      {
        v66 = *(*(v100 + 56) + 16 * v63);
        v67 = *(v66 + 16);
        if (v67)
        {
          v68 = v88;
          v69 = v66 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
          v104 = *(*(v100 + 56) + 16 * v63);

          v70 = *(v68 + 72);
          while (1)
          {
            sub_1D5CEB5E0(v69, v6, type metadata accessor for FormatContentSlotItemResolution);
            sub_1D5CEB5E0(v6, v36, type metadata accessor for FormatContentSlotItemObject.Resolved);
            sub_1D5CEB140(v6, type metadata accessor for FormatContentSlotItemResolution);
            sub_1D5CEB5E0(v36, v32, type metadata accessor for FormatContentSlotItemObject.Resolved);
            v71 = swift_getEnumCaseMultiPayload();
            if (((1 << v71) & 0x3F6) != 0)
            {
              sub_1D5CEB140(v36, type metadata accessor for FormatContentSlotItemObject.Resolved);
              sub_1D5CEB140(v32, type metadata accessor for FormatContentSlotItemObject.Resolved);
            }

            else
            {
              if (!v71)
              {
                sub_1D5CEB140(v36, type metadata accessor for FormatContentSlotItemObject.Resolved);
LABEL_43:
                v77 = swift_unknownObjectRetain();
                v78 = v103;
                MEMORY[0x1DA6F9CE0](v77);
                if (*((*v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1D726272C();
                  v6 = v92;
                }

                sub_1D726278C();
                swift_unknownObjectRelease();
                goto LABEL_36;
              }

              v72 = v90;
              sub_1D5CEB3E0(v32, v90, type metadata accessor for FormatWebEmbed.Resolved);
              v73 = v91;
              sub_1D5CEB5E0(v72 + *(v93 + 36), v91, sub_1D5B5D160);
              sub_1D5B5D194();
              v75 = v74;
              v76 = *(v74 - 8);
              if ((*(v76 + 48))(v73, 1, v74) != 1)
              {
                sub_1D725BF7C();
                sub_1D5CEB140(v72, type metadata accessor for FormatWebEmbed.Resolved);
                sub_1D5CEB140(v36, type metadata accessor for FormatContentSlotItemObject.Resolved);
                (*(v76 + 8))(v73, v75);
                v6 = v92;
                goto LABEL_43;
              }

              sub_1D5CEB140(v72, type metadata accessor for FormatWebEmbed.Resolved);
              sub_1D5CEB140(v36, type metadata accessor for FormatContentSlotItemObject.Resolved);
              sub_1D5CEB140(v73, sub_1D5B5D160);
              v6 = v92;
            }

LABEL_36:
            v69 += v70;
            if (!--v67)
            {
              v19 = v89;
              v29 = v94;
LABEL_3:

              break;
            }
          }
        }
      }

      sub_1D5CEB140(v106, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v40 = v96;
      v47 = v101;
    }

    while (v101 != v97);
  }
}

uint64_t sub_1D5D228D4(uint64_t a1)
{
  v2 = v1;
  v33 = *(a1 + 16);
  if (!v33)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v32 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = (v32 + 80 * v3);
    v7 = v6[1];
    v40[0] = *v6;
    v40[1] = v7;
    v8 = v6[4];
    *&v41[16] = v6[3];
    *&v41[32] = v8;
    *v41 = v6[2];
    v38[1] = v7;
    *&v39[8] = *&v41[8];
    *&v39[24] = *&v41[24];
    *v39 = *v41 & 0x7FFFFFFFFFFFFFFFLL;
    *&v39[40] = *(&v8 + 1);
    v37[2] = *v39;
    v37[3] = *&v39[16];
    v37[4] = *&v39[32];
    v38[0] = v40[0];
    v37[0] = v40[0];
    v37[1] = v7;
    sub_1D5CE9930(v40, v36);
    sub_1D5CE9930(v40, v36);
    sub_1D5CE9930(v40, v36);
    sub_1D5CEBCF0();
    v9 = v2;
    v11 = sub_1D5D22C80(v10);
    sub_1D5CB71DC(v38);

    sub_1D5CEC67C(v40);
    sub_1D5CEC67C(v40);
    v12 = v11 >> 62;
    if (v11 >> 62)
    {
      v13 = sub_1D7263BFC();
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v4 >> 62;
    if (v4 >> 62)
    {
      v30 = sub_1D7263BFC();
      v16 = v30 + v13;
      if (__OFADD__(v30, v13))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 + v13;
      if (__OFADD__(v15, v13))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v42 = v13;
    if (result)
    {
      if (!v14)
      {
        v17 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v14)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D7263DDC();
    v4 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v12)
    {
      break;
    }

    v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v19 >> 1) - v18) < v42)
    {
      goto LABEL_36;
    }

    v34 = v3;
    v35 = v4;
    v22 = v17 + 8 * v18 + 32;
    v31 = v17;
    if (v12)
    {
      if (v20 < 1)
      {
        goto LABEL_38;
      }

      sub_1D5B90088();
      sub_1D5B85F48(&qword_1EC88F470, sub_1D5B90088);
      for (i = 0; i != v20; ++i)
      {
        v24 = sub_1D6D877E0(v37, i, v11);
        v26 = *v25;
        (v24)(v37, 0);
        *(v22 + 8 * i) = v26;
      }
    }

    else
    {
      sub_1D5B5A498(0, &qword_1EDF3C6C0);
      swift_arrayInitWithCopy();
    }

    v4 = v35;
    v2 = v9;
    v3 = v34;
    if (v42 >= 1)
    {
      v27 = *(v31 + 16);
      v28 = __OFADD__(v27, v42);
      v29 = v27 + v42;
      if (v28)
      {
        goto LABEL_37;
      }

      *(v31 + 16) = v29;
    }

LABEL_4:
    if (++v3 == v33)
    {
      return v4;
    }
  }

  v21 = v17;
  result = sub_1D7263BFC();
  v17 = v21;
  v20 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v42 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D5D22C80(uint64_t a1)
{
  v2 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  v43 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v42 - v8;
  v10 = MEMORY[0x1E69E7CC0];
  v46 = *(a1 + 16);
  if (!v46)
  {
    return v10;
  }

  v11 = 0;
  v45 = a1 + 32;
  result = MEMORY[0x1E69E7CC0];
  v42[2] = v2;
  while (1)
  {
    v49 = result;
    v50[0] = v10;
    v47 = v11;
    v14 = *(v45 + (v11 << 6) + 32);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v17 = *(v43 + 72);
      v18 = v10;
      do
      {
        sub_1D5CED2F0(v16, v9);
        sub_1D5CED2F0(v9, v5);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v19 = sub_1D5CED354(v9);
          MEMORY[0x1DA6F9CE0](v19);
          if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
            v10 = MEMORY[0x1E69E7CC0];
          }

          sub_1D726278C();
          v18 = v50[0];
        }

        else
        {
          sub_1D5CED354(v5);
          sub_1D5CED354(v9);
        }

        v16 += v17;
        --v15;
      }

      while (v15);
    }

    else
    {
      v18 = v10;
    }

    v20 = v18 >> 62;
    v21 = v49;
    if (v18 >> 62)
    {
      v22 = sub_1D7263BFC();
    }

    else
    {
      v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v21 >> 62;
    v51 = v18;
    if (v21 >> 62)
    {
      v41 = sub_1D7263BFC();
      v25 = v41 + v22;
      if (__OFADD__(v41, v22))
      {
LABEL_41:
        __break(1u);
        return v10;
      }
    }

    else
    {
      v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v24 + v22;
      if (__OFADD__(v24, v22))
      {
        goto LABEL_41;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v23)
      {
        v26 = v21 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_1D7263BFC();
      goto LABEL_24;
    }

    if (v23)
    {
      goto LABEL_23;
    }

LABEL_24:
    result = sub_1D7263DDC();
    v21 = result;
    v26 = result & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v48 = v22;
    v49 = v21;
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v20)
    {
      break;
    }

    v29 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_3;
    }

LABEL_29:
    if (((v28 >> 1) - v27) < v48)
    {
      goto LABEL_45;
    }

    v31 = v26 + 8 * v27 + 32;
    v44 = v26;
    if (v20)
    {
      v32 = v51;
      if (v29 < 1)
      {
        goto LABEL_47;
      }

      sub_1D6D5BC7C(0, &qword_1EDF1AE40, &qword_1EDF3C6C0, 0x1E69B5348, sub_1D5B5A498);
      sub_1D6D5BDE0();
      v33 = v32;
      for (i = 0; i != v29; ++i)
      {
        v35 = sub_1D6D877E0(v50, i, v33);
        v37 = *v36;
        (v35)(v50, 0);
        *(v31 + 8 * i) = v37;
        v33 = v51;
      }
    }

    else
    {
      sub_1D5B5A498(0, &qword_1EDF3C6C0);
      swift_arrayInitWithCopy();
    }

    v13 = v47;
    v10 = MEMORY[0x1E69E7CC0];
    result = v49;
    if (v48 >= 1)
    {
      v38 = *(v44 + 16);
      v39 = __OFADD__(v38, v48);
      v40 = v38 + v48;
      if (v39)
      {
        goto LABEL_46;
      }

      *(v44 + 16) = v40;
    }

LABEL_4:
    v11 = v13 + 1;
    if (v11 == v46)
    {
      return result;
    }
  }

  v30 = v26;
  result = sub_1D7263BFC();
  v26 = v30;
  v29 = result;
  if (result)
  {
    goto LABEL_29;
  }

LABEL_3:

  v13 = v47;
  result = v49;
  if (v48 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1D5D23120(uint64_t a1)
{
  v2 = v1;
  v29 = *(a1 + 16);
  if (!v29)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v28 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = (v28 + 80 * v3);
    v7 = v6[1];
    v35[0] = *v6;
    v35[1] = v7;
    v8 = v6[4];
    *&v36[16] = v6[3];
    *&v36[32] = v8;
    *v36 = v6[2];
    v33[1] = v7;
    *&v34[8] = *&v36[8];
    *&v34[24] = *&v36[24];
    *v34 = *v36 & 0x7FFFFFFFFFFFFFFFLL;
    *&v34[40] = *(&v8 + 1);
    v32[2] = *v34;
    v32[3] = *&v34[16];
    v32[4] = *&v34[32];
    v33[0] = v35[0];
    v32[0] = v35[0];
    v32[1] = v7;
    sub_1D5CE9930(v35, v31);
    sub_1D5CE9930(v35, v31);
    sub_1D5CE9930(v35, v31);
    sub_1D5CEBCF0();
    v10 = sub_1D5D234BC(v9);
    sub_1D5CB71DC(v33);

    sub_1D5CEC67C(v35);
    sub_1D5CEC67C(v35);
    v11 = v10 >> 62;
    if (v10 >> 62)
    {
      v12 = sub_1D7263BFC();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v4 >> 62;
    if (v4 >> 62)
    {
      v27 = sub_1D7263BFC();
      v15 = v27 + v12;
      if (__OFADD__(v27, v12))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v14 + v12;
      if (__OFADD__(v14, v12))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v37 = v12;
    if (result)
    {
      if (!v13)
      {
        v16 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v15 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v13)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D7263DDC();
    v4 = result;
    v16 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v11)
    {
      break;
    }

    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v18 >> 1) - v17) < v37)
    {
      goto LABEL_36;
    }

    v30 = v2;
    if (v11)
    {
      if (v19 < 1)
      {
        goto LABEL_38;
      }

      sub_1D609C304();
      sub_1D5B85F48(&qword_1EC883200, sub_1D609C304);
      for (i = 0; i != v19; ++i)
      {
        v21 = sub_1D6D87760(v32, i, v10);
        v23 = *v22;
        swift_unknownObjectRetain();
        (v21)(v32, 0);
        *(v16 + 8 * v17 + 32 + 8 * i) = v23;
      }
    }

    else
    {
      sub_1D5B5534C(0, &qword_1EDF3C750);
      swift_arrayInitWithCopy();
    }

    v2 = v30;
    if (v37 >= 1)
    {
      v24 = *(v16 + 16);
      v25 = __OFADD__(v24, v37);
      v26 = v24 + v37;
      if (v25)
      {
        goto LABEL_37;
      }

      *(v16 + 16) = v26;
    }

LABEL_4:
    if (++v3 == v29)
    {
      return v4;
    }
  }

  result = sub_1D7263BFC();
  v19 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v37 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D5D234BC(uint64_t a1)
{
  v2 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  v42 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v41 - v8;
  v10 = MEMORY[0x1E69E7CC0];
  v45 = *(a1 + 16);
  if (!v45)
  {
    return v10;
  }

  v11 = 0;
  v44 = a1 + 32;
  result = MEMORY[0x1E69E7CC0];
  v41[2] = v2;
  while (1)
  {
    v50 = result;
    v46 = v11;
    v14 = *(v44 + (v11 << 6) + 32);
    v49[0] = v10;
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v17 = *(v42 + 72);
      v18 = v10;
      do
      {
        sub_1D5CED2F0(v16, v9);
        sub_1D5CED2F0(v9, v5);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v19 = sub_1D5CED354(v9);
          MEMORY[0x1DA6F9CE0](v19);
          if (*((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
            v10 = MEMORY[0x1E69E7CC0];
          }

          sub_1D726278C();
          v18 = v49[0];
        }

        else
        {
          sub_1D5CED354(v5);
          sub_1D5CED354(v9);
        }

        v16 += v17;
        --v15;
      }

      while (v15);
    }

    else
    {
      v18 = v10;
    }

    v20 = v18 >> 62;
    v21 = v50;
    v48 = v18;
    if (v18 >> 62)
    {
      v22 = sub_1D7263BFC();
    }

    else
    {
      v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v21 >> 62;
    if (v21 >> 62)
    {
      v40 = sub_1D7263BFC();
      v25 = v40 + v22;
      if (__OFADD__(v40, v22))
      {
LABEL_41:
        __break(1u);
        return v10;
      }
    }

    else
    {
      v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v24 + v22;
      if (__OFADD__(v24, v22))
      {
        goto LABEL_41;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v23)
      {
        v26 = v21 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_1D7263BFC();
      goto LABEL_24;
    }

    if (v23)
    {
      goto LABEL_23;
    }

LABEL_24:
    result = sub_1D7263DDC();
    v21 = result;
    v26 = result & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v47 = v22;
    v50 = v21;
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v20)
    {
      break;
    }

    v29 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_3;
    }

LABEL_29:
    if (((v28 >> 1) - v27) < v47)
    {
      goto LABEL_45;
    }

    v31 = v26 + 8 * v27 + 32;
    v43 = v26;
    if (v20)
    {
      if (v29 < 1)
      {
        goto LABEL_47;
      }

      sub_1D6D5BC7C(0, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding, sub_1D5B5534C);
      sub_1D6D5BD5C();
      v32 = 0;
      v33 = v48;
      do
      {
        v34 = sub_1D6D87760(v49, v32, v33);
        v36 = *v35;
        swift_unknownObjectRetain();
        (v34)(v49, 0);
        *(v31 + 8 * v32++) = v36;
      }

      while (v29 != v32);
    }

    else
    {
      sub_1D5B5534C(0, &qword_1EDF3C750);
      swift_arrayInitWithCopy();
    }

    v13 = v46;
    v10 = MEMORY[0x1E69E7CC0];
    result = v50;
    if (v47 >= 1)
    {
      v37 = *(v43 + 16);
      v38 = __OFADD__(v37, v47);
      v39 = v37 + v47;
      if (v38)
      {
        goto LABEL_46;
      }

      *(v43 + 16) = v39;
    }

LABEL_4:
    v11 = v13 + 1;
    if (v11 == v45)
    {
      return result;
    }
  }

  v30 = v26;
  result = sub_1D7263BFC();
  v26 = v30;
  v29 = result;
  if (result)
  {
    goto LABEL_29;
  }

LABEL_3:

  v13 = v46;
  result = v50;
  if (v47 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1D5D23990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t FormatContent.Resolved.themes.getter()
{
  type metadata accessor for FormatContent.Resolved();
}

uint64_t FormatPrefetchContext.init(inventory:config:tag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 48);
  *(a4 + 40) = *(a2 + 32);
  *(a4 + 56) = v5;
  *(a4 + 72) = *(a2 + 64);
  v6 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *a4 = a1;
  v7 = *(a2 + 80);
  *(a4 + 24) = v6;
  *(a4 + 88) = v7;
  *(a4 + 96) = a3;
  sub_1D5D23AA4();

  result = sub_1D725A80C();
  *(a4 + 104) = result;
  return result;
}

void sub_1D5D23AA4()
{
  if (!qword_1EDF3BDD0)
  {
    type metadata accessor for FormatContextLayoutOptions();
    v0 = sub_1D725A81C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BDD0);
    }
  }
}

uint64_t FormatPrefetchResources.all.getter()
{
  v3 = *v0;

  sub_1D5D23B0C(v1);
  return v3;
}

uint64_t sub_1D5D23B64(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 <= *(v5 + 24) >> 1)
  {
    if (*(v10 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v14 = v6 + v4;
  }

  else
  {
    v14 = v6;
  }

  result = sub_1D5D0947C(result, v14, 1, v5, a2, a3);
  v5 = result;
  if (!*(v10 + 16))
  {
LABEL_13:

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t FormatFileReference.url.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1, v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(a1 + 16);
      type metadata accessor for FormatMetadata();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1D5D23EE8(&v7[*(TupleTypeMetadata2 + 48)], type metadata accessor for FormatMetadata);
      (*(*(v10 - 8) + 8))(v7, v10);
    }

    v12 = sub_1D72585BC();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  else
  {
    sub_1D5B55504();
    v15 = *(v14 + 48);
    v16 = sub_1D72585BC();
    v17 = *(v16 - 8);
    (*(v17 + 32))(a2, v7, v16);
    (*(v17 + 56))(a2, 0, 1, v16);
    return sub_1D5D23EE8(&v7[v15], type metadata accessor for FormatMetadata);
  }
}

uint64_t sub_1D5D23EE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatContentSubgroup.ResolvedContainer.layout.getter()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v2 = v0[3];
  v7 = v0[2];
  v8 = v2;
  v9 = v0[4];
  v3 = v7;
  sub_1D5CE9930(v6, &v5);

  return v3 & 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t FormatResource.imageURL(in:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B54CB8(0, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v30 - v8;
  v10 = a1[5];
  v31[4] = a1[4];
  v31[5] = v10;
  v31[6] = a1[6];
  v11 = a1[1];
  v31[0] = *a1;
  v31[1] = v11;
  v12 = a1[3];
  v31[2] = a1[2];
  v31[3] = v12;
  v13 = *v2;
  v14 = v2[1];
  v15 = v2[3];
  v33[2] = v2[2];
  v33[3] = v15;
  v33[0] = v13;
  v33[1] = v14;
  v16 = v2[4];
  v17 = v2[5];
  v18 = v2[6];
  *(v34 + 9) = *(v2 + 105);
  v33[5] = v17;
  v34[0] = v18;
  v33[4] = v16;
  if (sub_1D5D2423C(v33) == 1)
  {
    v19 = nullsub_1(v33);
    v20 = *(v19 + 64);
    v21 = *(v19 + 96);
    v31[12] = *(v19 + 80);
    v31[13] = v21;
    v22 = *(v19 + 16);
    v31[7] = *v19;
    v23 = *(v19 + 32);
    v24 = *(v19 + 48);
    v31[8] = v22;
    v31[9] = v23;
    v32 = *(v19 + 112);
    v31[10] = v24;
    v31[11] = v20;
    sub_1D725A7EC();
    v25 = *(v30[1] + 24);

    v26 = sub_1D725A3AC();
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    sub_1D5D25FB0(v31, v9, a2, v25);
    result = sub_1D5D28540(v9, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    if (v3)
    {
      return result;
    }

    v28 = 0;
  }

  else
  {
    nullsub_1(v33);
    v28 = 1;
  }

  v29 = sub_1D72585BC();
  return (*(*(v29 - 8) + 56))(a2, v28, 1, v29);
}

uint64_t sub_1D5D2424C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FormatOption();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;

  v12 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
  swift_beginAccess();
  v13 = *(a1 + v12);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v28 = a2;
    v29 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v14, 0);
    v15 = v29;
    v16 = *(v5 + 80);
    v27 = v13;
    v17 = v13 + ((v16 + 32) & ~v16);
    v18 = *(v5 + 72);
    do
    {
      sub_1D5D2477C(v17, v8);
      v19 = swift_allocBox();
      sub_1D5D247E0(v8, v20);
      v29 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D5D24610((v21 > 1), v22 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v22 + 1;
      *(v15 + 8 * v22 + 32) = v19 | 0x4000000000000000;
      v17 += v18;
      --v14;
    }

    while (v14);

    a2 = v28;
  }

  type metadata accessor for FormatVariableCollection();
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for FormatOptionCollection();
  swift_allocObject();
  v24 = sub_1D5D2488C(v15, v23);

  type metadata accessor for FormatContextLayoutOptions();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v11;
  *(result + 32) = 0x3FF0000000000000;
  *(result + 40) = v24;
  v26 = MEMORY[0x1E69E7CD0];
  *(result + 48) = 0;
  *(result + 56) = v26;
  *a2 = result;
  return result;
}

void *sub_1D5D244C8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), void (*a7)(void))
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

  if (v13)
  {
    sub_1D5B5AB24(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1D5D24610(void *a1, int64_t a2, char a3)
{
  result = sub_1D5D244C8(a1, a2, a3, *v3, &unk_1EDF199B0, sub_1D5D24660, sub_1D5D24660);
  *v3 = result;
  return result;
}

void sub_1D5D24660()
{
  if (!qword_1EDF34158[0])
  {
    type metadata accessor for FormatOption();
    sub_1D5D24734(&unk_1EDF45930, 255, type metadata accessor for FormatOption);
    sub_1D5D24734(&qword_1EDF45940, 255, type metadata accessor for FormatOption);
    v0 = type metadata accessor for FormatMerge();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF34158);
    }
  }
}

uint64_t sub_1D5D24734(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D5D2477C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatOption();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D247E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatOption();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D2488C(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v88 = type metadata accessor for FormatOption();
  MEMORY[0x1EEE9AC00](v88, v3);
  v87 = (&v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v95 = &v81 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v94 = &v81 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v86 = &v81 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v85 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v81 - v19);
  v21 = *(a1 + 16);
  if (!v21)
  {
    v23 = MEMORY[0x1E69E7CC8];
LABEL_36:
    result = v84;
    *(v84 + 16) = v83;
    *(result + 24) = v23;
    return result;
  }

  v22 = (a1 + 32);
  v23 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v25 = *v22;
    v97 = v22 + 1;
    sub_1D5D25108(v20);
    v26 = *v20;
    v27 = v20[1];

    sub_1D5D2572C(v20, type metadata accessor for FormatOption);
    if (!v23[2])
    {

LABEL_11:
      v98 = v25;
      type metadata accessor for FormatOptionElement();
      swift_allocObject();

      v33 = sub_1D5D257B0(&v98);
      goto LABEL_24;
    }

    v28 = sub_1D5B69D90(v26, v27);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      goto LABEL_11;
    }

    v31 = (v25 >> 59) & 0x1E | (v25 >> 2) & 1;
    v32 = v31 > 0x12 ? 10 : qword_1D7377940[v31];
    v34 = *(v23[7] + 8 * v28);
    v35 = *(v34 + 16);
    v36 = (v35 >> 59) & 0x1E | (v35 >> 2) & 1;
    v96 = v34;
    if (v36 > 0x12 || qword_1D7377940[v36] >= v32)
    {
      v50 = v94;
      sub_1D5D25108(v94);
      v51 = *(v50 + 16);

      sub_1D5D2572C(v50, type metadata accessor for FormatOption);
      v52 = v95;
      sub_1D5D25108(v95);
      v53 = *(v52 + 16);

      sub_1D5D2572C(v52, type metadata accessor for FormatOption);
      if (v53 >> 60 != 5 || (v51 & 0xF000000000000000) != 0x1000000000000000)
      {

        v98 = v25;
        type metadata accessor for FormatOptionElement();
        swift_allocObject();

        goto LABEL_23;
      }

      v54 = *((v53 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v92 = *((v53 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v93 = v54;
      v55 = *((v53 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v56 = *((v51 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v90 = *((v51 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v91 = v55;
      v57 = v87;
      sub_1D5D25108(v87);
      v58 = v57[1];
      v89 = *v57;

      sub_1D5D2572C(v57, type metadata accessor for FormatOption);
      v59 = swift_allocObject();
      v60 = v91;
      *(v59 + 16) = v90;
      *(v59 + 24) = v56;
      v62 = v92;
      v61 = v93;
      *(v59 + 32) = v60;
      *(v59 + 40) = v62;
      *(v59 + 48) = v61;
      *v20 = v89;
      v20[1] = v58;
      v20[2] = v59 | 0x1000000000000000;
      v20[3] = 1;
      v63 = *(v88 + 28);
      v64 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v64 - 8) + 56))(v20 + v63, 1, 1, v64);
      sub_1D6F60ECC(v20, v25, &v98);

      sub_1D5D2572C(v20, type metadata accessor for FormatOption);
    }

    else
    {
      v37 = v85;
      sub_1D5D25108(v85);
      v38 = *(v37 + 16);
      v93 = v38 & 0xFFFFFFFFFFFFFFFLL;

      sub_1D5D2572C(v37, type metadata accessor for FormatOption);
      v39 = v86;
      sub_1D5D25108(v86);
      v40 = *(v39 + 16);

      sub_1D5D2572C(v39, type metadata accessor for FormatOption);
      if (v40 >> 60 != 5 || (v38 & 0xF000000000000000) != 0x1000000000000000)
      {

        goto LABEL_4;
      }

      v42 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v41 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v90 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v91 = v41;
      v43 = *(v93 + 24);
      v89 = *(v93 + 16);
      v44 = v87;
      sub_1D5D25108(v87);
      v45 = v44[1];
      v82 = *v44;

      v92 = type metadata accessor for FormatOption;
      sub_1D5D2572C(v44, type metadata accessor for FormatOption);
      v46 = swift_allocObject();
      v47 = v90;
      *(v46 + 16) = v89;
      *(v46 + 24) = v43;
      *(v46 + 32) = v47;
      *(v46 + 40) = v42;
      *(v46 + 48) = v91;
      *v20 = v82;
      v20[1] = v45;
      v20[2] = v46 | 0x1000000000000000;
      v20[3] = 1;
      v48 = *(v88 + 28);
      v49 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v49 - 8) + 56))(v20 + v48, 1, 1, v49);
      sub_1D6F60ECC(v20, v35, &v98);

      sub_1D5D2572C(v20, v92);
    }

    type metadata accessor for FormatOptionElement();
    swift_allocObject();
LABEL_23:
    v33 = sub_1D5D257B0(&v98);

LABEL_24:
    sub_1D5D25108(v20);
    v66 = *v20;
    v65 = v20[1];

    sub_1D5D2572C(v20, type metadata accessor for FormatOption);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v23;
    v68 = sub_1D5B69D90(v66, v65);
    v70 = v23[2];
    v71 = (v69 & 1) == 0;
    v72 = __OFADD__(v70, v71);
    v73 = v70 + v71;
    if (v72)
    {
      break;
    }

    v74 = v69;
    if (v23[3] < v73)
    {
      sub_1D5D25F98(v73, isUniquelyReferenced_nonNull_native);
      v68 = sub_1D5B69D90(v66, v65);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_39;
      }

LABEL_29:
      if (v74)
      {
        goto LABEL_3;
      }

      goto LABEL_30;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    v79 = v68;
    sub_1D6D7D3D0();
    v68 = v79;
    if (v74)
    {
LABEL_3:
      v24 = v68;

      v23 = v98;
      *(v98[7] + 8 * v24) = v33;

LABEL_4:

      goto LABEL_5;
    }

LABEL_30:
    v23 = v98;
    v98[(v68 >> 6) + 8] |= 1 << v68;
    v76 = (v23[6] + 16 * v68);
    *v76 = v66;
    v76[1] = v65;
    *(v23[7] + 8 * v68) = v33;

    v77 = v23[2];
    v72 = __OFADD__(v77, 1);
    v78 = v77 + 1;
    if (v72)
    {
      goto LABEL_38;
    }

    v23[2] = v78;
LABEL_5:
    v22 = v97;
    if (!--v21)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_1D726493C();
  __break(1u);
  return result;
}