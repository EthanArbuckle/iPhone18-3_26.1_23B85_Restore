uint64_t *GraphObjectContext.__allocating_init<A>(_:objectMapping:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 160);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1ABA7BC58();
  v12 = v11 - v10;
  sub_1ABA7D08C(*(v3 + 152));
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  v18 = v17 - v16;
  (*(v19 + 24))(v20, v19);
  (*(v8 + 16))(v12, a2, v7);
  v21 = GraphObjectContext.__allocating_init(_:objectMapping:)(v18, v12);
  (*(v8 + 8))(a2, v7);
  sub_1ABA7D08C(a3);
  (*(v22 + 8))(a1, a3);
  return v21;
}

uint64_t *GraphObjectContext.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2)
{
  sub_1ABA7D08C(*(v2 + 152));
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v10 = v9 - v8;
  (*(v11 + 24))(v12, v11);
  v13 = GraphObjectContext.__allocating_init<>(_:)(v10);
  sub_1ABA7D08C(a2);
  (*(v14 + 8))(a1, a2);
  return v13;
}

void GraphObjectContext.__allocating_init(_:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  GraphObjectContext.init(_:)();
}

uint64_t sub_1ABC80280()
{
  v1 = *(*v0 + 184);
  sub_1ABA7D08C(*(*v0 + 160));
  return (*(v2 + 8))(v0 + v3);
}

uint64_t GraphObjectContext.deinit()
{
  v1 = *v0;
  v2 = GraphObjectBareContext.deinit();
  (*(*(*(v1 + 160) - 8) + 8))(v2 + *(*v2 + 184));
  return v2;
}

uint64_t GraphObjectContext.__deallocating_deinit()
{
  v0 = *GraphObjectContext.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void (*sub_1ABC80410(void *a1))(void *a1)
{
  v3 = sub_1ABAFDD10(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1ABC7FC30();
  return sub_1ABC80470;
}

void sub_1ABC80470(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1ABC804B8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC804F4(uint64_t a1)
{
  v1 = *(a1 + 160);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void GraphObjectContextProtocol.graphObjects(forUntyped:)()
{
  sub_1ABA9013C();
  v17[1] = v1;
  v3 = v2;
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7D958(AssociatedTypeWitness);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  v17[3] = v5;
  v14 = sub_1ABA8E9C0();
  v15(v14);
  sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
  v16 = *(v3 + 8);
  sub_1ABC809F0();
  swift_getAssociatedConformanceWitness();
  GraphObjectBareContextProtocol.graphObjects<A, B>(forUntyped:mapping:)();
  (*(v8 + 8))(v13, v0);
  sub_1ABA80BF0();
  sub_1ABA94AB0();
}

unint64_t sub_1ABC809F0()
{
  result = qword_1EB4CF810;
  if (!qword_1EB4CF810)
  {
    sub_1ABAE2850(&unk_1EB4DB8E0, &unk_1ABF50A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF810);
  }

  return result;
}

void GraphObjectContextProtocol<>.graphObjects()()
{
  sub_1ABA9013C();
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7D958(AssociatedTypeWitness);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1ABA8395C();
  v7(v6);
  v8 = *(v1 + 8);
  swift_getAssociatedConformanceWitness();
  sub_1ABA935EC();
  GraphObjectBareContextProtocol<>.graphObjects<A>(mapping:)();
  v9 = sub_1ABA81900();
  v10(v9);
  sub_1ABA80BF0();
  sub_1ABA94AB0();
}

void GraphObjectContextProtocol<>.enumerateGraphObjects(block:)()
{
  sub_1ABA9013C();
  v17[2] = v1;
  v3 = v2;
  v5 = v4;
  v17[1] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7D958(AssociatedTypeWitness);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1ABA7BB88();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v17 - v14;
  (*(v3 + 32))(v5, v3, v13);
  v16 = *(v3 + 8);
  sub_1ABA935EC();
  swift_getAssociatedConformanceWitness();
  GraphObjectBareContextProtocol<>.enumerateGraphObjects<A>(mapping:block:)();
  (*(v9 + 8))(v15, v0);
  sub_1ABA80BF0();
  sub_1ABA94AB0();
}

void sub_1ABC80EE4(void (*a1)(uint64_t (*)(uint64_t a1), char *, double)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1ABC81304(a1, a2, a3, a4, &v16);
  if (v17.n128_u64[0])
  {
    sub_1ABA7D970(v17, v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17.n128_i64[0], v17.n128_i64[1], v18, v19, v20);
  }

  else
  {
    sub_1ABA8F524();
    *(a5 + 48) = v14;
  }
}

double sub_1ABC810F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  Entity.init<A, B>(with:)(v14, a2, a3, a4, a5);
  if (!v6)
  {
    result = *&v22;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    v20 = v26;
    *a6 = v22;
    *(a6 + 16) = v17;
    *(a6 + 32) = v18;
    *(a6 + 40) = v19;
    *(a6 + 48) = v20;
  }

  return result;
}

void sub_1ABC81214(void *(*a1)(uint64_t *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(&v13);
  if (v14.n128_u64[0])
  {
    sub_1ABA7D970(v14, v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14.n128_i64[0], v14.n128_i64[1], v15, v16, v17);
  }

  else
  {
    sub_1ABA8F524();
    *(a2 + 48) = v11;
  }
}

double sub_1ABC81304@<D0>(void (*a1)(uint64_t (*)(uint64_t a1), char *, double)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  Entity.init<A>(enumerator:)(a1, a2, a3, a4);
  if (!v5)
  {
    result = *&v8;
    *a5 = v8;
    *(a5 + 16) = v9;
    *(a5 + 32) = v10;
    *(a5 + 40) = v11;
    *(a5 + 48) = v12;
  }

  return result;
}

uint64_t sub_1ABC81354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v28 = a4;
  v29 = a7;
  v26 = a5;
  v27 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v19 = &v26 - v18;
  v20 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, a1, a3);
  (*(a10 + 32))(a2, a2, a6, v26, a10);
  v24 = v30;
  result = (*(a6 + 48))(v22, v19, a3, v28, v29, v27, a2, a6);
  if (!v24)
  {
    return sub_1ABA7B9B4(a8, 0, 1, a2);
  }

  return result;
}

uint64_t sub_1ABC81524@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v30[3] = a3;
  v33 = a5;
  v31 = *(a4 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1ABF247E4();
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v30 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v30 - v19;
  a2(v18);
  v21 = v31;
  v22 = *(v32 + 32);
  v22(v20, v17, v10);
  v22(v14, v20, v10);
  if (sub_1ABA7E1E0(v14, 1, a4) == 1)
  {
    (*(v32 + 8))(v14, v10);
    sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
    v23 = sub_1ABF252B4();
    v24 = v33;
    v25 = 1;
  }

  else
  {
    v26 = *(v21 + 32);
    v26(v9, v14, a4);
    v27 = v33;
    v26(v33, v9, a4);
    sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
    v28 = sub_1ABF252B4();
    swift_storeEnumTagMultiPayload();
    v24 = v27;
    v25 = 0;
    v23 = v28;
  }

  return sub_1ABA7B9B4(v24, v25, 1, v23);
}

uint64_t sub_1ABC81988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v21 = a4;
  v22 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v18 = &v21 - v17;
  (*(a9 + 32))(a3, a3, a6, a5, a9);
  v19 = v23;
  result = (*(a6 + 56))(a1, a2, v18, v21, v22, a3, a6);
  if (!v19)
  {
    return sub_1ABA7B9B4(a8, 0, 1, a3);
  }

  return result;
}

uint64_t sub_1ABC81BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
    if (a8 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1ABC81C14(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(a1 + 2);
  v17 = *(a1 + 3);
  v18 = *(a1 + 32);
  v25 = *a1;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v19 = *(a14 + 32);
  v24[3] = swift_getAssociatedTypeWitness();
  sub_1ABA93DC0(v24);
  v19(a2, a2, a3, a10, a14);
  (*(a13 + 16))(&v25, a5, v24, a7, a8, a11, a12, a9, a13);
  return sub_1ABA84B54(v24);
}

double sub_1ABC81D4C@<D0>(uint64_t *a1@<X0>, void (*a2)(__int128 *__return_ptr, __int128 *, uint64_t, uint64_t)@<X1>, char a3@<W4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v11 = *a1;
  EntityClass.init(intValue:)(HIBYTE(*a1), &v38);
  v12 = *(&v38 + 1);
  if (!*(&v38 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v20 = sub_1ABF237F4();
    sub_1ABA7AA24(v20, qword_1ED871B40);
    v21 = sub_1ABF237D4();
    v22 = sub_1ABF24674();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v38 = v24;
      *v23 = 136315138;
      *&v35 = v11;
      v25 = EntityIdentifier.stringValue.getter();
      v27 = sub_1ABADD6D8(v25, v26, &v38);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1ABA78000, v21, v22, "untypedId.entityClass for %s is nil in createDynamicGraphObject", v23, 0xCu);
      sub_1ABA84B54(v24);
      MEMORY[0x1AC5AB8B0](v24, -1, -1);
      MEMORY[0x1AC5AB8B0](v23, -1, -1);
    }

    sub_1ABB6DA08();
    v28 = swift_allocError();
    *v29 = 2;
    *(v29 + 8) = 0u;
    *(v29 + 24) = 0u;
    *(v29 + 33) = 0u;
    *(v29 + 49) = 2;
    swift_willThrow();
    goto LABEL_16;
  }

  v34 = a2;
  v13 = v38;
  v14 = v39;
  v15 = v40;
  v16 = (*(a5 + 8))(&v38, a4, a5);
  if (v16)
  {
    *&v35 = v13;
    *(&v35 + 1) = v12;
    v36 = v14;
    LOBYTE(v37) = v15;
    v34(&v38, &v35, v16, v17);
    v18 = sub_1ABA80BFC();
    sub_1ABAA8FA8(v18, v19);
    v35 = v38;
    v36 = v39;
    *&v37 = v40;
    if (*(&v39 + 1))
    {
      sub_1ABAFF5C4(&v35, &v38);
      sub_1ABAFF5C4(&v38, a6);
      *(a6 + 40) = 0;
    }

    else
    {
      sub_1ABC82344(&v35);
      *(a6 + 32) = 0;
      result = 0.0;
      *a6 = 0u;
      *(a6 + 16) = 0u;
      *(a6 + 40) = -1;
    }

    return result;
  }

  if (a3)
  {
    sub_1ABC8229C();
    v28 = swift_allocError();
    *v31 = v13;
    *(v31 + 8) = v12;
    *(v31 + 16) = v14;
    *(v31 + 32) = v15;
    swift_willThrow();
LABEL_16:
    *a6 = v28;
    *(a6 + 40) = 1;
    return result;
  }

  *(a6 + 32) = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 40) = -1;
  v32 = sub_1ABA80BFC();

  sub_1ABAA8FA8(v32, v33);
  return result;
}

uint64_t sub_1ABC8216C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *(a1 + 2);
  v16 = *(a1 + 3);
  v17 = *(a1 + 32);
  v24 = *a1;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v18 = *(a13 + 32);
  v23[3] = swift_getAssociatedTypeWitness();
  sub_1ABA93DC0(v23);
  v18(a2, a2, a3, a10, a13);
  (*(a12 + 24))(&v24, a5, a6, v23, a8, a11, a9, a12);
  return sub_1ABA84B54(v23);
}

unint64_t sub_1ABC8229C()
{
  result = qword_1EB4D6510;
  if (!qword_1EB4D6510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6510);
  }

  return result;
}

uint64_t sub_1ABC82344(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D6358, &unk_1ABF50900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABC824B4()
{
  if (*(v0 + 57))
  {
    return 2;
  }

  v2 = *v0;
  v3 = v0[1];
  v4 = v2 == 1702195828 && v3 == 0xE400000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {
    return 1;
  }

  if (v2 == 0x65736C6166 && v3 == 0xE500000000000000)
  {
    return 0;
  }

  if (sub_1ABF25054())
  {
    return 0;
  }

  return 2;
}

uint64_t sub_1ABC82584@<X0>(void (*a1)(uint64_t, char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(_BYTE *)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v34 = MEMORY[0x1E69E7CD0];
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0;
  v21 = &v30;
  v22 = a2;
  v23 = a3;
  v24 = v14;
  v25 = a4;
  v26 = a5;
  v27 = &v32;
  v28 = &v34;
  a1(a6, v20);
  if (v7)
  {
    goto LABEL_9;
  }

  if (v31)
  {
    sub_1ABB6DA08();
    sub_1ABA7BD00();
    v16 = 1;
LABEL_8:
    *v15 = v16;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
    *(v15 + 33) = 0u;
    *(v15 + 49) = 2;
    swift_willThrow();
LABEL_9:
  }

  if (!v33)
  {
    sub_1ABB6DA08();
    sub_1ABA7BD00();
    v16 = 3;
    goto LABEL_8;
  }

  v17 = v30;
  v29 = v30;
  sub_1ABB6C488(&v29, v14, a4, a5);

  *a7 = v17;
}

uint64_t sub_1ABC8282C()
{
  v1 = sub_1ABAA0880();
  v3 = v0 + *(v2(v1) + 28);
  v4 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  return sub_1ABD1BB4C();
}

void sub_1ABC828C4()
{
  v0 = sub_1ABAA0880();
  v2 = v1(v0);
  sub_1ABA89C94(*(v2 + 48));
}

void CustomGraphActivityEvent.endLocation.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphActivityEvent(v0);
  sub_1ABA89C94(*(v1 + 52));
}

void CustomGraphActivityEvent.activityTypeObject.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphActivityEvent(v0);
  sub_1ABA89C94(*(v1 + 56));
}

uint64_t CustomGraphActivityEvent.activityType.getter()
{
  v2 = sub_1ABAA0880();
  result = type metadata accessor for CustomGraphActivityEvent(v2);
  *v0 = *(v1 + *(result + 60) + 8);
  return result;
}

uint64_t sub_1ABC829C0()
{
  v1 = sub_1ABA8971C();
  v3 = *(v0 + *(v2(v1) + 28));
}

uint64_t sub_1ABC82A10()
{
  v1 = sub_1ABA8971C();
  v3 = *(v0 + *(v2(v1) + 48));
}

void sub_1ABC82B10()
{
  v0 = sub_1ABAA0880();
  v2 = v1(v0);
  sub_1ABA89C94(*(v2 + 44));
}

uint64_t sub_1ABC82B8C()
{
  v1 = sub_1ABA8971C();
  v3 = *(v0 + *(v2(v1) + 44));
}

void sub_1ABC82C2C()
{
  v0 = sub_1ABAA0880();
  v2 = v1(v0);
  sub_1ABA89C94(*(v2 + 40));
}

uint64_t CustomGraphTransportationActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphTransportationActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

void CustomGraphTransportationActivityEvent.modeOfTransportation.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphTransportationActivityEvent(v0);
  sub_1ABA89C94(*(v1 + 60));
}

uint64_t CustomGraphTransportationActivityEvent.transportationType.getter()
{
  v2 = sub_1ABAA0880();
  result = type metadata accessor for CustomGraphTransportationActivityEvent(v2);
  *v0 = *(v1 + *(result + 64) + 8);
  return result;
}

uint64_t sub_1ABC82D84()
{
  v1 = sub_1ABA8971C();
  v3 = *(v0 + *(v2(v1) + 40));
}

uint64_t sub_1ABC82E04()
{
  v1 = sub_1ABA8971C();
  v3 = *(v0 + *(v2(v1) + 52));
}

uint64_t sub_1ABC82E54()
{
  v1 = sub_1ABA8971C();
  v3 = *(v0 + *(v2(v1) + 56));
}

uint64_t sub_1ABC82EA4()
{
  v1 = sub_1ABA8971C();
  v3 = *(v0 + *(v2(v1) + 60));
}

uint64_t sub_1ABC82EF4()
{
  v1 = sub_1ABA8971C();
  v3 = *(v0 + *(v2(v1) + 64));
}

uint64_t sub_1ABC82F44()
{
  v1 = sub_1ABAA0880();
  v3 = v0 + *(v2(v1) + 24);
  v4 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  return sub_1ABD1BB4C();
}

void sub_1ABC82FDC()
{
  v0 = sub_1ABAA0880();
  v2 = v1(v0);
  sub_1ABA89C94(*(v2 + 36));
}

uint64_t CustomGraphWorkingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphWorkingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t sub_1ABC83080()
{
  v0 = sub_1ABA8971C();
  v2 = v1(v0);
  return sub_1ABD1B8D4(*(v2 + 52));
}

uint64_t sub_1ABC830C0()
{
  v1 = sub_1ABA8971C();
  v3 = *(v0 + *(v2(v1) + 24));
}

uint64_t sub_1ABC83110()
{
  v1 = sub_1ABA8971C();
  v3 = *(v0 + *(v2(v1) + 36));
}

uint64_t CustomGraphMeetingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphMeetingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphEatingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphEatingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphWatchingTVActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphWatchingTVActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphCommunicatingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphCommunicatingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphShoppingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphShoppingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphMindfulnessActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphMindfulnessActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphSleepingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphSleepingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphTravelingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphTravelingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphReadingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphReadingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphVacationingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphVacationingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphGamingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphGamingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphGamingActivityEvent.software.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphGamingActivityEvent(v0);
  sub_1ABD1B3E8(*(v1 + 56));
}

uint64_t CustomGraphSocializingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphSocializingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphWakingUpActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphWakingUpActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphGoingToBedActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphGoingToBedActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphExercisingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphExercisingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphCommuteActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphCommuteActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphDiningActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphDiningActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphAttendingAPerformanceActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphStationaryActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphStationaryActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphLocationVisitActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphLocationVisitActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphWalkingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphWalkingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphRunningActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphRunningActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphBicyclingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphBicyclingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphHikingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphHikingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphOnThePhoneActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphOnThePhoneActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphFacetimeActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphFacetimeActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphDrivingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphDrivingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphBehaviorActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphBehaviorActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphBehaviorActivityEvent.behaviorType.getter()
{
  v0 = type metadata accessor for CustomGraphBehaviorActivityEvent(0);
  sub_1ABD1B744(*(v0 + 56));
  return sub_1ABA7D000();
}

uint64_t CustomGraphSongEvent.date.getter()
{
  v1 = sub_1ABAA0880();
  v2 = v0 + *(type metadata accessor for CustomGraphSongEvent(v1) + 20);
  v3 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  return sub_1ABD1BB4C();
}

uint64_t CustomGraphSongEvent.playbackState.getter()
{
  v0 = type metadata accessor for CustomGraphSongEvent(0);
  sub_1ABD1B744(*(v0 + 24));
  return sub_1ABA7D000();
}

uint64_t CustomGraphSongEvent.song.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphSongEvent(v0);
  sub_1ABD1B3E8(*(v1 + 28));
}

uint64_t CustomGraphLocation.locationLabel.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_1ABA7D000();
}

uint64_t CustomGraphLocation.latLong.getter@<X0>(_OWORD *a1@<X8>)
{
  v5 = v1[5];
  v2 = v1[6];
  v3 = *(v1 + 105);
  *a1 = v1[4];
  a1[1] = v5;
  a1[2] = v2;
  *(a1 + 41) = v3;
  return sub_1ABAE2EC4();
}

uint64_t CustomGraphLocation.address.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 136), sizeof(__dst));
  memcpy(a1, (v1 + 136), 0xE8uLL);
  return sub_1ABAE2EC4();
}

uint64_t CustomGraphLocation.muid.getter()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return sub_1ABA7D000();
}

uint64_t CustomGraphSportsTeam.qid.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_1ABA7D000();
}

uint64_t CustomGraphSportsTeam.umcIdentifier.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return sub_1ABA7D000();
}

uint64_t CustomGraphPerson.birthday.getter()
{
  v1 = sub_1ABAA0880();
  v2 = v0 + *(type metadata accessor for CustomGraphPerson(v1) + 68);
  v3 = *(sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20) + 28);
  return sub_1ABD1BB4C();
}

uint64_t CustomGraphPerson.occupation.getter()
{
  v0 = type metadata accessor for CustomGraphPerson(0);
  sub_1ABD1B744(*(v0 + 72));
  return sub_1ABA7D000();
}

uint64_t CustomGraphPerson.contactIdentifier.getter()
{
  v0 = type metadata accessor for CustomGraphPerson(0);
  sub_1ABD1B744(*(v0 + 112));
  return sub_1ABA7D000();
}

uint64_t CustomGraphPerson.$birthday.getter()
{
  v1 = *(v0 + *(type metadata accessor for CustomGraphPerson(0) + 68));
}

uint64_t CustomGraphPerson.$occupation.getter()
{
  v1 = *(v0 + *(type metadata accessor for CustomGraphPerson(0) + 72));
}

uint64_t CustomGraphPerson.$isFavorite.getter()
{
  v1 = *(v0 + *(type metadata accessor for CustomGraphPerson(0) + 76));
}

uint64_t CustomGraphPerson.$isCurrentUser.getter()
{
  v1 = *(v0 + *(type metadata accessor for CustomGraphPerson(0) + 80));
}

uint64_t CustomGraphPerson.$isInferredDeviceUser.getter()
{
  v1 = *(v0 + *(type metadata accessor for CustomGraphPerson(0) + 84));
}

uint64_t CustomGraphPerson.$contactIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for CustomGraphPerson(0) + 112));
}

uint64_t CustomGraphSong.artistName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_1ABA7D000();
}

uint64_t CustomGraphSong.albumName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return sub_1ABA7D000();
}

uint64_t CustomGraphSong.genre.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return sub_1ABA7D000();
}

uint64_t CustomGraphSong.duration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1ABC85DDC(v2, v3, v4);
}

uint64_t sub_1ABC85DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t CustomGraphSong.songAdamId.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return sub_1ABA7D000();
}

uint64_t CustomGraphSong.albumAdamId.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return sub_1ABA7D000();
}

uint64_t CustomGraphSong.artistAdamId.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return sub_1ABA7D000();
}

uint64_t CustomGraphSoftware.name.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_1ABA7D000();
}

void CustomGraphAttendeeRelationship.attendeeId.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  sub_1ABA7F478(a1);
}

uint64_t CustomGraphDateRelationship.startDate.getter()
{
  v1 = sub_1ABAA0880();
  v2 = v0 + *(type metadata accessor for CustomGraphDateRelationship(v1) + 20);
  v3 = *(sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20) + 28);
  return sub_1ABD1BB4C();
}

uint64_t CustomGraphDateRelationship.endDate.getter()
{
  v1 = sub_1ABAA0880();
  v2 = v0 + *(type metadata accessor for CustomGraphDateRelationship(v1) + 24);
  v3 = *(sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20) + 28);
  return sub_1ABD1BB4C();
}

uint64_t CustomGraphDateRelationship.occurrenceDate.getter()
{
  v1 = sub_1ABAA0880();
  v2 = v0 + *(type metadata accessor for CustomGraphDateRelationship(v1) + 28);
  v3 = *(sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20) + 28);
  return sub_1ABD1BB4C();
}

uint64_t sub_1ABC860B4()
{
  v1 = sub_1ABA8971C();
  v3 = *(v0 + *(v2(v1) + 20));
}

uint64_t CustomGraphLocationAddressRelationship.subLocality.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_1ABA7D000();
}

uint64_t CustomGraphLocationAddressRelationship.city.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return sub_1ABA7D000();
}

uint64_t CustomGraphLocationAddressRelationship.subAdministrativeArea.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return sub_1ABA7D000();
}

uint64_t CustomGraphLocationAddressRelationship.state.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return sub_1ABA7D000();
}

uint64_t CustomGraphLocationAddressRelationship.postalCode.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return sub_1ABA7D000();
}

uint64_t CustomGraphLocationLatLongRelationship.latitude.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t CustomGraphLocationLatLongRelationship.longitude.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

void CustomGraphSongRelationship.songId.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1ABA7F478(a1);
}

uint64_t CustomGraphVisualIdentifierRelationship.associationReason.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_1ABA7D000();
}

uint64_t CustomGraphVisualIdentifierRelationship.suggestedName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return sub_1ABA7D000();
}

uint64_t CustomGraphVisualIdentifierRelationship.suggestedRelationshipToDeviceOwner.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return sub_1ABA7D000();
}

uint64_t sub_1ABC86464@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t (*)(uint64_t a1), void, uint64_t (*)(), void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v67 = a3;
  v59 = a2;
  v60 = a1;
  v58 = a4;
  v4 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = v48 - v6;
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  v57 = (v7 + 16);
  v9 = swift_allocObject();
  v65 = v9;
  *(v9 + 16) = v8;
  v49 = (v9 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v50 = (v10 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v51 = (v11 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  v52 = (v12 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  v53 = (v13 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v54 = (v14 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  v55 = (v15 + 16);
  v16 = swift_allocObject();
  v17 = v65;
  v16[2] = v7;
  v16[3] = v17;
  v16[4] = v67;
  v16[5] = v10;
  v16[6] = v11;
  v16[7] = v12;
  v16[8] = v13;
  v16[9] = v14;
  v16[10] = v15;
  v64 = v7;

  v61 = v12;

  v63 = v13;

  v18 = v62;
  v60(&v66, sub_1ABC870C8, 0, sub_1ABD1A554, v16);
  if (v18)
  {
  }

  else
  {
    v19 = v57;
    v62 = v15;
    v20 = v58;

    sub_1ABC6C238();
    v48[1] = v11;
    v59 = v14;
    v60 = v10;
    v22 = v20;
    *v20 = v66;
    swift_beginAccess();
    v20[1] = *v19;
    v23 = v49;
    swift_beginAccess();
    v24 = *v23;
    v25 = sub_1ABB2B834(*v23);
    v20[2] = v24;
    v20[3] = v25;
    v20[4] = v26;
    v27 = v50;
    swift_beginAccess();
    v28 = *v27;
    v29 = v22;
    v30 = type metadata accessor for CustomGraphDateRelationship(0);
    v31 = v56;
    sub_1ABA7B9B4(v56, 1, 1, v30);
    v32 = type metadata accessor for CustomGraphEvent(0);
    v33 = v32[7];

    sub_1ABC8B318(v34, v31, (v29 + v33));
    v35 = v51;
    swift_beginAccess();
    *(v29 + v32[8]) = *v35;
    v36 = v52;
    swift_beginAccess();
    *(v29 + v32[9]) = *v36;
    v37 = v53;
    swift_beginAccess();
    *(v29 + v32[10]) = *v37;
    v38 = v54;
    swift_beginAccess();
    v39 = *v38;
    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = *(v39 + 32);
    }

    else
    {
      v41 = 0;
    }

    v42 = v55;
    v43 = v29 + v32[11];
    *v43 = v39;
    *(v43 + 8) = v41;
    *(v43 + 16) = v40 == 0;
    swift_beginAccess();
    v44 = *v42;
    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = *(v44 + 32);
    }

    else
    {
      v46 = 0;
    }

    LODWORD(v57) = v45 == 0;

    v47 = v29 + v32[12];
    *v47 = v44;
    *(v47 + 8) = v46;
    *(v47 + 16) = v57;
  }
}

void sub_1ABC86ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v82 = v23;
  v78 = v24;
  v77 = v25;
  v26 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v26);
  v28 = *(v27 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v30);
  sub_1ABA7D028();
  v31 = swift_allocObject();
  sub_1ABD1B184(v31);
  v75 = v32;
  sub_1ABA7D028();
  v79 = swift_allocObject();
  sub_1ABD1B184(v79);
  sub_1ABD1B6E8(v33);
  sub_1ABA7D028();
  v34 = swift_allocObject();
  sub_1ABD1B184(v34);
  sub_1ABD1B3DC(v35);
  sub_1ABA7D028();
  v36 = swift_allocObject();
  sub_1ABD1B184(v36);
  sub_1ABD1B3C4(v37);
  sub_1ABA7D028();
  v38 = swift_allocObject();
  sub_1ABD1B184(v38);
  sub_1ABD1B6DC(v39);
  sub_1ABA7D028();
  v40 = swift_allocObject();
  sub_1ABD1B184(v40);
  sub_1ABD1B6D0(v41);
  sub_1ABA7D028();
  v42 = swift_allocObject();
  sub_1ABD1B184(v42);
  sub_1ABD1BA8C(v43);
  sub_1ABA7D028();
  v44 = swift_allocObject();
  sub_1ABD1B184(v44);
  sub_1ABD1BEE4(v45);
  sub_1ABA88928();
  swift_allocObject();
  sub_1ABD1B884(&a13);
  v46[2] = v48;
  v46[3] = v47;
  v46[4] = v31;
  v46[5] = v79;
  v46[6] = v82;
  v46[7] = v34;
  v46[8] = v36;
  v46[9] = v38;
  v46[10] = v40;
  v46[11] = v42;
  v46[12] = v44;

  sub_1ABD1B678();
  v78();
  if (v20)
  {

    sub_1ABAA1668();

    sub_1ABA8D348();

    sub_1ABAA63C4();
  }

  else
  {

    sub_1ABD1BE7C();
    sub_1ABC6C238();
    *v77 = v81[5];
    sub_1ABD1B1F4();
    v77[1] = *v75;
    sub_1ABAAD280(&v80);
    v49 = *v42;
    v50 = sub_1ABB2B834(*v42);
    v77[2] = v49;
    v77[3] = v50;
    v77[4] = v51;
    sub_1ABAAD280(v81);
    v52 = *v42;
    sub_1ABD1AF20();
    v56 = sub_1ABA9DFB8(v74, v53, v54, v55);
    v57 = type metadata accessor for CustomGraphEvent(v56);
    v58 = v57[7];

    sub_1ABC8B318(v59, v74, (v77 + v58));
    sub_1ABD1B0E8();
    *(v77 + v57[8]) = *v69;
    sub_1ABD1B0E8();
    *(v77 + v57[9]) = *v70;
    sub_1ABD1B0E8();
    *(v77 + v57[10]) = *v71;
    sub_1ABD1B0E8();
    sub_1ABD1BE24();
    if (v60)
    {
      v61 = *(v72 + 32);
    }

    sub_1ABAAFB28();
    v62 = v77 + v57[11];
    *v62 = v72;
    *(v62 + 1) = v63;
    v62[16] = v64;
    sub_1ABD1B080();
    sub_1ABD1B610();
    if (v65)
    {
      v66 = *(v73 + 32);
    }

    else
    {
      v66 = 0;
    }

    sub_1ABAAFB28();
    v76 = v67;

    sub_1ABAA1668();

    sub_1ABA8D348();

    sub_1ABAA2168();

    sub_1ABAA6420();

    v68 = v77 + v57[12];
    *v68 = v73;
    *(v68 + 1) = v66;
    v68[16] = v76;
    sub_1ABAA63C4();

    sub_1ABD1C2B4();
    sub_1ABA9EA34();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABC870E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v124 = a4;
  v126 = a3;
  v127 = a2;
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v118 - v18;
  v20 = type metadata accessor for CustomGraphDateRelationship(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v125 = 279;
  v121 = v23;
  v122 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = a5;
  v119 = a7;
  v120 = a6;
  v146 = v10;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_118;
  }

  v24 = *a1;
  v25 = *(a1 + 8);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), v143);
  if (*&v143[0] == v24 && *(&v143[0] + 1) == v25)
  {

LABEL_54:
    *(v142 + 10) = *(a1 + 82);
    v47 = *(a1 + 56);
    v140 = *(a1 + 40);
    v141 = v47;
    v142[0] = *(a1 + 72);
    v48 = v146;
    if (BYTE9(v142[1]) == 1)
    {
      v49 = *(a1 + 56);
      v138 = *(a1 + 40);
      v139[0] = v49;
      v139[1] = *(a1 + 72);
      *(&v139[1] + 9) = *(a1 + 81);
      MEMORY[0x1EEE9AC00](v28);
      *(&v118 - 2) = &v138;
      v135 = v140;
      v136 = v141;
      v137[0] = v142[0];
      *(v137 + 10) = *(v142 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(&v135, &v128);
      sub_1ABCF8EE8(sub_1ABD1A8C8, v143);
      if (!v48)
      {
        v51 = *&v143[1];
        if (*&v143[1])
        {
          v128 = v138;
          v129 = v139[0];
          v130[0] = v139[1];
          *(v130 + 9) = *(&v139[1] + 9);
          sub_1ABD19208(&v128);
          v52 = v127;
          swift_beginAccess();
          sub_1ABB4DCE0();
          v53 = *(*(v52 + 16) + 16);
          sub_1ABB4E0E4(v53);
          v54 = *(v52 + 16);
          *(v54 + 16) = v53 + 1;
          v55 = v54 + 88 * v53;
          *(v55 + 32) = v143[0];
          *(v55 + 48) = v51;
          *(v55 + 56) = *(&v143[1] + 8);
          *(v55 + 72) = *(&v143[2] + 8);
          *(v55 + 88) = *(&v143[3] + 8);
          *(v55 + 104) = *(&v143[4] + 8);
LABEL_60:
          *(v52 + 16) = v54;
          swift_endAccess();
          goto LABEL_61;
        }
      }

      v128 = v138;
      v129 = v139[0];
      v130[0] = v139[1];
      *(v130 + 9) = *(&v139[1] + 9);
      v50 = &v128;
LABEL_57:
      sub_1ABD19208(v50);
LABEL_61:
      sub_1ABAB480C(&v140, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

    goto LABEL_96;
  }

  v118 = a8;
  v27 = sub_1ABF25054();

  if (v27)
  {
    goto LABEL_54;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v143);
  if (*&v143[0] == v24 && *(&v143[0] + 1) == v25)
  {

LABEL_63:
    if (!*(a1 + 97))
    {
      v65 = *(a1 + 40);
      v64 = *(a1 + 48);
      v66 = v126;
      swift_beginAccess();

      sub_1ABB4DC20();
      v67 = *(*(v66 + 16) + 16);
      sub_1ABB4E024(v67);
      v68 = *(v66 + 16);
      *(v68 + 16) = v67 + 1;
      v69 = v68 + 16 * v67;
      *(v69 + 32) = v65;
      *(v69 + 40) = v64;
      *(v66 + 16) = v68;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v56 = sub_1ABF237F4();
    sub_1ABA7AA24(v56, qword_1ED871B40);
    sub_1ABAE2EC4();
    v57 = sub_1ABF237D4();
    v58 = sub_1ABF24664();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v140 = v60;
      *v59 = 136642819;
      memcpy(v143, a1, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v61 = sub_1ABF23C94();
      v63 = &v140;
LABEL_99:
      v104 = sub_1ABADD6D8(v61, v62, v63);

      *(v59 + 4) = v104;
      _os_log_impl(&dword_1ABA78000, v57, v58, "Failed to parse %{sensitive}s.", v59, 0xCu);
      sub_1ABA84B54(v60);
      MEMORY[0x1AC5AB8B0](v60, -1, -1);
      MEMORY[0x1AC5AB8B0](v59, -1, -1);

      return;
    }

    goto LABEL_100;
  }

  v30 = sub_1ABF25054();

  if (v30)
  {
    goto LABEL_63;
  }

  if (v125 < 0x92)
  {
    __break(1u);
    goto LABEL_109;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_120:
    __break(1u);
LABEL_121:
    swift_once();
LABEL_114:
    v110 = sub_1ABF237F4();
    sub_1ABA7AA24(v110, qword_1ED871B40);
    sub_1ABAE2EC4();
    v111 = sub_1ABF237D4();
    v112 = sub_1ABF24664();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *&v140 = v114;
      *v113 = 136642819;
      memcpy(v143, a1, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v115 = sub_1ABF23C94();
      v117 = sub_1ABADD6D8(v115, v116, &v140);

      *(v113 + 4) = v117;
      _os_log_impl(&dword_1ABA78000, v111, v112, "Failed to parse %{sensitive}s.", v113, 0xCu);
      sub_1ABA84B54(v114);
      MEMORY[0x1AC5AB8B0](v114, -1, -1);
      MEMORY[0x1AC5AB8B0](v113, -1, -1);
    }

    else
    {

      sub_1ABAB480C(a1, &qword_1EB4D1148, &qword_1ABF332D0);
    }

    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), v143);
  if (*&v143[0] == v24 && *(&v143[0] + 1) == v25)
  {

    goto LABEL_70;
  }

  v32 = sub_1ABF25054();

  if (v32)
  {
LABEL_70:
    *(v142 + 10) = *(a1 + 82);
    v70 = *(a1 + 56);
    v140 = *(a1 + 40);
    v141 = v70;
    v142[0] = *(a1 + 72);
    if (BYTE9(v142[1]) != 1)
    {
      if (qword_1ED871B38 == -1)
      {
        goto LABEL_97;
      }

      goto LABEL_74;
    }

    v71 = *(a1 + 56);
    v144[0] = *(a1 + 40);
    v144[1] = v71;
    v145[0] = *(a1 + 72);
    *(v145 + 9) = *(a1 + 81);
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v72 = v124;

    v73 = v72;
    v74 = v146;
    sub_1ABC8A96C(v144, v73, v19);
    if (!v74)
    {
      if (sub_1ABA7E1E0(v19, 1, v20) != 1)
      {
        v82 = v122;
        sub_1ABCF9424();
        v83 = v123;
        swift_beginAccess();
        sub_1ABB4DE30();
        v84 = *(*(v83 + 16) + 16);
        sub_1ABB4E234(v84);
        v85 = *(v83 + 16);
        *(v85 + 16) = v84 + 1;
        v86 = v85 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v84;
        sub_1ABD0AD58();
        *(v83 + 16) = v85;
        swift_endAccess();
        sub_1ABAB480C(&v140, &qword_1EB4D7E60, &unk_1ABF5E780);
        sub_1ABD0ADB0(v82, type metadata accessor for CustomGraphDateRelationship);
        return;
      }

      sub_1ABAB480C(&v140, &qword_1EB4D7E60, &unk_1ABF5E780);
      v75 = &qword_1EB4D5F20;
      v76 = &qword_1ABF4F358;
      v77 = v19;
      goto LABEL_101;
    }

    goto LABEL_72;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), v143);
  if (*&v143[0] == v24 && *(&v143[0] + 1) == v25)
  {

    v36 = v146;
LABEL_78:
    *(v142 + 10) = *(a1 + 82);
    v78 = *(a1 + 56);
    v140 = *(a1 + 40);
    v141 = v78;
    v142[0] = *(a1 + 72);
    if (BYTE9(v142[1]) == 1)
    {
      v79 = *(a1 + 56);
      v128 = *(a1 + 40);
      v129 = v79;
      v130[0] = *(a1 + 72);
      *(v130 + 9) = *(a1 + 81);
      MEMORY[0x1EEE9AC00](v35);
      *(&v118 - 2) = &v128;
      v143[0] = v140;
      v143[1] = v141;
      v143[2] = v142[0];
      *(&v143[2] + 10) = *(v142 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v143, &v135);
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v118 - 4), &unk_1F209A408, &unk_1F209A890, sub_1ABD1AB6C, sub_1ABD19C3C, v80, v81, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, SBYTE8(v129), *&v130[0], *(&v130[0] + 1), *&v130[1], *(&v130[1] + 1), v131, v132, v133, v134, v135, *(&v135 + 1));
      if (!v36)
      {
        v87 = *&v139[0];
        if (*&v139[0])
        {
          v135 = v128;
          v136 = v129;
          v137[0] = v130[0];
          *(v137 + 9) = *(v130 + 9);
          sub_1ABD19208(&v135);
          v52 = v120;
          swift_beginAccess();
          sub_1ABB4DEA8();
          v88 = *(*(v52 + 16) + 16);
          sub_1ABB4E2AC(v88);
LABEL_84:
          v54 = *(v52 + 16);
          *(v54 + 16) = v88 + 1;
          v89 = v54 + (v88 << 6);
          *(v89 + 32) = v138;
          *(v89 + 48) = v87;
          *(v89 + 56) = *(v139 + 8);
          *(v89 + 72) = *(&v139[1] + 8);
          *(v89 + 88) = BYTE8(v139[2]);
          goto LABEL_60;
        }
      }

      goto LABEL_80;
    }

LABEL_96:
    if (qword_1ED871B38 == -1)
    {
LABEL_97:
      v103 = sub_1ABF237F4();
      sub_1ABA7AA24(v103, qword_1ED871B40);
      sub_1ABAE2EC4();
      v57 = sub_1ABF237D4();
      v58 = sub_1ABF24664();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v135 = v60;
        *v59 = 136642819;
        memcpy(v143, a1, 0x62uLL);
        sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
        v61 = sub_1ABF23C94();
        v63 = &v135;
        goto LABEL_99;
      }

LABEL_100:

      v75 = &qword_1EB4D1148;
      v76 = &qword_1ABF332D0;
      v77 = a1;
      goto LABEL_101;
    }

LABEL_74:
    swift_once();
    goto LABEL_97;
  }

  v34 = sub_1ABF25054();

  v36 = v146;
  if (v34)
  {
    goto LABEL_78;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[216], *(_Records_GDEntityPredicate_records + 55), *(_Records_GDEntityPredicate_records + 56), v143);
  if (*&v143[0] == v24 && *(&v143[0] + 1) == v25)
  {

    goto LABEL_86;
  }

  v38 = sub_1ABF25054();

  if (v38)
  {
LABEL_86:
    *(v142 + 10) = *(a1 + 82);
    v90 = *(a1 + 56);
    v140 = *(a1 + 40);
    v141 = v90;
    v142[0] = *(a1 + 72);
    if (BYTE9(v142[1]) != 1)
    {
      goto LABEL_96;
    }

    v91 = *(a1 + 56);
    v128 = *(a1 + 40);
    v129 = v91;
    v130[0] = *(a1 + 72);
    *(v130 + 9) = *(a1 + 81);
    MEMORY[0x1EEE9AC00](v39);
    *(&v118 - 2) = &v128;
    v143[0] = v140;
    v143[1] = v141;
    v143[2] = v142[0];
    *(&v143[2] + 10) = *(v142 + 10);
    sub_1ABAE2EC4();
    sub_1ABD191AC(v143, &v135);
    sub_1ABD08790(sub_1ABD1A8C8, (&v118 - 4), &unk_1F2099F30, sub_1ABD1AB54, sub_1ABD19310);
    if (v36)
    {
      v135 = v128;
      v136 = v129;
      v137[0] = v130[0];
      *(v137 + 9) = *(v130 + 9);
      sub_1ABD19208(&v135);
      sub_1ABAB480C(&v140, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

    v92 = *&v139[0];
    if (*&v139[0])
    {
      LODWORD(v146) = LOBYTE(v139[1]);
      v93 = *(&v139[0] + 1);
      v94 = v138;
      v135 = v128;
      v136 = v129;
      v137[0] = v130[0];
      *(v137 + 9) = *(v130 + 9);
      sub_1ABD19208(&v135);
      v95 = v119;
      swift_beginAccess();
      sub_1ABB4DE78();
      v96 = *(*(v95 + 16) + 16);
      sub_1ABB4E27C(v96);
      v97 = *(v95 + 16);
      *(v97 + 16) = v96 + 1;
      v98 = v97 + 40 * v96;
      *(v98 + 32) = v94;
      *(v98 + 48) = v92;
      *(v98 + 56) = v93;
      *(v98 + 64) = v146 & 1;
      *(v95 + 16) = v97;
      swift_endAccess();
    }

    else
    {
      v135 = v128;
      v136 = v129;
      v137[0] = v130[0];
      *(v137 + 9) = *(v130 + 9);
      sub_1ABD19208(&v135);
    }

LABEL_72:
    v75 = &qword_1EB4D7E60;
    v76 = &unk_1ABF5E780;
    v77 = &v140;
LABEL_101:
    sub_1ABAB480C(v77, v75, v76);
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v143);
  if (*&v143[0] == v24 && *(&v143[0] + 1) == v25)
  {

LABEL_92:
    *(v142 + 10) = *(a1 + 82);
    v99 = *(a1 + 56);
    v140 = *(a1 + 40);
    v141 = v99;
    v142[0] = *(a1 + 72);
    if (BYTE9(v142[1]) == 1)
    {
      v100 = *(a1 + 56);
      v128 = *(a1 + 40);
      v129 = v100;
      v130[0] = *(a1 + 72);
      *(v130 + 9) = *(a1 + 81);
      MEMORY[0x1EEE9AC00](v42);
      *(&v118 - 2) = &v128;
      v143[0] = v140;
      v143[1] = v141;
      v143[2] = v142[0];
      *(&v143[2] + 10) = *(v142 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v143, &v135);
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v118 - 4), &unk_1F2099F58, &unk_1F2099F80, sub_1ABD0D498, sub_1ABD1932C, v101, v102, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, SBYTE8(v129), *&v130[0], *(&v130[0] + 1), *&v130[1], *(&v130[1] + 1), v131, v132, v133, v134, v135, *(&v135 + 1));
      if (!v36)
      {
        v87 = *&v139[0];
        if (*&v139[0])
        {
          v135 = v128;
          v136 = v129;
          v137[0] = v130[0];
          *(v137 + 9) = *(v130 + 9);
          sub_1ABD19208(&v135);
          v52 = v118;
          swift_beginAccess();
          sub_1ABB4DD28();
          v88 = *(*(v52 + 16) + 16);
          sub_1ABB4E12C(v88);
          goto LABEL_84;
        }
      }

LABEL_80:
      v135 = v128;
      v136 = v129;
      v137[0] = v130[0];
      *(v137 + 9) = *(v130 + 9);
      v50 = &v135;
      goto LABEL_57;
    }

    goto LABEL_96;
  }

  v41 = sub_1ABF25054();

  if (v41)
  {
    goto LABEL_92;
  }

  if (v125 < 0xA1)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), v143);
  if (*&v143[0] == v24 && *(&v143[0] + 1) == v25)
  {
  }

  else
  {
    v44 = sub_1ABF25054();

    if ((v44 & 1) == 0)
    {
      if (v125 != 161)
      {
        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), v143);
          if (*&v143[0] != v24 || *(&v143[0] + 1) != v25)
          {
            v46 = sub_1ABF25054();

            if ((v46 & 1) == 0)
            {
              return;
            }

LABEL_110:
            if (*(a1 + 97) == 2)
            {
              v109 = v146;
              sub_1ABC4A630(&v140, *(a1 + 40));
              if (!v109)
              {
                a9 = a10;
                goto LABEL_107;
              }

              return;
            }

LABEL_113:
            if (qword_1ED871B38 == -1)
            {
              goto LABEL_114;
            }

            goto LABEL_121;
          }

LABEL_109:

          goto LABEL_110;
        }

LABEL_127:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_123;
    }
  }

  if (*(a1 + 97) != 2)
  {
    goto LABEL_113;
  }

  sub_1ABC4A630(&v140, *(a1 + 40));
  if (!v36)
  {
LABEL_107:
    v106 = v140;
    swift_beginAccess();
    sub_1ABB4DD40();
    v107 = *(*(a9 + 16) + 16);
    sub_1ABB4E144(v107);
    v108 = *(a9 + 16);
    *(v108 + 16) = v107 + 1;
    *(v108 + 8 * v107 + 32) = v106;
    *(a9 + 16) = v108;
  }
}

void sub_1ABC88460(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v259 = a8;
  v262 = a7;
  v268 = a6;
  v276 = a5;
  v286 = a4;
  v294 = a3;
  v293 = a2;
  v13 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v287 = &v256 - v15;
  v280 = type metadata accessor for CustomGraphDateRelationship(0);
  v274 = *(v280 - 8);
  v16 = *(v274 + 64);
  MEMORY[0x1EEE9AC00](v280);
  v275 = &v256 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a11 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v258 = &v256 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v260 = &v256 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v265 = &v256 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v270 = &v256 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v279 = &v256 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v285 = &v256 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v292 = &v256 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v295 = &v256 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v297 = &v256 - v37;
  v38 = *(a12 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v299 = sub_1ABF247E4();
  v298 = *(v299 - 8);
  v40 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](v299);
  v267 = &v256 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v273 = &v256 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v282 = &v256 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v289 = &v256 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v256 - v49;
  v306 = swift_checkMetadataState();
  v305 = *(v306 - 8);
  v51 = *(v305 + 64);
  MEMORY[0x1EEE9AC00](v306);
  v257 = &v256 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v261 = &v256 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v266 = &v256 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v272 = &v256 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v281 = &v256 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v288 = &v256 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v256 - v64;
  MEMORY[0x1EEE9AC00](v66);
  v68 = (&v256 - v67);
  v303 = AssociatedTypeWitness;
  v69 = AssociatedTypeWitness;
  v70 = v38;
  v300 = *(v69 - 8);
  v71 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v263 = &v256 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v264 = &v256 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v269 = &v256 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v271 = &v256 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v277 = &v256 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v278 = &v256 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v283 = &v256 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v284 = &v256 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v256 - v89;
  v92 = MEMORY[0x1EEE9AC00](v91);
  v296 = &v256 - v93;
  v94 = *(v70 + 24);
  v307 = a1;
  v94(v315, a11, v70, v92);
  v291 = 279;
  v301 = v18;
  v304 = a11;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_140:
    swift_once();
LABEL_87:
    v199 = sub_1ABF237F4();
    sub_1ABA7AA24(v199, qword_1ED871B40);
    v142 = v301;
    v143 = *(v301 + 16);
    p_AssociatedConformanceWitness = &AssociatedConformanceWitness;
LABEL_69:
    v144 = *(p_AssociatedConformanceWitness - 32);
    v145 = v144;
    v146 = v68;
LABEL_36:
    v143(v145, v146, v18);
    v108 = sub_1ABF237D4();
    v147 = sub_1ABF24664();
    if (os_log_type_enabled(v108, v147))
    {
      v148 = swift_slowAlloc();
      v307 = swift_slowAlloc();
      *&v308 = v307;
      *v148 = 136642819;
      v143(v295, v144, v18);
      v149 = sub_1ABF23C94();
      v151 = v150;
      (*(v142 + 8))(v144, v18);
      v152 = sub_1ABADD6D8(v149, v151, &v308);

      *(v148 + 4) = v152;
      _os_log_impl(&dword_1ABA78000, v108, v147, "Failed to parse %{sensitive}s.", v148, 0xCu);
      v153 = v307;
      sub_1ABA84B54(v307);
      MEMORY[0x1AC5AB8B0](v153, -1, -1);
      v118 = v148;
      goto LABEL_16;
    }

    (*(v142 + 8))(v144, v18);
    return;
  }

  v95 = v315[0];
  v96 = v315[1];
  v97 = v315[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), &v308);
  v18 = v310;
  if (v308 == v95 && *(&v308 + 1) == v96)
  {

LABEL_9:
    v100 = v303;

    v101 = v307;
    v102 = v304;
    (*(v70 + 32))(v304, v70);
    v103 = v306;
    (*(AssociatedConformanceWitness + 40))(v306, AssociatedConformanceWitness);
    (*(v305 + 8))(v68, v103);
    if (sub_1ABA7E1E0(v50, 1, v100) == 1)
    {
      (*(v298 + 8))(v50, v299);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v104 = sub_1ABF237F4();
      sub_1ABA7AA24(v104, qword_1ED871B40);
      v105 = v301;
      v106 = *(v301 + 16);
      v107 = v297;
      v106(v297, v101, v102);
      v108 = sub_1ABF237D4();
      v109 = sub_1ABF24664();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = v107;
        v111 = swift_slowAlloc();
        v307 = swift_slowAlloc();
        *&v308 = v307;
        *v111 = 136642819;
        v106(v295, v110, v102);
        v112 = sub_1ABF23C94();
        v114 = v113;
        (*(v105 + 8))(v110, v102);
LABEL_14:
        v115 = sub_1ABADD6D8(v112, v114, &v308);

        *(v111 + 4) = v115;
        _os_log_impl(&dword_1ABA78000, v108, v109, "Failed to parse %{sensitive}s.", v111, 0xCu);
        v116 = v307;
        sub_1ABA84B54(v307);
        v117 = v116;
LABEL_15:
        MEMORY[0x1AC5AB8B0](v117, -1, -1);
        v118 = v111;
LABEL_16:
        MEMORY[0x1AC5AB8B0](v118, -1, -1);

        return;
      }

      (*(v105 + 8))(v107, v102);
      return;
    }

    v119 = v300;
    v120 = v296;
    (*(v300 + 32))(v296, v50, v100);
    (*(v119 + 16))(v90, v120, v100);
    swift_getAssociatedConformanceWitness();
    v121 = v316;
    CustomGraphIdentifierRelationship.init<A>(from:initializationResources:)();
    v316 = v121;
    if (v121 || (v122 = v309) == 0)
    {
LABEL_21:
      (*(v119 + 8))(v120, v100);
      return;
    }

    v123 = v293;
    swift_beginAccess();
    sub_1ABB4DCE0();
    v124 = *(*(v123 + 16) + 16);
    sub_1ABB4E0E4(v124);
    v125 = *(v123 + 16);
    *(v125 + 16) = v124 + 1;
    v126 = v125 + 88 * v124;
    *(v126 + 32) = v308;
    *(v126 + 48) = v122;
    *(v126 + 56) = v310;
    *(v126 + 72) = v311;
    *(v126 + 88) = v312;
    *(v126 + 104) = v313;
LABEL_20:
    *(v123 + 16) = v125;
    swift_endAccess();
    goto LABEL_21;
  }

  v290 = v97;
  v256 = v95;
  v99 = sub_1ABF25054();

  if (v99)
  {
    goto LABEL_9;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_142:
    swift_once();
LABEL_102:
    v220 = sub_1ABF237F4();
    sub_1ABA7AA24(v220, qword_1ED871B40);
    v142 = v301;
    v143 = *(v301 + 16);
    p_AssociatedConformanceWitness = &v297;
    goto LABEL_69;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v308);
  v127 = *(&v308 + 1);
  v128 = v308 == v256 && *(&v308 + 1) == v96;
  v18 = v304;
  v129 = v290;
  if (v128)
  {

LABEL_31:

    v131 = v307;
    (*(v70 + 32))(v18, v70);
    v132 = v306;
    v133 = swift_getAssociatedConformanceWitness();
    v134 = (*(v133 + 24))(v132, v133);
    v136 = v135;
    (*(v305 + 8))(v65, v132);
    if (v136)
    {
      v137 = v294;
      swift_beginAccess();
      sub_1ABB4DC20();
      v138 = *(*(v137 + 16) + 16);
      sub_1ABB4E024(v138);
      v139 = *(v137 + 16);
      *(v139 + 16) = v138 + 1;
      v140 = v139 + 16 * v138;
      *(v140 + 32) = v134;
      *(v140 + 40) = v136;
      *(v137 + 16) = v139;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v141 = sub_1ABF237F4();
    sub_1ABA7AA24(v141, qword_1ED871B40);
    v142 = v301;
    v143 = *(v301 + 16);
    v144 = v292;
    v145 = v292;
    v146 = v131;
    goto LABEL_36;
  }

  v130 = sub_1ABF25054();

  if (v130)
  {
    goto LABEL_31;
  }

  v154 = v291;
  if (v291 < 0x92)
  {
    __break(1u);
    goto LABEL_131;
  }

  v129 = v70;
  v100 = v303;
  v155 = AssociatedConformanceWitness;
  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_144;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v308);
  if (v308 == v256 && *(&v308 + 1) == v96)
  {

    goto LABEL_48;
  }

  v157 = sub_1ABF25054();

  if ((v157 & 1) == 0)
  {
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_147;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v308);
    if (v308 == v256 && *(&v308 + 1) == v96)
    {

LABEL_65:

      v173 = v281;
      v68 = v307;
      (*(v129 + 32))(v18, v129);
      v174 = v282;
      v175 = v306;
      (*(v155 + 40))(v306, v155);
      (*(v305 + 8))(v173, v175);
      if (sub_1ABA7E1E0(v174, 1, v100) == 1)
      {
        (*(v298 + 8))(v174, v299);
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v176 = sub_1ABF237F4();
        sub_1ABA7AA24(v176, qword_1ED871B40);
        v142 = v301;
        v143 = *(v301 + 16);
        p_AssociatedConformanceWitness = &v310;
        goto LABEL_69;
      }

      v119 = v300;
      v120 = v278;
      (*(v300 + 32))(v278, v174, v100);
      v178 = v277;
      (*(v119 + 16))(v277, v120, v100);
      v179 = type metadata accessor for CustomGraphPerson(0);
      v180 = sub_1ABD09EBC(&unk_1EB4D7E80);
      v181 = swift_getAssociatedConformanceWitness();
      v182 = v316;
      CustomGraphAttendeeRelationship.init<A>(from:initializationResources:)(&v308, v178, v179, v100, v180, v181);
      v316 = v182;
      if (v182)
      {
        goto LABEL_21;
      }

      v183 = v309;
      if (!v309)
      {
        goto LABEL_21;
      }

      v123 = v268;
      swift_beginAccess();
      sub_1ABB4DEA8();
      v184 = *(*(v123 + 16) + 16);
      sub_1ABB4E2AC(v184);
LABEL_73:
      v125 = *(v123 + 16);
      *(v125 + 16) = v184 + 1;
      v185 = v125 + (v184 << 6);
      *(v185 + 32) = v308;
      *(v185 + 48) = v183;
      *(v185 + 56) = v310;
      *(v185 + 72) = v311;
      *(v185 + 88) = v312;
      goto LABEL_20;
    }

    v172 = sub_1ABF25054();

    if (v172)
    {
      goto LABEL_65;
    }

    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[216], *(_Records_GDEntityPredicate_records + 55), *(_Records_GDEntityPredicate_records + 56), &v308);
      if (v308 == v256 && *(&v308 + 1) == v96)
      {

        goto LABEL_85;
      }

      v193 = sub_1ABF25054();

      if (v193)
      {
LABEL_85:

        v194 = v129;
        v195 = *(v129 + 32);
        v196 = v272;
        v68 = v307;
        v195(v18, v194);
        v197 = v273;
        v198 = v306;
        (*(v155 + 40))(v306, v155);
        (*(v305 + 8))(v196, v198);
        if (sub_1ABA7E1E0(v197, 1, v100) != 1)
        {
          v200 = v300;
          v201 = v271;
          (*(v300 + 32))(v271, v197, v100);
          v202 = v269;
          (*(v200 + 16))(v269, v201, v100);
          v203 = type metadata accessor for CustomGraphEvent(0);
          v204 = sub_1ABD09EBC(&unk_1EB4D7EA0);
          v205 = swift_getAssociatedConformanceWitness();
          v206 = v316;
          CustomGraphEventRelationship.init<A>(from:initializationResources:)(&v308, v202, v203, v100, v204, v205);
          v316 = v206;
          if (v206 || (v209 = v309) == 0)
          {
            (*(v200 + 8))(v201, v100);
          }

          else
          {
            v210 = BYTE8(v310);
            v211 = v310;
            v212 = v308;
            v213 = v262;
            swift_beginAccess();
            sub_1ABB4DE78();
            v214 = *(*(v213 + 16) + 16);
            sub_1ABB4E27C(v214);
            v215 = *(v213 + 16);
            *(v215 + 16) = v214 + 1;
            v216 = v215 + 40 * v214;
            *(v216 + 32) = v212;
            *(v216 + 48) = v209;
            *(v216 + 56) = v211;
            *(v216 + 64) = v210 & 1;
            *(v213 + 16) = v215;
            swift_endAccess();
            (*(v200 + 8))(v271, v303);
          }

          return;
        }

        (*(v298 + 8))(v197, v299);
        if (qword_1ED871B38 == -1)
        {
          goto LABEL_87;
        }

        goto LABEL_140;
      }

      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v308);
        v127 = *(&v308 + 1);
        if (v308 == v256 && *(&v308 + 1) == v96)
        {

          goto LABEL_100;
        }

        v208 = sub_1ABF25054();

        if (v208)
        {
LABEL_100:

          v217 = v266;
          v68 = v307;
          (*(v129 + 32))(v18, v129);
          v218 = v267;
          v219 = v306;
          (*(v155 + 40))(v306, v155);
          (*(v305 + 8))(v217, v219);
          if (sub_1ABA7E1E0(v218, 1, v100) != 1)
          {
            v119 = v300;
            v120 = v264;
            (*(v300 + 32))(v264, v218, v100);
            v221 = v263;
            (*(v119 + 16))(v263, v120, v100);
            v222 = sub_1ABD19740();
            v223 = swift_getAssociatedConformanceWitness();
            v224 = v316;
            CustomGraphLocationRelationship.init<A>(from:initializationResources:)(&v308, v221, &type metadata for CustomGraphLocation, v100, v222, v223);
            v316 = v224;
            if (v224)
            {
              goto LABEL_21;
            }

            v183 = v309;
            if (!v309)
            {
              goto LABEL_21;
            }

            v123 = v259;
            swift_beginAccess();
            sub_1ABB4DD28();
            v184 = *(*(v123 + 16) + 16);
            sub_1ABB4E12C(v184);
            goto LABEL_73;
          }

          (*(v298 + 8))(v218, v299);
          if (qword_1ED871B38 == -1)
          {
            goto LABEL_102;
          }

          goto LABEL_142;
        }

        if (v154 >= 0xA1)
        {
          if (_Records_GDEntityPredicate_records)
          {
            sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), &v308);
            if (v308 == v256 && *(&v308 + 1) == v96)
            {

LABEL_115:

              v227 = v261;
              v127 = v307;
              (*(v129 + 32))(v18, v129);
              v228 = v306;
              v229 = swift_getAssociatedConformanceWitness();
              (*(v229 + 32))(&v308, v228, v229);
              (*(v305 + 8))(v227, v228);
              if (BYTE8(v308))
              {
                if (qword_1ED871B38 == -1)
                {
LABEL_117:
                  v230 = sub_1ABF237F4();
                  sub_1ABA7AA24(v230, qword_1ED871B40);
                  v231 = v301;
                  v232 = *(v301 + 16);
                  v233 = v260;
                  v232(v260, v127, v18);
                  v108 = sub_1ABF237D4();
                  v109 = sub_1ABF24664();
                  if (os_log_type_enabled(v108, v109))
                  {
                    v111 = swift_slowAlloc();
                    v307 = swift_slowAlloc();
                    *&v308 = v307;
                    *v111 = 136642819;
                    v232(v295, v233, v18);
                    v112 = sub_1ABF23C94();
                    v114 = v234;
                    (*(v231 + 8))(v233, v18);
                    goto LABEL_14;
                  }

                  (*(v231 + 8))(v233, v18);
                  return;
                }

LABEL_145:
                swift_once();
                goto LABEL_117;
              }

              v235 = v316;
              sub_1ABC4A630(&v314, v308);
              v316 = v235;
              if (v235)
              {
                return;
              }

LABEL_120:
              v237 = v314;
              swift_beginAccess();
              sub_1ABB4DD40();
              v238 = *(*(a9 + 16) + 16);
              sub_1ABB4E144(v238);
              v239 = *(a9 + 16);
              *(v239 + 16) = v238 + 1;
              *(v239 + 8 * v238 + 32) = v237;
              *(a9 + 16) = v239;
              return;
            }

            v226 = sub_1ABF25054();

            if (v226)
            {
              goto LABEL_115;
            }

            if (v154 != 161)
            {
              if (_Records_GDEntityPredicate_records)
              {
                sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), &v308);
                if (v308 != v256 || *(&v308 + 1) != v96)
                {
                  v241 = sub_1ABF25054();

                  if ((v241 & 1) == 0)
                  {
                    return;
                  }

LABEL_132:
                  v242 = v257;
                  (*(v129 + 32))(v304, v129);
                  v243 = v306;
                  v244 = swift_getAssociatedConformanceWitness();
                  (*(v244 + 32))(&v308, v243, v244);
                  (*(v305 + 8))(v242, v243);
                  if ((BYTE8(v308) & 1) == 0)
                  {
                    v255 = v316;
                    sub_1ABC4A630(&v314, v308);
                    v316 = v255;
                    if (v255)
                    {
                      return;
                    }

                    a9 = a10;
                    goto LABEL_120;
                  }

                  if (qword_1ED871B38 == -1)
                  {
LABEL_134:
                    v245 = sub_1ABF237F4();
                    sub_1ABA7AA24(v245, qword_1ED871B40);
                    v246 = *(v301 + 16);
                    v246(v258, v307, v304);
                    v108 = sub_1ABF237D4();
                    v247 = sub_1ABF24664();
                    if (os_log_type_enabled(v108, v247))
                    {
                      v111 = swift_slowAlloc();
                      v248 = swift_slowAlloc();
                      *&v308 = v248;
                      *v111 = 136642819;
                      v249 = v258;
                      v250 = v304;
                      v246(v295, v258, v304);
                      v251 = sub_1ABF23C94();
                      v253 = v252;
                      (*(v301 + 8))(v249, v250);
                      v254 = sub_1ABADD6D8(v251, v253, &v308);

                      *(v111 + 4) = v254;
                      _os_log_impl(&dword_1ABA78000, v108, v247, "Failed to parse %{sensitive}s.", v111, 0xCu);
                      sub_1ABA84B54(v248);
                      v117 = v248;
                      goto LABEL_15;
                    }

                    (*(v301 + 8))(v258, v304);
                    return;
                  }

LABEL_148:
                  swift_once();
                  goto LABEL_134;
                }

LABEL_131:

                goto LABEL_132;
              }

LABEL_152:
              __break(1u);
              return;
            }

            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        __break(1u);
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_151;
  }

LABEL_48:

  v158 = v288;
  v159 = v307;
  (*(v129 + 32))(v18, v129);
  v160 = v289;
  v161 = v306;
  (*(v155 + 40))(v306, v155);
  (*(v305 + 8))(v158, v161);
  if (sub_1ABA7E1E0(v160, 1, v100) == 1)
  {
    (*(v298 + 8))(v160, v299);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v162 = sub_1ABF237F4();
    sub_1ABA7AA24(v162, qword_1ED871B40);
    v163 = v301;
    v164 = *(v301 + 16);
    v165 = v285;
    v164(v285, v159, v18);
    v108 = sub_1ABF237D4();
    v109 = sub_1ABF24664();
    if (os_log_type_enabled(v108, v109))
    {
      v111 = swift_slowAlloc();
      v307 = swift_slowAlloc();
      *&v308 = v307;
      *v111 = 136642819;
      v164(v295, v165, v18);
      v112 = sub_1ABF23C94();
      v114 = v166;
      (*(v163 + 8))(v165, v18);
      goto LABEL_14;
    }

    (*(v163 + 8))(v165, v18);
  }

  else
  {
    v167 = v300;
    v168 = v284;
    (*(v300 + 32))(v284, v160, v100);
    (*(v167 + 16))(v283, v168, v100);
    swift_getAssociatedConformanceWitness();

    v169 = v287;
    v170 = v316;
    CustomGraphDateRelationship.init<A>(from:initializationResources:)();
    v316 = v170;
    if (!v170)
    {
      if (sub_1ABA7E1E0(v169, 1, v280) == 1)
      {
        (*(v167 + 8))(v168, v100);
        sub_1ABAB480C(v169, &qword_1EB4D5F20, &qword_1ABF4F358);
        return;
      }

      v186 = v275;
      sub_1ABCF9424();
      v187 = v276;
      swift_beginAccess();
      sub_1ABB4DE30();
      v188 = *(*(v187 + 16) + 16);
      sub_1ABB4E234(v188);
      v189 = *(v187 + 16);
      *(v189 + 16) = v188 + 1;
      v190 = v189 + ((*(v274 + 80) + 32) & ~*(v274 + 80));
      v191 = *(v274 + 72);
      sub_1ABD0AD58();
      *(v187 + 16) = v189;
      swift_endAccess();
      sub_1ABD0ADB0(v186, type metadata accessor for CustomGraphDateRelationship);
    }

    (*(v167 + 8))(v168, v100);
  }
}

void CustomGraphIdentifierRelationship.init<A>(from:initializationResources:)()
{
  sub_1ABAA0DEC();
  sub_1ABA8D140(v2, v3, v4);
  swift_getAssociatedTypeWitness();
  sub_1ABA88904();
  swift_getAssociatedConformanceWitness();
  sub_1ABA9DE80();
  sub_1ABCF9198(v5, v6, v7, v8);
  if (v1)
  {
    sub_1ABA97860();
    v10 = *(v9 + 8);
    v11 = sub_1ABA8B14C();
    v12(v11);
  }

  else
  {
    if (v22)
    {
      sub_1ABD1AED4(v21);
      sub_1ABD1BDD8();
      sub_1ABA97860();
      v14 = *(v13 + 8);
      v15 = sub_1ABA8B14C();
      v16(v15);
    }

    else
    {
      sub_1ABA97860();
      v18 = *(v17 + 8);
      v19 = sub_1ABA8B14C();
      v20(v19);
      sub_1ABD1AED4(v21);
      sub_1ABD1BDD8();
    }

    *(v0 + 16) = v22;
  }
}

uint64_t sub_1ABC8A96C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14[-v9];
  v11 = a1[1];
  v19 = *a1;
  v20 = v11;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v15 = &v19;
  sub_1ABCF37DC(sub_1ABD192D8, a2, &v14[-v9]);
  if (v3)
  {
    goto LABEL_2;
  }

  v13 = type metadata accessor for CustomGraphDateRelationship(0);
  if (!sub_1ABA7E1E0(v10, 1, v13))
  {
    sub_1ABCF9424();
    sub_1ABA7B9B4(a3, 0, 1, v13);
LABEL_2:
    v16 = v19;
    v17 = v20;
    v18[0] = v21[0];
    *(v18 + 9) = *(v21 + 9);
    return sub_1ABD19208(&v16);
  }

  sub_1ABAB480C(v10, &qword_1EB4D5F20, &qword_1ABF4F358);
  v16 = v19;
  v17 = v20;
  v18[0] = v21[0];
  *(v18 + 9) = *(v21 + 9);
  sub_1ABD19208(&v16);
  return sub_1ABA7B9B4(a3, 1, 1, v13);
}

void CustomGraphDateRelationship.init<A>(from:initializationResources:)()
{
  sub_1ABA8CCF0();
  v4 = v3;
  sub_1ABD1AF7C();
  v5 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7ED98();
  v9 = *(v4 + 8);
  sub_1ABAB5F50();
  sub_1ABD1B0B0();
  sub_1ABD1B110();
  sub_1ABCF3BF0();
  if (!v0)
  {
    v14 = type metadata accessor for CustomGraphDateRelationship(0);
    if (sub_1ABA7E1E0(v2, 1, v14))
    {
      sub_1ABAB480C(v2, &qword_1EB4D5F20, &qword_1ABF4F358);
      sub_1ABA8AD50();
      v16 = *(v15 + 8);
      v17 = sub_1ABA7EDF8();
      v18(v17);
      sub_1ABA7ED8C();
      sub_1ABA7B9B4(v19, v20, v21, v14);
      goto LABEL_5;
    }

    sub_1ABA9DF34();
    sub_1ABCF9424();
    sub_1ABA7B9B4(v1, 0, 1, v14);
  }

  sub_1ABA8AD50();
  v11 = *(v10 + 8);
  v12 = sub_1ABA7EDF8();
  v13(v12);
LABEL_5:
  sub_1ABA8A720();
  sub_1ABA8CB14();
}

uint64_t sub_1ABC8B078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1ABF21EB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  *a3 = a1;
  sub_1ABAE2EC4();
  if (sub_1ABA7E1E0(v15, 1, v6) == 1)
  {
    if (*(a1 + 16))
    {
      (*(v7 + 16))(v10, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
      (*(v7 + 32))(v17, v10, v6);
      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    sub_1ABA7B9B4(v17, v18, 1, v6);
    sub_1ABAB480C(a2, &qword_1EB4D9BF0, &qword_1ABF34240);
    if (sub_1ABA7E1E0(v15, 1, v6) != 1)
    {
      sub_1ABAB480C(v15, &qword_1EB4D9BF0, &qword_1ABF34240);
    }
  }

  else
  {
    sub_1ABAB480C(a2, &qword_1EB4D9BF0, &qword_1ABF34240);
    (*(v7 + 32))(v17, v15, v6);
    sub_1ABA7B9B4(v17, 0, 1, v6);
  }

  v19 = *(sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20) + 28);
  return sub_1ABAE2F1C();
}

uint64_t sub_1ABC8B318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for CustomGraphDateRelationship(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  *a3 = a1;
  sub_1ABAE2EC4();
  if (sub_1ABA7E1E0(v12, 1, v6) == 1)
  {
    if (*(a1 + 16))
    {
      v16 = *(v7 + 80);
      sub_1ABD0AD58();
      sub_1ABCF9424();
      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    sub_1ABA7B9B4(v15, v17, 1, v6);
    sub_1ABAB480C(a2, &qword_1EB4D5F20, &qword_1ABF4F358);
    if (sub_1ABA7E1E0(v12, 1, v6) != 1)
    {
      sub_1ABAB480C(v12, &qword_1EB4D5F20, &qword_1ABF4F358);
    }
  }

  else
  {
    sub_1ABAB480C(a2, &qword_1EB4D5F20, &qword_1ABF4F358);
    sub_1ABCF9424();
    sub_1ABA7B9B4(v15, 0, 1, v6);
  }

  v18 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  return sub_1ABAE2F1C();
}

void CustomGraphEvent.init(typedId:all_eventTypes:all_name:all_date:all_attendees:all_cooccurringEvents:all_locations:all_startLocation:all_endLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1ABA7E2A8();
  v28 = v27;
  v50 = v29;
  v31 = v30;
  v33 = v32;
  sub_1ABD1B80C();
  sub_1ABD1B3D0();
  v34 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v34);
  v36 = *(v35 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA9F7AC();
  *v21 = *v25;
  v21[1] = v24;
  v38 = sub_1ABB2B834(v23);
  v21[2] = v23;
  v21[3] = v38;
  v21[4] = v39;
  v40 = sub_1ABA8B2DC();
  v41 = type metadata accessor for CustomGraphEvent(v40);
  sub_1ABC8B318(v22, v26, (v21 + v41[7]));
  *(v21 + v41[8]) = v33;
  *(v21 + v41[9]) = v31;
  *(v21 + v41[10]) = v50;
  if (*(v28 + 16))
  {
    v42 = *(v28 + 32);
  }

  sub_1ABAAFB28();
  v43 = v21 + v41[11];
  *v43 = v28;
  *(v43 + 1) = v44;
  v43[16] = v45;
  if (*(a21 + 16))
  {
    v46 = *(a21 + 32);
  }

  sub_1ABAAFB28();
  v47 = v21 + v41[12];
  *v47 = a21;
  *(v47 + 1) = v48;
  v47[16] = v49;
  sub_1ABA7BC1C();
}

uint64_t sub_1ABC8B6F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x707954746E657665 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125924 && a2 == 0xE400000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6565646E65747461 && a2 == 0xE900000000000073;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001ABF8D5C0 == a2;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x636F4C7472617473 && a2 == 0xED00006E6F697461;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1ABF25054();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABC8B9E4(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 0x707954746E657665;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 0x6565646E65747461;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0x636F4C7472617473;
      break;
    case 8:
      result = 0x7461636F4C646E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC8BB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC8B6F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC8BB34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABC8B9DC();
  *a1 = result;
  return result;
}

uint64_t sub_1ABC8BB5C(uint64_t a1)
{
  v2 = sub_1ABD09D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC8BB98(uint64_t a1)
{
  v2 = sub_1ABD09D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v2 = sub_1ABAD219C(&qword_1EB4D6580, &qword_1ABF50B30);
  sub_1ABA96D00(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD09D0C();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v6 = sub_1ABA8C744();
  sub_1ABAD219C(v6, v7);
  sub_1ABA7D99C();
  sub_1ABD1044C(v8);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    v14 = v1[1];
    sub_1ABA8B6EC();
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABD09D60();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    v9 = v1[2];
    v15 = v1[3];
    v16 = v1[4];
    sub_1ABD1B178();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    if (v9)
    {
      sub_1ABAA1210();
    }

    else
    {
      sub_1ABAA1210();

      v10 = type metadata accessor for CustomGraphEvent(0);
      sub_1ABAA4C54(v10);
      sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
      sub_1ABA80C14();
      sub_1ABD0A358(v11);
      sub_1ABA82E78();
      sub_1ABAA6564();
      sub_1ABAA17C0();
      sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
      sub_1ABD09F00();
      sub_1ABAA2D10();
      sub_1ABAA6564();
      sub_1ABD1AF88(0);
      sub_1ABD1AFDC();
      sub_1ABAD219C(&qword_1EB4D65F8, &dword_1ABF50B60);
      sub_1ABD09FB0();
      sub_1ABAA2D10();
      sub_1ABAA6564();
      sub_1ABD1AF88(348124);
      sub_1ABD1AFD0();
      sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
      sub_1ABD0A060();
      sub_1ABAA2D10();
      sub_1ABAA6564();
      sub_1ABAA2300(16);
      sub_1ABD1AFC4();

      sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
      sub_1ABD0A110();
      sub_1ABAA1328();
      sub_1ABD1AFA0();

      sub_1ABAA2300(0);
      sub_1ABD1AFB8();

      sub_1ABD1ABF4();
      sub_1ABD1AF60();
      sub_1ABD1AFA0();
    }
  }

  v12 = sub_1ABA89DE4();
  v13(v12);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA8D4BC();
  v3 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA7BBB0(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA8176C();
  v38 = sub_1ABAD219C(&qword_1EB4D6650, &qword_1ABF50B90);
  sub_1ABA7BB64(v38);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA9F7AC();
  v10 = type metadata accessor for CustomGraphEvent(0);
  v11 = sub_1ABAB6924(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7C21C();
  v15 = v14;
  v16 = v0[3];
  v17 = v0[4];
  v18 = sub_1ABA7ABE4();
  sub_1ABA88DCC(v18, v19);
  sub_1ABD09D0C();
  sub_1ABA88E70();
  sub_1ABF252C4();
  if (!v1)
  {
    v20 = sub_1ABA7ABE4();
    sub_1ABAD219C(v20, v21);
    sub_1ABAAFAF4();
    sub_1ABA8F54C();
    sub_1ABD1044C(v22);
    sub_1ABD1AC44();
    sub_1ABD1BBF8();
    *v15 = v40;
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABA8B6EC();
    sub_1ABD0A1FC();
    sub_1ABA8B4F0();
    sub_1ABD1C1C4();
    sub_1ABAAFAD4();
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD1B178();
    sub_1ABD0A2D4();
    sub_1ABA8B4F0();
    sub_1ABD1B4DC();
    sub_1ABD1B11C();
    sub_1ABA7F460();
    sub_1ABD0A358(v26);
    sub_1ABD1B110();
    sub_1ABF24E64();
    v27 = v39[7];
    sub_1ABA94EB8();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABA8B908();
    sub_1ABD0A408();
    sub_1ABAA1F98();
    sub_1ABF24E64();
    sub_1ABA897A8();
    sub_1ABAD219C(&qword_1EB4D65F8, &dword_1ABF50B60);
    sub_1ABD1AFDC();
    sub_1ABD0A4B8();
    sub_1ABA8B4F0();
    sub_1ABD1B4BC();
    sub_1ABD1B7DC();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD1AFD0();
    sub_1ABD0A568();
    sub_1ABA8B4F0();
    sub_1ABD1B4BC();
    *(v15 + v39[10]) = v40;
    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD1AFC4();
    sub_1ABD0A618();
    sub_1ABA96FDC();
    sub_1ABD1B030();
    sub_1ABF24E64();
    sub_1ABA898CC();
    v29 = *(v28 + 44);
    sub_1ABA8A644(v30);
    sub_1ABAB65FC(8);
    sub_1ABD1B030();
    sub_1ABF24E64();
    v31 = sub_1ABAB3C1C();
    v32(v31);
    sub_1ABA898CC();
    v34 = *(v33 + 48);
    sub_1ABA8A644(v35);
    sub_1ABD0AD58();
    sub_1ABA84B54(v0);
    v36 = sub_1ABA7D000();
    sub_1ABD0ADB0(v36, v37);
    goto LABEL_12;
  }

  sub_1ABAA0EF8();
  sub_1ABA84B54(v0);
  if (v3)
  {
    sub_1ABAB480C(v15 + v39[7], &qword_1EB4D5F30, &unk_1ABF50B00);
    if ((v2 & 1) == 0)
    {
LABEL_10:
      if (v17)
      {
LABEL_11:
        v25 = *(v15 + v39[9]);

        if ((v16 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v2)
  {
    goto LABEL_10;
  }

  v23 = *(v15 + v39[8]);

  if (v17)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v16)
  {
LABEL_7:
    v24 = *(v15 + v39[10]);
  }

LABEL_12:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x510), *(_Records_GDEntityClass_records + 0x518), *(_Records_GDEntityClass_records + 0x520), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABC8C598()
{
  v1 = sub_1ABA8971C();
  v3 = *(v0 + *(v2(v1) + 32));
}

void sub_1ABC8C688()
{
  sub_1ABA7BCA8();
  v85 = v1;
  v86 = v2;
  v3 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7FBE0();
  v81 = v7;
  v82 = type metadata accessor for CustomGraphActivityEvent(0);
  v8 = sub_1ABA7BBB0(v82);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7C21C();
  v83 = v11;
  sub_1ABA7D028();
  v94 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1ABD1B074(v94);
  v84 = v13;
  sub_1ABA7D028();
  v90 = swift_allocObject();
  sub_1ABD1B074(v90);
  v73 = v14;
  sub_1ABA7D028();
  v89 = swift_allocObject();
  sub_1ABD1B074(v89);
  v74 = v15;
  sub_1ABA7D028();
  v88 = swift_allocObject();
  sub_1ABD1B074(v88);
  v75 = v16;
  sub_1ABA7D028();
  v87 = swift_allocObject();
  sub_1ABD1B074(v87);
  v76 = v17;
  sub_1ABA7D028();
  v18 = swift_allocObject();
  sub_1ABD1B074(v18);
  v77 = v19;
  sub_1ABA7D028();
  v20 = swift_allocObject();
  sub_1ABD1B074(v20);
  v78 = v21;
  sub_1ABA7D028();
  v22 = swift_allocObject();
  sub_1ABD1B074(v22);
  v79 = v23;
  sub_1ABA7D028();
  v24 = swift_allocObject();
  sub_1ABD1B074(v24);
  v80 = v25;
  sub_1ABA7D028();
  v26 = swift_allocObject();
  sub_1ABD1B074(v26);
  sub_1ABA7D028();
  v27 = swift_allocObject();
  *(v27 + 16) = v12;
  sub_1ABD1B534();
  v28 = swift_allocObject();
  v28[2] = v94;
  v28[3] = v90;
  v28[4] = v86;
  v28[5] = v89;
  v28[6] = v88;
  v28[7] = v87;
  v28[8] = v18;
  v28[9] = v20;
  v28[10] = v22;
  v28[11] = v24;
  v28[12] = v26;
  v28[13] = v27;

  sub_1ABD1AD3C();
  sub_1ABC82584(v85, v29, 0, v30, v28, v31, &v92);
  if (v0)
  {
  }

  else
  {

    sub_1ABD1C01C();
    sub_1ABA7F2A0();
    v32 = *(v26 + 16);
    v33 = *(v32 + 16);
    if (v33)
    {

      v34 = MEMORY[0x1E69E7CC0];
      v35 = 32;
      do
      {
        sub_1ABD1B924(v32 + v35);
        if (v93)
        {
          sub_1ABAA0AB0(v93);
          sub_1ABD1B9E4();
          if (v91 != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = *(v34 + 16);
              sub_1ABA7BEF0();
              sub_1ABADADEC();
              v34 = v39;
            }

            v37 = *(v34 + 16);
            v36 = *(v34 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_1ABA7BBEC(v36);
              sub_1ABADADEC();
              v34 = v40;
            }

            *(v34 + 16) = v37 + 1;
            *(v34 + v37 + 32) = v91;
          }
        }

        v35 += 8;
        --v33;
      }

      while (v33);
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
    }

    sub_1ABD1BE5C();
    sub_1ABC4A730(v41);
    *v83 = v92;
    sub_1ABD1B0E8();
    v83[1] = *v84;
    sub_1ABA8A740();
    v42 = *v73;
    v43 = sub_1ABB2B834(*v73);
    v83[2] = v42;
    v83[3] = v43;
    v83[4] = v44;
    sub_1ABA8A740();
    v45 = *v74;
    sub_1ABD1AF20();
    sub_1ABA7ED8C();
    sub_1ABA7B9B4(v46, v47, v48, v49);
    v50 = v82[7];

    sub_1ABC8B318(v51, v81, (v83 + v50));
    sub_1ABD1B0E8();
    *(v83 + v82[8]) = *v75;
    sub_1ABD1B0E8();
    *(v83 + v82[9]) = *v76;
    sub_1ABD1B0E8();
    *(v83 + v82[10]) = *v77;
    sub_1ABAAA634();
    *(v83 + v82[11]) = *v78;
    sub_1ABA890D8();
    if (*(*v79 + 16))
    {
      v52 = *(*v79 + 32);
    }

    sub_1ABAAFB28();
    v53 = v83 + v82[12];
    sub_1ABD1B8E4(v54);
    sub_1ABD1B1F4();
    sub_1ABD1BFD0();
    if (v55)
    {
      v56 = *(v80 + 32);
    }

    sub_1ABAAFB28();
    v57 = v83 + v82[13];
    *v57 = v80;
    *(v57 + 1) = v58;
    v57[16] = v59;
    if (*(v32 + 16))
    {
      v60 = *(v32 + 32);
    }

    sub_1ABAAFB28();
    v62 = v83 + v82[14];
    *v62 = v32;
    *(v62 + 1) = v63;
    v62[16] = v64;
    if (*(v34 + 16))
    {
      v65 = *(v34 + 32);
    }

    else
    {
      v65 = 25;
    }

    v66 = v83 + v82[15];
    *v66 = v34;
    v66[8] = v65;
    v67 = v61;
    sub_1ABA7F2A0();
    v68 = *v67;
    v69 = *(*v67 + 16);
    if (v69)
    {
      v70 = *(v68 + 32);
    }

    else
    {
      v70 = 0;
    }

    v71 = v69 == 0;

    v72 = v83 + v82[16];
    *v72 = v68;
    *(v72 + 1) = v70;
    v72[16] = v71;

    sub_1ABCF9424();
  }

  sub_1ABD1C004();
  sub_1ABA7BC90();
}

void sub_1ABC8CE40()
{
  sub_1ABA7BCA8();
  v75 = v1;
  v78 = v2;
  v72 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v71 = v8;
  sub_1ABA7D028();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  sub_1ABD1B09C(v9);
  v73 = v11;
  sub_1ABA7D028();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v64 = (v12 + 16);
  sub_1ABA7D028();
  v13 = swift_allocObject();
  sub_1ABD1B09C(v13);
  v84 = v14;
  sub_1ABA7D028();
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  v65 = (v15 + 16);
  sub_1ABA7D028();
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v66 = (v16 + 16);
  sub_1ABA7D028();
  v76 = swift_allocObject();
  sub_1ABD1B09C(v76);
  v67 = v17;
  sub_1ABA7D028();
  v77 = swift_allocObject();
  sub_1ABD1B09C(v77);
  v68 = v18;
  sub_1ABA7D028();
  v79 = swift_allocObject();
  sub_1ABD1B09C(v79);
  v69 = v19;
  sub_1ABA7D028();
  v80 = swift_allocObject();
  sub_1ABD1B09C(v80);
  v70 = v20;
  sub_1ABA7D028();
  v21 = swift_allocObject();
  sub_1ABD1B09C(v21);
  v74 = v22;
  sub_1ABA7D028();
  v23 = swift_allocObject();
  sub_1ABD1B09C(v23);
  sub_1ABD1B534();
  v24 = swift_allocObject();
  v24[2] = v9;
  v24[3] = v12;
  v24[4] = v78;
  v24[5] = v13;
  v24[6] = v15;
  v24[7] = v16;
  v24[8] = v76;
  v24[9] = v77;
  v24[10] = v79;
  v24[11] = v80;
  v24[12] = v21;
  v24[13] = v23;

  v25 = sub_1ABA89488();
  v75(&v82, v25, 0, sub_1ABD1A0F4, v24);
  if (v0)
  {
  }

  else
  {

    sub_1ABD1B8F4();
    sub_1ABA8A740();
    v26 = *v74;
    v27 = *(*v74 + 16);
    if (v27)
    {
      v28 = *v74;

      v29 = MEMORY[0x1E69E7CC0];
      v30 = 32;
      v31 = v84;
      do
      {
        sub_1ABD1B924(v26 + v30);
        if (v83)
        {
          sub_1ABAA0AB0(v83);
          sub_1ABD1B9E4();
          if (v81 != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA8A534();
              sub_1ABADADEC();
              v29 = v34;
            }

            v33 = *(v29 + 16);
            v32 = *(v29 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_1ABA7BBEC(v32);
              sub_1ABA9ECC4();
              sub_1ABADADEC();
              v29 = v35;
            }

            *(v29 + 16) = v33 + 1;
            *(v29 + v33 + 32) = v81;
            v31 = v84;
          }
        }

        v30 += 8;
        --v27;
      }

      while (v27);
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
      v31 = v84;
    }

    sub_1ABC4A730(&v82);
    sub_1ABD1BF7C(v82);
    sub_1ABA890D8();
    v72[1] = *v73;
    sub_1ABD1B058();
    v36 = *v64;
    v37 = sub_1ABB2B834(*v64);
    v72[2] = v36;
    v72[3] = v37;
    v72[4] = v38;
    sub_1ABD1B1F4();
    v39 = *v31;
    sub_1ABD1AF20();
    v43 = sub_1ABA9DFB8(v71, v40, v41, v42);
    v44 = type metadata accessor for CustomGraphActivityEvent(v43);
    v45 = v44[7];

    sub_1ABC8B318(v46, v71, (v72 + v45));
    sub_1ABD1B0E8();
    *(v72 + v44[8]) = *v65;
    sub_1ABD1B0E8();
    *(v72 + v44[9]) = *v66;
    sub_1ABD1B0E8();
    *(v72 + v44[10]) = *v67;
    sub_1ABD1B0E8();
    *(v72 + v44[11]) = *v68;
    sub_1ABD1B0E8();
    if (*(*v69 + 16))
    {
      v47 = *(*v69 + 32);
    }

    sub_1ABAAFB28();
    v48 = v72 + v44[12];
    sub_1ABD1B8E4(v49);
    sub_1ABD1B080();
    sub_1ABD1B610();
    if (v50)
    {
      v51 = *(v70 + 32);
    }

    sub_1ABAAFB28();
    sub_1ABD1BFBC(v52);
    sub_1ABD1BE24();
    if (v53)
    {
      v54 = v74[4];
    }

    sub_1ABAAFB28();
    v55 = (v72 + v44[14]);
    *v55 = v74;
    v55[1] = v56;
    sub_1ABA889F8(v57);
    if (v58)
    {
      v59 = *(v29 + 32);
    }

    else
    {
      v59 = 25;
    }

    sub_1ABD1BAD4(v59);
    v61 = v60;
    sub_1ABA7F2A0();
    v62 = *v61;
    if (*(v62 + 16))
    {
      v63 = *(v62 + 32);
    }

    sub_1ABD1C1E4(v44[16]);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABC8D554()
{
  sub_1ABA7BCA8();
  v77 = v1;
  v78 = v2;
  v79 = v3;
  v82 = v4;
  v75 = v5;
  v6 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v6);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v73 = v10;
  sub_1ABA7D028();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1ABD1B09C(v11);
  v65 = v13;
  sub_1ABA7D028();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v64 = (v14 + 16);
  sub_1ABA7D028();
  v15 = swift_allocObject();
  sub_1ABD1B09C(v15);
  v66 = v16;
  sub_1ABA7D028();
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v67 = (v17 + 16);
  sub_1ABA7D028();
  v81 = swift_allocObject();
  sub_1ABD1B09C(v81);
  v68 = v18;
  sub_1ABA7D028();
  v80 = swift_allocObject();
  sub_1ABD1B09C(v80);
  v69 = v19;
  sub_1ABA7D028();
  v88 = swift_allocObject();
  sub_1ABD1B09C(v88);
  v70 = v20;
  sub_1ABA7D028();
  v83 = swift_allocObject();
  sub_1ABD1B09C(v83);
  v71 = v21;
  sub_1ABA7D028();
  v84 = swift_allocObject();
  sub_1ABD1B09C(v84);
  v72 = v22;
  sub_1ABA7D028();
  v23 = swift_allocObject();
  sub_1ABD1B09C(v23);
  v76 = v24;
  sub_1ABA7D028();
  v25 = swift_allocObject();
  sub_1ABD1B09C(v25);
  v74 = v26;
  v27 = swift_allocObject();
  v27[2] = v78;
  v27[3] = v79;
  v27[4] = v11;
  v27[5] = v14;
  v27[6] = v82;
  v27[7] = v15;
  v27[8] = v17;
  v27[9] = v81;
  v27[10] = v80;
  v27[11] = v88;
  v27[12] = v83;
  v27[13] = v84;
  v27[14] = v23;
  v27[15] = v25;

  v28 = sub_1ABA89488();
  v77(&v86, v28, 0, sub_1ABD1A0B8, v27);
  if (v0)
  {
  }

  else
  {

    sub_1ABD1B8F4();
    sub_1ABA8A740();
    v29 = *v76;
    v30 = *(*v76 + 16);
    if (v30)
    {
      v31 = *v76;

      v32 = MEMORY[0x1E69E7CC0];
      v33 = 32;
      do
      {
        sub_1ABD1B924(v29 + v33);
        if (v87)
        {
          sub_1ABAA0AB0(v87);
          sub_1ABD1B9E4();
          if (v85 != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA8A534();
              sub_1ABADADEC();
              v32 = v36;
            }

            v35 = *(v32 + 16);
            v34 = *(v32 + 24);
            if (v35 >= v34 >> 1)
            {
              sub_1ABA7BBEC(v34);
              sub_1ABA9ECC4();
              sub_1ABADADEC();
              v32 = v37;
            }

            *(v32 + 16) = v35 + 1;
            *(v32 + v35 + 32) = v85;
          }
        }

        v33 += 8;
        --v30;
      }

      while (v30);
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }

    sub_1ABC4A730(&v86);
    sub_1ABD1BF7C(v86);
    sub_1ABD1B058();
    v75[1] = *v65;
    sub_1ABD1B058();
    v38 = *v64;
    v39 = sub_1ABB2B834(*v64);
    v75[2] = v38;
    v75[3] = v39;
    v75[4] = v40;
    sub_1ABD1B058();
    v41 = *v66;
    sub_1ABD1AF20();
    v45 = sub_1ABA9DFB8(v73, v42, v43, v44);
    v46 = type metadata accessor for CustomGraphActivityEvent(v45);
    v47 = v46[7];

    sub_1ABC8B318(v48, v73, (v75 + v47));
    sub_1ABD1B080();
    *(v75 + v46[8]) = *v67;
    sub_1ABD1B080();
    *(v75 + v46[9]) = *v68;
    sub_1ABD1B080();
    *(v75 + v46[10]) = *v69;
    sub_1ABD1B080();
    *(v75 + v46[11]) = *v70;
    sub_1ABD1B080();
    if (*(*v71 + 16))
    {
      v49 = *(*v71 + 32);
    }

    sub_1ABAAFB28();
    v50 = v75 + v46[12];
    sub_1ABD1B8E4(v51);
    sub_1ABD1B080();
    sub_1ABD1B610();
    if (v52)
    {
      v53 = *(v72 + 32);
    }

    sub_1ABAAFB28();
    sub_1ABD1BFBC(v54);
    v56 = *v55;
    if (*(*v55 + 16))
    {
      v57 = *(v56 + 32);
    }

    sub_1ABAAFB28();
    v58 = (v75 + v46[14]);
    *v58 = v56;
    v58[1] = v59;
    sub_1ABA889F8(v60);
    if (v61)
    {
      v62 = *(v32 + 32);
    }

    else
    {
      v62 = 25;
    }

    sub_1ABD1BAD4(v62);
    sub_1ABAAA634();
    if (*(*v74 + 16))
    {
      v63 = *(*v74 + 32);
    }

    sub_1ABD1C1E4(v46[16]);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABC8DCFC(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x510), *(_Records_GDEntityClass_records + 0x518), *(_Records_GDEntityClass_records + 0x520), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x510), *(_Records_GDEntityClass_records + 0x518), *(_Records_GDEntityClass_records + 0x520), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABC8DF94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v147 = a7;
  v148 = a6;
  v150 = a5;
  v151 = a4;
  v152 = a2;
  v17 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v144 - v19;
  v21 = type metadata accessor for CustomGraphDateRelationship(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = v25;
  v146 = a8;
  v153 = v13;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    __break(1u);
    goto LABEL_151;
  }

  v172 = a1;
  v26 = *a1;
  v27 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), v169);
  if (*&v169[0] == v26 && *(&v169[0] + 1) == v27)
  {

LABEL_69:
    v65 = v172;
    *(v168 + 10) = *(v172 + 82);
    v66 = *(v172 + 7);
    v166 = *(v172 + 5);
    v167 = v66;
    v168[0] = *(v172 + 9);
    v67 = v153;
    if (BYTE9(v168[1]) == 1)
    {
      v68 = *(v172 + 7);
      v164 = *(v172 + 5);
      v165[0] = v68;
      v165[1] = *(v172 + 9);
      *(&v165[1] + 9) = *(v172 + 81);
      MEMORY[0x1EEE9AC00](v30);
      *(&v144 - 2) = &v164;
      v161 = v166;
      v162 = v167;
      *v163 = v168[0];
      *(&v163[1] + 2) = *(v168 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(&v161, &v154);
      sub_1ABCF8EE8(sub_1ABD1A8C8, v169);
      if (v67 || (v70 = *&v169[1]) == 0)
      {
        v154 = v164;
        v155 = v165[0];
        v156[0] = v165[1];
        *(v156 + 9) = *(&v165[1] + 9);
        v69 = &v154;
LABEL_72:
        sub_1ABD19208(v69);
LABEL_77:
        sub_1ABAB480C(&v166, &qword_1EB4D7E60, &unk_1ABF5E780);
        return;
      }

      v154 = v164;
      v155 = v165[0];
      v156[0] = v165[1];
      *(v156 + 9) = *(&v165[1] + 9);
      sub_1ABD19208(&v154);
      v71 = v152;
      swift_beginAccess();
      sub_1ABB4DCE0();
      v72 = *(*(v71 + 16) + 16);
      sub_1ABB4E0E4(v72);
      v73 = *(v71 + 16);
      *(v73 + 16) = v72 + 1;
      v74 = v73 + 88 * v72;
      *(v74 + 32) = v169[0];
      *(v74 + 48) = v70;
      *(v74 + 56) = *(&v169[1] + 8);
      *(v74 + 72) = *(&v169[2] + 8);
      *(v74 + 88) = *(&v169[3] + 8);
      *(v74 + 104) = *(&v169[4] + 8);
LABEL_75:
      *(v71 + 16) = v73;
      goto LABEL_76;
    }

LABEL_111:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v117 = sub_1ABF237F4();
    sub_1ABA7AA24(v117, qword_1ED871B40);
    sub_1ABAE2EC4();
    v76 = sub_1ABF237D4();
    v77 = sub_1ABF24664();
    if (os_log_type_enabled(v76, v77))
    {
LABEL_114:
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v161 = v79;
      *v78 = 136642819;
      memcpy(v169, v65, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v80 = sub_1ABF23C94();
      v82 = &v161;
      goto LABEL_115;
    }

    goto LABEL_116;
  }

  v144 = v27;
  v145 = v26;
  v29 = sub_1ABF25054();

  if (v29)
  {
    goto LABEL_69;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_159;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v169);
  if (*&v169[0] == v145 && *(&v169[0] + 1) == v144)
  {

LABEL_79:
    v65 = v172;
    if (!*(v172 + 97))
    {
      v84 = v172[5];
      v83 = v172[6];
      swift_beginAccess();

      sub_1ABB4DC20();
      v85 = *(*(a3 + 16) + 16);
      sub_1ABB4E024(v85);
      v86 = *(a3 + 16);
      *(v86 + 16) = v85 + 1;
      v87 = v86 + 16 * v85;
      *(v87 + 32) = v84;
      *(v87 + 40) = v83;
      *(a3 + 16) = v86;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v75 = sub_1ABF237F4();
    sub_1ABA7AA24(v75, qword_1ED871B40);
    sub_1ABAE2EC4();
    v76 = sub_1ABF237D4();
    v77 = sub_1ABF24664();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v166 = v79;
      *v78 = 136642819;
      memcpy(v169, v65, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v80 = sub_1ABF23C94();
      v82 = &v166;
LABEL_115:
      v118 = sub_1ABADD6D8(v80, v81, v82);

      *(v78 + 4) = v118;
      _os_log_impl(&dword_1ABA78000, v76, v77, "Failed to parse %{sensitive}s.", v78, 0xCu);
      sub_1ABA84B54(v79);
      MEMORY[0x1AC5AB8B0](v79, -1, -1);
      MEMORY[0x1AC5AB8B0](v78, -1, -1);

      return;
    }

LABEL_116:

    v91 = &qword_1EB4D1148;
    v92 = &qword_1ABF332D0;
    v93 = v65;
    goto LABEL_117;
  }

  v32 = sub_1ABF25054();

  if (v32)
  {
    goto LABEL_79;
  }

  v33 = v153;
  v34 = v145;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_161:
    swift_once();
LABEL_126:
    v123 = sub_1ABF237F4();
    sub_1ABA7AA24(v123, qword_1ED871B40);
    v65 = v172;
    sub_1ABAE2EC4();
    v76 = sub_1ABF237D4();
    v77 = sub_1ABF24664();
    if (!os_log_type_enabled(v76, v77))
    {

      v124 = v65;
LABEL_157:
      sub_1ABAB480C(v124, &qword_1EB4D1148, &qword_1ABF332D0);
      return;
    }

    goto LABEL_114;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), v169);
  if (*&v169[0] == v34 && *(&v169[0] + 1) == v144)
  {

LABEL_86:
    v65 = v172;
    *(v168 + 10) = *(v172 + 82);
    v88 = *(v172 + 7);
    v166 = *(v172 + 5);
    v167 = v88;
    v168[0] = *(v172 + 9);
    if (BYTE9(v168[1]) == 1)
    {
      v89 = *(v172 + 7);
      v170[0] = *(v172 + 5);
      v170[1] = v89;
      v171[0] = *(v172 + 9);
      *(v171 + 9) = *(v172 + 81);
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v90 = v151;

      sub_1ABC8A96C(v170, v90, v20);
      if (!v33)
      {
        if (sub_1ABA7E1E0(v20, 1, v21) != 1)
        {
          sub_1ABCF9424();
          v98 = v150;
          swift_beginAccess();
          sub_1ABB4DE30();
          v99 = *(*(v98 + 16) + 16);
          sub_1ABB4E234(v99);
          v100 = *(v98 + 16);
          *(v100 + 16) = v99 + 1;
          v101 = v100 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v99;
          sub_1ABD0AD58();
          *(v98 + 16) = v100;
          swift_endAccess();
          sub_1ABAB480C(&v166, &qword_1EB4D7E60, &unk_1ABF5E780);
          sub_1ABD0ADB0(v24, type metadata accessor for CustomGraphDateRelationship);
          return;
        }

        sub_1ABAB480C(&v166, &qword_1EB4D7E60, &unk_1ABF5E780);
        v91 = &qword_1EB4D5F20;
        v92 = &qword_1ABF4F358;
        v93 = v20;
        goto LABEL_117;
      }

      goto LABEL_88;
    }

    goto LABEL_111;
  }

  v36 = sub_1ABF25054();

  if (v36)
  {
    goto LABEL_86;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_163;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), v169);
  if (*&v169[0] == v145 && *(&v169[0] + 1) == v144)
  {

LABEL_92:
    v65 = v172;
    *(v168 + 10) = *(v172 + 82);
    v94 = *(v172 + 7);
    v166 = *(v172 + 5);
    v167 = v94;
    v168[0] = *(v172 + 9);
    if (BYTE9(v168[1]) == 1)
    {
      v95 = *(v172 + 7);
      v154 = *(v172 + 5);
      v155 = v95;
      v156[0] = *(v172 + 9);
      *(v156 + 9) = *(v172 + 81);
      MEMORY[0x1EEE9AC00](v39);
      *(&v144 - 2) = &v154;
      v169[0] = v166;
      v169[1] = v167;
      v169[2] = v168[0];
      *(&v169[2] + 10) = *(v168 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v169, &v161);
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v144 - 4), &unk_1F209A408, &unk_1F209A890, sub_1ABD1AB6C, sub_1ABD19C3C, v96, v97, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, *(&v154 + 1), v155, SBYTE8(v155), *&v156[0], *(&v156[0] + 1), *&v156[1], *(&v156[1] + 1), v157, v158, v159, v160, v161, *(&v161 + 1));
      if (v33 || (v102 = *&v165[0]) == 0)
      {
        v161 = v154;
        v162 = v155;
        *v163 = v156[0];
        *(&v163[1] + 1) = *(v156 + 9);
LABEL_95:
        v69 = &v161;
        goto LABEL_72;
      }

      v161 = v154;
      v162 = v155;
      *v163 = v156[0];
      *(&v163[1] + 1) = *(v156 + 9);
      sub_1ABD19208(&v161);
      v71 = v148;
      swift_beginAccess();
      sub_1ABB4DEA8();
      v103 = *(*(v71 + 16) + 16);
      sub_1ABB4E2AC(v103);
      v73 = *(v71 + 16);
      *(v73 + 16) = v103 + 1;
      v104 = v73 + (v103 << 6);
      *(v104 + 32) = v164;
      *(v104 + 48) = v102;
      *(v104 + 56) = *(v165 + 8);
      *(v104 + 72) = *(&v165[1] + 8);
      *(v104 + 88) = BYTE8(v165[2]);
      goto LABEL_75;
    }

    goto LABEL_111;
  }

  v38 = sub_1ABF25054();

  if (v38)
  {
    goto LABEL_92;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[216], *(_Records_GDEntityPredicate_records + 55), *(_Records_GDEntityPredicate_records + 56), v169);
  if (*&v169[0] == v145 && *(&v169[0] + 1) == v144)
  {

LABEL_100:
    v65 = v172;
    *(v168 + 10) = *(v172 + 82);
    v105 = *(v172 + 7);
    v166 = *(v172 + 5);
    v167 = v105;
    v168[0] = *(v172 + 9);
    if (BYTE9(v168[1]) == 1)
    {
      v106 = *(v172 + 7);
      v154 = *(v172 + 5);
      v155 = v106;
      v156[0] = *(v172 + 9);
      *(v156 + 9) = *(v172 + 81);
      MEMORY[0x1EEE9AC00](v42);
      *(&v144 - 2) = &v154;
      v169[0] = v166;
      v169[1] = v167;
      v169[2] = v168[0];
      *(&v169[2] + 10) = *(v168 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v169, &v161);
      sub_1ABD08790(sub_1ABD1A8C8, (&v144 - 4), &unk_1F2099F30, sub_1ABD1AB54, sub_1ABD19310);
      if (!v33)
      {
        v107 = *&v165[0];
        if (*&v165[0])
        {
          LODWORD(v172) = LOBYTE(v165[1]);
          v108 = *(&v165[0] + 1);
          v109 = *(&v164 + 1);
          v110 = v164;
          v161 = v154;
          v162 = v155;
          *v163 = v156[0];
          *(&v163[1] + 1) = *(v156 + 9);
          sub_1ABD19208(&v161);
          v111 = v147;
          swift_beginAccess();
          sub_1ABB4DE78();
          v112 = *(*(v111 + 16) + 16);
          sub_1ABB4E27C(v112);
LABEL_105:
          v113 = *(v111 + 16);
          *(v113 + 16) = v112 + 1;
          v114 = v113 + 40 * v112;
          *(v114 + 32) = v110;
          *(v114 + 40) = v109;
          *(v114 + 48) = v107;
          *(v114 + 56) = v108;
          *(v114 + 64) = v172 & 1;
          *(v111 + 16) = v113;
          swift_endAccess();
LABEL_88:
          v91 = &qword_1EB4D7E60;
          v92 = &unk_1ABF5E780;
          v93 = &v166;
LABEL_117:
          sub_1ABAB480C(v93, v91, v92);
          return;
        }

        v161 = v154;
        v162 = v155;
        *v163 = v156[0];
        *(&v163[1] + 1) = *(v156 + 9);
LABEL_120:
        sub_1ABD19208(&v161);
        goto LABEL_88;
      }

LABEL_102:
      v161 = v154;
      v162 = v155;
      *v163 = v156[0];
      *(&v163[1] + 1) = *(v156 + 9);
      sub_1ABD19208(&v161);
      sub_1ABAB480C(&v166, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

    goto LABEL_111;
  }

  v41 = sub_1ABF25054();

  if (v41)
  {
    goto LABEL_100;
  }

  v43 = v145;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    swift_once();
LABEL_155:
    v140 = sub_1ABF237F4();
    sub_1ABA7AA24(v140, qword_1ED871B40);
    sub_1ABAE2EC4();
    v76 = sub_1ABF237D4();
    v77 = sub_1ABF24664();
    if (!os_log_type_enabled(v76, v77))
    {
LABEL_156:

      v124 = v172;
      goto LABEL_157;
    }

    goto LABEL_149;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2544], *(_Records_GDEntityPredicate_records + 637), *(_Records_GDEntityPredicate_records + 638), v169);
  if (*&v169[0] == v43 && *(&v169[0] + 1) == v144)
  {

LABEL_107:
    v65 = v172;
    *(v168 + 10) = *(v172 + 82);
    v115 = *(v172 + 7);
    v166 = *(v172 + 5);
    v167 = v115;
    v168[0] = *(v172 + 9);
    if (BYTE9(v168[1]) == 1)
    {
      v116 = *(v172 + 7);
      v154 = *(v172 + 5);
      v155 = v116;
      v156[0] = *(v172 + 9);
      *(v156 + 9) = *(v172 + 81);
      MEMORY[0x1EEE9AC00](v46);
      *(&v144 - 2) = &v154;
      v169[0] = v166;
      v169[1] = v167;
      v169[2] = v168[0];
      *(&v169[2] + 10) = *(v168 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v169, &v161);
      sub_1ABD08790(sub_1ABD1A8C8, (&v144 - 4), &unk_1F209B3D0, sub_1ABD1AB54, sub_1ABD1A10C);
      if (!v33)
      {
        v107 = *&v165[0];
        if (*&v165[0])
        {
          LODWORD(v172) = LOBYTE(v165[1]);
          v108 = *(&v165[0] + 1);
          v109 = *(&v164 + 1);
          v110 = v164;
          v161 = v154;
          v162 = v155;
          *v163 = v156[0];
          *(&v163[1] + 1) = *(v156 + 9);
          sub_1ABD19208(&v161);
          v111 = v146;
          swift_beginAccess();
          sub_1ABB4DE60();
          v112 = *(*(v111 + 16) + 16);
          sub_1ABB4E264(v112);
          goto LABEL_105;
        }

        v161 = v154;
        v162 = v155;
        *v163 = v156[0];
        *(&v163[1] + 1) = *(v156 + 9);
        goto LABEL_120;
      }

      goto LABEL_102;
    }

    goto LABEL_111;
  }

  v45 = sub_1ABF25054();

  if (v45)
  {
    goto LABEL_107;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_167;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v169);
  if (*&v169[0] == v145 && *(&v169[0] + 1) == v144)
  {

LABEL_122:
    *(v168 + 10) = *(v172 + 82);
    v119 = *(v172 + 7);
    v166 = *(v172 + 5);
    v167 = v119;
    v168[0] = *(v172 + 9);
    if (BYTE9(v168[1]) == 1)
    {
      v120 = *(v172 + 7);
      v154 = *(v172 + 5);
      v155 = v120;
      v156[0] = *(v172 + 9);
      *(v156 + 9) = *(v172 + 81);
      MEMORY[0x1EEE9AC00](v49);
      *(&v144 - 2) = &v154;
      v169[0] = v166;
      v169[1] = v167;
      v169[2] = v168[0];
      *(&v169[2] + 10) = *(v168 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v169, &v161);
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v144 - 4), &unk_1F2099F58, &unk_1F2099F80, sub_1ABD0D498, sub_1ABD1932C, v121, v122, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, *(&v154 + 1), v155, SBYTE8(v155), *&v156[0], *(&v156[0] + 1), *&v156[1], *(&v156[1] + 1), v157, v158, v159, v160, v161, *(&v161 + 1));
      if (v33)
      {
        v161 = v154;
        v162 = v155;
        *v163 = v156[0];
        *(&v163[1] + 1) = *(v156 + 9);
        goto LABEL_95;
      }

      v125 = *&v165[0];
      if (!*&v165[0])
      {
        v161 = v154;
        v162 = v155;
        *v163 = v156[0];
        *(&v163[1] + 1) = *(v156 + 9);
        goto LABEL_95;
      }

      v161 = v154;
      v162 = v155;
      *v163 = v156[0];
      *(&v163[1] + 1) = *(v156 + 9);
      sub_1ABD19208(&v161);
      swift_beginAccess();
      sub_1ABB4DD28();
      v126 = *(*(a9 + 16) + 16);
      sub_1ABB4E12C(v126);
      v127 = *(a9 + 16);
      *(v127 + 16) = v126 + 1;
      v128 = v127 + (v126 << 6);
      *(v128 + 32) = v164;
      *(v128 + 48) = v125;
      *(v128 + 56) = *(v165 + 8);
      *(v128 + 72) = *(&v165[1] + 8);
      *(v128 + 88) = BYTE8(v165[2]);
      *(a9 + 16) = v127;
LABEL_76:
      swift_endAccess();
      goto LABEL_77;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_126;
    }

    goto LABEL_161;
  }

  v48 = sub_1ABF25054();

  if (v48)
  {
    goto LABEL_122;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), v169);
  if (*&v169[0] == v145 && *(&v169[0] + 1) == v144)
  {

    goto LABEL_133;
  }

  v51 = sub_1ABF25054();

  if (v51)
  {
LABEL_133:
    if (*(v172 + 97) != 2)
    {
      goto LABEL_146;
    }

    v129 = v153;
    sub_1ABC4A630(&v166, v172[5]);
    if (v129)
    {
      return;
    }

    goto LABEL_135;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), v169);
  if (*&v169[0] == v145 && *(&v169[0] + 1) == v144)
  {

    goto LABEL_139;
  }

  v53 = sub_1ABF25054();

  if (v53)
  {
LABEL_139:
    if (*(v172 + 97) != 2)
    {
      goto LABEL_146;
    }

    v134 = v153;
    sub_1ABC4A630(&v166, v172[5]);
    if (v134)
    {
      return;
    }

    a10 = a11;
LABEL_135:
    v131 = v166;
    swift_beginAccess();
    sub_1ABB4DD40();
    v132 = *(*(a10 + 16) + 16);
    sub_1ABB4E144(v132);
LABEL_136:
    v133 = *(a10 + 16);
    *(v133 + 16) = v132 + 1;
    *(v133 + 8 * v132 + 32) = v131;
    *(a10 + 16) = v133;
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), v169);
  if (*&v169[0] == v145 && *(&v169[0] + 1) == v144)
  {
  }

  else
  {
    v55 = sub_1ABF25054();

    if ((v55 & 1) == 0)
    {
      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), v169);
        if (*&v169[0] != v145 || *(&v169[0] + 1) != v144)
        {
          v64 = sub_1ABF25054();

          if ((v64 & 1) == 0)
          {
            return;
          }

LABEL_152:
          if (*(v172 + 97) || (v137 = v172[5], v138 = v172[6], , v30 = sub_1ABB24D04(v137, v138), (v139 & 1) != 0))
          {
            if (qword_1ED871B38 == -1)
            {
              goto LABEL_155;
            }

            goto LABEL_165;
          }

LABEL_159:
          v141 = v30;
          swift_beginAccess();
          sub_1ABB4DCB0();
          v142 = *(*(a13 + 16) + 16);
          sub_1ABB4E0CC(v142);
          v143 = *(a13 + 16);
          *(v143 + 16) = v142 + 1;
          *(v143 + 8 * v142 + 32) = v141;
          *(a13 + 16) = v143;
          return;
        }

LABEL_151:

        goto LABEL_152;
      }

LABEL_170:
      __break(1u);
      return;
    }
  }

  if (*(v172 + 97) != 2)
  {
LABEL_146:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v136 = sub_1ABF237F4();
    sub_1ABA7AA24(v136, qword_1ED871B40);
    sub_1ABAE2EC4();
    v76 = sub_1ABF237D4();
    v77 = sub_1ABF24664();
    if (!os_log_type_enabled(v76, v77))
    {
      goto LABEL_156;
    }

LABEL_149:
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v166 = v79;
    *v78 = 136642819;
    memcpy(v169, v172, 0x62uLL);
    sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    v80 = sub_1ABF23C94();
    v82 = &v166;
    goto LABEL_115;
  }

  v135 = v153;
  sub_1ABC4CBC0(v172[5], v56, v57, v58, v59, v60, v61, v62, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, *(&v154 + 1), v155, *(&v155 + 1), *&v156[0], *(&v156[0] + 1), *&v156[1], *(&v156[1] + 1), v157, v158, v159, v160, v161, *(&v161 + 1), v162, *(&v162 + 1), v163[0], v163[1]);
  if (!v135)
  {
    a10 = a12;
    v131 = v166;
    swift_beginAccess();
    sub_1ABB4DE48();
    v132 = *(*(a12 + 16) + 16);
    sub_1ABB4E24C(v132);
    goto LABEL_136;
  }
}

void sub_1ABC8F8F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v336 = a8;
  v342 = a7;
  v349 = a6;
  v356 = a5;
  v365 = a4;
  v373 = a3;
  v372 = a2;
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v366 = &v328 - v18;
  v360 = type metadata accessor for CustomGraphDateRelationship(0);
  v354 = *(v360 - 8);
  v19 = *(v354 + 64);
  MEMORY[0x1EEE9AC00](v360);
  v355 = &v328 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v381 = *(a14 - 8);
  v21 = *(v381 + 8);
  MEMORY[0x1EEE9AC00](v22);
  v329 = &v328 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v332 = &v328 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v334 = &v328 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v335 = &v328 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v338 = &v328 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v344 = &v328 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v351 = &v328 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v359 = &v328 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v364[1] = &v328 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v371 = &v328 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v375 = &v328 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v376 = &v328 - v45;
  v46 = *(a15 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v378 = sub_1ABF247E4();
  v377 = *(v378 - 8);
  v48 = *(v377 + 64);
  MEMORY[0x1EEE9AC00](v378);
  v341 = &v328 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v347 = &v328 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v353 = &v328 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v362 = &v328 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v368 = &v328 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v328 - v59;
  v386 = swift_checkMetadataState();
  v385 = *(v386 - 8);
  v61 = *(v385 + 64);
  MEMORY[0x1EEE9AC00](v386);
  v330 = &v328 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v331 = &v328 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v333 = &v328 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v328 - v68;
  MEMORY[0x1EEE9AC00](v70);
  v340 = &v328 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v346 = &v328 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v352 = &v328 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v361 = &v328 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v367 = &v328 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v374 = &v328 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v328 - v83;
  v383 = AssociatedTypeWitness;
  v379 = *(AssociatedTypeWitness - 8);
  v85 = *(v379 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v337 = &v328 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88);
  v339 = &v328 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v343 = &v328 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v345 = &v328 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v350 = &v328 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v328 - v97;
  MEMORY[0x1EEE9AC00](v99);
  v357 = &v328 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v358 = &v328 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v363 = &v328 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v364[0] = &v328 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v328 - v108;
  v111 = MEMORY[0x1EEE9AC00](v110);
  v380 = &v328 - v112;
  v113 = *(v46 + 24);
  v387 = a1;
  v388 = a14;
  v384 = v46;
  v113(v395, a14, v46, v111);
  v370 = 279;
  v348 = v98;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_177;
  }

  v115 = v395[0];
  v114 = v395[1];
  v116 = v395[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), &v389);
  if (v389 == v115 && *(&v389 + 1) == v114)
  {

    v120 = AssociatedConformanceWitness;
    v119 = v396;
    goto LABEL_9;
  }

  v369 = v116;
  v328 = v69;
  v69 = v114;
  v118 = sub_1ABF25054();

  if ((v118 & 1) == 0)
  {
    if (!_Records_GDEntityPredicate_records)
    {
      __break(1u);
LABEL_193:
      swift_once();
LABEL_105:
      v238 = sub_1ABF237F4();
      sub_1ABA7AA24(v238, qword_1ED871B40);
      v178 = *(v60 + 2);
      v180 = v344;
      v178(v344, v387, v116);
      goto LABEL_51;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v389);
    v145 = v389 == v115 && *(&v389 + 1) == v69;
    v60 = v381;
    if (v145)
    {

LABEL_30:

      v150 = v374;
      v151 = v387;
      (*(v384 + 32))(v388, v384);
      v152 = v386;
      v153 = swift_getAssociatedConformanceWitness();
      v154 = (*(v153 + 24))(v152, v153);
      v156 = v155;
      (*(v385 + 8))(v150, v152);
      if (v156)
      {
        v157 = v373;
        swift_beginAccess();
        sub_1ABB4DC20();
        v158 = *(*(v157 + 16) + 16);
        sub_1ABB4E024(v158);
        v159 = *(v157 + 16);
        *(v159 + 16) = v158 + 1;
        v160 = v159 + 16 * v158;
        *(v160 + 32) = v154;
        *(v160 + 40) = v156;
        *(v157 + 16) = v159;
        swift_endAccess();
        return;
      }

      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v161 = sub_1ABF237F4();
      sub_1ABA7AA24(v161, qword_1ED871B40);
      v162 = *(v60 + 2);
      v163 = v371;
      v164 = v388;
      v162(v371, v151, v388);
      v128 = sub_1ABF237D4();
      v165 = sub_1ABF24664();
      if (!os_log_type_enabled(v128, v165))
      {

        (*(v60 + 1))(v163, v164);
        return;
      }

      v166 = swift_slowAlloc();
      v387 = swift_slowAlloc();
      *&v389 = v387;
      *v166 = 136642819;
      v162(v375, v163, v164);
      v167 = sub_1ABF23C94();
      v169 = v168;
      (*(v60 + 1))(v163, v164);
      goto LABEL_53;
    }

    v146 = sub_1ABF25054();

    v147 = v396;
    if (v146)
    {
      goto LABEL_30;
    }

    if (v370 < 0x92)
    {
      __break(1u);
    }

    else
    {
      v116 = v388;
      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
        goto LABEL_196;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v389);
      if (v389 == v115 && *(&v389 + 1) == v69)
      {

LABEL_46:

        v172 = v367;
        v173 = v387;
        (*(v384 + 32))(v116);
        v174 = v368;
        v175 = v386;
        (*(AssociatedConformanceWitness + 40))(v386, AssociatedConformanceWitness);
        (*(v385 + 8))(v172, v175);
        v176 = v383;
        if (sub_1ABA7E1E0(v174, 1, v383) != 1)
        {
          v184 = v379;
          v185 = v364[0];
          (*(v379 + 32))(v364[0], v174, v176);
          (*(v184 + 16))(v363, v185, v176);
          swift_getAssociatedConformanceWitness();

          v186 = v366;
          CustomGraphDateRelationship.init<A>(from:initializationResources:)();
          if (!v147)
          {
            if (sub_1ABA7E1E0(v186, 1, v360) == 1)
            {
              (*(v184 + 8))(v185, v176);
              sub_1ABAB480C(v186, &qword_1EB4D5F20, &qword_1ABF4F358);
              return;
            }

            v206 = v355;
            sub_1ABCF9424();
            v207 = v356;
            swift_beginAccess();
            sub_1ABB4DE30();
            v208 = *(*(v207 + 16) + 16);
            sub_1ABB4E234(v208);
            v209 = *(v207 + 16);
            *(v209 + 16) = v208 + 1;
            v210 = v209 + ((*(v354 + 80) + 32) & ~*(v354 + 80));
            v211 = *(v354 + 72);
            sub_1ABD0AD58();
            *(v207 + 16) = v209;
            swift_endAccess();
            sub_1ABD0ADB0(v206, type metadata accessor for CustomGraphDateRelationship);
          }

          (*(v184 + 8))(v185, v176);
          return;
        }

        (*(v377 + 8))(v174, v378);
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v177 = sub_1ABF237F4();
        sub_1ABA7AA24(v177, qword_1ED871B40);
        v178 = *(v60 + 2);
        p_AssociatedConformanceWitness = v393;
        goto LABEL_50;
      }

      v171 = sub_1ABF25054();

      if (v171)
      {
        goto LABEL_46;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
        goto LABEL_198;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v389);
      if (v389 == v115 && *(&v389 + 1) == v69)
      {

LABEL_68:

        v189 = v361;
        v173 = v387;
        (*(v384 + 32))(v116);
        v190 = v362;
        v191 = v386;
        (*(AssociatedConformanceWitness + 40))(v386, AssociatedConformanceWitness);
        (*(v385 + 8))(v189, v191);
        v192 = v383;
        if (sub_1ABA7E1E0(v190, 1, v383) != 1)
        {
          v194 = v190;
          v195 = v379;
          v196 = v358;
          (*(v379 + 32))(v358, v194, v192);
          v197 = v357;
          (*(v195 + 16))(v357, v196, v192);
          v198 = type metadata accessor for CustomGraphPerson(0);
          v199 = sub_1ABD09EBC(&unk_1EB4D7E80);
          v200 = swift_getAssociatedConformanceWitness();
          CustomGraphAttendeeRelationship.init<A>(from:initializationResources:)(&v389, v197, v198, v192, v199, v200);
          if (!v147)
          {
            v201 = v390;
            if (v390)
            {
              v202 = v349;
              swift_beginAccess();
              sub_1ABB4DEA8();
              v203 = *(*(v202 + 16) + 16);
              sub_1ABB4E2AC(v203);
              v204 = *(v202 + 16);
              *(v204 + 16) = v203 + 1;
              v205 = v204 + (v203 << 6);
              *(v205 + 32) = v389;
              *(v205 + 48) = v201;
              *(v205 + 56) = v391;
              *(v205 + 72) = v392;
              *(v205 + 88) = v393[0];
              *(v202 + 16) = v204;
              swift_endAccess();
            }
          }

          (*(v195 + 8))(v196, v192);
          return;
        }

        (*(v377 + 8))(v190, v378);
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v193 = sub_1ABF237F4();
        sub_1ABA7AA24(v193, qword_1ED871B40);
        v178 = *(v60 + 2);
        p_AssociatedConformanceWitness = &v389 + 1;
        goto LABEL_50;
      }

      v188 = sub_1ABF25054();

      if (v188)
      {
        goto LABEL_68;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
        goto LABEL_200;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[216], *(_Records_GDEntityPredicate_records + 55), *(_Records_GDEntityPredicate_records + 56), &v389);
      if (v389 == v115 && *(&v389 + 1) == v69)
      {

LABEL_86:

        v214 = v352;
        v173 = v387;
        (*(v384 + 32))(v116);
        v215 = v353;
        v216 = v386;
        (*(AssociatedConformanceWitness + 40))(v386, AssociatedConformanceWitness);
        (*(v385 + 8))(v214, v216);
        v217 = v383;
        if (sub_1ABA7E1E0(v215, 1, v383) != 1)
        {
          v219 = v379;
          v220 = v348;
          (*(v379 + 32))(v348, v215, v217);
          v221 = v350;
          (*(v219 + 16))(v350, v220, v217);
          v222 = type metadata accessor for CustomGraphEvent(0);
          v223 = sub_1ABD09EBC(&unk_1EB4D7EA0);
          v224 = swift_getAssociatedConformanceWitness();
          CustomGraphEventRelationship.init<A>(from:initializationResources:)(&v389, v221, v222, v217, v223, v224);
          if (v147 || (v227 = v390) == 0)
          {
            (*(v219 + 8))(v220, v217);
          }

          else
          {
            LODWORD(v396) = BYTE8(v391);
            v228 = v391;
            v229 = v389;
            v230 = v342;
            swift_beginAccess();
            sub_1ABB4DE78();
            v231 = *(*(v230 + 16) + 16);
            sub_1ABB4E27C(v231);
            v232 = *(v230 + 16);
            *(v232 + 16) = v231 + 1;
            v233 = v232 + 40 * v231;
            *(v233 + 32) = v229;
            *(v233 + 48) = v227;
            *(v233 + 56) = v228;
            *(v233 + 64) = v396 & 1;
            *(v230 + 16) = v232;
            swift_endAccess();
            (*(v219 + 8))(v348, v383);
          }

          return;
        }

        (*(v377 + 8))(v215, v378);
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v218 = sub_1ABF237F4();
        sub_1ABA7AA24(v218, qword_1ED871B40);
        v178 = *(v60 + 2);
        p_AssociatedConformanceWitness = &AssociatedConformanceWitness;
LABEL_50:
        v180 = *(p_AssociatedConformanceWitness - 32);
        v178(v180, v173, v116);
LABEL_51:
        v128 = sub_1ABF237D4();
        v165 = sub_1ABF24664();
        if (!os_log_type_enabled(v128, v165))
        {

          v148 = *(v60 + 1);
          v149 = v180;
          goto LABEL_28;
        }

        v166 = swift_slowAlloc();
        v387 = swift_slowAlloc();
        *&v389 = v387;
        *v166 = 136642819;
        v178(v375, v180, v116);
        v167 = sub_1ABF23C94();
        v169 = v181;
        (*(v60 + 1))(v180, v116);
LABEL_53:
        v182 = sub_1ABADD6D8(v167, v169, &v389);

        *(v166 + 4) = v182;
        _os_log_impl(&dword_1ABA78000, v128, v165, "Failed to parse %{sensitive}s.", v166, 0xCu);
        v183 = v387;
        sub_1ABA84B54(v387);
        MEMORY[0x1AC5AB8B0](v183, -1, -1);
        v137 = v166;
        goto LABEL_54;
      }

      v213 = sub_1ABF25054();

      if (v213)
      {
        goto LABEL_86;
      }

      if (v370 < 0xD5)
      {
        __break(1u);
        goto LABEL_186;
      }

      v380 = v115;
      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
        goto LABEL_202;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[2544], *(_Records_GDEntityPredicate_records + 637), *(_Records_GDEntityPredicate_records + 638), &v389);
      if (v389 == v380 && *(&v389 + 1) == v69)
      {

        goto LABEL_103;
      }

      v226 = sub_1ABF25054();

      if (v226)
      {
LABEL_103:

        v234 = v346;
        (*(v384 + 32))(v116);
        v235 = v347;
        v236 = v386;
        (*(AssociatedConformanceWitness + 40))(v386, AssociatedConformanceWitness);
        (*(v385 + 8))(v234, v236);
        v237 = v383;
        if (sub_1ABA7E1E0(v235, 1, v383) != 1)
        {
          v239 = v379;
          v240 = v345;
          (*(v379 + 32))(v345, v235, v237);
          v241 = v343;
          (*(v239 + 16))(v343, v240, v237);
          v242 = type metadata accessor for CustomGraphActivityEvent(0);
          v243 = sub_1ABD09EBC(&unk_1EB4D7EA8);
          v244 = swift_getAssociatedConformanceWitness();
          CustomGraphEventRelationship.init<A>(from:initializationResources:)(&v389, v241, v242, v237, v243, v244);
          if (v147)
          {
            (*(v239 + 8))(v240, v237);
          }

          else
          {
            v247 = v390;
            if (v390)
            {
              LODWORD(v396) = BYTE8(v391);
              v248 = v391;
              v249 = v389;
              v250 = v336;
              swift_beginAccess();
              sub_1ABB4DE60();
              v251 = *(*(v250 + 16) + 16);
              sub_1ABB4E264(v251);
              v252 = *(v250 + 16);
              *(v252 + 16) = v251 + 1;
              v253 = v252 + 40 * v251;
              *(v253 + 32) = v249;
              *(v253 + 48) = v247;
              *(v253 + 56) = v248;
              *(v253 + 64) = v396 & 1;
              *(v250 + 16) = v252;
              swift_endAccess();
            }

            (*(v239 + 8))(v345, v383);
          }

          return;
        }

        (*(v377 + 8))(v235, v378);
        if (qword_1ED871B38 == -1)
        {
          goto LABEL_105;
        }

        goto LABEL_193;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
LABEL_204:
        swift_once();
LABEL_189:
        v325 = sub_1ABF237F4();
        sub_1ABA7AA24(v325, qword_1ED871B40);
        v280 = *(v381 + 2);
        v280(v329, v387, v388);
        v128 = sub_1ABF237D4();
        v281 = sub_1ABF24664();
        if (!os_log_type_enabled(v128, v281))
        {

          (*(v381 + 1))(v329, v388);
          return;
        }

        v130 = swift_slowAlloc();
        v282 = swift_slowAlloc();
        *&v389 = v282;
        *v130 = 136642819;
        v283 = v375;
        v284 = &v361;
        goto LABEL_142;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v389);
      if (v389 == v380 && *(&v389 + 1) == v69)
      {

        goto LABEL_119;
      }

      v246 = sub_1ABF25054();

      if (v246)
      {
LABEL_119:
        v254 = AssociatedConformanceWitness;
        v255 = v383;

        v256 = v340;
        (*(v384 + 32))(v116);
        v257 = v341;
        v258 = v386;
        (*(v254 + 40))(v386, v254);
        (*(v385 + 8))(v256, v258);
        if (sub_1ABA7E1E0(v257, 1, v255) != 1)
        {
          v264 = v379;
          v265 = v339;
          (*(v379 + 32))(v339, v257, v255);
          v266 = v337;
          (*(v264 + 16))(v337, v265, v255);
          v267 = sub_1ABD19740();
          v268 = swift_getAssociatedConformanceWitness();
          v269 = v396;
          CustomGraphLocationRelationship.init<A>(from:initializationResources:)(&v389, v266, &type metadata for CustomGraphLocation, v255, v267, v268);
          if (v269)
          {
            (*(v264 + 8))(v265, v255);
          }

          else
          {
            v272 = v390;
            if (v390)
            {
              swift_beginAccess();
              sub_1ABB4DD28();
              v273 = *(*(a9 + 16) + 16);
              sub_1ABB4E12C(v273);
              v274 = *(a9 + 16);
              *(v274 + 16) = v273 + 1;
              v275 = v274 + (v273 << 6);
              *(v275 + 32) = v389;
              *(v275 + 48) = v272;
              *(v275 + 56) = v391;
              *(v275 + 72) = v392;
              *(v275 + 88) = v393[0];
              *(a9 + 16) = v274;
              swift_endAccess();
            }

            (*(v379 + 8))(v339, v383);
          }

          return;
        }

        (*(v377 + 8))(v257, v378);
        if (qword_1ED871B38 == -1)
        {
LABEL_121:
          v259 = sub_1ABF237F4();
          sub_1ABA7AA24(v259, qword_1ED871B40);
          v260 = v381;
          v261 = *(v381 + 2);
          v262 = v338;
          v261(v338, v387, v116);
          v128 = sub_1ABF237D4();
          v129 = sub_1ABF24664();
          if (!os_log_type_enabled(v128, v129))
          {

            v260[1](v262, v116);
            return;
          }

          v130 = swift_slowAlloc();
          v387 = swift_slowAlloc();
          *&v389 = v387;
          *v130 = 136642819;
          v261(v375, v262, v116);
          v131 = sub_1ABF23C94();
          v133 = v263;
          v260[1](v262, v116);
          goto LABEL_14;
        }

LABEL_196:
        swift_once();
        goto LABEL_121;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
        goto LABEL_206;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), &v389);
      if (v389 != v380 || *(&v389 + 1) != v69)
      {
        v271 = sub_1ABF25054();

        if (v271)
        {
          goto LABEL_138;
        }

        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), &v389);
          if (v389 == v380 && *(&v389 + 1) == v69)
          {

            goto LABEL_155;
          }

          v297 = sub_1ABF25054();

          if (v297)
          {
LABEL_155:

            v298 = v333;
            (*(v384 + 32))(v388, v384);
            v299 = v386;
            v300 = swift_getAssociatedConformanceWitness();
            (*(v300 + 32))(&v389, v299, v300);
            (*(v385 + 8))(v298, v299);
            if ((BYTE8(v389) & 1) == 0)
            {
              v302 = v396;
              sub_1ABC4A630(&v394, v389);
              if (v302)
              {
                return;
              }

              a10 = a11;
LABEL_144:
              v293 = v394;
              swift_beginAccess();
              sub_1ABB4DD40();
              v294 = *(*(a10 + 16) + 16);
              sub_1ABB4E144(v294);
              goto LABEL_145;
            }

            if (qword_1ED871B38 == -1)
            {
LABEL_157:
              v301 = sub_1ABF237F4();
              sub_1ABA7AA24(v301, qword_1ED871B40);
              v280 = *(v381 + 2);
              v280(v334, v387, v388);
              v128 = sub_1ABF237D4();
              v281 = sub_1ABF24664();
              if (!os_log_type_enabled(v128, v281))
              {

                (*(v381 + 1))(v334, v388);
                return;
              }

              v130 = swift_slowAlloc();
              v282 = swift_slowAlloc();
              *&v389 = v282;
              *v130 = 136642819;
              v283 = v375;
              v284 = &v365;
              goto LABEL_142;
            }

LABEL_200:
            swift_once();
            goto LABEL_157;
          }

          if (_Records_GDEntityPredicate_records)
          {
            sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), &v389);
            if (v389 == v380 && *(&v389 + 1) == v69)
            {

              goto LABEL_170;
            }

            v304 = sub_1ABF25054();

            if (v304)
            {
LABEL_170:

              v305 = v331;
              (*(v384 + 32))(v388, v384);
              v306 = v386;
              v307 = swift_getAssociatedConformanceWitness();
              (*(v307 + 32))(&v389, v306, v307);
              (*(v385 + 8))(v305, v306);
              if ((BYTE8(v389) & 1) == 0)
              {
                v316 = v396;
                sub_1ABC4CBC0(v389, v308, v309, v310, v311, v312, v313, v314, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355);
                if (v316)
                {
                  return;
                }

                a10 = a12;
                v293 = v394;
                swift_beginAccess();
                sub_1ABB4DE48();
                v294 = *(*(a12 + 16) + 16);
                sub_1ABB4E24C(v294);
LABEL_145:
                v295 = *(a10 + 16);
                *(v295 + 16) = v294 + 1;
                *(v295 + 8 * v294 + 32) = v293;
                *(a10 + 16) = v295;
                return;
              }

              if (qword_1ED871B38 == -1)
              {
LABEL_172:
                v315 = sub_1ABF237F4();
                sub_1ABA7AA24(v315, qword_1ED871B40);
                v280 = *(v381 + 2);
                v280(v332, v387, v388);
                v128 = sub_1ABF237D4();
                v281 = sub_1ABF24664();
                if (!os_log_type_enabled(v128, v281))
                {

                  (*(v381 + 1))(v332, v388);
                  return;
                }

                v130 = swift_slowAlloc();
                v282 = swift_slowAlloc();
                *&v389 = v282;
                *v130 = 136642819;
                v283 = v375;
                v284 = v364;
                goto LABEL_142;
              }

LABEL_202:
              swift_once();
              goto LABEL_172;
            }

LABEL_177:
            if (_Records_GDEntityPredicate_records)
            {
              sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), &v389);
              if (v389 != v380 || *(&v389 + 1) != v69)
              {
                v318 = sub_1ABF25054();

                if ((v318 & 1) == 0)
                {
                  return;
                }

LABEL_187:
                v319 = v330;
                (*(v384 + 32))(v388, v384);
                v320 = v386;
                v321 = swift_getAssociatedConformanceWitness();
                v322 = BaseEntityFactObjectProtocol.asDouble.getter(v320, v321);
                v324 = v323;
                (*(v385 + 8))(v319, v320);
                if ((v324 & 1) == 0)
                {
                  swift_beginAccess();
                  sub_1ABB4DCB0();
                  v326 = *(*(a13 + 16) + 16);
                  sub_1ABB4E0CC(v326);
                  v327 = *(a13 + 16);
                  *(v327 + 16) = v326 + 1;
                  *(v327 + 8 * v326 + 32) = v322;
                  *(a13 + 16) = v327;
                  return;
                }

                if (qword_1ED871B38 == -1)
                {
                  goto LABEL_189;
                }

                goto LABEL_204;
              }

LABEL_186:

              goto LABEL_187;
            }

LABEL_208:
            __break(1u);
            return;
          }

LABEL_207:
          __break(1u);
          goto LABEL_208;
        }

LABEL_206:
        __break(1u);
        goto LABEL_207;
      }
    }

LABEL_138:

    v276 = v328;
    (*(v384 + 32))(v388, v384);
    v277 = v386;
    v278 = swift_getAssociatedConformanceWitness();
    (*(v278 + 32))(&v389, v277, v278);
    (*(v385 + 8))(v276, v277);
    if (BYTE8(v389))
    {
      if (qword_1ED871B38 == -1)
      {
LABEL_140:
        v279 = sub_1ABF237F4();
        sub_1ABA7AA24(v279, qword_1ED871B40);
        v280 = *(v381 + 2);
        v280(v335, v387, v388);
        v128 = sub_1ABF237D4();
        v281 = sub_1ABF24664();
        if (!os_log_type_enabled(v128, v281))
        {

          (*(v381 + 1))(v335, v388);
          return;
        }

        v130 = swift_slowAlloc();
        v282 = swift_slowAlloc();
        *&v389 = v282;
        *v130 = 136642819;
        v283 = v375;
        v284 = &v366;
LABEL_142:
        v285 = *(v284 - 32);
        v286 = v388;
        v280(v283, v285, v388);
        v287 = sub_1ABF23C94();
        v289 = v288;
        (*(v381 + 1))(v285, v286);
        v290 = sub_1ABADD6D8(v287, v289, &v389);

        *(v130 + 4) = v290;
        _os_log_impl(&dword_1ABA78000, v128, v281, "Failed to parse %{sensitive}s.", v130, 0xCu);
        sub_1ABA84B54(v282);
        v136 = v282;
        goto LABEL_15;
      }

LABEL_198:
      swift_once();
      goto LABEL_140;
    }

    v291 = v396;
    sub_1ABC4A630(&v394, v389);
    if (v291)
    {
      return;
    }

    goto LABEL_144;
  }

  v119 = v396;
  v120 = AssociatedConformanceWitness;
LABEL_9:

  v121 = v387;
  v116 = v388;
  (*(v384 + 32))(v388);
  v122 = v386;
  (*(v120 + 40))(v386, v120);
  (*(v385 + 8))(v84, v122);
  v123 = v383;
  if (sub_1ABA7E1E0(v60, 1, v383) == 1)
  {
    (*(v377 + 8))(v60, v378);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v124 = sub_1ABF237F4();
    sub_1ABA7AA24(v124, qword_1ED871B40);
    v125 = v381;
    v126 = *(v381 + 2);
    v127 = v376;
    v126(v376, v121, v116);
    v128 = sub_1ABF237D4();
    v129 = sub_1ABF24664();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v387 = swift_slowAlloc();
      *&v389 = v387;
      *v130 = 136642819;
      v126(v375, v127, v116);
      v131 = sub_1ABF23C94();
      v133 = v132;
      v125[1](v127, v116);
LABEL_14:
      v134 = sub_1ABADD6D8(v131, v133, &v389);

      *(v130 + 4) = v134;
      _os_log_impl(&dword_1ABA78000, v128, v129, "Failed to parse %{sensitive}s.", v130, 0xCu);
      v135 = v387;
      sub_1ABA84B54(v387);
      v136 = v135;
LABEL_15:
      MEMORY[0x1AC5AB8B0](v136, -1, -1);
      v137 = v130;
LABEL_54:
      MEMORY[0x1AC5AB8B0](v137, -1, -1);

      return;
    }

    v148 = v125[1];
    v149 = v127;
LABEL_28:
    v148(v149, v116);
    return;
  }

  v138 = v379;
  v139 = v380;
  (*(v379 + 32))(v380, v60, v123);
  (*(v138 + 16))(v109, v139, v123);
  swift_getAssociatedConformanceWitness();
  CustomGraphIdentifierRelationship.init<A>(from:initializationResources:)();
  if (!v119)
  {
    v140 = v390;
    if (v390)
    {
      v141 = v372;
      swift_beginAccess();
      sub_1ABB4DCE0();
      v142 = *(*(v141 + 16) + 16);
      sub_1ABB4E0E4(v142);
      v143 = *(v141 + 16);
      *(v143 + 16) = v142 + 1;
      v144 = v143 + 88 * v142;
      v139 = v380;
      *(v144 + 32) = v389;
      *(v144 + 48) = v140;
      *(v144 + 56) = v391;
      *(v144 + 72) = v392;
      *(v144 + 88) = v393[0];
      *(v144 + 104) = v393[1];
      *(v141 + 16) = v143;
      swift_endAccess();
    }
  }

  (*(v138 + 8))(v139, v123);
}

void CustomGraphActivityEvent.init(typedId:all_eventTypes:all_name:all_date:all_attendees:all_cooccurringEvents:all_subEvents:all_locations:all_startLocation:all_endLocation:all_activityTypeObject:all_activityType:all_confidence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7E2A8();
  v63 = v26;
  v64 = v27;
  v62 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1ABD1B3D0();
  v37 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v37);
  v39 = *(v38 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA9F7AC();
  *v23 = *v24;
  v23[1] = v36;
  v41 = sub_1ABB2B834(v34);
  v23[2] = v34;
  v23[3] = v41;
  v23[4] = v42;
  v43 = sub_1ABA8B2DC();
  v44 = type metadata accessor for CustomGraphActivityEvent(v43);
  sub_1ABC8B318(v32, v25, (v23 + v44[7]));
  *(v23 + v44[8]) = v30;
  *(v23 + v44[9]) = v62;
  *(v23 + v44[10]) = v63;
  *(v23 + v44[11]) = v64;
  if (*(a21 + 16))
  {
    v45 = *(a21 + 32);
  }

  v46 = v44[12];
  sub_1ABD1AE28();
  if (v47)
  {
    v48 = *(a22 + 32);
  }

  sub_1ABAA2490();
  v49 = v44[13];
  sub_1ABA89D74();
  if (*(a23 + 16))
  {
    v50 = *(a23 + 32);
  }

  sub_1ABAA2490();
  v51 = v44[14];
  sub_1ABD1BEFC(v52);
  if (v54)
  {
    v55 = *(v53 + 32);
  }

  v56 = v44[15];
  sub_1ABD1B190(v53);
  if (v58)
  {
    v59 = *(v57 + 32);
  }

  sub_1ABAAFB28();
  v60 = v44[16];
  sub_1ABAA2B08(v61);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABC929E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x707954746E657665 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125924 && a2 == 0xE400000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6565646E65747461 && a2 == 0xE900000000000073;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001ABF8D5C0 == a2;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x746E657645627573 && a2 == 0xE900000000000073;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x636F4C7472617473 && a2 == 0xED00006E6F697461;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000012 && 0x80000001ABF8D5E0 == a2;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1ABF25054();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABC92DFC(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 0x707954746E657665;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 0x6565646E65747461;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x746E657645627573;
      break;
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 8:
      result = 0x636F4C7472617473;
      break;
    case 9:
      result = 0x7461636F4C646E65;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x7974697669746361;
      break;
    case 12:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC92F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC929E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC92FA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABC92DF4();
  *a1 = result;
  return result;
}

uint64_t sub_1ABC92FD0(uint64_t a1)
{
  v2 = sub_1ABD0A704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC9300C(uint64_t a1)
{
  v2 = sub_1ABD0A704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v2 = sub_1ABAD219C(&qword_1EB4D66B8, &qword_1ABF50B98);
  sub_1ABA96D00(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0A704();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v6 = sub_1ABA8C744();
  sub_1ABAD219C(v6, v7);
  sub_1ABA7D99C();
  sub_1ABD1044C(v8);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    v14 = v1[1];
    sub_1ABA8B6EC();
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABD09D60();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    v9 = v1[2];
    v15 = v1[3];
    v16 = v1[4];
    sub_1ABD1B178();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();
    if (!v9)
    {

      v10 = type metadata accessor for CustomGraphActivityEvent(0);
      sub_1ABAA4C54(v10);
      sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
      sub_1ABA80C14();
      sub_1ABD0A358(v11);
      sub_1ABA82E78();
      sub_1ABAA6564();
      sub_1ABAA17C0();
      sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
      sub_1ABD09F00();
      sub_1ABAA2D10();
      sub_1ABAA6564();
      sub_1ABD1AF88(12);
      sub_1ABD1AFDC();
      sub_1ABAD219C(&qword_1EB4D65F8, &dword_1ABF50B60);
      sub_1ABD09FB0();
      sub_1ABAA2D10();
      sub_1ABAA6564();
      sub_1ABD1AF88(348184);
      sub_1ABD1AFD0();
      sub_1ABAD219C(&qword_1EB4D66D8, &qword_1ABF50BA8);
      sub_1ABD0A758();
      sub_1ABAA2D10();
      sub_1ABAA6564();
      sub_1ABD1AF88(12);
      sub_1ABD1AFC4();
      sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
      sub_1ABD0A060();
      sub_1ABAA2D10();
      sub_1ABAA6564();
      sub_1ABAA2300(348190);
      sub_1ABD1AFB8();

      sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
      sub_1ABD0A110();
      sub_1ABAA1328();

      sub_1ABAA2300(9);
      sub_1ABD1AFE8();

      sub_1ABD1ABF4();
      sub_1ABD1AF60();

      sub_1ABAA2300(348192);
      sub_1ABAB6330();

      sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
      sub_1ABD0A808();
      sub_1ABAA2D10();
      sub_1ABAA6564();
      sub_1ABD1AFA0();

      sub_1ABA98014(12);
      sub_1ABD1B69C();

      sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
      sub_1ABD0A8F4();
      sub_1ABAA2D10();
      sub_1ABAA6564();
      sub_1ABD1AFA0();

      sub_1ABAA2300(348198);
      sub_1ABD1B690();

      sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
      sub_1ABD0AA28();
      sub_1ABAA2D10();
      sub_1ABAA6564();
    }
  }

  v12 = sub_1ABA89DE4();
  v13(v12);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v6 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA7BBB0(v6);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA9F7AC();
  v10 = sub_1ABAD219C(&qword_1EB4D6748, &dword_1ABF50BD8);
  sub_1ABA960BC(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA8176C();
  v16 = type metadata accessor for CustomGraphActivityEvent(0);
  v17 = sub_1ABAB6924(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7C21C();
  v46 = v20;
  sub_1ABA90D04();
  sub_1ABD0A704();
  sub_1ABA88E70();
  sub_1ABF252C4();
  if (v1)
  {
    sub_1ABAA6690();
    sub_1ABA9F888();
    sub_1ABA90FE0();
    if (v3)
    {
      v24 = v47;
      sub_1ABAB480C(v46 + v47[7], &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v1 & 1) == 0)
      {
LABEL_15:
        if (v2)
        {
LABEL_16:
          sub_1ABA88814();
          if ((v5 & 1) == 0)
          {
LABEL_17:
            if (v6)
            {
LABEL_18:
              sub_1ABAA1044();
              if ((v43 & 1) == 0)
              {
LABEL_19:
                if (v44)
                {
LABEL_20:
                  v26 = *(v46 + v24[13]);

                  if ((v45 & 1) == 0)
                  {
LABEL_21:
                    if (!v12)
                    {
                      goto LABEL_23;
                    }

LABEL_22:
                    v27 = *(v46 + v24[15]);

                    goto LABEL_23;
                  }

LABEL_11:
                  v25 = *(v46 + v24[14]);

                  if ((v12 & 1) == 0)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_22;
                }

LABEL_10:
                if (!v45)
                {
                  goto LABEL_21;
                }

                goto LABEL_11;
              }

LABEL_9:
              sub_1ABAA20FC();
              if (v44)
              {
                goto LABEL_20;
              }

              goto LABEL_10;
            }

LABEL_8:
            if (!v43)
            {
              goto LABEL_19;
            }

            goto LABEL_9;
          }

LABEL_7:
          sub_1ABD1B2FC();
          if (v6)
          {
            goto LABEL_18;
          }

          goto LABEL_8;
        }

LABEL_6:
        if (!v5)
        {
          goto LABEL_17;
        }

        goto LABEL_7;
      }
    }

    else
    {
      v24 = v47;
      if (!v1)
      {
        goto LABEL_15;
      }
    }

    sub_1ABD1B314();
    if (v2)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  v21 = sub_1ABA7ABE4();
  sub_1ABAD219C(v21, v22);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v23);
  sub_1ABA841C4();
  sub_1ABA81934();
  sub_1ABF24E64();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
  sub_1ABA89A14();
  sub_1ABD0A1FC();
  sub_1ABA99458();
  sub_1ABD1B51C();
  sub_1ABA88ACC();
  sub_1ABAAFAD4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABD1B178();
  sub_1ABD0A2D4();
  sub_1ABA99458();
  sub_1ABD1B51C();
  sub_1ABD1B11C();
  sub_1ABA7F460();
  sub_1ABD0A358(v28);
  sub_1ABA9EEBC();
  sub_1ABD1B014();
  sub_1ABD1B51C();
  v29 = v47[7];
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9EC10();
  sub_1ABD0A408();
  sub_1ABA99458();
  sub_1ABA81934();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D65F8, &dword_1ABF50B60);
  sub_1ABD1AFDC();
  sub_1ABD0A4B8();
  sub_1ABA99458();
  sub_1ABA81934();
  sub_1ABF24E64();
  sub_1ABD1B7DC();
  sub_1ABAD219C(&qword_1EB4D66D8, &qword_1ABF50BA8);
  sub_1ABD1AFD0();
  sub_1ABD0AAAC();
  sub_1ABA99458();
  sub_1ABA81934();
  sub_1ABF24E64();
  *(v0 + v47[10]) = v48;
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA893EC();
  sub_1ABD0A568();
  sub_1ABA99458();
  sub_1ABA81934();
  sub_1ABF24E64();
  *(v0 + v47[11]) = v48;
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFB8();
  sub_1ABD0A618();
  sub_1ABA9F1AC();
  sub_1ABD1B014();
  sub_1ABA81934();
  sub_1ABF24E64();
  sub_1ABD1AF54();
  v30 = v47[12];
  sub_1ABA8A644(v31);
  sub_1ABA8AB1C(9);
  sub_1ABD1B014();
  sub_1ABF24E64();
  sub_1ABA898CC();
  v33 = *(v32 + 52);
  sub_1ABD1AEEC(v34);
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABAB6330();
  sub_1ABD0AB5C();
  sub_1ABAA112C();
  sub_1ABA9F49C();
  sub_1ABF24E64();
  sub_1ABA898CC();
  v36 = *(v35 + 56);
  sub_1ABD1AEEC(v37);
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1B69C();
  sub_1ABD0AC48();
  sub_1ABAA112C();
  sub_1ABA9F49C();
  sub_1ABF24E64();
  v38 = v46 + v47[15];
  sub_1ABD1B104(v48);
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1B690();
  sub_1ABD0ACD4();
  sub_1ABAA112C();
  sub_1ABA9F49C();
  sub_1ABF24E64();
  sub_1ABD1B024();
  v39(v4);
  sub_1ABA898CC();
  v41 = *(v40 + 64);
  sub_1ABA8A644(v42);
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_23:
  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void static CustomGraphSportsGameEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC78), *(_Records_GDEntityClass_records + 0xC80), *(_Records_GDEntityClass_records + 0xC88), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABC93DC4()
{
  sub_1ABA7BCA8();
  v67 = v2;
  v4 = v3;
  sub_1ABD1BAA4(v5);
  v6 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v6);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v10);
  v65 = type metadata accessor for CustomGraphSportsGameEvent(0);
  v11 = sub_1ABA7BBB0(v65);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7C21C();
  sub_1ABA8147C(v14);
  sub_1ABA7D028();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1ABD1B210(v15);
  sub_1ABD1BE50(v17);
  sub_1ABA7D028();
  v18 = swift_allocObject();
  sub_1ABD1B210(v18);
  sub_1ABD1BE44(v19);
  sub_1ABA7D028();
  v69 = swift_allocObject();
  sub_1ABD1B210(v69);
  sub_1ABD1BA5C(v20);
  sub_1ABA7D028();
  swift_allocObject();
  sub_1ABA88AB0();
  *(v21 + 16) = v16;
  sub_1ABD1B61C(v21 + 16);
  sub_1ABA7D028();
  v68 = swift_allocObject();
  sub_1ABD1B210(v68);
  sub_1ABD1B6E8(v22);
  sub_1ABA7D028();
  v23 = swift_allocObject();
  sub_1ABD1B210(v23);
  sub_1ABD1B3DC(v24);
  sub_1ABA7D028();
  v25 = swift_allocObject();
  sub_1ABD1B210(v25);
  sub_1ABD1B3C4(v26);
  sub_1ABA7D028();
  v27 = swift_allocObject();
  sub_1ABD1B210(v27);
  sub_1ABD1B6D0(v28);
  v29 = swift_allocObject();
  v29[2] = v15;
  v29[3] = v18;
  v29[4] = v4;
  v29[5] = v69;
  v29[6] = v1;
  v29[7] = v68;
  v29[8] = v23;
  v29[9] = v25;
  v29[10] = v27;
  v66 = v27;

  sub_1ABC82584(v67, sub_1ABC95088, 0, sub_1ABD18DC8, v29, sub_1ABD1917C, v72);
  if (v0)
  {
  }

  else
  {

    sub_1ABA9EA34();

    v30 = sub_1ABD1BE7C();
    sub_1ABC4A938(v30, v31, v32, v33, v34, v35, v36, v37);
    *v64 = v72[0];
    sub_1ABA8A740();
    v64[1] = *v58;
    sub_1ABD1B058();
    v38 = sub_1ABD1C284();
    v64[2] = v59;
    v64[3] = v38;
    v64[4] = v39;
    sub_1ABD1B080();
    v40 = *v60;
    sub_1ABD1AF20();
    sub_1ABA7ED8C();
    sub_1ABA7B9B4(v41, v42, v43, v44);
    v45 = v65[7];

    sub_1ABC8B318(v46, v63, (v64 + v45));
    sub_1ABAAD280(&v70);
    *(v64 + v65[8]) = *v63;
    sub_1ABAAD280(&v71);
    *(v64 + v65[9]) = *v63;
    sub_1ABD1B058();
    v47 = *v61;
    if (*(*v61 + 16))
    {
      v48 = *(v47 + 32);
    }

    sub_1ABAAFB28();
    v49 = v64 + v65[10];
    *v49 = v47;
    *(v49 + 1) = v50;
    v49[16] = v51;
    sub_1ABD1B0E8();
    v52 = *v62;
    v53 = *(*v62 + 16);
    if (v53)
    {
      v54 = *(v52 + 32);
    }

    else
    {
      v54 = 0;
    }

    v55 = v53 == 0;

    sub_1ABAA1668();

    v56 = v64 + v65[11];
    *v56 = v52;
    *(v56 + 1) = v54;
    v56[16] = v55;
    sub_1ABA890D8();
    v57 = *(v66 + 16);

    sub_1ABAA2168();

    sub_1ABAA63C4();

    sub_1ABAA1460();

    sub_1ABA9EA34();

    *(v64 + v65[12]) = v57;
    sub_1ABA8D348();

    sub_1ABD1C2B4();
    sub_1ABA97F40();
    sub_1ABCF9424();
  }

  sub_1ABA8869C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC94394@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a3;
  v70 = a2;
  v71 = a1;
  v69 = a4;
  v4 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = &v56 - v6;
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  v61 = (v7 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v60 = (v9 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v62 = (v10 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v63 = (v11 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  v64 = (v12 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  v65 = v13 + 16;
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v66 = v14 + 16;
  v15 = swift_allocObject();
  v15[2] = v8;
  v68 = v15 + 2;
  v16 = swift_allocObject();
  v16[2] = v7;
  v16[3] = v9;
  v16[4] = v85;
  v16[5] = v10;
  v16[6] = v11;
  v16[7] = v12;
  v16[8] = v13;
  v16[9] = v14;
  v16[10] = v15;
  v74 = v7;

  v73 = v10;

  v17 = v72;
  (v71)(&v84, sub_1ABC95088, 0, sub_1ABD1AACC, v16);
  if (v17)
  {
  }

  else
  {
    v58 = v11;
    v59 = v12;
    v70 = v13;
    v71 = v15;
    v72 = v14;
    v18 = v69;

    sub_1ABC4A938(v84, v19, v20, v21, v22, v23, v24, v25, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
    v57 = 0;
    v56 = v9;
    *v18 = v84;
    v27 = v61;
    swift_beginAccess();
    v18[1] = *v27;
    v28 = v60;
    swift_beginAccess();
    v29 = *v28;
    v30 = sub_1ABB2B834(*v28);
    v18[2] = v29;
    v18[3] = v30;
    v18[4] = v31;
    v32 = v62;
    swift_beginAccess();
    v33 = *v32;
    v34 = v18;
    v35 = type metadata accessor for CustomGraphDateRelationship(0);
    v36 = v67;
    sub_1ABA7B9B4(v67, 1, 1, v35);
    v37 = type metadata accessor for CustomGraphSportsGameEvent(0);
    v38 = v37[7];

    sub_1ABC8B318(v39, v36, (v34 + v38));
    v40 = v63;
    swift_beginAccess();
    v41 = v37[8];
    v67 = *v40;
    *(v34 + v41) = v67;
    v42 = v64;
    swift_beginAccess();
    *(v34 + v37[9]) = *v42;
    v43 = v65;
    swift_beginAccess();
    v44 = *v43;
    v45 = *(*v43 + 16);
    if (v45)
    {
      v46 = *(v44 + 32);
    }

    else
    {
      v46 = 0;
    }

    v47 = v66;
    v48 = v34 + v37[10];
    *v48 = v44;
    *(v48 + 1) = v46;
    v48[16] = v45 == 0;
    swift_beginAccess();
    v49 = *v47;
    v50 = *(*v47 + 16);
    v51 = v71;
    if (v50)
    {
      v66 = *(v49 + 32);
    }

    else
    {
      v66 = 0;
    }

    v52 = v50 == 0;

    v53 = v34 + v37[11];
    v54 = v66;
    *v53 = v49;
    *(v53 + 1) = v54;
    v53[16] = v52;
    swift_beginAccess();
    v55 = v51[2];

    *(v34 + v37[12]) = v55;
  }
}

void sub_1ABC94A48()
{
  sub_1ABA7BCA8();
  v64 = v1;
  v63 = v2;
  v68 = v3;
  v62 = v4;
  sub_1ABD1B77C(v5);
  v6 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v6);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v10);
  sub_1ABA7D028();
  v11 = swift_allocObject();
  sub_1ABD1B074(v11);
  sub_1ABD1B6DC(v12);
  sub_1ABA7D028();
  v13 = swift_allocObject();
  sub_1ABD1B074(v13);
  sub_1ABD1B3C4(v14);
  sub_1ABA7D028();
  v15 = swift_allocObject();
  sub_1ABD1B074(v15);
  sub_1ABD1B6D0(v16);
  sub_1ABA7D028();
  v17 = swift_allocObject();
  sub_1ABD1B074(v17);
  sub_1ABD1BA8C(v18);
  sub_1ABA7D028();
  v19 = swift_allocObject();
  sub_1ABD1B074(v19);
  sub_1ABD1BEE4(v20);
  sub_1ABA7D028();
  v21 = swift_allocObject();
  sub_1ABD1B074(v21);
  sub_1ABD1BAA4(v22);
  sub_1ABA7D028();
  v23 = swift_allocObject();
  sub_1ABD1B074(v23);
  v58 = v24;
  sub_1ABA7D028();
  v25 = swift_allocObject();
  sub_1ABD1B074(v25);
  sub_1ABA88928();
  v26 = swift_allocObject();
  v26[2] = v63;
  v26[3] = v64;
  v26[4] = v11;
  v26[5] = v13;
  v26[6] = v68;
  v26[7] = v15;
  v26[8] = v17;
  v26[9] = v19;
  v26[10] = v21;
  v26[11] = v23;
  v26[12] = v25;

  sub_1ABD1B678();
  v62();
  if (v0)
  {

    sub_1ABD1C2B4();

    sub_1ABAA63C4();
  }

  else
  {

    v27 = sub_1ABD1BE7C();
    sub_1ABC4A938(v27, v28, v29, v30, v31, v32, v33, v34);
    *v61 = v67[2];
    sub_1ABAAD280(&v66);
    v61[1] = *v17;
    sub_1ABAAD280(&v65);
    v35 = *v17;
    v36 = sub_1ABB2B834(*v17);
    v61[2] = v35;
    v61[3] = v36;
    v61[4] = v37;
    sub_1ABAAD280(v67);
    v38 = *v17;
    sub_1ABD1AF20();
    v42 = sub_1ABA9DFB8(v60, v39, v40, v41);
    v43 = type metadata accessor for CustomGraphSportsGameEvent(v42);
    v44 = v43[7];

    sub_1ABC8B318(v45, v60, (v61 + v44));
    sub_1ABA8A740();
    *(v61 + v43[8]) = *v56;
    sub_1ABA8A740();
    *(v61 + v43[9]) = *v57;
    sub_1ABD1B628();
    sub_1ABA8A740();
    v46 = *v57;
    if (*(*v57 + 16))
    {
      v47 = *(v46 + 32);
    }

    sub_1ABAAFB28();
    v48 = v61 + v43[10];
    *v48 = v46;
    *(v48 + 1) = v49;
    v48[16] = v50;
    sub_1ABA8A740();
    v51 = *v58;
    v52 = *(*v58 + 16);
    if (v52)
    {
      v59 = *(v51 + 32);
    }

    else
    {
      v59 = 0;
    }

    v53 = v52 == 0;
    sub_1ABAA1460();

    v54 = v61 + v43[11];
    *v54 = v51;
    *(v54 + 1) = v59;
    v54[16] = v53;
    sub_1ABAA2168();
    sub_1ABA7F2A0();
    v55 = *(v25 + 16);

    sub_1ABAA1668();

    *(v61 + v43[12]) = v55;
    sub_1ABD1C2B4();

    sub_1ABAA63C4();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABC95088(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphSportsGameEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC78), *(_Records_GDEntityClass_records + 0xC80), *(_Records_GDEntityClass_records + 0xC88), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC78), *(_Records_GDEntityClass_records + 0xC80), *(_Records_GDEntityClass_records + 0xC88), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABC95320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v129 = a4;
  v131 = a3;
  v132 = a2;
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v123 - v18;
  v20 = type metadata accessor for CustomGraphDateRelationship(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v130 = 279;
  v126 = v23;
  v127 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = a5;
  v124 = a8;
  v125 = a6;
  v151 = v10;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_124;
  }

  v24 = *a1;
  v25 = *(a1 + 8);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), v145);
  if (*&v145[0] == v24 && *(&v145[0] + 1) == v25)
  {

LABEL_54:
    *&v148[10] = *(a1 + 82);
    v47 = *(a1 + 56);
    v146 = *(a1 + 40);
    v147 = v47;
    *v148 = *(a1 + 72);
    v48 = v151;
    if (v148[25] == 1)
    {
      v49 = *(a1 + 56);
      v143 = *(a1 + 40);
      v144[0] = v49;
      v144[1] = *(a1 + 72);
      *(&v144[1] + 9) = *(a1 + 81);
      MEMORY[0x1EEE9AC00](v28);
      *(&v123 - 2) = &v143;
      v140 = v146;
      v141 = v147;
      v142[0] = *v148;
      *(v142 + 10) = *(v50 + 42);
      sub_1ABAE2EC4();
      sub_1ABD191AC(&v140, &v133);
      sub_1ABCF8EE8(sub_1ABD1A8C8, v145);
      if (v48 || (v52 = *&v145[1]) == 0)
      {
        v133 = v143;
        v134 = v144[0];
        v135[0] = v144[1];
        *(v135 + 9) = *(&v144[1] + 9);
        v51 = &v133;
LABEL_57:
        sub_1ABD19208(v51);
LABEL_62:
        sub_1ABAB480C(&v146, &qword_1EB4D7E60, &unk_1ABF5E780);
        return;
      }

      v133 = v143;
      v134 = v144[0];
      v135[0] = v144[1];
      *(v135 + 9) = *(&v144[1] + 9);
      sub_1ABD19208(&v133);
      v53 = v132;
      swift_beginAccess();
      sub_1ABB4DCE0();
      v54 = *(*(v53 + 16) + 16);
      sub_1ABB4E0E4(v54);
      v55 = *(v53 + 16);
      *(v55 + 16) = v54 + 1;
      v56 = v55 + 88 * v54;
      *(v56 + 32) = v145[0];
      *(v56 + 48) = v52;
      *(v56 + 56) = *(&v145[1] + 8);
      *(v56 + 72) = *(&v145[2] + 8);
      *(v56 + 88) = *(&v145[3] + 8);
      *(v56 + 104) = *(&v145[4] + 8);
      goto LABEL_60;
    }

LABEL_90:
    if (qword_1ED871B38 == -1)
    {
LABEL_91:
      v94 = sub_1ABF237F4();
      sub_1ABA7AA24(v94, qword_1ED871B40);
      sub_1ABAE2EC4();
      v58 = sub_1ABF237D4();
      v59 = sub_1ABF24664();
      if (os_log_type_enabled(v58, v59))
      {
LABEL_92:
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *&v140 = v96;
        *v95 = 136642819;
        memcpy(v145, a1, 0x62uLL);
        sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
        v97 = sub_1ABF23C94();
        v99 = &v140;
LABEL_93:
        v100 = sub_1ABADD6D8(v97, v98, v99);

        *(v95 + 4) = v100;
        _os_log_impl(&dword_1ABA78000, v58, v59, "Failed to parse %{sensitive}s.", v95, 0xCu);
        sub_1ABA84B54(v96);
        MEMORY[0x1AC5AB8B0](v96, -1, -1);
        MEMORY[0x1AC5AB8B0](v95, -1, -1);

        return;
      }

      goto LABEL_103;
    }

LABEL_75:
    swift_once();
    goto LABEL_91;
  }

  v123 = a7;
  v27 = sub_1ABF25054();

  if (v27)
  {
    goto LABEL_54;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
LABEL_102:
    v108 = sub_1ABF237F4();
    sub_1ABA7AA24(v108, qword_1ED871B40);
    sub_1ABAE2EC4();
    v58 = sub_1ABF237D4();
    v59 = sub_1ABF24664();
    if (!os_log_type_enabled(v58, v59))
    {
LABEL_103:

      v71 = &qword_1EB4D1148;
      v72 = &qword_1ABF332D0;
      v73 = a1;
      goto LABEL_104;
    }

LABEL_112:
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *&v146 = v96;
    *v95 = 136642819;
    memcpy(v145, a1, 0x62uLL);
    sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    v97 = sub_1ABF23C94();
    v99 = &v146;
    goto LABEL_93;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v145);
  if (*&v145[0] == v24 && *(&v145[0] + 1) == v25)
  {

LABEL_64:
    if (!*(a1 + 97))
    {
      v61 = *(a1 + 40);
      v60 = *(a1 + 48);
      v62 = v131;
      swift_beginAccess();

      sub_1ABB4DC20();
      v63 = *(*(v62 + 16) + 16);
      sub_1ABB4E024(v63);
      v64 = *(v62 + 16);
      *(v64 + 16) = v63 + 1;
      v65 = v64 + 16 * v63;
      *(v65 + 32) = v61;
      *(v65 + 40) = v60;
      *(v62 + 16) = v64;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v57 = sub_1ABF237F4();
    sub_1ABA7AA24(v57, qword_1ED871B40);
    sub_1ABAE2EC4();
    v58 = sub_1ABF237D4();
    v59 = sub_1ABF24664();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_103;
    }

    goto LABEL_112;
  }

  v30 = sub_1ABF25054();

  if (v30)
  {
    goto LABEL_64;
  }

  if (v130 < 0x92)
  {
    __break(1u);
    goto LABEL_114;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_128;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), v145);
  if (*&v145[0] == v24 && *(&v145[0] + 1) == v25)
  {

    goto LABEL_71;
  }

  v32 = sub_1ABF25054();

  if (v32)
  {
LABEL_71:
    *&v148[10] = *(a1 + 82);
    v66 = *(a1 + 56);
    v146 = *(a1 + 40);
    v147 = v66;
    *v148 = *(a1 + 72);
    if (v148[25] != 1)
    {
      if (qword_1ED871B38 == -1)
      {
        goto LABEL_91;
      }

      goto LABEL_75;
    }

    v67 = *(a1 + 56);
    v149[0] = *(a1 + 40);
    v149[1] = v67;
    v150[0] = *(a1 + 72);
    *(v150 + 9) = *(a1 + 81);
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v68 = v129;

    v69 = v68;
    v70 = v151;
    sub_1ABC8A96C(v149, v69, v19);
    if (!v70)
    {
      if (sub_1ABA7E1E0(v19, 1, v20) != 1)
      {
        v77 = v127;
        sub_1ABCF9424();
        v78 = v128;
        swift_beginAccess();
        sub_1ABB4DE30();
        v79 = *(*(v78 + 16) + 16);
        sub_1ABB4E234(v79);
        v80 = *(v78 + 16);
        *(v80 + 16) = v79 + 1;
        v81 = v80 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v79;
        sub_1ABD0AD58();
        *(v78 + 16) = v80;
        swift_endAccess();
        sub_1ABAB480C(&v146, &qword_1EB4D7E60, &unk_1ABF5E780);
        sub_1ABD0ADB0(v77, type metadata accessor for CustomGraphDateRelationship);
        return;
      }

      sub_1ABAB480C(&v146, &qword_1EB4D7E60, &unk_1ABF5E780);
      v71 = &qword_1EB4D5F20;
      v72 = &qword_1ABF4F358;
      v73 = v19;
      goto LABEL_104;
    }

    goto LABEL_73;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_131;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[216], *(_Records_GDEntityPredicate_records + 55), *(_Records_GDEntityPredicate_records + 56), v145);
  if (*&v145[0] == v24 && *(&v145[0] + 1) == v25)
  {

    v36 = v151;
    goto LABEL_79;
  }

  v34 = sub_1ABF25054();

  v36 = v151;
  if (v34)
  {
LABEL_79:
    *&v148[10] = *(a1 + 82);
    v74 = *(a1 + 56);
    v146 = *(a1 + 40);
    v147 = v74;
    *v148 = *(a1 + 72);
    if (v148[25] != 1)
    {
      goto LABEL_90;
    }

    v75 = *(a1 + 56);
    v133 = *(a1 + 40);
    v134 = v75;
    v135[0] = *(a1 + 72);
    *(v135 + 9) = *(a1 + 81);
    MEMORY[0x1EEE9AC00](v35);
    *(&v123 - 2) = &v133;
    v145[0] = v146;
    v145[1] = v147;
    v145[2] = *v148;
    *(&v145[2] + 10) = *(v76 + 42);
    sub_1ABAE2EC4();
    sub_1ABD191AC(v145, &v140);
    sub_1ABD08790(sub_1ABD1A8C8, (&v123 - 4), &unk_1F2099F30, sub_1ABD1AB54, sub_1ABD19310);
    if (v36)
    {
      v140 = v133;
      v141 = v134;
      v142[0] = v135[0];
      *(v142 + 9) = *(v135 + 9);
      sub_1ABD19208(&v140);
      sub_1ABAB480C(&v146, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

    v82 = *&v144[0];
    if (*&v144[0])
    {
      LODWORD(v151) = LOBYTE(v144[1]);
      v83 = *(&v144[0] + 1);
      v84 = v143;
      v140 = v133;
      v141 = v134;
      v142[0] = v135[0];
      *(v142 + 9) = *(v135 + 9);
      sub_1ABD19208(&v140);
      v85 = v125;
      swift_beginAccess();
      sub_1ABB4DE78();
      v86 = *(*(v85 + 16) + 16);
      sub_1ABB4E27C(v86);
      v87 = *(v85 + 16);
      *(v87 + 16) = v86 + 1;
      v88 = v87 + 40 * v86;
      *(v88 + 32) = v84;
      *(v88 + 48) = v82;
      *(v88 + 56) = v83;
      *(v88 + 64) = v151 & 1;
      *(v85 + 16) = v87;
      swift_endAccess();
    }

    else
    {
      v140 = v133;
      v141 = v134;
      v142[0] = v135[0];
      *(v142 + 9) = *(v135 + 9);
      sub_1ABD19208(&v140);
    }

LABEL_73:
    v71 = &qword_1EB4D7E60;
    v72 = &unk_1ABF5E780;
    v73 = &v146;
LABEL_104:
    sub_1ABAB480C(v73, v71, v72);
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_133;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v145);
  if (*&v145[0] == v24 && *(&v145[0] + 1) == v25)
  {

LABEL_86:
    *&v148[10] = *(a1 + 82);
    v89 = *(a1 + 56);
    v146 = *(a1 + 40);
    v147 = v89;
    *v148 = *(a1 + 72);
    if (v148[25] == 1)
    {
      v90 = *(a1 + 56);
      v133 = *(a1 + 40);
      v134 = v90;
      v135[0] = *(a1 + 72);
      *(v135 + 9) = *(a1 + 81);
      MEMORY[0x1EEE9AC00](v39);
      *(&v123 - 2) = &v133;
      v145[0] = v146;
      v145[1] = v147;
      v145[2] = *v148;
      *(&v145[2] + 10) = *(v91 + 42);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v145, &v140);
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v123 - 4), &unk_1F2099F58, &unk_1F2099F80, sub_1ABD0D498, sub_1ABD1932C, v92, v93, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, *(&v133 + 1), v134, SBYTE8(v134), *&v135[0], *(&v135[0] + 1), *&v135[1], *(&v135[1] + 1), v136, v137, v138, v139, v140, *(&v140 + 1));
      if (v36 || (v101 = *&v144[0]) == 0)
      {
        v140 = v133;
        v141 = v134;
        v142[0] = v135[0];
        *(v142 + 9) = *(v135 + 9);
LABEL_89:
        v51 = &v140;
        goto LABEL_57;
      }

      v140 = v133;
      v141 = v134;
      v142[0] = v135[0];
      *(v142 + 9) = *(v135 + 9);
      sub_1ABD19208(&v140);
      v53 = v123;
      swift_beginAccess();
      sub_1ABB4DD28();
      v102 = *(*(v53 + 16) + 16);
      sub_1ABB4E12C(v102);
      v55 = *(v53 + 16);
      *(v55 + 16) = v102 + 1;
      v103 = v55 + (v102 << 6);
      *(v103 + 32) = v143;
      *(v103 + 48) = v101;
      *(v103 + 56) = *(v144 + 8);
      *(v103 + 72) = *(&v144[1] + 8);
      *(v103 + 88) = BYTE8(v144[2]);
LABEL_60:
      *(v53 + 16) = v55;
LABEL_61:
      swift_endAccess();
      goto LABEL_62;
    }

    goto LABEL_90;
  }

  v38 = sub_1ABF25054();

  if (v38)
  {
    goto LABEL_86;
  }

  if (v130 < 0xA1)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), v145);
  if (*&v145[0] == v24 && *(&v145[0] + 1) == v25)
  {
  }

  else
  {
    v41 = sub_1ABF25054();

    if ((v41 & 1) == 0)
    {
      if (v130 != 161)
      {
        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), v145);
          if (*&v145[0] == v24 && *(&v145[0] + 1) == v25)
          {
          }

          else
          {
            v43 = sub_1ABF25054();

            if ((v43 & 1) == 0)
            {
              if (_Records_GDEntityPredicate_records)
              {
                sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), v145);
                if (*&v145[0] != v24 || *(&v145[0] + 1) != v25)
                {
                  v45 = sub_1ABF25054();

                  if ((v45 & 1) == 0)
                  {
                    return;
                  }

LABEL_115:
                  *&v148[10] = *(a1 + 82);
                  v113 = *(a1 + 56);
                  v146 = *(a1 + 40);
                  v147 = v113;
                  *v148 = *(a1 + 72);
                  if (v148[25] == 1)
                  {
                    v114 = *(a1 + 56);
                    v133 = *(a1 + 40);
                    v134 = v114;
                    v135[0] = *(a1 + 72);
                    *(v135 + 9) = *(a1 + 81);
                    MEMORY[0x1EEE9AC00](v46);
                    *(&v123 - 2) = &v133;
                    v145[0] = v146;
                    v145[1] = v147;
                    v145[2] = *v148;
                    *(&v145[2] + 10) = *&v148[10];
                    sub_1ABAE2EC4();
                    sub_1ABD191AC(v145, &v140);
                    v115 = v151;
                    sub_1ABCFC2DC(sub_1ABD1A8C8, (&v123 - 4), &unk_1F2099FA8, &unk_1F2099FD0, sub_1ABD1AB6C, sub_1ABD19348, v116, v117, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, *(&v133 + 1), v134, SBYTE8(v134), *&v135[0], *(&v135[0] + 1), *&v135[1], *(&v135[1] + 1), v136, v137, v138, v139, v140, *(&v140 + 1));
                    if (!v115)
                    {
                      v119 = *&v144[0];
                      if (*&v144[0])
                      {
                        v140 = v133;
                        v141 = v134;
                        v142[0] = v135[0];
                        *(v142 + 9) = *(v135 + 9);
                        sub_1ABD19208(&v140);
                        swift_beginAccess();
                        sub_1ABB4DF08();
                        v120 = *(*(a10 + 16) + 16);
                        sub_1ABB4E30C(v120);
                        v121 = *(a10 + 16);
                        *(v121 + 16) = v120 + 1;
                        v122 = v121 + (v120 << 6);
                        *(v122 + 32) = v143;
                        *(v122 + 48) = v119;
                        *(v122 + 56) = *(v144 + 8);
                        *(v122 + 72) = *(&v144[1] + 8);
                        *(v122 + 88) = BYTE8(v144[2]);
                        *(a10 + 16) = v121;
                        goto LABEL_61;
                      }
                    }

                    v140 = v133;
                    v141 = v134;
                    v142[0] = v135[0];
                    *(v142 + 9) = *(v135 + 9);
                    goto LABEL_89;
                  }

                  if (qword_1ED871B38 == -1)
                  {
LABEL_119:
                    v118 = sub_1ABF237F4();
                    sub_1ABA7AA24(v118, qword_1ED871B40);
                    sub_1ABAE2EC4();
                    v58 = sub_1ABF237D4();
                    v59 = sub_1ABF24664();
                    if (!os_log_type_enabled(v58, v59))
                    {
                      goto LABEL_120;
                    }

                    goto LABEL_92;
                  }

LABEL_131:
                  swift_once();
                  goto LABEL_119;
                }

LABEL_114:

                goto LABEL_115;
              }

LABEL_135:
              __break(1u);
              return;
            }
          }

          if (*(a1 + 97) == 2)
          {
            sub_1ABC4A630(&v146, *(a1 + 40));
            if (!v36)
            {
              v109 = v146;
              swift_beginAccess();
              sub_1ABB4DD40();
              v110 = *(*(a9 + 16) + 16);
              sub_1ABB4E144(v110);
              v111 = *(a9 + 16);
              *(v111 + 16) = v110 + 1;
              *(v111 + 8 * v110 + 32) = v109;
              *(a9 + 16) = v111;
            }

            return;
          }

          if (qword_1ED871B38 == -1)
          {
            goto LABEL_111;
          }

          goto LABEL_129;
        }

LABEL_134:
        __break(1u);
        goto LABEL_135;
      }

      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      swift_once();
LABEL_111:
      v112 = sub_1ABF237F4();
      sub_1ABA7AA24(v112, qword_1ED871B40);
      sub_1ABAE2EC4();
      v58 = sub_1ABF237D4();
      v59 = sub_1ABF24664();
      if (!os_log_type_enabled(v58, v59))
      {
LABEL_120:

        sub_1ABAB480C(a1, &qword_1EB4D1148, &qword_1ABF332D0);
        return;
      }

      goto LABEL_112;
    }
  }

  if (*(a1 + 97) != 2)
  {
    if (qword_1ED871B38 == -1)
    {
      goto LABEL_102;
    }

    goto LABEL_126;
  }

  sub_1ABC4A630(&v146, *(a1 + 40));
  if (!v36)
  {
    v104 = v146;
    v105 = v124;
    swift_beginAccess();
    sub_1ABB4DD40();
    v106 = *(*(v105 + 16) + 16);
    sub_1ABB4E144(v106);
    v107 = *(v105 + 16);
    *(v107 + 16) = v106 + 1;
    *(v107 + 8 * v106 + 32) = v104;
    *(v105 + 16) = v107;
  }
}

void sub_1ABC968B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v274 = a8;
  v276 = a7;
  v279 = a6;
  v287 = a5;
  v297 = a4;
  v304 = a3;
  v303 = a2;
  v326 = a1;
  v12 = a11;
  v13 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v298 = v267 - v15;
  v291 = type metadata accessor for CustomGraphDateRelationship(0);
  v285 = *(v291 - 8);
  v16 = *(v285 + 64);
  MEMORY[0x1EEE9AC00](v291);
  v286 = v267 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = *(a11 - 1);
  v18 = *(v310 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v271 = v267 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v272 = v267 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v277 = v267 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v282 = v267 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v289 = v267 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v296 = v267 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v302 = v267 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v267 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v306 = v267 - v37;
  v38 = *(a12 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v308 = sub_1ABF247E4();
  v307 = *(v308 - 8);
  v40 = *(v307 + 64);
  MEMORY[0x1EEE9AC00](v308);
  v273 = v267 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v284 = v267 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v293 = v267 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v300 = v267 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = v267 - v49;
  v315 = swift_checkMetadataState();
  v313 = *(v315 - 8);
  v51 = *(v313 + 64);
  MEMORY[0x1EEE9AC00](v315);
  v269 = v267 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v275 = v267 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v278 = v267 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v283 = v267 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v292 = v267 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v299 = v267 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v65 = v267 - v64;
  MEMORY[0x1EEE9AC00](v66);
  v68 = v267 - v67;
  v312 = AssociatedTypeWitness;
  v309 = *(AssociatedTypeWitness - 8);
  v69 = *(v309 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v268 = v267 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v270 = v267 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v280 = v267 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v281 = v267 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v288 = v267 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v290 = v267 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v294 = v267 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v295 = v267 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v88 = v267 - v87;
  v90 = MEMORY[0x1EEE9AC00](v89);
  v92 = v267 - v91;
  v93 = *(v38 + 24);
  v317 = a11;
  v314 = v38;
  v93(v325, a11, v38, v90);
  v301 = 279;
  v305 = v35;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_142:
    swift_once();
LABEL_85:
    v199 = sub_1ABF237F4();
    sub_1ABA7AA24(v199, qword_1ED871B40);
    v149 = *(v310 + 16);
    v150 = &v314;
    goto LABEL_49;
  }

  v94 = v325[0];
  v95 = v325[1];
  v96 = v325[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), &v318);
  v97 = v94;
  v12 = v320;
  if (v318 == v97 && *(&v318 + 1) == v95)
  {

    goto LABEL_9;
  }

  v267[1] = v96;
  v267[0] = v97;
  v99 = sub_1ABF25054();

  if ((v99 & 1) == 0)
  {
    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v318);
      v125 = v320;
      v126 = v318 == v267[0] && *(&v318 + 1) == v95;
      v88 = v317;
      if (v126)
      {

LABEL_30:
        v129 = v314;

        (*(v129 + 32))(v88, v129);
        v130 = v315;
        v131 = swift_getAssociatedConformanceWitness();
        v132 = (*(v131 + 24))(v130, v131);
        v134 = v133;
        (*(v313 + 8))(v65, v130);
        if (v134)
        {
          v135 = v304;
          swift_beginAccess();
          sub_1ABB4DC20();
          v136 = *(*(v135 + 16) + 16);
          sub_1ABB4E024(v136);
          v137 = *(v135 + 16);
          *(v137 + 16) = v136 + 1;
          v138 = v137 + 16 * v136;
          *(v138 + 32) = v132;
          *(v138 + 40) = v134;
          *(v135 + 16) = v137;
          swift_endAccess();
          return;
        }

        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v139 = sub_1ABF237F4();
        sub_1ABA7AA24(v139, qword_1ED871B40);
        v105 = *(v310 + 16);
        v106 = v302;
        v105(v302, v326, v88);
        v107 = sub_1ABF237D4();
        v108 = sub_1ABF24664();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v104 = v310;
          goto LABEL_14;
        }

        goto LABEL_51;
      }

      v127 = sub_1ABF25054();

      v128 = v316;
      if (v127)
      {
        goto LABEL_30;
      }

      if (v301 < 0x92)
      {
        __break(1u);
        goto LABEL_131;
      }

      v140 = v315;
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_147;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v318);
      if (v318 == v267[0] && *(&v318 + 1) == v95)
      {
        v143 = v140;

        goto LABEL_45;
      }

      v142 = sub_1ABF25054();

      if (v142)
      {
        v143 = v140;
LABEL_45:
        v144 = v314;

        v145 = v299;
        v12 = v326;
        (*(v144 + 32))(v88, v144);
        v146 = v300;
        (*(AssociatedConformanceWitness + 40))(v143, AssociatedConformanceWitness);
        (*(v313 + 8))(v145, v143);
        v147 = v312;
        if (sub_1ABA7E1E0(v146, 1, v312) != 1)
        {
          v157 = v309;
          v158 = v295;
          (*(v309 + 32))(v295, v146, v147);
          (*(v157 + 16))(v294, v158, v147);
          swift_getAssociatedConformanceWitness();

          v159 = v298;
          CustomGraphDateRelationship.init<A>(from:initializationResources:)();
          if (v128)
          {
            (*(v157 + 8))(v158, v147);
          }

          else if (sub_1ABA7E1E0(v159, 1, v291) == 1)
          {
            (*(v157 + 8))(v158, v147);
            sub_1ABAB480C(v159, &qword_1EB4D5F20, &qword_1ABF4F358);
          }

          else
          {
            v174 = v286;
            sub_1ABCF9424();
            v175 = v287;
            swift_beginAccess();
            v176 = v157;
            sub_1ABB4DE30();
            v177 = *(*(v175 + 16) + 16);
            sub_1ABB4E234(v177);
            v178 = *(v175 + 16);
            *(v178 + 16) = v177 + 1;
            v179 = v178 + ((*(v285 + 80) + 32) & ~*(v285 + 80));
            v180 = *(v285 + 72);
            sub_1ABD0AD58();
            *(v175 + 16) = v178;
            swift_endAccess();
            sub_1ABD0ADB0(v174, type metadata accessor for CustomGraphDateRelationship);
            (*(v176 + 8))(v158, v147);
          }

          return;
        }

        (*(v307 + 8))(v146, v308);
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v148 = sub_1ABF237F4();
        sub_1ABA7AA24(v148, qword_1ED871B40);
        v149 = *(v310 + 16);
        v150 = &v323 + 1;
        goto LABEL_49;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
LABEL_150:
        swift_once();
LABEL_134:
        v246 = sub_1ABF237F4();
        sub_1ABA7AA24(v246, qword_1ED871B40);
        v247 = *(v310 + 16);
        v247(v271, v326, v317);
        v107 = sub_1ABF237D4();
        v248 = sub_1ABF24664();
        if (!os_log_type_enabled(v107, v248))
        {

          (*(v310 + 8))(v271, v317);
          return;
        }

        v230 = swift_slowAlloc();
        v249 = swift_slowAlloc();
        *&v318 = v249;
        *v230 = 136642819;
        v250 = v271;
        v251 = v317;
        v247(v305, v271, v317);
        v252 = sub_1ABF23C94();
        v254 = v253;
        (*(v310 + 8))(v250, v251);
        v255 = sub_1ABADD6D8(v252, v254, &v318);

        *(v230 + 4) = v255;
        _os_log_impl(&dword_1ABA78000, v107, v248, "Failed to parse %{sensitive}s.", v230, 0xCu);
        sub_1ABA84B54(v249);
        v236 = v249;
LABEL_119:
        MEMORY[0x1AC5AB8B0](v236, -1, -1);
        v117 = v230;
        goto LABEL_16;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[216], *(_Records_GDEntityPredicate_records + 55), *(_Records_GDEntityPredicate_records + 56), &v318);
      if (v318 == v267[0] && *(&v318 + 1) == v95)
      {

LABEL_65:
        v162 = v314;

        v163 = v292;
        v12 = v326;
        (*(v162 + 32))(v88, v162);
        v164 = v293;
        (*(AssociatedConformanceWitness + 40))(v140, AssociatedConformanceWitness);
        v165 = v164;
        (*(v313 + 8))(v163, v140);
        v166 = v312;
        if (sub_1ABA7E1E0(v164, 1, v312) == 1)
        {
          (*(v307 + 8))(v164, v308);
          if (qword_1ED871B38 != -1)
          {
            swift_once();
          }

          v167 = sub_1ABF237F4();
          sub_1ABA7AA24(v167, qword_1ED871B40);
          v149 = *(v310 + 16);
          v150 = &v320;
LABEL_49:
          v106 = *(v150 - 32);
          v149(v106, v12, v88);
          v107 = sub_1ABF237D4();
          v151 = sub_1ABF24664();
          if (os_log_type_enabled(v107, v151))
          {
            v110 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            *&v318 = v152;
            *v110 = 136642819;
            v149(v305, v106, v88);
            v153 = sub_1ABF23C94();
            v155 = v154;
            (*(v310 + 8))(v106, v88);
            v156 = sub_1ABADD6D8(v153, v155, &v318);

            *(v110 + 4) = v156;
            _os_log_impl(&dword_1ABA78000, v107, v151, "Failed to parse %{sensitive}s.", v110, 0xCu);
            sub_1ABA84B54(v152);
            v116 = v152;
            goto LABEL_15;
          }

LABEL_51:

          (*(v310 + 8))(v106, v88);
          return;
        }

        v168 = v309;
        v169 = v290;
        (*(v309 + 32))(v290, v165, v166);
        v170 = v288;
        (*(v168 + 16))(v288, v169, v166);
        v171 = type metadata accessor for CustomGraphEvent(0);
        v172 = sub_1ABD09EBC(&unk_1EB4D7EA0);
        v173 = swift_getAssociatedConformanceWitness();
        CustomGraphEventRelationship.init<A>(from:initializationResources:)(&v318, v170, v171, v166, v172, v173);
        if (v128)
        {
          (*(v168 + 8))(v169, v166);
          return;
        }

        v183 = v319;
        if (!v319)
        {
          v191 = *(v309 + 8);
          v193 = v169;
          v194 = v166;
          goto LABEL_99;
        }

        v184 = BYTE8(v320);
        v185 = v320;
        v186 = v318;
        v187 = v279;
        swift_beginAccess();
        sub_1ABB4DE78();
        v188 = *(*(v187 + 16) + 16);
        sub_1ABB4E27C(v188);
        v189 = *(v187 + 16);
        *(v189 + 16) = v188 + 1;
        v190 = v189 + 40 * v188;
        *(v190 + 32) = v186;
        *(v190 + 48) = v183;
        *(v190 + 56) = v185;
        *(v190 + 64) = v184 & 1;
        *(v187 + 16) = v189;
        swift_endAccess();
        v191 = *(v309 + 8);
        v192 = &v320 + 1;
LABEL_81:
        v193 = *(v192 - 32);
        v194 = v312;
LABEL_99:
        v191(v193, v194);
        return;
      }

      v161 = sub_1ABF25054();

      if (v161)
      {
        goto LABEL_65;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
        goto LABEL_152;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v318);
      v12 = v320;
      if (v318 == v267[0] && *(&v318 + 1) == v95)
      {

        goto LABEL_83;
      }

      v182 = sub_1ABF25054();

      if (v182)
      {
LABEL_83:
        v195 = v314;

        v196 = v283;
        v12 = v326;
        (*(v195 + 32))(v88, v195);
        v197 = v284;
        (*(AssociatedConformanceWitness + 40))(v140, AssociatedConformanceWitness);
        (*(v313 + 8))(v196, v140);
        v198 = v312;
        if (sub_1ABA7E1E0(v197, 1, v312) != 1)
        {
          v200 = v309;
          v201 = v281;
          (*(v309 + 32))(v281, v197, v198);
          v202 = v280;
          (*(v200 + 16))(v280, v201, v198);
          v203 = sub_1ABD19740();
          v204 = swift_getAssociatedConformanceWitness();
          CustomGraphLocationRelationship.init<A>(from:initializationResources:)(&v318, v202, &type metadata for CustomGraphLocation, v198, v203, v204);
          if (!v128)
          {
            v205 = v319;
            if (v319)
            {
              v206 = v276;
              swift_beginAccess();
              sub_1ABB4DD28();
              v207 = *(*(v206 + 16) + 16);
              sub_1ABB4E12C(v207);
              v200 = v309;
              v208 = *(v206 + 16);
              *(v208 + 16) = v207 + 1;
              v209 = v208 + (v207 << 6);
              *(v209 + 32) = v318;
              *(v209 + 48) = v205;
              *(v209 + 56) = v320;
              *(v209 + 72) = v321;
              *(v209 + 88) = v322;
              *(v206 + 16) = v208;
              swift_endAccess();
            }
          }

          (*(v200 + 8))(v201, v198);
          return;
        }

        (*(v307 + 8))(v197, v308);
        if (qword_1ED871B38 == -1)
        {
          goto LABEL_85;
        }

        goto LABEL_142;
      }

      if (v301 >= 0xA1)
      {
        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), &v318);
          v125 = v320;
          if (v318 == v267[0] && *(&v318 + 1) == v95)
          {

            goto LABEL_101;
          }

          v211 = sub_1ABF25054();

          if (v211)
          {
LABEL_101:
            v212 = v314;

            v213 = v278;
            v12 = v326;
            (*(v212 + 32))(v88, v212);
            v214 = swift_getAssociatedConformanceWitness();
            (*(v214 + 32))(&v318, v140, v214);
            (*(v313 + 8))(v213, v140);
            if ((BYTE8(v318) & 1) == 0)
            {
              sub_1ABC4A630(&v324, v318);
              if (!v128)
              {
                v216 = v324;
                v217 = v274;
                swift_beginAccess();
                sub_1ABB4DD40();
                v218 = *(*(v217 + 16) + 16);
                sub_1ABB4E144(v218);
                v219 = *(v217 + 16);
                *(v219 + 16) = v218 + 1;
                *(v219 + 8 * v218 + 32) = v216;
                *(v217 + 16) = v219;
              }

              return;
            }

            if (qword_1ED871B38 == -1)
            {
              goto LABEL_103;
            }

            goto LABEL_145;
          }

          if (v301 != 161)
          {
            if (_Records_GDEntityPredicate_records)
            {
              sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), &v318);
              if (v318 == v267[0] && *(&v318 + 1) == v95)
              {

                goto LABEL_115;
              }

              v221 = sub_1ABF25054();

              if (v221)
              {
LABEL_115:
                v222 = v314;

                v223 = v275;
                v125 = v326;
                (*(v222 + 32))(v88, v222);
                v224 = swift_getAssociatedConformanceWitness();
                (*(v224 + 32))(&v318, v140, v224);
                (*(v313 + 8))(v223, v140);
                if ((BYTE8(v318) & 1) == 0)
                {
                  v237 = v316;
                  sub_1ABC4A630(&v324, v318);
                  if (!v237)
                  {
                    v238 = v324;
                    swift_beginAccess();
                    sub_1ABB4DD40();
                    v239 = *(*(a9 + 16) + 16);
                    sub_1ABB4E144(v239);
                    v240 = *(a9 + 16);
                    *(v240 + 16) = v239 + 1;
                    *(v240 + 8 * v239 + 32) = v238;
                    *(a9 + 16) = v240;
                  }

                  return;
                }

                if (qword_1ED871B38 == -1)
                {
                  goto LABEL_117;
                }

                goto LABEL_148;
              }

              if (_Records_GDEntityPredicate_records)
              {
                sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v318);
                if (v318 != v267[0] || *(&v318 + 1) != v95)
                {
                  v242 = sub_1ABF25054();

                  if ((v242 & 1) == 0)
                  {
                    return;
                  }

LABEL_132:
                  v243 = v269;
                  (*(v314 + 32))(v317);
                  v244 = v273;
                  v245 = v315;
                  (*(AssociatedConformanceWitness + 40))(v315);
                  (*(v313 + 8))(v243, v245);
                  if (sub_1ABA7E1E0(v244, 1, v312) != 1)
                  {
                    v256 = v309;
                    v257 = v270;
                    v258 = v312;
                    (*(v309 + 32))(v270, v273, v312);
                    v259 = v268;
                    (*(v256 + 16))(v268, v257, v258);
                    v260 = sub_1ABD1A064();
                    v261 = swift_getAssociatedConformanceWitness();
                    v262 = v316;
                    CustomGraphAttendeeRelationship.init<A>(from:initializationResources:)(&v318, v259, &type metadata for CustomGraphSportsTeam, v258, v260, v261);
                    if (!v262)
                    {
                      v263 = v319;
                      if (v319)
                      {
                        swift_beginAccess();
                        sub_1ABB4DF08();
                        v264 = *(*(a10 + 16) + 16);
                        sub_1ABB4E30C(v264);
                        v265 = *(a10 + 16);
                        *(v265 + 16) = v264 + 1;
                        v266 = v265 + (v264 << 6);
                        *(v266 + 32) = v318;
                        *(v266 + 48) = v263;
                        *(v266 + 56) = v320;
                        *(v266 + 72) = v321;
                        *(v266 + 88) = v322;
                        *(a10 + 16) = v265;
                        swift_endAccess();
                      }
                    }

                    v191 = *(v309 + 8);
                    v192 = &v302;
                    goto LABEL_81;
                  }

                  (*(v307 + 8))(v273, v308);
                  if (qword_1ED871B38 == -1)
                  {
                    goto LABEL_134;
                  }

                  goto LABEL_150;
                }

LABEL_131:

                goto LABEL_132;
              }

LABEL_154:
              __break(1u);
              return;
            }

LABEL_153:
            __break(1u);
            goto LABEL_154;
          }

          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          swift_once();
LABEL_117:
          v225 = sub_1ABF237F4();
          sub_1ABA7AA24(v225, qword_1ED871B40);
          v226 = v310;
          v227 = *(v310 + 16);
          v228 = v272;
          v227(v272, v125, v88);
          v107 = sub_1ABF237D4();
          v229 = sub_1ABF24664();
          if (!os_log_type_enabled(v107, v229))
          {

            (*(v226 + 8))(v228, v88);
            return;
          }

          v230 = swift_slowAlloc();
          v326 = swift_slowAlloc();
          *&v318 = v326;
          *v230 = 136642819;
          v227(v305, v228, v88);
          v231 = sub_1ABF23C94();
          v233 = v232;
          (*(v226 + 8))(v228, v88);
          v234 = sub_1ABADD6D8(v231, v233, &v318);

          *(v230 + 4) = v234;
          _os_log_impl(&dword_1ABA78000, v107, v229, "Failed to parse %{sensitive}s.", v230, 0xCu);
          v235 = v326;
          sub_1ABA84B54(v326);
          v236 = v235;
          goto LABEL_119;
        }

LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      __break(1u);
    }

    __break(1u);
LABEL_145:
    swift_once();
LABEL_103:
    v215 = sub_1ABF237F4();
    sub_1ABA7AA24(v215, qword_1ED871B40);
    v149 = *(v310 + 16);
    v150 = &v309;
    goto LABEL_49;
  }

LABEL_9:

  v100 = v326;
  (*(v314 + 32))(v317);
  v101 = v315;
  (*(AssociatedConformanceWitness + 40))(v315, AssociatedConformanceWitness);
  (*(v313 + 8))(v68, v101);
  v102 = v312;
  if (sub_1ABA7E1E0(v50, 1, v312) == 1)
  {
    (*(v307 + 8))(v50, v308);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v103 = sub_1ABF237F4();
    sub_1ABA7AA24(v103, qword_1ED871B40);
    v104 = v310;
    v105 = *(v310 + 16);
    v106 = v306;
    v88 = v317;
    v105(v306, v100, v317);
    v107 = sub_1ABF237D4();
    v108 = sub_1ABF24664();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
LABEL_14:
      v110 = v109;
      v326 = swift_slowAlloc();
      *&v318 = v326;
      *v110 = 136642819;
      v105(v305, v106, v88);
      v111 = sub_1ABF23C94();
      v113 = v112;
      (*(v104 + 8))(v106, v88);
      v114 = sub_1ABADD6D8(v111, v113, &v318);

      *(v110 + 4) = v114;
      _os_log_impl(&dword_1ABA78000, v107, v108, "Failed to parse %{sensitive}s.", v110, 0xCu);
      v115 = v326;
      sub_1ABA84B54(v326);
      v116 = v115;
LABEL_15:
      MEMORY[0x1AC5AB8B0](v116, -1, -1);
      v117 = v110;
LABEL_16:
      MEMORY[0x1AC5AB8B0](v117, -1, -1);

      return;
    }

    (*(v104 + 8))(v106, v88);
  }

  else
  {
    v118 = v309;
    (*(v309 + 32))(v92, v50, v102);
    (*(v118 + 16))(v88, v92, v102);
    swift_getAssociatedConformanceWitness();
    v119 = v316;
    CustomGraphIdentifierRelationship.init<A>(from:initializationResources:)();
    if (!v119)
    {
      v120 = v319;
      if (v319)
      {
        v121 = v303;
        swift_beginAccess();
        sub_1ABB4DCE0();
        v122 = *(*(v121 + 16) + 16);
        sub_1ABB4E0E4(v122);
        v118 = v309;
        v123 = *(v121 + 16);
        *(v123 + 16) = v122 + 1;
        v124 = v123 + 88 * v122;
        *(v124 + 32) = v318;
        *(v124 + 48) = v120;
        *(v124 + 56) = v320;
        *(v124 + 72) = v321;
        *(v124 + 88) = v322;
        *(v124 + 104) = v323;
        *(v121 + 16) = v123;
        swift_endAccess();
      }
    }

    (*(v118 + 8))(v92, v102);
  }
}

void CustomGraphSportsGameEvent.init(typedId:all_eventTypes:all_name:all_date:all_cooccurringEvents:all_locations:all_startLocation:all_endLocation:all_teams:)()
{
  sub_1ABA7E2A8();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1ABD1B80C();
  v13 = v12;
  v15 = v14;
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v16);
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA9F7AC();
  *v15 = *v13;
  v15[1] = v2;
  v20 = sub_1ABB2B834(v1);
  v15[2] = v1;
  v15[3] = v20;
  v15[4] = v21;
  v22 = sub_1ABA8B2DC();
  v23 = type metadata accessor for CustomGraphSportsGameEvent(v22);
  sub_1ABC8B318(v0, v3, (v15 + v23[7]));
  *(v15 + v23[8]) = v11;
  *(v15 + v23[9]) = v9;
  if (*(v7 + 16))
  {
    v24 = *(v7 + 32);
  }

  sub_1ABA897F0();
  v26 = v15 + v23[10];
  *v26 = v7;
  *(v26 + 1) = v27;
  v26[16] = v28;
  v29 = *(v5 + 16);
  if (v29)
  {
    v30 = *(v5 + 32);
  }

  else
  {
    v30 = 0;
  }

  v31 = v15 + v23[11];
  *v31 = v5;
  *(v31 + 1) = v30;
  v31[16] = v29 == 0;
  *(v15 + v23[12]) = v25;
  sub_1ABA7BC1C();
}

uint64_t sub_1ABC98E80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x707954746E657665 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125924 && a2 == 0xE400000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001ABF8D5C0 == a2;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x636F4C7472617473 && a2 == 0xED00006E6F697461;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x736D616574 && a2 == 0xE500000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1ABF25054();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABC99168(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 0x707954746E657665;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0x636F4C7472617473;
      break;
    case 7:
      result = 0x7461636F4C646E65;
      break;
    case 8:
      result = 0x736D616574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC99278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC98E80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC992A0(uint64_t a1)
{
  v2 = sub_1ABD0AE08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC992DC(uint64_t a1)
{
  v2 = sub_1ABD0AE08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphSportsGameEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v2 = sub_1ABAD219C(&qword_1EB4D6780, &dword_1ABF50BE0);
  sub_1ABA96D00(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0AE08();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v6 = sub_1ABA8C744();
  sub_1ABAD219C(v6, v7);
  sub_1ABA7D99C();
  sub_1ABD1044C(v8);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    v14 = v1[1];
    sub_1ABA8B6EC();
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABD09D60();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    v9 = v1[2];
    v15 = v1[3];
    v16 = v1[4];
    sub_1ABD1B178();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    if (v9)
    {
      sub_1ABAA1210();
    }

    else
    {
      sub_1ABAA1210();

      v10 = type metadata accessor for CustomGraphSportsGameEvent(0);
      sub_1ABAA4C54(v10);
      sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
      sub_1ABA80C14();
      sub_1ABD0A358(v11);
      sub_1ABA82E78();
      sub_1ABAA6564();
      sub_1ABAA17C0();
      sub_1ABAD219C(&qword_1EB4D65F8, &dword_1ABF50B60);
      sub_1ABD09FB0();
      sub_1ABAA2D10();
      sub_1ABAA6564();
      sub_1ABD1AF88(0);
      sub_1ABD1AFDC();
      sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
      sub_1ABD0A060();
      sub_1ABAA2D10();
      sub_1ABAA6564();
      sub_1ABAA2300(252556);
      sub_1ABD1AFD0();

      sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
      sub_1ABD0A110();
      sub_1ABAA1328();
      sub_1ABD1AFA0();

      sub_1ABAA2300(12);
      sub_1ABD1AFC4();

      sub_1ABD1ABF4();
      sub_1ABD1AF60();
      sub_1ABD1AFA0();

      sub_1ABD1AF88(252562);
      sub_1ABD1AFB8();
      sub_1ABAD219C(&qword_1EB4D67A0, &unk_1ABF50BF0);
      sub_1ABD0AE5C();
      sub_1ABAA2D10();
      sub_1ABAA6564();
    }
  }

  v12 = sub_1ABA89DE4();
  v13(v12);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphSportsGameEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA8D4BC();
  v3 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA7BBB0(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA8176C();
  v34 = sub_1ABAD219C(&qword_1EB4D67B8, &qword_1ABF50C00);
  sub_1ABA7BB64(v34);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA9F7AC();
  v10 = type metadata accessor for CustomGraphSportsGameEvent(0);
  v11 = sub_1ABAB6924(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7C21C();
  v15 = v14;
  v16 = v0[3];
  v17 = v0[4];
  v18 = sub_1ABA7ABE4();
  sub_1ABA88DCC(v18, v19);
  sub_1ABD0AE08();
  sub_1ABA88E70();
  sub_1ABF252C4();
  if (!v1)
  {
    v20 = sub_1ABA7ABE4();
    sub_1ABAD219C(v20, v21);
    sub_1ABAAFAF4();
    sub_1ABA8F54C();
    sub_1ABD1044C(v22);
    sub_1ABD1AC44();
    sub_1ABD1BBF8();
    *v15 = v36;
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABA8B6EC();
    sub_1ABD0A1FC();
    sub_1ABA8B4F0();
    sub_1ABD1C1C4();
    sub_1ABAAFAD4();
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD1B178();
    sub_1ABD0A2D4();
    sub_1ABA8B4F0();
    sub_1ABD1B4DC();
    sub_1ABD1B11C();
    sub_1ABA7F460();
    sub_1ABD0A358(v26);
    sub_1ABD1B110();
    sub_1ABF24E64();
    v27 = v35[7];
    sub_1ABA94EB8();
    sub_1ABAD219C(&qword_1EB4D65F8, &dword_1ABF50B60);
    sub_1ABA8B908();
    sub_1ABD0A4B8();
    sub_1ABAA1F98();
    sub_1ABF24E64();
    sub_1ABA897A8();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD1AFDC();
    sub_1ABD0A568();
    sub_1ABA8B4F0();
    sub_1ABD1B4BC();
    sub_1ABD1B7DC();
    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD1AFD0();
    sub_1ABD0A618();
    sub_1ABA96FDC();
    sub_1ABD1B030();
    sub_1ABF24E64();
    sub_1ABAA314C();
    sub_1ABAB65FC(7);
    sub_1ABD1B030();
    sub_1ABF24E64();
    sub_1ABD1AF54();
    v28 = v35[11];
    sub_1ABA8A644(v29);
    sub_1ABAD219C(&qword_1EB4D67A0, &unk_1ABF50BF0);
    sub_1ABD1AFB8();
    sub_1ABD0AF0C();
    sub_1ABA8B4F0();
    sub_1ABD1B4DC();
    v30 = sub_1ABAB3C1C();
    v31(v30);
    *(v15 + v35[12]) = v36;
    sub_1ABD0AD58();
    sub_1ABA84B54(v0);
    v32 = sub_1ABA7D000();
    sub_1ABD0ADB0(v32, v33);
    goto LABEL_12;
  }

  sub_1ABAA0EF8();
  sub_1ABA84B54(v0);
  if (v3)
  {
    sub_1ABAB480C(v15 + v35[7], &qword_1EB4D5F30, &unk_1ABF50B00);
    if ((v2 & 1) == 0)
    {
LABEL_10:
      if (v17)
      {
LABEL_11:
        v25 = *(v15 + v35[9]);

        if ((v16 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v2)
  {
    goto LABEL_10;
  }

  v23 = *(v15 + v35[8]);

  if (v17)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v16)
  {
LABEL_7:
    v24 = *(v15 + v35[10]);
  }

LABEL_12:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphTransportationActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x690), *(_Records_GDEntityClass_records + 0x698), *(_Records_GDEntityClass_records + 0x6A0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABC99D54@<X0>(void (*a1)(uint64_t *__return_ptr, void (*)(uint64_t a1), void, double (*)(), void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v121 = a1;
  v127 = a3;
  v119 = a4;
  v120 = a2;
  v4 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v129 = &v105 - v6;
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v9 = v7;
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  v115 = (v7 + 16);
  v10 = swift_allocObject();
  v126 = v10;
  *(v10 + 16) = v8;
  v116 = (v10 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v109 = (v11 + 16);
  v12 = swift_allocObject();
  v125 = v12;
  *(v12 + 16) = v8;
  v110 = (v12 + 16);
  v13 = swift_allocObject();
  v128 = v13;
  *(v13 + 16) = v8;
  v111 = v13 + 16;
  v14 = swift_allocObject();
  v137 = v14;
  *(v14 + 16) = v8;
  v112 = v14 + 16;
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  v117 = (v15 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = v8;
  v113 = v16 + 16;
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  v114 = v17 + 16;
  v18 = swift_allocObject();
  v18[2] = v8;
  v118 = v18 + 2;
  v19 = swift_allocObject();
  v21 = v126;
  v20 = v127;
  v19[2] = v9;
  v19[3] = v20;
  v19[4] = v21;
  v19[5] = v11;
  v22 = v128;
  v19[6] = v125;
  v19[7] = v22;
  v19[8] = v137;
  v19[9] = v15;
  v19[10] = v16;
  v19[11] = v17;
  v19[12] = v18;
  v124 = v9;

  v123 = v11;

  v23 = v122;
  v121(&v135, sub_1ABC9AFB8, 0, sub_1ABD1A004, v19);
  if (v23)
  {

LABEL_29:
  }

  v107 = v15;
  v108 = v16;
  v120 = v17;
  v121 = v18;

  v106 = v135;
  v24 = v117;
  swift_beginAccess();
  v25 = *v24;
  v26 = *(v25 + 16);
  v122 = 0;
  if (v26)
  {

    v27 = MEMORY[0x1E69E7CC0];
    v28 = 32;
    do
    {
      EntityClass.init(intValue:)(*(v25 + v28 + 7), &v135);
      if (v136)
      {
        ActivityEventType.init(activityTypeEntityClass:)(&v135, v134);
        v29 = v134[0];
        if (v134[0] != 25)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = *(v27 + 16);
            sub_1ABADADEC();
            v27 = v32;
          }

          v30 = *(v27 + 16);
          if (v30 >= *(v27 + 24) >> 1)
          {
            sub_1ABADADEC();
            v27 = v33;
          }

          *(v27 + 16) = v30 + 1;
          *(v27 + v30 + 32) = v29;
        }
      }

      v28 += 8;
      --v26;
    }

    while (v26);

    v34 = v122;
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
    v34 = 0;
  }

  v35 = v118;
  swift_beginAccess();
  v43 = *v35;
  v44 = *(*v35 + 16);
  v45 = v129;
  if (v44)
  {
    v46 = *v35;

    v47 = MEMORY[0x1E69E7CC0];
    v48 = 32;
    do
    {
      EntityClass.init(intValue:)(*(v43 + v48 + 7), &v135);
      if (v136)
      {
        TransportationActivityEventType.init(modeOfTransportationEntityClass:)(&v135, v133);
        v49 = v133[0];
        if (v133[0] != 8)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = *(v47 + 16);
            sub_1ABADB354();
            v47 = v52;
          }

          v50 = *(v47 + 16);
          if (v50 >= *(v47 + 24) >> 1)
          {
            sub_1ABADB354();
            v47 = v53;
          }

          *(v47 + 16) = v50 + 1;
          *(v47 + v50 + 32) = v49;
          v45 = v129;
        }
      }

      v48 += 8;
      --v44;
    }

    while (v44);

    v34 = v122;
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABC4AA3C(v106, v36, v37, v38, v39, v40, v41, v42, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
  v54 = v119;
  v56 = v115;
  v55 = v116;
  if (v34)
  {

    goto LABEL_29;
  }

  v122 = 0;
  *v119 = v135;
  swift_beginAccess();
  v58 = *v56;
  v59 = sub_1ABB2B834(*v56);
  v54[1] = v58;
  v54[2] = v59;
  v54[3] = v60;
  swift_beginAccess();
  v61 = *v55;
  v62 = type metadata accessor for CustomGraphDateRelationship(0);
  sub_1ABA7B9B4(v45, 1, 1, v62);
  v63 = type metadata accessor for CustomGraphTransportationActivityEvent(0);
  v64 = v63[6];

  sub_1ABC8B318(v65, v45, (v54 + v64));
  v66 = v109;
  swift_beginAccess();
  v67 = v63[7];
  v129 = *v66;
  *(v54 + v67) = v129;
  v68 = v110;
  swift_beginAccess();
  v69 = v63;
  v70 = v63[8];
  v116 = *v68;
  *(v54 + v70) = v116;
  v71 = v111;
  swift_beginAccess();
  v72 = *v71;
  v73 = *(*v71 + 16);
  if (v73)
  {
    v74 = *(v72 + 32);
  }

  else
  {
    v74 = 0;
  }

  v75 = v114;
  v76 = v112;
  v77 = v54 + v63[9];
  v115 = v72;
  *v77 = v72;
  *(v77 + 1) = v74;
  v77[16] = v73 == 0;
  swift_beginAccess();
  v78 = *v76;
  v79 = *(*v76 + 16);
  if (v79)
  {
    v80 = *(v78 + 32);
  }

  else
  {
    v80 = 0;
  }

  v81 = v113;
  v82 = v54 + v69[10];
  *v82 = v78;
  *(v82 + 1) = v80;
  v82[16] = v79 == 0;
  v83 = *v117;
  v84 = *(*v117 + 16);
  if (v84)
  {
    v85 = *(v83 + 32);
  }

  else
  {
    v85 = 0;
  }

  v86 = v54 + v69[11];
  *v86 = v83;
  *(v86 + 1) = v85;
  v86[16] = v84 == 0;
  if (*(v27 + 16))
  {
    v87 = *(v27 + 32);
  }

  else
  {
    v87 = 25;
  }

  v88 = v54 + v69[12];
  *v88 = v27;
  v88[8] = v87;
  v89 = v81;
  swift_beginAccess();
  v90 = *v89;
  v91 = *(v90 + 16);
  if (v91)
  {
    v92 = *(v90 + 32);
  }

  else
  {
    v92 = 0;
  }

  v93 = v54 + v69[13];
  *v93 = v90;
  *(v93 + 1) = v92;
  v93[16] = v91 == 0;
  swift_beginAccess();
  v94 = *v75;
  v95 = *(*v75 + 16);
  if (v95)
  {
    v96 = *(v94 + 32);
  }

  else
  {
    v96 = 0;
  }

  v97 = v118;
  v98 = v54 + v69[14];
  *v98 = v94;
  *(v98 + 1) = v96;
  v98[16] = v95 == 0;
  v99 = *v97;
  v100 = *(*v97 + 16);
  if (v100)
  {
    v101 = *(v99 + 32);
  }

  else
  {
    v101 = 0;
  }

  v102 = v54 + v69[15];
  *v102 = v99;
  *(v102 + 1) = v101;
  v102[16] = v100 == 0;
  if (*(v47 + 16))
  {
    v103 = *(v47 + 32);
  }

  else
  {
    v103 = 8;
  }

  v104 = v119 + v69[16];
  *v104 = v47;
  v104[8] = v103;
}