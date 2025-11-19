uint64_t sub_1B98BB0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1B98F5438();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4, v2);

  v13 = v6;
  v12 = v6;
  sub_1B98F53F8();
  (*(v7 + 32))(v9, v10, v11);
}

unint64_t sub_1B98BB1B0()
{
  v2 = qword_1EBBD5AF0;
  if (!qword_1EBBD5AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5AD8, &qword_1B98FBB88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5AF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98BB238(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B98BB264(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1B98BB2B0(a1);
}

uint64_t sub_1B98BB2B0(uint64_t *a1)
{
  v12 = 0;
  v13 = a1;
  v1 = type metadata accessor for ManagedContact();
  *(v8 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AD0, &qword_1B98FBB50);
  v9[11] = v1;
  v9[12] = v1;
  v10 = sub_1B9870F24();
  v11 = v10;
  *(v8 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v8 + 24));
  sub_1B98F52E8();
  *(v8 + 16) = 1;
  *(v8 + 17) = 1;
  v2 = sub_1B98F4FD8();
  v3 = nullsub_38(v2);
  nullsub_38(v3);
  swift_beginAccess();
  *(v8 + 16) = 0;
  v4 = swift_endAccess();
  nullsub_38(v4);
  swift_beginAccess();
  *(v8 + 17) = 0;
  v5 = swift_endAccess();
  nullsub_38(v5);
  sub_1B98B8220(a1, v9);
  sub_1B98BAA40(v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1B98BB474@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar;
  v2 = sub_1B98F4FE8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B98BB4E0(void *a1)
{
  v8 = a1;
  v17 = 0;
  v15 = 0;
  v6 = *a1;
  v13 = sub_1B98F4FE8();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v1 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v8, v2);
  v12 = &v6 - v4;
  v17 = v3;
  v16 = *(v6 + *MEMORY[0x1E69E77B0] + 8);
  v15 = v7;
  (*(v10 + 16))(&v6 - v4, v7 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v9 = &v14;
  v14 = v7;
  sub_1B98B84E4();
  sub_1B98F4FC8();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1B98BB650@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v33 = a4;
  v14 = *a1;
  v12 = sub_1B98F4FE8();
  v15 = *(v12 - 8);
  v13 = v12 - 8;
  v5 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v19, v20);
  v16 = v11 - v7;
  v32 = v6;
  v31 = *(v14 + *MEMORY[0x1E69E77B0] + 8);
  v29 = v8;
  v30 = v21;
  v28 = v17;
  (*(v15 + 16))(v11 - v7, v17 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v24 = &v27;
  v27 = v17;
  sub_1B98B84E4();
  v9 = v23;
  sub_1B98F4FB8();
  v25 = v9;
  v26 = v9;
  if (v9)
  {
    v11[1] = v26;
  }

  return (*(v15 + 8))(v16, v12);
}

uint64_t sub_1B98BB868()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v3 = OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar;
  v1 = sub_1B98F4FE8();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_1B98BB8E8()
{
  v0 = *sub_1B98BB868();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1B98BB94C()
{
  type metadata accessor for ManagedContact();
  sub_1B98BB9A0();
  return sub_1B98F5D08();
}

unint64_t sub_1B98BB9A0()
{
  v2 = qword_1EBBD5B00;
  if (!qword_1EBBD5B00)
  {
    type metadata accessor for ManagedContact();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98BBA44()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B98F5318();
}

uint64_t sub_1B98BBAB4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;
  swift_getWitnessTable();
  return sub_1B98F52F8() & 1;
}

void (*sub_1B98BBB68(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1B98BAADC(v2);
  return sub_1B98BBBD8;
}

void sub_1B98BBBD8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t sub_1B98BBC6C()
{
  v1 = *v0;
  type metadata accessor for ManagedContact();
  sub_1B9870F24();
  return sub_1B98F5308();
}

uint64_t sub_1B98BBCD4()
{
  v2 = sub_1B98F4FE8();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1B98BBE28()
{
  v2 = qword_1EBBD5B18;
  if (!qword_1EBBD5B18)
  {
    type metadata accessor for ManagedContact();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98BBEF0()
{
  v2 = qword_1EBBD5B20;
  if (!qword_1EBBD5B20)
  {
    type metadata accessor for ManagedContact();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B20);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98BBF88(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1B98BE7FC(a1);
}

uint64_t sub_1B98BBFFC(uint64_t a1, uint64_t a2)
{
  v6[5] = a1;
  sub_1B98BEDF0(a2, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  swift_getKeyPath();
  v5 = sub_1B98F5018();
  sub_1B98BEE5C();
  sub_1B98F5238();

  v2 = __swift_destroy_boxed_opaque_existential_1(v6);
  nullsub_45(v2);
  return (*(*(v5 - 8) + 8))(a1);
}

uint64_t sub_1B98BC0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1B98F5018();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4, v2);

  v13 = v6;
  v12 = v6;
  sub_1B98BC2B8(v10);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t sub_1B98BC1D4(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = sub_1B98F5018();
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v4);
  v8 = &v4 - v5;
  (*(v6 + 16))();
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  sub_1B98BC438(v8);
}

uint64_t sub_1B98BC2B8@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v17 = 0;
  v11 = sub_1B98F4FE8();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11, v1);
  v10 = &v3 - v4;
  v17 = v6;
  (*(v8 + 16))(&v3 - v4, v6 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v5 = &v16;
  v16 = v6;
  v12 = &unk_1B98FBD50;
  KeyPath = swift_getKeyPath();
  sub_1B98BEEDC();
  sub_1B98F4FC8();

  (*(v8 + 8))(v10, v11);
  v15 = swift_getKeyPath();
  v14 = sub_1B9870EA4();
  sub_1B98BEFD0();
  sub_1B98F5338();
}

uint64_t sub_1B98BC438(uint64_t a1)
{
  v8 = a1;
  v11 = sub_1B98BF050;
  v19 = 0;
  v18 = 0;
  v4[0] = sub_1B98F4FE8();
  v6 = *(v4[0] - 8);
  v4[1] = v4[0] - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = v4 - v5;
  v19 = MEMORY[0x1EEE9AC00](v8, v1);
  v18 = v9;
  (*(v6 + 16))(v4 - v5, v9 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v13 = &v17;
  v17 = v9;
  KeyPath = swift_getKeyPath();

  v12 = &v14;
  v15 = v9;
  v16 = v8;
  sub_1B98BEEDC();
  sub_1B98F4FB8();

  (*(v6 + 8))(v7, v4[0]);
  v2 = sub_1B98F5018();
  return (*(*(v2 - 8) + 8))(v8);
}

uint64_t sub_1B98BC634()
{
  swift_getKeyPath();
  sub_1B9870EA4();
  sub_1B98BEE5C();
  sub_1B98F5358();
}

void (*sub_1B98BC6B8(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1B98F5018();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v8 = __swift_coroFrameAllocStub(v5);
  v6[4] = v8;
  sub_1B98BC2B8(v8);
  return sub_1B98BC7C4;
}

void sub_1B98BC7C4(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    sub_1B98BC438(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    sub_1B98BC438(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t sub_1B98BC8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[5] = a1;
  v5[6] = a2;
  sub_1B98BEDF0(a3, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  swift_getKeyPath();
  sub_1B98F5238();

  v3 = __swift_destroy_boxed_opaque_existential_1(v5);
  nullsub_45(v3);
}

uint64_t sub_1B98BC9B4()
{
  v15 = 0;
  v10 = sub_1B98F4FE8();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v0);
  v9 = &v2 - v3;
  v15 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v4 = &v14;
  v14 = v5;
  v11 = &unk_1B98FBD78;
  KeyPath = swift_getKeyPath();
  sub_1B98BEEDC();
  sub_1B98F4FC8();

  (*(v7 + 8))(v9, v10);
  v12 = swift_getKeyPath();
  sub_1B9870EA4();
  sub_1B98F5338();

  return v13;
}

uint64_t sub_1B98BCB34(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v12 = a2;
  v14 = sub_1B98BF07C;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v5 = sub_1B98F4FE8();
  v8 = *(v5 - 8);
  v6 = v5 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v4 - v7;
  v23 = MEMORY[0x1EEE9AC00](v10, v12);
  v24 = v2;
  v22 = v11;
  (*(v8 + 16))(&v4 - v7, v11 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v16 = &v21;
  v21 = v11;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v15 = &v17;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  sub_1B98BEEDC();
  sub_1B98F4FB8();

  (*(v8 + 8))(v9, v5);
}

uint64_t sub_1B98BCD30()
{
  swift_getKeyPath();
  sub_1B9870EA4();
  sub_1B98F5358();
}

uint64_t (*sub_1B98BCDD4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B98BC9B4();
  a1[1] = v2;
  return sub_1B98BCE2C;
}

uint64_t sub_1B98BCE2C(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_1B98BCB34(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];
  sub_1B98F54D8();
  sub_1B98BCB34(v4, v5);
  return sub_1B9868BFC(a1);
}

uint64_t sub_1B98BCEA8()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B98BCEF8(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1 & 1;
  return swift_endAccess();
}

uint64_t sub_1B98BCFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[5] = a1;
  v7[6] = a2;
  sub_1B98BEDF0(a3, v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
  sub_1B98B8C98();
  sub_1B98F5238();

  v4 = __swift_destroy_boxed_opaque_existential_1(v7);
  nullsub_45(v4);
  *a4 = 0;
}

uint64_t sub_1B98BD0F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;

  *a2 = sub_1B98BD1C4();
  a2[1] = v2;
}

uint64_t sub_1B98BD150(void *a1, uint64_t *a2)
{
  sub_1B987D50C(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  sub_1B98BD348(v4, v6);
}

uint64_t sub_1B98BD1C4()
{
  v14 = 0;
  v8 = sub_1B98F4FE8();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v2[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, v0);
  v7 = v2 - v2[0];
  v14 = v3;
  (*(v5 + 16))(v2 - v2[0], v3 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v2[1] = &v13;
  v13 = v3;
  v9 = &unk_1B98FBDA0;
  KeyPath = swift_getKeyPath();
  sub_1B98BEEDC();
  sub_1B98F4FC8();

  (*(v5 + 8))(v7, v8);
  v11 = swift_getKeyPath();
  v10 = sub_1B9870EA4();
  sub_1B98B8EB0();
  sub_1B98F5338();

  return v12;
}

uint64_t sub_1B98BD348(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v12 = a2;
  v14 = sub_1B98BF0AC;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v5 = sub_1B98F4FE8();
  v8 = *(v5 - 8);
  v6 = v5 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v4 - v7;
  v23 = MEMORY[0x1EEE9AC00](v10, v12);
  v24 = v2;
  v22 = v11;
  (*(v8 + 16))(&v4 - v7, v11 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v16 = &v21;
  v21 = v11;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v15 = &v17;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  sub_1B98BEEDC();
  sub_1B98F4FB8();

  (*(v8 + 8))(v9, v5);
}

uint64_t sub_1B98BD544()
{
  swift_getKeyPath();
  sub_1B9870EA4();
  sub_1B98B8C98();
  sub_1B98F5358();
}

uint64_t (*sub_1B98BD5EC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B98BD1C4();
  a1[1] = v2;
  return sub_1B98BD644;
}

uint64_t sub_1B98BD644(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_1B98BD348(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];
  sub_1B98F54D8();
  sub_1B98BD348(v4, v5);
  return sub_1B985EE4C(a1);
}

uint64_t sub_1B98BD6E8(uint64_t a1, uint64_t a2)
{
  v4[5] = a1;
  sub_1B98BEDF0(a2, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5C40, &qword_1B98FC130);
  type metadata accessor for ManagedContact();
  sub_1B98BF0DC();
  sub_1B98F5228();

  v2 = __swift_destroy_boxed_opaque_existential_1(v4);
  nullsub_45(v2);
}

uint64_t sub_1B98BD7D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  *a2 = sub_1B98BD898();
}

uint64_t sub_1B98BD830(uint64_t *a1, uint64_t *a2)
{
  sub_1B98C26C0(a1, &v6);
  v4 = v6;
  v5 = *a2;

  sub_1B98BDA30(v4);
}

uint64_t sub_1B98BD898()
{
  v18 = 0;
  v12 = 0;
  v10 = sub_1B98F4FE8();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v0);
  v9 = &v2 - v3;
  v18 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v4 = &v17;
  v17 = v5;
  v11 = &unk_1B98FBDD0;
  KeyPath = swift_getKeyPath();
  sub_1B98BEEDC();
  sub_1B98F4FC8();

  (*(v7 + 8))(v9, v10);
  v15 = swift_getKeyPath();
  v13 = type metadata accessor for ManagedContact();
  v14 = sub_1B9870EA4();
  sub_1B98BF0DC();
  sub_1B98F5328();

  return v16;
}

uint64_t sub_1B98BDA30(uint64_t a1)
{
  v7 = a1;
  v10 = sub_1B98BF174;
  v18 = 0;
  v17 = 0;
  v3[0] = sub_1B98F4FE8();
  v5 = *(v3[0] - 8);
  v3[1] = v3[0] - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = v3 - v4;
  v18 = MEMORY[0x1EEE9AC00](v7, v1);
  v17 = v8;
  (*(v5 + 16))(v3 - v4, v8 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v12 = &v16;
  v16 = v8;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v11 = &v13;
  v14 = v8;
  v15 = v7;
  sub_1B98BEEDC();
  sub_1B98F4FB8();

  (*(v5 + 8))(v6, v3[0]);
}

uint64_t sub_1B98BDC14()
{
  swift_getKeyPath();
  type metadata accessor for ManagedContact();
  sub_1B9870EA4();
  sub_1B98BF0DC();
  sub_1B98F5348();
}

uint64_t *(*sub_1B98BDCB8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B98BD898();
  return sub_1B98BDD08;
}

uint64_t *sub_1B98BDD08(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1B98BDA30(*a1);
  }

  v4 = *a1;
  sub_1B98F54D8();
  sub_1B98BDA30(v4);
  return sub_1B98BFFB4(a1);
}

uint64_t sub_1B98BDD9C(uint64_t a1, uint64_t a2)
{
  v4[5] = a1;
  sub_1B98BEDF0(a2, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B50, &qword_1B98FC140);
  type metadata accessor for ManagedAllowedApp();
  sub_1B98BF1A0();
  sub_1B98F5228();

  v2 = __swift_destroy_boxed_opaque_existential_1(v4);
  nullsub_45(v2);
}

uint64_t sub_1B98BDE88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  *a2 = sub_1B98BDF4C();
}

uint64_t sub_1B98BDEE4(uint64_t *a1, uint64_t *a2)
{
  sub_1B98C2688(a1, &v6);
  v4 = v6;
  v5 = *a2;

  sub_1B98BE0E4(v4);
}

uint64_t sub_1B98BDF4C()
{
  v18 = 0;
  v12 = 0;
  v10 = sub_1B98F4FE8();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v0);
  v9 = &v2 - v3;
  v18 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v4 = &v17;
  v17 = v5;
  v11 = &unk_1B98FBE00;
  KeyPath = swift_getKeyPath();
  sub_1B98BEEDC();
  sub_1B98F4FC8();

  (*(v7 + 8))(v9, v10);
  v15 = swift_getKeyPath();
  v13 = type metadata accessor for ManagedAllowedApp();
  v14 = sub_1B9870EA4();
  sub_1B98BF1A0();
  sub_1B98F5328();

  return v16;
}

uint64_t sub_1B98BE0E4(uint64_t a1)
{
  v7 = a1;
  v10 = sub_1B98BF238;
  v18 = 0;
  v17 = 0;
  v3[0] = sub_1B98F4FE8();
  v5 = *(v3[0] - 8);
  v3[1] = v3[0] - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = v3 - v4;
  v18 = MEMORY[0x1EEE9AC00](v7, v1);
  v17 = v8;
  (*(v5 + 16))(v3 - v4, v8 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v12 = &v16;
  v16 = v8;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v11 = &v13;
  v14 = v8;
  v15 = v7;
  sub_1B98BEEDC();
  sub_1B98F4FB8();

  (*(v5 + 8))(v6, v3[0]);
}

uint64_t sub_1B98BE2C8()
{
  swift_getKeyPath();
  type metadata accessor for ManagedAllowedApp();
  sub_1B9870EA4();
  sub_1B98BF1A0();
  sub_1B98F5348();
}

uint64_t *(*sub_1B98BE36C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B98BDF4C();
  return sub_1B98BE3BC;
}

uint64_t *sub_1B98BE3BC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1B98BE0E4(*a1);
  }

  v4 = *a1;
  sub_1B98F54D8();
  sub_1B98BE0E4(v4);
  return sub_1B98C0AF0(a1);
}

uint64_t *sub_1B98BE428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_1B98BE4A4(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t *sub_1B98BE4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v28 = MEMORY[0x1E697BC78];
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v26[1] = 0;
  v40 = sub_1B98F5018();
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  v27 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v31);
  v30 = v26 - v27;
  v53 = v8;
  v51 = v9;
  v52 = v10;
  v49 = v11;
  v50 = v12;
  v48 = v13;
  v47 = v14;
  v46 = v7;
  v15 = type metadata accessor for ManagedHandle();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B60, &unk_1B98FBE30);
  v41[6] = v16;
  v29 = sub_1B9870EA4();
  v42 = v15;
  v43 = v15;
  v44 = v29;
  v45 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v41;
  v41[7] = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_1(v18 + 3);
  sub_1B98F52E8();
  v19 = v41;
  *(v41 + 16) = 1;
  sub_1B98F4FD8();
  (*(v37 + 16))(v30, v39, v40);
  v20 = *v19;
  sub_1B98BBFFC(v30, (v19 + 3));
  v21 = *v19;
  sub_1B98BC8E8(v31, v32, (v19 + 3));
  v22 = *v19;
  sub_1B98BCFE8(v33, v34, (v19 + 3), v19 + 16);
  v23 = *v19;
  sub_1B98BD6E8(v35, (v19 + 3));
  v24 = *v19;
  sub_1B98BDD9C(v36, (v19 + 3));
  (*(v37 + 8))(v39, v40);
  return v41;
}

uint64_t *sub_1B98BE7FC(uint64_t a1)
{
  v36 = a1;
  v40 = 0;
  v33 = MEMORY[0x1E697BC78];
  v44 = sub_1B98BF264;
  v29 = sub_1B98BF410;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v47 = 0;
  v39 = 0;
  v30 = (*(*(sub_1B98F5018() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2);
  v31 = &v20 - v30;
  v52 = v3;
  v51 = v1;
  v4 = type metadata accessor for ManagedHandle();
  v32 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B60, &unk_1B98FBE30);
  v35[6] = v5;
  v34 = sub_1B9870EA4();
  v50[1] = v4;
  v50[2] = v4;
  v50[3] = v34;
  v50[4] = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = v35;
  v35[7] = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_1(v7 + 3);
  sub_1B98F52E8();
  *(v35 + 16) = 1;
  sub_1B98F4FD8();
  v37 = type metadata accessor for BlockedHandle();
  v38 = *(v36 + v37[6]);
  sub_1B98F54D8();
  v50[0] = v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
  v42 = type metadata accessor for ManagedContact();
  v8 = sub_1B98BF35C();
  v9 = sub_1B985D064(v44, v40, v41, v42, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v43);
  v45 = 0;
  v46 = v9;
  v24 = v9;
  sub_1B98BF3E4(v50);
  v49 = v24;
  v25 = *(v36 + v37[7]);
  sub_1B98F54D8();
  v48 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B70, &qword_1B98FBE40);
  v27 = type metadata accessor for ManagedAllowedApp();
  v10 = sub_1B98BF494();
  v28 = sub_1B985D064(v29, 0, v26, v27, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v43);
  v23 = v28;
  sub_1B98BF51C(&v48);
  v47 = v23;
  BlockedHandle.type.getter(v31);
  v11 = *v35;
  sub_1B98BBFFC(v31, (v35 + 3));
  v12 = BlockedHandle.value.getter();
  v13 = *v35;
  sub_1B98BC8E8(v12, v14, (v35 + 3));
  v15 = (v36 + v37[5]);
  v21 = *v15;
  v22 = v15[1];
  sub_1B98F54D8();
  v16 = *v35;
  sub_1B98BCFE8(v21, v22, (v35 + 3), v35 + 16);
  v17 = *v35;
  sub_1B98BD6E8(v24, (v35 + 3));
  v18 = *v35;
  sub_1B98BDD9C(v23, (v35 + 3));
  sub_1B983A3AC(v36);
  return v35;
}

uint64_t sub_1B98BEDF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t sub_1B98BEE5C()
{
  v2 = qword_1EBBD5B28;
  if (!qword_1EBBD5B28)
  {
    sub_1B98F5018();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98BEEDC()
{
  v2 = qword_1EBBD5B38;
  if (!qword_1EBBD5B38)
  {
    type metadata accessor for ManagedHandle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B38);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ManagedHandle()
{
  v1 = qword_1EBBD5C18;
  if (!qword_1EBBD5C18)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1B98BEFD0()
{
  v2 = qword_1EBBD5B40;
  if (!qword_1EBBD5B40)
  {
    sub_1B98F5018();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98BF050()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B98BC634();
}

uint64_t sub_1B98BF07C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B98BCD30();
}

uint64_t sub_1B98BF0AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B98BD544();
}

unint64_t sub_1B98BF0DC()
{
  v2 = qword_1EBBD5B48;
  if (!qword_1EBBD5B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5C40, &qword_1B98FC130);
    sub_1B9870F24();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98BF174()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B98BDC14();
}

unint64_t sub_1B98BF1A0()
{
  v2 = qword_1EBBD5B58;
  if (!qword_1EBBD5B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B50, &qword_1B98FC140);
    sub_1B98B5ECC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98BF238()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B98BE2C8();
}

uint64_t *sub_1B98BF264@<X0>(void *a1@<X0>, uint64_t **a2@<X8>)
{
  memset(&v11[6], 0, 0x30uLL);
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v11[6] = *a1;
  v4 = v11[6];
  v11[7] = v5;
  v11[8] = v6;
  v11[9] = v7;
  v11[10] = v8;
  v11[11] = v9;
  type metadata accessor for ManagedContact();
  sub_1B98F54D8();
  sub_1B98F54D8();
  sub_1B98F54D8();
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v9;
  result = sub_1B98BA4D8(v11);
  *a2 = result;
  return result;
}

unint64_t sub_1B98BF35C()
{
  v2 = qword_1EBBD5B68;
  if (!qword_1EBBD5B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B68);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98BF3E4(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_1B98BF410@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v6 = 0;
  v7 = 0;
  v3 = a1[1];
  v6 = *a1;
  v7 = v3;
  type metadata accessor for ManagedAllowedApp();
  sub_1B98F54D8();
  v5[0] = v6;
  v5[1] = v3;
  result = sub_1B98B6C48(v5);
  *a2 = result;
  return result;
}

unint64_t sub_1B98BF494()
{
  v2 = qword_1EBBD5B78;
  if (!qword_1EBBD5B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B70, &qword_1B98FBE40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B78);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98BF51C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B98BF548(uint64_t a1)
{
  v13 = a1;
  v12 = v1;
  v15 = 0;
  v14 = 0;
  v9 = 0;
  v2 = sub_1B98F5018();
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3);
  v8 = &v6 - v7;
  v15 = v13;
  v14 = v1;
  BlockedHandle.type.getter(&v6 - v7);
  sub_1B98BC438(v8);
  v4 = (v13 + *(type metadata accessor for BlockedHandle() + 20));
  v10 = *v4;
  v11 = v4[1];
  sub_1B98F54D8();
  sub_1B98BD348(v10, v11);
  return sub_1B98BF640(v13);
}

uint64_t sub_1B98BF640(uint64_t a1)
{
  v52 = a1;
  v56 = 0;
  v87 = 0;
  v83 = 0;
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  v74 = 0;
  v70 = 0;
  v69 = 0;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v88 = a1;
  v53 = type metadata accessor for BlockedHandle();
  v54 = *(v52 + *(v53 + 24));
  sub_1B98F54D8();
  v85 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B80, &qword_1B98FBE48);
  sub_1B98F5F98();
  v84 = sub_1B98F54A8();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
  v55 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B88, &qword_1B98FBE50);
  sub_1B98BFE08();
  sub_1B98F57B8();
  v59 = 0;
  sub_1B98BF3E4(&v85);
  v44 = v86;
  v83 = v86;
  v82 = sub_1B98BD898();
  KeyPath = swift_getKeyPath();
  v45 = KeyPath;

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5C40, &qword_1B98FC130);
  v46 = v48;
  v49 = sub_1B98BFF2C();
  v50 = 0;
  v51 = sub_1B985D064(sub_1B98BFEF8, KeyPath, v48, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v49, MEMORY[0x1E69E7410], v1);
  v40 = v51;

  sub_1B98BFFB4(&v82);
  v81 = v51;
  v78 = sub_1B98BD898();
  v41 = sub_1B98BFFE0();
  v42 = &v78;
  MEMORY[0x1BFADD720](&v79, v48);
  sub_1B98BFFB4(&v78);
  v77 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BA8, &qword_1B98FBE80);
  sub_1B98F5E28();
  for (i = 0; ; i = v37)
  {
    v37 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BB0, &qword_1B98FBE88);
    sub_1B98F5E38();
    v38 = v75[1];
    v39 = v76;
    if (!v76)
    {
      break;
    }

    v35 = v38;
    v36 = v39;
    v29 = v39;
    v30 = v38;
    v70 = v38;
    v69 = v39;
    v65[0] = sub_1B98B8364();
    v65[1] = v2;
    v31 = v65;
    sub_1B98F55B8();
    sub_1B9868BFC(v65);
    v32 = v66;
    v33 = v67;
    v34 = v68;
    if (*(&v66 + 1))
    {
      v26 = v32;
      v27 = v33;
      v28 = v34;
      v25 = *(&v34 + 1);
      v24 = *(&v33 + 1);
      v23 = *(&v32 + 1);
      v61 = v32;
      v62 = v33;
      v63 = v34;
      v60[0] = v32;
      v60[1] = v33;
      v60[2] = v34;
      sub_1B98BA7C0(v60);
    }

    else
    {
      v64 = sub_1B98BD898();
      sub_1B98F5918();
      sub_1B98BDA30(v64);
    }

    v22 = v37;
  }

  v3 = v37;
  sub_1B98C0068(v80);
  v19 = *(v52 + *(v53 + 24));
  sub_1B98F54D8();
  sub_1B98F54D8();
  v17 = &v11;
  MEMORY[0x1EEE9AC00](&v11, v4);
  v18 = v10;
  v10[2] = v5;
  sub_1B983220C();
  v6 = sub_1B98F5A78();
  v20 = v3;
  v21 = v6;
  v13 = v6;

  v75[0] = v13;
  v14 = 0;
  v15 = type metadata accessor for ManagedContact();
  v7 = sub_1B98BF35C();
  v16 = sub_1B985D064(sub_1B98C0188, v14, v55, v15, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  v12 = v16;
  sub_1B98BF3E4(v75);
  v74 = v12;
  v73 = v12;
  if ((sub_1B98F5B58() & 1) == 0)
  {
    sub_1B98F54D8();
    v72 = v12;
    v71 = sub_1B98BD898();
    sub_1B98F58F8();
    sub_1B98BDA30(v71);
  }
}

uint64_t sub_1B98BFCE0(uint64_t a1, void *a2)
{
  memset(__b, 0, 0x30uLL);
  __b[6] = a1;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  __b[0] = *a2;
  __b[1] = v3;
  __b[2] = v4;
  __b[3] = v5;
  __b[4] = v6;
  __b[5] = v7;
  sub_1B98F54D8();
  sub_1B98F54D8();
  sub_1B98F54D8();
  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B88, &qword_1B98FBE50);
  return sub_1B98F55C8();
}

unint64_t sub_1B98BFE08()
{
  v2 = qword_1EBBD5B90;
  if (!qword_1EBBD5B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98BFE90(uint64_t *a1)
{
  v2 = *a1;

  swift_getAtKeyPath();
}

unint64_t sub_1B98BFF2C()
{
  v2 = qword_1EBBD5B98;
  if (!qword_1EBBD5B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5C40, &qword_1B98FC130);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B98);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98BFFB4(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B98BFFE0()
{
  v2 = qword_1EBBD5BA0;
  if (!qword_1EBBD5BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5C40, &qword_1B98FC130);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5BA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98C0068(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B98C0094(void *a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  v3 = *a1;
  v4 = a1[1];
  v8 = a1;
  v7 = a2;
  v6[2] = a2;
  sub_1B98F54D8();
  v6[0] = v3;
  v6[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
  sub_1B985DBF4();
  v5 = sub_1B98F5818();
  sub_1B9868BFC(v6);
  return (v5 ^ 1) & 1;
}

uint64_t *sub_1B98C0188@<X0>(void *a1@<X0>, uint64_t **a2@<X8>)
{
  memset(&v11[6], 0, 0x30uLL);
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v11[6] = *a1;
  v4 = v11[6];
  v11[7] = v5;
  v11[8] = v6;
  v11[9] = v7;
  v11[10] = v8;
  v11[11] = v9;
  type metadata accessor for ManagedContact();
  sub_1B98F54D8();
  sub_1B98F54D8();
  sub_1B98F54D8();
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v9;
  result = sub_1B98BA4D8(v11);
  *a2 = result;
  return result;
}

uint64_t sub_1B98C0280(uint64_t a1)
{
  v48 = a1;
  v52 = 0;
  v80 = 0;
  v76 = 0;
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  v67 = 0;
  v63 = 0;
  v62 = 0;
  v58 = 0;
  v57 = 0;
  v81 = a1;
  v49 = type metadata accessor for BlockedHandle();
  v50 = *(v48 + *(v49 + 28));
  sub_1B98F54D8();
  v78 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BB8, &qword_1B98FBE90);
  sub_1B98F5F98();
  v77 = sub_1B98F54A8();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B70, &qword_1B98FBE40);
  v51 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BC0, &qword_1B98FBE98);
  sub_1B98C0944();
  sub_1B98F57B8();
  v55 = 0;
  sub_1B98BF51C(&v78);
  v40 = v79;
  v76 = v79;
  v75 = sub_1B98BDF4C();
  KeyPath = swift_getKeyPath();
  v41 = KeyPath;

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B50, &qword_1B98FC140);
  v42 = v44;
  v45 = sub_1B98C0A68();
  v46 = 0;
  v47 = sub_1B985D064(sub_1B98C0A34, KeyPath, v44, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v45, MEMORY[0x1E69E7410], v1);
  v36 = v47;

  sub_1B98C0AF0(&v75);
  v74 = v47;
  v71 = sub_1B98BDF4C();
  v37 = sub_1B98C0B1C();
  v38 = &v71;
  MEMORY[0x1BFADD720](&v72, v44);
  sub_1B98C0AF0(&v71);
  v70 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BD8, &qword_1B98FBEC8);
  sub_1B98F5E28();
  for (i = 0; ; i = v33)
  {
    v33 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BE0, &qword_1B98FBED0);
    sub_1B98F5E38();
    v34 = v68[1];
    v35 = v69;
    if (!v69)
    {
      break;
    }

    v31 = v34;
    v32 = v35;
    v26 = v35;
    v27 = v34;
    v63 = v34;
    v62 = v35;
    v60[0] = sub_1B98B5C58();
    v60[1] = v2;
    v28 = v60;
    sub_1B98F55B8();
    sub_1B9868BFC(v60);
    v29 = v60[2];
    v30 = v61;
    if (v61)
    {
      v24 = v29;
      v25 = v30;
      v23 = v30;
      v57 = v29;
      v58 = v30;
      v56[0] = v29;
      v56[1] = v30;
      sub_1B98B6E38(v56);
    }

    else
    {
      v59 = sub_1B98BDF4C();
      sub_1B98F5918();
      sub_1B98BE0E4(v59);
    }

    v22 = v33;
  }

  v3 = v33;
  sub_1B98C0BA4(v73);
  v19 = *(v48 + *(v49 + 28));
  sub_1B98F54D8();
  sub_1B98F54D8();
  v17 = &v11;
  MEMORY[0x1EEE9AC00](&v11, v4);
  v18 = v10;
  v10[2] = v5;
  sub_1B9832500();
  v6 = sub_1B98F5A78();
  v20 = v3;
  v21 = v6;
  v13 = v6;

  v68[0] = v13;
  v14 = 0;
  v15 = type metadata accessor for ManagedAllowedApp();
  v7 = sub_1B98BF494();
  v16 = sub_1B985D064(sub_1B98C0CC4, v14, v51, v15, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  v12 = v16;
  sub_1B98BF51C(v68);
  v67 = v12;
  v66 = v12;
  if ((sub_1B98F5B58() & 1) == 0)
  {
    sub_1B98F54D8();
    v65 = v12;
    v64 = sub_1B98BDF4C();
    sub_1B98F58F8();
    sub_1B98BE0E4(v64);
  }
}

uint64_t sub_1B98C0890(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1B98F54D8();
  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BC0, &qword_1B98FBE98);
  return sub_1B98F55C8();
}

unint64_t sub_1B98C0944()
{
  v2 = qword_1EBBD5BC8;
  if (!qword_1EBBD5BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B70, &qword_1B98FBE40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5BC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98C09CC(uint64_t *a1)
{
  v2 = *a1;

  swift_getAtKeyPath();
}

unint64_t sub_1B98C0A68()
{
  v2 = qword_1EBBD5C70;
  if (!qword_1EBBD5C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B50, &qword_1B98FC140);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5C70);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98C0AF0(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B98C0B1C()
{
  v2 = qword_1EBBD5BD0;
  if (!qword_1EBBD5BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B50, &qword_1B98FC140);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5BD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98C0BA4(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B98C0BD0(void *a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  v3 = *a1;
  v4 = a1[1];
  v8 = a1;
  v7 = a2;
  v6[2] = a2;
  sub_1B98F54D8();
  v6[0] = v3;
  v6[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
  sub_1B985DBF4();
  v5 = sub_1B98F5818();
  sub_1B9868BFC(v6);
  return (v5 ^ 1) & 1;
}

uint64_t *sub_1B98C0CC4@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v6 = 0;
  v7 = 0;
  v3 = a1[1];
  v6 = *a1;
  v7 = v3;
  type metadata accessor for ManagedAllowedApp();
  sub_1B98F54D8();
  v5[0] = v6;
  v5[1] = v3;
  result = sub_1B98B6C48(v5);
  *a2 = result;
  return result;
}

uint64_t sub_1B98C0D48@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1B98BEDF0(v1 + 24, a1);
  return swift_endAccess();
}

uint64_t sub_1B98C0D9C(uint64_t *a1)
{
  sub_1B98BEDF0(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1B98C0E0C(v4, (v1 + 24));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B98C0EE4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1B98BEDF0(v1 + 24, a1);
  return swift_endAccess();
}

uint64_t sub_1B98C0F40(uint64_t *a1)
{
  v5[5] = 0;
  v5[6] = a1;
  sub_1B98BEDF0(a1, v5);
  sub_1B98BEDF0(v5, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1B98C0E0C(v4, (v1 + 24));
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_1B98C0FDC(void *a1))(uint64_t **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v4;
  v4[10] = v1;
  sub_1B98C0EE4(v4);
  return sub_1B98C1050;
}

void sub_1B98C1050(uint64_t **a1, char a2)
{
  v3 = *a1;
  v2 = (*a1)[10];
  if (a2)
  {
    sub_1B98BEDF0(v3, (v3 + 5));
    sub_1B98C0F40(v3 + 5);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_1B98C0F40(v3);
  }

  free(v3);
}

uint64_t sub_1B98C10C8()
{
  v99 = 0;
  v92 = 0;
  v86 = &v91;
  v91 = 0;
  v55 = 0;
  v84 = sub_1B98F5418();
  v23 = *(v84 - 8);
  v24 = v84 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1);
  v83 = &v19 - v19;
  v49 = sub_1B98F53B8();
  v32 = *(v49 - 8);
  v33 = v49 - 8;
  v20 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49, v84);
  v57 = &v19 - v20;
  v99 = v0;
  v25 = 5;
  v66 = sub_1B98F5F98();
  v61 = v2;
  v46 = 4;
  v67 = 1;
  v22 = sub_1B98F55E8();
  v21 = v3;
  swift_getKeyPath();
  memset(&v98[176], 0, 72);
  sub_1B98F5408();
  v45 = *(v23 + 72);
  v68 = 1;
  v26 = v45;
  v28 = sub_1B98F55E8();
  v27 = v4;
  v69 = &unk_1B98FBD78;
  swift_getKeyPath();
  memset(&v98[104], 0, 72);
  sub_1B98F5408();
  v29 = 2 * v45;
  v31 = sub_1B98F55E8();
  v30 = v5;
  swift_getKeyPath();
  memset(&v98[32], 0, 72);
  sub_1B98F5408();
  v39 = 3 * v45;
  v44 = sub_1B98F55E8();
  v40 = v6;
  KeyPath = swift_getKeyPath();
  v42 = v98;
  memset(v98, 0, 32);
  v58 = sub_1B98F53D8();
  v47 = sub_1B98F53C8();
  v37 = sub_1B98F5F98();
  v48 = MEMORY[0x1E697BCD8];
  v7 = *MEMORY[0x1E697BCD8];
  v51 = *(v32 + 104);
  v50 = v32 + 104;
  v51(v57, v7, v49);
  v34 = swift_getKeyPath();
  v35 = sub_1B98C1880();
  v36 = v8;
  sub_1B98C188C();
  v38 = sub_1B98F53E8();
  v43 = v97;
  v97[3] = v58;
  v59 = sub_1B98C1898();
  v97[4] = v59;
  v97[0] = v38;
  sub_1B98F5408();
  v60 = v46 * v45;
  v65 = sub_1B98F55E8();
  v62 = v9;
  v63 = swift_getKeyPath();
  v64 = v96;
  memset(v96, 0, sizeof(v96));
  v56 = sub_1B98F5F98();
  v51(v57, *v48, v49);
  v52 = swift_getKeyPath();
  v53 = sub_1B98C1880();
  v54 = v10;
  sub_1B98C188C();
  v11 = sub_1B98F53E8();
  v94 = v58;
  v95 = v59;
  v93 = v11;
  sub_1B98F5408();
  v12 = v66;
  sub_1B9851B38();
  v87 = v12;
  v92 = v12;
  v91 = sub_1B98F5458();
  v82 = sub_1B98F55E8();
  v78 = v13;
  v79 = swift_getKeyPath();
  v80 = v90;
  memset(v90, 0, sizeof(v90));
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BF0, &qword_1B98FBF58);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BF8, &qword_1B98FBF60);
  v75 = sub_1B98F5F98();
  v73 = v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5C00, &unk_1B98FBF68);
  v72 = sub_1B98F5F98();
  v70 = v15;
  v16 = swift_getKeyPath();
  v17 = v72;
  *v70 = v16;
  sub_1B9851B38();
  *v73 = v17;
  sub_1B9851B38();
  v77 = sub_1B98F5428();
  v81 = v89;
  v89[3] = v76;
  v89[4] = sub_1B98C1918();
  v89[0] = v77;
  sub_1B98F5408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AF8, &qword_1B98FBBA0);
  sub_1B98F5908();
  v85 = v91;
  sub_1B98F54D8();
  v88 = sub_1B98F58C8();

  sub_1B98BB238(v86);

  return v88;
}

unint64_t sub_1B98C1898()
{
  v2 = qword_1EBBD5BE8;
  if (!qword_1EBBD5BE8)
  {
    sub_1B98F53D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5BE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C1918()
{
  v2 = qword_1EBBD5C08;
  if (!qword_1EBBD5C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5BF0, &qword_1B98FBF58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5C08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98C19A0(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1B98C19EC(a1);
}

uint64_t sub_1B98C19EC(uint64_t *a1)
{
  v13 = 0;
  v14 = a1;
  v1 = type metadata accessor for ManagedHandle();
  *(v9 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B60, &unk_1B98FBE30);
  v10[8] = v1;
  v10[9] = v1;
  v11 = sub_1B9870EA4();
  v12 = v11;
  *(v9 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v9 + 24));
  sub_1B98F52E8();
  *(v9 + 16) = 1;
  v2 = sub_1B98F4FD8();
  v3 = nullsub_45(v2);
  v4 = nullsub_45(v3);
  nullsub_45(v4);
  swift_beginAccess();
  *(v9 + 16) = 0;
  v5 = swift_endAccess();
  v6 = nullsub_45(v5);
  nullsub_45(v6);
  sub_1B98BEDF0(a1, v10);
  sub_1B98C0F40(v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1B98C1B6C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar;
  v2 = sub_1B98F4FE8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B98C1BD8(void *a1)
{
  v8 = a1;
  v17 = 0;
  v15 = 0;
  v6 = *a1;
  v13 = sub_1B98F4FE8();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v1 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v8, v2);
  v12 = &v6 - v4;
  v17 = v3;
  v16 = *(v6 + *MEMORY[0x1E69E77B0] + 8);
  v15 = v7;
  (*(v10 + 16))(&v6 - v4, v7 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v9 = &v14;
  v14 = v7;
  sub_1B98BEEDC();
  sub_1B98F4FC8();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1B98C1D48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v33 = a4;
  v14 = *a1;
  v12 = sub_1B98F4FE8();
  v15 = *(v12 - 8);
  v13 = v12 - 8;
  v5 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v19, v20);
  v16 = v11 - v7;
  v32 = v6;
  v31 = *(v14 + *MEMORY[0x1E69E77B0] + 8);
  v29 = v8;
  v30 = v21;
  v28 = v17;
  (*(v15 + 16))(v11 - v7, v17 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v24 = &v27;
  v27 = v17;
  sub_1B98BEEDC();
  v9 = v23;
  sub_1B98F4FB8();
  v25 = v9;
  v26 = v9;
  if (v9)
  {
    v11[1] = v26;
  }

  return (*(v15 + 8))(v16, v12);
}

uint64_t sub_1B98C1F60()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v3 = OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar;
  v1 = sub_1B98F4FE8();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_1B98C1FE0()
{
  v0 = *sub_1B98C1F60();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1B98C2044()
{
  type metadata accessor for ManagedHandle();
  sub_1B98C2098();
  return sub_1B98F5D08();
}

unint64_t sub_1B98C2098()
{
  v2 = qword_1EBBD5C10;
  if (!qword_1EBBD5C10)
  {
    type metadata accessor for ManagedHandle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5C10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98C213C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B98F5318();
}

uint64_t sub_1B98C21AC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;
  swift_getWitnessTable();
  return sub_1B98F52F8() & 1;
}

void (*sub_1B98C2260(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1B98C0FDC(v2);
  return sub_1B98C22D0;
}

void sub_1B98C22D0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t sub_1B98C2364()
{
  v1 = *v0;
  type metadata accessor for ManagedHandle();
  sub_1B9870EA4();
  return sub_1B98F5308();
}

uint64_t sub_1B98C23CC()
{
  v2 = sub_1B98F4FE8();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1B98C2528()
{
  v2 = qword_1EBBD5C28;
  if (!qword_1EBBD5C28)
  {
    type metadata accessor for ManagedHandle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5C28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C25F0()
{
  v2 = qword_1EBBD5C30;
  if (!qword_1EBBD5C30)
  {
    type metadata accessor for ManagedHandle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5C30);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B98C2688(uint64_t *a1, void *a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  return result;
}

void *sub_1B98C26C0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_1B98C26F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = a1;
  v44 = 0;
  v47 = sub_1B98C6338;
  v35 = sub_1B98C6444;
  v57 = 0;
  v56 = 0;
  v53 = 0;
  v50 = 0;
  v36 = 0;
  v37 = (*(*(sub_1B98F5018() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v3);
  v38 = &v18 - v37;
  v39 = type metadata accessor for BlockedHandle();
  v40 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v39, v4);
  v41 = &v18 - v40;
  v42 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5, &v18 - v40);
  v8 = &v18 - v42;
  v43 = &v18 - v42;
  v57 = &v18 - v42;
  v56 = a1;
  v9 = (&v18 + *(v7 + 20) - v42);
  *v9 = 0;
  v9[1] = 0;
  v10 = &v8[*(v7 + 32)];
  *v10 = 0;
  *(v10 + 1) = 0;
  v55 = sub_1B98BD898();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5C40, &qword_1B98FC130);
  v11 = sub_1B98BFF2C();
  v12 = sub_1B985D064(v47, v44, v45, &type metadata for BlockedHandle.AssociatedContact, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v46);
  v48 = 0;
  v49 = v12;
  v26 = v12;
  sub_1B98BFFB4(&v55);
  v29 = &v54;
  v54 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5C50, &qword_1B98FC138);
  v28 = sub_1B983220C();
  sub_1B98C63BC();
  v30 = sub_1B98F5AE8();
  v53 = v30;
  v52 = sub_1B98BDF4C();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B50, &qword_1B98FC140);
  v13 = sub_1B98C0A68();
  v32 = sub_1B985D064(v35, 0, v31, &type metadata for BlockedHandle.AllowedApp, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v46);
  v19 = v32;
  sub_1B98C0AF0(&v52);
  v22 = &v51;
  v51 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5C78, &qword_1B98FC148);
  v21 = sub_1B9832500();
  sub_1B98C648C();
  v24 = sub_1B98F5AE8();
  v50 = v24;
  sub_1B98BC2B8(v38);
  v25 = sub_1B98BC9B4();
  v23 = v14;
  v15 = sub_1B98BD1C4();
  BlockedHandle.init(type:value:normalizedValue:associatedContacts:allowedApps:)(v38, v25, v23, v15, v16, v30, v24, v41);
  sub_1B985EE4C(v43 + *(v39 + 20));
  sub_1B985EE4C(v43 + *(v39 + 32));
  sub_1B9832680(v41, v43);
  sub_1B9833334(v43, v33);

  return sub_1B983A3AC(v43);
}

uint64_t BlockedHandle.value.getter()
{
  v11 = 0;
  v8 = sub_1B98F5078();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, v3[1]);
  v7 = v3 - v4;
  v11 = v0;
  (*(v5 + 16))(v3 - v4);
  v9 = sub_1B98F5058();
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  return v9;
}

uint64_t BlockedHandle.type.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v10 = 0;
  v9 = sub_1B98F5078();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v3);
  v8 = &v3 - v4;
  v10 = v1;
  (*(v6 + 16))(&v3 - v4);
  sub_1B98F5038();
  return (*(v6 + 8))(v8, v9);
}

uint64_t BlockedHandle.AssociatedContact.localContactIdentifier.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t BlockedHandle.AssociatedContact.localContactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  sub_1B98F54D8();
  v3 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t BlockedHandle.AssociatedContact.externalContactIdentifier.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1B98F54D8();
  return v2;
}

uint64_t BlockedHandle.AssociatedContact.externalContactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  sub_1B98F54D8();
  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t BlockedHandle.AssociatedContact.idsIdentifier.getter()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_1B98F54D8();
  return v2;
}

uint64_t BlockedHandle.AssociatedContact.idsIdentifier.setter(uint64_t a1, uint64_t a2)
{
  sub_1B98F54D8();
  v3 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void __swiftcall BlockedHandle.AssociatedContact.init(localContactIdentifier:externalContactIdentifier:idsIdentifier:)(CommunicationTrust::BlockedHandle::AssociatedContact *__return_ptr retstr, Swift::String localContactIdentifier, Swift::String_optional externalContactIdentifier, Swift::String_optional idsIdentifier)
{
  countAndFlagsBits = localContactIdentifier._countAndFlagsBits;
  object = localContactIdentifier._object;
  v5 = externalContactIdentifier.value._countAndFlagsBits;
  v9 = externalContactIdentifier.value._object;
  v6 = idsIdentifier.value._countAndFlagsBits;
  v8 = idsIdentifier.value._object;
  memset(__b, 0, sizeof(__b));
  memset(&__b[2], 0, 32);
  sub_1B98F54D8();
  __b[0] = countAndFlagsBits;
  __b[1] = object;
  sub_1B98F54D8();
  __b[2] = v5;
  __b[3] = v9;

  sub_1B98F54D8();
  __b[4] = v6;
  __b[5] = v8;

  sub_1B98C6860(__b, retstr);

  sub_1B98C68EC(__b);
}

void *sub_1B98C3174@<X0>(void *a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  memset(&__b[2], 0, 32);
  __b[0] = sub_1B98B8364();
  __b[1] = v1;
  __b[2] = sub_1B98B8D2C();
  __b[3] = v2;

  __b[4] = sub_1B98B9608();
  __b[5] = v3;

  sub_1B98C6860(__b, a1);

  return sub_1B98C68EC(__b);
}

BOOL static BlockedHandle.AssociatedContact.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v30 = 0;
  v29 = 0;
  v14 = *a1;
  v17 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v30 = a1;
  v15 = *a2;
  v16 = a2[1];
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v29 = a2;
  sub_1B98F54D8();
  sub_1B98F54D8();
  v18 = MEMORY[0x1BFADD650](v14, v17, v15, v16);

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  sub_1B98F54D8();
  sub_1B98F54D8();
  sub_1B98F54D8();
  sub_1B98F54D8();
  v27[0] = v8;
  v27[1] = v9;
  v28 = v12;
  if (v9)
  {
    sub_1B987D50C(v27, &v21);
    if (*(&v28 + 1))
    {
      v20 = v21;
      v19 = v28;
      v6 = MEMORY[0x1BFADD650](v21, *(&v21 + 1), v28, *(&v28 + 1));
      sub_1B9868BFC(&v19);
      sub_1B9868BFC(&v20);
      sub_1B985EE4C(v27);
      v7 = v6;
      goto LABEL_8;
    }

    sub_1B9868BFC(&v21);
    goto LABEL_10;
  }

  if (*(&v28 + 1))
  {
LABEL_10:
    sub_1B987D318(v27);
    v7 = 0;
    goto LABEL_8;
  }

  sub_1B985EE4C(v27);
  v7 = 1;
LABEL_8:

  if (v7)
  {
    sub_1B98F54D8();
    sub_1B98F54D8();
    sub_1B98F54D8();
    sub_1B98F54D8();
    v25[0] = v10;
    v25[1] = v11;
    v26 = v13;
    if (v11)
    {
      sub_1B987D50C(v25, &v24);
      if (*(&v26 + 1))
      {
        v23 = v24;
        v22 = v26;
        v4 = MEMORY[0x1BFADD650](v24, *(&v24 + 1), v26, *(&v26 + 1));
        sub_1B9868BFC(&v22);
        sub_1B9868BFC(&v23);
        sub_1B985EE4C(v25);
        v5 = v4;
LABEL_18:

        return (v5 & 1) != 0;
      }

      sub_1B9868BFC(&v24);
    }

    else if (!*(&v26 + 1))
    {
      sub_1B985EE4C(v25);
      v5 = 1;
      goto LABEL_18;
    }

    sub_1B987D318(v25);
    v5 = 0;
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_1B98C35A4(uint64_t a1, uint64_t a2)
{
  v15[2] = a1;
  v15[3] = a2;
  sub_1B98F54D8();
  v15[0] = sub_1B98F55E8();
  v15[1] = v2;
  v14[2] = a1;
  v14[3] = a2;
  v12 = MEMORY[0x1BFADD650](v15[0], v2, a1, a2);
  sub_1B9868BFC(v15);
  if (v12)
  {

    v16 = 0;
    v9 = 0;
LABEL_8:

    return v9;
  }

  sub_1B98F54D8();
  v14[0] = sub_1B98F55E8();
  v14[1] = v3;
  v13[2] = a1;
  v13[3] = a2;
  v8 = MEMORY[0x1BFADD650](v14[0], v3, a1, a2);
  sub_1B9868BFC(v14);
  if (v8)
  {

    v16 = 1;
    v9 = 1;
    goto LABEL_8;
  }

  sub_1B98F54D8();
  v13[0] = sub_1B98F55E8();
  v13[1] = v4;
  v7 = MEMORY[0x1BFADD650](v13[0], v4, a1, a2);
  sub_1B9868BFC(v13);
  if (v7)
  {

    v16 = 2;
    v9 = 2;
    goto LABEL_8;
  }

  return 3;
}

BOOL sub_1B98C37F8(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_1B98C3B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98C35A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B98C3BA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98C37E0();
  *a1 = result;
  return result;
}

uint64_t BlockedHandle.AssociatedContact.encode(to:)(uint64_t a1)
{
  v14 = a1;
  v35 = 0;
  v34 = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5CB0, &unk_1B98FC160);
  v15 = *(v28 - 8);
  v16 = v28 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = v7 - v17;
  v35 = MEMORY[0x1EEE9AC00](v14, v2);
  v26 = *v1;
  v27 = v1[1];
  v18 = v1[2];
  v19 = v1[3];
  v20 = v1[4];
  v21 = v1[5];
  v34 = v1;
  v22 = v35[3];
  v23 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v22);
  sub_1B98C69AC();
  sub_1B98F6078();
  v3 = v25;
  sub_1B98F54D8();
  v33 = 0;
  sub_1B98F5F08();
  v29 = v3;
  v30 = v3;
  if (v3)
  {
    v8 = v30;

    result = (*(v15 + 8))(v24, v28);
    v9 = v8;
  }

  else
  {

    v4 = v29;
    sub_1B98F54D8();
    v32 = 1;
    sub_1B98F5EE8();
    v12 = v4;
    v13 = v4;
    if (v4)
    {
      v7[1] = v13;

      return (*(v15 + 8))(v24, v28);
    }

    else
    {

      v5 = v12;
      sub_1B98F54D8();
      v31 = 2;
      sub_1B98F5EE8();
      v10 = v5;
      v11 = v5;
      if (v5)
      {
        v7[0] = v11;
      }

      return (*(v15 + 8))(v24, v28);
    }
  }

  return result;
}

uint64_t BlockedHandle.AssociatedContact.hash(into:)(uint64_t a1)
{
  v12 = 0;
  v13 = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v12 = v1;
  sub_1B98F54D8();
  v11[0] = v3;
  v11[1] = v4;
  sub_1B98F6058();
  sub_1B9868BFC(v11);
  sub_1B98F54D8();
  v10[0] = v5;
  v10[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
  sub_1B98C6A28();
  sub_1B98F6058();
  sub_1B985EE4C(v10);
  sub_1B98F54D8();
  v9[0] = v7;
  v9[1] = v8;
  sub_1B98F6058();
  return sub_1B985EE4C(v9);
}

uint64_t BlockedHandle.AssociatedContact.hashValue.getter()
{
  memset(__b, 0, sizeof(__b));
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  __b[0] = *v0;
  __b[1] = v1;
  __b[2] = v2;
  __b[3] = v3;
  __b[4] = v4;
  __b[5] = v5;
  sub_1B983220C();
  return sub_1B98F5D08();
}

void *BlockedHandle.AssociatedContact.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v33 = a1;
  v47 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CC8, &qword_1B98FC170);
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = &v12 - v37;
  v47 = MEMORY[0x1EEE9AC00](v33, v2);
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v40 = v47[3];
  v41 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v40);
  sub_1B98C69AC();
  v3 = v39;
  sub_1B98F6068();
  v42 = v3;
  v43 = v3;
  if (v3)
  {
    v17 = v43;
    v18 = 6;
  }

  else
  {
    v46 = 0;
    v4 = sub_1B98F5E98();
    v28 = 0;
    v29 = v4;
    v30 = v5;
    v31 = 0;
    v48[0] = v4;
    v48[1] = v5;
    v45 = 1;
    v6 = sub_1B98F5E78();
    v24 = 0;
    v25 = v6;
    v26 = v7;
    v27 = 0;
    v49 = v6;
    v50 = v7;

    v8 = v24;
    v44 = 2;
    v9 = sub_1B98F5E78();
    v20 = v8;
    v21 = v9;
    v22 = v10;
    v23 = v8;
    if (!v8)
    {
      v19 = v48;
      v51 = v21;
      v52 = v22;

      (*(v35 + 8))(v38, v34);
      sub_1B98C6860(v19, v32);
      __swift_destroy_boxed_opaque_existential_1(v33);
      return sub_1B98C68EC(v19);
    }

    v16 = v23;
    (*(v35 + 8))(v38, v34);
    v17 = v16;
    v18 = 7;
  }

  v15 = v18;
  v14 = v17;
  __swift_destroy_boxed_opaque_existential_1(v33);
  if (v15)
  {
    sub_1B9868BFC(v48);
  }

  v13 = v48;
  sub_1B985EE4C(&v49);
  return sub_1B985EE4C((v13 + 4));
}

uint64_t BlockedHandle.AllowedApp.bundleIdentifier.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1B98F54D8();
  return v2;
}

uint64_t BlockedHandle.AllowedApp.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  sub_1B98F54D8();
  v3 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

BOOL static BlockedHandle.AllowedApp.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v6 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1B98F54D8();
  sub_1B98F54D8();
  v7 = MEMORY[0x1BFADD650](v3, v6, v4, v5);

  return (v7 & 1) != 0;
}

BOOL sub_1B98C4800(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_1B98F54D8();
  v7[0] = sub_1B98F55E8();
  v7[1] = v2;
  v6 = MEMORY[0x1BFADD650](v7[0], v2, a1, a2);
  sub_1B9868BFC(v7);

  return (v6 & 1) == 0;
}

BOOL sub_1B98C4A80@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98C4800(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B98C4AD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98C48F8();
  *a1 = result & 1;
  return result;
}

uint64_t BlockedHandle.AllowedApp.encode(to:)(uint64_t a1)
{
  v6 = a1;
  v20 = 0;
  v19 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CE0, &qword_1B98FC178);
  v7 = *(v16 - 8);
  v8 = v16 - 8;
  v9 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v5 - v9;
  v20 = MEMORY[0x1EEE9AC00](v6, v2);
  v14 = *v1;
  v15 = v1[1];
  v19 = v1;
  v10 = v20[3];
  v11 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v10);
  sub_1B98C6B38();
  sub_1B98F6078();
  v3 = v13;
  sub_1B98F54D8();
  sub_1B98F5F08();
  v17 = v3;
  v18 = v3;
  if (v3)
  {
    v5[1] = v18;
  }

  return (*(v7 + 8))(v12, v16);
}

uint64_t BlockedHandle.AllowedApp.hash(into:)(uint64_t a1)
{
  v6 = 0;
  v7 = a1;
  v3 = *v1;
  v4 = v1[1];
  v6 = v1;
  sub_1B98F54D8();
  v5[0] = v3;
  v5[1] = v4;
  sub_1B98F6058();
  return sub_1B9868BFC(v5);
}

uint64_t BlockedHandle.AllowedApp.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1B9832500();
  return sub_1B98F5D08();
}

uint64_t sub_1B98C4E1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t BlockedHandle.AllowedApp.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  v14 = a1;
  v25 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CE8, &unk_1B98FC180);
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = v7 - v18;
  v25 = MEMORY[0x1EEE9AC00](v14, v2);
  v21 = v25[3];
  v22 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v21);
  sub_1B98C6B38();
  v3 = v20;
  sub_1B98F6068();
  v23 = v3;
  v24 = v3;
  if (v3)
  {
    v7[2] = v24;
    v7[0] = v24;
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v4 = sub_1B98F5E98();
    v9 = 0;
    v10 = v4;
    v11 = v5;
    v12 = 0;
    v8 = v26;
    v26[0] = v4;
    v26[1] = v5;
    (*(v16 + 8))(v19, v15);
    sub_1B98C6BB4(v8, v13);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return sub_1B98C6BF4(v8);
  }
}

uint64_t sub_1B98C51A4(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v10 = sub_1B98F5078();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v11);
  v6 = &v4 - v5;
  v13 = v2;
  v12 = v1;
  (*(v8 + 16))();
  (*(v8 + 40))(v7, v6, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t BlockedHandle.normalizedValue.getter()
{
  v1 = (v0 + *(type metadata accessor for BlockedHandle() + 20));
  v3 = *v1;
  v4 = v1[1];
  sub_1B98F54D8();
  return v3;
}

uint64_t BlockedHandle.normalizedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1B98F54D8();
  v3 = (v2 + *(type metadata accessor for BlockedHandle() + 20));
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t BlockedHandle.associatedContacts.getter()
{
  v2 = *(v0 + *(type metadata accessor for BlockedHandle() + 24));
  sub_1B98F54D8();
  return v2;
}

uint64_t BlockedHandle.associatedContacts.setter(uint64_t a1)
{
  sub_1B98F54D8();
  v2 = (v1 + *(type metadata accessor for BlockedHandle() + 24));
  v3 = *v2;
  *v2 = a1;
}

uint64_t BlockedHandle.allowedApps.getter()
{
  v2 = *(v0 + *(type metadata accessor for BlockedHandle() + 28));
  sub_1B98F54D8();
  return v2;
}

uint64_t BlockedHandle.allowedApps.setter(uint64_t a1)
{
  sub_1B98F54D8();
  v2 = (v1 + *(type metadata accessor for BlockedHandle() + 28));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1B98C5608()
{
  sub_1B98F5F98();
  sub_1B983220C();
  return sub_1B98F5A38();
}

uint64_t sub_1B98C5654()
{
  sub_1B98F5F98();
  sub_1B9832500();
  return sub_1B98F5A38();
}

uint64_t BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v84 = a6;
  v85 = a1;
  v98 = a2;
  v99 = a3;
  v94 = a4;
  v95 = a5;
  v117 = 0;
  v116 = 0;
  v114 = 0;
  v115 = 0;
  v113 = 0;
  v112 = 0;
  v108 = 0;
  v109 = 0;
  v88 = 0;
  v104 = sub_1B98F5018();
  v100 = *(v104 - 8);
  v101 = v104 - 8;
  v86 = (*(v100 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](0, v7);
  v102 = &v46 - v86;
  v87 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, &v46 - v86);
  v103 = &v46 - v87;
  v93 = sub_1B98F5078();
  v90 = *(v93 - 8);
  v91 = v93 - 8;
  v89 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v88, v10);
  v92 = &v46 - v89;
  v96 = type metadata accessor for BlockedHandle();
  v11 = (*(*(v96 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v92, v98);
  v13 = v96;
  v14 = v90;
  v97 = &v46 - v15;
  v117 = &v46 - v15;
  v116 = a1;
  v114 = v16;
  v115 = v99;
  v113 = v17;
  v112 = v18;
  v19 = (&v46 + v96[5] - v15);
  *v19 = 0;
  v19[1] = 0;
  v20 = (&v46 + v13[8] - v15);
  *v20 = 0;
  v20[1] = 0;
  (*(v14 + 16))(v12, a1);
  (*(v90 + 32))(v97, v92, v93);
  sub_1B98F54D8();
  *(v97 + v96[6]) = v94;
  sub_1B98F54D8();
  *(v97 + v96[7]) = v95;
  sub_1B98F54D8();
  v21 = v99;
  v22 = (v97 + v96[5]);
  v23 = v22[1];
  *v22 = v98;
  v22[1] = v21;

  sub_1B98F5038();
  (*(v100 + 104))(v102, *MEMORY[0x1E696ED80], v104);
  sub_1B987D48C();
  v107 = sub_1B98F5FA8();
  v106 = *(v100 + 8);
  v105 = v100 + 8;
  v106(v102, v104);
  v106(v103, v104);
  if (v107)
  {
    sub_1B98F54D8();
    if (v99)
    {
      v82 = v98;
      v83 = v99;
      v80 = v99;
      v81 = v98;
      v108 = v98;
      v109 = v99;
      v24 = sub_1B98F5708();
      if ((v24 & 1) == 0)
      {
        sub_1B98F54D8();
        v78 = sub_1B98F5648();
        v79 = PNCopyBestGuessCountryCodeForNumber();
        MEMORY[0x1E69E5920](v78);

        if (v79)
        {
          v77 = v79;
          v75 = v79;
          MEMORY[0x1E69E5928](v79, v25, v26);
          MEMORY[0x1E69E5928](v75, v27, v28);
          MEMORY[0x1E69E5920](v75);
          MEMORY[0x1E69E5920](v75);
          v76 = v75;
        }

        else
        {
          v76 = 0;
        }

        v74 = v76;
        if (v76)
        {
          v73 = v74;
          v68 = v74;
          v69 = sub_1B98F5658();
          v70 = v29;
          MEMORY[0x1E69E5920](v68);
          v71 = v69;
          v72 = v70;
        }

        else
        {
          v71 = 0;
          v72 = 0;
        }

        v65 = v72;
        v64 = v71;
        sub_1B98F54D8();
        v110 = v64;
        v111 = v65;

        v66 = v64;
        v67 = v65;
LABEL_21:
        v42 = v67;
        v43 = (v97 + v96[8]);
        v44 = v43[1];
        *v43 = v66;
        v43[1] = v42;

        sub_1B985EE4C(&v110);
        goto LABEL_22;
      }
    }

    sub_1B98F5058();
    v62 = v30;
    v61 = sub_1B98F5648();
    v63 = PNCopyBestGuessCountryCodeForNumber();
    MEMORY[0x1E69E5920](v61);

    if (v63)
    {
      v60 = v63;
      v58 = v63;
      MEMORY[0x1E69E5928](v63, v31, v32);
      MEMORY[0x1E69E5928](v58, v33, v34);
      MEMORY[0x1E69E5920](v58);
      MEMORY[0x1E69E5920](v58);
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    v57 = v59;
    if (v59)
    {
      v56 = v57;
      v51 = v57;
      v52 = sub_1B98F5658();
      v53 = v35;
      MEMORY[0x1E69E5920](v51);
      v54 = v52;
      v55 = v53;
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    v50 = v55;
    v49 = v54;
    sub_1B98F54D8();
    v110 = v49;
    v111 = v50;
    v36 = sub_1B98F5058();
    v46 = v37;
    v47 = sub_1B98F3070(v36, v37, v49, v50);
    v48 = v38;

    v39 = v48;
    v40 = (v97 + v96[5]);
    v41 = v40[1];
    *v40 = v47;
    v40[1] = v39;

    v66 = v49;
    v67 = v50;
    goto LABEL_21;
  }

LABEL_22:
  sub_1B9833334(v97, v84);

  (*(v90 + 8))(v85, v93);
  return sub_1B983A3AC(v97);
}

uint64_t sub_1B98C5FFC()
{
  sub_1B98F5F98();
  sub_1B983220C();
  return sub_1B98F5A38();
}

uint64_t sub_1B98C6048()
{
  sub_1B98F5F98();
  sub_1B9832500();
  return sub_1B98F5A38();
}

uint64_t BlockedHandle.init(type:value:normalizedValue:associatedContacts:allowedApps:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v34 = a8;
  v38 = a1;
  v24 = a2;
  v25 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v47 = 0;
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v40 = 0;
  v26 = 0;
  v37 = sub_1B98F5018();
  v35 = *(v37 - 8);
  v36 = v37 - 8;
  v20 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v8);
  v27 = &v20 - v20;
  v21 = (*(*(sub_1B98F5078() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26, v9);
  v28 = &v20 - v21;
  v23 = *(*(type metadata accessor for BlockedHandle() - 8) + 64);
  v22 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v27, v38);
  v33 = &v20 - v22;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v39 = &v20 - v13;
  v47 = &v20 - v13;
  v46 = v14;
  v44 = v24;
  v45 = v25;
  v42 = v15;
  v43 = v16;
  v41 = v17;
  v40 = v18;
  (*(v35 + 16))(v12);
  sub_1B98F5028();
  BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v28, v29, v30, v31, v32, v33);
  sub_1B9832680(v33, v39);
  sub_1B9833334(v39, v34);
  (*(v35 + 8))(v38, v37);
  return sub_1B983A3AC(v39);
}

void sub_1B98C6338(uint64_t *a1@<X0>, CommunicationTrust::BlockedHandle::AssociatedContact *a2@<X8>)
{
  v6 = *a1;
  localContactIdentifier._countAndFlagsBits = sub_1B98B8364();
  localContactIdentifier._object = v2;
  externalContactIdentifier.value._countAndFlagsBits = sub_1B98B8D2C();
  externalContactIdentifier.value._object = v3;
  v4.value._countAndFlagsBits = sub_1B98B9608();
  v4.value._object = v5;
  BlockedHandle.AssociatedContact.init(localContactIdentifier:externalContactIdentifier:idsIdentifier:)(a2, localContactIdentifier, externalContactIdentifier, v4);
}

unint64_t sub_1B98C63BC()
{
  v2 = qword_1EBBD5C60;
  if (!qword_1EBBD5C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5C50, &qword_1B98FC138);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5C60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98C6444@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v2 = sub_1B98B5C58();
  return sub_1B98C4E1C(v2, v3, a2);
}

unint64_t sub_1B98C648C()
{
  v2 = qword_1EBBD5C88;
  if (!qword_1EBBD5C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5C78, &qword_1B98FC148);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5C88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98C6514()
{
  swift_unknownObjectRetain();
  CMFItemCopyPhoneNumber();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B98C6570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E695E480];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E480], a2, a3);
  MEMORY[0x1E69E5928](v8, v3, v4);
  String = CFPhoneNumberCreateString();
  (MEMORY[0x1E69E5920])();
  MEMORY[0x1E69E5920](v9);
  if (!String)
  {
    return 0;
  }

  v6 = sub_1B98F5658();
  MEMORY[0x1E69E5920](String);
  return v6;
}

uint64_t sub_1B98C6670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E695E480];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E480], a2, a3);
  MEMORY[0x1E69E5928](v8, v3, v4);
  type metadata accessor for CFPhoneNumberStringOptions();
  sub_1B98F5F98();
  sub_1B98554CC();
  sub_1B98F5C88();
  String = CFPhoneNumberCreateString();
  (MEMORY[0x1E69E5920])();
  MEMORY[0x1E69E5920](v9);
  if (!String)
  {
    return 0;
  }

  v6 = sub_1B98F5658();
  MEMORY[0x1E69E5920](String);
  return v6;
}

uint64_t sub_1B98C67AC()
{
  swift_unknownObjectRetain();
  CMFItemCopyEmailAddress();
  return swift_unknownObjectRelease();
}

void *sub_1B98C6860(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];
  sub_1B98F54D8();
  a2[1] = v3;
  a2[2] = a1[2];
  v5 = a1[3];
  sub_1B98F54D8();
  a2[3] = v5;
  a2[4] = a1[4];
  v7 = a1[5];
  sub_1B98F54D8();
  result = a2;
  a2[5] = v7;
  return result;
}

void *sub_1B98C68EC(void *a1)
{
  v1 = a1[1];

  v2 = a1[3];

  v3 = a1[5];

  return a1;
}

unint64_t sub_1B98C6930()
{
  v2 = qword_1EBBD5CA0;
  if (!qword_1EBBD5CA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5CA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C69AC()
{
  v2 = qword_1EBBD5CA8;
  if (!qword_1EBBD5CA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5CA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C6A28()
{
  v2 = qword_1EBBD5CC0;
  if (!qword_1EBBD5CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5CC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C6ABC()
{
  v2 = qword_1EBBD5CD0;
  if (!qword_1EBBD5CD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5CD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C6B38()
{
  v2 = qword_1EBBD5CD8;
  if (!qword_1EBBD5CD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5CD8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B98C6BB4(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_1B98F54D8();
  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B98C6BF4(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_1B98C6C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v8 = a1;
  v6 = 0;
  v14 = sub_1B98F5018();
  v10 = *(v14 - 8);
  v11 = v14 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2);
  v13 = &v6 - v7;
  v9 = (*(*(type metadata accessor for BlockedHandle() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v8, v3);
  v15 = &v6 - v9;
  sub_1B9833334(v4, &v6 - v9);
  BlockedHandle.type.getter(v13);
  (*(v10 + 32))(v12, v13, v14);
  return sub_1B983A3AC(v15);
}

uint64_t sub_1B98C6D5C(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1B98F5018();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v3 - v4;
  (*(v5 + 16))();
  return BlockedHandle.type.setter(v6);
}

uint64_t BlockedHandle.type.setter(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v8 = sub_1B98F5018();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, v7);
  v4[1] = v4 - v4[0];
  v10 = v2;
  v9 = v1;
  (*(v5 + 16))();
  sub_1B98F5048();
  return (*(v5 + 8))(v7, v8);
}

void (*BlockedHandle.type.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1B98F5018();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v8 = __swift_coroFrameAllocStub(v5);
  v6[4] = v8;
  BlockedHandle.type.getter(v8);
  return sub_1B98C7028;
}

void sub_1B98C7028(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    BlockedHandle.type.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    BlockedHandle.type.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t (*BlockedHandle.value.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = BlockedHandle.value.getter();
  a1[1] = v2;
  return sub_1B98C7188;
}

uint64_t sub_1B98C7188(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if (a2)
  {
    v6 = *a1;
    v7 = a1[1];
    sub_1B98F54D8();
    BlockedHandle.value.setter();
    return sub_1B9868BFC(a1);
  }

  else
  {
    v3 = *a1;
    v4 = a1[1];
    return BlockedHandle.value.setter();
  }
}

uint64_t BlockedHandle.trustScore.getter()
{
  v3 = *(v0 + *(type metadata accessor for BlockedHandle() + 24));
  sub_1B98F54D8();
  sub_1B983220C();
  v4 = sub_1B98F5AA8();

  if (v4)
  {
    return 4;
  }

  else
  {
    return 8;
  }
}

uint64_t BlockedHandle.isoCountryCode.getter()
{
  v1 = (v0 + *(type metadata accessor for BlockedHandle() + 32));
  v3 = *v1;
  v4 = v1[1];
  sub_1B98F54D8();
  return v3;
}

uint64_t BlockedHandle.isoCountryCode.setter(uint64_t a1, uint64_t a2)
{
  sub_1B98F54D8();
  v3 = (v2 + *(type metadata accessor for BlockedHandle() + 32));
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t static BlockedHandle.handles(for:shouldBeBlocked:)(uint64_t a1, char a2)
{
  sub_1B9836338();
  v6 = sub_1B98F5F98();
  v5 = v2;
  MEMORY[0x1E69E5928](a1, v2, v6);
  *v5 = a1;
  sub_1B9851B38();
  v8 = static BlockedHandle.handles(for:shouldBeBlocked:)(v6, a2 & 1);

  return v8;
}

uint64_t static BlockedHandle.handles(for:shouldBeBlocked:)(uint64_t a1, unsigned int a2)
{
  v152 = a1;
  v132 = a2;
  v176 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v153 = v172;
  v172[0] = 0;
  v172[1] = 0;
  v169 = 0;
  v168 = 0;
  memset(v166, 0, sizeof(v166));
  v163[0] = 0;
  v163[1] = 0;
  v160 = 0;
  v159 = 0;
  v124 = 0;
  v125 = sub_1B98F5018();
  v126 = *(v125 - 8);
  v127 = v125 - 8;
  v128 = (*(v126 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0, v2);
  v129 = &v60 - v128;
  v130 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3, &v60 - v128);
  v131 = &v60 - v130;
  v141 = type metadata accessor for BlockedHandle();
  v133 = (*(*(v141 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v152, v132);
  v134 = &v60 - v133;
  v135 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v136 = &v60 - v135;
  v137 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v138 = &v60 - v137;
  v139 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v140 = &v60 - v139;
  v176 = v14;
  v175 = v15 & 1;
  sub_1B9853574();
  v174 = sub_1B98F5468();
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CF0, &unk_1B98FB210);
  v144 = sub_1B98F5F98();
  v142 = v16;
  v150 = *MEMORY[0x1E695C258];
  MEMORY[0x1E69E5928](v150, v16, v17);
  sub_1B98F5658();
  v149 = v18;
  v19 = sub_1B98F5648();
  v20 = v142;
  *v142 = v19;
  v148 = *MEMORY[0x1E695C208];
  MEMORY[0x1E69E5928](v148, v20, v21);
  sub_1B98F5658();
  v147 = v22;
  v23 = sub_1B98F5648();
  v24 = v142;
  v142[1] = v23;
  v146 = *MEMORY[0x1E695C330];
  MEMORY[0x1E69E5928](v146, v24, v25);
  sub_1B98F5658();
  v145 = v26;
  v27 = sub_1B98F5648();
  v28 = v144;
  v142[2] = v27;
  sub_1B9851B38();
  v151 = v28;

  MEMORY[0x1E69E5920](v146);

  MEMORY[0x1E69E5920](v148);

  MEMORY[0x1E69E5920](v150);
  v173 = v151;
  sub_1B98F54D8();
  v171 = v152;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
  sub_1B988BA28();
  sub_1B98F5B88();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CF8, &unk_1B98FC190);
    sub_1B98F5DE8();
    v123 = v170;
    if (!v170)
    {
      break;
    }

    v122 = v123;
    v119 = v123;
    v169 = v123;
    sub_1B98F54D8();
    v120 = sub_1B98F58A8();

    v121 = [v119 areKeysAvailable_];
    MEMORY[0x1E69E5920](v120);
    if (v121)
    {
      v113 = sub_1B98F5F98();
      v112 = v29;
      v115 = *MEMORY[0x1E695C218];
      MEMORY[0x1E69E5928](v115, v29, v30);
      sub_1B98F5658();
      v114 = v31;
      v32 = sub_1B98F5648();
      v33 = v113;
      *v112 = v32;
      sub_1B9851B38();
      v116 = v33;

      MEMORY[0x1E69E5920](v115);
      v117 = sub_1B98F58A8();

      v118 = [v119 areKeysAvailable_];
      MEMORY[0x1E69E5920](v117);
      if (v118)
      {
        v111 = [v119 externalURI];
        if (v111)
        {
          v110 = v111;
          v107 = v111;
          v108.value._countAndFlagsBits = sub_1B98F5658();
          v108.value._object = v34;
          MEMORY[0x1E69E5920](v107);
          v109 = v108;
        }

        else
        {
          v109.value._countAndFlagsBits = 0;
          v109.value._object = 0;
        }

        v106 = v109;
      }

      else
      {
        v106.value._countAndFlagsBits = 0;
        v106.value._object = 0;
      }

      v100 = v106;
      v168 = v106;
      v101 = [v119 identifier];
      v99._countAndFlagsBits = sub_1B98F5658();
      v99._object = v35;
      sub_1B98F54D8();
      BlockedHandle.AssociatedContact.init(localContactIdentifier:externalContactIdentifier:idsIdentifier:)(&v167, v99, v100, 0);
      MEMORY[0x1E69E5920](v101);
      v102 = v167;
      *&v166[1] = v167;
      v105 = [v119 phoneNumbers];
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5D00, &qword_1B98FB1F0);
      v165 = sub_1B98F58B8();
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5890, &qword_1B98FC1A0);
      sub_1B98C819C();
      sub_1B98F5B88();
      MEMORY[0x1E69E5920](v105);
      while (1)
      {
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D18, &unk_1B98FC1A8);
        sub_1B98F5DE8();
        v97 = v164;
        v98 = v96;
        if (!v164)
        {
          break;
        }

        v95 = v97;
        v92 = v97;
        v159 = v97;
        (*(v126 + 104))(v131, *MEMORY[0x1E696ED80], v125);
        v93 = [v92 value];
        v94 = [v93 unformattedInternationalStringValue];
        if (v94)
        {
          v91 = v94;
          v86 = v94;
          v87 = sub_1B98F5658();
          v88 = v36;
          MEMORY[0x1E69E5920](v86);
          v89 = v87;
          v90 = v88;
        }

        else
        {
          v89 = 0;
          v90 = 0;
        }

        v85 = v90;
        v84 = v89;
        MEMORY[0x1E69E5920](v93);
        v155 = v84;
        v156 = v85;
        MEMORY[0x1E69E5928](v92, v37, v38);
        if (v156)
        {
          v157 = v155;
          v158 = v156;
        }

        else
        {
          v82 = [v92 value];
          v83 = [v82 stringValue];
          v157 = sub_1B98F5658();
          v158 = v39;
          MEMORY[0x1E69E5920](v82);
          MEMORY[0x1E69E5920](v83);
          if (v156)
          {
            sub_1B985EE4C(&v155);
          }
        }

        MEMORY[0x1E69E5920](v92);
        v79 = v157;
        v80 = v158;
        v77 = &type metadata for BlockedHandle.AssociatedContact;
        v75 = sub_1B98F5F98();
        v76 = v40;
        sub_1B98F54D8();
        sub_1B98F54D8();
        sub_1B98F54D8();
        v41 = v75;
        object = v102.localContactIdentifier._object;
        countAndFlagsBits = v102.externalContactIdentifier.value._countAndFlagsBits;
        v44 = v102.externalContactIdentifier.value._object;
        v45 = v102.idsIdentifier.value._countAndFlagsBits;
        v46 = v76;
        v47 = v102.idsIdentifier.value._object;
        *v76 = v102.localContactIdentifier._countAndFlagsBits;
        v46[1] = object;
        v46[2] = countAndFlagsBits;
        v46[3] = v44;
        v46[4] = v45;
        v46[5] = v47;
        sub_1B9851B38();
        v78 = v41;
        sub_1B983220C();
        v81 = sub_1B98F5A38();
        v48 = sub_1B98C6048();
        BlockedHandle.init(type:value:normalizedValue:associatedContacts:allowedApps:)(v131, v79, v80, 0, 0, v81, v48, v138);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
        sub_1B98F5A88();
        sub_1B983A3AC(v140);
        MEMORY[0x1E69E5920](v92);
      }

      v73 = v98;
      sub_1B98C8224(v166);
      v74 = [v119 emailAddresses];
      v162 = sub_1B98F58B8();
      sub_1B98C8250();
      sub_1B98F5B88();
      MEMORY[0x1E69E5920](v74);
      while (1)
      {
        sub_1B98F5DE8();
        v72 = v161;
        if (!v161)
        {
          break;
        }

        v71 = v72;
        v70 = v72;
        v160 = v72;
        (*(v126 + 104))(v129, *MEMORY[0x1E696ED90], v125);
        v69 = [v70 value];
        v66 = sub_1B98F5658();
        v67 = v49;
        v64 = &type metadata for BlockedHandle.AssociatedContact;
        v62 = sub_1B98F5F98();
        v63 = v50;
        sub_1B98F54D8();
        sub_1B98F54D8();
        sub_1B98F54D8();
        v51 = v62;
        v52 = v102.localContactIdentifier._object;
        v53 = v102.externalContactIdentifier.value._countAndFlagsBits;
        v54 = v102.externalContactIdentifier.value._object;
        v55 = v102.idsIdentifier.value._countAndFlagsBits;
        v56 = v63;
        v57 = v102.idsIdentifier.value._object;
        *v63 = v102.localContactIdentifier._countAndFlagsBits;
        v56[1] = v52;
        v56[2] = v53;
        v56[3] = v54;
        v56[4] = v55;
        v56[5] = v57;
        sub_1B9851B38();
        v65 = v51;
        sub_1B983220C();
        v68 = sub_1B98F5A38();
        v58 = sub_1B98C6048();
        BlockedHandle.init(type:value:normalizedValue:associatedContacts:allowedApps:)(v129, v66, v67, 0, 0, v68, v58, v134);
        MEMORY[0x1E69E5920](v69);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
        sub_1B98F5A88();
        sub_1B983A3AC(v136);
        MEMORY[0x1E69E5920](v70);
      }

      sub_1B98C82D8(v163);

      MEMORY[0x1E69E5920](v119);
    }

    else
    {
      MEMORY[0x1E69E5920](v119);
    }
  }

  sub_1B98C8170(v172);
  v60 = &v174;
  v61 = v174;
  sub_1B98F54D8();

  sub_1B9868D78(v60);
  return v61;
}

uint64_t *sub_1B98C8170(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B98C819C()
{
  v2 = qword_1EBBD5D10;
  if (!qword_1EBBD5D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5890, &qword_1B98FC1A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D10);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98C8224(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B98C8250()
{
  v2 = qword_1EBBD5D20;
  if (!qword_1EBBD5D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5890, &qword_1B98FC1A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D20);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98C82D8(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

BOOL static BlockedHandle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v36 = a2;
  v58 = 0;
  v57 = 0;
  v43 = sub_1B98F5078();
  v39 = *(v43 - 8);
  v40 = v43 - 8;
  v34 = v39[8];
  v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43, v32);
  v41 = &v7 - v33;
  v35 = v33;
  MEMORY[0x1EEE9AC00](&v7 - v33, v2);
  v42 = &v7 - v35;
  v58 = v3;
  v57 = v36;
  v38 = v39[2];
  v37 = v39 + 2;
  v38();
  (v38)(v41, v36, v43);
  v46 = MEMORY[0x1BFADCF90](v42, v41);
  v45 = v39[1];
  v44 = v39 + 1;
  v45(v41, v43);
  v45(v42, v43);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

  v28 = type metadata accessor for BlockedHandle();
  v4 = (v32 + v28[5]);
  v29 = *v4;
  v30 = v4[1];
  sub_1B98F54D8();
  sub_1B98F54D8();
  v31 = *(v36 + v28[5]);
  sub_1B98F54D8();
  sub_1B98F54D8();
  v55[0] = v29;
  v55[1] = v30;
  v56 = v31;
  if (v30)
  {
    sub_1B987D50C(v55, &v49);
    if (*(&v56 + 1))
    {
      v25 = &v48;
      v48 = v49;
      v24 = &v47;
      v47 = v56;
      v26 = MEMORY[0x1BFADD650](v49, *(&v49 + 1), v56, *(&v56 + 1));
      sub_1B9868BFC(v24);
      sub_1B9868BFC(v25);
      sub_1B985EE4C(v55);
      v27 = v26;
      goto LABEL_8;
    }

    sub_1B9868BFC(&v49);
    goto LABEL_10;
  }

  if (*(&v56 + 1))
  {
LABEL_10:
    sub_1B987D318(v55);
    v27 = 0;
    goto LABEL_8;
  }

  sub_1B985EE4C(v55);
  v27 = 1;
LABEL_8:
  v23 = v27;

  if (v23)
  {
    v21 = *(v32 + v28[6]);
    sub_1B98F54D8();
    v20 = *(v36 + v28[6]);
    sub_1B98F54D8();
    sub_1B983220C();
    v22 = sub_1B98F5A68();

    if ((v22 & 1) == 0)
    {
      return 0;
    }

    v18 = *(v32 + v28[7]);
    sub_1B98F54D8();
    v17 = *(v36 + v28[7]);
    sub_1B98F54D8();
    sub_1B9832500();
    v19 = sub_1B98F5A68();

    if ((v19 & 1) == 0)
    {
      return 0;
    }

    v5 = (v32 + v28[8]);
    v14 = *v5;
    v15 = v5[1];
    sub_1B98F54D8();
    sub_1B98F54D8();
    v16 = *(v36 + v28[8]);
    sub_1B98F54D8();
    sub_1B98F54D8();
    v53[0] = v14;
    v53[1] = v15;
    v54 = v16;
    if (v15)
    {
      sub_1B987D50C(v53, &v52);
      if (*(&v54 + 1))
      {
        v11 = &v51;
        v51 = v52;
        v10 = &v50;
        v50 = v54;
        v12 = MEMORY[0x1BFADD650](v52, *(&v52 + 1), v54, *(&v54 + 1));
        sub_1B9868BFC(v10);
        sub_1B9868BFC(v11);
        sub_1B985EE4C(v53);
        v13 = v12;
LABEL_20:
        v9 = v13;

        return (v9 & 1) != 0;
      }

      sub_1B9868BFC(&v52);
    }

    else if (!*(&v54 + 1))
    {
      sub_1B985EE4C(v53);
      v13 = 1;
      goto LABEL_20;
    }

    sub_1B987D318(v53);
    v13 = 0;
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_1B98C8A4C(uint64_t a1, uint64_t a2)
{
  v21[2] = a1;
  v21[3] = a2;
  sub_1B98F54D8();
  v21[0] = sub_1B98F55E8();
  v21[1] = v2;
  v20[2] = a1;
  v20[3] = a2;
  v16 = MEMORY[0x1BFADD650](v21[0], v2, a1, a2);
  sub_1B9868BFC(v21);
  if (v16)
  {

    v22 = 0;
    v13 = 0;
LABEL_12:

    return v13;
  }

  sub_1B98F54D8();
  v20[0] = sub_1B98F55E8();
  v20[1] = v3;
  v19[2] = a1;
  v19[3] = a2;
  v12 = MEMORY[0x1BFADD650](v20[0], v3, a1, a2);
  sub_1B9868BFC(v20);
  if (v12)
  {

    v22 = 1;
    v13 = 1;
    goto LABEL_12;
  }

  sub_1B98F54D8();
  v19[0] = sub_1B98F55E8();
  v19[1] = v4;
  v18[2] = a1;
  v18[3] = a2;
  v11 = MEMORY[0x1BFADD650](v19[0], v4, a1, a2);
  sub_1B9868BFC(v19);
  if (v11)
  {

    v22 = 2;
    v13 = 2;
    goto LABEL_12;
  }

  sub_1B98F54D8();
  v18[0] = sub_1B98F55E8();
  v18[1] = v5;
  v17[2] = a1;
  v17[3] = a2;
  v10 = MEMORY[0x1BFADD650](v18[0], v5, a1, a2);
  sub_1B9868BFC(v18);
  if (v10)
  {

    v22 = 3;
    v13 = 3;
    goto LABEL_12;
  }

  sub_1B98F54D8();
  v17[0] = sub_1B98F55E8();
  v17[1] = v6;
  v9 = MEMORY[0x1BFADD650](v17[0], v6, a1, a2);
  sub_1B9868BFC(v17);
  if (v9)
  {

    v22 = 4;
    v13 = 4;
    goto LABEL_12;
  }

  return 5;
}

BOOL sub_1B98C8DD8(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_1B98C9098()
{
  v2 = qword_1EBBD5D30;
  if (!qword_1EBBD5D30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98C92E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98C8A4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B98C9334@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98C8DC0();
  *a1 = result;
  return result;
}

unint64_t sub_1B98C93C0()
{
  v2 = qword_1EDBDB268;
  if (!qword_1EDBDB268)
  {
    sub_1B98F5078();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C9440()
{
  v2 = qword_1EDBDB248;
  if (!qword_1EDBDB248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
    sub_1B98380C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB248);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C94D8()
{
  v2 = qword_1EDBDB250;
  if (!qword_1EDBDB250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B70, &qword_1B98FBE40);
    sub_1B98384E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB250);
    return WitnessTable;
  }

  return v2;
}

uint64_t BlockedHandle.hash(into:)(uint64_t a1)
{
  v23 = a1;
  v2 = v1;
  v25 = v2;
  v37 = 0;
  v36 = 0;
  v14 = 0;
  v13 = sub_1B98F5078();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v25);
  v12 = &v8 - v9;
  v37 = a1;
  v36 = v4;
  (*(v10 + 16))();
  sub_1B98C982C();
  sub_1B98F6058();
  (*(v10 + 8))(v12, v13);
  v26 = type metadata accessor for BlockedHandle();
  v5 = (v25 + v26[5]);
  v15 = *v5;
  v16 = v5[1];
  sub_1B98F54D8();
  v17 = v35;
  v35[0] = v15;
  v35[1] = v16;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
  v30 = sub_1B98C6A28();
  sub_1B98F6058();
  sub_1B985EE4C(v17);
  v18 = *(v25 + v26[6]);
  sub_1B98F54D8();
  v20 = &v34;
  v34 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
  sub_1B98C98AC();
  sub_1B98F6058();
  sub_1B98BF3E4(v20);
  v21 = *(v25 + v26[7]);
  sub_1B98F54D8();
  v24 = &v33;
  v33 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B70, &qword_1B98FBE40);
  sub_1B98C9934();
  sub_1B98F6058();
  sub_1B98BF51C(v24);
  v6 = (v25 + v26[8]);
  v27 = *v6;
  v28 = v6[1];
  sub_1B98F54D8();
  v31 = v32;
  v32[0] = v27;
  v32[1] = v28;
  sub_1B98F6058();
  return sub_1B985EE4C(v31);
}

unint64_t sub_1B98C982C()
{
  v2 = qword_1EDBDB260;
  if (!qword_1EDBDB260)
  {
    sub_1B98F5078();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB260);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C98AC()
{
  v2 = qword_1EBBD5D58;
  if (!qword_1EBBD5D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C9934()
{
  v2 = qword_1EBBD5D60;
  if (!qword_1EBBD5D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B70, &qword_1B98FBE40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D60);
    return WitnessTable;
  }

  return v2;
}

uint64_t BlockedHandle.hashValue.getter()
{
  type metadata accessor for BlockedHandle();
  sub_1B9853574();
  return sub_1B98F5D08();
}

unint64_t sub_1B98C9A04()
{
  v2 = qword_1EDBDAC40;
  if (!qword_1EDBDAC40)
  {
    sub_1B98F5078();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAC40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C9A84()
{
  v2 = qword_1EDBDAC28;
  if (!qword_1EDBDAC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
    sub_1B98C9B1C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAC28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C9B1C()
{
  v2 = qword_1EDBDAFE0;
  if (!qword_1EDBDAFE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAFE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C9B98()
{
  v2 = qword_1EDBDAC38;
  if (!qword_1EDBDAC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B70, &qword_1B98FBE40);
    sub_1B98C9C30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAC38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C9C30()
{
  v2 = qword_1EDBDAFF0;
  if (!qword_1EDBDAFF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAFF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t BlockedHandle.init(inputString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v53 = a1;
  v54 = a2;
  v59 = sub_1B98CA638;
  v66 = sub_1B98CA6D8;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v87 = 0;
  v88 = 0;
  v84 = 0;
  v80 = 0;
  v81 = 0;
  v76 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v40 = 0;
  v33 = sub_1B98F5078();
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](0, v3);
  v37 = v21 - v36;
  v38 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4, v21 - v36);
  v39 = v21 - v38;
  v91 = v21 - v38;
  v41 = sub_1B98F5018();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v40, v6);
  v45 = v21 - v44;
  v46 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7, v21 - v44);
  v47 = v21 - v46;
  v90 = v21 - v46;
  v49 = *(*(type metadata accessor for BlockedHandle() - 8) + 64);
  v48 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v54, v9);
  v50 = v21 - v48;
  v51 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10, v21 - v48);
  v52 = v21 - v51;
  v89 = v21 - v51;
  v87 = v12;
  v88 = v11;
  sub_1B98F54D8();
  v86[2] = v53;
  v86[3] = v54;
  v13 = sub_1B98F55E8();
  v58 = v86;
  v86[0] = v13;
  v86[1] = v14;
  v56 = sub_1B987D3E8();
  v63 = MEMORY[0x1E69E6158];
  v57 = MEMORY[0x1E69E5EF8];
  v55 = sub_1B98CA5E0();
  sub_1B98CA5F4();
  v60 = sub_1B98F5B78();
  sub_1B98CA60C(v58);
  v85 = v60;
  v61 = &v69;
  v70 = v59;
  v71 = 0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D70, &qword_1B98FC1D8);
  v15 = sub_1B98CA708();
  v16 = v64;
  result = sub_1B985D064(v66, v61, v62, v63, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v65);
  v67 = v16;
  v68 = result;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v31 = v68;
    sub_1B98CA790(&v85);
    v84 = v31;
    if (sub_1B98F58E8() < 2 || sub_1B98F58E8() > 3)
    {
      v21[2] = sub_1B98F55E8();
      v21[3] = v20;
      v21[1] = sub_1B98F50B8();
      sub_1B98CA7BC();
      v21[4] = swift_allocError();
      sub_1B98F50C8();
      swift_willThrow();
    }

    else
    {
      v28 = MEMORY[0x1E69E6158];
      sub_1B98F5948();
      v27 = v83;
      v80 = v82;
      v81 = v83;
      sub_1B98CA83C(v82, v83, v47);
      sub_1B98F5948();
      v29 = v78;
      v30 = v79;
      v76 = v78;
      v77 = v79;
      if (sub_1B98F58E8() == 3)
      {
        sub_1B98F5948();
        v25 = v72;
        v26 = v73;
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      v23 = v26;
      v22 = v25;
      v74 = v25;
      v75 = v26;
      (*(v42 + 16))(v45, v47, v41);
      sub_1B98F5028();
      (*(v34 + 16))(v37, v39, v33);
      v24 = sub_1B98C5608();
      v18 = sub_1B98C5654();
      BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v37, v22, v23, v24, v18, v50);
      v19 = sub_1B9832680(v50, v52);
      (*(v34 + 8))(v39, v33, v19);
      (*(v42 + 8))(v47, v41);

      sub_1B9833334(v52, v32);

      return sub_1B983A3AC(v52);
    }
  }

  return result;
}

uint64_t sub_1B98CA60C(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_1B98CA678@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2], a1[3]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

unint64_t sub_1B98CA708()
{
  v2 = qword_1EBBD5D78;
  if (!qword_1EBBD5D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5D70, &qword_1B98FC1D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D78);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98CA790(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B98CA7BC()
{
  v2 = qword_1EBBD5D80;
  if (!qword_1EBBD5D80)
  {
    sub_1B98F50B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98CA83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[2] = a1;
  v18[3] = a2;
  sub_1B98F54D8();
  v18[0] = sub_1B98F55E8();
  v18[1] = v3;
  v17[2] = a1;
  v17[3] = a2;
  v16 = MEMORY[0x1BFADD650](v18[0], v3, a1, a2);
  sub_1B9868BFC(v18);
  if (v16)
  {

    v12 = *MEMORY[0x1E696ED80];
    v4 = sub_1B98F5018();
    return (*(*(v4 - 8) + 104))(a3, v12);
  }

  else
  {

    sub_1B98F54D8();
    v17[0] = sub_1B98F55E8();
    v17[1] = v6;
    v11 = MEMORY[0x1BFADD650](v17[0], v6, a1, a2);
    sub_1B9868BFC(v17);

    if (v11)
    {
      v10 = *MEMORY[0x1E696ED90];
      v7 = sub_1B98F5018();
      return (*(*(v7 - 8) + 104))(a3, v10);
    }

    else
    {
      v9 = *MEMORY[0x1E696EDA0];
      v8 = sub_1B98F5018();
      return (*(*(v8 - 8) + 104))(a3, v9);
    }
  }
}

unint64_t sub_1B98CAA7C()
{
  v2 = qword_1EDBDB218;
  if (!qword_1EDBDB218)
  {
    type metadata accessor for BlockedHandle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB218);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98CAAFC()
{
  v4 = qword_1EDBDB4B0;
  if (!qword_1EDBDB4B0)
  {
    sub_1B983220C();
    v3 = sub_1B98F5AD8();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EDBDB4B0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B98CAB9C()
{
  v4 = qword_1EDBDB4B8;
  if (!qword_1EDBDB4B8)
  {
    sub_1B9832500();
    v3 = sub_1B98F5AD8();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EDBDB4B8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B98CAC6C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B98CAD84(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B98CAEEC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B98CB110(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

unint64_t sub_1B98CB2A4()
{
  v2 = qword_1EBBD5D88;
  if (!qword_1EBBD5D88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98CB338()
{
  v2 = qword_1EBBD5D90;
  if (!qword_1EBBD5D90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98CB3CC()
{
  v2 = qword_1EBBD5D98;
  if (!qword_1EBBD5D98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98CB460()
{
  v2 = qword_1EBBD5DA0;
  if (!qword_1EBBD5DA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5DA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98CB4F4()
{
  v2 = qword_1EBBD5DA8;
  if (!qword_1EBBD5DA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5DA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98CB588()
{
  v2 = qword_1EBBD5DB0;
  if (!qword_1EBBD5DB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5DB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98CB61C()
{
  v2 = qword_1EBBD5DB8;
  if (!qword_1EBBD5DB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5DB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98CB6E0()
{
  if (qword_1EDBDB1D0 != -1)
  {
    swift_once();
  }

  return &qword_1EDBDB1D8;
}

uint64_t sub_1B98CB770()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B98CB810(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v11 = a2;
  v12 = a3;
  v10 = v3;
  sub_1B98CB8A8(a1, v9);
  sub_1B98CB914(v9, v3 + 2);
  swift_unknownObjectRetain();
  v3[7] = a2;
  v3[8] = a3;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1B98CB8A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t BlockList.areHandlesBlocked(_:)(uint64_t a1)
{
  *(v2 + 216) = v1;
  *(v2 + 208) = a1;
  *(v2 + 136) = v2;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  memset((v2 + 96), 0, 0x28uLL);
  *(v2 + 344) = 0;
  v3 = sub_1B98F5078();
  *(v2 + 224) = v3;
  v11 = *(v3 - 8);
  *(v2 + 232) = v11;
  v4 = *(v11 + 64) + 15;
  *(v2 + 240) = swift_task_alloc();
  v5 = type metadata accessor for BlockedHandle();
  *(v2 + 248) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v2 + 256) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DC0, &qword_1B98FC978) - 8) + 64);
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  v7 = sub_1B98F5138();
  *(v2 + 280) = v7;
  v13 = *(v7 - 8);
  *(v2 + 288) = v13;
  v8 = *(v13 + 64) + 15;
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  v9 = *(v2 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1B98CBB88, 0);
}

uint64_t sub_1B98CBB88()
{
  v29 = v0[31];
  v26 = v0[28];
  v1 = v0[27];
  v25 = v0[26];
  v0[17] = v0;
  v22 = *(v1 + 56);
  v21 = *(v1 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v23 = (*(v21 + 40))(v25, ObjectType);
  sub_1B98F54D8();
  v0[20] = v23;
  swift_unknownObjectRelease();
  sub_1B98F54D8();
  sub_1B98C982C();
  v24 = sub_1B98F54D8();

  v0[21] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DC8, &qword_1B98FC980);
  sub_1B98CCCC0();
  sub_1B98F5AE8();
  v27 = sub_1B98F5A28();

  v0[22] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DD8, &unk_1B98FC988);
  v3 = sub_1B98CCE30();
  v31 = sub_1B985D064(sub_1B98CCD48, 0, v28, v29, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v30);
  v18 = v20[31];
  sub_1B98CCEB8(v20 + 22);
  v20[23] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
  v20[38] = sub_1B9853574();
  sub_1B9871820();
  v19 = sub_1B98F5AE8();
  v20[39] = v19;
  v20[24] = v19;
  if (sub_1B98F5AA8())
  {
    v14 = v20[20];
    sub_1B98F54D8();

    sub_1B98CCEE4(v20 + 20);
    v7 = v20[37];
    v10 = v20[34];
    v11 = v20[33];
    v12 = v20[32];
    v13 = v20[30];

    v8 = *(v20[17] + 8);
    v9 = v20[17];

    return v8(v14);
  }

  else
  {
    sub_1B98CB8A8(v20[27] + 16, (v20 + 7));
    v15 = v20[10];
    v16 = v20[11];
    __swift_project_boxed_opaque_existential_1(v20 + 7, v15);
    v17 = (*(v16 + 32) + **(v16 + 32));
    v4 = *(*(v16 + 32) + 4);
    v5 = swift_task_alloc();
    v20[40] = v5;
    *v5 = v20[17];
    v5[1] = sub_1B98CC06C;

    return v17(v19, v15, v16);
  }
}

uint64_t sub_1B98CC06C(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 320);
  v9[17] = *v2;
  v10 = v9 + 17;
  v9[41] = a1;
  v9[42] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_1B98CCBB4;
  }

  else
  {
    v5 = *v10;
    v6 = sub_1B98CC1DC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0);
}

uint64_t sub_1B98CC1DC()
{
  v57 = v0;
  v42 = v0[41];
  v1 = v0[37];
  v40 = v0[36];
  v41 = v0[35];
  v0[17] = v0;
  v0[25] = v42;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = sub_1B98F1B1C();
  (*(v40 + 16))(v1, v2, v41);
  sub_1B98F54D8();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;

  v44 = swift_allocObject();
  *(v44 + 16) = sub_1B98CCF44;
  *(v44 + 24) = v43;

  v50 = sub_1B98F5118();
  v51 = sub_1B98F5BD8();
  v46 = swift_allocObject();
  *(v46 + 16) = 32;
  v47 = swift_allocObject();
  *(v47 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1B98D0AF0;
  *(v45 + 24) = v44;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1B98D1004;
  *(v48 + 24) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v49 = v3;

  *v49 = sub_1B98D0FF4;
  v49[1] = v46;

  v49[2] = sub_1B98D0FFC;
  v49[3] = v47;

  v49[4] = sub_1B98D1010;
  v49[5] = v48;
  sub_1B9851B38();

  if (os_log_type_enabled(v50, v51))
  {
    v4 = *(v39 + 336);
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v37 = sub_1B985263C(0);
    v38 = sub_1B985263C(1);
    v52 = buf;
    v53 = v37;
    v54 = v38;
    sub_1B9852690(2, &v52);
    sub_1B9852690(1, &v52);
    v55 = sub_1B98D0FF4;
    v56 = v46;
    sub_1B98526A4(&v55, &v52, &v53, &v54);
    if (v4)
    {
    }

    v55 = sub_1B98D0FFC;
    v56 = v47;
    sub_1B98526A4(&v55, &v52, &v53, &v54);
    v55 = sub_1B98D1010;
    v56 = v48;
    sub_1B98526A4(&v55, &v52, &v53, &v54);
    _os_log_impl(&dword_1B982F000, v50, v51, "Got server response: %s", buf, 0xCu);
    sub_1B985281C(v37);
    sub_1B985281C(v38);
    sub_1B98F5C08();
  }

  else
  {
  }

  v33 = *(v39 + 328);
  v35 = *(v39 + 304);
  v28 = *(v39 + 296);
  v29 = *(v39 + 280);
  v34 = *(v39 + 248);
  v30 = *(v39 + 216);
  v27 = *(v39 + 288);
  MEMORY[0x1E69E5920](v50);
  (*(v27 + 8))(v28, v29);
  v32 = *(v30 + 56);
  v31 = *(v30 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  (*(v31 + 56))(v33, ObjectType);
  swift_unknownObjectRelease();
  sub_1B98F54D8();
  sub_1B98F5498();
  memcpy((v39 + 96), (v39 + 16), 0x28uLL);
  while (1)
  {
    v25 = *(v39 + 272);
    v24 = *(v39 + 264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DF0, &qword_1B98FC998);
    sub_1B98F5558();
    sub_1B98D101C(v24, v25);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DF8, &qword_1B98FC9A0);
    if ((*(*(v26 - 8) + 48))(v25, 1) == 1)
    {
      break;
    }

    v7 = *(v39 + 272);
    v23 = *(v39 + 256);
    v22 = *(v39 + 240);
    v20 = *(v39 + 224);
    v19 = *(v39 + 232);
    v21 = *(v7 + *(v26 + 48));
    v8 = sub_1B9832680(v7, v23);
    *(v39 + 344) = v21 & 1;
    (*(v19 + 16))(v22, v23, v20, v8);
    *(v39 + 345) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E00, &unk_1B98FCAE0);
    sub_1B98F55C8();
    sub_1B983A3AC(v23);
  }

  v12 = *(v39 + 328);
  v13 = *(v39 + 312);
  sub_1B98D11CC((v39 + 96));
  v18 = *(v39 + 160);
  sub_1B98F54D8();

  sub_1B98CCEE4((v39 + 160));
  v9 = *(v39 + 296);
  v14 = *(v39 + 272);
  v15 = *(v39 + 264);
  v16 = *(v39 + 256);
  v17 = *(v39 + 240);

  v10 = *(*(v39 + 136) + 8);
  v11 = *(v39 + 136);

  return v10(v18);
}

uint64_t sub_1B98CCBB4()
{
  v5 = v0[39];
  v6 = v0[37];
  v7 = v0[34];
  v8 = v0[33];
  v9 = v0[32];
  v10 = v0[30];
  v0[17] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  sub_1B98CCEE4(v0 + 20);

  v1 = *(*(v11 + 136) + 8);
  v2 = *(v11 + 136);
  v3 = *(v11 + 336);

  return v1();
}

unint64_t sub_1B98CCCC0()
{
  v2 = qword_1EBBD5DD0;
  if (!qword_1EBBD5DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5DC8, &qword_1B98FC980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5DD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98CCD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v7 = a1;
  v14 = 0;
  v11 = 0;
  v2 = sub_1B98F5078();
  v9 = *(v2 - 8);
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v7);
  v13 = &v6 - v8;
  v14 = v3;
  (*(v9 + 16))();
  v12 = sub_1B98C5608();
  v4 = sub_1B98C5654();
  return BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v13, v11, v11, v12, v4, v10);
}

unint64_t sub_1B98CCE30()
{
  v2 = qword_1EBBD5DE0;
  if (!qword_1EBBD5DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5DD8, &unk_1B98FC988);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5DE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98CCEB8(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_1B98CCEE4(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B98CCF10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t BlockList.contacts()()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x1EEE6DFA0](sub_1B98CCF88, 0);
}

uint64_t sub_1B98CCF88()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = v0;
  v2 = sub_1B98CD0A8();
  v3 = *(*(v6 + 16) + 8);
  v4 = *(v6 + 16);

  return v3(v2);
}

uint64_t *sub_1B98CD0A8()
{
  v82 = 0;
  v116 = 0;
  v114 = 0;
  v113 = 0;
  v112[1] = 0;
  v112[0] = 0;
  v105 = 0;
  v104 = 0;
  v99 = 0;
  v83 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5980, &qword_1B98FB410) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v0);
  v84 = v20 - v83;
  v86 = sub_1B98F5138();
  v87 = *(v86 - 8);
  v88 = v87;
  v89 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86 - 8, v86);
  v90 = v20 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v1;
  v92 = *(v1 + 56);
  v91 = *(v1 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v115 = (*(v91 + 8))(ObjectType);
  v93 = BYTE1(v115);
  swift_unknownObjectRelease();
  if (v93)
  {
    v22 = *(v85 + 56);
    v21 = *(v85 + 64);
    swift_unknownObjectRetain();
    v18 = swift_getObjectType();
    v23 = (*(v21 + 96))(v18);
    swift_unknownObjectRelease();
    v32 = v23;
    v33 = v81;
    return v32;
  }

  v75 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E08, &unk_1B98FC9B8);
  v114 = sub_1B98F5458();
  v73 = sub_1B9836338();
  v113 = sub_1B98F5458();
  v74 = &v109;
  sub_1B98CB8A8(v85 + 16, &v109);
  v77 = v110;
  v76 = v111;
  __swift_project_boxed_opaque_existential_1(v74, v110);
  v3 = v75;
  v4 = (*(v76 + 16))(v77);
  v78 = v3;
  v79 = v4;
  v80 = v3;
  if (!v3)
  {
    v108 = v79;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5470, &qword_1B98FA8D0);
    sub_1B98D12A8();
    sub_1B98F5B88();
    __swift_destroy_boxed_opaque_existential_1(&v109);
    for (i = v78; ; i = v61)
    {
      v68 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E18, &qword_1B98FC9C8);
      sub_1B98F5DE8();
      v69 = v106;
      v70 = v107;
      if (v107 >> 60 == 15)
      {
        break;
      }

      v66 = v69;
      v67 = v70;
      v63 = v70;
      v64 = v69;
      v104 = v69;
      v105 = v70;
      v65 = sub_1B98E8C10(v69, v70);
      if (v65)
      {
        v62 = v65;
        v60 = v65;
        v99 = v65;
        v5 = v65;
        v98 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
        sub_1B98F5908();
        v59 = [v60 identifier];
        v57 = sub_1B98F5658();
        v58 = v6;
        sub_1B98D1598(v64, v63);
        v94 = v57;
        v95 = v58;
        v96 = v64;
        v97 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E20, &qword_1B98FC9F0);
        sub_1B98F5908();

        sub_1B98371D0(v64, v63);
        v61 = v68;
      }

      else
      {
        v7 = v90;
        v8 = sub_1B98F1B1C();
        (*(v88 + 16))(v7, v8, v86);
        v55 = sub_1B98F5118();
        v52 = v55;
        v54 = sub_1B98F5BC8();
        v53 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
        v56 = sub_1B98F5F98();
        if (os_log_type_enabled(v55, v54))
        {
          v48 = v68;
          v41 = sub_1B98F5C28();
          v37 = v41;
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
          v39 = 0;
          v42 = sub_1B985263C(0);
          v40 = v42;
          v43 = sub_1B985263C(v39);
          v103 = v41;
          v102 = v42;
          v101 = v43;
          v44 = 0;
          v45 = &v103;
          sub_1B9852690(0, &v103);
          sub_1B9852690(v44, v45);
          v100 = v56;
          v49 = v20;
          MEMORY[0x1EEE9AC00](v20, v9);
          v46 = &v20[-6];
          v20[-4] = v10;
          v20[-3] = &v102;
          v20[-2] = &v101;
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
          sub_1B9852720();
          v11 = v48;
          sub_1B98F57D8();
          v50 = v11;
          v51 = v49;
          if (v11)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1B982F000, v52, v53, "Failed to unarchive contactData", v37, 2u);
            v35 = 0;
            sub_1B985281C(v40);
            sub_1B985281C(v43);
            sub_1B98F5C08();

            v36 = v50;
          }
        }

        else
        {

          v36 = v68;
        }

        v34 = v36;

        (*(v88 + 8))(v90, v86);
        sub_1B98371D0(v64, v63);
        v61 = v34;
      }
    }

    sub_1B98D1330(v112);
    v28 = 0;
    v12 = sub_1B98F5988();
    (*(*(v12 - 8) + 56))(v84, 1);
    v25 = 7;
    v27 = swift_allocObject();
    v24 = v27 + 16;

    swift_weakInit();

    v26 = v114;
    sub_1B98F54D8();
    v13 = swift_allocObject();
    v14 = v26;
    v15 = v28;
    v16 = v13;
    v17 = v27;
    v29 = v16;
    v16[2] = v28;
    v16[3] = v15;
    v16[4] = v17;
    v16[5] = v14;

    v30 = sub_1B98CE0E8(v28, v28, v84, &unk_1B98FC9D8, v29, MEMORY[0x1E69E7CA8] + 8);
    sub_1B98975AC(v84);

    v31 = v113;
    sub_1B98F54D8();
    sub_1B98D1250(&v113);
    sub_1B98D127C(&v114);
    v32 = v31;
    v33 = v68;
    return v32;
  }

  v20[1] = v80;
  __swift_destroy_boxed_opaque_existential_1(&v109);
  sub_1B98D1250(&v113);
  return sub_1B98D127C(&v114);
}

uint64_t sub_1B98CDC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a5;
  v5[23] = a4;
  v5[19] = v5;
  v5[20] = 0;
  v5[21] = 0;
  v5[22] = 0;
  memset(v5 + 7, 0, 0x28uLL);
  v6 = type metadata accessor for BlockedHandle();
  v5[25] = v6;
  v11 = *(v6 - 8);
  v5[26] = v11;
  v7 = *(v11 + 64) + 15;
  v5[27] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[20] = a4 + 16;
  v5[21] = a5;
  v9 = v5[19];

  return MEMORY[0x1EEE6DFA0](sub_1B98CDDB8, 0);
}

uint64_t sub_1B98CDDB8()
{
  v20 = *(v0 + 184);
  *(v0 + 152) = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v17 = v19[25];
    v18 = v19[24];
    v19[22] = Strong;
    sub_1B98F54D8();
    sub_1B9853574();
    sub_1B98F5A58();
    memcpy(v19 + 7, v19 + 2, 0x28uLL);
    while (1)
    {
      v15 = v19[28];
      v16 = v19[25];
      v14 = v19[26];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v14 + 48))(v15, 1, v16) == 1)
      {
        break;
      }

      v12 = v19[27];
      sub_1B9832680(v19[28], v12);
      v11 = *(Strong + 56);
      v10 = *(Strong + 64);
      swift_unknownObjectRetain();
      ObjectType = swift_getObjectType();
      (*(v10 + 48))(1, v12, ObjectType);
      swift_unknownObjectRelease();
      sub_1B983A3AC(v12);
    }

    sub_1B9871430(v19 + 7);
    v1 = *(Strong + 56);
    v13 = *(Strong + 64);
    swift_unknownObjectRetain();
    swift_getObjectType();
    v2 = (*(v13 + 24))();
    *(v3 + 2) = 1;
    v2();
    swift_unknownObjectRelease();
  }

  v5 = v19[28];
  v9 = v19[27];

  v6 = *(v19[19] + 8);
  v7 = v19[19];

  return v6();
}

uint64_t sub_1B98CE0E8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  v47 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v48 = a6;
  v49 = "Fatal error";
  v50 = "Unexpectedly found nil while unwrapping an Optional value";
  v51 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v52 = &unk_1B98FCA78;
  v53 = 0;
  v66 = a6;
  v54 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5980, &qword_1B98FB410) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57, v6);
  v58 = &v17 - v54;

  v64 = v56;
  v65 = v57;
  sub_1B9897BD4(v55, v58);
  v59 = sub_1B98F5988();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  if ((*(v60 + 48))(v58, 1) == 1)
  {
    sub_1B98975AC(v58);
    v45 = 0;
  }

  else
  {
    v44 = sub_1B98F5978();
    (*(v60 + 8))(v58, v59);
    v45 = v44;
  }

  v41 = v45 | 0x1000;
  v43 = *(v57 + 16);
  v42 = *(v57 + 24);
  swift_unknownObjectRetain();

  if (v43)
  {
    v39 = v43;
    v40 = v42;
    v33 = v42;
    v34 = v43;
    swift_getObjectType();
    v35 = sub_1B98F5958();
    v36 = v7;
    swift_unknownObjectRelease();
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v31 = v38;
  v32 = v37;
  if (v47)
  {
    v29 = v46;
    v30 = v47;
    v8 = v53;
    v27 = sub_1B98F5698();
    v9 = *(v27 + 16);
    sub_1B98D0BF4(v27 + 32, &v64, v48, &v62);
    if (v8)
    {
      __break(1u);
    }

    v26 = v62;

    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v25 = v28;
  if (v28)
  {
    v19 = v25;
    v20 = v25;
  }

  else
  {

    v21 = v64;
    v22 = v65;

    v10 = swift_allocObject();
    v11 = v21;
    v12 = v22;
    v13 = v32;
    v14 = v31;
    v23 = v10;
    v10[2] = v48;
    v10[3] = v11;
    v10[4] = v12;
    v24 = 0;
    if (v13 != 0 || v14 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v32;
      v63[3] = v31;
      v24 = v63;
    }

    v20 = swift_task_create();
  }

  sub_1B98D0BE0();
  v18 = v15;

  return v18;
}

uint64_t BlockList.add(handle:)(uint64_t a1)
{
  v2[11] = v1;
  v2[10] = a1;
  v2[7] = v2;
  v2[8] = 0;
  v2[9] = 0;
  v3 = sub_1B98F5078();
  v2[12] = v3;
  v9 = *(v3 - 8);
  v2[13] = v9;
  v4 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for BlockedHandle();
  v2[15] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[8] = a1;
  v2[9] = v1;
  v7 = v2[7];

  return MEMORY[0x1EEE6DFA0](sub_1B98CE7CC, 0);
}

uint64_t sub_1B98CE7CC()
{
  v12 = v0[16];
  v13 = v0[15];
  v10 = v0[14];
  v1 = v0[13];
  v2 = v0[12];
  v11 = v0[11];
  v3 = v0[10];
  v0[7] = v0;
  (*(v1 + 16))();
  v9 = sub_1B98C5608();
  v4 = sub_1B98C5654();
  BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v10, 0, 0, v9, v4, v12);
  sub_1B98CB8A8(v11 + 16, (v0 + 2));
  v15 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  sub_1B98F5F98();
  sub_1B9833334(v12, v5);
  sub_1B9851B38();
  sub_1B9853574();
  v18 = sub_1B98F5A38();
  v0[17] = v18;
  v17 = (*(v16 + 72) + **(v16 + 72));
  v6 = *(*(v16 + 72) + 4);
  v7 = swift_task_alloc();
  *(v14 + 144) = v7;
  *v7 = *(v14 + 56);
  v7[1] = sub_1B98CE9E8;

  return v17(v18, v15, v16);
}

uint64_t sub_1B98CE9E8()
{
  v8 = *v1;
  v2 = *(*v1 + 144);
  v8[7] = *v1;
  v9 = v8 + 7;
  v8[19] = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = sub_1B98CEC7C;
  }

  else
  {
    v3 = v8[17];

    v4 = *v9;
    v5 = sub_1B98CEB64;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0);
}

uint64_t sub_1B98CEB64()
{
  v8 = v0[16];
  v9 = v0[14];
  v5 = v0[11];
  v0[7] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v7 = *(v5 + 56);
  v6 = *(v5 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  (*(v6 + 48))(1, v8, ObjectType);
  swift_unknownObjectRelease();
  sub_1B983A3AC(v8);

  v2 = *(v0[7] + 8);
  v3 = v0[7];

  return v2();
}

uint64_t sub_1B98CEC7C()
{
  v1 = v0[17];
  v6 = v0[16];
  v7 = v0[14];
  v0[7] = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_1B983A3AC(v6);

  v2 = *(*(v8 + 56) + 8);
  v3 = *(v8 + 56);
  v4 = *(v8 + 152);

  return v2();
}

uint64_t BlockList.add(contact:)(uint64_t a1)
{
  v2[22] = v1;
  v2[21] = a1;
  v2[17] = v2;
  v2[18] = 0;
  v2[19] = 0;
  v2[20] = 0;
  memset(v2 + 12, 0, 0x28uLL);
  v3 = type metadata accessor for BlockedHandle();
  v2[23] = v3;
  v8 = *(v3 - 8);
  v2[24] = v8;
  v4 = *(v8 + 64) + 15;
  v2[25] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[18] = a1;
  v2[19] = v1;
  v6 = v2[17];

  return MEMORY[0x1EEE6DFA0](sub_1B98CEEB4, 0);
}

uint64_t sub_1B98CEEB4()
{
  v13 = v0[23];
  v1 = v0[21];
  v0[17] = v0;
  v14 = static BlockedHandle.handles(for:shouldBeBlocked:)(v1, 1);
  v0[27] = v14;
  v0[20] = v14;
  v0[28] = sub_1B9853574();
  if (sub_1B98F5AA8())
  {

    v5 = v12[26];
    v8 = v12[25];

    v6 = *(v12[17] + 8);
    v7 = v12[17];

    return v6();
  }

  else
  {
    sub_1B98CB8A8(v12[22] + 16, (v12 + 7));
    v9 = v12[10];
    v10 = v12[11];
    __swift_project_boxed_opaque_existential_1(v12 + 7, v9);
    v11 = (*(v10 + 72) + **(v10 + 72));
    v2 = *(*(v10 + 72) + 4);
    v3 = swift_task_alloc();
    v12[29] = v3;
    *v3 = v12[17];
    v3[1] = sub_1B98CF12C;

    return v11(v14, v9, v10);
  }
}

uint64_t sub_1B98CF12C()
{
  v7 = *v1;
  v2 = *(*v1 + 232);
  *(v7 + 136) = *v1;
  v8 = (v7 + 136);
  *(v7 + 240) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_1B98CF550;
  }

  else
  {
    v3 = *v8;
    v4 = sub_1B98CF294;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0);
}

uint64_t sub_1B98CF294()
{
  v23 = v0[28];
  v21 = v0[27];
  v22 = v0[23];
  v17 = v0[22];
  v18 = v0[21];
  v0[17] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v20 = *(v17 + 56);
  v19 = *(v17 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  (*(v19 + 88))(1, v18, ObjectType);
  swift_unknownObjectRelease();
  sub_1B98F54D8();
  sub_1B98F5A58();
  memcpy(v0 + 12, v0 + 2, 0x28uLL);
  while (1)
  {
    v14 = v16[26];
    v15 = v16[23];
    v13 = v16[24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v13 + 48))(v14, 1, v15) == 1)
    {
      break;
    }

    v12 = v16[25];
    v9 = v16[22];
    sub_1B9832680(v16[26], v12);
    v11 = *(v9 + 56);
    v10 = *(v9 + 64);
    swift_unknownObjectRetain();
    v2 = swift_getObjectType();
    (*(v10 + 48))(1, v12, v2);
    swift_unknownObjectRelease();
    sub_1B983A3AC(v12);
  }

  v7 = v16[27];
  sub_1B9871430(v16 + 12);

  v3 = v16[26];
  v8 = v16[25];

  v4 = *(v16[17] + 8);
  v5 = v16[17];

  return v4();
}

uint64_t sub_1B98CF550()
{
  v5 = v0[27];
  v6 = v0[26];
  v7 = v0[25];
  v0[17] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v1 = *(*(v8 + 136) + 8);
  v2 = *(v8 + 136);
  v3 = *(v8 + 240);

  return v1();
}

uint64_t BlockList.remove(handle:)(uint64_t a1)
{
  v2[11] = v1;
  v2[10] = a1;
  v2[7] = v2;
  v2[8] = 0;
  v2[9] = 0;
  v3 = sub_1B98F5078();
  v2[12] = v3;
  v9 = *(v3 - 8);
  v2[13] = v9;
  v4 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for BlockedHandle();
  v2[15] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[8] = a1;
  v2[9] = v1;
  v7 = v2[7];

  return MEMORY[0x1EEE6DFA0](sub_1B98CF774, 0);
}

uint64_t sub_1B98CF774()
{
  v12 = v0[16];
  v13 = v0[15];
  v10 = v0[14];
  v1 = v0[13];
  v2 = v0[12];
  v11 = v0[11];
  v3 = v0[10];
  v0[7] = v0;
  (*(v1 + 16))();
  v9 = sub_1B98C5608();
  v4 = sub_1B98C5654();
  BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v10, 0, 0, v9, v4, v12);
  sub_1B98CB8A8(v11 + 16, (v0 + 2));
  v15 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  sub_1B98F5F98();
  sub_1B9833334(v12, v5);
  sub_1B9851B38();
  sub_1B9853574();
  v18 = sub_1B98F5A38();
  v0[17] = v18;
  v17 = (*(v16 + 88) + **(v16 + 88));
  v6 = *(*(v16 + 88) + 4);
  v7 = swift_task_alloc();
  *(v14 + 144) = v7;
  *v7 = *(v14 + 56);
  v7[1] = sub_1B98CF990;

  return v17(v18, v15, v16);
}

uint64_t sub_1B98CF990()
{
  v8 = *v1;
  v2 = *(*v1 + 144);
  v8[7] = *v1;
  v9 = v8 + 7;
  v8[19] = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = sub_1B98CFC24;
  }

  else
  {
    v3 = v8[17];

    v4 = *v9;
    v5 = sub_1B98CFB0C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0);
}

uint64_t sub_1B98CFB0C()
{
  v8 = v0[16];
  v9 = v0[14];
  v5 = v0[11];
  v0[7] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v7 = *(v5 + 56);
  v6 = *(v5 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  (*(v6 + 48))(0, v8, ObjectType);
  swift_unknownObjectRelease();
  sub_1B983A3AC(v8);

  v2 = *(v0[7] + 8);
  v3 = v0[7];

  return v2();
}

uint64_t sub_1B98CFC24()
{
  v1 = v0[17];
  v6 = v0[16];
  v7 = v0[14];
  v0[7] = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_1B983A3AC(v6);

  v2 = *(*(v8 + 56) + 8);
  v3 = *(v8 + 56);
  v4 = *(v8 + 152);

  return v2();
}

uint64_t BlockList.remove(contact:)(uint64_t a1)
{
  v2[22] = v1;
  v2[21] = a1;
  v2[17] = v2;
  v2[18] = 0;
  v2[19] = 0;
  v2[20] = 0;
  memset(v2 + 12, 0, 0x28uLL);
  v3 = type metadata accessor for BlockedHandle();
  v2[23] = v3;
  v8 = *(v3 - 8);
  v2[24] = v8;
  v4 = *(v8 + 64) + 15;
  v2[25] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[18] = a1;
  v2[19] = v1;
  v6 = v2[17];

  return MEMORY[0x1EEE6DFA0](sub_1B98CFE5C, 0);
}

uint64_t sub_1B98CFE5C()
{
  v6 = v0[22];
  v5 = v0[21];
  v0[17] = v0;
  v1 = sub_1B98CB698();
  v11 = static BlockedHandle.handles(for:shouldBeBlocked:)(v5, v1 & 1);
  v0[27] = v11;
  v0[20] = v11;
  sub_1B98CB8A8(v6 + 16, (v0 + 7));
  v8 = v0[10];
  v9 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v8);
  v10 = (*(v9 + 88) + **(v9 + 88));
  v2 = *(*(v9 + 88) + 4);
  v3 = swift_task_alloc();
  *(v7 + 224) = v3;
  *v3 = *(v7 + 136);
  v3[1] = sub_1B98D0004;

  return v10(v11, v8, v9);
}

uint64_t sub_1B98D0004()
{
  v7 = *v1;
  v2 = *(*v1 + 224);
  *(v7 + 136) = *v1;
  v8 = (v7 + 136);
  *(v7 + 232) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_1B98D0410;
  }

  else
  {
    v3 = *v8;
    v4 = sub_1B98D016C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0);
}

uint64_t sub_1B98D016C()
{
  v22 = v0[27];
  v21 = v0[23];
  v17 = v0[22];
  v18 = v0[21];
  v0[17] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v20 = *(v17 + 56);
  v19 = *(v17 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  (*(v19 + 88))(0, v18, ObjectType);
  swift_unknownObjectRelease();
  sub_1B98F54D8();
  sub_1B9853574();
  sub_1B98F5A58();
  memcpy(v0 + 12, v0 + 2, 0x28uLL);
  while (1)
  {
    v14 = v16[26];
    v15 = v16[23];
    v13 = v16[24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v13 + 48))(v14, 1, v15) == 1)
    {
      break;
    }

    v12 = v16[25];
    v9 = v16[22];
    sub_1B9832680(v16[26], v12);
    v11 = *(v9 + 56);
    v10 = *(v9 + 64);
    swift_unknownObjectRetain();
    v2 = swift_getObjectType();
    (*(v10 + 48))(0, v12, v2);
    swift_unknownObjectRelease();
    sub_1B983A3AC(v12);
  }

  v6 = v16[27];
  v7 = v16[26];
  v8 = v16[25];
  sub_1B9871430(v16 + 12);

  v3 = *(v16[17] + 8);
  v4 = v16[17];

  return v3();
}

uint64_t sub_1B98D0410()
{
  v5 = v0[27];
  v6 = v0[26];
  v7 = v0[25];
  v0[17] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v1 = *(*(v8 + 136) + 8);
  v2 = *(v8 + 136);
  v3 = *(v8 + 232);

  return v1();
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BlockList.isEmpty()()
{
  v19 = v0;
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v18 = (*(v13 + 8))(ObjectType);
  swift_unknownObjectRelease();
  if (v18 != 2)
  {
    v11 = v18;
    return v11 & 1;
  }

  sub_1B98CB8A8(v0 + 16, v15);
  v9 = v16;
  v8 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v10 = (*(v8 + 96))(v9);
  if (!v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    swift_unknownObjectRetain();
    swift_getObjectType();
    v2 = (*(v6 + 24))();
    *v3 = v10 & 1;
    v2();
    swift_unknownObjectRelease();
    v11 = v10;
    return v11 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v5 & 1;
}

uint64_t BlockList.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1B98D0750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a5;
  v5[24] = a4;
  v5[19] = v5;
  v5[20] = 0;
  v5[21] = 0;
  v5[22] = 0;
  v5[13] = 0;
  v5[14] = 0;
  v5[15] = 0;
  v5[16] = 0;
  v5[17] = 0;
  v5[18] = 0;
  v5[20] = a4 + 16;
  v5[21] = a5;
  v6 = v5[19];
  return MEMORY[0x1EEE6DFA0](sub_1B98D07BC, 0);
}

uint64_t sub_1B98D07BC()
{
  v17 = *(v0 + 192);
  *(v0 + 152) = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v15 = v16[25];
    v16[22] = Strong;
    sub_1B98F54D8();
    v16[23] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E20, &qword_1B98FC9F0);
    sub_1B98D1CAC();
    sub_1B98F5B88();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E30, &qword_1B98FCA88);
      sub_1B98F5DE8();
      v11 = v16[2];
      v12 = v16[3];
      v13 = v16[4];
      v14 = v16[5];
      if (!v12)
      {
        break;
      }

      v16[15] = v11;
      v16[16] = v12;
      v16[17] = v13;
      v16[18] = v14;
      v10 = *(Strong + 56);
      v9 = *(Strong + 64);
      swift_unknownObjectRetain();
      ObjectType = swift_getObjectType();
      (*(v9 + 80))(1, v11, v12, v13, v14, ObjectType);
      swift_unknownObjectRelease();
      sub_1B98371D0(v13, v14);
    }

    sub_1B98D1D34(v16 + 13);
    v2 = *(Strong + 56);
    v8 = *(Strong + 64);
    swift_unknownObjectRetain();
    swift_getObjectType();
    v3 = (*(v8 + 24))();
    *(v4 + 1) = 1;
    v3();
    swift_unknownObjectRelease();
  }

  v5 = *(v16[19] + 8);
  v6 = v16[19];

  return v5();
}

uint64_t sub_1B98D0AF0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5458, &qword_1B98FB070);
  v1 = sub_1B98D0B58();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B98D0B58()
{
  v2 = qword_1EBBD5DE8;
  if (!qword_1EBBD5DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5458, &qword_1B98FB070);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5DE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98D0BF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_1B98F5E08();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_1B98D0DB4(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98D0EC8;

  return v7(a1);
}

uint64_t sub_1B98D0EC8()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

char *sub_1B98D101C(char *a1, char *a2)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DF8, &qword_1B98FC9A0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DC0, &qword_1B98FC978);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B98F5078();
    (*(*(v2 - 8) + 32))(a2, a1);
    v5 = type metadata accessor for BlockedHandle();
    *&a2[v5[5]] = *&a1[v5[5]];
    *&a2[v5[6]] = *&a1[v5[6]];
    *&a2[v5[7]] = *&a1[v5[7]];
    *&a2[v5[8]] = *&a1[v5[8]];
    a2[*(v8 + 48)] = a1[*(v8 + 48)];
    (*(v9 + 56))();
  }

  return a2;
}

uint64_t *sub_1B98D11CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_1B98D120C();
  return a1;
}

uint64_t *sub_1B98D1250(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_1B98D127C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B98D12A8()
{
  v2 = qword_1EBBD5E10;
  if (!qword_1EBBD5E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5470, &qword_1B98FA8D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E10);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98D1330(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B98D135C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B98D1440;

  return sub_1B98D0750(a1, v6, v7, v8, v9);
}

uint64_t sub_1B98D1440()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B98D1598(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_1B98D1614(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B98D16F8;

  return sub_1B98CDC48(a1, v6, v7, v8, v9);
}

uint64_t sub_1B98D16F8()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B98D1874(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B98D1968;

  return sub_1B98D0DB4(a1, v6);
}

uint64_t sub_1B98D1968()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B98D1A90(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B98D1B84;

  return sub_1B98D0DB4(a1, v6);
}

uint64_t sub_1B98D1B84()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t sub_1B98D1CAC()
{
  v2 = qword_1EBBD5E28;
  if (!qword_1EBBD5E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5E20, &qword_1B98FC9F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E28);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98D1D34(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B98D1D9C()
{
  v0 = sub_1B98D1DEC(2, 0, 0);
  LOWORD(v2) = v0;
  BYTE2(v2) = BYTE2(v0);
  return v2;
}

uint64_t sub_1B98D1DEC(char a1, char a2, char a3)
{
  LOBYTE(v4) = a1;
  BYTE1(v4) = a2;
  BYTE2(v4) = a3;
  return v4;
}

BOOL sub_1B98D1E08(char a1, char a2)
{
  if (a1 != 2)
  {
    if (a2 != 2)
    {
      return (a1 & 1) == (a2 & 1);
    }

    return 0;
  }

  return a2 == 2;
}

uint64_t sub_1B98D1EE0(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  sub_1B98F54D8();
  v12[0] = sub_1B98F55E8();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x1BFADD650](v12[0], v2, a1, a2);
  sub_1B9868BFC(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  sub_1B98F54D8();
  v11[0] = sub_1B98F55E8();
  v11[1] = v3;
  v6 = MEMORY[0x1BFADD650](v11[0], v3, a1, a2);
  sub_1B9868BFC(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

BOOL sub_1B98D22D4(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_1B98F54D8();
  v7[0] = sub_1B98F55E8();
  v7[1] = v2;
  v6 = MEMORY[0x1BFADD650](v7[0], v2, a1, a2);
  sub_1B9868BFC(v7);

  return (v6 & 1) == 0;
}

uint64_t sub_1B98D2504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98D1EE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B98D2554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98D2084();
  *a1 = result;
  return result;
}

uint64_t sub_1B98D26E8(uint64_t a1, unsigned int a2)
{
  v26 = a1;
  v34 = a2;
  v38 = 0;
  v37 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FB8, &qword_1B98FD348);
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16, v2);
  v20 = v8 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FC0, &qword_1B98FD350);
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21, v3);
  v25 = v8 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FC8, &qword_1B98FD358);
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v26, v34);
  v31 = v8 - v30;
  v38 = v4;
  v37 = v5;
  v32 = v4[3];
  v33 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v32);
  sub_1B98D4E50();
  sub_1B98F6078();
  if (v34 == 2)
  {
    v12 = &v35;
    v35 = 0;
    sub_1B98D4FC4();
    sub_1B98F5ED8();
    (*(v22 + 8))(v25, v21);
    v13 = v15;
LABEL_6:
    v8[1] = v13;
    return (*(v28 + 8))(v31, v27);
  }

  v14 = v34;
  v9 = v34;
  v8[2] = &v36;
  v36 = 1;
  sub_1B98D4F48();
  sub_1B98F5ED8();
  v6 = v15;
  sub_1B98F5F18();
  v10 = v6;
  v11 = v6;
  if (!v6)
  {
    (*(v17 + 8))(v20, v16);
    v13 = v10;
    goto LABEL_6;
  }

  v8[0] = v11;
  (*(v17 + 8))(v20, v16);
  return (*(v28 + 8))(v31, v27);
}

uint64_t sub_1B98D2AC8(uint64_t a1, char a2)
{
  if (a2 != 2)
  {
    sub_1B98F6058();
  }

  return sub_1B98F6058();
}

BOOL sub_1B98D2C18@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98D22D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B98D2C68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98D23CC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B98D2D14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98D2658();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B98D2D64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98D2698();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B98D2E44(uint64_t *a1)
{
  v64 = a1;
  v87 = 0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5F78, &qword_1B98FD318);
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54, v1);
  v58 = v16 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5F80, &qword_1B98FD320);
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59, v2);
  v63 = v16 - v62;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5F88, &qword_1B98FD328);
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v64, v3);
  v69 = v16 - v68;
  v87 = v4;
  v71 = v4[3];
  v72 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v71);
  sub_1B98D4E50();
  v5 = v70;
  sub_1B98F6068();
  v73 = v5;
  v74 = v5;
  if (v5)
  {
    v27 = v74;
  }

  else
  {
    v6 = sub_1B98F5EC8();
    v50 = &v82;
    v82 = v6;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5F90, &qword_1B98FD330);
    sub_1B98E08A0();
    v83 = sub_1B98F5C78();
    v84 = v7;
    v85 = v8;
    v86 = v9;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FA0, &qword_1B98FD338);
    v52 = sub_1B98E0928();
    sub_1B98F5B38();
    v53 = v81;
    if (v81 == 2)
    {
      goto LABEL_12;
    }

    v48 = v53;
    v42 = v53;
    v46 = v83;
    v43 = v84;
    v44 = v85;
    v45 = v86;
    swift_unknownObjectRetain();
    v77 = v46;
    v78 = v43;
    v79 = v44;
    v80 = v45;
    v47 = sub_1B98F5B58();
    swift_unknownObjectRelease();
    if ((v47 & 1) == 0)
    {
LABEL_12:
      v21 = 0;
      v25 = sub_1B98F5D38();
      v19 = 1;
      v26 = swift_allocError();
      v24 = v14;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FB0, &qword_1B98FD340);
      v20 = v24 + *(v15 + 48);
      *v24 = &unk_1F379B4C0;
      v22 = sub_1B98F5E68();
      v23 = sub_1B98F55E8();
      sub_1B98F5D28();
      (*(*(v25 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8]);
      swift_willThrow();
      sub_1B98E09B0(&v83);
      (*(v66 + 8))(v69, v65);
      v27 = v26;
    }

    else if (v42)
    {
      v34 = &v76;
      v76 = v42 & 1;
      sub_1B98D4F48();
      v11 = v73;
      sub_1B98F5E58();
      v35 = v11;
      v36 = v11;
      if (!v11)
      {
        v12 = sub_1B98F5EA8();
        v31 = 0;
        v32 = v12;
        v33 = 0;
        v30 = v12;
        v88 = v12 & 1;
        (*(v55 + 8))(v58, v54);
        v37 = v30 & 1;
        v38 = v31;
        goto LABEL_11;
      }

      v17 = v36;
      sub_1B98E09B0(&v83);
      (*(v66 + 8))(v69, v65);
      v27 = v17;
    }

    else
    {
      v39 = &v75;
      v75 = v42 & 1;
      sub_1B98D4FC4();
      v10 = v73;
      sub_1B98F5E58();
      v40 = v10;
      v41 = v10;
      if (!v10)
      {
        v88 = 2;
        (*(v60 + 8))(v63, v59);
        v37 = 2;
        v38 = v40;
LABEL_11:
        v29 = v38;
        v28 = v37;
        sub_1B98E09B0(&v83);
        (*(v66 + 8))(v69, v65);
        __swift_destroy_boxed_opaque_existential_1(v64);
        return v28;
      }

      v18 = v41;
      sub_1B98E09B0(&v83);
      (*(v66 + 8))(v69, v65);
      v27 = v18;
    }
  }

  v16[1] = v27;
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_1B98D376C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B98D2E44(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1B98D3900(int a1, int a2)
{
  v4 = BYTE1(a1);
  v5 = BYTE2(a1);
  v6 = BYTE1(a2);
  v7 = BYTE2(a2);
  return sub_1B98D1E08(a1, a2) && (v4 & 1) == (v6 & 1) && (v5 & 1) == (v7 & 1);
}

uint64_t sub_1B98D39F0(uint64_t a1, uint64_t a2)
{
  v15[2] = a1;
  v15[3] = a2;
  sub_1B98F54D8();
  v15[0] = sub_1B98F55E8();
  v15[1] = v2;
  v14[2] = a1;
  v14[3] = a2;
  v12 = MEMORY[0x1BFADD650](v15[0], v2, a1, a2);
  sub_1B9868BFC(v15);
  if (v12)
  {

    v16 = 0;
    v9 = 0;
LABEL_8:

    return v9;
  }

  sub_1B98F54D8();
  v14[0] = sub_1B98F55E8();
  v14[1] = v3;
  v13[2] = a1;
  v13[3] = a2;
  v8 = MEMORY[0x1BFADD650](v14[0], v3, a1, a2);
  sub_1B9868BFC(v14);
  if (v8)
  {

    v16 = 1;
    v9 = 1;
    goto LABEL_8;
  }

  sub_1B98F54D8();
  v13[0] = sub_1B98F55E8();
  v13[1] = v4;
  v7 = MEMORY[0x1BFADD650](v13[0], v4, a1, a2);
  sub_1B9868BFC(v13);
  if (v7)
  {

    v16 = 2;
    v9 = 2;
    goto LABEL_8;
  }

  return 3;
}

BOOL sub_1B98D3C44(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_1B98D3F14(uint64_t a1, int a2)
{
  v11 = a1;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v32 = a2;
  v18 = a2;
  v14 = BYTE1(a2);
  v10 = BYTE2(a2);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5F68, &qword_1B98FD310);
  v12 = *(v20 - 8);
  v13 = v20 - 8;
  v2 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v11, v3);
  v17 = v9 - v5;
  v31 = v4;
  LOBYTE(v29) = v18;
  HIBYTE(v29) = v14;
  v30 = v6;
  v15 = v4[3];
  v16 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v15);
  sub_1B98D5138();
  sub_1B98F6078();
  v22 = &v28;
  v28 = v18;
  v19 = &v27;
  v27 = 0;
  sub_1B98E0824();
  v7 = v21;
  sub_1B98F5F28();
  v23 = v7;
  v24 = v7;
  if (v7)
  {
    v9[2] = v24;
  }

  else
  {
    v26 = 1;
    sub_1B98F5F18();
    v9[6] = 0;
    v9[7] = 0;
    v25 = 2;
    sub_1B98F5F18();
    v9[4] = 0;
    v9[5] = 0;
  }

  return (*(v12 + 8))(v17, v20);
}

uint64_t sub_1B98D4218()
{
  sub_1B98D5040();
  sub_1B98F6058();
  sub_1B98F6058();
  return sub_1B98F6058();
}

uint64_t sub_1B98D437C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98D39F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B98D43C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98D3C2C();
  *a1 = result;
  return result;
}

uint64_t sub_1B98D44C4(uint64_t *a1)
{
  v24 = a1;
  v40 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5F58, &qword_1B98FD308);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = &v7 - v28;
  v40 = MEMORY[0x1EEE9AC00](v24, v1);
  v31 = v40[3];
  v32 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v31);
  sub_1B98D5138();
  v2 = v30;
  sub_1B98F6068();
  v33 = v2;
  v34 = v2;
  if (v2)
  {
    v10 = v34;
  }

  else
  {
    v21 = &v38;
    v38 = 0;
    sub_1B98E07A8();
    v3 = v33;
    sub_1B98F5EB8();
    v22 = v3;
    v23 = v3;
    if (!v3)
    {
      v17 = v39;
      v41 = v39;
      v37 = 1;
      v4 = sub_1B98F5EA8();
      v18 = 0;
      v19 = v4;
      v20 = 0;
      v13 = v4;
      v42 = v4 & 1;
      v36 = 2;
      v5 = sub_1B98F5EA8();
      v14 = 0;
      v15 = v5;
      v16 = 0;
      v12 = v5;
      v11 = 1;
      v43 = v5 & 1;
      (*(v26 + 8))(v29, v25);
      __swift_destroy_boxed_opaque_existential_1(v24);
      LOBYTE(v35) = v17;
      BYTE1(v35) = v13 & v11;
      BYTE2(v35) = v12 & 1;
      return v35;
    }

    v9 = v23;
    (*(v26 + 8))(v29, v25);
    v10 = v9;
  }

  v7 = v10;
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v8;
}

uint64_t sub_1B98D4824@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B98D44C4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = BYTE1(result) & 1;
    a2[2] = BYTE2(result) & 1;
  }

  return result;
}

uint64_t sub_1B98D48C0(uint64_t a1)
{
  LOWORD(v3) = *v1;
  BYTE2(v3) = *(v1 + 2);
  return sub_1B98D3F14(a1, v3);
}

uint64_t sub_1B98D4934()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1B98D4454();
}

uint64_t sub_1B98D4970()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1B98D4218();
}

BOOL sub_1B98D49C4(uint64_t a1, uint64_t a2)
{
  LOWORD(v4) = *a1;
  BYTE2(v4) = *(a1 + 2);
  LOWORD(v3) = *a2;
  BYTE2(v3) = *(a2 + 2);
  return sub_1B98D3900(v4, v3);
}

uint64_t sub_1B98D4A20()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_1B98D4A4C()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_1B98D4A78()
{
  v5 = v0;
  os_unfair_lock_lock(v0 + 4);
  sub_1B98D4B50(&v0[5], &v3);
  sub_1B9870E78(v0 + 4);
  LOWORD(v2) = v3;
  BYTE2(v2) = v4;
  return v2;
}

uint64_t sub_1B98D4B50@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = *(result + 2);
  return result;
}

void sub_1B98D4B7C(int a1)
{
  v3 = a1;
  v4 = BYTE1(a1);
  v5 = BYTE2(a1);
  os_unfair_lock_lock(v1 + 4);
  LOBYTE(v6) = v3;
  BYTE1(v6) = v4;
  BYTE2(v6) = v5;
  sub_1B98D4C98(&v1[5], v6);
  sub_1B9870E78(v2 + 4);
}

uint64_t sub_1B98D4C98(uint64_t result, int a2)
{
  *result = a2;
  *(result + 2) = BYTE2(a2);
  return result;
}

void (*sub_1B98D4CE0(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v2 = sub_1B98D4A78();
  *(a1 + 8) = v2;
  *(a1 + 10) = BYTE2(v2);
  return sub_1B98D4D4C;
}

void sub_1B98D4D4C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    LOWORD(v3) = *(a1 + 4);
    BYTE2(v3) = *(a1 + 10);
    sub_1B98D4B7C(v3);
  }

  else
  {
    LOWORD(v4) = *(a1 + 4);
    BYTE2(v4) = *(a1 + 10);
    sub_1B98D4B7C(v4);
  }
}

unint64_t sub_1B98D4DD4()
{
  v2 = qword_1EBBD5E38;
  if (!qword_1EBBD5E38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D4E50()
{
  v2 = qword_1EBBD5E40;
  if (!qword_1EBBD5E40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D4ECC()
{
  v2 = qword_1EBBD5E48;
  if (!qword_1EBBD5E48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D4F48()
{
  v2 = qword_1EBBD5E50;
  if (!qword_1EBBD5E50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D4FC4()
{
  v2 = qword_1EBBD5E58;
  if (!qword_1EBBD5E58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D5040()
{
  v2 = qword_1EBBD5E60;
  if (!qword_1EBBD5E60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D50BC()
{
  v2 = qword_1EBBD5E68;
  if (!qword_1EBBD5E68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D5138()
{
  v2 = qword_1EBBD5E70;
  if (!qword_1EBBD5E70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98D51B4()
{
  v2 = qword_1EBBD5E78;
  if (!qword_1EBBD5E78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5E78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98D5230@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint32_t *a3@<X8>)
{
  v20 = a1;
  v19 = a2;
  v9 = *MEMORY[0x1E6995908];
  MEMORY[0x1E69E5928]();
  sub_1B98F5658();
  sub_1B98E0C0C();
  queue = sub_1B98F5BF8();
  v4 = swift_allocObject();

  swift_weakInit();

  v17 = sub_1B98E0C70;
  v18 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_1B98D5534;
  v16 = &block_descriptor;
  handler = _Block_copy(&aBlock);

  v6 = sub_1B98F5698();

  v11 = notify_register_dispatch((v6 + 32), a1, queue, handler);
  swift_unknownObjectRelease();
  _Block_release(handler);
  MEMORY[0x1E69E5920](queue);

  MEMORY[0x1E69E5920](v9);
  result = v11;
  *a3 = v11;
  return result;
}

uint64_t sub_1B98D5420()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v1 = *(Strong + 40);

    sub_1B98F3648();

    v2 = *(Strong + 32);

    sub_1B98F3648();

    v5 = sub_1B98D1D9C();
    LOWORD(v4) = v5;
    BYTE2(v4) = BYTE2(v5);
    sub_1B98D4B7C(v4);
  }

  return result;
}

uint64_t sub_1B98D5534(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1B98D558C()
{
  v1 = atomic_load((v0 + 48));
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  sub_1B98DDB60(v8 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4FF8, &qword_1B98F8B20);
  v7 = *(*(v6 - 8) + 8);
  v7(v8 + 23);
  (v7)(v8 + 24, v6);
  v2 = *(v8 + 32);

  v3 = *(v8 + 40);

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E98, &qword_1B98FCAB8);
  (*(*(v4 - 8) + 8))(v8 + 48);
  return v8;
}

uint64_t sub_1B98D56E0(uint64_t a1)
{
  v159 = a1;
  v119 = sub_1B98DDD24;
  v120 = sub_1B98DDD98;
  v121 = sub_1B98DDD88;
  v122 = sub_1B98DDD90;
  v123 = sub_1B98DDDA4;
  v124 = sub_1B98DE02C;
  v125 = sub_1B98DE0B8;
  v126 = sub_1B98DE0C4;
  v127 = sub_1B98DE0D0;
  v128 = sub_1B98DE038;
  v129 = sub_1B98DE160;
  v130 = sub_1B98DE0A8;
  v131 = sub_1B98DE0B0;
  v132 = sub_1B98DE0DC;
  v133 = sub_1B98DE150;
  v134 = sub_1B98DE158;
  v135 = sub_1B98DE16C;
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v136 = 0;
  v170 = 0;
  v137 = 0;
  v138 = sub_1B98F5078();
  v140 = *(v138 - 8);
  v139 = v138 - 8;
  v141 = v140;
  v142 = *(v140 + 64);
  v143 = (v142 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2);
  v144 = v60 - v143;
  v145 = sub_1B98F5138();
  v146 = *(v145 - 8);
  v147 = v145 - 8;
  v148 = (*(v146 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v145, v3);
  v149 = v60 - v148;
  v150 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60 - v148, v5);
  v151 = v60 - v150;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA0, &qword_1B98FCAC0);
  v152 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, v7);
  v163 = v60 - v152;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  v161 = *(v164 - 8);
  v162 = v164 - 8;
  v153 = v161;
  v154 = *(v161 + 64);
  v155 = (v154 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v159, v8);
  v156 = v60 - v155;
  v157 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v158 = v60 - v157;
  v178 = v60 - v157;
  v177 = v12;
  v176 = v1;
  v160 = *(v1 + 40);

  sub_1B98F376C(v159);

  if ((*(v161 + 48))(v163, 1, v164) == 1)
  {
    v45 = v149;
    sub_1B98DDC10(v163);
    v46 = sub_1B98F1F44();
    (*(v146 + 16))(v45, v46, v145);
    v68 = v141;
    (*(v140 + 16))(v144, v159, v138);
    v69 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v72 = 7;
    v73 = swift_allocObject();
    (*(v140 + 32))(v73 + v69, v144, v138);
    v81 = sub_1B98F5118();
    v82 = sub_1B98F5BD8();
    v70 = 17;
    v75 = swift_allocObject();
    *(v75 + 16) = 32;
    v76 = swift_allocObject();
    *(v76 + 16) = 8;
    v71 = 32;
    v47 = swift_allocObject();
    v48 = v73;
    v74 = v47;
    *(v47 + 16) = v119;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v74;
    v78 = v49;
    *(v49 + 16) = v120;
    *(v49 + 24) = v50;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v77 = sub_1B98F5F98();
    v79 = v51;

    v52 = v75;
    v53 = v79;
    *v79 = v121;
    v53[1] = v52;

    v54 = v76;
    v55 = v79;
    v79[2] = v122;
    v55[3] = v54;

    v56 = v78;
    v57 = v79;
    v79[4] = v123;
    v57[5] = v56;
    sub_1B9851B38();

    if (os_log_type_enabled(v81, v82))
    {
      v58 = v136;
      v61 = sub_1B98F5C28();
      v60[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v62 = sub_1B985263C(0);
      v63 = sub_1B985263C(1);
      v64 = &v175;
      v175 = v61;
      v65 = &v174;
      v174 = v62;
      v66 = &v173;
      v173 = v63;
      sub_1B9852690(2, &v175);
      sub_1B9852690(1, v64);
      v171 = v121;
      v172 = v75;
      sub_1B98526A4(&v171, v64, v65, v66);
      v67 = v58;
      if (v58)
      {

        __break(1u);
      }

      else
      {
        v171 = v122;
        v172 = v76;
        sub_1B98526A4(&v171, &v175, &v174, &v173);
        v60[0] = 0;
        v171 = v123;
        v172 = v78;
        sub_1B98526A4(&v171, &v175, &v174, &v173);
        _os_log_impl(&dword_1B982F000, v81, v82, "No cached value found for handle %s", v61, 0xCu);
        sub_1B985281C(v62);
        sub_1B985281C(v63);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v81);
    (*(v146 + 8))(v149, v145);
    return 2;
  }

  else
  {
    v13 = v151;
    sub_1B98DDDB0(v163, v158);
    sub_1B98DDEA4(v158, v156);
    v97 = *(v156 + *(v164 + 48));
    v170 = v97 & 1;
    sub_1B983A3AC(v156);
    v14 = sub_1B98F1F44();
    (*(v146 + 16))(v13, v14, v145);
    v103 = 17;
    v105 = 7;
    v15 = swift_allocObject();
    v16 = v156;
    v17 = v15;
    v18 = v158;
    v99 = v17;
    *(v17 + 16) = v97;
    sub_1B98DDEA4(v18, v16);
    v98 = (*(v153 + 80) + 16) & ~*(v153 + 80);
    v106 = swift_allocObject();
    sub_1B98DDDB0(v156, v106 + v98);
    v117 = sub_1B98F5118();
    v118 = sub_1B98F5BD8();
    v108 = swift_allocObject();
    *(v108 + 16) = 2;
    v109 = swift_allocObject();
    *(v109 + 16) = 4;
    v104 = 32;
    v19 = swift_allocObject();
    v20 = v99;
    v100 = v19;
    *(v19 + 16) = v124;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v100;
    v101 = v21;
    *(v21 + 16) = v125;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v101;
    v102 = v23;
    *(v23 + 16) = v126;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v102;
    v110 = v25;
    *(v25 + 16) = v127;
    *(v25 + 24) = v26;
    v111 = swift_allocObject();
    *(v111 + 16) = 32;
    v112 = swift_allocObject();
    *(v112 + 16) = 8;
    v27 = swift_allocObject();
    v28 = v106;
    v107 = v27;
    *(v27 + 16) = v128;
    *(v27 + 24) = v28;
    v29 = swift_allocObject();
    v30 = v107;
    v114 = v29;
    *(v29 + 16) = v129;
    *(v29 + 24) = v30;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v113 = sub_1B98F5F98();
    v115 = v31;

    v32 = v108;
    v33 = v115;
    *v115 = v130;
    v33[1] = v32;

    v34 = v109;
    v35 = v115;
    v115[2] = v131;
    v35[3] = v34;

    v36 = v110;
    v37 = v115;
    v115[4] = v132;
    v37[5] = v36;

    v38 = v111;
    v39 = v115;
    v115[6] = v133;
    v39[7] = v38;

    v40 = v112;
    v41 = v115;
    v115[8] = v134;
    v41[9] = v40;

    v42 = v114;
    v43 = v115;
    v115[10] = v135;
    v43[11] = v42;
    sub_1B9851B38();

    if (os_log_type_enabled(v117, v118))
    {
      v44 = v136;
      v89 = sub_1B98F5C28();
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v90 = sub_1B985263C(0);
      v91 = sub_1B985263C(1);
      v93 = &v169;
      v169 = v89;
      v94 = &v168;
      v168 = v90;
      v95 = &v167;
      v167 = v91;
      v92 = 2;
      sub_1B9852690(2, &v169);
      sub_1B9852690(v92, v93);
      v165 = v130;
      v166 = v108;
      sub_1B98526A4(&v165, v93, v94, v95);
      v96 = v44;
      if (v44)
      {

        __break(1u);
      }

      else
      {
        v165 = v131;
        v166 = v109;
        sub_1B98526A4(&v165, &v169, &v168, &v167);
        v87 = 0;
        v165 = v132;
        v166 = v110;
        sub_1B98526A4(&v165, &v169, &v168, &v167);
        v86 = 0;
        v165 = v133;
        v166 = v111;
        sub_1B98526A4(&v165, &v169, &v168, &v167);
        v85 = 0;
        v165 = v134;
        v166 = v112;
        sub_1B98526A4(&v165, &v169, &v168, &v167);
        v84 = 0;
        v165 = v135;
        v166 = v114;
        sub_1B98526A4(&v165, &v169, &v168, &v167);
        _os_log_impl(&dword_1B982F000, v117, v118, "Got isBlocked: %{BOOL,public}d for cached handle %s", v89, 0x12u);
        sub_1B985281C(v90);
        sub_1B985281C(v91);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v117);
    (*(v146 + 8))(v151, v145);
    sub_1B98DE178(v158);
    return v97 & 1;
  }
}

uint64_t sub_1B98D6C24(uint64_t a1)
{
  v6 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EB0, &qword_1B98FCAD0);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2);
  v10 = &v5 - v5;
  v9 = sub_1B98F5078();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  (*(v7 + 16))(v10, v6);
  (*(v7 + 56))(v10, 0, 1, v9);
  v12 = sub_1B98F1B88(v10, v9);
  v11 = v3;
  sub_1B98E0B64(v10);
  return v12;
}

uint64_t sub_1B98D6D54(uint64_t a1)
{
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA0, &qword_1B98FCAC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5, v1);
  v8 = &v5 - v6;
  sub_1B98DDEA4(v2, &v5 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  (*(*(v7 - 8) + 56))(v8, 0, 1);
  v10 = sub_1B98F1B88(v8, v7);
  v9 = v3;
  sub_1B98DDC10(v8);
  return v10;
}

uint64_t sub_1B98D6E58(uint64_t a1)
{
  v179 = a1;
  v153 = 0;
  v141 = sub_1B98DE2C0;
  v142 = sub_1B98DE34C;
  v143 = sub_1B98DE358;
  v144 = sub_1B98DE364;
  v145 = sub_1B98DE2CC;
  v146 = sub_1B98DE3F4;
  v147 = sub_1B98DE33C;
  v148 = sub_1B98DE344;
  v149 = sub_1B98DE370;
  v150 = sub_1B98DE3E4;
  v151 = sub_1B98DE3EC;
  v152 = sub_1B98DE400;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v182 = __b;
  v184 = 40;
  memset(__b, 0, sizeof(__b));
  v193 = 0;
  v185 = 0;
  v161 = 0;
  v154 = sub_1B98F5138();
  v155 = *(v154 - 8);
  v156 = v154 - 8;
  v157 = (*(v155 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v154, v2);
  v158 = &v48 - v157;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA0, &qword_1B98FCAC0);
  v159 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3, v4);
  v160 = &v48 - v159;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  v164 = *(v162 - 8);
  v163 = v162 - 8;
  v165 = v164;
  v166 = *(v164 + 64);
  v167 = (v166 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v161, v5);
  v168 = &v48 - v167;
  v169 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, v8);
  v170 = &v48 - v169;
  v199 = &v48 - v169;
  v180 = sub_1B98F5078();
  v171 = *(v180 - 8);
  v172 = v180 - 8;
  v173 = (*(v171 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v180, v9);
  v174 = &v48 - v173;
  v175 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v48 - v173, v11);
  v176 = &v48 - v175;
  v198 = &v48 - v175;
  v177 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EB0, &qword_1B98FCAD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v179, v12);
  v178 = &v48 - v177;
  v197 = v13;
  v196 = v1;
  v181 = sub_1B98C982C();
  v195 = sub_1B98F5448();
  sub_1B98F54D8();
  v183 = &v200;
  sub_1B98F5A58();
  memcpy(v182, v183, v184);
  for (i = v185; ; i = v53)
  {
    v139 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EB8, &qword_1B98FCAD8);
    sub_1B98F5AB8();
    if ((*(v171 + 48))(v178, 1, v180) == 1)
    {
      break;
    }

    (*(v171 + 32))(v176, v178, v180);
    v138 = *(v140 + 40);

    sub_1B98F376C(v176);

    if ((*(v164 + 48))(v160, 1, v162) == 1)
    {
      sub_1B98DDC10(v160);
      (*(v171 + 8))(v176, v180);
      v53 = v139;
    }

    else
    {
      v14 = v158;
      sub_1B98DDDB0(v160, v170);
      sub_1B98DDEA4(v170, v168);
      v116 = *(v168 + *(v162 + 48));
      v193 = v116 & 1;
      sub_1B983A3AC(v168);
      v15 = sub_1B98F1F44();
      (*(v155 + 16))(v14, v15, v154);
      v122 = 17;
      v124 = 7;
      v16 = swift_allocObject();
      v17 = v168;
      v18 = v16;
      v19 = v170;
      v118 = v18;
      *(v18 + 16) = v116;
      sub_1B98DDEA4(v19, v17);
      v117 = (*(v165 + 80) + 16) & ~*(v165 + 80);
      v125 = swift_allocObject();
      sub_1B98DDDB0(v168, v125 + v117);
      v136 = sub_1B98F5118();
      v137 = sub_1B98F5BD8();
      v127 = swift_allocObject();
      *(v127 + 16) = 2;
      v128 = swift_allocObject();
      *(v128 + 16) = 4;
      v123 = 32;
      v20 = swift_allocObject();
      v21 = v118;
      v119 = v20;
      *(v20 + 16) = v141;
      *(v20 + 24) = v21;
      v22 = swift_allocObject();
      v23 = v119;
      v120 = v22;
      *(v22 + 16) = v142;
      *(v22 + 24) = v23;
      v24 = swift_allocObject();
      v25 = v120;
      v121 = v24;
      *(v24 + 16) = v143;
      *(v24 + 24) = v25;
      v26 = swift_allocObject();
      v27 = v121;
      v129 = v26;
      *(v26 + 16) = v144;
      *(v26 + 24) = v27;
      v130 = swift_allocObject();
      *(v130 + 16) = 32;
      v131 = swift_allocObject();
      *(v131 + 16) = 8;
      v28 = swift_allocObject();
      v29 = v125;
      v126 = v28;
      *(v28 + 16) = v145;
      *(v28 + 24) = v29;
      v30 = swift_allocObject();
      v31 = v126;
      v133 = v30;
      *(v30 + 16) = v146;
      *(v30 + 24) = v31;
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
      v132 = sub_1B98F5F98();
      v134 = v32;

      v33 = v127;
      v34 = v134;
      *v134 = v147;
      v34[1] = v33;

      v35 = v128;
      v36 = v134;
      v134[2] = v148;
      v36[3] = v35;

      v37 = v129;
      v38 = v134;
      v134[4] = v149;
      v38[5] = v37;

      v39 = v130;
      v40 = v134;
      v134[6] = v150;
      v40[7] = v39;

      v41 = v131;
      v42 = v134;
      v134[8] = v151;
      v42[9] = v41;

      v43 = v133;
      v44 = v134;
      v134[10] = v152;
      v44[11] = v43;
      sub_1B9851B38();

      if (os_log_type_enabled(v136, v137))
      {
        v45 = v139;
        v102 = sub_1B98F5C28();
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
        v103 = sub_1B985263C(0);
        v104 = sub_1B985263C(1);
        v106 = &v191;
        v191 = v102;
        v107 = &v190;
        v190 = v103;
        v108 = &v189;
        v189 = v104;
        v105 = 2;
        sub_1B9852690(2, &v191);
        sub_1B9852690(v105, v106);
        v187 = v147;
        v188 = v127;
        sub_1B98526A4(&v187, v106, v107, v108);
        v109 = v45;
        v110 = v127;
        v111 = v128;
        v112 = v129;
        v113 = v130;
        v114 = v131;
        v115 = v133;
        if (v45)
        {
          v94 = v110;
          v95 = v111;
          v96 = v112;
          v97 = v113;
          v98 = v114;
          v99 = v115;
          v58 = v115;
          v57 = v114;
          v56 = v113;
          v55 = v112;
          v54 = v111;

          __break(1u);
        }

        else
        {
          v187 = v148;
          v188 = v128;
          sub_1B98526A4(&v187, &v191, &v190, &v189);
          v87 = 0;
          v88 = v127;
          v89 = v128;
          v90 = v129;
          v91 = v130;
          v92 = v131;
          v93 = v133;
          v187 = v149;
          v188 = v129;
          sub_1B98526A4(&v187, &v191, &v190, &v189);
          v80 = 0;
          v81 = v127;
          v82 = v128;
          v83 = v129;
          v84 = v130;
          v85 = v131;
          v86 = v133;
          v187 = v150;
          v188 = v130;
          sub_1B98526A4(&v187, &v191, &v190, &v189);
          v73 = 0;
          v74 = v127;
          v75 = v128;
          v76 = v129;
          v77 = v130;
          v78 = v131;
          v79 = v133;
          v187 = v151;
          v188 = v131;
          sub_1B98526A4(&v187, &v191, &v190, &v189);
          v66 = 0;
          v67 = v127;
          v68 = v128;
          v69 = v129;
          v70 = v130;
          v71 = v131;
          v72 = v133;
          v187 = v152;
          v188 = v133;
          sub_1B98526A4(&v187, &v191, &v190, &v189);
          v59 = 0;
          v60 = v127;
          v61 = v128;
          v62 = v129;
          v63 = v130;
          v64 = v131;
          v65 = v133;
          _os_log_impl(&dword_1B982F000, v136, v137, "Got isBlocked: %{BOOL,public}d for cached handle %s", v102, 0x12u);
          sub_1B985281C(v103);
          sub_1B985281C(v104);
          sub_1B98F5C08();

          v100 = v59;
        }
      }

      else
      {
        v46 = v139;

        v100 = v46;
      }

      v52 = v100;
      MEMORY[0x1E69E5920](v136);
      (*(v155 + 8))(v158, v154);
      (*(v171 + 16))(v174, v176, v180);
      v51 = &v192;
      v192 = v116;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E00, &unk_1B98FCAE0);
      sub_1B98F55C8();
      sub_1B98DE178(v170);
      (*(v171 + 8))(v176, v180);
      v53 = v52;
    }
  }

  sub_1B98DE23C(__b);
  v49 = &v195;
  v50 = v195;
  sub_1B98F54D8();
  sub_1B98CCEE4(v49);
  return v50;
}

uint64_t sub_1B98D8578(uint64_t a1)
{
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA0, &qword_1B98FCAC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5, v1);
  v8 = &v5 - v6;
  sub_1B98DDEA4(v2, &v5 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  (*(*(v7 - 8) + 56))(v8, 0, 1);
  v10 = sub_1B98F1B88(v8, v7);
  v9 = v3;
  sub_1B98DDC10(v8);
  return v10;
}

uint64_t sub_1B98D867C(unsigned int a1, uint64_t a2)
{
  v97 = a1;
  v98 = a2;
  v103 = sub_1B98D9744;
  v104 = sub_1B98DE48C;
  v106 = sub_1B98DE40C;
  v108 = sub_1B98DE4B4;
  v110 = sub_1B98DE4C0;
  v112 = sub_1B98DE4CC;
  v116 = sub_1B98DE418;
  v120 = sub_1B98DE55C;
  v122 = sub_1B98DE47C;
  v124 = sub_1B98DE484;
  v126 = sub_1B98DE498;
  v128 = sub_1B98DE4A4;
  v130 = sub_1B98DE4AC;
  v132 = sub_1B98DE4D8;
  v134 = sub_1B98DE54C;
  v136 = sub_1B98DE554;
  v139 = sub_1B98DE568;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v150 = 0;
  v77 = 0;
  v88 = 0;
  v78 = sub_1B98F5078();
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78, v2);
  v82 = &v59 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  v84 = (*(*(v83 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v88, v3);
  v85 = &v59 - v84;
  v86 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4, v6);
  v87 = &v59 - v86;
  v153 = &v59 - v86;
  v89 = *(type metadata accessor for BlockedHandle() - 8);
  v99 = v89;
  v100 = *(v89 + 64);
  v90 = (v100 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v88, v7);
  v102 = &v59 - v90;
  v96 = sub_1B98F5138();
  v94 = *(v96 - 8);
  v95 = v96 - 8;
  v92 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v97, v98);
  v9 = &v59 - v92;
  v93 = &v59 - v92;
  v152 = v8 & 1;
  v151 = v10;
  v150 = v11;
  v12 = sub_1B98F1F44();
  (*(v94 + 16))(v9, v12, v96);
  v114 = 17;
  v118 = 7;
  v13 = swift_allocObject();
  v14 = v102;
  v15 = v13;
  v16 = v98;
  v107 = v15;
  *(v15 + 16) = v97;
  sub_1B9833334(v16, v14);
  v101 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v119 = swift_allocObject();
  sub_1B9832680(v102, v119 + v101);
  v143 = sub_1B98F5118();
  v144 = sub_1B98F5BD8();
  v123 = swift_allocObject();
  *(v123 + 16) = 34;
  v125 = swift_allocObject();
  v115 = 8;
  *(v125 + 16) = 8;
  v117 = 32;
  v17 = swift_allocObject();
  v105 = v17;
  *(v17 + 16) = v103;
  *(v17 + 24) = 0;
  v18 = swift_allocObject();
  v19 = v105;
  v127 = v18;
  *(v18 + 16) = v104;
  *(v18 + 24) = v19;
  v129 = swift_allocObject();
  *(v129 + 16) = 2;
  v131 = swift_allocObject();
  *(v131 + 16) = 4;
  v20 = swift_allocObject();
  v21 = v107;
  v109 = v20;
  *(v20 + 16) = v106;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v109;
  v111 = v22;
  *(v22 + 16) = v108;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v111;
  v113 = v24;
  *(v24 + 16) = v110;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v113;
  v133 = v26;
  *(v26 + 16) = v112;
  *(v26 + 24) = v27;
  v135 = swift_allocObject();
  *(v135 + 16) = 32;
  v137 = swift_allocObject();
  *(v137 + 16) = v115;
  v28 = swift_allocObject();
  v29 = v119;
  v121 = v28;
  *(v28 + 16) = v116;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  v31 = v121;
  v140 = v30;
  *(v30 + 16) = v120;
  *(v30 + 24) = v31;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v138 = sub_1B98F5F98();
  v141 = v32;

  v33 = v123;
  v34 = v141;
  *v141 = v122;
  v34[1] = v33;

  v35 = v125;
  v36 = v141;
  v141[2] = v124;
  v36[3] = v35;

  v37 = v127;
  v38 = v141;
  v141[4] = v126;
  v38[5] = v37;

  v39 = v129;
  v40 = v141;
  v141[6] = v128;
  v40[7] = v39;

  v41 = v131;
  v42 = v141;
  v141[8] = v130;
  v42[9] = v41;

  v43 = v133;
  v44 = v141;
  v141[10] = v132;
  v44[11] = v43;

  v45 = v135;
  v46 = v141;
  v141[12] = v134;
  v46[13] = v45;

  v47 = v137;
  v48 = v141;
  v141[14] = v136;
  v48[15] = v47;

  v49 = v140;
  v50 = v141;
  v141[16] = v139;
  v50[17] = v49;
  sub_1B9851B38();

  if (os_log_type_enabled(v143, v144))
  {
    v51 = v77;
    v70 = sub_1B98F5C28();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v71 = sub_1B985263C(0);
    v72 = sub_1B985263C(2);
    v73 = &v149;
    v149 = v70;
    v74 = &v148;
    v148 = v71;
    v75 = &v147;
    v147 = v72;
    sub_1B9852690(2, &v149);
    sub_1B9852690(3, v73);
    v145 = v122;
    v146 = v123;
    sub_1B98526A4(&v145, v73, v74, v75);
    v76 = v51;
    if (v51)
    {

      __break(1u);
    }

    else
    {
      v145 = v124;
      v146 = v125;
      sub_1B98526A4(&v145, &v149, &v148, &v147);
      v68 = 0;
      v145 = v126;
      v146 = v127;
      sub_1B98526A4(&v145, &v149, &v148, &v147);
      v67 = 0;
      v145 = v128;
      v146 = v129;
      sub_1B98526A4(&v145, &v149, &v148, &v147);
      v66 = 0;
      v145 = v130;
      v146 = v131;
      sub_1B98526A4(&v145, &v149, &v148, &v147);
      v65 = 0;
      v145 = v132;
      v146 = v133;
      sub_1B98526A4(&v145, &v149, &v148, &v147);
      v64 = 0;
      v145 = v134;
      v146 = v135;
      sub_1B98526A4(&v145, &v149, &v148, &v147);
      v63 = 0;
      v145 = v136;
      v146 = v137;
      sub_1B98526A4(&v145, &v149, &v148, &v147);
      v62 = 0;
      v145 = v139;
      v146 = v140;
      sub_1B98526A4(&v145, &v149, &v148, &v147);
      _os_log_impl(&dword_1B982F000, v143, v144, "%{public}s isBlocked: %{BOOL,public}d for handle %s", v70, 0x1Cu);
      sub_1B985281C(v71);
      sub_1B985281C(v72);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v143);
  (*(v94 + 8))(v93, v96);
  v59 = (v87 + *(v83 + 48));
  sub_1B9833334(v98, v87);
  v52 = v91;
  *v59 = v97;
  v61 = *(v52 + 40);

  v60 = (v85 + *(v83 + 48));
  sub_1B9833334(v87, v102);
  v53 = sub_1B9832680(v102, v85);
  v54 = v98;
  v55 = v79;
  v56 = v78;
  v57 = v82;
  *v60 = v97;
  (*(v55 + 16))(v57, v54, v56, v53);
  sub_1B98F38B8(v85, v82);
  (*(v79 + 8))(v82, v78);
  sub_1B98DE178(v85);

  return sub_1B98DE178(v87);
}

uint64_t sub_1B98D977C(uint64_t a1)
{
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5, v1);
  v8 = &v5 - v6;
  sub_1B9833334(v2, &v5 - v6);
  v7 = type metadata accessor for BlockedHandle();
  (*(*(v7 - 8) + 56))(v8, 0, 1);
  v10 = sub_1B98F1B88(v8, v7);
  v9 = v3;
  sub_1B983AAEC(v8);
  return v10;
}

uint64_t sub_1B98D9874(uint64_t a1)
{
  v62 = a1;
  v63 = sub_1B98DE574;
  v65 = sub_1B98DA36C;
  v66 = sub_1B98DE5F4;
  v70 = sub_1B98DE57C;
  v74 = sub_1B98DE61C;
  v76 = sub_1B98DE5E4;
  v78 = sub_1B98DE5EC;
  v80 = sub_1B98DE600;
  v82 = sub_1B98DE60C;
  v84 = sub_1B98DE614;
  v87 = sub_1B98DE628;
  v54 = sub_1B98DA3D0;
  v102 = 0;
  v101 = 0;
  v55 = 0;
  v98 = 0;
  v61 = sub_1B98F5138();
  v59 = *(v61 - 8);
  v60 = v61 - 8;
  v57 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = v32 - v57;
  v58 = v32 - v57;
  v102 = MEMORY[0x1EEE9AC00](v62, v1);
  v101 = v3;
  v4 = sub_1B98F1F44();
  (*(v59 + 16))(v2, v4, v61);
  sub_1B98F54D8();
  v72 = 7;
  v64 = swift_allocObject();
  *(v64 + 16) = v62;

  v71 = 32;
  v5 = swift_allocObject();
  v6 = v64;
  v73 = v5;
  *(v5 + 16) = v63;
  *(v5 + 24) = v6;

  v91 = sub_1B98F5118();
  v92 = sub_1B98F5BD8();
  v68 = 17;
  v77 = swift_allocObject();
  *(v77 + 16) = 34;
  v79 = swift_allocObject();
  v69 = 8;
  *(v79 + 16) = 8;
  v7 = swift_allocObject();
  v67 = v7;
  *(v7 + 16) = v65;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  v9 = v67;
  v81 = v8;
  *(v8 + 16) = v66;
  *(v8 + 24) = v9;
  v83 = swift_allocObject();
  *(v83 + 16) = 32;
  v85 = swift_allocObject();
  *(v85 + 16) = v69;
  v10 = swift_allocObject();
  v11 = v73;
  v75 = v10;
  *(v10 + 16) = v70;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v75;
  v88 = v12;
  *(v12 + 16) = v74;
  *(v12 + 24) = v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v86 = sub_1B98F5F98();
  v89 = v14;

  v15 = v77;
  v16 = v89;
  *v89 = v76;
  v16[1] = v15;

  v17 = v79;
  v18 = v89;
  v89[2] = v78;
  v18[3] = v17;

  v19 = v81;
  v20 = v89;
  v89[4] = v80;
  v20[5] = v19;

  v21 = v83;
  v22 = v89;
  v89[6] = v82;
  v22[7] = v21;

  v23 = v85;
  v24 = v89;
  v89[8] = v84;
  v24[9] = v23;

  v25 = v88;
  v26 = v89;
  v89[10] = v87;
  v26[11] = v25;
  sub_1B9851B38();

  if (os_log_type_enabled(v91, v92))
  {
    v27 = v55;
    v46 = sub_1B98F5C28();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v47 = sub_1B985263C(0);
    v48 = sub_1B985263C(2);
    v50 = &v97;
    v97 = v46;
    v51 = &v96;
    v96 = v47;
    v52 = &v95;
    v95 = v48;
    v49 = 2;
    sub_1B9852690(2, &v97);
    sub_1B9852690(v49, v50);
    v93 = v76;
    v94 = v77;
    sub_1B98526A4(&v93, v50, v51, v52);
    v53 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v93 = v78;
      v94 = v79;
      sub_1B98526A4(&v93, &v97, &v96, &v95);
      v43 = 0;
      v93 = v80;
      v94 = v81;
      sub_1B98526A4(&v93, &v97, &v96, &v95);
      v42 = 0;
      v93 = v82;
      v94 = v83;
      sub_1B98526A4(&v93, &v97, &v96, &v95);
      v41 = 0;
      v93 = v84;
      v94 = v85;
      sub_1B98526A4(&v93, &v97, &v96, &v95);
      v40 = 0;
      v93 = v87;
      v94 = v88;
      sub_1B98526A4(&v93, &v97, &v96, &v95);
      v39 = 0;
      _os_log_impl(&dword_1B982F000, v91, v92, "%{public}s blocklist: %s", v46, 0x16u);
      sub_1B985281C(v47);
      sub_1B985281C(v48);
      sub_1B98F5C08();

      v44 = v39;
    }
  }

  else
  {
    v28 = v55;

    v44 = v28;
  }

  v29 = v44;
  MEMORY[0x1E69E5920](v91);
  (*(v59 + 8))(v58, v61);
  v99[1] = v62;
  v35 = sub_1B98F5078();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  sub_1B98C982C();
  v30 = sub_1B98F5448();
  v38 = v99;
  v99[0] = v30;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5458, &qword_1B98FB070);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EC0, &unk_1B98FCAF0);
  sub_1B98DE634();
  result = sub_1B98F57B8();
  if (v29)
  {
    __break(1u);
  }

  else
  {
    v33 = v100;
    v98 = v100;
    v32[1] = *(v56 + 40);

    sub_1B98F3A04(v33);
  }

  return result;
}

uint64_t sub_1B98DA39C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98DA3D0(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA0, &qword_1B98FCAC0);
  v15 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3, v4);
  v34 = &v15 - v15;
  v18 = 0;
  v28 = sub_1B98F5078();
  v26 = *(v28 - 8);
  v27 = v28 - 8;
  v16 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28, v5);
  v33 = &v15 - v16;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  v29 = *(v32 - 8);
  v30 = v32 - 8;
  v17 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32, v6);
  v35 = &v15 - v17;
  v41 = &v15 - v17;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5DF8, &qword_1B98FC9A0);
  v19 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18, v7);
  v23 = &v15 - v19;
  v21 = (*(*(type metadata accessor for BlockedHandle() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v20, v23);
  v36 = &v15 - v21;
  v40 = &v15 - v21;
  v39 = a1;
  v38 = v8;
  sub_1B98E09DC(v8, v9);
  v25 = *(v23 + *(v22 + 48));
  sub_1B9832680(v23, v36);
  v31 = 1;
  v37 = v25 & 1;
  v24 = *(v32 + 48);
  sub_1B9833334(v36, v35);
  v10 = v26;
  v11 = v28;
  v12 = v36;
  v13 = v33;
  *(v35 + v24) = v25;
  (*(v10 + 16))(v13, v12, v11);
  sub_1B98DDEA4(v35, v34);
  (*(v29 + 56))(v34, 0, v31, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EC0, &unk_1B98FCAF0);
  sub_1B98F55C8();
  sub_1B98DE178(v35);
  return sub_1B983A3AC(v36);
}

uint64_t sub_1B98DA73C()
{
  v5 = v0;
  v2 = *(v0 + 40);

  v3 = sub_1B98F3B54();

  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EC0, &unk_1B98FCAF0);
  type metadata accessor for BlockedHandle();
  sub_1B98DE6E8();
  sub_1B98F5788();
  sub_1B98DE770(&v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
  sub_1B9853574();
  sub_1B9871820();
  return sub_1B98F5AE8();
}

uint64_t sub_1B98DA890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v15 = a4;
  v16 = a1;
  v17 = a2;
  v21 = a3;
  v27 = 0;
  v26 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  v19 = *(*(v23 - 8) + 64);
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v17, v4);
  v24 = &v14 - v18;
  v20 = v18;
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v22 = &v14 - v20;
  v27 = &v14 - v20;
  v26 = v8;
  sub_1B9833334(v7, &v14 - v20);
  v9 = v24;
  v10 = v22;
  *(v22 + *(v23 + 48)) = v21;
  sub_1B98DDEA4(v10, v9);
  v25 = *(v24 + *(v23 + 48));
  sub_1B983A3AC(v24);
  if (v25)
  {
    sub_1B98DDEA4(v22, v24);
    sub_1B9832680(v24, v15);
    v11 = type metadata accessor for BlockedHandle();
    (*(*(v11 - 8) + 56))(v15, 0, 1);
  }

  else
  {
    v12 = type metadata accessor for BlockedHandle();
    (*(*(v12 - 8) + 56))(v15, 1);
  }

  return sub_1B98DE178(v22);
}

uint64_t sub_1B98DAA6C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5FD0, &unk_1B98FD360) + 48);
  v2 = *(a1 + v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8) + 48)) & 1;
  return a2();
}

uint64_t sub_1B98DAB08(void *a1)
{
  v144 = a1;
  v119 = sub_1B98DE7CC;
  v120 = sub_1B98DE7F0;
  v121 = sub_1B98DE7FC;
  v122 = sub_1B98DE808;
  v123 = sub_1B98DE7D8;
  v124 = sub_1B98DE898;
  v125 = sub_1B98DE7E0;
  v126 = sub_1B98DE7E8;
  v127 = sub_1B98DE814;
  v128 = sub_1B98DE888;
  v129 = sub_1B98DE890;
  v130 = sub_1B98DE8A4;
  v131 = sub_1B98DE79C;
  v132 = sub_1B98DE7B4;
  v133 = sub_1B98DE7A4;
  v134 = sub_1B98DE7AC;
  v135 = sub_1B98DE7C0;
  v168 = 0;
  v167 = 0;
  v136 = 0;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  v156 = 0;
  v137 = sub_1B98F5138();
  v138 = *(v137 - 8);
  v139 = v137 - 8;
  v140 = (*(v138 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v144, v2);
  v141 = v57 - v140;
  v142 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3, v57 - v140);
  v143 = v57 - v142;
  v168 = v5;
  v167 = v1;
  v147 = *(v1 + 32);

  v146 = [v144 identifier];
  v6 = sub_1B98F5658();
  v145 = v165;
  v165[0] = v6;
  v165[1] = v7;
  sub_1B98F376C(v165);
  sub_1B9868BFC(v145);
  MEMORY[0x1E69E5920](v146);

  v148 = v165[2];
  v149 = v165[3];
  v150 = v166;
  if (v166 == 2)
  {
    v40 = v141;
    v41 = sub_1B98F1F44();
    (*(v138 + 16))(v40, v41, v137);
    MEMORY[0x1E69E5928](v144, v42, v43);
    v67 = 7;
    v68 = swift_allocObject();
    *(v68 + 16) = v144;
    v76 = sub_1B98F5118();
    v77 = sub_1B98F5BD8();
    v65 = 17;
    v70 = swift_allocObject();
    *(v70 + 16) = 34;
    v71 = swift_allocObject();
    *(v71 + 16) = 8;
    v66 = 32;
    v44 = swift_allocObject();
    v45 = v68;
    v69 = v44;
    *(v44 + 16) = v131;
    *(v44 + 24) = v45;
    v46 = swift_allocObject();
    v47 = v69;
    v73 = v46;
    *(v46 + 16) = v132;
    *(v46 + 24) = v47;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v72 = sub_1B98F5F98();
    v74 = v48;

    v49 = v70;
    v50 = v74;
    *v74 = v133;
    v50[1] = v49;

    v51 = v71;
    v52 = v74;
    v74[2] = v134;
    v52[3] = v51;

    v53 = v73;
    v54 = v74;
    v74[4] = v135;
    v54[5] = v53;
    sub_1B9851B38();

    if (os_log_type_enabled(v76, v77))
    {
      v55 = v136;
      v58 = sub_1B98F5C28();
      v57[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v59 = sub_1B985263C(0);
      v60 = sub_1B985263C(1);
      v61 = &v164;
      v164 = v58;
      v62 = &v163;
      v163 = v59;
      v63 = &v162;
      v162 = v60;
      sub_1B9852690(2, &v164);
      sub_1B9852690(1, v61);
      v160 = v133;
      v161 = v70;
      sub_1B98526A4(&v160, v61, v62, v63);
      v64 = v55;
      if (v55)
      {

        __break(1u);
      }

      else
      {
        v160 = v134;
        v161 = v71;
        sub_1B98526A4(&v160, &v164, &v163, &v162);
        v57[1] = 0;
        v160 = v135;
        v161 = v73;
        sub_1B98526A4(&v160, &v164, &v163, &v162);
        _os_log_impl(&dword_1B982F000, v76, v77, "No cached value found for handle %{public}s", v58, 0xCu);
        sub_1B985281C(v59);
        sub_1B985281C(v60);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v76);
    (*(v138 + 8))(v141, v137);
    return 2;
  }

  else
  {
    v116 = v148;
    v117 = v149;
    v118 = v150;
    v8 = v143;
    v95 = v150;
    v93 = v149;
    v92 = v148;
    v157 = v148;
    v158 = v149;
    v94 = 1;
    v159 = v150 & 1;
    sub_1B98D1598(v148, v149);
    v156 = v95 & 1;
    sub_1B98371D0(v92, v93);
    v9 = sub_1B98F1F44();
    (*(v138 + 16))(v8, v9, v137);
    v100 = 17;
    v102 = 7;
    v10 = swift_allocObject();
    v11 = v144;
    v96 = v10;
    *(v10 + 16) = v95 & v94;
    MEMORY[0x1E69E5928](v11, v12, v13);
    v103 = swift_allocObject();
    *(v103 + 16) = v144;
    v114 = sub_1B98F5118();
    v115 = sub_1B98F5BD8();
    v105 = swift_allocObject();
    *(v105 + 16) = 2;
    v106 = swift_allocObject();
    *(v106 + 16) = 4;
    v101 = 32;
    v14 = swift_allocObject();
    v15 = v96;
    v97 = v14;
    *(v14 + 16) = v119;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v97;
    v98 = v16;
    *(v16 + 16) = v120;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v98;
    v99 = v18;
    *(v18 + 16) = v121;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v99;
    v107 = v20;
    *(v20 + 16) = v122;
    *(v20 + 24) = v21;
    v108 = swift_allocObject();
    *(v108 + 16) = 32;
    v109 = swift_allocObject();
    *(v109 + 16) = 8;
    v22 = swift_allocObject();
    v23 = v103;
    v104 = v22;
    *(v22 + 16) = v123;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v104;
    v111 = v24;
    *(v24 + 16) = v124;
    *(v24 + 24) = v25;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v110 = sub_1B98F5F98();
    v112 = v26;

    v27 = v105;
    v28 = v112;
    *v112 = v125;
    v28[1] = v27;

    v29 = v106;
    v30 = v112;
    v112[2] = v126;
    v30[3] = v29;

    v31 = v107;
    v32 = v112;
    v112[4] = v127;
    v32[5] = v31;

    v33 = v108;
    v34 = v112;
    v112[6] = v128;
    v34[7] = v33;

    v35 = v109;
    v36 = v112;
    v112[8] = v129;
    v36[9] = v35;

    v37 = v111;
    v38 = v112;
    v112[10] = v130;
    v38[11] = v37;
    sub_1B9851B38();

    if (os_log_type_enabled(v114, v115))
    {
      v39 = v136;
      v84 = sub_1B98F5C28();
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v85 = sub_1B985263C(0);
      v86 = sub_1B985263C(1);
      v88 = &v155;
      v155 = v84;
      v89 = &v154;
      v154 = v85;
      v90 = &v153;
      v153 = v86;
      v87 = 2;
      sub_1B9852690(2, &v155);
      sub_1B9852690(v87, v88);
      v151 = v125;
      v152 = v105;
      sub_1B98526A4(&v151, v88, v89, v90);
      v91 = v39;
      if (v39)
      {

        __break(1u);
      }

      else
      {
        v151 = v126;
        v152 = v106;
        sub_1B98526A4(&v151, &v155, &v154, &v153);
        v82 = 0;
        v151 = v127;
        v152 = v107;
        sub_1B98526A4(&v151, &v155, &v154, &v153);
        v81 = 0;
        v151 = v128;
        v152 = v108;
        sub_1B98526A4(&v151, &v155, &v154, &v153);
        v80 = 0;
        v151 = v129;
        v152 = v109;
        sub_1B98526A4(&v151, &v155, &v154, &v153);
        v79 = 0;
        v151 = v130;
        v152 = v111;
        sub_1B98526A4(&v151, &v155, &v154, &v153);
        _os_log_impl(&dword_1B982F000, v114, v115, "Got isBlocked: %{BOOL,public}d for cached contact with identifier %s", v84, 0x12u);
        sub_1B985281C(v85);
        sub_1B985281C(v86);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v114);
    (*(v138 + 8))(v143, v137);
    sub_1B98371D0(v92, v93);
    return v95 & 1;
  }
}

uint64_t sub_1B98DBE2C(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_1B98F5658();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B98DBE90(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_1B98F5658();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B98DBEEC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v67 = a1;
  v68 = a2;
  v69 = a3;
  v59 = a4;
  v60 = a5;
  v70 = sub_1B98DCE28;
  v71 = sub_1B98DE8D8;
  v73 = sub_1B98DE8B0;
  v75 = sub_1B98DE900;
  v77 = sub_1B98DE90C;
  v79 = sub_1B98DE918;
  v84 = sub_1B98DE8BC;
  v88 = sub_1B98DE9A8;
  v90 = sub_1B98DE8C8;
  v92 = sub_1B98DE8D0;
  v94 = sub_1B98DE8E4;
  v96 = sub_1B98DE8F0;
  v98 = sub_1B98DE8F8;
  v100 = sub_1B98DE924;
  v102 = sub_1B98DE998;
  v104 = sub_1B98DE9A0;
  v107 = sub_1B98DE9B4;
  v129 = 0;
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v126 = 0;
  v124 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v58 = 0;
  v66 = sub_1B98F5138();
  v64 = *(v66 - 8);
  v65 = v66 - 8;
  v62 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = v50 - v62;
  v63 = v50 - v62;
  v129 = MEMORY[0x1EEE9AC00](v67, v68) & 1;
  v127 = v6;
  v128 = v7;
  v125 = v8;
  v126 = v9;
  v124 = v10;
  v11 = sub_1B98F1F44();
  (*(v64 + 16))(v5, v11, v66);
  v82 = 17;
  v86 = 7;
  v74 = swift_allocObject();
  *(v74 + 16) = v67;
  sub_1B98F54D8();
  v85 = 32;
  v12 = swift_allocObject();
  v13 = v69;
  v87 = v12;
  *(v12 + 16) = v68;
  *(v12 + 24) = v13;
  v111 = sub_1B98F5118();
  v112 = sub_1B98F5BD8();
  v91 = swift_allocObject();
  v81 = 34;
  *(v91 + 16) = 34;
  v93 = swift_allocObject();
  v83 = 8;
  *(v93 + 16) = 8;
  v14 = swift_allocObject();
  v72 = v14;
  *(v14 + 16) = v70;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v72;
  v95 = v15;
  *(v15 + 16) = v71;
  *(v15 + 24) = v16;
  v97 = swift_allocObject();
  *(v97 + 16) = 2;
  v99 = swift_allocObject();
  *(v99 + 16) = 4;
  v17 = swift_allocObject();
  v18 = v74;
  v76 = v17;
  *(v17 + 16) = v73;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v76;
  v78 = v19;
  *(v19 + 16) = v75;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v78;
  v80 = v21;
  *(v21 + 16) = v77;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v80;
  v101 = v23;
  *(v23 + 16) = v79;
  *(v23 + 24) = v24;
  v103 = swift_allocObject();
  *(v103 + 16) = v81;
  v105 = swift_allocObject();
  *(v105 + 16) = v83;
  v25 = swift_allocObject();
  v26 = v87;
  v89 = v25;
  *(v25 + 16) = v84;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v89;
  v108 = v27;
  *(v27 + 16) = v88;
  *(v27 + 24) = v28;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v106 = sub_1B98F5F98();
  v109 = v29;

  v30 = v91;
  v31 = v109;
  *v109 = v90;
  v31[1] = v30;

  v32 = v93;
  v33 = v109;
  v109[2] = v92;
  v33[3] = v32;

  v34 = v95;
  v35 = v109;
  v109[4] = v94;
  v35[5] = v34;

  v36 = v97;
  v37 = v109;
  v109[6] = v96;
  v37[7] = v36;

  v38 = v99;
  v39 = v109;
  v109[8] = v98;
  v39[9] = v38;

  v40 = v101;
  v41 = v109;
  v109[10] = v100;
  v41[11] = v40;

  v42 = v103;
  v43 = v109;
  v109[12] = v102;
  v43[13] = v42;

  v44 = v105;
  v45 = v109;
  v109[14] = v104;
  v45[15] = v44;

  v46 = v108;
  v47 = v109;
  v109[16] = v107;
  v47[17] = v46;
  sub_1B9851B38();

  if (os_log_type_enabled(v111, v112))
  {
    v48 = v58;
    v51 = sub_1B98F5C28();
    v50[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v52 = sub_1B985263C(0);
    v53 = sub_1B985263C(2);
    v54 = &v117;
    v117 = v51;
    v55 = &v116;
    v116 = v52;
    v56 = &v115;
    v115 = v53;
    sub_1B9852690(2, &v117);
    sub_1B9852690(3, v54);
    v113 = v90;
    v114 = v91;
    sub_1B98526A4(&v113, v54, v55, v56);
    v57 = v48;
    if (v48)
    {

      __break(1u);
    }

    else
    {
      v113 = v92;
      v114 = v93;
      sub_1B98526A4(&v113, &v117, &v116, &v115);
      v50[8] = 0;
      v113 = v94;
      v114 = v95;
      sub_1B98526A4(&v113, &v117, &v116, &v115);
      v50[7] = 0;
      v113 = v96;
      v114 = v97;
      sub_1B98526A4(&v113, &v117, &v116, &v115);
      v50[6] = 0;
      v113 = v98;
      v114 = v99;
      sub_1B98526A4(&v113, &v117, &v116, &v115);
      v50[5] = 0;
      v113 = v100;
      v114 = v101;
      sub_1B98526A4(&v113, &v117, &v116, &v115);
      v50[4] = 0;
      v113 = v102;
      v114 = v103;
      sub_1B98526A4(&v113, &v117, &v116, &v115);
      v50[3] = 0;
      v113 = v104;
      v114 = v105;
      sub_1B98526A4(&v113, &v117, &v116, &v115);
      v50[2] = 0;
      v113 = v107;
      v114 = v108;
      sub_1B98526A4(&v113, &v117, &v116, &v115);
      _os_log_impl(&dword_1B982F000, v111, v112, "%{public}s isBlocked: %{BOOL,public}d for contact with identifier %{public}s", v51, 0x1Cu);
      sub_1B985281C(v52);
      sub_1B985281C(v53);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v111);
  (*(v64 + 8))(v63, v66);
  sub_1B98D1598(v59, v60);
  v121 = v59;
  v122 = v60;
  v123 = v67;
  v50[1] = *(v61 + 32);

  sub_1B98D1598(v59, v60);
  v50[0] = v119;
  v119[0] = v59;
  v119[1] = v60;
  v120 = v67;
  v118[0] = v68;
  v118[1] = v69;
  sub_1B98F38B8(v119, v118);
  sub_1B98DE9C0(v50[0]);

  return sub_1B98371D0(v59, v60);
}