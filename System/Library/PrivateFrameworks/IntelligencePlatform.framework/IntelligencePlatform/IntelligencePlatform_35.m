uint64_t CustomGraphPerson.name.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[7];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  a1[7] = v9;
}

uint64_t GDGraphPerson.suggestedNameComponentsInner.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1ABF21BC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  sub_1ABF21BB4();
  sub_1ABF21BB4();
  v12 = [v1 prefixes];
  v13 = sub_1ABF240D4();

  if (*(v13 + 16))
  {
    sub_1ABA7C344();
  }

  else
  {
    sub_1ABA80C60();
  }

  sub_1ABA7D9C4();
  sub_1ABF21B74();
  v14 = [v2 givenNames];
  v15 = sub_1ABF240D4();

  if (*(v15 + 16))
  {
    sub_1ABA7C344();
  }

  else
  {
    sub_1ABA80C60();
  }

  sub_1ABA7D9C4();
  sub_1ABF21B44();
  v16 = [v2 middleNames];
  v17 = sub_1ABF240D4();

  if (*(v17 + 16))
  {
    sub_1ABA7C344();
  }

  else
  {
    sub_1ABA80C60();
  }

  sub_1ABA7D9C4();
  sub_1ABF21B64();
  v18 = [v2 familyNames];
  v19 = sub_1ABF240D4();

  if (*(v19 + 16))
  {
    sub_1ABA7C344();
  }

  else
  {
    sub_1ABA80C60();
  }

  sub_1ABA7D9C4();
  sub_1ABF21B54();
  v20 = [v2 suffixes];
  v21 = sub_1ABF240D4();

  if (v21[2])
  {
    v22 = v21[4];
    v23 = v21[5];
  }

  sub_1ABF21B84();
  sub_1ABD1D00C();
  v24 = sub_1ABF23BB4();
  v25 = *(v5 + 8);
  v25(v11, v4);
  if (v24)
  {
    v25(v8, v4);
    v26 = 1;
  }

  else
  {
    (*(v5 + 32))(a1, v8, v4);
    v26 = 0;
  }

  return sub_1ABA7B9B4(a1, v26, 1, v4);
}

uint64_t GDGraphPerson.suggestedNameStringInner.getter()
{
  v1 = [v0 fullNames];
  v2 = sub_1ABF240D4();

  if (!v2[2])
  {

    v5 = [v0 visualIdentifiers];
    sub_1ABAFF390(0, &qword_1EB4D6118, off_1E79601E0);
    v6 = sub_1ABF240D4();

    if (sub_1ABAAB7C8(v6))
    {
      sub_1ABAAB7C0(0, (v6 & 0xC000000000000001) == 0, v6);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1AC5AA170](0, v6);
      }

      else
      {
        v7 = *(v6 + 32);
      }

      v8 = v7;

      v9 = [v8 suggestedName];
      if (v9)
      {
        v10 = v9;
        v3 = sub_1ABF23C04();

        return v3;
      }
    }

    else
    {
    }

    return 0;
  }

  v3 = v2[4];
  v4 = v2[5];

  return v3;
}

id sub_1ABD1CA0C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1ABF23BD4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void GDGraphPerson.suggestedContactIdentifierInner.getter()
{
  v1 = [v0 identifiers];
  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v2 = sub_1ABF240D4();

  v3 = sub_1ABAAB7C8(v2);
  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC5AA170](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    v7 = sub_1ABBAE7C4(v5, &selRef_type);
    if (v8)
    {
      if (v7 == 0x6361746E6F434E43 && v8 == 0xE900000000000074)
      {
      }

      else
      {
        v10 = sub_1ABF25054();

        if ((v10 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v11 = sub_1ABBAE7C4(v6, &selRef_hasProfileImage);
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0xE000000000000000;
      }

      if (v11 == 1702195828 && v13 == 0xE400000000000000)
      {

        goto LABEL_28;
      }

      v15 = sub_1ABF25054();

      if (v15)
      {
        goto LABEL_28;
      }
    }

LABEL_23:
  }

  v16 = sub_1ABB2BA64(v2, sub_1ABD1CCF8);
  if (!v16)
  {

    return;
  }

  v6 = v16;
LABEL_28:
  v17 = v6;
  v18 = [v17 id];

  if (v18)
  {
    sub_1ABF23C04();
  }
}

uint64_t sub_1ABD1CCF8(void **a1)
{
  v1 = sub_1ABBAE7C4(*a1, &selRef_type);
  if (v2)
  {
    if (v1 == 0x6361746E6F434E43 && v2 == 0xE900000000000074)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1ABF25054();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t GDGraphPerson.autonamingSuggestionReasonInner.getter()
{
  v1 = [v0 visualIdentifiers];
  sub_1ABAFF390(0, &qword_1EB4D6118, off_1E79601E0);
  v2 = sub_1ABF240D4();

  if (!sub_1ABAAB7C8(v2))
  {

    return 0;
  }

  sub_1ABAAB7C0(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1AC5AA170](0, v2);
  }

  else
  {
    v3 = *(v2 + 32);
  }

  v4 = v3;

  v5 = sub_1ABD1D064(v4);
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = v6;
  sub_1ABA7F0D0();
  v11 = v10 == 0xD00000000000001DLL && v9 == v8;
  if (v11 || (sub_1ABA8A940() & 1) != 0 || ((sub_1ABA7F0D0(), v7 == 0xD00000000000001BLL) ? (v13 = v12 == v8) : (v13 = 0), v13 || (sub_1ABA8A940() & 1) != 0))
  {

    return 1;
  }

  else
  {
    sub_1ABA7F0D0();
    v16 = v7 == 0xD000000000000014 && v15 == v8;
    if (v16 || (sub_1ABA8A940() & 1) != 0)
    {

      return 2;
    }

    else
    {
      sub_1ABA7F0D0();
      v18 = v7 == 0xD00000000000001DLL && v17 == v8;
      if (v18 || (sub_1ABA8A940() & 1) != 0 || ((sub_1ABA7F0D0(), v7 == 0xD00000000000001CLL) ? (v20 = v19 == v8) : (v20 = 0), v20 || (sub_1ABA8A940() & 1) != 0))
      {

        return 3;
      }

      else
      {
        sub_1ABA7F0D0();
        v22 = v7 == 0xD00000000000001DLL && v21 == v8;
        if (v22 || (sub_1ABA8A940() & 1) != 0)
        {

          return 5;
        }

        else
        {
          sub_1ABA7F0D0();
          if (v7 == 0xD00000000000001CLL && v23 == v8)
          {

            return 4;
          }

          else
          {
            v25 = sub_1ABA8A940();

            if (v25)
            {
              return 4;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABD1D00C()
{
  result = qword_1EB4D7EB0[0];
  if (!qword_1EB4D7EB0[0])
  {
    sub_1ABF21BC4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D7EB0);
  }

  return result;
}

uint64_t sub_1ABD1D064(void *a1)
{
  v2 = [a1 associationReason];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1ABF23C04();

  return v3;
}

uint64_t sub_1ABD1D0D4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD1D114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABD1D174()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1ABD1D1AC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_1ABD1D1F4(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1ABD1D230(a1);
}

uint64_t sub_1ABD1D314()
{
  v0 = *sub_1ABD1D2A4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t MultipartDatabaseReader.__allocating_init(in:initialState:)(uint64_t a1)
{
  v3 = sub_1ABF22214();
  if (!v1)
  {
    a1 = MultipartDatabaseReader.__allocating_init(in:initialState:)(v3);
  }

  return a1;
}

{
  v2 = swift_allocObject();
  MultipartDatabaseReader.init(in:initialState:)(a1);
  return v2;
}

void *MultipartDatabaseReader.init(in:initialState:)(uint64_t a1)
{
  v3 = v1;
  v4 = (*(*(*(*v1 + 80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - v5;
  v1[3] = 0;
  v7 = v1 + 3;
  v1[2] = v8;

  sub_1ABF22744();

  if (!v2)
  {
    type metadata accessor for MultipartDatabaseReader.StateHolder();
    v9 = sub_1ABD1D1F4(v6);
    swift_beginAccess();
    v10 = *v7;
    *v7 = v9;
  }

  return v3;
}

uint64_t sub_1ABD1D5E4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = sub_1ABD1D174();
  if (v5)
  {
    v6 = v5;
    v7 = *(*v5 + 88);
    swift_beginAccess();
    a3(a1, v6 + v7);
    swift_endAccess();
  }

  else
  {
    result = sub_1ABF24CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABD1D6EC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  return sub_1ABD1D5E4(a1, *(v1 + 24), *(v1 + 32));
}

uint64_t MultipartDatabaseReader.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_1ABF22744();

  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return v1;
}

uint64_t sub_1ABD1D790(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  v3 = *(v2 + 80);
  type metadata accessor for MultipartDatabaseReader.StateHolder();
  v4 = sub_1ABF25024();
  result = swift_endAccess();
  if (v4)
  {
    return sub_1ABD1D1AC(0);
  }

  __break(1u);
  return result;
}

uint64_t MultipartDatabaseReader.__deallocating_deinit()
{
  MultipartDatabaseReader.deinit();

  return swift_deallocClassInstance();
}

uint64_t DatabaseSnapshotCursor.__allocating_init(in:batchSize:initialState:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1ABF22214();
  if (!v2)
  {
    a1 = DatabaseSnapshotCursor.__allocating_init(in:batchSize:initialState:)(v5, a2);
  }

  return a1;
}

{
  v4 = swift_allocObject();
  DatabaseSnapshotCursor.init(in:batchSize:initialState:)(a1, a2);
  return v4;
}

void *DatabaseSnapshotCursor.init(in:batchSize:initialState:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  type metadata accessor for MultipartDatabaseReader();
  v11 = *(v5 + 88);

  v8 = MultipartDatabaseReader.__allocating_init(in:initialState:)(v7);
  if (v3)
  {

    type metadata accessor for DatabaseSnapshotCursor();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v2[2] = v8;
    swift_getAssociatedTypeWitness();
    v9 = sub_1ABF24154();

    v2[3] = v9;
    v2[4] = a2;
  }

  return v2;
}

uint64_t sub_1ABD1DAE0@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  result = v4();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ABD1DB2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1ABF247E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  sub_1ABA8F568();
  v11 = sub_1ABF241F4();
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v19 = WitnessTable;
  MEMORY[0x1AC5A9C60](v11, WitnessTable, v13);
  swift_endAccess();
  if (sub_1ABA7E1E0(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v14 = *(v2 + 16);
    v15 = v21;
    result = sub_1ABD1D594();
    if (!v15)
    {
      sub_1ABA8F568();
      MEMORY[0x1AC5A9C60](v11, v19, v13);
      return swift_endAccess();
    }
  }

  else
  {
    v17 = v20;
    (*(*(AssociatedTypeWitness - 8) + 32))(v20, v10, AssociatedTypeWitness);
    return sub_1ABA7B9B4(v17, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

void sub_1ABD1DDA0(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *(*a3 + 88);
  v7 = *(*a3 + 80);
  v35 = v6;
  v34 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1ABF247E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v31 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v26 - v20;
  v32 = a3;
  v30 = a3[4];
  if (v30 < 0)
  {
    __break(1u);
  }

  else
  {
    v27 = v19;
    v28 = v17;
    v22 = 0;
    v33 = *a2;
    v29 = (v18 + 32);
    v23 = (v18 + 16);
    v24 = (v18 + 8);
    while (1)
    {
      sub_1ABF22D44();
      if (v3)
      {
        break;
      }

      if (sub_1ABA7E1E0(v12, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_9;
      }

      (*v29)(v21, v12, AssociatedTypeWitness);
      (*v23)(v31, v21, AssociatedTypeWitness);
      swift_beginAccess();
      sub_1ABF241F4();
      sub_1ABF241A4();
      swift_endAccess();
      (*v24)(v21, AssociatedTypeWitness);
      if (v30 == v22)
      {
        goto LABEL_10;
      }

      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_9:
        (*(v27 + 8))(v12, v28);
LABEL_10:
        swift_beginAccess();
        sub_1ABF241F4();
        swift_getWitnessTable();
        swift_getWitnessTable();
        sub_1ABF23B94();
        swift_endAccess();
        return;
      }
    }
  }
}

uint64_t DatabaseSnapshotCursor.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t DatabaseSnapshotCursor.__deallocating_deinit()
{
  DatabaseSnapshotCursor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD1E16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  v4 = *(a3 + 88);
  type metadata accessor for DatabaseSnapshotCursor();
  return sub_1ABF22D54();
}

uint64_t sub_1ABD1E2A8(uint64_t a1)
{
  v1 = *(a1 + 80);
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

uint64_t QueryInterfaceRequest.toStatementArgumentString(db:)()
{
  v0 = sub_1ABF22854();
  v1 = sub_1ABA7BB64(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ABF225C4();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF228F4();
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1ABF24AB4();

  v21 = 0x203A6C71735BLL;
  v22 = 0xE600000000000000;
  v20 = sub_1ABF225B4();
  sub_1ABF22F14();
  sub_1ABD1E6F4(&qword_1EB4D8038, MEMORY[0x1E69A0118]);
  v16 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v16);

  MEMORY[0x1AC5A9410](0x6E656D7567726120, 0xEB000000003A7374);
  sub_1ABF225B4();
  sub_1ABF22F04();

  sub_1ABD1E6F4(&qword_1EB4D8040, MEMORY[0x1E699FF00]);
  v17 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v17);

  (*(v3 + 8))(v7, v0);
  MEMORY[0x1AC5A9410](93, 0xE100000000000000);
  v18 = v21;
  (*(v11 + 8))(v15, v8);
  return v18;
}

uint64_t sub_1ABD1E6F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ABD1E73C()
{
  memset(v2, 0, sizeof(v2));
  *(v0 + 16) = 29799;
  *(v0 + 24) = 0xE200000000000000;
  *(v0 + 32) = &unk_1F208E868;
  *(v0 + 40) = 115;
  *(v0 + 48) = 0xE100000000000000;
  *(v0 + 56) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xD00000000000003CLL;
  *(v0 + 72) = 0x80000001ABF8DA40;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v2);

  return v0;
}

uint64_t sub_1ABD1E7FC()
{
  memset(v2, 0, sizeof(v2));
  *(v0 + 16) = 6648935;
  *(v0 + 24) = 0xE300000000000000;
  *(v0 + 32) = &unk_1F208E8A8;
  *(v0 + 40) = 115;
  *(v0 + 48) = 0xE100000000000000;
  *(v0 + 56) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xD000000000000046;
  *(v0 + 72) = 0x80000001ABF8DAB0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v2);

  return v0;
}

uint64_t sub_1ABD1E8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, void *a6@<X8>)
{
  v7 = v6;
  Context = type metadata accessor for QueryContext();
  v13 = sub_1ABA7BBB0(Context);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v18 = (v17 - v16);
  v19 = *a4;
  v93 = a5[1];
  v94 = *a5;
  v91 = a5[3];
  v92 = a5[2];
  v89 = a5[4];
  v90 = a5[5];
  sub_1ABAD219C(&qword_1EB4D8068, &qword_1ABF58E20);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1ABF34740;
  *(v20 + 56) = &type metadata for NamedArgGenerator;
  *(v20 + 64) = &off_1F20863B0;
  v72 = v20;
  v75 = v19;
  swift_bridgeObjectRetain_n();

  v80 = a3;

  sub_1ABB2D0FC();
  v71 = v21;
  sub_1ABAD219C(&qword_1EB4D8070, &qword_1ABF58E28);
  v22 = MEMORY[0x1E69E7CC0];
  v73 = sub_1ABF239C4();
  type metadata accessor for QueryTree();
  memset(__dst, 0, 28);
  swift_allocObject();
  v23 = sub_1ABE73548(0, 0, 0, 0xE000000000000000, 0, __dst, 0, 0, 0, 0);
  sub_1ABB2C388(&unk_1F2091018);
  v25 = v24;
  if (qword_1ED86D438 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {

    sub_1ABD91F0C(v26, v25);
    v28 = v27;
    v29 = v18 + Context[7];
    sub_1ABF21EA4();
    v30 = 0;
    v18[1] = 0;
    v18[2] = 0;
    v31 = v18 + Context[8];
    *(v31 + 10) = 0;
    *(v31 + 3) = 0u;
    *(v31 + 4) = 0u;
    *(v31 + 1) = 0u;
    *(v31 + 2) = 0u;
    *v31 = 0u;
    *(v31 + 88) = xmmword_1ABF34940;
    v31[104] = 0;
    *(v18 + Context[10]) = v22;
    v32 = (v18 + Context[12]);
    *v32 = 0;
    v32[1] = v22;
    v32[2] = v22;
    v33 = Context[13];
    v34 = Context[14];
    *v18 = v23;
    v35 = v75;
    *(v18 + Context[9]) = v75;
    *(v18 + v33) = 0;
    v36 = v18 + Context[11];
    *v36 = 0;
    *(v36 + 1) = 0;
    v36[16] = 2;
    *(v36 + 3) = v28;
    *(v18 + v34) = 0;
    Context = a1;
    v37 = a1 + 64;
    v38 = 1 << *(a1 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(a1 + 64);
    v41 = (v38 + 63) >> 6;
    v25 = v80;
    v69 = v41;
    if (v40)
    {
      break;
    }

LABEL_6:
    while (1)
    {
      v42 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v42 >= v41)
      {

        sub_1ABA8C178();

        sub_1ABA8F588();
        sub_1ABD2162C(v18, v64);

        *a6 = a2;
        a6[1] = v25;
        a6[2] = v23;
        a6[3] = v35;
        a6[4] = v71;
        a6[5] = v35;
        a6[6] = v73;
        a6[7] = 25;
        a6[8] = v72;
        return result;
      }

      v40 = *(v37 + 8 * v42);
      ++v30;
      if (v40)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

LABEL_5:
  v42 = v30;
LABEL_9:
  v67 = v42;
  v68 = (v40 - 1) & v40;
  v43 = __clz(__rbit64(v40)) | (v42 << 6);
  v44 = (*(Context + 6) + 16 * v43);
  v77 = *v44;
  v45 = *(*(Context + 7) + 8 * v43);
  v79 = *(v45 + 16);
  v88 = v44[1];

  v46 = 0;
  v47 = 32;
  v95 = v22;
  v76 = a2;
  v87 = v18;
  for (i = v45; ; v45 = i)
  {
    if (v79 == v46)
    {

      swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v73;
      v23 = __dst;
      sub_1ABAFBB00();

      v73 = __dst[0];
      v30 = v67;
      v40 = v68;
      Context = a1;
      v35 = v75;
      v41 = v69;
      v37 = a1 + 64;
      if (!v68)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (v46 >= *(v45 + 16))
    {
      goto LABEL_23;
    }

    v85 = v47;
    v86 = v46;
    memcpy(__dst, (v45 + v47), 0x68uLL);
    v48 = __dst[2];
    v49 = __dst[3];
    v97[0] = v94;
    v97[1] = v93;
    v97[2] = v92;
    v97[3] = v91;
    v97[4] = v89;
    v97[5] = v90;
    sub_1ABD213F0(__dst, v96);
    v50 = sub_1ABE1CB7C(v48, v49);
    if (v7)
    {
      break;
    }

    v99 = v50;
    sub_1ABA90174(v18, &v99, 1, 1);
    v52 = __dst[5];
    v51 = __dst[6];
    v96[0] = v94;
    v96[1] = v93;
    v96[2] = v92;
    v96[3] = v91;
    v96[4] = v89;
    v96[5] = v90;
    v97[0] = sub_1ABE1CB7C(__dst[5], __dst[6]);
    sub_1ABA90174(v87, v97, 1, 0);
    v82 = v48;
    v53 = __dst[7];
    v54 = __dst[8];
    v55 = __dst[4];
    v56 = __dst[1];
    v81 = __dst[0];
    v57 = v99;
    v23 = v97[0];

    v83 = v55;

    v84 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = *(v95 + 16);
      sub_1ABA7BEF0();
      sub_1ABADA6CC();
      v95 = v62;
    }

    Context = v82;
    v59 = *(v95 + 16);
    v58 = *(v95 + 24);
    if (v59 >= v58 >> 1)
    {
      sub_1ABA7BBEC(v58);
      sub_1ABADA6CC();
      v95 = v63;
    }

    sub_1ABD2144C(__dst);

    *(v95 + 16) = v59 + 1;
    v60 = (v95 + 104 * v59);
    v60[4] = v81;
    v60[5] = v56;
    v60[6] = v82;
    v60[7] = v49;
    v60[8] = v83;
    v60[9] = v52;
    v60[10] = v51;
    v60[11] = v53;
    v7 = 0;
    v60[12] = v84;
    v60[13] = v57;
    a2 = v76;
    v60[14] = v23;
    v60[15] = v77;
    v47 = v85 + 104;
    v46 = v86 + 1;
    v18 = v87;
    v60[16] = v88;
    v25 = v80;
    v22 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABA8C178();

  sub_1ABD2144C(__dst);
  sub_1ABA8F588();
  sub_1ABD2162C(v18, v66);

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1ABD1F170(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= a8)
  {
    sub_1ABF24AB4();

    v55 = 0xD00000000000001BLL;
    v56 = 0x80000001ABF8DBE0;
    *&v53 = a8;
    v16 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v16);

    v17 = 0x6465686361657220;
    v18 = 0xE800000000000000;
LABEL_13:
    MEMORY[0x1AC5A9410](v17, v18);
    v32 = v55;
    v33 = v56;
    sub_1ABD1FC74();
    swift_allocError();
    *v34 = v32;
    *(v34 + 8) = v33;
    *(v34 + 16) = 2;
    return swift_willThrow();
  }

  v10 = v8;
  v59 = a6;
  if (a4)
  {
    v15 = *a2;
    switch(*(*a2 + 64))
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
        v19 = sub_1ABF25054();

        if (v19)
        {
          goto LABEL_7;
        }

        break;
      default:

LABEL_7:
        *(v15 + 64) = 5;
        break;
    }
  }

  v20 = *a2;
  v22 = *(*a2 + 16);
  v21 = *(*a2 + 24);

  v23 = v59;
  sub_1ABE1A204(v22, v21, v59, &v53);

  if (!v54)
  {
    sub_1ABAB480C(&v53, &qword_1EB4D3438, &qword_1ABF3C4C0);
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1ABF24AB4();

    v55 = 0x726F74617265706FLL;
    v56 = 0xE900000000000020;
    v31 = *(v20 + 16);
    v30 = *(v20 + 24);

    MEMORY[0x1AC5A9410](v31, v30);

    v17 = 0x6F6E2073656F6420;
    v18 = 0xEF74736978652074;
    goto LABEL_13;
  }

  v48 = a4;
  sub_1ABA946C0(&v53, &v55);
  v24 = a5;
  v25 = v23;
  v27 = v57;
  v26 = v58;
  sub_1ABA93E20(&v55, v57);
  (*(v26 + 24))(a1, v24, v25, a7, a2, v27, v26);
  if (!v10)
  {
    v28 = *a2;
    swift_beginAccess();
    v47 = v28;
    v49 = a7;
    if (*(v28 + 32))
    {
      v29 = *(v28 + 32);
    }

    else
    {
      type metadata accessor for KnosisQueryParam();
      v29 = sub_1ABF239C4();
    }

    v36 = v29;
    v38 = v29 + 64;
    v37 = *(v29 + 64);
    v39 = 1 << *(v38 - 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & v37;
    v42 = (v39 + 63) >> 6;

    v43 = 0;
    while (v41)
    {
LABEL_23:
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = *(*(v36 + 56) + ((v43 << 9) | (8 * v45)));
      result = swift_beginAccess();
      if (*(v46 + 24))
      {
        swift_beginAccess();

        sub_1ABD1F170(a1, v46 + 24, a3 + 1, v48 & 1, v24, v59, v49, a8);
        swift_endAccess();
      }
    }

    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        return result;
      }

      if (v44 >= v42)
      {
        break;
      }

      v41 = *(v38 + 8 * v44);
      ++v43;
      if (v41)
      {
        v43 = v44;
        goto LABEL_23;
      }
    }

    if (*(v47 + 40))
    {
      v52[0] = *(v47 + 40);

      sub_1ABD1F170(a1, v52, a3 + 1, v48 & 1, v24, v59, v49, a8);
    }
  }

  return sub_1ABA84B54(&v55);
}

uint64_t sub_1ABD1F6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = sub_1ABAD219C(&qword_1EB4D8048, &qword_1ABF58DF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v68 - v11;
  Context = type metadata accessor for QueryContext();
  v14 = sub_1ABA7BBB0(Context);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v19 = (v18 - v17);
  v20 = *(a1 + 64);
  if (v20)
  {
    v70 = v12;
    v71 = a3;
    v75 = v4;
    v21 = *a2;
    v78 = *(a2 + 8);
    v79 = v21;
    v81 = v5;
    v22 = *(a2 + 16);
    v23 = *(a2 + 24);
    v24 = v19;
    v80 = *(v5 + 24);
    v90 = *(a1 + 56);
    v25 = *(a1 + 72);
    v26 = *(a1 + 80);
    v77 = *(a1 + 104);
    v76 = Context[7];
    v74 = v20;
    sub_1ABAFEE18(v90, v20);

    v27 = v21;
    v28 = v78;
    sub_1ABB3F4DC(v27, v78, v22);

    sub_1ABF21EA4();
    v24[1] = 0;
    v24[2] = 0;
    v29 = v24 + Context[8];
    *(v29 + 10) = 0;
    *(v29 + 3) = 0u;
    *(v29 + 4) = 0u;
    *(v29 + 1) = 0u;
    *(v29 + 2) = 0u;
    *v29 = 0u;
    *(v29 + 88) = xmmword_1ABF34940;
    v29[104] = 0;
    v30 = MEMORY[0x1E69E7CC0];
    v69 = Context[10];
    *(v24 + v69) = MEMORY[0x1E69E7CC0];
    v31 = (v24 + Context[12]);
    *v31 = 0;
    v31[1] = v30;
    v31[2] = v30;
    v32 = Context[13];
    v33 = Context[14];
    *v24 = a1;
    *(v24 + Context[9]) = v80;
    *(v24 + v32) = v77;
    v34 = v24 + Context[11];
    *v34 = v79;
    *(v34 + 1) = v28;
    v73 = v22;
    v34[16] = v22;
    v72 = v23;
    *(v34 + 3) = v23;
    *(v24 + v33) = 0;
    sub_1ABA83994();
    v88 = v35;
    v89 = v36;
    sub_1ABA7E834();
    v37 = v74;
    v82 = v90;
    v83 = v74;
    v76 = v25;
    v84 = v25;
    v77 = v26;
    LODWORD(v85) = v26;

    v38 = sub_1ABD1FCC8(&v82);
    if (*(v38 + 16))
    {
      sub_1ABA83994();
      v39 = v80;
      v88 = v40;
      v89 = v80;
      sub_1ABA7E834();
      v41 = v90;
      v86[0] = v90;
      v86[1] = v37;
      v42 = v76;
      v86[2] = v76;
      v43 = v77;
      v87 = v77;
      v82 = v79;
      v83 = v78;
      LOBYTE(v84) = v73;
      v85 = v72;
      v44 = v75;
      v45 = sub_1ABD1FDF8(v86, v38, &v82);
      if (v44)
      {

        sub_1ABAFEE5C(v41, v37);
      }

      else
      {
        *(v24 + v69) = v45;
        sub_1ABA83994();
        v88 = v57;
        v89 = v39;
        sub_1ABA7E834();
        v82 = v41;
        v83 = v37;
        v84 = v42;
        LODWORD(v85) = v43;
        v58 = v70;
        sub_1ABD2008C(v24, &v82, v38, v70);

        v60 = v41;
        v61 = v37;
        v62 = type metadata accessor for IntentExecResult();
        if (sub_1ABA7E1E0(v58, 1, v62) == 1)
        {
          sub_1ABAB480C(v58, &qword_1EB4D8048, &qword_1ABF58DF8);
          v63 = v71;
          sub_1ABC46A54(v24, v71);
          type metadata accessor for ResultGraph();
          v64 = swift_allocObject();
          v65 = MEMORY[0x1E69E7CC0];
          *(v64 + 16) = sub_1ABF239C4();
          *(v64 + 24) = v65;
          *(v63 + v62[5]) = v64;
          v66 = (v63 + v62[6]);
          *v66 = v60;
          v66[1] = v61;
          sub_1ABA8EA24(v66);
          *(v67 + 48) = v65;
          *(v63 + v62[7]) = 1;
        }

        else
        {
          sub_1ABAFEE5C(v41, v61);
          sub_1ABD208EC(v58, v71);
        }
      }
    }

    else
    {

      v48 = v71;
      sub_1ABC46A54(v24, v71);
      type metadata accessor for ResultGraph();
      v49 = swift_allocObject();
      v50 = MEMORY[0x1E69E7CC0];
      v51 = v37;
      v52 = v49;
      *(v49 + 16) = sub_1ABF239C4();
      *(v52 + 24) = v50;
      v53 = type metadata accessor for IntentExecResult();
      *(v48 + *(v53 + 20)) = v52;
      v54 = (v48 + *(v53 + 24));
      *v54 = v90;
      v54[1] = v51;
      sub_1ABA8EA24(v54);
      *(v55 + 48) = v50;
      *(v48 + *(v56 + 28)) = 3;
    }

    sub_1ABA8F588();
    return sub_1ABD2162C(v24, v59);
  }

  else
  {
    sub_1ABD1FC74();
    sub_1ABA7BD00();
    *v46 = 0xD000000000000017;
    *(v46 + 8) = 0x80000001ABF8DB00;
    *(v46 + 16) = 1;
    return swift_willThrow();
  }
}

unint64_t sub_1ABD1FC74()
{
  result = qword_1EB4D8050;
  if (!qword_1EB4D8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8050);
  }

  return result;
}

uint64_t sub_1ABD1FCC8(uint64_t *a1)
{
  v2 = *(v1 + 48);
  if (*(v2 + 16) && (v3 = sub_1ABA94FC8(*a1, a1[1]), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v5 + 16);
  if (v6)
  {
    sub_1ABADA6CC();
    v8 = v7;
    v9 = v6 - 1;
    for (i = 32; ; i += 104)
    {
      memcpy(__dst, (v5 + i), sizeof(__dst));
      sub_1ABD213F0(__dst, &v15);
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1ABA7BBEC(v11);
        sub_1ABADA6CC();
        v8 = v13;
      }

      *(v8 + 16) = v12 + 1;
      memcpy((v8 + 104 * v12 + 32), __dst, 0x68uLL);
      if (!v9)
      {
        break;
      }

      --v9;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t *sub_1ABD1FDF8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v24 = *a1;
  v25 = a1[1];
  v26 = a1[2];
  v23 = *(a1 + 6);
  v28 = *(a3 + 8);
  v29 = *a3;
  v27 = *(a3 + 16);
  v4 = *(a3 + 24);
  v30 = v4;
  v31 = *(v3 + 32);
  v32 = *(v3 + 40);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 64);
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = v6[4];
      if (v8)
      {
        v9 = *(v6 - 3);
        v10 = *(v6 - 1);
        v11 = *v6;
        v33 = v7;
        v12 = v6[2];
        v13 = v6[3];
        v14 = v6[5];
        v15 = v6[6];
        v34 = v6[8];

        swift_bridgeObjectRetain_n();
        __src[11] = v9;

        v7 = v33;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = *(v33 + 16);
          sub_1ABA7BEF0();
          sub_1ABADB430();
          v7 = v19;
        }

        v17 = *(v7 + 16);
        v16 = *(v7 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1ABA7BBEC(v16);
          sub_1ABADB430();
          v7 = v20;
        }

        *(v7 + 16) = v17 + 1;
        *(v7 + 8 * v17 + 32) = v8;
      }

      v6 += 13;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  __src[0] = v24;
  __src[1] = v25;
  __src[2] = v26;
  LODWORD(__src[3]) = v23;
  __src[4] = v7;
  __src[5] = v29;
  __src[6] = v28;
  LOBYTE(__src[7]) = v27;
  __src[8] = v30;
  v36 = v31;
  v37 = v32;
  memcpy(__dst, __src, sizeof(__dst));

  sub_1ABB3F4DC(v29, v28, v27);

  v21 = sub_1ABB4F6D8(__dst);

  sub_1ABD21D08(__src);
  return v21;
}

uint64_t sub_1ABD2008C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v97 = a1;
  v89 = a4;
  Context = type metadata accessor for QueryContext();
  v6 = sub_1ABA7BBB0(Context);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7C068();
  v92 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v84 - v11;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *a2;
  v17 = *v4;
  v18 = *(v4 + 8);
  v19 = *(v4 + 16);
  v20 = *(v4 + 40);
  v114 = *(v4 + 24);
  v115 = v20;
  v22 = *(v4 + 56);
  v21 = *(v4 + 64);
  v102 = v17;
  v103 = v18;
  v104 = v19;
  v105 = *(v4 + 24);
  v106 = *(v4 + 40);
  v107 = v22;
  v108 = v21;
  v98 = v21;
  v109[0] = v16;
  v109[1] = v13;
  v87 = v14;
  v88 = v13;
  v109[2] = v14;
  v110 = v15;
  v23 = v100;
  result = sub_1ABD20950(v109);
  if (v23)
  {
    return result;
  }

  v95 = v17;
  v96 = v22;
  v93 = v19;
  v94 = v18;
  v25 = v98;
  v26 = *(v99 + 2);
  v27 = (v99 + 32);
  v85 = v16;
  v100 = result;
  v28 = v22;
  if (!v26)
  {
LABEL_10:

    v44 = type metadata accessor for IntentExecResult();
    v45 = v89;
    v46 = 1;
    return sub_1ABA7B9B4(v45, v46, 1, v44);
  }

  while (1)
  {
    v98 = v27;
    v99 = v26;
    memcpy(__dst, v27, sizeof(__dst));
    v112 = __dst[9];
    v30 = __dst[0];
    v29 = __dst[1];
    if (!__dst[9])
    {
      sub_1ABD213F0(__dst, &v102);

      v102 = 0;
      v103 = 0xE000000000000000;
      sub_1ABF24AB4();

      sub_1ABA908A8();
      v102 = v48 + 10;
      v103 = v47;

      MEMORY[0x1AC5A9410](v30, v29);

      sub_1ABD1FC74();
      v49 = sub_1ABA7BD00();
      sub_1ABA94AE8(v49, v50);
      return sub_1ABD2144C(__dst);
    }

    v90 = __dst[0];
    v91 = __dst[1];
    v31 = v12;
    sub_1ABD213F0(__dst, &v102);
    sub_1ABB3E5B4(&v112, &v102, &qword_1EB4D8058, &unk_1ABF58E00);
    v32 = sub_1ABE71D94();
    v33 = sub_1ABAB480C(&v112, &qword_1EB4D8058, &unk_1ABF58E00);
    v109[0] = v32;
    MEMORY[0x1EEE9AC00](v33);
    *(&v84 - 2) = __dst;

    v35 = sub_1ABD214A8(v34, sub_1ABD214A0, &v84 - 4);

    type metadata accessor for Virtual();
    sub_1ABEBEA58(v32, v35, v28);

    v12 = v31;
    sub_1ABE3CF94(v31);
    v102 = v95;
    v103 = v94;
    v105 = v114;
    v106 = v115;
    v104 = v93;
    v107 = v28;
    v108 = v25;
    if ((sub_1ABD20D78(v31, v109) & 1) == 0)
    {

      sub_1ABD2144C(__dst);
      sub_1ABA8F588();
      sub_1ABD2162C(v31, v43);

      goto LABEL_9;
    }

    if (!__dst[10])
    {

      v102 = 0;
      v103 = 0xE000000000000000;
      sub_1ABF24AB4();

      sub_1ABA908A8();
      v102 = v52;
      v103 = v51;
      v53 = v91;

      MEMORY[0x1AC5A9410](v90, v53);

      sub_1ABD1FC74();
      v54 = sub_1ABA7BD00();
      sub_1ABA94AE8(v54, v55);
      sub_1ABD2144C(__dst);
      sub_1ABA8F588();
      sub_1ABD2162C(v31, v56);
    }

    v36 = sub_1ABE71D94();

    v101 = v36;

    sub_1ABEBEA58(v37, v35, v96);

    v38 = v92;
    sub_1ABE3CF94(v92);
    v39 = sub_1ABE18470(v38, &v101, v95, v94, v93);
    v40 = __dst[6];
    v113 = __dst[7];
    v41 = __dst[5];
    if (!sub_1ABE47EF0())
    {
      break;
    }

    sub_1ABD2144C(__dst);

    sub_1ABA80C6C();
    v12 = v31;
    sub_1ABD2162C(v31, v42);

    sub_1ABD2162C(v92, v39);
LABEL_9:
    v27 = (v98 + 104);
    v26 = v99 - 1;
    if (v99 == 1)
    {
      goto LABEL_10;
    }
  }

  v57 = *v92;
  v58 = *(*v92 + 40);
  *(v57 + 32) = v41;
  *(v57 + 40) = v40;

  v59 = *(v57 + 64);
  v100 = *(v57 + 56);
  v60 = *(v57 + 72);
  LODWORD(v99) = *(v57 + 80);
  v62 = v87;
  v61 = v88;
  *(v57 + 56) = v85;
  *(v57 + 64) = v61;
  *(v57 + 72) = v62;
  *(v57 + 80) = v15;

  sub_1ABAFEE5C(v100, v59);
  v63 = *(v57 + 48);
  *(v57 + 48) = v101;

  v102 = 0x676B2E6574756F72;
  v103 = 0xEB00000000203A71;

  MEMORY[0x1AC5A9410](v41, v40);

  v65 = v102;
  v64 = v103;
  v66 = &v92[*(Context + 48)];
  v67 = *(v66 + 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v99 = v66;
  v100 = v65;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v81 = *(v67 + 16);
    sub_1ABA7BEF0();
    sub_1ABAAA4F4();
    v67 = v82;
  }

  v70 = *(v67 + 16);
  v69 = *(v67 + 24);
  if (v70 >= v69 >> 1)
  {
    sub_1ABA7BBEC(v69);
    sub_1ABAAA4F4();
    v67 = v83;
  }

  sub_1ABA8F588();
  v98 = v71;
  sub_1ABD2162C(v31, v72);

  *(v67 + 16) = v70 + 1;
  v73 = v67 + 16 * v70;
  *(v73 + 32) = v100;
  *(v73 + 40) = v64;
  *(v99 + 1) = v67;
  v74 = v89;
  sub_1ABC46A54(v92, v89);
  v75 = v88;

  v76 = v87;

  v77 = v91;

  sub_1ABB3E5B4(&v113, &v102, &unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABD2144C(__dst);
  v78 = v113;
  v79 = type metadata accessor for IntentExecResult();
  *(v74 + v79[5]) = v39;
  v80 = v74 + v79[6];
  *v80 = v85;
  *(v80 + 8) = v75;
  *(v80 + 16) = v76;
  *(v80 + 24) = v15;
  *(v80 + 32) = v90;
  *(v80 + 40) = v77;
  *(v80 + 48) = v78;
  *(v74 + v79[7]) = 0;
  sub_1ABD2162C(v92, v98);
  v45 = v74;
  v46 = 0;
  v44 = v79;
  return sub_1ABA7B9B4(v45, v46, 1, v44);
}

uint64_t type metadata accessor for IntentExecResult()
{
  result = qword_1EB4D8080;
  if (!qword_1EB4D8080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABD208EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentExecResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABD20950(uint64_t a1)
{
  v42 = *a1;
  v41 = *(a1 + 8);
  v2 = *(a1 + 24);
  v3 = *(v1 + 64);
  type metadata accessor for KnosisQueryParam();
  v4 = sub_1ABF239C4();
  v39 = *(v3 + 16);
  if (!v39)
  {
    return v4;
  }

  v5 = 0;
  v40 = v3 + 32;
  v38 = v3;
  while (2)
  {
    if (v5 < *(v3 + 16))
    {
      v43 = v5 + 1;
      sub_1ABA93E20((v40 + 40 * v5), *(v40 + 40 * v5 + 24));
      v48 = v42;
      v49 = v41;
      v50 = v2;
      v6 = sub_1ABAF0D14(&v48);
      v7 = 0;
      v9 = v6 + 64;
      v8 = *(v6 + 64);
      v45 = v6 + 64;
      v46 = v6;
      v10 = 1 << *(v6 + 32);
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v12 = v11 & v8;
      v13 = (v10 + 63) >> 6;
      v44 = v13;
      if ((v11 & v8) == 0)
      {
        while (1)
        {
LABEL_8:
          v14 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          if (v14 >= v13)
          {
            break;
          }

          v12 = *(v9 + 8 * v14);
          ++v7;
          if (v12)
          {
            v7 = v14;
            goto LABEL_12;
          }
        }

        v5 = v43;
        v3 = v38;
        if (v43 != v39)
        {
          continue;
        }

        return v4;
      }

      while (1)
      {
LABEL_12:
        v15 = __clz(__rbit64(v12)) | (v7 << 6);
        v16 = (*(v46 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(v46 + 56) + 8 * v15);
        v20 = v4[2];

        if (v20)
        {
          sub_1ABA94FC8(v17, v18);
          if (v21)
          {
            v48 = 0;
            *&v49 = 0xE000000000000000;
            sub_1ABF24AB4();
            MEMORY[0x1AC5A9410](0xD00000000000001ELL, 0x80000001ABF8DB90);
            MEMORY[0x1AC5A9410](v17, v18);

            MEMORY[0x1AC5A9410](0xD000000000000023, 0x80000001ABF8DBB0);
            v34 = v48;
            v35 = v49;
            sub_1ABD1FC74();
            sub_1ABA7BD00();
            *v36 = v34;
            *(v36 + 8) = v35;
            *(v36 + 16) = 0;
            swift_willThrow();

            return v4;
          }
        }

        v47 = v19;

        swift_isUniquelyReferenced_nonNull_native();
        v48 = v4;
        v22 = sub_1ABA94FC8(v17, v18);
        if (__OFADD__(v4[2], (v23 & 1) == 0))
        {
          break;
        }

        v24 = v22;
        v25 = v23;
        sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
        if (sub_1ABF24C64())
        {
          v26 = sub_1ABA94FC8(v17, v18);
          if ((v25 & 1) != (v27 & 1))
          {
            goto LABEL_32;
          }

          v24 = v26;
        }

        if (v25)
        {

          v4 = v48;
          v28 = v48[7];
          v29 = *(v28 + 8 * v24);
          *(v28 + 8 * v24) = v47;
        }

        else
        {
          v4 = v48;
          v48[(v24 >> 6) + 8] |= 1 << v24;
          v30 = (v4[6] + 16 * v24);
          *v30 = v17;
          v30[1] = v18;
          *(v4[7] + 8 * v24) = v47;

          v31 = v4[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_30;
          }

          v4[2] = v33;
        }

        v12 &= v12 - 1;
        v13 = v44;
        v9 = v45;
        if (!v12)
        {
          goto LABEL_8;
        }
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    break;
  }

  __break(1u);
LABEL_32:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

BOOL sub_1ABD20D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 32);
  v7[0] = a1;
  v7[1] = a2;
  v6[2] = v7;
  return sub_1ABB2F764(sub_1ABB342A0, v6, v4);
}

uint64_t sub_1ABD20D78(uint64_t a1, uint64_t *a2)
{
  v57 = a1;
  v58 = a2;
  v56 = sub_1ABF23744();
  v3 = sub_1ABA7BB64(v56);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7C068();
  v55 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  v12 = sub_1ABF237F4();
  v13 = sub_1ABA7BB64(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v20 = v19 - v18;
  v54 = sub_1ABF23774();
  v21 = sub_1ABA7BB64(v54);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v28 = v27 - v26;
  v53 = type metadata accessor for LogSignpost();
  v29 = sub_1ABA7BBB0(v53);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BC58();
  v34 = v33 - v32;
  v35 = *v2;
  v51 = v2[1];
  v52 = v35;
  v50 = v2[2];
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v36 = sub_1ABA7AA24(v12, qword_1ED871EF8);
  (*(v15 + 16))(v20, v36, v12);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v37 = sub_1ABF23764();
  v38 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v37, v38, v40, "Knosis.Intent.EvaluateCondition", "", v39, 2u);
    MEMORY[0x1AC5AB8B0](v39, -1, -1);
  }

  v41 = v56;
  (*(v5 + 16))(v55, v11, v56);
  v42 = sub_1ABF237B4();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = sub_1ABF237A4();
  (*(v5 + 8))(v11, v41);
  *v34 = "Knosis.Intent.EvaluateCondition";
  *(v34 + 8) = 31;
  *(v34 + 16) = 2;
  *(v34 + 24) = v45;
  (*(v23 + 32))(v34 + *(v53 + 24), v28, v54);
  v46 = v59;
  sub_1ABE18470(v57, v58, v52, v51, v50);
  if (v46)
  {
    sub_1ABD21148(v34);
  }

  else
  {
    v47 = sub_1ABE47EF0();

    sub_1ABD21148(v34);
    LOBYTE(v45) = !v47;
  }

  sub_1ABA7C35C();
  return v45 & 1;
}

uint64_t sub_1ABD21148(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1ABF23744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LogSignpost();
  v12 = *a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = a1 + *(v11 + 24);
  v16 = sub_1ABF23764();
  sub_1ABF23794();
  v23 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v7 + 8))(v10, v6);
  }

  if ((v13 & 1) == 0)
  {
    if (v12)
    {
LABEL_9:

      sub_1ABF237C4();

      v18 = v24;
      if ((*(v24 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v5, v2);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v16, v23, v21, v12, v19, v20, 2u);
      MEMORY[0x1AC5AB8B0](v20, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v12 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v12 & 0xFFFFF800) != 0xD800)
  {
    if (v12 >> 16 <= 0x10)
    {
      v12 = &v25;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t *sub_1ABD214A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), unint64_t *a3)
{
  v6 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      a3 = sub_1ABD21808(v13, v8, v6, a2);
      MEMORY[0x1AC5AB8B0](v13, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = (v14 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1ABB18078(0, v8, v9);
  sub_1ABD21684(v9, v8, v6, a2);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a3 = v10;
  }

LABEL_5:
  v11 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t sub_1ABD2162C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1ABD21684(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = a4(v15, v16, v17);

    if (v18)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1ABD21B10(a1, a2, v22, a3, &qword_1EB4D8060, &unk_1ABF58E10);
        return;
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
}

unint64_t *sub_1ABD21808(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1ABD21684(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1ABD21898(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D56F0, &qword_1ABF4ACF8);
      v7 = sub_1ABF24D54();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 64;
      v40 = a2;
      v41 = v4;
      v42 = v7;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v43 = (v9 - 1) & v9;
LABEL_16:
        v15 = v12 | (v10 << 6);
        v16 = *(v4 + 56);
        v17 = (*(v4 + 48) + 48 * v15);
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        v23 = v17[4];
        v22 = v17[5];
        v24 = *(v16 + 8 * v15);
        v25 = v8[5];
        sub_1ABF25234();

        v44 = v24;
        sub_1ABF23D34();
        sub_1ABF23D34();
        sub_1ABF23D34();
        sub_1ABF25294();
        v26 = *(v42 + 32);
        sub_1ABA9A51C();
        if (((v29 << v28) & ~*(v11 + 8 * v27)) == 0)
        {
          sub_1ABA8E674();
          while (++v30 != v32 || (v31 & 1) == 0)
          {
            v33 = v30 == v32;
            if (v30 == v32)
            {
              v30 = 0;
            }

            v31 |= v33;
            if (*(v11 + 8 * v30) != -1)
            {
              sub_1ABA83620();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_1ABA8154C();
LABEL_25:
        sub_1ABA8FE48();
        *(v11 + v34) |= v35;
        v37 = (v8[6] + 48 * v36);
        *v37 = v18;
        v37[1] = v19;
        v37[2] = v20;
        v37[3] = v21;
        v37[4] = v23;
        v37[5] = v22;
        *(v8[7] + 8 * v36) = v44;
        ++v8[2];
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_30;
        }

        a2 = v40;
        v4 = v41;
        v9 = v43;
        if (!v5)
        {
          return;
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
          return;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v43 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_1ABD21B10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      sub_1ABAD219C(a5, a6);
      v10 = sub_1ABF24D54();
      v11 = v10;
      if (a2 < 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = *a1;
      }

      v13 = 0;
      v14 = v10 + 64;
      v38 = v6;
      while (v12)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_16:
        v18 = v15 | (v13 << 6);
        v19 = *(v6 + 56);
        v20 = (*(v6 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = *(v19 + 8 * v18);
        v24 = *(v11 + 40);
        sub_1ABF25234();

        sub_1ABF23D34();
        sub_1ABF25294();
        v25 = *(v11 + 32);
        sub_1ABA9A51C();
        if (((v28 << v27) & ~*(v14 + 8 * v26)) == 0)
        {
          sub_1ABA8E674();
          while (++v29 != v31 || (v30 & 1) == 0)
          {
            v32 = v29 == v31;
            if (v29 == v31)
            {
              v29 = 0;
            }

            v30 |= v32;
            if (*(v14 + 8 * v29) != -1)
            {
              sub_1ABA83620();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_1ABA8154C();
LABEL_25:
        sub_1ABA8FE48();
        *(v14 + v33) |= v34;
        v36 = (*(v11 + 48) + 16 * v35);
        *v36 = v21;
        v36[1] = v22;
        *(*(v11 + 56) + 8 * v35) = v23;
        ++*(v11 + 16);
        if (__OFSUB__(v7--, 1))
        {
          goto LABEL_30;
        }

        v6 = v38;
        if (!v7)
        {
          return;
        }
      }

      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= a2)
        {
          return;
        }

        v17 = a1[v13];
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

uint64_t sub_1ABD21D84()
{
  result = type metadata accessor for QueryContext();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ResultGraph();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t HandleView.identifier(forHandle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1ABB2C7F4();
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D8098, &qword_1ABF58E68);
  sub_1ABF22464();

  if (*(v13 + 16))
  {
    v10 = *(v13 + 48);

    v12 = 0;
  }

  else
  {

    v10 = 0;
    v12 = 1;
  }

  *a3 = v10;
  *(a3 + 8) = v12;
  return result;
}

uint64_t HandleView.identifiers(forHandles:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  ObjectType = swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D8098, &qword_1ABF58E68);
  v4 = v1;
  v5 = 0;
  sub_1ABF22464();
  v15 = v30;
  sub_1ABF239C4();
  sub_1ABA81940();
  while (1)
  {
    if (v28 == v5)
    {

      return v4;
    }

    if (v5 >= *(v29 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      sub_1ABA7D178();
      v6 = sub_1ABF237F4();
      sub_1ABA7AA24(v6, qword_1ED871B40);
      v7 = sub_1ABA7E848();
      v8 = sub_1ABF237D4();
      v9 = sub_1ABF24664();

      if (os_log_type_enabled(v8, v9))
      {
        swift_slowAlloc();
        v30 = sub_1ABA839A4();
        *ObjectType = 136315138;
        swift_getErrorValue();
        v10 = sub_1ABF25154();
        v4 = v11;
        v12 = sub_1ABADD6D8(v10, v11, &v30);

        *(ObjectType + 4) = v12;
        sub_1ABA80C84(&dword_1ABA78000, v13, v14, "HandleView: unable to retrieve records matching handles: %s");
        sub_1ABA7C384();
        sub_1ABA7BC34();
      }

      sub_1ABF239C4();
      return v4;
    }

    sub_1ABA90198();
    swift_isUniquelyReferenced_nonNull_native();
    v30 = v4;
    v16 = sub_1ABA8C190();
    sub_1ABA94B0C(v16, v17);
    if (v20)
    {
      goto LABEL_19;
    }

    v21 = v18;
    v22 = v19;
    sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
    if (sub_1ABF24C64())
    {
      break;
    }

LABEL_11:
    if (v22)
    {

      v4 = v30;
      *(*(v30 + 56) + 8 * v21) = v2;
    }

    else
    {
      v4 = v30;
      sub_1ABA7F484();
      v25 = *(v30 + 16);
      v20 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      *(v30 + 16) = v26;
    }

    v15 += 24;
    ++v5;
  }

  v23 = sub_1ABA8C190();
  if ((v22 & 1) == (v24 & 1))
  {
    v21 = v23;
    goto LABEL_11;
  }

  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t HandleView.handleToIdentifierMap()()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  ObjectType = swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D8098, &qword_1ABF58E68);
  sub_1ABA7D9D4();
  sub_1ABA8EA48();
  if (!v1)
  {
    v14 = v29;
    sub_1ABF239C4();
    sub_1ABA81940();
    while (1)
    {
      if (v27 == v1)
      {

        return v0;
      }

      if (v1 >= *(v28 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      sub_1ABA90198();
      swift_isUniquelyReferenced_nonNull_native();
      v29 = v0;
      v15 = sub_1ABA8C190();
      sub_1ABA94B0C(v15, v16);
      if (v19)
      {
        goto LABEL_21;
      }

      v20 = v17;
      v21 = v18;
      sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
      if (sub_1ABF24C64())
      {
        v22 = sub_1ABA8C190();
        if ((v21 & 1) != (v23 & 1))
        {
          result = sub_1ABF25104();
          __break(1u);
          return result;
        }

        v20 = v22;
      }

      if (v21)
      {

        v0 = v29;
        *(*(v29 + 56) + 8 * v20) = v3;
      }

      else
      {
        v0 = v29;
        sub_1ABA7F484();
        v24 = *(v29 + 16);
        v19 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v19)
        {
          goto LABEL_22;
        }

        *(v29 + 16) = v25;
      }

      v14 += 24;
      ++v1;
    }
  }

  if (qword_1ED871B38 != -1)
  {
LABEL_23:
    sub_1ABA7D178();
  }

  v5 = sub_1ABF237F4();
  sub_1ABA7AA24(v5, qword_1ED871B40);
  v6 = sub_1ABA7E848();
  v7 = sub_1ABF237D4();
  v8 = sub_1ABF24664();

  if (os_log_type_enabled(v7, v8))
  {
    swift_slowAlloc();
    v29 = sub_1ABA839A4();
    *ObjectType = 136315138;
    swift_getErrorValue();
    v9 = sub_1ABF25154();
    v0 = v10;
    v11 = sub_1ABADD6D8(v9, v10, &v29);

    *(ObjectType + 4) = v11;
    sub_1ABA80C84(&dword_1ABA78000, v12, v13, "HandleView: unable to retrieve all records: %s");
    sub_1ABA7C384();
    sub_1ABA7BC34();
  }

  sub_1ABF239C4();
  return v0;
}

uint64_t HandleView.identifierToHandleMap()()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  ObjectType = swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D8098, &qword_1ABF58E68);
  sub_1ABA7D9D4();
  sub_1ABA8EA48();
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABB668FC();
    v14 = sub_1ABF239C4();
    ObjectType = 0;
    v28 = *(v30 + 16);
    v29 = v30;
    for (i = (v30 + 48); ; i += 3)
    {
      if (v28 == ObjectType)
      {

        return v14;
      }

      if (ObjectType >= *(v29 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v17 = *(i - 2);
      v16 = *(i - 1);
      v18 = *i;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v14;
      v19 = sub_1ABAF81A8();
      if (__OFADD__(*(v14 + 16), (v20 & 1) == 0))
      {
        goto LABEL_19;
      }

      v21 = v19;
      v22 = v20;
      sub_1ABAD219C(&qword_1EB4D80A8, &qword_1ABF58E70);
      v23 = sub_1ABF24C64();
      v14 = v30;
      if (v23)
      {
        v24 = sub_1ABAF81A8();
        if ((v22 & 1) != (v25 & 1))
        {
          result = sub_1ABF25104();
          __break(1u);
          return result;
        }

        v21 = v24;
      }

      if ((v22 & 1) == 0)
      {
        sub_1ABAFDFD8(v21, v18, MEMORY[0x1E69E7CD0], v14);
      }

      v26 = *(v14 + 56) + 8 * v21;
      sub_1ABB1840C(&v30, v17, v16);

      ++ObjectType;
    }
  }

  if (qword_1ED871B38 != -1)
  {
LABEL_20:
    sub_1ABA7D178();
  }

  v5 = sub_1ABF237F4();
  sub_1ABA7AA24(v5, qword_1ED871B40);
  v6 = sub_1ABA7E848();
  v7 = sub_1ABF237D4();
  v8 = sub_1ABF24664();

  if (os_log_type_enabled(v7, v8))
  {
    swift_slowAlloc();
    v30 = sub_1ABA839A4();
    *ObjectType = 136315138;
    swift_getErrorValue();
    v9 = sub_1ABF25154();
    v11 = sub_1ABADD6D8(v9, v10, &v30);

    *(ObjectType + 4) = v11;
    sub_1ABA80C84(&dword_1ABA78000, v12, v13, "HandleView: unable to retrieve all records: %s");
    sub_1ABA7C384();
    sub_1ABA7BC34();
  }

  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABB668FC();
  v14 = sub_1ABF239C4();

  return v14;
}

uint64_t sub_1ABD22970@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v12 = a2;
  v4 = sub_1ABAD219C(&unk_1EB4D80B0, qword_1ABF58EE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v14[6] = a1;
  v13[3] = sub_1ABF22D14();
  v13[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v13);
  sub_1ABF22D24();
  v14[3] = sub_1ABF22424();
  v14[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v14);
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABAB47C4(&qword_1ED86B990, &unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABF23EE4();
  sub_1ABA84B54(v13);
  sub_1ABD22CB8();
  sub_1ABF221C4();
  sub_1ABA84B54(v14);
  sub_1ABAB47C4(&unk_1EB4D80C0, &unk_1EB4D80B0, qword_1ABF58EE8);
  sub_1ABD22C64();
  v9 = sub_1ABF22234();
  result = (*(v5 + 8))(v8, v4);
  if (!v2)
  {
    *v12 = v9;
  }

  return result;
}

uint64_t sub_1ABD22BBC@<X0>(uint64_t *a1@<X8>)
{
  sub_1ABD22C64();
  sub_1ABD22CB8();
  result = sub_1ABF22514();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1ABD22C64()
{
  result = qword_1EB4CFF10;
  if (!qword_1EB4CFF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFF10);
  }

  return result;
}

unint64_t sub_1ABD22CB8()
{
  result = qword_1EB4CFF18;
  if (!qword_1EB4CFF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFF18);
  }

  return result;
}

BOOL sub_1ABD22D34(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1ABF25054();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1ABD22D90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABD22E4C(char a1)
{
  if (a1)
  {
    return 25705;
  }

  else
  {
    return 0x656C646E6168;
  }
}

uint64_t sub_1ABD22E74(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D80E0, &qword_1ABF59060);
  v5 = sub_1ABA7BB64(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v16 = v1[2];
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABD23478();
  sub_1ABF252E4();
  v20 = 0;
  sub_1ABF24F34();
  if (!v2)
  {
    v18 = v16;
    v19 = 1;
    sub_1ABAE8BC8();
    sub_1ABF24F84();
  }

  return (*(v17 + 8))(v10, v4);
}

uint64_t sub_1ABD22FFC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1ABF23D34();
  return MEMORY[0x1AC5AA8D0](v3);
}

uint64_t sub_1ABD23034()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1ABF25234();
  sub_1ABF23D34();
  MEMORY[0x1AC5AA8D0](v3);
  return sub_1ABF25294();
}

uint64_t sub_1ABD23098@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D80D8, &qword_1ABF59058);
  v6 = sub_1ABA7BB64(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABD23478();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  v10 = sub_1ABF24E14();
  v12 = v11;
  sub_1ABAE8B74();
  sub_1ABF24E64();
  v13 = sub_1ABA8E0A8();
  v14(v13);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v16;

  sub_1ABA84B54(a1);
}

uint64_t sub_1ABD23274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD22D90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD2329C(uint64_t a1)
{
  v2 = sub_1ABD23478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD232D8(uint64_t a1)
{
  v2 = sub_1ABD23478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD23344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABD234CC();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABD233CC()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1ABF25234();
  sub_1ABD22FFC();
  return sub_1ABF25294();
}

unint64_t sub_1ABD23424()
{
  result = qword_1EB4D80D0;
  if (!qword_1EB4D80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D80D0);
  }

  return result;
}

unint64_t sub_1ABD23478()
{
  result = qword_1EB4CF1F8;
  if (!qword_1EB4CF1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1F8);
  }

  return result;
}

unint64_t sub_1ABD234CC()
{
  result = qword_1EB4CFF00;
  if (!qword_1EB4CFF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFF00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HandleViewRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABD23600()
{
  result = qword_1EB4D80E8[0];
  if (!qword_1EB4D80E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D80E8);
  }

  return result;
}

unint64_t sub_1ABD23658()
{
  result = qword_1EB4CF1E8;
  if (!qword_1EB4CF1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1E8);
  }

  return result;
}

unint64_t sub_1ABD236B0()
{
  result = qword_1EB4CF1F0;
  if (!qword_1EB4CF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF1F0);
  }

  return result;
}

void sub_1ABD23704()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v2 = v0 + 64;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 64);
  if (v5)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
LABEL_9:
    v12 = (*(v0 + 48) + 16 * v7);
    v14 = *v12;
    v13 = v12[1];

    while (v8)
    {
LABEL_15:
      v16 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v17 = (*(v1 + 48) + ((v6 << 10) | (16 * v16)));
      v18 = *v17;
      v19 = v17[1];
      if (v14 != *v17 || v13 != v19)
      {
        v21 = *v17;
        v22 = v17[1];
        if (sub_1ABF25054())
        {

          v14 = v18;
          v13 = v19;
        }
      }
    }

    while (1)
    {
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v15 >= v9)
      {

        goto LABEL_22;
      }

      v8 = *(v2 + 8 * v15);
      ++v6;
      if (v8)
      {
        v6 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = 0;
    v9 = (v3 + 63) >> 6;
    while (1)
    {
      v6 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v11 = *(v0 + 72 + 8 * v5);
      v10 += 64;
      ++v5;
      if (v11)
      {
        v8 = (v11 - 1) & v11;
        v7 = __clz(__rbit64(v11)) + v10;
        goto LABEL_9;
      }
    }

LABEL_22:
    sub_1ABA7BC1C();
  }
}

uint64_t sub_1ABD23888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1ABD238CC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1ABD23910()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BD7C();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA80CA4();
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v12;
  v31 = *(v2 + 16);
  if (v31)
  {
    v30 = v4;
    v15 = *(v7 + 16);
    v16 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v15(&v30 - v12, v16, v5, v13);
    v17 = (v7 + 32);
    for (i = 1; v31 != i; ++i)
    {
      (v15)(v0, v16 + *(v7 + 72) * i, v5);
      sub_1ABD25684();
      sub_1ABA7D0F8();
      v19 = sub_1ABF23B64();
      v20 = *(v7 + 8);
      if (v19)
      {
        v20(v14, v5);
        v21 = *v17;
        v22 = sub_1ABA7D0F8();
        v23(v22);
      }

      else
      {
        v20(v0, v5);
      }
    }

    v24 = v30;
    (*v17)(v30, v14, v5);
    sub_1ABA7B9B4(v24, 0, 1, v5);
    sub_1ABA7BC1C();
  }

  else
  {
    sub_1ABA7BC1C();

    sub_1ABA7B9B4(v25, v26, v27, v28);
  }
}

uint64_t Heap.comparator.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Heap.init(usingComparator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  result = sub_1ABF24154();
  a3[2] = result;
  return result;
}

void Heap.append(_:)()
{
  sub_1ABA7E2A8();
  v2 = v0;
  v4 = v3;
  v6 = *(v5 + 16);
  sub_1ABA7BD7C();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA80CA4();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - v13;
  v15 = *(v0 + 16);
  v16 = sub_1ABF24194();
  (*(v8 + 16))(v14, v4, v6);
  sub_1ABF241F4();
  v24[1] = v0 + 16;
  sub_1ABF241A4();
  v17 = (v8 + 8);
  while (v16 >= 1)
  {
    v19 = *v2;
    v18 = *(v2 + 8);
    v20 = *(v2 + 16);
    sub_1ABF24224();
    v21 = *(v2 + 16);
    sub_1ABF24224();
    v22 = sub_1ABA7D0F8();
    LOBYTE(v18) = v19(v22);
    v23 = *v17;
    (*v17)(v1, v6);
    v23(v14, v6);
    if ((v18 & 1) == 0)
    {
      break;
    }

    v24[2] = (v16 - 1) >> 1;
    v24[3] = v16;
    sub_1ABA7F4C8();
    swift_getWitnessTable();
    sub_1ABF23B84();
    v16 = (v16 - 1) >> 1;
  }

  sub_1ABA7BC1C();
}

Swift::Int __swiftcall Heap.parentIndex(_:)(Swift::Int result)
{
  if (!__OFSUB__(result, 1))
  {
    return (result - 1) / 2;
  }

  __break(1u);
  return result;
}

void Heap.removeRoot()()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v4 = v3;
  v5 = *(v1 + 16);
  sub_1ABA7BD7C();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + 16);
  sub_1ABF241F4();
  sub_1ABA7F390();
  swift_getWitnessTable();
  if (sub_1ABF24574())
  {
    v13 = 1;
LABEL_5:
    sub_1ABA7B9B4(v4, v13, 1, v5);
    sub_1ABA7BC1C();
    return;
  }

  sub_1ABF24224();
  v16 = 0;
  v14 = sub_1ABF24194();
  if (!__OFSUB__(v14, 1))
  {
    v15 = v14 - 1;
    sub_1ABA7F4C8();
    swift_getWitnessTable();
    sub_1ABF23B84();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1ABF245F4();
    (*(v7 + 8))(v12, v5);
    sub_1ABD23F1C(0, v2);
    v13 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1ABD23F1C(Swift::Int a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23[-v10];
  if (v12 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = *v2;
  v27 = *(v2 + 8);
  v14 = *(v2 + 16);
  v15 = Heap.rightIndex(_:)(a1);
  v16 = sub_1ABF24194();
  if (__OFSUB__(v16, 1))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v26 = a2;
  v17 = a1;
  if (v16 - 1 > 2 * a1)
  {
    v17 = (2 * a1) | 1;
    sub_1ABF24224();
    sub_1ABF24224();
    v25 = v15;
    v24 = v13(v11, v8);
    v18 = *(v28 + 8);
    v18(v8, v5);
    v18(v11, v5);
    v15 = v25;
    if ((v24 & 1) == 0)
    {
      v17 = a1;
    }
  }

  v19 = sub_1ABF24194();
  if (__OFSUB__(v19, 1))
  {
    goto LABEL_15;
  }

  if (v19 - 1 >= v15)
  {
    sub_1ABF24224();
    sub_1ABF24224();
    v20 = v15;
    v21 = v13(v11, v8);
    v22 = *(v28 + 8);
    v22(v8, v5);
    v22(v11, v5);
    if (v21)
    {
      v17 = v20;
    }
  }

  if (v17 != a1)
  {
    v29 = v17;
    v30 = a1;
    sub_1ABF241F4();
    swift_getWitnessTable();
    sub_1ABF23B84();
    sub_1ABD23F1C(v17, v26);
  }
}

Swift::Int __swiftcall Heap.leftIndex(_:)(Swift::Int result)
{
  if (result + 0x4000000000000000 >= 0)
  {
    return (2 * result) | 1;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall Heap.rightIndex(_:)(Swift::Int result)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = __OFADD__(2 * result, 2);
  result = 2 * result + 2;
  if (v1)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABD24228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = *v3;
  v15 = *(v3 + 8);
  v29 = v3;
  v17 = *(v3 + 16);
  v16 = (v3 + 16);
  sub_1ABF24224();
  v28 = a2;
  v18 = v14(v13, a2);
  v30 = *(v7 + 8);
  v31 = v7 + 8;
  v30(v13, v6);
  if (v18)
  {
    result = sub_1ABF24CD4();
    __break(1u);
  }

  else
  {
    sub_1ABF241F4();
    sub_1ABF24144();
    v19 = *v16;
    sub_1ABD256E8(v5, *v16);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v21 = v19 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v21 = v19;
    }

    result = (*(v7 + 24))(v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v28, v6);
    while (v5 >= 1)
    {
      v23 = *v16;
      sub_1ABF24224();
      v24 = *v16;
      sub_1ABF24224();
      v25 = v14(v13, v10);
      v26 = v30;
      v30(v10, v6);
      result = v26(v13, v6);
      if ((v25 & 1) == 0)
      {
        break;
      }

      v32 = (v5 - 1) >> 1;
      v33 = v5;
      swift_getWitnessTable();
      result = sub_1ABF23B84();
      v14 = *v29;
      v27 = *(v29 + 8);
      v5 = (v5 - 1) >> 1;
    }
  }

  return result;
}

uint64_t Heap<A>.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1ABA93630();
  result = sub_1ABF24154();
  *a3 = sub_1ABD25518;
  a3[1] = v6;
  a3[2] = result;
  return result;
}

uint64_t Heap<A>.removeFirst(where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v19 = a4;
  v20 = a1;
  v21 = a2;
  v8 = *(a3 + 16);
  sub_1ABA93630();
  v9 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v18 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  v16 = *(v6 + 16);
  v22 = v16;
  sub_1ABA93630();
  sub_1ABF241F4();
  sub_1ABA7F390();
  swift_getWitnessTable();
  result = sub_1ABF24574();
  if ((result & 1) == 0)
  {
    v24 = v16;

    sub_1ABF244D4();

    if (!v5 && (v23 & 1) == 0)
    {
      sub_1ABD246F8(v22, a3, v19, v15);
      return (*(v18 + 8))(v15, v9);
    }
  }

  return result;
}

uint64_t sub_1ABD246F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a2;
  v48 = a3;
  v51 = a4;
  v6 = *(a2 + 16);
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v44 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v44 - v17;
  v49 = v4;
  v19 = v4 + 16;
  v52 = *(v4 + 16);
  sub_1ABF241F4();
  swift_getWitnessTable();
  if (sub_1ABF24574())
  {
    v20 = 1;
    v21 = v51;
    return sub_1ABA7B9B4(v21, v20, 1, v6);
  }

  sub_1ABF24224();
  if (sub_1ABF24194() == 1)
  {
    goto LABEL_6;
  }

  sub_1ABF24224();
  v22 = sub_1ABF24194();
  v23 = __OFSUB__(v22, 1);
  result = v22 - 1;
  if (v23)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1ABF24224();
  v46 = a1;
  v25 = sub_1ABF23BB4();
  v26 = v9;
  v27 = v18;
  v48 = v19;
  v28 = v50 + 8;
  v29 = *(v50 + 8);
  v29(v12, v6);
  v44[1] = v28;
  v45 = v29;
  v29(v15, v6);
  v18 = v27;
  if (v25)
  {
LABEL_6:
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1ABF245F4();
    v30 = v50;
    (*(v50 + 8))(v15, v6);
LABEL_7:
    v21 = v51;
LABEL_8:
    (*(v30 + 32))(v21, v18, v6);
    v20 = 0;
    return sub_1ABA7B9B4(v21, v20, 1, v6);
  }

  v31 = v26;
  v33 = *v49;
  v32 = *(v49 + 8);
  sub_1ABF24224();
  v34 = sub_1ABF24194();
  v23 = __OFSUB__(v34, 1);
  result = v34 - 1;
  if (v23)
  {
    goto LABEL_22;
  }

  sub_1ABF24224();
  v35 = v33(v15, v12);
  v36 = v45;
  v45(v12, v6);
  v36(v15, v6);
  v37 = sub_1ABF24194();
  v23 = __OFSUB__(v37, 1);
  result = v37 - 1;
  v38 = v23;
  if (v35)
  {
    if ((v38 & 1) == 0)
    {
      sub_1ABF24224();
      sub_1ABF24144();
      v39 = *(v49 + 16);
      v40 = v46;
      sub_1ABD256E8(v46, v39);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v42 = v39 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v42 = v39;
      }

      v30 = v50;
      (*(v50 + 40))(v42 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v40, v31, v6);
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1ABF245F4();
      v45(v15, v6);
      sub_1ABD23F1C(v40, v47);
      goto LABEL_7;
    }

    goto LABEL_23;
  }

  if ((v38 & 1) == 0)
  {
    sub_1ABF24224();
    sub_1ABD24228(v46, v15, v47);
    v43 = v45;
    v45(v15, v6);
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1ABF245F4();
    v43(v15, v6);
    v30 = v50;
    v21 = v51;
    goto LABEL_8;
  }

LABEL_24:
  __break(1u);
  return result;
}

void Heap<A>.remove(value:)()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v4 + 16);
  sub_1ABA93630();
  v7 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v15 - v13;
  v15[1] = *(v1 + 16);
  sub_1ABA93630();
  sub_1ABF241F4();
  sub_1ABA7F390();
  swift_getWitnessTable();
  sub_1ABF245B4();
  if ((v16 & 1) == 0)
  {
    sub_1ABD246F8(v15[2], v5, v3, v14);
    (*(v9 + 8))(v14, v7);
  }

  sub_1ABA7BC1C();
}

void Heap.debugDescription.getter(uint64_t a1)
{
  v2 = *v1;
  v54 = v1[1];
  v55 = v2;
  v3 = v1[2];
  v56 = v3;
  v4 = *(a1 + 16);
  v5 = sub_1ABF241F4();

  sub_1ABA7F390();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1ABF24574();
  if (v7)
  {

    return;
  }

  v56 = v3;
  MEMORY[0x1EEE9AC00](v7);
  v48[2] = v4;
  v9 = sub_1ABB66290(sub_1ABD25520, v48, v5, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);

  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  v51 = v10;
  if (v10)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1ABADE07C();
    v12 = v56;
    v13 = (v9 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      v16 = sub_1ABF23D44();

      v56 = v12;
      v17 = v12[2];
      if (v17 >= v12[3] >> 1)
      {
        sub_1ABADE07C();
        v12 = v56;
      }

      v12[2] = v17 + 1;
      v12[v17 + 4] = v16;
      v13 += 2;
      --v10;
    }

    while (v10);
    v10 = v51;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_1ABD238CC(v12);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    v52 = v4;
    v53 = v3;
    if (v10)
    {
      v58 = v11;
      sub_1ABADDBD4();
      v21 = 0;
      v22 = v58;
      v50 = v9 + 32;
      while (v21 < *(v9 + 16))
      {
        v23 = v9;
        v24 = v22;
        v25 = (v50 + 16 * v21);
        v26 = *v25;
        v27 = v25[1];

        sub_1ABA81954();
        if (sub_1ABF23D44() < v18)
        {
          do
          {
            sub_1ABA81954();
            if (sub_1ABF23D44())
            {
              v56 = v26;
              v57 = v27;
              v29 = sub_1ABA8E7B8();
              MEMORY[0x1AC5A9410](v29);
            }

            else
            {
              v56 = 32;
              v57 = 0xE100000000000000;
              v28 = sub_1ABA81954();
              MEMORY[0x1AC5A9410](v28);
            }

            v26 = v56;
            v27 = v57;

            sub_1ABA81954();
            v30 = sub_1ABF23D44();
          }

          while (v30 < v18);
        }

        v22 = v24;
        v58 = v24;
        v31 = *(v24 + 16);
        if (v31 >= *(v24 + 24) >> 1)
        {
          sub_1ABADDBD4();
          v22 = v58;
        }

        ++v21;
        *(v22 + 16) = v31 + 1;
        v32 = v22 + 16 * v31;
        *(v32 + 32) = v26;
        *(v32 + 40) = v27;
        v9 = v23;
        if (v21 == v51)
        {

          goto LABEL_24;
        }
      }
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
LABEL_24:
      v56 = 10;
      v57 = 0xE100000000000000;
      sub_1ABA8E7B8();
      v49 = sub_1ABF23E84();
      v50 = v33;
      v34 = 0;
      v35 = *(v22 + 16);
      v36 = (v22 + 40);
      v51 = v22;
      if (!v35)
      {
LABEL_36:

        MEMORY[0x1AC5A9410](10, 0xE100000000000000);
        return;
      }

      while (v34 < *(v22 + 16))
      {
        v38 = *(v36 - 1);
        v37 = *v36;
        v39 = v36;

        sub_1ABD25340(v34, v55, v54, v53, v18, v52);
        sub_1ABA8E7B8();
        v40 = sub_1ABF23E84();
        MEMORY[0x1AC5A9410](v40);

        v41 = sub_1ABA7D0F8();
        MEMORY[0x1AC5A9410](v41);

        sub_1ABA8E7B8();
        v42 = sub_1ABF23E84();
        MEMORY[0x1AC5A9410](v42);

        v43 = log2((v34 + 1));
        v44 = v43;
        if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_38;
        }

        if (v43 <= -9.22337204e18)
        {
          goto LABEL_39;
        }

        if (v43 >= 9.22337204e18)
        {
          goto LABEL_40;
        }

        v45 = log2((v34 + 2));
        if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_41;
        }

        if (v45 <= -9.22337204e18)
        {
          goto LABEL_42;
        }

        if (v45 >= 9.22337204e18)
        {
          goto LABEL_43;
        }

        if (*&v44 == *&v45)
        {
          v46 = v49;
          v47 = v50;
        }

        else
        {
          v46 = 10;
          v47 = 0xE100000000000000;
        }

        MEMORY[0x1AC5A9410](v46, v47);
        v36 = v39 + 2;
        --v35;
        ++v34;
        v22 = v51;
        if (!v35)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABD25270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = sub_1ABF23C74();
  *a3 = result;
  a3[1] = v9;
  return result;
}

Swift::Int sub_1ABD25340(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = (2 * result) | 1;
  v12 = Heap.rightIndex(_:)(result);
  v13 = sub_1ABF24194();
  if (v11 >= v13)
  {
    goto LABEL_7;
  }

  result = sub_1ABD25340(v11, a2, a3, a4, a5, a6);
  v15 = result + v14;
  if (__OFADD__(result, v14))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = v15 + a5;
  if (!__OFADD__(v15, a5))
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v16 = 0;
LABEL_8:
  if (v12 >= v13)
  {
    return v16;
  }

  result = sub_1ABD25340(v12, a2, a3, a4, a5, a6);
  if (!__OFADD__(result, v17))
  {
    if (__OFADD__(result + v17, a5))
    {
      __break(1u);
    }

    return v16;
  }

LABEL_16:
  __break(1u);
  return result;
}

void HeapIterator.next()(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Heap();

  Heap.removeRoot()();
}

uint64_t Heap.underestimatedCount.getter(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  return sub_1ABF24194();
}

uint64_t Heap.makeIterator()@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_1ABD254D8@<X0>(void *a1@<X8>)
{
  Heap.makeIterator()(a1);
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
}

uint64_t sub_1ABD25518()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1ABD24558();
}

uint64_t sub_1ABD25574()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABD255B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABD255EC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD2562C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1ABD25684()
{
  result = qword_1EB4D8170;
  if (!qword_1EB4D8170)
  {
    sub_1ABAE2850(&qword_1EB4D1710, &qword_1ABF338A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8170);
  }

  return result;
}

uint64_t sub_1ABD256E8(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1ABD25744(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1ABAFF238(a1, v21);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABA7D9F0();
    v6 = sub_1ABAFAEC0();
    sub_1ABA81960(v6, v7, v8, v9, v10, v11, v12, v13, v19, v20);
  }

  else
  {
    sub_1ABA925A4(a1, &qword_1EB4D3000, &unk_1ABF3AA60);
    v14 = *v2;
    v15 = sub_1ABAC92C0(a2);
    if (v16)
    {
      v17 = v15;
      v18 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1ABA839C0();
      sub_1ABAD219C(&qword_1EB4D1FB8, &qword_1ABF351A8);
      sub_1ABA8C1A8();
      sub_1ABAFF238((*(v20 + 56) + 32 * v17), v21);
      sub_1ABF24C84();
      *v3 = v20;
    }

    else
    {
      memset(v21, 0, sizeof(v21));
    }

    sub_1ABA925A4(v21, &qword_1EB4D3000, &unk_1ABF3AA60);
  }
}

void sub_1ABD25860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    sub_1ABA925A4(a1, &qword_1EB4D3EE0, &unk_1ABF41370);
    sub_1ABC25D00(a2, a3, v17);

    sub_1ABA925A4(v17, &qword_1EB4D3EE0, &unk_1ABF41370);
  }

  else
  {
    sub_1ABAFF42C(a1, v17);
    v6 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABA7D9F0();
    sub_1ABAFB478();

    sub_1ABA81960(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

void sub_1ABD25924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1ABAFF5C4(a1, v21);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABA7D9F0();
    v6 = sub_1ABAFB8D4();
    sub_1ABA81960(v6, v7, v8, v9, v10, v11, v12, v13, v19, v20);
  }

  else
  {
    sub_1ABA925A4(a1, &qword_1EB4D8178, &qword_1ABF594C8);
    v14 = *v2;
    v15 = sub_1ABAF8388(a2);
    if (v16)
    {
      v17 = v15;
      v18 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1ABA839C0();
      sub_1ABAD219C(&qword_1EB4D1FC0, &unk_1ABF351B0);
      sub_1ABA8C1A8();
      sub_1ABAFF5C4((*(v20 + 56) + 40 * v17), v21);
      sub_1ABAD219C(&qword_1EB4D8190, qword_1ABF60F30);
      sub_1ABD26F30();
      sub_1ABF24C84();
      *v3 = v20;
    }

    else
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
    }

    sub_1ABA925A4(v21, &qword_1EB4D8178, &qword_1ABF594C8);
  }
}

void sub_1ABD25A58(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 255)
  {
    sub_1ABA925A4(a1, &qword_1EB4D8180, &unk_1ABF594D0);
    sub_1ABC25F10(a2, &v25);
    sub_1ABC1AFCC(a2);
    sub_1ABA925A4(&v25, &qword_1EB4D8180, &unk_1ABF594D0);
  }

  else
  {
    v4 = *(a1 + 16);
    v25 = *a1;
    v26[0] = v4;
    *(v26 + 9) = *(a1 + 25);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABA7D9F0();
    sub_1ABAFBF84(v6, a2, v7, v8, v9, v10, v11, v12, v21, v23, v25, *(&v25 + 1), *&v26[0], *(&v26[0] + 1), *&v26[1], *(&v26[1] + 1), v27, v28, v29, v30, v31, v32, vars0, vars8);
    v13 = sub_1ABC1AFCC(a2);
    sub_1ABA81960(v13, v14, v15, v16, v17, v18, v19, v20, v22, v24);
  }
}

uint64_t sub_1ABD25B1C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    sub_1ABA925A4(a1, &qword_1EB4D8188, &qword_1ABF67410);
    sub_1ABC26020(v5);

    return sub_1ABA925A4(v5, &qword_1EB4D8188, &qword_1ABF67410);
  }

  else
  {
    sub_1ABAFF124(a1, v5);
    v3 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v4 = *v1;
    sub_1ABAFC138();

    *v1 = v4;
  }

  return result;
}

void IndexHandler.init(indexMap:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = a1;
  v4 = &type metadata for ContextIndexHandler;
  v5 = &off_1F2084CE0;
  sub_1ABD25924(v3, 5);
  *a2 = v6;
}

uint64_t sub_1ABD25C88@<X0>(unsigned __int8 *a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v8 = sub_1ABF23744();
  v9 = sub_1ABA7BB64(v8);
  v137 = v10;
  v138 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v135 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v124 - v15;
  v142 = sub_1ABF237F4();
  v16 = sub_1ABA7BB64(v142);
  v130 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7C21C();
  v129 = v20;
  v21 = sub_1ABF23774();
  v22 = sub_1ABA7BB64(v21);
  v133 = v23;
  v134 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7C21C();
  v141 = v26;
  v131 = type metadata accessor for LogSignpost();
  v27 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  sub_1ABA7C21C();
  v140 = v28;
  v29 = *a1;
  v30 = *(a1 + 2);
  v132 = *(a1 + 1);
  v32 = *(a1 + 3);
  v31 = *(a1 + 4);
  v143 = v30;
  *&v144 = v32;
  *(&v144 + 1) = v31;
  LODWORD(v155) = a1[40];
  v33 = *(a1 + 6);
  memcpy(__dst, a2, sizeof(__dst));
  v34 = v29;
  sub_1ABAD5168(v29, *v3);
  if (*(&v145[1] + 1))
  {
    v128 = a3;
    v139 = v4;
    v35 = 1701736302;
    sub_1ABAFF5C4(v145, v151);
    v36 = v153;
    sub_1ABA93E20(v151, v152);
    v37 = *(v36 + 16);
    v38 = sub_1ABA94A78();
    v40 = 0xE400000000000000;
    v41 = v39(v38, v36);
    switch(v29)
    {
      case 1:
        v40 = 0x80000001ABF7EE20;
        goto LABEL_12;
      case 2:
        v40 = 0xE700000000000000;
        goto LABEL_12;
      case 3:
        v40 = 0xEF7865646E496870;
        goto LABEL_12;
      case 4:
        v40 = 0xED00007865646E49;
        goto LABEL_12;
      case 5:
        v40 = 0xEC0000007865646ELL;
        goto LABEL_12;
      case 6:

        goto LABEL_13;
      case 7:
        v40 = 0x80000001ABF7EE80;
        goto LABEL_12;
      case 8:
        v40 = 0x80000001ABF7EEA0;
        goto LABEL_12;
      default:
LABEL_12:
        v35 = sub_1ABF25054();

        if ((v35 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_13:
        if (*(v41 + 16))
        {
          sub_1ABB2C388(&unk_1F208E460);
          v43 = sub_1ABA94A78();
          sub_1ABD7A84C(v43, v40);
          v35 = v44;

          if ((v35 & 1) == 0)
          {
            if ((sub_1ABD26BE0(v41, v33) & 1) == 0)
            {
              if (qword_1ED86E458 != -1)
              {
                sub_1ABA8F02C();
              }

              sub_1ABA7AA24(v142, qword_1ED86E460);
              sub_1ABA94A78();

              sub_1ABA8EA6C();
              v68 = sub_1ABF237D4();
              v69 = sub_1ABF24664();

              sub_1ABB3F860(v36, v35, a3);

              if (os_log_type_enabled(v68, v69))
              {
                v70 = swift_slowAlloc();
                v155 = swift_slowAlloc();
                *&v145[0] = v155;
                *v70 = 136315394;
                sub_1ABD26F30();
                v71 = sub_1ABF243A4();
                v73 = sub_1ABADD6D8(v71, v72, v145);

                *(v70 + 4) = v73;
                *(v70 + 12) = 2080;
                v74 = sub_1ABF243A4();
                v76 = sub_1ABADD6D8(v74, v75, v145);

                *(v70 + 14) = v76;
                _os_log_impl(&dword_1ABA78000, v68, v69, "Knosis.IndexHandler: insufficient access to query index: %s. Available access: %s", v70, 0x16u);
                swift_arrayDestroy();
                sub_1ABA7BC34();
                sub_1ABA7BC34();
              }

              v77 = v128;
              sub_1ABA901B8();
              MEMORY[0x1AC5A9410](0xD000000000000039, 0x80000001ABF8DC80);
              sub_1ABD26F30();
              v78 = sub_1ABF243A4();
              v80 = v79;

              MEMORY[0x1AC5A9410](v78, v80);

              v81 = v145[0];
              *v77 = 0;
              *(v77 + 1) = v81;
              return sub_1ABA84B54(v151);
            }

LABEL_16:
            if (qword_1ED86E458 != -1)
            {
              sub_1ABA8F02C();
            }

            v52 = sub_1ABA7AA24(v142, qword_1ED86E460);

            v53 = v144;
            v54 = v155;
            sub_1ABB3F4DC(v144, *(&v144 + 1), v155);

            v127 = v52;
            v55 = sub_1ABF237D4();
            v56 = sub_1ABF24654();

            sub_1ABB3F860(v53, *(&v53 + 1), v54);

            if (os_log_type_enabled(v55, v56))
            {
              HIDWORD(v126) = v56;
              v57 = 0x617247746E657665;
              v58 = swift_slowAlloc();
              v125 = swift_slowAlloc();
              v146[0] = v125;
              *v58 = 136315394;
              v59 = v136;
              v60 = 0xEF7865646E496870;
              switch(v34)
              {
                case 1:
                  v57 = 0xD000000000000010;
                  v60 = 0x80000001ABF7EE20;
                  break;
                case 2:
                  v60 = 0xE700000000000000;
                  v57 = 0x7865646E496F6ELL;
                  break;
                case 3:
                  break;
                case 4:
                  v57 = 0x79676F6C6F746E6FLL;
                  v60 = 0xED00007865646E49;
                  break;
                case 5:
                  v57 = 0x49747865746E6F63;
                  v60 = 0xEC0000007865646ELL;
                  break;
                case 6:
                  v57 = 0x6172476C61636F6CLL;
                  break;
                case 7:
                  v60 = 0x80000001ABF7EE80;
                  v57 = 0xD00000000000001ALL;
                  break;
                case 8:
                  v60 = 0x80000001ABF7EEA0;
                  v57 = 0xD000000000000018;
                  break;
                default:
                  v60 = 0xE400000000000000;
                  v57 = 1701736302;
                  break;
              }

              v82 = sub_1ABADD6D8(v57, v60, v146);

              *(v58 + 4) = v82;
              *(v58 + 12) = 2080;
              v145[0] = v144;
              LOBYTE(v145[1]) = v155;
              *(&v145[1] + 1) = v33;
              v83 = KnosisAccessConfig.description.getter();
              v85 = sub_1ABADD6D8(v83, v84, v146);

              *(v58 + 14) = v85;
              _os_log_impl(&dword_1ABA78000, v55, BYTE4(v126), "Knosis.IndexHandler: sufficient access to query index: %s, from available access: %s", v58, 0x16u);
              swift_arrayDestroy();
              sub_1ABA7BC34();
              sub_1ABA7BC34();
            }

            else
            {

              v59 = v136;
            }

            v86 = v139;
            if (qword_1ED871F20 != -1)
            {
              swift_once();
            }

            v87 = v142;
            v88 = sub_1ABA7AA24(v142, qword_1ED871EF8);
            (*(v130 + 16))(v129, v88, v87);
            sub_1ABF23754();
            sub_1ABF23764();
            sub_1ABF23714();
            v89 = sub_1ABF23764();
            v90 = sub_1ABF24714();
            if (sub_1ABF247D4())
            {
              v91 = swift_slowAlloc();
              *v91 = 0;
              v92 = sub_1ABF23724();
              _os_signpost_emit_with_name_impl(&dword_1ABA78000, v89, v90, v92, "IndexHandler.execute", "", v91, 2u);
              sub_1ABA7BC34();
            }

            v93 = v137;
            v94 = v59;
            v95 = v59;
            v96 = v138;
            (*(v137 + 16))(v135, v94, v138);
            v97 = sub_1ABF237B4();
            v98 = *(v97 + 48);
            v99 = *(v97 + 52);
            swift_allocObject();
            sub_1ABA94A78();
            v100 = sub_1ABF237A4();
            (*(v93 + 8))(v95, v96);
            v102 = v140;
            v101 = v141;
            *v140 = "IndexHandler.execute";
            v102[1] = 20;
            *(v102 + 16) = 2;
            v102[3] = v100;
            (*(v133 + 32))(v102 + *(v131 + 24), v101, v134);
            v103 = v152;
            v104 = v153;
            sub_1ABA93E20(v151, v152);
            LOBYTE(v146[0]) = v34;
            v146[1] = v132;
            v146[2] = v143;
            v147 = v144;
            v148 = v155;
            v149 = v33;
            memcpy(v145, __dst, 0x69uLL);
            (*(v104 + 8))(v150, v146, v145, v103, v104);
            if (v86)
            {
              sub_1ABD26C08(v102);
              v105 = v102;
            }

            else
            {
              v106 = v150[0];
              v107 = v150[1];
              v108 = v150[2];

              v109 = sub_1ABF237D4();
              v110 = sub_1ABF24654();

              if (os_log_type_enabled(v109, v110))
              {
                v111 = swift_slowAlloc();
                v139 = 0;
                v112 = v111;
                *(&v144 + 1) = swift_slowAlloc();
                *&v145[0] = v106;
                v146[0] = *(&v144 + 1);
                *v112 = 136315138;
                *(&v145[0] + 1) = v107;
                *&v145[1] = v108;

                v155 = v107;
                v113 = v110;
                v114 = IndexResult.description.getter();
                v116 = v115;

                v117 = sub_1ABADD6D8(v114, v116, v146);

                *(v112 + 4) = v117;
                v118 = v113;
                v107 = v155;
                _os_log_impl(&dword_1ABA78000, v109, v118, "Index result: %s", v112, 0xCu);
                sub_1ABA84B54(*(&v144 + 1));
                sub_1ABA7BC34();
                sub_1ABA7BC34();
              }

              v119 = v128;
              *v128 = v106;
              v119[1] = v107;
              v119[2] = v108;
              v120 = v140;
              sub_1ABD26C08(v140);
              v105 = v120;
            }

            sub_1ABBA4F10(v105);
            return sub_1ABA84B54(v151);
          }
        }

LABEL_15:

        sub_1ABB131AC(v29, v33, v45, v46, v47, v48, v49, v50, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, *(&v144 + 1));
        if (v51)
        {
          goto LABEL_16;
        }

        v141 = 0xEF7865646E496870;
        if (qword_1ED86E458 != -1)
        {
          sub_1ABA8F02C();
        }

        sub_1ABA7AA24(v142, qword_1ED86E460);

        sub_1ABA8EA6C();
        v61 = sub_1ABF237D4();
        v62 = sub_1ABF24664();

        sub_1ABB3F860(v36, v35, a3);

        if (os_log_type_enabled(v61, v62))
        {
          v63 = 0x617247746E657665;
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *&v145[0] = v65;
          *v64 = 136315138;
          v66 = v65;
          switch(v34)
          {
            case 1:
              sub_1ABA9363C("stableGraphIndex");
              v63 = 0xD000000000000010;
              break;
            case 2:
              v141 = 0xE700000000000000;
              v63 = 0x7865646E496F6ELL;
              break;
            case 3:
              break;
            case 4:
              v63 = 0x79676F6C6F746E6FLL;
              v121 = 0xED00007865646E49;
              goto LABEL_59;
            case 5:
              v63 = 0x49747865746E6F63;
              v121 = 0xEC0000007865646ELL;
LABEL_59:
              v141 = v121;
              break;
            case 6:
              v63 = 0x6172476C61636F6CLL;
              break;
            case 7:
              sub_1ABA9363C("staticGlobalKnowledgeIndex");
              v63 = 0xD00000000000001ALL;
              break;
            case 8:
              sub_1ABA9363C("liveGlobalKnowledgeIndex");
              v63 = 0xD000000000000018;
              break;
            default:
              v141 = 0xE400000000000000;
              v63 = 1701736302;
              break;
          }

          v122 = sub_1ABADD6D8(v63, v141, v145);

          *(v64 + 4) = v122;
          _os_log_impl(&dword_1ABA78000, v61, v62, "Knosis.IndexHandler: insufficient access to query index: %s", v64, 0xCu);
          sub_1ABA84B54(v66);
          sub_1ABA7BC34();
          sub_1ABA7BC34();

          v67 = v128;
        }

        else
        {

          v67 = v128;
        }

        sub_1ABA901B8();
        MEMORY[0x1AC5A9410](0xD000000000000039, 0x80000001ABF8DC80);
        sub_1ABD7EAA4(v34);
        v123 = v145[0];
        *v67 = 0;
        *(v67 + 1) = v123;
        result = sub_1ABA84B54(v151);
        break;
    }
  }

  else
  {
    result = sub_1ABA925A4(v145, &qword_1EB4D8178, &qword_1ABF594C8);
    *a3 = xmmword_1ABF592F0;
    a3[2] = 0x80000001ABF8DC60;
  }

  return result;
}

uint64_t sub_1ABD26BE0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    return 0;
  }

  else
  {
    return sub_1ABD26F84(a2, a1);
  }
}

uint64_t sub_1ABD26C08(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1ABF23744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LogSignpost();
  v12 = *a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = a1 + *(v11 + 24);
  v16 = sub_1ABF23764();
  sub_1ABF23794();
  v23 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v7 + 8))(v10, v6);
  }

  if ((v13 & 1) == 0)
  {
    if (v12)
    {
LABEL_9:

      sub_1ABF237C4();

      v18 = v24;
      if ((*(v24 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v5, v2);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v16, v23, v21, v12, v19, v20, 2u);
      MEMORY[0x1AC5AB8B0](v20, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v12 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v12 & 0xFFFFF800) != 0xD800)
  {
    if (v12 >> 16 <= 0x10)
    {
      v12 = &v25;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1ABD26F30()
{
  result = qword_1EB4CFF28[0];
  if (!qword_1EB4CFF28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4CFF28);
  }

  return result;
}

uint64_t sub_1ABD26F84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v28 = v4;
  v29 = v2;
  v27 = v8;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_10:
      if (!*(a1 + 16))
      {
        break;
      }

      v13 = *(*(v2 + 48) + (__clz(__rbit64(v7)) | (v12 << 6)));
      v14 = *(a1 + 40);
      sub_1ABF25234();
      sub_1ABBB4ED8(v30, v13);
      v15 = sub_1ABF25294();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = 0xE400000000000000;
        v20 = 1701736302;
        switch(*(*(a1 + 48) + v17))
        {
          case 1:
            v20 = 0xD000000000000010;
            v19 = 0x80000001ABF7EE20;
            break;
          case 2:
            v19 = 0xE700000000000000;
            v20 = 0x7865646E496F6ELL;
            break;
          case 3:
            v21 = 0x47746E657665;
            goto LABEL_21;
          case 4:
            v20 = 0x79676F6C6F746E6FLL;
            v19 = 0xED00007865646E49;
            break;
          case 5:
            v20 = 0x49747865746E6F63;
            v19 = 0xEC0000007865646ELL;
            break;
          case 6:
            v21 = 0x476C61636F6CLL;
LABEL_21:
            v20 = v21 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
            v19 = 0xEF7865646E496870;
            break;
          case 7:
            v20 = 0xD00000000000001ALL;
            v19 = 0x80000001ABF7EE80;
            break;
          case 8:
            v20 = 0xD000000000000018;
            v19 = 0x80000001ABF7EEA0;
            break;
          default:
            break;
        }

        v22 = 0xE400000000000000;
        v23 = 1701736302;
        switch(v13)
        {
          case 1:
            v23 = 0xD000000000000010;
            v22 = 0x80000001ABF7EE20;
            break;
          case 2:
            v22 = 0xE700000000000000;
            v23 = 0x7865646E496F6ELL;
            break;
          case 3:
            v24 = 0x47746E657665;
            goto LABEL_31;
          case 4:
            v23 = 0x79676F6C6F746E6FLL;
            v22 = 0xED00007865646E49;
            break;
          case 5:
            v23 = 0x49747865746E6F63;
            v22 = 0xEC0000007865646ELL;
            break;
          case 6:
            v24 = 0x476C61636F6CLL;
LABEL_31:
            v23 = v24 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
            v22 = 0xEF7865646E496870;
            break;
          case 7:
            v23 = 0xD00000000000001ALL;
            v22 = 0x80000001ABF7EE80;
            break;
          case 8:
            v23 = 0xD000000000000018;
            v22 = 0x80000001ABF7EEA0;
            break;
          default:
            break;
        }

        if (v20 == v23 && v19 == v22)
        {
          break;
        }

        v26 = sub_1ABF25054();

        if (v26)
        {
          goto LABEL_41;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_43;
        }
      }

LABEL_41:
      v11 = v12;
      v4 = v28;
      v2 = v29;
      v8 = v27;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_43:

    return 0;
  }

LABEL_7:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t InferenceClient.__allocating_init()()
{
  sub_1ABA7D544();
  v0 = swift_allocObject();
  InferenceClient.init()();
  return v0;
}

uint64_t InferenceClient.__allocating_init(serverParameters:)()
{
  sub_1ABA7D544();
  v0 = swift_allocObject();
  InferenceClient.init(serverParameters:)();
  return v0;
}

uint64_t InferenceClient.init(serverParameters:)()
{
  sub_1ABA7DA04();
  v3 = *v2;
  type metadata accessor for InferenceServer();
  v4 = sub_1ABD27500(v3);
  if (v1)
  {
    sub_1ABA7F4E0();
  }

  else
  {
    *(v0 + 16) = v4;
  }

  return v0;
}

uint64_t InferenceClient.__allocating_init(server:)(uint64_t a1)
{
  sub_1ABA7D544();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t InferenceClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

void *sub_1ABD27500(char a1)
{
  v3 = sub_1ABF217F4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_1ABF217E4();
  v7 = v6;
  if (qword_1ED870898 != -1)
  {
    v6 = swift_once();
  }

  v8 = qword_1ED8708A8;
  v9 = unk_1ED8708B0;
  MEMORY[0x1EEE9AC00](v6);
  v13[2] = v7;
  v13[3] = v1;
  type metadata accessor for InferenceServerLifecycleManagerNoOp();
  swift_allocObject();
  v10 = sub_1ABA92F40();
  v14[3] = type metadata accessor for InferenceServerCacheManagerNoOp();
  v14[4] = &off_1F207BA70;
  v14[0] = swift_allocObject();
  type metadata accessor for InferenceServer();
  swift_allocObject();

  v11 = sub_1ABD27750(a1, sub_1ABD27734, v7, v8, v9, sub_1ABA93F68, v13, v10, &off_1F2079E60, v14, MEMORY[0x1E69E7CC0], v7);

  return v11;
}

void *sub_1ABD27750(char a1, void (*a2)(__int128 *__return_ptr), uint64_t a3, void (*a4)(__int128 *__return_ptr), uint64_t a5, void (*a6)(__int128 *__return_ptr, uint64_t *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  v14 = v12;
  *(v12 + 192) = 0;
  sub_1ABA92FFC();
  *(v12 + 16) = sub_1ABF239C4();
  *(v12 + 24) = a1;
  if (a1 < 0)
  {
    v31 = a1 & 1;
    a4(&v27);
    if (!v13)
    {
      v19 = v28;
      v20 = v29;
      v21 = sub_1ABA93E20(&v27, v28);
      v30[3] = v19;
      v30[4] = *(v20 + 16);
      v22 = sub_1ABA93DC0(v30);
      (*(*(v19 - 8) + 16))(v22, v21, v19);
      sub_1ABA84B54(&v27);
      goto LABEL_7;
    }
  }

  else
  {
    a2(&v27);
    if (!v13)
    {
      sub_1ABA946C0(&v27, v30);
LABEL_7:
      sub_1ABA93E64(v30, (v14 + 4));
      a6(&v27, v30);
      sub_1ABA946C0(&v27, (v14 + 16));
      v14[9] = a8;
      v14[10] = a9;
      sub_1ABA93E64(a10, (v14 + 11));
      v14[21] = a11;
      v14[22] = &type metadata for InferenceServiceDefinitionList;
      v14[23] = &protocol witness table for InferenceServiceDefinitionList;
      v14[25] = a12;
      swift_unknownObjectRetain();

      sub_1ABA94ED0();
      swift_unknownObjectRelease();

      sub_1ABA84B54(a10);
      sub_1ABA84B54(v30);
      return v14;
    }
  }

  sub_1ABA84B54(a10);
  swift_unknownObjectRelease();

  v23 = *(v12 + 16);

  v24 = *(v12 + 192);

  type metadata accessor for InferenceServer();
  swift_deallocPartialClassInstance();
  return v14;
}

uint64_t sub_1ABD27A64(uint64_t a1)
{
  v2 = sub_1ABD27BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD27AA0(uint64_t a1)
{
  v2 = sub_1ABD27BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceInterfaceNoError.encode(to:)(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D8198, &qword_1ABF59570);
  sub_1ABA7BB64(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABD27BD0();
  sub_1ABA7C3B8();
  return (*(v4 + 8))(v9, v2);
}

unint64_t sub_1ABD27BD0()
{
  result = qword_1EB4D81A0;
  if (!qword_1EB4D81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D81A0);
  }

  return result;
}

uint64_t sub_1ABD27C98(uint64_t a1)
{
  v2 = sub_1ABD27E1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD27CD4(uint64_t a1)
{
  v2 = sub_1ABD27E1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD27D28(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D81A8, &qword_1ABF59578);
  sub_1ABA7BB64(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABD27E1C();
  sub_1ABA7C3B8();
  return (*(v4 + 8))(v9, v2);
}

unint64_t sub_1ABD27E1C()
{
  result = qword_1EB4D81B0;
  if (!qword_1EB4D81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D81B0);
  }

  return result;
}

uint64_t InferenceInterfaceNoFeedback.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_1ABA84B54(a1);
  return v2;
}

unint64_t sub_1ABD27EEC()
{
  result = qword_1EB4D81B8;
  if (!qword_1EB4D81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D81B8);
  }

  return result;
}

uint64_t sub_1ABD27F60(uint64_t a1)
{
  *(a1 + 8) = sub_1ABD28064(&qword_1EB4D81C0);
  result = sub_1ABD28064(&qword_1EB4D81C8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABD27FEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = InferenceInterfaceNoFeedback.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABD28064(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InferenceInterfaceNoFeedback();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1ABD280C8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABD28210()
{
  result = qword_1EB4D81D0;
  if (!qword_1EB4D81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D81D0);
  }

  return result;
}

unint64_t sub_1ABD28268()
{
  result = qword_1EB4D81D8;
  if (!qword_1EB4D81D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D81D8);
  }

  return result;
}

unint64_t sub_1ABD282C0()
{
  result = qword_1EB4D81E0;
  if (!qword_1EB4D81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D81E0);
  }

  return result;
}

unint64_t sub_1ABD28318()
{
  result = qword_1EB4D81E8;
  if (!qword_1EB4D81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D81E8);
  }

  return result;
}

uint64_t sub_1ABD2836C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = sub_1ABA80CC0();
  v4 = sub_1ABF247E4();
  v5 = sub_1ABA7BB64(v4);
  v48 = v6;
  v49 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v45 - v10;
  v51 = v3;
  v47 = *(v3 - 8);
  v11 = *(v47 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v45 - v13;
  v14 = sub_1ABA80CC0();
  v15 = sub_1ABF247E4();
  sub_1ABA7BB64(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  v23 = *(v14 - 8);
  v24 = *(v23 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v45 - v26;
  v57[0] = a1;
  v28 = a1;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if (swift_dynamicCast())
  {
    sub_1ABA7B9B4(v22, 0, 1, v14);
    v29 = *(v23 + 32);
    v29(v27, v22, v14);
    v29(v52, v27, v14);
    type metadata accessor for InferenceMessageResponseError.ServiceError();
    sub_1ABA7ED80();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for InferenceMessageResponseError();
    sub_1ABA7ED80();
  }

  else
  {
    v30 = v52;
    sub_1ABA7B9B4(v22, 1, 1, v14);
    (*(v17 + 8))(v22, v15);
    v57[0] = a1;
    v31 = a1;
    v32 = v50;
    v33 = v51;
    if (swift_dynamicCast())
    {
      sub_1ABA7B9B4(v32, 0, 1, v33);
      v34 = v46;
      v35 = *(v47 + 32);
      v35(v46, v32, v33);
      v35(v30, v34, v33);
      type metadata accessor for InferenceMessageResponseError.ServiceError();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for InferenceMessageResponseError();
    }

    else
    {
      sub_1ABA7B9B4(v32, 1, 1, v33);
      (*(v48 + 8))(v32, v49);
      v56 = a1;
      v37 = a1;
      sub_1ABAD219C(&qword_1EB4D5790, &unk_1ABF4B3A0);
      v38 = v30;
      if (swift_dynamicCast())
      {
        sub_1ABA946C0(&v53, v57);
        v39 = v58;
        v40 = v59;
        sub_1ABA93E20(v57, v58);
        (*(v40 + 32))(&v53, v39, v40);
        v41 = v55;
        v42 = v54;
        *v38 = v53;
        *(v38 + 1) = v42;
        *(v38 + 32) = v41;
        type metadata accessor for InferenceMessageResponseError();
        sub_1ABA7ED80();
        swift_storeEnumTagMultiPayload();
        return sub_1ABA84B54(v57);
      }

      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      sub_1ABC1B020(&v53);
      v57[0] = a1;
      v43 = a1;
      *v30 = sub_1ABF23C94();
      v30[1] = v44;
      type metadata accessor for InferenceMessageResponseError();
      sub_1ABA7ED80();
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t static InferenceInterfaceList.interfaceWrappers.getter()
{
  sub_1ABAD219C(&qword_1EB4D81F0, &qword_1ABF598F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1ABF34740;
  v1 = sub_1ABAD219C(&qword_1EB4D81F8, &qword_1ABF598F8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_1ABD2894C();
  *(v0 + 32) = v2;
  return v0;
}

unint64_t sub_1ABD2894C()
{
  result = qword_1EB4D8200[0];
  if (!qword_1EB4D8200[0])
  {
    sub_1ABAE2850(&qword_1EB4D81F8, &qword_1ABF598F8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D8200);
  }

  return result;
}

uint64_t static InferenceInterfaceList.interfaceWrapper(for:wrapperId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D81F0, &qword_1ABF598F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  v11 = sub_1ABAD219C(&qword_1EB4D81F8, &qword_1ABF598F8);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(inited + 56) = v11;
  *(inited + 64) = sub_1ABD2894C();
  *(inited + 32) = v12;
  sub_1ABA93E64(inited + 32, &v23);
  sub_1ABA93E20(&v23, v24);
  if (InferenceInterfaceWrapperProtocol.interfaceId.getter() == a1 && v13 == a2)
  {
  }

  else
  {
    v15 = sub_1ABF25054();

    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v16 = v24;
  v17 = v25;
  sub_1ABA93E20(&v23, v24);
  v18 = (*(v17 + 88))(v16, v17);
  if (!v19)
  {
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (!a4)
  {

    goto LABEL_19;
  }

  if (v18 != a3 || v19 != a4)
  {
    v21 = sub_1ABF25054();

    if (v21)
    {
      goto LABEL_21;
    }

LABEL_19:
    sub_1ABA84B54(&v23);
    swift_setDeallocating();
    result = sub_1ABB4DBAC();
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

LABEL_21:

  return sub_1ABA946C0(&v23, a5);
}

_BYTE *storeEnumTagSinglePayload for InferenceInterfaceList(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t InferenceInterfaceDefaultCodableWrapper.__allocating_init(interfaceType:wrapperId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t InferenceInterfaceWrapperProtocol.interfaceId.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1ABD28D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t InferenceInterfaceDefaultCodableWrapper.wrapperId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InferenceInterfaceDefaultCodableWrapper.init(interfaceType:wrapperId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = v3;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return result;
}

uint64_t InferenceInterfaceDefaultCodableWrapper.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t InferenceInterfaceDefaultCodableWrapper.__deallocating_deinit()
{
  InferenceInterfaceDefaultCodableWrapper.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD28E64(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v7 = type metadata accessor for InferenceInterfaceDefaultCodableWrapper();
  return a4(a1, v7, a3);
}

uint64_t InferenceInterfaceCustomCodableWrapper.wrapperId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void *InferenceInterfaceCustomCodableWrapper.__allocating_init(interfaceType:wrapperId:convertInput:convertOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  result[6] = a2;
  result[7] = a3;
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  result[5] = a7;
  return result;
}

void *InferenceInterfaceCustomCodableWrapper.init(interfaceType:wrapperId:convertInput:convertOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = v7;
  v7[6] = a2;
  v7[7] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a6;
  v7[5] = a7;
  return result;
}

uint64_t sub_1ABD28F9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1ABD28FC4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

void *InferenceInterfaceCustomCodableWrapper.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t InferenceInterfaceCustomCodableWrapper.__deallocating_deinit()
{
  InferenceInterfaceCustomCodableWrapper.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD29284(void *a1)
{
  v2 = a1[2];
  result = type metadata accessor for InferenceMessageResponse();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    v6 = a1[6];
    result = type metadata accessor for InferenceMessageResponseError();
    if (v7 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABD29304(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = a3[3];
  v6 = ((*(*(a3[2] - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a3[6];
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 <= v8)
  {
    v9 = v8;
  }

  if (v9 + 1 > 0x21)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 33;
  }

  if (v10 + 1 > v6)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if ((v11 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 254) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      v18 = *(a1 + v11);
      if (v18 >= 2)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return (v12 | v17) + 255;
}

void sub_1ABD294F0(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = a4[3];
  v8 = ((*(*(a4[2] - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a4[6];
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 <= v10)
  {
    v11 = v10;
  }

  if (v11 + 1 > 0x21)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 33;
  }

  if (v12 + 1 > v8)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = v8;
  }

  v14 = v13 + 1;
  v15 = 8 * (v13 + 1);
  if (a3 < 0xFF)
  {
    v16 = 0;
  }

  else if (v14 <= 3)
  {
    v19 = ((a3 + ~(-1 << v15) - 254) >> v15) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (a2 > 0xFE)
  {
    v17 = a2 - 255;
    if (v14 < 4)
    {
      v18 = (v17 >> v15) + 1;
      if (v13 != -1)
      {
        v21 = v17 & ~(-1 << v15);
        bzero(a1, v14);
        if (v14 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v14 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v13 + 1);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v14] = v18;
        break;
      case 2:
        *&a1[v14] = v18;
        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = v18;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v16)
    {
      case 1:
        a1[v14] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      case 2:
        *&a1[v14] = 0;
        goto LABEL_31;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v14] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          a1[v13] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1ABD2976C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABD29830(char a1)
{
  if (a1)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1ABD29864(void *a1, void *a2)
{
  v76 = a1;
  v3 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v5 = a2[5];
  v8 = a2[6];
  v7 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  v79 = a2[10];
  v80 = v10;
  v89 = v3;
  v90 = v4;
  v91 = v6;
  v92 = v5;
  v98 = v6;
  v93 = v8;
  v94 = v7;
  v81 = v7;
  v82 = v5;
  v95 = v9;
  v96 = v10;
  v11 = v9;
  v97 = v79;
  sub_1ABA839D4();
  v12 = type metadata accessor for InferenceMessageRemoteServerResponse.ErrorCodingKeys();
  sub_1ABA80CE0();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v69 = v12;
  v68 = v13;
  v14 = sub_1ABF24FC4();
  sub_1ABA8E5AC(v14, &v101);
  v74 = v15;
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v19);
  v20 = type metadata accessor for InferenceMessageResponseError();
  sub_1ABA8E5AC(v20, &v99);
  v72 = v21;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v25);
  v89 = v3;
  v90 = v4;
  v91 = v6;
  v92 = v82;
  v93 = v8;
  v94 = v7;
  v95 = v11;
  v26 = v11;
  v96 = v10;
  v97 = v79;
  sub_1ABA839D4();
  v27 = type metadata accessor for InferenceMessageRemoteServerResponse.SuccessCodingKeys();
  sub_1ABA7F500();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v62[1] = v27;
  v62[0] = v28;
  v29 = sub_1ABF24FC4();
  sub_1ABA8E5AC(v29, &v96);
  v67 = v30;
  v32 = *(v31 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v34);
  v35 = type metadata accessor for InferenceMessageResponse();
  sub_1ABA8E5AC(v35, &v94);
  v65 = v36;
  v38 = *(v37 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v40);
  v41 = *(a2 - 1);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v45 = v62 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v3;
  v90 = v4;
  v91 = v98;
  v92 = v82;
  v93 = v8;
  v94 = v81;
  v75 = v26;
  v95 = v26;
  v96 = v10;
  v97 = v79;
  sub_1ABA839D4();
  type metadata accessor for InferenceMessageRemoteServerResponse.CodingKeys();
  v46 = sub_1ABA7C3D8();
  sub_1ABA7F418();
  v47 = sub_1ABF24FC4();
  sub_1ABA8E5AC(v47, &v102);
  v78 = v48;
  v50 = *(v49 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v51);
  v53 = v62 - v52;
  v54 = v76[3];
  sub_1ABA93E20(v76, v54);
  sub_1ABF252E4();
  (*(v41 + 16))(v45, v77, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = v72;
    v56 = v70;
    v57 = v73;
    (*(v72 + 32))(v70, v45, v73);
    LOBYTE(v89) = 1;
    v58 = v71;
    sub_1ABA99474();
    sub_1ABF24EC4();
    v85 = v81;
    v86 = v75;
    v87 = v80;
    v88 = v79;
    swift_getWitnessTable();
    sub_1ABA908BC(&v101);
    v59 = &v100;
  }

  else
  {
    v55 = v65;
    v56 = v63;
    v57 = v66;
    (*(v65 + 32))(v63, v45, v66);
    LOBYTE(v89) = 0;
    v58 = v64;
    sub_1ABA99474();
    sub_1ABF24EC4();
    v83 = v98;
    v84 = v82;
    swift_getWitnessTable();
    sub_1ABA908BC(&v96);
    v59 = &v95;
  }

  sub_1ABA9364C(v59);
  v60(v58, v54);
  (*(v55 + 8))(v56, v57);
  return (*(v78 + 8))(v53, v46);
}

uint64_t sub_1ABD29E48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v117 = a1;
  v108 = a9;
  v134 = a11;
  v118 = a10;
  *&v127 = a2;
  *(&v127 + 1) = a3;
  v116 = a2;
  *&v128 = a4;
  *(&v128 + 1) = a5;
  v129 = a6;
  v130 = a7;
  v131 = a8;
  v132 = a10;
  v133 = a11;
  sub_1ABA839D4();
  v18 = type metadata accessor for InferenceMessageRemoteServerResponse.ErrorCodingKeys();
  sub_1ABA80CE0();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v107 = v18;
  v106 = v19;
  v20 = sub_1ABF24EB4();
  sub_1ABA8E5AC(v20, &v129);
  v98 = v21;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v25);
  *&v127 = a2;
  *(&v127 + 1) = a3;
  *&v128 = a4;
  *(&v128 + 1) = a5;
  v26 = a5;
  v129 = a6;
  v130 = a7;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v131 = a8;
  v132 = a10;
  v30 = v134;
  v133 = v134;
  sub_1ABA839D4();
  v31 = type metadata accessor for InferenceMessageRemoteServerResponse.SuccessCodingKeys();
  sub_1ABA7F500();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v104 = v31;
  v103 = v32;
  v33 = sub_1ABF24EB4();
  sub_1ABA8E5AC(v33, &v126);
  v94 = v34;
  v36 = *(v35 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v38);
  *&v127 = v116;
  *(&v127 + 1) = a3;
  *&v128 = a4;
  *(&v128 + 1) = v26;
  v129 = v27;
  v130 = v28;
  v131 = v29;
  v132 = a10;
  v133 = v30;
  sub_1ABA839D4();
  type metadata accessor for InferenceMessageRemoteServerResponse.CodingKeys();
  v114 = sub_1ABA7C3D8();
  sub_1ABA7F418();
  v39 = sub_1ABF24EB4();
  sub_1ABA8E5AC(v39, &v135);
  v112 = v40;
  v42 = *(v41 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v90 - v44;
  *&v127 = v116;
  *(&v127 + 1) = a3;
  v96 = a3;
  v97 = a4;
  *&v128 = a4;
  *(&v128 + 1) = v26;
  v111 = v26;
  v99 = v27;
  v129 = v27;
  v130 = v28;
  v100 = v28;
  v102 = v29;
  v131 = v29;
  v132 = a10;
  v133 = v134;
  v46 = type metadata accessor for InferenceMessageRemoteServerResponse();
  v93 = *(v46 - 8);
  v47 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v90 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v90 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v90 - v54;
  v56 = v117[4];
  sub_1ABA93E20(v117, v117[3]);
  v109 = v45;
  v57 = v115;
  sub_1ABF252C4();
  if (!v57)
  {
    v92 = v49;
    v114 = v52;
    v91 = v55;
    v58 = v110;
    v59 = v111;
    v115 = v46;
    v60 = v109;
    *&v125 = sub_1ABF24EA4();
    sub_1ABA7F418();
    sub_1ABF241F4();
    swift_getWitnessTable();
    *&v127 = sub_1ABF24914();
    *(&v127 + 1) = v61;
    *&v128 = v62;
    *(&v128 + 1) = v63;
    sub_1ABA7F418();
    sub_1ABF24904();
    swift_getWitnessTable();
    sub_1ABF244C4();
    v64 = v125;
    v65 = v60;
    if (v125 == 2 || (v90 = v127, v125 = v127, v126 = v128, (sub_1ABF24574() & 1) == 0))
    {
      v69 = sub_1ABF24B44();
      swift_allocError();
      v71 = v70;
      v72 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
      *v71 = v115;
      v73 = v113;
      sub_1ABF24DA4();
      sub_1ABF24B34();
      (*(*(v69 - 8) + 104))(v71, *MEMORY[0x1E69E6AF8], v69);
      swift_willThrow();
      v74 = sub_1ABA7DA18();
      v75(v74, v73);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v64)
      {
        LOBYTE(v125) = 1;
        v66 = v58;
        v67 = v113;
        sub_1ABF24D94();
        v68 = v108;
        type metadata accessor for InferenceMessageResponseError();
        v121 = v100;
        v122 = v102;
        v123 = v118;
        v124 = v134;
        swift_getWitnessTable();
        v80 = v92;
        v81 = v101;
        v82 = v66;
        sub_1ABF24E64();
        v83 = v112;
        sub_1ABA9364C(&v127 + 8);
        v87(v66, v81);
        (*(v83 + 8))(v65, v67);
      }

      else
      {
        LOBYTE(v125) = 0;
        v76 = v105;
        v77 = v113;
        sub_1ABF24D94();
        v68 = v108;
        type metadata accessor for InferenceMessageResponse();
        v119 = v97;
        v120 = v59;
        swift_getWitnessTable();
        v80 = v114;
        v78 = v95;
        v82 = v76;
        sub_1ABF24E64();
        sub_1ABA9364C(&v125 + 8);
        v84(v76, v78);
        v85 = sub_1ABA7DA18();
        v86(v85, v77);
      }

      sub_1ABA901D8();
      swift_unknownObjectRelease();
      sub_1ABAA60F0();
      swift_storeEnumTagMultiPayload();
      v88 = *(v93 + 32);
      v89 = v91;
      v88(v91, v80, v82);
      v88(v68, v89, v82);
    }
  }

  return sub_1ABA84B54(v117);
}

BOOL sub_1ABD2A72C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v8 = *(a3 + 56);
  v11 = *(a3 + 80);
  v10 = *(a3 + 64);
  return sub_1ABAB6DB0(*a1, *a2);
}

uint64_t sub_1ABD2A778(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  v11 = a1[10];
  return sub_1ABB0A454(*v1);
}

uint64_t sub_1ABD2A7B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v11 = *(a2 + 80);
  v10 = *(a2 + 64);
  return sub_1ABAB8190(a1, *v2);
}

uint64_t sub_1ABD2A7FC(uint64_t a1, uint64_t a2)
{
  sub_1ABF25234();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v12 = *(a2 + 80);
  v11 = *(a2 + 64);
  sub_1ABAB8190(v13, *v2);
  return sub_1ABF25294();
}

uint64_t sub_1ABD2A85C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  v11 = a1[10];
  return sub_1ABD29830(*v1);
}

uint64_t sub_1ABD2A89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v9 = *(a3 + 48);
  v10 = *(a3 + 56);
  v13 = *(a3 + 80);
  v12 = *(a3 + 64);
  result = sub_1ABD2976C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1ABD2A8EC(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a1[10];
  return sub_1ABACA7A4();
}

uint64_t sub_1ABD2A930@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a1[10];
  result = sub_1ABB01724();
  *a2 = result;
  return result;
}

uint64_t sub_1ABD2A97C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2A9D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2AAB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2AB08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2ABA4(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v10 = a1[10];
  return _s20IntelligencePlatform34LocationEmbedderInferenceInterfaceO6ErrorsO8RunErrorO9hashValueSivg_0();
}

uint64_t sub_1ABD2ABE0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  sub_1ABA8C1C8(a1, a2);
  return v4();
}

uint64_t sub_1ABD2AC14(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void, void, void, uint64_t, void))
{
  sub_1ABF25234();
  v6 = a2[9];
  a4(v8, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], v6, a2[10]);
  return sub_1ABF25294();
}

uint64_t sub_1ABD2AC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v9 = *(a3 + 48);
  v10 = *(a3 + 56);
  v13 = *(a3 + 80);
  v12 = *(a3 + 64);
  result = sub_1ABB0307C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1ABD2AD1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a2[2];
  v4 = a2[3];
  sub_1ABA8C1C8(a1, a2);
  result = v6();
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABD2AD64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2ADB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

_BYTE *sub_1ABD2AEA8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABD2AF74(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1ABD2B128(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABD2B1A0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1ABA7E1E0(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 25;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1ABD2B2F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
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
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0;
              *(v17 + 16) = 0;
              *(v17 + 24) = 0;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 8) = (a2 - 1);
            }
          }

          else
          {

            sub_1ABA7B9B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 25);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABD2B514@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = *(a4 - 8);
  (*(v14 + 16))(a7, a1, a4);
  v15 = (*(a6 + 56))(a5, a6);
  v17 = v16;
  (*(v14 + 8))(a1, a4);
  result = type metadata accessor for InferenceMessageRequest();
  v19 = a7 + *(result + 28);
  *v19 = v15;
  *(v19 + 8) = v17;
  *(v19 + 16) = a2;
  *(v19 + 24) = a3 & 1;
  return result;
}

uint64_t sub_1ABD2B620(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697469646461 && a2 == 0xEE006F666E496C61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABD2B6EC(char a1)
{
  if (a1)
  {
    return 0x6E6F697469646461;
  }

  else
  {
    return 0x7475706E69;
  }
}

void sub_1ABD2B72C()
{
  sub_1ABA7BCA8();
  v23 = v2;
  v24 = v1;
  v21 = v3;
  v22 = v0;
  v5 = v4;
  v6 = *(v3 + 16);
  type metadata accessor for InferenceMessageRequest.CodingKeys();
  sub_1ABA7DA2C();
  swift_getWitnessTable();
  v7 = sub_1ABF24FC4();
  sub_1ABA7BB64(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = v5[4];
  sub_1ABA93E20(v5, v5[3]);
  v16 = v22;
  sub_1ABF252E4();
  LOBYTE(v25) = 0;
  v17 = v24;
  sub_1ABF24F84();
  if (!v17)
  {
    v18 = (v16 + *(v21 + 28));
    v19 = *v18;
    v20 = *(v18 + 2);
    LOBYTE(v18) = *(v18 + 24);
    v25 = v19;
    v26 = v20;
    v27 = v18;
    sub_1ABD2C714();
    sub_1ABF24F84();
  }

  (*(v9 + 8))(v14, v7);
  sub_1ABA7BC90();
}

void sub_1ABD2B8CC()
{
  sub_1ABA7BCA8();
  v39 = v0;
  v2 = v1;
  v4 = v3;
  v33 = v5;
  v35 = *(v1 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InferenceMessageRequest.CodingKeys();
  sub_1ABA7DA2C();
  swift_getWitnessTable();
  v37 = sub_1ABF24EB4();
  sub_1ABA7BB64(v37);
  v34 = v9;
  v11 = *(v10 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v13 = type metadata accessor for InferenceMessageRequest();
  sub_1ABA7BB64(v13);
  v32 = v14;
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = v4[4];
  sub_1ABA93E20(v4, v4[3]);
  v21 = v39;
  sub_1ABF252C4();
  if (v21)
  {
    sub_1ABA84B54(v4);
  }

  else
  {
    v39 = v13;
    v22 = v35;
    LOBYTE(v40) = 0;
    sub_1ABF24E64();
    v23 = *(v22 + 32);
    v36 = v19;
    v23(v19, v38, v2);
    sub_1ABD2C6C0();
    sub_1ABF24E64();
    v24 = sub_1ABA93658();
    v25(v24);
    v26 = v41;
    v27 = v42;
    v28 = v39;
    v29 = v36;
    v30 = &v36[*(v39 + 28)];
    *v30 = v40;
    *(v30 + 2) = v26;
    v30[24] = v27;
    v31 = v32;
    (*(v32 + 16))(v33, v29, v28);
    sub_1ABA84B54(v4);
    (*(v31 + 8))(v29, v28);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABD2BC14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6361667265746E69 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7645746E65726170 && a2 == 0xED00006449746E65)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABD2BCE8(char a1)
{
  if (a1)
  {
    return 0x7645746E65726170;
  }

  else
  {
    return 0x6361667265746E69;
  }
}

void sub_1ABD2BD34()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(qword_1EB4D8528, qword_1ABF5A030);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7ED98();
  v10 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABD2C768();
  sub_1ABF252E4();
  sub_1ABF24F34();
  if (!v0)
  {
    sub_1ABF24F24();
  }

  (*(v6 + 8))(v1, v4);
  sub_1ABA7BC90();
}

void sub_1ABD2BE90()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D8518, &qword_1ABF5A028);
  sub_1ABA7BB64(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7ED98();
  v7 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABD2C768();
  sub_1ABA7E878();
  if (!v0)
  {
    sub_1ABF24E14();
    sub_1ABF24E04();
    v8 = sub_1ABA7BCF0();
    v9(v8);
  }

  sub_1ABA84B54(v2);
  sub_1ABA7BC90();
}

uint64_t sub_1ABD2C020(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697469646461 && a2 == 0xEE006F666E496C61)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1ABD2C0C4()
{
  sub_1ABA7BCA8();
  v19 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1ABAD219C(&qword_1EB4D85D8, &qword_1ABF5A310);
  sub_1ABA7BB64(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v18 - v15;
  v17 = v8[4];
  sub_1ABA93E20(v8, v8[3]);
  sub_1ABD2CBDC();
  sub_1ABF252E4();
  v20 = v6;
  v21 = v4;
  v22 = v2;
  v23 = v19 & 1;
  sub_1ABD2C714();
  sub_1ABF24F84();
  (*(v11 + 8))(v16, v9);
  sub_1ABA7BC90();
}

void *sub_1ABD2C210(uint64_t *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D85C8, &qword_1ABF5A308);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7ED98();
  v10 = a1[4];
  v11 = sub_1ABA93E20(a1, a1[3]);
  sub_1ABD2CBDC();
  sub_1ABA7E878();
  if (v1)
  {
    sub_1ABA84B54(a1);
  }

  else
  {
    sub_1ABD2C6C0();
    sub_1ABF24E64();
    (*(v6 + 8))(v2, v4);
    v11 = v13;
    sub_1ABA84B54(a1);
  }

  return v11;
}

uint64_t sub_1ABD2C398(uint64_t a1, uint64_t a2)
{
  sub_1ABF25234();
  v4 = *(a2 + 16);
  sub_1ABAB8190(v6, *v2);
  return sub_1ABF25294();
}

uint64_t sub_1ABD2C3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_1ABD2B620(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1ABD2C41C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_1ABACA7A4();
}

uint64_t sub_1ABD2C444@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1ABB01724();
  *a2 = result;
  return result;
}

uint64_t sub_1ABD2C470(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2C4C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void sub_1ABD2C518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  sub_1ABD2B8CC();
}

uint64_t sub_1ABD2C55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD2BC14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD2C584(uint64_t a1)
{
  v2 = sub_1ABD2C768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD2C5C0(uint64_t a1)
{
  v2 = sub_1ABD2C768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABD2C5FC(uint64_t a1@<X8>)
{
  sub_1ABD2BE90();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6 & 1;
  }
}

void sub_1ABD2C634()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1ABD2BD34();
}

uint64_t sub_1ABD2C658(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(v2 + 24);

  return v3;
}

unint64_t sub_1ABD2C6C0()
{
  result = qword_1EB4D8508;
  if (!qword_1EB4D8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8508);
  }

  return result;
}

unint64_t sub_1ABD2C714()
{
  result = qword_1EB4D8510;
  if (!qword_1EB4D8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8510);
  }

  return result;
}

unint64_t sub_1ABD2C768()
{
  result = qword_1EB4D8520;
  if (!qword_1EB4D8520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8520);
  }

  return result;
}

uint64_t sub_1ABD2C7BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD2C7FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1ABD2C868(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABD2C954()
{
  result = qword_1EB4D85B0;
  if (!qword_1EB4D85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D85B0);
  }

  return result;
}

uint64_t sub_1ABD2C9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD2C020(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABD2C9D8(uint64_t a1)
{
  v2 = sub_1ABD2CBDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD2CA14(uint64_t a1)
{
  v2 = sub_1ABD2CBDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD2CA50()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);

  return v1;
}

void *sub_1ABD2CA98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1ABD2C210(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

void sub_1ABD2CAD0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1ABD2C0C4();
}

unint64_t sub_1ABD2CAF8()
{
  result = qword_1EB4D85B8;
  if (!qword_1EB4D85B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D85B8);
  }

  return result;
}

unint64_t sub_1ABD2CB50()
{
  result = qword_1EB4D85C0;
  if (!qword_1EB4D85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D85C0);
  }

  return result;
}

unint64_t sub_1ABD2CBDC()
{
  result = qword_1EB4D85D0;
  if (!qword_1EB4D85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D85D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceFullRequestBase.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABD2CCE0()
{
  result = qword_1EB4D85E0;
  if (!qword_1EB4D85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D85E0);
  }

  return result;
}

unint64_t sub_1ABD2CD38()
{
  result = qword_1EB4D85E8;
  if (!qword_1EB4D85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D85E8);
  }

  return result;
}

unint64_t sub_1ABD2CD90()
{
  result = qword_1EB4D85F0[0];
  if (!qword_1EB4D85F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D85F0);
  }

  return result;
}

uint64_t sub_1ABD2CDF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1ABD2CE68(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1ABA7E1E0(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1ABA7E1E0(result, v5, v4);
}

void sub_1ABD2CF6C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1ABA7B9B4(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABD2D11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for InferenceMessageResponse();
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t sub_1ABD2D190(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74757074756FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E657665 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABD2D254(char a1)
{
  if (a1)
  {
    return 0x6449746E657665;
  }

  else
  {
    return 0x74757074756FLL;
  }
}

uint64_t sub_1ABD2D288(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[2] = a4;
  v19[0] = a2;
  v5 = *(a2 + 16);
  type metadata accessor for InferenceMessageResponse.CodingKeys();
  sub_1ABA8F5A0();
  swift_getWitnessTable();
  v6 = sub_1ABF24FC4();
  sub_1ABA7BD7C();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  v14 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  v15 = v19[1];
  sub_1ABF252E4();
  v21 = 0;
  v16 = v19[3];
  sub_1ABF24F84();
  if (!v16)
  {
    v17 = *(v15 + *(v19[0] + 28));
    v20 = 1;
    sub_1ABF24FA4();
  }

  return (*(v8 + 8))(v13, v6);
}

uint64_t sub_1ABD2D414@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v34 = a4;
  sub_1ABA7BD7C();
  v36 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InferenceMessageResponse.CodingKeys();
  sub_1ABA8F5A0();
  swift_getWitnessTable();
  v37 = sub_1ABF24EB4();
  sub_1ABA7BD7C();
  v35 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = type metadata accessor for InferenceMessageResponse();
  sub_1ABA7BD7C();
  v33 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v22 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  v23 = v40;
  sub_1ABF252C4();
  if (v23)
  {
    return sub_1ABA84B54(a1);
  }

  v40 = v15;
  v24 = v36;
  v42 = 0;
  sub_1ABF24E64();
  v25 = *(v24 + 32);
  v38 = v21;
  v25(v21, v39, a2);
  v41 = 1;
  v26 = sub_1ABF24E84();
  v27 = sub_1ABA7F518();
  v28(v27);
  v29 = v40;
  v30 = v38;
  *&v38[*(v40 + 28)] = v26;
  v31 = v33;
  (*(v33 + 16))(v34, v30, v29);
  sub_1ABA84B54(a1);
  return (*(v31 + 8))(v30, v29);
}

uint64_t sub_1ABD2D760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_1ABD2D190(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1ABD2D78C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2D7E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

_BYTE *sub_1ABD2D888(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABD2D9A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7272456E7572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F72724574696E69 && a2 == 0xE900000000000072)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABD2DA78(char a1)
{
  if (a1)
  {
    return 0x6F72724574696E69;
  }

  else
  {
    return 0x726F7272456E7572;
  }
}

uint64_t sub_1ABD2DAB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4565636976726573 && a2 == 0xEC000000726F7272;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7245726576726573 && a2 == 0xEB00000000726F72;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x456E776F6E6B6E75 && a2 == 0xEC000000726F7272)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABD2DBD4(char a1)
{
  if (!a1)
  {
    return 0x4565636976726573;
  }

  if (a1 == 1)
  {
    return 0x7245726576726573;
  }

  return 0x456E776F6E6B6E75;
}

uint64_t sub_1ABD2DC38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1ABB0A454(*v1);
}

uint64_t sub_1ABD2DC48(uint64_t a1, uint64_t a2)
{
  sub_1ABF25234();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1ABAB8190(v7, *v2);
  return sub_1ABF25294();
}

uint64_t sub_1ABD2DC90(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1ABD2DA78(*v1);
}

uint64_t sub_1ABD2DCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1ABD2D9A8(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1ABD2DCD0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1ABACA7A4();
}

uint64_t sub_1ABD2DCF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2DD4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2DDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return sub_1ABA7E270();
}

uint64_t sub_1ABD2DDC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1ABB01C4C();
}

uint64_t sub_1ABD2DDE4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_1ABA7E270();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1ABD2DE18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2DE6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2DEC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2DF14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2DF68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1ABD2DBD4(*v1);
}

uint64_t sub_1ABD2DF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1ABD2DAB4(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1ABD2DFA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2DFF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2E04C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2E0A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2E0F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2E148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD2E19C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void))
{
  sub_1ABF25234();
  a4(v7, *(a2 + 16), *(a2 + 24));
  return sub_1ABF25294();
}

uint64_t sub_1ABD2E210(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD2E264(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void InferenceMessageResponseError.ServiceError<>.encode(to:)()
{
  sub_1ABA7BCA8();
  v79 = v0;
  v80 = v1;
  v75 = v2;
  v76 = v3;
  v5 = v4;
  v7 = v6;
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  sub_1ABAA4A44();
  inited = type metadata accessor for InferenceMessageResponseError.ServiceError.InitErrorCodingKeys();
  sub_1ABA839E0();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v72 = inited;
  v68 = v11;
  v12 = sub_1ABF24FC4();
  v13 = sub_1ABA7BB64(v12);
  v73 = v14;
  v74 = v13;
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7FBE0();
  v70 = v18;
  sub_1ABAA3D38();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v69 = v19;
  v21 = *(v20 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7FBE0();
  v67 = v23;
  sub_1ABAA4A44();
  v24 = type metadata accessor for InferenceMessageResponseError.ServiceError.RunErrorCodingKeys();
  sub_1ABA7E89C();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v64 = v24;
  v60 = v25;
  v26 = sub_1ABF24FC4();
  v27 = sub_1ABA7BB64(v26);
  v65 = v28;
  v66 = v27;
  v30 = *(v29 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7FBE0();
  v62 = v32;
  sub_1ABAA3D38();
  v63 = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(v63);
  v61 = v33;
  v35 = *(v34 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7FBE0();
  v59 = v37;
  v38 = *(v5 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v58 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABAA4A44();
  type metadata accessor for InferenceMessageResponseError.ServiceError.CodingKeys();
  sub_1ABA8C1E0();
  swift_getWitnessTable();
  sub_1ABA7DA44();
  v43 = sub_1ABF24FC4();
  v77 = sub_1ABA7BB64(v43);
  v78 = v44;
  v46 = *(v45 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v58 - v48;
  v50 = v7[4];
  sub_1ABA93E20(v7, v7[3]);
  sub_1ABF252E4();
  (*(v38 + 16))(v42, v79, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = v69;
    v52 = v67;
    v53 = AssociatedTypeWitness;
    (*(v69 + 32))(v67, v42, AssociatedTypeWitness);
    v54 = v70;
    v55 = v77;
    sub_1ABF24EC4();
    v56 = v74;
    sub_1ABAA3D38();
    sub_1ABF24F84();
    v57 = v73;
  }

  else
  {
    v51 = v61;
    v52 = v59;
    v53 = v63;
    (*(v61 + 32))(v59, v42, v63);
    v54 = v62;
    v55 = v77;
    sub_1ABF24EC4();
    v56 = v66;
    sub_1ABAA3D38();
    sub_1ABF24F84();
    v57 = v65;
  }

  (*(v57 + 8))(v54, v56);
  (*(v51 + 8))(v52, v53);
  (*(v78 + 8))(v49, v55);
  sub_1ABA7BC90();
}

void InferenceMessageResponseError.ServiceError<>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v110 = v20;
  v98 = v23;
  v97 = v24;
  v26 = v25;
  v28 = v27;
  v115 = v29;
  v92 = v30;
  inited = type metadata accessor for InferenceMessageResponseError.ServiceError.InitErrorCodingKeys();
  sub_1ABA839E0();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v103 = v32;
  v104 = inited;
  v96 = sub_1ABF24EB4();
  sub_1ABA7BB64(v96);
  v95 = v33;
  v35 = *(v34 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7FBE0();
  v105 = v37;
  sub_1ABAA3950();
  v38 = type metadata accessor for InferenceMessageResponseError.ServiceError.RunErrorCodingKeys();
  sub_1ABA7E89C();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v100 = v39;
  v101 = v38;
  v94 = sub_1ABF24EB4();
  sub_1ABA7BB64(v94);
  v93 = v40;
  v42 = *(v41 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA7FBE0();
  v102 = v44;
  sub_1ABAA3950();
  type metadata accessor for InferenceMessageResponseError.ServiceError.CodingKeys();
  sub_1ABA8C1E0();
  swift_getWitnessTable();
  v107 = sub_1ABF24EB4();
  sub_1ABA7BB64(v107);
  v109 = v45;
  v47 = *(v46 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v88 - v49;
  v108 = v28;
  v99 = v26;
  v51 = type metadata accessor for InferenceMessageResponseError.ServiceError();
  v52 = sub_1ABA7BB64(v51);
  v91 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v88 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v88 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v88 - v62;
  v64 = v115[4];
  sub_1ABA93E20(v115, v115[3]);
  v106 = v50;
  v65 = v110;
  sub_1ABF252C4();
  if (!v65)
  {
    v90 = v57;
    v110 = v60;
    v89 = v63;
    v66 = v107;
    v67 = v106;
    *&v111 = sub_1ABF24EA4();
    sub_1ABF241F4();
    sub_1ABA8F18C();
    swift_getWitnessTable();
    *&v113 = sub_1ABF24914();
    *(&v113 + 1) = v68;
    *&v114 = v69;
    *(&v114 + 1) = v70;
    sub_1ABF24904();
    sub_1ABA8EAA8();
    swift_getWitnessTable();
    sub_1ABF244C4();
    v71 = v111;
    if (v111 == 2 || (v88 = v113, v111 = v113, v112 = v114, (sub_1ABF24574() & 1) == 0))
    {
      v75 = sub_1ABF24B44();
      swift_allocError();
      v77 = v76;
      v78 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
      *v77 = v51;
      sub_1ABF24DA4();
      sub_1ABAA4128();
      (*(*(v75 - 8) + 104))(v77, *MEMORY[0x1E69E6AF8], v75);
      swift_willThrow();
      (*(v109 + 8))(v67, v66);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v71)
      {
        LOBYTE(v111) = 1;
        v72 = v105;
        sub_1ABF24D94();
        swift_getAssociatedTypeWitness();
        v73 = v90;
        v74 = v96;
        sub_1ABF24E64();
        sub_1ABA9364C(&a15);
        v81(v72, v74);
      }

      else
      {
        LOBYTE(v111) = 0;
        v79 = v102;
        sub_1ABF24D94();
        swift_getAssociatedTypeWitness();
        v73 = v110;
        v80 = v94;
        sub_1ABA8E300();
        sub_1ABF24E64();
        sub_1ABA9364C(&a13);
        v84(v79, v80);
      }

      v82 = sub_1ABA97C00();
      v83(v82);
      sub_1ABAA58EC();
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v85 = v92;
      v86 = *(v91 + 32);
      v87 = v89;
      v86(v89, v73, v51);
      v86(v85, v87, v51);
    }
  }

  sub_1ABA84B54(v115);
  sub_1ABA7BC90();
}