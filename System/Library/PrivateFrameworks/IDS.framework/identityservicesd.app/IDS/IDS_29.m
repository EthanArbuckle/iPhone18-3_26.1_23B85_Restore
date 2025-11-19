void sub_10079EF38(uint64_t *a1, char a2, void (*a3)(char *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_100022B2C(*a1, (v4 + 40));
    swift_beginAccess();
    sub_100012970(v5 + 24);
    a3(v4 + 40, v5 + 24);
    swift_endAccess();
    sub_100012970(v4);
  }

  else
  {
    swift_beginAccess();
    sub_100012970(v5 + 24);
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_10079F01C(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = sub_100706B30(&qword_100CB53F8);
  sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  *(v1 + 16) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  *(v1 + 17) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v1 + 18) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v1 + 19) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB53D8);
  type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable(0);
  sub_1007B2718();
  sub_1009366C8();

  *(v1 + 20) = 0;
  sub_100936158();
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10079F4C0(uint64_t a1)
{
  v2 = sub_1007B2F58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10079F4FC(uint64_t a1)
{
  v2 = sub_1007B2F58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10079F538(void *a1)
{
  v3 = v1;
  v5 = sub_100706B30(&qword_100CB5400);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000226D4(a1, a1[3]);
  sub_1007B2F58();
  sub_1009376F8();
  v19 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_100012D50(&v19, v11, &qword_100CB3CE8);
  sub_100768A18();
  sub_1009374C8();
  if (!v2)
  {
    sub_10001C370(v13, *(&v13 + 1));
    v18 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_100012D50(&v18, v11, &qword_100CB3CE8);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    LOBYTE(v13) = 2;
    sub_100937518();
    LOBYTE(v13) = 3;
    sub_100937508();
    v17 = *(v3 + 40);
    v13 = *(v3 + 40);
    v12 = 4;
    sub_100012D50(&v17, v11, &qword_100CB3CE8);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    v16 = *(v3 + 56);
    v13 = *(v3 + 56);
    v12 = 5;
    sub_100012D50(&v16, v11, &qword_100CB3CE8);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    v15 = *(v3 + 72);
    v13 = *(v3 + 72);
    v12 = 6;
    sub_100012D50(&v15, v11, &qword_100CB3CE8);
    sub_1009374C8();
    sub_10001C370(v13, *(&v13 + 1));
    v13 = *(v3 + 88);
    v14 = v13;
    v12 = 7;
    sub_100012D50(&v14, v11, &qword_100CB3CE8);
    sub_1009374C8();
  }

  sub_10001C370(v13, *(&v13 + 1));
  return (*(v6 + 8))(v8, v5);
}

__n128 sub_10079F914@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007B2FAC(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_10079F98C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10079FA94@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10079FBA4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_10079FC7C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10079FD80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10079FE8C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_10079FF64()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007A0068@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007A0174()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1007A024C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007A0350@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007A045C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1007A0534()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007A063C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007A074C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1007A0824()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007A092C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007A0A3C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1007A0B14()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_1007B1924(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007A0C4C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_1007B1924(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007A0D84(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1007A0F0C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_1007B1924(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007A1044()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_1007B1924(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007A117C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

double sub_1007A1304()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

double sub_1007A1408@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_1009368A8();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007A1514()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5408, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1007A15EC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  sub_1009368C8();
}

uint64_t *sub_1007A1688(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, double a9, Swift::String a10, uint64_t a11, uint64_t a12)
{
  v40._countAndFlagsBits = a7;
  v40._object = a8;
  v43._countAndFlagsBits = a5;
  v43._object = a6;
  v42._countAndFlagsBits = a3;
  v42._object = a4;
  v37 = a2;
  v38 = a1;
  v44 = a12;
  v45 = a11;
  v41 = a10;
  v39 = sub_100936038();
  v16 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[5] = sub_100706B30(&qword_100CB5418);
  v19 = sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  v46._countAndFlagsBits = v12;
  v46._object = v12;
  v47 = v19;
  v48 = v19;
  v18[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v18 + 2);
  sub_100936858();
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46._countAndFlagsBits = 0;
  sub_1009366D8();

  sub_100936158();
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46._countAndFlagsBits = a1;
  v46._object = a2;
  sub_1009366D8();

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46 = v42;
  sub_1009366D8();

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46 = v43;
  sub_1009366D8();

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v20 = v40;
  v46 = v40;
  sub_100715738(v40._countAndFlagsBits, v40._object);
  v35 = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(v20._countAndFlagsBits, v20._object);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v21 = v41;
  v46 = v41;
  sub_100715738(v41._countAndFlagsBits, v41._object);
  sub_1009366D8();

  sub_1007156D8(v21._countAndFlagsBits, v21._object);
  v32 = *(v16 + 16);
  v22 = v36;
  v23 = v39;
  v32(v36, v45, v39);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v31 = sub_1007B1924(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009366D8();

  v24 = *(v16 + 8);
  v24(v22, v23);
  v33 = v24;
  v34 = v16 + 8;
  v32(v22, v44, v23);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  sub_1009366D8();

  v24(v22, v23);
  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  *&v46._countAndFlagsBits = a9;
  sub_1009366D8();

  v46._countAndFlagsBits = v38;
  v46._object = v37;

  sub_100936C08(v42);

  sub_100936C08(v43);

  v25 = v40;
  v26 = sub_100716518(v46._countAndFlagsBits, v46._object);
  v28 = v27;

  sub_1000226D4(v18 + 2, v18[5]);
  swift_getKeyPath();
  v46._countAndFlagsBits = v26;
  v46._object = v28;
  sub_1009366D8();

  sub_1007156D8(v41._countAndFlagsBits, v41._object);
  sub_1007156D8(v25._countAndFlagsBits, v25._object);
  v29 = v33;
  v33(v44, v23);
  v29(v45, v23);
  sub_1007156D8(v26, v28);
  return v18;
}

uint64_t *sub_1007A1D6C(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB5418);
  sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v1 + 2);
  sub_100936858();
  sub_1000226D4(v1 + 2, v1[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_100936158();
  swift_beginAccess();
  sub_100012970((v1 + 2));
  sub_100308C84(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_1007A1F0C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007A2014@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007A2124()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1007A21FC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007A2300@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007A240C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1007A24E4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007A25EC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007A26FC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1007A27D4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007A28D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007A29E4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1007A2ABC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007A2BC4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007A2CD4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1007A2DAC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_1007B1924(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007A2EE4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_1007B1924(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007A301C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1007B1924(&qword_100CB5420, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1007A31A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = swift_allocObject();
  sub_1007A323C(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t *sub_1007A323C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = v8;
  v41 = a8;
  v38 = a7;
  v35 = a1;
  v36 = a6;
  v31[0] = a5;
  v34 = a2;
  v15 = *v8;
  v16 = sub_100936038();
  v17 = *(v16 - 8);
  v39 = v16;
  v40 = v17;
  __chkstk_darwin(v16);
  v37 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[5] = sub_100706B30(&qword_100CB5430);
  v19 = sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  v42 = v15;
  v43 = v15;
  v44 = v19;
  v45 = v19;
  v9[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v9 + 2);
  sub_100936858();
  sub_100936158();
  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = a1;
  v43 = a2;
  sub_1009366D8();

  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = a3;
  v43 = a4;
  v32 = a3;
  v33 = a4;
  sub_100715738(a3, a4);
  v31[1] = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(a3, a4);
  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = a5;
  v20 = v36;
  v43 = v36;
  sub_1009366D8();

  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v21 = v38;
  v22 = v41;
  v42 = v38;
  v43 = v41;
  sub_100715738(v38, v41);
  sub_1009366D8();

  sub_1007156D8(v21, v22);
  v23 = v37;
  sub_100936028();
  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB3DA8, &type metadata accessor for Date);
  v24 = v39;
  sub_1009366D8();

  (*(v40 + 8))(v23, v24);
  v42 = v35;
  v43 = v34;

  v46._countAndFlagsBits = v31[0];
  v46._object = v20;
  sub_100936C08(v46);

  v25 = v32;
  v26 = v33;
  v27 = sub_100716518(v42, v43);
  v29 = v28;

  sub_1000226D4(v9 + 2, v9[5]);
  swift_getKeyPath();
  v42 = v27;
  v43 = v29;
  sub_1009366D8();
  sub_1007156D8(v21, v41);
  sub_1007156D8(v25, v26);

  sub_1007156D8(v27, v29);
  return v9;
}

void sub_1007A3700(uint64_t *a1, char a2, void (*a3)(char *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_100022B2C(*a1, (v4 + 40));
    swift_beginAccess();
    sub_100012970(v5 + 16);
    a3(v4 + 40, v5 + 16);
    swift_endAccess();
    sub_100012970(v4);
  }

  else
  {
    swift_beginAccess();
    sub_100012970(v5 + 16);
    a3(v4, v5 + 16);
    swift_endAccess();
  }

  free(v4);
}

uint64_t *sub_1007A37E4(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB5430);
  sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v1 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970((v1 + 2));
  sub_100308C84(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_1007A392C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5438, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5440, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007A3A30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5438, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5440, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007A3B3C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5438, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  sub_100936138();
}

uint64_t sub_1007A3C14()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5438, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5440, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007A3D18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5438, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5440, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007A3E24()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5438, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  sub_100936138();
}

uint64_t sub_1007A3EFC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5438, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5440, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  sub_1000227B4(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007A403C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5438, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5440, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  sub_1000227B4(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007A417C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1007B1924(&qword_100CB5438, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1007A42C4(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  sub_1007A432C(a1, a2, a3, a4);
  return v8;
}

void *sub_1007A432C(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v16 = a3;
  v17 = a4;
  v8 = *v4;
  v9 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v5[6] = sub_100706B30(&qword_100CB5448);
  v18 = type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle;
  v12 = sub_1007B1924(&qword_100CB5440, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  v21 = v8;
  v22 = v8;
  v23 = v12;
  v24 = v12;
  v5[7] = swift_getOpaqueTypeConformance2();
  sub_100014250(v5 + 3);
  sub_100936858();
  *(v5 + 16) = 1;
  sub_100936158();
  sub_1000226D4(v5 + 3, v5[6]);
  swift_getKeyPath();
  v21 = a1;
  v22 = a2;
  sub_1009366D8();

  sub_1000226D4(v5 + 3, v5[6]);
  swift_getKeyPath();
  v21 = v16;
  v22 = v17;
  sub_1009366D8();

  sub_100936028();
  v13 = sub_100936038();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  v21 = v5;
  swift_getKeyPath();
  v19 = v5;
  v20 = v11;
  sub_1007B1924(&qword_100CB5438, v18);
  sub_100936138();

  sub_100021EA4(v11);
  return v5;
}

uint64_t sub_1007A4634(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 48) = sub_100706B30(&qword_100CB5448);
  sub_1007B1924(&qword_100CB5440, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v2 + 24));
  sub_100936858();
  *(v2 + 16) = 1;
  sub_100936158();
  *(v2 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v2 + 24);
  sub_100308C84(a1, v2 + 24);
  swift_endAccess();
  return v2;
}

uint64_t sub_1007A476C(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB5448);
  sub_1007B1924(&qword_100CB5440, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  *(v1 + 16) = 1;
  sub_100936158();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1007A48C8()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007A49D0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007A4AE0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007A4BB8()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007A4CC0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007A4DD0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007A4EA8()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007A4FB0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007A50C0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007A5198()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007A529C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007A53A8()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007A5480()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007A5584@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007A5690()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007A5768()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007A5870@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007A5980()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007A5A58()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1007B1924(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007A5B90()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1007B1924(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007A5CC8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1007A5E50()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007A5F58@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007A6068()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007A6140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1007B1924(a5, a6);
  sub_100768A18();
  sub_1009368C8();
}

uint64_t sub_1007A61DC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007A62E0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007A63EC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007A64BC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007A65C0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007A66CC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007A679C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1000227B4(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007A68DC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1000227B4(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007A6A1C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1007A6B64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1007B1924(a4, a5);
  sub_1000227B4(&qword_100CB3DD8, &qword_100CB3DA8);
  sub_1009368C8();
}

uint64_t sub_1007A6C2C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007A6D30@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007A6E3C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007A6F0C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007A7010@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007A711C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007A71EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1007B1924(a4, a5);
  sub_1009368C8();
}

uint64_t sub_1007A7278()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1000227B4(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007A73B8()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1000227B4(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007A74F8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1007A7640()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_1007A776C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007A78A0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1007A7978()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1000227B4(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007A7AB8()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1000227B4(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007A7BF8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1007A7D40()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1000227B4(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007A7E80()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1000227B4(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007A7FC0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1007A8108()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1000227B4(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007A8248()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_1000227B4(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007A8388(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1007B1924(&qword_100CB5450, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1007A84D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17)
{
  v46 = a8;
  v47 = a7;
  v44[0] = a6;
  v45 = a5;
  v60 = a3;
  v61 = a4;
  v52 = a16;
  v53 = a17;
  v50 = a14;
  v51 = a15;
  v57 = a12;
  v58 = a13;
  v62 = a11;
  v54 = a9;
  v55 = a10;
  v56 = sub_100936038();
  v63 = *(v56 - 8);
  __chkstk_darwin(v56);
  v48 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 48) = sub_100706B30(&qword_100CB5460);
  v22 = sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  v64 = v17;
  v65 = v17;
  v66 = v22;
  v67 = v22;
  *(v21 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v21 + 24));
  sub_100936858();
  *(v21 + 16) = 16843009;
  *(v21 + 20) = 257;
  sub_100936158();
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = a1;
  v65 = a2;
  v59 = a1;
  v49 = a2;
  sub_100715738(a1, a2);
  v23 = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(a1, a2);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v25 = v60;
  v24 = v61;
  v64 = v60;
  v65 = v61;
  sub_100715738(v60, v61);
  sub_1009366D8();

  sub_1007156D8(v25, v24);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = v45;
  v65 = v44[0];
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = v47;
  v65 = v46;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v27 = v54;
  v26 = v55;
  v64 = v54;
  v65 = v55;
  sub_100715738(v54, v55);
  v44[1] = v23;
  sub_1009366D8();

  sub_1007156D8(v27, v26);
  v28 = v63;
  v29 = v48;
  v30 = v56;
  (*(v63 + 16))(v48, v62, v56);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009366D8();

  v31 = *(v28 + 8);
  v63 = v28 + 8;
  v47 = v31;
  v31(v29, v30);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v33 = v57;
  v32 = v58;
  v64 = v57;
  v65 = v58;
  sub_100715738(v57, v58);
  sub_1009366D8();

  sub_1007156D8(v33, v32);
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v50;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v51;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v52;
  sub_1009366D8();

  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  LOBYTE(v64) = v53;
  sub_1009366D8();

  v34 = v59;
  v35 = v49;
  v69 = v59;
  v70 = v49;
  v67 = &type metadata for Data;
  v68 = &protocol witness table for Data;
  v36 = v54;
  v37 = v55;
  v64 = v54;
  v65 = v55;
  v38 = sub_1000226D4(&v64, &type metadata for Data);
  v39 = *v38;
  v40 = v38[1];
  sub_100715738(v34, v35);
  sub_100715738(v36, v37);
  sub_100768308(v39, v40);
  sub_100012970(&v64);
  v41 = v69;
  v42 = v70;
  sub_1000226D4((v21 + 24), *(v21 + 48));
  swift_getKeyPath();
  v64 = v41;
  v65 = v42;
  sub_1009366D8();

  sub_1007156D8(v57, v58);
  sub_1007156D8(v36, v37);
  sub_1007156D8(v60, v61);
  sub_1007156D8(v59, v35);
  v47(v62, v56);
  sub_1007156D8(v41, v42);
  return v21;
}

uint64_t sub_1007A8C8C(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB5460);
  sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  *(v1 + 16) = 16843009;
  *(v1 + 20) = 257;
  sub_100936158();
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1007A8DEC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5468, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5470, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007A8EF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5468, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5470, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007A8FFC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5468, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_100936138();
}

uint64_t sub_1007A90C8()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5470, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_1009368C8();
}

uint64_t sub_1007A9164()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5468, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5470, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007A9268@<X0>(_DWORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5468, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5470, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007A9374()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5468, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_100936138();
}

uint64_t sub_1007A9444()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5470, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_1009368C8();
}

uint64_t sub_1007A94E0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5468, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5470, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_1007B1924(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007A9618()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5468, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5470, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_1007B1924(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007A9750(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1007B1924(&qword_100CB5468, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1007A98D8(uint64_t a1, int a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1007A9930(a1, a2, a3);
  return v6;
}

uint64_t *sub_1007A9930(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v17 = a3;
  v7 = *v3;
  v8 = sub_100936038();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[5] = sub_100706B30(&qword_100CB5478);
  v12 = sub_1007B1924(&qword_100CB5470, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  v18 = v7;
  v19 = v7;
  v20 = v12;
  v21 = v12;
  v4[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v4 + 2);
  sub_100936858();
  sub_100936158();
  sub_1000226D4(v4 + 2, v4[5]);
  swift_getKeyPath();
  v18 = a1;
  sub_1009366D8();

  sub_1000226D4(v4 + 2, v4[5]);
  swift_getKeyPath();
  LODWORD(v18) = a2;
  sub_1009366D8();

  v13 = v17;
  (*(v9 + 16))(v11, v17, v8);
  sub_1000226D4(v4 + 2, v4[5]);
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009366D8();

  v14 = *(v9 + 8);
  v14(v13, v8);
  v14(v11, v8);
  return v4;
}

uint64_t *sub_1007A9C40(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = sub_100706B30(&qword_100CB5478);
  sub_1007B1924(&qword_100CB5470, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  v2[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v2 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970((v2 + 2));
  sub_100308C84(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t sub_1007A9D70()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5480, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5488, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007A9E74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5480, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5488, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007A9F80()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5480, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_1007AA058()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5480, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5488, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007AA15C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5480, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5488, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007AA268()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5480, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_1007AA340()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5480, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5488, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007AA444@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5480, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5488, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007AA550()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5480, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_1007AA628()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5480, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5488, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007AA72C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5480, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5488, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007AA838()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5480, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_1007AA904()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5488, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  sub_1009368C8();
}

uint64_t sub_1007AA9A0(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  sub_1007AAA10(a1, a2);
  return v4;
}

uint64_t *sub_1007AAA10(uint64_t a1, void *a2)
{
  v3 = v2;
  v2[5] = sub_100706B30(&qword_100CB5490);
  sub_1007B1924(&qword_100CB5488, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  v2[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v2 + 2);
  sub_100936858();
  sub_100936158();
  sub_1000226D4(v3 + 2, v3[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v3 + 2, v3[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v3 + 2, v3[5]);
  swift_getKeyPath();
  sub_1009366D8();

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_100936C08(v7);

  sub_1000226D4(v3 + 2, v3[5]);
  swift_getKeyPath();
  sub_1009366D8();

  return v2;
}

uint64_t *sub_1007AACC4(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = sub_100706B30(&qword_100CB5490);
  sub_1007B1924(&qword_100CB5488, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  v2[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v2 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970((v2 + 2));
  sub_100308C84(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t sub_1007AADF4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007AAEF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007AB004()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_1007AB0D0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_1009368C8();
}

uint64_t sub_1007AB16C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007AB270@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007AB37C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_1007AB454()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_1000227B4(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007AB594()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_1000227B4(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007AB6D4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100012D50(a1, &v9[-v5], &qword_100CB4AC0);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1007AB81C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_1007B1924(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007AB954()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_1007B1924(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007ABA8C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1007ABC14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1007B1924(a4, a5);
  sub_1007B1924(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009368C8();
}

uint64_t sub_1007ABCD4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007ABDD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007ABEE4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_1007ABFB0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_1009368C8();
}

uint64_t sub_1007AC04C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007AC150@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007AC25C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_1007AC328()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_1009368C8();
}

uint64_t sub_1007AC3C4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_1007AC4F0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007AC624()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_1007AC6FC()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_1007AC828@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007AC95C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB5498, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_1007ACA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1007B1924(a5, a6);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009368C8();
}

uint64_t sub_1007ACAF4(void *a1, void *a2, uint64_t a3, char *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v30 = a7;
  v31 = a8;
  v28 = a3;
  v29 = a6;
  v26 = a1;
  v27 = a5;
  v36 = a4;
  v33 = a10;
  v34 = a11;
  v32 = a9;
  v35 = sub_100936038();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  v19 = swift_allocObject();
  *(v19 + 48) = sub_100706B30(&qword_100CB54A8);
  v20 = sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  v38 = v11;
  v39 = v11;
  v40 = v20;
  v41 = v20;
  *(v19 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v19 + 24));
  sub_100936858();
  sub_100936158();
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v26;
  v39 = a2;
  sub_1009366D8();

  sub_100012D50(a3, v18, &qword_100CB4AC0);
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v26 = &protocol conformance descriptor for <A> A?;
  sub_1000227B4(&qword_100CB3DD8, &qword_100CB3DA8);
  sub_1009366D8();

  sub_100021EA4(v18);
  *(v19 + 16) = 0;
  v21 = v37;
  v22 = v35;
  (*(v37 + 16))(v15, v36, v35);
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009366D8();

  v23 = v21 + 8;
  v24 = *(v21 + 8);
  v37 = v23;
  v24(v15, v22);
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v27;
  sub_1009366D8();

  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v29;
  sub_1009366D8();

  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v30;
  v39 = v31;
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  *(v19 + 17) = 0;
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v32;
  v39 = v33;
  sub_1009366D8();

  *(v19 + 18) = 0;
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  v38 = v34;
  sub_1009366D8();

  v24(v36, v35);
  sub_100021EA4(v28);
  return v19;
}

uint64_t sub_1007AD0C8(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB54A8);
  sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  *(v1 + 16) = 257;
  *(v1 + 18) = 1;
  sub_100936158();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1007AD230()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007AD334@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007AD440()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007AD518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1007B1924(a5, a6);
  sub_1009368C8();
}

uint64_t sub_1007AD5B0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007AD6B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007AD7C0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007AD88C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007AD928()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007ADA2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007ADB38()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007ADC04()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007ADCA0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007ADDA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007ADEB0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007ADF7C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007AE018()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007AE11C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007AE228()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007AE2F4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007AE390()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007AE494@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007AE5A0()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007AE66C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007AE708()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007AE80C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007AE918()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007AE9E4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007AEA80()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007AEB84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007AEC90()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007AED5C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007AEDF8()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007AEEFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007AF008()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007AF0D4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007AF170()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007AF274@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007AF380()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007AF44C()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007AF4E8()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007AF5EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007AF6F8()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B0, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007AF7C4()
{
  swift_getKeyPath();
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t *sub_1007AF860()
{
  v0 = swift_allocObject();
  v0[5] = sub_100706B30(&qword_100CB54C0);
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  v0[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v0 + 2);
  sub_100936858();
  sub_100936158();
  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4(v0 + 2, v0[5]);
  swift_getKeyPath();
  sub_1009366D8();

  return v0;
}

uint64_t sub_1007AFD10(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t *sub_1007AFD60(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB54C0);
  sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v1 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970((v1 + 2));
  sub_100308C84(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

void (*sub_1007AFEEC(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
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
  sub_100022B2C(v1 + 24, v4);
  return sub_1007B8E24;
}

uint64_t sub_1007B0068(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007B0100(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
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
  sub_100022B2C(v1 + 24, v4);
  return sub_1007B8E24;
}

uint64_t sub_1007B027C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007B032C(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
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
  sub_100022B2C(v1 + 16, v4);
  return sub_1007B8E28;
}

uint64_t sub_1007B04A8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007B0540(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
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
  sub_100022B2C(v1 + 16, v4);
  return sub_1007B8E28;
}

uint64_t sub_1007B06BC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007B0754(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
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
  sub_100022B2C(v1 + 24, v4);
  return sub_1007B8E24;
}

uint64_t sub_1007B08D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007B1924(&qword_100CB5440, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007B0968(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
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
  sub_100022B2C(v1 + 24, v4);
  return sub_1007B8E24;
}

uint64_t sub_1007B0AE4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007B0B94(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
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
  sub_100022B2C(v1 + 16, v4);
  return sub_1007B8E28;
}

uint64_t sub_1007B0D10(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007B1924(&qword_100CB5470, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t *sub_1007B0DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t *))
{
  v10 = swift_allocObject();
  v10[5] = sub_100706B30(a4);
  v10[6] = swift_getOpaqueTypeConformance2();
  sub_100014250(v10 + 2);
  sub_100936858();
  sub_100936158();
  swift_beginAccess();
  sub_100012970((v10 + 2));
  a7(a1, v10 + 2);
  swift_endAccess();
  return v10;
}

void (*sub_1007B0EC8(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
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
  sub_100022B2C(v1 + 16, v4);
  return sub_1007B8E28;
}

uint64_t sub_1007B1044(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007B1924(&qword_100CB5488, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_1007B10DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_100012970(v4 + 24);
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_1007B1144(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
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
  sub_100022B2C(v1 + 24, v4);
  return sub_1007B8E24;
}

uint64_t sub_1007B12C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_1007B1358(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = swift_allocObject();
  a4(a1);
  return v6;
}

uint64_t sub_1007B13A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_100012970(v4 + 16);
  a4(a1, v4 + 16);
  return swift_endAccess();
}

void (*sub_1007B1410(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
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
  sub_100022B2C(v1 + 16, v4);
  return sub_1007B8E28;
}

uint64_t sub_1007B158C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_1007B160C()
{
  sub_100706B30(&unk_100CB4A00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009B0EE0;
  v1 = type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice(0);
  v2 = sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable(0);
  v4 = sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession(0);
  v6 = sub_1007B1924(&qword_100CB5410, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSession);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity(0);
  v8 = sub_1007B1924(&qword_100CB5428, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDPublicIdentity);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution(0);
  v10 = sub_1007B1924(&qword_100CB5458, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDSenderKeyDistribution);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex(0);
  v12 = sub_1007B1924(&qword_100CB5470, type metadata accessor for SDPersistenceSchemaV3.IDSGroupEncryptionKeyRollIndex);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  v13 = type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle(0);
  v14 = sub_1007B1924(&qword_100CB5440, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDShortHandle);
  *(v0 + 128) = v13;
  *(v0 + 136) = v14;
  v15 = type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle(0);
  v16 = sub_1007B1924(&qword_100CB5488, type metadata accessor for SDPersistenceSchemaV3.IDSOffGridDeliveryDonatedHandle);
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  v17 = type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent(0);
  v18 = sub_1007B1924(&qword_100CB54A0, type metadata accessor for SDPersistenceSchemaV3.IDSRegistrationEvent);
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  v19 = type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount(0);
  v20 = sub_1007B1924(&qword_100CB54B8, type metadata accessor for SDPersistenceSchemaV3.IDSQualifiedContactsCount);
  *(v0 + 176) = v19;
  *(v0 + 184) = v20;
  return v0;
}

uint64_t sub_1007B1924(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1007B1B94()
{
  result = qword_100CB5398;
  if (!qword_100CB5398)
  {
    sub_1007147D0(&qword_100CB5390);
    sub_10071499C(&qword_100CB53A0, &qword_100CB53A8);
    sub_1007B1924(&qword_100CB53B0, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB5398);
  }

  return result;
}

uint64_t sub_1007B1C94()
{
  v0 = sub_100936978();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1009AD830;
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  v5 = sub_100936A28();
  swift_allocObject();
  v6 = sub_100936A38();
  *(&v11 + 1) = v5;
  v12 = sub_1007B1924(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  *&v10 = v6;
  sub_1009369B8();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v14 + 1) = sub_100706B30(&qword_100CB49F0);
  *&v13 = &_swiftEmptyArrayStorage;
  (*(v1 + 104))(v3, enum case for Schema.Relationship.DeleteRule.nullify(_:), v0);
  v7 = sub_100936988();
  swift_allocObject();
  v8 = sub_100936998();
  *(&v11 + 1) = v7;
  v12 = sub_1007B1924(&qword_100CB49F8, &type metadata accessor for Schema.Relationship);
  *&v10 = v8;
  sub_1009369B8();
  return v4;
}

unint64_t sub_1007B25DC()
{
  result = qword_100CB53C8;
  if (!qword_100CB53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB53C8);
  }

  return result;
}

unint64_t sub_1007B2660()
{
  result = qword_100CB53D0;
  if (!qword_100CB53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB53D0);
  }

  return result;
}

unint64_t sub_1007B2718()
{
  result = qword_100CB53E0;
  if (!qword_100CB53E0)
  {
    sub_1007147D0(&qword_100CB53D8);
    sub_10071499C(&qword_100CB53E8, &qword_100CB53F0);
    sub_1007B1924(&qword_100CB5388, type metadata accessor for SDPersistenceSchemaV3.IDSQuerySDAddressable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB53E0);
  }

  return result;
}

uint64_t sub_1007B2818()
{
  v10 = sub_100936978();
  v0 = *(v10 - 8);
  __chkstk_darwin(v10);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1009AD8F0;
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  v4 = sub_100936A28();
  swift_allocObject();
  v5 = sub_100936A38();
  *(&v12 + 1) = v4;
  v13 = sub_1007B1924(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  *&v11 = v5;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v15 + 1) = &type metadata for Bool;
  LOBYTE(v14) = 0;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v15 + 1) = &type metadata for Bool;
  LOBYTE(v14) = 0;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v15 + 1) = &type metadata for Bool;
  LOBYTE(v14) = 0;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v15 + 1) = sub_100706B30(&qword_100CB49F0);
  *&v14 = &_swiftEmptyArrayStorage;
  swift_getKeyPath();
  (*(v0 + 104))(v2, enum case for Schema.Relationship.DeleteRule.nullify(_:), v10);
  v6 = sub_100936988();
  swift_allocObject();
  v7 = sub_100936998();
  *(&v12 + 1) = v6;
  v13 = sub_1007B1924(&qword_100CB49F8, &type metadata accessor for Schema.Relationship);
  *&v11 = v7;
  sub_1009369B8();
  return v3;
}

unint64_t sub_1007B2F58()
{
  result = qword_100CC4620[0];
  if (!qword_100CC4620[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC4620);
  }

  return result;
}

uint64_t sub_1007B2FAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100706B30(&unk_100CB5F28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = a1[3];
  v36 = a1;
  sub_1000226D4(a1, v9);
  sub_1007B2F58();
  sub_1009376E8();
  if (v2)
  {
    v37 = v2;
    v35 = 0;
    sub_100012970(v36);
    sub_10001C370(0, 0xF000000000000000);
    sub_10001C370(0, 0xF000000000000000);
    sub_10001C370(0, 0xF000000000000000);
    sub_10001C370(0, 0xF000000000000000);
    sub_10001C370(v35, 0xF000000000000000);
    return sub_10001C370(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v38) = 0;
    sub_100768AE4();
    sub_100937468();
    v34 = v45;
    sub_10001C370(0, 0xF000000000000000);
    LOBYTE(v38) = 1;
    sub_100937468();
    v11 = *(&v45 + 1);
    v33 = v45;
    sub_10001C370(0, 0xF000000000000000);
    LOBYTE(v45) = 2;
    v12 = sub_1009374B8();
    LOBYTE(v45) = 3;
    v13 = sub_1009374A8();
    LOBYTE(v38) = 4;
    sub_100937468();
    v60 = v13;
    LODWORD(v35) = v12;
    v32 = *(&v45 + 1);
    v14 = v45;
    sub_10001C370(0, 0xF000000000000000);
    LOBYTE(v38) = 5;
    sub_100937468();
    v30 = v6;
    v31 = __PAIR128__(*(&v45 + 1), v14);
    v15 = v45;
    sub_10001C370(0, 0xF000000000000000);
    LOBYTE(v38) = 6;
    sub_100937468();
    v28 = a2;
    v29 = *(&v45 + 1);
    v16 = v45;
    sub_10001C370(0, 0xF000000000000000);
    v61 = 7;
    sub_100937468();
    v37 = 0;
    (*(v30 + 8))(v8, v5);
    v17 = v58;
    v18 = v59;
    sub_10001C370(0, 0xF000000000000000);
    v19 = v34;
    v38 = v34;
    v20 = v33;
    *&v39 = v33;
    *(&v39 + 1) = v11;
    LOWORD(v40) = v35;
    BYTE2(v40) = v60;
    v21 = v31;
    *(&v40 + 1) = v31;
    v22 = v32;
    *&v41 = v32;
    *(&v41 + 1) = v15;
    *&v42 = *(&v31 + 1);
    *(&v42 + 1) = v16;
    *&v43 = v29;
    *(&v43 + 1) = v17;
    v44 = v18;
    sub_1007B26E0(&v38, &v45);
    sub_100012970(v36);
    v45 = __PAIR128__(*(&v34 + 1), v19);
    v46 = v20;
    v47 = v11;
    v48 = v35;
    v49 = v60;
    v50 = v21;
    v51 = v22;
    v52 = v15;
    v53 = *(&v31 + 1);
    v54 = v16;
    v55 = v29;
    v56 = v17;
    v57 = v18;
    result = sub_1007B2630(&v45);
    v23 = v43;
    v24 = v28;
    *(v28 + 64) = v42;
    *(v24 + 80) = v23;
    *(v24 + 96) = v44;
    v25 = v39;
    *v24 = v38;
    *(v24 + 16) = v25;
    v26 = v41;
    *(v24 + 32) = v40;
    *(v24 + 48) = v26;
  }

  return result;
}

uint64_t sub_1007B3A30()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD900;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007B1924(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1007B40E8()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD840;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007B1924(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1007B45D4()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AC7A0;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007B1924(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1007B4F80()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009B0EF0;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007B1924(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1007B57B0()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AC7A0;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007B1924(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1007B5B8C()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD150;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007B1924(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1007B6114()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD940;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007B1924(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1007B679C()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD8E0;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_1007B1924(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1007B7B1C()
{
  result = sub_100936168();
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

uint64_t sub_1007B7BF4()
{
  result = sub_100936168();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1007B7CE4()
{
  result = sub_100936168();
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

uint64_t sub_1007B7DB4()
{
  result = sub_100936168();
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

uint64_t sub_1007B7EA8()
{
  result = sub_100936168();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1007B7FA4()
{
  result = sub_100936168();
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

uint64_t sub_1007B8068()
{
  result = sub_100936168();
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

uint64_t sub_1007B8130()
{
  result = sub_100936168();
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

uint64_t sub_1007B820C()
{
  result = sub_100936168();
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

unint64_t sub_1007B82EC()
{
  result = qword_100CC6510[0];
  if (!qword_100CC6510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC6510);
  }

  return result;
}

unint64_t sub_1007B8344()
{
  result = qword_100CC6620;
  if (!qword_100CC6620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6620);
  }

  return result;
}

unint64_t sub_1007B839C()
{
  result = qword_100CC6628[0];
  if (!qword_100CC6628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC6628);
  }

  return result;
}

uint64_t sub_1007B8580(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  swift_getKeyPath();
  sub_1007B1924(a2, a3);
  sub_100768A18();
  sub_1009368C8();
}

uint64_t sub_1007B866C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  swift_getKeyPath();
  sub_1007B1924(a2, a3);
  sub_1009368C8();
}

char *sub_1007B8E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1007C9A6C(6);
  v7 = OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_lock;
  sub_100706B30(&unk_100CB3540);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&v3[v7] = v8;
  *&v3[OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_continuations] = &_swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_negotiators;
  *&v3[v9] = sub_1007BDA34(&_swiftEmptyArrayStorage);
  *&v3[OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_cleanups] = &_swiftEmptyArrayStorage;
  v29 = a1;
  sub_100022B2C(a1, &v3[OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_localIdentityProvider]);
  sub_100022B2C(a2, &v3[OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_participantIdentityProvider]);
  sub_100022B2C(a3, &v3[OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_metadataProvider]);
  v33.receiver = v3;
  v33.super_class = type metadata accessor for IDSGlobalLinkP2PKeyNegotiatorController();
  v10 = objc_msgSendSuper2(&v33, "init");
  sub_100022B2C(v10 + OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_localIdentityProvider, v30);
  v11 = v32;
  sub_1000226D4(v30, v31);
  v12 = *(v11 + 24);
  v13 = v10;
  v12();
  sub_100012970(v30);
  sub_100022B2C(&v13[OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_metadataProvider], v30);
  v14 = v31;
  v15 = v32;
  sub_1000226D4(v30, v31);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = *(v15 + 24);

  v18 = v17(sub_1007BDB88, v16, v14, v15);
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v20;
  v22 = OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_cleanups;
  swift_beginAccess();
  v23 = *&v13[v22];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v13[v22] = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_100712B84(0, v23[2] + 1, 1, v23);
    *&v13[v22] = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = sub_100712B84((v25 > 1), v26 + 1, 1, v23);
  }

  v23[2] = v26 + 1;
  v27 = &v23[2 * v26];
  v27[4] = sub_100715970;
  v27[5] = v21;
  *&v13[v22] = v23;
  swift_endAccess();
  sub_100012970(a3);
  sub_100012970(a2);
  sub_100012970(v29);

  sub_100012970(v30);
  return v13;
}

id sub_1007B9188()
{
  v1 = v0;
  v2 = sub_1009364D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_logger, v2);
  v6 = sub_1009364B8();
  v7 = sub_100936F18();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10001273C(0x74696E696564, 0xE600000000000000, v23);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: deinitializing", v8, 0xCu);
    sub_100012970(v9);
  }

  (*(v3 + 8))(v5, v2);
  sub_100022B2C(v1 + OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_localIdentityProvider, v23);
  v10 = v23[4];
  sub_1000226D4(v23, v23[3]);
  v11 = *(v10 + 32);
  v12 = v1;
  v11();

  sub_100012970(v23);
  v13 = OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_cleanups;
  swift_beginAccess();
  v14 = *&v12[v13];
  v15 = *(v14 + 16);
  if (v15)
  {

    v16 = v14 + 40;
    do
    {
      v17 = *(v16 - 8);

      v17(v18);

      v16 += 16;
      --v15;
    }

    while (v15);
  }

  v19 = type metadata accessor for IDSGlobalLinkP2PKeyNegotiatorController();
  v22.receiver = v12;
  v22.super_class = v19;
  return objc_msgSendSuper2(&v22, "dealloc");
}

uint64_t sub_1007B9514(char *a1, unint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v157 = a1;
  v9 = sub_100706B30(&unk_100CB6040);
  __chkstk_darwin(v9 - 8);
  v164 = &v147 - v10;
  v165 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  v159 = *(v165 - 8);
  __chkstk_darwin(v165);
  v162 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100706B30(&qword_100CB3250);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v160 = &v147 - v17;
  v18 = __chkstk_darwin(v16);
  v161 = (&v147 - v19);
  __chkstk_darwin(v18);
  v21 = &v147 - v20;
  v22 = OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_lock;
  v23 = *(v5 + OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_lock);

  os_unfair_lock_lock(v23 + 4);

  v24 = OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_logger;

  v25 = a3;

  v166 = v24;
  v26 = sub_1009364B8();
  v27 = sub_100936F18();

  v28 = os_log_type_enabled(v26, v27);
  v167 = v5;
  v163 = a4;
  v158 = v22;
  v154 = a2;
  v152 = v25;
  v156 = v15;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v170[0] = swift_slowAlloc();
    *v29 = 136315906;
    *(v29 + 4) = sub_10001273C(0xD000000000000038, 0x8000000100B02290, v170);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_10001273C(v157, a2, v170);
    *(v29 + 22) = 2112;
    *(v29 + 24) = v25;
    *v30 = v25;
    *(v29 + 32) = 2080;
    sub_1007BDD80();
    v31 = v25;
    v32 = sub_100936CF8();
    v34 = sub_10001273C(v32, v33, v170);

    *(v29 + 34) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s: forSession:%s localPushToken:%@ remotePushToken:%s", v29, 0x2Au);
    sub_100013814(v30, &qword_100CB36B0);
    v5 = v167;

    swift_arrayDestroy();
  }

  v35 = (v5 + OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_localIdentityProvider);
  v36 = *(v5 + OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_localIdentityProvider + 24);
  v37 = *(v5 + OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_localIdentityProvider + 32);
  sub_1000226D4((v5 + OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_localIdentityProvider), v36);
  (*(v37 + 8))(v36, v37);
  v38 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  v39 = *(*(v38 - 8) + 48);
  if ((v39)(v21, 1, v38) == 1)
  {
    sub_100013814(v21, &qword_100CB3250);
    v40 = sub_1009364B8();
    v41 = sub_100936F18();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v170[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_10001273C(0xD000000000000038, 0x8000000100B02290, v170);
      _os_log_impl(&_mh_execute_header, v40, v41, "%s: no localPublicPreKey ", v42, 0xCu);
      sub_100012970(v43);
    }

LABEL_10:

    v54 = 0;
    goto LABEL_11;
  }

  v44 = v162;
  sub_1007BE060(v21, v162);
  sub_1007BE0C4(v21, type metadata accessor for IDSGroupEncryptionFullIdentity);
  v45 = *(v44 + *(v165 + 28));
  sub_1007BE0C4(v44, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  v46 = *(v35 + 3);
  v47 = *(v35 + 4);
  sub_1000226D4(v35, v46);
  v48 = *(v47 + 8);
  v49 = v47;
  v50 = v161;
  v48(v46, v49);
  if ((v39)(v50, 1, v38) == 1)
  {
    sub_100013814(v50, &qword_100CB3250);
    v40 = sub_1009364B8();
    v51 = sub_100936F18();
    if (os_log_type_enabled(v40, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v170[0] = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_10001273C(0xD000000000000038, 0x8000000100B02290, v170);
      _os_log_impl(&_mh_execute_header, v40, v51, "%s: no localPrivatePreKey", v52, 0xCu);
      sub_100012970(v53);
    }

    goto LABEL_10;
  }

  v58 = *(v50 + *(v38 + 20));
  sub_1007BE0C4(v50, type metadata accessor for IDSGroupEncryptionFullIdentity);
  v59 = v45;
  v60 = v58;
  v149 = v59;
  v148 = v60;
  v63 = nullsub_23(v59, v60, v61, v62);
  v65 = v64;
  v66 = v63;
  v150 = v65;
  v67 = &_swiftEmptyArrayStorage;
  v151 = sub_1007BCA4C(0, 1, 1, &_swiftEmptyArrayStorage);
  v69 = *(v151 + 2);
  v68 = *(v151 + 3);
  v70 = (v69 + 1);
  if (v69 >= v68 >> 1)
  {
    goto LABEL_43;
  }

LABEL_14:
  v71 = v160;
  v72 = v151;
  *(v151 + 2) = v70;
  v73 = &v72[16 * v69];
  v147 = v66;
  v74 = v150;
  *(v73 + 4) = v66;
  *(v73 + 5) = v74;
  v69 = *(v35 + 3);
  v66 = *(v35 + 4);
  v70 = sub_1000226D4(v35, v69);
  (*(v66 + 2))(v69, v66);
  if ((v39)(v71, 1, v38) == 1)
  {
    sub_100013814(v71, &qword_100CB3250);
    goto LABEL_21;
  }

  v76 = v162;
  sub_1007BE060(v71, v162);
  sub_1007BE0C4(v71, type metadata accessor for IDSGroupEncryptionFullIdentity);
  v77 = *(v76 + *(v165 + 28));
  sub_1007BE0C4(v76, type metadata accessor for IDSGroupEncryptionPublicIdentity);
  v69 = *(v35 + 3);
  v66 = *(v35 + 4);
  v78 = sub_1000226D4(v35, v69);
  v79 = v156;
  v70 = v78;
  (*(v66 + 2))(v69, v66);
  if ((v39)(v79, 1, v38) == 1)
  {

    sub_100013814(v79, &qword_100CB3250);
    goto LABEL_20;
  }

  v80 = *(v79 + *(v38 + 20));
  sub_1007BE0C4(v79, type metadata accessor for IDSGroupEncryptionFullIdentity);
  v70 = v77;
  v66 = v80;
  v35 = nullsub_23(v70, v66, v81, v82);
  v5 = v83;
  v69 = *(v151 + 2);
  v84 = *(v151 + 3);
  v85 = (v69 + 1);
  if (v69 >= v84 >> 1)
  {
    goto LABEL_81;
  }

LABEL_19:

  v86 = v151;
  *(v151 + 2) = v85;
  v87 = &v86[16 * v69];
  *(v87 + 4) = v35;
  *(v87 + 5) = v5;
LABEL_20:
  v5 = v167;
LABEL_21:
  v171 = v67;
  v88 = v163;
  if (v163 >> 62)
  {
    v89 = sub_1009373F8();
    if (v89)
    {
LABEL_23:
      v67 = 0;
      v38 = v5 + OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_participantIdentityProvider;
      v162 = v88 & 0xC000000000000001;
      v153 = v88 & 0xFFFFFFFFFFFFFF8;
      v156 = ":remotePublicKey:)";
      v35 = &_swiftEmptyArrayStorage;
      v161 = (v159 + 48);
      *&v75 = 136315394;
      v155 = v75;
      v159 = v89;
      while (1)
      {
        if (v162)
        {
          v90 = sub_100937268();
          v39 = (v67 + 1);
          if (__OFADD__(v67, 1))
          {
            goto LABEL_41;
          }
        }

        else
        {
          v68 = *(v153 + 16);
          if (v67 >= v68)
          {
            goto LABEL_42;
          }

          v90 = *(v88 + 8 * v67 + 32);
          v39 = (v67 + 1);
          if (__OFADD__(v67, 1))
          {
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            v151 = sub_1007BCA4C((v68 > 1), v70, 1, v151);
            goto LABEL_14;
          }
        }

        v160 = v35;
        v91 = v90;
        v92 = sub_1009364B8();
        v93 = sub_100936F18();

        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v170[0] = v96;
          *v94 = v155;
          *(v94 + 4) = sub_10001273C(0xD000000000000038, v156 | 0x8000000000000000, v170);
          *(v94 + 12) = 2112;
          *(v94 + 14) = v91;
          *v95 = v91;
          v97 = v91;
          _os_log_impl(&_mh_execute_header, v92, v93, "%s: getting remotePublicPreKey for push token %@", v94, 0x16u);
          sub_100013814(v95, &qword_100CB36B0);

          sub_100012970(v96);
          v98 = v167;

          v88 = v163;
        }

        else
        {
          v98 = v5;
        }

        v99 = *(v38 + 24);
        v100 = *(v38 + 32);
        sub_1000226D4(v38, v99);
        v101 = v164;
        (*(v100 + 8))(v91, v99, v100);
        v102 = v165;
        if ((*v161)(v101, 1, v165) == 1)
        {
          sub_100013814(v101, &unk_100CB6040);

          v103 = v91;
          v5 = v98;
          v104 = sub_1009364B8();
          v105 = sub_100936F18();

          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v170[0] = v108;
            *v106 = v155;
            *(v106 + 4) = sub_10001273C(0xD000000000000038, v156 | 0x8000000000000000, v170);
            *(v106 + 12) = 2112;
            *(v106 + 14) = v103;
            *v107 = v103;
            v109 = v103;
            _os_log_impl(&_mh_execute_header, v104, v105, "%s: no remotePublicPreKey for push token %@", v106, 0x16u);
            sub_100013814(v107, &qword_100CB36B0);

            sub_100012970(v108);
            v5 = v167;
          }

          else
          {
          }

LABEL_70:

          v55 = v158;
          v54 = 0;
          goto LABEL_12;
        }

        v69 = *&v101[*(v102 + 28)];
        sub_1007BE0C4(v101, type metadata accessor for IDSGroupEncryptionPublicIdentity);
        v66 = v69;
        v70 = &v171;
        sub_100936CC8();
        v5 = v98;
        if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v69 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100936D18();
        }

        sub_100936D38();

        v35 = v171;
        ++v67;
        if (v39 == v159)
        {
          goto LABEL_46;
        }
      }
    }
  }

  else
  {
    v89 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v89)
    {
      goto LABEL_23;
    }
  }

  v35 = &_swiftEmptyArrayStorage;
LABEL_46:
  v110 = v157;
  v111 = v154;
  v70 = v5;
  v39 = sub_1007BBEBC(v157, v154, v149, v35);
  v165 = *(v39 + 2);
  if (!v165)
  {

    v129 = sub_1009364B8();
    v130 = sub_100936F18();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v170[0] = v132;
      *v131 = 136315138;
      *(v131 + 4) = sub_10001273C(0xD000000000000038, 0x8000000100B02290, v170);
      _os_log_impl(&_mh_execute_header, v129, v130, "%s: could not build key combos", v131, 0xCu);
      sub_100012970(v132);
    }

    goto LABEL_70;
  }

  v69 = OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_negotiators;
  swift_beginAccess();
  v85 = 0;
  v67 = (v39 + 40);
  while (1)
  {
    v84 = *(v39 + 2);
    if (v85 >= v84)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      v151 = sub_1007BCA4C((v84 > 1), v85, 1, v151);
      goto LABEL_19;
    }

    v70 = *(v5 + v69);
    if (v70[2])
    {
      break;
    }

LABEL_48:
    ++v85;
    v67 += 16;
    if (v165 == v85)
    {
      v70 = type metadata accessor for IDSGlobalLinkP2PKeyNegotiator();

      v115 = v152;
      v5 = v163;

      v164 = sub_1007C1908(v110, v111, v115, v151, v5, v35);
      v66 = 0;
      v116 = (v39 + 40);
      while (1)
      {
        v84 = *(v39 + 2);
        if (v66 >= v84)
        {
          goto LABEL_78;
        }

        v35 = *(v116 - 1);
        v5 = *v116;
        v67 = v167;
        swift_beginAccess();
        sub_100715738(v35, v5);
        sub_100715738(v35, v5);
        v85 = v164;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v168 = *(v67 + v69);
        v70 = v168;
        *(v67 + v69) = 0x8000000000000000;
        v120 = sub_1007BCD48(v35, v5);
        v122 = v70[2];
        v123 = (v121 & 1) == 0;
        v124 = __OFADD__(v122, v123);
        v84 = v122 + v123;
        if (v124)
        {
          goto LABEL_79;
        }

        v67 = v121;
        if (v70[3] < v84)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_62;
        }

        v128 = v120;
        sub_1007BD8C8();
        v120 = v128;
        v70 = v168;
        if ((v67 & 1) == 0)
        {
LABEL_63:
          v70[(v120 >> 6) + 8] |= 1 << v120;
          v126 = (v70[6] + 16 * v120);
          *v126 = v35;
          v126[1] = v5;
          *(v70[7] + 8 * v120) = v85;
          v127 = v70[2];
          v124 = __OFADD__(v127, 1);
          v84 = v127 + 1;
          if (v124)
          {
            goto LABEL_80;
          }

          v70[2] = v84;
          goto LABEL_55;
        }

LABEL_54:
        v117 = v70[7];
        v118 = *(v117 + 8 * v120);
        *(v117 + 8 * v120) = v85;

        sub_1007156D8(v35, v5);
LABEL_55:
        ++v66;
        *(v167 + v69) = v70;
        swift_endAccess();
        sub_1007156D8(v35, v5);
        v116 += 2;
        if (v165 == v66)
        {

          v54 = v85;
          v5 = v167;
          v133 = sub_1009364B8();
          v134 = sub_100936F18();

          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            v137 = swift_slowAlloc();
            v169[0] = v137;
            *v135 = 136315394;
            *(v135 + 4) = sub_10001273C(0xD000000000000038, 0x8000000100B02290, v169);
            *(v135 + 12) = 2112;
            *(v135 + 14) = v54;
            *v136 = v54;
            v138 = v54;
            _os_log_impl(&_mh_execute_header, v133, v134, "%s: %@", v135, 0x16u);
            sub_100013814(v136, &qword_100CB36B0);

            sub_100012970(v137);
            v5 = v167;
          }

          goto LABEL_11;
        }
      }

      sub_1007BD624(v84, isUniquelyReferenced_nonNull_native);
      v120 = sub_1007BCD48(v35, v5);
      if ((v67 & 1) != (v125 & 1))
      {
        result = sub_1009375D8();
        __break(1u);
        return result;
      }

LABEL_62:
      v70 = v168;
      if ((v67 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_54;
    }
  }

  v112 = *(v67 - 8);
  v66 = *v67;
  sub_100715738(v112, *v67);

  v113 = sub_1007BCD48(v112, v66);
  if ((v114 & 1) == 0)
  {
    sub_1007156D8(v112, v66);

    v5 = v167;
    goto LABEL_48;
  }

  v139 = v113;

  v140 = *(v70[7] + 8 * v139);

  v54 = v140;
  v141 = sub_1009364B8();
  v142 = sub_100936F18();

  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v169[0] = v145;
    *v143 = 136315394;
    *(v143 + 4) = sub_10001273C(0xD000000000000038, 0x8000000100B02290, v169);
    *(v143 + 12) = 2112;
    *(v143 + 14) = v54;
    *v144 = v54;
    v146 = v54;
    _os_log_impl(&_mh_execute_header, v141, v142, "%s: already have negotiator: %@", v143, 0x16u);
    sub_100013814(v144, &qword_100CB36B0);

    sub_100012970(v145);
  }

  sub_1007156D8(v112, v66);
  v5 = v167;
LABEL_11:
  v55 = v158;
LABEL_12:
  v56 = *(v5 + v55);

  os_unfair_lock_unlock(v56 + 4);

  return v54;
}

uint64_t sub_1007BAA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v4;
  v9[5] = a1;
  v9[6] = a2;

  v10 = v4;

  sub_100936188();
}

uint64_t sub_1007BAB3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v10 = (*((swift_isaMask & *a3) + 0x120) + **((swift_isaMask & *a3) + 0x120));
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_1007BAC88;

  return v10(a4, a5);
}

uint64_t sub_1007BAC88(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1007BAD88, 0, 0);
}

uint64_t sub_1007BAD88()
{
  (*(v0 + 16))(*(v0 + 40));
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007BAEF8(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return _swift_task_switch(sub_1007BAF1C, 0, 0);
}

uint64_t sub_1007BAF1C()
{
  v46 = v0;
  v0[15] = OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_logger;

  v1 = sub_1009364B8();
  v2 = sub_100936F18();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10001273C(0xD00000000000001ALL, 0x8000000100B020F0, &v45);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10001273C(v4, v3, &v45);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: p2p negotiator forGroup:%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v6 = OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_metadataProvider;
  v0[16] = 0x8000000100B020F0;
  v0[17] = v6;
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];
  sub_100022B2C(v8 + v6, (v0 + 2));
  v10 = v0[5];
  v11 = v0[6];
  sub_1000226D4(v0 + 2, v10);
  v12 = (*(v11 + 16))(v10, v11);
  v0[18] = v12;
  sub_100012970((v0 + 2));
  sub_100022B2C(v8 + v6, (v0 + 7));
  v13 = v0[10];
  v14 = v0[11];
  sub_1000226D4(v0 + 7, v13);
  v15 = (*(v14 + 8))(v9, v7, v13, v14);
  sub_100012970((v0 + 7));
  if (v12)
  {
    v16 = v12;

    v17 = v16;

    v18 = sub_1009364B8();
    v19 = sub_100936F18();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[16];
      v43 = v0[12];
      v44 = v0[13];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v21 = 136315906;
      *(v21 + 4) = sub_10001273C(0xD00000000000001ALL, v20, &v45);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_10001273C(v43, v44, &v45);
      *(v21 + 22) = 2112;
      *(v21 + 24) = v17;
      *v22 = v12;
      *(v21 + 32) = 2080;
      sub_1007BDD80();
      v23 = v17;
      v24 = sub_100936CF8();
      v26 = sub_10001273C(v24, v25, &v45);

      *(v21 + 34) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s: p2p negotiator forGroup:%s local:%@ remotes:%s", v21, 0x2Au);
      sub_100013814(v22, &qword_100CB36B0);

      swift_arrayDestroy();
    }

    v27 = sub_1007B9514(v0[12], v0[13], v17, v15);

    if (v27)
    {

      v28 = v0[1];

      return v28(v27);
    }
  }

  else
  {

    v30 = sub_1009364B8();
    v31 = sub_100936F18();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v0[16];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_10001273C(0xD00000000000001ALL, v32, &v45);
      _os_log_impl(&_mh_execute_header, v30, v31, "%s: p2p negotiator controller waiting for local push token", v33, 0xCu);
      sub_100012970(v34);
    }
  }

  v35 = sub_1009364B8();
  v36 = sub_100936F18();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v0[16];
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_10001273C(0xD00000000000001ALL, v37, &v45);
    _os_log_impl(&_mh_execute_header, v35, v36, "%s: p2p negotiator controller waiting for prekeys...", v38, 0xCu);
    sub_100012970(v39);
  }

  v40 = v0[14];
  v41 = swift_task_alloc();
  v0[19] = v41;
  *(v41 + 16) = v40;
  v42 = swift_task_alloc();
  v0[20] = v42;
  *v42 = v0;
  v42[1] = sub_1007BB5B0;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1007BB5B0()
{

  return _swift_task_switch(sub_1007BB6C8, 0, 0);
}

uint64_t sub_1007BB6C8()
{
  v48 = v0;
  v1 = sub_1009364B8();
  v2 = sub_100936F18();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[18];
  if (v3)
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v47 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10001273C(0xD00000000000001ALL, v5, &v47);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: p2p negotiator controller may have new prekeys, trying again...", v6, 0xCu);
    sub_100012970(v7);
  }

  v8 = v0[17];
  v9 = v0[13];
  v10 = v0[14];
  v11 = v0[12];
  sub_100022B2C(v10 + v8, (v0 + 2));
  v12 = v0[5];
  v13 = v0[6];
  sub_1000226D4(v0 + 2, v12);
  v14 = (*(v13 + 16))(v12, v13);
  v0[18] = v14;
  sub_100012970((v0 + 2));
  sub_100022B2C(v10 + v8, (v0 + 7));
  v15 = v0[10];
  v16 = v0[11];
  sub_1000226D4(v0 + 7, v15);
  v17 = (*(v16 + 8))(v11, v9, v15, v16);
  sub_100012970((v0 + 7));
  if (v14)
  {
    v18 = v14;

    v19 = v18;

    v20 = sub_1009364B8();
    v21 = sub_100936F18();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[16];
      v45 = v0[12];
      v46 = v0[13];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v23 = 136315906;
      *(v23 + 4) = sub_10001273C(0xD00000000000001ALL, v22, &v47);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_10001273C(v45, v46, &v47);
      *(v23 + 22) = 2112;
      *(v23 + 24) = v19;
      *v24 = v14;
      *(v23 + 32) = 2080;
      sub_1007BDD80();
      v25 = v19;
      v26 = sub_100936CF8();
      v28 = sub_10001273C(v26, v27, &v47);

      *(v23 + 34) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s: p2p negotiator forGroup:%s local:%@ remotes:%s", v23, 0x2Au);
      sub_100013814(v24, &qword_100CB36B0);

      swift_arrayDestroy();
    }

    v29 = sub_1007B9514(v0[12], v0[13], v19, v17);

    if (v29)
    {

      v30 = v0[1];

      return v30(v29);
    }
  }

  else
  {

    v32 = sub_1009364B8();
    v33 = sub_100936F18();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v0[16];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_10001273C(0xD00000000000001ALL, v34, &v47);
      _os_log_impl(&_mh_execute_header, v32, v33, "%s: p2p negotiator controller waiting for local push token", v35, 0xCu);
      sub_100012970(v36);
    }
  }

  v37 = sub_1009364B8();
  v38 = sub_100936F18();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = v0[16];
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_10001273C(0xD00000000000001ALL, v39, &v47);
    _os_log_impl(&_mh_execute_header, v37, v38, "%s: p2p negotiator controller waiting for prekeys...", v40, 0xCu);
    sub_100012970(v41);
  }

  v42 = v0[14];
  v43 = swift_task_alloc();
  v0[19] = v43;
  *(v43 + 16) = v42;
  v44 = swift_task_alloc();
  v0[20] = v44;
  *v44 = v0;
  v44[1] = sub_1007BB5B0;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1007BBCEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB2DB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_lock;
  v9 = *(a2 + OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_lock);

  os_unfair_lock_lock(v9 + 4);

  (*(v5 + 16))(v7, a1, v4);
  v10 = OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_continuations;
  v11 = *(a2 + OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_continuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v10) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1007BCB58(0, v11[2] + 1, 1, v11);
    *(a2 + v10) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1007BCB58(v13 > 1, v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  (*(v5 + 32))(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7, v4);
  *(a2 + v10) = v11;
  v15 = *(a2 + v8);

  os_unfair_lock_unlock(v15 + 4);
}

char *sub_1007BBEBC(char *result, uint64_t a2, __SecKey *a3, unint64_t a4)
{
  v27 = result;
  if (!(a4 >> 62))
  {
    v6 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyArrayStorage;
  }

  result = sub_1009373F8();
  v6 = result;
  if (!result)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v26 = a3;
    if ((a4 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      v8 = &_swiftEmptyArrayStorage;
      do
      {
        v9 = sub_100937268();
        v10 = sub_1007BC0F0(v27, a2, a3, v9);
        if (v11 >> 60 == 15)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v12 = v10;
          v13 = v11;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_100787FB8(0, *(v8 + 2) + 1, 1, v8);
          }

          v15 = *(v8 + 2);
          v14 = *(v8 + 3);
          if (v15 >= v14 >> 1)
          {
            v8 = sub_100787FB8((v14 > 1), v15 + 1, 1, v8);
          }

          swift_unknownObjectRelease();
          *(v8 + 2) = v15 + 1;
          v16 = &v8[16 * v15];
          *(v16 + 4) = v12;
          *(v16 + 5) = v13;
          a3 = v26;
        }

        ++v7;
      }

      while (v6 != v7);
    }

    else
    {
      v17 = (a4 + 32);
      v8 = &_swiftEmptyArrayStorage;
      do
      {
        v18 = *v17;
        v19 = sub_1007BC0F0(v27, a2, a3, v18);
        if (v20 >> 60 == 15)
        {
        }

        else
        {
          v21 = v19;
          v22 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_100787FB8(0, *(v8 + 2) + 1, 1, v8);
          }

          v24 = *(v8 + 2);
          v23 = *(v8 + 3);
          if (v24 >= v23 >> 1)
          {
            v8 = sub_100787FB8((v23 > 1), v24 + 1, 1, v8);
          }

          *(v8 + 2) = v24 + 1;
          v25 = &v8[16 * v24];
          *(v25 + 4) = v21;
          *(v25 + 5) = v22;
          a3 = v26;
        }

        ++v17;
        --v6;
      }

      while (v6);
    }

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BC0F0(uint64_t a1, uint64_t a2, __SecKey *a3, __SecKey *a4)
{
  v6 = sub_100936B78();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  error = 0;
  v10 = SecKeyCopyExternalRepresentation(a3, &error);
  if (!v10)
  {
LABEL_12:
    v25 = error;
    if (error)
    {
      v26 = sub_1009364B8();
      v27 = sub_100936EF8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *&v47 = swift_slowAlloc();
        *v28 = 136315394;
        *(v28 + 4) = sub_10001273C(0xD000000000000032, 0x8000000100B02250, &v47);
        *(v28 + 12) = 2080;
        v29 = v25;
        v46 = v29;
        type metadata accessor for CFError(0);
        sub_1007BDEF0();
        v30 = sub_1009375E8();
        v32 = v31;

        v33 = sub_10001273C(v30, v32, &v47);

        *(v28 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v26, v27, "%s: failed exporting local public key: %s", v28, 0x16u);
        swift_arrayDestroy();
      }
    }

    return 0;
  }

  v11 = v10;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_12;
  }

  v45 = xmmword_1009AD8D0;
  v47 = xmmword_1009AD8D0;
  sub_100935E98();

  v12 = *(&v47 + 1);
  if (*(&v47 + 1) >> 60 == 15)
  {
    goto LABEL_12;
  }

  v13 = v47;
  v14 = SecKeyCopyExternalRepresentation(a4, &error);
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = v14;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_19:
    v35 = error;
    if (error)
    {
      v36 = sub_1009364B8();
      v37 = sub_100936EF8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *&v47 = swift_slowAlloc();
        *v38 = 136315394;
        *(v38 + 4) = sub_10001273C(0xD000000000000032, 0x8000000100B02250, &v47);
        *(v38 + 12) = 2080;
        v39 = v35;
        v46 = v39;
        type metadata accessor for CFError(0);
        sub_1007BDEF0();
        v40 = sub_1009375E8();
        v42 = v41;

        v43 = sub_10001273C(v40, v42, &v47);

        *(v38 + 14) = v43;
        _os_log_impl(&_mh_execute_header, v36, v37, "%s: failed exporting remote public key: %s", v38, 0x16u);
        swift_arrayDestroy();
      }

      v44 = v35;
      sub_10001C370(v13, v12);
    }

    else
    {
      sub_10001C370(v13, v12);
    }

    return 0;
  }

  v47 = v45;
  sub_100935E98();

  v16 = *(&v47 + 1);
  if (*(&v47 + 1) >> 60 == 15)
  {
    goto LABEL_19;
  }

  v17 = v47;
  sub_100936B68();
  v18 = sub_100936B48();
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  if (v20 >> 60 != 15)
  {
    v47 = xmmword_1009AC710;
    sub_100935EC8();
    sub_100935EC8();
    sub_100935EC8();
    sub_10001C370(v18, v20);
    sub_10001C370(v17, v16);
    sub_10001C370(v13, v12);
    return v47;
  }

  v21 = sub_1009364B8();
  v22 = sub_100936EF8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v47 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_10001273C(0xD000000000000032, 0x8000000100B02250, &v47);
    _os_log_impl(&_mh_execute_header, v21, v22, "%s: failed to convert sessionID to data", v23, 0xCu);
    sub_100012970(v24);
  }

  sub_10001C370(v17, v16);
  sub_10001C370(v13, v12);

  return 0;
}

uint64_t sub_1007BC708()
{
  v0 = sub_1009364B8();
  v1 = sub_100936F18();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10001273C(0xD000000000000011, 0x8000000100B02110, &v5);
    _os_log_impl(&_mh_execute_header, v0, v1, "%s: triggering continuations for prekey update", v2, 0xCu);
    sub_100012970(v3);
  }

  return sub_1007BC820();
}

uint64_t sub_1007BC820()
{
  v1 = sub_100706B30(&qword_100CB2DB0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v5 = OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_lock;
  v6 = *(v0 + OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_lock);

  os_unfair_lock_lock(v6 + 4);

  v7 = *(v0 + OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_continuations);
  *(v0 + OBJC_IVAR____TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController_continuations) = &_swiftEmptyArrayStorage;
  v8 = *(v0 + v5);

  os_unfair_lock_unlock(v8 + 4);

  v9 = *(v7 + 16);
  if (v9)
  {
    v12 = *(v2 + 16);
    v10 = v2 + 16;
    v11 = v12;
    v13 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v4, v13, v1);
      sub_100936D78();
      (*(v10 - 8))(v4, v1);
      v13 += v14;
      --v9;
    }

    while (v9);
  }
}

char *sub_1007BCA4C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100706B30(&qword_100CB6058);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1007BCB58(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100706B30(&unk_100CB6060);
  v10 = *(sub_100706B30(&qword_100CB2DB0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100706B30(&qword_100CB2DB0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1007BCD48(uint64_t a1, unint64_t a2)
{
  sub_100937668();
  sub_100935EB8();
  v4 = sub_1009376C8();

  return sub_1007BCDC0(a1, a2, v4);
}

uint64_t sub_1007BCDC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v74 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v71 = v14;
  __n = BYTE6(a2);
  v69 = a1;
  v70 = HIDWORD(a1) - a1;
  v65 = (a1 >> 32) - a1;
  v66 = a1 >> 32;
  v72 = v10;
  v73 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v74) & 1) == 0)
      {
        return v6;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v70;
          if (v71)
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        return v6;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      return v6;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_100715738(v17, v16);
      v35 = sub_100935BE8();
      if (v35)
      {
        v40 = sub_100935C18();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      sub_100935C08();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v64 = *(a1 + 24);
        v37 = sub_100935BE8();
        if (v37)
        {
          v60 = sub_100935C18();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v64, v59);
        v61 = v64 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = sub_100935C08();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v66 < v69)
        {
          goto LABEL_154;
        }

        v37 = sub_100935BE8();
        if (v37)
        {
          v41 = sub_100935C18();
          if (__OFSUB__(v69, v41))
          {
            goto LABEL_161;
          }

          v37 += v69 - v41;
        }

        result = sub_100935C08();
        v39 = v65;
        if (result < v65)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v67;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_100715738(v17, v16);
      v32 = sub_100935BE8();
      if (v32)
      {
        v49 = sub_100935C18();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = sub_100935C08();
      v7 = v68;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v66 < v69)
    {
      goto LABEL_146;
    }

    sub_100715738(v17, v16);
    v29 = sub_100935BE8();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = sub_100935C18();
    if (__OFSUB__(v69, v31))
    {
      goto LABEL_152;
    }

    v32 = v69 - v31 + v30;
    result = sub_100935C08();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v65)
    {
      v50 = v65;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_1007156D8(v17, v16);
LABEL_135:
    v10 = v72;
    v4 = v73;
    if (!v62)
    {
      return v6;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_100715738(v17, v16);
    v35 = sub_100935BE8();
    if (v35)
    {
      v36 = sub_100935C18();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = sub_100935C08();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v63 = *(a1 + 24);
      v37 = sub_100935BE8();
      if (v37)
      {
        v57 = sub_100935C18();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v63, v56);
      v58 = v63 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = sub_100935C08();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v66 < v69)
      {
        goto LABEL_148;
      }

      v37 = sub_100935BE8();
      if (v37)
      {
        v38 = sub_100935C18();
        if (__OFSUB__(v69, v38))
        {
          goto LABEL_159;
        }

        v37 += v69 - v38;
      }

      result = sub_100935C08();
      v39 = v65;
      if (result < v65)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_1007156D8(v17, v16);
        return v6;
      }

      v62 = memcmp(v35, v37, v39);
      sub_1007156D8(v17, v16);
      v7 = v68;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v67;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v77 = BYTE2(a1);
    v78 = BYTE3(a1);
    v79 = v67;
    v80 = BYTE5(a1);
    v81 = BYTE6(a1);
    v82 = HIBYTE(a1);
    v83 = a2;
    v84 = BYTE2(a2);
    v85 = BYTE3(a2);
    v86 = BYTE4(a2);
    v87 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      return v6;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_100715738(v17, v16);
    v32 = sub_100935BE8();
    if (v32)
    {
      v44 = sub_100935C18();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = sub_100935C08();
    v7 = v68;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v66 < v69)
  {
    goto LABEL_147;
  }

  sub_100715738(v17, v16);
  v51 = sub_100935BE8();
  if (v51)
  {
    v52 = v51;
    v53 = sub_100935C18();
    if (__OFSUB__(v69, v53))
    {
      goto LABEL_151;
    }

    v32 = v69 - v53 + v52;
    result = sub_100935C08();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  sub_100935C08();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = sub_100935C08();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

uint64_t sub_1007BD624(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CB6050);
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v31 = *(*(v5 + 48) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        sub_100715738(v31, *(*(v5 + 48) + 16 * v20 + 8));
        v22 = v21;
      }

      sub_100937668();
      sub_100935EB8();
      result = sub_1009376C8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v16 = v31;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v16 = v31;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_1007BD8C8()
{
  v1 = v0;
  sub_100706B30(&qword_100CB6050);
  v2 = *v0;
  v3 = sub_100937408();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_100715738(v19, *(&v19 + 1));
        result = v18;
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

unint64_t sub_1007BDA34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100706B30(&qword_100CB6050);
    v3 = sub_100937438();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_100715738(v5, v6);
      v8 = v7;
      result = sub_1007BCD48(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t type metadata accessor for IDSGlobalLinkP2PKeyNegotiatorController()
{
  result = qword_100CC66D8;
  if (!qword_100CC66D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007BDB88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1009364B8();
    v3 = sub_100936F18();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_10001273C(0xD00000000000004ELL, 0x8000000100B022D0, &v6);
      _os_log_impl(&_mh_execute_header, v2, v3, "%s: triggering continuations for remote push token change", v4, 0xCu);
      sub_100012970(v5);
    }

    sub_1007BC820();
  }
}

uint64_t sub_1007BDCBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10072A990;

  return sub_1007BAB3C(v2, v3, v4, v5, v6);
}

unint64_t sub_1007BDD80()
{
  result = qword_100CB34A0;
  if (!qword_100CB34A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB34A0);
  }

  return result;
}

uint64_t sub_1007BDDD4()
{
  result = sub_1009364D8();
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

void sub_1007BDEA4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1007BDEF0()
{
  result = qword_100CB6028;
  if (!qword_100CB6028)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6028);
  }

  return result;
}

uint64_t sub_1007BDF5C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1007BDFA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100724920;

  return sub_1007BAB3C(v2, v3, v4, v5, v6);
}

uint64_t sub_1007BE060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007BE0C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007BE124(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet();
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet();
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet();
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer();
  __chkstk_darwin(v13);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1007BE428(v2, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1007BE48C(v15, v12, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
      v17 = sub_1007180E8();
      sub_1007BE5A8(v12, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
    }

    else
    {
      v18 = *(v15 + 1);
      v19 = *(v15 + 2);
      v20 = 0x10000000000;
      if (!*(v15 + 5))
      {
        v20 = 0;
      }

      v17 = sub_10074B49C(a1, *v15 | (*(v15 + 4) << 32) | v20, *(v15 + 1), *(v15 + 2));
      sub_1007156D8(v18, v19);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1007BE48C(v15, v6, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
    v17 = sub_10071B2A4(a1);
    sub_1007BE5A8(v6, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
  }

  else
  {
    sub_1007BE48C(v15, v9, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    v17 = sub_10089A378(a1);
    sub_1007BE5A8(v9, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  }

  return v17;
}

uint64_t type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer()
{
  result = qword_100CC6870;
  if (!qword_100CC6870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007BE428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007BE48C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_1007BE4F4()
{
  v1 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer();
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007BE428(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() < 3;
  sub_1007BE5A8(v3, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
  return v4;
}

uint64_t sub_1007BE5A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007BE608()
{
  v1 = v0;
  v2 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet();
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet();
  __chkstk_darwin(v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer();
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007BE428(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1007BE48C(v10, v4, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
    v12 = *&v4[*(v2 + 28)];
    sub_1007BE5A8(v4, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1007BE5A8(v10, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
    return 0;
  }

  else
  {
    sub_1007BE48C(v10, v7, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    v12 = *&v7[*(v5 + 28)];
    sub_1007BE5A8(v7, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  }

  return v12;
}

uint64_t sub_1007BE800()
{
  v1 = v0;
  v2 = type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet();
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet();
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet();
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer();
  __chkstk_darwin(v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007BE428(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1007BE48C(v13, v4, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
      v15 = sub_100717FF8();
      sub_1007BE5A8(v4, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
    }

    else
    {
      v16 = *(v13 + 1);
      v17 = *(v13 + 2);
      v15 = sub_10074B3E8();
      sub_1007156D8(v16, v17);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1007BE48C(v13, v7, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
    v15 = sub_10071AED4();
    sub_1007BE5A8(v7, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
  }

  else
  {
    sub_1007BE48C(v13, v10, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    v15 = sub_100899C20();
    sub_1007BE5A8(v10, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  }

  return v15;
}

uint64_t sub_1007BEAB4()
{
  v1 = type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet();
  __chkstk_darwin(v1);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet();
  __chkstk_darwin(v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet();
  __chkstk_darwin(v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer();
  __chkstk_darwin(v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007BE428(v0, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1007BE48C(v12, v3, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
      sub_100937678(2uLL);
      sub_1007BF610(&qword_100CB2EB0, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
      sub_100936AD8();
      return sub_1007BE5A8(v3, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
    }

    else
    {
      v15 = *v12;
      v16 = v12[4];
      v17 = v12[5];
      v18 = *(v12 + 1);
      v19 = *(v12 + 2);
      sub_100937678(3uLL);
      v20[2] = v15;
      v21 = v16;
      v22 = v17;
      v23 = v18;
      v24 = v19;
      sub_10074BDDC();
      sub_100936AD8();
      return sub_1007156D8(v18, v19);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1007BE48C(v12, v6, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
    sub_100937678(1uLL);
    sub_1007BF610(&qword_100CB2FD8, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
    sub_100936AD8();
    return sub_1007BE5A8(v6, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
  }

  else
  {
    sub_1007BE48C(v12, v9, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    sub_100937678(0);
    sub_1007BF610(&qword_100CB6080, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    sub_100936AD8();
    return sub_1007BE5A8(v9, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
  }
}

Swift::Int sub_1007BEE68()
{
  sub_100937668();
  sub_1007BEAB4();
  return sub_1009376C8();
}

Swift::Int sub_1007BEEAC()
{
  sub_100937668();
  sub_1007BEAB4();
  return sub_1009376C8();
}

uint64_t sub_1007BEEF0(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet();
  __chkstk_darwin(v49);
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet();
  __chkstk_darwin(v47);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet();
  __chkstk_darwin(v45);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer();
  v9 = __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v44 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v44 - v16;
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v20 = sub_100706B30(&unk_100CB6120);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v44 - v22;
  v24 = &v44 + *(v21 + 56) - v22;
  sub_1007BE428(a1, &v44 - v22);
  sub_1007BE428(a2, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1007BE428(v23, v11);
      v34 = *(v11 + 1);
      v33 = *(v11 + 2);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_1007156D8(v34, v33);
        goto LABEL_15;
      }

      v35 = v11[5];
      v36 = v11[4];
      v37 = *v11;
      v38 = *v24;
      v39 = v24[4];
      v40 = v24[5];
      v42 = *(v24 + 1);
      v41 = *(v24 + 2);
      v55 = v37;
      v56 = v36;
      v57 = v35;
      v58 = v34;
      v59 = v33;
      v50 = v38;
      v51 = v39;
      v52 = v40;
      v53 = v42;
      v54 = v41;
      sub_10074BE34();
      v28 = sub_100936B18();
      sub_1007156D8(v42, v41);
      sub_1007156D8(v34, v33);
LABEL_19:
      sub_1007BE5A8(v23, type metadata accessor for IDSGroupEncryptionDesiredMaterialSetContainer);
      return v28 & 1;
    }

    sub_1007BE428(v23, v14);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1007BE5A8(v14, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
      goto LABEL_15;
    }

    v26 = v24;
    v27 = v48;
    sub_1007BE48C(v26, v48, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
    sub_1007BF610(&qword_100CB2EB8, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
    v28 = sub_100936B18();
    v29 = type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet;
    sub_1007BE5A8(v27, type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet);
    v30 = v14;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1007BE428(v23, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1007BE5A8(v17, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
      goto LABEL_15;
    }

    v31 = v46;
    sub_1007BE48C(v24, v46, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
    sub_1007BF610(&qword_100CB2FE0, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
    v28 = sub_100936B18();
    sub_1007BE5A8(v31, type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet);
    v30 = v17;
    v32 = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet;
    goto LABEL_18;
  }

  sub_1007BE428(v23, v19);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_1007BE48C(v24, v7, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    sub_1007BF610(&qword_100CB36C8, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    v28 = sub_100936B18();
    v29 = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet;
    sub_1007BE5A8(v7, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
    v30 = v19;
LABEL_17:
    v32 = v29;
LABEL_18:
    sub_1007BE5A8(v30, v32);
    goto LABEL_19;
  }

  sub_1007BE5A8(v19, type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet);
LABEL_15:
  sub_1007BF5A8(v23);
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1007BF518()
{
  result = type metadata accessor for IDSGroupEncryptionDesiredKeyMaterialSet();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IDSGroupEncryptionDesiredKeyValueMaterialSet();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for IDSGroupEncryptionDesiredPreKeyMaterialSet();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1007BF5A8(uint64_t a1)
{
  v2 = sub_100706B30(&unk_100CB6120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007BF610(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1007BF658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    v4 = sub_100937158();
  }

  else
  {
    v4 = *(a4 + 16);
  }

  return v4 > 0;
}

BOOL sub_1007BF698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v3 = sub_100937158();
  }

  else
  {
    v3 = *(a3 + 16);
  }

  return v3 > 0;
}

uint64_t sub_1007BF6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100937248(76);
  v15._object = 0x8000000100B02320;
  v15._countAndFlagsBits = 0xD000000000000022;
  sub_100936C08(v15);
  if ((a3 & 0xC000000000000001) != 0)
  {
    v6 = sub_100937158();
  }

  else
  {
    v6 = *(a3 + 16);
  }

  v7 = v6 <= 0;
  if (v6 <= 0)
  {
    v8._countAndFlagsBits = 0x65736C6166;
  }

  else
  {
    v8._countAndFlagsBits = 1702195828;
  }

  if (v7)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  v8._object = v9;
  sub_100936C08(v8);

  v16._countAndFlagsBits = 0x616572636564202CLL;
  v16._object = 0xED0000203A646573;
  sub_100936C08(v16);
  if ((a4 & 0xC000000000000001) != 0)
  {
    v10 = sub_100937158();
  }

  else
  {
    v10 = *(a4 + 16);
  }

  v11 = v10 <= 0;
  if (v10 <= 0)
  {
    v12._countAndFlagsBits = 0x65736C6166;
  }

  else
  {
    v12._countAndFlagsBits = 1702195828;
  }

  if (v11)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  v12._object = v13;
  sub_100936C08(v12);

  v17._countAndFlagsBits = 0x3A6465646461202CLL;
  v17._object = 0xE900000000000020;
  sub_100936C08(v17);
  type metadata accessor for IDSGroupEncryptionControllerMember();
  sub_1007BF8E0();
  v18._countAndFlagsBits = sub_100936E28();
  sub_100936C08(v18);

  v19._countAndFlagsBits = 0x65766F6D6572202CLL;
  v19._object = 0xEB00000000203A64;
  sub_100936C08(v19);
  v20._countAndFlagsBits = sub_100936E28();
  sub_100936C08(v20);

  v21._countAndFlagsBits = 41;
  v21._object = 0xE100000000000000;
  sub_100936C08(v21);
  return 0;
}

unint64_t sub_1007BF8E0()
{
  result = qword_100CB2AC8;
  if (!qword_100CB2AC8)
  {
    type metadata accessor for IDSGroupEncryptionControllerMember();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2AC8);
  }

  return result;
}

void *sub_1007BF944(Swift::Int a1, uint64_t a2)
{

  sub_1007BFA08(a2, a1);

  v4 = sub_1007BFA08(a1, a2);

  sub_1007C13D0(v5, a1);

  sub_1007C13D0(v6, a2);

  return v4;
}

void *sub_1007BFA08(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_100937158();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1007BFAFC(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_100937158() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_100937158();
  v2 = sub_1007BFCFC(v5, v6);
LABEL_10:

  return sub_1007BFEDC(a1, v2);
}

void sub_1007BFAFC(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_100937158())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100937118();
    type metadata accessor for IDSGroupEncryptionControllerMember();
    sub_1007BF8E0();
    sub_100936E58();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_100308C6C();
      return;
    }

    while (1)
    {
      v16 = sub_1007C05D0(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_100937198())
      {
        type metadata accessor for IDSGroupEncryptionControllerMember();
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

Swift::Int sub_1007BFCFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100706B30(&qword_100CB2DB8);
    v2 = sub_100937218();
    v14 = v2;
    sub_100937118();
    if (sub_100937198())
    {
      type metadata accessor for IDSGroupEncryptionControllerMember();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_100713088();
        }

        v2 = v14;
        result = sub_100937028(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_100937198());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void *sub_1007BFEDC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100937118();
    type metadata accessor for IDSGroupEncryptionControllerMember();
    sub_1007BF8E0();
    sub_100936E58();
    v5 = v77;
    v7 = v78;
    v8 = v79;
    v9 = v80;
    v10 = v81;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v72 = v5;
  v73 = v7;
  v74 = v8;
  v75 = v9;
  v63 = v8;
  v14 = (v8 + 64) >> 6;
  v69 = v4 + 7;
  v76 = v10;
  v66 = v5;
  v67 = v14;
  v65 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = sub_100937198();
      if (!v22)
      {
        goto LABEL_62;
      }

      v70 = v22;
      type metadata accessor for IDSGroupEncryptionControllerMember();
      swift_dynamicCast();
      v20 = v71;
      v18 = v9;
      v2 = v10;
      if (!v71)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        v17 = v14 <= v9 + 1 ? v9 + 1 : v14;
        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_66;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v72 = v5;
      v73 = v7;
      v74 = v63;
      v75 = v18;
      v76 = v2;
      if (!v20)
      {
        goto LABEL_62;
      }
    }

    v23 = v20;
    v24 = sub_100937028(v4[5]);
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v65;
    v5 = v66;
    v14 = v67;
  }

  v3 = ~v25;
  v26 = type metadata accessor for IDSGroupEncryptionControllerMember();
  v27 = *(v4[6] + 8 * v7);
  v68 = v26;
  while (1)
  {
    v28 = sub_100937038();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v4[6] + 8 * v7);
  }

  v30 = *(v4 + 32);
  v60 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v60;
  v3 = v67;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v61 = &v59;
    __chkstk_darwin(v29);
    v32 = &v59 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v69, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = v4[2];
    v62 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v65;
    v35 = v66;
LABEL_33:
    v64 = v5;
    while (v35 < 0)
    {
      v37 = sub_100937198();
      if (!v37)
      {
        goto LABEL_61;
      }

      v70 = v37;
      swift_dynamicCast();
      v38 = v71;
      if (!v71)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = sub_100937028(v4[5]);
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v69[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(v44[6] + 8 * v7);
          v50 = sub_100937038();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v69[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v67;

        v51 = v62[v46];
        v62[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v65;
        v35 = v66;
        v5 = v64;
        if (!v52)
        {
          v5 = v64 - 1;
          if (__OFSUB__(v64, 1))
          {
            __break(1u);
          }

          if (v64 == 1)
          {

            v4 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v65;
        v35 = v66;
        v3 = v67;
        v5 = v64;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v72 = v35;
      v73 = v36;
      v74 = v63;
      v75 = v40;
      v18 = v40;
      v76 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = sub_1007137E4(v62, v60, v5, v4);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v54 = v6;

    v55 = v54;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v56 = swift_slowAlloc();
  memcpy(v56, v69, v55);
  sub_1007C0758(v56, v60, v4, v7, &v72);
  v58 = v57;

  v4 = v58;
LABEL_62:
  sub_100308C6C();
  return v4;
}

unint64_t *sub_1007C0534(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_1007C0C84(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1007C05D0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_1009371A8();

    if (v5)
    {
      v6 = sub_1007C09DC();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  type metadata accessor for IDSGroupEncryptionControllerMember();
  v9 = sub_100937028(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_100937038();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1007C0B34();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_100745034(v11);
  result = v17;
  *v8 = v18;
  return result;
}

void sub_1007C0758(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_100937198())
          {
            goto LABEL_29;
          }

          type metadata accessor for IDSGroupEncryptionControllerMember();
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_1007137E4(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_100937028(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        type metadata accessor for IDSGroupEncryptionControllerMember();
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_100937038();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_100937038();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:
      v5 = a5;

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1007C09DC()
{
  v1 = v0;

  v2 = sub_100937158();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1007BFCFC(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_100937028(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    type metadata accessor for IDSGroupEncryptionControllerMember();
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = sub_100937038();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_100745034(v8);
  result = sub_100937038();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1007C0B34()
{
  v1 = v0;
  sub_100706B30(&qword_100CB2DB8);
  v2 = *v0;
  v3 = sub_1009371F8();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void sub_1007C0C84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v4 = a3;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v31 = (v7 + 63) >> 6;
  v34 = 0;
  v35 = a4 & 0xC000000000000001;
  v38 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v36 = v11 | (v5 << 6);
    v14 = *(*(v4 + 48) + 8 * v36);
    v15 = *&v14[OBJC_IVAR____TtC17identityservicesd34IDSGroupEncryptionControllerMember_uri];
    v16 = v14;
    if (![v15 isTokenURI])
    {
      goto LABEL_21;
    }

    v37 = v9;
    v17 = [v15 tokenFreeURI];
    type metadata accessor for IDSGroupEncryptionControllerMember();
    v18 = *((swift_isaMask & *v16) + 0x60);
    v19 = v17;
    v20 = v18();
    v21 = sub_10071A7E8(v19, v20 & 1);
    if (v35)
    {
      v10 = sub_1009371A8();

      v9 = v37;
      if ((v10 & 1) == 0)
      {
LABEL_22:
        *(a1 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
        if (__OFADD__(v34++, 1))
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v33 = v19;
      if (!*(a4 + 16) || (v22 = sub_100937028(*(a4 + 40)), v23 = -1 << *(a4 + 32), v24 = v22 & ~v23, ((*(v38 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0))
      {
LABEL_20:

        v4 = a3;
        v9 = v37;
        v16 = v33;
LABEL_21:

        goto LABEL_22;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a4 + 48) + 8 * v24);
        v27 = sub_100937038();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v38 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v4 = a3;
      v9 = v37;
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v31)
    {

      sub_1007137E4(a1, v29, v34, v4);
      return;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1007C0F94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_33;
  }

  while (2)
  {
    v38 = v8;
    v39 = v3;
    v37[1] = v37;
    __chkstk_darwin(v10);
    v43 = v37 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v9);
    v11 = 0;
    v12 = *(v5 + 56);
    v42 = v5 + 56;
    v13 = 1 << *(v5 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v3 = v14 & v12;
    v40 = v5;
    v41 = (v13 + 63) >> 6;
    v46 = 0;
    v47 = a2 & 0xC000000000000001;
    v15 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v15 = a2;
    }

    v45 = v15;
    v50 = a2 + 56;
    while (v3)
    {
      v17 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_16:
      v20 = v17 | (v11 << 6);
      v21 = *(v5 + 48);
      v48 = v20;
      v22 = *(v21 + 8 * v20);
      v9 = *&v22[OBJC_IVAR____TtC17identityservicesd34IDSGroupEncryptionControllerMember_uri];
      v23 = v22;
      if (![v9 isTokenURI])
      {
        goto LABEL_24;
      }

      v49 = v3;
      v24 = [v9 tokenFreeURI];
      type metadata accessor for IDSGroupEncryptionControllerMember();
      v25 = *((swift_isaMask & *v23) + 0x60);
      v9 = v24;
      v26 = v25();
      v8 = sub_10071A7E8(v9, v26 & 1);
      if (v47)
      {
        v16 = sub_1009371A8();

        v3 = v49;
        if ((v16 & 1) == 0)
        {
LABEL_25:
          *&v43[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v48;
          if (__OFADD__(v46++, 1))
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v44 = v9;
        if (!*(a2 + 16) || (v27 = sub_100937028(*(a2 + 40)), v28 = -1 << *(a2 + 32), v9 = v27 & ~v28, ((*(v50 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0))
        {
LABEL_23:

          v5 = v40;
          v3 = v49;
          v23 = v44;
LABEL_24:

          goto LABEL_25;
        }

        v29 = ~v28;
        while (1)
        {
          v30 = a2;
          v31 = *(*(a2 + 48) + 8 * v9);
          v32 = sub_100937038();

          if (v32)
          {
            break;
          }

          v9 = (v9 + 1) & v29;
          a2 = v30;
          if (((*(v50 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        a2 = v30;
        v5 = v40;
        v3 = v49;
      }
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v41)
      {
        v34 = sub_1007137E4(v43, v38, v46, v5);

        return v34;
      }

      v19 = *(v42 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v3 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v36 = swift_slowAlloc();

  v34 = sub_1007C0534(v36, v8, v5, a2);

  return v34;
}

Swift::Int sub_1007C13D0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1007C0F94(a1, a2);
  }

  v2 = &_swiftEmptySetSingleton;

  sub_100937118();
  v33 = a2;
  if (sub_100937198())
  {
    type metadata accessor for IDSGroupEncryptionControllerMember();
    v31 = a2 & 0xC000000000000001;
    v32 = a2 + 56;
    v4 = &type metadata for Swift.AnyObject;
    v5 = &selRef_isNearby;
    do
    {
      swift_dynamicCast();
      v12 = *(v34 + OBJC_IVAR____TtC17identityservicesd34IDSGroupEncryptionControllerMember_uri);
      if (![v12 v5[66]])
      {
        goto LABEL_26;
      }

      v13 = v4;
      v14 = [v12 tokenFreeURI];
      v15 = *((swift_isaMask & *v34) + 0x60);
      v16 = v14;
      v17 = v15();
      v18 = sub_10071A7E8(v16, v17 & 1);
      if (v31)
      {
        v19 = sub_1009371A8();

        v4 = v13;
        v5 = &selRef_isNearby;
        if ((v19 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = v33;
        if (!*(v33 + 16) || (v25 = sub_100937028(*(v33 + 40)), v26 = -1 << *(v33 + 32), v27 = v25 & ~v26, ((*(v32 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0))
        {
LABEL_25:

          v4 = v13;
          v5 = &selRef_isNearby;
LABEL_26:
          if (*(&_swiftEmptySetSingleton + 3) <= *(&_swiftEmptySetSingleton + 2))
          {
            sub_100713088();
          }

          v2 = &_swiftEmptySetSingleton;
          result = sub_100937028(*(&_swiftEmptySetSingleton + 5));
          v7 = &_swiftEmptySetSingleton + 56;
          v8 = -1 << *(&_swiftEmptySetSingleton + 32);
          v9 = result & ~v8;
          v10 = v9 >> 6;
          if (((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7)) != 0)
          {
            v11 = __clz(__rbit64((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7))) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v20 = 0;
            v21 = (63 - v8) >> 6;
            do
            {
              if (++v10 == v21 && (v20 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v22 = v10 == v21;
              if (v10 == v21)
              {
                v10 = 0;
              }

              v20 |= v22;
              v23 = *&v7[8 * v10];
            }

            while (v23 == -1);
            v11 = __clz(__rbit64(~v23)) + (v10 << 6);
          }

          *&v7[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
          *(*(&_swiftEmptySetSingleton + 6) + 8 * v11) = v34;
          ++*(&_swiftEmptySetSingleton + 2);
          continue;
        }

        v28 = ~v26;
        while (1)
        {
          v29 = *(*(v24 + 48) + 8 * v27);
          v30 = sub_100937038();

          if (v30)
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          v24 = v33;
          if (((*(v32 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        v4 = v13;
        v5 = &selRef_isNearby;
      }
    }

    while (sub_100937198());
  }

  return v2;
}

uint64_t sub_1007C177C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1007C17C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1007C1814()
{
  v1 = OBJC_IVAR____TtC17identityservicesd29IDSGlobalLinkP2PKeyNegotiator_counter;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1007C1858(int a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd29IDSGlobalLinkP2PKeyNegotiator_counter;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1007C1908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC17identityservicesd29IDSGlobalLinkP2PKeyNegotiator_counter] = 1;
  v14 = OBJC_IVAR____TtC17identityservicesd29IDSGlobalLinkP2PKeyNegotiator_lock;
  sub_100706B30(&unk_100CB3540);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *&v13[v14] = v15;
  v16 = &v13[OBJC_IVAR____TtC17identityservicesd29IDSGlobalLinkP2PKeyNegotiator_sessionID];
  *v16 = a1;
  *(v16 + 1) = a2;
  *&v13[OBJC_IVAR____TtC17identityservicesd29IDSGlobalLinkP2PKeyNegotiator_localIdentities] = a4;
  *&v13[OBJC_IVAR____TtC17identityservicesd29IDSGlobalLinkP2PKeyNegotiator_localPushToken] = a3;
  *&v13[OBJC_IVAR____TtC17identityservicesd29IDSGlobalLinkP2PKeyNegotiator_remotePushTokens] = a5;
  *&v13[OBJC_IVAR____TtC17identityservicesd29IDSGlobalLinkP2PKeyNegotiator_remoteIdentities] = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, "init");
}

id sub_1007C1A28()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17identityservicesd29IDSGlobalLinkP2PKeyNegotiator_lock;
  v3 = *(v0 + OBJC_IVAR____TtC17identityservicesd29IDSGlobalLinkP2PKeyNegotiator_lock);

  os_unfair_lock_lock(v3 + 4);

  v5 = *((swift_isaMask & *v1) + 0x88);
  if (v5(v4) == -1)
  {
LABEL_5:
    abort();
  }

  v6 = (*((swift_isaMask & *v1) + 0x98))(v17);
  if (*v7 == -1)
  {
    __break(1u);
    goto LABEL_5;
  }

  ++*v7;
  v6(v17, 0);
  type metadata accessor for IDSGlobalLinkP2PKeyNegotiation();
  v8 = *(v1 + OBJC_IVAR____TtC17identityservicesd29IDSGlobalLinkP2PKeyNegotiator_sessionID);
  v9 = *(v1 + OBJC_IVAR____TtC17identityservicesd29IDSGlobalLinkP2PKeyNegotiator_sessionID + 8);

  v11 = v5(v10);
  v12 = *(v1 + OBJC_IVAR____TtC17identityservicesd29IDSGlobalLinkP2PKeyNegotiator_localIdentities);
  v13 = *(v1 + OBJC_IVAR____TtC17identityservicesd29IDSGlobalLinkP2PKeyNegotiator_remoteIdentities);

  v14 = sub_100892F40(v1, &off_100BE85F0, v8, v9, v11, v12, v13);
  v15 = *(v1 + v2);

  os_unfair_lock_unlock(v15 + 4);

  return v14;
}

uint64_t sub_1007C1C24(unsigned int a1)
{
  LODWORD(v3) = (*((swift_isaMask & *v1) + 0x88))();
  if (v3 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v3;
  }

  v4 = *((swift_isaMask & *v1) + 0x90);

  return v4(v3);
}

id sub_1007C1CF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSGlobalLinkP2PKeyNegotiator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CloudTelemetryMetricReporter()
{
  result = qword_100CC6A80;
  if (!qword_100CC6A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007C1E54()
{
  *(v0 + 24) = OBJC_IVAR___IDSCloudTelemetryMetricReporter_logger;
  v1 = sub_1009364B8();
  v2 = sub_100936F18();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Setting up CloudTelemetry xpc service activities.", v3, 2u);
  }

  sub_100936358();
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1007C1F78;

  return static CloudTelemetry.setupXpcServiceActivities()();
}

uint64_t sub_1007C1F78()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1007C20AC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1007C20AC()
{
  v1 = sub_1009364B8();
  v2 = sub_100936F18();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to setup CloudTelemetry", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1007C2188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100706B30(&qword_100CB3410);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100012D50(a3, v25 - v10, &qword_100CB3410);
  v12 = sub_100936DB8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100013814(v11, &qword_100CB3410);
  }

  else
  {
    sub_100936DA8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100936D68();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100936BA8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100013814(a3, &qword_100CB3410);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100013814(a3, &qword_100CB3410);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1007C25D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1007C2684;

  return (sub_1007C8584)(a1, a2);
}

uint64_t sub_1007C2684(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}