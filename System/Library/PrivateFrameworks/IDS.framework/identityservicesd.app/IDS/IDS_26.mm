void sub_1007513EC(uint64_t *a1, char a2, void (*a3)(char *, uint64_t))
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

uint64_t sub_1007514D0(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB3D50);
  sub_100768830(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
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

uint64_t sub_100751638()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100751740@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100751850()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100751928()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100751A2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100751B38()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100751C10()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100751D18@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100751E28()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100751F00()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100752008@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100752118()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1007521F0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007522F4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_100752400()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1007524D0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_1009368A8();

  return v1;
}

uint64_t sub_1007525D4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_1007526E0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_1007527BC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  return v0;
}

double sub_1007528F8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100768A6C(&qword_100CB3CF8, sub_100768AE4);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100752A34()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100752B0C(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936138();
  sub_10001C370(a1, a2);
}

uint64_t sub_100752BF0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_100752D1C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100752E50()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100752F28()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10075302C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_100753138()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100753220()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100753310()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936138();
}

__n128 sub_1007533E8@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100769CD8();
  sub_1009368A8();

  result = v4;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_100753538@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100769CD8();
  sub_1009368A8();

  result = v4;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_100753688()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100753774()
{
  swift_getKeyPath();
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100769C54();
  sub_1009368C8();
}

uint64_t sub_100753830()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100769D90();
  sub_100936898();

  return v0;
}

uint64_t sub_100753948@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936148();

  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100769D90();
  sub_100936898();

  *a2 = v4;
  return result;
}

uint64_t sub_100753A68()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3D58, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100936138();
}

uint64_t sub_100753B34()
{
  swift_getKeyPath();
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  sub_100769D90();
  sub_1009368B8();
}

uint64_t sub_100753BE4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, __int128 a9, __int128 a10, char a11, __int128 a12, __int128 a13, uint64_t a14)
{
  *&v27 = a5;
  *(&v27 + 1) = a6;
  *&v26 = a3;
  *(&v26 + 1) = a4;
  v15 = swift_allocObject();
  *(v15 + 48) = sub_100706B30(&qword_100CB3D90);
  *&v30 = v14;
  *(&v30 + 1) = v14;
  *&v31 = sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  *(&v31 + 1) = v31;
  *(v15 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v15 + 24));
  sub_100936858();
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = 0;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = 0;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = xmmword_1009AD8D0;
  sub_100706B30(&qword_100CB3CE8);
  sub_100768A6C(&qword_100CB3CF0, sub_100768A18);
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = 0uLL;
  sub_100706B30(&unk_100CBA310);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = 0;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = xmmword_1009AD8D0;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  *&v30 = &_swiftEmptyArrayStorage;
  sub_100706B30(&qword_100CB3D70);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  sub_100769D90();
  sub_1009366C8();

  *(v15 + 20) = 0;
  sub_100936158();
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  *&v30 = a1;
  *(&v30 + 1) = a2;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = v26;
  sub_100715738(v26, *(&v26 + 1));
  sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(v26, *(&v26 + 1));
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = v27;
  sub_100715738(v27, *(&v27 + 1));
  sub_1009366D8();

  sub_1007156D8(v27, *(&v27 + 1));
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = a7;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = a8;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = a9;
  sub_1007483B0(a9, *(&a9 + 1));
  sub_1009366D8();

  sub_10001C370(a9, *(&a9 + 1));
  *(v15 + 16) = 0;
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = a10;
  sub_1009366D8();

  *(v15 + 17) = 0;
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  LOBYTE(v30) = a11;
  sub_1009366D8();

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = a12;
  sub_1007483B0(a12, *(&a12 + 1));
  sub_1009366D8();

  sub_10001C370(a12, *(&a12 + 1));
  *(v15 + 18) = 0;
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v30 = a13;
  sub_1007483B0(a13, *(&a13 + 1));
  sub_1009366D8();

  sub_10001C370(a13, *(&a13 + 1));
  *(v15 + 19) = 0;
  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  v16 = *(a14 + 80);
  v34 = *(a14 + 64);
  v35 = v16;
  v36 = *(a14 + 96);
  v17 = *(a14 + 16);
  v30 = *a14;
  v31 = v17;
  v18 = *(a14 + 48);
  v32 = *(a14 + 32);
  v33 = v18;
  sub_100769D58(a14, v29);
  sub_100769C54();
  sub_1009366D8();

  sub_100769CA8(a14);
  v19 = sub_100716518(a1, a2);
  v21 = v20;

  sub_1000226D4((v15 + 24), *(v15 + 48));
  swift_getKeyPath();
  *&v30 = v19;
  *(&v30 + 1) = v21;
  sub_1009366D8();
  sub_100769CA8(a14);
  sub_10001C370(a13, *(&a13 + 1));
  sub_10001C370(a12, *(&a12 + 1));
  sub_10001C370(a9, *(&a9 + 1));
  sub_1007156D8(v27, *(&v27 + 1));
  sub_1007156D8(v26, *(&v26 + 1));

  sub_1007156D8(v19, v21);
  return v15;
}

uint64_t sub_1007545C0(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = sub_100706B30(&qword_100CB3D90);
  sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
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
  sub_100706B30(&qword_100CB3D70);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  sub_100769D90();
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

unint64_t sub_100754A78()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001FLL;
    v6 = 0xD00000000000001ELL;
    if (v1 != 6)
    {
      v5 = 0xD00000000000001ELL;
    }

    if (v1 != 4)
    {
      v6 = 0xD000000000000021;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x626167676F4C746BLL;
    v3 = 0x69737265566D676ELL;
    if (v1 != 2)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0)
    {
      v2 = 0xD000000000000011;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_100754B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10076A5E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100754BDC(uint64_t a1)
{
  v2 = sub_10076AFEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100754C18(uint64_t a1)
{
  v2 = sub_10076AFEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100754C54(void *a1)
{
  v3 = v1;
  v5 = sub_100706B30(&qword_100CB3D98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000226D4(a1, a1[3]);
  sub_10076AFEC();
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

__n128 sub_100755030@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 34) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  *(a9 + 88) = a12;
  *(a9 + 96) = a13;
  return result;
}

__n128 sub_10075505C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10076B040(a1, v7);
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

BOOL sub_1007550D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_10076A888(v11, v13);
}

uint64_t sub_100755140()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100755248@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100755358()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_100755430()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100755534@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100755640()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_100755718()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10075581C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100755928()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_100755A00()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100755B04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100755C10()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_100755CE8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100755DF0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100755F00()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_100755FD8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007560E0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007561F0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_1007562C8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100768830(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100756400()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100768830(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100756538(uint64_t a1, uint64_t *a2)
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
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1007566C0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100768830(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007567F8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100768830(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100756930(uint64_t a1, uint64_t *a2)
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
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

double sub_100756AB8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_1009368A8();

  return v0;
}

double sub_100756BBC@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_1009368A8();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100756CC8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936138();
}

uint64_t sub_100756DA0()
{
  swift_getKeyPath();
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_1009368C8();
}

uint64_t *sub_100756E3C(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, double a9, Swift::String a10, char *a11, char *a12)
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
  v18[5] = sub_100706B30(&qword_100CB3DB0);
  v19 = sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
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
  v31 = sub_100768830(&qword_100CB3DA8, &type metadata accessor for Date);
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

uint64_t *sub_100757520(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB3DB0);
  sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
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

uint64_t sub_1007576C0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_1007577C8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1007578D8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_1007579B0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100757AB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100757BC0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_100757C98()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100757DA0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100757EB0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_100757F88()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10075808C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100758198()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_100758270()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_100758378@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100758488()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936138();
}

uint64_t sub_100758560()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100768830(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100758698()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100768830(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_1007587D0(uint64_t a1, uint64_t *a2)
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
  sub_100768830(&qword_100CB3DB8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100758958(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = swift_allocObject();
  sub_1007589F0(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t *sub_1007589F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
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
  v9[5] = sub_100706B30(&qword_100CB3DC0);
  v19 = sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
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
  sub_100768830(&qword_100CB3DA8, &type metadata accessor for Date);
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

void sub_100758EB4(uint64_t *a1, char a2, void (*a3)(char *, uint64_t))
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

uint64_t *sub_100758F98(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB3DC0);
  sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
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

uint64_t sub_1007590E0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007591E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007592F0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_100936138();
}

uint64_t sub_1007593C8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007594CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007595D8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_100936138();
}

uint64_t sub_1007596B0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_100022718(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_1007597F0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_100022718(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_100759930(uint64_t a1, uint64_t *a2)
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
  sub_100768830(&qword_100CB3DC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_100759A78(uint64_t a1)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DC8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_100936138();

  return sub_100021EA4(a1);
}

uint64_t sub_100759B48(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  sub_100759BB0(a1, a2, a3, a4);
  return v8;
}

void *sub_100759BB0(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v16 = a3;
  v17 = a4;
  v8 = *v4;
  v9 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v5[6] = sub_100706B30(&qword_100CB3DE8);
  v18 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle;
  v12 = sub_100768830(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
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
  sub_100768830(&qword_100CB3DC8, v18);
  sub_100936138();

  sub_100021EA4(v11);
  return v5;
}

uint64_t sub_100759EB8(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 48) = sub_100706B30(&qword_100CB3DE8);
  sub_100768830(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
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

uint64_t sub_100759FF0(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB3DE8);
  sub_100768830(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
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

uint64_t sub_10075A14C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10075A254@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10075A364()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075A43C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10075A544@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10075A654()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075A72C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10075A834@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10075A944()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075AA1C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10075AB20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10075AC2C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075AD04()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10075AE08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10075AF14()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075AFEC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10075B0F4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10075B204()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075B2DC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100768830(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_10075B414()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100768830(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_10075B54C(uint64_t a1, uint64_t *a2)
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
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10075B6D4()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  return v0;
}

double sub_10075B7DC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100768AE4();
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10075B8EC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075B9C4(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
  sub_1007156D8(a1, a2);
}

uint64_t sub_10075BAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_100768830(a5, a6);
  sub_100768A18();
  sub_1009368C8();
}

uint64_t sub_10075BB44()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10075BC48@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_10075BD54()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075BE24()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10075BF28@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_10075C034()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075C104()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075C1D0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100022718(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10075C310()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100022718(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10075C450(uint64_t a1, uint64_t *a2)
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
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10075C598(uint64_t a1)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(a1);
}

uint64_t sub_10075C668(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_100768830(a4, a5);
  sub_100022718(&qword_100CB3DD8, &qword_100CB3DA8);
  sub_1009368C8();
}

uint64_t sub_10075C730()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10075C834@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_10075C940()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075CA10()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10075CB14@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_10075CC20()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075CCF0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075CDBC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100022718(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10075CEFC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100022718(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10075D03C(uint64_t a1, uint64_t *a2)
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
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10075D184(uint64_t a1)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(a1);
}

uint64_t sub_10075D254()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_10075D380@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10075D4B4()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075D58C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075D66C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100022718(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10075D7AC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100022718(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10075D8EC(uint64_t a1, uint64_t *a2)
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
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10075DA34(uint64_t a1)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(a1);
}

uint64_t sub_10075DB04()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100022718(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10075DC44()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100022718(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10075DD84(uint64_t a1, uint64_t *a2)
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
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10075DECC(uint64_t a1)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(a1);
}

uint64_t sub_10075DF9C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100022718(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10075E0DC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100022718(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_10075E21C(uint64_t a1, uint64_t *a2)
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
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_10075E364(uint64_t a1)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();

  return sub_100021EA4(a1);
}

uint64_t sub_10075E434()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10075E538@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_10075E644()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075E714()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DF0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936138();
}

uint64_t sub_10075E7E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_100768830(a4, a5);
  sub_1009368C8();
}

uint64_t sub_10075E86C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t, uint64_t), unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18)
{
  v48 = a8;
  v50 = a7;
  v47 = a5;
  v65 = a3;
  v66 = a4;
  v57 = a18;
  v55 = a17;
  v53 = a16;
  v52 = a15;
  v51 = a14;
  v63 = a12;
  v64 = a13;
  v67 = a11;
  v59 = a10;
  v58 = a9;
  v60 = sub_100936038();
  v68 = *(v60 - 8);
  __chkstk_darwin(v60);
  v49 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 48) = sub_100706B30(&qword_100CB3E00);
  v56 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution;
  v24 = sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  v71 = v18;
  v72 = v18;
  v73 = v24;
  v74 = v24;
  *(v23 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v23 + 24));
  sub_100936858();
  *(v23 + 16) = 16843009;
  *(v23 + 20) = 257;
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  LOBYTE(v71) = 0;
  sub_1009366D8();

  v54 = OBJC_IVAR____TtCO17identityservicesd21SDPersistenceSchemaV631IDSQuerySDSenderKeyDistribution___observationRegistrar;
  sub_100936158();
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  v71 = a1;
  v72 = a2;
  v61 = a1;
  v62 = a2;
  sub_100715738(a1, a2);
  v25 = sub_100768A18();
  sub_1009366D8();

  sub_1007156D8(a1, a2);
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  v27 = v65;
  v26 = v66;
  v71 = v65;
  v72 = v66;
  sub_100715738(v65, v66);
  sub_1009366D8();

  sub_1007156D8(v27, v26);
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  v71 = v47;
  v72 = a6;
  sub_1009366D8();

  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  v71 = v50;
  v72 = v48;
  sub_1009366D8();

  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  v28 = v58;
  v29 = v59;
  v71 = v58;
  v72 = v59;
  sub_100715738(v58, v59);
  v46 = v25;
  sub_1009366D8();

  sub_1007156D8(v28, v29);
  v30 = v68;
  v31 = v49;
  v32 = v60;
  (*(v68 + 16))(v49, v67, v60);
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009366D8();

  v33 = *(v30 + 8);
  v68 = v30 + 8;
  v50 = v33;
  v33(v31, v32);
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  v35 = v63;
  v34 = v64;
  v71 = v63;
  v72 = v64;
  sub_100715738(v63, v64);
  sub_1009366D8();

  sub_1007156D8(v35, v34);
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  LOBYTE(v71) = v51;
  sub_1009366D8();

  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  LOBYTE(v71) = v52;
  sub_1009366D8();

  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  LOBYTE(v71) = v53;
  sub_1009366D8();

  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  LOBYTE(v71) = v55;
  sub_1009366D8();

  v37 = v61;
  v36 = v62;
  v76 = v61;
  v77 = v62;
  v74 = &type metadata for Data;
  v75 = &protocol witness table for Data;
  v38 = v58;
  v39 = v59;
  v71 = v58;
  v72 = v59;
  v40 = sub_1000226D4(&v71, &type metadata for Data);
  v41 = *v40;
  v42 = v40[1];
  sub_100715738(v37, v36);
  sub_100715738(v38, v39);
  sub_100768308(v41, v42);
  sub_100012970(&v71);
  v43 = v76;
  v44 = v77;
  sub_1000226D4((v23 + 24), *(v23 + 48));
  swift_getKeyPath();
  v71 = v43;
  v72 = v44;
  sub_1009366D8();

  sub_1007156D8(v43, v44);
  v71 = v23;
  swift_getKeyPath();
  v69 = v23;
  v70 = v57;
  sub_100768830(&qword_100CB3DF0, v56);
  sub_100936138();

  sub_1007156D8(v63, v64);
  sub_1007156D8(v38, v39);
  sub_1007156D8(v65, v66);
  sub_1007156D8(v61, v62);
  v50(v67, v60);
  return v23;
}

uint64_t sub_10075F184(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB3E00);
  sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100014250((v1 + 24));
  sub_100936858();
  *(v1 + 16) = 16843009;
  *(v1 + 20) = 257;
  sub_1000226D4((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  sub_1009366D8();

  sub_100936158();
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100012970(v1 + 24);
  sub_100308C84(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10075F33C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E08, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA960, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10075F440@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E08, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA960, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_10075F54C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E08, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_100936138();
}

uint64_t sub_10075F618()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CBA960, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_1009368C8();
}

uint64_t sub_10075F6B4()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E08, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA960, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  return v1;
}

uint64_t sub_10075F7B8@<X0>(_DWORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E08, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA960, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_1009368A8();

  *a1 = v3;
  return result;
}

uint64_t sub_10075F8C4()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E08, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_100936138();
}

uint64_t sub_10075F994(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_100768830(a4, a5);
  sub_1009368C8();
}

uint64_t sub_10075FA20()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E08, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA960, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_100768830(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_10075FB58()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E08, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA960, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_100768830(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_10075FC90(uint64_t a1, uint64_t *a2)
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
  sub_100768830(&qword_100CB3E08, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10075FE18(uint64_t a1, int a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_10075FE70(a1, a2, a3);
  return v6;
}

uint64_t *sub_10075FE70(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v17 = a3;
  v7 = *v3;
  v8 = sub_100936038();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[5] = sub_100706B30(&qword_100CB3E10);
  v12 = sub_100768830(&qword_100CBA960, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
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
  sub_100768830(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009366D8();

  v14 = *(v9 + 8);
  v14(v13, v8);
  v14(v11, v8);
  return v4;
}

uint64_t *sub_100760180(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = sub_100706B30(&qword_100CB3E10);
  sub_100768830(&qword_100CBA960, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
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

uint64_t sub_1007602B0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E18, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007603B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E18, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007604C0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E18, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_100760598()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E18, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_10076069C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E18, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007607A8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E18, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_100760880()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E18, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100760984@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E18, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100760A90()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E18, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_100760B68()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E18, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100760C6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E18, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100760D78()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E18, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_100936138();
}

uint64_t sub_100760E44()
{
  swift_getKeyPath();
  sub_100768830(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_1009368C8();
}

uint64_t sub_100760EE0(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  sub_100760F50(a1, a2);
  return v4;
}

uint64_t *sub_100760F50(uint64_t a1, void *a2)
{
  v3 = v2;
  v2[5] = sub_100706B30(&qword_100CB3E20);
  sub_100768830(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
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

uint64_t *sub_100761204(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = sub_100706B30(&qword_100CB3E20);
  sub_100768830(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
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

uint64_t sub_100761334()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100761438@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100761544()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_100761610()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_1009368C8();
}

uint64_t sub_1007616AC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007617B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1007618BC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_100761994()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100022718(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_100761AD4()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100022718(&qword_100CB3DE0, &unk_100CBA670);
  sub_1009368A8();
}

uint64_t sub_100761C14(uint64_t a1, uint64_t *a2)
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
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936138();

  return sub_100021EA4(v6);
}

uint64_t sub_100761D5C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100768830(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100761E94()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100768830(&unk_100CBA670, &type metadata accessor for Date);
  sub_1009368A8();
}

uint64_t sub_100761FCC(uint64_t a1, uint64_t *a2)
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
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936138();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100762154(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_100768830(a4, a5);
  sub_100768830(&qword_100CB3DA8, &type metadata accessor for Date);
  sub_1009368C8();
}

uint64_t sub_100762214()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100762318@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100762424()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_1007624F0()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_1009368C8();
}

uint64_t sub_10076258C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100762690@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_10076279C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_100762868()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_1009368C8();
}

uint64_t sub_100762904()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_100762A30@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100762B64()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_100762C3C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  return v0;
}

double sub_100762D68@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100022AC0(&qword_100CB3CE0);
  sub_1009368A8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100762E9C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E28, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936138();
}

uint64_t sub_100762F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_100768830(a5, a6);
  sub_100022AC0(&qword_100CB3CD8);
  sub_1009368C8();
}

uint64_t sub_100763034(void *a1, void *a2, uint64_t a3, char *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
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
  *(v19 + 48) = sub_100706B30(&qword_100CB3E30);
  v20 = sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
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
  sub_100022718(&qword_100CB3DD8, &qword_100CB3DA8);
  sub_1009366D8();

  sub_100021EA4(v18);
  *(v19 + 16) = 0;
  v21 = v37;
  v22 = v35;
  (*(v37 + 16))(v15, v36, v35);
  sub_1000226D4((v19 + 24), *(v19 + 48));
  swift_getKeyPath();
  sub_100768830(&qword_100CB3DA8, &type metadata accessor for Date);
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

uint64_t sub_100763608(__int128 *a1)
{
  *(v1 + 48) = sub_100706B30(&qword_100CB3E30);
  sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
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

uint64_t sub_100763770(uint64_t *a1)
{
  sub_100012970(v1 + 24);
  v3 = *a1;
  v4 = sub_100936168();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_100763814()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100763918@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100763A24()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100763AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_100768830(a5, a6);
  sub_1009368C8();
}

uint64_t sub_100763B94()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100763C98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100763DA4()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100763E70()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_100763F0C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100764010@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_10076411C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007641E8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_100764284()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100764388@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100764494()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100764560()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007645FC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100764700@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_10076480C()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007648D8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_100764974()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100764A78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100764B84()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100764C50()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_100764CEC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100764DF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100764EFC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100764FC8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_100765064()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100765168@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100765274()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100765340()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_1007653DC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_1007654E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_1007655EC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_1007656B8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_100765754()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100765858@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100765964()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100765A30()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t sub_100765ACC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  return v0;
}

uint64_t sub_100765BD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936148();

  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368A8();

  *a2 = v4;
  return result;
}

uint64_t sub_100765CDC()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CB3E38, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936138();
}

uint64_t sub_100765DA8()
{
  swift_getKeyPath();
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_1009368C8();
}

uint64_t *sub_100765E44()
{
  v0 = swift_allocObject();
  v0[5] = sub_100706B30(&qword_100CB3E40);
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
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

uint64_t sub_1007662F4(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t *sub_100766344(__int128 *a1)
{
  v1[5] = sub_100706B30(&qword_100CB3E40);
  sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
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

uint64_t sub_10076648C(uint64_t *a1)
{
  sub_100012970(v1 + 16);
  v3 = *a1;
  v4 = sub_100936168();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocClassInstance();
}

void (*sub_100766574(uint64_t *a1))(uint64_t *, char)
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
  return sub_100771748;
}

uint64_t sub_1007666F0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007667D0(uint64_t *a1))(uint64_t *, char)
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
  return sub_100771748;
}

uint64_t sub_100766954(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007669EC(uint64_t *a1))(uint64_t *, char)
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
  return sub_100771748;
}

uint64_t sub_100766B68(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100768830(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_100766C60(uint64_t *a1))(uint64_t *, char)
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
  return sub_10077174C;
}

uint64_t sub_100766DDC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_100766E74(uint64_t *a1))(uint64_t *, char)
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
  return sub_10077174C;
}

uint64_t sub_100766FF0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_100767088(uint64_t *a1))(uint64_t *, char)
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
  return sub_100771748;
}

uint64_t sub_100767204(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100768830(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_10076729C(uint64_t *a1))(uint64_t *, char)
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
  return sub_100771748;
}

uint64_t sub_100767418(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

void (*sub_1007674C8(uint64_t *a1))(uint64_t *, char)
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
  return sub_10077174C;
}

uint64_t sub_100767644(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100768830(&qword_100CBA960, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t *sub_1007676F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t *))
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

void (*sub_1007677FC(uint64_t *a1))(uint64_t *, char)
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
  return sub_10077174C;
}

uint64_t sub_100767978(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100768830(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_100767A10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_100012970(v4 + 24);
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_100767A78(uint64_t *a1))(uint64_t *, char)
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
  return sub_100771748;
}

uint64_t sub_100767BF4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_100767C8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = swift_allocObject();
  a4(a1);
  return v6;
}

uint64_t sub_100767CDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_100012970(v4 + 16);
  a4(a1, v4 + 16);
  return swift_endAccess();
}

void (*sub_100767D44(uint64_t *a1))(uint64_t *, char)
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
  return sub_10077174C;
}

Swift::Int sub_100767DD8()
{
  sub_100937668();
  sub_100936AD8();
  return sub_1009376C8();
}

Swift::Int sub_100767EB0()
{
  sub_100937668();
  sub_100936AD8();
  return sub_1009376C8();
}

uint64_t sub_100767F84(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_100768004(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100768130(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1009369C8();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

size_t sub_100768130(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100706B30(&qword_100CB49B8);
  v10 = *(sub_1009369C8() - 8);
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
  v15 = *(sub_1009369C8() - 8);
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

uint64_t sub_100768308(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_100935E58();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100768440(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_100768440(v3, v4);
  }

  return sub_100935E58();
}

uint64_t sub_100768440(uint64_t a1, uint64_t a2)
{
  result = sub_100935BE8();
  if (!result || (result = sub_100935C18(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_100935C08();
      return sub_100935E58();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007684D4()
{
  sub_100706B30(&unk_100CB4A00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD8E0;
  v1 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
  v2 = sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  v4 = sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  v6 = sub_100768830(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity(0);
  v8 = sub_100768830(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  v10 = sub_100768830(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex(0);
  v12 = sub_100768830(&qword_100CBA960, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  v13 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle(0);
  v14 = sub_100768830(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  *(v0 + 128) = v13;
  *(v0 + 136) = v14;
  v15 = type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle(0);
  v16 = sub_100768830(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  v17 = type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent(0);
  v18 = sub_100768830(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  v19 = type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount(0);
  v20 = sub_100768830(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  *(v0 + 176) = v19;
  *(v0 + 184) = v20;
  v21 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus(0);
  v22 = sub_100768830(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  *(v0 + 192) = v21;
  *(v0 + 200) = v22;
  return v0;
}

uint64_t sub_100768830(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100768A18()
{
  result = qword_100CB4B40;
  if (!qword_100CB4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4B40);
  }

  return result;
}

uint64_t sub_100768A6C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1007147D0(&qword_100CB3CE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100768AE4()
{
  result = qword_100CB4B60;
  if (!qword_100CB4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4B60);
  }

  return result;
}

unint64_t sub_100768BC0()
{
  result = qword_100CB3D08;
  if (!qword_100CB3D08)
  {
    sub_1007147D0(&qword_100CB3D00);
    sub_100014C88(&qword_100CB3D10, &qword_100CB3D18);
    sub_100768830(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3D08);
  }

  return result;
}

uint64_t sub_100768CD4()
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
  v12 = sub_100768830(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
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
  v12 = sub_100768830(&qword_100CB49F8, &type metadata accessor for Schema.Relationship);
  *&v10 = v8;
  sub_1009369B8();
  return v4;
}

uint64_t sub_100769364(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1007147D0(&qword_100CB3D38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100769478()
{
  sub_100706B30(&qword_100CB49B8);
  sub_1009369C8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1009AD830;
  swift_getKeyPath();
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  sub_100936A28();
  swift_allocObject();
  sub_100936A38();
  sub_100768830(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
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

unint64_t sub_100769C54()
{
  result = qword_100CB3D60;
  if (!qword_100CB3D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3D60);
  }

  return result;
}

unint64_t sub_100769CD8()
{
  result = qword_100CB3D68;
  if (!qword_100CB3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3D68);
  }

  return result;
}

unint64_t sub_100769D90()
{
  result = qword_100CB3D78;
  if (!qword_100CB3D78)
  {
    sub_1007147D0(&qword_100CB3D70);
    sub_100014C88(&qword_100CB3D80, &qword_100CB3D88);
    sub_100768830(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3D78);
  }

  return result;
}

uint64_t sub_100769EA4()
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
  v13 = sub_100768830(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
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
  v13 = sub_100768830(&qword_100CB49F8, &type metadata accessor for Schema.Relationship);
  *&v11 = v7;
  sub_1009369B8();
  return v3;
}

uint64_t sub_10076A5E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x626167676F4C746BLL && a2 == 0xEE0061746144656CLL;
  if (v4 || (sub_100937598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100B00D30 == a2 || (sub_100937598() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69737265566D676ELL && a2 == 0xED0000746E496E6FLL || (sub_100937598() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100B00D50 == a2 || (sub_100937598() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000100B00D70 == a2 || (sub_100937598() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000100B00D90 == a2 || (sub_100937598() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000100B00DC0 == a2 || (sub_100937598() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000100B00DE0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_100937598();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

BOOL sub_10076A888(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v37 = *a2;
  v38 = v4;
  v5 = *(&v4 + 1);
  v6 = v4;
  v8 = *(&v37 + 1);
  v7 = v37;
  if (*(&v4 + 1) >> 60 == 15)
  {
    if (*(&v37 + 1) >> 60 == 15)
    {
      sub_100012D50(&v38, &v36, &qword_100CB3CE8);
      sub_100012D50(&v37, &v36, &qword_100CB3CE8);
      sub_10001C370(v6, v5);
      goto LABEL_7;
    }

LABEL_5:
    sub_100012D50(&v38, &v36, &qword_100CB3CE8);
    v9 = &v37;
    v10 = &v36;
LABEL_12:
    sub_100012D50(v9, v10, &qword_100CB3CE8);
    sub_10001C370(v6, v5);
    v12 = v7;
    v13 = v8;
LABEL_13:
    sub_10001C370(v12, v13);
    return 0;
  }

  if (*(&v37 + 1) >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_100012D50(&v38, &v36, &qword_100CB3CE8);
  sub_100012D50(&v37, &v36, &qword_100CB3CE8);
  v11 = sub_10071CAE8(v6, v5, v7, v8);
  sub_10001C370(v7, v8);
  sub_10001C370(v6, v5);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v36 = a1[1];
  v35 = a2[1];
  v5 = *(&v36 + 1);
  v6 = v36;
  v8 = *(&v35 + 1);
  v7 = v35;
  if (*(&v36 + 1) >> 60 == 15)
  {
    if (*(&v35 + 1) >> 60 == 15)
    {
      sub_100012D50(&v36, &v34, &qword_100CB3CE8);
      sub_100012D50(&v35, &v34, &qword_100CB3CE8);
      sub_10001C370(v6, v5);
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (*(&v35 + 1) >> 60 == 15)
  {
LABEL_11:
    sub_100012D50(&v36, &v34, &qword_100CB3CE8);
    v9 = &v35;
    v10 = &v34;
    goto LABEL_12;
  }

  sub_100012D50(&v36, &v34, &qword_100CB3CE8);
  sub_100012D50(&v35, &v34, &qword_100CB3CE8);
  v15 = sub_10071CAE8(v6, v5, v7, v8);
  sub_10001C370(v7, v8);
  sub_10001C370(v6, v5);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 34) != *(a2 + 34))
  {
    return 0;
  }

  v16 = *(a1 + 40);
  v33 = *(a2 + 40);
  v34 = v16;
  v5 = *(&v16 + 1);
  v6 = v16;
  v8 = *(&v33 + 1);
  v7 = v33;
  if (*(&v16 + 1) >> 60 == 15)
  {
    if (*(&v33 + 1) >> 60 == 15)
    {
      sub_100012D50(&v34, &v32, &qword_100CB3CE8);
      sub_100012D50(&v33, &v32, &qword_100CB3CE8);
      sub_10001C370(v6, v5);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (*(&v33 + 1) >> 60 == 15)
  {
LABEL_22:
    sub_100012D50(&v34, &v32, &qword_100CB3CE8);
    v9 = &v33;
    v10 = &v32;
    goto LABEL_12;
  }

  sub_100012D50(&v34, &v32, &qword_100CB3CE8);
  sub_100012D50(&v33, &v32, &qword_100CB3CE8);
  v17 = sub_10071CAE8(v6, v5, v7, v8);
  sub_10001C370(v7, v8);
  sub_10001C370(v6, v5);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v18 = *(a1 + 56);
  v31 = *(a2 + 56);
  v32 = v18;
  v5 = *(&v18 + 1);
  v6 = v18;
  v8 = *(&v31 + 1);
  v7 = v31;
  if (*(&v18 + 1) >> 60 == 15)
  {
    if (*(&v31 + 1) >> 60 == 15)
    {
      sub_100012D50(&v32, &v30, &qword_100CB3CE8);
      sub_100012D50(&v31, &v30, &qword_100CB3CE8);
      sub_10001C370(v6, v5);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (*(&v31 + 1) >> 60 == 15)
  {
LABEL_28:
    sub_100012D50(&v32, &v30, &qword_100CB3CE8);
    v9 = &v31;
    v10 = &v30;
    goto LABEL_12;
  }

  sub_100012D50(&v32, &v30, &qword_100CB3CE8);
  sub_100012D50(&v31, &v30, &qword_100CB3CE8);
  v19 = sub_10071CAE8(v6, v5, v7, v8);
  sub_10001C370(v7, v8);
  sub_10001C370(v6, v5);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v20 = *(a1 + 72);
  v29 = *(a2 + 72);
  v30 = v20;
  v5 = *(&v20 + 1);
  v6 = v20;
  v8 = *(&v29 + 1);
  v7 = v29;
  if (*(&v20 + 1) >> 60 == 15)
  {
    if (*(&v29 + 1) >> 60 == 15)
    {
      sub_100012D50(&v30, &v28, &qword_100CB3CE8);
      sub_100012D50(&v29, &v28, &qword_100CB3CE8);
      sub_10001C370(v6, v5);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (*(&v29 + 1) >> 60 == 15)
  {
LABEL_34:
    sub_100012D50(&v30, &v28, &qword_100CB3CE8);
    v9 = &v29;
    v10 = &v28;
    goto LABEL_12;
  }

  sub_100012D50(&v30, &v28, &qword_100CB3CE8);
  sub_100012D50(&v29, &v28, &qword_100CB3CE8);
  v21 = sub_10071CAE8(v6, v5, v7, v8);
  sub_10001C370(v7, v8);
  sub_10001C370(v6, v5);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v22 = *(a1 + 88);
  v27 = *(a2 + 88);
  v28 = v22;
  v23 = v22;
  v24 = v27;
  if (*(&v22 + 1) >> 60 == 15)
  {
    if (*(&v27 + 1) >> 60 == 15)
    {
      sub_100012D50(&v28, v26, &qword_100CB3CE8);
      sub_100012D50(&v27, v26, &qword_100CB3CE8);
      sub_10001C370(v23, *(&v23 + 1));
      return 1;
    }

    goto LABEL_40;
  }

  if (*(&v27 + 1) >> 60 == 15)
  {
LABEL_40:
    sub_100012D50(&v28, v26, &qword_100CB3CE8);
    sub_100012D50(&v27, v26, &qword_100CB3CE8);
    sub_10001C370(v23, *(&v23 + 1));
    v13 = *(&v24 + 1);
    v12 = v24;
    goto LABEL_13;
  }

  sub_100012D50(&v28, v26, &qword_100CB3CE8);
  sub_100012D50(&v27, v26, &qword_100CB3CE8);
  v25 = sub_10071CAE8(v23, *(&v23 + 1), v24, *(&v24 + 1));
  sub_10001C370(v24, *(&v24 + 1));
  sub_10001C370(v23, *(&v23 + 1));
  return (v25 & 1) != 0;
}

unint64_t sub_10076AFEC()
{
  result = qword_100CC0900[0];
  if (!qword_100CC0900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC0900);
  }

  return result;
}

uint64_t sub_10076B040@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100706B30(&qword_100CB49E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = a1[3];
  v36 = a1;
  sub_1000226D4(a1, v9);
  sub_10076AFEC();
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
    sub_100769D58(&v38, &v45);
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
    result = sub_100769CA8(&v45);
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

uint64_t sub_10076BAC4()
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
  sub_100768830(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
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

uint64_t sub_10076C17C()
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
  sub_100768830(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
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

uint64_t sub_10076C668()
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
  sub_100768830(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_10076D07C()
{
  v24 = sub_1009369C8();
  v0 = *(v24 - 8);
  v1 = v0;
  __chkstk_darwin(v24);
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706B30(&qword_100CB49B8);
  v3 = *(v0 + 72);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1009AD910;
  v22 = v5;
  v23 = v4;
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  sub_100706B30(&qword_100CB49C0);
  sub_100936A18();
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  sub_100936A08();
  v6 = sub_100936A28();
  swift_allocObject();
  v7 = sub_100936A38();
  *(&v26 + 1) = v6;
  v8 = sub_100768830(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  v27 = v8;
  *&v25 = v7;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  swift_allocObject();
  v9 = sub_100936A38();
  *(&v26 + 1) = v6;
  v27 = v8;
  *&v25 = v9;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  *(&v29 + 1) = &type metadata for Bool;
  LOBYTE(v28) = 0;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_1009369B8();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  sub_100706B30(&qword_100CB49D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1009AD160;
  sub_100706B30(&qword_100CB4A30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1009AD920;
  *(v11 + 32) = swift_getKeyPath();
  *(v10 + 32) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1009AD930;
  *(v12 + 32) = swift_getKeyPath();
  *(v12 + 40) = swift_getKeyPath();
  *(v10 + 40) = v12;
  v13 = sub_100706B30(&qword_100CB49D8);
  swift_allocObject();
  v14 = sub_1009369E8();
  *(&v26 + 1) = v13;
  v15 = v21;
  v27 = sub_100014C88(&qword_100CB49E0, &qword_100CB49D8);
  *&v25 = v14;
  sub_1009369B8();
  v16 = sub_100768130(0, 1, 1, &_swiftEmptyArrayStorage);
  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_100768130(v17 > 1, v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  v19 = v16;
  (*(v1 + 32))(&v16[v23 + v18 * v3], v15, v24);
  *&v25 = v22;
  sub_100768004(v19);
  return v25;
}

uint64_t sub_10076DBD0()
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
  sub_100768830(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_10076DFAC()
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
  sub_100768830(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  swift_getKeyPath();
  sub_1009369B8();
  return v0;
}

uint64_t sub_10076E534()
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
  sub_100768830(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
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

uint64_t sub_10076EBBC()
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
  sub_100768830(&qword_100CB49C8, &type metadata accessor for Schema.Attribute);
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

uint64_t sub_1007700DC()
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

uint64_t sub_1007701B4()
{
  result = sub_100936168();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10077028C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1007702B4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1007702E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 104))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10077033C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_1007703BC()
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

uint64_t sub_10077048C()
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

uint64_t sub_100770580()
{
  result = sub_100936168();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10077067C()
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

uint64_t sub_100770740()
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

uint64_t sub_100770808()
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

uint64_t sub_1007708E4()
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

uint64_t getEnumTagSinglePayload for SDPersistenceSchemaV6.DeviceIdentityContainer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SDPersistenceSchemaV6.DeviceIdentityContainer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100770B0C()
{
  result = qword_100CC2A80[0];
  if (!qword_100CC2A80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC2A80);
  }

  return result;
}

unint64_t sub_100770B64()
{
  result = qword_100CC2B90;
  if (!qword_100CC2B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2B90);
  }

  return result;
}

unint64_t sub_100770BBC()
{
  result = qword_100CC2B98[0];
  if (!qword_100CC2B98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC2B98);
  }

  return result;
}

uint64_t sub_100770DA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  swift_getKeyPath();
  sub_100768830(a2, a3);
  sub_100768A18();
  sub_1009368C8();
}

uint64_t sub_100770EDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  swift_getKeyPath();
  sub_100768830(a2, a3);
  sub_1009368C8();
}

id sub_10077175C()
{
  v1 = OBJC_IVAR___IDSSenderKeyDistributionManager_persistenceManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1007717B0(uint64_t a1)
{
  v3 = OBJC_IVAR___IDSSenderKeyDistributionManager_persistenceManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100771868()
{
  v1 = (v0 + OBJC_IVAR___IDSSenderKeyDistributionManager_service);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1007718C0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___IDSSenderKeyDistributionManager_service);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_100771980()
{
  v0 = objc_opt_self();
  v1 = sub_100936B28();
  v2 = [v0 sharedInstanceWithPortName:v1];

  if (v2)
  {
    v3 = [v2 pushToken];

    if (v3)
    {
      sub_100935EA8();
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_100771A4C()
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = result;
  (*((swift_isaMask & *v0) + 0xC8))();
  v4 = sub_100936B28();

  v5 = [v3 serviceWithIdentifier:v4];

  v6 = [v2 registeredAccountsOnService:v5];
  if (!v6)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100014170(0, &unk_100CB4A20);
  v7 = sub_100936CE8();

  return v7;
}

uint64_t sub_100771BB0()
{
  v1 = OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___rollKeysTimer;
  if (*&v0[OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___rollKeysTimer])
  {
    v2 = *&v0[OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___rollKeysTimer];
  }

  else
  {
    sub_100771C18(v0);
    v2 = v3;
    *&v0[v1] = v3;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

void sub_100771C18(void *a1)
{
  v37 = a1;
  v1 = sub_1009364F8();
  v40 = *(v1 - 8);
  v41 = v1;
  __chkstk_darwin(v1);
  v38 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100936528();
  v36 = *(v39 - 8);
  __chkstk_darwin(v39);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1009364E8();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = __chkstk_darwin(v4);
  v30 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v8 = (&v30 - v7);
  v9 = sub_100936558();
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100936FA8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100014170(0, &qword_100CB5058);
  v16 = im_primary_queue();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1007924D8(&qword_100CB5060, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_100706B30(&qword_100CB5068);
  sub_100014C88(&unk_100CB5070, &qword_100CB5068);
  v17 = v11;
  sub_1009370B8();
  sub_100936FB8();

  (*(v13 + 8))(v15, v12);
  swift_getObjectType();
  sub_100936538();
  v18 = sub_1007903FC();
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v18 < 9.22337204e18)
  {
    *v8 = v18;
    v20 = v33;
    v19 = v34;
    v21 = *(v33 + 104);
    v21(v8, enum case for DispatchTimeInterval.seconds(_:), v34);
    v22 = v30;
    *v30 = 0;
    v21(v22, enum case for DispatchTimeInterval.nanoseconds(_:), v19);
    sub_100937008();
    v23 = *(v20 + 8);
    v23(v22, v19);
    v23(v8, v19);
    (*(v31 + 8))(v17, v32);
    v24 = swift_allocObject();
    v25 = v37;
    *(v24 + 16) = v37;
    aBlock[4] = sub_100796B30;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = &unk_100BE8098;
    v26 = _Block_copy(aBlock);
    v27 = v25;
    v28 = v35;
    sub_100936508();
    v29 = v38;
    sub_1007721F0();
    sub_100936FC8();
    _Block_release(v26);
    (*(v40 + 8))(v29, v41);
    (*(v36 + 8))(v28, v39);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1007721F0()
{
  sub_1009364F8();
  sub_1007924D8(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100706B30(&unk_100CB3550);
  sub_100014C88(&qword_100CB4AB0, &unk_100CB3550);
  return sub_1009370B8();
}

uint64_t (*sub_1007722F4(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_100771BB0();
  return sub_10077233C;
}

id sub_100772354()
{
  v1 = OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___unsentRateLimiter;
  v2 = *(v0 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___unsentRateLimiter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___unsentRateLimiter);
LABEL_5:
    v7 = v2;
    return v3;
  }

  v4 = (*((swift_isaMask & *v0) + 0x348))();
  result = [objc_allocWithZone(IDSRateLimiter) initWithLimit:v4 timeLimit:(*((swift_isaMask & *v0) + 0x350))()];
  if (result)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void (*sub_100772478(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100772354();
  return sub_1007724C0;
}

void sub_1007724C0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___unsentRateLimiter);
  *(v1 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___unsentRateLimiter) = v2;
}

id sub_1007724D8()
{
  v1 = OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___iMessageReceiveRateLimiter;
  v2 = *(v0 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___iMessageReceiveRateLimiter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___iMessageReceiveRateLimiter);
LABEL_5:
    v7 = v2;
    return v3;
  }

  v4 = (*((swift_isaMask & *v0) + 0x358))();
  result = [objc_allocWithZone(IDSRateLimiter) initWithLimit:v4 timeLimit:(*((swift_isaMask & *v0) + 0x360))()];
  if (result)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void (*sub_1007725FC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1007724D8();
  return sub_100772644;
}

void sub_100772644(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___iMessageReceiveRateLimiter);
  *(v1 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___iMessageReceiveRateLimiter) = v2;
}

id sub_10077265C()
{
  v1 = OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___lastActiveRateLimiter;
  v2 = *(v0 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___lastActiveRateLimiter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___lastActiveRateLimiter);
LABEL_5:
    v7 = v2;
    return v3;
  }

  v4 = (*((swift_isaMask & *v0) + 0x368))();
  result = [objc_allocWithZone(IDSRateLimiter) initWithLimit:v4 timeLimit:(*((swift_isaMask & *v0) + 0x370))()];
  if (result)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void (*sub_100772780(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_10077265C();
  return sub_1007727C8;
}

void sub_1007727C8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___lastActiveRateLimiter);
  *(v1 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___lastActiveRateLimiter) = v2;
}

id sub_1007727E0()
{
  v1 = OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___lastIMessagedRateLimiter;
  v2 = *(v0 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___lastIMessagedRateLimiter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___lastIMessagedRateLimiter);
LABEL_5:
    v7 = v2;
    return v3;
  }

  v4 = (*((swift_isaMask & *v0) + 0x380))();
  result = [objc_allocWithZone(IDSRateLimiter) initWithLimit:v4 timeLimit:(*((swift_isaMask & *v0) + 0x388))()];
  if (result)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void (*sub_100772904(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1007727E0();
  return sub_10077294C;
}

void sub_10077294C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___lastIMessagedRateLimiter);
  *(v1 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___lastIMessagedRateLimiter) = v2;
}

id sub_100772964()
{
  v1 = OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___selfKeyCheckRateLimiter;
  v2 = *(v0 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___selfKeyCheckRateLimiter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___selfKeyCheckRateLimiter);
LABEL_5:
    v7 = v2;
    return v3;
  }

  v4 = (*((swift_isaMask & *v0) + 0x398))();
  result = [objc_allocWithZone(IDSRateLimiter) initWithLimit:v4 timeLimit:(*((swift_isaMask & *v0) + 0x3A0))()];
  if (result)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void (*sub_100772A88(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100772964();
  return sub_100772AD0;
}

void sub_100772AD0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___selfKeyCheckRateLimiter);
  *(v1 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___selfKeyCheckRateLimiter) = v2;
}

id sub_100772B20@<X0>(unint64_t *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    result = sub_100014170(0, a1);
    a3[3] = result;
    a3[4] = a2;
    *a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100772B9C()
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void *sub_100772C24(void *a1, uint64_t a2, unint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v5 = sub_1009364D8();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v43 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___IDSSenderKeyDistributionManager_logger;
  sub_1007C9A6C(10);
  *(v3 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___rollKeysTimer) = 0;
  v8 = OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___unsentRateLimiter;
  *(v3 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___unsentRateLimiter) = 0;
  v9 = OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___iMessageReceiveRateLimiter;
  *(v3 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___iMessageReceiveRateLimiter) = 0;
  v10 = OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___lastActiveRateLimiter;
  *(v3 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___lastActiveRateLimiter) = 0;
  v11 = OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___lastIMessagedRateLimiter;
  *(v3 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___lastIMessagedRateLimiter) = 0;
  v41 = OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___selfKeyCheckRateLimiter;
  *(v3 + OBJC_IVAR___IDSSenderKeyDistributionManager____lazy_storage___selfKeyCheckRateLimiter) = 0;
  v12 = OBJC_IVAR___IDSSenderKeyDistributionManager_recoveryWorkItems;
  v13 = sub_100790700(&_swiftEmptyArrayStorage);
  v42 = v12;
  *&v12[v3] = v13;
  v14 = OBJC_IVAR___IDSSenderKeyDistributionManager_deviceUpdateWorkItems;
  v15 = sub_100790700(&_swiftEmptyArrayStorage);
  v40[1] = v14;
  *(v3 + v14) = v15;
  *(v3 + OBJC_IVAR___IDSSenderKeyDistributionManager_firstDataProtectionLockQueue) = &_swiftEmptyArrayStorage;
  if (a1)
  {
    *(v3 + OBJC_IVAR___IDSSenderKeyDistributionManager_persistenceManager) = a1;
    v16 = v3 + OBJC_IVAR___IDSSenderKeyDistributionManager_service;
    v17 = v45;
    *v16 = v44;
    *(v16 + 1) = v17;
    v18 = type metadata accessor for SenderKeyDistributionManager(0);
    v51.receiver = v3;
    v51.super_class = v18;
    v42 = a1;

    v19 = objc_msgSendSuper2(&v51, "init");
    v20 = *((swift_isaMask & *v19) + 0x1B0);
    v21 = v19;
    v20(v48);
    v22 = v49;
    v23 = v50;
    sub_1000226D4(v48, v49);
    v24 = *(v23 + 8);
    v25 = v21;
    v24(v19, v22, v23);

    v26 = sub_100012970(v48);
    (*((swift_isaMask & *v25) + 0x1D0))(v48, v26);
    v27 = v49;
    v28 = v50;
    sub_1000226D4(v48, v49);
    (*(v28 + 8))(v19, v27, v28);

    sub_100012970(v48);
    sub_1007844D4();
    v30 = v46;
    v29 = v47;
    v31 = v43;
    (*(v46 + 16))(v43, v25 + OBJC_IVAR___IDSSenderKeyDistributionManager_logger, v47);

    v32 = sub_1009364B8();
    v33 = sub_100936F18();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48[0] = v35;
      *v34 = 136315138;
      v36 = sub_10001273C(v44, v17, v48);

      *(v34 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "Successfully initialized SenderKeyDistributionManager with service %s", v34, 0xCu);
      sub_100012970(v35);
    }

    else
    {
    }

    v37 = (*(v30 + 8))(v31, v29);
    (*((swift_isaMask & *v25) + 0xF0))(v37);
    swift_getObjectType();
    sub_100936FF8();

    v38 = v42;
    swift_unknownObjectRelease();
  }

  else
  {

    (*(v46 + 8))(v3 + v7, v47);
    swift_unknownObjectRelease();

    type metadata accessor for SenderKeyDistributionManager(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v19;
}

id sub_1007731C8()
{
  (*((swift_isaMask & *v0) + 0x1B0))(v12);
  v1 = v13;
  v2 = v14;
  sub_1000226D4(v12, v13);
  v3 = *(v2 + 16);
  v4 = v0;
  v3(v0, v1, v2);

  v5 = sub_100012970(v12);
  (*((swift_isaMask & *v4) + 0x1D0))(v12, v5);
  v6 = v13;
  v7 = v14;
  sub_1000226D4(v12, v13);
  v8 = *(v7 + 16);
  v9 = v4;
  v8(v0, v6, v7);

  sub_100012970(v12);
  v11.receiver = v9;
  v11.super_class = type metadata accessor for SenderKeyDistributionManager(0);
  return objc_msgSendSuper2(&v11, "dealloc");
}

id sub_100773484(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_100771A4C();
  sub_100014170(0, &unk_100CB4A20);
  isa = sub_100936CD8().super.isa;

  sub_100014170(0, &qword_100CBA2E0);
  v4 = sub_100936CD8().super.isa;
  v5 = [v2 accountToQueryFrom:isa fromURI:a1 destinationURIs:v4 allowLocalAccount:0 respectFromURI:1];

  return v5;
}

id sub_100773564(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void (*a8)(uint64_t), uint64_t a9)
{
  v10 = v9;
  v187._countAndFlagsBits = a6;
  v187._object = a7;
  v182 = swift_allocObject();
  *(v182 + 16) = sub_100790608(&_swiftEmptyArrayStorage);
  v12 = swift_allocObject();
  *(v12 + 16) = &_swiftEmptyArrayStorage;
  v189 = (v12 + 16);
  sub_100706B30(&qword_100CB4A30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1009AD920;
  *(inited + 32) = a3;
  *&__s1 = inited;
  v14 = a3;

  sub_1007838E4(v15, sub_10078F60C);
  v16 = __s1;
  v188 = __s1;
  if (__s1 >> 62)
  {
    goto LABEL_220;
  }

  v199 = __s1 & 0xFFFFFFFFFFFFFF8;
  v17 = *((__s1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v191 = v14;
  v180 = v12;
  v18 = &selRef_setPushPublicKey_;
  v190 = v10;
  if (v17)
  {
    v14 = 0;
    v197 = v16 & 0xC000000000000001;
    v195 = v17;
    while (1)
    {
      if (v197)
      {
        v19 = sub_100937268();
      }

      else
      {
        if (v14 >= *(v199 + 16))
        {
          goto LABEL_214;
        }

        v19 = *(v16 + 8 * v14 + 32);
      }

      v20 = v19;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_213;
      }

      v202 = v14 + 1;
      v21 = [objc_opt_self() v18[509]];
      if (!v21)
      {
        goto LABEL_242;
      }

      v22 = v21;
      v23 = v20;
      v24 = sub_100936B28();
      *&__s1 = sub_100936B38();
      *(&__s1 + 1) = v25;
      v216._countAndFlagsBits = 23328;
      v216._object = 0xE200000000000000;
      sub_100936C08(v216);
      sub_100936C08(v187);
      v217._countAndFlagsBits = 93;
      v217._object = 0xE100000000000000;
      sub_100936C08(v217);
      v26 = sub_100936B28();

      v27 = [v22 cachedIDStatusForID:v23 fromURI:v191 fromService:v24 respectExpiry:1 reason:v26];

      v28 = [objc_opt_self() v18[509]];
      if (!v28)
      {
        break;
      }

      v29 = v28;
      v30 = sub_100936B28();
      v31 = [v29 hasPeerTokensForURI:v23 fromURI:v191 service:v30];

      v12 = v23;
      if ((v31 & 1) != 0 || v27 == 2)
      {
        sub_100936CC8();
        v10 = v190;
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100936D18();
        }
      }

      else
      {
        sub_100936CC8();
        v10 = v190;
        if (*((*v189 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v189 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100936D18();
        }
      }

      sub_100936D38();

      ++v14;
      v16 = v188;
      v18 = &selRef_setPushPublicKey_;
      if (v202 == v195)
      {
        goto LABEL_21;
      }
    }

LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

LABEL_21:
  v165 = objc_opt_self();
  v32 = [v165 v18[509]];
  if (!v32)
  {
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
  }

  v33 = v32;
  sub_100014170(0, &qword_100CBA2E0);
  isa = sub_100936CD8().super.isa;
  v35 = sub_100936B28();
  v36 = [v33 endpointsForURIs:isa service:v35 fromURI:v191];

  if (!v36)
  {
    goto LABEL_245;
  }

  sub_100706B30(&qword_100CB4A38);
  sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
  v37 = sub_100936A78();

  v38 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v14 = v40 & *(v37 + 64);
  v183 = (v39 + 63) >> 6;
  v192 = IDSRegistrationPropertySupportsSenderKey;
  v184 = v37;

  v12 = 0;
  v181 = v37 + 64;
LABEL_27:
  if (v14)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v43 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_212;
    }

    if (v43 >= v183)
    {
      break;
    }

    v14 = *(v38 + 8 * v43);
    ++v12;
    if (v14)
    {
      v12 = v43;
LABEL_32:
      v44 = (v12 << 9) | (8 * __clz(__rbit64(v14)));
      v45 = *(*(v184 + 48) + v44);
      v46 = *(*(v184 + 56) + v44);
      if (v46 >> 62)
      {
        v47 = sub_1009373F8();
      }

      else
      {
        v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v185 = v45;

      if (v47)
      {
        v48 = 0;
        v203 = v46 & 0xC000000000000001;
        v198 = v46;
        v200 = v46 & 0xFFFFFFFFFFFFFF8;
        v193 = v14;
        v196 = v47;
        while (1)
        {
          if (v203)
          {
            v49 = sub_100937268();
          }

          else
          {
            if (v48 >= *(v200 + 16))
            {
              goto LABEL_211;
            }

            v49 = *(v46 + 8 * v48 + 32);
          }

          v50 = v49;
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            __break(1u);
LABEL_211:
            __break(1u);
LABEL_212:
            __break(1u);
LABEL_213:
            __break(1u);
LABEL_214:
            __break(1u);
LABEL_215:
            __break(1u);
LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
LABEL_218:
            __break(1u);
LABEL_219:
            __break(1u);
LABEL_220:
            v199 = v16 & 0xFFFFFFFFFFFFFF8;
            v162 = sub_1009373F8();
            v16 = v188;
            v17 = v162;
            goto LABEL_3;
          }

          v52 = (*((swift_isaMask & *v10) + 0xE0))();
          if (v53 >> 60 != 15)
          {
            break;
          }

LABEL_37:
          v46 = v198;
          ++v48;
          if (v51 == v196)
          {
            goto LABEL_26;
          }
        }

        v54 = v52;
        v55 = v53;
        v56 = [v50 capabilities];
        v57 = [v56 valueForCapability:v192];

        if (v57 <= 0)
        {
        }

        else
        {
          v58 = [v50 pushToken];
          v59 = sub_100935EA8();
          v61 = v60;

          v62 = v61;
          v63 = v61 >> 62;
          v14 = v55 >> 62;
          v194 = v59;
          if (v63 == 3)
          {
            if (v55 >> 62 == 3 && v59 == 0 && v62 == 0xC000000000000000 && !v54 && v55 == 0xC000000000000000)
            {

              sub_10001C370(0, 0xC000000000000000);
              v67 = 0;
              v68 = 0xC000000000000000;
LABEL_92:
              sub_1007156D8(v67, v68);
              v14 = v193;
              goto LABEL_37;
            }

LABEL_71:
            v69 = 0;
            if (v14 > 1)
            {
              goto LABEL_72;
            }

LABEL_68:
            if (v14)
            {
              if (__OFSUB__(HIDWORD(v54), v54))
              {
                goto LABEL_216;
              }

              if (v69 != HIDWORD(v54) - v54)
              {
                goto LABEL_89;
              }
            }

            else if (v69 != BYTE6(v55))
            {
              goto LABEL_89;
            }
          }

          else
          {
            if (v63 <= 1)
            {
              if (v63)
              {
                LODWORD(v69) = HIDWORD(v59) - v59;
                if (__OFSUB__(HIDWORD(v59), v59))
                {
                  goto LABEL_217;
                }

                v69 = v69;
                if (v14 > 1)
                {
                  goto LABEL_72;
                }
              }

              else
              {
                v69 = BYTE6(v62);
                if (v14 > 1)
                {
                  goto LABEL_72;
                }
              }

              goto LABEL_68;
            }

            if (v63 != 2)
            {
              goto LABEL_71;
            }

            v71 = *(v59 + 16);
            v70 = *(v59 + 24);
            v72 = __OFSUB__(v70, v71);
            v69 = v70 - v71;
            if (v72)
            {
              goto LABEL_218;
            }

            if (v14 <= 1)
            {
              goto LABEL_68;
            }

LABEL_72:
            if (v14 != 2)
            {
              if (!v69)
              {
LABEL_91:

                sub_10001C370(v54, v55);
                v67 = v59;
                v68 = v62;
                goto LABEL_92;
              }

LABEL_89:
              sub_10001C370(v54, v55);
              sub_1007156D8(v59, v62);
              goto LABEL_90;
            }

            v74 = *(v54 + 16);
            v73 = *(v54 + 24);
            v72 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v72)
            {
              goto LABEL_215;
            }

            if (v69 != v75)
            {
              goto LABEL_89;
            }
          }

          if (v69 < 1)
          {
            goto LABEL_91;
          }

          if (v63 > 1)
          {
            if (v63 != 2)
            {
              *(&__s1 + 6) = 0;
              *&__s1 = 0;
              if (v14)
              {
                v186 = v62;
                if (v14 == 2)
                {
                  v86 = *(v54 + 16);
                  v87 = *(v54 + 24);
                  v88 = sub_100935BE8();
                  if (v88)
                  {
                    v174 = v86;
                    v89 = v87;
                    v90 = v88;
                    v91 = sub_100935C18();
                    if (__OFSUB__(v174, v91))
                    {
                      goto LABEL_237;
                    }

                    v92 = &v174[v90 - v91];
                    v72 = __OFSUB__(v89, v174);
                    v93 = (v89 - v174);
                    if (v72)
                    {
                      goto LABEL_229;
                    }
                  }

                  else
                  {
                    v92 = 0;
                    v72 = __OFSUB__(v87, v86);
                    v93 = (v87 - v86);
                    if (v72)
                    {
                      goto LABEL_229;
                    }
                  }

                  v128 = v92;
                  v129 = sub_100935C08();
                  if (!v128)
                  {
                    goto LABEL_251;
                  }

                  goto LABEL_153;
                }

                if (v54 >> 32 < v54)
                {
                  goto LABEL_227;
                }

                v171 = ((v54 >> 32) - v54);
                v109 = sub_100935BE8();
                if (!v109)
                {
                  goto LABEL_252;
                }

                v110 = v109;
                v111 = sub_100935C18();
                if (__OFSUB__(v54, v111))
                {
                  goto LABEL_232;
                }

                v79 = (v54 - v111 + v110);
                result = sub_100935C08();
                if (!v79)
                {
                  goto LABEL_253;
                }

LABEL_133:
                if (result >= v171)
                {
                  v112 = v171;
                }

                else
                {
                  v112 = result;
                }

                p_s1 = &__s1;
LABEL_191:
                v130 = v79;
                goto LABEL_192;
              }

LABEL_111:
              __s2 = v54;
              v211 = v55;
              v212 = BYTE2(v55);
              v213 = BYTE3(v55);
              v214 = BYTE4(v55);
              v215 = BYTE5(v55);
              v94 = memcmp(&__s1, &__s2, BYTE6(v55));
              v95 = v62;
              v96 = v94;
              v97 = v59;
              goto LABEL_194;
            }

            v172 = *(v59 + 16);
            v81 = sub_100935BE8();
            v186 = v62;
            if (v81)
            {
              v166 = v81;
              v82 = sub_100935C18();
              if (__OFSUB__(v172, v82))
              {
                __break(1u);
LABEL_225:
                __break(1u);
LABEL_226:
                __break(1u);
LABEL_227:
                __break(1u);
LABEL_228:
                __break(1u);
LABEL_229:
                __break(1u);
LABEL_230:
                __break(1u);
LABEL_231:
                __break(1u);
LABEL_232:
                __break(1u);
LABEL_233:
                __break(1u);
LABEL_234:
                __break(1u);
LABEL_235:
                __break(1u);
LABEL_236:
                __break(1u);
LABEL_237:
                __break(1u);
LABEL_238:
                __break(1u);
LABEL_239:
                __break(1u);
LABEL_240:
                __break(1u);
LABEL_241:
                __break(1u);
LABEL_242:
                __break(1u);
                goto LABEL_243;
              }

              v83 = &v172[v166 - v82];
            }

            else
            {
              v83 = 0;
            }

            result = sub_100935C08();
            if (v14 == 2)
            {
              v178 = v83;
              v114 = *(v54 + 16);
              v167 = *(v54 + 24);
              v115 = sub_100935BE8();
              if (v115)
              {
                v116 = v115;
                v117 = sub_100935C18();
                if (__OFSUB__(v114, v117))
                {
                  goto LABEL_238;
                }

                v118 = (v114 - v117 + v116);
              }

              else
              {
                v118 = 0;
              }

              v131 = v167 - v114;
              if (__OFSUB__(v167, v114))
              {
                goto LABEL_233;
              }

              v132 = v118;
              v133 = sub_100935C08();
              if (v133 >= v131)
              {
                v134 = v131;
              }

              else
              {
                v134 = v133;
              }

              v135 = v178;
              if (!v178)
              {
                goto LABEL_249;
              }

              v119 = v194;
              if (!v132)
              {
                goto LABEL_247;
              }

              goto LABEL_178;
            }

            if (v14 != 1)
            {
              *&__s1 = v54;
              WORD4(__s1) = v55;
              BYTE10(__s1) = BYTE2(v55);
              BYTE11(__s1) = BYTE3(v55);
              BYTE12(__s1) = BYTE4(v55);
              BYTE13(__s1) = BYTE5(v55);
              v119 = v194;
              if (!v83)
              {
                goto LABEL_254;
              }

LABEL_146:
              v125 = BYTE6(v55);
              v126 = &__s1;
              v127 = v83;
              goto LABEL_181;
            }

            if (v54 >> 32 < v54)
            {
              goto LABEL_228;
            }

            v98 = sub_100935BE8();
            if (v98)
            {
              v175 = v83;
              v99 = v98;
              v100 = sub_100935C18();
              if (__OFSUB__(v54, v100))
              {
                goto LABEL_240;
              }

              v79 = (v54 - v100 + v99);
              v83 = v175;
            }

            else
            {
              v79 = 0;
            }

            result = sub_100935C08();
            v136 = (v54 >> 32) - v54;
            if (result < v136)
            {
              v136 = result;
            }

            if (!v83)
            {
              goto LABEL_256;
            }

            if (!v79)
            {
              goto LABEL_255;
            }

LABEL_187:
            if (v83 != v79)
            {
              v112 = v136;
              p_s1 = v83;
              goto LABEL_191;
            }

            v138 = v194;
          }

          else
          {
            if (!v63)
            {
              *&__s1 = v59;
              WORD4(__s1) = v62;
              BYTE10(__s1) = BYTE2(v62);
              BYTE11(__s1) = BYTE3(v62);
              BYTE12(__s1) = BYTE4(v62);
              BYTE13(__s1) = BYTE5(v62);
              if (v14)
              {
                v186 = v62;
                if (v14 == 1)
                {
                  if (v54 >> 32 < v54)
                  {
                    goto LABEL_226;
                  }

                  v171 = ((v54 >> 32) - v54);
                  v76 = sub_100935BE8();
                  if (!v76)
                  {
                    goto LABEL_246;
                  }

                  v77 = v76;
                  v78 = sub_100935C18();
                  if (__OFSUB__(v54, v78))
                  {
                    goto LABEL_231;
                  }

                  v79 = (v54 - v78 + v77);
                  result = sub_100935C08();
                  if (!v79)
                  {
                    __break(1u);
LABEL_246:
                    sub_100935C08();
                    __break(1u);
LABEL_247:
                    __break(1u);
LABEL_248:
                    __break(1u);
LABEL_249:
                    __break(1u);
LABEL_250:
                    __break(1u);
LABEL_251:
                    __break(1u);
LABEL_252:
                    result = sub_100935C08();
LABEL_253:
                    __break(1u);
LABEL_254:
                    __break(1u);
LABEL_255:
                    __break(1u);
LABEL_256:
                    __break(1u);
LABEL_257:
                    __break(1u);
LABEL_258:
                    __break(1u);
LABEL_259:
                    __break(1u);
LABEL_260:
                    __break(1u);
LABEL_261:
                    __break(1u);
                    return result;
                  }

                  goto LABEL_133;
                }

                v104 = *(v54 + 16);
                v177 = *(v54 + 24);
                v105 = sub_100935BE8();
                if (v105)
                {
                  v106 = v105;
                  v107 = sub_100935C18();
                  if (__OFSUB__(v104, v107))
                  {
                    goto LABEL_236;
                  }

                  v108 = (v104 - v107 + v106);
                }

                else
                {
                  v108 = 0;
                }

                v93 = &v177[-v104];
                if (__OFSUB__(v177, v104))
                {
                  goto LABEL_230;
                }

                v128 = v108;
                v129 = sub_100935C08();
                if (!v128)
                {
                  goto LABEL_248;
                }

LABEL_153:
                v130 = v128;
                if (v129 >= v93)
                {
                  v112 = v93;
                }

                else
                {
                  v112 = v129;
                }

                p_s1 = &__s1;
LABEL_192:
                v96 = memcmp(p_s1, v130, v112);
                v97 = v194;
                goto LABEL_193;
              }

              goto LABEL_111;
            }

            if (v59 > v59 >> 32)
            {
              goto LABEL_219;
            }

            v84 = sub_100935BE8();
            v186 = v62;
            if (v84)
            {
              v173 = v84;
              v85 = sub_100935C18();
              if (__OFSUB__(v59, v85))
              {
                goto LABEL_225;
              }

              v83 = &v173[v59 - v85];
            }

            else
            {
              v83 = 0;
            }

            sub_100935C08();
            v10 = v190;
            if (v14 != 2)
            {
              if (v14 != 1)
              {
                *&__s1 = v54;
                WORD4(__s1) = v55;
                BYTE10(__s1) = BYTE2(v55);
                BYTE11(__s1) = BYTE3(v55);
                BYTE12(__s1) = BYTE4(v55);
                BYTE13(__s1) = BYTE5(v55);
                v119 = v194;
                if (!v83)
                {
                  goto LABEL_250;
                }

                goto LABEL_146;
              }

              if (v54 >> 32 < v54)
              {
                goto LABEL_234;
              }

              v101 = sub_100935BE8();
              if (v101)
              {
                v176 = v83;
                v102 = v101;
                v103 = sub_100935C18();
                if (__OFSUB__(v54, v103))
                {
                  goto LABEL_241;
                }

                v79 = (v54 - v103 + v102);
                v83 = v176;
              }

              else
              {
                v79 = 0;
              }

              result = sub_100935C08();
              v136 = (v54 >> 32) - v54;
              if (result < v136)
              {
                v136 = result;
              }

              if (!v83)
              {
                goto LABEL_257;
              }

              if (!v79)
              {
                goto LABEL_260;
              }

              goto LABEL_187;
            }

            v179 = v83;
            v120 = *(v54 + 16);
            v168 = *(v54 + 24);
            v121 = sub_100935BE8();
            if (v121)
            {
              v122 = v121;
              v123 = sub_100935C18();
              if (__OFSUB__(v120, v123))
              {
                goto LABEL_239;
              }

              v124 = (v120 - v123 + v122);
            }

            else
            {
              v124 = 0;
            }

            v137 = v168 - v120;
            if (__OFSUB__(v168, v120))
            {
              goto LABEL_235;
            }

            v132 = v124;
            result = sub_100935C08();
            if (result >= v137)
            {
              v134 = v137;
            }

            else
            {
              v134 = result;
            }

            v135 = v179;
            if (!v179)
            {
              goto LABEL_259;
            }

            v119 = v194;
            if (!v132)
            {
              goto LABEL_258;
            }

LABEL_178:
            v127 = v135;
            if (v135 != v132)
            {
              v125 = v134;
              v126 = v132;
LABEL_181:
              v96 = memcmp(v127, v126, v125);
              v97 = v119;
LABEL_193:
              v95 = v186;
LABEL_194:
              sub_1007156D8(v97, v95);
              sub_10001C370(v54, v55);
              if (!v96)
              {

                v14 = v193;
                goto LABEL_37;
              }

LABEL_90:
              sub_100937298();
              sub_1009372C8();
              sub_1009372D8();
              sub_1009372A8();
              v14 = v193;
              goto LABEL_37;
            }

            v138 = v119;
          }

          sub_1007156D8(v138, v186);
        }

        sub_10001C370(v54, v55);
        v14 = v193;
        goto LABEL_37;
      }

LABEL_26:

      v41 = *(v182 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&__s1 = v41;
      *(v182 + 16) = 0x8000000000000000;
      sub_1007891C8(&_swiftEmptyArrayStorage, v185, isUniquelyReferenced_nonNull_native);

      *(v182 + 16) = __s1;
      v14 &= v14 - 1;
      v38 = v181;
      goto LABEL_27;
    }
  }

  if (!(*v189 >> 62))
  {
    if (*((*v189 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_201;
    }

LABEL_222:

LABEL_223:

    a8(v163);
  }

  if (!sub_1009373F8())
  {
    goto LABEL_222;
  }

LABEL_201:

  v139 = sub_1009364B8();
  v140 = sub_100936F18();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    *&__s1 = v142;
    *v141 = 136315138;
    swift_beginAccess();

    v143 = sub_100936CF8();
    v145 = v144;

    v146 = sub_10001273C(v143, v145, &__s1);

    *(v141 + 4) = v146;
    _os_log_impl(&_mh_execute_header, v139, v140, "We don't have cached results for %s - need to query", v141, 0xCu);
    sub_100012970(v142);
  }

  else
  {
  }

  v147 = [a1 _registrationCert];
  if (!v147)
  {

    v159 = sub_1009364B8();
    v160 = sub_100936EF8();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      *v161 = 0;
      _os_log_impl(&_mh_execute_header, v159, v160, "Cannot query without a cert - returning", v161, 2u);
    }

    goto LABEL_223;
  }

  v148 = v147;
  v149 = sub_100935EA8();
  v151 = v150;

  result = [v165 sharedInstance];
  if (!result)
  {
    goto LABEL_261;
  }

  v152 = result;

  swift_beginAccess();

  v204 = sub_100936CD8().super.isa;

  v201 = sub_100935E78().super.isa;
  v153 = sub_100936B28();
  *&__s1 = sub_100936B38();
  *(&__s1 + 1) = v154;
  v218._countAndFlagsBits = 23328;
  v218._object = 0xE200000000000000;
  sub_100936C08(v218);
  sub_100936C08(v187);
  v219._countAndFlagsBits = 93;
  v219._object = 0xE100000000000000;
  sub_100936C08(v219);
  v155 = sub_100936B28();

  v156 = swift_allocObject();
  v156[2] = v10;
  v156[3] = v180;
  v156[4] = v182;
  v156[5] = a8;
  v156[6] = a9;
  v208 = sub_100790844;
  v209 = v156;
  *&__s1 = _NSConcreteStackBlock;
  *(&__s1 + 1) = 1107296256;
  v206 = sub_100775150;
  v207 = &unk_100BE76A0;
  v157 = _Block_copy(&__s1);

  v158 = v10;

  LOBYTE(v164) = 0;
  [v152 startQueryForURIs:v204 fromIdentity:v201 fromURI:v191 fromService:v153 forSending:0 forceToServer:0 clientRequestedForceQuery:v164 reason:v155 completionBlock:v157];
  _Block_release(v157);

  sub_1007156D8(v149, v151);
}

uint64_t sub_100774A64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6E6F6974756269;
  v3 = 0x727473694479656BLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x4379654B666C6573;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000100B011E0;
    }

    else
    {
      v6 = 0xEC0000006B636568;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x657571655279656BLL;
    }

    else
    {
      v5 = 0x727473694479656BLL;
    }

    if (v4)
    {
      v6 = 0xEA00000000007473;
    }

    else
    {
      v6 = 0xEF6E6F6974756269;
    }
  }

  v7 = 0xD000000000000012;
  v8 = 0x8000000100B011E0;
  if (a2 != 2)
  {
    v7 = 0x4379654B666C6573;
    v8 = 0xEC0000006B636568;
  }

  if (a2)
  {
    v3 = 0x657571655279656BLL;
    v2 = 0xEA00000000007473;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100937598();
  }

  return v11 & 1;
}

uint64_t sub_100774BC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x546567617373656DLL;
    }

    else
    {
      v3 = 0x6E6F6973726576;
    }

    if (v2)
    {
      v4 = 0xEB00000000657079;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x736F666E4979656BLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x6574736575716572;
    v4 = 0xEF73444979654B64;
  }

  else
  {
    v3 = 0x6F5473444979656BLL;
    v4 = 0xED00006B63656843;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x546567617373656DLL;
    }

    else
    {
      v9 = 0x6E6F6973726576;
    }

    if (a2)
    {
      v8 = 0xEB00000000657079;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6574736575716572;
    v6 = 0xEF73444979654B64;
    if (a2 != 3)
    {
      v5 = 0x6F5473444979656BLL;
      v6 = 0xED00006B63656843;
    }

    if (a2 == 2)
    {
      v7 = 0x736F666E4979656BLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_100937598();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_100774D94(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for SenderKeyInfo(0);
  v25 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = &_swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1007927DC(a3 + v15 + v16 * v13, v12, type metadata accessor for SenderKeyInfo);
      v17 = a1(v12);
      if (v3)
      {
        sub_100791FE8(v12, type metadata accessor for SenderKeyInfo);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_100792048(v12, v24, type metadata accessor for SenderKeyInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1007897B0(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_1007897B0(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        result = sub_100792048(v24, v14 + v15 + v20 * v16, type metadata accessor for SenderKeyInfo);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_100791FE8(v12, type metadata accessor for SenderKeyInfo);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
LABEL_15:

    return v14;
  }

  return result;
}

void sub_100775020(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_100789344(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }

  else
  {
    v8 = sub_1007885EC(a2, a3);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v17 = *v4;
      if (!v11)
      {
        sub_10078962C();
        v12 = v17;
      }

      v13 = *(v12 + 48) + 16 * v10;
      v14 = *v13;

      sub_100788F74(v10, v12);

      *v4 = v12;
    }

    else
    {
    }
  }
}

uint64_t sub_100775150(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7, uint64_t a8, char a9, uint64_t a10)
{
  v12 = a4;
  v13 = a10;
  v21 = *(a1 + 32);
  if (a3)
  {
    sub_100014170(0, &qword_100CBA2E0);
    sub_100014170(0, &unk_100CBA300);
    sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
    v19 = sub_100936A78();
    if (!v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = 0;
  if (a4)
  {
LABEL_3:
    sub_100014170(0, &unk_100CBA300);
    v12 = sub_100936A78();
  }

LABEL_4:
  if (a5)
  {
    v14 = sub_100936B38();
    a5 = v15;
    if (!a8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v14 = 0;
  if (a8)
  {
LABEL_6:
    sub_100014170(0, &qword_100CBA2E0);
    sub_100706B30(&qword_100CB5020);
    sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
    a8 = sub_100936A78();
  }

LABEL_7:
  if (a10)
  {
    sub_100014170(0, &qword_100CBA2E0);
    sub_100706B30(&qword_100CB4A38);
    sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
    v13 = sub_100936A78();
  }

  v16 = a2;
  v17 = a7;
  v21(a2, v19, v12, v14, a5, a6, a7, a8, a9, v13);
}

void sub_1007755C4(unint64_t a1, void *a2, uint64_t a3, unint64_t a4, unsigned __int8 a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{

  v15 = a2;

  v81 = v8;
  v16 = sub_1009364B8();
  v17 = sub_100936F18();

  v76 = a3;
  v79 = a6;
  v75 = a5;
  if (os_log_type_enabled(v16, v17))
  {
    v82 = v17;
    v18 = a5;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v86[0] = swift_slowAlloc();
    *v19 = 136316162;
    sub_100014170(0, &qword_100CBA2E0);
    v21 = sub_100936CF8();
    v23 = sub_10001273C(v21, v22, v86);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v15;
    *v20 = v15;
    *(v19 + 22) = 2080;
    v24 = v15;
    *(v19 + 24) = sub_10001273C(a3, a4, v86);
    *(v19 + 32) = 2080;
    v25 = 0xEF6E6F6974756269;
    v26 = 0x727473694479656BLL;
    v27 = 0x8000000100B011E0;
    v28 = 0xD000000000000012;
    if (v18 != 2)
    {
      v28 = 0x4379654B666C6573;
      v27 = 0xEC0000006B636568;
    }

    if (v18)
    {
      v26 = 0x657571655279656BLL;
      v25 = 0xEA00000000007473;
    }

    if (v18 <= 1u)
    {
      v29 = v26;
    }

    else
    {
      v29 = v28;
    }

    if (v18 <= 1u)
    {
      v30 = v25;
    }

    else
    {
      v30 = v27;
    }

    v31 = sub_10001273C(v29, v30, v86);

    *(v19 + 34) = v31;
    *(v19 + 42) = 2080;
    v32 = sub_100936CF8();
    v34 = sub_10001273C(v32, v33, v86);

    *(v19 + 44) = v34;
    _os_log_impl(&_mh_execute_header, v16, v82, "generateAndSendKeyIfNeeded called with toURIs: %s fromURI: %@ context: %s keyMessageType: %s requestedKeyIDs: %s", v19, 0x34u);
    sub_100013814(v20, &qword_100CB36B0);

    swift_arrayDestroy();
  }

  v86[0] = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_37:
    v35 = sub_1009373F8();
    v83 = a4;
    if (v35)
    {
      goto LABEL_15;
    }

LABEL_38:
    v36 = &_swiftEmptyArrayStorage;
    goto LABEL_39;
  }

  v35 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v83 = a4;
  if (!v35)
  {
    goto LABEL_38;
  }

LABEL_15:
  a4 = 0;
  v36 = &_swiftEmptyArrayStorage;
  do
  {
    v77 = v36;
    v37 = a4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v38 = sub_100937268();
      }

      else
      {
        if (v37 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v38 = *(a1 + 8 * v37 + 32);
      }

      v39 = v38;
      a4 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v40 = [v38 prefixedURI];
      if (!v40)
      {
        __break(1u);
        return;
      }

      v41 = v40;
      if (([v40 _appearsToBeDSID] & 1) == 0 && (objc_msgSend(v41, "_appearsToBePseudonymID") & 1) == 0 && (objc_msgSend(v41, "_appearsToBeTemporaryID") & 1) == 0)
      {
        break;
      }

LABEL_18:
      ++v37;
      if (a4 == v35)
      {
        v36 = v77;
        goto LABEL_39;
      }
    }

    v42 = [v39 tokenFreeURI];

    if (!v42)
    {
      goto LABEL_18;
    }

    sub_100936CC8();
    if (*((v86[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100936D18();
    }

    sub_100936D38();
    v36 = v86[0];
  }

  while (a4 != v35);
LABEL_39:
  v43 = sub_100790560(v15);
  if (!v43)
  {
    goto LABEL_54;
  }

  if (v36 >> 62)
  {
    if (!sub_1009373F8())
    {
      goto LABEL_54;
    }

LABEL_42:
    v44 = (*((swift_isaMask & *v81) + 0x1E8))(v15, v36);
    if (!v44)
    {

      v63 = sub_1009364B8();
      v64 = sub_100936EF8();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "Failed to find a sending account - aborting", v65, 2u);
      }

      goto LABEL_55;
    }

    v45 = v44;
    v46 = swift_allocObject();
    v47 = swift_isaMask & *v81;
    *(v46 + 16) = v81;
    *(v46 + 24) = v45;
    *(v46 + 32) = v36;
    *(v46 + 40) = v15;
    *(v46 + 48) = v76;
    *(v46 + 56) = v83;
    *(v46 + 64) = a7;
    *(v46 + 72) = a8;
    *(v46 + 80) = v79;
    *(v46 + 88) = v75;
    v48 = *(v47 + 432);
    v80 = v15;

    v78 = v36;

    v49 = v81;
    v50 = v45;
    v48(v86);
    v51 = v87;
    v52 = v88;
    sub_1000226D4(v86, v87);
    v53 = (*(v52 + 24))(v51, v52);
    v54 = sub_100012970(v86);
    if (v53)
    {
      v55 = v50;

      v56 = swift_allocObject();
      *(v56 + 16) = sub_100791640;
      *(v56 + 24) = v46;
      v57 = OBJC_IVAR___IDSSenderKeyDistributionManager_firstDataProtectionLockQueue;
      swift_beginAccess();
      v58 = *(v49 + v57);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v49 + v57) = v58;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v58 = sub_100712B84(0, v58[2] + 1, 1, v58);
        *(v49 + v57) = v58;
      }

      v61 = v58[2];
      v60 = v58[3];
      if (v61 >= v60 >> 1)
      {
        v58 = sub_100712B84((v60 > 1), v61 + 1, 1, v58);
      }

      v58[2] = v61 + 1;
      v62 = &v58[2 * v61];
      v62[4] = sub_100715970;
      v62[5] = v56;
      *(v49 + v57) = v58;
      swift_endAccess();
    }

    else
    {
      v66 = (*((swift_isaMask & *v49) + 0xC8))(v54);
      v73 = v67;
      v74 = v66;
      v68 = v50;
      v69 = swift_allocObject();
      *(v69 + 16) = a7;
      *(v69 + 24) = a8;
      *(v69 + 32) = v80;
      *(v69 + 40) = v49;
      *(v69 + 48) = v76;
      *(v69 + 56) = v83;
      *(v69 + 64) = v79;
      *(v69 + 72) = v75;
      v70 = *((swift_isaMask & *v49) + 0x1F0);
      v71 = v80;

      v72 = v49;
      v70(v68, v78, v71, v74, v73, v76, v83, sub_1007917C8, v69);
    }
  }

  else
  {
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

LABEL_54:

LABEL_55:
    a7(0);
  }
}

void sub_100775EFC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_25:
    a2(v9 & 1);
    return;
  }

  v12 = a1;
  v31 = a2;
  v13 = sub_1007417B0(a4);
  v14 = &_swiftEmptyArrayStorage;
  if (v15)
  {
    v14 = *(*(v12 + 56) + 8 * v13);
  }

  v33 = v14;
  v36 = a4;
  v16 = v12 + 64;
  v17 = 1 << *(v12 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v12 + 64);
  v20 = (v17 + 63) >> 6;

  v32 = 0;
  v21 = 0;
  v35 = v12;
  while (v19)
  {
LABEL_13:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = (v21 << 9) | (8 * v23);
    v25 = *(*(v12 + 48) + v24);
    v26 = *(*(v12 + 56) + v24);
    if (v26 >> 62)
    {
      if (sub_1009373F8())
      {
LABEL_15:
        v27 = *((swift_isaMask & *a5) + 0x230);
        v28 = v25;

        if ((v27(v36, v28, a6, a7) & 1) != 0 || ((*((swift_isaMask & *a5) + 0x2D0))(v36, v28) & 1) == 0)
        {

          v12 = v35;
        }

        else
        {
          v30 = (*((swift_isaMask & *a5) + 0x240))(v36, v28, v26);
          v29 = (*((swift_isaMask & *a5) + 0x248))(a8);
          if (*(v30 + 16) || *(v29 + 16))
          {
            v39 = 2;
            v40 = a9;
            v41 = v30;
            v42 = v29;
            v43 = &_swiftEmptyArrayStorage;
            (*((swift_isaMask & *a5) + 0x238))(v28, v36, &v39, v26, v33, 50, 0, 0);

            v32 = 1;
            v12 = v35;
          }

          else
          {

            v12 = v35;
          }
        }
      }
    }

    else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      a2 = v31;
      LOBYTE(v9) = v32;
      goto LABEL_25;
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
    if (v19)
    {
      v21 = v22;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1007762D4(uint64_t *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v132 = a4;
  v131 = a3;
  v140 = a2;
  v5 = sub_100706B30(&unk_100CB4A50);
  __chkstk_darwin(v5 - 8);
  v7 = &v124 - v6;
  v137 = type metadata accessor for SenderKeyAndState(0);
  v130 = *(v137 - 8);
  __chkstk_darwin(v137);
  v9 = (&v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = &_swiftEmptyArrayStorage;
  v10 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
LABEL_139:
    v11 = sub_1009373F8();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v138 = v7;
  v134 = v9;
  if (!v11)
  {
    v9 = &_swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v7 = 0;
  v9 = &_swiftEmptyArrayStorage;
  do
  {
    v12 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = sub_100937268();
      }

      else
      {
        if (v12 >= v10[2])
        {
          goto LABEL_132;
        }

        v13 = a1[v12 + 4];
      }

      v14 = v13;
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v15 = [v13 prefixedURI];
      if (!v15)
      {
        goto LABEL_153;
      }

      v16 = v15;
      if (([v15 _appearsToBeDSID] & 1) == 0 && (objc_msgSend(v16, "_appearsToBePseudonymID") & 1) == 0 && (objc_msgSend(v16, "_appearsToBeTemporaryID") & 1) == 0)
      {
        break;
      }

LABEL_7:
      ++v12;
      if (v7 == v11)
      {
        goto LABEL_25;
      }
    }

    v17 = [v14 tokenFreeURI];

    if (!v17)
    {
      goto LABEL_7;
    }

    sub_100936CC8();
    if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100936D18();
    }

    sub_100936D38();
    v9 = v142;
  }

  while (v7 != v11);
LABEL_25:
  v18 = sub_100746E48(v9);

  a1 = sub_100788910(v18);

  v142 = &_swiftEmptyArrayStorage;
  if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
  {
    v19 = sub_1009373F8();
  }

  else
  {
    v19 = a1[2];
  }

  v20 = &_swiftEmptyArrayStorage;
  if (v19)
  {
    v21 = 0;
    v7 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v22 = sub_100937268();
      }

      else
      {
        if (v21 >= a1[2])
        {
          goto LABEL_134;
        }

        v22 = a1[v21 + 4];
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v9 = sub_100014170(0, &qword_100CBA2E0);
      if (sub_100937038())
      {
      }

      else
      {
        v9 = &v142;
        sub_100937298();
        v10 = *(v142 + 16);
        sub_1009372C8();
        sub_1009372D8();
        sub_1009372A8();
      }

      ++v21;
      if (v24 == v19)
      {
        v20 = v142;
        goto LABEL_40;
      }
    }

LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

LABEL_40:

  v25 = sub_100790560(v140);
  if (!v25)
  {
    goto LABEL_143;
  }

  v26 = v25;
  if ((v20 & 0x8000000000000000) == 0 && (v20 & 0x4000000000000000) == 0)
  {
    v27 = *(v20 + 16);
    v28 = v139;
    if (v27)
    {
      goto LABEL_44;
    }

LABEL_142:

LABEL_143:

    v131(0);
    return;
  }

  v27 = sub_1009373F8();
  v28 = v139;
  if (!v27)
  {
    goto LABEL_142;
  }

LABEL_44:
  v136 = v27;
  v29 = (*((swift_isaMask & *v28) + 0x1D8))();
  sub_100706B30(&qword_100CB4A30);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1009AD920;
  *(v30 + 32) = v26;
  v31 = sub_100014170(0, &qword_100CBA2E0);
  v126 = v26;
  v32 = v26;
  v129 = v31;
  isa = sub_100936CD8().super.isa;

  (*((swift_isaMask & *v28) + 0xC8))(v34);
  v35 = sub_100936B28();

  sub_100706B30(&unk_100CBA2F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1009AC700;
  *(inited + 32) = sub_100936B38();
  *(inited + 40) = v37;
  v38 = objc_allocWithZone(NSNumber);
  v39 = v32;
  *(inited + 48) = [v38 initWithInteger:1];
  sub_1007917EC(inited);
  swift_setDeallocating();
  sub_100013814(inited + 32, &unk_100CB4A60);
  sub_100014170(0, &unk_100CBA300);
  v10 = sub_100936A58().super.isa;

  v40 = [v29 endpointsForURIs:isa service:v35 fromURI:v39 withCapabilities:v10];

  v140 = v39;
  if (!v40)
  {
    goto LABEL_154;
  }

  swift_unknownObjectRelease();
  v7 = sub_100706B30(&qword_100CB4A38);
  sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
  v9 = sub_100936A78();

  a1 = v139;
  if (v9[2] && (v41 = sub_1007417B0(v140), (v42 & 1) != 0))
  {
    v43 = *(v9[7] + 8 * v41);

    v142 = &_swiftEmptyArrayStorage;
    if (v43 >> 62)
    {
      goto LABEL_146;
    }

    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44)
    {
      while (2)
      {
        v45 = 0;
        v128 = 0;
        v135 = v43 & 0xC000000000000001;
        v133 = (v43 & 0xFFFFFFFFFFFFFF8);
        v125 = v44;
        while (1)
        {
          if (v135)
          {
            v46 = sub_100937268();
          }

          else
          {
            if (v45 >= v133[2])
            {
              goto LABEL_138;
            }

            v46 = *(v43 + 8 * v45 + 32);
          }

          v47 = v46;
          v10 = (v45 + 1);
          if (__OFADD__(v45, 1))
          {
            goto LABEL_137;
          }

          v48 = [v46 pushToken];
          v7 = sub_100935EA8();
          v50 = v49;

          v9 = a1;
          v51 = (*((swift_isaMask & *a1) + 0xE0))();
          if (v50 >> 60 != 15)
          {
            break;
          }

          if (v52 >> 60 != 15)
          {
            goto LABEL_60;
          }

          sub_10001C370(v7, v50);
LABEL_51:
          ++v45;
          if (v10 == v44)
          {
            v7 = v142;
            goto LABEL_148;
          }
        }

        if (v52 >> 60 == 15)
        {
LABEL_60:
          v53 = v51;
          v54 = v7;
          v55 = v52;
          sub_10001C370(v54, v50);
          v56 = v53;
          v57 = v55;
          goto LABEL_61;
        }

        v58 = v50 >> 62;
        v59 = v52 >> 62;
        if (v50 >> 62 == 3)
        {
          v60 = 0;
          if (!v7 && v50 == 0xC000000000000000 && v52 >> 62 == 3)
          {
            if (v51)
            {
              v61 = 0;
            }

            else
            {
              v61 = v52 == 0xC000000000000000;
            }

            if (v61)
            {
              v51 = 0;
              v52 = 0xC000000000000000;
LABEL_94:
              sub_10001C370(v51, v52);
              sub_10001C370(v7, v50);
LABEL_95:

              goto LABEL_51;
            }

            v60 = 0;
          }
        }

        else if (v58)
        {
          if (v58 == 1)
          {
            LODWORD(v60) = HIDWORD(v7) - v7;
            if (__OFSUB__(HIDWORD(v7), v7))
            {
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
              return;
            }

            v60 = v60;
          }

          else
          {
            v63 = *(v7 + 16);
            v62 = *(v7 + 24);
            v64 = __OFSUB__(v62, v63);
            v60 = v62 - v63;
            if (v64)
            {
              goto LABEL_152;
            }
          }
        }

        else
        {
          v60 = BYTE6(v50);
        }

        if (v59 > 1)
        {
          if (v59 != 2)
          {
            if (!v60)
            {
              goto LABEL_94;
            }

            goto LABEL_92;
          }

          v66 = *(v51 + 16);
          v65 = *(v51 + 24);
          v64 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v64)
          {
            goto LABEL_145;
          }

          if (v60 == v67)
          {
            goto LABEL_88;
          }

LABEL_92:
          sub_10001C370(v51, v52);
          v56 = v7;
          v57 = v50;
LABEL_61:
          sub_10001C370(v56, v57);
        }

        else
        {
          if (v59)
          {
            if (__OFSUB__(HIDWORD(v51), v51))
            {
              __break(1u);
LABEL_145:
              __break(1u);
LABEL_146:
              v44 = sub_1009373F8();
              if (!v44)
              {
                goto LABEL_147;
              }

              continue;
            }

            if (v60 != HIDWORD(v51) - v51)
            {
              goto LABEL_92;
            }
          }

          else if (v60 != BYTE6(v52))
          {
            goto LABEL_92;
          }

LABEL_88:
          if (v60 < 1)
          {
            goto LABEL_94;
          }

          v9 = v51;
          v68 = v52;
          sub_1007483B0(v51, v52);
          sub_100715738(v7, v50);
          sub_1007483B0(v9, v68);
          v69 = v128;
          LODWORD(v127) = sub_10071C8A0(v7, v50, v9, v68);
          v128 = v69;
          a1 = v139;
          sub_10001C370(v9, v68);
          sub_1007156D8(v7, v50);
          v70 = v68;
          v44 = v125;
          sub_10001C370(v9, v70);
          sub_10001C370(v7, v50);
          if (v127)
          {
            goto LABEL_95;
          }
        }

        break;
      }

      v9 = &v142;
      sub_100937298();
      v7 = *(v142 + 16);
      sub_1009372C8();
      sub_1009372D8();
      sub_1009372A8();
      goto LABEL_51;
    }

LABEL_147:
    v128 = 0;
    v7 = &_swiftEmptyArrayStorage;
LABEL_148:

    if (v7 >> 62)
    {
LABEL_149:
      if (!sub_1009373F8())
      {
        goto LABEL_150;
      }

      goto LABEL_99;
    }
  }

  else
  {

    v128 = 0;
    v7 = &_swiftEmptyArrayStorage;
    if (&_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_149;
    }
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_150:

    v131(0);

    return;
  }

LABEL_99:
  v127 = v7;
  v71 = 0;
  v135 = v20 & 0xC000000000000001;
  a1 = (v130 + 48);
  v133 = &_swiftEmptyArrayStorage;
  while (2)
  {
    v72 = v71;
    while (2)
    {
      if (v135)
      {
        v73 = sub_100937268();
      }

      else
      {
        if (v72 >= *(v20 + 16))
        {
          goto LABEL_136;
        }

        v73 = *(v20 + 8 * v72 + 32);
      }

      v7 = v73;
      v71 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        goto LABEL_135;
      }

      v10 = v20;
      v74 = v139;
      v9 = (*((swift_isaMask & *v139) + 0xB0))();
      v75 = v138;
      v76 = v140;
      (*((swift_isaMask & *v9) + 0x108))(v140, v7);

      if ((*a1)(v75, 1, v137) == 1)
      {

        sub_100013814(v75, &unk_100CB4A50);
        goto LABEL_102;
      }

      v77 = v75;
      v78 = v134;
      sub_100792048(v77, v134, type metadata accessor for SenderKeyAndState);
      v9 = v74;
      if ((*((swift_isaMask & *v74) + 0x210))(v76, v7))
      {

        sub_100791FE8(v78, type metadata accessor for SenderKeyAndState);
LABEL_102:
        v20 = v10;
        ++v72;
        if (v71 == v136)
        {
          goto LABEL_116;
        }

        continue;
      }

      break;
    }

    v79 = sub_100935E88(0);
    v81 = v80;
    sub_100791FE8(v78, type metadata accessor for SenderKeyAndState);
    v20 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v133 = sub_10078829C(0, v133[2] + 1, 1, v133);
    }

    v83 = v133[2];
    v82 = v133[3];
    v9 = (v83 + 1);
    v84 = v136;
    if (v83 >= v82 >> 1)
    {
      v133 = sub_10078829C((v82 > 1), v83 + 1, 1, v133);
      v84 = v136;
    }

    v85 = v133;
    v133[2] = v9;
    v86 = &v85[3 * v83];
    v86[4] = v7;
    v86[5] = v79;
    v86[6] = v81;
    if (v71 != v84)
    {
      continue;
    }

    break;
  }

LABEL_116:
  v87 = v133;
  v88 = v133[2];
  if (!v88)
  {
LABEL_124:

    goto LABEL_150;
  }

  v142 = &_swiftEmptyArrayStorage;
  sub_10071DE64(0, v88, 0);
  v89 = v142;
  v90 = v87 + 6;
  do
  {
    v91 = *(v90 - 1);
    v92 = *v90;
    v142 = v89;
    v93 = *(v89 + 16);
    v94 = *(v89 + 24);

    if (v93 >= v94 >> 1)
    {
      sub_10071DE64((v94 > 1), v93 + 1, 1);
      v89 = v142;
    }

    *(v89 + 16) = v93 + 1;
    v95 = v89 + 16 * v93;
    *(v95 + 32) = v91;
    *(v95 + 40) = v92;
    v90 += 3;
    --v88;
  }

  while (v88);
  v96 = sub_100747820(v89);

  v97 = *(v96 + 16);
  if (v97)
  {
    v98 = sub_1007884E0(*(v96 + 16), 0);
    v99 = sub_10078FCE0(&v142, v98 + 4, v97, v96);
    sub_100308C6C();
    if (v99 != v97)
    {
      __break(1u);
      goto LABEL_124;
    }
  }

  else
  {

    v98 = &_swiftEmptyArrayStorage;
  }

  v100 = v139;
  v142 = 2;
  LOBYTE(v143) = 3;
  v144 = &_swiftEmptyArrayStorage;
  v145 = &_swiftEmptyArrayStorage;
  v146 = v98;
  v101 = v140;

  v102 = sub_1009364B8();
  v103 = sub_100936F18();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v141 = v140;
    *v104 = 138412802;
    *(v104 + 4) = v101;
    *v105 = v126;
    *(v104 + 12) = 2080;
    v106 = v101;
    v107 = sub_100936CF8();
    v109 = v108;

    v110 = sub_10001273C(v107, v109, &v141);

    *(v104 + 14) = v110;
    *(v104 + 22) = 2080;
    v111 = sub_100936CF8();
    v113 = v112;

    v114 = sub_10001273C(v111, v113, &v141);

    *(v104 + 24) = v114;
    v100 = v139;
    _os_log_impl(&_mh_execute_header, v102, v103, "Will send self key check message to myURI: %@ for filteredPeerURIs: %s with keyIDsToCheck: %s", v104, 0x20u);
    sub_100013814(v105, &qword_100CB36B0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v115 = v127;
  v116 = v133;
  v117 = swift_allocObject();
  v117[2] = v116;
  v117[3] = v100;
  v118 = v131;
  v117[4] = v101;
  v117[5] = v118;
  v117[6] = v132;
  v119 = *((swift_isaMask & *v100) + 0x238);
  v120 = v101;
  v121 = v100;
  v122 = v120;
  v123 = v121;

  v119(v122, v122, &v142, &_swiftEmptyArrayStorage, v115, 51, sub_100791F84, v117);
}