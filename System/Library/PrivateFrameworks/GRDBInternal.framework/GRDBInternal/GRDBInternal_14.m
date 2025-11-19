uint64_t sub_1B220F2C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[19])
  {
    v4 = a1[9];
    v5 = a1[10];
    v7 = a1[11];
    v6 = a1[12];
    v8 = a1[13];
    v19 = a1[14];
    v9 = a1[15];
    v10 = a1[16];
    v12 = a1[17];
    v11 = a1[18];
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v7;
    a2[3] = v6;
    a2[4] = v8;
    sub_1B2112328(v4);
    sub_1B2112328(v7);
    v13 = v8;
    v14 = v19;
    sub_1B2112328(v13);
    sub_1B2112328(v9);
    sub_1B2112328(v12);
  }

  else
  {
    v14 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 0;
    v11 = 0;
    *a2 = 1;
    *(a2 + 1) = 0u;
    *(a2 + 3) = 0u;
  }

  a2[5] = v14;
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v12;
  v15 = a1[6];
  v16 = a1[7];
  v17 = a1[8];
  a2[9] = v11;
  a2[10] = v15;
  a2[11] = v16;
  a2[12] = v17;
  return sub_1B2210418(v15);
}

uint64_t sub_1B220F3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11[7] = a1;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  v8 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_1B212B00C(1, sub_1B2210898, v11, AssociatedTypeWitness, a7);
}

id sub_1B220F460(uint64_t a1)
{
  sub_1B2177AB0(v1, a1, *v1, &off_1F29744A0);
  v2 = *(v1 + 168);
  *(v1 + 168) = 1;
  *(v1 + 176) = 0;
  sub_1B21E7918(v2);
  v3 = *(v1 + 32);
  return sub_1B21E8980(sub_1B21E784C, 0, sub_1B22103FC);
}

uint64_t sub_1B220F51C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v51 = *(*a2 + 88);
  v4 = *(v51 + 8);
  v58 = a2;
  v5 = *(v3 + 80);
  v53 = v4;
  v55 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = v45 - v9;
  v10 = sub_1B2252B00();
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v45 - v15;
  v17 = *(v2 + 80);
  v57 = *(v17 - 8);
  v18 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v45 - v20;
  sub_1B2166348();
  v45[1] = v7;
  v46 = v13;
  v48 = v17;
  v49 = v21;
  v47 = v16;
  v22 = v58;
  v23 = v58[4];
  if ((sub_1B21E2CFC() & 1) == 0)
  {
    return (*(v57 + 8))(v49, v48);
  }

  v24 = *(*v22 + 152);
  swift_beginAccess();
  v25 = v47;
  v26 = v49;
  (*(v53 + 32))(v49, v55);
  swift_endAccess();
  v27 = v56;
  v28 = v46;
  (*(v56 + 16))(v46, v25, v10);
  v29 = AssociatedTypeWitness;
  v30 = sub_1B2122A98(v28, 1, AssociatedTypeWitness);
  v31 = v57;
  if (v30 == 1)
  {
    v32 = *(v27 + 8);
    v32(v25, v10);
    (*(v31 + 8))(v26, v48);
    return (v32)(v28, v10);
  }

  else
  {
    v34 = v52;
    v53 = v10;
    v45[0] = *(v52 + 32);
    v35 = v54;
    (v45[0])();
    v36 = v58;
    v37 = v58[2];
    v38 = v50;
    (*(v34 + 16))(v50, v35, v29);
    v39 = (*(v34 + 80) + 40) & ~*(v34 + 80);
    v40 = swift_allocObject();
    v41 = v51;
    v40[2] = v55;
    v40[3] = v41;
    v40[4] = v36;
    (v45[0])(v40 + v39, v38, v29);
    v42 = v37[5];
    v43 = v37[6];
    sub_1B21139A0(v37 + 2, v42);
    v44 = *(v43 + 8);

    v44(sub_1B2210368, v40, v42, v43);

    (*(v34 + 8))(v54, v29);
    (*(v56 + 8))(v47, v53);
    return (*(v31 + 8))(v49, v48);
  }
}

uint64_t *sub_1B220FAE0@<X0>(uint64_t *result@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = result[19];
  if (v3)
  {
    v4 = *result;
    v5 = result[20];
    v6 = swift_allocObject();
    *(v6 + 2) = *(v4 + 80);
    *(v6 + 3) = *(v4 + 88);
    *(v6 + 4) = v3;
    *(v6 + 5) = v5;

    v7 = sub_1B22103B0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B220FBA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = *(a1 + 48);
  if (result)
  {
  }

  *a2 = result;
  return result;
}

uint64_t sub_1B220FBE8()
{
  v1 = v0;
  v2 = *(v0 + 32);
  sub_1B21E2C6C();
  if (v22 != 1)
  {
    if (v29)
    {
      sub_1B21167E8(v22);
      v4 = sub_1B2112328(v29);
      v5 = v29(v4);
      if (v30)
      {
LABEL_7:
        v13 = *(v30 + 16);

        sub_1B2223DB4(sub_1B22108DC, v1);

        sub_1B211597C(v14, v15, v16, v17, v18, v19, v20, v21, v26, v23, v24, v25, v28, v27);

        return sub_1B21E84EC(&v22);
      }
    }

    else
    {
      sub_1B21167E8(v22);
      v5 = sub_1B2112328(0);
      if (v30)
      {
        goto LABEL_7;
      }
    }

    sub_1B211597C(v5, v6, v7, v8, v9, v10, v11, v12, v26, v23, v24, v25, v28, v27);
    return sub_1B21E84EC(&v22);
  }
}

uint64_t sub_1B220FD6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  if (a1[19])
  {
    v6 = a1[9];
    v7 = a1[10];
    v24 = a1[9];
    v8 = a1[11];
    v28 = a1[12];
    v9 = a1[13];
    v10 = a1[14];
    v11 = a1[15];
    v12 = a1[16];
    v23 = v4;
    v14 = a1[17];
    v13 = a1[18];
    v26 = v7;
    sub_1B2112328(v6);
    v25 = v8;
    v15 = v8;
    v16 = v9;
    sub_1B2112328(v15);
    sub_1B2112328(v9);
    sub_1B2112328(v11);
    v17 = v13;
    v5 = v23;
    sub_1B2112328(v14);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v28 = 0;
    v16 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0;
    v17 = 0;
    v24 = 1;
  }

  memcpy(__dst, a1 + 9, sizeof(__dst));
  *(a1 + 9) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 19) = 0u;
  v18 = *(v5 + 80);
  v19 = *(v5 + 88);
  type metadata accessor for ValueConcurrentObserver.NotificationCallbacks();
  v20 = sub_1B2252B00();
  (*(*(v20 - 8) + 8))(__dst, v20);
  *a2 = v24;
  a2[1] = v26;
  v21 = v28;
  a2[2] = v25;
  a2[3] = v21;
  a2[4] = v16;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v14;
  a2[9] = v17;
  result = a1[6];
  if (result)
  {
  }

  a2[10] = result;
  return result;
}

id sub_1B220FF28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = sub_1B21E2D6C();
  if (v7 != 1)
  {
    v5 = v11;
    if (v10)
    {
      v10(a2);
      sub_1B2112F4C(v7);
      sub_1B2112F4C(v8);
      sub_1B2112F4C(v9);
      v6 = v10;
      v5 = v11;
    }

    else
    {
      sub_1B2112F4C(v7);
      sub_1B2112F4C(v8);
      v6 = v9;
    }

    sub_1B2112F4C(v6);

    return sub_1B2112F4C(v5);
  }

  return result;
}

uint64_t sub_1B2210074@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  if (a1[19])
  {
    v6 = a1[9];
    v7 = a1[10];
    v24 = a1[9];
    v8 = a1[11];
    v28 = a1[12];
    v9 = a1[13];
    v10 = a1[14];
    v11 = a1[15];
    v12 = a1[16];
    v23 = v4;
    v13 = a1[17];
    v14 = a1[18];
    v26 = v7;
    sub_1B2112328(v6);
    v25 = v8;
    v15 = v8;
    v16 = v9;
    sub_1B2112328(v15);
    sub_1B2112328(v9);
    sub_1B2112328(v11);
    v17 = v14;
    v5 = v23;
    sub_1B2112328(v13);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v28 = 0;
    v16 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v17 = 0;
    v24 = 1;
  }

  memcpy(__dst, a1 + 9, sizeof(__dst));
  *(a1 + 9) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 19) = 0u;
  v18 = *(v5 + 80);
  v19 = *(v5 + 88);
  type metadata accessor for ValueConcurrentObserver.NotificationCallbacks();
  v20 = sub_1B2252B00();
  result = (*(*(v20 - 8) + 8))(__dst, v20);
  *a2 = v24;
  a2[1] = v26;
  v22 = v28;
  a2[2] = v25;
  a2[3] = v22;
  a2[4] = v16;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v13;
  a2[9] = v17;
  return result;
}

uint64_t sub_1B2210220(void *a1)
{
  v2 = a1[6];
  v1 = a1[7];
  v3 = a1[8];
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = 0;
  return sub_1B221029C(v2);
}

uint64_t sub_1B221029C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B2210308(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B2210320()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_1B22103B0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1B2210418(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B2210474()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(*(v1 + 8) + 24))();
}

uint64_t sub_1B2210670(uint64_t (*a1)(uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(*(v1 + 24) + 8);
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);
  v5 = sub_1B2112224();

  return a1(v5);
}

uint64_t sub_1B22106F4()
{
  v1 = *(v0 + 2);
  v2 = *(*(v0 + 3) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B211280C(AssociatedTypeWitness);
  v5 = v4;
  v6 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  v9 = *(v0 + 4);

  (*(v5 + 8))(&v0[v6], AssociatedTypeWitness);

  return swift_deallocObject();
}

id sub_1B22107EC(uint64_t a1, void (*a2)(id))
{
  v5 = *(v2 + 16);
  v6 = *(*(v2 + 24) + 8);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);
  v8 = sub_1B2112224();
  return sub_1B220E500(v8, v9, a1, a2);
}

uint64_t sub_1B22108E0@<X0>(uint64_t *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = a3;
  v9 = *a4;
  v10 = a4[1];
  v12 = *__src;
  v11 = __src[1];
  v13 = 1;
  if (!a3)
  {
    v14 = __src[1];

    v13 = 0;
    a2 = v12;
    v5 = v11;
  }

  memcpy(&__srca[7], __src, 0xA2uLL);
  sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B22546B0;
  *(v15 + 32) = a2;
  *(v15 + 40) = v5;
  *(v15 + 48) = v13;
  *(v15 + 56) = v12;
  *(v15 + 64) = v11;
  *(v15 + 72) = v9;
  *(v15 + 80) = v10;
  *(v15 + 88) = 1;
  memcpy((v15 + 89), __srca, 0xA9uLL);
  *(v15 + 258) = 0;
  *a5 = v15;
}

uint64_t BelongsToAssociation._sqlAssociation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_1B2210A38(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2210A74(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1B2210AB8(void *a1))(void *a1)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = BelongsToAssociation._sqlAssociation.modify();
  return sub_1B2171E40;
}

uint64_t sub_1B2210B14(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B2210B50(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2210B8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B2210BE0@<X0>(uint64_t *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *a4;
  v8 = a4[1];
  v10 = *__src;
  v9 = __src[1];
  if (a3)
  {
    v11 = a3;
    v13 = 1;
  }

  else
  {
    v14 = __src[1];

    v13 = 0;
    a2 = v10;
    v11 = v9;
  }

  memcpy(&v17[7], __src, 0xA2uLL);
  sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B22546B0;
  *(v15 + 32) = a2;
  *(v15 + 40) = v11;
  *(v15 + 48) = v13;
  *(v15 + 56) = v10;
  *(v15 + 64) = v9;
  *(v15 + 72) = v7;
  *(v15 + 80) = v8;
  *(v15 + 88) = 0;
  memcpy((v15 + 89), v17, 0xA9uLL);
  *(v15 + 258) = 0;
  *a5 = v15;
}

uint64_t HasOneAssociation._sqlAssociation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_1B2210D38(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2210D74(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1B2210DB8(void *a1))(void *a1)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = HasOneAssociation._sqlAssociation.modify();
  return sub_1B2171E40;
}

uint64_t sub_1B2210E14(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B2210E50(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2210E8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Database.create(table:temporary:ifNotExists:withoutRowID:body:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5, void (*a6)(uint64_t))
{
  v6 = 2;
  if ((a3 & 1) == 0)
  {
    v6 = 0;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFFFELL | a4 & 1;
  if (a5)
  {
    v7 |= 4uLL;
  }

  v9 = v7;
  return Database.create(table:options:body:)(a1, a2, &v9, a6);
}

uint64_t Database.create(table:options:body:)(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v8 = *a3;
  type metadata accessor for TableDefinition();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 40) = MEMORY[0x1E69E7CC0];
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = v10;
  *(v9 + 72) = v10;
  *(v9 + 80) = v10;
  *(v9 + 88) = v10;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = v8;

  a4(v9);
  if (v4)
  {
  }

  sub_1B2111BFC();
  v12 = sub_1B221103C(v11);
  sub_1B212CF04(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
}

unint64_t sub_1B221103C(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  sub_1B214400C();
  v3 = v2;
  v4 = *(v2 + 16);
  v5 = v4 + 1;
  if (v4 >= *(v2 + 24) >> 1)
  {
    goto LABEL_264;
  }

  while (1)
  {
    *(v3 + 16) = v5;
    v6 = v3 + 16 * v4;
    *(v6 + 32) = 0x455441455243;
    *(v6 + 40) = 0xE600000000000000;
    v7 = v337;
    v8 = *(v337 + 32);
    v335 = v8;
    if ((v8 & 2) != 0)
    {
      v9 = (v4 + 2);
      if (v9 > *(v3 + 24) >> 1)
      {
LABEL_266:
        sub_1B214400C();
        LOBYTE(v8) = v335;
        v7 = v337;
        v3 = v322;
      }

      *(v3 + 16) = v9;
      v10 = v3 + 16 * v5;
      *(v10 + 32) = 0x5241524F504D4554;
      *(v10 + 40) = 0xE900000000000059;
      v5 = *(v3 + 16);
    }

    v11 = v5 + 1;
    if (v5 >= *(v3 + 24) >> 1)
    {
      sub_1B214400C();
      LOBYTE(v8) = v335;
      v7 = v337;
      v3 = v320;
    }

    *(v3 + 16) = v11;
    v12 = v3 + 16 * v5;
    *(v12 + 32) = 0x454C424154;
    *(v12 + 40) = 0xE500000000000000;
    if (v8)
    {
      v13 = v5 + 2;
      if (v13 > *(v3 + 24) >> 1)
      {
        sub_1B214400C();
        v7 = v337;
        v3 = v323;
      }

      *(v3 + 16) = v13;
      v14 = v3 + 16 * v11;
      strcpy((v14 + 32), "IF NOT EXISTS");
      *(v14 + 46) = -4864;
    }

    v15 = v3;
    v16 = *(v7 + 16);
    v17 = *(v7 + 24);
    __dst[0] = 34;
    __dst[1] = 0xE100000000000000;
    v341 = v17;
    v342 = v16;
    MEMORY[0x1B2741EB0]();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    v18 = __dst[0];
    v19 = __dst[1];
    v20 = *(v15 + 16);
    v21 = v15;
    if (v20 >= *(v15 + 24) >> 1)
    {
      sub_1B214400C();
      v21 = v321;
    }

    *(v21 + 16) = v20 + 1;
    v336 = v21;
    v22 = v21 + 16 * v20;
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
    if (*(v337 + 48))
    {
      v343 = *(v337 + 48);
      swift_bridgeObjectRetain_n();
LABEL_15:
      v23 = v337;
      goto LABEL_21;
    }

    swift_beginAccess();
    v23 = v337;
    v24 = *(v337 + 40);
    v25 = *(v24 + 16);
    v26 = (v24 + 40);
    if (v25)
    {
      while (1)
      {
        if (*v26 != 1)
        {
          v27 = *(v26 - 1);
          if (*(v27 + 49) << 8 != 512)
          {
            break;
          }
        }

        v26 += 16;
        if (!--v25)
        {
          goto LABEL_20;
        }
      }

      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_1B22546B0;
      v78 = *(v27 + 24);
      *(v77 + 32) = *(v27 + 16);
      *(v77 + 40) = v78;

      v343 = v77;

      goto LABEL_15;
    }

LABEL_20:
    v343 = &unk_1F2969BA8;
LABEL_21:
    v366[0] = v1;
    v28 = v23;
    swift_beginAccess();
    v29 = *(v28 + 40);
    v5 = *(v29 + 16);
    if (v5)
    {
      break;
    }

    v31 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v4 = v366;
    sub_1B2156C88(v31);
    v49 = *(v337 + 48);
    if (v49)
    {
      v50 = *(v337 + 56);
      v51 = *(v337 + 48);

      v52 = MEMORY[0x1E69E7CC0];
      sub_1B214400C();
      v54 = v53;
      v55 = *(v53 + 16);
      if (v55 >= *(v53 + 24) >> 1)
      {
        sub_1B214400C();
        v54 = v324;
      }

      v359 = v50;
      *(v54 + 16) = v55 + 1;
      v56 = v54 + 16 * v55;
      *(v56 + 32) = 0x205952414D495250;
      *(v56 + 40) = 0xEB0000000059454BLL;
      __dst[0] = 40;
      __dst[1] = 0xE100000000000000;
      v57 = *(v49 + 16);
      if (v57)
      {
        v354 = v54;
        __src[0] = v52;
        sub_1B2116B10();
        v52 = __src[0];
        v58 = (v49 + 40);
        do
        {
          v59 = *(v58 - 1);
          v60 = *v58;
          v368[0] = 34;
          v368[1] = 0xE100000000000000;

          MEMORY[0x1B2741EB0](v59, v60);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);

          v61 = v368[0];
          v62 = v368[1];
          __src[0] = v52;
          v63 = *(v52 + 16);
          if (v63 >= *(v52 + 24) >> 1)
          {
            sub_1B2116B10();
            v52 = __src[0];
          }

          *(v52 + 16) = v63 + 1;
          v64 = v52 + 16 * v63;
          *(v64 + 32) = v61;
          *(v64 + 40) = v62;
          v58 += 2;
          --v57;
        }

        while (v57);

        v54 = v354;
      }

      else
      {
      }

      v368[0] = v52;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      v65 = sub_1B2252250();
      v67 = v66;

      MEMORY[0x1B2741EB0](v65, v67);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      v68 = __dst[0];
      v69 = __dst[1];
      v70 = *(v54 + 16);
      v71 = v70 + 1;
      if (v70 >= *(v54 + 24) >> 1)
      {
        sub_1B214400C();
        v54 = v325;
      }

      *(v54 + 16) = v71;
      v72 = v54 + 16 * v70;
      *(v72 + 32) = v68;
      *(v72 + 40) = v69;
      v1 = MEMORY[0x1E69E7CC0];
      v73 = v70 + 2;
      if (v71 >= *(v54 + 24) >> 1)
      {
        sub_1B214400C();
        v54 = v329;
      }

      *(v54 + 16) = v73;
      v74 = v54 + 16 * v71;
      *(v74 + 32) = 0x4C464E4F43204E4FLL;
      *(v74 + 40) = 0xEB00000000544349;
      v75 = 0xE500000000000000;
      v76 = 0x54524F4241;
      switch(v359)
      {
        case 0:
          v75 = 0xE800000000000000;
          v76 = 0x4B4341424C4C4F52;
          goto LABEL_58;
        case 1:
          goto LABEL_58;
        case 2:
          v75 = 0xE400000000000000;
          v76 = 1279869254;
          goto LABEL_58;
        case 3:
          v75 = 0xE600000000000000;
          v76 = 0x45524F4E4749;
          goto LABEL_58;
        case 4:
          v75 = 0xE700000000000000;
          v76 = 0x4543414C504552;
LABEL_58:
          v79 = *(v54 + 16);
          if (v79 >= *(v54 + 24) >> 1)
          {
            sub_1B214400C();
            v54 = v330;
          }

          *(v54 + 16) = v79 + 1;
          v80 = v54 + 16 * v79;
          *(v80 + 32) = v76;
          *(v80 + 40) = v75;
          break;
        default:
          break;
      }

      __dst[0] = v54;
      v5 = sub_1B2252250();
      v4 = v81;

      v82 = v366[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v326 = *(v82 + 16);
        sub_1B214400C();
        v82 = v327;
      }

      v83 = *(v82 + 16);
      if (v83 >= *(v82 + 24) >> 1)
      {
        sub_1B214400C();
        v82 = v328;
      }

      *(v82 + 16) = v83 + 1;
      v84 = v82 + 16 * v83;
      *(v84 + 32) = v5;
      *(v84 + 40) = v4;
      v366[0] = v82;
    }

    swift_beginAccess();
    v85 = v337;
    v86 = *(v337 + 64);
    v350 = *(v86 + 16);
    if (!v350)
    {
LABEL_96:
      v5 = v85;
      swift_beginAccess();
      v128 = *(v5 + 72);
      v340 = *(v128 + 16);
      if (v340)
      {
        v339 = v128 + 32;

        v129 = 0;
        v338 = v128;
        while (1)
        {
          if (v129 >= *(v128 + 16))
          {
            goto LABEL_258;
          }

          v347 = v129;
          v130 = (v339 + 40 * v129);
          v131 = *v130;
          v132 = v130[1];
          v133 = v130[2];
          v134 = v130[3];
          v345 = *(v130 + 32);
          v349 = *(v130 + 33);
          v344 = *(v130 + 34);

          sub_1B214400C();
          v136 = v135;
          v137 = *(v135 + 16);
          if (v137 >= *(v135 + 24) >> 1)
          {
            sub_1B214400C();
            v136 = v227;
          }

          *(v136 + 16) = v137 + 1;
          v138 = v136 + 16 * v137;
          *(v138 + 32) = 0x204E474945524F46;
          *(v138 + 40) = 0xEB0000000059454BLL;
          __dst[0] = 40;
          __dst[1] = 0xE100000000000000;
          v139 = *(v131 + 16);
          v361 = v134;
          v352 = v133;
          if (v139)
          {
            v356 = v132;
            __src[0] = v1;
            sub_1B2116B10();
            v140 = __src[0];
            v141 = (v131 + 40);
            do
            {
              v142 = *(v141 - 1);
              v143 = *v141;
              v368[0] = 34;
              v368[1] = 0xE100000000000000;

              MEMORY[0x1B2741EB0](v142, v143);
              MEMORY[0x1B2741EB0](34, 0xE100000000000000);

              v144 = v368[0];
              v145 = v368[1];
              __src[0] = v140;
              v146 = *(v140 + 16);
              if (v146 >= *(v140 + 24) >> 1)
              {
                sub_1B2116B10();
                v140 = __src[0];
              }

              *(v140 + 16) = v146 + 1;
              v147 = v140 + 16 * v146;
              *(v147 + 32) = v144;
              *(v147 + 40) = v145;
              v141 += 2;
              --v139;
            }

            while (v139);
            v133 = v352;
            v132 = v356;
            v134 = v361;
          }

          else
          {
            v140 = v1;
          }

          v368[0] = v140;
          sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
          sub_1B215175C();
          v148 = sub_1B2252250();
          v150 = v149;

          MEMORY[0x1B2741EB0](v148, v150);

          MEMORY[0x1B2741EB0](41, 0xE100000000000000);
          v151 = __dst[0];
          v152 = __dst[1];
          v153 = *(v136 + 16);
          v154 = *(v136 + 24) >> 1;
          v155 = v153 + 1;
          if (v154 <= v153)
          {
            sub_1B214400C();
            v136 = v228;
            v154 = *(v228 + 24) >> 1;
          }

          *(v136 + 16) = v155;
          v156 = v136 + 16 * v153;
          *(v156 + 32) = v151;
          *(v156 + 40) = v152;
          v1 = MEMORY[0x1E69E7CC0];
          if (v154 < (v153 + 2))
          {
            sub_1B214400C();
            v136 = v229;
          }

          *(v136 + 16) = v153 + 2;
          v157 = v136 + 16 * v155;
          *(v157 + 32) = 0x434E455245464552;
          *(v157 + 40) = 0xEA00000000005345;
          if (v134)
          {
            __dst[0] = 34;
            __dst[1] = 0xE100000000000000;

            MEMORY[0x1B2741EB0](v132, v133);
            MEMORY[0x1B2741EB0](34, 0xE100000000000000);
            MEMORY[0x1B2741EB0](40, 0xE100000000000000);
            v158 = v134;
            v159 = *(v134 + 16);
            if (v159)
            {
              __src[0] = v1;
              sub_1B216E534(v159);
              v160 = __src[0];
              v161 = (v158 + 40);
              do
              {
                v162 = *(v161 - 1);
                v163 = *v161;
                v368[0] = 34;
                v368[1] = 0xE100000000000000;

                MEMORY[0x1B2741EB0](v162, v163);
                MEMORY[0x1B2741EB0](34, 0xE100000000000000);

                v164 = v368[0];
                v165 = v368[1];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v166 = *(v160 + 16);
                  sub_1B2116B10();
                  v160 = __src[0];
                }

                v167 = *(v160 + 16);
                if (v167 >= *(v160 + 24) >> 1)
                {
                  sub_1B2116B10();
                  v160 = __src[0];
                }

                *(v160 + 16) = v167 + 1;
                v168 = v160 + 16 * v167;
                *(v168 + 32) = v164;
                *(v168 + 40) = v165;
                v161 += 2;
                --v159;
              }

              while (v159);

              v1 = MEMORY[0x1E69E7CC0];
            }

            else
            {

              v160 = v1;
            }

            v368[0] = v160;
            v180 = sub_1B2252250();
            v182 = v181;

            MEMORY[0x1B2741EB0](v180, v182);
            goto LABEL_154;
          }

          v169 = v132 == v342 && v133 == v341;
          if (v169 || (sub_1B22531F0() & 1) != 0)
          {
            __dst[0] = 34;
            __dst[1] = 0xE100000000000000;
            MEMORY[0x1B2741EB0](v132, v133);
            MEMORY[0x1B2741EB0](34, 0xE100000000000000);
            MEMORY[0x1B2741EB0](40, 0xE100000000000000);
            v170 = v343[2];
            if (!v170)
            {
              goto LABEL_152;
            }

            __src[0] = v1;
            sub_1B216E534(v170);
            v171 = __src[0];
            v172 = v343 + 5;
            do
            {
              v173 = *(v172 - 1);
              v174 = *v172;
              v368[0] = 34;
              v368[1] = 0xE100000000000000;

              MEMORY[0x1B2741EB0](v173, v174);
              MEMORY[0x1B2741EB0](34, 0xE100000000000000);

              v175 = v368[0];
              v176 = v368[1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v177 = *(v171 + 16);
                sub_1B2116B10();
                v171 = __src[0];
              }

              v178 = *(v171 + 16);
              if (v178 >= *(v171 + 24) >> 1)
              {
                sub_1B2116B10();
                v171 = __src[0];
              }

              *(v171 + 16) = v178 + 1;
              v179 = v171 + 16 * v178;
              *(v179 + 32) = v175;
              *(v179 + 40) = v176;
              v172 += 2;
              --v170;
            }

            while (v170);
          }

          else
          {
            Database.primaryKey(_:)();
            if (v365)
            {

LABEL_210:
              v5 = v366[0];

              goto LABEL_217;
            }

            v183 = __dst[0];
            v184 = __dst[1];
            v185 = LOBYTE(__dst[2]);
            __dst[0] = String.quotedDatabaseIdentifier.getter();
            __dst[1] = v186;
            MEMORY[0x1B2741EB0](40, 0xE100000000000000);
            if (v185)
            {
              v187 = &unk_1F2969308;
              if (v185 == 1)
              {
                v187 = v183;
              }
            }

            else
            {
              sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
              v188 = swift_allocObject();
              *(v188 + 16) = xmmword_1B22546B0;
              *(v188 + 32) = v183;
              *(v188 + 40) = v184;
              v187 = v188;
            }

            v189 = sub_1B216B140(v187);
            if (!v189)
            {

LABEL_152:
              v171 = v1;
              goto LABEL_153;
            }

            v5 = v189;
            __src[0] = v1;
            v9 = __src;
            sub_1B216E534(v189);
            if ((v5 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_266;
            }

            v171 = __src[0];
            v190 = (v187 + 40);
            do
            {
              v191 = *(v190 - 1);
              v192 = *v190;
              v368[0] = 34;
              v368[1] = 0xE100000000000000;

              MEMORY[0x1B2741EB0](v191, v192);
              MEMORY[0x1B2741EB0](34, 0xE100000000000000);

              v193 = v368[0];
              v194 = v368[1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v195 = *(v171 + 16);
                sub_1B2116B10();
                v171 = __src[0];
              }

              v196 = *(v171 + 16);
              if (v196 >= *(v171 + 24) >> 1)
              {
                sub_1B2116B10();
                v171 = __src[0];
              }

              *(v171 + 16) = v196 + 1;
              v197 = v171 + 16 * v196;
              *(v197 + 32) = v193;
              *(v197 + 40) = v194;
              v190 += 2;
              --v5;
            }

            while (v5);
          }

          v1 = MEMORY[0x1E69E7CC0];
LABEL_153:
          v368[0] = v171;
          v198 = sub_1B2252250();
          v200 = v199;

          MEMORY[0x1B2741EB0](v198, v200);
LABEL_154:

          MEMORY[0x1B2741EB0](41, 0xE100000000000000);
          v201 = __dst[0];
          v202 = __dst[1];
          v203 = *(v136 + 16);
          v204 = v203 + 1;
          if (v203 >= *(v136 + 24) >> 1)
          {
            sub_1B214400C();
            v136 = v230;
          }

          *(v136 + 16) = v204;
          v205 = v136 + 16 * v203;
          *(v205 + 32) = v201;
          *(v205 + 40) = v202;
          v206 = v345;
          v207 = v349;
          if (v345 != 4)
          {
            v208 = v203 + 2;
            if (v204 >= *(v136 + 24) >> 1)
            {
              sub_1B214400C();
              v206 = v345;
              v207 = v349;
              v136 = v234;
            }

            *(v136 + 16) = v208;
            v209 = v136 + 16 * v204;
            *(v209 + 32) = 0x54454C4544204E4FLL;
            *(v209 + 40) = 0xE900000000000045;
            v210 = 0xE700000000000000;
            v211 = 0x45444143534143;
            switch(v206)
            {
              case 1:
                v210 = 0xE800000000000000;
                v211 = 0x5443495254534552;
                break;
              case 2:
                v210 = 0xE800000000000000;
                v211 = 0x4C4C554E20544553;
                break;
              case 3:
                v210 = 0xEB00000000544C55;
                v211 = 0x4146454420544553;
                break;
              default:
                break;
            }

            if (v208 >= *(v136 + 24) >> 1)
            {
              sub_1B214400C();
              v207 = v349;
              v136 = v235;
            }

            *(v136 + 16) = v203 + 3;
            v212 = v136 + 16 * v208;
            *(v212 + 32) = v211;
            *(v212 + 40) = v210;
          }

          v213 = *(v136 + 16);
          v214 = v213 + 1;
          if (v213 >= *(v136 + 24) >> 1)
          {
            sub_1B214400C();
            v207 = v349;
            v136 = v236;
          }

          *(v136 + 16) = v214;
          v215 = v136 + 16 * v213;
          *(v215 + 32) = 0x5441445055204E4FLL;
          *(v215 + 40) = 0xE900000000000045;
          v216 = 0xE700000000000000;
          v217 = 0x45444143534143;
          switch(v207)
          {
            case 0:
              goto LABEL_172;
            case 1:
              v216 = 0xE800000000000000;
              v217 = 0x5443495254534552;
              goto LABEL_172;
            case 2:
              v216 = 0xE800000000000000;
              v217 = 0x4C4C554E20544553;
              goto LABEL_172;
            case 3:
              v216 = 0xEB00000000544C55;
              v217 = 0x4146454420544553;
LABEL_172:
              v218 = v213 + 2;
              if (v214 >= *(v136 + 24) >> 1)
              {
                sub_1B214400C();
                v136 = v237;
              }

              *(v136 + 16) = v218;
              v219 = v136 + 16 * v214;
              *(v219 + 32) = v217;
              *(v219 + 40) = v216;
              break;
            default:
              break;
          }

          if (v344)
          {
            v220 = *(v136 + 16);
            if (v220 >= *(v136 + 24) >> 1)
            {
              sub_1B214400C();
              v136 = v238;
            }

            *(v136 + 16) = v220 + 1;
            v221 = v136 + 16 * v220;
            *(v221 + 32) = 0xD00000000000001DLL;
            *(v221 + 40) = 0x80000001B226FFE0;
          }

          __dst[0] = v136;
          v5 = sub_1B2252250();
          v4 = v222;

          v223 = v366[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v231 = *(v223 + 16);
            sub_1B214400C();
            v223 = v232;
          }

          v128 = v338;
          v224 = *(v223 + 16);
          v225 = v347;
          if (v224 >= *(v223 + 24) >> 1)
          {
            sub_1B214400C();
            v225 = v347;
            v223 = v233;
          }

          v129 = v225 + 1;
          *(v223 + 16) = v224 + 1;
          v226 = v223 + 16 * v224;
          *(v226 + 32) = v5;
          *(v226 + 40) = v4;
          v366[0] = v223;
          if (v129 == v340)
          {

            break;
          }
        }
      }

      v357 = v335 & 1;

      v5 = v337;
      swift_beginAccess();
      v239 = *(v337 + 80);
      v362 = *(v239 + 16);

      v240 = 0;
      v241 = 32;
      v242 = MEMORY[0x1E69E7CC0];
      while (v362 != v240)
      {
        if (v240 >= *(v239 + 16))
        {
          goto LABEL_260;
        }

        memcpy(__dst, (v239 + v241), 0xA3uLL);
        __src[0] = 0x28204B43454843;
        __src[1] = 0xE700000000000000;
        sub_1B2127DC0(__dst, v368);
        if (qword_1ED85D658 != -1)
        {
          swift_once();
        }

        v243 = qword_1ED861900;

        sub_1B2116B4C();
        type metadata accessor for SQLGenerationContext();
        swift_allocObject();

        v245 = sub_1B2117164(v244, v243, v242);
        memcpy(v368, __dst, 0xA3uLL);
        v246 = sub_1B2127E58(v245, 0);
        if (v365)
        {

          sub_1B21356F8(__dst);
          goto LABEL_210;
        }

        v248 = v246;
        v249 = v247;

        MEMORY[0x1B2741EB0](v248, v249);

        MEMORY[0x1B2741EB0](41, 0xE100000000000000);
        v250 = __src[0];
        v251 = __src[1];
        sub_1B214400C();
        v253 = v252;
        v254 = *(v252 + 16);
        if (v254 >= *(v252 + 24) >> 1)
        {
          sub_1B214400C();
          v253 = v259;
        }

        *(v253 + 16) = v254 + 1;
        v255 = v253 + 16 * v254;
        *(v255 + 32) = v250;
        *(v255 + 40) = v251;
        v368[0] = v253;
        sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
        sub_1B215175C();
        v5 = sub_1B2252250();
        v4 = v256;

        v1 = v366[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v260 = *(v1 + 16);
          sub_1B214400C();
          v1 = v261;
        }

        v257 = *(v1 + 16);
        if (v257 >= *(v1 + 24) >> 1)
        {
          sub_1B214400C();
          v1 = v262;
        }

        sub_1B21356F8(__dst);
        *(v1 + 16) = v257 + 1;
        v258 = v1 + 16 * v257;
        *(v258 + 32) = v5;
        *(v258 + 40) = v4;
        v366[0] = v1;
        v241 += 168;
        ++v240;
      }

      v5 = v337;
      swift_beginAccess();
      v263 = *(v337 + 88);
      v363 = *(v263 + 16);

      v264 = 0;
      v265 = MEMORY[0x1E69E7CC0];
      while (v363 != v264)
      {
        if (v264 >= *(v263 + 16))
        {
          goto LABEL_261;
        }

        v5 = *(v263 + 8 * v264 + 32);
        v266 = qword_1ED85D658;

        if (v266 != -1)
        {
          swift_once();
        }

        v267 = qword_1ED861900;

        sub_1B2116B4C();
        type metadata accessor for SQLGenerationContext();
        swift_allocObject();

        v269 = sub_1B2117164(v268, v267, v265);
        __dst[0] = v5;
        v270 = sub_1B2119120(v269);
        if (v365)
        {

          goto LABEL_217;
        }

        v4 = v270;
        v272 = v271;

        v5 = v366[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v275 = *(v5 + 16);
          sub_1B214400C();
          v5 = v276;
        }

        v273 = *(v5 + 16);
        v1 = v273 + 1;
        if (v273 >= *(v5 + 24) >> 1)
        {
          sub_1B214400C();
          v5 = v277;
        }

        *(v5 + 16) = v1;
        v274 = v5 + 16 * v273;
        *(v274 + 32) = v4;
        *(v274 + 40) = v272;
        v366[0] = v5;
        ++v264;
      }

      __dst[0] = 40;
      __dst[1] = 0xE100000000000000;
      v368[0] = v366[0];
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      v278 = sub_1B2252250();
      v280 = v279;

      MEMORY[0x1B2741EB0](v278, v280);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      v281 = __dst[0];
      v282 = __dst[1];
      v283 = v336;
      v284 = *(v336 + 16);
      if (v284 >= *(v336 + 24) >> 1)
      {
        sub_1B214400C();
        v283 = v331;
      }

      *(v283 + 16) = v284 + 1;
      v285 = v283;
      v286 = v283 + 16 * v284;
      *(v286 + 32) = v281;
      *(v286 + 40) = v282;
      if ((v335 & 4) != 0)
      {
        sub_1B214400C();
        v265 = v289;
        v4 = *(v289 + 16);
        v5 = v4 + 1;
        if (v4 >= *(v289 + 24) >> 1)
        {
LABEL_268:
          sub_1B214400C();
          v265 = v334;
        }

        *(v265 + 16) = v5;
        v290 = v265 + 16 * v4;
        strcpy((v290 + 32), "WITHOUT ROWID");
        *(v290 + 46) = -4864;
      }

      else if (!*(v265 + 16))
      {

        v287 = v285;
        v288 = v335 & 1;
LABEL_223:
        __dst[0] = v287;
        v296 = sub_1B2252250();
        v4 = v297;

        sub_1B214400C();
        v299 = v298;
        v300 = *(v298 + 16);
        if (v300 >= *(v298 + 24) >> 1)
        {
          sub_1B214400C();
          v299 = v332;
        }

        *(v299 + 16) = v300 + 1;
        v301 = v299 + 16 * v300;
        *(v301 + 32) = v296;
        *(v301 + 40) = v4;
        v357 = v299;
        v370 = v299;
        v302 = *(v337 + 40);
        v1 = sub_1B2142D9C(v302);

        v303 = 0;
        v304 = v302 + 40;
        v285 = MEMORY[0x1E69E7CC0];
LABEL_226:
        v5 = v304 + 16 * v303;
        while (v1 != v303)
        {
          if (v303 >= *(v302 + 16))
          {
            goto LABEL_262;
          }

          if (*v5)
          {
            sub_1B22188B0(__dst);
          }

          else
          {
            v4 = *(v5 - 8);
            v368[0] = v288;

            sub_1B221708C(v342, v341, v368, __dst);
            sub_1B22188B8(v4, 0);
          }

          memcpy(v368, __dst, 0xD3uLL);
          if (sub_1B2117000(v368) != 1)
          {
            memcpy(__src, __dst, 0xD3uLL);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v305 = *(v285 + 16);
              sub_1B2162C4C();
              v285 = v306;
            }

            v4 = *(v285 + 16);
            if (v4 >= *(v285 + 24) >> 1)
            {
              sub_1B2162C4C();
              v285 = v307;
            }

            ++v303;
            memcpy(v366, __src, 0xD3uLL);
            *(v285 + 16) = v4 + 1;
            memcpy((v285 + 216 * v4 + 32), v366, 0xD3uLL);
            v304 = v302 + 40;
            goto LABEL_226;
          }

          memcpy(__src, __dst, 0xD3uLL);
          sub_1B212AC5C(__src, qword_1EB7A2F20, &qword_1B22624E8);
          v5 += 16;
          ++v303;
        }

        v308 = sub_1B216B140(v285);
        if (!v308)
        {

          v314 = MEMORY[0x1E69E7CC0];
LABEL_255:
          sub_1B2156C88(v314);
          __dst[0] = v370;
          v5 = sub_1B2252250();

          return v5;
        }

        v5 = v308;
        v366[0] = MEMORY[0x1E69E7CC0];
        v4 = v366;
        sub_1B216E534(v308);
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_268;
        }

        v309 = 0;
        v364 = v5 - 1;
        v310 = 32;
        while (v309 < *(v285 + 16))
        {
          memcpy(__dst, (v285 + v310), 0xD3uLL);
          memcpy(v368, __dst, 0xD3uLL);
          sub_1B22188C4(__dst, __src);
          v4 = v368;
          v311 = sub_1B22148F4();
          if (v365)
          {

            sub_1B2217D28(__dst);

            goto LABEL_252;
          }

          v5 = v311;
          v313 = v312;
          sub_1B2217D28(__dst);
          v314 = v366[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v315 = *(v314 + 16);
            v4 = v366;
            sub_1B2116B10();
            v314 = v366[0];
          }

          v316 = *(v314 + 16);
          v1 = v316 + 1;
          if (v316 >= *(v314 + 24) >> 1)
          {
            v4 = v366;
            sub_1B2116B10();
            v314 = v366[0];
          }

          *(v314 + 16) = v1;
          v317 = v314 + 16 * v316;
          *(v317 + 32) = v5;
          *(v317 + 40) = v313;
          if (v364 == v309)
          {

            goto LABEL_255;
          }

          v310 += 216;
          ++v309;
        }

        goto LABEL_263;
      }

      __dst[0] = v265;
      v291 = sub_1B2252250();
      v293 = v292;

      v287 = v285;
      v294 = *(v285 + 16);
      if (v294 >= *(v285 + 24) >> 1)
      {
        sub_1B214400C();
        v287 = v333;
      }

      v288 = v357;
      *(v287 + 16) = v294 + 1;
      v295 = v287 + 16 * v294;
      *(v295 + 32) = v291;
      *(v295 + 40) = v293;
      goto LABEL_223;
    }

    v87 = v366[0];
    v346 = v86 + 32;

    v88 = 0;
    v348 = v86;
    while (v88 < *(v86 + 16))
    {
      v89 = (v346 + 16 * v88);
      v90 = *v89;
      v353 = *(v89 + 8);
      v355 = v88;

      sub_1B214400C();
      v92 = v91;
      v93 = *(v91 + 16);
      if (v93 >= *(v91 + 24) >> 1)
      {
        sub_1B214400C();
        v92 = v121;
      }

      v360 = v87;
      *(v92 + 16) = v93 + 1;
      v94 = v92 + 16 * v93;
      *(v94 + 32) = 0x455551494E55;
      *(v94 + 40) = 0xE600000000000000;
      __dst[0] = 40;
      __dst[1] = 0xE100000000000000;
      v95 = *(v90 + 16);
      if (v95)
      {
        __src[0] = v1;
        sub_1B2116B10();
        v96 = __src[0];
        v97 = (v90 + 40);
        do
        {
          v98 = *(v97 - 1);
          v99 = *v97;
          v368[0] = 34;
          v368[1] = 0xE100000000000000;

          MEMORY[0x1B2741EB0](v98, v99);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);

          v100 = v368[0];
          v101 = v368[1];
          __src[0] = v96;
          v102 = *(v96 + 16);
          if (v102 >= *(v96 + 24) >> 1)
          {
            sub_1B2116B10();
            v96 = __src[0];
          }

          *(v96 + 16) = v102 + 1;
          v103 = v96 + 16 * v102;
          *(v103 + 32) = v100;
          *(v103 + 40) = v101;
          v97 += 2;
          --v95;
        }

        while (v95);

        v1 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v96 = v1;
      }

      v368[0] = v96;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      v104 = sub_1B2252250();
      v106 = v105;

      MEMORY[0x1B2741EB0](v104, v106);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      v107 = __dst[0];
      v108 = __dst[1];
      v109 = *(v92 + 16);
      v110 = v109 + 1;
      if (v109 >= *(v92 + 24) >> 1)
      {
        sub_1B214400C();
        v92 = v122;
      }

      v87 = v360;
      *(v92 + 16) = v110;
      v111 = v92 + 16 * v109;
      *(v111 + 32) = v107;
      *(v111 + 40) = v108;
      v112 = v109 + 2;
      if (v110 >= *(v92 + 24) >> 1)
      {
        sub_1B214400C();
        v92 = v126;
      }

      *(v92 + 16) = v112;
      v113 = v92 + 16 * v110;
      *(v113 + 32) = 0x4C464E4F43204E4FLL;
      *(v113 + 40) = 0xEB00000000544349;
      v114 = 0xE500000000000000;
      v115 = 0x54524F4241;
      switch(v353)
      {
        case 0:
          v114 = 0xE800000000000000;
          v115 = 0x4B4341424C4C4F52;
          goto LABEL_87;
        case 1:
          goto LABEL_87;
        case 2:
          v114 = 0xE400000000000000;
          v115 = 1279869254;
          goto LABEL_87;
        case 3:
          v114 = 0xE600000000000000;
          v115 = 0x45524F4E4749;
          goto LABEL_87;
        case 4:
          v114 = 0xE700000000000000;
          v115 = 0x4543414C504552;
LABEL_87:
          v116 = *(v92 + 16);
          if (v116 >= *(v92 + 24) >> 1)
          {
            sub_1B214400C();
            v92 = v127;
          }

          *(v92 + 16) = v116 + 1;
          v117 = v92 + 16 * v116;
          *(v117 + 32) = v115;
          *(v117 + 40) = v114;
          break;
        default:
          break;
      }

      v86 = v348;
      __dst[0] = v92;
      v5 = sub_1B2252250();
      v4 = v118;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v123 = *(v360 + 16);
        sub_1B214400C();
        v87 = v124;
      }

      v119 = *(v87 + 16);
      if (v119 >= *(v87 + 24) >> 1)
      {
        sub_1B214400C();
        v87 = v125;
      }

      v88 = v355 + 1;
      *(v87 + 16) = v119 + 1;
      v120 = v87 + 16 * v119;
      *(v120 + 32) = v5;
      *(v120 + 40) = v4;
      if (v355 + 1 == v350)
      {

        v366[0] = v87;
        v85 = v337;
        goto LABEL_96;
      }
    }

    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    sub_1B214400C();
    v3 = v319;
  }

  __dst[0] = v1;

  v4 = __dst;
  sub_1B2116B10();
  v30 = 0;
  v31 = __dst[0];
  v32 = (v29 + 40);
  v33 = v343;
  v358 = v5;
  while (1)
  {
    if (v30 >= *(v29 + 16))
    {
      goto LABEL_259;
    }

    v34 = *(v32 - 1);
    if (*v32)
    {
      v35 = qword_1ED85D658;
      v36 = *(v32 - 1);

      if (v35 != -1)
      {
        swift_once();
      }

      v5 = qword_1ED861900;

      sub_1B2116B4C();
      type metadata accessor for SQLGenerationContext();
      swift_allocObject();

      v38 = sub_1B2117164(v37, v5, v1);
      v368[0] = v34;
      v4 = v368;
      v39 = sub_1B2119120(v38);
      if (v365)
      {

        swift_bridgeObjectRelease_n();

        sub_1B22188B8(v34, 1);

LABEL_252:

        return v5;
      }

      v5 = v39;
      v41 = v40;

      v42 = v34;
      v43 = 1;
      goto LABEL_31;
    }

    v44 = *(v32 - 1);

    v4 = v34;
    sub_1B22151DC(a1, v342, v341, v33);
    if (v365)
    {
      break;
    }

    v5 = v45;
    v41 = v46;
    v42 = v34;
    v43 = 0;
LABEL_31:
    sub_1B22188B8(v42, v43);
    __dst[0] = v31;
    v47 = *(v31 + 16);
    v33 = v343;
    if (v47 >= *(v31 + 24) >> 1)
    {
      v4 = __dst;
      sub_1B2116B10();
      v33 = v343;
      v31 = __dst[0];
    }

    ++v30;
    *(v31 + 16) = v47 + 1;
    v48 = v31 + 16 * v47;
    *(v48 + 32) = v5;
    *(v48 + 40) = v41;
    v32 += 16;
    v1 = MEMORY[0x1E69E7CC0];
    if (v358 == v30)
    {

      goto LABEL_36;
    }
  }

  v5 = v343;

  sub_1B22188B8(v34, 0);

LABEL_217:

  return v5;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.rename(table:to:)(Swift::String table, Swift::String to)
{
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;
  v4 = table._object;
  v5 = table._countAndFlagsBits;
  sub_1B2252CD0();

  MEMORY[0x1B2741EB0](v5, v4);
  sub_1B211D75C();
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  MEMORY[0x1B2741EB0](0x20454D414E455220, 0xEB00000000204F54);
  MEMORY[0x1B2741EB0](countAndFlagsBits, object);
  sub_1B211D75C();
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  sub_1B2111BFC();
  Database.execute(sql:arguments:)(v6, v7);
}

uint64_t Database.alter(table:body:)(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  type metadata accessor for TableAlteration();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v7[3] = a2;
  v7[4] = v8;
  v7[2] = a1;

  a3(v7);
  sub_1B2111BFC();
  v10 = sub_1B2213780(v9);
  if (v3)
  {
  }

  sub_1B212CF04(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20);
}

uint64_t sub_1B2213780(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v165 = *(v3 + 16);
  v166 = v1;
  if (v165)
  {

    v5 = 0;
    v6 = (v3 + 64);
    v7 = MEMORY[0x1E69E7CC0];
    v164 = v3;
    while (v5 < *(v3 + 16))
    {
      v8 = *(v6 - 3);
      v10 = *(v6 - 2);
      v9 = *(v6 - 1);
      v11 = v5 + 1;
      v173 = v10;
      v174 = *(v6 - 4);
      switch(*v6)
      {
        case 1:
          v172 = *(v6 - 3);
          sub_1B221881C(*(v6 - 4), v8, v10, v9, 1);

          sub_1B214400C();
          v97 = v96;
          v98 = *(v96 + 16);
          v169 = v9;
          if (v98 >= *(v96 + 24) >> 1)
          {
            sub_1B214400C();
            v97 = v148;
          }

          *(v97 + 16) = v98 + 1;
          v99 = v97 + 16 * v98;
          *(v99 + 32) = 0x4154205245544C41;
          *(v99 + 40) = 0xEB00000000454C42;
          v100 = *(v166 + 16);
          v101 = *(v166 + 24);
          v177[0] = 34;
          v177[1] = 0xE100000000000000;
          MEMORY[0x1B2741EB0](v100, v101);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);
          v102 = v177[0];
          v103 = v177[1];
          v104 = *(v97 + 16);
          v105 = *(v97 + 24) >> 1;
          v106 = v104 + 1;
          if (v105 <= v104)
          {
            sub_1B214400C();
            v97 = v149;
            v105 = *(v149 + 24) >> 1;
          }

          *(v97 + 16) = v106;
          v107 = v97 + 16 * v104;
          *(v107 + 32) = v102;
          *(v107 + 40) = v103;
          if (v105 < (v104 + 2))
          {
            sub_1B214400C();
            v97 = v150;
          }

          *(v97 + 16) = v104 + 2;
          v108 = v97 + 16 * v106;
          *(v108 + 32) = 0x554C4F4320444441;
          *(v108 + 40) = 0xEA00000000004E4DLL;
          if (qword_1ED85D658 != -1)
          {
            swift_once();
          }

          v109 = qword_1ED861900;

          v110 = MEMORY[0x1E69E7CC0];
          sub_1B2116B4C();
          type metadata accessor for SQLGenerationContext();
          swift_allocObject();

          v112 = sub_1B2117164(v111, v109, v110);
          v177[0] = v174;
          v113 = sub_1B2119120(v112);
          if (v2)
          {

            v24 = v169;
            sub_1B2218788(v174, v172, v10, v169, 1);

            sub_1B2218788(v174, v172, v10, v169, 1);
            return v24;
          }

          v115 = v113;
          v116 = v114;
          v163 = v11;
          sub_1B2218788(v174, v172, v10, v169, 1);
          v117 = *(v97 + 16);
          if (v117 >= *(v97 + 24) >> 1)
          {
            sub_1B214400C();
            v97 = v155;
          }

          *(v97 + 16) = v117 + 1;
          v118 = v97 + 16 * v117;
          *(v118 + 32) = v115;
          *(v118 + 40) = v116;
          v177[0] = v97;
          sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
          sub_1B215175C();
          v119 = sub_1B2252250();
          v121 = v120;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v156 = *(v7 + 16);
            sub_1B214400C();
            v7 = v157;
          }

          v5 = v163;
          v122 = *(v7 + 16);
          if (v122 >= *(v7 + 24) >> 1)
          {
            sub_1B214400C();
            v7 = v158;
          }

          result = sub_1B2218788(v174, v172, v173, v169, 1);
          *(v7 + 16) = v122 + 1;
          v123 = v7 + 16 * v122;
          *(v123 + 32) = v119;
          *(v123 + 40) = v121;
          goto LABEL_70;
        case 2:
          v171 = *(v6 - 3);

          sub_1B214400C();
          v38 = v37;
          v39 = *(v37 + 16);
          v40 = v9;
          if (v39 >= *(v37 + 24) >> 1)
          {
            sub_1B214400C();
            v38 = v129;
          }

          *(v38 + 16) = v39 + 1;
          v41 = v38 + 16 * v39;
          *(v41 + 32) = 0x4154205245544C41;
          *(v41 + 40) = 0xEB00000000454C42;
          v42 = *(v166 + 16);
          v43 = *(v166 + 24);
          v177[0] = 34;
          v177[1] = 0xE100000000000000;
          MEMORY[0x1B2741EB0](v42, v43);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);
          v44 = v177[0];
          v45 = v177[1];
          v46 = *(v38 + 16);
          v47 = *(v38 + 24) >> 1;
          v48 = v46 + 1;
          if (v47 <= v46)
          {
            sub_1B214400C();
            v38 = v130;
            v47 = *(v130 + 24) >> 1;
          }

          *(v38 + 16) = v48;
          v49 = v38 + 16 * v46;
          *(v49 + 32) = v44;
          *(v49 + 40) = v45;
          if (v47 < (v46 + 2))
          {
            sub_1B214400C();
            v38 = v131;
          }

          *(v38 + 16) = v46 + 2;
          v50 = v38 + 16 * v48;
          strcpy((v50 + 32), "RENAME COLUMN");
          *(v50 + 46) = -4864;
          v177[0] = 34;
          v177[1] = 0xE100000000000000;
          MEMORY[0x1B2741EB0](v174, v171);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);
          v51 = v177[0];
          v52 = v177[1];
          v53 = *(v38 + 16);
          v54 = *(v38 + 24) >> 1;
          v55 = v53 + 1;
          if (v54 <= v53)
          {
            sub_1B214400C();
            v38 = v132;
            v54 = *(v132 + 24) >> 1;
          }

          *(v38 + 16) = v55;
          v56 = v38 + 16 * v53;
          *(v56 + 32) = v51;
          *(v56 + 40) = v52;
          v57 = v53 + 2;
          v58 = v11;
          if (v54 < v57)
          {
            sub_1B214400C();
            v38 = v133;
          }

          *(v38 + 16) = v57;
          v59 = v38 + 16 * v55;
          *(v59 + 32) = 20308;
          *(v59 + 40) = 0xE200000000000000;
          v177[0] = 34;
          v177[1] = 0xE100000000000000;
          MEMORY[0x1B2741EB0](v173, v40);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);
          v60 = v177[0];
          v61 = v177[1];
          v62 = *(v38 + 16);
          if (v62 >= *(v38 + 24) >> 1)
          {
            sub_1B214400C();
            v38 = v134;
          }

          *(v38 + 16) = v62 + 1;
          v63 = v38 + 16 * v62;
          *(v63 + 32) = v60;
          *(v63 + 40) = v61;
          v177[0] = v38;
          sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
          sub_1B215175C();
          v64 = sub_1B2252250();
          v66 = v65;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = *(v7 + 16);
            sub_1B214400C();
            v7 = v136;
          }

          v5 = v58;
          v67 = *(v7 + 16);
          v68 = v67 + 1;
          if (v67 >= *(v7 + 24) >> 1)
          {
            sub_1B214400C();
            v7 = v137;
          }

          v69 = v174;
          v70 = v171;
          v71 = v173;
          v72 = v40;
          v73 = 2;
          goto LABEL_50;
        case 3:
          v74 = *(v6 - 3);

          sub_1B214400C();
          v76 = v75;
          v77 = *(v75 + 16);
          v168 = v9;
          if (v77 >= *(v75 + 24) >> 1)
          {
            sub_1B214400C();
            v76 = v138;
          }

          *(v76 + 16) = v77 + 1;
          v78 = v76 + 16 * v77;
          *(v78 + 32) = 0x4154205245544C41;
          *(v78 + 40) = 0xEB00000000454C42;
          v79 = *(v166 + 16);
          v80 = *(v166 + 24);
          v177[0] = 34;
          v177[1] = 0xE100000000000000;
          MEMORY[0x1B2741EB0](v79, v80);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);
          v81 = v177[0];
          v82 = v177[1];
          v83 = *(v76 + 16);
          v84 = *(v76 + 24) >> 1;
          v85 = v83 + 1;
          if (v84 <= v83)
          {
            sub_1B214400C();
            v76 = v139;
            v84 = *(v139 + 24) >> 1;
          }

          *(v76 + 16) = v85;
          v86 = v76 + 16 * v83;
          *(v86 + 32) = v81;
          *(v86 + 40) = v82;
          v87 = v83 + 2;
          v88 = v11;
          if (v84 < v87)
          {
            sub_1B214400C();
            v76 = v140;
          }

          *(v76 + 16) = v87;
          v89 = v76 + 16 * v85;
          *(v89 + 32) = 0x4C4F4320504F5244;
          *(v89 + 40) = 0xEB000000004E4D55;
          v177[0] = 34;
          v177[1] = 0xE100000000000000;
          MEMORY[0x1B2741EB0](v174, v74);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);
          v90 = v177[0];
          v91 = v177[1];
          v92 = *(v76 + 16);
          if (v92 >= *(v76 + 24) >> 1)
          {
            sub_1B214400C();
            v76 = v141;
          }

          *(v76 + 16) = v92 + 1;
          v93 = v76 + 16 * v92;
          *(v93 + 32) = v90;
          *(v93 + 40) = v91;
          v177[0] = v76;
          sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
          sub_1B215175C();
          v64 = sub_1B2252250();
          v66 = v94;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v142 = *(v7 + 16);
            sub_1B214400C();
            v7 = v143;
          }

          v5 = v88;
          v67 = *(v7 + 16);
          v68 = v67 + 1;
          if (v67 >= *(v7 + 24) >> 1)
          {
            sub_1B214400C();
            v7 = v144;
          }

          v69 = v174;
          v70 = v74;
          v71 = v173;
          v72 = v168;
          v73 = 3;
LABEL_50:
          result = sub_1B2218788(v69, v70, v71, v72, v73);
          *(v7 + 16) = v68;
          v95 = v7 + 16 * v67;
          *(v95 + 32) = v64;
          *(v95 + 40) = v66;
          goto LABEL_70;
        default:

          sub_1B214400C();
          v13 = v12;
          v14 = *(v12 + 16);
          v162 = v11;
          v167 = v9;
          v170 = v8;
          if (v14 >= *(v12 + 24) >> 1)
          {
            sub_1B214400C();
            v13 = v145;
          }

          *(v13 + 16) = v14 + 1;
          v15 = v13 + 16 * v14;
          *(v15 + 32) = 0x4154205245544C41;
          *(v15 + 40) = 0xEB00000000454C42;
          v16 = *(v166 + 16);
          v17 = *(v166 + 24);
          v177[0] = 34;
          v177[1] = 0xE100000000000000;
          v161 = v16;
          MEMORY[0x1B2741EB0]();
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);
          v18 = v177[0];
          v19 = v177[1];
          v20 = *(v13 + 16);
          v21 = *(v13 + 24) >> 1;
          v22 = v20 + 1;
          if (v21 <= v20)
          {
            sub_1B214400C();
            v13 = v146;
            v21 = *(v146 + 24) >> 1;
          }

          *(v13 + 16) = v22;
          v23 = v13 + 16 * v20;
          *(v23 + 32) = v18;
          *(v23 + 40) = v19;
          v24 = v20 + 2;
          if (v21 < (v20 + 2))
          {
            sub_1B214400C();
            v13 = v147;
          }

          *(v13 + 16) = v24;
          v25 = v13 + 16 * v22;
          *(v25 + 32) = 0x554C4F4320444441;
          *(v25 + 40) = 0xEA00000000004E4DLL;
          sub_1B22151DC(a1, v161, v17, 0);
          if (v2)
          {

            sub_1B2218788(v174, v170, v173, v167, 0);

            return v24;
          }

          v28 = v26;
          v29 = v27;
          v30 = *(v13 + 16);
          if (v30 >= *(v13 + 24) >> 1)
          {
            sub_1B214400C();
            v13 = v151;
          }

          *(v13 + 16) = v30 + 1;
          v31 = v13 + 16 * v30;
          *(v31 + 32) = v28;
          *(v31 + 40) = v29;
          v177[0] = v13;
          sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
          sub_1B215175C();
          v32 = sub_1B2252250();
          v34 = v33;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v152 = *(v7 + 16);
            sub_1B214400C();
            v7 = v153;
          }

          v35 = *(v7 + 16);
          if (v35 >= *(v7 + 24) >> 1)
          {
            sub_1B214400C();
            v7 = v154;
          }

          *(v7 + 16) = v35 + 1;
          v36 = v7 + 16 * v35;
          *(v36 + 32) = v32;
          *(v36 + 40) = v34;
          v178 = 0;
          sub_1B221708C(v161, v17, &v178, __src);
          memcpy(__dst, __src, 0xD3uLL);
          memcpy(v177, __src, 0xD3uLL);
          if (sub_1B2117000(v177) == 1)
          {
            result = sub_1B2218788(v174, v170, v173, v167, 0);
            v5 = v162;
          }

          else
          {
            memcpy(__src, v177, 0xD3uLL);
            v5 = v162;
            v124 = sub_1B22148F4();
            v126 = v125;
            v127 = *(v7 + 16);
            if (v127 >= *(v7 + 24) >> 1)
            {
              sub_1B214400C();
              v7 = v159;
            }

            sub_1B212AC5C(__dst, qword_1EB7A2F20, &qword_1B22624E8);
            result = sub_1B2218788(v174, v170, v173, v167, 0);
            *(v7 + 16) = v127 + 1;
            v128 = v7 + 16 * v127;
            *(v128 + 32) = v124;
            *(v128 + 40) = v126;
          }

LABEL_70:
          v3 = v164;
          v6 += 40;
          if (v165 == v5)
          {

            goto LABEL_73;
          }

          break;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_73:
    v177[0] = v7;
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v24 = sub_1B2252250();

    return v24;
  }

  return result;
}

uint64_t Database.create(index:on:columns:unique:ifNotExists:condition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v8 = a7 & 1;
  if (a6)
  {
    v8 = a7 & 1 | 2;
  }

  v10 = v8;
  return Database.create(index:on:columns:options:condition:)(a1, a2, a3, a4, a5, &v10, a8);
}

void *sub_1B22148F4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  memcpy(__dst, v0 + 6, 0xA3uLL);
  sub_1B214400C();
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = v10 + 1;
  if (v10 >= *(v8 + 24) >> 1)
  {
    sub_1B214400C();
    v9 = v57;
  }

  *(v9 + 16) = v11;
  v12 = v9 + 16 * v10;
  *(v12 + 32) = 0x455441455243;
  *(v12 + 40) = 0xE600000000000000;
  if ((v6 & 2) != 0)
  {
    v13 = v10 + 2;
    if (v13 > *(v9 + 24) >> 1)
    {
      sub_1B214400C();
      v9 = v62;
    }

    *(v9 + 16) = v13;
    v14 = v9 + 16 * v11;
    *(v14 + 32) = 0x455551494E55;
    *(v14 + 40) = 0xE600000000000000;
    v11 = *(v9 + 16);
  }

  v15 = v11 + 1;
  if (v11 >= *(v9 + 24) >> 1)
  {
    sub_1B214400C();
    v9 = v58;
  }

  *(v9 + 16) = v15;
  v16 = v9 + 16 * v11;
  *(v16 + 32) = 0x5845444E49;
  *(v16 + 40) = 0xE500000000000000;
  if (v6)
  {
    v17 = v11 + 2;
    if (v17 > *(v9 + 24) >> 1)
    {
      sub_1B214400C();
      v9 = v63;
    }

    *(v9 + 16) = v17;
    v18 = v9 + 16 * v15;
    strcpy((v18 + 32), "IF NOT EXISTS");
    *(v18 + 46) = -4864;
  }

  v19 = v9;
  __src[0] = 34;
  __src[1] = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v2, v3);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24) >> 1;
  v22 = v20 + 1;
  v23 = v19;
  if (v21 <= v20)
  {
    sub_1B214400C();
    v23 = v59;
    v21 = *(v59 + 24) >> 1;
  }

  *(v23 + 16) = v22;
  v24 = v23 + 16 * v20;
  *(v24 + 32) = 34;
  *(v24 + 40) = 0xE100000000000000;
  if (v21 < (v20 + 2))
  {
    sub_1B214400C();
    v23 = v60;
  }

  v71 = v1;
  *(v23 + 16) = v20 + 2;
  v65 = v23;
  v25 = v23 + 16 * v22;
  *(v25 + 32) = 20047;
  *(v25 + 40) = 0xE200000000000000;
  __src[0] = 34;
  __src[1] = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v4, v5);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  MEMORY[0x1B2741EB0](40, 0xE100000000000000);
  v26 = *(v7 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v67 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v27 = v67;
    v28 = (v7 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      v66[0] = 34;
      v66[1] = 0xE100000000000000;

      MEMORY[0x1B2741EB0](v29, v30);
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);

      v67 = v27;
      v31 = *(v27 + 16);
      if (v31 >= *(v27 + 24) >> 1)
      {
        sub_1B2116B10();
        v27 = v67;
      }

      *(v27 + 16) = v31 + 1;
      v32 = v27 + 16 * v31;
      *(v32 + 32) = 34;
      *(v32 + 40) = 0xE100000000000000;
      v28 += 2;
      --v26;
    }

    while (v26);
  }

  v66[0] = v27;
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v33 = sub_1B2252250();
  v35 = v34;

  MEMORY[0x1B2741EB0](v33, v35);

  MEMORY[0x1B2741EB0](41, 0xE100000000000000);
  v36 = __src[0];
  v37 = __src[1];
  v38 = v65;
  v39 = *(v65 + 16);
  if (v39 >= *(v65 + 24) >> 1)
  {
    sub_1B214400C();
    v38 = v61;
  }

  *(v38 + 16) = v39 + 1;
  v40 = v38;
  v41 = v38 + 16 * v39;
  *(v41 + 32) = v36;
  *(v41 + 40) = v37;
  memcpy(__src, __dst, 0xA3uLL);
  if (sub_1B213EA68(__src) == 1)
  {
    goto LABEL_32;
  }

  v67 = 0x204552454857;
  v68 = 0xE600000000000000;
  sub_1B2122B00(__dst, v66, &qword_1EB7A1CD0, &unk_1B225D310);
  v42 = v71;
  if (qword_1ED85D658 != -1)
  {
    swift_once();
  }

  v43 = qword_1ED861900;

  v44 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v46 = sub_1B2117164(v45, v43, v44);
  memcpy(v66, __src, 0xA3uLL);
  v47 = v66;
  v48 = sub_1B2127E58(v46, 0);
  if (!v42)
  {
    v50 = v48;
    v51 = v49;

    MEMORY[0x1B2741EB0](v50, v51);

    v52 = v67;
    v53 = v68;
    v54 = *(v40 + 16);
    if (v54 >= *(v40 + 24) >> 1)
    {
      sub_1B214400C();
      v40 = v64;
    }

    sub_1B212AC5C(__dst, &qword_1EB7A1CD0, &unk_1B225D310);
    *(v40 + 16) = v54 + 1;
    v55 = v40 + 16 * v54;
    *(v55 + 32) = v52;
    *(v55 + 40) = v53;
LABEL_32:
    v66[0] = v40;
    v47 = sub_1B2252250();

    return v47;
  }

  sub_1B212AC5C(__dst, &qword_1EB7A1CD0, &unk_1B225D310);
  return v47;
}

uint64_t sub_1B2214F6C()
{
  MEMORY[0x1B2741EB0]();
  sub_1B211D75C();
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  sub_1B2111BFC();
  Database.execute(sql:arguments:)(v0, v1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.reindex(collation:)(GRDBInternal::Database::CollationName collation)
{
  MEMORY[0x1B2741EB0](*collation.rawValue._countAndFlagsBits, *(collation.rawValue._countAndFlagsBits + 8));
  sub_1B2111BFC();
  Database.execute(sql:arguments:)(v1, v2);
}

uint64_t Database.reindex(collation:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  v4[0] = *(a1 + 16);
  v4[1] = v1;

  v2.rawValue._countAndFlagsBits = v4;
  Database.reindex(collation:)(v2);
}

void sub_1B22151DC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v5;
  v7 = v4;
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  __dst[0] = 34;
  __dst[1] = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v8, v9);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  v10 = 34;
  v11 = 0xE100000000000000;
  sub_1B214400C();
  v13 = v12;
  v14 = *(v12 + 16);
  v15 = v14 + 1;
  if (v14 >= *(v12 + 24) >> 1)
  {
LABEL_168:
    sub_1B214400C();
    v13 = v161;
  }

  *(v13 + 16) = v15;
  v16 = v13 + 16 * v14;
  *(v16 + 32) = v10;
  *(v16 + 40) = v11;
  v17 = *(v7 + 40);
  if (v17)
  {
    v18 = *(v7 + 32);
    v19 = *(v13 + 24);
    v20 = v14 + 2;
    v21 = *(v7 + 40);

    if (v20 > (v19 >> 1))
    {
      sub_1B214400C();
      v13 = v162;
    }

    *(v13 + 16) = v20;
    v22 = v13 + 16 * v15;
    *(v22 + 32) = v18;
    *(v22 + 40) = v17;
  }

  v23 = *(v7 + 48);
  v180 = v7;
  if ((v23 & 0xFF00) != 0x200)
  {
    v24 = *(v13 + 16);
    v25 = v24 + 1;
    if (v24 >= *(v13 + 24) >> 1)
    {
      sub_1B214400C();
      v13 = v163;
    }

    *(v13 + 16) = v25;
    v26 = v13 + 16 * v24;
    *(v26 + 32) = 0x205952414D495250;
    *(v26 + 40) = 0xEB0000000059454BLL;
    v27 = v24 + 2;
    if ((v24 + 2) > *(v13 + 24) >> 1)
    {
      sub_1B214400C();
      v13 = v167;
    }

    *(v13 + 16) = v27;
    v28 = v13 + 16 * v25;
    *(v28 + 32) = 0x4C464E4F43204E4FLL;
    *(v28 + 40) = 0xEB00000000544349;
    v7 = 0xE800000000000000;
    v29 = 0x4B4341424C4C4F52;
    switch(v23)
    {
      case 0:
        goto LABEL_16;
      case 1:
        v7 = 0xE500000000000000;
        v29 = 0x54524F4241;
        goto LABEL_16;
      case 2:
        v7 = 0xE400000000000000;
        v29 = 1279869254;
        goto LABEL_16;
      case 3:
        v7 = 0xE600000000000000;
        v29 = 0x45524F4E4749;
        goto LABEL_16;
      case 4:
        v7 = 0xE700000000000000;
        v29 = 0x4543414C504552;
LABEL_16:
        if ((v24 + 3) > *(v13 + 24) >> 1)
        {
          sub_1B214400C();
          v13 = v168;
        }

        *(v13 + 16) = v24 + 3;
        v30 = v13 + 16 * v27;
        *(v30 + 32) = v29;
        *(v30 + 40) = v7;
        v7 = v180;
        break;
      default:
        break;
    }

    if ((v23 & 0x100) != 0)
    {
      v31 = *(v13 + 16);
      if (v31 >= *(v13 + 24) >> 1)
      {
        sub_1B214400C();
        v13 = v169;
      }

      *(v13 + 16) = v31 + 1;
      v32 = v13 + 16 * v31;
      strcpy((v32 + 32), "AUTOINCREMENT");
      *(v32 + 46) = -4864;
    }
  }

  v33 = *(v7 + 51);
  if (v33 == 1)
  {
    v34 = *(v13 + 16);
    v35 = v34 + 1;
    v36 = 0x4C4C554E20544F4ELL;
    if (v34 >= *(v13 + 24) >> 1)
    {
      sub_1B214400C();
      v13 = v164;
    }

    v37 = 0xE800000000000000;
  }

  else
  {
    v7 = *(v13 + 16);
    v34 = v7 + 1;
    if (v7 >= *(v13 + 24) >> 1)
    {
      sub_1B214400C();
      v13 = v165;
    }

    v36 = 0x4B4341424C4C4F52;
    *(v13 + 16) = v34;
    v38 = v13 + 16 * v7;
    *(v38 + 32) = 0xD000000000000014;
    *(v38 + 40) = 0x80000001B226FFA0;
    v37 = 0xE800000000000000;
    switch(v33)
    {
      case 0:
        goto LABEL_33;
      case 1:
LABEL_169:
        __break(1u);
        return;
      case 2:
        v37 = 0xE400000000000000;
        v36 = 1279869254;
        goto LABEL_33;
      case 3:
        v37 = 0xE600000000000000;
        v36 = 0x45524F4E4749;
        goto LABEL_33;
      case 4:
        v37 = 0xE700000000000000;
        v36 = 0x4543414C504552;
LABEL_33:
        v35 = v7 + 2;
        if ((v7 + 2) > *(v13 + 24) >> 1)
        {
          sub_1B214400C();
          v13 = v166;
        }

        v7 = v180;
        break;
      default:
        goto LABEL_37;
    }
  }

  *(v13 + 16) = v35;
  v39 = v13 + 16 * v34;
  *(v39 + 32) = v36;
  *(v39 + 40) = v37;
LABEL_37:
  v11 = *(v7 + 50);
  if ((v11 - 5) >= 2)
  {
    v40 = *(v13 + 16);
    v41 = *(v13 + 24) >> 1;
    if (v11 == 1)
    {
      if (v41 <= v40)
      {
        sub_1B214400C();
        v13 = v170;
      }

      v42 = 0xE600000000000000;
      v43 = 0x455551494E55;
      v11 = v40 + 1;
    }

    else
    {
      if (v41 <= v40)
      {
        sub_1B214400C();
        v13 = v171;
      }

      *(v13 + 16) = v40 + 1;
      v44 = v13 + 16 * v40;
      *(v44 + 32) = 0xD000000000000012;
      *(v44 + 40) = 0x80000001B2270000;
      v42 = 0xE800000000000000;
      v43 = 0x4B4341424C4C4F52;
      switch(v11)
      {
        case 1uLL:
          goto LABEL_169;
        case 2uLL:
          v42 = 0xE400000000000000;
          v43 = 1279869254;
          break;
        case 3uLL:
          v42 = 0xE600000000000000;
          v43 = 0x45524F4E4749;
          break;
        case 4uLL:
          v42 = 0xE700000000000000;
          v43 = 0x4543414C504552;
          break;
        default:
          break;
      }

      v11 = v40 + 2;
      if ((v40 + 2) > *(v13 + 24) >> 1)
      {
        sub_1B214400C();
        v13 = v172;
      }

      ++v40;
    }

    *(v13 + 16) = v11;
    v197 = v13;
    v45 = v13 + 16 * v40;
    *(v45 + 32) = v43;
    *(v45 + 40) = v42;
    v7 = v180;
  }

  else
  {
    v197 = v13;
  }

  swift_beginAccess();
  v14 = *(v7 + 56);
  v188 = *(v14 + 16);

  v7 = 0;
  v10 = 32;
  v15 = &unk_1ED861000;
  while (v188 != v7)
  {
    if (v7 >= *(v14 + 16))
    {
      __break(1u);
LABEL_167:
      __break(1u);
      goto LABEL_168;
    }

    memcpy(__dst, (v14 + v10), 0xA3uLL);
    v190[0] = 0x28204B43454843;
    v190[1] = 0xE700000000000000;
    sub_1B2127DC0(__dst, v193);
    if (qword_1ED85D658 != -1)
    {
      swift_once();
    }

    v46 = v15;
    v47 = *(v15 + 2304);

    v48 = MEMORY[0x1E69E7CC0];
    sub_1B2116B4C();
    type metadata accessor for SQLGenerationContext();
    swift_allocObject();

    v50 = sub_1B2117164(v49, v47, v48);
    memcpy(v193, __dst, 0xA3uLL);
    v51 = sub_1B2127E58(v50, 0);
    if (v6)
    {

      sub_1B21356F8(__dst);

      return;
    }

    v53 = v51;
    v54 = v52;

    MEMORY[0x1B2741EB0](v53, v54);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    v11 = v190[0];
    v55 = v190[1];
    v56 = *(v197 + 16);
    if (v56 >= *(v197 + 24) >> 1)
    {
      sub_1B214400C();
      v197 = v59;
    }

    sub_1B21356F8(__dst);
    v57 = v197;
    *(v197 + 16) = v56 + 1;
    v58 = v57 + 16 * v56;
    *(v58 + 32) = v11;
    *(v58 + 40) = v55;
    v10 += 168;
    ++v7;
    v6 = 0;
    v15 = v46;
  }

  v7 = v180;
  memcpy(v195, (v180 + 72), 0xA3uLL);
  memcpy(__src, (v180 + 72), 0xA3uLL);
  v60 = sub_1B213EA68(__src);
  v61 = v197;
  if (v60 != 1)
  {
    v193[0] = 0x20544C5541464544;
    v193[1] = 0xE800000000000000;
    sub_1B2122B00(v195, __dst, &qword_1EB7A1CD0, &unk_1B225D310);
    if (qword_1ED85D658 != -1)
    {
      swift_once();
    }

    v62 = *(v15 + 2304);

    v63 = MEMORY[0x1E69E7CC0];
    sub_1B2116B4C();
    type metadata accessor for SQLGenerationContext();
    swift_allocObject();

    v65 = sub_1B2117164(v64, v62, v63);
    memcpy(__dst, __src, 0xA3uLL);
    v66 = sub_1B2127E58(v65, 0);
    if (v6)
    {

      sub_1B212AC5C(v195, &qword_1EB7A1CD0, &unk_1B225D310);
      return;
    }

    v68 = v66;
    v69 = v67;

    MEMORY[0x1B2741EB0](v68, v69);

    v10 = v193[0];
    v11 = v193[1];
    v14 = *(v61 + 16);
    if (v14 >= *(v61 + 24) >> 1)
    {
      sub_1B214400C();
      v61 = v175;
    }

    v7 = v180;
    sub_1B212AC5C(v195, &qword_1EB7A1CD0, &unk_1B225D310);
    *(v61 + 16) = v14 + 1;
    v70 = v61 + 16 * v14;
    *(v70 + 32) = v10;
    *(v70 + 40) = v11;
  }

  v15 = *(v7 + 248);
  if (v15)
  {
    v10 = *(v7 + 240);
    v71 = *(v61 + 16);
    v72 = *(v61 + 24) >> 1;
    v11 = v71 + 1;

    if (v72 <= v71)
    {
      sub_1B214400C();
      v61 = v173;
      v72 = *(v173 + 24) >> 1;
    }

    *(v61 + 16) = v11;
    v73 = v61 + 16 * v71;
    *(v73 + 32) = 0x4554414C4C4F43;
    *(v73 + 40) = 0xE700000000000000;
    v14 = v71 + 2;
    if (v72 < v14)
    {
      sub_1B214400C();
      v61 = v174;
    }

    v7 = v180;
    *(v61 + 16) = v14;
    v74 = v61 + 16 * v11;
    *(v74 + 32) = v10;
    *(v74 + 40) = v15;
  }

  swift_beginAccess();
  v75 = *(v7 + 64);
  v183 = *(v75 + 16);
  if (v183)
  {
    v182 = v75 + 32;

    v76 = 0;
    v181 = v75;
    while (1)
    {
      if (v76 >= *(v75 + 16))
      {
        goto LABEL_167;
      }

      v186 = v76;
      v77 = v182 + 40 * v76;
      v78 = *v77;
      v79 = *(v77 + 16);
      v80 = *(v77 + 24);
      v187 = *(v77 + 32);
      v185 = *(v77 + 33);
      v184 = *(v77 + 34);
      v81 = *(v61 + 16);
      v82 = *(v61 + 24);
      v197 = *(v77 + 8);

      if (v81 >= v82 >> 1)
      {
        sub_1B214400C();
        v61 = v137;
      }

      *(v61 + 16) = v81 + 1;
      v83 = v61 + 16 * v81;
      *(v83 + 32) = 0x434E455245464552;
      *(v83 + 40) = 0xEA00000000005345;
      v189 = v80;
      if (v80)
      {
        break;
      }

      v84 = sub_1B2252220();
      v86 = v85;
      if (v84 == sub_1B2252220() && v86 == v87)
      {

LABEL_94:
        if (a4)
        {
          v92 = a4;
        }

        else
        {
          Database.primaryKey(_:)();
          if (v6)
          {
LABEL_164:

            goto LABEL_165;
          }

          v102 = __dst[0];
          if (LOBYTE(__dst[2]))
          {
            v92 = &unk_1F2969308;
            if (LOBYTE(__dst[2]) == 1)
            {
              v92 = __dst[0];
            }
          }

          else
          {
            v123 = __dst[1];
            sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
            v92 = swift_allocObject();
            *(v92 + 1) = xmmword_1B22546B0;
            *(v92 + 4) = v102;
            *(v92 + 5) = v123;
          }
        }

        __dst[0] = 34;
        __dst[1] = 0xE100000000000000;

        MEMORY[0x1B2741EB0](v78, v197);
        MEMORY[0x1B2741EB0](34, 0xE100000000000000);
        MEMORY[0x1B2741EB0](40, 0xE100000000000000);
        v93 = *(v92 + 2);
        if (v93)
        {
          v179 = v6;
          v190[0] = MEMORY[0x1E69E7CC0];
          sub_1B2116B10();
          v94 = v190[0];
          v95 = (v92 + 40);
          do
          {
            v96 = *(v95 - 1);
            v97 = *v95;
            v193[0] = 34;
            v193[1] = 0xE100000000000000;

            MEMORY[0x1B2741EB0](v96, v97);
            MEMORY[0x1B2741EB0](34, 0xE100000000000000);

            v99 = v193[0];
            v98 = v193[1];
            v190[0] = v94;
            v100 = *(v94 + 16);
            if (v100 >= *(v94 + 24) >> 1)
            {
              sub_1B2116B10();
              v94 = v190[0];
            }

            *(v94 + 16) = v100 + 1;
            v101 = v94 + 16 * v100;
            *(v101 + 32) = v99;
            *(v101 + 40) = v98;
            v95 += 2;
            --v93;
          }

          while (v93);

          v6 = v179;
        }

        else
        {

          v94 = MEMORY[0x1E69E7CC0];
        }

        v193[0] = v94;
        sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
        sub_1B215175C();
        v103 = sub_1B2252250();
        v105 = v104;

        MEMORY[0x1B2741EB0](v103, v105);
LABEL_108:

        MEMORY[0x1B2741EB0](41, 0xE100000000000000);
        v106 = __dst[0];
        v107 = __dst[1];
        v108 = *(v61 + 16);
        v109 = v108 + 1;
        if (v108 >= *(v61 + 24) >> 1)
        {
          goto LABEL_146;
        }

        goto LABEL_109;
      }

      v89 = sub_1B22531F0();

      if (v89)
      {
        goto LABEL_94;
      }

      Database.primaryKey(_:)();
      if (v6)
      {
        goto LABEL_164;
      }

      v90 = __dst[0];
      if (LOBYTE(__dst[2]))
      {
        v91 = &unk_1F2969308;
        if (LOBYTE(__dst[2]) == 1)
        {
          v91 = __dst[0];
        }
      }

      else
      {
        v124 = __dst[1];
        sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
        v91 = swift_allocObject();
        *(v91 + 1) = xmmword_1B22546B0;
        *(v91 + 4) = v90;
        *(v91 + 5) = v124;
      }

      __dst[0] = 34;
      __dst[1] = 0xE100000000000000;
      MEMORY[0x1B2741EB0](v78, v197);
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);
      MEMORY[0x1B2741EB0](40, 0xE100000000000000);
      v125 = *(v91 + 2);
      if (v125)
      {
        v190[0] = MEMORY[0x1E69E7CC0];
        sub_1B2116B10();
        v126 = v190[0];
        v127 = (v91 + 40);
        do
        {
          v128 = *(v127 - 1);
          v129 = *v127;
          v193[0] = 34;
          v193[1] = 0xE100000000000000;

          MEMORY[0x1B2741EB0](v128, v129);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);

          v130 = v193[0];
          v131 = v193[1];
          v190[0] = v126;
          v132 = *(v126 + 16);
          if (v132 >= *(v126 + 24) >> 1)
          {
            sub_1B2116B10();
            v126 = v190[0];
          }

          *(v126 + 16) = v132 + 1;
          v133 = v126 + 16 * v132;
          *(v133 + 32) = v130;
          *(v133 + 40) = v131;
          v127 += 2;
          --v125;
        }

        while (v125);
      }

      else
      {

        v126 = MEMORY[0x1E69E7CC0];
      }

      v193[0] = v126;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      v134 = sub_1B2252250();
      v136 = v135;

      MEMORY[0x1B2741EB0](v134, v136);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      v106 = __dst[0];
      v107 = __dst[1];
      v108 = *(v61 + 16);
      v109 = v108 + 1;
      if (v108 >= *(v61 + 24) >> 1)
      {
        v6 = 0;
LABEL_146:
        v110 = v186;
        sub_1B214400C();
        v61 = v143;
        goto LABEL_110;
      }

      v6 = 0;
LABEL_109:
      v110 = v186;
LABEL_110:
      *(v61 + 16) = v109;
      v111 = v61 + 16 * v108;
      *(v111 + 32) = v106;
      *(v111 + 40) = v107;
      v112 = v187;
      v113 = v109 + 1;
      if (v109 >= *(v61 + 24) >> 1)
      {
        sub_1B214400C();
        v112 = v187;
        v61 = v138;
      }

      *(v61 + 16) = v113;
      v114 = v61 + 16 * v109;
      *(v114 + 32) = 0x54454C4544204E4FLL;
      *(v114 + 40) = 0xE900000000000045;
      v115 = 0xE700000000000000;
      v116 = 0x45444143534143;
      switch(v112)
      {
        case 0:
          goto LABEL_116;
        case 1:
          v115 = 0xE800000000000000;
          v116 = 0x5443495254534552;
          goto LABEL_116;
        case 2:
          v115 = 0xE800000000000000;
          v116 = 0x4C4C554E20544553;
          goto LABEL_116;
        case 3:
          v116 = 0x4146454420544553;
          v115 = 0xEB00000000544C55;
LABEL_116:
          v117 = v109 + 2;
          if (v113 >= *(v61 + 24) >> 1)
          {
            sub_1B214400C();
            v61 = v139;
          }

          *(v61 + 16) = v117;
          v118 = v61 + 16 * v113;
          *(v118 + 32) = v116;
          *(v118 + 40) = v115;
          break;
        default:
          break;
      }

      v11 = v185;
      v119 = *(v61 + 16);
      v15 = v119 + 1;
      v7 = v189;
      if (v119 >= *(v61 + 24) >> 1)
      {
        sub_1B214400C();
        v61 = v140;
      }

      *(v61 + 16) = v15;
      v120 = v61 + 16 * v119;
      *(v120 + 32) = 0x5441445055204E4FLL;
      *(v120 + 40) = 0xE900000000000045;
      v14 = 0xE700000000000000;
      v75 = 0x45444143534143;
      switch(v185)
      {
        case 0:
          goto LABEL_125;
        case 1:
          v14 = 0xE800000000000000;
          v75 = 0x5443495254534552;
          goto LABEL_125;
        case 2:
          v14 = 0xE800000000000000;
          v75 = 0x4C4C554E20544553;
          goto LABEL_125;
        case 3:
          v75 = 0x4146454420544553;
          v14 = 0xEB00000000544C55;
LABEL_125:
          v11 = v119 + 2;
          if (v15 >= *(v61 + 24) >> 1)
          {
            sub_1B214400C();
            v61 = v141;
          }

          *(v61 + 16) = v11;
          v121 = v61 + 16 * v15;
          *(v121 + 32) = v75;
          *(v121 + 40) = v14;
          v75 = v181;
          break;
        default:
          break;
      }

      v10 = v184;

      if (v184)
      {
        v10 = *(v61 + 16);
        v15 = v10 + 1;
        if (v10 >= *(v61 + 24) >> 1)
        {
          sub_1B214400C();
          v61 = v142;
        }

        *(v61 + 16) = v15;
        v122 = v61 + 16 * v10;
        *(v122 + 32) = 0xD00000000000001DLL;
        *(v122 + 40) = 0x80000001B226FFE0;
      }

      v76 = v110 + 1;
      if (v76 == v183)
      {

        v7 = v180;
        goto LABEL_147;
      }
    }

    __dst[0] = 34;
    __dst[1] = 0xE100000000000000;

    MEMORY[0x1B2741EB0](v78, v197);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    MEMORY[0x1B2741EB0](40, 0xE100000000000000);
    v193[0] = 34;
    v193[1] = 0xE100000000000000;
    MEMORY[0x1B2741EB0](v79, v80);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    MEMORY[0x1B2741EB0](v193[0], v193[1]);
    goto LABEL_108;
  }

LABEL_147:
  memcpy(v193, (v7 + 256), 0xA4uLL);
  memcpy(__dst, (v7 + 256), 0xA4uLL);
  if (sub_1B213EA68(__dst) == 1)
  {
    goto LABEL_163;
  }

  v190[21] = 0;
  v190[22] = 0xE000000000000000;
  sub_1B2122B00(v193, v190, &qword_1EB7A2EF0, &qword_1B2261188);
  sub_1B2252CD0();

  v191 = 0xD000000000000015;
  v192 = 0x80000001B226FFC0;
  sub_1B2122B00(v193, v190, &qword_1EB7A2EF0, &qword_1B2261188);
  if (qword_1ED85D658 != -1)
  {
    swift_once();
  }

  v144 = qword_1ED861900;

  v145 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v147 = sub_1B2117164(v146, v144, v145);
  memcpy(v190, __dst, 0xA3uLL);
  v148 = sub_1B2127E58(v147, 0);
  if (!v6)
  {
    v150 = v148;
    v151 = v149;

    sub_1B212AC5C(v193, &qword_1EB7A2EF0, &qword_1B2261188);
    MEMORY[0x1B2741EB0](v150, v151);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    v152 = v191;
    v153 = v192;
    v154 = *(v61 + 16);
    v155 = *(v61 + 24) >> 1;
    v156 = v154 + 1;
    if (v155 <= v154)
    {
      sub_1B214400C();
      v61 = v176;
      v155 = *(v176 + 24) >> 1;
    }

    *(v61 + 16) = v156;
    v157 = v61 + 16 * v154;
    *(v157 + 32) = v152;
    *(v157 + 40) = v153;
    if (BYTE3(__dst[20]))
    {
      v158 = 0x4445524F5453;
    }

    else
    {
      v158 = 0x4C415554524956;
    }

    if (BYTE3(__dst[20]))
    {
      v159 = 0xE600000000000000;
    }

    else
    {
      v159 = 0xE700000000000000;
    }

    if (v155 <= v156)
    {
      sub_1B214400C();
      v61 = v177;
    }

    sub_1B212AC5C(v193, &qword_1EB7A2EF0, &qword_1B2261188);
    *(v61 + 16) = v154 + 2;
    v160 = v61 + 16 * v156;
    *(v160 + 32) = v158;
    *(v160 + 40) = v159;
LABEL_163:
    v190[0] = v61;
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    sub_1B2252250();

    return;
  }

  sub_1B212AC5C(v193, &qword_1EB7A2EF0, &qword_1B2261188);
  sub_1B212AC5C(v193, &qword_1EB7A2EF0, &qword_1B2261188);
LABEL_165:
}

uint64_t TableDefinition.autoIncrementedPrimaryKey(_:onConflict:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  v6 = xmmword_1B2261170;
  v4 = TableDefinition.column(_:_:)(a1, a2, &v6);

  *(v4 + 48) = v3 | 0x100;
  return v4;
}

uint64_t TableDefinition.column(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = a3[1];
  v12[0] = *a3;
  v12[1] = v7;
  type metadata accessor for ColumnDefinition();
  v8 = swift_allocObject();
  sub_1B22176AC(a1, a2, v12);
  sub_1B21159D0();

  sub_1B21614F0();
  sub_1B211DA34();
  sub_1B2115D84();
  *(v9 + 32) = v8;
  *(v9 + 40) = 0;
  *(v4 + 40) = v10;
  swift_endAccess();
  return v8;
}

uint64_t ColumnDefinition.primaryKey(onConflict:autoincrement:)(unsigned __int8 *a1, char a2)
{
  if (a2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 48) = v3 | *a1;
  return sub_1B2117794();
}

Swift::Void __swiftcall TableDefinition.column(sql:)(Swift::String sql)
{
  sub_1B2112DB0();
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v2 = sub_1B2117BF4();
  sub_1B2122338(v2, xmmword_1B22546B0);
  v16[2] = MEMORY[0x1E69E7CC0];
  v16[3] = MEMORY[0x1E69E7CC8];
  v3 = sub_1B2114CC4(v16);
  sub_1B2118514(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15, v16[0]);
  sub_1B2116834();

  sub_1B21614F0();
  sub_1B211DA34();
  sub_1B2115D84();
  *(v11 + 32) = v2;
  *(v11 + 40) = 1;
  *(v1 + 40) = v12;
  swift_endAccess();
}

Swift::Void __swiftcall TableDefinition.column(literal:)(GRDBInternal::SQL literal)
{
  v2 = *literal.elements._rawValue;
  sub_1B21159D0();

  sub_1B21614F0();
  v3 = *(*(v1 + 40) + 16);
  sub_1B21617F4();
  v4 = *(v1 + 40);
  *(v4 + 16) = v3 + 1;
  v5 = v4 + 16 * v3;
  *(v5 + 32) = v2;
  *(v5 + 40) = 1;
  *(v1 + 40) = v4;
  swift_endAccess();
}

uint64_t TableDefinition.check(_:)(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  sub_1B21139A0(a1, v3);
  (*(v4 + 8))(__src, v3, v4);
  sub_1B2116834();
  sub_1B2161444();
  sub_1B212D104();
  v5 = *(v1 + 80);
  v6 = sub_1B211535C(v3 + 1);
  memcpy(v6, __src, 0xA3uLL);
  *(v2 + 80) = v5;
  return swift_endAccess();
}

Swift::Void __swiftcall TableDefinition.check(sql:)(Swift::String sql)
{
  sub_1B2112DB0();
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v3 = sub_1B2117BF4();
  sub_1B2122338(v3, xmmword_1B22546B0);
  v17[2] = MEMORY[0x1E69E7CC0];
  v17[3] = MEMORY[0x1E69E7CC8];
  v4 = sub_1B2114CC4(v17);
  sub_1B2118514(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16, v17[0]);
  __src[0] = v3;
  sub_1B2153E14(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B2116834();

  sub_1B2161444();
  sub_1B212D104();
  v12 = *(v1 + 80);
  v13 = sub_1B211535C(v2 + 1);
  memcpy(v13, __dst, 0xA3uLL);
  *(v1 + 80) = v12;
  swift_endAccess();
}

Swift::Void __swiftcall TableDefinition.constraint(sql:)(Swift::String sql)
{
  sub_1B2112DB0();
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v2 = sub_1B2117BF4();
  sub_1B2122338(v2, xmmword_1B22546B0);
  v16[2] = MEMORY[0x1E69E7CC0];
  v16[3] = MEMORY[0x1E69E7CC8];
  v3 = sub_1B2114CC4(v16);
  sub_1B2118514(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15, v16[0]);
  sub_1B2116834();

  sub_1B21615D0();
  v11 = *(*(v1 + 88) + 16);
  sub_1B21618C4();
  v12 = *(v1 + 88);
  *(v12 + 16) = v11 + 1;
  *(v12 + 8 * v11 + 32) = v2;
  *(v1 + 88) = v12;
  swift_endAccess();
}

Swift::Void __swiftcall TableDefinition.constraint(literal:)(GRDBInternal::SQL literal)
{
  v2 = *literal.elements._rawValue;
  sub_1B21159D0();

  sub_1B21615D0();
  v3 = *(*(v1 + 88) + 16);
  sub_1B21618C4();
  v4 = *(v1 + 88);
  *(v4 + 16) = v3 + 1;
  *(v4 + 8 * v3 + 32) = v2;
  *(v1 + 88) = v4;
  swift_endAccess();
}

void *sub_1B221708C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if (*(v4 + 50) == 6)
  {
    v9 = *a3;
    __src[0] = a1;
    __src[1] = a2;

    MEMORY[0x1B2741EB0](1601072991, 0xE400000000000000);
    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    MEMORY[0x1B2741EB0](v11, v10);
    v12 = __src[0];
    v13 = __src[1];
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B22546B0;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    sub_1B2179418(v15);
    memcpy(&__src[6], v15, 0xA3uLL);
    __src[0] = v12;
    __src[1] = v13;
    __src[2] = a1;
    __src[3] = a2;
    __src[4] = v14;
    __src[5] = v9;
    nullsub_1(__src);
    memcpy(a4, __src, 0xD3uLL);
  }

  else
  {
    sub_1B22188B0(__src);
    return memcpy(a4, __src, 0xD3uLL);
  }
}

void *TableDefinition.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[11];

  return v0;
}

uint64_t TableDefinition.__deallocating_deinit()
{
  TableDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t TableAlteration.add(column:_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = a3[1];
  v12[0] = *a3;
  v12[1] = v7;
  type metadata accessor for ColumnDefinition();
  v8 = swift_allocObject();
  sub_1B22176AC(a1, a2, v12);
  sub_1B21159D0();

  sub_1B2161634();
  sub_1B21226AC();
  sub_1B21148E8();
  *(v9 + 64) = 0;
  *(v4 + 32) = v10;
  swift_endAccess();
  return v8;
}

Swift::Void __swiftcall TableAlteration.addColumn(sql:)(Swift::String sql)
{
  sub_1B2112DB0();
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v2 = sub_1B2117BF4();
  sub_1B2122338(v2, xmmword_1B22546B0);
  v17[2] = MEMORY[0x1E69E7CC0];
  v17[3] = MEMORY[0x1E69E7CC8];
  v3 = sub_1B2114CC4(v17);
  sub_1B2118514(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16, v17[0]);
  sub_1B2116834();

  sub_1B2161634();
  v11 = *(*(v1 + 32) + 16);
  sub_1B2161920();
  v12 = *(v1 + 32);
  *(v12 + 16) = v11 + 1;
  v13 = v12 + 40 * v11;
  *(v13 + 32) = v2;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 1;
  *(v1 + 32) = v12;
  swift_endAccess();
}

Swift::Void __swiftcall TableAlteration.addColumn(literal:)(GRDBInternal::SQL literal)
{
  v2 = *literal.elements._rawValue;
  sub_1B21159D0();

  sub_1B2161634();
  sub_1B21226AC();
  sub_1B21148E8();
  *(v3 + 64) = 1;
  *(v1 + 32) = v4;
  swift_endAccess();
}

uint64_t sub_1B221744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  sub_1B2161634();
  v9 = *(*(v4 + 32) + 16);
  sub_1B2161920();
  v10 = *(v4 + 32);
  *(v10 + 16) = v9 + 1;
  v11 = v10 + 40 * v9;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  *(v11 + 56) = a4;
  *(v11 + 64) = 2;
  *(v4 + 32) = v10;
  return swift_endAccess();
}

uint64_t sub_1B2217510(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_1B2161634();
  v5 = *(*(v2 + 32) + 16);
  sub_1B2161920();
  v6 = *(v2 + 32);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 40 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 3;
  *(v2 + 32) = v6;
  return swift_endAccess();
}

uint64_t TableAlteration.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t TableAlteration.__deallocating_deinit()
{
  TableAlteration.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t ColumnDefinition.GeneratedColumnQualification.hashValue.getter()
{
  v1 = *v0;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v1);
  return sub_1B2253470();
}

uint64_t sub_1B22176AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  *(v3 + 48) = 84214272;
  v8 = MEMORY[0x1E69E7CC0];
  *(v3 + 56) = MEMORY[0x1E69E7CC0];
  *(v3 + 64) = v8;
  sub_1B2179418(v10);
  memcpy((v3 + 72), v10, 0xA3uLL);
  *(v3 + 240) = 0;
  *(v3 + 248) = 0;
  sub_1B2218758(__src);
  memcpy((v3 + 256), __src, 0xA4uLL);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  return v3;
}

uint64_t ColumnDefinition.notNull(onConflict:)(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 5)
  {
    LOBYTE(v2) = 1;
  }

  *(v1 + 51) = v2;
  return sub_1B2117794();
}

uint64_t ColumnDefinition.unique(onConflict:)(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 5)
  {
    LOBYTE(v2) = 1;
  }

  *(v1 + 50) = v2;
  return sub_1B2117794();
}

uint64_t ColumnDefinition.indexed()()
{
  if (*(v0 + 50) == 5)
  {
    *(v0 + 50) = 6;
  }
}

uint64_t ColumnDefinition.check(_:)()
{
  sub_1B2112DB0();
  v2 = v0[3];
  __src[0] = v0[2];
  __src[1] = v2;

  v1(v8, __src);

  v3 = v9;
  v4 = v10;
  sub_1B21139A0(v8, v9);
  (*(v4 + 8))(__src, v3, v4);
  sub_1B21159D0();
  sub_1B2161444();
  sub_1B212DFC0();
  v5 = v0[7];
  v6 = sub_1B211535C(v3 + 1);
  memcpy(v6, __src, 0xA3uLL);
  v0[7] = v5;
  swift_endAccess();
  sub_1B2113208(v8);
}

uint64_t ColumnDefinition.check(sql:)()
{
  sub_1B2112DB0();
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v2 = sub_1B2117BF4();
  sub_1B2122338(v2, xmmword_1B22546B0);
  v17[2] = MEMORY[0x1E69E7CC0];
  v17[3] = MEMORY[0x1E69E7CC8];
  v3 = sub_1B2114CC4(v17);
  sub_1B2118514(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16, v17[0]);
  __src[0] = v2;
  sub_1B2153E14(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B2116834();

  sub_1B2161444();
  sub_1B212DFC0();
  v11 = *(v0 + 56);
  v12 = sub_1B211535C(v1 + 1);
  memcpy(v12, __dst, 0xA3uLL);
  *(v0 + 56) = v11;
  swift_endAccess();
}

uint64_t ColumnDefinition.defaults(to:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v3 = a1[4];
  sub_1B21139A0(a1, v4);
  (*(*(v3 + 8) + 8))(v6, v4);
  nullsub_1(v6);
  memcpy(__dst, (v2 + 72), 0xA3uLL);
  memcpy((v2 + 72), v6, 0xA3uLL);
  sub_1B212AC5C(__dst, &qword_1EB7A1CD0, &unk_1B225D310);
}

uint64_t ColumnDefinition.defaults(sql:)(uint64_t a1, uint64_t a2)
{
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v5 = sub_1B2117BF4();
  *(v5 + 16) = xmmword_1B22546B0;
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = MEMORY[0x1E69E7CC0];
  __src[3] = MEMORY[0x1E69E7CC8];
  sub_1B2114CC4(__src);
  memcpy((v5 + 32), __src, 0xB8uLL);
  v8[0] = v5;
  sub_1B2153E14(v8);
  memcpy(__dst, v8, 0xA3uLL);
  nullsub_1(__dst);
  memcpy(v10, (v2 + 72), 0xA3uLL);
  memcpy((v2 + 72), __dst, 0xA3uLL);

  sub_1B212AC5C(v10, &qword_1EB7A1CD0, &unk_1B225D310);
}

uint64_t ColumnDefinition.collate(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 248);
  *(v1 + 240) = v3;
  *(v1 + 248) = v2;
}

uint64_t ColumnDefinition.collate(_:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(v1 + 248);
  *(v1 + 240) = v3;
  *(v1 + 248) = v2;
}

uint64_t ColumnDefinition.references(_:column:onDelete:onUpdate:deferred:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  sub_1B2111BD8(a1, a2, a3, a4, a5, a6);
  sub_1B21159D0();

  sub_1B2161698();
  v7 = *(*(v6 + 64) + 16);
  sub_1B216197C();
  v8 = *(v6 + 64);
  sub_1B2116360(v7 + 1);
  *(v6 + 64) = v9;
  swift_endAccess();
}

void *ColumnDefinition.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  memcpy(v7, v0 + 9, 0xA3uLL);
  sub_1B212AC5C(v7, &qword_1EB7A1CD0, &unk_1B225D310);
  v5 = v0[31];

  memcpy(__dst, v0 + 32, 0xA4uLL);
  sub_1B212AC5C(__dst, &qword_1EB7A2EF0, &qword_1B2261188);
  return v0;
}

uint64_t ColumnDefinition.__deallocating_deinit()
{
  ColumnDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 420, 7);
}

unint64_t sub_1B2217D80()
{
  result = qword_1EB7A2EF8;
  if (!qword_1EB7A2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2EF8);
  }

  return result;
}

unint64_t sub_1B2217DD8()
{
  result = qword_1EB7A2F00;
  if (!qword_1EB7A2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2F00);
  }

  return result;
}

unint64_t sub_1B2217E30()
{
  result = qword_1ED85D648;
  if (!qword_1ED85D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D648);
  }

  return result;
}

unint64_t sub_1B2217E88()
{
  result = qword_1ED85D640;
  if (!qword_1ED85D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D640);
  }

  return result;
}

unint64_t sub_1B2217EE0()
{
  result = qword_1EB7A2F08;
  if (!qword_1EB7A2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2F08);
  }

  return result;
}

unint64_t sub_1B2217F38()
{
  result = qword_1EB7A2F10;
  if (!qword_1EB7A2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2F10);
  }

  return result;
}

unint64_t sub_1B2217F90()
{
  result = qword_1EB7A2F18;
  if (!qword_1EB7A2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2F18);
  }

  return result;
}

unint64_t sub_1B2217FE8()
{
  result = qword_1ED85D4C8;
  if (!qword_1ED85D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D4C8);
  }

  return result;
}

unint64_t sub_1B2218040()
{
  result = qword_1ED85D4C0;
  if (!qword_1ED85D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D4C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ColumnDefinition.GeneratedColumnQualification(_BYTE *result, unsigned int a2, unsigned int a3)
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

unsigned __int8 *sub_1B22181DC(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 5)
    {
      v7 = v6 - 4;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 6;
    if (a2 + 6 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 6);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *sub_1B221828C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF9)
  {
    v7 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B2218360(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B2218374(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t sub_1B221839C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 33))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B22183DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1B2218434(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_1B2218474(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B22184D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B2218518(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1B2218580(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 164))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B22185C8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 160) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 164) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 2 * -a2;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 147) = 0u;
      return result;
    }

    *(a1 + 164) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B221866C(uint64_t a1)
{
  if ((*(a1 + 64) >> 1) > 0x80000000)
  {
    return -(*(a1 + 64) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B221868C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 211))
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

uint64_t sub_1B22186CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 210) = 0;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 211) = 1;
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

    *(result + 211) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1B2218758(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0x1FFFFFFFELL;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 148) = 0u;
  return result;
}

uint64_t sub_1B2218788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:

      break;
    case 1:
    case 3:

      goto LABEL_7;
    case 2:

LABEL_7:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B221881C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:

      break;
    case 1:
    case 3:

      goto LABEL_7;
    case 2:

LABEL_7:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B22188B8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1B2218924(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for OnDemandFutureSubscription.State();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1B22189C4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  v5 = a1;
  v6 = a2;
  result = sub_1B21E8980(sub_1B221A700, v4, sub_1B221A708);
  v3 = v7;
  if (v7)
  {
    v7(result);
    return sub_1B2112F4C(v3);
  }

  return result;
}

uint64_t sub_1B2218A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B21115E0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OnDemandFutureSubscription();
  (*(v11 + 16))(v16, a1, a6);

  v18 = sub_1B2218BA4(a2, a3, v16);
  v21[3] = v17;
  v21[4] = swift_getWitnessTable();
  v21[0] = v18;
  sub_1B2251FD0();
  return sub_1B2113208(v21);
}

uint64_t *sub_1B2218BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_1B2218C08(a1, a2, a3);
}

uint64_t *sub_1B2218C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 104);
  *(v3 + v8) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v9 = v3 + *(*v3 + 96);
  v10 = *(v7 + 80);
  sub_1B2161A20(&qword_1EB7A0F20, qword_1B2262540);
  v11 = (v9 + *(swift_getTupleTypeMetadata2() + 48));
  (*(*(v10 - 8) + 32))(v9, a3, v10);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v7 + 88);
  type metadata accessor for OnDemandFutureSubscription.State();
  swift_storeEnumTagMultiPayload();
  return v3;
}

uint64_t sub_1B2218DCC(uint64_t *a1, uint64_t a2)
{
  v27 = a2;
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v24 - v7;
  v9 = *(v3 + 88);
  v10 = type metadata accessor for OnDemandFutureSubscription.State();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v18 = *(v3 + 96);
  swift_beginAccess();
  (*(v11 + 16))(v17, a1 + v18, v10);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      return (*(v5 + 8))(v17, v4);
    }
  }

  else
  {
    sub_1B2161A20(&qword_1EB7A0F20, qword_1B2262540);
    v20 = &v17[*(swift_getTupleTypeMetadata2() + 48)];
    v22 = *v20;
    v21 = *(v20 + 1);
    v25 = v22;
    v26 = v21;
    (*(v5 + 32))(v8, v17, v4);
    sub_1B2252030();
    v23 = v27;
    result = sub_1B2252010();
    if ((result & 1) == 0)
    {
      if (v23 < 0)
      {
        __break(1u);
        return result;
      }

      if (!v23)
      {
        (*(v5 + 8))(v8, v4);
      }
    }

    (*(v5 + 16))(v14, v8, v4);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v11 + 40))(a1 + v18, v14, v10);
    swift_endAccess();

    v25(sub_1B221A960, a1);

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1B2219120(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v2 = *(*a2 + 88);
  v3 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_1B2252000();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  v19 = sub_1B2253480();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v26 - v22;
  (*(v24 + 16))(&v26 - v22, v29, v19, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v13, v23, AssociatedTypeWitness);
    (*(v9 + 16))(v8, v13, AssociatedTypeWitness);
    sub_1B21117B4(v8, 0, 1, AssociatedTypeWitness);
    sub_1B2219C48(v8);
    (*(v27 + 8))(v8, v28);
    return (*(v9 + 8))(v13, AssociatedTypeWitness);
  }

  else
  {
    (*(v15 + 32))(v18, v23, v14);
    sub_1B2219680(v18);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_1B2219544(uint64_t a1)
{
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v4 = type metadata accessor for OnDemandFutureSubscription.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  swift_storeEnumTagMultiPayload();
  v9 = *(*a1 + 96);
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1B22196AC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v44 = a3;
  v48 = a1;
  v4 = *a2;
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v46 = AssociatedTypeWitness;
  v42 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v39 - v8;
  v9 = *(v6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v47 = v5;
  v15 = type metadata accessor for OnDemandFutureSubscription.State();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  v23 = *(v4 + 96);
  swift_beginAccess();
  (*(v16 + 16))(v22, a2 + v23, v15);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v25 = v48[1];
      sub_1B2112F4C(*v48);
      v26 = v14;
      v40 = v14;
      v28 = v9 + 32;
      v27 = *(v9 + 32);
      v27(v26, v22, v6);
      v39 = v27;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v16 + 40))(a2 + v23, v19, v15);
      swift_endAccess();
      v29 = v41;
      v27(v41, v40, v6);
      v30 = v45;
      v31 = v43;
      v32 = v46;
      (*(v45 + 16))(v43, v44, v46);
      v33 = (*(v28 + 48) + 32) & ~*(v28 + 48);
      v34 = (v10 + *(v30 + 80) + v33) & ~*(v30 + 80);
      v35 = swift_allocObject();
      v36 = v47;
      *(v35 + 16) = v6;
      *(v35 + 24) = v36;
      v39(v35 + v33, v29, v6);
      result = (*(v30 + 32))(v35 + v34, v31, v32);
      v37 = v48;
      *v48 = sub_1B221A844;
      v37[1] = v35;
    }
  }

  else
  {
    sub_1B2161A20(&qword_1EB7A0F20, qword_1B2262540);
    v38 = *&v22[*(swift_getTupleTypeMetadata2() + 48) + 8];

    return (*(v9 + 8))(v22, v6);
  }

  return result;
}

uint64_t sub_1B2219AF8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v1 = sub_1B2252000();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - v4;
  sub_1B2251FE0();
  sub_1B21117B4(v5, 1, 1, AssociatedTypeWitness);
  sub_1B2251FC0();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1B2219CC8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v45 = a3;
  v47 = a1;
  v4 = *a2;
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_1B2252000();
  v43 = *(v7 - 8);
  v44 = v7;
  v41 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v38 - v8;
  v46 = *(v6 - 8);
  v9 = *(v46 + 8);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for OnDemandFutureSubscription.State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v22 = *(v4 + 96);
  swift_beginAccess();
  (*(v15 + 16))(v21, a2 + v22, v14);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v24 = v47[1];
      sub_1B2112F4C(*v47);
      v38 = v13;
      v39 = v5;
      v25 = v13;
      v26 = v46 + 32;
      v27 = *(v46 + 4);
      v27(v25, v21, v6);
      v46 = v27;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v15 + 40))(a2 + v22, v18, v14);
      swift_endAccess();
      v28 = v40;
      v27(v40, v38, v6);
      v30 = v42;
      v29 = v43;
      v31 = v44;
      (*(v43 + 16))(v42, v45, v44);
      v32 = (v26[48] + 32) & ~v26[48];
      v33 = (v9 + *(v29 + 80) + v32) & ~*(v29 + 80);
      v34 = swift_allocObject();
      v35 = v39;
      *(v34 + 16) = v6;
      *(v34 + 24) = v35;
      v46((v34 + v32), v28, v6);
      result = (*(v29 + 32))(v34 + v33, v30, v31);
      v36 = v47;
      *v47 = sub_1B221A728;
      v36[1] = v34;
    }
  }

  else
  {
    sub_1B2161A20(&qword_1EB7A0F20, qword_1B2262540);
    v37 = *&v21[*(swift_getTupleTypeMetadata2() + 48) + 8];

    return (*(v46 + 1))(v21, v6);
  }

  return result;
}

uint64_t sub_1B221A148()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for OnDemandFutureSubscription.State();
  (*(*(v4 - 8) + 8))(v0 + v1, v4);

  return v0;
}

uint64_t sub_1B221A1FC()
{
  v0 = sub_1B221A148();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B221A280(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1B2161A20(&qword_1EB7A0F20, qword_1B2262540);
  result = swift_getTupleTypeMetadata2();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B221A324(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v4 > v5)
  {
    v5 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_22:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1B221A450(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1B221A61C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B221A728()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B21115E0();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1B2112DC0();
  v6 = v4 + *(v5 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(*(sub_1B2252000() - 8) + 80);
  return sub_1B2251FC0();
}

uint64_t sub_1B221A844()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B21115E0();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1B2112DC0();
  v6 = v4 + *(v5 + 64);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);

  return sub_1B2219AF8();
}

uint64_t sub_1B221A978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  else
  {
    return sub_1B22531F0();
  }
}

unint64_t sub_1B221A9B4()
{
  result = qword_1ED85E6D8;
  if (!qword_1ED85E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E6D8);
  }

  return result;
}

uint64_t sub_1B221AA2C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = FTS5TokenFlags.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B221AA6C@<X0>(_DWORD *a1@<X8>)
{
  result = FTS5TokenFlags.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t FTS5WrapperTokenizer.tokenize(context:tokenization:pText:nText:tokenCallback:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = *a2;
  v15[1] = a7;
  v15[2] = a1;
  v16 = v11;
  v17 = a5;
  swift_unknownObjectRetain();
  sub_1B221AB54(v15, v11, a3, a4, a6, a7, &v14);
  swift_unknownObjectRelease();
  result = v14;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B221AB54@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, _DWORD *a7@<X8>)
{
  (*(a6 + 16))(a5, a6);
  v13 = v12;
  ObjectType = swift_getObjectType();
  v16 = a2;
  LODWORD(a4) = (*(v13 + 8))(a1, &v16, a3, a4, sub_1B221B1BC, ObjectType, v13);
  result = swift_unknownObjectRelease();
  *a7 = a4;
  return result;
}

unint64_t sub_1B221AC2C()
{
  result = qword_1EB7A30A8;
  if (!qword_1EB7A30A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A30A8);
  }

  return result;
}

unint64_t sub_1B221AC84()
{
  result = qword_1EB7A30B0;
  if (!qword_1EB7A30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A30B0);
  }

  return result;
}

unint64_t sub_1B221ACDC()
{
  result = qword_1EB7A0C90;
  if (!qword_1EB7A0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A0C90);
  }

  return result;
}

unint64_t sub_1B221AD34()
{
  result = qword_1EB7A0C88;
  if (!qword_1EB7A0C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A0C88);
  }

  return result;
}

uint64_t sub_1B221ADD4(uint64_t *a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v12 = sub_1B22522F0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1B2251D80();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    return 0;
  }

  (*(v16 + 104))(v19, *MEMORY[0x1E6969010], v17);
  v20 = MEMORY[0x1B2741870](a3, a4, v19);
  v22 = v21;
  sub_1B22522E0();
  v23 = sub_1B22522C0();
  v25 = v24;
  result = sub_1B21267A8(v20, v22);
  if (!v25)
  {
    return 0;
  }

  v36 = v23;
  if (a1)
  {
    v27 = a6;
    v28 = *a1;
    v29 = a1[1];
    v30 = a1[2];
    v31 = *(a1 + 6);
    v32 = a1[4];
    ObjectType = swift_getObjectType();
    v35 = &v35;
    v37[0] = a2;
    LODWORD(v38) = v31;
    MEMORY[0x1EEE9AC00](ObjectType);
    *(&v35 - 4) = v32;
    *(&v35 - 3) = v30;
    *(&v35 - 4) = a5;
    *(&v35 - 3) = v27;
    v34 = *(v29 + 24);
    swift_unknownObjectRetain_n();
    v34(v36, v25, v37, &v38, sub_1B221B1C0, &v35 - 6, ObjectType, v29);
    swift_unknownObjectRelease_n();

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B221B0D4(uint64_t a1, unint64_t a2, unsigned int *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v7 = *a3;
  result = sub_1B221B250(a1, a2);
  if (*(result + 16) >> 31)
  {
    __break(1u);
  }

  else
  {
    v9 = a4(a5, v7, result + 32);
    if (v9)
    {
      v10 = v9;
      sub_1B21AC298();
      swift_allocError();
      *v11 = v10;
      *(v11 + 8) = 0xD000000000000015;
      *(v11 + 16) = 0x80000001B2270040;
      *(v11 + 24) = 0u;
      *(v11 + 40) = 0u;
      *(v11 + 56) = 0;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B221B1C0(uint64_t a1, unint64_t a2, unsigned int *a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 36);
  return sub_1B221B0D4(a1, a2, a3, *(v3 + 16), *(v3 + 24));
}

void *sub_1B221B1E0(uint64_t a1, uint64_t a2)
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

  sub_1B21619D8(&qword_1EB7A30B8, &qword_1B2262920);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1B221B250(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1B2252420())
  {
    result = sub_1B221B1E0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B2252CB0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1B2252D50();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B221B368(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v54 = a1;
  v55 = a2;
  sub_1B21115E0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B2112D9C();
  v56 = v16;
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v58 = v19;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - v24;
  v26 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1B2112D9C();
  v52 = v27;
  swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v46 = v29;
  v47 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v33 = &v43 - v32;
  v34 = sub_1B2252840();
  if (!v34)
  {
    return sub_1B2252600();
  }

  v57 = v34;
  v61 = sub_1B2252DD0();
  v48 = sub_1B2252DE0();
  sub_1B2252D80();
  result = sub_1B2252830();
  if ((v57 & 0x8000000000000000) == 0)
  {
    v43 = v12;
    v44 = a5;
    v36 = 0;
    v49 = (v58 + 16);
    v50 = v58 + 8;
    v51 = v8;
    while (!__OFADD__(v36, 1))
    {
      v58 = v36 + 1;
      v37 = sub_1B2252940();
      (*v49)(v25);
      v37(v60, 0);
      v38 = v59;
      v54(v25, v56);
      if (v38)
      {
        v41 = sub_1B2118530();
        v42(v41);
        (*(v46 + 8))(v33, v47);

        return (*(v43 + 32))(v45, v56, v44);
      }

      v59 = 0;
      v39 = sub_1B2118530();
      v40(v39);
      sub_1B2252DC0();
      result = sub_1B2252860();
      ++v36;
      if (v58 == v57)
      {
        (*(v46 + 8))(v33, v47);
        return v61;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

GRDBInternal::SQL __swiftcall SQL.init(sql:arguments:)(Swift::String sql, GRDBInternal::StatementArguments arguments)
{
  rawValue = arguments.values._rawValue;
  object = sql._object;
  countAndFlagsBits = sql._countAndFlagsBits;
  v6 = v2;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B22546B0;
  *__src = countAndFlagsBits;
  *&__src[8] = object;
  *&__src[16] = *rawValue;
  sub_1B2114CC4(__src);
  result.elements._rawValue = memcpy((v7 + 32), __src, 0xB8uLL);
  *v6 = v7;
  return result;
}

uint64_t SQL.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B22546B0;
  v6 = a1[3];
  v5 = a1[4];
  sub_1B21139A0(a1, v6);
  (*(*(v5 + 8) + 8))(__src, v6);
  sub_1B2127AE0(__src);
  memcpy((v4 + 32), __src, 0xB8uLL);
  *a2 = v4;
  return sub_1B2113208(a1);
}

BOOL SQL.isEmpty.getter()
{
  v1 = (*v0 + 32);
  v2 = *(*v0 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    memmove(__dst, v1, 0xB8uLL);
    if (sub_1B211AF10(__dst))
    {
      break;
    }

    v1 += 184;
    v3 = sub_1B2119818(__dst);
    v4 = v3[1];
    v5 = *v3 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(v4) & 0xF;
    }
  }

  while (!v5);
  return v2 == 0;
}

uint64_t SQL.build(_:)(void *a1)
{
  v4 = *v1;
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();
  v5 = sub_1B2114D98(0);
  v6 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v8 = sub_1B2117164(v7, v5, v6);
  v9 = sub_1B2119120(v8);
  if (!v2)
  {
    sub_1B211B048(a1);
  }

  return v9;
}

void static SQL.+ infix(_:_:)(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = *a1;

  sub_1B216CFB4(v4);
}

void static SQL.+= infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;

  sub_1B216CFB4(v3);
}

Swift::Void __swiftcall SQL.append(literal:)(GRDBInternal::SQL literal)
{
  v1 = *literal.elements._rawValue;

  sub_1B216CFB4(v2);
}

Swift::Void __swiftcall SQL.append(sql:arguments:)(Swift::String sql, GRDBInternal::StatementArguments arguments)
{
  object = sql._object;
  countAndFlagsBits = sql._countAndFlagsBits;
  v4 = *arguments.values._rawValue;
  v5 = *(arguments.values._rawValue + 1);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  __src[0] = countAndFlagsBits;
  __src[1] = object;
  __src[2] = v4;
  __src[3] = v5;
  sub_1B2114CC4(__src);
  memcpy((inited + 32), __src, 0xB8uLL);

  sub_1B216CFB4(inited);
}

uint64_t SQL.sqlSelection.getter()
{
  sub_1B21144C0();
  sub_1B216ED24(v1);
  memcpy(v0, __src, 0xB8uLL);
}

uint64_t sub_1B221BBD0(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = *(result - 56) & 1;
  v4 = (v2 | (*(result + 2) << 16)) & 0xF981FF | 0x44000;
  *(result - 96) &= 1uLL;
  *(result - 56) = v3;
  *result = v4;
  *(result + 2) = BYTE2(v4);
  return result;
}

void Sequence<>.joined(separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B2116384();
  if (v9)
  {
    v10 = v8;
    v11 = v7;
    sub_1B21619D8(&qword_1EB7A30C0, &qword_1B2262928);
    v12 = sub_1B2112238();
    sub_1B2150D28(v12, v13, a3, v14, v15, a4, v16, v17);
    __src[0] = v11;
    __src[1] = v10;
    __src[2] = MEMORY[0x1E69E7CC0];
    __src[3] = MEMORY[0x1E69E7CC8];
    sub_1B2114CC4(__src);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1B216E69C(__dst);

    v18 = sub_1B2122034();
    sub_1B221BED8(v18, v19);
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A30C0, &qword_1B2262928);
    sub_1B211783C(&qword_1EB7A30C8);
    sub_1B2112238();
    v20 = sub_1B2252530();
  }

  *v4 = v20;
}

void Collection<>.joined(separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B2116384();
  if (v9)
  {
    v10 = v8;
    v11 = v7;
    sub_1B21619D8(&qword_1EB7A30C0, &qword_1B2262928);
    v12 = sub_1B2112238();
    sub_1B221B368(v12, v13, a3, v14, v15, a4, v16, v17);
    __src[0] = v11;
    __src[1] = v10;
    __src[2] = MEMORY[0x1E69E7CC0];
    __src[3] = MEMORY[0x1E69E7CC8];
    sub_1B2114CC4(__src);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1B216E69C(__dst);

    v18 = sub_1B2122034();
    sub_1B221BED8(v18, v19);
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A30C0, &qword_1B2262928);
    v21 = *(a4 + 8);
    sub_1B211783C(&qword_1EB7A30C8);
    sub_1B2112238();
    v20 = sub_1B2252530();
  }

  *v4 = v20;
}

void sub_1B221BED8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = *(a1 + 32);

      for (i = 5; ; ++i)
      {
        sub_1B221C168(v4);
        if (1 - v3 + i == 5)
        {
          break;
        }

        if ((i - 4) >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * i);

        sub_1B221C4A4(v6);
      }
    }
  }

  else
  {

    v7 = 0;
    v8 = *(a1 + 16);
    while (1)
    {
      if (v8 == v7)
      {

        return;
      }

      if (v7 >= *(a1 + 16))
      {
        break;
      }

      v9 = v7 + 1;
      v10 = *(a1 + 8 * v7 + 32);

      sub_1B221C168(v11);
      v7 = v9;
    }

LABEL_14:
    __break(1u);
  }
}

unint64_t sub_1B221C00C()
{
  result = qword_1EB7A30D0;
  if (!qword_1EB7A30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A30D0);
  }

  return result;
}

unint64_t sub_1B221C064()
{
  result = qword_1EB7A30D8;
  if (!qword_1EB7A30D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A30D8);
  }

  return result;
}

unint64_t sub_1B221C0BC()
{
  result = qword_1EB7A30E0;
  if (!qword_1EB7A30E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A30E0);
  }

  return result;
}

void *sub_1B221C120(void *result, char a2)
{
  v2 = result[13] & 1;
  v3 = result[20] & 0xE000000000FFC1FFLL;
  result[8] &= 1uLL;
  result[13] = v2;
  result[20] = v3 | ((a2 & 7) << 58);
  return result;
}

void sub_1B221C168(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 24) >> 1, v8 < v4 + v2))
  {
    sub_1B21542F0();
    v3 = *v1;
    v8 = *(*v1 + 24) >> 1;
  }

  v9 = v8 - *(v3 + 16);
  v10 = *(a1 + 16);
  if (v10)
  {
    if (v9 < v2)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    swift_arrayInitWithCopy();
    if (v2)
    {
      v11 = *(v3 + 16);
      v12 = __OFADD__(v11, v2);
      v13 = v11 + v2;
      if (v12)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      *(v3 + 16) = v13;
    }
  }

  else if (v2)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2 != v9)
  {

    goto LABEL_33;
  }

  v14 = *(v3 + 16);
  v15 = *(a1 + 16);
  if (v10 == v15)
  {
    sub_1B2171344(__src);
    goto LABEL_17;
  }

  if (v10 < v15)
  {
    v16 = a1 + 184 * v10;
    memcpy(__dst, (v16 + 32), sizeof(__dst));
    memcpy(__src, (v16 + 32), 0xB8uLL);
    ++v10;
    nullsub_1(__src);
    sub_1B211AF1C(__dst, v27);
LABEL_17:
    v20 = a1 + 32;
    v21 = a1;
LABEL_18:
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1B213EA68(__dst) != 1)
    {
      if (v14 + 1 > *(v3 + 24) >> 1)
      {
        sub_1B21542F0();
      }

      v3 = *v1;
      v17 = *(*v1 + 24) >> 1;
      while (1)
      {
        for (i = 184 * v14 + 32; ; i += 184)
        {
          memcpy(v26, __src, sizeof(v26));
          memcpy(v27, __src, sizeof(v27));
          if (sub_1B213EA68(v27) == 1 || v14 >= v17)
          {
            *(v3 + 16) = v14;
            goto LABEL_18;
          }

          memcpy(v24, __src, sizeof(v24));
          memcpy(v25, v26, sizeof(v25));
          sub_1B211AF1C(v25, v23);
          sub_1B212AC5C(v24, &qword_1EB7A1240, &qword_1B2254A40);
          memcpy((v3 + i), v26, 0xB8uLL);
          if (v10 != v15)
          {
            break;
          }

          sub_1B2171344(v23);
          memcpy(__src, v23, 0xB8uLL);
          ++v14;
        }

        if (v10 >= *(v21 + 16))
        {
          break;
        }

        ++v14;
        memcpy(v23, (v20 + 184 * v10), sizeof(v23));
        memcpy(__src, (v20 + 184 * v10++), 0xB8uLL);
        nullsub_1(__src);
        sub_1B211AF1C(v23, v22);
      }

      __break(1u);
      goto LABEL_35;
    }

    memcpy(v27, __src, sizeof(v27));
    sub_1B212AC5C(v27, &qword_1EB7A1240, &qword_1B2254A40);
LABEL_33:
    *v1 = v3;
    return;
  }

LABEL_39:
  __break(1u);
}

void sub_1B221C4A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 24) >> 1, v8 < (v4 + v2)))
  {
    sub_1B21542F0();
    v3 = *v1;
    v8 = *(*v1 + 24) >> 1;
  }

  v9 = *(v3 + 16);
  v10 = v8 - v9;
  if (v2)
  {
    if (v10 < v2)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    swift_arrayInitWithCopy();
    v11 = *(v3 + 16);
    v9 = v11 + v2;
    if (__OFADD__(v11, v2))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    *(v3 + 16) = v9;
  }

  if (v2 != v10)
  {
LABEL_30:

    *v1 = v3;
    return;
  }

  v12 = *(a1 + 16);
  if (v2 == v12)
  {
    sub_1B2171344(__src);
    goto LABEL_14;
  }

  if (v2 < v12)
  {
    v13 = a1 + 184 * v2;
    memcpy(__dst, (v13 + 32), sizeof(__dst));
    memcpy(__src, (v13 + 32), 0xB8uLL);
    ++v2;
    nullsub_1(__src);
    sub_1B211AF1C(__dst, v24);
LABEL_14:
    v18 = a1 + 32;
LABEL_15:
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1B213EA68(__dst) != 1)
    {
      if (v9 + 1 > *(v3 + 24) >> 1)
      {
        sub_1B21542F0();
      }

      v3 = *v1;
      v14 = *(*v1 + 24) >> 1;
      while (1)
      {
        for (i = 184 * v9 + 32; ; i += 184)
        {
          memcpy(v23, __src, sizeof(v23));
          memcpy(v24, __src, sizeof(v24));
          if (sub_1B213EA68(v24) == 1 || v9 >= v14)
          {
            *(v3 + 16) = v9;
            goto LABEL_15;
          }

          memcpy(v21, __src, sizeof(v21));
          memcpy(v22, v23, sizeof(v22));
          sub_1B211AF1C(v22, v20);
          sub_1B212AC5C(v21, &qword_1EB7A1240, &qword_1B2254A40);
          memcpy((v3 + i), v23, 0xB8uLL);
          v17 = *(a1 + 16);
          if (v2 != v17)
          {
            break;
          }

          sub_1B2171344(v20);
          memcpy(__src, v20, 0xB8uLL);
          ++v9;
        }

        if (v2 >= v17)
        {
          break;
        }

        ++v9;
        memcpy(v20, (v18 + 184 * v2), sizeof(v20));
        memcpy(__src, (v18 + 184 * v2++), 0xB8uLL);
        nullsub_1(__src);
        sub_1B211AF1C(v20, v19);
      }

      __break(1u);
      goto LABEL_32;
    }

    memcpy(v24, __src, sizeof(v24));
    sub_1B212AC5C(v24, &qword_1EB7A1240, &qword_1B2254A40);
    goto LABEL_30;
  }

LABEL_35:
  __break(1u);
}

uint64_t TableRequest<>.matching(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v8[1];
  if (v13)
  {
    v14 = *v8;
    v20[1] = v10;
    v21 = v9;
    type metadata accessor for TableAlias();
    v15 = swift_allocObject();
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0;
    v23[0] = v14;
    v23[1] = v13;
    LOBYTE(v23[2]) = 2;
    sub_1B2127D7C(v23);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    memcpy((v16 + 24), v23, 0xA3uLL);
    v24[0] = v16;
    sub_1B21D0640(v24);
    memcpy(__dst, v24, sizeof(__dst));
    v17 = *(a4 + 16);

    v17(v18, a2, a4);
    v22[3] = &type metadata for SQLExpression;
    v22[4] = &protocol witness table for SQLExpression;
    v22[0] = swift_allocObject();
    memcpy((v22[0] + 16), __dst, 0xA3uLL);
    FilteredRequest.filter(_:)(v22, a2, v21);

    (*(v6 + 8))(v12, a2);
    return sub_1B2113208(v22);
  }

  else
  {

    return FilteredRequest.none()(a2, v9);
  }
}

{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v8[1];
  if (v13)
  {
    v14 = *v8;
    v20[1] = v10;
    v21 = v9;
    type metadata accessor for TableAlias();
    v15 = swift_allocObject();
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0;
    v23[0] = v14;
    v23[1] = v13;
    LOBYTE(v23[2]) = 2;
    sub_1B2127D7C(v23);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    memcpy((v16 + 24), v23, 0xA3uLL);
    v24[0] = v16;
    sub_1B21D0640(v24);
    memcpy(__dst, v24, sizeof(__dst));
    v17 = *(a4 + 16);

    v17(v18, a2, a4);
    v22[3] = &type metadata for SQLExpression;
    v22[4] = &protocol witness table for SQLExpression;
    v22[0] = swift_allocObject();
    memcpy((v22[0] + 16), __dst, 0xA3uLL);
    FilteredRequest.filter(_:)(v22, a2, v21);

    (*(v6 + 8))(v12, a2);
    return sub_1B2113208(v22);
  }

  else
  {

    return FilteredRequest.none()(a2, v9);
  }
}

uint64_t static TableRecord.matching(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  static TableRecord.all()(__src);
  v5[0] = v1;
  v5[1] = v2;
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  TableRequest<>.matching(_:)(v5, InterfaceRequest, &protocol witness table for QueryInterfaceRequest<A>, &protocol witness table for QueryInterfaceRequest<A>);
  memcpy(__dst, __src, 0xA2uLL);
  return (*(*(InterfaceRequest - 8) + 8))(__dst, InterfaceRequest);
}

{
  v1 = *a1;
  v2 = a1[1];
  static TableRecord.all()(__src);
  v5[0] = v1;
  v5[1] = v2;
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  TableRequest<>.matching(_:)(v5, InterfaceRequest, &protocol witness table for QueryInterfaceRequest<A>, &protocol witness table for QueryInterfaceRequest<A>);
  memcpy(__dst, __src, 0xA2uLL);
  return (*(*(InterfaceRequest - 8) + 8))(__dst, InterfaceRequest);
}

uint64_t ColumnExpression.match(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  (*(*(*(a3 + 8) + 8) + 8))(v9, a2);
  __src[0] = v6;
  __src[1] = v5;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  memcpy(v8, __src, sizeof(v8));

  sub_1B21CF9AC(0x484354414DLL, 0xE500000000000000, v9, a4);
  memcpy(__dst, v8, 0xA3uLL);
  sub_1B21356F8(__dst);
  memcpy(v12, v9, 0xA3uLL);
  return sub_1B21356F8(v12);
}

{
  v6 = *a1;
  v5 = a1[1];
  (*(*(*(a3 + 8) + 8) + 8))(v11, a2);
  if (v5)
  {
    __src[0] = v6;
    __src[1] = v5;
    v7 = 2;
  }

  else
  {
    __src[0] = 0;
    __src[1] = 0;
    v7 = 4;
  }

  LOBYTE(__src[2]) = v7;
  sub_1B2127D7C(__src);
  memcpy(__dst, __src, sizeof(__dst));

  sub_1B21CF9AC(0x484354414DLL, 0xE500000000000000, v11, a4);
  memcpy(v9, __dst, 0xA3uLL);
  sub_1B21356F8(v9);
  memcpy(__src, v11, 0xA3uLL);
  return sub_1B21356F8(__src);
}

unint64_t sub_1B221CF80(uint64_t a1, uint64_t (*a2)(void *, uint64_t *))
{
  result = sub_1B2131DCC();
  v6 = a1 + 64;
  if (v7)
  {
    __break(1u);
    return 0;
  }

  else
  {
    while (*(a1 + 36) == v5)
    {
      v8 = 1 << *(a1 + 32);
      if (result == v8)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0 || result >= v8)
      {
        goto LABEL_26;
      }

      v25 = v5;
      v9 = result >> 6;
      v10 = 1 << result;
      if ((*(v6 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_27;
      }

      v26 = *(a1 + 36);
      v11 = (*(a1 + 48) + 16 * result);
      v12 = v11[1];
      v13 = result;
      v14 = *(*(a1 + 56) + 8 * result);
      v27[0] = *v11;
      v27[1] = v12;
      v28 = v14;

      v15 = a2(v27, &v28);

      if (v2)
      {
        return result;
      }

      if (v15)
      {
        return v13;
      }

      v16 = 1 << *(a1 + 32);
      if (v13 >= v16)
      {
        goto LABEL_28;
      }

      v6 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v9);
      if ((v17 & v10) == 0)
      {
        goto LABEL_29;
      }

      if (*(a1 + 36) != v26)
      {
        goto LABEL_30;
      }

      v18 = v17 & (-2 << (v13 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v9 << 6;
        v20 = v9 + 1;
        v21 = (a1 + 72 + 8 * v9);
        while (v20 < (v16 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1B21268C8(v13, v25, 0);
            v16 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        sub_1B21268C8(v13, v25, 0);
      }

LABEL_19:
      v5 = *(a1 + 36);
      result = v16;
    }

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
    __break(1u);
  }

  return result;
}

void Database.allStatements(sql:arguments:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1B2114908(a1, a2, a3);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  type metadata accessor for SQLStatementCursor();
  swift_allocObject();

  sub_1B211CF8C(v5);

  sub_1B211B748(v8, v4, v3, &v9, 0);
  sub_1B2117E1C();
}

uint64_t sub_1B221D424@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B211B804();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B221D474@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 112);
  *a2 = *(a1 + 104);
  a2[1] = v2;
}

uint64_t Database.statementDidFail(_:withResultCode:)(uint64_t a1, int a2)
{
  v4 = v2;
  v6 = sub_1B212DAF0();
  v8 = v7;
  v45 = v7;
  v9 = sub_1B221CF80(v7, sub_1B221D73C);
  if (v11 != -1)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    v15 = sub_1B21619D8(&qword_1EB7A30E8, &qword_1B2265D08);
    sub_1B2115370(v15, v16);
    sub_1B221D74C(v12, v13, v14);

    v8 = v45;
  }

  v17 = (v4 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
  v18 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
  v19 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache + 8);
  *v17 = v6;
  v17[1] = v8;
  sub_1B2120024(v18, v19);
  v20 = sub_1B212A5AC();
  v46 = v21;
  v22 = sub_1B221CF80(v21, sub_1B221D83C);
  if (v24 != -1)
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
    v28 = sub_1B21619D8(&qword_1EB7A30E8, &qword_1B2265D08);
    sub_1B2115370(v28, v29);
    sub_1B221D74C(v25, v26, v27);
  }

  v30 = (v4 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
  v31 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
  v32 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache + 8);
  *v30 = v20;
  v30[1] = v46;
  sub_1B2120024(v31, v32);
  v33 = sub_1B211CD70();
  sub_1B21760F8();

  if (!v3)
  {
    v35 = Database.lastErrorMessage.getter();
    v37 = v36;
    Statement.sql.getter();
    sub_1B21159FC();
    v39 = *(a1 + 104);
    v38 = *(a1 + 112);
    v40 = *(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 26);
    sub_1B21AC298();
    sub_1B21152FC();
    v42 = v41;
    if (v37)
    {
    }

    else
    {

      result = sqlite3_errstr(a2);
      if (!result)
      {
        __break(1u);
        return result;
      }

      v35 = sub_1B22523F0();
      v37 = v43;
    }

    *v42 = a2;
    *(v42 + 8) = v35;
    *(v42 + 16) = v37;
    *(v42 + 24) = v3;
    *(v42 + 32) = v33;
    *(v42 + 40) = v39;
    *(v42 + 48) = v38;
    *(v42 + 56) = v40;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B221D74C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B21268C8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B221D858()
{
  v0 = sub_1B21619D8(&qword_1EB7A30F0, &qword_1B2265E10);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B22520D0();
  qword_1ED85E820 = result;
  return result;
}

uint64_t sub_1B221D8A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  sub_1B211539C();
  v10 = *(v7 + 16);
  sub_1B2112E08();
  v11 = *(v6 + 16);
  sub_1B21159D0();

  sub_1B2150300(v12);
  swift_endAccess();
  sub_1B2224610(v5, a4, a5);
  v14 = v13;
  v15 = *(v7 + 16);
  *(v7 + 16) = v10;

  return v14 & 1;
}

uint64_t sub_1B221D98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1B211539C();
  v12 = *(v8 + 16);
  sub_1B2112E08();
  v13 = *(v7 + 16);
  sub_1B21159D0();

  sub_1B2150300(v14);
  swift_endAccess();
  v15 = a6(v6, a4, a5);
  v16 = *(v8 + 16);
  *(v8 + 16) = v12;

  return v15;
}

void sub_1B221DA58(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + 16);
  a2(v4);
  if (v2)
  {
    sub_1B21343E4(v4, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 119, a1);
  }

  else if (*(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 41) & 1) == 0 && (Database.isInsideTransaction.getter())
  {
    sub_1B2252EC0();
    __break(1u);
  }
}

void sub_1B221DB3C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v3 = *(a1 + 16);
  a2(&v4, v3);
  sub_1B21343E4(v3, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 119, a1);
}

uint64_t SQLOrdering.sqlOrdering.getter()
{
  sub_1B2111ADC();
  memcpy(v0, v1, v2);
  sub_1B2111ADC();
  memcpy(v3, v4, v5);
  return sub_1B214D958(v8, v7);
}

uint64_t sub_1B221DC30(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = (v2 | (*(result + 2) << 16)) & 0xF9BFFF;
  *result = v2 & 0xBFFF;
  *(result + 2) = BYTE2(v3);
  return result;
}

uint64_t sub_1B221DC58(uint64_t a1, int a2)
{
  v3 = *(a1 + 160);
  result = a1 + 160;
  v4 = *(result - 56) & 1;
  v5 = ((a2 << 16) | ((a2 & 1) << 14)) & 0x64000 | (v3 | (*(result + 2) << 16)) & 0xF981FF;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v5;
  *(result + 2) = BYTE2(v5);
  return result;
}

uint64_t static FTS3TokenizerDescriptor.simple.getter()
{
  if (qword_1EB7A0D70 != -1)
  {
    swift_once();
  }

  sub_1B21178CC(&qword_1EB7A30F8);
}

void sub_1B221DD2C()
{
  qword_1EB7A30F8 = 0x656C706D6973;
  unk_1EB7A3100 = 0xE600000000000000;
  qword_1EB7A3108 = MEMORY[0x1E69E7CC0];
}

void sub_1B221DD58()
{
  qword_1EB7A3110 = 0x726574726F70;
  *algn_1EB7A3118 = 0xE600000000000000;
  qword_1EB7A3120 = MEMORY[0x1E69E7CC0];
}

uint64_t static FTS3TokenizerDescriptor.porter.getter()
{
  if (qword_1EB7A0D78 != -1)
  {
    swift_once();
  }

  sub_1B21178CC(&qword_1EB7A3110);
}

void sub_1B221DE20(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = MEMORY[0x1E69E7CC0];
  if (*a1)
  {
    v8 = MEMORY[0x1E69E7CC0];
    if (*a1 == 1)
    {
      goto LABEL_8;
    }

    sub_1B214400C();
    v8 = v9;
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    v12 = v11 + 1;
    v13 = "remove_diacritics=2";
  }

  else
  {
    sub_1B214400C();
    v8 = v14;
    v11 = *(v14 + 16);
    v10 = *(v14 + 24);
    v12 = v11 + 1;
    v13 = "remove_diacritics=0";
  }

  v15 = v13 - 32;
  if (v11 >= v10 >> 1)
  {
    sub_1B214400C();
    v8 = v46;
  }

  *(v8 + 16) = v12;
  v16 = v8 + 16 * v11;
  *(v16 + 32) = 0xD000000000000013;
  *(v16 + 40) = v15 | 0x8000000000000000;
LABEL_8:
  if (*(a2 + 16))
  {
    sub_1B219C6B0();
    v18 = v17;
    v19 = *(v17 + 16);
    if (v19)
    {
      v53 = a3;
      v54 = a4;
      sub_1B2116B10();
      v20 = v7;
      v21 = (v18 + 40);
      do
      {
        v22 = *(v21 - 1);
        v23 = *v21;
        v25 = *(v20 + 16);
        v24 = *(v20 + 24);

        if (v25 >= v24 >> 1)
        {
          sub_1B2116B10();
        }

        *(v20 + 16) = v25 + 1;
        v26 = v20 + 16 * v25;
        *(v26 + 32) = v22;
        *(v26 + 40) = v23;
        v21 += 2;
        --v19;
      }

      while (v19);

      a3 = v53;
      a4 = v54;
      v7 = MEMORY[0x1E69E7CC0];
    }

    else
    {
    }

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v27 = sub_1B2252250();
    v29 = v28;

    MEMORY[0x1B2741EB0](v27, v29);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = *(v8 + 16);
      sub_1B214400C();
      v8 = v48;
    }

    v30 = *(v8 + 16);
    if (v30 >= *(v8 + 24) >> 1)
    {
      sub_1B214400C();
      v8 = v49;
    }

    *(v8 + 16) = v30 + 1;
    v31 = v8 + 16 * v30;
    *(v31 + 32) = 0x6F74617261706573;
    *(v31 + 40) = 0xEB000000003D7372;
  }

  if (*(a3 + 16))
  {
    sub_1B219C6B0();
    v33 = v32;
    v34 = *(v32 + 16);
    if (v34)
    {
      sub_1B2116B10();
      v35 = (v33 + 40);
      do
      {
        v36 = *(v35 - 1);
        v37 = *v35;
        v39 = *(v7 + 16);
        v38 = *(v7 + 24);

        if (v39 >= v38 >> 1)
        {
          sub_1B2116B10();
        }

        *(v7 + 16) = v39 + 1;
        v40 = v7 + 16 * v39;
        *(v40 + 32) = v36;
        *(v40 + 40) = v37;
        v35 += 2;
        --v34;
      }

      while (v34);
    }

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v41 = sub_1B2252250();
    v43 = v42;

    MEMORY[0x1B2741EB0](v41, v43);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = *(v8 + 16);
      sub_1B214400C();
      v8 = v51;
    }

    v44 = *(v8 + 16);
    if (v44 >= *(v8 + 24) >> 1)
    {
      sub_1B214400C();
      v8 = v52;
    }

    *(v8 + 16) = v44 + 1;
    v45 = v8 + 16 * v44;
    *(v45 + 32) = 0x6168636E656B6F74;
    *(v45 + 40) = 0xEB000000003D7372;
  }

  *a4 = 0x3665646F63696E75;
  a4[1] = 0xE900000000000031;
  a4[2] = v8;
}

uint64_t sub_1B221E2B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = a1[3];
    sub_1B2111808(v7);
    (*(v8 + 32))(a2, v3, v7);
    v9 = a1[4];
    return swift_willThrowTypedImpl();
  }

  else
  {
    sub_1B2111808(a1[2]);
    return (*(v11 + 32))(a3, v3);
  }
}

void sub_1B221E3E4(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = v2;
  v16 = a1;
  v4 = sub_1B22520F0();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 24);
  sub_1B21619D8(&qword_1EB7A2B88, &unk_1B2260248);
  v11 = *(v5 + 72);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B22546B0;
  v14 = v10;
  sub_1B22520E0();
  v21 = v13;
  sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60]);
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
  sub_1B2252BC0();
  v18 = v16;
  v19 = v17;
  v20 = v3;
  sub_1B21619D8(&qword_1EB7A3140, &qword_1B2269BF8);
  sub_1B2252A40();
  (*(v6 + 8))(v9, v4);
}

uint64_t sub_1B221E63C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  a1(&v7, a3 + 16);
  result = swift_endAccess();
  if (!v3)
  {
    return v7;
  }

  return result;
}

void *DatabasePool.makeSnapshot()()
{
  v1 = v0;
  v2 = type metadata accessor for Configuration();
  v3 = sub_1B2111894(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2111844();
  v8 = v7 - v6;
  v9 = *(v0 + 16);
  if (sub_1B212B3F8() & 1) != 0 && (sub_1B22247F4("/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 209, v9), v10 = v9[2], (Database.isInsideTransaction.getter()))
  {
    sub_1B2116728();
    sub_1B2112A88();
    sub_1B21144F4();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    v12 = v9[3];
    v11 = v9[4];
    sub_1B212392C(v9[2] + OBJC_IVAR____TtC12GRDBInternal8Database_configuration, v8);
    v13 = *(v1 + 32);

    sub_1B21713E8(v14);

    v15 = sub_1B2252FD0();
    MEMORY[0x1B2741EB0](v15);

    type metadata accessor for DatabaseSnapshot();
    swift_allocObject();
    return sub_1B21EF594(v12, v11, v8, 0xD000000000000011, 0x80000001B22702F0, 0x746F687370616E73, 0xE90000000000002ELL);
  }

  return result;
}

uint64_t DatabasePool.concurrentRead<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch_semaphore_create(0);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v7 = sub_1B2253480();
  sub_1B2252B00();
  v8 = swift_allocBox();
  sub_1B21117B4(v9, 1, 1, v7);
  sub_1B2117E34();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v8;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v6;

  v11 = v6;
  DatabasePool.asyncConcurrentRead(_:)(sub_1B2220A80, v10);

  type metadata accessor for DatabaseFuture();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = v8;
  return sub_1B2166088();
}

uint64_t DatabasePool.path.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  return v2;
}

uint64_t DatabasePool.__allocating_init(path:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2114ED8();
  v6 = swift_allocObject();
  DatabasePool.init(path:configuration:)(a1, a2, a3);
  return v6;
}

void *DatabasePool.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = v0[3];
  v0[3] = 0;

  v3 = v0[2];

  v4 = v0[3];

  v5 = v0[4];

  return v0;
}

uint64_t DatabasePool.__deallocating_deinit()
{
  DatabasePool.deinit();
  v0 = sub_1B2114ED8();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t DatabasePool.asyncBarrierWriteWithoutTransaction(_:)(uint64_t result, uint64_t a2)
{
  if (*(v2 + 24))
  {
    v4 = result;
    v5 = swift_allocObject();
    v5[2] = v2;
    v5[3] = v4;
    v5[4] = a2;

    sub_1B2220394(sub_1B2220AB4, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DatabasePool.releaseMemoryEventually()()
{
  if (*(v0 + 24))
  {

    sub_1B2120468();
  }

  v1 = *(v0 + 16);
  sub_1B2223DB4(sub_1B221ED3C, 0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabasePool.close()()
{
  if (*(v0 + 24))
  {
    (MEMORY[0x1EEE9AC00])();
    v1[2] = sub_1B2220AC0;
    v1[3] = v0;

    sub_1B2120064(sub_1B2220ADC, v1);
  }
}

uint64_t sub_1B221EE0C(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = sub_1B2113C20(sub_1B22213A4, 0);
  if (!v1)
  {
    if (*(a1 + 24))
    {
      v5 = *(a1 + 24);

      sub_1B212BA0C();

      v6 = *(a1 + 24);
    }

    *(a1 + 24) = 0;
  }

  return result;
}

Swift::Void __swiftcall DatabasePool.interrupt()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_1B2223D70();
  if (*(v1 + 24))
  {
    v3 = *(v1 + 24);

    sub_1B212BA0C();
  }
}

uint64_t sub_1B221EFA8()
{
  v1 = type metadata accessor for Configuration();
  v2 = sub_1B2111894(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B2111844();
  v7 = v6 - v5;
  DatabasePool.configuration.getter(v6 - v5);
  v8 = *(v7 + 1);
  result = sub_1B2133D70(v7);
  if ((v8 & 1) == 0)
  {
    v10 = *(*(v0 + 16) + 16);
    return sub_1B2237EC0();
  }

  return result;
}

uint64_t sub_1B221F02C()
{
  v1 = type metadata accessor for Configuration();
  v2 = sub_1B2111894(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B2111844();
  v7 = v6 - v5;
  DatabasePool.configuration.getter(v6 - v5);
  v8 = *(v7 + 1);
  result = sub_1B2133D70(v7);
  if ((v8 & 1) == 0)
  {
    v10 = *(*(v0 + 16) + 16);
    return sub_1B2238460();
  }

  return result;
}

uint64_t sub_1B221F0EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1B2251BA0();
  v6 = sub_1B211280C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B2111844();
  v13 = v12 - v11;
  sub_1B2251B90();

  a4(v13);

  return (*(v8 + 8))(v13, v5);
}

uint64_t sub_1B221F1F0(void *a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void *, uint64_t))
{
  v11 = 0;
  Database.beginTransaction(_:)(&v11);
  if (v7)
  {
    v8 = v7;
    a4(v7, 1);
  }

  else
  {
    sub_1B212AB84();
    a4(a1, 0);
  }

  Database.commit()();
  if (v9)
  {
  }

  return a2();
}

uint64_t sub_1B221F2D8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B22520F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B2252120();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + 64);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v2;
  aBlock[4] = sub_1B22212AC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B21E5730;
  aBlock[3] = &unk_1F29759E0;
  v15 = _Block_copy(aBlock);

  sub_1B2252100();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60]);
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
  sub_1B2252BC0();
  MEMORY[0x1B2742540](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

void sub_1B221F644(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 24))
  {
    sub_1B2111904();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;

    sub_1B221F2D8(a4, v8);
  }

  else
  {
    sub_1B21AC298();
    sub_1B2118078();
    v9 = swift_allocError();
    *v10 = 21;
    *(v10 + 8) = 0xD000000000000014;
    *(v10 + 16) = 0x80000001B226DEC0;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0;
    a1(v9, 1);
  }
}

void sub_1B221F75C(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (*(a1 + 24))
  {
    v27 = *a1;
    v12 = v9;
    sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
    swift_willThrowTypedImpl();
    v13 = v9;
    a2(v9, 1);
    v14 = sub_1B211491C();
    sub_1B22211EC(v14, v15, v16, 1);
    v17 = sub_1B211491C();
    sub_1B22211EC(v17, v18, v19, 1);
  }

  else
  {
    sub_1B2111904();
    v22 = swift_allocObject();
    *(v22 + 16) = v10;
    *(v22 + 24) = v11;
    sub_1B2113B74();
    v23 = swift_allocObject();
    v23[2] = a6;
    v23[3] = v22;
    v23[4] = a2;
    v23[5] = a3;
    v24 = sub_1B211491C();
    sub_1B2221244(v24, v25, v26, 0);

    sub_1B2223DB4(a7, v23);
  }
}

uint64_t sub_1B221F8C4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  sub_1B212AB84();
  v7 = a4(a1, 0);
  return a2(v7);
}

uint64_t DatabasePool.unsafeReentrantRead<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1B212B634(a1))
  {
    sub_1B2224248();
  }

  else if (*(v3 + 24))
  {
    MEMORY[0x1EEE9AC00](0);
    v9[2] = a3;
    v9[3] = a1;
    v9[4] = a2;

    sub_1B212B78C(sub_1B2220BD4, v9);
  }

  else
  {
    sub_1B21AC298();
    sub_1B2118078();
    swift_allocError();
    sub_1B21ABD9C(v8);
    return swift_willThrow();
  }
}

uint64_t sub_1B221FAE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[1] = a6;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v12 = sub_1B2253480();
  v13 = sub_1B2252B00();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  v18 = swift_projectBox();
  v21[6] = a5;
  v21[7] = a1;
  v22 = a2 & 1;
  v21[4] = a7;
  v21[5] = a4;
  v19 = sub_1B21619D8(&qword_1EB7A10A0, &qword_1B2254848);
  sub_1B2221510(sub_1B2221348, v19, v17);
  sub_1B21117B4(v17, 0, 1, v12);
  swift_beginAccess();
  (*(v14 + 40))(v18, v17, v13);
  return sub_1B2252AA0();
}

uint64_t sub_1B221FC94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  return sub_1B21E89EC(sub_1B2221360, a2);
}

uint64_t DatabasePool.asyncConcurrentRead(_:)(void (*a1)(void *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B2252140();
  v7 = sub_1B211280C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B2111844();
  v14 = v13 - v12;
  v15 = *(v2 + 16);
  sub_1B22247F4("/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 209, v15);
  v16 = *(v15 + 16);
  if (Database.isInsideTransaction.getter())
  {
    sub_1B2116728();
    sub_1B2112A88();
    sub_1B21144F4();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    v17 = dispatch_semaphore_create(0);
    v18 = *(v3 + 24);
    if (v18)
    {
      v19 = *(v18 + 56);
      v20 = *(v3 + 24);

      sub_1B21619D8(&qword_1EB7A3138, &qword_1B2269B80);
      sub_1B2252A50();
      sub_1B2111904();
      v24 = swift_allocObject();
      *(v24 + 16) = v28;
      sub_1B2117E34();
      v25 = swift_allocObject();
      v25[2] = sub_1B212E038;
      v25[3] = v24;
      v25[4] = v17;
      v25[5] = a1;
      v25[6] = a2;

      v26 = v17;

      sub_1B2223DB4(sub_1B22210D4, v25);
    }

    else
    {
      sub_1B21AC298();
      sub_1B2118078();
      v21 = swift_allocError();
      sub_1B21ABD9C(v22);
      swift_willThrow();
      sub_1B2252AA0();
      v23 = v21;
      a1(v21, 1);
    }

    sub_1B2252130();
    sub_1B2252A80();

    return (*(v9 + 8))(v14, v6);
  }

  return result;
}

uint64_t sub_1B221FFD4@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v1 = sub_1B2253480();
  v2 = sub_1B2252B00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = sub_1B2252140();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  sub_1B2252130();
  sub_1B2252A80();
  (*(v8 + 8))(v11, v7);
  swift_beginAccess();
  (*(v3 + 16))(v6, v12, v2);
  result = sub_1B2122A98(v6, 1, v1);
  if (result != 1)
  {
    return sub_1B221E2B4(v1, &v16, v15);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B22201E4(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t))
{
  v12 = 0;
  Database.beginTransaction(_:)(&v12);
  if (v8)
  {
    sub_1B2252AA0();
    v9 = v8;
    a5(v8, 1);
  }

  else
  {
    sub_1B212AB84();
    sub_1B2252AA0();
    a5(a1, 0);
  }

  Database.commit()();
  if (v10)
  {
  }

  return a2();
}

Swift::Void __swiftcall DatabasePool.invalidateReadOnlyConnections()()
{
  if (*(v0 + 24))
  {

    sub_1B2120468();
  }
}

uint64_t sub_1B2220340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v5[2] = a2;
  v5[3] = a3;
  return sub_1B2113C20(sub_1B2221320, v5);
}

uint64_t sub_1B2220394(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a1;
  v24 = a2;
  v25 = sub_1B2252120();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B22520F0();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v3 + 56);
  sub_1B21619D8(&qword_1EB7A2B88, &unk_1B2260248);
  v14 = *(v9 + 72);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B22546B0;
  sub_1B22520E0();
  aBlock[0] = v16;
  sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60]);
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
  sub_1B2252BC0();
  v17 = swift_allocObject();
  v18 = v23;
  v19 = v24;
  v17[2] = v3;
  v17[3] = v18;
  v17[4] = v19;
  aBlock[4] = sub_1B2221314;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B21E5730;
  aBlock[3] = &unk_1F2975A80;
  v20 = _Block_copy(aBlock);

  sub_1B2252100();
  MEMORY[0x1B2742540](0, v7, v13, v20);
  _Block_release(v20);
  (*(v4 + 8))(v7, v25);
  (*(v10 + 8))(v13, v8);
}

uint64_t DatabasePool.writeInTransaction(_:_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[16] = *a1;
  v7 = a2;
  v8 = a3;
  return sub_1B2113C20(sub_1B21E96E0, v6);
}

void DatabasePool._add<A>(observation:scheduling:onChange:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = type metadata accessor for Configuration();
  v10 = sub_1B2111894(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v15 = v14 - v13;
  v16 = a1[80];
  DatabasePool.configuration.getter(v14 - v13);
  v17 = *(v15 + 1);
  sub_1B2133D70(v15);
  if (v17 == 1)
  {
    memcpy(__dst, a1, sizeof(__dst));
    sub_1B2112E34();
    sub_1B2112250();
    sub_1B22216F8(v18, v19, v20, v21, v8, a5, v22, a6, v23);
  }

  else
  {
    memcpy(__dst, a1, sizeof(__dst));
    sub_1B2112E34();
    sub_1B2112250();
    if (v16)
    {
      sub_1B2163818();
    }

    else
    {
      sub_1B2220884(v24, v25, v26, v27, a5, a6, v28);
    }
  }
}

uint64_t sub_1B2220884@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a4;
  v20 = a6;
  v25 = a3;
  v26 = a7;
  v23 = a2;
  v8 = *(*(a5 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v22 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, sizeof(__dst));
  v10 = __dst[0];
  v11 = __dst[2];
  v12 = __dst[4];
  v13 = __dst[6];
  v19 = __dst[8];
  v18[0] = __dst[7];
  v18[1] = __dst[9];
  v14 = a1[11];
  v21 = a1[12];
  v15 = a1[13];
  type metadata accessor for ValueConcurrentObserver();
  sub_1B2112328(v10);
  sub_1B2112328(v11);
  sub_1B2112328(v12);
  sub_1B2112328(v13);
  sub_1B2112328(v19);
  sub_1B2167008(v14);

  v21(v16);

  sub_1B220AB7C();
  sub_1B220B674();
}

uint64_t sub_1B2220A94@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  return sub_1B221FFD4(a1);
}

uint64_t sub_1B2220ADC@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1B2220BF0(void *a1)
{
  v3 = a1[5];
  sub_1B2252A90();
  v4 = a1[6];
  dispatch_group_enter(v4);
  v5 = a1[4];

  sub_1B221E3E4(sub_1B2221150, a1);
  if (v1)
  {

    v7 = v3;
    sub_1B2252AA0();
    dispatch_group_leave(v4);
    swift_willThrow();
  }

  else
  {
    v8 = v6;

    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = v8;
    v7 = *(v8 + 16);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B222116C;
    *(v10 + 24) = v9;
  }

  return v7;
}

uint64_t sub_1B2220D24(void *a1, uint64_t a2)
{
  v6 = *a1;
  result = sub_1B2116B08(*a1);
  v8 = result;
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      v10(&v15);
      if (!v2)
      {
        v12 = v15;
        sub_1B21619D8(&qword_1EB7A3140, &qword_1B2269BF8);
        v3 = swift_allocObject();
        *(v3 + 16) = v12;
        *(v3 + 24) = 0;

        MEMORY[0x1B2742060](v13);
        sub_1B212B4C4(*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_1B2252630();
        v14 = *a1;

        *a1 = v14;
      }

      return v3;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1B27427E0](i, v6);
      v3 = result;
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v3 = *(v6 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v3 + 24))
    {
      *(v3 + 24) = 0;
      return v3;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_1B2220E94()
{
  v1 = v0;
  v2 = *(v0 + 32);

  sub_1B2120530();

  v3 = *(v0 + 40);
  sub_1B2252AA0();
  v4 = *(v1 + 48);

  dispatch_group_leave(v4);
}

void sub_1B2220F30(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = sub_1B2220FC4(a3);
  v6 = v5;
  v9[0] = v4;
  v9[1] = v5;
  v8 = v7;
  v9[2] = v7;
  v10 = 0;
  a1(v9);

  sub_1B22211EC(v4, v6, v8, 0);
}

uint64_t sub_1B2220FC4(uint64_t a1)
{
  v2 = *(a1 + 56);
  sub_1B21619D8(&qword_1EB7A3138, &qword_1B2269B80);
  result = sub_1B2252A50();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1B2221048(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 48);
  v4 = sub_1B22529A0();
  return a2(v4);
}

uint64_t sub_1B2221088@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B2220BF0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1B2221124@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B2220D24(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1B222116C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1B2220E94();
}

uint64_t sub_1B22211A0@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1B221E63C(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void sub_1B22211EC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

id sub_1B2221244(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
  }
}

uint64_t sub_1B22212B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B22212DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_1B2114ED8();

  return swift_deallocObject();
}

uint64_t sub_1B2221320()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B2221360(void *a1)
{
  v4 = *(v1 + 32);
  result = (*(v1 + 24))(*(v1 + 40));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_1B222140C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a2 + 64) + 40);
  sub_1B2111808(a3);
  (*(v5 + 32))();

  return MEMORY[0x1EEE6DEE0](a2);
}

uint64_t sub_1B2221480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocError();
  sub_1B2111808(a4);
  (*(v7 + 32))();

  return MEMORY[0x1EEE6DEE8](a2, v6);
}

uint64_t sub_1B2221510@<X0>(void (*a1)(uint64_t)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  sub_1B21115E0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  v14 = v13 - v12;
  sub_1B21115E0();
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1B2111844();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = a2[3];
    sub_1B2111808(v23);
    (*(v24 + 32))(a3, v20, v23);
    v25 = a2[4];
    sub_1B2253480();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v8 + 32))(v14, v20, v6);
    a1(v14);
    return (*(v8 + 8))(v14, v6);
  }
}

uint64_t sub_1B22216F8@<X0>(const void *a1@<X0>, void *a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v41 = a5;
  v40 = a4;
  v39 = a3;
  v42 = a9;
  v14 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v38 = v16;
  v18 = *(v17 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  memcpy(__dst, a1, sizeof(__dst));
  v22 = a2[5];
  v23 = a2[6];
  sub_1B21139A0(a2 + 2, v22);
  v24 = (*(v23 + 16))(v22, v23);
  if (v24)
  {
    v25 = v39;
    MEMORY[0x1EEE9AC00](v24);
    *(&v38 - 6) = v41;
    *(&v38 - 5) = a6;
    *(&v38 - 4) = a7;
    *(&v38 - 3) = a8;
    *(&v38 - 2) = __dst;
    (*(a7 + 64))(sub_1B2223BE4);
    v25(v21);
    (*(v38 + 8))(v21, AssociatedTypeWitness);
    v33 = type metadata accessor for AnyDatabaseCancellable();
    sub_1B2111904();
    swift_allocObject();
    v34 = nullsub_1;
    v35 = 0;
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = swift_allocObject();
    v28 = v41;
    v27[2] = v41;
    v27[3] = a6;
    v27[4] = a7;
    v27[5] = a8;
    v27[6] = v26;
    memcpy(v27 + 7, a1, 0x70uLL);
    v29 = v39;
    v27[21] = a2;
    v27[22] = v29;
    v27[23] = v40;
    v30 = *(a7 + 40);

    v31 = type metadata accessor for ValueObservation();
    sub_1B2111808(v31);
    (*(v32 + 16))(v43, __dst);

    v30(sub_1B2223B98, v27, v28, a7);

    v33 = type metadata accessor for AnyDatabaseCancellable();
    sub_1B2111904();
    swift_allocObject();
    v34 = sub_1B2223BDC;
    v35 = v26;
  }

  result = AnyDatabaseCancellable.init(cancel:)(v34, v35);
  v37 = v42;
  v42[3] = v33;
  v37[4] = &protocol witness table for AnyDatabaseCancellable;
  *v37 = result;
  return result;
}

uint64_t DatabaseReader.backup(to:pagesPerStep:progress:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v16[2] = a6;
  v16[3] = a7;
  v17 = v7;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  return (*(a2 + 24))(sub_1B2221B74, v16, MEMORY[0x1E69E7CA8] + 8, ObjectType, a2);
}

uint64_t sub_1B2221B74(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 32);
  return sub_1B2221BB0(a1, v4, 0, 0, v5, v6, v2, v3);
}

uint64_t sub_1B2221BB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  return (*(a8 + 32))(sub_1B2223B60, v9, MEMORY[0x1E69E7CA8] + 8, a7, a8);
}

uint64_t DatabaseReader.read<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return sub_1B2114EC8();
}

uint64_t sub_1B2221C78()
{
  sub_1B2111F08();
  v1 = swift_task_alloc();
  sub_1B21164D4(v1);
  v2 = sub_1B2115B50(&unk_1B22546C8);
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1B2221D28;
  v3 = v0[6];
  v4 = v0[2];
  sub_1B2115F94();

  return v5();
}

uint64_t sub_1B2221D28()
{
  sub_1B2111F08();
  v2 = *v1;
  sub_1B2112260();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_1B2112260();
  *v7 = v6;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B216728C, 0, 0);
  }

  else
  {
    v8 = *(v2 + 72);

    v9 = *(v6 + 8);

    return v9();
  }
}

uint64_t sub_1B2221E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v14 = *(a7 + 40);

  v14(sub_1B2223D6C, v13, a5, a7);
}

uint64_t DatabaseReader.unsafeRead<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return sub_1B2114EC8();
}

uint64_t sub_1B2221F58()
{
  sub_1B2111F08();
  v1 = swift_task_alloc();
  sub_1B21164D4(v1);
  v2 = sub_1B2115B50(&unk_1B22546C8);
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1B2222008;
  v3 = v0[6];
  v4 = v0[2];
  sub_1B2115F94();

  return v5();
}

uint64_t sub_1B2222008()
{
  sub_1B2111F08();
  v2 = *v1;
  sub_1B2112260();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_1B2112260();
  *v7 = v6;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B216439C, 0, 0);
  }

  else
  {
    v8 = *(v2 + 72);

    v9 = *(v6 + 8);

    return v9();
  }
}

uint64_t sub_1B2222138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v14 = *(a7 + 56);

  v14(sub_1B2223B34, v13, a5, a7);
}

uint64_t sub_1B2222230(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B2111808(a7);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1B2111844();
  v16 = v15 - v14;
  if (v17)
  {
    v18 = a1;
    sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
    swift_willThrowTypedImpl();
    v21 = a1;
    v19 = sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
    return sub_1B2221480(&v21, a3, a7, v19);
  }

  else
  {
    v13(a1);
    sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
    return sub_1B222140C(v16, a3, a7);
  }
}

void DatabaseReader.readPublisher<A>(value:)()
{
  sub_1B2114244();
  v5 = v4;
  v7 = v6;
  v8 = sub_1B2111770();
  v9 = sub_1B2252A30();
  v11 = v9;
  v10 = sub_1B216520C();
  DatabaseReader.readPublisher<A, B>(receiveOn:value:)(&v11, v5, v3, v2, v8, v1, v0, v10, v7);
}

uint64_t DatabaseReader.readPublisher<A, B>(receiveOn:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v41 = a4;
  v44 = a3;
  v45 = a7;
  v43 = a2;
  v49 = a1;
  v50 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2252B00();
  sub_1B21115E0();
  v47 = v13;
  v48 = v12;
  v15 = *(v14 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v16);
  v39 = v38 - v17;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B2252060();
  v38[1] = swift_getWitnessTable();
  v18 = sub_1B2252090();
  sub_1B21115E0();
  v40 = v19;
  v21 = *(v20 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v38 - v23;
  v38[0] = swift_getWitnessTable();
  v51 = v18;
  v52 = a5;
  v53 = v38[0];
  v54 = a8;
  v25 = type metadata accessor for ReceiveValuesOn();
  sub_1B21115E0();
  v27 = v26;
  v29 = *(v28 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v38 - v31;
  v33 = swift_allocObject();
  v33[2] = v41;
  v33[3] = a5;
  v34 = v45;
  v33[4] = a6;
  v33[5] = v34;
  v33[6] = a8;
  v35 = v43;
  v33[7] = v42;
  v33[8] = v35;
  v33[9] = v44;
  swift_unknownObjectRetain();

  sub_1B2252080();
  v36 = v39;
  sub_1B21117B4(v39, 1, 1, AssociatedTypeWitness);
  sub_1B21EFFCC(v49, v36, v18, a5, v38[0], v32);
  (*(v47 + 8))(v36, v48);
  (*(v40 + 8))(v24, v18);
  swift_getWitnessTable();
  *v50 = sub_1B22520B0();
  return (*(v27 + 8))(v32, v25);
}

uint64_t sub_1B2222774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B2252060();
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = a8;
  v17[7] = a1;
  v17[8] = a2;
  v17[9] = a3;
  swift_unknownObjectRetain();

  result = sub_1B2252070();
  *a9 = result;
  return result;
}

uint64_t sub_1B2222880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = a10;
  v17[7] = a1;
  v17[8] = a2;
  v17[9] = a4;
  v17[10] = a5;
  v18 = *(a9 + 40);

  v18(sub_1B2223AA0, v17, a6, a9);
}

uint64_t sub_1B2222970(uint64_t a1, char a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a5;
  v23 = a6;
  v24 = a4;
  v25 = a3;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v15 = sub_1B2253480();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  v33 = a1;
  v34 = a2 & 1;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v29 = a10;
  v30 = a11;
  v31 = v22;
  v32 = v23;
  v20 = sub_1B21619D8(&qword_1EB7A10A0, &qword_1B2254848);
  sub_1B2221510(sub_1B2223AE0, v20, v19);
  v25(v19);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1B2222AF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  return sub_1B21E89EC(sub_1B2223AF4, a2);
}

uint64_t DatabasePublishers.Read.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(a2 + 16);
  v10 = sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);

  return MEMORY[0x1EEDB5BC8](a1, v8, v9, v10, a3, a4);
}

uint64_t sub_1B2222C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11[7] = a1;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a2;
  v8 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_1B212B00C(1, sub_1B2223C08, v11, AssociatedTypeWitness, a7);
}

uint64_t sub_1B2222C9C@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(v7, __src, sizeof(v7));
  v5 = type metadata accessor for ValueObservation();
  return sub_1B21ADCF4(a2, v5, a3);
}

uint64_t sub_1B2222D1C(uint64_t a1, char a2, uint64_t a3, char *a4, uint64_t a5, void *a6, uint64_t a7, char *a8, char *a9, uint64_t a10, uint64_t a11)
{
  v48 = a8;
  v52 = a7;
  v49 = a6;
  v50 = a5;
  v53 = a4;
  v47 = a11;
  v14 = *(a11 + 8);
  swift_getAssociatedTypeWitness();
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v51 = sub_1B2253480();
  v15 = *(v51 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v51);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    v42 = &v42;
    v44 = a10;
    v54 = a1;
    v55 = a2 & 1;
    MEMORY[0x1EEE9AC00](result);
    v21 = v48;
    *(&v42 - 6) = v48;
    *(&v42 - 5) = a9;
    v43 = a9;
    v22 = v47;
    *(&v42 - 4) = v23;
    *(&v42 - 3) = v22;
    v24 = v15;
    v25 = a3;
    v26 = v22;
    *(&v42 - 2) = v53;
    v27 = sub_1B21619D8(&qword_1EB7A10A0, &qword_1B2254848);
    v46 = v19;
    sub_1B2221510(sub_1B2223C2C, v27, v19);
    v28 = v24;
    v29 = *(v24 + 16);
    v30 = v51;
    v29(&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v51);
    v31 = *(v28 + 80);
    v42 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = v28;
    v45 = v28;
    v33 = (v31 + 72) & ~v31;
    v34 = (v16 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 2) = v21;
    v36 = v44;
    *(v35 + 3) = v43;
    *(v35 + 4) = v36;
    *(v35 + 5) = v26;
    *(v35 + 6) = v25;
    v37 = v52;
    *(v35 + 7) = v49;
    *(v35 + 8) = v37;
    (*(v32 + 32))(&v35[v33], v42, v30);
    v38 = v53;
    memcpy(&v35[v34], v53, 0x70uLL);
    v39 = *(v50 + 40);
    v40 = *(v50 + 48);
    v49 = sub_1B21139A0((v50 + 16), v39);
    v50 = *(v40 + 8);

    v41 = type metadata accessor for ValueObservation();
    (*(*(v41 - 8) + 16))(&v54, v38, v41);
    (v50)(sub_1B2223C3C, v35, v39, v40);

    return (*(v45 + 8))(v46, v30);
  }

  return result;
}

uint64_t sub_1B222310C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v4 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  return sub_1B21E89EC(sub_1B2223D44, a3);
}

uint64_t sub_1B22231B0@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X6>, uint64_t a4@<X8>)
{
  memcpy(v10, __src, sizeof(v10));
  v8 = type metadata accessor for ValueObservation();
  result = sub_1B21ADCF4(a2, v8, a4);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_1B2223240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24[0] = a2;
  v11 = *(a9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v13 = sub_1B2253480();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v24 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = v24 - v21;
  result = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(v14 + 16))(v18, a4, v13);
    sub_1B221E2B4(v13, &v25, v22);
    (v24[0])(v22);
    return (*(v19 + 8))(v22, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1B2223468(uint64_t a1)
{
  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t AnyDatabaseReader.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B2111904();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AnyDatabaseReader.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AnyDatabaseReader.configuration.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v2 + 8))(ObjectType, v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyDatabaseReader.close()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(ObjectType, v2);
}

Swift::Void __swiftcall AnyDatabaseReader.interrupt()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v2 + 24))(ObjectType, v2);
}

uint64_t AnyDatabaseReader.read<A>(_:)()
{
  sub_1B21153E4();
  v1 = *(v0 + 32);
  v2 = sub_1B21178EC();
  return v3(v2);
}

uint64_t AnyDatabaseReader.asyncRead(_:)()
{
  sub_1B2117E40();
  v1 = *(v0 + 40);
  v2 = sub_1B211D7C4();
  return v3(v2);
}

uint64_t AnyDatabaseReader.unsafeRead<A>(_:)()
{
  sub_1B21153E4();
  v1 = *(v0 + 48);
  v2 = sub_1B21178EC();
  return v3(v2);
}

uint64_t AnyDatabaseReader.asyncUnsafeRead(_:)()
{
  sub_1B2117E40();
  v1 = *(v0 + 56);
  v2 = sub_1B211D7C4();
  return v3(v2);
}

uint64_t AnyDatabaseReader.unsafeReentrantRead<A>(_:)()
{
  sub_1B21153E4();
  v1 = *(v0 + 64);
  v2 = sub_1B21178EC();
  return v3(v2);
}

uint64_t AnyDatabaseReader._add<A>(observation:scheduling:onChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B2114244();
  memcpy(v17, v12, sizeof(v17));
  v13 = *(v6 + 16);
  v14 = *(v6 + 24);
  ObjectType = swift_getObjectType();
  return (*(v14 + 72))(v17, v10, v9, v8, v7, a6, ObjectType, v14);
}

uint64_t AnyDatabaseReader.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AnyDatabaseReader.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1B2111904();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1B22239C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B2223AE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v8 = v2[6];
  v7 = v2[7];
  v9 = v2[8];
  return sub_1B2222AF4(a1, a2);
}

uint64_t sub_1B2223AF4(void *a1)
{
  v4 = *(v1 + 64);
  result = (*(v1 + 56))(*(v1 + 72));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_1B2223C08@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_1B2222C9C(*(v1 + 48), *(v1 + 56), a1);
}

uint64_t sub_1B2223C2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[6];
  return sub_1B222310C(a1, v2[5], a2);
}

uint64_t sub_1B2223C3C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v6 = *(sub_1B2253480() - 8);
  v7 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  return sub_1B2223240(v0[6], v0[7], v0[8], v0 + v7, v0 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8), v1, v2, v3, v4);
}

uint64_t sub_1B2223D44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  return sub_1B22231B0(*(v2 + 48), *(v2 + 56), a1, a2);
}

void sub_1B2223D70()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  sqlite3_interrupt(*(v1 + 16));
}

uint64_t sub_1B2223DB4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B22520F0();
  v6 = sub_1B211280C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B2252120();
  v14 = sub_1B211280C(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v2 + 40);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = v2;
  aBlock[4] = sub_1B2224994;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B21E5730;
  aBlock[3] = &unk_1F2975CB8;
  v23 = _Block_copy(aBlock);

  sub_1B2252100();
  v25[1] = MEMORY[0x1E69E7CC0];
  sub_1B212C084();
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B212C0DC();
  sub_1B2252BC0();
  MEMORY[0x1B2742540](0, v20, v12, v23);
  _Block_release(v23);
  (*(v8 + 8))(v12, v5);
  (*(v16 + 8))(v20, v13);
}

uint64_t sub_1B222401C(uint64_t a1)
{
  type metadata accessor for SchedulingWatchdog();
  if (!sub_1B21114CC())
  {
    v7 = *(a1 + 40);
    MEMORY[0x1EEE9AC00](0);
    sub_1B21619D8(&qword_1EB7A3148, &qword_1B2269C00);
    result = sub_1B2252A50();
    if (v1)
    {
      return result;
    }

    return v10;
  }

  v3 = *(a1 + 16);
  v4 = sub_1B211A144(v3);
  if (v4)
  {
    v5 = Database.isInsideTransaction.getter();
    Database.commit()();
    if (v5)
    {
      if (v6)
      {

        return 1;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      if (v6)
      {
      }

      v10 = v6 != 0;
      sub_1B21343E4(v3, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 172, a1);
    }

    return v10;
  }

  v9 = *(a1 + 40);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B21619D8(&qword_1EB7A3148, &qword_1B2269C00);
  sub_1B2252A50();

  if (!v1)
  {
    return v10;
  }

  return result;
}