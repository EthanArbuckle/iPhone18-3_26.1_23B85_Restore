void sub_1008F9D78(uint64_t *a1, char a2, void (*a3)(char *, uint64_t))
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

uint64_t sub_1008F9E5C(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = sub_100706B30(&qword_100CBB2B8);
  sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
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
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  *(v1 + 16) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  *(v1 + 17) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  *(v1 + 18) = 0;
  sub_1000226D4((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_100706B30(&qword_100CBB2A8);
  type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable(0);
  sub_10090CDB0();
  sub_1009366C8();

  sub_100936158();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1008FA2A8(uint64_t a1)
{
  v2 = sub_10090D588();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008FA2E4(uint64_t a1)
{
  v2 = sub_10090D588();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008FA320(void *a1)
{
  v3 = v1;
  v5 = sub_100706B30(&qword_100CBB2C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000226D4(a1, a1[3]);
  sub_10090D588();
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

__n128 sub_1008FA6FC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10090D5DC(a1, v7);
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

uint64_t sub_1008FA774()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008FA87C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008FA98C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1008FAA64()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008FAB68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008FAC74()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1008FAD4C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008FAE50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008FAF5C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1008FB034()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008FB138@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008FB244()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1008FB31C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008FB424@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008FB534()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1008FB60C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008FB714@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008FB824()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1008FB8FC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_10090C044(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1008FBA34()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_10090C044(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1008FBB6C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1008FBCF4()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_10090C044(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1008FBE2C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_10090C044(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1008FBF64(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

double sub_1008FC0EC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

double sub_1008FC1F0@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_1009368A8();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008FC2FC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2C8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1008FC3D4()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  sub_1009368C8();
}

uint64_t *sub_1008FC470(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, double a9, Swift::String a10, uint64_t a11, uint64_t a12)
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
  v18[5] = sub_100706B30(&qword_100CBB2D8);
  v19 = sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
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
  v31 = sub_10090C044(&qword_100CB3DA8, &type metadata accessor for Date);
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

uint64_t *sub_1008FCB54(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CBB2D8);
  sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
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

uint64_t sub_1008FCCF4()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008FCDFC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008FCF0C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1008FCFE4()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008FD0E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008FD1F4()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1008FD2CC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008FD3D4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008FD4E4()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1008FD5BC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008FD6C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008FD7CC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1008FD8A4()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008FD9AC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008FDABC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1008FDB94()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_10090C044(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1008FDCCC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_10090C044(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1008FDE04(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_10090C044(&qword_100CBB2E0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1008FDF8C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = swift_allocObject();
  sub_1008FE024(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t *sub_1008FE024(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
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
  v9[5] = sub_100706B30(&qword_100CBB2F0);
  v19 = sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
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
  sub_10090C044(&qword_100CB3DA8, &type metadata accessor for Date);
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

void sub_1008FE4E8(uint64_t *a1, char a2, void (*a3)(char *, uint64_t))
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

uint64_t *sub_1008FE5CC(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CBB2F0);
  sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
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

uint64_t sub_1008FE714()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2F8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB300, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008FE818@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2F8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB300, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008FE924()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2F8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  sub_100936138();
}

uint64_t sub_1008FE9FC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2F8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB300, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1008FEB00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2F8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB300, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1008FEC0C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2F8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  sub_100936138();
}

uint64_t sub_1008FECE4()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2F8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB300, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  sub_10090EC54();
  sub_1009368A8();
}

uint64_t sub_1008FEDEC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB2F8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB300, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  sub_10090EC54();
  sub_1009368A8();
}

uint64_t sub_1008FEEF4(uint64_t a1, uint64_t *a2)
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
  sub_10090C044(&qword_100CBB2F8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1008FF03C(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  sub_1008FF0A4(a1, a2, a3, a4);
  return v8;
}

void *sub_1008FF0A4(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v16 = a3;
  v17 = a4;
  v8 = *v4;
  v9 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v5[6] = sub_100706B30(&qword_100CBB308);
  v18 = type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle;
  v12 = sub_10090C044(&qword_100CBB300, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
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
  sub_10090C044(&qword_100CBB2F8, v18);
  sub_100936138();

  sub_100021EA4(v11);
  return v5;
}

uint64_t sub_1008FF3AC(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 48) = sub_100706B30(&qword_100CBB308);
  sub_10090C044(&qword_100CBB300, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
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

uint64_t sub_1008FF4E4(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CBB308);
  sub_10090C044(&qword_100CBB300, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
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

uint64_t sub_1008FF640()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008FF748@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008FF858()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1008FF930()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008FFA38@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008FFB48()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1008FFC20()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1008FFD28@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1008FFE38()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1008FFF10()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100900014@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100900120()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1009001F8()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1009002FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100900408()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1009004E0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1009005E8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1009006F8()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_1009007D0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_10090C044(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100900908()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_10090C044(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100900A40(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100900BC8()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100900CD0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100900DE0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_100900EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_10090C044(a5, a6);
  sub_100768A18();
  sub_1009368C8();
}

uint64_t sub_100900F54()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_100901058@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_100901164()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_100901234()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_100901338@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_100901444()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_100901514()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_10090EC54();
  sub_1009368A8();
}

uint64_t sub_10090161C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_10090EC54();
  sub_1009368A8();
}

uint64_t sub_100901724(uint64_t a1, uint64_t *a2)
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
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10090186C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_100901970@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_100901A7C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_100901B4C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_100901C50@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_100901D5C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_100901E2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_10090C044(a4, a5);
  sub_1009368C8();
}

uint64_t sub_100901EB8()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_10090EC54();
  sub_1009368A8();
}

uint64_t sub_100901FC0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_10090EC54();
  sub_1009368A8();
}

uint64_t sub_1009020C8(uint64_t a1, uint64_t *a2)
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
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_100902210()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_10090233C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100902470()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_100902548()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_10090EC54();
  sub_1009368A8();
}

uint64_t sub_100902650()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_10090EC54();
  sub_1009368A8();
}

uint64_t sub_100902758(uint64_t a1, uint64_t *a2)
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
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_1009028A0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_10090EC54();
  sub_1009368A8();
}

uint64_t sub_1009029A8()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_10090EC54();
  sub_1009368A8();
}

uint64_t sub_100902AB0(uint64_t a1, uint64_t *a2)
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
  sub_10090C044(&qword_100CBB310, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_100902BF8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17)
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
  *(v21 + 48) = sub_100706B30(&qword_100CBB320);
  v22 = sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  v64 = v17;
  v65 = v17;
  v66 = v22;
  v67 = v22;
  *(v21 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v21 + 24));
  sub_100936858();
  *(v21 + 16) = 16843009;
  *(v21 + 20) = 1;
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
  sub_10090C044(&qword_100CB3DA8, &type metadata accessor for Date);
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

uint64_t sub_1009033B4(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CBB320);
  sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  *(v1 + 16) = 16843009;
  *(v1 + 20) = 1;
  sub_100936158();
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10090351C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB328, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB330, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100903620@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB328, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB330, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_10090372C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB328, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_100936138();
}

uint64_t sub_1009037F8()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB330, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_1009368C8();
}

uint64_t sub_100903894()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB328, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB330, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  return v1;
}

uint64_t sub_100903998@<X0>(_DWORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB328, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB330, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_100903AA4()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB328, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_100936138();
}

uint64_t sub_100903B74()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB330, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_1009368C8();
}

uint64_t sub_100903C10()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB328, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB330, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_10090C044(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100903D48()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB328, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB330, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_10090C044(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100903E80(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_10090C044(&qword_100CBB328, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100904008(uint64_t a1, int a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_100904060(a1, a2, a3);
  return v6;
}

uint64_t *sub_100904060(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v17 = a3;
  v7 = *v3;
  v8 = sub_100936038();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[5] = sub_100706B30(&qword_100CBB338);
  v12 = sub_10090C044(&qword_100CBB330, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
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
  sub_10090C044(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009366D8();

  v14 = *(v9 + 8);
  v14(v13, v8);
  v14(v11, v8);
  return v4;
}

uint64_t *sub_100904370(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = sub_100706B30(&qword_100CBB338);
  sub_10090C044(&qword_100CBB330, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
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

uint64_t sub_1009044A0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB340, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB348, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1009045A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB340, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB348, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1009046B0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB340, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_100904788()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB340, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB348, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10090488C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB340, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB348, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100904998()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB340, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_100904A70()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB340, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB348, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100904B74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB340, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB348, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100904C80()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB340, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_100904D58()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB340, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB348, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100904E5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB340, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB348, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100904F68()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB340, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_100905034()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB348, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  sub_1009368C8();
}

uint64_t sub_1009050D0(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  sub_100905140(a1, a2);
  return v4;
}

uint64_t *sub_100905140(uint64_t a1, void *a2)
{
  v3 = v2;
  v2[5] = sub_100706B30(&qword_100CBB350);
  sub_10090C044(&qword_100CBB348, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
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

uint64_t *sub_1009053F4(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = sub_100706B30(&qword_100CBB350);
  sub_10090C044(&qword_100CBB348, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
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

uint64_t sub_100905524()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100905628@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100905734()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_100905800()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_1009368C8();
}

uint64_t sub_10090589C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1009059A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100905AAC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_100905B84()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_10090EC54();
  sub_1009368A8();
}

uint64_t sub_100905C8C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_10090EC54();
  sub_1009368A8();
}

uint64_t sub_100905D94(uint64_t a1, uint64_t *a2)
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
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_100905EDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_10090C044(a4, a5);
  sub_10090EBA0();
  sub_1009368C8();
}

uint64_t sub_100905F6C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_10090C044(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1009060A4()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_10090C044(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1009061DC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100936038();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936138();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100906364(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_10090C044(a4, a5);
  sub_10090C044(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009368C8();
}

uint64_t sub_100906424()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100906528@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100906634()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_100906700()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_1009368C8();
}

uint64_t sub_10090679C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1009068A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1009069AC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_100906A78()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_1009368C8();
}

uint64_t sub_100906B14()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_100906C40@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100906D74()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_100906E4C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_100906F78@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1009070AC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB358, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_100907184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_10090C044(a5, a6);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009368C8();
}

uint64_t sub_100907244(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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
  *(v19 + 48) = sub_100706B30(&qword_100CBB368);
  v20 = sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
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
  sub_10090EBA0();
  sub_1009366D8();

  sub_100021EA4(v18);
  *(v19 + 16) = 0;
  v21 = v37;
  v22 = v35;
  (*(v37 + 16))(v15, v36, v35);
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  sub_10090C044(&qword_100CB3DA8, &type metadata accessor for Date);
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

uint64_t sub_1009077F8(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CBB368);
  sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
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

uint64_t sub_100907960()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100907A64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100907B70()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100907C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_10090C044(a5, a6);
  sub_1009368C8();
}

uint64_t sub_100907CE0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100907DE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100907EF0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100907FBC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_100908058()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10090815C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100908268()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100908334()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1009083D0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1009084D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1009085E0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1009086AC()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_100908748()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10090884C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100908958()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100908A24()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_100908AC0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100908BC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100908CD0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100908D9C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_100908E38()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100908F3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100909048()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100909114()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1009091B0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1009092B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1009093C0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_10090948C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_100909528()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10090962C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100909738()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100909804()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1009098A0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1009099A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100909AB0()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100909B7C()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_100909C18()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100909D1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100909E28()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB370, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100909EF4()
{
  swift_getKeyPath();
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t *sub_100909F90()
{
  v0 = swift_allocObject();
  v0[5] = sub_100706B30(&qword_100CBB380);
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
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

uint64_t sub_10090A440(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t *sub_10090A490(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CBB380);
  sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
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

void (*sub_10090A60C(uint64_t *a1))(uint64_t *, char)
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
  return sub_1009134D0;
}

uint64_t sub_10090A788(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_10090A820(uint64_t *a1))(uint64_t *, char)
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
  return sub_1009134D0;
}

uint64_t sub_10090A99C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_10090AA4C(uint64_t *a1))(uint64_t *, char)
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
  return sub_1009134D4;
}

uint64_t sub_10090ABC8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_10090AC60(uint64_t *a1))(uint64_t *, char)
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
  return sub_1009134D4;
}

uint64_t sub_10090ADDC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_10090AE74(uint64_t *a1))(uint64_t *, char)
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
  return sub_1009134D0;
}

uint64_t sub_10090AFF0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10090C044(&qword_100CBB300, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_10090B088(uint64_t *a1))(uint64_t *, char)
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
  return sub_1009134D0;
}

uint64_t sub_10090B204(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_10090B2B4(uint64_t *a1))(uint64_t *, char)
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
  return sub_1009134D4;
}

uint64_t sub_10090B430(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10090C044(&qword_100CBB330, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t *sub_10090B4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t *))
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

void (*sub_10090B5E8(uint64_t *a1))(uint64_t *, char)
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
  return sub_1009134D4;
}

uint64_t sub_10090B764(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10090C044(&qword_100CBB348, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_10090B7FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_100012970(v4 + 24);
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_10090B864(uint64_t *a1))(uint64_t *, char)
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
  return sub_1009134D0;
}

uint64_t sub_10090B9E0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_10090BA78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = swift_allocObject();
  a4(a1);
  return v6;
}

uint64_t sub_10090BAC8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_100012970(v4 + 16);
  a4(a1, v4 + 16);
  return swift_endAccess();
}

void (*sub_10090BB30(uint64_t *a1))(uint64_t *, char)
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
  return sub_1009134D4;
}

uint64_t sub_10090BCAC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_10090BD2C()
{
  sub_100706B30(&unk_100CB4A00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009B0EE0;
  v1 = type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice(0);
  v2 = sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable(0);
  v4 = sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession(0);
  v6 = sub_10090C044(&qword_100CBB2D0, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSession);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity(0);
  v8 = sub_10090C044(&qword_100CBB2E8, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDPublicIdentity);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution(0);
  v10 = sub_10090C044(&qword_100CBB318, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDSenderKeyDistribution);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex(0);
  v12 = sub_10090C044(&qword_100CBB330, type metadata accessor for SDPersistenceSchemaV0.IDSGroupEncryptionKeyRollIndex);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  v13 = type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle(0);
  v14 = sub_10090C044(&qword_100CBB300, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDShortHandle);
  *(v0 + 128) = v13;
  *(v0 + 136) = v14;
  v15 = type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle(0);
  v16 = sub_10090C044(&qword_100CBB348, type metadata accessor for SDPersistenceSchemaV0.IDSOffGridDeliveryDonatedHandle);
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  v17 = type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent(0);
  v18 = sub_10090C044(&qword_100CBB360, type metadata accessor for SDPersistenceSchemaV0.IDSRegistrationEvent);
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  v19 = type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount(0);
  v20 = sub_10090C044(&qword_100CBB378, type metadata accessor for SDPersistenceSchemaV0.IDSQualifiedContactsCount);
  *(v0 + 176) = v19;
  *(v0 + 184) = v20;
  return v0;
}

uint64_t sub_10090C044(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10090C2B4()
{
  result = qword_100CBB278;
  if (!qword_100CBB278)
  {
    sub_1007147D0(&qword_100CBB270);
    sub_10090C044(&qword_100CBB280, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB278);
  }

  return result;
}

uint64_t sub_10090C394()
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
  v12 = sub_10090C044(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
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
  v12 = sub_10090C044(&qword_100CB49F8, &type metadata accessor for Schema.Relationship);
  *&v10 = v8;
  sub_1009369B8();
  return v4;
}

unint64_t sub_10090CC74()
{
  result = qword_100CBB298;
  if (!qword_100CBB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB298);
  }

  return result;
}

unint64_t sub_10090CCF8()
{
  result = qword_100CBB2A0;
  if (!qword_100CBB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB2A0);
  }

  return result;
}

unint64_t sub_10090CDB0()
{
  result = qword_100CBB2B0;
  if (!qword_100CBB2B0)
  {
    sub_1007147D0(&qword_100CBB2A8);
    sub_10090C044(&qword_100CBB268, type metadata accessor for SDPersistenceSchemaV0.IDSQuerySDAddressable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBB2B0);
  }

  return result;
}

uint64_t sub_10090CE90()
{
  v10 = sub_100936978();
  v0 = *(v10 - 8);
  __chkstk_darwin(v10);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1009B6940;
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
  v13 = sub_10090C044(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
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
  v13 = sub_10090C044(&qword_100CB49F8, &type metadata accessor for Schema.Relationship);
  *&v11 = v7;
  sub_1009369B8();
  return v3;
}

unint64_t sub_10090D588()
{
  result = qword_100CD1A68;
  if (!qword_100CD1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1A68);
  }

  return result;
}

uint64_t sub_10090D5DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100706B30(&qword_100CBBDD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = a1[3];
  v36 = a1;
  sub_1000226D4(a1, v9);
  sub_10090D588();
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
    sub_10090CD78(&v38, &v45);
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
    result = sub_10090CCC8(&v45);
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

uint64_t sub_10090E060()
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
  sub_10090C044(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
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

uint64_t sub_10090E718()
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
  sub_10090C044(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
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

unint64_t sub_10090EBA0()
{
  result = qword_100CB3DD8;
  if (!qword_100CB3DD8)
  {
    sub_1007147D0(&qword_100CB4AC0);
    sub_10090C044(&qword_100CB3DA8, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3DD8);
  }

  return result;
}

unint64_t sub_10090EC54()
{
  result = qword_100CB3DE0;
  if (!qword_100CB3DE0)
  {
    sub_1007147D0(&qword_100CB4AC0);
    sub_10090C044(&unk_100CBA670, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3DE0);
  }

  return result;
}

uint64_t sub_10090ED6C()
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
  sub_10090C044(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_10090F6B4()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009B6950;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_10090C044(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
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

uint64_t sub_10090FE90()
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
  sub_10090C044(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_10091026C()
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
  sub_10090C044(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_1009107F4()
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
  sub_10090C044(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
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

uint64_t sub_100910E7C()
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
  sub_10090C044(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
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

uint64_t sub_1009121FC()
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

uint64_t sub_1009122D4()
{
  result = sub_100936168();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1009123C4()
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

uint64_t sub_100912494()
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

uint64_t sub_100912588()
{
  result = sub_100936168();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100912680()
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

uint64_t sub_100912744()
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

uint64_t sub_10091280C()
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

uint64_t sub_1009128E8()
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

unint64_t sub_1009129C8()
{
  result = qword_100CD3950[0];
  if (!qword_100CD3950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CD3950);
  }

  return result;
}

unint64_t sub_100912A20()
{
  result = qword_100CD3A60;
  if (!qword_100CD3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3A60);
  }

  return result;
}

unint64_t sub_100912A78()
{
  result = qword_100CD3A68[0];
  if (!qword_100CD3A68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CD3A68);
  }

  return result;
}

uint64_t sub_100912C5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  swift_getKeyPath();
  sub_10090C044(a2, a3);
  sub_100768A18();
  sub_1009368C8();
}

uint64_t sub_100912D48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  swift_getKeyPath();
  sub_10090C044(a2, a3);
  sub_1009368C8();
}

uint64_t sub_1009134DC(uint64_t a1)
{
  v1 = *(&off_100BEC6B0 + ((-15 * (dword_100CBBDF8 ^ 0x34 ^ dword_100CBBDE0)) ^ byte_1009C18E0[byte_1009C21E0[(-15 * (dword_100CBBDF8 ^ 0x34 ^ dword_100CBBDE0))] ^ 0xE7]) - 156);
  v2 = *(&off_100BEC6B0 + ((-15 * ((dword_100CBBDE0 + *v1) ^ 0x34)) ^ byte_1009C1EE0[byte_1009C1BE0[(-15 * ((dword_100CBBDE0 + *v1) ^ 0x34))] ^ 0x6F]) - 157);
  v3 = (*(v2 - 4) - *v1) ^ &v9;
  *v1 = 618829553 * (v3 - 0x36690F2252B96534);
  *(v2 - 4) = 618829553 * (v3 ^ 0x36690F2252B96534);
  v4 = *(&off_100BEC6B0 + ((-15 * ((dword_100CBBDE0 + dword_100CBBDF8) ^ 0x34)) ^ byte_1009C1FE0[byte_1009C1CE0[(-15 * ((dword_100CBBDE0 + dword_100CBBDF8) ^ 0x34))] ^ 0xD1]) - 162);
  v5 = *(v4 + 72);
  v6 = 1402727023 * (((v10 | 0x27DEB680A9B42913) - v10 + (v10 & 0xD821497F564BD6E8)) ^ 0x50B504743F2B62FBLL);
  v10[0] = -1850172192 - v6;
  v11 = a1;
  v12 = v5 - v6;
  v7 = -15 * (*v1 ^ 0x34 ^ *(v2 - 4));
  (*(v4 + 8 * ((byte_1009C19EC[(byte_1009C16EC[v7 - 12] ^ 0xF8) - 12] ^ v7) - 109)))(v10);
  return v10[1];
}

uint64_t sub_100913704(uint64_t a1)
{
  v1 = *(&off_100BEC6B0 + ((-15 * ((dword_100CBBDE0 - dword_100CBBE00) ^ 0x34)) ^ byte_1009C1FE0[byte_1009C1CE0[(-15 * ((dword_100CBBDE0 - dword_100CBBE00) ^ 0x34))] ^ 0x68]) - 161);
  v2 = *(&off_100BEC6B0 + ((-15 * ((dword_100CBBDE0 + *v1) ^ 0x34)) ^ byte_1009C17E0[byte_1009C20E0[(-15 * ((dword_100CBBDE0 + *v1) ^ 0x34))] ^ 0x49]) - 156);
  v3 = *v1 - &v9 + *(v2 - 4);
  *v1 = 618829553 * v3 - 0x36690F2252B96534;
  *(v2 - 4) = 618829553 * (v3 ^ 0x36690F2252B96534);
  v4 = *(&off_100BEC6B0 + ((-15 * ((dword_100CBBDE0 - dword_100CBBE00) ^ 0x34)) ^ byte_1009C19E0[byte_1009C16E0[(-15 * ((dword_100CBBDE0 - dword_100CBBE00) ^ 0x34))] ^ 0x43]) - 161);
  v5 = 1402727023 * (((v10 | 0x7C6B3F64920E76B7) - v10 + (v10 & 0x8394C09B6DF18948)) ^ 0xB008D9004913D5FLL);
  v6 = *(v4 + 56) - v5;
  v10[0] = -1850172192 - v5;
  v11 = a1;
  v12 = v6;
  v7 = -15 * ((*(v2 - 4) + *v1) ^ 0x34);
  (*(v4 + 8 * ((byte_1009C1DE0[byte_1009C1AEC[v7 - 12] ^ 0xF5] ^ v7) - 110)))(v10);
  return v10[1];
}

void sub_100913930(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = !v3 && a3 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100913990(uint64_t a1, uint64_t a2, int a3)
{
  v8[0] = *(v3 + 240);
  v12 = v8;
  v11 = 1646140907 * ((((2 * &v10) | 0x3988BEFC) - &v10 - 482631550) ^ 0x9DCFCC13) - 1458603509;
  (*(v3 + 792))(&v10);
  v8[0] = *(v3 + 224);
  v8[1] = a1;
  v8[2] = a2;
  v9 = a3 - ((2 * a3) & 0xC11FE834) - 527436774;
  v12 = v8;
  v11 = 1646140907 * ((-971957249 - (&v10 | 0xC6111BFF) + (&v10 | 0x39EEE400)) ^ 0xB8E5776D) - 1458603509;
  (*(v3 + 792))(&v10);
  return (v10 - 1247915629);
}

void sub_100913AD0(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100913B30(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = *(v5 + 240);
  v18 = v12;
  v17 = 1646140907 * ((((&v16 | 0xE5FBA1E6) ^ 0xFFFFFFFE) - (~&v16 | 0x1A045E19)) ^ 0x9B0FCD74) - 1458603509;
  (*(v5 + 792))(&v16);
  v12[0] = *(v5 + 120);
  v12[1] = a1;
  v13 = (a2 ^ 0xEBCFBCFF) + 1056145346 + ((2 * a2) & 0xD79F79FE);
  v12[2] = a3;
  v14 = a4;
  v15 = a5;
  v17 = 1646140907 * ((&v16 & 0x300CA9DE | ~(&v16 | 0x300CA9DE)) ^ 0x4EF8C54C) - 1458603509;
  v18 = v12;
  (*(v5 + 792))(&v16);
  return (v16 - 1247915629);
}

void sub_100913C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100913CE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v12[0] = *(v5 + 240);
  v18 = v12;
  v17 = 1646140907 * ((&v16 - 367535318 - 2 * (&v16 & 0xEA17DB2A)) ^ 0x6B1C4847) - 1458603509;
  (*(v5 + 792))(&v16);
  v12[0] = *(v5 + 168);
  v12[1] = a1;
  v12[2] = a2;
  v13 = (a3 ^ 0xF9DE9AFF) + 1878779883 + ((2 * a3) & 0xF3BD35FE);
  v14 = a4;
  v15 = a5;
  v17 = 1646140907 * (((&v16 | 0x4D50755D) - &v16 + (&v16 & 0xB2AF8AA0)) ^ 0xCC5BE630) - 1458603509;
  v18 = v12;
  (*(v5 + 792))(&v16);
  return (v16 - 1247915629);
}

uint64_t sub_100913E5C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v6 = qword_100CBCD78 - qword_100CBCD98 - &v13;
  qword_100CBCD98 = 1000671541 * v6 + 0x78D52D199FB68F0CLL;
  qword_100CBCD78 = 1000671541 * (v6 ^ 0x25209C7892F2405CLL);
  v9[0] = sub_1002CD8A8;
  v9[1] = a1;
  v11 = a2;
  v10 = a4;
  v9[2] = a3;
  v9[3] = a5;
  v12 = a6;
  v15 = v9;
  v7 = byte_100A0F860[byte_100A0F760[(53 * (qword_100CBCD98 ^ 0x5C ^ qword_100CBCD78))] ^ 0xC5];
  v14[1] = (923786993 * ((((&vars0 - 24) | 0x883FAA19) - (&vars0 - 24) + ((&vars0 - 24) & 0x77C055E0)) ^ 0xE2D81656)) ^ 0x6294CF9;
  (*(&off_100C005A0 + ((53 * (qword_100CBCD98 ^ 0x5C ^ qword_100CBCD78)) ^ v7) + 1678))(v14);
  return v14[0];
}

uint64_t sub_100913FB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  qword_100CBCDA0 = 1000671541 * ((qword_100CBCDA0 - &v7 + qword_100CBCD78) ^ 0x25209C7892F2405CLL);
  qword_100CBCD78 = qword_100CBCDA0;
  v5 = 398132233 * ((2 * (&v8 & 0x130F2ADC81DB4528) - &v8 - 0x130F2ADC81DB4529) ^ 0x1D6B4662CA30F771);
  v8 = a2;
  v14 = -601934099 - v5;
  v10 = a1;
  v9 = v5 ^ a5;
  v12 = v5 ^ a3;
  v13 = a4;
  v15 = sub_1001F1184 - v5;
  (*(&off_100C005A0 + (unk_100A0FE9C ^ 0xCu) + 1929))(&v8);
  return v11;
}

uint64_t sub_10091410C(uint64_t a1)
{
  v1 = (qword_100CBCD78 ^ qword_100CBCDA8) - &v5;
  qword_100CBCDA8 = 1000671541 * v1 + 0x78D52D199FB68F0CLL;
  qword_100CBCD78 = 1000671541 * (v1 ^ 0x25209C7892F2405CLL);
  v2 = 1614251083 * (((&v6 | 0xBCC87CDF8A18F0EFLL) - &v6 + (&v6 & 0x4337832075E70F10)) ^ 0x8E2A700E2019D0FLL);
  v6 = v2 ^ 0x9405E0C4;
  v3 = byte_100A0FC60[byte_100A0FB60[(53 * ((qword_100CBCD78 - qword_100CBCDA8) ^ 0x5C))] ^ 0x20];
  v9 = sub_1002CDE5C + v2;
  v7 = a1;
  (*(&off_100C005A0 + ((53 * ((qword_100CBCD78 - qword_100CBCDA8) ^ 0x5C)) ^ v3) + 2185))(&v6);
  return v8;
}

uint64_t sub_100914268(uint64_t a1)
{
  v1 = qword_100CBCD88 - &v5 + qword_100CBCD78;
  qword_100CBCD88 = (1000671541 * v1) ^ 0x25209C7892F2405CLL;
  qword_100CBCD78 = 1000671541 * (v1 ^ 0x25209C7892F2405CLL);
  v2 = 1614251083 * ((2 * (&v6 & 0x5BC954F4024B22D0) - &v6 - 0x5BC954F4024B22D4) ^ 0x101C70D495ADB0CCLL);
  v6 = v2 ^ 0x9405E0C4;
  LOBYTE(v1) = 53 * ((53 * v1) ^ qword_100CBCD78);
  v3 = byte_100A0FC60[byte_100A0FB60[v1] ^ 0x6A];
  v7 = a1;
  v9 = sub_1002CDDEC + v2;
  (*(&off_100C005A0 + (v1 ^ v3) + 2031))(&v6);
  return v8;
}

uint64_t sub_1009143C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = qword_100CBCD78 - qword_100CBCD80 - &v15;
  qword_100CBCD80 = 1000671541 * (v7 - 0x25209C7892F2405CLL);
  qword_100CBCD78 = 1000671541 * (v7 ^ 0x25209C7892F2405CLL);
  v10[0] = sub_1002CD9F0;
  v10[1] = a1;
  v11 = a3;
  v10[2] = a2;
  v10[3] = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v17 = v10;
  v8 = byte_100A0FA60[byte_100A0F960[(53 * ((qword_100CBCD78 + qword_100CBCD80) ^ 0x5C))] ^ 0xE2];
  v16[1] = (923786993 * ((((&vars0 - 24) | 0x369D7D4) - (&vars0 - 24) + ((&vars0 - 24) & 0xFC962828)) ^ 0x698E6B9B)) ^ 0x6294CF9;
  (*(&off_100C005A0 + ((53 * ((qword_100CBCD78 + qword_100CBCD80) ^ 0x5C)) ^ v8) + 1891))(v16);
  return v16[0];
}

uint64_t sub_100914520(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  qword_100CBCD90 = 1000671541 * ((qword_100CBCD78 - qword_100CBCD90 - &v8) ^ 0x25209C7892F2405CLL);
  qword_100CBCD78 = qword_100CBCD90;
  v6[0] = sub_1002CD824;
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = a3;
  v7 = a4;
  v9[1] = (923786993 * ((2 * ((&vars0 - 24) & 0x63FDC6F8) - (&vars0 - 24) + 469907714) ^ 0x76E5854D)) ^ 0x6294CF9;
  v4 = byte_100A10060[byte_100A0FF60[(53 * ((2 * qword_100CBCD90) ^ 0x5C))] ^ 0x5A];
  v10 = v6;
  (*(&off_100C005A0 + ((53 * ((2 * qword_100CBCD90) ^ 0x5C)) ^ v4) + 1823))(v9);
  return v9[0];
}

uint64_t sub_100914668()
{
  if (qword_100CD3D18 != -1)
  {
    sub_1009359C4();
  }

  dispatch_sync(qword_100CD3D20, &stru_100C04B48);
  return dword_100CD3D10;
}

void sub_1009146B0(id a1)
{
  if (!dword_100CD3D10)
  {
    dword_100CD3D10 = sub_10091471C("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t sub_10091471C(char *path, const char *a2)
{
  connect = 0;
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3 || (v4 = v3, v5 = IOServiceOpen(v3, mach_task_self_, 0, &connect), IOObjectRelease(v4), v5))
  {
    v6 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      IOObjectRelease(v8);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t sub_100914870(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, a5, a6, 0, 0, a9, a10);
}

char *sub_1009148C8(_DWORD *a1, const void *a2, int a3)
{
  v3 = (a1 + 1);
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 += a3;
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      v3 += v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

char *sub_100914950(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = sub_1009148C8(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

void sub_100914A30()
{
  v0 = 138412546;
  v1 = @"is-approved";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_100914ACC()
{
  v0 = 138412546;
  v1 = @"web-uri";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_100914B68(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Failed to serialize cache -- Not saving opportunistic cache {error: %@, cache: %@}", &v3, 0x16u);
}

void sub_100914C04()
{
  v1[0] = 138412546;
  sub_10030DA78();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "%@ - Using device heartbeat override value of %d seconds", v1, 0x12u);
}

void sub_100914C84()
{
  v1[0] = 138412546;
  sub_10030DA78();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "%@ - Using random device heartbeat override value of %d seconds", v1, 0x12u);
}

void sub_100914D2C(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = @"DeviceHeartbeat";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%@ - UserID is empty (%@), ignoring expiry update...", &v2, 0x16u);
}

void sub_100914E24(void *a1)
{
  v1 = [a1 prefixedURI];
  v2 = 138412546;
  v3 = v1;
  v4 = 2080;
  v5 = "_disasterModeTokens";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v2, 0x16u);
}

void sub_100914ED4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Query cache:", &v3, 0x16u);
}

void sub_100914F5C()
{
  v0 = 138412546;
  v1 = @"device-time";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_10091503C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create NRDeviceMonitor object. {pointer: %p}", &v3, 0xCu);
}

void sub_10091550C()
{
  v0 = 138412546;
  v1 = @"accessory-id";
  v2 = 2080;
  v3 = "adminAccessTokenDict";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_1009155A8()
{
  v0 = 138412546;
  v1 = @"access-token";
  v2 = 2080;
  v3 = "adminAccessTokenDict";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_10091566C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "CurrentCluster missing GroupIdentifier {currentCluster: %{public}@}", &v2, 0xCu);
}

void sub_100915768()
{
  sub_10033C40C();
  sub_10033C49C();
  sub_10033C3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100915810(uint64_t a1)
{
  v1 = [IDSKeychainWrapper shortDescriptionForDataProtectionClass:a1];
  sub_10033C40C();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100915934()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1009159A4()
{
  sub_10033C40C();
  sub_10033C49C();
  sub_10033C3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100915B0C()
{
  sub_10033C490();
  sub_10033C484(v1, v2, 5.7779e-34);
  sub_10033C458();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100915B58()
{
  sub_10033C490();
  sub_10033C484(v1, v2, 5.7779e-34);
  sub_10033C458();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100915BA4()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100915BE0()
{
  sub_10033C490();
  sub_10033C484(v1, v2, 5.7779e-34);
  sub_10033C458();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100915C2C()
{
  sub_10033C490();
  sub_10033C484(v1, v2, 5.7779e-34);
  sub_10033C458();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100915C78()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100915CE8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"IDSRegistrationKeyManager.m" lineNumber:739 description:{@"Invalid parameter not satisfying: %@", @"systemMonitor"}];
}

void sub_100915D64(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"IDSRegistrationKeyManager.m" lineNumber:740 description:{@"Invalid parameter not satisfying: %@", @"keychainWrapper"}];
}

void sub_100915DE0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"IDSRegistrationKeyManager.m" lineNumber:741 description:{@"Invalid parameter not satisfying: %@", @"identityDataSource"}];
}

void sub_100915E5C(void *a1)
{
  v1 = [a1 config];
  sub_10033C40C();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100915EE8(void *a1)
{
  v1 = [a1 config];
  sub_10033C40C();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100915F74()
{
  sub_10033C3F4();
  sub_10033C3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100915FE4(uint64_t a1, void *a2)
{
  v7 = [a2 legacyPublicIdentity];
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10091609C(uint64_t a1, void *a2)
{
  v3 = [a2 config];
  v4 = [v3 unregisteredIdentityContainer];
  v5 = [a2 config];
  v6 = [v5 registeredIdentityContainer];
  sub_10033C464();
  sub_10033C3A4();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x20u);
}

void sub_100916184(void *a1)
{
  v1 = [a1 config];
  sub_10033C40C();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100916210()
{
  sub_10033C40C();
  sub_10033C49C();
  sub_10033C424();
  sub_10033C4C4(v0, v1, v2, v3, v4);
}

void sub_100916280()
{
  sub_10033C3F4();
  sub_10033C424();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void sub_1009162F4()
{
  sub_10033C3F4();
  sub_10033C424();
  sub_10033C4C4(v0, v1, v2, v3, v4);
}

void sub_100916360()
{
  sub_10033C3F4();
  sub_10033C424();
  sub_10033C4C4(v0, v1, v2, v3, v4);
}

void sub_100916400()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091643C()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1009164AC()
{
  sub_10033C40C();
  sub_10033C3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100916528()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100916564()
{
  sub_10033C3CC();
  sub_10033C3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1009165D4()
{
  sub_10033C4B8();
  v2 = [sub_10033C4AC(v0 v1)];
  v3 = [v2 unregisteredIdentityContainer];
  sub_10033C3B4();
  sub_10033C3A4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100916678(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 config];
  v7 = [v6 registeredIdentityContainer];
  v8 = [a1 config];
  v9 = [v8 unappliedRollingTicket];
  v10 = 138412802;
  v11 = v7;
  v12 = 2112;
  v13 = v9;
  v14 = 2112;
  v15 = a2;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Completed registration of public identity, but we were unable to apply the rolling ticket {ngmFullDeviceIdentity: %@, unappliedRollingTicket: %@, rollError: %@}", &v10, 0x20u);
}

void sub_100916770()
{
  sub_10033C3CC();
  sub_10033C3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1009167E0()
{
  sub_10033C3CC();
  sub_10033C3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100916850()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1009168C0()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100916930()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1009169A0()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100916A10()
{
  sub_10033C4B8();
  v2 = [sub_10033C4AC(v0 v1)];
  v3 = [v2 previousRegisteredIdentityContainer];
  sub_10033C3B4();
  sub_10033C3A4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100916AB4()
{
  sub_10033C4B8();
  v2 = [sub_10033C4AC(v0 v1)];
  v3 = [v2 identityClassA];
  sub_10033C3B4();
  sub_10033C3A4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100916B58()
{
  sub_10033C4B8();
  v2 = [sub_10033C4AC(v0 v1)];
  v3 = [v2 identityClassC];
  sub_10033C3B4();
  sub_10033C3A4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100916BFC()
{
  sub_10033C4B8();
  v2 = [sub_10033C4AC(v0 v1)];
  v3 = [v2 identityClassD];
  sub_10033C3B4();
  sub_10033C3A4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100916CA0()
{
  sub_10033C3CC();
  sub_10033C424();
  sub_10033C4C4(v0, v1, v2, v3, v4);
}

void sub_100916D0C()
{
  sub_10033C3CC();
  sub_10033C3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100916D7C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "NGM encryption failed {error: %@}", &v2, 0xCu);
}

void sub_100916E08()
{
  sub_1003466F4();
  sub_10034673C();
  sub_10033C3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100916E80(uint64_t a1, void *a2)
{
  v2 = [a2 serviceIndexToKeyConfigs];
  sub_100346724();
  sub_100346704(&_mh_execute_header, v3, v4, "No config for key Index %u %@", v5, v6, v7, v8, v9);
}

void sub_100916F14()
{
  sub_1003466F4();
  sub_10034673C();
  sub_10033C3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10091701C()
{
  sub_1003466F4();
  sub_10034673C();
  sub_10033C3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100917758()
{
  v0 = 138412546;
  v1 = @"spam-message";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_10091784C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Error committing replay state { error: %@ }", &v2, 0xCu);
}

void sub_1009179F0(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = a1;
  v4 = 2048;
  v5 = 0x4143C68000000000;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Non-sensical heartbeat value: %@ from server, using default: %f", &v2, 0x16u);
}

void sub_100917A7C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Using heartbeat override value of %d seconds", v2, 8u);
}

void sub_100917AF4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Using random heartbeat override value of %d seconds", v2, 8u);
}

void sub_100917E48(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = [a1 inProgressKeyUpdates];
  if ([v2 count])
  {

    goto LABEL_5;
  }

  v3 = [a1 successKeyResponses];
  v4 = [v3 count];

  if (v4)
  {
LABEL_5:
    v5 = [a1 inProgressKeyUpdates];
    v6 = [v5 count];

    if (!v6)
    {
      v7 = +[IDSFoundationLog stewieProvisioning];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [a1 successKeyResponses];
        v14 = 134217984;
        v15 = [v8 count];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received successful key updates - sending keysReceipt { self.successKeyResponses.count: %ld, withSuccess: YES }", &v14, 0xCu);
      }

      v9 = [a1 stewieCTClient];
      v10 = [a1 successKeyResponses];
      [v9 didUpdateSessionKeys:v10 withAnySuccess:1];

      [a1 setSuccessKeyResponses:0];
    }

    return;
  }

  v11 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received no successful key updates - sending keysReceipt { self.successKeyResponses.count: 0, withSuccess: NO }", &v14, 2u);
  }

  v12 = [a1 stewieCTClient];
  v13 = [a1 successKeyResponses];
  [v12 didUpdateSessionKeys:v13 withAnySuccess:0];
}

void sub_100918044(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = [a2 countByEnumeratingWithState:a1 objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v19 = **(a1 + 16);
    do
    {
      v8 = 0;
      do
      {
        if (**(a1 + 16) != v19)
        {
          objc_enumerationMutation(a2);
        }

        v9 = [*(*(a1 + 8) + 8 * v8) request];
        v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 ctIndex]);
        v11 = [a4 inProgressKeyUpdates];
        v12 = [v11 objectForKey:v10];

        v13 = [v9 sessionKey];
        v14 = [v12 key];
        v15 = [v13 isEqualToData:v14];

        if (v15)
        {
          v16 = [a4 inProgressKeyUpdates];
          [v16 removeObjectForKey:v10];
        }

        v8 = v8 + 1;
      }

      while (v7 != v8);
      v7 = [a2 countByEnumeratingWithState:a1 objects:a3 count:16];
    }

    while (v7);
  }

  sub_100917E48(a4);
}

void sub_1009181D0(void *a1, NSObject *a2)
{
  v3 = [a1 connection];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Connection not entitled to retrieve opportunistic cache -- failing {connection: %@}", &v4, 0xCu);
}

void sub_100918268(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, " => Checking %@", &v2, 0xCu);
}

void sub_100918338(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "We don't support this unknown registration service type { serviceType: %@ }", &v2, 0xCu);
}

void sub_1009183B0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "We don't support this unknown registration type { registrationType: %d }", v2, 8u);
}

void sub_100918428(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2112;
  *(buf + 10) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Attempting to register unknown registration type (%d): %@", buf, 0x12u);
}

void sub_100918480(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failing Home Number registration because no authentication cert on registration: %@", &v2, 0xCu);
}

void sub_1009184F8()
{
  v0 = 138412546;
  v1 = @"sP";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_100918594()
{
  v0 = 138412546;
  v1 = @"dtl";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_1009186CC()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100918FA4()
{
  sub_10033C40C();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10091A0BC(void *a1)
{

  objc_end_catch();
}

void sub_10091A0F0()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091A12C()
{
  sub_10033C40C();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, " invalid port %d", v2, 0x16u);
}

void sub_10091A1B0(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "COPY_INT_VALUE_AND_ADVANCE ERROR, return -1", buf, 2u);
}

void sub_10091A1F4()
{
  sub_10033C40C();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "<%@> - didReceiveParticipantUpdate: unsupported messageType: %u", v2, 0x12u);
}

void sub_10091A278()
{
  sub_10033C40C();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10091A2E8()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091A874()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091A924()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091AB70()
{
  sub_10033C40C();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10091ABE0()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091AC1C()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091AC58(void *a1, id *a2, NSObject *a3)
{
  v5 = [a1 unsignedLongLongValue];
  v6 = [*a2 sharedState];
  v7 = [v6 groupID];
  v8 = 134218242;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "_decryptReceivedDataBlobsUsingSKMs: no valid URI for participantID: %llu, group: %@", &v8, 0x16u);
}

void sub_10091AD98(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "IDSServerDesiredEncryptedDataSet materialDataByID: error: %@", &v2, 0xCu);
}

void sub_10091AE54(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unhandled signal: %d", v3, 8u);
}

void sub_10091AFF8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "IDSAgent exception caught on main thread: %@", &v2, 0xCu);
}

id sub_10091B0F4(void *a1)
{
  if (a1)
  {
    v1 = [a1 bag];
    v2 = [v1 objectForKey:@"channel-roll-keys-key"];

    if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10091B188(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_opt_class();
    v8 = sub_10001B3A0(v4, v3, @"maxDelay");

    v5 = v8;
    if (v8)
    {
      v6 = arc4random_uniform(1000 * [v8 unsignedIntValue]) / 1000.0;
      v7 = [a1 delegate];
      [v7 pushHandler:a1 receivedRollSMSConfigPushWithDelay:v6];

      v5 = v8;
    }
  }
}

void sub_10091B25C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Received stewie push %@", &v3, 0x16u);
}

void sub_10091B3F4(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Missing required entitlement to send cache clear request. {connection: %@}", &v3, 0xCu);
}

void sub_10091BA40(void *a1)
{
  v1 = [a1 UUIDString];
  sub_1003E4344();
  sub_1003E4364(&_mh_execute_header, v2, v3, "Dropping group session participant update due to groupID mismatch { type: %lu, groupID: %@, groupUUID: %@ }", v4, v5, v6, v7, v8);
}

void sub_10091BAD8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Cannot get participantsForGroupID, no groupID!", &v3, 0x16u);
}

void sub_10091BB60(void *a1)
{
  v1 = [a1 UUIDString];
  sub_1003E4344();
  sub_1003E4364(&_mh_execute_header, v2, v3, "processIncomingParticipantDataUpdateMessage: Dropping due to groupID mismatch { type: %lu, groupID: %@, groupUUID: %@ }", v4, v5, v6, v7, v8);
}

void sub_10091C0C0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error creating proxy for OffGrid state manager client {self: %p, uuid: %@}", &v3, 0x16u);
}

void sub_10091C148()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091C184()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091C1C0()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091C1FC(id *a1, NSObject *a2)
{
  v4 = [*a1 isActiveForIML];
  v5 = [*a1 isActiveForSMS];
  v6 = 134218240;
  v7 = v4;
  v8 = 2048;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "We don't have any services that are active. IML{%ld} SMS {%ld}", &v6, 0x16u);
}

void sub_10091C2B4()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091C44C()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091C488()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091C4C4()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091C574()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getHKMedicalIDStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSDXPCOffGridStateManager.m" lineNumber:27 description:{@"Unable to find class %s", "HKMedicalIDStore"}];

  __break(1u);
}

void sub_10091C5F0(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *HealthKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IDSDXPCOffGridStateManager.m" lineNumber:26 description:{@"%s", *a1}];

  __break(1u);
}

void sub_10091C670()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getHKHealthStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSDXPCOffGridStateManager.m" lineNumber:28 description:{@"Unable to find class %s", "HKHealthStore"}];

  __break(1u);
}

void sub_10091C6EC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "plain: %@, encrypted: %@, decrypted: %@", &v3, 0x16u);
}

void sub_10091C9F0(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  if (a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = v3;
  sub_1003FE3B0(&_mh_execute_header, a2, a3, "Failed to remove item from keychain {identifier: %{public}@, error: %{public}@}", *v4, *&v4[8], *&v4[16]);
}

void sub_10091CA78(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543619;
  *&v3[4] = *a1;
  *&v3[12] = 2113;
  *&v3[14] = a2;
  sub_1003FE3B0(&_mh_execute_header, a2, a3, "Failed to create cluster from data {error: %{public}@, data: %{private}@}", *v3, *&v3[8], *&v3[16]);
}

void sub_10091CAF4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543619;
  v4 = a1;
  v5 = 2113;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Missing legacy identity data from [<IDSClientDataRegistrationKeyManager> publicMessageProtectionIdentityDataToRegisterWithError:] -- {error: %{public}@, publicIdentityData: %{private}@}", &v3, 0x16u);
}

void sub_10091CB7C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 publicLegacyIdentityData];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Adding public key to client data: %@", a1, 0xCu);
}

void sub_10091D11C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to create IDSVMRegistrationResponse from dataRepresentation : %@, error : %@", &v3, 0x16u);
}

void sub_10091D1A4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create dataRepresentation from IDSVMRequest, error : %@", &v2, 0xCu);
}

void sub_10091D244()
{
  v0 = 138412546;
  v1 = @"x-push-cert";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_10091D2E0()
{
  v0 = 138412546;
  v1 = @"user-id";
  v2 = 2080;
  v3 = "innerDictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_10091D390(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"IDSRapportDeliveryController.m" lineNumber:103 description:@"Any single bonjour message send shouldn't fail the whole send operation"];
}

void sub_10091D414(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Ignoring push: invalid value for {cohortSelected: %@}", &v2, 0xCu);
}

void sub_10091D48C(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unhandled action in registration push message {action: %ld}", &v2, 0xCu);
}

void sub_10091D504(void *a1, NSObject *a2)
{
  v3 = [a1 responseStatus];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Validate credentials returned an error -- taking no action {status: %@}", &v4, 0xCu);
}

void sub_10091D618()
{
  sub_10041E1D4();
  sub_10041E1B4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x34u);
}

void sub_10091D6B4(void *a1)
{
  v2 = [a1 responseEngramID];
  v8 = [a1 responseVersion];
  sub_10041E1C4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10091D77C()
{
  sub_10033C40C();
  sub_10041E1B4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10091D7F8()
{
  v5 = [0 applicationData];
  sub_10041E1C4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10091D8B4(void *a1)
{
  v1 = [a1 accountIdentity];
  sub_10041E1A0();
  sub_10041E1C4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10091D950(void *a1)
{
  v1 = [a1 cypher];
  sub_10041E1A0();
  sub_10041E1C4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10091DA60(void *a1)
{
  v1 = [a1 accountIdentity];
  sub_10041E1A0();
  sub_10041E1C4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10091DAFC()
{
  sub_10041E1A0();
  sub_10041E1B4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10091DC44()
{
  sub_10041E1D4();
  sub_10041E1B4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10091DCD0()
{
  sub_10041E1D4();
  sub_10041E1B4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10091E0F0()
{
  sub_1004254DC(__stack_chk_guard);
  sub_10041E1D4();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10091E2A4()
{
  sub_1004254DC(__stack_chk_guard);
  sub_10041E1D4();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10091E314()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091E3FC()
{
  sub_1004254DC(__stack_chk_guard);
  sub_10041E1D4();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10091E46C()
{
  sub_1004254DC(__stack_chk_guard);
  sub_10041E1D4();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10091E4DC()
{
  sub_1004254DC(__stack_chk_guard);
  sub_10041E1D4();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10091E54C()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091E6CC()
{
  sub_1004254DC(__stack_chk_guard);
  v2[0] = 138412546;
  sub_1004254B0();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed CloudKit query for KT loggable data {error: %@, query: %@}", v2, 0x16u);
}

void sub_10091E750()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10091E78C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unsupported schema version: %@", &v2, 0xCu);
}

void sub_10091EE78(void *a1, NSObject *a2)
{
  v4 = [a1 pushCertificate];
  if (v4)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [a1 pushNonce];
  if (v6)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [a1 pushSig];
  v10 = 138412802;
  if (v8)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v11 = v5;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v9;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Can't add device info to request because we didn't sign push { cert: %@, nonce: %@, sig: %@ }", &v10, 0x20u);
}

void sub_10091EF90()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_10091F004()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"service" object:? file:? lineNumber:? description:?];
}

void sub_10091F078()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_10091F0EC()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_10091F160()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_10091F1D4()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_10091F248()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_10091F2BC()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_10091F330()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_10091F3A4()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_10091F418()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_10091F48C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Failed getExistingFullDeviceIdentity -- missing fullAdminIdentity {error: %{public}@, cluster: %{public}@}", &v3, 0x16u);
}

void sub_10091F514(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed existingFullDeviceIdentity -- keychain error getting device identity {error: %{public}@}", &v2, 0xCu);
}

void sub_10091F58C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ReunionSync require entitlement for non-empty service list {entitlement: com.apple.private.ids.prefer-infrawifi, services: %{public}@}", &v2, 0xCu);
}

void sub_10091F940(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unparseable Home Number expiration: %@", &v2, 0xCu);
}

void sub_10091F9B8(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 evictionDate];
  v6 = 138478083;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Evicting item {key: %{private}@, evictionDate: %{public}@}", &v6, 0x16u);
}

void sub_10091FA80(void *a1)
{
  v1 = [a1 nextLocalMasterKeyMaterial];
  sub_100455044();
  sub_10045505C(&_mh_execute_header, v2, v3, "Adding next local MkM to collection to broadcast { nextLocalMkM: %@ self: %@ }", v4, v5, v6, v7, v8);
}

void sub_10091FB10(void *a1)
{
  v1 = [a1 masterKeyMaterials];
  sub_100455044();
  sub_10045505C(&_mh_execute_header, v2, v3, "Adding remote MkM set to collection to broadcast { remoteMkMSet: %@, self: %@ }", v4, v5, v6, v7, v8);
}

void sub_10091FBDC()
{
  v0 = 138412546;
  v1 = @"base-phone-number";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_10091FC78()
{
  v0 = 138412546;
  v1 = @"region-id";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_10091FD94(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 state];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid state update across XPC for updateFeatureToggleState { state : %lu }", &v3, 0xCu);
}

void sub_1009202C4(void *a1)
{
  v1 = [a1 uniqueID];
  sub_10033C40C();
  sub_10046F31C(&_mh_execute_header, v2, v3, "Account with unique ID %@ already removed, ignoring...", v4, v5, v6, v7, v8);
}

void sub_100920348(void *a1)
{
  v1 = [a1 uniqueID];
  sub_10033C40C();
  sub_10046F31C(&_mh_execute_header, v2, v3, "Account with unique ID %@ already added, ignoring...", v4, v5, v6, v7, v8);
}

void sub_1009203CC(void *a1)
{
  v1 = [a1 uniqueID];
  sub_10033C40C();
  sub_10046F31C(&_mh_execute_header, v2, v3, "Primary account with unique ID %@ already added, ignoring...", v4, v5, v6, v7, v8);
}

void sub_100920594(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 smallDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "  => Found existing adhoc account %@", a1, 0xCu);
}

void sub_100920674(void *a1)
{
  v1 = [a1 uniqueID];
  sub_10033C40C();
  sub_10046F31C(&_mh_execute_header, v2, v3, " * Tried to setup ad hoc account directly %@, ignoring...", v4, v5, v6, v7, v8);
}

void sub_1009206F8()
{
  sub_10033C40C();
  v1 = 2080;
  v2 = "prefDictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v0, 0x16u);
}

void sub_100920864()
{
  v0 = 138412546;
  v1 = @"attributes";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_1009209A0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to fetch selected phone number registration subscription { error: %@ }", &v2, 0xCu);
}

void sub_100920A18(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Tried to create an account with unknown account type %d", v2, 8u);
}

void sub_100920BC8()
{
  sub_10033C40C();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Tried to create an ad hoc account (loginID %@   service %@) with no primary account", v2, 0x16u);
}

void sub_100920C4C(void *a1, void *a2, NSObject *a3)
{
  v5 = objc_retainBlock(a1);
  v6 = [a2 uniqueID];
  v7 = 134218242;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Storing setup handler %p  %@", &v7, 0x16u);
}

void sub_100920D0C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 8);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Broadcasting account info changes %@", &v3, 0xCu);
}

void sub_1009211A4()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1009211E0()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100921294()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1009213D0()
{
  sub_10049EDB0();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10092144C()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100921488(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10049ED9C(a1 a2)];
  *v3 = 138477827;
  *v2 = v4;
  sub_10049EDE4(&_mh_execute_header, v5, v6, "Paired device does not support IPsec {cbuuidUUID: %{private}@}");
}

void sub_1009214E4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Skipping registerDevice with NetworkRelay as !wasInitiallySetupUsingIDSPairing", buf, 2u);
}

void sub_100921524(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10049ED9C(a1 a2)];
  *v3 = 138477827;
  *v2 = v4;
  sub_10049EDE4(&_mh_execute_header, v5, v6, "Failed to create IDSNRDeviceIdentifier {cbuuidUUID: %{private}@}");
}

void sub_100921600()
{
  sub_10049EDB0();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10092167C()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100921764()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1009217A0()
{
  sub_10033C40C();
  v2 = 2112;
  v3 = @"NO";
  v4 = 2113;
  v5 = 0;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Did not call NetworkRelay to register {cbuuidUUID: %{private}@, isPaired: %@, _BTOutOfBandKeyCopy: %{private}@}", v1, 0x20u);
}

void sub_1009218A8()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1009218E4()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100921A00(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to weak link UN class required to post notification: %@", &v2, 0xCu);
}

void sub_100921BB8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to create IDSVMRequest from dataRepresentation : %@, error : %@", &v3, 0x16u);
}

void sub_100921C40()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100921C7C()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100921D2C()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100921D68()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100921DD8()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100921E48()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100921EB8()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100921F28()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100921F98()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100922008()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100922078()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1009220E8()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1009221AC()
{
  v0 = 138412546;
  v1 = IDSCommandKey;
  v2 = 2080;
  v3 = "idsMessage";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_10092224C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Forcing a bag fetch to refresh EN versioning", &v3, 0x16u);
}

void sub_1009222E8(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock(a1 + 2);
    v4 = [(os_unfair_lock_s *)a1 enqueuedMessage];

    if (!v4)
    {
      v5 = objc_alloc_init(IDSStewieProvisionMessage);
      [(os_unfair_lock_s *)a1 setEnqueuedMessage:v5];
    }

    v6 = [(os_unfair_lock_s *)a1 enqueuedMessage];
    v3[2](v3, v6);

    [(os_unfair_lock_s *)a1 setCurrentInfoEditCount:[(os_unfair_lock_s *)a1 currentInfoEditCount]+ 1];
    v7 = [(os_unfair_lock_s *)a1 inProgressMessage];

    v8 = [(os_unfair_lock_s *)a1 debounceTimer];
    if (v8)
    {
      v10 = [(os_unfair_lock_s *)a1 currentInfoEditCount];
      v9 = v10 < sub_1009228FC(a1);
    }

    else
    {
      v9 = 0;
    }

    v11 = [(os_unfair_lock_s *)a1 currentInfoEditCount];
    v12 = sub_1009228FC(a1);
    if (v7)
    {
      v13 = +[IDSFoundationLog stewieProvisioning];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(os_unfair_lock_s *)a1 enqueuedMessage];
        v15 = [(os_unfair_lock_s *)a1 inProgressMessage];
        *buf = 138412546;
        v21 = v14;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not dispatching stewie send yet { enqueuedMessage: %@, inProgressMessage: %@ }", buf, 0x16u);
      }

      goto LABEL_15;
    }

    if (v9)
    {
      sub_1004D489C(a1);
LABEL_14:
      [(os_unfair_lock_s *)a1 debounceTime];
      sub_1004D48D8(a1, v16);
LABEL_15:
      os_unfair_lock_unlock(a1 + 2);
      goto LABEL_16;
    }

    if (v11 < v12)
    {
      goto LABEL_14;
    }

    sub_1004D489C(a1);
    v19 = 0;
    v17 = sub_1004D4930(a1, &v19);
    v18 = v19;
    os_unfair_lock_unlock(a1 + 2);
    if (v17)
    {
      [(os_unfair_lock_s *)a1 addSignaturesAndSendMessage:v18];
    }
  }

LABEL_16:
}

uint64_t sub_1009228FC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 bag];
  v2 = [v1 objectForKey:@"sps-prov-debounce-max-edit-count"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 intValue];
  }

  else
  {
    v3 = 20;
  }

  return v3;
}

void sub_100922980(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    [a1 addPhoneNumberSigsToMessage:v6];
    sub_100922A00(a1, v6, v5);
  }
}

void sub_100922A00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if ([v5 needsPushIdentity])
    {
      IDSAssignPushIdentityToMessage();
      if (_os_feature_enabled_impl())
      {
        v7 = +[IMRGLog registration];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using push signing API to sign over nil payload", buf, 2u);
        }

        v8 = *(a1 + 48);
        v9 = [v5 serverTimestamp];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_1004D468C;
        v13[3] = &unk_100BDE780;
        v14 = v5;
        v15 = v6;
        [v8 signDataWithPushIdentity:0 serverTimestamp:v9 withCompletion:v13];
      }

      else
      {
        [v5 pushPublicKey];
        [v5 pushPrivateKey];
        v10 = [v5 serverTimestamp];
        _FTGenerateNonceAndSignatureFromPayload();
        v11 = 0;
        v12 = 0;

        [v5 setPushNonce:v11];
        [v5 setPushSig:v12];
        v6[2](v6);
      }
    }

    else
    {
      v6[2](v6);
    }
  }
}

void sub_100922C0C(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) enqueuedMessage];
    v4 = [*(a1 + 32) inProgressMessage];
    *buf = 138412546;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Retrying message. Merging in enqueued data { enqueued: %@, inProgress: %@ }", buf, 0x16u);
  }

  v5 = [*(a1 + 32) enqueuedMessage];

  if (v5)
  {
    v6 = [*(a1 + 32) inProgressMessage];
    v7 = [*(a1 + 32) enqueuedMessage];
    [v6 addMessage:v7];

    [*(a1 + 32) setEnqueuedMessage:0];
  }

  v8 = [*(a1 + 32) inProgressMessage];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v9 = [v8 retryCount];
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 integerValue] + 1);
  [v8 setRetryCount:v10];

  objc_initWeak(buf, *(a1 + 32));
  v11 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1004D5BC4;
  v13[3] = &unk_100BDE7D0;
  objc_copyWeak(&v15, buf);
  v16 = *(a1 + 40);
  v12 = v8;
  v14 = v12;
  sub_100922980(v11, v12, v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void sub_100922E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100922E90(os_unfair_lock_s *a1)
{
  if (a1)
  {
    os_unfair_lock_lock(a1 + 2);
    [(os_unfair_lock_s *)a1 setInProgressMessage:0];
    v2 = [(os_unfair_lock_s *)a1 enqueuedMessage];

    os_unfair_lock_unlock(a1 + 2);
    if (v2)
    {
      v3 = +[IDSFoundationLog stewieProvisioning];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Dequeueing next stewie provision update", v4, 2u);
      }

      sub_1009222E8(a1, &stru_100BDE898);
    }
  }
}

void sub_100922F80(uint64_t a1)
{
  v2 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Clearing debounce timer", v5, 2u);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a1 + 88);
    *(a1 + 88) = 0;
  }
}

void sub_100923038(void *a1, void *a2, double a3)
{
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [a2 enqueuedMessage];
    v12[0] = 67109378;
    v12[1] = a3;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting debounce timer, scheduling stewie send in %d seconds { enqueuedMessage : %@ }", v12, 0x12u);
  }

  if (!a2[11])
  {
    v8 = [IMDispatchTimer alloc];
    v9 = im_primary_queue();
    sub_1004D5F80();
    a1[1] = 3221225472;
    a1[2] = sub_1004D4AB4;
    a1[3] = &unk_100BD9268;
    a1[4] = a2;
    v10 = [v8 initWithQueue:v9 interval:? repeats:? handlerBlock:?];
    v11 = a2[11];
    a2[11] = v10;
  }
}

void sub_1009231D0(os_unfair_lock_s *a1, uint64_t a2, id *a3)
{
  os_unfair_lock_lock(a1 + 2);
  [(os_unfair_lock_s *)a1 setInProgressMessage:0];
  os_unfair_lock_unlock(a1 + 2);
  sub_1004D5F80();
  *(a2 + 8) = 3221225472;
  *(a2 + 16) = sub_1004D4D4C;
  *(a2 + 24) = &unk_100BDE758;
  *(a2 + 32) = *a3;
  sub_1009222E8(a1, a2);
}

void sub_1009235D8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  sub_10049EDC4(&_mh_execute_header, a2, a3, "Received unknown response code { responseCode: %ld, message %@ }", *v3, *&v3[8], *&v3[16]);
}

void sub_100923650()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSString *getCNContactEmailAddressesKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"IDSContactsUtilities.m" lineNumber:22 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_1009236C8()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSString *getCNContactPhoneNumbersKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"IDSContactsUtilities.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_100923740()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSString *getCNContactTypeKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"IDSContactsUtilities.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_1009237B8()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getCNContactStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSContactsUtilities.m" lineNumber:18 description:{@"Unable to find class %s", "CNContactStore"}];

  __break(1u);
}

void sub_100923834(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *ContactsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IDSContactsUtilities.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1009238B4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getCNContactClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSContactsUtilities.m" lineNumber:17 description:{@"Unable to find class %s", "CNContact"}];

  __break(1u);
}

void sub_100923930()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getCNPhoneNumberClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSContactsUtilities.m" lineNumber:19 description:{@"Unable to find class %s", "CNPhoneNumber"}];

  __break(1u);
}

void sub_1009239AC()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getCNContactFormatterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSContactsUtilities.m" lineNumber:20 description:{@"Unable to find class %s", "CNContactFormatter"}];

  __break(1u);
}

void sub_100923A28()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getCNContactFetchRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSContactsUtilities.m" lineNumber:21 description:{@"Unable to find class %s", "CNContactFetchRequest"}];

  __break(1u);
}

void sub_100923AA4()
{
  v0 = 138412546;
  v1 = @"ids-group-stable-key-material-cache-current-remote-SKM-key";
  v2 = 2080;
  v3 = "self.pushTokenToSKMsMapping[pushToken]";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

id sub_100923B68(uint64_t a1)
{
  if (a1)
  {
    v1 = IMCurrentPreferredLanguage();
    if (([v1 containsString:@"-"] & 1) == 0)
    {
      v2 = +[NSLocale autoupdatingCurrentLocale];
      v3 = [v2 objectForKey:NSLocaleLanguageCode];

      v4 = +[NSLocale autoupdatingCurrentLocale];
      v5 = [v4 objectForKey:NSLocaleCountryCode];

      v6 = [v5 uppercaseString];
      v7 = [NSString stringWithFormat:@"%@-%@", v3, v6];

      v1 = v7;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_100923C7C(void *a1)
{
  if (a1)
  {
    v2 = sub_100923EEC(a1);
    if (v2)
    {
      v4 = v2;
      v3 = [a1 delegate];
      [v3 deviceInfoManager:a1 deviceInfoChanged:v4];

      v2 = v4;
    }
  }
}

void sub_100923CF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableArray);
  v19 = v3;
  v6 = [v3 value];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (![v11 state])
        {
          v12 = [v11 value];

          if (v12)
          {
            v13 = [v11 value];
            v14 = [v13 accessToken];
            if (v14)
            {
              v15 = v14;
              v16 = [v13 featureID];

              if (v16)
              {
                v17 = [v13 accessToken];
                [v5 addObject:v17];

                v18 = [v13 featureID];
                [v4 addObject:v18];
              }
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  [*(a1 + 32) setAccessTokens:v5];
  [*(a1 + 32) setFeatureIDs:v4];
  sub_100923C7C(*(a1 + 32));
}

IDSStewieDeviceInfo *sub_100923EEC(void *a1)
{
  if (a1)
  {
    v3 = [a1 locale];
    if (v3)
    {
      v1 = [a1 pushToken];

      if (v1)
      {
        v4 = [IDSStewieDeviceInfo alloc];
        v1 = [a1 locale];
        v5 = [a1 pushToken];
        v6 = [a1 dsid];
        v7 = [a1 accessTokens];
        v8 = [a1 featureIDs];
        v3 = [(IDSStewieDeviceInfo *)v4 initWithLocale:v1 pushToken:v5 dsid:v6 accessTokens:v7 featureIDs:v8];
      }

      else
      {
        v3 = 0;
      }
    }

    v9 = +[IDSFoundationLog stewieProvisioning];
    if (sub_1004DA798(v9))
    {
      v10 = [a1 pushToken];
      v11 = [v10 debugDescription];
      v12 = [a1 locale];
      v13 = [a1 dsid];
      v14 = [a1 accessTokens];
      v15 = [a1 featureIDs];
      sub_1004DA78C();
      sub_1004DA77C();
      _os_log_impl(v16, v17, v18, v19, v20, 0x34u);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100924278(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 accountPropertyForKey:@"primaryAccount"];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = [a1 accountStore];
      v8 = [v7 aa_primaryAppleAccount];
      v9 = [v8 normalizedDSID];

      v10 = [a1 dsid];
      if ([v9 isEqualToString:v10])
      {

LABEL_7:
        goto LABEL_8;
      }

      if (v9)
      {
      }

      else
      {
        v11 = [a1 dsid];

        if (!v11)
        {
          goto LABEL_7;
        }
      }

      v12 = +[IDSFoundationLog stewieProvisioning];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [a1 dsid];
        v14 = 138412546;
        v15 = v13;
        sub_1004DA78C();
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found new dsid { old : %@, new: %@ }", &v14, 0x16u);
      }

      [a1 setDsid:v9];
      sub_100923C7C(a1);
      goto LABEL_7;
    }
  }

LABEL_8:
}

void sub_100924444(void *a1, void *a2)
{
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (sub_1004DA798(v5))
  {
    v6 = [a1 pushToken];
    v7 = [v6 debugDescription];
    v8 = [a2 debugDescription];
    sub_1004DA78C();
    sub_1004DA77C();
    _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
  }

  [a1 setPushToken:a2];
  sub_100923C7C(a1);
}

void sub_100924A38(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Building Message delivery", &v3, 0x16u);
}

void sub_100924B7C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Using Max GDR in 24 hour period override value of %d ", v2, 8u);
}

void sub_100924D6C(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100924E04(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009250B0(void *a1)
{
  v1 = [a1 uniqueID];
  sub_10033C40C();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10092513C(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009251D4(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10092526C()
{
  sub_10033C490();
  *v1 = 138412290;
  *(v1 + 4) = v2;
  sub_1005021B8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1009252BC()
{
  sub_10033C490();
  sub_10050218C(v1, v2, 5.778e-34);
  *(v3 + 14) = "[IDSDAccount(Registration) _reregisterAndReidentify:]";
  sub_1005021A0(&_mh_execute_header, v4, v4, "Local account %@, can't call %s, ignoring...", v5);
}

void sub_100925344(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Registration info is not supported on this device, disabling: %@", &v3, 0xCu);
}

void sub_100925428(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009254C0(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100925558(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009255F0(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100925688()
{
  sub_10033C490();
  sub_10050218C(v1, v2, 5.778e-34);
  *(v3 + 14) = "[IDSDAccount(Registration) _registerAccount]";
  sub_1005021A0(&_mh_execute_header, v4, v4, "Local account %@, can't call %s, ignoring...", v5);
}

void sub_1009256DC(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100925774()
{
  sub_10033C490();
  sub_10050218C(v1, v2, 5.778e-34);
  *(v3 + 14) = "[IDSDAccount(Registration) _unregisterAccount]";
  sub_1005021A0(&_mh_execute_header, v4, v4, "Local account %@, can't call %s, ignoring...", v5);
}

void sub_1009257C8()
{
  sub_10033C490();
  sub_10050218C(v1, v2, 5.778e-34);
  *(v3 + 14) = "[IDSDAccount(Registration) _unregisterAccount]";
  sub_1005021A0(&_mh_execute_header, v4, v4, "Ad hoc account %@, can't call %s, ignoring...", v5);
}

void sub_10092581C(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009258B4(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10092594C(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009259E4(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100925A7C(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100925B14(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100925BAC(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100925C44(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100925CDC(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100925D74(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100925E0C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, " *** Handles query failed, status: %d", v2, 8u);
}

void sub_100925E84(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100925F1C(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100925FB4(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10092604C(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10092614C(NSObject *a1)
{
  v2 = 134217984;
  v3 = sub_100570288();
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, " *** Devices query failed, retrying in %f", &v2, 0xCu);
}

void sub_1009261D8(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100926270(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100926308(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009263A0(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100926438()
{
  sub_10033C40C();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Succeeded registering: %@  (newly registered: %@)", v2, 0x16u);
}

void sub_1009264D4(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10092656C(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100926604()
{
  sub_10033C40C();
  sub_1005021B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100926684(uint64_t a1)
{
  v1 = sub_100016528(a1);
  sub_10033C40C();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100926814(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009268AC(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100926944(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009269DC(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100926A74(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100926B0C(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100926BA4(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100926C3C(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100926CD4(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100926D6C(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100926E04()
{
  sub_10033C40C();
  v3 = 1024;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Authentication failed for info %@    with error code: %d", v2, 0x12u);
}

void sub_100926E88(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100926F20(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100926FB8(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100927050(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009270E8(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100927180(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100927218(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009272B0(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100927348(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009273E0(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100927478(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100927510(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009275A8(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100927640(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009276D8(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100927770(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100927808(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009278A0(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009279D4(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100927A6C(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100927B04(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100927B9C(void *a1)
{
  v1 = [a1 uniqueID];
  sub_1003CF034();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100927C34(void *a1, NSObject *a2)
{
  v4 = [a1 service];
  v5 = [v4 identifier];
  v6 = [a1 loginID];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Returning _allUserIntentInfo {service: %@, loginID: %@}", &v7, 0x16u);
}

void sub_100927D6C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Cannot force remove phone users. { user: %@ }", &v2, 0xCu);
}

void sub_100927DE4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "We do not support DS users here at this time! {user: %@}", &v2, 0xCu);
}

void sub_100927E5C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Tried to set a mismatching credential for user! {credential: %@, user: %@}", &v3, 0x16u);
}

void sub_10092818C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error creating proxy for activity monitor client {self: %p, activity: %@}", &v3, 0x16u);
}

void sub_100928708(int *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 2048;
  v7 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "IDSDirectDataPathSocket: (%d, %p) writeMessageToNWConnection nw_connection busy, retrying..", v5, 0x12u);
}

void sub_100928798(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4 = *(v2 + 8);
  v5 = *(a1 + 40);
  v6[0] = 67109632;
  v6[1] = v3;
  v7 = 2048;
  v8 = v4;
  v9 = 1024;
  v10 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "IDSDirectDataPathSocket: (%d, %p) nw_connection_send sent data: %u bytes", v6, 0x18u);
}

void sub_100928838(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "IDSDirectDataPathSocket:readFromNWConnection received data (%lu) bytes on nw_connection (%p)", &v4, 0x16u);
}

void sub_100928904()
{
  sub_100537B94();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1009289A0()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1009289DC(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 SIMIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Could not find labelID %@ in slotID map", a1, 0xCu);
}

void sub_100928B64()
{
  sub_10033C418();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100928BA0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Credential for temporary registration is not temporary realm {registration: %@, credential: %@}", &v3, 0x16u);
}

void sub_100928C9C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SIM deactivation request failed with code: %d", v2, 8u);
}

void sub_100928E4C()
{
  v0 = 138412546;
  v1 = @"uris";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_100928FB0()
{
  sub_1003CF034();
  v1 = "_deviceIDToAllocRequests";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v0, 0x16u);
}

void sub_100929038()
{
  sub_1003CF034();
  v1 = "newOptions";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v0, 0x16u);
}

void sub_100929170(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to activate companionLinkClient, {Error:%@}", &v2, 0xCu);
}

void sub_1009291E8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543619;
  *&v3[4] = a1;
  *&v3[12] = 2113;
  *&v3[14] = *(a2 + 32);
  sub_10049EDC4(&_mh_execute_header, a2, a3, "Failed to find companionLinkClient {error: %{public}@, deviceIdentifier: %{private}@}", *v3, *&v3[8], *&v3[16]);
}

void sub_10092935C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"IDSKTGossipPolicy.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"spec"}];
}

void sub_100929758(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 serverMessagingEntitlements];
  v7 = 134218498;
  v8 = a1;
  v9 = 2112;
  v10 = a2;
  v11 = 2112;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Not entitled for server messaging topic! {self: %p, topic: %@, _serverMessagingEntitlements: %@}", &v7, 0x20u);
}

void sub_100929DDC()
{
  sub_10033C40C();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Handling request sysdiagnose push {userInfo: %@}", v2, 0x16u);
}

void sub_10092A404(void *a1)
{
  v1 = [a1 requestIDStr];
  sub_1003CF034();
  sub_1003260B0(&_mh_execute_header, &_os_log_default, v2, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v3, v4, v5, v6, v7);
}

void sub_10092A4A4(void *a1)
{
  v1 = [a1 requestIDStr];
  sub_1003CF034();
  sub_1003260B0(&_mh_execute_header, &_os_log_default, v2, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v3, v4, v5, v6, v7);
}

void sub_10092A544(void *a1)
{
  v1 = [a1 requestIDStr];
  sub_1003CF034();
  sub_1003260B0(&_mh_execute_header, &_os_log_default, v2, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v3, v4, v5, v6, v7);
}

void sub_10092A694(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Failed type check! {key: %@, class: %@}", &v3, 0x16u);
}

void sub_10092B3E8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v10 = v3;
    v4 = [v3 uniqueIdentifier];

    v3 = v10;
    if (v4)
    {
      v5 = [a1 phoneInfos];
      v6 = [v10 uniqueIdentifier];
      [v5 setObject:0 forKeyedSubscript:v6];

      v7 = [a1 inProgressRegistrations];
      v8 = [v10 uniqueIdentifier];
      v9 = [v7 objectForKeyedSubscript:v8];

      sub_1005B228C(a1, v9);
      sub_10092B740(a1);

      v3 = v10;
    }
  }
}

IDSRegistration *sub_10092B4E0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(IDSRegistration);
    [(IDSRegistration *)v4 setServiceType:IDSRegistrationServiceTypeStewie];
    [(IDSRegistration *)v4 setRegistrationType:0];
    v5 = [v3 uniqueIdentifier];
    [(IDSRegistration *)v4 setUserUniqueIdentifier:v5];

    v6 = [a1 pushHandler];
    v7 = [v6 pushToken];
    [(IDSRegistration *)v4 setPushToken:v7];

    v8 = +[IDSFoundationLog stewieProvisioning];
    if (sub_1004DA798(v8))
    {
      sub_1004DA77C();
      _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10092B638(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = +[IDSFoundationLog stewieProvisioning];
    if (sub_1004DA798(v5))
    {
      sub_1004DA77C();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }

    v11 = [a1 inProgressRegistrations];
    v12 = [v4 userUniqueIdentifier];
    [v11 setObject:v4 forKeyedSubscript:v12];

    v13 = [a1 registrationController];
    [v13 registerInfo:v4];
  }
}

void sub_10092B740(void *a1)
{
  if (a1)
  {
    v2 = [a1 inProgressRegistrations];
    v3 = [v2 count];

    v4 = +[IDSFoundationLog stewieProvisioning];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (!v5)
      {
LABEL_9:

        return;
      }

      v6 = [a1 inProgressRegistrations];
      v7 = [a1 phoneInfos];
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In progress registrations, waiting to conclude { inProgress: %@, finished: %@ }", &v10, 0x16u);
    }

    else
    {
      if (v5)
      {
        v8 = [a1 phoneInfos];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Obtained phone infos for all users { phoneInfos: %@ }", &v10, 0xCu);
      }

      v9 = [a1 phoneInfos];
      v4 = [v9 allValues];

      v6 = [a1 delegate];
      [v6 phoneNumberManager:a1 phoneNumberInfosChanged:v4];
    }

    goto LABEL_9;
  }
}

void sub_10092B994(void *a1, void *a2)
{
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (sub_1004DA798(v5))
  {
    sub_1004DA77C();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  sub_10092B3E8(a2, a1);
}

void sub_10092BA48(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Registration failed for in progress registration { registration: %@, error: %ld }", &v3, 0x16u);
}

void sub_10092BAD0()
{
  v0 = 138412546;
  v1 = @"unknown-sender-info";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_10092BB6C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138478083;
  v4 = a1;
  v5 = 2113;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to create NRDevicePreferences {deviceIdentifier: %{private}@, nrDeviceIdentifier: %{private}@}", &v3, 0x16u);
}

void sub_10092BBF4(uint64_t a1, NSObject *a2)
{
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create NRDeviceIdentifier {deviceIdentifier: %{private}@}", &v2, 0xCu);
}

void sub_10092BCB0()
{
  v0 = 138412546;
  v1 = @"spam-messages";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_10092BD4C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Asking to convert an error of the wrong domain to an IDSEncryptionErrorType { error: %@ }", &v2, 0xCu);
}

void sub_10092BE14()
{
  v0 = 138412546;
  v1 = @"hT";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_10092C0D0()
{
  v0 = 138412546;
  v1 = @"user-flag";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_10092C4B0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "No legacy connection, bailing...", &v3, 0x16u);
}

void sub_10092C73C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "No output arrays specified for _splitDestinations %@", &v3, 0x16u);
}

void sub_10092C7C4(void *a1, NSObject *a2)
{
  v3 = [a1 uniqueID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Registration is not active on account %@, ignoring...", &v4, 0xCu);
}

void sub_10092C888(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create a valid CT message (CTStewieIMessageLiteMessageOutgoing) Error: %@", &v2, 0xCu);
}

void sub_10092C900(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create a valid CT message (CTStewieIMessageLiteFetchMessage) Error: %@", &v2, 0xCu);
}

void sub_10092C978(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 otherShortHandle];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Unable to generate short handle from number %@, dropping", a1, 0xCu);
}

void sub_10092CB7C(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Bad destinationData for outgoing message %@! Error: %@", buf, 0x16u);
}

void sub_10092D314(void *a1)
{
  v1 = [a1 validationContextQueue];
  sub_10033C40C();
  sub_1006134DC(&_mh_execute_header, v2, v3, "Failing validation queue: %@", v4, v5, v6, v7, v8);
}

void sub_10092D398(uint64_t a1)
{
  v1 = [*(a1 + 32) message];
  sub_10033C40C();
  sub_1006134DC(&_mh_execute_header, v2, v3, "  ** UNsuccessfully signed, not sending (de)registration message: %@", v4, v5, v6, v7, v8);
}

void sub_10092D508()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10092D578()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10092D5E8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "  Using fake session key!  (TTL: %@)", buf, 0xCu);
}

void sub_10092D768()
{
  sub_10033C40C();
  sub_10033C44C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10092DF3C(int a1, NSObject *a2)
{
  v2[0] = 67109634;
  v2[1] = a1;
  v3 = 2112;
  v4 = @"com.apple.registration";
  v5 = 2112;
  v6 = @"overrideRegistrationResponseCode";
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Overriding response code for query with: %d   remove %@: %@    to stop this", v2, 0x1Cu);
}

void sub_10092E09C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "About to insert bogus profile ID: %@  ignoring", &v2, 0xCu);
}

void sub_10092E158(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, " ** Username/DSID is empty, but we have a token: %@", &v2, 0xCu);
}

id *sub_10092E1D0(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = IDSStewieStore;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

void sub_10092E28C()
{
  v1[0] = 136315394;
  sub_10069A1B4();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "%s: Failed to save paired devices to keychain, err: %d", v1, 0x12u);
}

void sub_10092E310()
{
  v1[0] = 136315394;
  sub_10069A1B4();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "%s: Failed to remove paired devices entry from keychain, err: %d", v1, 0x12u);
}

void sub_10092E394()
{
  sub_1003466F4();
  sub_10033C3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10092E410()
{
  sub_1003466F4();
  sub_10033C3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10092E514()
{
  sub_1003466F4();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10092E584()
{
  sub_1003466F4();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10092E5F4()
{
  sub_1003466F4();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10092E664()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10092E6A0()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10092E6DC()
{
  sub_10033C3F4();
  sub_10033C3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10092E74C()
{
  sub_10033C3F4();
  sub_10033C3E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10092E7BC()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10092E7F8()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10092E834()
{
  v0 = 138412546;
  v1 = @"x-id-sub-service";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_10092E8D0()
{
  v0 = 138412546;
  v1 = @"user-id";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_10092E980()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10092E9BC()
{
  sub_10033C40C();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10092EA2C(void *a1)
{
  v2 = [a1 pushToken];
  v3 = [a1 pinnedIdentityMetadatas];
  sub_1006A57AC();
  sub_1006A57C4(&_mh_execute_header, v4, v5, "Missing push token or identity metadata. { pushToken: %@, pinnedIdentityMetadata: %@ }", v6, v7, v8, v9, v10);
}

void sub_10092EAD0()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10092EB0C()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10092EB48()
{
  sub_10033C40C();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10092EBB8()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10092EBF4()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10092EC30()
{
  sub_10033C418();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10092EC6C(void *a1, void *a2)
{
  v3 = [a1 identity];
  v4 = [a2 serializedNGMDeviceIdentity];
  sub_1006A57AC();
  sub_1006A57C4(&_mh_execute_header, v5, v6, "Pinned identity does not match endpoint identity. { pinnedIdentity: %@, endointIdentity: %@ }", v7, v8, v9, v10, v11);
}

void sub_10092ED10()
{
  sub_10033C40C();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10092ED80()
{
  sub_10033C40C();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Found no stored identities for push token and service. { pushToken: %@, service: %@ }", v2, 0x16u);
}

void sub_10092EE04()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092EEB0()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092EF5C()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092F008()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092F0B4()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092F160()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092F20C()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092F2B8()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092F364()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092F410()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092F4BC()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092F568()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092F614()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092F6C0()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092F76C()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092F818()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092F8C4()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092F970()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092FA1C()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092FAC8()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092FB74()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092FC20()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092FCCC()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092FD78()
{
  sub_100443DD4();
  IMTruncatedLoggingStringForString();
  objc_claimAutoreleasedReturnValue();
  v1 = sub_1006ADF98();
  v2 = NSStringFromClass(v1);
  sub_1006ADF6C();
  sub_1006ADF88();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10092FE30()
{
  sub_100443DD4();
  IMTruncatedLoggingStringForString();
  objc_claimAutoreleasedReturnValue();
  v1 = sub_1006ADF98();
  v2 = NSStringFromClass(v1);
  sub_1006ADF6C();
  sub_1006ADF88();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10092FEE8()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10092FF94()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100930040()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1009300EC()
{
  sub_100443DD4();
  IMTruncatedLoggingStringForString();
  objc_claimAutoreleasedReturnValue();
  v1 = sub_1006ADF98();
  v2 = NSStringFromClass(v1);
  sub_1006ADF6C();
  sub_1006ADF88();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1009301A4()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100930250()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1009302FC()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1009303A8()
{
  sub_100443DD4();
  IMTruncatedLoggingStringForString();
  objc_claimAutoreleasedReturnValue();
  v1 = sub_1006ADF98();
  v2 = NSStringFromClass(v1);
  sub_1006ADF6C();
  sub_1006ADF88();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100930460()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10093050C()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1009305B8()
{
  sub_100443DD4();
  IMTruncatedLoggingStringForString();
  objc_claimAutoreleasedReturnValue();
  v1 = sub_1006ADF98();
  v2 = NSStringFromClass(v1);
  sub_1006ADF6C();
  sub_1006ADF88();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100930670()
{
  sub_100443DD4();
  IMTruncatedLoggingStringForString();
  objc_claimAutoreleasedReturnValue();
  v1 = sub_1006ADF98();
  v2 = NSStringFromClass(v1);
  sub_1006ADF6C();
  sub_1006ADF88();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100930728()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1009307D4()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100930880()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10093092C()
{
  sub_100443DD4();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1006ADF50();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1009309D8()
{
  sub_100443DD4();
  IMTruncatedLoggingStringForString();
  objc_claimAutoreleasedReturnValue();
  v1 = sub_1006ADF98();
  v2 = NSStringFromClass(v1);
  sub_1006ADF6C();
  sub_1006ADF88();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100930A90()
{
  sub_100443DD4();
  IMTruncatedLoggingStringForString();
  objc_claimAutoreleasedReturnValue();
  v1 = sub_1006ADF98();
  v2 = NSStringFromClass(v1);
  sub_1006ADF6C();
  sub_1006ADF88();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100930F88()
{
  v5 = IMTruncatedLoggingStringForString();
  sub_1006ADF88();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10093108C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Skipping load of empty service dictionary", buf, 2u);
}

void sub_1009311DC()
{
  sub_10033C40C();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Sub-services - Couldn't find service %@ to load subService %@ with", v2, 0x16u);
}

void sub_10093151C()
{
  sub_10033C40C();
  v3 = 2113;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Attempting to remove an unrecognized paired device, whose CBUUID is %@ {pairedDevices: %{private}@}", v2, 0x16u);
}

void sub_1009319F8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"IDSTapToRadarPushPayload.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"pushPayload"}];
}

void sub_100931C34()
{
  v0 = 138412546;
  v1 = @"session-info-request";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_100931CE4()
{
  v0 = 138412546;
  v1 = @"x-ds-client-id";
  v2 = 2080;
  v3 = "profileInfo";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_100931D94(uint64_t a1, void *a2)
{
  v8 = [a2 uniqueIdentifier];
  sub_1006A57C4(&_mh_execute_header, v2, v3, "User previously denied PNR consent -- not sending PNR {self: %@, PNRuniqueIdentifier: %@}", v4, v5, v6, v7, 2u);
}

void sub_100931E38()
{
  sub_1006C6888();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Missing SIM -- not sending PNR {self: %@, uniqueIdentifier: %@}", v2, 0x16u);
}

void sub_100931EB4(uint64_t a1)
{
  v1 = [NSNumber numberWithInteger:a1];
  sub_1006C6888();
  sub_1006A57C4(&_mh_execute_header, v2, v3, "Phone number identification request has no corresponding user -- not sending PNR. { serviceType: %@, uniqueIdentifier: %@ }", v4, v5, v6, v7, v8);
}

void sub_100931F68(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "rollNewKeysAfterResettingPrekeysForGroup: Couldn't find the session for group %@! Coulnd't notifity the device change event", &v3, 0xCu);
}

void sub_100931FE4(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 allMembers];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "setMembers: %@ forGroup: %@", &v6, 0x16u);
}

void sub_100932094(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "_updateEncryptedDataBlobForGroup: couldn't find session: %@", &v2, 0xCu);
}

void sub_1009321BC()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

void sub_1009322A8()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

void sub_100932390()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

void sub_100932404()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

void sub_100932478(uint64_t a1)
{
  v1 = [NSNumber numberWithInt:a1];
  sub_10033C40C();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10093252C(uint64_t a1)
{
  v1 = [NSNumber numberWithInt:a1];
  sub_10033C40C();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1009325E0()
{
  sub_10033C40C();
  sub_1006D15D4();
  sub_10049EDC4(&_mh_execute_header, v0, v1, "Failed to load identity container on first try -- retrying {error: %{public}@, identifier: %ld}");
}

void sub_100932650()
{
  sub_10033C40C();
  sub_1006D15D4();
  sub_10049EDC4(&_mh_execute_header, v0, v1, "Failed to load identity container on second try -- falling back to legacy {error: %{public}@, identifier: %ld}");
}

void sub_1009326C0()
{
  sub_10033C40C();
  sub_1006D15D4();
  sub_10049EDC4(&_mh_execute_header, v0, v1, "Failed to remove data {blobError: %@, identifier: %@}");
}

void sub_100932730(uint64_t a1, void *a2)
{
  v7 = [a2 legacyFullIdentity];
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1009328CC()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

void sub_1009329B8()
{
  sub_100443DD4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100443DC8();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

void sub_100932A2C(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
  }

  else
  {
    v1 = 0;
  }

  LODWORD(v4) = 138543619;
  *(&v4 + 4) = v1;
  sub_1006D15D4();
  sub_1003FE3B0(&_mh_execute_header, v2, v3, "Faild to get dataRepresentation to determine serializationChange -- Not updating {error: %{public}@, identity: %{private}@}", v4, DWORD2(v4));
}

void sub_100932BA0()
{
  sub_10033C40C();
  sub_1006D15D4();
  sub_1003FE3B0(&_mh_execute_header, v0, v1, "Failed to deserialize ngmVersion from data -- returning 0 {error: %{public}@, dataRepresentation: %{public}@}");
}

void sub_100932C68()
{
  sub_10033C40C();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "IDSNWSocketPairConnection: sendDataMessage: adding fragmented message id: %@ , OutgoingFragmentedMessageID: %u, to _outgoingMessageArray.", v2, 0x12u);
}

void sub_100932D64(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "IDSNWSocketPairConnection: _dequeueNextMessageFromOutgoingQueue: removing last piece of fragmented message OutgoingFragmentedMessageID: %u from _outgoingMessageArray.", v2, 8u);
}

void sub_100932E50(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 32) identifier];
  sub_10033C40C();
  v6 = 1024;
  v7 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "IDSNWSocketPairConnection: _sendDataViaNWConnection: %@ Wrote %u bytes.", v5, 0x12u);
}

void sub_100932F04(void *a1, NSObject *a2)
{
  v3 = [a1 identifier];
  sub_10033C40C();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "IDSNWSocketPairConnection: %@ is ready", v4, 0xCu);
}

void sub_1009330D0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Cannot force remove appleID users. { user: %@ }", &v2, 0xCu);
}

void sub_100933148(void *a1, NSObject *a2)
{
  v4[0] = 67109632;
  v4[1] = [a1 uid];
  v5 = 1024;
  v6 = [a1 gid];
  v7 = 2048;
  v8 = [a1 userPersonaType];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "The current thread is data separated! {persona.uid: %u, persona.gid: %u, persona.userPersonaType: %lu}", v4, 0x18u);
}

void sub_100933214()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getUMUserPersonaClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSUserManagement.m" lineNumber:20 description:{@"Unable to find class %s", "UMUserPersona"}];

  __break(1u);
}

void sub_100933290(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *UserManagementLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IDSUserManagement.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100933338(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Failed to copy identity certificate { lockdownResult: %d, apsResult: %d }", v3, 0xEu);
}

void sub_1009333C0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Deleting identity certificate failed { deleteError: %@ }", &v2, 0xCu);
}

void sub_1009335EC()
{
  sub_10033C40C();
  sub_1006F4A20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10093365C()
{
  sub_10033C40C();
  sub_1006F4A20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1009336E0(void *a1)
{
  v1 = [a1 serviceIdentifier];
  sub_10033C40C();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10093376C()
{
  sub_10033C418();
  sub_1006F4A20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1009337A8()
{
  sub_10033C40C();
  sub_1006F4A20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100933818()
{
  sub_10033C418();
  sub_1006F4A20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100933854()
{
  sub_10033C40C();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1009338C4(void *a1)
{
  v1 = [a1 serviceIdentifier];
  sub_10033C40C();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100933950()
{
  sub_10033C418();
  sub_1006F4A20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10093398C(void *a1)
{
  v1 = [a1 serviceIdentifier];
  sub_10033C40C();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100933A18()
{
  sub_10033C418();
  sub_1006F4A20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100933A54(void *a1)
{
  v1 = [a1 serviceIdentifier];
  sub_10033C40C();
  sub_1006ADF88();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100933AE0(uint64_t a1, void *a2)
{
  v2 = [a2 __imArrayByApplyingBlock:&stru_100BE5C08];
  sub_1006F4A2C();
  sub_1006ADF88();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100933B84(void *a1)
{
  v1 = [a1 serviceIdentifier];
  sub_10033C40C();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100933C10(void *a1)
{
  v1 = [a1 serviceIdentifier];
  sub_10033C40C();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100933C9C(void *a1)
{
  v1 = [a1 URI];
  sub_10033C40C();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100933D40(void *a1)
{
  v1 = [a1 serviceIdentifier];
  sub_10033C40C();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100933DCC(uint64_t a1, void *a2)
{
  v2 = [a2 deviceID];
  sub_1006F4A2C();
  sub_1006ADF88();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100933E68(void *a1)
{
  v1 = [a1 serviceIdentifier];
  sub_10033C40C();
  sub_10033C3A4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100933F5C()
{
  sub_10033C40C();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10093409C()
{
  sub_10033C40C();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error clearing Transparency cache { peerURI: %@ error: %@ }", v2, 0x16u);
}

void sub_100934120()
{
  sub_10033C40C();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1009341F8()
{
  sub_10033C40C();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100934268()
{
  sub_10033C40C();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1009342D8()
{
  sub_10033C40C();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10093437C()
{
  sub_10033C40C();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1009343EC(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 service];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Received cache clear request for unsupported service. { service: %@ }", a1, 0xCu);
}

void sub_100934464()
{
  sub_10033C418();
  sub_1006F4A20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1009344D4()
{
  sub_10033C40C();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10093458C()
{
  sub_10033C40C();
  sub_1003CF048();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t sub_1009345FC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 bag];
  v2 = [v1 objectForKey:@"sps-prov-keys-rate-limit-count"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

double sub_100934680(void *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [a1 bag];
  v2 = [v1 objectForKey:@"sps-prov-keys-rate-limit-time-limit"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 86400.0;
  }

  return v3;
}

void sub_100934710(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_1006F9DD4(&_mh_execute_header, v6, v7, "Setting heartbeat timer for next heartbeat { nextHeartbeat: %@ }", v8, v9, v10, v11, v22, v23, v24, v25, v26, v27, 2u);
    }

    sub_100934C50(a1);
    v12 = [IMDispatchTimer alloc];
    im_primary_queue();
    objc_claimAutoreleasedReturnValue();
    [sub_1006F9E2C() timeIntervalSinceNow];
    sub_1006F9D7C();
    sub_1006F9DB0(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23, 3221225472, sub_1006F7BE4, &unk_100BD9268, v27);
    [sub_1006F9E04() setHeartbeatTimer:?];

    [v4 timeIntervalSinceNow];
    if (v21 < 0.0)
    {
      [a1 heartbeatTimerFired];
    }
  }
}

void sub_100934844(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_1006F9DD4(&_mh_execute_header, v6, v7, "Setting roll keys timer for next roll keys { nextRollKeys: %@ }", v8, v9, v10, v11, v22, v23, v24, v25, v26, v27, 2u);
    }

    v12 = [IMDispatchTimer alloc];
    im_primary_queue();
    objc_claimAutoreleasedReturnValue();
    [sub_1006F9E2C() timeIntervalSinceNow];
    sub_1006F9D7C();
    sub_1006F9DB0(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23, 3221225472, sub_1006F7BF4, &unk_100BD9268, v27);
    [sub_1006F9E04() setRollKeysTimer:?];

    [v4 timeIntervalSinceNow];
    if (v21 < 0.0)
    {
      [a1 rollKeysTimerFired];
    }
  }
}

void sub_100934970(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_1006F9DD4(&_mh_execute_header, v6, v7, "Setting roll keys timer for next roll sms config { nextRollSMSConfig: %@ }", v8, v9, v10, v11, v22, v23, v24, v25, v26, v27, 2u);
    }

    v12 = [IMDispatchTimer alloc];
    im_primary_queue();
    objc_claimAutoreleasedReturnValue();
    [sub_1006F9E2C() timeIntervalSinceNow];
    sub_1006F9D7C();
    sub_1006F9DB0(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23, 3221225472, sub_1006F7BEC, &unk_100BD9268, v27);
    [sub_1006F9E04() setRollSMSConfigTimer:?];

    [v4 timeIntervalSinceNow];
    if (v21 < 0.0)
    {
      sub_100934E14(a1);
    }
  }
}

void sub_100934AA0(void *a1)
{
  if (a1)
  {
    v2 = [a1 deviceInfoManager];

    if (!v2)
    {
      [[IDSStewieDeviceInfoManager alloc] initWithDelegate:a1 stewieStore:a1[7] queue:a1[9]];
      [sub_1006F9E44() setDeviceInfoManager:0];
    }

    v3 = [a1 deviceInfoManager];
    [v3 performInitialDeviceInfoCheck];
  }
}

void sub_100934B38(void *a1)
{
  if (a1)
  {
    v2 = [a1 phoneNumberManager];

    if (!v2)
    {
      [[IDSStewiePhoneNumberManager alloc] initWithDelegate:a1 queue:a1[9] userStore:a1[10]];
      [sub_1006F9E44() setPhoneNumberManager:0];
    }

    v3 = [a1 phoneNumberManager];
    [v3 performInitialPhoneInfoCheck];
  }
}

void sub_100934BCC(void *a1)
{
  if (a1)
  {
    v3 = +[IDSFoundationLog stewieProvisioning];
    if (sub_1006F9E14(v3))
    {
      sub_1006F9DA0();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }

    v9 = [a1 ctClient];
    [v9 fetchStewieSMSConfig];
  }
}

void sub_100934C50(void *a1)
{
  if (a1)
  {
    v2 = [a1 heartbeatTimer];

    if (v2)
    {
      v3 = [a1 heartbeatTimer];
      [v3 invalidate];

      [a1 setHeartbeatTimer:0];
    }
  }
}

double sub_100934D64(void *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [a1 bag];
  v2 = [v1 objectForKey:@"sps-prov-heartbeat-interval"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 2592000.0;
  }

  if (+[IMUserDefaults stewieHeartbeatInterval]>= 1)
  {
    v3 = +[IMUserDefaults stewieHeartbeatInterval];
  }

  return v3;
}

id sub_100934E14(id result)
{
  if (result)
  {
    v2 = result;
    v3 = +[IDSFoundationLog stewieProvisioning];
    if (sub_1006F9E14(v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Stewie roll SMS config fired", buf, 2u);
    }

    v4 = [v2 ctClient];
    v5 = [v4 forceRollSMSConfigWipeAll:1];

    if ((v5 & 1) == 0)
    {
      v6 = +[IDSFoundationLog stewieProvisioning];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Stewie roll SMS config fired - roll failed!", v7, 2u);
      }
    }

    return [v2 setRollSMSConfigTimer:0];
  }

  return result;
}

uint64_t sub_100934F0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && (v7 = [v5 count], v7 == objc_msgSend(v6, "count")))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (![v5 containsObject:{*(*(&v15 + 1) + 8 * v12), v15}])
          {
            v13 = 0;
            goto LABEL_14;
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_14:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_1009354D8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to provision stewie phone number infos { phoneNumberInfos: %@ }", &v2, 0xCu);
}

void sub_100935550(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Retrying phone infos { infos: %@ }", &v3, 0xCu);
}

void sub_1009355CC(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 request];
  v6 = 138412546;
  v7 = v5;
  v8 = 2048;
  v9 = sub_1009345FC(a2);
  _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEFAULT, "Too many repeated key attempts given for key info { info: %@ } - rolling all session keys { self.rollKeysRateLimitCount : %ld }", &v6, 0x16u);
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}