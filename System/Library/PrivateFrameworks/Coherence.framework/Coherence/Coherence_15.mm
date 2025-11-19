uint64_t (*SharedTagged_9.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t SharedTagged_9.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_9.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_9.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_9.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_9, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_9, a5);
}

uint64_t SharedTagged_9.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 0;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_9();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 1;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_9();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 2;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_9();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 3;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_9();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 4;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_9();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 5;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_9();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 6;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_9();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 7;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_9();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 8;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_9();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

uint64_t SharedTagged_9.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 0;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_9();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 1;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_9();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 2;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_9();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 3;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_9();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 4;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_9();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 5;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_9();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 6;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_9();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 7;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_9();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 8;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_9();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

uint64_t SharedTagged_9.init<A>(_:_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_9();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 1;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_9();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 2;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_9();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 3;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_9();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 4;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_9();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 5;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_9();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 6;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_9();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 7;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_9();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 8;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_9();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

uint64_t SharedTagged_9.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for WeakTagged_9() + 36);
  v5 = *(type metadata accessor for SharedTagged_9() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t SharedTagged_9.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0])
  {
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  else
  {
    v12 = *v2;
    v13 = v3[1];
    v14.n128_u64[0] = v12;
    v14.n128_u64[1] = v13;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t SharedTagged_9.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 1)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_9.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 2)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_9.tagged4.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 3)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_9.tagged5.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 4)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_9.tagged6.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 5)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_9.tagged7.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 6)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_9.tagged8.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 7)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_9.unknown.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_i64[0] >= 9)
  {
    v11 = *v2;
    v12 = v3[1];
    v14.n128_u64[0] = v11;
    v14.n128_u64[1] = v12;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15;
    result = sub_1ADDD86D8(v11, v12);
    v10 = v13;
  }

  else
  {
    v10 = xmmword_1AE2427C0;
  }

  *a2 = v10;
  return result;
}

uint64_t SharedTagged_9.any.getter@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v8, &v15);
  v9 = *v2;
  v10 = v3[1];
  v12.n128_u64[0] = v9;
  v12.n128_u64[1] = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  a2[1].n128_u64[1] = type metadata accessor for Ref();
  a2[2].n128_u64[0] = swift_getWitnessTable();
  Ref.init(id:)(&v12, a2);
  return sub_1ADDD86D8(v9, v10);
}

uint64_t SharedTagged_9.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a4;
  v89 = a1;
  v90 = a3;
  v91 = a5;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = v69 - v10;
  v78 = swift_getAssociatedTypeWitness();
  v11 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v69 - v12;
  v76 = swift_getAssociatedTypeWitness();
  v13 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v75 = v69 - v14;
  v74 = swift_getAssociatedTypeWitness();
  v15 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v69 - v16;
  v72 = swift_getAssociatedTypeWitness();
  v17 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v69 - v18;
  v70 = swift_getAssociatedTypeWitness();
  v19 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69[1] = v69 - v20;
  v84 = swift_getAssociatedTypeWitness();
  v21 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = v69 - v22;
  v82 = swift_getAssociatedTypeWitness();
  v23 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v81 = v69 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v27 = swift_getAssociatedTypeWitness();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v29 = *(a2 + 36);
  v30 = swift_getAssociatedTypeWitness();
  v87 = v8;
  v88 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v93.n128_u64[0] = v30;
  v93.n128_u64[1] = AssociatedConformanceWitness;
  v94 = &protocol witness table for Int;
  v95 = MEMORY[0x1E69E6540];
  v32 = type metadata accessor for CRExtensible();
  v33 = v5;
  v34 = v86;
  CRExtensible.rawValue.getter(v32, &v96);
  v85 = v34 + 8;
  if (v96 <= 3)
  {
    v40 = v25;
    if (v96 > 1)
    {
      v47 = v5[1];
      v92.n128_u64[0] = *v33;
      v46 = v92.n128_u64[0];
      v92.n128_u64[1] = v47;
      if (v96 == 2)
      {
        v55 = v82;
        v56 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v92, &v93);
        v92 = v93;
        v57 = v34;
        v58 = *(v34 + 8);
        sub_1ADDD86D8(v46, v47);
        v58(&v92, v55, v56, v90, v57);
      }

      else
      {
        v48 = v84;
        v49 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v92, &v93);
        v92 = v93;
        v50 = *(v34 + 8);
        sub_1ADDD86D8(v46, v47);
        v50(&v92, v48, v49, v90, v34);
      }

      sub_1ADDCC35C(v92.n128_i64[0], v92.n128_u64[1]);
      swift_getAssociatedTypeWitness();
    }

    else
    {
      if (!v96)
      {
        v53 = v5[1];
        v92.n128_u64[0] = *v33;
        v54 = v92.n128_u64[0];
        v92.n128_u64[1] = v53;
        v37 = v27;
        v38 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v92, &v93);
        v92 = v93;
        v39 = *(v34 + 8);
        sub_1ADDD86D8(v54, v53);
        goto LABEL_23;
      }

      if (v96 != 1)
      {
LABEL_22:
        v67 = v5[1];
        v92.n128_u64[0] = *v33;
        v66 = v92.n128_u64[0];
        v92.n128_u64[1] = v67;
        v37 = AssociatedTypeWitness;
        v38 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v92, &v93);
        v92 = v93;
        v39 = *(v34 + 8);
        sub_1ADDD86D8(v66, v67);
        goto LABEL_23;
      }

      v41 = *v5;
      v42 = v33[1];
      v92.n128_u64[0] = v41;
      v92.n128_u64[1] = v42;
      v43 = v34;
      v44 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v92, &v93);
      v92 = v93;
      v45 = *(v43 + 8);
      sub_1ADDD86D8(v41, v42);
      v45(&v92, v40, v44, v90, v43);
      sub_1ADDCC35C(v92.n128_i64[0], v92.n128_u64[1]);
      swift_getAssociatedTypeWitness();
    }
  }

  else
  {
    if (v96 <= 5)
    {
      v52 = v5[1];
      v92.n128_u64[0] = *v33;
      v51 = v92.n128_u64[0];
      v92.n128_u64[1] = v52;
      if (v96 == 4)
      {
        v37 = v70;
      }

      else
      {
        v37 = v72;
      }

      v38 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v92, &v93);
      v92 = v93;
      v39 = *(v34 + 8);
      sub_1ADDD86D8(v51, v52);
      goto LABEL_23;
    }

    if (v96 != 6)
    {
      if (v96 == 7)
      {
        v65 = v5[1];
        v92.n128_u64[0] = *v33;
        v64 = v92.n128_u64[0];
        v92.n128_u64[1] = v65;
        v37 = v76;
        v38 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v92, &v93);
        v92 = v93;
        v39 = *(v34 + 8);
        sub_1ADDD86D8(v64, v65);
        goto LABEL_23;
      }

      if (v96 == 8)
      {
        v36 = v5[1];
        v92.n128_u64[0] = *v33;
        v35 = v92.n128_u64[0];
        v92.n128_u64[1] = v36;
        v37 = v78;
        v38 = swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v92, &v93);
        v92 = v93;
        v39 = *(v34 + 8);
        sub_1ADDD86D8(v35, v36);
LABEL_23:
        v39(&v92, v37, v38, v90, v34);
        sub_1ADDCC35C(v92.n128_i64[0], v92.n128_u64[1]);
        swift_getAssociatedTypeWitness();
        return swift_dynamicCast();
      }

      goto LABEL_22;
    }

    v60 = v5[1];
    v92.n128_u64[0] = *v33;
    v59 = v92.n128_u64[0];
    v92.n128_u64[1] = v60;
    v61 = v74;
    v62 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v92, &v93);
    v92 = v93;
    v63 = *(v34 + 8);
    sub_1ADDD86D8(v59, v60);
    v63(&v92, v61, v62, v90, v34);
    sub_1ADDCC35C(v92.n128_i64[0], v92.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADF10664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a1;
  v68 = a3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v59 = &v49 - v7;
  v58 = swift_getAssociatedTypeWitness();
  v8 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v49 - v9;
  v56 = swift_getAssociatedTypeWitness();
  v10 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v49 - v11;
  v54 = swift_getAssociatedTypeWitness();
  v12 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v49 - v13;
  v52 = swift_getAssociatedTypeWitness();
  v14 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v49 - v15;
  v50 = swift_getAssociatedTypeWitness();
  v16 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v49 - v17;
  v63 = swift_getAssociatedTypeWitness();
  v18 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v49 - v19;
  v61 = swift_getAssociatedTypeWitness();
  v20 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v21 = swift_getAssociatedTypeWitness();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = swift_getAssociatedTypeWitness();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = *(a2 + 36);
  v26 = swift_getAssociatedTypeWitness();
  v65 = v5;
  v66 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v70.n128_u64[0] = v26;
  v70.n128_u64[1] = AssociatedConformanceWitness;
  v28 = v64;
  v71 = &protocol witness table for Int;
  v72 = MEMORY[0x1E69E6540];
  v29 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v29, &v73);
  if (v73 > 3)
  {
    goto LABEL_11;
  }

  if (v73 <= 1)
  {
    if (!v73)
    {
      v39 = v28[1];
      v69.n128_u64[0] = *v28;
      v38 = v69.n128_u64[0];
      v69.n128_u64[1] = v39;
      swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v69, &v70);
      v40 = v70;
      v69 = v70;
      sub_1ADDD86D8(v38, v39);
      v41 = type metadata accessor for Ref();
      sub_1AE002018(v67, v41);
      sub_1ADDCC35C(v40.n128_i64[0], v40.n128_u64[1]);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

    if (v73 == 1)
    {
      v30 = *v28;
      v31 = v28[1];
      v69.n128_u64[0] = v30;
      v69.n128_u64[1] = v31;
      swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v69, &v70);
      v32 = v70;
      v69 = v70;
      sub_1ADDD86D8(v30, v31);
      v33 = type metadata accessor for Ref();
      sub_1AE002018(v67, v33);
      sub_1ADDCC35C(v32.n128_i64[0], v32.n128_u64[1]);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

LABEL_11:
    v45 = v28[1];
    v69.n128_u64[0] = *v28;
    v44 = v69.n128_u64[0];
    v69.n128_u64[1] = v45;
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v69, &v70);
    v46 = v70;
    v69 = v70;
    sub_1ADDD86D8(v44, v45);
    v47 = type metadata accessor for Ref();
    sub_1AE002018(v67, v47);
    sub_1ADDCC35C(v46.n128_i64[0], v46.n128_u64[1]);
    swift_getAssociatedTypeWitness();
    return swift_dynamicCast();
  }

  v35 = v28[1];
  v69.n128_u64[0] = *v28;
  v34 = v69.n128_u64[0];
  v69.n128_u64[1] = v35;
  if (v73 == 2)
  {
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v69, &v70);
    v42 = v70;
    v69 = v70;
    sub_1ADDD86D8(v34, v35);
    v43 = type metadata accessor for Ref();
    sub_1AE002018(v67, v43);
    sub_1ADDCC35C(v42.n128_i64[0], v42.n128_u64[1]);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v69, &v70);
    v36 = v70;
    v69 = v70;
    sub_1ADDD86D8(v34, v35);
    v37 = type metadata accessor for Ref();
    sub_1AE002018(v67, v37);
    sub_1ADDCC35C(v36.n128_i64[0], v36.n128_u64[1]);
  }

  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t sub_1ADF111CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v129 = a2;
  v130 = a1;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = *(AssociatedTypeWitness - 8);
  v120 = AssociatedTypeWitness;
  v7 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v118 = &v99 - v8;
  v117 = swift_getAssociatedTypeWitness();
  v116 = *(v117 - 8);
  v9 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v99 - v10;
  v114 = swift_getAssociatedTypeWitness();
  v113 = *(v114 - 8);
  v11 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v99 - v12;
  v111 = swift_getAssociatedTypeWitness();
  v110 = *(v111 - 8);
  v13 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v99 - v14;
  v108 = swift_getAssociatedTypeWitness();
  v107 = *(v108 - 8);
  v15 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v99 - v16;
  v105 = swift_getAssociatedTypeWitness();
  v104 = *(v105 - 8);
  v17 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v99 - v18;
  v124 = swift_getAssociatedTypeWitness();
  v100 = *(v124 - 8);
  v19 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v99 - v20;
  v122 = swift_getAssociatedTypeWitness();
  v102 = *(v122 - 8);
  v21 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v99 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v101 = *(v23 - 8);
  v24 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v99 - v25;
  v27 = swift_getAssociatedTypeWitness();
  v99 = *(v27 - 8);
  v28 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v99 - v29;
  v128 = swift_getAssociatedTypeWitness();
  v31 = *(v128 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v99 - v33;
  v34 = *(a3 + 36);
  v35 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v132.n128_u64[0] = v35;
  v132.n128_u64[1] = AssociatedConformanceWitness;
  v133 = &protocol witness table for Int;
  v134 = MEMORY[0x1E69E6540];
  v37 = type metadata accessor for CRExtensible();
  v38 = v126;
  CRExtensible.rawValue.getter(v37, &v135);
  v39 = v31;
  v125 = v31 + 16;
  if (v135 <= 3)
  {
    v49 = v27;
    v50 = v26;
    v51 = v121;
    v52 = v123;
    v53 = v124;
    if (v135 <= 1)
    {
      if (!v135)
      {
        v70 = v38[1];
        v131.n128_u64[0] = *v38;
        v69 = v131.n128_u64[0];
        v131.n128_u64[1] = v70;
        v71 = v49;
        swift_getAssociatedConformanceWitness();
        v72 = Ref.init(id:)(&v131, &v132);
        v73 = v132.n128_u64[1];
        v126 = v132.n128_u64[0];
        v74 = v128;
        v75 = v130;
        (*(v39 + 16))(v127, v130, v128, v72);
        sub_1ADDD86D8(v69, v70);
        swift_dynamicCast();
        v131.n128_u64[0] = v126;
        v131.n128_u64[1] = v73;
        sub_1ADECCBCC(v30, &v131, v71);
        (*(v99 + 8))(v30, v71);

        return (*(v39 + 8))(v75, v74);
      }

      if (v135 == 1)
      {
        v54 = v38[1];
        v131.n128_u64[0] = *v38;
        v55 = v131.n128_u64[0];
        v131.n128_u64[1] = v54;
        swift_getAssociatedConformanceWitness();
        v56 = Ref.init(id:)(&v131, &v132);
        v57 = v132.n128_u64[1];
        v126 = v132.n128_u64[0];
        v58 = v128;
        v59 = v130;
        (*(v39 + 16))(v127, v130, v128, v56);
        sub_1ADDD86D8(v55, v54);
        swift_dynamicCast();
        v131.n128_u64[0] = v126;
        v131.n128_u64[1] = v57;
        sub_1ADECCBCC(v50, &v131, v23);
        (*(v101 + 8))(v50, v23);

        return (*(v39 + 8))(v59, v58);
      }

      goto LABEL_20;
    }

    if (v135 == 2)
    {
      v76 = v38[1];
      v131.n128_u64[0] = *v38;
      v77 = v131.n128_u64[0];
      v131.n128_u64[1] = v76;
      v78 = v122;
      swift_getAssociatedConformanceWitness();
      v79 = Ref.init(id:)(&v131, &v132);
      v80 = v132.n128_u64[1];
      v126 = v132.n128_u64[0];
      v81 = v128;
      v82 = v130;
      (*(v39 + 16))(v127, v130, v128, v79);
      sub_1ADDD86D8(v77, v76);
      swift_dynamicCast();
      v131.n128_u64[0] = v126;
      v131.n128_u64[1] = v80;
      sub_1ADECCBCC(v51, &v131, v78);
      (*(v102 + 8))(v51, v78);

      return (*(v39 + 8))(v82, v81);
    }

    v61 = v38[1];
    v131.n128_u64[0] = *v38;
    v62 = v131.n128_u64[0];
    v131.n128_u64[1] = v61;
    swift_getAssociatedConformanceWitness();
    v63 = Ref.init(id:)(&v131, &v132);
    v126 = v132.n128_u64[1];
    v64 = v132.n128_u64[0];
    v45 = v128;
    v46 = v130;
    (*(v39 + 16))(v127, v130, v128, v63);
    sub_1ADDD86D8(v62, v61);
    swift_dynamicCast();
    v131.n128_u64[0] = v64;
    v131.n128_u64[1] = v126;
    sub_1ADECCBCC(v52, &v131, v53);
    (*(v100 + 8))(v52, v53);
  }

  else
  {
    if (v135 <= 5)
    {
      v66 = v38[1];
      v131.n128_u64[0] = *v38;
      v65 = v131.n128_u64[0];
      v131.n128_u64[1] = v66;
      if (v135 == 4)
      {
        v42 = v105;
        swift_getAssociatedConformanceWitness();
        v89 = Ref.init(id:)(&v131, &v132);
        v90 = v132;
        v45 = v128;
        v46 = v130;
        (*(v39 + 16))(v127, v130, v128, v89);
        sub_1ADDD86D8(v65, v66);
        v47 = v103;
        swift_dynamicCast();
        v131 = v90;
        sub_1ADECCBCC(v47, &v131, v42);
        v48 = v104;
      }

      else
      {
        v42 = v108;
        swift_getAssociatedConformanceWitness();
        v67 = Ref.init(id:)(&v131, &v132);
        v68 = v132;
        v45 = v128;
        v46 = v130;
        (*(v39 + 16))(v127, v130, v128, v67);
        sub_1ADDD86D8(v65, v66);
        v47 = v106;
        swift_dynamicCast();
        v131 = v68;
        sub_1ADECCBCC(v47, &v131, v42);
        v48 = v107;
      }

      goto LABEL_21;
    }

    if (v135 != 6)
    {
      if (v135 == 7)
      {
        v92 = v38[1];
        v131.n128_u64[0] = *v38;
        v91 = v131.n128_u64[0];
        v131.n128_u64[1] = v92;
        v42 = v114;
        swift_getAssociatedConformanceWitness();
        v93 = Ref.init(id:)(&v131, &v132);
        v94 = v132;
        v45 = v128;
        v46 = v130;
        (*(v39 + 16))(v127, v130, v128, v93);
        sub_1ADDD86D8(v91, v92);
        v47 = v112;
        swift_dynamicCast();
        v131 = v94;
        sub_1ADECCBCC(v47, &v131, v42);
        v48 = v113;
        goto LABEL_21;
      }

      if (v135 == 8)
      {
        v41 = v38[1];
        v131.n128_u64[0] = *v38;
        v40 = v131.n128_u64[0];
        v131.n128_u64[1] = v41;
        v42 = v117;
        swift_getAssociatedConformanceWitness();
        v43 = Ref.init(id:)(&v131, &v132);
        v44 = v132;
        v45 = v128;
        v46 = v130;
        (*(v39 + 16))(v127, v130, v128, v43);
        sub_1ADDD86D8(v40, v41);
        v47 = v115;
        swift_dynamicCast();
        v131 = v44;
        sub_1ADECCBCC(v47, &v131, v42);
        v48 = v116;
LABEL_21:
        (*(v48 + 8))(v47, v42);
        goto LABEL_22;
      }

LABEL_20:
      v96 = v38[1];
      v131.n128_u64[0] = *v38;
      v95 = v131.n128_u64[0];
      v131.n128_u64[1] = v96;
      v42 = v120;
      swift_getAssociatedConformanceWitness();
      v97 = Ref.init(id:)(&v131, &v132);
      v98 = v132;
      v45 = v128;
      v46 = v130;
      (*(v39 + 16))(v127, v130, v128, v97);
      sub_1ADDD86D8(v95, v96);
      v47 = v118;
      swift_dynamicCast();
      v131 = v98;
      sub_1ADECCBCC(v47, &v131, v42);
      v48 = v119;
      goto LABEL_21;
    }

    v84 = v38[1];
    v131.n128_u64[0] = *v38;
    v83 = v131.n128_u64[0];
    v131.n128_u64[1] = v84;
    v85 = v111;
    swift_getAssociatedConformanceWitness();
    v86 = Ref.init(id:)(&v131, &v132);
    v87 = v132.n128_u64[1];
    v126 = v132.n128_u64[0];
    v45 = v128;
    v46 = v130;
    (*(v39 + 16))(v127, v130, v128, v86);
    sub_1ADDD86D8(v83, v84);
    v88 = v109;
    swift_dynamicCast();
    v131.n128_u64[0] = v126;
    v131.n128_u64[1] = v87;
    sub_1ADECCBCC(v88, &v131, v85);
    (*(v110 + 8))(v88, v85);
  }

LABEL_22:

  return (*(v39 + 8))(v46, v45);
}

uint64_t sub_1ADF1220C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for SharedTagged_9();

  sub_1ADF4A990(a1, v7, v8, &protocol requirements base descriptor for Tagged_9, &associated type descriptor for Tagged_9.AnyType, sub_1ADF111CC);
}

uint64_t SharedTagged_9.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4A990(a1, a2, a3, &protocol requirements base descriptor for Tagged_9, &associated type descriptor for Tagged_9.AnyType, sub_1ADF111CC);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 8);

  return v8(a1, AssociatedTypeWitness);
}

void (*SharedTagged_9.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v9[4] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v9[6] = v15;
  SharedTagged_9.subscript.getter(a2, a3);
  return sub_1ADF12490;
}

uint64_t SharedTagged_9.visitReferences(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 36);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v18.n128_u64[0] = swift_getAssociatedTypeWitness();
  v18.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v19 = &protocol witness table for Int;
  v20 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v8, &v21);
  v10 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = *v3;
  v11 = v3[1];
  v17.n128_u64[0] = v12;
  v17.n128_u64[1] = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v17, &v18);
  v17 = v18;
  v15 = *(v9 + 16);
  sub_1ADDD86D8(v12, v11);
  v15(&v17, AssociatedTypeWitness, AssociatedConformanceWitness, v10, v9);
  return sub_1ADDCC35C(v17.n128_i64[0], v17.n128_u64[1]);
}

uint64_t sub_1ADF128F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return SharedTagged_9.init(from:)(a1, a3);
}

uint64_t SharedTagged_9.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000017;
    *(v16 + 8) = 0x80000001AE25FB70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v7 = *(v4 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xB)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v45 = v8[2];
  v9 = *(type metadata accessor for SharedTagged_9() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v43 = AssociatedTypeWitness;
  v44 = v9;
  v42 = AssociatedConformanceWitness;
  result = CRExtensible.init(rawValue:)(&v45, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a2 + v9));
  if (*(a1 + 57) >= 3u)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xB)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v15[3])
    {
      inited = v15[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v18 = *(inited + 16);
    sub_1ADE51B2C(v18);

    if ((~v18 & 0xF000000000000007) != 0)
    {
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0x10)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 16);
        if (v21 && v19 < v21)
        {
          v22 = *(v20 + 16 * v19 + 32);
          *a2 = v22;
          sub_1ADDD86D8(v22, *(&v22 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40();
        swift_allocError();
        *v35 = 0xD000000000000013;
        *(v35 + 8) = 0x80000001AE25FC60;
        *(v35 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_73:
        *&v45 = v43;
        *(&v45 + 1) = v42;
        v46 = &protocol witness table for Int;
        v47 = MEMORY[0x1E69E6540];
        v40 = type metadata accessor for CRExtensible();
        return (*(*(v40 - 8) + 8))(a2 + v44, v40);
      }

      result = sub_1ADE51B48(v18);
    }
  }

  v23 = *(a1 + 72);
  if (!v23)
  {
    __break(1u);
    goto LABEL_76;
  }

  v24 = *(v23 + 16);
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v26 = v25[3];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v27 = swift_initStaticObject();
  }

  v28 = *(v27 + 16);
  if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 7)
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v29 = swift_initStaticObject();
  }

  swift_beginAccess();
  if (v29[8])
  {
    v31 = v29[9];
    v30 = v29[10];
    v32 = v29[8];

    sub_1ADDD86D8(v31, v30);
  }

  else
  {
    v31 = 0;
    v30 = 0xC000000000000000;
  }

  sub_1ADDE94BC(v31, v30, &v45);
  if (v5)
  {
    goto LABEL_39;
  }

  *a2 = v45;
LABEL_41:
  *&v45 = v43;
  *(&v45 + 1) = AssociatedConformanceWitness;
  v46 = &protocol witness table for Int;
  v47 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v33, &v48);
  v34 = *(a1 + 16);
  if (v48 <= 3)
  {
    if (v48 > 1)
    {
      if (v48 == 2)
      {
        if (v34)
        {
          goto LABEL_71;
        }

        goto LABEL_81;
      }

      if (v34)
      {
        goto LABEL_71;
      }

      goto LABEL_78;
    }

    if (!v48)
    {
      if (v34)
      {
        goto LABEL_71;
      }

      goto LABEL_80;
    }

    if (v48 != 1)
    {
      goto LABEL_70;
    }

    if (v34)
    {
      goto LABEL_71;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v48 <= 5)
  {
    if (v48 == 4)
    {
      if (v34)
      {
        goto LABEL_71;
      }

      goto LABEL_84;
    }

    if (v34)
    {
      goto LABEL_71;
    }

    goto LABEL_79;
  }

  switch(v48)
  {
    case 6:
      if (v34)
      {
        goto LABEL_71;
      }

      goto LABEL_82;
    case 7:
      if (v34)
      {
        goto LABEL_71;
      }

      goto LABEL_85;
    case 8:
      if (v34)
      {
        goto LABEL_71;
      }

      goto LABEL_83;
  }

LABEL_70:
  if (v34)
  {
LABEL_71:
    v36 = swift_getAssociatedTypeWitness();
    v38 = *(a2 + 8);
    *&v45 = *a2;
    v37 = v45;
    *(&v45 + 1) = v38;
    v41 = *(*v34 + 200);

    sub_1ADDD86D8(v37, v38);
    v39 = swift_getAssociatedConformanceWitness();
    v41(v36, &v45, a1, 0, v36, v39);
    if (v5)
    {
      sub_1ADDCC35C(v45, *(&v45 + 1));

      sub_1ADDCC35C(*a2, *(a2 + 8));
      goto LABEL_73;
    }

    sub_1ADDCC35C(v45, *(&v45 + 1));
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t (*SharedTagged_10.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t SharedTagged_10.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_10.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_10.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_10.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_10, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_10, a5);
}

uint64_t SharedTagged_10.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 0;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_10();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 1;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_10();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 2;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_10();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 3;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_10();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 4;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_10();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 5;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_10();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 6;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_10();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 7;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_10();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 8;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_10();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 9;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_10();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

uint64_t SharedTagged_10.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 0;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_10();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 1;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_10();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 2;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_10();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 3;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_10();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 4;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_10();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 5;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_10();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 6;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_10();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 7;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_10();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 8;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_10();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 9;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_10();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

uint64_t SharedTagged_10.init<A>(_:_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_10();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 1;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_10();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 2;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_10();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 3;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_10();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 4;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_10();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 5;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_10();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 6;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_10();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 7;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_10();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 8;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_10();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 9;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_10();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

uint64_t SharedTagged_10.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for WeakTagged_10() + 36);
  v5 = *(type metadata accessor for SharedTagged_10() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t SharedTagged_10.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0])
  {
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  else
  {
    v12 = *v2;
    v13 = v3[1];
    v14.n128_u64[0] = v12;
    v14.n128_u64[1] = v13;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t SharedTagged_10.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 1)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_10.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 2)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_10.tagged4.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 3)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_10.tagged5.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 4)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_10.tagged6.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 5)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_10.tagged7.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 6)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_10.tagged8.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 7)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t sub_1ADF1991C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v7 = *(a1 + 36);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = &protocol witness table for Int;
  v22 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v10, &AssociatedTypeWitness);
  if (AssociatedTypeWitness == 8)
  {
    v12 = *v3;
    v13 = v5[1];
    v18[0] = v12;
    v18[1] = v13;
    v14 = swift_getAssociatedTypeWitness();
    v15 = swift_getAssociatedConformanceWitness();
    a2(&AssociatedTypeWitness, v18, v14, v15);
    v16 = AssociatedTypeWitness;
    v17 = AssociatedConformanceWitness;
    result = sub_1ADDD86D8(v12, v13);
  }

  else
  {
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  *a3 = v16;
  a3[1] = v17;
  return result;
}

uint64_t SharedTagged_10.unknown.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_i64[0] >= 10)
  {
    v11 = *v2;
    v12 = v3[1];
    v14.n128_u64[0] = v11;
    v14.n128_u64[1] = v12;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15;
    result = sub_1ADDD86D8(v11, v12);
    v10 = v13;
  }

  else
  {
    v10 = xmmword_1AE2427C0;
  }

  *a2 = v10;
  return result;
}

uint64_t SharedTagged_10.any.getter@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v8, &v15);
  v10 = v3[1];
  v12.n128_u64[0] = *v3;
  v9 = v12.n128_u64[0];
  v12.n128_u64[1] = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  a2[1].n128_u64[1] = type metadata accessor for Ref();
  a2[2].n128_u64[0] = swift_getWitnessTable();
  Ref.init(id:)(&v12, a2);
  return sub_1ADDD86D8(v9, v10);
}

uint64_t SharedTagged_10.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a1;
  v97 = a5;
  v98 = a4;
  v96 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v91 = v78 - v9;
  v90 = swift_getAssociatedTypeWitness();
  v10 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v89 = v78 - v11;
  v88 = swift_getAssociatedTypeWitness();
  v12 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v87 = v78 - v13;
  v93 = swift_getAssociatedTypeWitness();
  v14 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v86 = v78 - v15;
  v85 = swift_getAssociatedTypeWitness();
  v16 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v84 = v78 - v17;
  v83 = swift_getAssociatedTypeWitness();
  v18 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v78 - v19;
  v81 = swift_getAssociatedTypeWitness();
  v20 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v78 - v21;
  v79 = swift_getAssociatedTypeWitness();
  v22 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v78[1] = v78 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v78[0] = v78 - v26;
  v27 = swift_getAssociatedTypeWitness();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v29 = swift_getAssociatedTypeWitness();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = *(a2 + 36);
  v32 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v100.n128_u64[0] = v32;
  v100.n128_u64[1] = AssociatedConformanceWitness;
  v101 = &protocol witness table for Int;
  v102 = MEMORY[0x1E69E6540];
  v34 = type metadata accessor for CRExtensible();
  v35 = v94;
  CRExtensible.rawValue.getter(v34, &v103);
  if (v103 > 4)
  {
    if (v103 <= 6)
    {
      v93 = v98 + 8;
      v52 = v35;
      v37 = *v35;
      v38 = v52[1];
      v99.n128_u64[0] = v37;
      v99.n128_u64[1] = v38;
      if (v103 == 5)
      {
        v39 = v83;
      }

      else
      {
        v39 = v85;
      }

      goto LABEL_6;
    }

    if (v103 == 7)
    {
      v64 = v35;
      v65 = *v35;
      v66 = v64[1];
      v99.n128_u64[0] = v65;
      v99.n128_u64[1] = v66;
      v67 = v93;
      v68 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v99, &v100);
      v99 = v100;
      v69 = v98;
      v70 = *(v98 + 8);
      sub_1ADDD86D8(v65, v66);
      v70(&v99, v67, v68, v96, v69);
      sub_1ADDCC35C(v99.n128_i64[0], v99.n128_u64[1]);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

    v93 = v98 + 8;
    if (v103 == 8)
    {
      v71 = v35;
      v72 = *v35;
      v73 = v71[1];
      v99.n128_u64[0] = v72;
      v99.n128_u64[1] = v73;
      v39 = v88;
      v40 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v99, &v100);
      v99 = v100;
      v41 = v98;
      v42 = *(v98 + 8);
      sub_1ADDD86D8(v72, v73);
      goto LABEL_24;
    }

    if (v103 == 9)
    {
      v43 = v35;
      v44 = *v35;
      v45 = v43[1];
      v99.n128_u64[0] = v44;
      v99.n128_u64[1] = v45;
      v39 = v90;
      v40 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v99, &v100);
      v99 = v100;
      v41 = v98;
      v42 = *(v98 + 8);
      sub_1ADDD86D8(v44, v45);
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v103 <= 1)
  {
    v93 = v98 + 8;
    if (!v103)
    {
      v53 = v35;
      v54 = *v35;
      v55 = v53[1];
      v99.n128_u64[0] = v54;
      v99.n128_u64[1] = v55;
      v56 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v99, &v100);
      v99 = v100;
      v57 = v98;
      v58 = *(v98 + 8);
      sub_1ADDD86D8(v54, v55);
      v58(&v99, v29, v56, v96, v57);
      sub_1ADDCC35C(v99.n128_i64[0], v99.n128_u64[1]);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

    if (v103 == 1)
    {
      v46 = v35;
      v47 = *v35;
      v48 = v46[1];
      v99.n128_u64[0] = v47;
      v99.n128_u64[1] = v48;
      v49 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v99, &v100);
      v99 = v100;
      v50 = v98;
      v51 = *(v98 + 8);
      sub_1ADDD86D8(v47, v48);
      v51(&v99, v27, v49, v96, v50);
      sub_1ADDCC35C(v99.n128_i64[0], v99.n128_u64[1]);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

LABEL_23:
    v74 = v35;
    v75 = *v35;
    v76 = v74[1];
    v99.n128_u64[0] = v75;
    v99.n128_u64[1] = v76;
    v39 = AssociatedTypeWitness;
    v40 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v99, &v100);
    v99 = v100;
    v41 = v98;
    v42 = *(v98 + 8);
    sub_1ADDD86D8(v75, v76);
    goto LABEL_24;
  }

  if (v103 != 2)
  {
    v93 = v98 + 8;
    v36 = v35;
    v37 = *v35;
    v38 = v36[1];
    v99.n128_u64[0] = v37;
    v99.n128_u64[1] = v38;
    if (v103 == 3)
    {
      v39 = v79;
    }

    else
    {
      v39 = v81;
    }

LABEL_6:
    v40 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v99, &v100);
    v99 = v100;
    v41 = v98;
    v42 = *(v98 + 8);
    sub_1ADDD86D8(v37, v38);
LABEL_24:
    v42(&v99, v39, v40, v96, v41);
    sub_1ADDCC35C(v99.n128_i64[0], v99.n128_u64[1]);
    swift_getAssociatedTypeWitness();
    return swift_dynamicCast();
  }

  v60 = v35[1];
  v99.n128_u64[0] = *v35;
  v59 = v99.n128_u64[0];
  v99.n128_u64[1] = v60;
  v61 = swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v99, &v100);
  v99 = v100;
  v62 = v98;
  v63 = *(v98 + 8);
  sub_1ADDD86D8(v59, v60);
  v63(&v99, v24, v61, v96, v62);
  sub_1ADDCC35C(v99.n128_i64[0], v99.n128_u64[1]);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t sub_1ADF1AA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a1;
  v69 = a3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = v51 - v7;
  v64 = swift_getAssociatedTypeWitness();
  v8 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v51 - v9;
  v62 = swift_getAssociatedTypeWitness();
  v10 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v51 - v11;
  v60 = swift_getAssociatedTypeWitness();
  v12 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = v51 - v13;
  v58 = swift_getAssociatedTypeWitness();
  v14 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = v51 - v15;
  v56 = swift_getAssociatedTypeWitness();
  v16 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = v51 - v17;
  v54 = swift_getAssociatedTypeWitness();
  v18 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = v51 - v19;
  v52 = swift_getAssociatedTypeWitness();
  v20 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51[1] = v51 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v51[0] = v51 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v27 = swift_getAssociatedTypeWitness();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v29 = *(a2 + 36);
  v30 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v71.n128_u64[0] = v30;
  v71.n128_u64[1] = AssociatedConformanceWitness;
  v32 = v67;
  v72 = &protocol witness table for Int;
  v73 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v33, &v74);
  if (v74 > 4)
  {
    goto LABEL_11;
  }

  if (v74 <= 1)
  {
    if (v74)
    {
      if (v74 != 1)
      {
LABEL_11:
        v47 = v32[1];
        v70.n128_u64[0] = *v32;
        v46 = v70.n128_u64[0];
        v70.n128_u64[1] = v47;
        swift_getAssociatedConformanceWitness();
        Ref.init(id:)(&v70, &v71);
        v48 = v71;
        v70 = v71;
        sub_1ADDD86D8(v46, v47);
        v49 = type metadata accessor for Ref();
        sub_1AE002018(v68, v49);
        sub_1ADDCC35C(v48.n128_i64[0], v48.n128_u64[1]);
        swift_getAssociatedTypeWitness();
        return swift_dynamicCast();
      }

      v35 = v32[1];
      v70.n128_u64[0] = *v32;
      v34 = v70.n128_u64[0];
      v70.n128_u64[1] = v35;
      swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v70, &v71);
      v36 = v71;
      v70 = v71;
      sub_1ADDD86D8(v34, v35);
      v37 = type metadata accessor for Ref();
      sub_1AE002018(v68, v37);
      sub_1ADDCC35C(v36.n128_i64[0], v36.n128_u64[1]);
      swift_getAssociatedTypeWitness();
    }

    else
    {
      v39 = v32[1];
      v70.n128_u64[0] = *v32;
      v38 = v70.n128_u64[0];
      v70.n128_u64[1] = v39;
      swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v70, &v71);
      v40 = v71;
      v70 = v71;
      sub_1ADDD86D8(v38, v39);
      v41 = type metadata accessor for Ref();
      sub_1AE002018(v68, v41);
      sub_1ADDCC35C(v40.n128_i64[0], v40.n128_u64[1]);
      swift_getAssociatedTypeWitness();
    }
  }

  else
  {
    if (v74 != 2)
    {
      goto LABEL_11;
    }

    v42 = *v32;
    v43 = v32[1];
    v70.n128_u64[0] = v42;
    v70.n128_u64[1] = v43;
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v70, &v71);
    v44 = v71;
    v70 = v71;
    sub_1ADDD86D8(v42, v43);
    v45 = type metadata accessor for Ref();
    sub_1AE002018(v68, v45);
    sub_1ADDCC35C(v44.n128_i64[0], v44.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADF1B66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v133 = a2;
  v134 = a1;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v127 = *(AssociatedTypeWitness - 8);
  v128 = AssociatedTypeWitness;
  v7 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v126 = &v101 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v124 = *(v9 - 8);
  v125 = v9;
  v10 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v101 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v121 = *(v12 - 8);
  v122 = v12;
  v13 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v120 = &v101 - v14;
  v129 = swift_getAssociatedTypeWitness();
  v119 = *(v129 - 8);
  v15 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v118 = &v101 - v16;
  v117 = swift_getAssociatedTypeWitness();
  v116 = *(v117 - 8);
  v17 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v101 - v18;
  v114 = swift_getAssociatedTypeWitness();
  v113 = *(v114 - 8);
  v19 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v101 - v20;
  v111 = swift_getAssociatedTypeWitness();
  v110 = *(v111 - 8);
  v21 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v101 - v22;
  v108 = swift_getAssociatedTypeWitness();
  v107 = *(v108 - 8);
  v23 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v101 - v24;
  v105 = swift_getAssociatedTypeWitness();
  v104 = *(v105 - 8);
  v25 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v101 - v26;
  v27 = swift_getAssociatedTypeWitness();
  v102 = *(v27 - 8);
  v28 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v101 - v29;
  v31 = swift_getAssociatedTypeWitness();
  v101 = *(v31 - 8);
  v32 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v101 - v33;
  v132 = swift_getAssociatedTypeWitness();
  v35 = *(v132 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v101 - v37;
  v38 = *(a3 + 36);
  v39 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v136.n128_u64[0] = v39;
  v136.n128_u64[1] = AssociatedConformanceWitness;
  v137 = &protocol witness table for Int;
  v138 = MEMORY[0x1E69E6540];
  v41 = type metadata accessor for CRExtensible();
  v42 = v130;
  v43 = v35;
  CRExtensible.rawValue.getter(v41, &v139);
  if (v139 <= 4)
  {
    if (v139 > 1)
    {
      if (v139 == 2)
      {
        v77 = v42[1];
        v135.n128_u64[0] = *v42;
        v76 = v135.n128_u64[0];
        v135.n128_u64[1] = v77;
        v78 = v105;
        swift_getAssociatedConformanceWitness();
        v79 = Ref.init(id:)(&v135, &v136);
        v80 = v136.n128_u64[1];
        v130 = v136.n128_u64[0];
        v81 = *(v35 + 16);
        v82 = v132;
        v83 = v134;
        v81(v131, v134, v132, v79);
        sub_1ADDD86D8(v76, v77);
        v84 = v103;
        swift_dynamicCast();
        v135.n128_u64[0] = v130;
        v135.n128_u64[1] = v80;
        sub_1ADECCBCC(v84, &v135, v78);
        (*(v104 + 8))(v84, v78);

        return (*(v43 + 8))(v83, v82);
      }

      v129 = v35 + 16;
      v45 = v42[1];
      v135.n128_u64[0] = *v42;
      v44 = v135.n128_u64[0];
      v135.n128_u64[1] = v45;
      if (v139 == 3)
      {
        v46 = v108;
        swift_getAssociatedConformanceWitness();
        v91 = Ref.init(id:)(&v135, &v136);
        v92 = v136;
        v49 = v132;
        v50 = v134;
        (*(v35 + 16))(v131, v134, v132, v91);
        sub_1ADDD86D8(v44, v45);
        v51 = v106;
        swift_dynamicCast();
        v135 = v92;
        sub_1ADECCBCC(v51, &v135, v46);
        v52 = v107;
      }

      else
      {
        v46 = v111;
        swift_getAssociatedConformanceWitness();
        v47 = Ref.init(id:)(&v135, &v136);
        v48 = v136;
        v49 = v132;
        v50 = v134;
        (*(v35 + 16))(v131, v134, v132, v47);
        sub_1ADDD86D8(v44, v45);
        v51 = v109;
        swift_dynamicCast();
        v135 = v48;
        sub_1ADECCBCC(v51, &v135, v46);
        v52 = v110;
      }

      goto LABEL_23;
    }

    v129 = v35 + 16;
    if (!v139)
    {
      v69 = v42[1];
      v135.n128_u64[0] = *v42;
      v68 = v135.n128_u64[0];
      v135.n128_u64[1] = v69;
      swift_getAssociatedConformanceWitness();
      v70 = Ref.init(id:)(&v135, &v136);
      v130 = v136.n128_u64[1];
      v71 = v136.n128_u64[0];
      v72 = v132;
      v73 = v134;
      (*(v43 + 16))(v131, v134, v132, v70);
      sub_1ADDD86D8(v68, v69);
      swift_dynamicCast();
      v135.n128_u64[0] = v71;
      v135.n128_u64[1] = v130;
      sub_1ADECCBCC(v34, &v135, v31);
      (*(v101 + 8))(v34, v31);

      return (*(v43 + 8))(v73, v72);
    }

    if (v139 == 1)
    {
      v58 = v42[1];
      v135.n128_u64[0] = *v42;
      v57 = v135.n128_u64[0];
      v135.n128_u64[1] = v58;
      swift_getAssociatedConformanceWitness();
      v59 = Ref.init(id:)(&v135, &v136);
      v130 = v136.n128_u64[1];
      v60 = v136.n128_u64[0];
      v61 = v132;
      v62 = v134;
      (*(v35 + 16))(v131, v134, v132, v59);
      sub_1ADDD86D8(v57, v58);
      swift_dynamicCast();
      v135.n128_u64[0] = v60;
      v135.n128_u64[1] = v130;
      sub_1ADECCBCC(v30, &v135, v27);
      (*(v102 + 8))(v30, v27);

      return (*(v35 + 8))(v62, v61);
    }

    goto LABEL_22;
  }

  if (v139 <= 6)
  {
    v129 = v35 + 16;
    v65 = v42[1];
    v135.n128_u64[0] = *v42;
    v64 = v135.n128_u64[0];
    v135.n128_u64[1] = v65;
    if (v139 == 5)
    {
      v46 = v114;
      swift_getAssociatedConformanceWitness();
      v74 = Ref.init(id:)(&v135, &v136);
      v75 = v136;
      v49 = v132;
      v50 = v134;
      (*(v35 + 16))(v131, v134, v132, v74);
      sub_1ADDD86D8(v64, v65);
      v51 = v112;
      swift_dynamicCast();
      v135 = v75;
      sub_1ADECCBCC(v51, &v135, v46);
      v52 = v113;
    }

    else
    {
      v46 = v117;
      swift_getAssociatedConformanceWitness();
      v66 = Ref.init(id:)(&v135, &v136);
      v67 = v136;
      v49 = v132;
      v50 = v134;
      (*(v35 + 16))(v131, v134, v132, v66);
      sub_1ADDD86D8(v64, v65);
      v51 = v115;
      swift_dynamicCast();
      v135 = v67;
      sub_1ADECCBCC(v51, &v135, v46);
      v52 = v116;
    }

    goto LABEL_23;
  }

  if (v139 != 7)
  {
    v129 = v35 + 16;
    if (v139 == 8)
    {
      v94 = v42[1];
      v135.n128_u64[0] = *v42;
      v93 = v135.n128_u64[0];
      v135.n128_u64[1] = v94;
      v46 = v122;
      swift_getAssociatedConformanceWitness();
      v95 = Ref.init(id:)(&v135, &v136);
      v96 = v136;
      v49 = v132;
      v50 = v134;
      (*(v35 + 16))(v131, v134, v132, v95);
      sub_1ADDD86D8(v93, v94);
      v51 = v120;
      swift_dynamicCast();
      v135 = v96;
      sub_1ADECCBCC(v51, &v135, v46);
      v52 = v121;
    }

    else
    {
      if (v139 != 9)
      {
LABEL_22:
        v98 = v42[1];
        v135.n128_u64[0] = *v42;
        v97 = v135.n128_u64[0];
        v135.n128_u64[1] = v98;
        v46 = v128;
        swift_getAssociatedConformanceWitness();
        v99 = Ref.init(id:)(&v135, &v136);
        v100 = v136;
        v49 = v132;
        v50 = v134;
        (*(v35 + 16))(v131, v134, v132, v99);
        sub_1ADDD86D8(v97, v98);
        v51 = v126;
        swift_dynamicCast();
        v135 = v100;
        sub_1ADECCBCC(v51, &v135, v46);
        v52 = v127;
        goto LABEL_23;
      }

      v54 = v42[1];
      v135.n128_u64[0] = *v42;
      v53 = v135.n128_u64[0];
      v135.n128_u64[1] = v54;
      v46 = v125;
      swift_getAssociatedConformanceWitness();
      v55 = Ref.init(id:)(&v135, &v136);
      v56 = v136;
      v49 = v132;
      v50 = v134;
      (*(v35 + 16))(v131, v134, v132, v55);
      sub_1ADDD86D8(v53, v54);
      v51 = v123;
      swift_dynamicCast();
      v135 = v56;
      sub_1ADECCBCC(v51, &v135, v46);
      v52 = v124;
    }

LABEL_23:
    (*(v52 + 8))(v51, v46);
    goto LABEL_24;
  }

  v86 = v42[1];
  v135.n128_u64[0] = *v42;
  v85 = v135.n128_u64[0];
  v135.n128_u64[1] = v86;
  v87 = v129;
  swift_getAssociatedConformanceWitness();
  v88 = Ref.init(id:)(&v135, &v136);
  v89 = v136.n128_u64[1];
  v130 = v136.n128_u64[0];
  v49 = v132;
  v50 = v134;
  (*(v35 + 16))(v131, v134, v132, v88);
  sub_1ADDD86D8(v85, v86);
  v90 = v118;
  swift_dynamicCast();
  v135.n128_u64[0] = v130;
  v135.n128_u64[1] = v89;
  sub_1ADECCBCC(v90, &v135, v87);
  (*(v119 + 8))(v90, v87);
LABEL_24:

  return (*(v35 + 8))(v50, v49);
}

uint64_t sub_1ADF1C7DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for SharedTagged_10();

  sub_1ADF4A990(a1, v7, v8, &protocol requirements base descriptor for Tagged_10, &associated type descriptor for Tagged_10.AnyType, sub_1ADF1B66C);
}

uint64_t SharedTagged_10.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4A990(a1, a2, a3, &protocol requirements base descriptor for Tagged_10, &associated type descriptor for Tagged_10.AnyType, sub_1ADF1B66C);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 8);

  return v8(a1, AssociatedTypeWitness);
}

void (*SharedTagged_10.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v9[4] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v9[6] = v15;
  SharedTagged_10.subscript.getter(a2, a3);
  return sub_1ADF1CA60;
}

uint64_t SharedTagged_10.visitReferences(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 36);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v18.n128_u64[0] = swift_getAssociatedTypeWitness();
  v18.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v19 = &protocol witness table for Int;
  v20 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v8, &v21);
  v10 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = *v3;
  v11 = v3[1];
  v17.n128_u64[0] = v12;
  v17.n128_u64[1] = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v17, &v18);
  v17 = v18;
  v15 = *(v9 + 16);
  sub_1ADDD86D8(v12, v11);
  v15(&v17, AssociatedTypeWitness, AssociatedConformanceWitness, v10, v9);
  return sub_1ADDCC35C(v17.n128_i64[0], v17.n128_u64[1]);
}

uint64_t sub_1ADF1CEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return SharedTagged_10.init(from:)(a1, a3);
}

uint64_t SharedTagged_10.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000017;
    *(v16 + 8) = 0x80000001AE25FB70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v7 = *(v4 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xB)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v45 = v8[2];
  v9 = *(type metadata accessor for SharedTagged_10() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v43 = AssociatedTypeWitness;
  v44 = v9;
  v42 = AssociatedConformanceWitness;
  result = CRExtensible.init(rawValue:)(&v45, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a2 + v9));
  if (*(a1 + 57) >= 3u)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xB)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v15[3])
    {
      inited = v15[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v18 = *(inited + 16);
    sub_1ADE51B2C(v18);

    if ((~v18 & 0xF000000000000007) != 0)
    {
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0x10)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 16);
        if (v21 && v19 < v21)
        {
          v22 = *(v20 + 16 * v19 + 32);
          *a2 = v22;
          sub_1ADDD86D8(v22, *(&v22 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40();
        swift_allocError();
        *v35 = 0xD000000000000013;
        *(v35 + 8) = 0x80000001AE25FC60;
        *(v35 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_76:
        *&v45 = v43;
        *(&v45 + 1) = v42;
        v46 = &protocol witness table for Int;
        v47 = MEMORY[0x1E69E6540];
        v40 = type metadata accessor for CRExtensible();
        return (*(*(v40 - 8) + 8))(a2 + v44, v40);
      }

      result = sub_1ADE51B48(v18);
    }
  }

  v23 = *(a1 + 72);
  if (!v23)
  {
    __break(1u);
    goto LABEL_79;
  }

  v24 = *(v23 + 16);
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v26 = v25[3];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v27 = swift_initStaticObject();
  }

  v28 = *(v27 + 16);
  if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 7)
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v29 = swift_initStaticObject();
  }

  swift_beginAccess();
  if (v29[8])
  {
    v31 = v29[9];
    v30 = v29[10];
    v32 = v29[8];

    sub_1ADDD86D8(v31, v30);
  }

  else
  {
    v31 = 0;
    v30 = 0xC000000000000000;
  }

  sub_1ADDE94BC(v31, v30, &v45);
  if (v5)
  {
    goto LABEL_39;
  }

  *a2 = v45;
LABEL_41:
  *&v45 = v43;
  *(&v45 + 1) = AssociatedConformanceWitness;
  v46 = &protocol witness table for Int;
  v47 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v33, &v48);
  v34 = *(a1 + 16);
  if (v48 > 4)
  {
    if (v48 <= 6)
    {
      if (v48 == 5)
      {
        if (v34)
        {
          goto LABEL_74;
        }

        goto LABEL_85;
      }

      if (v34)
      {
        goto LABEL_74;
      }

      goto LABEL_83;
    }

    switch(v48)
    {
      case 7:
        if (v34)
        {
          goto LABEL_74;
        }

        goto LABEL_87;
      case 8:
        if (v34)
        {
          goto LABEL_74;
        }

        goto LABEL_89;
      case 9:
        if (v34)
        {
          goto LABEL_74;
        }

        goto LABEL_81;
    }
  }

  else
  {
    if (v48 > 1)
    {
      if (v48 == 2)
      {
        if (v34)
        {
          goto LABEL_74;
        }

        goto LABEL_86;
      }

      if (v48 == 3)
      {
        if (v34)
        {
          goto LABEL_74;
        }

        goto LABEL_88;
      }

      if (v34)
      {
        goto LABEL_74;
      }

      goto LABEL_80;
    }

    if (!v48)
    {
      if (v34)
      {
        goto LABEL_74;
      }

      goto LABEL_84;
    }

    if (v48 == 1)
    {
      if (v34)
      {
        goto LABEL_74;
      }

      goto LABEL_82;
    }
  }

  if (v34)
  {
LABEL_74:
    v36 = swift_getAssociatedTypeWitness();
    v38 = *(a2 + 8);
    *&v45 = *a2;
    v37 = v45;
    *(&v45 + 1) = v38;
    v41 = *(*v34 + 200);

    sub_1ADDD86D8(v37, v38);
    v39 = swift_getAssociatedConformanceWitness();
    v41(v36, &v45, a1, 0, v36, v39);
    if (v5)
    {
      sub_1ADDCC35C(v45, *(&v45 + 1));

      sub_1ADDCC35C(*a2, *(a2 + 8));
      goto LABEL_76;
    }

    sub_1ADDCC35C(v45, *(&v45 + 1));
  }

LABEL_90:
  __break(1u);
  return result;
}

uint64_t sub_1ADF1D9F4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  result = sub_1ADE71C08();
  if (!v3)
  {
    v8 = result;
    v55[6] = 0;
    v9 = *(a2 + 36);
    v12 = a2 + 16;
    v11 = *(a2 + 16);
    v10 = *(v12 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

    v55[0] = AssociatedTypeWitness;
    v55[1] = AssociatedConformanceWitness;
    v55[2] = &protocol witness table for Int;
    v55[3] = MEMORY[0x1E69E6540];
    v15 = type metadata accessor for CRExtensible();
    CRExtensible.rawValue.getter(v15, v55);
    v16 = v55[0];
    swift_beginAccess();
    v17 = *(*(v8 + 24) + 16);
    if ((~v17 & 0xF000000000000007) != 0 && ((v17 >> 59) & 0x1E | (v17 >> 2) & 1) == 11)
    {
      inited = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      type metadata accessor for Proto_TaggedValue._StorageClass();
      inited = swift_initStaticObject();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_TaggedValue._StorageClass();
      swift_allocObject();
      inited = sub_1ADDE5178(inited);
    }

    swift_beginAccess();
    *(inited + 16) = v16;
    sub_1AE1B7530(inited);
    swift_endAccess();
    if (*(a1 + 104) >= 3u)
    {
      v22 = sub_1ADE66644(*v4, *(v4 + 8));
      swift_beginAccess();
      v23 = *(*(v8 + 24) + 16);
      if ((~v23 & 0xF000000000000007) != 0 && ((v23 >> 59) & 0x1E | (v23 >> 2) & 1) == 0xB)
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v24 = swift_initStaticObject();
      }

      swift_beginAccess();
      if (*(v24 + 24))
      {
        v26 = *(v24 + 24);
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v26 = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Value._StorageClass();
        v39 = swift_allocObject();
        v40 = *(v26 + 16);
        *(v39 + 16) = v40;
        sub_1ADE51B2C(v40);

        v26 = v39;
      }

      v41 = swift_allocObject();
      *(v41 + 16) = v22;
      v42 = v41 | 0x8000000000000000;
      v43 = *(v26 + 16);
      *(v26 + 16) = v42;
      sub_1ADE51B48(v43);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v24 = sub_1ADDE5178(v24);
      }
    }

    else
    {
      swift_beginAccess();
      v20 = *(*(v8 + 24) + 16);
      if ((~v20 & 0xF000000000000007) != 0 && ((v20 >> 59) & 0x1E | (v20 >> 2) & 1) == 0xB)
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v21 = swift_initStaticObject();
      }

      swift_beginAccess();
      if (*(v21 + 24))
      {
        v25 = *(v21 + 24);
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v25 = swift_initStaticObject();
      }

      v27 = *(v25 + 16);
      if ((~v27 & 0xF000000000000007) != 0 && ((v27 >> 59) & 0x1E | (v27 >> 2) & 1) == 7)
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_Reference._StorageClass();
        v28 = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();
        v28 = sub_1ADDE4C34(v28);
      }

      swift_beginAccess();
      *(v28 + 24) = 0;
      *(v28 + 32) = 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Value._StorageClass();
        v29 = swift_allocObject();
        v30 = *(v25 + 16);
        *(v29 + 16) = v30;
        sub_1ADE51B2C(v30);

        v25 = v29;
      }

      v31 = swift_allocObject();
      *(v31 + 16) = v28;
      v32 = v31 | 0x3000000000000004;
      v33 = *(v25 + 16);
      *(v25 + 16) = v32;
      sub_1ADE51B48(v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v21 = sub_1ADDE5178(v21);
      }

      swift_beginAccess();
      v34 = *(v21 + 24);
      *(v21 + 24) = v25;

      sub_1AE1B7530(v21);
      swift_endAccess();
      v35 = *v4;
      v36 = *(v4 + 8);
      sub_1ADDD86D8(*v4, v36);
      sub_1ADDCC35C(0, 0xC000000000000000);
      v37 = MEMORY[0x1E69E7CC0];

      sub_1ADDD86D8(v35, v36);

      sub_1ADDCC35C(v35, v36);
      swift_beginAccess();
      v38 = *(*(v8 + 24) + 16);
      if ((~v38 & 0xF000000000000007) != 0 && ((v38 >> 59) & 0x1E | (v38 >> 2) & 1) == 0xB)
      {
        v24 = *((v38 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v24 = swift_initStaticObject();
      }

      swift_beginAccess();
      if (*(v24 + 24))
      {
        v26 = *(v24 + 24);
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v26 = swift_initStaticObject();
      }

      v44 = *(v26 + 16);
      if ((~v44 & 0xF000000000000007) != 0 && ((v44 >> 59) & 0x1E | (v44 >> 2) & 1) == 7)
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_Reference._StorageClass();
        v45 = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();
        v45 = sub_1ADDE4C34(v45);
      }

      swift_beginAccess();
      v46 = v45[8];
      v47 = v45[9];
      v48 = v45[10];
      v45[8] = v37;
      v45[9] = v35;
      v45[10] = v36;
      sub_1ADE73D6C(v46, v47, v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Value._StorageClass();
        v49 = swift_allocObject();
        v50 = *(v26 + 16);
        *(v49 + 16) = v50;
        sub_1ADE51B2C(v50);

        v26 = v49;
      }

      v51 = swift_allocObject();
      *(v51 + 16) = v45;
      v52 = v51 | 0x3000000000000004;
      v53 = *(v26 + 16);
      *(v26 + 16) = v52;
      sub_1ADE51B48(v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v24 = sub_1ADDE5178(v24);
      }
    }

    swift_beginAccess();
    v54 = *(v24 + 24);
    *(v24 + 24) = v26;

    sub_1AE1B7530(v24);
    swift_endAccess();
  }

  return result;
}

uint64_t WeakTagged_1.id.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1ADDD86D8(v2, v3);
}

uint64_t WeakTagged_1.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1ADDCC35C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t (*WeakTagged_1.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t WeakTagged_1.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return WeakTagged_1.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return WeakTagged_1.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t WeakTagged_1.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for WeakTagged_1, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for WeakTagged_1, a5);
}

uint64_t WeakTagged_1.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for SharedTagged_1() + 36);
  v5 = *(type metadata accessor for WeakTagged_1() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t WeakTagged_1.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0])
  {
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  else
  {
    v12 = *v2;
    v13 = v3[1];
    v14.n128_u64[0] = v12;
    v14.n128_u64[1] = v13;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t WeakTagged_1.unknown.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_i64[0] < 2)
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_1.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a4;
  v66 = a1;
  v67 = a3;
  v68 = a5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v54 - v11;
  v61 = *(AssociatedTypeWitness - 8);
  v12 = *(v61 + 8);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v54 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = sub_1AE23D7CC();
  v54 = *(v18 - 8);
  v19 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v54 - v20;
  v59 = *(v17 - 8);
  v21 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v54 - v26;
  v28 = *(a2 + 36);
  v29 = swift_getAssociatedTypeWitness();
  v69 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v71.n128_u64[0] = v29;
  v71.n128_u64[1] = AssociatedConformanceWitness;
  v72 = &protocol witness table for Int;
  v73 = MEMORY[0x1E69E6540];
  v31 = type metadata accessor for CRExtensible();
  v32 = v64;
  CRExtensible.rawValue.getter(v31, &v74);
  v33 = v65;
  v63 = v65 + 16;
  if (v74)
  {
    v35 = v32[1];
    v70.n128_u64[0] = *v32;
    v34 = v70.n128_u64[0];
    v70.n128_u64[1] = v35;
    v36 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v70, &v71);
    v70 = v71;
    v37 = *(v33 + 16);
    sub_1ADDD86D8(v34, v35);
    v38 = v62;
    v37(&v70, AssociatedTypeWitness, v36, v67, v33);
    sub_1ADDCC35C(v70.n128_i64[0], v70.n128_u64[1]);
    v39 = v61;
    if ((*(v61 + 6))(v38, 1, AssociatedTypeWitness) == 1)
    {
      (*(v57 + 8))(v38, v58);
LABEL_6:
      v46 = swift_getAssociatedTypeWitness();
      return (*(*(v46 - 8) + 56))(v68, 1, 1, v46);
    }

    v48 = *(v39 + 4);
    v49 = v55;
    v48(v55, v38, AssociatedTypeWitness);
    v48(v56, v49, AssociatedTypeWitness);
    v50 = swift_getAssociatedTypeWitness();
    v51 = v68;
  }

  else
  {
    v61 = v27;
    v62 = v24;
    v40 = *v32;
    v41 = v32[1];
    v70.n128_u64[0] = v40;
    v70.n128_u64[1] = v41;
    v42 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v70, &v71);
    v70 = v71;
    v43 = *(v33 + 16);
    sub_1ADDD86D8(v40, v41);
    v44 = v60;
    v43(&v70, v17, v42, v67, v33);
    sub_1ADDCC35C(v70.n128_i64[0], v70.n128_u64[1]);
    v45 = v59;
    if ((*(v59 + 48))(v44, 1, v17) == 1)
    {
      (*(v54 + 8))(v44, v18);
      goto LABEL_6;
    }

    v52 = *(v45 + 32);
    v53 = v61;
    v52(v61, v44, v17);
    v52(v62, v53, v17);
    v50 = swift_getAssociatedTypeWitness();
    v51 = v68;
  }

  swift_dynamicCast();
  return (*(*(v50 - 8) + 56))(v51, 0, 1, v50);
}

uint64_t sub_1ADF1ECE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v64 = a3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = sub_1AE23D7CC();
  v54 = *(v56 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v53 - v8;
  v61 = *(AssociatedTypeWitness - 8);
  v9 = *(v61 + 8);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v53 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v57 = *(v15 - 8);
  v16 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v53 - v17;
  v58 = *(v14 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  v25 = *(a2 + 36);
  v26 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66.n128_u64[0] = v26;
  v66.n128_u64[1] = AssociatedConformanceWitness;
  v28 = v62;
  v67 = &protocol witness table for Int;
  v68 = MEMORY[0x1E69E6540];
  v29 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v29, &v69);
  if (v69)
  {
    v31 = v28[1];
    v65.n128_u64[0] = *v28;
    v30 = v65.n128_u64[0];
    v65.n128_u64[1] = v31;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v65, &v66);
    v32 = v66;
    v65 = v66;
    sub_1ADDD86D8(v30, v31);
    v33 = type metadata accessor for WeakRef();
    v34 = v60;
    sub_1AE21D3E4(v33, v60);
    v35 = v61;
    if ((*(v61 + 6))(v34, 1, AssociatedTypeWitness) == 1)
    {
      (*(v54 + 8))(v34, v56);
      v37 = *&v32 >> 64;
      v36 = v32;
LABEL_6:
      sub_1ADDCC35C(v36, v37);
      v45 = swift_getAssociatedTypeWitness();
      return (*(*(v45 - 8) + 56))(v64, 1, 1, v45);
    }

    v47 = *(v35 + 4);
    v48 = v53;
    v47(v53, v34, AssociatedTypeWitness);
    sub_1ADDCC35C(v32.n128_i64[0], v32.n128_u64[1]);
    v47(v55, v48, AssociatedTypeWitness);
    v49 = swift_getAssociatedTypeWitness();
    v50 = v64;
  }

  else
  {
    v56 = v24;
    v38 = v57;
    v60 = v15;
    v61 = v21;
    v39 = *v28;
    v40 = v28[1];
    v65.n128_u64[0] = v39;
    v65.n128_u64[1] = v40;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v65, &v66);
    v41 = v66;
    v65 = v66;
    sub_1ADDD86D8(v39, v40);
    v42 = type metadata accessor for WeakRef();
    v43 = v59;
    sub_1AE21D3E4(v42, v59);
    v44 = v58;
    if ((*(v58 + 48))(v43, 1, v14) == 1)
    {
      (*(v38 + 8))(v43, v60);
      v37 = *&v41 >> 64;
      v36 = v41;
      goto LABEL_6;
    }

    v51 = *(v44 + 32);
    v52 = v56;
    v51(v56, v43, v14);
    sub_1ADDCC35C(v41.n128_i64[0], v41.n128_u64[1]);
    v51(v61, v52, v14);
    v49 = swift_getAssociatedTypeWitness();
    v50 = v64;
  }

  swift_dynamicCast();
  return (*(*(v49 - 8) + 56))(v50, 0, 1, v49);
}

uint64_t sub_1ADF1F354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a2;
  v52 = a1;
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v48 = &v46 - v11;
  v47 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v46 - v14;
  swift_getAssociatedTypeWitness();
  v50 = sub_1AE23D7CC();
  v15 = *(v50 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v22 = *(a3 + 36);
  v23 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54.n128_u64[0] = v23;
  v54.n128_u64[1] = AssociatedConformanceWitness;
  v55 = &protocol witness table for Int;
  v56 = MEMORY[0x1E69E6540];
  v25 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v25, &v57);
  v49 = v15 + 16;
  if (v57)
  {
    v27 = v3[1];
    v53.n128_u64[0] = *v3;
    v26 = v53.n128_u64[0];
    v53.n128_u64[1] = v27;
    v28 = swift_getAssociatedConformanceWitness();
    v29 = WeakRef.init(id:)(&v53, &v54);
    v30 = v54;
    v31 = v52;
    v32 = v50;
    (*(v15 + 16))(v18, v52, v50, v29);
    sub_1ADDD86D8(v26, v27);
    v33 = v48;
    v34 = swift_dynamicCast();
    (*(*(AssociatedTypeWitness - 8) + 56))(v33, v34 ^ 1u, 1, AssociatedTypeWitness);
    v53 = v30;
    sub_1ADEAEA50(v33, &v53, AssociatedTypeWitness, v28);

    return (*(v15 + 8))(v31, v32);
  }

  else
  {
    v37 = v3[1];
    v53.n128_u64[0] = *v4;
    v36 = v53.n128_u64[0];
    v53.n128_u64[1] = v37;
    v38 = v47;
    v39 = swift_getAssociatedConformanceWitness();
    v40 = WeakRef.init(id:)(&v53, &v54);
    v41 = v54;
    v42 = v52;
    v43 = v50;
    (*(v15 + 16))(v21, v52, v50, v40);
    sub_1ADDD86D8(v36, v37);
    v44 = v46;
    v45 = swift_dynamicCast();
    (*(*(v38 - 8) + 56))(v44, v45 ^ 1u, 1, v38);
    v53 = v41;
    sub_1ADEAEA50(v44, &v53, v38, v39);

    return (*(v15 + 8))(v42, v43);
  }
}

uint64_t sub_1ADF1F7D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for WeakTagged_1();

  sub_1ADF4AA80(a1, v7, v8, &protocol requirements base descriptor for Tagged_1, &associated type descriptor for Tagged_1.AnyType, sub_1ADF1F354);
}

uint64_t WeakTagged_1.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4AA80(a1, a2, a3, &protocol requirements base descriptor for Tagged_1, &associated type descriptor for Tagged_1.AnyType, sub_1ADF1F354);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*WeakTagged_1.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v9[3] = v12;
  v13 = *(v12 - 8);
  v9[4] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v9[6] = v15;
  WeakTagged_1.subscript.getter(a2, a3);
  return sub_1ADF1FA70;
}

uint64_t sub_1ADF1FBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return WeakTagged_1.init(from:)(a1, a3);
}

uint64_t WeakTagged_1.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000017;
    *(v16 + 8) = 0x80000001AE25FB70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v7 = *(v4 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xB)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v50 = v8[2];
  v9 = *(type metadata accessor for WeakTagged_1() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v48 = AssociatedTypeWitness;
  v49 = v9;
  v47 = AssociatedConformanceWitness;
  result = CRExtensible.init(rawValue:)(&v50, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a2 + v9));
  if (*(a1 + 57) >= 3u)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xB)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v15[3])
    {
      inited = v15[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v18 = *(inited + 16);
    sub_1ADE51B2C(v18);

    if ((~v18 & 0xF000000000000007) != 0)
    {
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xF)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 16);
        if (v21 && v19 < v21)
        {
          v22 = *(v20 + 16 * v19 + 32);
          *a2 = v22;
          sub_1ADDD86D8(v22, *(&v22 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40();
        swift_allocError();
        *v44 = 0xD000000000000013;
        *(v44 + 8) = 0x80000001AE25FC60;
        *(v44 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_48:
        *&v50 = v48;
        *(&v50 + 1) = v47;
        v51 = &protocol witness table for Int;
        v52 = MEMORY[0x1E69E6540];
        v43 = type metadata accessor for CRExtensible();
        return (*(*(v43 - 8) + 8))(a2 + v49, v43);
      }

      result = sub_1ADE51B48(v18);
    }
  }

  v23 = *(a1 + 72);
  if (!v23)
  {
    __break(1u);
    goto LABEL_52;
  }

  v24 = *(v23 + 16);
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v26 = v25[3];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v27 = swift_initStaticObject();
  }

  v28 = *(v27 + 16);
  if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 7)
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v29 = swift_initStaticObject();
  }

  swift_beginAccess();
  if (v29[8])
  {
    v31 = v29[9];
    v30 = v29[10];
    v32 = v29[8];

    sub_1ADDD86D8(v31, v30);
  }

  else
  {
    v31 = 0;
    v30 = 0xC000000000000000;
  }

  sub_1ADDE94BC(v31, v30, &v50);
  if (v5)
  {
    goto LABEL_39;
  }

  *a2 = v50;
LABEL_41:
  *&v50 = v48;
  *(&v50 + 1) = AssociatedConformanceWitness;
  v51 = &protocol witness table for Int;
  v52 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v33, &v53);
  v34 = *(a1 + 16);
  if (v53)
  {
    if (v34)
    {
      v35 = swift_getAssociatedTypeWitness();
      v37 = *(a2 + 8);
      *&v50 = *a2;
      v36 = v50;
      *(&v50 + 1) = v37;
      v45 = *(*v34 + 200);

      sub_1ADDD86D8(v36, v37);
      v38 = swift_getAssociatedConformanceWitness();
      v45(v35, &v50, a1, 1, v35, v38);
      if (v5)
      {
        goto LABEL_47;
      }

LABEL_49:
      sub_1ADDCC35C(v50, *(&v50 + 1));
    }

    goto LABEL_53;
  }

  if (v34)
  {
    v39 = swift_getAssociatedTypeWitness();
    v41 = *(a2 + 8);
    *&v50 = *a2;
    v40 = v50;
    *(&v50 + 1) = v41;
    v46 = *(*v34 + 200);

    sub_1ADDD86D8(v40, v41);
    v42 = swift_getAssociatedConformanceWitness();
    v46(v39, &v50, a1, 1, v39, v42);
    if (v5)
    {
LABEL_47:
      sub_1ADDCC35C(v50, *(&v50 + 1));

      sub_1ADDCC35C(*a2, *(a2 + 8));
      goto LABEL_48;
    }

    goto LABEL_49;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t (*WeakTagged_2.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t WeakTagged_2.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return WeakTagged_2.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return WeakTagged_2.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t WeakTagged_2.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for WeakTagged_2, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for WeakTagged_2, a5);
}

uint64_t WeakTagged_2.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for SharedTagged_2() + 36);
  v5 = *(type metadata accessor for WeakTagged_2() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t WeakTagged_2.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0])
  {
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  else
  {
    v12 = *v2;
    v13 = v3[1];
    v14.n128_u64[0] = v12;
    v14.n128_u64[1] = v13;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t WeakTagged_2.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 1)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_2.unknown.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_i64[0] < 2)
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_2.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v92 = a4;
  v94 = a1;
  v95 = a3;
  v90 = a5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v72 - v11;
  v89 = AssociatedTypeWitness;
  v87 = *(AssociatedTypeWitness - 8);
  v12 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v72 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v79 = sub_1AE23D7CC();
  v78 = *(v79 - 8);
  v18 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v86 = &v72 - v19;
  v85 = *(v17 - 8);
  v20 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v72 - v24;
  v26 = swift_getAssociatedTypeWitness();
  v76 = sub_1AE23D7CC();
  v75 = *(v76 - 8);
  v27 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v29 = &v72 - v28;
  v84 = *(v26 - 8);
  v30 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v74 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v73 = &v72 - v34;
  v35 = *(a2 + 36);
  v36 = swift_getAssociatedTypeWitness();
  v37 = v6;
  v38 = v92;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v97.n128_u64[0] = v36;
  v97.n128_u64[1] = AssociatedConformanceWitness;
  v98 = &protocol witness table for Int;
  v99 = MEMORY[0x1E69E6540];
  v40 = type metadata accessor for CRExtensible();
  v41 = v93;
  CRExtensible.rawValue.getter(v40, &v100);
  v91 = v38 + 16;
  if (v100 == 1)
  {
    v89 = v25;
    v50 = v41[1];
    v96.n128_u64[0] = *v41;
    v49 = v96.n128_u64[0];
    v96.n128_u64[1] = v50;
    v51 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v96, &v97);
    v96 = v97;
    v52 = *(v38 + 16);
    sub_1ADDD86D8(v49, v50);
    v53 = v86;
    v52(&v96, v17, v51, v95, v38);
    sub_1ADDCC35C(v96.n128_i64[0], v96.n128_u64[1]);
    v54 = v85;
    if ((*(v85 + 48))(v53, 1, v17) == 1)
    {
      (*(v78 + 8))(v53, v79);
      v48 = v90;
      goto LABEL_9;
    }

    v66 = *(v54 + 32);
    v67 = v89;
    v66(v89, v53, v17);
    v66(v77, v67, v17);
    v68 = swift_getAssociatedTypeWitness();
    v69 = v90;
  }

  else
  {
    if (v100)
    {
      v56 = v41[1];
      v96.n128_u64[0] = *v41;
      v55 = v96.n128_u64[0];
      v96.n128_u64[1] = v56;
      v57 = v89;
      v58 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v96, &v97);
      v96 = v97;
      v59 = *(v38 + 16);
      sub_1ADDD86D8(v55, v56);
      v60 = v88;
      v59(&v96, v57, v58, v95, v38);
      sub_1ADDCC35C(v96.n128_i64[0], v96.n128_u64[1]);
      v61 = v87;
      if ((*(v87 + 48))(v60, 1, v57) == 1)
      {
        (*(v82 + 8))(v60, v83);
        v48 = v90;
        goto LABEL_9;
      }

      v70 = *(v61 + 32);
      v71 = v80;
      v70(v80, v60, v57);
      v70(v81, v71, v57);
    }

    else
    {
      v43 = v41[1];
      v96.n128_u64[0] = *v41;
      v42 = v96.n128_u64[0];
      v96.n128_u64[1] = v43;
      v93 = v37;
      v44 = v38;
      v45 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v96, &v97);
      v96 = v97;
      v46 = *(v44 + 16);
      sub_1ADDD86D8(v42, v43);
      v46(&v96, v26, v45, v95, v44);
      sub_1ADDCC35C(v96.n128_i64[0], v96.n128_u64[1]);
      v47 = v84;
      if ((*(v84 + 48))(v29, 1, v26) == 1)
      {
        (*(v75 + 8))(v29, v76);
        v48 = v90;
LABEL_9:
        v62 = swift_getAssociatedTypeWitness();
        return (*(*(v62 - 8) + 56))(v48, 1, 1, v62);
      }

      v64 = *(v47 + 32);
      v65 = v73;
      v64(v73, v29, v26);
      v64(v74, v65, v26);
    }

    v68 = swift_getAssociatedTypeWitness();
    v69 = v90;
  }

  swift_dynamicCast();
  return (*(*(v68 - 8) + 56))(v69, 0, 1, v68);
}

uint64_t sub_1ADF211B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a1;
  v86 = a3;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = sub_1AE23D7CC();
  v75 = *(v77 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v84 = &v69 - v8;
  v85 = AssociatedTypeWitness;
  v83 = *(AssociatedTypeWitness - 8);
  v9 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v69 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v73 = sub_1AE23D7CC();
  v78 = *(v73 - 8);
  v15 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v82 = &v69 - v16;
  v81 = *(v14 - 8);
  v17 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v69 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v72 = sub_1AE23D7CC();
  v70 = *(v72 - 8);
  v25 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v80 = &v69 - v26;
  v79 = *(v24 - 8);
  v27 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v71 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v69 = &v69 - v31;
  v32 = *(a2 + 36);
  v33 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v90.n128_u64[0] = v33;
  v90.n128_u64[1] = AssociatedConformanceWitness;
  v91 = &protocol witness table for Int;
  v92 = MEMORY[0x1E69E6540];
  v35 = type metadata accessor for CRExtensible();
  v36 = v87;
  CRExtensible.rawValue.getter(v35, &v93);
  if (v93 == 1)
  {
    v45 = v78;
    v85 = v20;
    v47 = v36[1];
    v89.n128_u64[0] = *v36;
    v46 = v89.n128_u64[0];
    v89.n128_u64[1] = v47;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v89, &v90);
    v49 = v90.n128_u64[1];
    v48 = v90.n128_u64[0];
    v89 = v90;
    sub_1ADDD86D8(v46, v47);
    v50 = type metadata accessor for WeakRef();
    v51 = v82;
    sub_1AE21D3E4(v50, v82);
    v52 = v81;
    if ((*(v81 + 48))(v51, 1, v14) != 1)
    {
      v66 = *(v52 + 32);
      v66(v23, v51, v14);
      sub_1ADDCC35C(v48, v49);
      v66(v85, v23, v14);
      v64 = swift_getAssociatedTypeWitness();
      v65 = v86;
      goto LABEL_14;
    }

    (*(v45 + 8))(v51, v73);
LABEL_9:
    v43 = v48;
    v44 = v49;
    goto LABEL_10;
  }

  if (v93)
  {
    v54 = v36[1];
    v89.n128_u64[0] = *v36;
    v53 = v89.n128_u64[0];
    v89.n128_u64[1] = v54;
    v55 = v85;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v89, &v90);
    v49 = v90.n128_u64[1];
    v48 = v90.n128_u64[0];
    v89 = v90;
    sub_1ADDD86D8(v53, v54);
    v56 = type metadata accessor for WeakRef();
    v57 = v84;
    sub_1AE21D3E4(v56, v84);
    v58 = v83;
    if ((*(v83 + 48))(v57, 1, v55) != 1)
    {
      v67 = *(v58 + 32);
      v68 = v74;
      v67(v74, v57, v55);
      sub_1ADDCC35C(v48, v49);
      v67(v76, v68, v55);
      v64 = swift_getAssociatedTypeWitness();
      v65 = v86;
      goto LABEL_14;
    }

    (*(v75 + 8))(v57, v77);
    goto LABEL_9;
  }

  v38 = v36[1];
  v89.n128_u64[0] = *v36;
  v37 = v89.n128_u64[0];
  v89.n128_u64[1] = v38;
  swift_getAssociatedConformanceWitness();
  WeakRef.init(id:)(&v89, &v90);
  v39 = v90;
  v89 = v90;
  sub_1ADDD86D8(v37, v38);
  v40 = type metadata accessor for WeakRef();
  v41 = v80;
  sub_1AE21D3E4(v40, v80);
  v42 = v79;
  if ((*(v79 + 48))(v41, 1, v24) == 1)
  {
    (*(v70 + 8))(v41, v72);
    v44 = *&v39 >> 64;
    v43 = v39;
LABEL_10:
    sub_1ADDCC35C(v43, v44);
    v59 = v86;
    v60 = swift_getAssociatedTypeWitness();
    return (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
  }

  v62 = *(v42 + 32);
  v63 = v69;
  v62(v69, v41, v24);
  sub_1ADDCC35C(v39.n128_i64[0], v39.n128_u64[1]);
  v62(v71, v63, v24);
  v64 = swift_getAssociatedTypeWitness();
  v65 = v86;
LABEL_14:
  swift_dynamicCast();
  return (*(*(v64 - 8) + 56))(v65, 0, 1, v64);
}

uint64_t sub_1ADF21AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a2;
  v71 = a1;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v61 - v8;
  v64 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = &v61 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_1AE23D7CC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v62 = &v61 - v15;
  swift_getAssociatedTypeWitness();
  v69 = sub_1AE23D7CC();
  v16 = *(v69 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61 - v24;
  v26 = *(a3 + 36);
  v27 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v73.n128_u64[0] = v27;
  v73.n128_u64[1] = AssociatedConformanceWitness;
  v74 = &protocol witness table for Int;
  v75 = MEMORY[0x1E69E6540];
  v29 = type metadata accessor for CRExtensible();
  v30 = v68;
  v31 = v16;
  CRExtensible.rawValue.getter(v29, &v76);
  v67 = v16 + 16;
  if (v76 == 1)
  {
    v43 = v30;
    v44 = *v30;
    v45 = v43[1];
    v72.n128_u64[0] = v44;
    v72.n128_u64[1] = v45;
    v46 = v64;
    v47 = swift_getAssociatedConformanceWitness();
    v48 = WeakRef.init(id:)(&v72, &v73);
    v50 = v73.n128_u64[1];
    v49 = v73.n128_u64[0];
    v51 = v71;
    v52 = v69;
    (*(v31 + 16))(v22, v71, v69, v48);
    sub_1ADDD86D8(v44, v45);
    v53 = v63;
    v54 = swift_dynamicCast();
    (*(*(v46 - 8) + 56))(v53, v54 ^ 1u, 1, v46);
    v72.n128_u64[0] = v49;
  }

  else
  {
    if (!v76)
    {
      v32 = v30;
      v33 = *v30;
      v34 = v32[1];
      v72.n128_u64[0] = v33;
      v72.n128_u64[1] = v34;
      v35 = swift_getAssociatedConformanceWitness();
      v36 = WeakRef.init(id:)(&v72, &v73);
      v37 = v73;
      v38 = v71;
      v39 = v69;
      (*(v16 + 16))(v25, v71, v69, v36);
      sub_1ADDD86D8(v33, v34);
      v40 = v62;
      v41 = swift_dynamicCast();
      (*(*(v12 - 8) + 56))(v40, v41 ^ 1u, 1, v12);
      v72 = v37;
      sub_1ADEAEA50(v40, &v72, v12, v35);

      return (*(v16 + 8))(v38, v39);
    }

    v55 = v30;
    v56 = *v30;
    v57 = v55[1];
    v72.n128_u64[0] = v56;
    v72.n128_u64[1] = v57;
    v46 = AssociatedTypeWitness;
    v47 = swift_getAssociatedConformanceWitness();
    v58 = WeakRef.init(id:)(&v72, &v73);
    v50 = v73.n128_u64[1];
    v59 = v73.n128_u64[0];
    v51 = v71;
    v52 = v69;
    (*(v31 + 16))(v19, v71, v69, v58);
    sub_1ADDD86D8(v56, v57);
    v53 = v65;
    v60 = swift_dynamicCast();
    (*(*(v46 - 8) + 56))(v53, v60 ^ 1u, 1, v46);
    v72.n128_u64[0] = v59;
  }

  v72.n128_u64[1] = v50;
  sub_1ADEAEA50(v53, &v72, v46, v47);

  return (*(v31 + 8))(v51, v52);
}

uint64_t sub_1ADF22114(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for WeakTagged_2();

  sub_1ADF4AA80(a1, v7, v8, &protocol requirements base descriptor for Tagged_2, &associated type descriptor for Tagged_2.AnyType, sub_1ADF21AEC);
}

uint64_t WeakTagged_2.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4AA80(a1, a2, a3, &protocol requirements base descriptor for Tagged_2, &associated type descriptor for Tagged_2.AnyType, sub_1ADF21AEC);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*WeakTagged_2.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v9[3] = v12;
  v13 = *(v12 - 8);
  v9[4] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v9[6] = v15;
  WeakTagged_2.subscript.getter(a2, a3);
  return sub_1ADF223B0;
}

uint64_t sub_1ADF224B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return WeakTagged_2.init(from:)(a1, a3);
}

uint64_t WeakTagged_2.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000017;
    *(v16 + 8) = 0x80000001AE25FB70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v7 = *(v4 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xB)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v45 = v8[2];
  v9 = *(type metadata accessor for WeakTagged_2() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v43 = AssociatedTypeWitness;
  v44 = v9;
  v42 = AssociatedConformanceWitness;
  result = CRExtensible.init(rawValue:)(&v45, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a2 + v9));
  if (*(a1 + 57) >= 3u)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xB)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v15[3])
    {
      inited = v15[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v18 = *(inited + 16);
    sub_1ADE51B2C(v18);

    if ((~v18 & 0xF000000000000007) != 0)
    {
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xF)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 16);
        if (v21 && v19 < v21)
        {
          v22 = *(v20 + 16 * v19 + 32);
          *a2 = v22;
          sub_1ADDD86D8(v22, *(&v22 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40();
        swift_allocError();
        *v40 = 0xD000000000000013;
        *(v40 + 8) = 0x80000001AE25FC60;
        *(v40 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_50:
        *&v45 = v43;
        *(&v45 + 1) = v42;
        v46 = &protocol witness table for Int;
        v47 = MEMORY[0x1E69E6540];
        v39 = type metadata accessor for CRExtensible();
        return (*(*(v39 - 8) + 8))(a2 + v44, v39);
      }

      result = sub_1ADE51B48(v18);
    }
  }

  v23 = *(a1 + 72);
  if (!v23)
  {
    __break(1u);
    goto LABEL_54;
  }

  v24 = *(v23 + 16);
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v26 = v25[3];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v27 = swift_initStaticObject();
  }

  v28 = *(v27 + 16);
  if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 7)
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v29 = swift_initStaticObject();
  }

  swift_beginAccess();
  if (v29[8])
  {
    v31 = v29[9];
    v30 = v29[10];
    v32 = v29[8];

    sub_1ADDD86D8(v31, v30);
  }

  else
  {
    v31 = 0;
    v30 = 0xC000000000000000;
  }

  sub_1ADDE94BC(v31, v30, &v45);
  if (v5)
  {
    goto LABEL_39;
  }

  *a2 = v45;
LABEL_41:
  *&v45 = v43;
  *(&v45 + 1) = AssociatedConformanceWitness;
  v46 = &protocol witness table for Int;
  v47 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v33, &v48);
  v34 = *(a1 + 16);
  if (v48 == 1)
  {
    if (v34)
    {
      goto LABEL_48;
    }

    goto LABEL_56;
  }

  if (!v48)
  {
    if (v34)
    {
      goto LABEL_48;
    }

    goto LABEL_55;
  }

  if (v34)
  {
LABEL_48:
    v35 = swift_getAssociatedTypeWitness();
    v37 = *(a2 + 8);
    *&v45 = *a2;
    v36 = v45;
    *(&v45 + 1) = v37;
    v41 = *(*v34 + 200);

    sub_1ADDD86D8(v36, v37);
    v38 = swift_getAssociatedConformanceWitness();
    v41(v35, &v45, a1, 1, v35, v38);
    if (v5)
    {
      sub_1ADDCC35C(v45, *(&v45 + 1));

      sub_1ADDCC35C(*a2, *(a2 + 8));
      goto LABEL_50;
    }

    sub_1ADDCC35C(v45, *(&v45 + 1));
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t (*WeakTagged_3.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t WeakTagged_3.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return WeakTagged_3.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return WeakTagged_3.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t WeakTagged_3.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for WeakTagged_3, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for WeakTagged_3, a5);
}

uint64_t WeakTagged_3.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for SharedTagged_3() + 36);
  v5 = *(type metadata accessor for WeakTagged_3() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t WeakTagged_3.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0])
  {
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  else
  {
    v12 = *v2;
    v13 = v3[1];
    v14.n128_u64[0] = v12;
    v14.n128_u64[1] = v13;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t WeakTagged_3.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 1)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_3.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 2)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_3.unknown.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_i64[0] < 2)
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_3.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v109 = a4;
  v111 = a1;
  v112 = a3;
  v113 = a5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v98 = sub_1AE23D7CC();
  v97 = *(v98 - 8);
  v9 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v106 = &v84 - v10;
  v107 = AssociatedTypeWitness;
  v105 = *(AssociatedTypeWitness - 8);
  v11 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v84 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v94 = sub_1AE23D7CC();
  v100 = *(v94 - 8);
  v17 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v104 = &v84 - v18;
  v103 = *(v16 - 8);
  v19 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v93 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v84 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v91 = sub_1AE23D7CC();
  v90 = *(v91 - 8);
  v25 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v102 = &v84 - v26;
  v101 = *(v24 - 8);
  v27 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v89 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v88 = &v84 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v87 = sub_1AE23D7CC();
  v86 = *(v87 - 8);
  v33 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v35 = &v84 - v34;
  v99 = *(v32 - 8);
  v36 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v85 = &v84 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v84 - v40;
  v42 = *(a2 + 36);
  v43 = swift_getAssociatedTypeWitness();
  v44 = v109;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v115.n128_u64[0] = v43;
  v115.n128_u64[1] = AssociatedConformanceWitness;
  v116 = &protocol witness table for Int;
  v117 = MEMORY[0x1E69E6540];
  v46 = type metadata accessor for CRExtensible();
  v47 = v110;
  CRExtensible.rawValue.getter(v46, &v118);
  v108 = v44 + 16;
  if (v118 != 2)
  {
    if (v118 == 1)
    {
      v54 = v47[1];
      v114.n128_u64[0] = *v47;
      v53 = v114.n128_u64[0];
      v114.n128_u64[1] = v54;
      v55 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v114, &v115);
      v114 = v115;
      v56 = *(v44 + 16);
      sub_1ADDD86D8(v53, v54);
      v57 = v102;
      v56(&v114, v24, v55, v112, v44);
      sub_1ADDCC35C(v114.n128_i64[0], v114.n128_u64[1]);
      v58 = v101;
      if ((*(v101 + 48))(v57, 1, v24) == 1)
      {
        (*(v90 + 8))(v57, v91);
        goto LABEL_12;
      }

      v74 = *(v58 + 32);
      v75 = v88;
      v74(v88, v57, v24);
      v76 = &v119;
    }

    else
    {
      if (!v118)
      {
        v49 = v47[1];
        v114.n128_u64[0] = *v47;
        v48 = v114.n128_u64[0];
        v114.n128_u64[1] = v49;
        v110 = v6;
        v50 = swift_getAssociatedConformanceWitness();
        WeakRef.init(id:)(&v114, &v115);
        v114 = v115;
        v51 = *(v44 + 16);
        sub_1ADDD86D8(v48, v49);
        v51(&v114, v32, v50, v112, v44);
        sub_1ADDCC35C(v114.n128_i64[0], v114.n128_u64[1]);
        v52 = v99;
        if ((*(v99 + 48))(v35, 1, v32) == 1)
        {
          (*(v86 + 8))(v35, v87);
LABEL_12:
          v72 = swift_getAssociatedTypeWitness();
          return (*(*(v72 - 8) + 56))(v113, 1, 1, v72);
        }

        v81 = *(v52 + 32);
        v81(v41, v35, v32);
        v81(v85, v41, v32);
        v82 = swift_getAssociatedTypeWitness();
        v83 = v113;
        goto LABEL_18;
      }

      v67 = v47[1];
      v114.n128_u64[0] = *v47;
      v66 = v114.n128_u64[0];
      v114.n128_u64[1] = v67;
      v24 = v107;
      v68 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v114, &v115);
      v114 = v115;
      v69 = *(v44 + 16);
      sub_1ADDD86D8(v66, v67);
      v70 = v106;
      v69(&v114, v24, v68, v112, v44);
      sub_1ADDCC35C(v114.n128_i64[0], v114.n128_u64[1]);
      v71 = v105;
      if ((*(v105 + 48))(v70, 1, v24) == 1)
      {
        (*(v97 + 8))(v70, v98);
        goto LABEL_12;
      }

      v74 = *(v71 + 32);
      v75 = v95;
      v74(v95, v70, v24);
      v76 = &v120;
    }

    v74(*(v76 - 32), v75, v24);
    v82 = swift_getAssociatedTypeWitness();
    v83 = v113;
LABEL_18:
    swift_dynamicCast();
    return (*(*(v82 - 8) + 56))(v83, 0, 1, v82);
  }

  v59 = v100;
  v61 = v47[1];
  v114.n128_u64[0] = *v47;
  v60 = v114.n128_u64[0];
  v114.n128_u64[1] = v61;
  v62 = swift_getAssociatedConformanceWitness();
  WeakRef.init(id:)(&v114, &v115);
  v114 = v115;
  v63 = *(v44 + 16);
  sub_1ADDD86D8(v60, v61);
  v64 = v104;
  v63(&v114, v16, v62, v112, v44);
  sub_1ADDCC35C(v114.n128_i64[0], v114.n128_u64[1]);
  v65 = v103;
  if ((*(v103 + 48))(v64, 1, v16) == 1)
  {
    (*(v59 + 8))(v64, v94);
    goto LABEL_12;
  }

  v77 = *(v65 + 32);
  v78 = v92;
  v77(v92, v64, v16);
  v77(v93, v78, v16);
  v79 = swift_getAssociatedTypeWitness();
  v80 = v113;
  swift_dynamicCast();
  return (*(*(v79 - 8) + 56))(v80, 0, 1, v79);
}

uint64_t sub_1ADF23E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a1;
  v111 = a3;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = sub_1AE23D7CC();
  v95 = *(v97 - 8);
  v7 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v107 = &v84 - v8;
  v108 = AssociatedTypeWitness;
  v106 = *(AssociatedTypeWitness - 8);
  v9 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v84 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v92 = sub_1AE23D7CC();
  v100 = *(v92 - 8);
  v15 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v105 = &v84 - v16;
  v103 = v14;
  v104 = *(v14 - 8);
  v17 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v84 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v91 = sub_1AE23D7CC();
  v89 = *(v91 - 8);
  v23 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v102 = &v84 - v24;
  v101 = *(v22 - 8);
  v25 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v90 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v88 = &v84 - v29;
  v30 = swift_getAssociatedTypeWitness();
  v87 = sub_1AE23D7CC();
  v85 = *(v87 - 8);
  v31 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v33 = &v84 - v32;
  v98 = *(v30 - 8);
  v34 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v86 = &v84 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v84 - v38;
  v40 = *(a2 + 36);
  v41 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v113.n128_u64[0] = v41;
  v113.n128_u64[1] = AssociatedConformanceWitness;
  v114 = &protocol witness table for Int;
  v115 = MEMORY[0x1E69E6540];
  v43 = type metadata accessor for CRExtensible();
  v44 = v109;
  CRExtensible.rawValue.getter(v43, &v116);
  if (v116 == 2)
  {
    v59 = v99;
    v60 = v100;
    v62 = v44[1];
    v112.n128_u64[0] = *v44;
    v61 = v112.n128_u64[0];
    v112.n128_u64[1] = v62;
    v63 = v103;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v112, &v113);
    v64 = v113;
    v112 = v113;
    sub_1ADDD86D8(v61, v62);
    v65 = type metadata accessor for WeakRef();
    v66 = v105;
    sub_1AE21D3E4(v65, v105);
    v67 = v104;
    if ((*(v104 + 48))(v66, 1, v63) == 1)
    {
      (*(v60 + 8))(v66, v92);
      sub_1ADDCC35C(v64.n128_i64[0], v64.n128_u64[1]);
LABEL_14:
      v74 = swift_getAssociatedTypeWitness();
      return (*(*(v74 - 8) + 56))(v111, 1, 1, v74);
    }

    v80 = *(v67 + 32);
    v80(v59, v66, v63);
    sub_1ADDCC35C(v64.n128_i64[0], v64.n128_u64[1]);
    v80(v93, v59, v63);
    v78 = swift_getAssociatedTypeWitness();
    v79 = v111;
    goto LABEL_19;
  }

  if (v116 == 1)
  {
    v53 = v44[1];
    v112.n128_u64[0] = *v44;
    v52 = v112.n128_u64[0];
    v112.n128_u64[1] = v53;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v112, &v113);
    v55 = v113.n128_u64[1];
    v54 = v113.n128_u64[0];
    v112 = v113;
    sub_1ADDD86D8(v52, v53);
    v56 = type metadata accessor for WeakRef();
    v57 = v102;
    sub_1AE21D3E4(v56, v102);
    v58 = v101;
    if ((*(v101 + 48))(v57, 1, v22) != 1)
    {
      v76 = *(v58 + 32);
      v77 = v88;
      v76(v88, v57, v22);
      sub_1ADDCC35C(v54, v55);
      v76(v90, v77, v22);
      v78 = swift_getAssociatedTypeWitness();
      v79 = v111;
      goto LABEL_19;
    }

    (*(v89 + 8))(v57, v91);
LABEL_12:
    v50 = v54;
    v51 = v55;
    goto LABEL_13;
  }

  if (v116)
  {
    v69 = v44[1];
    v112.n128_u64[0] = *v44;
    v68 = v112.n128_u64[0];
    v112.n128_u64[1] = v69;
    v70 = v108;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v112, &v113);
    v55 = v113.n128_u64[1];
    v54 = v113.n128_u64[0];
    v112 = v113;
    sub_1ADDD86D8(v68, v69);
    v71 = type metadata accessor for WeakRef();
    v72 = v107;
    sub_1AE21D3E4(v71, v107);
    v73 = v106;
    if ((*(v106 + 48))(v72, 1, v70) != 1)
    {
      v82 = *(v73 + 32);
      v83 = v94;
      v82(v94, v72, v70);
      sub_1ADDCC35C(v54, v55);
      v82(v96, v83, v70);
      v78 = swift_getAssociatedTypeWitness();
      v79 = v111;
      goto LABEL_19;
    }

    (*(v95 + 8))(v72, v97);
    goto LABEL_12;
  }

  v46 = v44[1];
  v112.n128_u64[0] = *v44;
  v45 = v112.n128_u64[0];
  v112.n128_u64[1] = v46;
  swift_getAssociatedConformanceWitness();
  WeakRef.init(id:)(&v112, &v113);
  v47 = v113;
  v112 = v113;
  sub_1ADDD86D8(v45, v46);
  v48 = type metadata accessor for WeakRef();
  sub_1AE21D3E4(v48, v33);
  v49 = v98;
  if ((*(v98 + 48))(v33, 1, v30) == 1)
  {
    (*(v85 + 8))(v33, v87);
    v51 = *&v47 >> 64;
    v50 = v47;
LABEL_13:
    sub_1ADDCC35C(v50, v51);
    goto LABEL_14;
  }

  v81 = *(v49 + 32);
  v81(v39, v33, v30);
  sub_1ADDCC35C(v47.n128_i64[0], v47.n128_u64[1]);
  v81(v86, v39, v30);
  v78 = swift_getAssociatedTypeWitness();
  v79 = v111;
LABEL_19:
  swift_dynamicCast();
  return (*(*(v78 - 8) + 56))(v79, 0, 1, v78);
}

uint64_t sub_1ADF24A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94 = a2;
  v95 = a1;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v82 - v8;
  v88 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v82 - v11;
  v86 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v85 = &v82 - v14;
  v84 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v83 = &v82 - v17;
  swift_getAssociatedTypeWitness();
  v93 = sub_1AE23D7CC();
  v18 = *(v93 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v82 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v82 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v82 - v29;
  v31 = *(a3 + 36);
  v32 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v97.n128_u64[0] = v32;
  v97.n128_u64[1] = AssociatedConformanceWitness;
  v98 = &protocol witness table for Int;
  v99 = MEMORY[0x1E69E6540];
  v34 = type metadata accessor for CRExtensible();
  v35 = v92;
  v36 = v18;
  CRExtensible.rawValue.getter(v34, &v100);
  v91 = v18 + 16;
  if (v100 == 2)
  {
    v61 = v35[1];
    v96.n128_u64[0] = *v35;
    v60 = v96.n128_u64[0];
    v96.n128_u64[1] = v61;
    v62 = v88;
    v63 = swift_getAssociatedConformanceWitness();
    v64 = WeakRef.init(id:)(&v96, &v97);
    v65 = v97;
    v66 = v95;
    v67 = v93;
    (*(v36 + 16))(v24, v95, v93, v64);
    sub_1ADDD86D8(v60, v61);
    v68 = v87;
    v69 = swift_dynamicCast();
    (*(*(v62 - 8) + 56))(v68, v69 ^ 1u, 1, v62);
    v96 = v65;
    sub_1ADEAEA50(v68, &v96, v62, v63);

    return (*(v36 + 8))(v66, v67);
  }

  else if (v100 == 1)
  {
    v49 = v35[1];
    v96.n128_u64[0] = *v35;
    v48 = v96.n128_u64[0];
    v96.n128_u64[1] = v49;
    v50 = v86;
    v51 = swift_getAssociatedConformanceWitness();
    v52 = WeakRef.init(id:)(&v96, &v97);
    v53 = v97;
    v54 = *(v36 + 16);
    v55 = v95;
    v56 = v36;
    v57 = v93;
    v54(v27, v95, v93, v52);
    sub_1ADDD86D8(v48, v49);
    v58 = v85;
    v59 = swift_dynamicCast();
    (*(*(v50 - 8) + 56))(v58, v59 ^ 1u, 1, v50);
    v96 = v53;
    sub_1ADEAEA50(v58, &v96, v50, v51);

    return (*(v56 + 8))(v55, v57);
  }

  else if (v100)
  {
    v71 = v35[1];
    v96.n128_u64[0] = *v35;
    v70 = v96.n128_u64[0];
    v96.n128_u64[1] = v71;
    v72 = AssociatedTypeWitness;
    v73 = swift_getAssociatedConformanceWitness();
    v74 = WeakRef.init(id:)(&v96, &v97);
    v75 = v97;
    v76 = *(v36 + 16);
    v77 = v95;
    v78 = v36;
    v79 = v93;
    v76(v21, v95, v93, v74);
    sub_1ADDD86D8(v70, v71);
    v80 = v89;
    v81 = swift_dynamicCast();
    (*(*(v72 - 8) + 56))(v80, v81 ^ 1u, 1, v72);
    v96 = v75;
    sub_1ADEAEA50(v80, &v96, v72, v73);

    return (*(v78 + 8))(v77, v79);
  }

  else
  {
    v38 = v35[1];
    v96.n128_u64[0] = *v35;
    v37 = v96.n128_u64[0];
    v96.n128_u64[1] = v38;
    v39 = v84;
    v40 = swift_getAssociatedConformanceWitness();
    v41 = WeakRef.init(id:)(&v96, &v97);
    v42 = v97;
    v43 = v95;
    v44 = v93;
    (*(v18 + 16))(v30, v95, v93, v41);
    sub_1ADDD86D8(v37, v38);
    v45 = v83;
    v46 = swift_dynamicCast();
    (*(*(v39 - 8) + 56))(v45, v46 ^ 1u, 1, v39);
    v96 = v42;
    sub_1ADEAEA50(v45, &v96, v39, v40);

    return (*(v18 + 8))(v43, v44);
  }
}

uint64_t sub_1ADF25250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for WeakTagged_3();

  sub_1ADF4AA80(a1, v7, v8, &protocol requirements base descriptor for Tagged_3, &associated type descriptor for Tagged_3.AnyType, sub_1ADF24A70);
}

uint64_t WeakTagged_3.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4AA80(a1, a2, a3, &protocol requirements base descriptor for Tagged_3, &associated type descriptor for Tagged_3.AnyType, sub_1ADF24A70);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*WeakTagged_3.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v9[3] = v12;
  v13 = *(v12 - 8);
  v9[4] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v9[6] = v15;
  WeakTagged_3.subscript.getter(a2, a3);
  return sub_1ADF254EC;
}

uint64_t sub_1ADF25604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return WeakTagged_3.init(from:)(a1, a3);
}

uint64_t WeakTagged_3.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000017;
    *(v16 + 8) = 0x80000001AE25FB70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v7 = *(v4 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xB)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v45 = v8[2];
  v9 = *(type metadata accessor for WeakTagged_3() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v43 = AssociatedTypeWitness;
  v44 = v9;
  v42 = AssociatedConformanceWitness;
  result = CRExtensible.init(rawValue:)(&v45, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a2 + v9));
  if (*(a1 + 57) >= 3u)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xB)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v15[3])
    {
      inited = v15[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v18 = *(inited + 16);
    sub_1ADE51B2C(v18);

    if ((~v18 & 0xF000000000000007) != 0)
    {
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xF)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 16);
        if (v21 && v19 < v21)
        {
          v22 = *(v20 + 16 * v19 + 32);
          *a2 = v22;
          sub_1ADDD86D8(v22, *(&v22 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40();
        swift_allocError();
        *v40 = 0xD000000000000013;
        *(v40 + 8) = 0x80000001AE25FC60;
        *(v40 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_53:
        *&v45 = v43;
        *(&v45 + 1) = v42;
        v46 = &protocol witness table for Int;
        v47 = MEMORY[0x1E69E6540];
        v39 = type metadata accessor for CRExtensible();
        return (*(*(v39 - 8) + 8))(a2 + v44, v39);
      }

      result = sub_1ADE51B48(v18);
    }
  }

  v23 = *(a1 + 72);
  if (!v23)
  {
    __break(1u);
    goto LABEL_57;
  }

  v24 = *(v23 + 16);
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v26 = v25[3];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v27 = swift_initStaticObject();
  }

  v28 = *(v27 + 16);
  if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 7)
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v29 = swift_initStaticObject();
  }

  swift_beginAccess();
  if (v29[8])
  {
    v31 = v29[9];
    v30 = v29[10];
    v32 = v29[8];

    sub_1ADDD86D8(v31, v30);
  }

  else
  {
    v31 = 0;
    v30 = 0xC000000000000000;
  }

  sub_1ADDE94BC(v31, v30, &v45);
  if (v5)
  {
    goto LABEL_39;
  }

  *a2 = v45;
LABEL_41:
  *&v45 = v43;
  *(&v45 + 1) = AssociatedConformanceWitness;
  v46 = &protocol witness table for Int;
  v47 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v33, &v48);
  v34 = *(a1 + 16);
  switch(v48)
  {
    case 2:
      if (v34)
      {
        goto LABEL_51;
      }

      goto LABEL_60;
    case 1:
      if (v34)
      {
        goto LABEL_51;
      }

      goto LABEL_58;
    case 0:
      if (v34)
      {
        goto LABEL_51;
      }

      goto LABEL_59;
  }

  if (v34)
  {
LABEL_51:
    v35 = swift_getAssociatedTypeWitness();
    v37 = *(a2 + 8);
    *&v45 = *a2;
    v36 = v45;
    *(&v45 + 1) = v37;
    v41 = *(*v34 + 200);

    sub_1ADDD86D8(v36, v37);
    v38 = swift_getAssociatedConformanceWitness();
    v41(v35, &v45, a1, 1, v35, v38);
    if (v5)
    {
      sub_1ADDCC35C(v45, *(&v45 + 1));

      sub_1ADDCC35C(*a2, *(a2 + 8));
      goto LABEL_53;
    }

    sub_1ADDCC35C(v45, *(&v45 + 1));
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t (*WeakTagged_4.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t WeakTagged_4.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return WeakTagged_4.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return WeakTagged_4.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t WeakTagged_4.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for WeakTagged_4, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for WeakTagged_4, a5);
}

uint64_t WeakTagged_4.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for SharedTagged_4() + 36);
  v5 = *(type metadata accessor for WeakTagged_4() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t WeakTagged_4.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0])
  {
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  else
  {
    v12 = *v2;
    v13 = v3[1];
    v14.n128_u64[0] = v12;
    v14.n128_u64[1] = v13;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t WeakTagged_4.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 1)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_4.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 2)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_4.tagged4.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 3)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_4.unknown.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_i64[0] < 2)
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t WeakTagged_4.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v137 = a4;
  v140 = a1;
  v141 = a3;
  v142 = a5;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v124 = sub_1AE23D7CC();
  v123 = *(v124 - 8);
  v9 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v135 = &v105 - v10;
  v136 = AssociatedTypeWitness;
  v134 = *(AssociatedTypeWitness - 8);
  v11 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v122 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v121 = &v105 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v120 = sub_1AE23D7CC();
  v119 = *(v120 - 8);
  v17 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v132 = &v105 - v18;
  v133 = v16;
  v131 = *(v16 - 8);
  v19 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v118 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v117 = &v105 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v116 = sub_1AE23D7CC();
  v115 = *(v116 - 8);
  v25 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v129 = &v105 - v26;
  v130 = v24;
  v128 = *(v24 - 8);
  v27 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v114 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v113 = &v105 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v112 = sub_1AE23D7CC();
  v111 = *(v112 - 8);
  v33 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v127 = &v105 - v34;
  v126 = *(v32 - 8);
  v35 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v110 = &v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v109 = &v105 - v39;
  v40 = swift_getAssociatedTypeWitness();
  v108 = sub_1AE23D7CC();
  v107 = *(v108 - 8);
  v41 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v43 = &v105 - v42;
  v125 = *(v40 - 8);
  v44 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v106 = &v105 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v105 - v48;
  v50 = *(a2 + 36);
  v51 = swift_getAssociatedTypeWitness();
  v52 = v137;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v144.n128_u64[0] = v51;
  v144.n128_u64[1] = AssociatedConformanceWitness;
  v145 = &protocol witness table for Int;
  v146 = MEMORY[0x1E69E6540];
  v54 = type metadata accessor for CRExtensible();
  v55 = v138;
  CRExtensible.rawValue.getter(v54, &v147);
  v139 = v52 + 16;
  if (v147 <= 1)
  {
    if (!v147)
    {
      v78 = v55[1];
      v143.n128_u64[0] = *v55;
      v77 = v143.n128_u64[0];
      v143.n128_u64[1] = v78;
      v138 = v6;
      v79 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v143, &v144);
      v143 = v144;
      v80 = *(v52 + 16);
      sub_1ADDD86D8(v77, v78);
      v80(&v143, v40, v79, v141, v52);
      sub_1ADDCC35C(v143.n128_i64[0], v143.n128_u64[1]);
      v81 = v125;
      if ((*(v125 + 48))(v43, 1, v40) != 1)
      {
        v101 = *(v81 + 32);
        v101(v49, v43, v40);
        v101(v106, v49, v40);
        v102 = swift_getAssociatedTypeWitness();
        v103 = v142;
        swift_dynamicCast();
        return (*(*(v102 - 8) + 56))(v103, 0, 1, v102);
      }

      (*(v107 + 8))(v43, v108);
      v76 = v142;
LABEL_17:
      v89 = swift_getAssociatedTypeWitness();
      return (*(*(v89 - 8) + 56))(v76, 1, 1, v89);
    }

    if (v147 == 1)
    {
      v57 = v55[1];
      v143.n128_u64[0] = *v55;
      v56 = v143.n128_u64[0];
      v143.n128_u64[1] = v57;
      v58 = swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v143, &v144);
      v143 = v144;
      v59 = *(v52 + 16);
      sub_1ADDD86D8(v56, v57);
      v60 = v127;
      v59(&v143, v32, v58, v141, v52);
      sub_1ADDCC35C(v143.n128_i64[0], v143.n128_u64[1]);
      v61 = v126;
      if ((*(v126 + 48))(v60, 1, v32) == 1)
      {
        (*(v111 + 8))(v60, v112);
LABEL_16:
        v76 = v142;
        goto LABEL_17;
      }

      v95 = *(v61 + 32);
      v96 = v109;
      v95(v109, v60, v32);
      v95(v110, v96, v32);
      v93 = swift_getAssociatedTypeWitness();
      v94 = v142;
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  if (v147 == 2)
  {
    v82 = v52;
    v83 = v55[1];
    v143.n128_u64[0] = *v55;
    v84 = v143.n128_u64[0];
    v143.n128_u64[1] = v83;
    v64 = v130;
    v85 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v143, &v144);
    v143 = v144;
    v86 = *(v82 + 16);
    sub_1ADDD86D8(v84, v83);
    v87 = v129;
    v86(&v143, v64, v85, v141, v82);
    sub_1ADDCC35C(v143.n128_i64[0], v143.n128_u64[1]);
    v88 = v128;
    if ((*(v128 + 48))(v87, 1, v64) == 1)
    {
      (*(v115 + 8))(v87, v116);
      goto LABEL_16;
    }

    v97 = *(v88 + 32);
    v104 = v113;
    v97(v113, v87, v64);
    v99 = v114;
    v100 = v104;
LABEL_23:
    v97(v99, v100, v64);
    v93 = swift_getAssociatedTypeWitness();
    v94 = v142;
    goto LABEL_24;
  }

  if (v147 == 3)
  {
    v63 = v55[1];
    v143.n128_u64[0] = *v55;
    v62 = v143.n128_u64[0];
    v143.n128_u64[1] = v63;
    v64 = v133;
    v65 = swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v143, &v144);
    v143 = v144;
    v66 = *(v52 + 16);
    sub_1ADDD86D8(v62, v63);
    v67 = v132;
    v66(&v143, v64, v65, v141, v52);
    sub_1ADDCC35C(v143.n128_i64[0], v143.n128_u64[1]);
    v68 = v131;
    if ((*(v131 + 48))(v67, 1, v64) == 1)
    {
      (*(v119 + 8))(v67, v120);
      goto LABEL_16;
    }

    v97 = *(v68 + 32);
    v98 = v117;
    v97(v117, v67, v64);
    v99 = v118;
    v100 = v98;
    goto LABEL_23;
  }

LABEL_10:
  v70 = v55[1];
  v143.n128_u64[0] = *v55;
  v69 = v143.n128_u64[0];
  v143.n128_u64[1] = v70;
  v71 = v136;
  v72 = swift_getAssociatedConformanceWitness();
  WeakRef.init(id:)(&v143, &v144);
  v143 = v144;
  v73 = *(v52 + 16);
  sub_1ADDD86D8(v69, v70);
  v74 = v135;
  v73(&v143, v71, v72, v141, v52);
  sub_1ADDCC35C(v143.n128_i64[0], v143.n128_u64[1]);
  v75 = v134;
  if ((*(v134 + 48))(v74, 1, v71) == 1)
  {
    (*(v123 + 8))(v74, v124);
    v76 = v142;
    goto LABEL_17;
  }

  v91 = *(v75 + 32);
  v92 = v121;
  v91(v121, v74, v71);
  v91(v122, v92, v71);
  v93 = swift_getAssociatedTypeWitness();
  v94 = v142;
LABEL_24:
  swift_dynamicCast();
  return (*(*(v93 - 8) + 56))(v94, 0, 1, v93);
}

uint64_t sub_1ADF27470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v128 = a1;
  v129 = a3;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v114 = sub_1AE23D7CC();
  v112 = *(v114 - 8);
  v7 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v125 = &v96 - v8;
  v126 = AssociatedTypeWitness;
  v124 = *(AssociatedTypeWitness - 8);
  v9 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v113 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v111 = &v96 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v110 = sub_1AE23D7CC();
  v108 = *(v110 - 8);
  v15 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v122 = &v96 - v16;
  v123 = v14;
  v121 = *(v14 - 8);
  v17 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v96 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v106 = sub_1AE23D7CC();
  v104 = *(v106 - 8);
  v23 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v119 = &v96 - v24;
  v120 = v22;
  v118 = *(v22 - 8);
  v25 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v105 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v103 = &v96 - v29;
  v30 = swift_getAssociatedTypeWitness();
  v102 = sub_1AE23D7CC();
  v100 = *(v102 - 8);
  v31 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v117 = &v96 - v32;
  v116 = *(v30 - 8);
  v33 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v101 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v99 = &v96 - v37;
  v38 = swift_getAssociatedTypeWitness();
  v98 = sub_1AE23D7CC();
  v96 = *(v98 - 8);
  v39 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v41 = &v96 - v40;
  v115 = *(v38 - 8);
  v42 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v97 = &v96 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v96 - v46;
  v48 = *(a2 + 36);
  v49 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v131.n128_u64[0] = v49;
  v131.n128_u64[1] = AssociatedConformanceWitness;
  v51 = v127;
  v132 = &protocol witness table for Int;
  v133 = MEMORY[0x1E69E6540];
  v52 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v52, &v134);
  if (v134 > 1)
  {
    if (v134 == 2)
    {
      v79 = v51[1];
      v130.n128_u64[0] = *v51;
      v78 = v130.n128_u64[0];
      v130.n128_u64[1] = v79;
      v62 = v120;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v130, &v131);
      v56 = v131.n128_u64[1];
      v55 = v131.n128_u64[0];
      v130 = v131;
      sub_1ADDD86D8(v78, v79);
      v80 = type metadata accessor for WeakRef();
      v81 = v119;
      sub_1AE21D3E4(v80, v119);
      v82 = v118;
      if ((*(v118 + 48))(v81, 1, v62) == 1)
      {
        (*(v104 + 8))(v81, v106);
        goto LABEL_16;
      }

      v86 = *(v82 + 32);
      v87 = v103;
      v86(v103, v81, v62);
      sub_1ADDCC35C(v55, v56);
      v88 = &v135;
LABEL_23:
      v86(*(v88 - 32), v87, v62);
      v91 = swift_getAssociatedTypeWitness();
      v92 = v129;
LABEL_24:
      swift_dynamicCast();
      return (*(*(v91 - 8) + 56))(v92, 0, 1, v91);
    }

    if (v134 == 3)
    {
      v61 = v51[1];
      v130.n128_u64[0] = *v51;
      v60 = v130.n128_u64[0];
      v130.n128_u64[1] = v61;
      v62 = v123;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v130, &v131);
      v56 = v131.n128_u64[1];
      v55 = v131.n128_u64[0];
      v130 = v131;
      sub_1ADDD86D8(v60, v61);
      v63 = type metadata accessor for WeakRef();
      v64 = v122;
      sub_1AE21D3E4(v63, v122);
      v65 = v121;
      if ((*(v121 + 48))(v64, 1, v62) == 1)
      {
        (*(v108 + 8))(v64, v110);
        goto LABEL_16;
      }

      v86 = *(v65 + 32);
      v87 = v107;
      v86(v107, v64, v62);
      sub_1ADDCC35C(v55, v56);
      v88 = &v136;
      goto LABEL_23;
    }

LABEL_10:
    v67 = v51[1];
    v130.n128_u64[0] = *v51;
    v66 = v130.n128_u64[0];
    v130.n128_u64[1] = v67;
    v62 = v126;
    swift_getAssociatedConformanceWitness();
    WeakRef.init(id:)(&v130, &v131);
    v56 = v131.n128_u64[1];
    v55 = v131.n128_u64[0];
    v130 = v131;
    sub_1ADDD86D8(v66, v67);
    v68 = type metadata accessor for WeakRef();
    v69 = v125;
    sub_1AE21D3E4(v68, v125);
    v70 = v124;
    if ((*(v124 + 48))(v69, 1, v62) == 1)
    {
      (*(v112 + 8))(v69, v114);
      goto LABEL_16;
    }

    v86 = *(v70 + 32);
    v87 = v111;
    v86(v111, v69, v62);
    sub_1ADDCC35C(v55, v56);
    v88 = &v137;
    goto LABEL_23;
  }

  if (v134)
  {
    if (v134 == 1)
    {
      v54 = v51[1];
      v130.n128_u64[0] = *v51;
      v53 = v130.n128_u64[0];
      v130.n128_u64[1] = v54;
      swift_getAssociatedConformanceWitness();
      WeakRef.init(id:)(&v130, &v131);
      v56 = v131.n128_u64[1];
      v55 = v131.n128_u64[0];
      v130 = v131;
      sub_1ADDD86D8(v53, v54);
      v57 = type metadata accessor for WeakRef();
      v58 = v117;
      sub_1AE21D3E4(v57, v117);
      v59 = v116;
      if ((*(v116 + 48))(v58, 1, v30) == 1)
      {
        (*(v100 + 8))(v58, v102);
LABEL_16:
        v76 = v55;
        v77 = v56;
        goto LABEL_17;
      }

      v89 = *(v59 + 32);
      v90 = v99;
      v89(v99, v58, v30);
      sub_1ADDCC35C(v55, v56);
      v89(v101, v90, v30);
      v91 = swift_getAssociatedTypeWitness();
      v92 = v129;
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  v71 = *v51;
  v72 = v51[1];
  v130.n128_u64[0] = v71;
  v130.n128_u64[1] = v72;
  swift_getAssociatedConformanceWitness();
  WeakRef.init(id:)(&v130, &v131);
  v73 = v131;
  v130 = v131;
  sub_1ADDD86D8(v71, v72);
  v74 = type metadata accessor for WeakRef();
  sub_1AE21D3E4(v74, v41);
  v75 = v115;
  if ((*(v115 + 48))(v41, 1, v38) == 1)
  {
    (*(v96 + 8))(v41, v98);
    v77 = *&v73 >> 64;
    v76 = v73;
LABEL_17:
    sub_1ADDCC35C(v76, v77);
    v83 = v129;
    v84 = swift_getAssociatedTypeWitness();
    return (*(*(v84 - 8) + 56))(v83, 1, 1, v84);
  }

  v93 = *(v75 + 32);
  v93(v47, v41, v38);
  sub_1ADDCC35C(v73.n128_i64[0], v73.n128_u64[1]);
  v93(v97, v47, v38);
  v94 = swift_getAssociatedTypeWitness();
  v95 = v129;
  swift_dynamicCast();
  return (*(*(v94 - 8) + 56))(v95, 0, 1, v94);
}