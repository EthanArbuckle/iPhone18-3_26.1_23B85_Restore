uint64_t sub_25A874D6C()
{
  sub_25A9985F8();

  v1 = v0[5];
  v2 = v0[6];

  MEMORY[0x25F850290](v1, v2);

  MEMORY[0x25F850290](0x2074726F706D6920, 0xE800000000000000);
  v3 = v0[7];

  v5 = MEMORY[0x25F850440](v4, &type metadata for Alias);
  v7 = v6;

  MEMORY[0x25F850290](v5, v7);

  return 0x206D6F7266;
}

uint64_t sub_25A874E50()
{
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[8];
}

uint64_t sub_25A874E88()
{
  sub_25A872F88((v0 + 3));
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_25A874F54()
{
  result = qword_27FA044B0;
  if (!qword_27FA044B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044B0);
  }

  return result;
}

uint64_t sub_25A87500C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_25A8750CC()
{
  result = qword_27FA044C0;
  if (!qword_27FA044C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044C0);
  }

  return result;
}

unint64_t sub_25A875120()
{
  result = qword_27FA044D0;
  if (!qword_27FA044D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA044C8, &unk_25A9F8210);
    sub_25A8751EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044D0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25A8751EC()
{
  result = qword_27FA044D8;
  if (!qword_27FA044D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044D8);
  }

  return result;
}

unint64_t sub_25A875254()
{
  result = qword_27FA044E0;
  if (!qword_27FA044E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044E0);
  }

  return result;
}

unint64_t sub_25A8752AC()
{
  result = qword_27FA044E8;
  if (!qword_27FA044E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044E8);
  }

  return result;
}

unint64_t sub_25A875304()
{
  result = qword_27FA044F0;
  if (!qword_27FA044F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044F0);
  }

  return result;
}

uint64_t sub_25A875358(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7894115;
  }

  else
  {
    v4 = 0x65756C6176;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7894115;
  }

  else
  {
    v6 = 0x65756C6176;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t sub_25A8753F4()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A87546C()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A8754D0()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A875544@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25A8755A4(uint64_t *a1@<X8>)
{
  v2 = 7894115;
  if (!*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A8755D8()
{
  if (*v0)
  {
    result = 7894115;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_25A875608@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

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

uint64_t sub_25A87566C(uint64_t a1)
{
  v2 = sub_25A875B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8756A8(uint64_t a1)
{
  v2 = sub_25A875B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A875730(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA044F8, &unk_25A9F83B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A875B6C();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Starred();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 40) = sub_25A9097C0(v9, 0);
    *(v1 + 48) = v12;
    v15 = 1;
    sub_25A872ED0();
    sub_25A998938();
    *(v1 + 56) = v14[0];
    sub_25A872F24(a1, v14);
    v3 = sub_25A8963D8(v14);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A875960@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[5];
  v7 = v4[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = v4[4];
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();
  v11(Strong, v10, ObjectType, v7);
  swift_unknownObjectRelease();
  v12 = v4[5];
  v13 = v4[6];
  v14 = swift_getObjectType();
  v15 = *(v13 + 64);
  swift_unknownObjectRetain();
  v15(v17, v14, v13);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    sub_25A91185C(v18);
    sub_25A872CE0(v17);
    sub_25A92DE50(v18, a1);
    result = sub_25A872D84(v18);
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_25A875A98()
{
  v1 = v0;
  MEMORY[0x25F850290](42, 0xE100000000000000);
  v3 = *(v0 + 40);
  v2 = *(v1 + 48);
  swift_getObjectType();
  v4 = *(v2 + 8);
  sub_25A9989B8();
  return 0;
}

uint64_t sub_25A875B08()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_25A875B6C()
{
  result = qword_27FA04500;
  if (!qword_27FA04500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04500);
  }

  return result;
}

unint64_t sub_25A875BD4()
{
  result = qword_27FA04508;
  if (!qword_27FA04508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04508);
  }

  return result;
}

unint64_t sub_25A875C2C()
{
  result = qword_27FA04510;
  if (!qword_27FA04510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04510);
  }

  return result;
}

unint64_t sub_25A875C84()
{
  result = qword_27FA04518;
  if (!qword_27FA04518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04518);
  }

  return result;
}

uint64_t sub_25A875CE0()
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A875D44()
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A875D90@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_25A875E10@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25A9988C8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_25A875E74(uint64_t a1)
{
  v2 = sub_25A876410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A875EB0(uint64_t a1)
{
  v2 = sub_25A876410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A875F38(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04520, "8U\a");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A876410();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for JoinedStr();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 40) = sub_25A93E50C(v9);
    sub_25A872F24(a1, v14);
    v11 = sub_25A8963D8(v14);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v11;
}

uint64_t sub_25A8760F4@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = 0xE000000000000000;
  v30 = 0;
  v31 = 0xE000000000000000;
  v6 = *(*(v1 + 40) + 16);

  v22 = v6;
  if (v6)
  {
    v20 = a1;
    v21 = result;
    v8 = 0;
    v9 = (result + 40);
    while (v8 < *(result + 16))
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      ObjectType = swift_getObjectType();
      v13 = v32;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v15 = *(v13 + 32);
      v16 = v3;
      v17 = *(v10 + 48);
      swift_unknownObjectRetain();
      v17(Strong, v15, ObjectType, v10);
      v28 = 0;
      v29 = 0xE000000000000000;
      (*(v10 + 64))(v26, ObjectType, v10);
      v3 = v16;
      if (v16)
      {
        swift_unknownObjectRelease();
      }

      sub_25A872C84(v26, v23);
      if (!v24 || (sub_25A872CE0(v23), sub_25A872C84(v26, v23), v24 == 1))
      {
        v25[0] = v23[0];
        v25[1] = v23[1];
        sub_25A92DE50(v25, v27);
        sub_25A872D84(v25);
      }

      else
      {
        sub_25A872CE0(v23);
        v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
        v18 = swift_allocObject();
        v27[0] = v18;
        *(v18 + 16) = 0u;
        *(v18 + 32) = 0u;
      }

      sub_25A872CE0(v26);
      ++v8;
      sub_25A9987C8();
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x25F850290](v28, v29);
      swift_unknownObjectRelease();

      v9 += 2;
      result = v21;
      if (v22 == v8)
      {
        v19 = v30;
        v5 = v31;
        a1 = v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = 0;
LABEL_13:

    *(a1 + 24) = MEMORY[0x277D837D0];
    *a1 = v19;
    *(a1 + 8) = v5;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_25A87636C()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_25A8763D0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25A876410()
{
  result = qword_27FA04528;
  if (!qword_27FA04528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04528);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JoinedStr.StrideCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for JoinedStr.StrideCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25A876550()
{
  result = qword_27FA04530;
  if (!qword_27FA04530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04530);
  }

  return result;
}

unint64_t sub_25A8765A8()
{
  result = qword_27FA04538;
  if (!qword_27FA04538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04538);
  }

  return result;
}

unint64_t sub_25A876600()
{
  result = qword_27FA04540;
  if (!qword_27FA04540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04540);
  }

  return result;
}

uint64_t sub_25A876654(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28783;
  if (v2 != 1)
  {
    v4 = 0x65756C6176;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746567726174;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28783;
  if (*a2 != 1)
  {
    v8 = 0x65756C6176;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746567726174;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A876734()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8767C4()
{
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A876840()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8768CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A8784A8();
  *a2 = result;
  return result;
}

void sub_25A8768FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE200000000000000;
  v5 = 28783;
  if (v2 != 1)
  {
    v5 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746567726174;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A876948()
{
  v1 = 28783;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746567726174;
  }
}

uint64_t sub_25A876990@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A8784A8();
  *a1 = result;
  return result;
}

uint64_t sub_25A8769C4(uint64_t a1)
{
  v2 = sub_25A8781F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A876A00(uint64_t a1)
{
  v2 = sub_25A8781F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A876A88(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045E8, &qword_25A9F8798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8781F4();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for AugAssign();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A9097E8(v9, 0);
    v1[6] = v12;
    LOBYTE(v16[0]) = 1;
    v1[7] = sub_25A9988F8();
    v1[8] = v13;
    v1[9] = sub_25A9097E8(v9, 2);
    v1[10] = v14;
    sub_25A872F24(a1, v16);
    v3 = sub_25A8963D8(v16);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A876CE0@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[5];
  v7 = v4[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = v4[4];
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();
  v11(Strong, v10, ObjectType, v7);
  swift_unknownObjectRelease();
  v12 = v4[9];
  v13 = v4[10];
  v14 = swift_getObjectType();
  v15 = swift_unknownObjectWeakLoadStrong();
  v16 = v4[4];
  v17 = *(v13 + 48);
  swift_unknownObjectRetain();
  v17(v15, v16, v14, v13);
  swift_unknownObjectRelease();
  v18 = v4[5];
  v19 = v4[6];
  v20 = swift_getObjectType();
  v21 = *(v19 + 64);
  swift_unknownObjectRetain();
  v21(&v104, v20, v19);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_25A911924(&v109);
  sub_25A872CE0(&v104);
  if (*(&v110 + 1))
  {
    v115[0] = v111;
    v115[1] = v112;
    v116 = v113;
    v114[0] = v109;
    v114[1] = v110;
    v107 = 0u;
    v108 = 0u;
    sub_25A87500C(v115 + 8, &v109);
    if (swift_dynamicCast())
    {
      v23 = v104;
      sub_25A872F24(v114, &v104);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04550, &unk_25A9FBFB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045D8, &unk_25A9FBFC0);
      if (swift_dynamicCast())
      {
        sub_25A87817C(&v101, &v109);
        v24 = *(&v110 + 1);
        v25 = v111;
        __swift_project_boxed_opaque_existential_1(&v109, *(&v110 + 1));
        (*(v25 + 8))(&v104, v23, *(&v23 + 1), v24, v25);

        goto LABEL_16;
      }

      v103 = 0;
      v101 = 0u;
      v102 = 0u;
      sub_25A878194(&v101, &qword_27FA045E0, &qword_25A9F8790);
    }

    sub_25A872F24(v114, &v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04550, &unk_25A9FBFB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04558, &qword_25A9F8700);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v103 = 0;
      v101 = 0u;
      v102 = 0u;
      sub_25A878194(&v101, &qword_27FA04560, &unk_25A9F8708);
LABEL_18:
      sub_25A8780B8(&v107, &v109);
      if (!*(&v110 + 1))
      {
        sub_25A878194(&v109, &qword_27FA04458, &unk_25A9F7FB0);
        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v45 = sub_25A997BD8();
        __swift_project_value_buffer(v45, qword_27FA0FCE8);
        swift_retain_n();
        v46 = sub_25A997BB8();
        v47 = sub_25A9983A8();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v109 = v49;
          *v48 = 136315394;
          v50 = v4[5];
          v51 = v4[6];
          swift_getObjectType();
          *&v104 = v50;
          v52 = *(v51 + 8);
          v53 = sub_25A998968();
          v55 = sub_25A98CC90(v53, v54, &v109);

          *(v48 + 4) = v55;
          *(v48 + 12) = 2048;
          v56 = v4[2];

          *(v48 + 14) = v56;

          _os_log_impl(&dword_25A232000, v46, v47, "AugAssign> Invalid target %s: line %ld", v48, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v49);
          MEMORY[0x25F852800](v49, -1, -1);
          MEMORY[0x25F852800](v48, -1, -1);
        }

        else
        {
        }

        sub_25A874F54();
        swift_allocError();
        *v60 = 109;
        swift_willThrow();
        goto LABEL_64;
      }

      sub_25A872D74(&v109, &v101);
      v41 = v4[9];
      v42 = v4[10];
      v43 = swift_getObjectType();
      v44 = *(v42 + 64);
      swift_unknownObjectRetain();
      v44(&v109, v43, v42);
      swift_unknownObjectRelease();
      sub_25A896580(v100);
      sub_25A872CE0(&v109);
      v58 = v4[7];
      v57 = v4[8];

      v59 = sub_25A901A8C();
      if (v59 > 3)
      {
        if (v59 > 5)
        {
          if (v59 != 6)
          {
            if (qword_27FA043C0 != -1)
            {
              swift_once();
            }

            v65 = sub_25A997BD8();
            __swift_project_value_buffer(v65, qword_27FA0FCE8);

            v66 = sub_25A997BB8();
            v67 = sub_25A9983A8();
            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              *&v109 = v69;
              *v68 = 136315394;
              v70 = v4[7];
              v71 = v4[8];

              v72 = sub_25A98CC90(v70, v71, &v109);

              *(v68 + 4) = v72;
              *(v68 + 12) = 2048;
              *(v68 + 14) = v4[2];

              _os_log_impl(&dword_25A232000, v66, v67, "AugAssign> Invalid binary operator %s: line %ld", v68, 0x16u);
              __swift_destroy_boxed_opaque_existential_0Tm(v69);
              MEMORY[0x25F852800](v69, -1, -1);
              MEMORY[0x25F852800](v68, -1, -1);
            }

            else
            {
            }

            sub_25A874F54();
            swift_allocError();
            *v97 = 109;
            goto LABEL_63;
          }

          sub_25A87500C(&v101, v99);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04568, &qword_25A9F8718);
          if (swift_dynamicCast())
          {
            goto LABEL_46;
          }

          v106 = 0;
          v104 = 0u;
          v105 = 0u;
          v73 = &unk_27FA04570;
          v74 = &unk_25A9F8720;
        }

        else if (v59 == 4)
        {
          sub_25A87500C(&v101, v99);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04588, &qword_25A9F8738);
          if (swift_dynamicCast())
          {
            goto LABEL_46;
          }

          v106 = 0;
          v104 = 0u;
          v105 = 0u;
          v73 = &unk_27FA04590;
          v74 = &unk_25A9F8740;
        }

        else
        {
          sub_25A87500C(&v101, v99);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04578, &qword_25A9F8728);
          if (swift_dynamicCast())
          {
            goto LABEL_46;
          }

          v106 = 0;
          v104 = 0u;
          v105 = 0u;
          v73 = &unk_27FA04580;
          v74 = &unk_25A9F8730;
        }
      }

      else if (v59 > 1)
      {
        if (v59 == 2)
        {
          sub_25A87500C(&v101, v99);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045A8, &qword_25A9F8758);
          if (swift_dynamicCast())
          {
            goto LABEL_46;
          }

          v106 = 0;
          v104 = 0u;
          v105 = 0u;
          v73 = &unk_27FA045B0;
          v74 = &unk_25A9F8760;
        }

        else
        {
          sub_25A87500C(&v101, v99);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04598, &qword_25A9F8748);
          if (swift_dynamicCast())
          {
LABEL_46:
            sub_25A87817C(&v104, &v109);
            sub_25A872F24(v114, &v104);
            v61 = *(&v105 + 1);
            v62 = v106;
            __swift_project_boxed_opaque_existential_1(&v104, *(&v105 + 1));
            sub_25A87500C(v115 + 8, v99);
            v63 = *(&v110 + 1);
            v64 = v111;
            __swift_project_boxed_opaque_existential_1(&v109, *(&v110 + 1));
            (*(v64 + 8))(v98, v100, v63, v64);
            (*(v62 + 8))(v99, v98, v61, v62);
            __swift_destroy_boxed_opaque_existential_0Tm(v98);
            __swift_destroy_boxed_opaque_existential_0Tm(v99);
            __swift_destroy_boxed_opaque_existential_0Tm(v100);
            __swift_destroy_boxed_opaque_existential_0Tm(&v101);
            sub_25A878194(&v107, &qword_27FA04458, &unk_25A9F7FB0);
            sub_25A878128(v114);
            __swift_destroy_boxed_opaque_existential_0Tm(&v104);
            result = __swift_destroy_boxed_opaque_existential_0Tm(&v109);
            *(a1 + 32) = 0;
            *a1 = 0u;
            *(a1 + 16) = 0u;
            return result;
          }

          v106 = 0;
          v104 = 0u;
          v105 = 0u;
          v73 = &unk_27FA045A0;
          v74 = &unk_25A9F8750;
        }
      }

      else if (v59)
      {
        sub_25A87500C(&v101, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045B8, &qword_25A9F8768);
        if (swift_dynamicCast())
        {
          goto LABEL_46;
        }

        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        v73 = &unk_27FA045C0;
        v74 = &unk_25A9F8770;
      }

      else
      {
        sub_25A87500C(&v101, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045C8, &qword_25A9F8778);
        if (swift_dynamicCast())
        {
          goto LABEL_46;
        }

        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        v73 = &unk_27FA045D0;
        v74 = &unk_25A9F8780;
      }

      sub_25A878194(&v104, v73, v74);
      sub_25A874F54();
      swift_allocError();
      *v75 = 109;
      swift_willThrow();
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v76 = sub_25A997BD8();
      __swift_project_value_buffer(v76, qword_27FA0FCE8);
      swift_retain_n();
      v77 = sub_25A997BB8();
      v78 = sub_25A9983A8();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *&v109 = v80;
        *v79 = 136315906;
        v81 = v4[5];
        v82 = v4[6];
        swift_getObjectType();
        *&v104 = v81;
        v83 = *(v82 + 8);
        v84 = sub_25A998968();
        v86 = sub_25A98CC90(v84, v85, &v109);

        *(v79 + 4) = v86;
        *(v79 + 12) = 2080;
        v88 = v4[7];
        v87 = v4[8];

        v89 = sub_25A98CC90(v88, v87, &v109);

        *(v79 + 14) = v89;
        *(v79 + 22) = 2080;
        v90 = v4[9];
        v91 = v4[10];
        swift_getObjectType();
        *&v104 = v90;
        v92 = *(v91 + 8);
        v93 = sub_25A998968();
        v95 = sub_25A98CC90(v93, v94, &v109);

        *(v79 + 24) = v95;
        *(v79 + 32) = 2048;
        v96 = v4[2];

        *(v79 + 34) = v96;

        _os_log_impl(&dword_25A232000, v77, v78, "AugAssign> target: %s, op: %s and value: %s are not supported. line %ld", v79, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x25F852800](v80, -1, -1);
        MEMORY[0x25F852800](v79, -1, -1);
      }

      else
      {
      }

LABEL_63:
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(v100);
      __swift_destroy_boxed_opaque_existential_0Tm(&v101);
LABEL_64:
      sub_25A878194(&v107, &qword_27FA04458, &unk_25A9F7FB0);
      return sub_25A878128(v114);
    }

    sub_25A87817C(&v101, &v109);
    v39 = *(&v110 + 1);
    v40 = v111;
    __swift_project_boxed_opaque_existential_1(&v109, *(&v110 + 1));
    (*(v40 + 8))(&v104, v115 + 8, v39, v40);
LABEL_16:
    sub_25A878194(&v107, &qword_27FA04458, &unk_25A9F7FB0);
    v107 = v104;
    v108 = v105;
    __swift_destroy_boxed_opaque_existential_0Tm(&v109);
    goto LABEL_18;
  }

  sub_25A878194(&v109, &qword_27FA04548, &unk_25A9F86F0);
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v26 = sub_25A997BD8();
  __swift_project_value_buffer(v26, qword_27FA0FCE8);
  swift_retain_n();
  v27 = sub_25A997BB8();
  v28 = sub_25A9983A8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v114[0] = v30;
    *v29 = 136315394;
    v31 = v4[5];
    v32 = v4[6];
    swift_getObjectType();
    *&v109 = v31;
    v33 = *(v32 + 8);
    v34 = sub_25A998968();
    v36 = sub_25A98CC90(v34, v35, v114);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2048;
    v37 = v4[2];

    *(v29 + 14) = v37;

    _os_log_impl(&dword_25A232000, v27, v28, "AugAssign> Invalid target %s: line %ld", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x25F852800](v30, -1, -1);
    MEMORY[0x25F852800](v29, -1, -1);
  }

  else
  {
  }

  sub_25A874F54();
  swift_allocError();
  *v38 = 109;
  return swift_willThrow();
}

uint64_t sub_25A877F20()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v1[6];
  swift_getObjectType();
  v4 = *(v3 + 8);
  sub_25A9989B8();
  MEMORY[0x25F850290](32, 0xE100000000000000);
  v5 = v1[7];
  v6 = v1[8];

  MEMORY[0x25F850290](v5, v6);

  MEMORY[0x25F850290](8253, 0xE200000000000000);
  v8 = v1[9];
  v7 = v1[10];
  swift_getObjectType();
  v9 = *(v7 + 8);
  sub_25A9989B8();
  return 0;
}

uint64_t sub_25A877FEC()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[8];

  v3 = v0[9];

  return swift_unknownObjectRelease();
}

uint64_t sub_25A878024()
{
  sub_25A872F88((v0 + 3));
  v1 = v0[5];

  swift_unknownObjectRelease();
  v2 = v0[8];

  v3 = v0[9];

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A8780B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25A87817C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25A878194(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_25A8781F4()
{
  result = qword_27FA045F0;
  if (!qword_27FA045F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA045F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExprContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExprContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25A8783A4()
{
  result = qword_27FA045F8;
  if (!qword_27FA045F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA045F8);
  }

  return result;
}

unint64_t sub_25A8783FC()
{
  result = qword_27FA04600;
  if (!qword_27FA04600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04600);
  }

  return result;
}

unint64_t sub_25A878454()
{
  result = qword_27FA04608;
  if (!qword_27FA04608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04608);
  }

  return result;
}

uint64_t sub_25A8784A8()
{
  v0 = sub_25A9988C8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25A8784F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7365756C6176;
  }

  else
  {
    v4 = 1937335659;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x7365756C6176;
  }

  else
  {
    v6 = 1937335659;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t sub_25A878590()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A878608()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A87866C()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8786E0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25A878740(uint64_t *a1@<X8>)
{
  v2 = 1937335659;
  if (*v1)
  {
    v2 = 0x7365756C6176;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A878774()
{
  if (*v0)
  {
    result = 0x7365756C6176;
  }

  else
  {
    result = 1937335659;
  }

  *v0;
  return result;
}

uint64_t sub_25A8787A4@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

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

uint64_t sub_25A878808(uint64_t a1)
{
  v2 = sub_25A8795F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A878844(uint64_t a1)
{
  v2 = sub_25A8795F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8788CC(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04628, &qword_25A9F8920);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8795F4();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for MorpheusDict();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 40) = sub_25A93E5C8(v9, 0);
    *(v1 + 48) = sub_25A93E5C8(v9, 1);
    sub_25A872F24(a1, v13);
    v3 = sub_25A8963D8(v13);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A878AD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = *(v1 + 40);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
LABEL_17:
    v72 = v5;
    v22 = *(v2 + 48);
    v23 = *(v22 + 16);
    v24 = MEMORY[0x277D84F90];
    if (!v23)
    {
      goto LABEL_35;
    }

    v87 = MEMORY[0x277D84F90];

    sub_25A937550(0, v23, 0);
    v24 = v87;
    swift_beginAccess();
    v25 = 0;
    v26 = (v22 + 40);
    v27 = v69;
    v64 = v23;
    v66 = v22;
    while (1)
    {
      if (v25 >= *(v22 + 16))
      {
        goto LABEL_59;
      }

      v28 = v24;
      v29 = *(v26 - 1);
      v30 = *v26;
      v70 = v26;
      v31 = v27;
      ObjectType = swift_getObjectType();
      Strong = swift_unknownObjectWeakLoadStrong();
      v34 = *(v2 + 32);
      v35 = *(v30 + 48);
      swift_unknownObjectRetain();
      v35(Strong, v34, ObjectType, v30);
      (*(v30 + 64))(&v81, ObjectType, v30);
      v27 = v31;
      if (v31)
      {

        swift_unknownObjectRelease();
      }

      sub_25A872C84(&v81, &v78);
      v36 = v28;
      if (v80)
      {
        sub_25A872CE0(&v78);
        sub_25A872C84(&v81, &v78);
        v22 = v66;
        v2 = v67;
        if (v80 == 1)
        {
          v73 = v78;
          v74 = v79;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
          v37 = v64;
          if ((swift_dynamicCast() & 1) == 0)
          {
            v85 = 0u;
            v86 = 0u;
          }

          goto LABEL_30;
        }

        sub_25A872CE0(&v78);
      }

      else
      {
        v73 = v78;
        v74 = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
        v22 = v66;
        v2 = v67;
        if (swift_dynamicCast())
        {
          goto LABEL_29;
        }
      }

      v85 = 0u;
      v86 = 0u;
LABEL_29:
      v37 = v64;
LABEL_30:
      sub_25A872CE0(&v81);
      sub_25A92DE50(&v85, &v75);
      swift_unknownObjectRelease();
      sub_25A878194(&v85, &qword_27FA04458, &unk_25A9F7FB0);
      v87 = v36;
      v39 = v36[2];
      v38 = v36[3];
      v40 = v36;
      if (v39 >= v38 >> 1)
      {
        sub_25A937550((v38 > 1), v39 + 1, 1);
        v40 = v87;
      }

      ++v25;
      v40[2] = v39 + 1;
      sub_25A872D74(&v75, &v40[4 * v39 + 4]);
      v26 = v70 + 2;
      v24 = v40;
      if (v37 == v25)
      {

LABEL_35:
        v41 = sub_25A98E540(MEMORY[0x277D84F90]);
        v42 = v72;
        v68 = *(v72 + 16);
        if (!v68)
        {
LABEL_55:

LABEL_57:
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
          v62 = swift_allocObject();
          *(v62 + 16) = MEMORY[0x277D84F98];
          result = swift_beginAccess();
          *(v62 + 16) = v41;
          *(a1 + 24) = v61;
          *a1 = v62;
          *(a1 + 32) = 0;
          return result;
        }

        v43 = 0;
        v44 = v72 + 32;
        v45 = v24;
        v46 = (v24 + 4);
        while (2)
        {
          if (v43 >= *(v42 + 16))
          {
            goto LABEL_60;
          }

          sub_25A879530(v44, &v78);
          v47 = v45[2];
          if (v43 == v47)
          {

            sub_25A878194(&v78, &qword_27FA04610, &qword_25A9FDA50);
            goto LABEL_57;
          }

          if (v43 >= v47)
          {
            goto LABEL_61;
          }

          v81 = v78;
          v82 = v79;
          v83 = v80;
          sub_25A87500C(v46, v84);
          sub_25A879530(&v81, &v75);
          if (*(&v76 + 1))
          {
            v78 = v75;
            v79 = v76;
            v80 = v77;
            sub_25A874FB0(&v78, &v75);
            sub_25A92D814(v84, &v85);
            sub_25A872D74(&v85, &v73);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v87 = v41;
            v50 = sub_25A8F35BC(&v75);
            v51 = v41[2];
            v52 = (v49 & 1) == 0;
            v53 = v51 + v52;
            if (__OFADD__(v51, v52))
            {
              goto LABEL_62;
            }

            v54 = v49;
            if (v41[3] >= v53)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v41 = v87;
                if ((v49 & 1) == 0)
                {
                  goto LABEL_47;
                }
              }

              else
              {
                sub_25A968DB8();
                v41 = v87;
                if ((v54 & 1) == 0)
                {
                  goto LABEL_47;
                }
              }
            }

            else
            {
              sub_25A9679D0(v53, isUniquelyReferenced_nonNull_native);
              v55 = sub_25A8F35BC(&v75);
              if ((v54 & 1) != (v56 & 1))
              {
                goto LABEL_64;
              }

              v50 = v55;
              v41 = v87;
              if ((v54 & 1) == 0)
              {
LABEL_47:
                v41[(v50 >> 6) + 8] |= 1 << v50;
                sub_25A874FB0(&v75, v41[6] + 40 * v50);
                sub_25A872D74(&v73, (v41[7] + 32 * v50));
                v57 = v41[2];
                v58 = __OFADD__(v57, 1);
                v59 = v57 + 1;
                if (v58)
                {
                  goto LABEL_63;
                }

                v41[2] = v59;
LABEL_52:
                sub_25A8795A0(&v75);
                sub_25A8795A0(&v78);
LABEL_38:
                ++v43;
                sub_25A878194(&v81, &qword_27FA04618, &qword_25A9F8918);
                v44 += 40;
                v46 += 32;
                v42 = v72;
                if (v68 == v43)
                {
                  goto LABEL_55;
                }

                continue;
              }
            }

            v60 = (v41[7] + 32 * v50);
            __swift_destroy_boxed_opaque_existential_0Tm(v60);
            sub_25A872D74(&v73, v60);
            goto LABEL_52;
          }

          break;
        }

        sub_25A878194(&v75, &qword_27FA04610, &qword_25A9FDA50);
        goto LABEL_38;
      }
    }
  }

  *&v73 = MEMORY[0x277D84F90];

  sub_25A937630(0, v4, 0);
  v71 = v73;
  swift_beginAccess();
  v6 = 0;
  v7 = (v3 + 40);
  v65 = v3;
  while (v6 < *(v3 + 16))
  {
    v8 = v4;
    v9 = *(v7 - 1);
    v10 = *v7;
    v11 = swift_getObjectType();
    v12 = swift_unknownObjectWeakLoadStrong();
    v13 = *(v2 + 32);
    v14 = *(v10 + 48);
    swift_unknownObjectRetain();
    v14(v12, v13, v11, v10);
    (*(v10 + 64))(&v78, v11, v10);
    if (v69)
    {

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    sub_25A872C84(&v78, &v75);
    if (v77)
    {
      sub_25A872CE0(&v75);
      LOBYTE(v77) = v80;
      v75 = v78;
      v76 = v79;
      v2 = v67;
      v4 = v8;
      if (v80 != 1)
      {
        sub_25A872CE0(&v75);
        v81 = 0u;
        v82 = 0u;
        v83 = 0;
        goto LABEL_12;
      }

      v85 = v78;
      v86 = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      if (swift_dynamicCast())
      {
        goto LABEL_12;
      }

LABEL_10:
      v83 = 0;
      v81 = 0u;
      v82 = 0u;
      goto LABEL_12;
    }

    sub_25A872CE0(&v78);
    v85 = v75;
    v86 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
    v2 = v67;
    v4 = v8;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    v15 = v71;
    *&v73 = v71;
    v17 = *(v71 + 16);
    v16 = *(v71 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_25A937630((v16 > 1), v17 + 1, 1);
      v15 = v73;
    }

    ++v6;
    *(v15 + 16) = v17 + 1;
    v71 = v15;
    v18 = v15 + 40 * v17;
    v19 = v81;
    v20 = v82;
    *(v18 + 64) = v83;
    *(v18 + 32) = v19;
    *(v18 + 48) = v20;
    v7 += 2;
    v3 = v65;
    if (v4 == v6)
    {

      v5 = v71;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  result = sub_25A998AA8();
  __break(1u);
  return result;
}

uint64_t sub_25A879338()
{
  v1 = v0;
  sub_25A9985F8();

  v2 = *(v0 + 40);

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04450, "lT\a");
  v4 = MEMORY[0x25F850440](v2, v3);
  v6 = v5;

  MEMORY[0x25F850290](v4, v6);

  MEMORY[0x25F850290](0x7365756C6176202CLL, 0xEA0000000000203ALL);
  v7 = *(v1 + 48);

  v9 = MEMORY[0x25F850440](v8, v3);
  v11 = v10;

  MEMORY[0x25F850290](v9, v11);

  MEMORY[0x25F850290](41, 0xE100000000000000);
  return 0x79656B2874636964;
}

uint64_t sub_25A879474()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
}

uint64_t sub_25A8794A4()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_25A879530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04610, &qword_25A9FDA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25A8795F4()
{
  result = qword_27FA04630;
  if (!qword_27FA04630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04630);
  }

  return result;
}

unint64_t sub_25A87965C()
{
  result = qword_27FA04638;
  if (!qword_27FA04638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04638);
  }

  return result;
}

unint64_t sub_25A8796B4()
{
  result = qword_27FA04640;
  if (!qword_27FA04640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04640);
  }

  return result;
}

unint64_t sub_25A87970C()
{
  result = qword_27FA04648;
  if (!qword_27FA04648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04648);
  }

  return result;
}

uint64_t sub_25A879760()
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A8797BC()
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A879804@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_25A87987C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25A9988C8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_25A8798D4(uint64_t a1)
{
  v2 = sub_25A87B2A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A879910(uint64_t a1)
{
  v2 = sub_25A87B2A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A879998(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04650, &qword_25A9F8AB0);
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  type metadata accessor for LexicalContext();
  v8 = swift_allocObject();
  v8[2] = 0x6E776F6E6B6E55;
  v8[3] = 0xE700000000000000;
  v9 = MEMORY[0x277D84F90];
  v10 = sub_25A98E540(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(v11 + 16) = v10;
  v8[4] = v11;
  v8[5] = sub_25A98E67C(v9);
  *(v2 + 48) = v8;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A87B2A8();
  v13 = v30;
  sub_25A998BF8();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v14 = *(v2 + 48);

    type metadata accessor for LexicalBlock();
    swift_deallocPartialClassInstance();
    return v2;
  }

  v26 = v4;
  *(v2 + 40) = sub_25A9428F4(v7);
  sub_25A872F24(a1, v29);
  v16 = sub_25A8963D8(v29);
  v2 = v16;
  v25 = v7;
  v17 = *(v16 + 40);
  v18 = *(v17 + 16);

  v30 = v17;

  v27 = v18;
  if (!v18)
  {
LABEL_9:

    (*(v28 + 8))(v25, v26);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    return v2;
  }

  v19 = 0;
  v20 = (v30 + 40);
  while (v19 < *(v30 + 16))
  {
    ++v19;
    v21 = *(v20 - 1);
    v22 = *v20;
    ObjectType = swift_getObjectType();
    v24 = *(v22 + 48);

    swift_unknownObjectRetain();
    v24(v2, &off_286C0F948, ObjectType, v22);
    result = swift_unknownObjectRelease();
    v20 += 2;
    if (v27 == v19)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_25A879CE8@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 48);

  LexicalContext.attribute(for:)(a1, a2, &v18);

  if (v19)
  {
    sub_25A872D74(&v18, a3);
  }

  else
  {
    sub_25A872D84(&v18);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v4 + 32);
      ObjectType = swift_getObjectType();
      (*(v10 + 48))(a1, a2, ObjectType, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v12 = sub_25A997BD8();
      __swift_project_value_buffer(v12, qword_27FA0FCE8);

      v13 = sub_25A997BB8();
      v14 = sub_25A9983A8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v17 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_25A98CC90(a1, a2, &v17);
        _os_log_impl(&dword_25A232000, v13, v14, "LexicalBlock> Can't locate name %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x25F852800](v16, -1, -1);
        MEMORY[0x25F852800](v15, -1, -1);
      }

      result = 0.0;
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  return result;
}

uint64_t sub_25A879EEC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + 48);

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v8 = LexicalContext.has(attribute:)(v7);

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v3 + 32);
      ObjectType = swift_getObjectType();
      v9 = (*(v10 + 56))(a1, a2, ObjectType, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t sub_25A879FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 48);
  v12[3] = MEMORY[0x277D837D0];
  v12[0] = a1;
  v12[1] = a2;
  sub_25A87500C(v12, v11);

  if (swift_dynamicCast())
  {
    v6 = *(v5 + 32);

    sub_25A998578();
    sub_25A87500C(a3, v10);
    sub_25A874FB0(v11, &v9);
    sub_25A8780B8(v10, v8);
    swift_beginAccess();
    sub_25A8F2E14(v8, &v9);
    swift_endAccess();

    sub_25A872D84(v10);
    sub_25A8795A0(v11);
  }

  else
  {
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v12);
}

uint64_t sub_25A87A108(uint64_t a1, uint64_t a2)
{
  swift_retain_n();
  v4 = &off_286C0F948;
  v20 = v2;
  while (1)
  {
    ObjectType = swift_getObjectType();
    v6 = v4[1];
    v7 = v6(ObjectType, v4);
    v8 = *(v7 + 32);
    *&v22[0] = a1;
    *(&v22[0] + 1) = a2;

    sub_25A998578();
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16))
    {
      break;
    }

LABEL_6:
    sub_25A8795A0(v23);
    memset(v22, 0, sizeof(v22));
    sub_25A872D84(v22);
    swift_beginAccess();
    if (*(*(v7 + 40) + 16))
    {
      v13 = *(v7 + 40);

      sub_25A8F3600(a1, a2);
      v15 = v14;

      if (v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v16 = (v4[2])(ObjectType, v4);
    v4 = v17;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v16)
    {
      v18 = *(v20 + 48);

      return v18;
    }

    swift_unknownObjectRetain();
  }

  v10 = *(v8 + 16);

  v11 = sub_25A8F35BC(v23);
  if ((v12 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_25A87500C(*(v9 + 56) + 32 * v11, v22);

  sub_25A8795A0(v23);

  sub_25A872D84(v22);

LABEL_14:
  v18 = v6(ObjectType, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_25A87A380@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v5 = *(v2 + 40);
  v6 = *(v5 + 16);

  v23 = v6;
  if (v6)
  {
    v8 = 0;
    v9 = (v5 + 40);
    while (v8 < *(v5 + 16))
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 64);
      swift_unknownObjectRetain();
      v13(v18, ObjectType, v11);
      swift_unknownObjectRelease();
      if (v4)
      {

        return sub_25A872CE0(&v20);
      }

      sub_25A872CE0(&v20);
      v20 = v18[0];
      v21 = v18[1];
      v22 = v19;
      sub_25A872C84(&v20, v18);
      if (v19)
      {

        result = sub_25A872CE0(v18);
        v14 = v21;
        *a2 = v20;
        *(a2 + 16) = v14;
        *(a2 + 32) = v22;
        return result;
      }

      ++v8;
      result = sub_25A872CE0(v18);
      v9 += 2;
      if (v23 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    sub_25A872C84(&v20, a2);
    sub_25A87A508(a1 & 1, v16);
    return sub_25A872CE0(&v20);
  }

  return result;
}

uint64_t sub_25A87A508(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(a2 + 48);
    v3 = *(v2 + 32);
    swift_beginAccess();
    v4 = *(v3 + 16);
    v5 = MEMORY[0x277D84F98];
    *(v3 + 16) = MEMORY[0x277D84F98];

    swift_beginAccess();
    v6 = *(v2 + 40);
    *(v2 + 40) = v5;
  }

  return result;
}

uint64_t sub_25A87A5A4()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];

    sub_25A9375A0(0, v2, 0);
    v3 = v21;
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      swift_getObjectType();
      v7 = *(v6 + 8);
      v8 = sub_25A998968();
      v22 = v3;
      v11 = v3[2];
      v10 = v3[3];
      if (v11 >= v10 >> 1)
      {
        v13 = v8;
        v14 = v9;
        sub_25A9375A0((v10 > 1), v11 + 1, 1);
        v9 = v14;
        v8 = v13;
        v3 = v22;
      }

      v3[2] = v11 + 1;
      v12 = &v3[2 * v11];
      v12[4] = v8;
      v12[5] = v9;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  v15 = v3[2];
  if (v15)
  {
    v16 = v3 + 5;
    do
    {
      v19 = *(v16 - 1);
      v20 = *v16;
      swift_bridgeObjectRetain_n();
      MEMORY[0x25F850290](10, 0xE100000000000000);

      MEMORY[0x25F850290](v19, v20);

      v16 += 2;
      --v15;
    }

    while (v15);
  }

  v17 = _sSS8MorpheusE3lenSiyF_0();
  if (v17 >= 1)
  {
    sub_25A87A744(v17);
  }

  return 0;
}

uint64_t sub_25A87A744(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_25A997F38();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t sub_25A87A7AC(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v78 = v1;
  v79 = v5;
  while (v4)
  {
    v7 = v6;
LABEL_16:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = v10 | (v7 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_25A87500C(*(a1 + 56) + 32 * v11, &v90);
    *&v98 = v14;
    *(&v98 + 1) = v13;
    sub_25A872D74(&v90, &v99);

LABEL_17:
    v101 = v98;
    v102[0] = v99;
    v102[1] = v100;
    v15 = *(&v98 + 1);
    if (!*(&v98 + 1))
    {
    }

    v16 = v101;
    sub_25A872D74(v102, v97);
    sub_25A87500C(v97, &v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04450, "lT\a");
    if (swift_dynamicCast())
    {
      v81 = v16;
      v17 = v90;
      swift_getObjectType();
      (*(*(&v17 + 1) + 64))(&v98);
      if (v83)
      {
        swift_unknownObjectRelease();

        return __swift_destroy_boxed_opaque_existential_0Tm(v97);
      }

      sub_25A872C84(&v98, &v90);
      if (v92)
      {
        sub_25A872CE0(&v90);
        v92 = v100;
        v90 = v98;
        v91 = v99;
        if (v100 != 1)
        {
          sub_25A872CE0(&v90);
          v93 = 0u;
          v94 = 0u;
          goto LABEL_41;
        }

        v18 = v98;
        v19 = v99;
      }

      else
      {
        sub_25A872CE0(&v98);
        v18 = v90;
        v19 = v91;
      }

      v88 = v18;
      v89 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v93 = 0u;
        v94 = 0u;
      }

      if (*(&v94 + 1))
      {
        sub_25A872D74(&v93, &v95);
        sub_25A92D814(&v95, &v93);
        v33 = *(v80 + 48);
        *(&v89 + 1) = MEMORY[0x277D837D0];
        *&v88 = v16;
        *(&v88 + 1) = v15;
        sub_25A87500C(&v88, &v98);

        if (swift_dynamicCast())
        {
          v34 = *(v33 + 32);

          sub_25A998578();
          sub_25A87500C(&v93, v87);
          sub_25A874FB0(&v98, &v90);
          sub_25A8780B8(v87, &v85);
          swift_beginAccess();
          if (v86)
          {
            sub_25A872D74(&v85, v84);
            v35 = *(v34 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v103 = *(v34 + 16);
            v37 = v103;
            *(v34 + 16) = 0x8000000000000000;
            v38 = sub_25A8F35BC(&v90);
            v40 = v37[2];
            v41 = (v39 & 1) == 0;
            v29 = __OFADD__(v40, v41);
            v42 = v40 + v41;
            if (v29)
            {
              goto LABEL_77;
            }

            v43 = v39;
            if (v37[3] >= v42)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v75 = v38;
                sub_25A968DB8();
                v38 = v75;
              }
            }

            else
            {
              sub_25A9679D0(v42, isUniquelyReferenced_nonNull_native);
              v38 = sub_25A8F35BC(&v90);
              if ((v43 & 1) != (v44 & 1))
              {
                goto LABEL_79;
              }
            }

            v68 = v103;
            v1 = v78;
            if (v43)
            {
              v69 = (v103[7] + 32 * v38);
              __swift_destroy_boxed_opaque_existential_0Tm(v69);
              sub_25A872D74(v84, v69);
              sub_25A8795A0(&v90);
            }

            else
            {
              v103[(v38 >> 6) + 8] |= 1 << v38;
              v70 = v38;
              sub_25A874FB0(&v90, v68[6] + 40 * v38);
              sub_25A872D74(v84, (v68[7] + 32 * v70));
              sub_25A8795A0(&v90);
              v71 = v68[2];
              v29 = __OFADD__(v71, 1);
              v72 = v71 + 1;
              if (v29)
              {
                goto LABEL_78;
              }

              v68[2] = v72;
            }

            v73 = *(v34 + 16);
            *(v34 + 16) = v68;
          }

          else
          {
            sub_25A872D84(&v85);
            sub_25A9699B4(&v90, v84);
            sub_25A872D84(v84);
            sub_25A8795A0(&v90);
          }

          swift_endAccess();
          swift_unknownObjectRelease();

          sub_25A872D84(v87);
          sub_25A8795A0(&v98);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v93);
        __swift_destroy_boxed_opaque_existential_0Tm(&v95);
        __swift_destroy_boxed_opaque_existential_0Tm(v97);
        __swift_destroy_boxed_opaque_existential_0Tm(&v88);
        v5 = v79;
      }

      else
      {
LABEL_41:
        sub_25A872D84(&v93);
        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v45 = sub_25A997BD8();
        __swift_project_value_buffer(v45, qword_27FA0FCE8);
        swift_unknownObjectRetain();

        v46 = sub_25A997BB8();
        v47 = sub_25A9983A8();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *&v98 = v77;
          *v48 = 136315394;
          *&v90 = v17;
          v49 = *(*(&v17 + 1) + 8);
          v50 = sub_25A998968();
          v52 = sub_25A98CC90(v50, v51, &v98);

          *(v48 + 4) = v52;
          *(v48 + 12) = 2080;
          v53 = sub_25A98CC90(v81, v15, &v98);

          *(v48 + 14) = v53;
          _os_log_impl(&dword_25A232000, v46, v47, "Operation: %s did not return value type, ignore the input %s", v48, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25F852800](v77, -1, -1);
          MEMORY[0x25F852800](v48, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v97);
        v1 = v78;
        v5 = v79;
      }
    }

    else
    {
      v20 = *(v80 + 48);
      v96 = MEMORY[0x277D837D0];
      *&v95 = v16;
      *(&v95 + 1) = v15;
      sub_25A87500C(&v95, &v98);

      if (swift_dynamicCast())
      {
        v21 = *(v20 + 32);

        sub_25A998578();
        sub_25A87500C(v97, &v93);
        sub_25A874FB0(&v98, &v90);
        sub_25A8780B8(&v93, &v88);
        swift_beginAccess();
        if (*(&v89 + 1))
        {
          sub_25A872D74(&v88, v87);
          v22 = *(v21 + 16);
          v23 = swift_isUniquelyReferenced_nonNull_native();
          *&v84[0] = *(v21 + 16);
          v24 = *&v84[0];
          *(v21 + 16) = 0x8000000000000000;
          v25 = sub_25A8F35BC(&v90);
          v27 = *(v24 + 16);
          v28 = (v26 & 1) == 0;
          v29 = __OFADD__(v27, v28);
          v30 = v27 + v28;
          if (v29)
          {
            goto LABEL_75;
          }

          v31 = v26;
          if (*(v24 + 24) >= v30)
          {
            if ((v23 & 1) == 0)
            {
              v74 = v25;
              sub_25A968DB8();
              v25 = v74;
            }
          }

          else
          {
            sub_25A9679D0(v30, v23);
            v25 = sub_25A8F35BC(&v90);
            if ((v31 & 1) != (v32 & 1))
            {
              goto LABEL_79;
            }
          }

          v62 = *&v84[0];
          v5 = v79;
          if (v31)
          {
            v63 = (*(*&v84[0] + 56) + 32 * v25);
            __swift_destroy_boxed_opaque_existential_0Tm(v63);
            sub_25A872D74(v87, v63);
            sub_25A8795A0(&v90);
          }

          else
          {
            *(*&v84[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
            v64 = v25;
            sub_25A874FB0(&v90, v62[6] + 40 * v25);
            sub_25A872D74(v87, (v62[7] + 32 * v64));
            sub_25A8795A0(&v90);
            v65 = v62[2];
            v29 = __OFADD__(v65, 1);
            v66 = v65 + 1;
            if (v29)
            {
              goto LABEL_76;
            }

            v62[2] = v66;
          }

          v67 = *(v21 + 16);
          *(v21 + 16) = v62;
        }

        else
        {
          sub_25A872D84(&v88);
          v54 = *(v21 + 16);
          v55 = sub_25A8F35BC(&v90);
          if (v56)
          {
            v57 = v55;
            v58 = *(v21 + 16);
            v59 = swift_isUniquelyReferenced_nonNull_native();
            v60 = *(v21 + 16);
            *&v84[0] = v60;
            *(v21 + 16) = 0x8000000000000000;
            if (!v59)
            {
              sub_25A968DB8();
              v60 = *&v84[0];
            }

            sub_25A8795A0(*(v60 + 48) + 40 * v57);
            sub_25A872D74((*(v60 + 56) + 32 * v57), v87);
            sub_25A969C84(v57, v60);
            sub_25A8795A0(&v90);
            v61 = *(v21 + 16);
            *(v21 + 16) = v60;
          }

          else
          {
            sub_25A8795A0(&v90);
            memset(v87, 0, sizeof(v87));
          }

          sub_25A872D84(v87);
        }

        swift_endAccess();

        sub_25A872D84(&v93);
        sub_25A8795A0(&v98);
        __swift_destroy_boxed_opaque_existential_0Tm(v97);
        v1 = v78;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v97);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v95);
    }
  }

  if (v5 <= v6 + 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8 - 1;
  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      v4 = 0;
      v99 = 0u;
      v100 = 0u;
      v6 = v9;
      v98 = 0u;
      goto LABEL_17;
    }

    v4 = *(v1 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  result = sub_25A998AA8();
  __break(1u);
  return result;
}

uint64_t sub_25A87B1D4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
}

uint64_t sub_25A87B204()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

unint64_t sub_25A87B2A8()
{
  result = qword_27FA04658;
  if (!qword_27FA04658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04658);
  }

  return result;
}

unint64_t sub_25A87B310()
{
  result = qword_27FA04660;
  if (!qword_27FA04660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04660);
  }

  return result;
}

unint64_t sub_25A87B368()
{
  result = qword_27FA04668;
  if (!qword_27FA04668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04668);
  }

  return result;
}

unint64_t sub_25A87B3C0()
{
  result = qword_27FA04670;
  if (!qword_27FA04670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04670);
  }

  return result;
}

uint64_t sub_25A87B414(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F746172656E6567;
  }

  else
  {
    v4 = 7629925;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xEA00000000007372;
  }

  if (*a2)
  {
    v6 = 0x6F746172656E6567;
  }

  else
  {
    v6 = 7629925;
  }

  if (*a2)
  {
    v7 = 0xEA00000000007372;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t sub_25A87B4B8()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A87B538()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A87B5A4()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A87B620@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25A87B680(uint64_t *a1@<X8>)
{
  v2 = 7629925;
  if (*v1)
  {
    v2 = 0x6F746172656E6567;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007372;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A87B6BC()
{
  if (*v0)
  {
    result = 0x6F746172656E6567;
  }

  else
  {
    result = 7629925;
  }

  *v0;
  return result;
}

uint64_t sub_25A87B6F4@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

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

uint64_t sub_25A87B758(uint64_t a1)
{
  v2 = sub_25A87BF54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A87B794(uint64_t a1)
{
  v2 = sub_25A87BF54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A87B81C(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04678, &unk_25A9FBDF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A87BF54();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for ListComp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A909810(v9, 0);
    v1[6] = v12;
    v1[7] = sub_25A946B5C(v9, 1);
    sub_25A872F24(a1, v14);
    v3 = sub_25A8963D8(v14);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A87BA20@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v6 = sub_25A936284();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = v4[4];
  swift_beginAccess();
  v9 = v6[3];
  v6[3] = Strong;
  v6[4] = v8;
  swift_unknownObjectRelease();
  v10 = v4[5];
  v11 = v4[6];
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 48);
  swift_unknownObjectRetain();

  v13(v14, &off_286C11D08, ObjectType, v11);
  swift_unknownObjectRelease();
  v15 = v4[7];
  v16 = *(v15 + 16);
  if (v16)
  {
    v30 = a1;
    v31 = v4;

    v17 = (v15 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v20 = swift_getObjectType();
      v21 = *(v19 + 48);

      swift_unknownObjectRetain();
      v21(v6, &off_286C11D08, v20, v19);
      swift_unknownObjectRelease();
      v17 += 2;
      --v16;
    }

    while (v16);

    v4 = v31;
    v22 = v31[7];
    v23 = *(v22 + 16);
    v33 = MEMORY[0x277D84F90];
    if (v23)
    {
      v32 = MEMORY[0x277D84F90];
      swift_retain_n();

      sub_25A998748();
      type metadata accessor for Comprehension();
      v24 = 32;
      do
      {
        v25 = *(v22 + v24);
        swift_dynamicCastClassUnconditional();
        swift_unknownObjectRetain();
        sub_25A998718();
        v26 = *(v32 + 16);
        sub_25A998758();
        sub_25A998768();
        sub_25A998728();
        v24 += 16;
        --v23;
      }

      while (v23);
      v4 = v31;
      v27 = v32;
      a1 = v30;
      goto LABEL_11;
    }

    a1 = v30;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  swift_retain_n();

  v27 = MEMORY[0x277D84F90];
LABEL_11:

  sub_25A9351B0(0, v27, v6, &off_286C11D08, &v33, v4);
  if (v3)
  {
  }

  else
  {

    v29 = v33;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);

    *a1 = v29;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_25A87BD6C(char **a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 64);
  swift_unknownObjectRetain();
  v7(v12, ObjectType, v5);
  result = swift_unknownObjectRelease();
  if (!v2)
  {
    sub_25A896580(v13);
    sub_25A872CE0(v12);
    v9 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_25A967488(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_25A967488((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    result = sub_25A872D74(v13, &v9[32 * v11 + 32]);
    *a1 = v9;
  }

  return result;
}

uint64_t sub_25A87BE98()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);
}

uint64_t sub_25A87BEC8()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 40);

  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

unint64_t sub_25A87BF54()
{
  result = qword_27FA04680;
  if (!qword_27FA04680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04680);
  }

  return result;
}

unint64_t sub_25A87BFBC()
{
  result = qword_27FA04688;
  if (!qword_27FA04688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04688);
  }

  return result;
}

unint64_t sub_25A87C014()
{
  result = qword_27FA04690;
  if (!qword_27FA04690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04690);
  }

  return result;
}

unint64_t sub_25A87C06C()
{
  result = qword_27FA04698;
  if (!qword_27FA04698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04698);
  }

  return result;
}

uint64_t sub_25A87C0C0()
{
  v0 = MEMORY[0x277D84F90];
  v1 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v24 = type metadata accessor for Function();
  v2 = swift_allocObject();
  v2[4] = v0;
  v2[5] = v0;
  v2[6] = v0;

  v2[7] = v0;

  v2[8] = v0;

  v2[9] = 0;
  v2[10] = 0;

  v2[11] = 0;
  v2[12] = 0;

  v2[13] = sub_25A92BDB4(v0);
  v2[2] = 0x7463656A626FLL;
  v2[3] = 0xE600000000000000;
  v3 = *(v2 + 5);
  v28[2] = *(v2 + 4);
  v28[3] = v3;
  v29 = v2[12];
  v4 = *(v2 + 3);
  v28[0] = *(v2 + 2);
  v28[1] = v4;
  v2[4] = v0;
  v2[5] = v0;
  v2[6] = v0;
  v2[7] = v0;
  v2[8] = v0;
  *(v2 + 9) = 0u;
  *(v2 + 11) = 0u;
  sub_25A892B80(v28);
  swift_beginAccess();
  v5 = v2[13];
  v2[13] = v1;

  v2[14] = sub_25A890624;
  v2[15] = 0;
  v6 = sub_25A98E67C(v0);
  type metadata accessor for PyBuiltInClass();
  v7 = swift_allocObject();
  v7[10] = v2;

  v8 = sub_25A967378(0, 1, 1, v0);
  v27[7] = v8;
  sub_25A96B0BC(0, 0, 1, 0x7463656A626FLL, 0xE600000000000000);
  v7[2] = 0x7463656A626FLL;
  v7[3] = 0xE600000000000000;
  v7[4] = 0x7463656A626FLL;
  v7[5] = 0xE600000000000000;
  v7[6] = v0;
  v7[7] = v8;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v7[8] = sub_25A936284();
  v7[9] = &off_286C11D08;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  result = swift_beginAccess();
  v13 = 0;
  for (i = (v9 + 63) >> 6; v11; result = __swift_destroy_boxed_opaque_existential_0Tm(v27))
  {
    v15 = v13;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = (*(v6 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(v6 + 56) + 8 * v17);
    v22 = v7[8];
    v23 = v7[9];
    ObjectType = swift_getObjectType();
    v27[0] = v21;
    v27[3] = v24;
    v25 = *(v23 + 64);
    swift_retain_n();

    swift_unknownObjectRetain();
    v25(v19, v20, v27, ObjectType, v23);

    swift_unknownObjectRelease();
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= i)
    {

      qword_27FA046A0 = v7;
      return result;
    }

    v11 = *(v6 + 64 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A87C420()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25A9F8D80;
  *(v0 + 32) = 0xD000000000000010;
  *(v0 + 40) = 0x800000025AA68A20;
  *(v0 + 48) = 0x7463656A626FLL;
  *(v0 + 56) = 0xE600000000000000;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v26 = type metadata accessor for Function();
  v3 = swift_allocObject();
  v3[4] = v1;
  v3[5] = v1;
  v3[6] = v1;

  v3[7] = v1;

  v3[8] = v1;

  v3[9] = 0;
  v3[10] = 0;

  v3[11] = 0;
  v3[12] = 0;

  v3[13] = sub_25A92BDB4(v1);
  v3[2] = 0xD000000000000010;
  v3[3] = 0x800000025AA68A20;
  v4 = *(v3 + 5);
  v32[2] = *(v3 + 4);
  v32[3] = v4;
  v33 = v3[12];
  v5 = *(v3 + 3);
  v32[0] = *(v3 + 2);
  v32[1] = v5;
  v3[4] = v1;
  v3[5] = v1;
  v3[6] = v1;
  v3[7] = v1;
  v3[8] = v1;
  *(v3 + 9) = 0u;
  *(v3 + 11) = 0u;
  sub_25A892B80(v32);
  swift_beginAccess();
  v6 = v3[13];
  v3[13] = v2;

  v3[14] = sub_25A890138;
  v3[15] = 0;
  v7 = sub_25A98E67C(v1);
  type metadata accessor for PyBuiltInClass();
  v8 = swift_allocObject();
  v8[10] = v3;

  v9 = sub_25A967378(1, 3, 1, v0);
  v31[7] = v9;
  sub_25A96B0BC(0, 0, 1, 0xD000000000000010, 0x800000025AA68A20);
  v8[2] = 0xD000000000000010;
  v8[3] = 0x800000025AA68A20;
  v8[4] = 0xD000000000000010;
  v8[5] = 0x800000025AA68A20;
  v8[6] = v1;
  v8[7] = v9;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v8[8] = sub_25A936284();
  v27 = v8;
  v28 = v7;
  v8[9] = &off_286C11D08;
  v10 = v7 + 64;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  result = swift_beginAccess();
  v15 = 0;
  for (i = (v11 + 63) >> 6; v13; result = __swift_destroy_boxed_opaque_existential_0Tm(v31))
  {
    v17 = v15;
LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v17 << 6);
    v20 = (*(v28 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v28 + 56) + 8 * v19);
    v24 = *(v27 + 64);
    v25 = *(v27 + 72);
    ObjectType = swift_getObjectType();
    v31[0] = v23;
    v31[3] = v26;
    v29 = *(v25 + 64);
    swift_retain_n();

    swift_unknownObjectRetain();
    v29(v21, v22, v31, ObjectType, v25);

    swift_unknownObjectRelease();
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= i)
    {

      qword_27FA046A8 = v27;
      return result;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A87C7D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v32 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v28 = type metadata accessor for Function();
  v4 = swift_allocObject();
  v4[4] = v2;
  v4[5] = v2;
  v4[6] = v2;

  v4[7] = v2;

  v4[8] = v2;

  v4[9] = 0;
  v4[10] = 0;

  v4[11] = 0;
  v4[12] = 0;

  v4[13] = sub_25A92BDB4(v2);
  v4[2] = 1701869940;
  v4[3] = 0xE400000000000000;
  v5 = *(v4 + 5);
  v34[2] = *(v4 + 4);
  v34[3] = v5;
  v35 = v4[12];
  v6 = *(v4 + 3);
  v34[0] = *(v4 + 2);
  v34[1] = v6;
  v4[4] = &unk_286C0B168;
  v4[5] = v2;
  v4[6] = v2;
  v4[7] = v2;
  v4[8] = v2;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  sub_25A892B80(v34);
  swift_beginAccess();
  v7 = v4[13];
  v4[13] = v3;

  v4[14] = sub_25A8905F8;
  v4[15] = 0;
  v8 = sub_25A96CF30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v9 = swift_allocObject();
  *(v9 + 16) = v32;
  *(v9 + 32) = 0x7463656A626FLL;
  *(v9 + 40) = 0xE600000000000000;
  v10 = swift_allocObject();
  v10[10] = v4;

  v11 = sub_25A967378(1, 2, 1, v9);
  v33[7] = v11;
  sub_25A96B0BC(0, 0, 1, 1701869940, 0xE400000000000000);
  v10[2] = 1701869940;
  v10[3] = 0xE400000000000000;
  v10[4] = 1701869940;
  v10[5] = 0xE400000000000000;
  v10[6] = v0;
  v10[7] = v11;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v10[8] = sub_25A936284();
  v29 = v10;
  v30 = v8;
  v10[9] = &off_286C11D08;
  v12 = v8 + 64;
  v13 = 1 << *(v8 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v8 + 64);
  swift_beginAccess();
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v18 = v16;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v30 + 48) + 16 * v20);
      v22 = *v21;
      v0 = v21[1];
      v23 = *(*(v30 + 56) + 8 * v20);
      v24 = *(v29 + 64);
      v25 = *(v29 + 72);
      ObjectType = swift_getObjectType();
      v33[3] = v28;
      v33[0] = v23;
      v31 = *(v25 + 64);
      *&v32 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v31(v22, v0, v33, v32, v25);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      if (!v15)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v17)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v16;
    if (v15)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  qword_27FA046B0 = v29;
  return result;
}

uint64_t sub_25A87CBE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(0x7463656A626FLL, 0xE600000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
    if (swift_dynamicCast())
    {
      if (*(&v15 + 1))
      {
        sub_25A87817C(&v14, v17);
        v6 = v18;
        v7 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        (*(v7 + 8))(&v14, v6, v7);
        v8 = *(&v15 + 1);
        v9 = __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
        a2[3] = v8;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
        (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v9, v8);
        __swift_destroy_boxed_opaque_existential_0Tm(&v14);
        return __swift_destroy_boxed_opaque_existential_0Tm(v17);
      }
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  sub_25A878194(&v14, &qword_27FA04750, "jN\a");
  sub_25A874F54();
  swift_allocError();
  *v12 = -121;
  return swift_willThrow();
}

uint64_t sub_25A87CE00()
{
  v0 = 0x800000025AA68A00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v1 = swift_allocObject();
  v22 = xmmword_25A9F8D90;
  *(v1 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v2 = qword_27FA046A0;
  *(v1 + 56) = type metadata accessor for PyBuiltInClass();
  *(v1 + 64) = sub_25A892BD4();
  *(v1 + 32) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v3 = swift_allocObject();
  *(v3 + 16) = v22;
  *(v3 + 32) = 0x7463656A626FLL;
  *(v3 + 40) = 0xE600000000000000;

  v4 = sub_25A98E67C(MEMORY[0x277D84F90]);
  v5 = swift_allocObject();
  v5[10] = 0;
  v6 = sub_25A967378(1, 2, 1, v3);
  v23[7] = v6;
  sub_25A96B0BC(0, 0, 1, 0xD00000000000001ALL, v0);
  v5[2] = 0xD00000000000001ALL;
  v5[3] = v0;
  v5[4] = 0xD00000000000001ALL;
  v5[5] = v0;
  v5[6] = v1;
  v5[7] = v6;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v5[8] = sub_25A936284();
  v20 = v5;
  v5[9] = &off_286C11D08;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  swift_beginAccess();
  v10 = 0;
  v11 = (v7 + 63) >> 6;
  if (v9)
  {
    while (1)
    {
      v12 = v10;
LABEL_10:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v12 << 6);
      v15 = (*(v4 + 48) + 16 * v14);
      v16 = *v15;
      v0 = v15[1];
      v1 = *(*(v4 + 56) + 8 * v14);
      v17 = *(v20 + 64);
      v18 = *(v20 + 72);
      *&v22 = swift_getObjectType();
      v23[3] = type metadata accessor for Function();
      v23[0] = v1;
      v21 = *(v18 + 64);
      swift_retain_n();

      swift_unknownObjectRetain();
      v21(v16, v0, v23, v22, v18);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v12 >= v11)
    {
      break;
    }

    v9 = *(v4 + 64 + 8 * v12);
    ++v10;
    if (v9)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  qword_27FA046C0 = v20;
  return result;
}

uint64_t sub_25A87D140()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v24 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = sub_25A983D70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v3 = swift_allocObject();
  *(v3 + 16) = v24;
  *(v3 + 32) = 0x7463656A626FLL;
  *(v3 + 40) = 0xE600000000000000;
  v4 = swift_allocObject();
  *(v4 + 80) = 0;
  v5 = sub_25A967378(1, 2, 1, v3);
  v25[7] = v5;
  sub_25A96B0BC(0, 0, 1, 0x646E2E79706D756ELL, 0xED00007961727261);
  strcpy((v4 + 16), "numpy.ndarray");
  *(v4 + 30) = -4864;
  strcpy((v4 + 32), "numpy.ndarray");
  *(v4 + 46) = -4864;
  *(v4 + 48) = v0;
  *(v4 + 56) = v5;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  *(v4 + 64) = sub_25A936284();
  v21 = v4;
  v22 = v2;
  *(v4 + 72) = &off_286C11D08;
  v6 = v2 + 64;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  swift_beginAccess();
  v10 = 0;
  v11 = (v7 + 63) >> 6;
  if (v9)
  {
    while (1)
    {
      v12 = v10;
LABEL_10:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v12 << 6);
      v15 = (*(v22 + 48) + 16 * v14);
      v16 = *v15;
      v0 = v15[1];
      v17 = *(*(v22 + 56) + 8 * v14);
      v18 = *(v21 + 64);
      v19 = *(v21 + 72);
      *&v24 = swift_getObjectType();
      v25[3] = type metadata accessor for Function();
      v25[0] = v17;
      v23 = *(v19 + 64);
      swift_retain_n();

      swift_unknownObjectRetain();
      v23(v16, v0, v25, v24, v19);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v12 >= v11)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v10;
    if (v9)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  qword_27FA046C8 = v21;
  return result;
}

uint64_t sub_25A87D498(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v6 = swift_allocObject();
  v29 = xmmword_25A9F8D90;
  *(v6 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v7 = qword_27FA046A0;
  *(v6 + 56) = type metadata accessor for PyBuiltInClass();
  *(v6 + 64) = sub_25A892BD4();
  *(v6 + 32) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v8 = swift_allocObject();
  *(v8 + 16) = v29;
  *(v8 + 32) = 0x7463656A626FLL;
  *(v8 + 40) = 0xE600000000000000;

  v9 = sub_25A98E67C(MEMORY[0x277D84F90]);
  v10 = swift_allocObject();
  v10[10] = 0;
  v11 = sub_25A967378(1, 2, 1, v8);
  v30[7] = v11;
  sub_25A96B0BC(0, 0, 1, a2, a3);
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = v6;
  v10[7] = v11;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v10[8] = sub_25A936284();
  v26 = v10;
  v27 = v9;
  v10[9] = &off_286C11D08;
  v12 = v9 + 64;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v9 + 64);
  swift_beginAccess();
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v18 = v16;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v27 + 48) + 16 * v20);
      v22 = *v21;
      a3 = v21[1];
      a2 = *(*(v27 + 56) + 8 * v20);
      v6 = v26[8];
      v23 = v26[9];
      *&v29 = swift_getObjectType();
      v30[3] = type metadata accessor for Function();
      v30[0] = a2;
      v28 = *(v23 + 64);
      swift_retain_n();

      swift_unknownObjectRetain();
      v28(v22, a3, v30, v29, v23);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      if (!v15)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v17)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v16;
    if (v15)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  *a4 = v26;
  return result;
}

uint64_t sub_25A87D808()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v32 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v28 = type metadata accessor for Function();
  v4 = swift_allocObject();
  *(v4 + 32) = v2;
  *(v4 + 40) = v2;
  *(v4 + 48) = v2;

  *(v4 + 56) = v2;

  *(v4 + 64) = v2;

  *(v4 + 72) = 0;
  *(v4 + 80) = 0;

  *(v4 + 88) = 0;
  *(v4 + 96) = 0;

  *(v4 + 104) = sub_25A92BDB4(v2);
  strcpy((v4 + 16), "staticmethod");
  *(v4 + 29) = 0;
  *(v4 + 30) = -5120;
  v5 = *(v4 + 80);
  v34[2] = *(v4 + 64);
  v34[3] = v5;
  v35 = *(v4 + 96);
  v6 = *(v4 + 48);
  v34[0] = *(v4 + 32);
  v34[1] = v6;
  *(v4 + 32) = &unk_286C0AFA8;
  *(v4 + 40) = v2;
  *(v4 + 48) = v2;
  *(v4 + 56) = v2;
  *(v4 + 64) = v2;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  sub_25A892B80(v34);
  swift_beginAccess();
  v7 = *(v4 + 104);
  *(v4 + 104) = v3;

  *(v4 + 112) = sub_25A8901C4;
  *(v4 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v8 = swift_allocObject();
  *(v8 + 16) = v32;
  *(v8 + 32) = 0x7463656A626FLL;
  *(v8 + 40) = 0xE600000000000000;
  v9 = sub_25A98E67C(v2);
  v10 = swift_allocObject();
  *(v10 + 80) = v4;

  v11 = sub_25A967378(1, 2, 1, v8);
  v33[7] = v11;
  sub_25A96B0BC(0, 0, 1, 0x656D636974617473, 0xEC000000646F6874);
  strcpy((v10 + 16), "staticmethod");
  *(v10 + 29) = 0;
  *(v10 + 30) = -5120;
  strcpy((v10 + 32), "staticmethod");
  *(v10 + 45) = 0;
  *(v10 + 46) = -5120;
  *(v10 + 48) = v0;
  *(v10 + 56) = v11;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  *(v10 + 64) = sub_25A936284();
  v29 = v10;
  v30 = v9;
  *(v10 + 72) = &off_286C11D08;
  v12 = v9 + 64;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v9 + 64);
  swift_beginAccess();
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v18 = v16;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v30 + 48) + 16 * v20);
      v22 = *v21;
      v0 = v21[1];
      v23 = *(*(v30 + 56) + 8 * v20);
      v24 = *(v29 + 64);
      v25 = *(v29 + 72);
      ObjectType = swift_getObjectType();
      v33[3] = v28;
      v33[0] = v23;
      v31 = *(v25 + 64);
      *&v32 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v31(v22, v0, v33, v32, v25);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      if (!v15)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v17)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v16;
    if (v15)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  qword_27FA046E0 = v29;
  return result;
}

uint64_t sub_25A87DC48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v32 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v28 = type metadata accessor for Function();
  v4 = swift_allocObject();
  v4[4] = v2;
  v4[5] = v2;
  v4[6] = v2;

  v4[7] = v2;

  v4[8] = v2;

  v4[9] = 0;
  v4[10] = 0;

  v4[11] = 0;
  v4[12] = 0;

  v4[13] = sub_25A92BDB4(v2);
  v4[2] = 0x74656D7373616C63;
  v4[3] = 0xEB00000000646F68;
  v5 = *(v4 + 5);
  v34[2] = *(v4 + 4);
  v34[3] = v5;
  v35 = v4[12];
  v6 = *(v4 + 3);
  v34[0] = *(v4 + 2);
  v34[1] = v6;
  v4[4] = &unk_286C0AF78;
  v4[5] = v2;
  v4[6] = v2;
  v4[7] = v2;
  v4[8] = v2;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  sub_25A892B80(v34);
  swift_beginAccess();
  v7 = v4[13];
  v4[13] = v3;

  v4[14] = sub_25A890198;
  v4[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v8 = swift_allocObject();
  *(v8 + 16) = v32;
  *(v8 + 32) = 0x7463656A626FLL;
  *(v8 + 40) = 0xE600000000000000;
  v9 = sub_25A98E67C(v2);
  v10 = swift_allocObject();
  v10[10] = v4;

  v11 = sub_25A967378(1, 2, 1, v8);
  v33[7] = v11;
  sub_25A96B0BC(0, 0, 1, 0x74656D7373616C63, 0xEB00000000646F68);
  v10[2] = 0x74656D7373616C63;
  v10[3] = 0xEB00000000646F68;
  v10[4] = 0x74656D7373616C63;
  v10[5] = 0xEB00000000646F68;
  v10[6] = v0;
  v10[7] = v11;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v10[8] = sub_25A936284();
  v29 = v10;
  v30 = v9;
  v10[9] = &off_286C11D08;
  v12 = v9 + 64;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v9 + 64);
  swift_beginAccess();
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v18 = v16;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v30 + 48) + 16 * v20);
      v22 = *v21;
      v0 = v21[1];
      v23 = *(*(v30 + 56) + 8 * v20);
      v24 = *(v29 + 64);
      v25 = *(v29 + 72);
      ObjectType = swift_getObjectType();
      v33[3] = v28;
      v33[0] = v23;
      v31 = *(v25 + 64);
      *&v32 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v31(v22, v0, v33, v32, v25);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      if (!v15)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v17)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v16;
    if (v15)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  qword_27FA046E8 = v29;
  return result;
}

uint64_t sub_25A87E064@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_25A8F3600(0x6E6F6974636E7566, 0xE800000000000000), (v7 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v6, v12), type metadata accessor for Function(), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v12[5];
    v9 = a2(0);
    result = swift_allocObject();
    *(result + 16) = v8;
    a3[3] = v9;
    *a3 = result;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v11 = -120;
    return swift_willThrow();
  }

  return result;
}

void *sub_25A87E190()
{
  result = sub_25A87E1B0();
  qword_27FA046F0 = result;
  return result;
}

void *sub_25A87E1B0()
{
  v0 = 0xED00006E6F697470;
  v1 = 0x6563784565736142;
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v29 = type metadata accessor for Function();
  v4 = swift_allocObject();
  *(v4 + 32) = v2;
  *(v4 + 40) = v2;
  *(v4 + 48) = v2;

  *(v4 + 56) = v2;

  *(v4 + 64) = v2;

  *(v4 + 72) = 0;
  *(v4 + 80) = 0;

  *(v4 + 88) = 0;
  *(v4 + 96) = 0;

  *(v4 + 104) = sub_25A92BDB4(v2);
  strcpy((v4 + 16), "BaseException");
  *(v4 + 30) = -4864;
  v5 = *(v4 + 80);
  v35[2] = *(v4 + 64);
  v35[3] = v5;
  v36 = *(v4 + 96);
  v6 = *(v4 + 48);
  v35[0] = *(v4 + 32);
  v35[1] = v6;
  *(v4 + 32) = v2;
  *(v4 + 40) = v2;
  *(v4 + 48) = v2;
  *(v4 + 56) = v2;
  *(v4 + 64) = v2;
  *(v4 + 72) = xmmword_25A9F8DA0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  sub_25A892B80(v35);
  swift_beginAccess();
  v7 = *(v4 + 104);
  *(v4 + 104) = v3;

  *(v4 + 112) = sub_25A890380;
  *(v4 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v8 = swift_allocObject();
  v33 = xmmword_25A9F8D90;
  *(v8 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v9 = qword_27FA046A0;
  *(v8 + 56) = type metadata accessor for PyBuiltInClass();
  *(v8 + 64) = sub_25A892BD4();
  *(v8 + 32) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v10 = swift_allocObject();
  *(v10 + 16) = v33;
  *(v10 + 32) = 0x7463656A626FLL;
  *(v10 + 40) = 0xE600000000000000;

  v11 = sub_25A98E67C(MEMORY[0x277D84F90]);
  v12 = swift_allocObject();
  v12[10] = v4;
  v28 = v4;

  v13 = sub_25A967378(1, 2, 1, v10);
  v34[7] = v13;
  sub_25A96B0BC(0, 0, 1, v1, v0);
  v12[2] = v1;
  v12[3] = v0;
  v12[4] = v1;
  v12[5] = v0;
  v12[6] = v8;
  v12[7] = v13;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v12[8] = sub_25A936284();
  v30 = v11;
  v31 = v12;
  v12[9] = &off_286C11D08;
  v14 = v11 + 64;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v4 = v16 & *(v11 + 64);
  swift_beginAccess();
  v17 = 0;
  v18 = (v15 + 63) >> 6;
  if (v4)
  {
    while (1)
    {
      v19 = v17;
LABEL_10:
      v20 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v21 = v20 | (v19 << 6);
      v22 = (*(v30 + 48) + 16 * v21);
      v23 = *v22;
      v0 = v22[1];
      v1 = *(*(v30 + 56) + 8 * v21);
      v8 = v31[8];
      v24 = v31[9];
      ObjectType = swift_getObjectType();
      v34[3] = v29;
      v34[0] = v1;
      v32 = *(v24 + 64);
      *&v33 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v32(v23, v0, v34, v33, v24);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v19 >= v18)
    {
      break;
    }

    v4 = *(v14 + 8 * v19);
    ++v17;
    if (v4)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  v26 = *(v28 + 120);
  *(v28 + 112) = sub_25A89543C;
  *(v28 + 120) = v31;

  return v31;
}

void *sub_25A87E62C()
{
  result = sub_25A87E64C();
  qword_27FA046F8 = result;
  return result;
}

void *sub_25A87E64C()
{
  v0 = 0xE90000000000006ELL;
  v1 = 0x6F69747065637845;
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v29 = type metadata accessor for Function();
  v4 = swift_allocObject();
  *(v4 + 32) = v2;
  *(v4 + 40) = v2;
  *(v4 + 48) = v2;

  *(v4 + 56) = v2;

  *(v4 + 64) = v2;

  *(v4 + 72) = 0;
  *(v4 + 80) = 0;

  *(v4 + 88) = 0;
  *(v4 + 96) = 0;

  *(v4 + 104) = sub_25A92BDB4(v2);
  *(v4 + 16) = 0x6F69747065637845;
  *(v4 + 24) = 0xE90000000000006ELL;
  v5 = *(v4 + 80);
  v35[2] = *(v4 + 64);
  v35[3] = v5;
  v36 = *(v4 + 96);
  v6 = *(v4 + 48);
  v35[0] = *(v4 + 32);
  v35[1] = v6;
  *(v4 + 32) = v2;
  *(v4 + 40) = v2;
  *(v4 + 48) = v2;
  *(v4 + 56) = v2;
  *(v4 + 64) = v2;
  *(v4 + 72) = xmmword_25A9F8DA0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  sub_25A892B80(v35);
  swift_beginAccess();
  v7 = *(v4 + 104);
  *(v4 + 104) = v3;

  *(v4 + 112) = sub_25A890318;
  *(v4 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25A9F8D90;
  if (qword_27FA04320 != -1)
  {
LABEL_14:
    swift_once();
  }

  v9 = qword_27FA046F0;
  *(v8 + 56) = type metadata accessor for PyBuiltInClass();
  *(v8 + 64) = sub_25A892BD4();
  *(v8 + 32) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25A9F8D80;
  strcpy((v10 + 32), "BaseException");
  *(v10 + 46) = -4864;
  *(v10 + 48) = 0x7463656A626FLL;
  *(v10 + 56) = 0xE600000000000000;

  v11 = sub_25A98E67C(MEMORY[0x277D84F90]);
  v12 = swift_allocObject();
  v12[10] = v4;
  v28 = v4;

  v13 = sub_25A967378(1, 3, 1, v10);
  v34[7] = v13;
  sub_25A96B0BC(0, 0, 1, v1, 0xE90000000000006ELL);
  v12[2] = v1;
  v12[3] = v0;
  v12[4] = v1;
  v12[5] = v0;
  v12[6] = v8;
  v12[7] = v13;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v12[8] = sub_25A936284();
  v30 = v11;
  v31 = v12;
  v12[9] = &off_286C11D08;
  v14 = v11 + 64;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v4 = v16 & *(v11 + 64);
  swift_beginAccess();
  v17 = 0;
  v18 = (v15 + 63) >> 6;
  if (v4)
  {
    while (1)
    {
      v19 = v17;
LABEL_10:
      v20 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v21 = v20 | (v19 << 6);
      v22 = (*(v30 + 48) + 16 * v21);
      v23 = *v22;
      v1 = v22[1];
      v8 = *(*(v30 + 56) + 8 * v21);
      v24 = v31[8];
      v25 = v31[9];
      ObjectType = swift_getObjectType();
      v34[0] = v8;
      v34[3] = v29;
      v0 = v25 + 64;
      v32 = *(v25 + 64);
      swift_retain_n();

      swift_unknownObjectRetain();
      v32(v23, v1, v34, ObjectType, v25);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v19 >= v18)
    {
      break;
    }

    v4 = *(v14 + 8 * v19);
    ++v17;
    if (v4)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  v26 = *(v28 + 120);
  *(v28 + 112) = sub_25A895420;
  *(v28 + 120) = v31;

  return v31;
}

void *sub_25A87EAC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v4 = sub_25A8F3600(1936159329, 0xE400000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_25A8952F0(*(a1 + 56) + 32 * v4, &v14, &qword_27FA04458, &unk_25A9F7FB0);
  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_25A878194(v16, &qword_27FA04458, &unk_25A9F7FB0);
LABEL_8:
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (swift_dynamicCast())
  {
    v6 = *(&v18 + 1);
    if (*(&v18 + 1))
    {
      v7 = v19;
      __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
      v8 = (*(v7 + 8))(v6, v7);
      __swift_destroy_boxed_opaque_existential_0Tm(&v17);
      v9 = type metadata accessor for PyException();
      v10 = swift_allocObject();
      v10[8] = v8;

      result = sub_25A990E38(v11, v10);
      a2[3] = v9;
      *a2 = result;
      return result;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

LABEL_9:
  sub_25A878194(&v17, &qword_27FA04728, &unk_25A9FD740);
  sub_25A874F54();
  swift_allocError();
  *v13 = 0x80;
  return swift_willThrow();
}

void *sub_25A87ECB0()
{
  result = sub_25A87ED98(0x72724565756C6156, 0xEA0000000000726FLL, sub_25A8902B0, sub_25A89543C);
  qword_27FA04700 = result;
  return result;
}

void *sub_25A87ED34()
{
  result = sub_25A87ED98(0x45656D69746E7552, 0xEC000000726F7272, sub_25A890248, sub_25A89543C);
  qword_27FA04708 = result;
  return result;
}

void *sub_25A87ED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x277D84F90];
  v8 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v33 = type metadata accessor for Function();
  v9 = swift_allocObject();
  *(v9 + 32) = v7;
  *(v9 + 40) = v7;
  *(v9 + 48) = v7;

  *(v9 + 56) = v7;

  *(v9 + 64) = v7;

  *(v9 + 72) = 0;
  *(v9 + 80) = 0;

  *(v9 + 88) = 0;
  *(v9 + 96) = 0;

  *(v9 + 104) = sub_25A92BDB4(v7);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *(v9 + 80);
  v39[2] = *(v9 + 64);
  v39[3] = v10;
  v40 = *(v9 + 96);
  v11 = *(v9 + 48);
  v39[0] = *(v9 + 32);
  v39[1] = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v7;
  *(v9 + 48) = v7;
  *(v9 + 56) = v7;
  *(v9 + 64) = v7;
  *(v9 + 72) = xmmword_25A9F8DA0;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  sub_25A892B80(v39);
  swift_beginAccess();
  v12 = *(v9 + 104);
  *(v9 + 104) = v8;

  *(v9 + 112) = a3;
  *(v9 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25A9F8D90;
  if (qword_27FA04328 != -1)
  {
LABEL_14:
    swift_once();
  }

  v14 = qword_27FA046F8;
  *(v13 + 56) = type metadata accessor for PyBuiltInClass();
  *(v13 + 64) = sub_25A892BD4();
  *(v13 + 32) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25A9F8DB0;
  *(v15 + 32) = 0x6F69747065637845;
  *(v15 + 40) = 0xE90000000000006ELL;
  strcpy((v15 + 48), "BaseException");
  *(v15 + 62) = -4864;
  *(v15 + 64) = 0x7463656A626FLL;
  *(v15 + 72) = 0xE600000000000000;

  v16 = sub_25A98E67C(MEMORY[0x277D84F90]);
  v17 = swift_allocObject();
  v17[10] = v9;
  v31 = v9;

  v18 = sub_25A967378(1, 4, 1, v15);
  v38[7] = v18;
  sub_25A96B0BC(0, 0, 1, a1, a2);
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = v13;
  v17[7] = v18;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v17[8] = sub_25A936284();
  v34 = v16;
  v35 = v17;
  v17[9] = &off_286C11D08;
  v19 = v16 + 64;
  v9 = 1 << *(v16 + 32);
  v20 = -1;
  if (v9 < 64)
  {
    v20 = ~(-1 << v9);
  }

  v21 = v20 & *(v16 + 64);
  swift_beginAccess();
  v22 = 0;
  v23 = (v9 + 63) >> 6;
  if (v21)
  {
    while (1)
    {
      v24 = v22;
LABEL_10:
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v26 = v25 | (v24 << 6);
      v27 = (*(v34 + 48) + 16 * v26);
      v28 = *v27;
      a2 = v27[1];
      a1 = *(*(v34 + 56) + 8 * v26);
      v13 = v35[8];
      v9 = v35[9];
      ObjectType = swift_getObjectType();
      v38[0] = a1;
      v38[3] = v33;
      v36 = *(v9 + 64);
      swift_retain_n();

      swift_unknownObjectRetain();
      v36(v28, a2, v38, ObjectType, v9);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      if (!v21)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v24 >= v23)
    {
      break;
    }

    v21 = *(v19 + 8 * v24);
    ++v22;
    if (v21)
    {
      v22 = v24;
      goto LABEL_10;
    }
  }

  v29 = *(v31 + 120);
  *(v31 + 112) = a4;
  *(v31 + 120) = v35;

  return v35;
}

uint64_t sub_25A87F228(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_25A87F298()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v32 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v28 = type metadata accessor for Function();
  v4 = swift_allocObject();
  v4[4] = v2;
  v4[5] = v2;
  v4[6] = v2;

  v4[7] = v2;

  v4[8] = v2;

  v4[9] = 0;
  v4[10] = 0;

  v4[11] = 0;
  v4[12] = 0;

  v4[13] = sub_25A92BDB4(v2);
  v4[2] = 0x74616F6C66;
  v4[3] = 0xE500000000000000;
  v5 = *(v4 + 5);
  v34[2] = *(v4 + 4);
  v34[3] = v5;
  v35 = v4[12];
  v6 = *(v4 + 3);
  v34[0] = *(v4 + 2);
  v34[1] = v6;
  v4[4] = &unk_286C0B0A8;
  v4[5] = v2;
  v4[6] = v2;
  v4[7] = v2;
  v4[8] = v2;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  sub_25A892B80(v34);
  swift_beginAccess();
  v7 = v4[13];
  v4[13] = v3;

  v4[14] = sub_25A890548;
  v4[15] = 0;
  v8 = sub_25A96C01C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v9 = swift_allocObject();
  *(v9 + 16) = v32;
  *(v9 + 32) = 0x7463656A626FLL;
  *(v9 + 40) = 0xE600000000000000;
  v10 = swift_allocObject();
  v10[10] = v4;

  v11 = sub_25A967378(1, 2, 1, v9);
  v33[7] = v11;
  sub_25A96B0BC(0, 0, 1, 0x74616F6C66, 0xE500000000000000);
  v10[2] = 0x74616F6C66;
  v10[3] = 0xE500000000000000;
  v10[4] = 0x74616F6C66;
  v10[5] = 0xE500000000000000;
  v10[6] = v0;
  v10[7] = v11;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v10[8] = sub_25A936284();
  v29 = v10;
  v30 = v8;
  v10[9] = &off_286C11D08;
  v12 = v8 + 64;
  v13 = 1 << *(v8 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v8 + 64);
  swift_beginAccess();
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v18 = v16;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v30 + 48) + 16 * v20);
      v22 = *v21;
      v0 = v21[1];
      v23 = *(*(v30 + 56) + 8 * v20);
      v24 = *(v29 + 64);
      v25 = *(v29 + 72);
      ObjectType = swift_getObjectType();
      v33[3] = v28;
      v33[0] = v23;
      v31 = *(v25 + 64);
      *&v32 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v31(v22, v0, v33, v32, v25);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      if (!v15)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v17)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v16;
    if (v15)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  qword_27FA0FC58 = v29;
  return result;
}

void sub_25A87F6A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v4 = sub_25A8F3600(120, 0xE100000000000000);
  if (v5)
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, v16);
    sub_25A873A9C();
    if (swift_dynamicCast())
    {
      [v14 floatValue];
      v7 = v6;
      *(a2 + 24) = MEMORY[0x277D83A90];

      *a2 = v7;
      return;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v8 = sub_25A8F3600(120, 0xE100000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v8, v16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v14 == 6712937 && v15 == 0xE300000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    *(a2 + 24) = MEMORY[0x277D83A90];
    v10 = 2139095040;
LABEL_12:
    *a2 = v10;
    return;
  }

  if (v14 == 7233902 && v15 == 0xE300000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    *(a2 + 24) = MEMORY[0x277D83A90];
    v10 = 2143289344;
    goto LABEL_12;
  }

  if (v14 == 1718511917 && v15 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    *(a2 + 24) = MEMORY[0x277D83A90];
    v10 = -8388608;
    goto LABEL_12;
  }

  v16[0] = 0;
  v11 = sub_25A892A64(v14, v15);

  if (v11)
  {
    v12 = v16[0];
    *(a2 + 24) = MEMORY[0x277D83A90];
    *a2 = v12;
  }

  else
  {
LABEL_23:
    sub_25A874F54();
    swift_allocError();
    *v13 = 68;
    swift_willThrow();
  }
}

uint64_t sub_25A87F944()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v33 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
  v2 = swift_allocObject();
  v2[1] = v33;
  v2[2] = 0u;
  v2[3] = 0u;

  v3 = MEMORY[0x277D84F90];
  v4 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v29 = type metadata accessor for Function();
  v5 = swift_allocObject();
  v5[4] = v3;
  v5[5] = v3;
  v5[6] = v3;

  v5[7] = v3;

  v5[8] = v3;

  v5[9] = 0;
  v5[10] = 0;

  v5[11] = 0;
  v5[12] = 0;

  v5[13] = sub_25A92BDB4(v3);
  v5[2] = 7500915;
  v5[3] = 0xE300000000000000;
  v6 = *(v5 + 5);
  v35[2] = *(v5 + 4);
  v35[3] = v6;
  v36 = v5[12];
  v7 = *(v5 + 3);
  v35[0] = *(v5 + 2);
  v35[1] = v7;
  v5[4] = &unk_286C0B138;
  v5[5] = v3;
  v5[6] = v3;
  v5[7] = v3;
  v5[8] = v2;
  *(v5 + 9) = 0u;
  *(v5 + 11) = 0u;
  sub_25A892B80(v35);
  swift_beginAccess();
  v8 = v5[13];
  v5[13] = v4;

  v5[14] = sub_25A8905CC;
  v5[15] = 0;
  v9 = sub_25A957E00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v10 = swift_allocObject();
  *(v10 + 16) = v33;
  *(v10 + 32) = 0x7463656A626FLL;
  *(v10 + 40) = 0xE600000000000000;
  v11 = swift_allocObject();
  v11[10] = v5;

  v12 = sub_25A967378(1, 2, 1, v10);
  v34[7] = v12;
  sub_25A96B0BC(0, 0, 1, 7500915, 0xE300000000000000);
  v11[2] = 7500915;
  v11[3] = 0xE300000000000000;
  v11[4] = 7500915;
  v11[5] = 0xE300000000000000;
  v11[6] = v0;
  v11[7] = v12;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v11[8] = sub_25A936284();
  v30 = v11;
  v31 = v9;
  v11[9] = &off_286C11D08;
  v13 = v9 + 64;
  v14 = 1 << *(v9 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v9 + 64);
  swift_beginAccess();
  v17 = 0;
  v18 = (v14 + 63) >> 6;
  if (v16)
  {
    while (1)
    {
      v19 = v17;
LABEL_10:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = v20 | (v19 << 6);
      v22 = (*(v31 + 48) + 16 * v21);
      v23 = *v22;
      v0 = v22[1];
      v24 = *(*(v31 + 56) + 8 * v21);
      v25 = *(v30 + 64);
      v26 = *(v30 + 72);
      ObjectType = swift_getObjectType();
      v34[3] = v29;
      v34[0] = v24;
      v32 = *(v26 + 64);
      *&v33 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v32(v23, v0, v34, v33, v26);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      if (!v16)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v19 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v19);
    ++v17;
    if (v16)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  qword_27FA0FC60 = v30;
  return result;
}

uint64_t sub_25A87FD84(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = sub_25A8F3600(6972015, 0xE300000000000000), (v3 & 1) == 0))
  {
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v2, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = 0;
    v30 = 0u;
    v29 = 0u;
    goto LABEL_11;
  }

  if (!*(&v30 + 1))
  {
LABEL_11:
    sub_25A878194(&v29, &qword_27FA04750, "jN\a");
LABEL_12:
    sub_25A874F54();
    swift_allocError();
    *v8 = -103;
    return swift_willThrow();
  }

  sub_25A87817C(&v29, v32);
  v4 = v33;
  v5 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  (*(v5 + 8))(v21, v4, v5);
  v6 = v22;
  v7 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(*(v7 + 8) + 8))(v24, 0x5F5F7274735F5FLL, 0xE700000000000000, v6);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
    if ((swift_dynamicCast() & 1) == 0)
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    if (*(&v27 + 1))
    {
      goto LABEL_19;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    sub_25A878194(v24, &qword_27FA04458, &unk_25A9F7FB0);
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
  }

  sub_25A878194(&v26, &qword_27FA04760, &unk_25A9F9BB0);
  v10 = v33;
  v11 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  (*(v11 + 8))(v21, v10, v11);
  v12 = v22;
  v13 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(*(v13 + 8) + 8))(v24, 0x5F5F727065725F5FLL, 0xE800000000000000, v12);
  if (!v25)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    sub_25A878194(v24, &qword_27FA04458, &unk_25A9F7FB0);
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
LABEL_21:
    sub_25A878194(&v26, &qword_27FA04760, &unk_25A9F9BB0);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  if (!*(&v27 + 1))
  {
    goto LABEL_21;
  }

LABEL_19:
  sub_25A87817C(&v26, &v29);
  v14 = *(&v30 + 1);
  v15 = v31;
  __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25A9F8D90;
  v17 = v33;
  v18 = __swift_project_boxed_opaque_existential_1(v32, v33);
  *(v16 + 56) = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v16 + 32));
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, v18, v17);
  v20 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  (*(v15 + 16))(v16, v20, v14, v15);

  __swift_destroy_boxed_opaque_existential_0Tm(&v29);
  return __swift_destroy_boxed_opaque_existential_0Tm(v32);
}

uint64_t sub_25A8801FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v32 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v28 = type metadata accessor for Function();
  v4 = swift_allocObject();
  v4[4] = v2;
  v4[5] = v2;
  v4[6] = v2;

  v4[7] = v2;

  v4[8] = v2;

  v4[9] = 0;
  v4[10] = 0;

  v4[11] = 0;
  v4[12] = 0;

  v4[13] = sub_25A92BDB4(v2);
  v4[2] = 1819242338;
  v4[3] = 0xE400000000000000;
  v5 = *(v4 + 5);
  v34[2] = *(v4 + 4);
  v34[3] = v5;
  v35 = v4[12];
  v6 = *(v4 + 3);
  v34[0] = *(v4 + 2);
  v34[1] = v6;
  v4[4] = &unk_286C0B108;
  v4[5] = v2;
  v4[6] = v2;
  v4[7] = v2;
  v4[8] = v2;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  sub_25A892B80(v34);
  swift_beginAccess();
  v7 = v4[13];
  v4[13] = v3;

  v4[14] = sub_25A8905A0;
  v4[15] = 0;
  v8 = sub_25A950C38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v9 = swift_allocObject();
  *(v9 + 16) = v32;
  *(v9 + 32) = 0x7463656A626FLL;
  *(v9 + 40) = 0xE600000000000000;
  v10 = swift_allocObject();
  v10[10] = v4;

  v11 = sub_25A967378(1, 2, 1, v9);
  v33[7] = v11;
  sub_25A96B0BC(0, 0, 1, 1819242338, 0xE400000000000000);
  v10[2] = 1819242338;
  v10[3] = 0xE400000000000000;
  v10[4] = 1819242338;
  v10[5] = 0xE400000000000000;
  v10[6] = v0;
  v10[7] = v11;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v10[8] = sub_25A936284();
  v29 = v10;
  v30 = v8;
  v10[9] = &off_286C11D08;
  v12 = v8 + 64;
  v13 = 1 << *(v8 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v8 + 64);
  swift_beginAccess();
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v18 = v16;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v30 + 48) + 16 * v20);
      v22 = *v21;
      v0 = v21[1];
      v23 = *(*(v30 + 56) + 8 * v20);
      v24 = *(v29 + 64);
      v25 = *(v29 + 72);
      ObjectType = swift_getObjectType();
      v33[3] = v28;
      v33[0] = v23;
      v31 = *(v25 + 64);
      *&v32 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v31(v22, v0, v33, v32, v25);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      if (!v15)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v17)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v16;
    if (v15)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  qword_27FA0FC68 = v29;
  return result;
}

uint64_t sub_25A880608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(120, 0xE100000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v11);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  v13[3] = v6;
  v13[4] = &protocol witness table for A?;
  v7 = swift_allocObject();
  v13[0] = v7;
  v8 = v12;
  *(v7 + 16) = v11;
  *(v7 + 32) = v8;
  __swift_project_boxed_opaque_existential_1(v13, v6);
  v9 = sub_25A890008();
  *(a2 + 24) = MEMORY[0x277D839B0];
  *a2 = v9 & 1;
  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

uint64_t sub_25A8806EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v33 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
  v2 = swift_allocObject();
  v2[1] = xmmword_25A9F8D80;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;

  v3 = MEMORY[0x277D84F90];
  v4 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v29 = type metadata accessor for Function();
  v5 = swift_allocObject();
  v5[4] = v3;
  v5[5] = v3;
  v5[6] = v3;

  v5[7] = v3;

  v5[8] = v3;

  v5[9] = 0;
  v5[10] = 0;

  v5[11] = 0;
  v5[12] = 0;

  v5[13] = sub_25A92BDB4(v3);
  v5[2] = 0x7365747962;
  v5[3] = 0xE500000000000000;
  v6 = *(v5 + 5);
  v35[2] = *(v5 + 4);
  v35[3] = v6;
  v36 = v5[12];
  v7 = *(v5 + 3);
  v35[0] = *(v5 + 2);
  v35[1] = v7;
  v5[4] = &unk_286C0AFD8;
  v5[5] = v3;
  v5[6] = v3;
  v5[7] = v3;
  v5[8] = v2;
  *(v5 + 9) = 0u;
  *(v5 + 11) = 0u;
  sub_25A892B80(v35);
  swift_beginAccess();
  v8 = v5[13];
  v5[13] = v4;

  v5[14] = sub_25A8903E8;
  v5[15] = 0;
  v9 = sub_25A98E67C(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v10 = swift_allocObject();
  *(v10 + 16) = v33;
  *(v10 + 32) = 0x7463656A626FLL;
  *(v10 + 40) = 0xE600000000000000;
  v11 = swift_allocObject();
  v11[10] = v5;

  v12 = sub_25A967378(1, 2, 1, v10);
  v34[7] = v12;
  sub_25A96B0BC(0, 0, 1, 0x7365747962, 0xE500000000000000);
  v11[2] = 0x7365747962;
  v11[3] = 0xE500000000000000;
  v11[4] = 0x7365747962;
  v11[5] = 0xE500000000000000;
  v11[6] = v0;
  v11[7] = v12;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v11[8] = sub_25A936284();
  v30 = v11;
  v31 = v9;
  v11[9] = &off_286C11D08;
  v13 = v9 + 64;
  v14 = 1 << *(v9 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v9 + 64);
  swift_beginAccess();
  v17 = 0;
  v18 = (v14 + 63) >> 6;
  if (v16)
  {
    while (1)
    {
      v19 = v17;
LABEL_10:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = v20 | (v19 << 6);
      v22 = (*(v31 + 48) + 16 * v21);
      v23 = *v22;
      v0 = v22[1];
      v24 = *(*(v31 + 56) + 8 * v21);
      v25 = *(v30 + 64);
      v26 = *(v30 + 72);
      ObjectType = swift_getObjectType();
      v34[3] = v29;
      v34[0] = v24;
      v32 = *(v26 + 64);
      *&v33 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v32(v23, v0, v34, v33, v26);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      if (!v16)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v19 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v19);
    ++v17;
    if (v16)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  qword_27FA0FC70 = v30;
  return result;
}

uint64_t sub_25A880B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_25A997E98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v11 = sub_25A8F3600(0x656372756F73, 0xE600000000000000), (v12 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v11, v64);
    if (!*(a1 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    memset(v64, 0, 32);
    if (!*(a1 + 16))
    {
LABEL_13:
      v16 = 0;
      v17 = 0;
      goto LABEL_14;
    }
  }

  v13 = sub_25A8F3600(0x676E69646F636E65, 0xE800000000000000);
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v13, v60);
  v15 = swift_dynamicCast();
  if (v15)
  {
    v16 = v59[0];
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v59[1];
  }

  else
  {
    v17 = 0;
  }

LABEL_14:
  sub_25A8952F0(v64, v60, &qword_27FA04458, &unk_25A9F7FB0);
  v62 = v16;
  v63 = v17;
  if (!v61)
  {
    *(a2 + 24) = MEMORY[0x277CC9318];
    *a2 = xmmword_25A9F8DC0;
    sub_25A878194(v64, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_19;
  }

  v53 = a2;
  sub_25A8952F0(v60, v59, &qword_27FA04458, &unk_25A9F7FB0);
  v18 = MEMORY[0x277CC9318];
  if (swift_dynamicCast())
  {
    v19 = v53;
    *(v53 + 24) = v18;
    *v19 = *v55;
LABEL_17:
    sub_25A878194(v64, &qword_27FA04458, &unk_25A9F7FB0);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
LABEL_19:

    v20 = &qword_27FA04458;
    v21 = &unk_25A9F7FB0;
    return sub_25A878194(v60, v20, v21);
  }

  if (swift_dynamicCast())
  {
    if (!v17)
    {

      sub_25A874F54();
      swift_allocError();
      *v35 = 117;
      swift_willThrow();
      sub_25A878194(v64, &qword_27FA04458, &unk_25A9F7FB0);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      v20 = &qword_27FA04458;
      v21 = &unk_25A9F7FB0;
      return sub_25A878194(v60, v20, v21);
    }

    v65 = v55[1];
    v52 = v55[0];
    if (sub_25A997EC8() == 0x382D667475 && v23 == 0xE500000000000000)
    {

LABEL_38:
      v37 = sub_25A919B54(v52, v65);
      v38 = v53;
      *(v53 + 24) = v18;
      *v38 = v37;
      v38[1] = v39;
      goto LABEL_17;
    }

    v36 = sub_25A9989E8();

    if (v36)
    {
      goto LABEL_38;
    }

    if (sub_25A997EC8() == 0x6969637361 && v40 == 0xE500000000000000)
    {
    }

    else
    {
      v45 = sub_25A9989E8();

      if ((v45 & 1) == 0)
      {

        goto LABEL_49;
      }
    }

    sub_25A997E88();
    v46 = sub_25A997E38();
    v48 = v47;

    (*(v7 + 8))(v10, v6);
    if (v48 >> 60 != 15)
    {
      v49 = v53;
      *(v53 + 24) = v18;
      *v49 = v46;
      v49[1] = v48;
      goto LABEL_17;
    }

LABEL_49:
    sub_25A874F54();
    swift_allocError();
    *v50 = 117;
    swift_willThrow();
    sub_25A878194(v64, &qword_27FA04458, &unk_25A9F7FB0);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);

    v20 = &qword_27FA04458;
    v21 = &unk_25A9F7FB0;
    return sub_25A878194(v60, v20, v21);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    sub_25A874F54();
    swift_allocError();
    *v34 = 117;
    swift_willThrow();
    sub_25A878194(v64, &qword_27FA04458, &unk_25A9F7FB0);
    v20 = &unk_27FA047B8;
    v21 = &unk_25A9F8E80;
    return sub_25A878194(v60, v20, v21);
  }

  v24 = v58;
  v25 = *(v58 + 16);
  if (!v25)
  {

    v27 = MEMORY[0x277D84F90];
LABEL_44:
    v41 = sub_25A91CEC0(v27);
    v43 = v42;

    v44 = v53;
    *(v53 + 24) = v18;
    *v44 = v41;
    v44[1] = v43;
    goto LABEL_17;
  }

  v57 = MEMORY[0x277D84F90];
  result = sub_25A937720(0, v25, 0);
  v26 = 0;
  v27 = v57;
  v28 = v24 + 32;
  v52 = v24;
  while (v26 < *(v24 + 16))
  {
    sub_25A87500C(v28, v55);
    sub_25A88126C(v55, &v54, &v56);
    if (v3)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      sub_25A878194(v64, &qword_27FA04458, &unk_25A9F7FB0);

      __swift_destroy_boxed_opaque_existential_0Tm(v59);

      v20 = &qword_27FA04458;
      v21 = &unk_25A9F7FB0;
      return sub_25A878194(v60, v20, v21);
    }

    v65 = 0;
    v29 = v18;
    v30 = v17;
    result = __swift_destroy_boxed_opaque_existential_0Tm(v55);
    v31 = v56;
    v57 = v27;
    v33 = *(v27 + 16);
    v32 = *(v27 + 24);
    if (v33 >= v32 >> 1)
    {
      result = sub_25A937720((v32 > 1), v33 + 1, 1);
      v27 = v57;
    }

    ++v26;
    *(v27 + 16) = v33 + 1;
    *(v27 + v33 + 32) = v31;
    v28 += 32;
    v17 = v30;
    v18 = v29;
    v24 = v52;
    v3 = v65;
    if (v25 == v26)
    {

      goto LABEL_44;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A88126C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_25A87500C(a1, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v61 = 0;
    memset(v60, 0, sizeof(v60));
    sub_25A878194(v60, &qword_27FA047C8, &qword_25A9F8E88);
    goto LABEL_28;
  }

  v59 = a3;
  sub_25A87817C(v60, v63);
  v5 = v64;
  v6 = v65;
  v7 = __swift_project_boxed_opaque_existential_1(v63, v64);
  v8 = *(v5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10);
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_16;
  }

  *&v60[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v11 = sub_25A9984C8();
    if (v11 < 64)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v12 = sub_25A9984D8();
  v11 = sub_25A9984C8();
  if (v12)
  {
    if (v11 <= 64)
    {
      v58 = *(v6[3] + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v57 = v55;
      v17 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v55[1] = v55 - v18;
      swift_getAssociatedConformanceWitness();
      v19 = sub_25A998A78();
      v56 = v55;
      MEMORY[0x28223BE20](v19);
      sub_25A9989C8();
      v20 = *(v6[4] + 8);
      v21 = sub_25A997D88();
      result = (*(v8 + 8))(v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      if (v21)
      {
        goto LABEL_43;
      }

      goto LABEL_15;
    }

LABEL_10:
    v58 = v55;
    MEMORY[0x28223BE20](v11);
    sub_25A895280();
    sub_25A9984A8();
    v13 = *(v6[4] + 8);
    v14 = sub_25A997D88();
    result = (*(v8 + 8))(v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    if (v14)
    {
      goto LABEL_43;
    }

    goto LABEL_16;
  }

  if (v11 < 64)
  {
LABEL_15:
    sub_25A9984B8();
  }

LABEL_16:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    *&v60[0] = 0x7FFFFFFFFFFFFFFFLL;
    v22 = sub_25A9984D8();
    v23 = sub_25A9984C8();
    if ((v22 & 1) == 0)
    {
      break;
    }

    if (v23 < 65)
    {
      goto LABEL_25;
    }

LABEL_19:
    MEMORY[0x28223BE20](v23);
    v9 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v24 = *(v6[4] + 8);
    v25 = sub_25A997D88();
    (*(v8 + 8))(v9, v5);
    if (v25)
    {
      __break(1u);
LABEL_21:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  if (v23 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  sub_25A9984B8();
LABEL_26:
  v26 = sub_25A9984B8();
  (*(v8 + 8))(v10, v5);
  if (v26 <= 0xFF)
  {
    v29 = v64;
    v30 = v65;
    v31 = __swift_project_boxed_opaque_existential_1(v63, v64);
    v32 = *(v29 - 8);
    v33 = v32[8];
    MEMORY[0x28223BE20](v31);
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
    v35 = v55 - v34;
    (v32[2])(v55 - v34);
    if ((sub_25A9984D8() & 1) == 0)
    {
      goto LABEL_31;
    }

    v36 = v30[3];
    v57 = v32;
    v37 = *(v36 + 16);
    v38 = swift_getAssociatedTypeWitness();
    v56 = v55;
    v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v38);
    v58 = v30;
    swift_getAssociatedConformanceWitness();
    v40 = sub_25A998A78();
    MEMORY[0x28223BE20](v40);
    v32 = v57;
    v30 = v58;
    sub_25A9989C8();
    v41 = *(v30[4] + 8);
    v42 = sub_25A997D98();
    result = (v32[1])(v55 - v34, v29);
    if (v42)
    {
LABEL_31:
      if (sub_25A9984C8() >= 8)
      {
        v43 = v32;
        LOBYTE(v60[0]) = -1;
        v44 = sub_25A9984D8();
        v45 = sub_25A9984C8();
        if (v44)
        {
          if (v45 <= 8)
          {
            v46 = *(v30[3] + 16);
            v47 = swift_getAssociatedTypeWitness();
            v58 = v30;
            v57 = v55;
            v48 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v47);
            swift_getAssociatedConformanceWitness();
            v49 = sub_25A998A78();
            MEMORY[0x28223BE20](v49);
            sub_25A9989C8();
            v50 = *(v58[4] + 8);
            v51 = sub_25A997D78();
            v32 = v43;
            (v43[1])(v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
            if (v51)
            {
              sub_25A9984B8();
            }

            goto LABEL_40;
          }
        }

        else if (v45 < 9)
        {
LABEL_39:
          sub_25A9984B8();
          v32 = v43;
          goto LABEL_40;
        }

        MEMORY[0x28223BE20](v45);
        sub_25A89522C();
        sub_25A9984A8();
        v52 = *(v30[4] + 8);
        v53 = sub_25A997D88();
        v32 = v43;
        (v43[1])(v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
        if (v53)
        {
          __break(1u);
          goto LABEL_39;
        }
      }

LABEL_40:
      v54 = sub_25A9984B8();
      (v32[1])(v35, v29);
      *v59 = v54;
      return __swift_destroy_boxed_opaque_existential_0Tm(v63);
    }

    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v63);
LABEL_28:
  sub_25A874F54();
  v27 = swift_allocError();
  *v28 = 117;
  result = swift_willThrow();
  *a2 = v27;
  return result;
}

uint64_t sub_25A881CBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v32 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v28 = type metadata accessor for Function();
  v4 = swift_allocObject();
  v4[4] = v2;
  v4[5] = v2;
  v4[6] = v2;

  v4[7] = v2;

  v4[8] = v2;

  v4[9] = 0;
  v4[10] = 0;

  v4[11] = 0;
  v4[12] = 0;

  v4[13] = sub_25A92BDB4(v2);
  v4[2] = 7630441;
  v4[3] = 0xE300000000000000;
  v5 = *(v4 + 5);
  v34[2] = *(v4 + 4);
  v34[3] = v5;
  v35 = v4[12];
  v6 = *(v4 + 3);
  v34[0] = *(v4 + 2);
  v34[1] = v6;
  v4[4] = &unk_286C0B0D8;
  v4[5] = v2;
  v4[6] = v2;
  v4[7] = v2;
  v4[8] = v2;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  sub_25A892B80(v34);
  swift_beginAccess();
  v7 = v4[13];
  v4[13] = v3;

  v4[14] = sub_25A890574;
  v4[15] = 0;
  v8 = sub_25A96BE34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v9 = swift_allocObject();
  *(v9 + 16) = v32;
  *(v9 + 32) = 0x7463656A626FLL;
  *(v9 + 40) = 0xE600000000000000;
  v10 = swift_allocObject();
  v10[10] = v4;

  v11 = sub_25A967378(1, 2, 1, v9);
  v33[7] = v11;
  sub_25A96B0BC(0, 0, 1, 7630441, 0xE300000000000000);
  v10[2] = 7630441;
  v10[3] = 0xE300000000000000;
  v10[4] = 7630441;
  v10[5] = 0xE300000000000000;
  v10[6] = v0;
  v10[7] = v11;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v10[8] = sub_25A936284();
  v29 = v10;
  v30 = v8;
  v10[9] = &off_286C11D08;
  v12 = v8 + 64;
  v13 = 1 << *(v8 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v8 + 64);
  swift_beginAccess();
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v18 = v16;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v30 + 48) + 16 * v20);
      v22 = *v21;
      v0 = v21[1];
      v23 = *(*(v30 + 56) + 8 * v20);
      v24 = *(v29 + 64);
      v25 = *(v29 + 72);
      ObjectType = swift_getObjectType();
      v33[3] = v28;
      v33[0] = v23;
      v31 = *(v25 + 64);
      *&v32 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v31(v22, v0, v33, v32, v25);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      if (!v15)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v17)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v16;
    if (v15)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  qword_27FA0FC78 = v29;
  return result;
}

void sub_25A8820C8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_39;
  }

  v5 = sub_25A8F3600(120, 0xE100000000000000);
  if (v6)
  {
    sub_25A87500C(*(a1 + 56) + 32 * v5, v65);
    sub_25A873A9C();
    if (swift_dynamicCast())
    {
      v7 = v62[0];
      v8 = [v62[0] integerValue];
      a2[3] = MEMORY[0x277D83B88];

      *a2 = v8;
      return;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_39;
  }

  v9 = sub_25A8F3600(120, 0xE100000000000000);
  if ((v10 & 1) == 0 || (sub_25A87500C(*(a1 + 56) + 32 * v9, v65), (swift_dynamicCast() & 1) == 0))
  {
    if (*(a1 + 16))
    {
      v21 = sub_25A8F3600(120, 0xE100000000000000);
      if (v22)
      {
        sub_25A87500C(*(a1 + 56) + 32 * v21, &v59);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
        if (swift_dynamicCast())
        {
          if (*(&v63 + 1))
          {
            sub_25A87817C(v62, v65);
            v23 = v66;
            v24 = v67;
            __swift_project_boxed_opaque_existential_1(v65, v66);
            (*(v24 + 8))(v55, v23, v24);
            v25 = v56;
            v26 = v57;
            __swift_project_boxed_opaque_existential_1(v55, v56);
            (*(*(v26 + 8) + 8))(v58, 0x5F5F746E695F5FLL, 0xE700000000000000, v25);
            if (v58[3])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
              if ((swift_dynamicCast() & 1) == 0)
              {
                v61 = 0;
                v59 = 0u;
                v60 = 0u;
              }

              __swift_destroy_boxed_opaque_existential_0Tm(v55);
              if (*(&v60 + 1))
              {
                sub_25A87817C(&v59, v62);
                v27 = *(&v63 + 1);
                v28 = v64;
                __swift_project_boxed_opaque_existential_1(v62, *(&v63 + 1));
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
                v29 = swift_allocObject();
                *(v29 + 16) = xmmword_25A9F8D90;
                v30 = v66;
                v31 = __swift_project_boxed_opaque_existential_1(v65, v66);
                *(v29 + 56) = v30;
                boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v29 + 32));
                (*(*(v30 - 8) + 16))(boxed_opaque_existential_0, v31, v30);
                v33 = sub_25A92BDB4(MEMORY[0x277D84F90]);
                (*(v28 + 16))(&v59, v29, v33, v27, v28);

                if (v2)
                {
LABEL_38:
                  __swift_destroy_boxed_opaque_existential_0Tm(v62);
                  __swift_destroy_boxed_opaque_existential_0Tm(v65);
                  return;
                }

                sub_25A87500C(&v59, v55);
                sub_25A873A9C();
                if (swift_dynamicCast())
                {
                  v34 = v58[0];
                  v35 = [v58[0] integerValue];
                  a2[3] = MEMORY[0x277D83B88];

                  *a2 = v35;
                  __swift_destroy_boxed_opaque_existential_0Tm(&v59);
                  goto LABEL_38;
                }

                __swift_destroy_boxed_opaque_existential_0Tm(&v59);
                __swift_destroy_boxed_opaque_existential_0Tm(v62);
LABEL_89:
                __swift_destroy_boxed_opaque_existential_0Tm(v65);
                goto LABEL_41;
              }
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0Tm(v55);
              sub_25A878194(v58, &qword_27FA04458, &unk_25A9F7FB0);
              v59 = 0u;
              v60 = 0u;
              v61 = 0;
            }

            sub_25A878194(&v59, &qword_27FA04760, &unk_25A9F9BB0);
            goto LABEL_89;
          }
        }

        else
        {
          v64 = 0;
          v63 = 0u;
          *v62 = 0u;
        }

LABEL_40:
        sub_25A878194(v62, &qword_27FA04750, "jN\a");
        goto LABEL_41;
      }
    }

LABEL_39:
    *v62 = 0u;
    v63 = 0u;
    v64 = 0;
    goto LABEL_40;
  }

  v11 = (v62[1] >> 56) & 0xF;
  v12 = v62[0] & 0xFFFFFFFFFFFFLL;
  if ((v62[1] & 0x2000000000000000) != 0)
  {
    v13 = (v62[1] >> 56) & 0xF;
  }

  else
  {
    v13 = v62[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_41;
  }

  if ((v62[1] & 0x1000000000000000) != 0)
  {
    v17 = sub_25A979124(v62[0], v62[1], 10);
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_41;
  }

  if ((v62[1] & 0x2000000000000000) == 0)
  {
    if ((v62[0] & 0x1000000000000000) != 0)
    {
      v14 = ((v62[1] & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v14 = sub_25A998708();
    }

    v15 = *v14;
    if (v15 == 43)
    {
      if (v12 >= 1)
      {
        v40 = v12 - 1;
        if (v12 != 1)
        {
          v17 = 0;
          if (!v14)
          {
            goto LABEL_85;
          }

          v41 = v14 + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v40)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_84;
      }

      goto LABEL_97;
    }

    if (v15 == 45)
    {
      if (v12 >= 1)
      {
        v16 = v12 - 1;
        if (v12 != 1)
        {
          v17 = 0;
          if (!v14)
          {
            goto LABEL_85;
          }

          v18 = v14 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              break;
            }

            ++v18;
            if (!--v16)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_84;
      }

      __break(1u);
      goto LABEL_96;
    }

    if (v12)
    {
      v17 = 0;
      if (!v14)
      {
        goto LABEL_85;
      }

      while (1)
      {
        v47 = *v14 - 48;
        if (v47 > 9)
        {
          break;
        }

        v48 = 10 * v17;
        if ((v17 * 10) >> 64 != (10 * v17) >> 63)
        {
          break;
        }

        v17 = v48 + v47;
        if (__OFADD__(v48, v47))
        {
          break;
        }

        ++v14;
        if (!--v12)
        {
          goto LABEL_83;
        }
      }
    }

    goto LABEL_84;
  }

  v65[0] = v62[0];
  v65[1] = v62[1] & 0xFFFFFFFFFFFFFFLL;
  if (LOBYTE(v62[0]) != 43)
  {
    if (LOBYTE(v62[0]) == 45)
    {
      if (!v11)
      {
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v14 = (v11 - 1);
      if (v11 != 1)
      {
        v17 = 0;
        v37 = v65 + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v39 - v38;
          if (__OFSUB__(v39, v38))
          {
            break;
          }

          ++v37;
          if (!--v14)
          {
            goto LABEL_85;
          }
        }
      }
    }

    else if (v11)
    {
      v17 = 0;
      v49 = v65;
      while (1)
      {
        v50 = *v49 - 48;
        if (v50 > 9)
        {
          break;
        }

        v51 = 10 * v17;
        if ((v17 * 10) >> 64 != (10 * v17) >> 63)
        {
          break;
        }

        v17 = v51 + v50;
        if (__OFADD__(v51, v50))
        {
          break;
        }

        v49 = (v49 + 1);
        if (!--v11)
        {
LABEL_83:
          LOBYTE(v14) = 0;
          goto LABEL_85;
        }
      }
    }

LABEL_84:
    v17 = 0;
    LOBYTE(v14) = 1;
LABEL_85:
    LOBYTE(v62[0]) = v14;
    v52 = v14;

    if ((v52 & 1) == 0)
    {
LABEL_86:
      a2[3] = MEMORY[0x277D83B88];
      *a2 = v17;
      return;
    }

LABEL_41:
    sub_25A874F54();
    swift_allocError();
    *v36 = 69;
    swift_willThrow();
    return;
  }

  if (v11)
  {
    v14 = (v11 - 1);
    if (v11 != 1)
    {
      v17 = 0;
      v44 = v65 + 1;
      while (1)
      {
        v45 = *v44 - 48;
        if (v45 > 9)
        {
          break;
        }

        v46 = 10 * v17;
        if ((v17 * 10) >> 64 != (10 * v17) >> 63)
        {
          break;
        }

        v17 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          break;
        }

        ++v44;
        if (!--v14)
        {
          goto LABEL_85;
        }
      }
    }

    goto LABEL_84;
  }

LABEL_98:
  __break(1u);
}

uint64_t sub_25A882868()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v33 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
  v2 = swift_allocObject();
  v2[1] = v33;
  v2[2] = 0u;
  v2[3] = 0u;

  v3 = MEMORY[0x277D84F90];
  v4 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v29 = type metadata accessor for Function();
  v5 = swift_allocObject();
  v5[4] = v3;
  v5[5] = v3;
  v5[6] = v3;

  v5[7] = v3;

  v5[8] = v3;

  v5[9] = 0;
  v5[10] = 0;

  v5[11] = 0;
  v5[12] = 0;

  v5[13] = sub_25A92BDB4(v3);
  v5[2] = 7628147;
  v5[3] = 0xE300000000000000;
  v6 = *(v5 + 5);
  v35[2] = *(v5 + 4);
  v35[3] = v6;
  v36 = v5[12];
  v7 = *(v5 + 3);
  v35[0] = *(v5 + 2);
  v35[1] = v7;
  v5[4] = &unk_286C0B078;
  v5[5] = v3;
  v5[6] = v3;
  v5[7] = v3;
  v5[8] = v2;
  *(v5 + 9) = 0u;
  *(v5 + 11) = 0u;
  sub_25A892B80(v35);
  swift_beginAccess();
  v8 = v5[13];
  v5[13] = v4;

  v5[14] = sub_25A89051C;
  v5[15] = 0;
  v9 = sub_25A907F8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v10 = swift_allocObject();
  *(v10 + 16) = v33;
  *(v10 + 32) = 0x7463656A626FLL;
  *(v10 + 40) = 0xE600000000000000;
  v11 = swift_allocObject();
  v11[10] = v5;

  v12 = sub_25A967378(1, 2, 1, v10);
  v34[7] = v12;
  sub_25A96B0BC(0, 0, 1, 7628147, 0xE300000000000000);
  v11[2] = 7628147;
  v11[3] = 0xE300000000000000;
  v11[4] = 7628147;
  v11[5] = 0xE300000000000000;
  v11[6] = v0;
  v11[7] = v12;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v11[8] = sub_25A936284();
  v30 = v11;
  v31 = v9;
  v11[9] = &off_286C11D08;
  v13 = v9 + 64;
  v14 = 1 << *(v9 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v9 + 64);
  swift_beginAccess();
  v17 = 0;
  v18 = (v14 + 63) >> 6;
  if (v16)
  {
    while (1)
    {
      v19 = v17;
LABEL_10:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = v20 | (v19 << 6);
      v22 = (*(v31 + 48) + 16 * v21);
      v23 = *v22;
      v0 = v22[1];
      v24 = *(*(v31 + 56) + 8 * v21);
      v25 = *(v30 + 64);
      v26 = *(v30 + 72);
      ObjectType = swift_getObjectType();
      v34[3] = v29;
      v34[0] = v24;
      v32 = *(v26 + 64);
      *&v33 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v32(v23, v0, v34, v33, v26);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      if (!v16)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v19 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v19);
    ++v17;
    if (v16)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  qword_27FA0FC80 = v30;
  return result;
}

uint64_t sub_25A882CA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *(&v58 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  v5 = swift_allocObject();
  *&v57 = v5;
  if (*(a1 + 16) && (v6 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v7 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v6, v5 + 16);
  }

  else
  {
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
  }

  v8 = static MorpheusUtils.isNil(_:)(&v57);
  __swift_destroy_boxed_opaque_existential_0Tm(&v57);
  if (v8)
  {
    v9 = type metadata accessor for SharedMutableSet();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D84FA0];
    *(v10 + 16) = MEMORY[0x277D84FA0];
    result = swift_beginAccess();
    *(v10 + 16) = v11;
    a2[3] = v9;
    *a2 = v10;
    return result;
  }

  if (!*(a1 + 16) || (v13 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v14 & 1) == 0))
  {
    v57 = 0u;
    v58 = 0u;
    v59 = 0;
    goto LABEL_14;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v13, &v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    goto LABEL_14;
  }

  v15 = *(&v58 + 1);
  if (!*(&v58 + 1))
  {
LABEL_14:
    sub_25A878194(&v57, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_15;
  }

  v16 = v59;
  __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
  v17 = (*(v16 + 8))(v15, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(&v57);
  v18 = sub_25A92F880(v17);

  if (v18)
  {
    v19 = sub_25A98F044(v18);

    v20 = type metadata accessor for SharedMutableSet();
    v21 = swift_allocObject();
    *(v21 + 16) = MEMORY[0x277D84FA0];
    result = swift_beginAccess();
    *(v21 + 16) = v19;
    a2[3] = v20;
    *a2 = v21;
    return result;
  }

LABEL_15:
  if (*(a1 + 16) && (v22 = sub_25A8F3600(120, 0xE100000000000000), (v23 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v22, &v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
    if (swift_dynamicCast())
    {
      if (*(&v55 + 1))
      {
        sub_25A87817C(&v54, &v57);
        v24 = *(&v58 + 1);
        v25 = v59;
        __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
        (*(v25 + 8))(&v47, v24, v25);
        v26 = *(&v48 + 1);
        v27 = v49;
        __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
        (*(*(v27 + 8) + 8))(v50, 0x5F5F726574695F5FLL, 0xE800000000000000, v26);
        if (v50[3])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
          if ((swift_dynamicCast() & 1) == 0)
          {
            v53 = 0;
            v51 = 0u;
            v52 = 0u;
          }

          __swift_destroy_boxed_opaque_existential_0Tm(&v47);
          if (*(&v52 + 1))
          {
            sub_25A87817C(&v51, &v54);
            v28 = *(&v55 + 1);
            v29 = v56;
            __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
            v30 = swift_allocObject();
            *(v30 + 16) = xmmword_25A9F8D90;
            v31 = *(&v58 + 1);
            v32 = __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
            *(v30 + 56) = v31;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v30 + 32));
            (*(*(v31 - 8) + 16))(boxed_opaque_existential_0, v32, v31);
            v34 = sub_25A92BDB4(MEMORY[0x277D84F90]);
            (*(v29 + 16))(v50, v30, v34, v28, v29);

            if (v2)
            {
LABEL_24:
              __swift_destroy_boxed_opaque_existential_0Tm(&v54);
              return __swift_destroy_boxed_opaque_existential_0Tm(&v57);
            }

            sub_25A87500C(v50, v46);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04778, &qword_25A9F8E48);
            if (swift_dynamicCast())
            {
              sub_25A87817C(&v47, &v51);
              v36 = *(&v52 + 1);
              v37 = __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
              v38 = *(*(v36 - 8) + 64);
              MEMORY[0x28223BE20](v37);
              (*(v40 + 16))(&v46[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)]);
              swift_getAssociatedTypeWitness();
              sub_25A9981C8();
              v41 = sub_25A9987B8();

              v42 = sub_25A92F880(v41);

              if (v42)
              {
                v43 = sub_25A98F044(v42);

                v44 = type metadata accessor for SharedMutableSet();
                v45 = swift_allocObject();
                *(v45 + 16) = MEMORY[0x277D84FA0];
                swift_beginAccess();
                *(v45 + 16) = v43;
                a2[3] = v44;
                *a2 = v45;
                __swift_destroy_boxed_opaque_existential_0Tm(v50);
                __swift_destroy_boxed_opaque_existential_0Tm(&v51);
                goto LABEL_24;
              }

              __swift_destroy_boxed_opaque_existential_0Tm(v50);
              __swift_destroy_boxed_opaque_existential_0Tm(&v51);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0Tm(v50);
              v49 = 0;
              v47 = 0u;
              v48 = 0u;
              sub_25A878194(&v47, &qword_27FA04780, &qword_25A9F8E50);
            }

            __swift_destroy_boxed_opaque_existential_0Tm(&v54);
            goto LABEL_32;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0Tm(&v47);
          sub_25A878194(v50, &qword_27FA04458, &unk_25A9F7FB0);
          v51 = 0u;
          v52 = 0u;
          v53 = 0;
        }

        sub_25A878194(&v51, &qword_27FA04760, &unk_25A9F9BB0);
LABEL_32:
        __swift_destroy_boxed_opaque_existential_0Tm(&v57);
        goto LABEL_27;
      }
    }

    else
    {
      v56 = 0;
      v54 = 0u;
      v55 = 0u;
    }
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
  }

  sub_25A878194(&v54, &qword_27FA04750, "jN\a");
LABEL_27:
  sub_25A874F54();
  swift_allocError();
  *v35 = 67;
  return swift_willThrow();
}

uint64_t sub_25A883464()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v32 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A892BD4();
  *(v0 + 32) = v1;

  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v28 = type metadata accessor for Function();
  v4 = swift_allocObject();
  v4[4] = v2;
  v4[5] = v2;
  v4[6] = v2;

  v4[7] = v2;

  v4[8] = v2;

  v4[9] = 0;
  v4[10] = 0;

  v4[11] = 0;
  v4[12] = 0;

  v4[13] = sub_25A92BDB4(v2);
  v4[2] = 0x656C707574;
  v4[3] = 0xE500000000000000;
  v5 = *(v4 + 5);
  v34[2] = *(v4 + 4);
  v34[3] = v5;
  v35 = v4[12];
  v6 = *(v4 + 3);
  v34[0] = *(v4 + 2);
  v34[1] = v6;
  v4[4] = v2;
  v4[5] = &unk_286C0B048;
  v4[6] = v2;
  v4[7] = v2;
  v4[8] = v2;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  sub_25A892B80(v34);
  swift_beginAccess();
  v7 = v4[13];
  v4[13] = v3;

  v4[14] = sub_25A8904F0;
  v4[15] = 0;
  v8 = sub_25A94E408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v9 = swift_allocObject();
  *(v9 + 16) = v32;
  *(v9 + 32) = 0x7463656A626FLL;
  *(v9 + 40) = 0xE600000000000000;
  v10 = swift_allocObject();
  v10[10] = v4;

  v11 = sub_25A967378(1, 2, 1, v9);
  v33[7] = v11;
  sub_25A96B0BC(0, 0, 1, 0x656C707574, 0xE500000000000000);
  v10[2] = 0x656C707574;
  v10[3] = 0xE500000000000000;
  v10[4] = 0x656C707574;
  v10[5] = 0xE500000000000000;
  v10[6] = v0;
  v10[7] = v11;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v10[8] = sub_25A936284();
  v29 = v10;
  v30 = v8;
  v10[9] = &off_286C11D08;
  v12 = v8 + 64;
  v13 = 1 << *(v8 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v8 + 64);
  swift_beginAccess();
  v16 = 0;
  v17 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v18 = v16;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v30 + 48) + 16 * v20);
      v22 = *v21;
      v0 = v21[1];
      v23 = *(*(v30 + 56) + 8 * v20);
      v24 = *(v29 + 64);
      v25 = *(v29 + 72);
      ObjectType = swift_getObjectType();
      v33[3] = v28;
      v33[0] = v23;
      v31 = *(v25 + 64);
      *&v32 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v31(v22, v0, v33, v32, v25);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      if (!v15)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v17)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v16;
    if (v15)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  qword_27FA0FC88 = v29;
  return result;
}

uint64_t sub_25A883870@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v6 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v5, &v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (swift_dynamicCast())
    {
      if (*(&v48 + 1))
      {
        sub_25A87817C(&v47, v50);
        v7 = v51;
        v8 = v52;
        __swift_project_boxed_opaque_existential_1(v50, v51);
        v9 = (*(v8 + 8))(v7, v8);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04788, &unk_25A9FDA20);
        v11 = swift_allocObject();
        *(v11 + 16) = v9;
        a2[3] = v10;
        *a2 = v11;
        return __swift_destroy_boxed_opaque_existential_0Tm(v50);
      }
    }

    else
    {
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
  }

  sub_25A878194(&v47, &qword_27FA04728, &unk_25A9FD740);
  if (*(a1 + 16) && (v12 = sub_25A8F3600(120, 0xE100000000000000), (v13 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v12, &v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
    if (swift_dynamicCast())
    {
      if (*(&v48 + 1))
      {
        sub_25A87817C(&v47, v50);
        v14 = v51;
        v15 = v52;
        __swift_project_boxed_opaque_existential_1(v50, v51);
        (*(v15 + 8))(&v40, v14, v15);
        v16 = *(&v41 + 1);
        v17 = v42;
        __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
        (*(*(v17 + 8) + 8))(v43, 0x5F5F726574695F5FLL, 0xE800000000000000, v16);
        if (v43[3])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
          if ((swift_dynamicCast() & 1) == 0)
          {
            v46 = 0;
            v44 = 0u;
            v45 = 0u;
          }

          __swift_destroy_boxed_opaque_existential_0Tm(&v40);
          if (*(&v45 + 1))
          {
            sub_25A87817C(&v44, &v47);
            v18 = *(&v48 + 1);
            v19 = v49;
            __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_25A9F8D90;
            v21 = v51;
            v22 = __swift_project_boxed_opaque_existential_1(v50, v51);
            *(v20 + 56) = v21;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v20 + 32));
            (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v22, v21);
            v24 = sub_25A92BDB4(MEMORY[0x277D84F90]);
            (*(v19 + 16))(v43, v20, v24, v18, v19);

            if (v2)
            {
LABEL_18:
              __swift_destroy_boxed_opaque_existential_0Tm(&v47);
              return __swift_destroy_boxed_opaque_existential_0Tm(v50);
            }

            sub_25A87500C(v43, v39);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04778, &qword_25A9F8E48);
            if (swift_dynamicCast())
            {
              sub_25A87817C(&v40, &v44);
              v25 = *(&v45 + 1);
              v26 = __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
              v27 = *(*(v25 - 8) + 64);
              MEMORY[0x28223BE20](v26);
              (*(v29 + 16))(&v39[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)]);
              swift_getAssociatedTypeWitness();
              sub_25A9981C8();
              v30 = sub_25A9987B8();

              v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04788, &unk_25A9FDA20);
              v32 = swift_allocObject();
              *(v32 + 16) = v30;
              a2[3] = v31;
              *a2 = v32;
              __swift_destroy_boxed_opaque_existential_0Tm(v43);
              __swift_destroy_boxed_opaque_existential_0Tm(&v44);
              goto LABEL_18;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(v43);
            v42 = 0;
            v41 = 0u;
            v40 = 0u;
            sub_25A878194(&v40, &qword_27FA04780, &qword_25A9F8E50);
            __swift_destroy_boxed_opaque_existential_0Tm(&v47);
            goto LABEL_31;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0Tm(&v40);
          sub_25A878194(v43, &qword_27FA04458, &unk_25A9F7FB0);
          v44 = 0u;
          v45 = 0u;
          v46 = 0;
        }

        sub_25A878194(&v44, &qword_27FA04760, &unk_25A9F9BB0);
LABEL_31:
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        goto LABEL_22;
      }
    }

    else
    {
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
  }

  sub_25A878194(&v47, &qword_27FA04750, "jN\a");
LABEL_22:
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v34 = sub_25A997BD8();
  __swift_project_value_buffer(v34, qword_27FA0FCE8);
  v35 = sub_25A997BB8();
  v36 = sub_25A9983A8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_25A232000, v35, v36, "tuple> Invalid arg iterable", v37, 2u);
    MEMORY[0x25F852800](v37, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v38 = 47;
  return swift_willThrow();
}

uint64_t sub_25A883F64()
{
  v0 = 0x6563696C73;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v28 = type metadata accessor for Function();
  v3 = swift_allocObject();
  v3[4] = v1;
  v3[5] = v1;
  v3[6] = v1;

  v3[7] = v1;

  v3[8] = v1;

  v3[9] = 0;
  v3[10] = 0;

  v3[11] = 0;
  v3[12] = 0;

  v3[13] = sub_25A92BDB4(v1);
  v4 = 0xE500000000000000;
  v3[2] = 0x6563696C73;
  v3[3] = 0xE500000000000000;
  v5 = *(v3 + 5);
  v34[2] = *(v3 + 4);
  v34[3] = v5;
  v35 = v3[12];
  v6 = *(v3 + 3);
  v34[0] = *(v3 + 2);
  v34[1] = v6;
  v3[4] = v1;
  v3[5] = v1;
  v3[6] = v1;
  v3[7] = v1;
  v3[8] = v1;
  *(v3 + 9) = xmmword_25A9F8DA0;
  v3[11] = 0;
  v3[12] = 0;
  sub_25A892B80(v34);
  swift_beginAccess();
  v7 = v3[13];
  v3[13] = v2;

  v3[14] = sub_25A8904C4;
  v3[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04798, &qword_25A9F8E60);
  inited = swift_initStackObject();
  v32 = xmmword_25A9F8D90;
  *(inited + 16) = xmmword_25A9F8D90;
  *(inited + 32) = 0x5F5F727065725F5FLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_25A8F2B4C();
  v9 = sub_25A98E67C(inited);
  swift_setDeallocating();
  sub_25A878194(inited + 32, &qword_27FA047A0, &qword_25A9F8E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v11 = qword_27FA046A0;
  *(v10 + 56) = type metadata accessor for PyBuiltInClass();
  *(v10 + 64) = sub_25A892BD4();
  *(v10 + 32) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v12 = swift_allocObject();
  *(v12 + 16) = v32;
  *(v12 + 32) = 0x7463656A626FLL;
  *(v12 + 40) = 0xE600000000000000;
  v13 = swift_allocObject();
  v13[10] = v3;

  v14 = sub_25A967378(1, 2, 1, v12);
  v33[7] = v14;
  sub_25A96B0BC(0, 0, 1, v0, 0xE500000000000000);
  v13[2] = v0;
  v13[3] = v4;
  v13[4] = v0;
  v13[5] = v4;
  v13[6] = v10;
  v13[7] = v14;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v13[8] = sub_25A936284();
  v29 = v13;
  v30 = v9;
  v13[9] = &off_286C11D08;
  v15 = v9 + 64;
  v16 = 1 << *(v9 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v9 = v17 & *(v9 + 64);
  swift_beginAccess();
  v18 = 0;
  v3 = ((v16 + 63) >> 6);
  if (v9)
  {
    while (1)
    {
      v19 = v18;
LABEL_10:
      v20 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v21 = v20 | (v19 << 6);
      v22 = (*(v30 + 48) + 16 * v21);
      v23 = *v22;
      v0 = v22[1];
      v10 = *(*(v30 + 56) + 8 * v21);
      v24 = *(v29 + 64);
      v25 = *(v29 + 72);
      ObjectType = swift_getObjectType();
      v33[3] = v28;
      v33[0] = v10;
      v4 = v25 + 64;
      v31 = *(v25 + 64);
      *&v32 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v31(v23, v0, v33, v32, v25);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v19 >= v3)
    {
      break;
    }

    v9 = *(v15 + 8 * v19);
    ++v18;
    if (v9)
    {
      v18 = v19;
      goto LABEL_10;
    }
  }

  qword_27FA0FC90 = v29;
  return result;
}

uint64_t sub_25A8843E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1936159329, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (swift_dynamicCast())
    {
      v6 = *(&v44 + 1);
      if (*(&v44 + 1))
      {
        v7 = v45;
        __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
        v8 = (*(v7 + 8))(v6, v7);
        __swift_destroy_boxed_opaque_existential_0Tm(&v43);
        v9 = *(v8 + 16);
        switch(v9)
        {
          case 1:
            sub_25A87500C(v8 + 32, v42);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A8, &qword_25A9F8E70);
            v23 = swift_dynamicCast();
            if (v23)
            {
              v24 = *(&v44 + 1);
              v25 = v45;
              __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
              v26 = (*(v25 + 8))(v24, v25);
              result = __swift_destroy_boxed_opaque_existential_0Tm(&v43);
            }

            else
            {
              v45 = 0;
              v43 = 0u;
              v44 = 0u;
              result = sub_25A878194(&v43, &qword_27FA047B0, &qword_25A9F8E78);
              v26 = 0;
            }

            *(a2 + 24) = &type metadata for SliceStruct;
            *a2 = 0;
            *(a2 + 4) = 1;
            *(a2 + 8) = 0;
            break;
          case 2:
            sub_25A87500C(v8 + 32, v42);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A8, &qword_25A9F8E70);
            v19 = swift_dynamicCast();
            if (v19)
            {
              v20 = *(&v44 + 1);
              v21 = v45;
              __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
              v22 = (*(v21 + 8))(v20, v21);
              result = __swift_destroy_boxed_opaque_existential_0Tm(&v43);
            }

            else
            {
              v45 = 0;
              v43 = 0u;
              v44 = 0u;
              result = sub_25A878194(&v43, &qword_27FA047B0, &qword_25A9F8E78);
              v22 = 0;
            }

            if (*(v8 + 16) < 2uLL)
            {
              __break(1u);
              goto LABEL_44;
            }

            v28 = v19 ^ 1;
            sub_25A87500C(v8 + 64, v42);

            v23 = swift_dynamicCast();
            if (v23)
            {
              v29 = *(&v44 + 1);
              v30 = v45;
              __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
              v26 = (*(v30 + 8))(v29, v30);
              result = __swift_destroy_boxed_opaque_existential_0Tm(&v43);
            }

            else
            {
              v45 = 0;
              v43 = 0u;
              v44 = 0u;
              result = sub_25A878194(&v43, &qword_27FA047B0, &qword_25A9F8E78);
              v26 = 0;
            }

            *(a2 + 24) = &type metadata for SliceStruct;
            *a2 = v22;
            *(a2 + 4) = v28;
            *(a2 + 8) = 0;
            break;
          case 3:
            sub_25A87500C(v8 + 32, v42);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047A8, &qword_25A9F8E70);
            v47 = swift_dynamicCast();
            if (v47)
            {
              v10 = *(&v44 + 1);
              v11 = v45;
              __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
              v12 = (*(v11 + 8))(v10, v11);
              result = __swift_destroy_boxed_opaque_existential_0Tm(&v43);
            }

            else
            {
              v45 = 0;
              v43 = 0u;
              v44 = 0u;
              result = sub_25A878194(&v43, &qword_27FA047B0, &qword_25A9F8E78);
              v12 = 0;
            }

            if (*(v8 + 16) >= 2uLL)
            {
              sub_25A87500C(v8 + 64, v42);
              v31 = swift_dynamicCast();
              v46 = v12;
              if (v31)
              {
                v33 = *(&v44 + 1);
                v32 = v45;
                __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
                v34 = (*(v32 + 8))(v33, v32);
                result = __swift_destroy_boxed_opaque_existential_0Tm(&v43);
              }

              else
              {
                v45 = 0;
                v43 = 0u;
                v44 = 0u;
                result = sub_25A878194(&v43, &qword_27FA047B0, &qword_25A9F8E78);
                v34 = 0;
              }

              if (*(v8 + 16) >= 3uLL)
              {
                v35 = v47 ^ 1;
                v36 = v31 ^ 1;
                sub_25A87500C(v8 + 96, v42);

                v23 = swift_dynamicCast();
                if (v23)
                {
                  v37 = v34;
                  v38 = *(&v44 + 1);
                  v39 = v45;
                  __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
                  v40 = v38;
                  v34 = v37;
                  v26 = (*(v39 + 8))(v40, v39);
                  result = __swift_destroy_boxed_opaque_existential_0Tm(&v43);
                }

                else
                {
                  v45 = 0;
                  v43 = 0u;
                  v44 = 0u;
                  result = sub_25A878194(&v43, &qword_27FA047B0, &qword_25A9F8E78);
                  v26 = 0;
                }

                v41 = v46;
                *(a2 + 24) = &type metadata for SliceStruct;
                *a2 = v41;
                *(a2 + 4) = v35;
                *(a2 + 8) = v34;
                *(a2 + 12) = v36;
                goto LABEL_41;
              }

              goto LABEL_45;
            }

LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            return result;
          default:

            *(a2 + 24) = &type metadata for SliceStruct;
            *a2 = 0;
            v27 = 1;
            *(a2 + 4) = 1;
            *(a2 + 8) = 0;
            *(a2 + 12) = 1;
            *(a2 + 16) = 0;
LABEL_42:
            *(a2 + 20) = v27;
            return result;
        }

        *(a2 + 12) = 1;
LABEL_41:
        *(a2 + 16) = v26;
        v27 = v23 ^ 1;
        goto LABEL_42;
      }
    }

    else
    {
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
    }
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
  }

  sub_25A878194(&v43, &qword_27FA04728, &unk_25A9FD740);
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v14 = sub_25A997BD8();
  __swift_project_value_buffer(v14, qword_27FA0FCE8);
  v15 = sub_25A997BB8();
  v16 = sub_25A9983A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_25A232000, v15, v16, "slice> Invalid args", v17, 2u);
    MEMORY[0x25F852800](v17, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v18 = 46;
  return swift_willThrow();
}

uint64_t sub_25A884AD4()
{
  v0 = 1952672100;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v27 = type metadata accessor for Function();
  v3 = swift_allocObject();
  v3[4] = v1;
  v3[5] = v1;
  v3[6] = v1;

  v3[7] = v1;

  v3[8] = v1;

  v3[9] = 0;
  v3[10] = 0;

  v3[11] = 0;
  v3[12] = 0;

  v3[13] = sub_25A92BDB4(v1);
  v4 = 0xE400000000000000;
  v3[2] = 1952672100;
  v3[3] = 0xE400000000000000;
  v5 = *(v3 + 5);
  v33[2] = *(v3 + 4);
  v33[3] = v5;
  v34 = v3[12];
  v6 = *(v3 + 3);
  v33[0] = *(v3 + 2);
  v33[1] = v6;
  v3[4] = v1;
  v3[5] = v1;
  v3[6] = v1;
  v3[7] = v1;
  v3[8] = v1;
  *(v3 + 9) = xmmword_25A9F8DA0;
  *(v3 + 11) = xmmword_25A9F8DD0;
  sub_25A892B80(v33);
  swift_beginAccess();
  v7 = v3[13];
  v3[13] = v2;

  v3[14] = sub_25A890498;
  v3[15] = 0;
  v8 = sub_25A9852E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v9 = swift_allocObject();
  v31 = xmmword_25A9F8D90;
  *(v9 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v10 = qword_27FA046A0;
  *(v9 + 56) = type metadata accessor for PyBuiltInClass();
  *(v9 + 64) = sub_25A892BD4();
  *(v9 + 32) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v11 = swift_allocObject();
  *(v11 + 16) = v31;
  *(v11 + 32) = 0x7463656A626FLL;
  *(v11 + 40) = 0xE600000000000000;
  v12 = swift_allocObject();
  v12[10] = v3;

  v13 = sub_25A967378(1, 2, 1, v11);
  v32[7] = v13;
  sub_25A96B0BC(0, 0, 1, 1952672100, 0xE400000000000000);
  v12[2] = v0;
  v12[3] = v4;
  v12[4] = v0;
  v12[5] = v4;
  v12[6] = v9;
  v12[7] = v13;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v12[8] = sub_25A936284();
  v28 = v12;
  v29 = v8;
  v12[9] = &off_286C11D08;
  v14 = v8 + 64;
  v15 = 1 << *(v8 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v8 = v16 & *(v8 + 64);
  swift_beginAccess();
  v17 = 0;
  v3 = ((v15 + 63) >> 6);
  if (v8)
  {
    while (1)
    {
      v18 = v17;
LABEL_10:
      v19 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v29 + 48) + 16 * v20);
      v22 = *v21;
      v9 = v21[1];
      v23 = *(*(v29 + 56) + 8 * v20);
      v0 = *(v28 + 64);
      v24 = *(v28 + 72);
      ObjectType = swift_getObjectType();
      v32[3] = v27;
      v32[0] = v23;
      v4 = v24 + 64;
      v30 = *(v24 + 64);
      *&v31 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v30(v22, v9, v32, v31, v24);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      if (!v8)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v18 >= v3)
    {
      break;
    }

    v8 = *(v14 + 8 * v18);
    ++v17;
    if (v8)
    {
      v17 = v18;
      goto LABEL_10;
    }
  }

  qword_27FA0FC98 = v28;
  return result;
}

uint64_t sub_25A884EE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_25A98E540(MEMORY[0x277D84F90]);
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(1936159329, 0xE400000000000000), (v6 & 1) == 0))
  {
    v81 = 0u;
    v82 = 0u;
    *&v83[0] = 0;
    goto LABEL_8;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, &v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  v7 = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v83[0] = 0;
    v81 = 0u;
    v82 = 0u;
LABEL_8:
    sub_25A878194(&v81, &qword_27FA04728, &unk_25A9FD740);
    if (!*(a1 + 16))
    {
      goto LABEL_35;
    }

    goto LABEL_9;
  }

  v8 = *(&v82 + 1);
  if (!*(&v82 + 1))
  {
    goto LABEL_8;
  }

  v69 = a2;
  v9 = *&v83[0];
  __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
  v10 = (*(v9 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(&v81);
  v72 = *(v10 + 16);
  if (!v72)
  {
LABEL_34:

    a2 = v69;
    if (!*(a1 + 16))
    {
      goto LABEL_35;
    }

LABEL_9:
    v13 = sub_25A8F3600(1936159329, 0xE400000000000000);
    if (v14)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v13, &v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04740, "bN\a");
      if (swift_dynamicCast())
      {
        v15 = *(&v82 + 1);
        if (*(&v82 + 1))
        {
          v16 = *&v83[0];
          __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
          v17 = (*(v16 + 8))(v15, v16);
          __swift_destroy_boxed_opaque_existential_0Tm(&v81);

          v4 = v17;
          if (!*(a1 + 16))
          {
            goto LABEL_67;
          }

LABEL_37:
          v35 = sub_25A8F3600(0x73677261776BLL, 0xE600000000000000);
          if (v36)
          {
            sub_25A87500C(*(a1 + 56) + 32 * v35, &v76);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04740, "bN\a");
            if (swift_dynamicCast())
            {
              v37 = *(&v82 + 1);
              if (*(&v82 + 1))
              {
                v70 = a2;
                v38 = *&v83[0];
                __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
                v39 = (*(v38 + 8))(v37, v38);
                __swift_destroy_boxed_opaque_existential_0Tm(&v81);
                v40 = 0;
                v41 = 1 << *(v39 + 32);
                v42 = -1;
                if (v41 < 64)
                {
                  v42 = ~(-1 << v41);
                }

                v43 = v42 & *(v39 + 64);
                v44 = (v41 + 63) >> 6;
                if (!v43)
                {
                  goto LABEL_46;
                }

                while (1)
                {
                  v46 = v40;
LABEL_53:
                  v49 = __clz(__rbit64(v43));
                  v43 &= v43 - 1;
                  v50 = v49 | (v46 << 6);
                  sub_25A874FB0(*(v39 + 48) + 40 * v50, v74);
                  sub_25A87500C(*(v39 + 56) + 32 * v50, v73);
                  v76 = v74[0];
                  v77 = v74[1];
                  *&v78 = v75;
                  sub_25A872D74(v73, (&v78 + 8));
                  v48 = v46;
LABEL_54:
                  v83[0] = v78;
                  v83[1] = v79;
                  v84 = v80;
                  v81 = v76;
                  v82 = v77;
                  if (!*(&v77 + 1))
                  {

                    a2 = v70;
                    goto LABEL_69;
                  }

                  v76 = v81;
                  v77 = v82;
                  *&v78 = *&v83[0];
                  sub_25A872D74((v83 + 8), v74);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v73[0] = v4;
                  v52 = sub_25A8F35BC(&v76);
                  v54 = v4[2];
                  v55 = (v53 & 1) == 0;
                  v33 = __OFADD__(v54, v55);
                  v56 = v54 + v55;
                  if (v33)
                  {
LABEL_81:
                    __break(1u);
LABEL_82:
                    __break(1u);
LABEL_83:
                    __break(1u);
LABEL_84:
                    __break(1u);
                    goto LABEL_85;
                  }

                  v57 = v53;
                  if (v4[3] >= v56)
                  {
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      goto LABEL_60;
                    }

                    v62 = v52;
                    sub_25A968DB8();
                    v52 = v62;
                    v4 = *&v73[0];
                    if ((v57 & 1) == 0)
                    {
                      goto LABEL_61;
                    }

LABEL_44:
                    v45 = (v4[7] + 32 * v52);
                    __swift_destroy_boxed_opaque_existential_0Tm(v45);
                    sub_25A872D74(v74, v45);
                    sub_25A8795A0(&v76);
                    v40 = v48;
                    if (!v43)
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    sub_25A9679D0(v56, isUniquelyReferenced_nonNull_native);
                    v52 = sub_25A8F35BC(&v76);
                    if ((v57 & 1) != (v58 & 1))
                    {
                      goto LABEL_88;
                    }

LABEL_60:
                    v4 = *&v73[0];
                    if (v57)
                    {
                      goto LABEL_44;
                    }

LABEL_61:
                    v4[(v52 >> 6) + 8] |= 1 << v52;
                    v59 = v52;
                    sub_25A874FB0(&v76, v4[6] + 40 * v52);
                    sub_25A872D74(v74, (v4[7] + 32 * v59));
                    sub_25A8795A0(&v76);
                    v60 = v4[2];
                    v33 = __OFADD__(v60, 1);
                    v61 = v60 + 1;
                    if (v33)
                    {
                      goto LABEL_82;
                    }

                    v4[2] = v61;
                    v40 = v48;
                    if (!v43)
                    {
LABEL_46:
                      if (v44 <= v40 + 1)
                      {
                        v47 = v40 + 1;
                      }

                      else
                      {
                        v47 = v44;
                      }

                      v48 = v47 - 1;
                      while (1)
                      {
                        v46 = v40 + 1;
                        if (__OFADD__(v40, 1))
                        {
                          break;
                        }

                        if (v46 >= v44)
                        {
                          v43 = 0;
                          v80 = 0;
                          v78 = 0u;
                          v79 = 0u;
                          v76 = 0u;
                          v77 = 0u;
                          goto LABEL_54;
                        }

                        v43 = *(v39 + 64 + 8 * v46);
                        ++v40;
                        if (v43)
                        {
                          goto LABEL_53;
                        }
                      }

                      __break(1u);
                      goto LABEL_81;
                    }
                  }
                }
              }
            }

            else
            {
              *&v83[0] = 0;
              v81 = 0u;
              v82 = 0u;
            }

LABEL_68:
            sub_25A878194(&v81, &qword_27FA04730, "\\N\a");
LABEL_69:
            result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04738, "^N\a");
            a2[3] = result;
            *a2 = v4;
            return result;
          }

LABEL_67:
          v81 = 0u;
          v82 = 0u;
          *&v83[0] = 0;
          goto LABEL_68;
        }
      }

      else
      {
        *&v83[0] = 0;
        v81 = 0u;
        v82 = 0u;
      }

LABEL_36:
      sub_25A878194(&v81, &qword_27FA04730, "\\N\a");
      if (!*(a1 + 16))
      {
        goto LABEL_67;
      }

      goto LABEL_37;
    }

LABEL_35:
    v81 = 0u;
    v82 = 0u;
    *&v83[0] = 0;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = v10 + 32;
  v71 = v10;
  while (1)
  {
    if (v11 >= *(v10 + 16))
    {
      goto LABEL_83;
    }

    sub_25A87500C(v12, &v76);
    if ((swift_dynamicCast() & 1) == 0)
    {

      *&v83[0] = 0;
      v81 = 0u;
      v82 = 0u;
      sub_25A878194(&v81, &qword_27FA04728, &unk_25A9FD740);
LABEL_74:

      goto LABEL_76;
    }

    v19 = *(&v82 + 1);
    v20 = *&v83[0];
    __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
    v21 = (*(v20 + 8))(v19, v20);
    __swift_destroy_boxed_opaque_existential_0Tm(&v81);
    if (*(v21 + 16) != 2)
    {

      goto LABEL_74;
    }

    sub_25A87500C(v21 + 32, v74);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v81 = v76;
    v82 = v77;
    *&v83[0] = v78;
    sub_25A874FB0(&v81, &v76);
    if (*(v21 + 16) < 2uLL)
    {
      goto LABEL_84;
    }

    v22 = v7;
    sub_25A87500C(v21 + 64, v74);

    sub_25A872D74(v74, v73);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v85 = v4;
    v25 = sub_25A8F35BC(&v76);
    v26 = v4[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v29 = v24;
    if (v4[3] >= v28)
    {
      if (v23)
      {
        v4 = v85;
        if (v24)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_25A968DB8();
        v4 = v85;
        if (v29)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_25A9679D0(v28, v23);
      v30 = sub_25A8F35BC(&v76);
      if ((v29 & 1) != (v31 & 1))
      {
LABEL_88:
        result = sub_25A998AA8();
        __break(1u);
        return result;
      }

      v25 = v30;
      v4 = v85;
      if (v29)
      {
LABEL_14:
        v18 = (v4[7] + 32 * v25);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        sub_25A872D74(v73, v18);
        sub_25A8795A0(&v76);
        sub_25A8795A0(&v81);
        goto LABEL_15;
      }
    }

    v4[(v25 >> 6) + 8] |= 1 << v25;
    sub_25A874FB0(&v76, v4[6] + 40 * v25);
    sub_25A872D74(v73, (v4[7] + 32 * v25));
    sub_25A8795A0(&v76);
    sub_25A8795A0(&v81);
    v32 = v4[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_86;
    }

    v4[2] = v34;
LABEL_15:
    v7 = v22;
    ++v11;
    v12 += 32;
    v10 = v71;
    if (v72 == v11)
    {
      goto LABEL_34;
    }
  }

  *&v78 = 0;
  v76 = 0u;
  v77 = 0u;

  sub_25A878194(&v76, &qword_27FA04610, &qword_25A9FDA50);
LABEL_76:
  if (qword_27FA043C0 == -1)
  {
    goto LABEL_77;
  }

LABEL_87:
  swift_once();
LABEL_77:
  v64 = sub_25A997BD8();
  __swift_project_value_buffer(v64, qword_27FA0FCE8);
  v65 = sub_25A997BB8();
  v66 = sub_25A9983A8();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_25A232000, v65, v66, "dict> Unsupported *args element", v67, 2u);
    MEMORY[0x25F852800](v67, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v68 = -115;
  return swift_willThrow();
}

uint64_t sub_25A885898()
{
  v0 = 1953720684;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
  v1 = swift_allocObject();
  v32 = xmmword_25A9F8D90;
  v1[1] = xmmword_25A9F8D90;
  v1[2] = 0u;
  v1[3] = 0u;
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v28 = type metadata accessor for Function();
  v4 = swift_allocObject();
  v4[4] = v2;
  v4[5] = v2;
  v4[6] = v2;

  v4[7] = v2;

  v4[8] = v2;

  v4[9] = 0;
  v4[10] = 0;

  v4[11] = 0;
  v4[12] = 0;

  v4[13] = sub_25A92BDB4(v2);
  v5 = 0xE400000000000000;
  v4[2] = 1953720684;
  v4[3] = 0xE400000000000000;
  v6 = *(v4 + 5);
  v34[2] = *(v4 + 4);
  v34[3] = v6;
  v35 = v4[12];
  v7 = *(v4 + 3);
  v34[0] = *(v4 + 2);
  v34[1] = v7;
  v4[4] = v2;
  v4[5] = &unk_286C0B018;
  v4[6] = v2;
  v4[7] = v2;
  v4[8] = v1;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  sub_25A892B80(v34);
  swift_beginAccess();
  v8 = v4[13];
  v4[13] = v3;

  v4[14] = sub_25A89046C;
  v4[15] = 0;
  v9 = sub_25A97ECB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v11 = qword_27FA046A0;
  *(v10 + 56) = type metadata accessor for PyBuiltInClass();
  *(v10 + 64) = sub_25A892BD4();
  *(v10 + 32) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v12 = swift_allocObject();
  *(v12 + 16) = v32;
  *(v12 + 32) = 0x7463656A626FLL;
  *(v12 + 40) = 0xE600000000000000;
  v13 = swift_allocObject();
  v13[10] = v4;

  v14 = sub_25A967378(1, 2, 1, v12);
  v33[7] = v14;
  sub_25A96B0BC(0, 0, 1, 1953720684, 0xE400000000000000);
  v13[2] = v0;
  v13[3] = v5;
  v13[4] = v0;
  v13[5] = v5;
  v13[6] = v10;
  v13[7] = v14;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v13[8] = sub_25A936284();
  v29 = v13;
  v30 = v9;
  v13[9] = &off_286C11D08;
  v15 = v9 + 64;
  v16 = 1 << *(v9 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v9 = v17 & *(v9 + 64);
  swift_beginAccess();
  v18 = 0;
  v4 = ((v16 + 63) >> 6);
  if (v9)
  {
    while (1)
    {
      v19 = v18;
LABEL_10:
      v20 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v21 = v20 | (v19 << 6);
      v22 = (*(v30 + 48) + 16 * v21);
      v23 = *v22;
      v10 = v22[1];
      v24 = *(*(v30 + 56) + 8 * v21);
      v0 = *(v29 + 64);
      v25 = *(v29 + 72);
      ObjectType = swift_getObjectType();
      v33[3] = v28;
      v33[0] = v24;
      v5 = v25 + 64;
      v31 = *(v25 + 64);
      *&v32 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v31(v23, v10, v33, v32, v25);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v19 >= v4)
    {
      break;
    }

    v9 = *(v15 + 8 * v19);
    ++v18;
    if (v9)
    {
      v18 = v19;
      goto LABEL_10;
    }
  }

  qword_27FA0FCA0 = v29;
  return result;
}

uint64_t sub_25A885CD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v6 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v5, &v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (swift_dynamicCast())
    {
      if (*(&v45 + 1))
      {
        sub_25A87817C(&v44, v47);
        v7 = v48;
        v8 = v49;
        __swift_project_boxed_opaque_existential_1(v47, v48);
        v9 = (*(v8 + 8))(v7, v8);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
        v11 = swift_allocObject();
        *(v11 + 16) = v9;
        a2[3] = v10;
        *a2 = v11;
        return __swift_destroy_boxed_opaque_existential_0Tm(v47);
      }
    }

    else
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
    }
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
  }

  sub_25A878194(&v44, &qword_27FA04728, &unk_25A9FD740);
  if (*(a1 + 16) && (v12 = sub_25A8F3600(0x656C626172657469, 0xE800000000000000), (v13 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v12, &v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
    if (swift_dynamicCast())
    {
      if (*(&v45 + 1))
      {
        sub_25A87817C(&v44, v47);
        v14 = v48;
        v15 = v49;
        __swift_project_boxed_opaque_existential_1(v47, v48);
        (*(v15 + 8))(&v37, v14, v15);
        v16 = *(&v38 + 1);
        v17 = v39;
        __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
        (*(*(v17 + 8) + 8))(v40, 0x5F5F726574695F5FLL, 0xE800000000000000, v16);
        if (v40[3])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
          if ((swift_dynamicCast() & 1) == 0)
          {
            v43 = 0;
            v41 = 0u;
            v42 = 0u;
          }

          __swift_destroy_boxed_opaque_existential_0Tm(&v37);
          if (*(&v42 + 1))
          {
            sub_25A87817C(&v41, &v44);
            v18 = *(&v45 + 1);
            v19 = v46;
            __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_25A9F8D90;
            v21 = v48;
            v22 = __swift_project_boxed_opaque_existential_1(v47, v48);
            *(v20 + 56) = v21;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v20 + 32));
            (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v22, v21);
            v24 = sub_25A92BDB4(MEMORY[0x277D84F90]);
            (*(v19 + 16))(v40, v20, v24, v18, v19);

            if (v2)
            {
LABEL_18:
              __swift_destroy_boxed_opaque_existential_0Tm(&v44);
              return __swift_destroy_boxed_opaque_existential_0Tm(v47);
            }

            sub_25A87500C(v40, v36);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04778, &qword_25A9F8E48);
            if (swift_dynamicCast())
            {
              sub_25A87817C(&v37, &v41);
              v25 = *(&v42 + 1);
              v26 = __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
              v27 = *(*(v25 - 8) + 64);
              MEMORY[0x28223BE20](v26);
              (*(v29 + 16))(&v36[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)]);
              swift_getAssociatedTypeWitness();
              sub_25A9981C8();
              v30 = sub_25A9987B8();

              v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
              v32 = swift_allocObject();
              *(v32 + 16) = v30;
              a2[3] = v31;
              *a2 = v32;
              __swift_destroy_boxed_opaque_existential_0Tm(v40);
              __swift_destroy_boxed_opaque_existential_0Tm(&v41);
              goto LABEL_18;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(v40);
            v39 = 0;
            v38 = 0u;
            v37 = 0u;
            sub_25A878194(&v37, &qword_27FA04780, &qword_25A9F8E50);
            __swift_destroy_boxed_opaque_existential_0Tm(&v44);
            goto LABEL_27;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0Tm(&v37);
          sub_25A878194(v40, &qword_27FA04458, &unk_25A9F7FB0);
          v41 = 0u;
          v42 = 0u;
          v43 = 0;
        }

        sub_25A878194(&v41, &qword_27FA04760, &unk_25A9F9BB0);
LABEL_27:
        __swift_destroy_boxed_opaque_existential_0Tm(v47);
        goto LABEL_22;
      }
    }

    else
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
    }
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
  }

  sub_25A878194(&v44, &qword_27FA04750, "jN\a");
LABEL_22:
  v34 = MEMORY[0x277D84F90];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
  result = swift_allocObject();
  *(result + 16) = v34;
  a2[3] = v35;
  *a2 = result;
  return result;
}