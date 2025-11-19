uint64_t sub_248107B94()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x724764657473656ELL;
  if (v1 != 5)
  {
    v3 = 0x73657361696C61;
  }

  v4 = 1145656661;
  if (v1 != 3)
  {
    v4 = 0x656D614E6C6C7566;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 17481;
  if (v1 != 1)
  {
    v5 = 1701667182;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_248107C5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_248109664();
  *a1 = result;
  return result;
}

uint64_t sub_248107C90(uint64_t a1)
{
  v2 = sub_248109114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248107CCC(uint64_t a1)
{
  v2 = sub_248109114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248107D08()
{
  v1 = *(v0 + 5);

  v2 = OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_uuid;
  v3 = sub_2481242C8();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName + 8];

  v5 = *&v0[OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups];

  v6 = *&v0[OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_248107E08()
{
  result = sub_2481242C8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_248107ECC(uint64_t a1)
{
  result = sub_248107F7C(&qword_27EE87A28, type metadata accessor for GroupRecordFile);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248107F24(uint64_t a1)
{
  result = sub_248107F7C(&qword_27EE87A30, type metadata accessor for UserRecordFile);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248107F7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_248107FC4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F20, &unk_248126920);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248109114();
  sub_248124DA8();
  v11 = *(v3 + 16);
  LOBYTE(v19) = 0;
  sub_2481248E8();
  if (!v2)
  {
    v12 = *(v3 + 24);
    LOBYTE(v19) = 1;
    sub_248124908();
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    LOBYTE(v19) = 2;

    sub_2481248C8();

    LOBYTE(v19) = 3;
    sub_2481242C8();
    sub_248107F7C(&qword_27EE87AE8, MEMORY[0x277CC95F0]);
    sub_2481248F8();
    v15 = *(v3 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName);
    v16 = *(v3 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName + 8);
    LOBYTE(v19) = 4;

    sub_2481248C8();

    v19 = *(v3 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups);
    HIBYTE(v18) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87ED8, &qword_248126900);
    sub_24810900C(&qword_27EE87F00, &qword_27EE87AE8);
    sub_2481248B8();
    v19 = *(v3 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases);
    HIBYTE(v18) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87EE8, &qword_248126908);
    sub_2481090A8(&qword_27EE87F08);
    sub_2481248B8();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_248108394(uint64_t *a1)
{
  v3 = v1;
  v37 = *v3;
  v38 = v2;
  v5 = sub_2481242C8();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F10, &qword_248126918);
  v34 = *(v36 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v10 = OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups;
  *(v3 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups) = 0;
  v11 = OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases;
  v39 = v3;
  v40 = a1;
  *(v3 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases) = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248109114();
  v13 = v38;
  sub_248124D98();
  if (v13)
  {
    v14 = v39;
    v20 = *(v39 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups);

    v21 = *(v14 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases);

    v22 = *(*v14 + 48);
    v23 = *(*v14 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v8;
    v38 = v10;
    v16 = v5;
    v33 = v11;
    v17 = v34;
    v18 = v35;
    LOBYTE(v42) = 0;
    v19 = sub_248124868();
    v14 = v39;
    v39[2] = v19;
    LOBYTE(v42) = 1;
    *(v14 + 6) = sub_248124888();
    LOBYTE(v42) = 2;
    v14[4] = sub_248124848();
    v14[5] = v25;
    LOBYTE(v42) = 3;
    sub_248107F7C(&qword_27EE87B10, MEMORY[0x277CC95F0]);
    sub_248124878();
    (*(v18 + 32))(v14 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_uuid, v15, v16);
    LOBYTE(v42) = 4;
    v26 = sub_248124848();
    v27 = (v14 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName);
    *v27 = v26;
    v27[1] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87ED8, &qword_248126900);
    v41 = 5;
    sub_24810900C(&qword_27EE87EE0, &qword_27EE87B10);
    v29 = v36;
    sub_248124838();
    v30 = *(v14 + v38);
    *(v14 + v38) = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87EE8, &qword_248126908);
    v41 = 6;
    sub_2481090A8(&qword_27EE87EF0);
    sub_248124838();
    (*(v17 + 8))(0, v29);
    v31 = *(v14 + v33);
    *(v14 + v33) = v42;
  }

  __swift_destroy_boxed_opaque_existential_0(v40);
  return v14;
}

uint64_t sub_248108944@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 48);
  v9 = *(v3 + 52);
  v10 = swift_allocObject();
  result = a2(a1);
  if (!v4)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t sub_2481089D0()
{
  v2 = *v0;
  v3 = v0[2];
  if (v3 != 3)
  {
    v9 = sub_248124748();
    swift_allocError();
    v8 = v10;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F28, &unk_248126F70) + 48);
    v8[3] = MEMORY[0x277D83E88];
    *v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2481262D0;
    *(v12 + 56) = &type metadata for UserRecordFile.CodingKeys;
    *(v12 + 64) = sub_248108FB8();
    *(v12 + 32) = 0;
    sub_248124718();
    (*(*(v9 - 8) + 104))(v8, *MEMORY[0x277D841A8], v9);
    swift_willThrow();
    return v8;
  }

  v4 = sub_248124198();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_248124188();
  sub_248107F7C(&qword_27EE87EB8, type metadata accessor for UserRecordFile);
  v7 = sub_248124178();
  if (!v1)
  {
    v8 = v7;

    return v8;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_248108C14()
{
  v2 = *v0;
  v3 = v0[2];
  if (v3 != 3)
  {
    v9 = sub_248124748();
    swift_allocError();
    v8 = v10;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F28, &unk_248126F70) + 48);
    v8[3] = MEMORY[0x277D83E88];
    *v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2481262D0;
    *(v12 + 56) = &type metadata for GroupRecordFile.CodingKeys;
    *(v12 + 64) = sub_248109114();
    *(v12 + 32) = 0;
    sub_248124718();
    (*(*(v9 - 8) + 104))(v8, *MEMORY[0x277D841A8], v9);
    swift_willThrow();
    return v8;
  }

  v4 = sub_248124198();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_248124188();
  sub_248107F7C(&qword_27EE87EA8, type metadata accessor for GroupRecordFile);
  v7 = sub_248124178();
  if (!v1)
  {
    v8 = v7;

    return v8;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_248108E58(uint64_t a1)
{
  result = sub_248107F7C(&qword_27EE87EA8, type metadata accessor for GroupRecordFile);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248108EB0(uint64_t a1)
{
  result = sub_248107F7C(&qword_27EE87EB0, type metadata accessor for GroupRecordFile);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248108F08(uint64_t a1)
{
  result = sub_248107F7C(&qword_27EE87EB8, type metadata accessor for UserRecordFile);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248108F60(uint64_t a1)
{
  result = sub_248107F7C(&qword_27EE87EC0, type metadata accessor for UserRecordFile);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_248108FB8()
{
  result = qword_27EE87ED0;
  if (!qword_27EE87ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87ED0);
  }

  return result;
}

uint64_t sub_24810900C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87ED8, &qword_248126900);
    sub_248107F7C(a2, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2481090A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87EE8, &qword_248126908);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_248109114()
{
  result = qword_27EE87F18;
  if (!qword_27EE87F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87F18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupRecordFile.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupRecordFile.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserRecordFile.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserRecordFile.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24810940C()
{
  result = qword_27EE87F38;
  if (!qword_27EE87F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87F38);
  }

  return result;
}

unint64_t sub_248109464()
{
  result = qword_27EE87F40;
  if (!qword_27EE87F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87F40);
  }

  return result;
}

unint64_t sub_2481094BC()
{
  result = qword_27EE87F48;
  if (!qword_27EE87F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87F48);
  }

  return result;
}

unint64_t sub_248109514()
{
  result = qword_27EE87F50;
  if (!qword_27EE87F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87F50);
  }

  return result;
}

unint64_t sub_24810956C()
{
  result = qword_27EE87F58;
  if (!qword_27EE87F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87F58);
  }

  return result;
}

unint64_t sub_2481095C4()
{
  result = qword_27EE87F60;
  if (!qword_27EE87F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87F60);
  }

  return result;
}

uint64_t sub_248109618()
{
  v0 = sub_248124828();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_248109664()
{
  v0 = sub_248124828();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

void sub_2481096B0(uint64_t a1)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2481240D8();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F88, &qword_248126C08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v44 - v7;
  v8 = sub_2481240B8();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = sub_248124408();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() defaultManager];
  sub_2481243E8();
  v18 = sub_248124478();

  v52[0] = 0;
  v19 = [v17 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:v52];

  v20 = v52[0];
  if (v19)
  {
    (*(v13 + 16))(v16, a1, v12);
    v21 = v20;
    v22 = sub_2481242D8();
    v23 = sub_248124618();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v52[0] = v25;
      *v24 = 136446210;
      sub_24810BE44(&qword_27EE87A10, MEMORY[0x277D854C0]);
      v26 = sub_248124938();
      v28 = v27;
      (*(v13 + 8))(v16, v12);
      v29 = sub_24810C31C(v26, v28, v52);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_2480DF000, v22, v23, "Created directory %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x24C1C7B90](v25, -1, -1);
      MEMORY[0x24C1C7B90](v24, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    goto LABEL_14;
  }

  v30 = v52[0];
  v31 = sub_2481241E8();

  swift_willThrow();
  v52[0] = v31;
  MEMORY[0x24C1C7A20](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
  if (!swift_dynamicCast())
  {
LABEL_13:

LABEL_14:
    v43 = *MEMORY[0x277D85DE8];
    return;
  }

  v32 = v48;
  v33 = v47;
  (*(v48 + 32))();
  v34 = sub_2481240A8();
  if (v34)
  {
    v51 = v34;
    v35 = v46;
    v36 = v50;
    v37 = swift_dynamicCast();
    v38 = v49;
    (*(v49 + 56))(v35, v37 ^ 1u, 1, v36);
  }

  else
  {
    v38 = v49;
    v36 = v50;
    v35 = v46;
    (*(v49 + 56))(v46, 1, 1, v50);
  }

  v39 = (*(v38 + 48))(v35, 1, v36);
  sub_24810BF44(v35);
  if (v39)
  {
    (*(v32 + 8))(v33, v8);
    goto LABEL_13;
  }

  v40 = sub_2481240A8();
  if (v40)
  {
    v41 = v40;

    v51 = v41;
    v42 = v45;
    swift_dynamicCast();
    sub_2481240C8();
    swift_willThrow();
    (*(v32 + 8))(v33, v8);
    (*(v38 + 8))(v42, v36);
    goto LABEL_13;
  }

  __break(1u);
}

void sub_248109CC4(uint64_t a1)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2481240D8();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v49 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F88, &qword_248126C08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v49 - v7;
  v8 = sub_2481240B8();
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v14 = sub_248124408();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_opt_self() defaultManager];
  sub_2481243E8();
  v20 = sub_248124478();

  v56[0] = 0;
  v21 = [v19 removeItemAtPath:v20 error:v56];

  v22 = v56[0];
  if (v21)
  {
    v23 = v15;
    (*(v15 + 16))(v18, a1, v14);
    v24 = v22;
    v25 = sub_2481242D8();
    v26 = sub_248124618();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v56[0] = v28;
      *v27 = 136446210;
      sub_24810BE44(&qword_27EE87A10, MEMORY[0x277D854C0]);
      v29 = sub_248124938();
      v31 = v30;
      (*(v23 + 8))(v18, v14);
      v32 = sub_24810C31C(v29, v31, v56);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_2480DF000, v25, v26, "Deleted %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x24C1C7B90](v28, -1, -1);
      MEMORY[0x24C1C7B90](v27, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    goto LABEL_17;
  }

  v33 = v56[0];
  v34 = sub_2481241E8();

  swift_willThrow();
  v56[0] = v34;
  MEMORY[0x24C1C7A20](v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  v35 = v53;
  (*(v53 + 32))(v54, v13, v8);
  v36 = sub_2481240A8();
  if (v36)
  {
    v55 = v36;
    v37 = v50;
    v38 = v52;
    v39 = swift_dynamicCast();
    v40 = v51;
    (*(v51 + 56))(v37, v39 ^ 1u, 1, v38);
  }

  else
  {
    v37 = v50;
    v40 = v51;
    v38 = v52;
    (*(v51 + 56))(v50, 1, 1, v52);
  }

  v41 = (*(v40 + 48))(v37, 1, v38);
  sub_24810BF44(v37);
  if (v41)
  {
    (*(v35 + 8))(v54, v8);
LABEL_16:

    goto LABEL_17;
  }

  v42 = sub_2481240A8();
  if (v42)
  {
    v55 = v42;
    v43 = v49;
    swift_dynamicCast();
    sub_24810BE44(&qword_27EE87A20, MEMORY[0x277CC8658]);
    sub_2481241A8();
    v44 = *(v40 + 8);
    v44(v43, v38);
    v45 = sub_2481243A8();
    if (v45 == sub_2481243A8())
    {
      (*(v53 + 8))(v54, v8);

LABEL_17:
      v48 = *MEMORY[0x277D85DE8];
      return;
    }

    v46 = sub_2481240A8();
    if (v46)
    {
      v47 = v46;

      v55 = v47;
      swift_dynamicCast();
      sub_2481240C8();
      swift_willThrow();
      (*(v53 + 8))(v54, v8);
      v44(v43, v38);
      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24810A3BC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v54 = a2;
  v53 = a1;
  v4 = sub_2481240D8();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F88, &qword_248126C08);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v46 - v9;
  v11 = sub_2481240B8();
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v50 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  v17 = sub_248124408();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_248124208();
  v51 = *(v22 - 8);
  v52 = v22;
  v23 = *(v51 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2481243E8();
  sub_2481241F8();

  v26 = v55;
  sub_248124258();
  if (v26)
  {
    v57 = v26;
    MEMORY[0x24C1C7A20](v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
    if (swift_dynamicCast())
    {
      (*(v49 + 32))(v50, v16, v11);
      v27 = sub_2481240A8();
      if (v27)
      {
        v56 = v27;
        v28 = v48;
        v29 = swift_dynamicCast();
        v30 = v47;
        (*(v47 + 56))(v10, v29 ^ 1u, 1, v28);
      }

      else
      {
        v30 = v47;
        v28 = v48;
        (*(v47 + 56))(v10, 1, 1, v48);
      }

      v41 = (*(v30 + 48))(v10, 1, v28);
      sub_24810BF44(v10);
      if (!v41)
      {
        v42 = v50;
        v43 = sub_2481240A8();
        if (!v43)
        {
          __break(1u);
          return;
        }

        v44 = v43;

        v56 = v44;
        v45 = v46;
        swift_dynamicCast();
        sub_2481240C8();
        swift_willThrow();
        (*(v49 + 8))(v42, v11);
        (*(v51 + 8))(v25, v52);
        (*(v30 + 8))(v45, v28);
        goto LABEL_13;
      }

      (*(v49 + 8))(v50, v11);
    }

    (*(v51 + 8))(v25, v52);
LABEL_13:

    return;
  }

  (*(v18 + 16))(v21, a3, v17);
  v31 = sub_2481242D8();
  v32 = sub_248124618();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v54 = v33;
    v55 = swift_slowAlloc();
    v57 = v55;
    *v33 = 136446210;
    sub_24810BE44(&qword_27EE87A10, MEMORY[0x277D854C0]);
    v34 = sub_248124938();
    v36 = v35;
    (*(v18 + 8))(v21, v17);
    v37 = sub_24810C31C(v34, v36, &v57);

    v38 = v54;
    *(v54 + 1) = v37;
    v39 = v38;
    _os_log_impl(&dword_2480DF000, v31, v32, "Wrote file %{public}s", v38, 0xCu);
    v40 = v55;
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x24C1C7B90](v40, -1, -1);
    MEMORY[0x24C1C7B90](v39, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v21, v17);
  }

  (*(v51 + 8))(v25, v52);
}

void sub_24810AA04(uint64_t a1, uint64_t a2)
{
  v5 = sub_2481240D8();
  v63 = *(v5 - 8);
  v64 = v5;
  isa = v63[8].isa;
  MEMORY[0x28223BE20](v5);
  v62 = &v59[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_248124408();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v59[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v59[-v15];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v59[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v59[-v20];
  v70 = 0;
  v66 = a2;
  v67 = &v70;
  v22 = sub_2481243C8();
  if (v70)
  {
    v69 = MEMORY[0x24C1C6B60](v22);
    v23 = v9[2];
    v23(v16, a1, v8);
    v23(v13, a2, v8);
    v24 = sub_2481242D8();
    v25 = sub_248124628();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v61 = v24;
      v27 = v26;
      v65 = swift_slowAlloc();
      v68 = v65;
      *v27 = 136446722;
      sub_24810BE44(&qword_27EE87A10, MEMORY[0x277D854C0]);
      v60 = v25;
      v28 = sub_248124938();
      v30 = v29;
      v31 = v9[1];
      v31(v16, v8);
      v32 = sub_24810C31C(v28, v30, &v68);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2082;
      v33 = sub_248124938();
      v35 = v34;
      v31(v13, v8);
      v36 = sub_24810C31C(v33, v35, &v68);

      *(v27 + 14) = v36;
      *(v27 + 22) = 1024;
      *(v27 + 24) = v69;
      v37 = v61;
      _os_log_impl(&dword_2480DF000, v61, v60, "renamex_np(%{public}s, %{public}s) failed: %{darwin.errno}d", v27, 0x1Cu);
      v38 = v65;
      swift_arrayDestroy();
      MEMORY[0x24C1C7B90](v38, -1, -1);
      MEMORY[0x24C1C7B90](v27, -1, -1);
    }

    else
    {

      v54 = v9[1];
      v54(v13, v8);
      v54(v16, v8);
    }

    v55 = sub_248124398();
    if ((v55 & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v68) = v55;
      sub_24810BD34(MEMORY[0x277D84F90]);
      sub_24810BE44(&qword_27EE87A20, MEMORY[0x277CC8658]);
      v56 = v62;
      v57 = v64;
      sub_2481241C8();
      sub_2481240C8();
      (v63[1].isa)(v56, v57);
      swift_willThrow();
    }
  }

  else
  {
    v64 = v2;
    v39 = v9[2];
    v39(v21, a1, v8);
    v39(v19, a2, v8);
    v40 = sub_2481242D8();
    v41 = sub_248124618();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v68 = v65;
      *v42 = 136446466;
      sub_24810BE44(&qword_27EE87A10, MEMORY[0x277D854C0]);
      v63 = v40;
      LODWORD(v62) = v41;
      v43 = sub_248124938();
      v45 = v44;
      v46 = v9[1];
      v46(v21, v8);
      v47 = sub_24810C31C(v43, v45, &v68);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2082;
      v48 = sub_248124938();
      v50 = v49;
      v46(v19, v8);
      v51 = sub_24810C31C(v48, v50, &v68);

      *(v42 + 14) = v51;
      v52 = v63;
      _os_log_impl(&dword_2480DF000, v63, v62, "Atomically swapped %{public}s <-> %{public}s", v42, 0x16u);
      v53 = v65;
      swift_arrayDestroy();
      MEMORY[0x24C1C7B90](v53, -1, -1);
      MEMORY[0x24C1C7B90](v42, -1, -1);
    }

    else
    {

      v58 = v9[1];
      v58(v19, v8);
      v58(v21, v8);
    }
  }
}

uint64_t sub_24810B0F8()
{
  v1 = OBJC_IVAR____TtC23DarwinDirectoryInternal18FilesystemProvider_logger;
  v2 = sub_2481242F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for FilesystemProvider()
{
  result = qword_27EE87F68;
  if (!qword_27EE87F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24810B1E8()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  return sub_2481243C8();
}

uint64_t sub_24810B240()
{
  v70 = *MEMORY[0x277D85DE8];
  v0 = sub_2481240D8();
  v64 = *(v0 - 8);
  v1 = *(v64 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F88, &qword_248126C08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v61 - v6;
  v8 = sub_2481240B8();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v61 - v13;
  v15 = [objc_opt_self() defaultManager];
  sub_2481243E8();
  v16 = sub_248124478();

  v68 = 0;
  v17 = [v15 contentsOfDirectoryAtPath:v16 error:&v68];

  v18 = v68;
  if (v17)
  {
    v3 = sub_248124548();
    v19 = v18;

    v20 = *(v3 + 2);
    if (v20)
    {
      v21 = 0;
      v22 = 0;
      while (1)
      {
        v23 = *&v3[v21 + 32];
        v24 = *&v3[v21 + 40];
        if (v23 == 46 && v24 == 0xE100000000000000)
        {
          break;
        }

        v26 = *&v3[v21 + 32];
        v27 = *&v3[v21 + 40];
        if (sub_248124B38())
        {
          break;
        }

        v28 = v23 == 11822 && v24 == 0xE200000000000000;
        if (v28 || (sub_248124B38() & 1) != 0)
        {
          break;
        }

        ++v22;
        v21 += 16;
        if (v20 == v22)
        {
          goto LABEL_15;
        }
      }

      v36 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      if (v36 != v20)
      {
        while (1)
        {
          v40 = *(v3 + 2);
          if (v36 >= v40)
          {
            break;
          }

          v41 = *&v3[v21 + 48];
          v42 = *&v3[v21 + 56];
          if (v41 != 46 || v42 != 0xE100000000000000)
          {
            v44 = *&v3[v21 + 48];
            v45 = *&v3[v21 + 56];
            if ((sub_248124B38() & 1) == 0)
            {
              v46 = v41 == 11822 && v42 == 0xE200000000000000;
              if (!v46 && (sub_248124B38() & 1) == 0)
              {
                if (v36 != v22)
                {
                  if (v22 >= v40)
                  {
                    goto LABEL_63;
                  }

                  v47 = &v3[16 * v22 + 32];
                  v49 = *v47;
                  v48 = *(v47 + 1);

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v3 = sub_2480F3008(v3);
                  }

                  v50 = &v3[16 * v22];
                  v51 = *(v50 + 5);
                  *(v50 + 4) = v41;
                  *(v50 + 5) = v42;

                  if (v36 >= *(v3 + 2))
                  {
                    goto LABEL_64;
                  }

                  v52 = &v3[v21];
                  v53 = *&v3[v21 + 56];
                  *(v52 + 6) = v49;
                  *(v52 + 7) = v48;
                }

                ++v22;
              }
            }
          }

          ++v36;
          v21 += 16;
          if (v36 == *(v3 + 2))
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
LABEL_15:
      v22 = v20;
    }

LABEL_21:
    v37 = *(v3 + 2);
    if (v22 <= v37)
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        if (!__OFADD__(v37, v22 - v37))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = v3;
          if (!isUniquelyReferenced_nonNull_native || v22 > *(v3 + 3) >> 1)
          {
            if (v37 <= v22)
            {
              v39 = v22;
            }

            else
            {
              v39 = v37;
            }

            v3 = sub_2480F4E90(isUniquelyReferenced_nonNull_native, v39, 1, v3);
            v69 = v3;
          }

          sub_2480F3138(v22, v37, 0);
          goto LABEL_57;
        }

        goto LABEL_61;
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v62 = v0;
  v63 = v12;
  v29 = v64;
  v30 = v68;
  v31 = sub_2481241E8();

  swift_willThrow();
  v68 = v31;
  MEMORY[0x24C1C7A20](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
  if (!swift_dynamicCast())
  {
LABEL_56:

LABEL_57:
    v60 = *MEMORY[0x277D85DE8];
    return v3;
  }

  v66 = v31;
  (*(v65 + 32))(v63, v14, v8);
  v32 = sub_2481240A8();
  if (v32)
  {
    v67 = v32;
    v33 = v62;
    v34 = swift_dynamicCast();
    v35 = v29;
    (*(v29 + 56))(v7, v34 ^ 1u, 1, v33);
  }

  else
  {
    v35 = v29;
    v33 = v62;
    (*(v29 + 56))(v7, 1, 1, v62);
  }

  v54 = (*(v35 + 48))(v7, 1, v33);
  sub_24810BF44(v7);
  v55 = v65;
  if (v54)
  {
    (*(v65 + 8))(v63, v8);
    goto LABEL_56;
  }

  v56 = v63;
  result = sub_2481240A8();
  if (result)
  {
    v58 = result;

    v67 = v58;
    v59 = v62;
    swift_dynamicCast();
    sub_2481240C8();
    swift_willThrow();
    (*(v55 + 8))(v56, v8);
    (*(v35 + 8))(v3, v59);
    goto LABEL_56;
  }

  __break(1u);
  return result;
}

uint64_t sub_24810B8B4()
{
  v1 = sub_2481240D8();
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v1);
  v32 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F88, &qword_248126C08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v31 - v6;
  v8 = sub_2481240B8();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v31 - v13;
  v15 = sub_248124208();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2481243E8();
  sub_2481241F8();

  v20 = sub_248124218();
  v36 = v21;
  if (!v0)
  {
    (*(v16 + 8))(v19, v15);
    return v20;
  }

  v38 = v0;
  MEMORY[0x24C1C7A20](v0);
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
  if (!swift_dynamicCast())
  {
    (*(v16 + 8))(v19, v15);
LABEL_13:

    return v20;
  }

  v31[0] = v20;
  (*(v35 + 32))(v12, v14, v8);
  v22 = sub_2481240A8();
  if (v22)
  {
    v37 = v22;
    v23 = v34;
    v24 = swift_dynamicCast();
    v25 = v33;
    (*(v33 + 56))(v7, v24 ^ 1u, 1, v23);
  }

  else
  {
    v25 = v33;
    v23 = v34;
    (*(v33 + 56))(v7, 1, 1, v34);
  }

  v26 = (*(v25 + 48))(v7, 1, v23);
  sub_24810BF44(v7);
  if (v26)
  {
    (*(v35 + 8))(v12, v8);
    (*(v16 + 8))(v19, v15);
LABEL_12:
    v20 = v31[0];
    goto LABEL_13;
  }

  result = sub_2481240A8();
  if (result)
  {
    v28 = result;

    v37 = v28;
    v29 = v32;
    v30 = v34;
    swift_dynamicCast();
    sub_2481240C8();
    swift_willThrow();
    (*(v35 + 8))(v12, v8);
    (*(v16 + 8))(v19, v15);
    (*(v33 + 8))(v29, v30);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_24810BD34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F78, &qword_248126BF8);
    v3 = sub_248124818();
    v4 = a1 + 32;

    while (1)
    {
      sub_24810BE8C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2480F1E00(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24810BEFC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24810BE44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24810BE8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F80, &qword_248126C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_24810BEFC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24810BF0C(char *a1)
{
  v2 = *(v1 + 16);
  result = renamex_np(*(v1 + 24), a1, 2u);
  *v2 = result;
  return result;
}

uint64_t sub_24810BF44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F88, &qword_248126C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24810BFAC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2481244B8();
  v5 = notify_post((v4 + 32));

  v6 = sub_2481242D8();
  if (v5)
  {
    v7 = sub_248124628();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_24810C31C(a1, a2, &v14);
      *(v8 + 12) = 1024;
      *(v8 + 14) = v5;
      _os_log_impl(&dword_2480DF000, v6, v7, "notify_post(%{public}s) Failed: %u", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1C7B90](v9, -1, -1);
      MEMORY[0x24C1C7B90](v8, -1, -1);
    }

    if ((v5 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      sub_24810C2C8();
      swift_allocError();
      *v10 = v5;
      swift_willThrow();
    }
  }

  else
  {
    v11 = sub_248124618();

    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_24810C31C(a1, a2, &v14);
      _os_log_impl(&dword_2480DF000, v6, v11, "Posted notification %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1C7B90](v13, -1, -1);
      MEMORY[0x24C1C7B90](v12, -1, -1);
    }
  }
}

uint64_t sub_24810C1D8()
{
  v1 = OBJC_IVAR____TtC23DarwinDirectoryInternal20NotificationProvider_logger;
  v2 = sub_2481242F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for NotificationProvider()
{
  result = qword_27EE87F90;
  if (!qword_27EE87F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24810C2C8()
{
  result = qword_27EE87FA0;
  if (!qword_27EE87FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87FA0);
  }

  return result;
}

uint64_t sub_24810C31C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24810C3E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24810C8C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24810C3E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24810C4F4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_248124758();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24810C4F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_24810C540(a1, a2);
  sub_24810C670(&unk_285A48D90);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24810C540(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24810C75C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_248124758();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_248124508();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24810C75C(v10, 0);
        result = sub_2481246C8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24810C670(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_24810C7D0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24810C75C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87FA8, qword_248126C48);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24810C7D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87FA8, qword_248126C48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_24810C8C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24810C920(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x724764657473656ELL;
  v5 = 0xEC0000007370756FLL;
  if (a1 != 5)
  {
    v4 = 0x73657361696C61;
    v5 = 0xE700000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1145656661;
  if (a1 != 3)
  {
    v7 = 0x656D614E6C6C7566;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE200000000000000;
  v9 = 17481;
  if (a1 != 1)
  {
    v9 = 1701667182;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E6F6973726576;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE200000000000000;
        if (v10 != 17481)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        if (v10 != 1701667182)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E6F6973726576)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEC0000007370756FLL;
      if (v10 != 0x724764657473656ELL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x73657361696C61)
      {
LABEL_39:
        v13 = sub_248124B38();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE400000000000000;
    if (v10 != 1145656661)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x656D614E6C6C7566)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_24810CB28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00734449555565;
  v3 = 0xD000000000000013;
  v4 = a1;
  if (a1 > 1u)
  {
    v5 = 0xD000000000000022;
    if (v4 == 2)
    {
      v5 = 0xD000000000000024;
      v6 = 0x8000000248128790;
    }

    else
    {
      v6 = 0x80000002481287C0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x7A696D796E6F6E61;
    }

    if (v4)
    {
      v6 = 0x8000000248128770;
    }

    else
    {
      v6 = 0xEE00734449555565;
    }
  }

  v7 = 0xD000000000000024;
  v8 = 0x80000002481287C0;
  if (a2 == 2)
  {
    v8 = 0x8000000248128790;
  }

  else
  {
    v7 = 0xD000000000000022;
  }

  if (a2)
  {
    v2 = 0x8000000248128770;
  }

  else
  {
    v3 = 0x7A696D796E6F6E61;
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
    v11 = sub_248124B38();
  }

  return v11 & 1;
}

uint64_t sub_24810CC5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF44495555746F6FLL;
  if (a1 <= 3u)
  {
    v3 = 0x8000000248128660;
    v9 = 0xD000000000000010;
    if (a1 == 2)
    {
      v9 = 0x4279654B73726464;
      v3 = 0xEF44495555746F6FLL;
    }

    v6 = 0x8000000248128610;
    v10 = 0xD000000000000015;
    if (a1)
    {
      v10 = 0xD000000000000016;
      v6 = 0x8000000248128630;
    }

    v7 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v8 = v10;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0x80000002481286C0;
    v4 = 0xD000000000000011;
    v5 = 0x80000002481286E0;
    if (a1 != 7)
    {
      v5 = 0x8000000248128700;
    }

    if (a1 != 6)
    {
      v4 = 0xD000000000000013;
      v3 = v5;
    }

    v6 = 0x8000000248128680;
    if (a1 != 4)
    {
      v6 = 0x80000002481286A0;
    }

    v7 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = v4;
    }
  }

  if (v7)
  {
    v11 = v6;
  }

  else
  {
    v11 = v3;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        if (v8 != 0x4279654B73726464)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v2 = 0x8000000248128660;
        if (v8 != 0xD000000000000010)
        {
          goto LABEL_48;
        }
      }
    }

    else if (a2)
    {
      v2 = 0x8000000248128630;
      if (v8 != 0xD000000000000016)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v2 = 0x8000000248128610;
      if (v8 != 0xD000000000000015)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = "ddrsKeyUserNameMap";
    }

    else
    {
      v13 = "ddrsKeyUserUUIDMap";
    }

    v2 = (v13 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000012)
    {
      goto LABEL_48;
    }
  }

  else if (a2 == 6)
  {
    v2 = 0x80000002481286C0;
    if (v8 != 0xD000000000000011)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v12 = "ddrsKeyGroupNameMap";
    }

    else
    {
      v12 = "ddrsKeyGroupUUIDMap";
    }

    v2 = (v12 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000013)
    {
      goto LABEL_48;
    }
  }

  if (v11 != v2)
  {
LABEL_48:
    v14 = sub_248124B38();
    goto LABEL_49;
  }

  v14 = 1;
LABEL_49:

  return v14 & 1;
}

uint64_t sub_24810CEF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1701667182;
    }

    else
    {
      v3 = 17481;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1145656661;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x614E7265626D656DLL;
    }

    else
    {
      v3 = 0x6C626174754D7369;
    }

    if (v2 == 3)
    {
      v4 = 0xEB0000000073656DLL;
    }

    else
    {
      v4 = 0xE900000000000065;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 1701667182;
    }

    else
    {
      v6 = 17481;
    }

    if (a2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1145656661)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEB0000000073656DLL;
    if (v3 != 0x614E7265626D656DLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    if (v3 != 0x6C626174754D7369)
    {
LABEL_34:
      v7 = sub_248124B38();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_24810D07C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 17481;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C656873;
  if (a1 != 6)
  {
    v6 = 0x6C626174754D7369;
    v5 = 0xE900000000000065;
  }

  v7 = 0x65726944656D6F68;
  v8 = 0xED000079726F7463;
  if (a1 != 4)
  {
    v7 = 0x477972616D697270;
    v8 = 0xEE00444970756F72;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1145656661;
  if (a1 != 2)
  {
    v10 = 0x656D614E6C6C7566;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v4 = 1701667182;
    v3 = 0xE400000000000000;
  }

  if (a1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x6C6C656873)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v13 = 0xE900000000000065;
        if (v11 != 0x6C626174754D7369)
        {
LABEL_43:
          v14 = sub_248124B38();
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xED000079726F7463;
      if (v11 != 0x65726944656D6F68)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = 0xEE00444970756F72;
      if (v11 != 0x477972616D697270)
      {
        goto LABEL_43;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1145656661)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x656D614E6C6C7566)
      {
        goto LABEL_43;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE400000000000000;
    if (v11 != 1701667182)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v11 != 17481)
    {
      goto LABEL_43;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_43;
  }

  v14 = 1;
LABEL_44:

  return v14 & 1;
}

uint64_t sub_24810D2FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a3;
  v18 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87FC8, &qword_248126CE8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24810DEC8();
  sub_248124DA8();
  LOBYTE(v20) = 0;
  sub_2481248D8();
  if (!v5)
  {
    v14 = v18;
    v20 = v17;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87ED8, &qword_248126900);
    sub_24810DF1C(&qword_27EE87F00, &qword_27EE87AE8);
    sub_2481248F8();
    v20 = a4;
    v19 = 2;
    sub_2481248F8();
    v20 = v14;
    v19 = 3;
    sub_2481248F8();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_24810D550()
{
  v1 = *v0;
  sub_248124D58();
  sub_2481244D8();

  return sub_248124D88();
}

uint64_t sub_24810D62C()
{
  *v0;
  *v0;
  *v0;
  sub_2481244D8();
}

uint64_t sub_24810D6F4()
{
  v1 = *v0;
  sub_248124D58();
  sub_2481244D8();

  return sub_248124D88();
}

uint64_t sub_24810D7CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24810DBA8();
  *a2 = result;
  return result;
}

void sub_24810D7FC(unint64_t *a1@<X8>)
{
  v2 = 0xEE00734449555565;
  v3 = 0x7A696D796E6F6E61;
  v4 = 0x8000000248128790;
  v5 = 0xD000000000000022;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000024;
  }

  else
  {
    v4 = 0x80000002481287C0;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x8000000248128770;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_24810D894()
{
  v1 = 0x7A696D796E6F6E61;
  v2 = 0xD000000000000022;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000024;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_24810D928@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24810DBA8();
  *a1 = result;
  return result;
}

uint64_t sub_24810D95C(uint64_t a1)
{
  v2 = sub_24810DEC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24810D998(uint64_t a1)
{
  v2 = sub_24810DEC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24810D9D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24810DBF4(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_24810DA30()
{
  v2 = *v0;
  v3 = *(v0 + 3);
  v4 = sub_248124198();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_248124188();
  v10 = *(v0 + 8);
  sub_24810DB2C();
  v7 = sub_248124178();
  if (v1)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v8 = v7;

    return v8;
  }

  return result;
}

unint64_t sub_24810DB04(uint64_t a1)
{
  result = sub_24810DB2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24810DB2C()
{
  result = qword_27EE87FB0;
  if (!qword_27EE87FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87FB0);
  }

  return result;
}

unint64_t sub_24810DB80(uint64_t a1)
{
  result = sub_2480E33A4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24810DBA8()
{
  v0 = sub_248124828();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24810DBF4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87FB8, &unk_248126CD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24810DEC8();
  sub_248124D98();
  LOBYTE(v12) = 0;
  v8 = sub_248124858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87ED8, &qword_248126900);
  v11 = 1;
  sub_24810DF1C(&qword_27EE87EE0, &qword_27EE87B10);
  sub_248124878();
  v11 = 2;
  sub_248124878();
  v11 = 3;
  v10 = 0;
  sub_248124878();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8 & 1;
}

unint64_t sub_24810DEC8()
{
  result = qword_27EE87FC0;
  if (!qword_27EE87FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87FC0);
  }

  return result;
}

uint64_t sub_24810DF1C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87ED8, &qword_248126900);
    sub_24810DFA4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24810DFA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2481242C8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Configuration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Configuration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24810E144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24810E18C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_24810E1E0()
{
  result = qword_27EE87FD0;
  if (!qword_27EE87FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87FD0);
  }

  return result;
}

unint64_t sub_24810E238()
{
  result = qword_27EE87FD8;
  if (!qword_27EE87FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87FD8);
  }

  return result;
}

unint64_t sub_24810E290()
{
  result = qword_27EE87FE0;
  if (!qword_27EE87FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87FE0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24810E2F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24810E340(uint64_t result, int a2, int a3)
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

uint64_t sub_24810E394()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_24810E3C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_24810E3D8()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_24810E3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_248124938();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_24810E440(uint64_t a1)
{
  v2 = sub_24810E568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24810E47C(uint64_t a1)
{
  v2 = sub_24810E568();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24810E4BC()
{
  result = qword_27EE88050;
  if (!qword_27EE88050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE88050);
  }

  return result;
}

unint64_t sub_24810E514()
{
  result = qword_27EE88058;
  if (!qword_27EE88058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE88058);
  }

  return result;
}

unint64_t sub_24810E568()
{
  result = qword_27EE88060;
  if (!qword_27EE88060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE88060);
  }

  return result;
}

uint64_t sub_24810E5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _XPCEncoder();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  v12[2] = MEMORY[0x277D84F90];
  v12[3] = sub_248111B20(v13);
  v12[4] = 0;
  v14 = *(v7 + 16);
  v14(v10, a1, a2);
  v24 = v11;
  v25 = sub_248112250(&qword_27EE880D0, type metadata accessor for _XPCEncoder);
  v22 = v12;

  sub_248124428();
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_0(&v22);
    (*(v7 + 8))(v10, a2);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v22);
    v4 = v12[4];
    v15 = *(v7 + 8);
    swift_unknownObjectRetain();
    v15(v10, a2);
    if (!v4)
    {
      v4 = sub_248124748();
      swift_allocError();
      v18 = v17;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F28, &unk_248126F70) + 48);
      v18[3] = a2;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      v14(boxed_opaque_existential_1, a1, a2);
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_2481246E8();

      v22 = 0x6576656C2D706F54;
      v23 = 0xEA0000000000206CLL;
      v20 = sub_248124DF8();
      MEMORY[0x24C1C6C90](v20);

      MEMORY[0x24C1C6C90](0xD00000000000001BLL, 0x8000000248129320);
      sub_248124718();
      (*(*(v4 - 8) + 104))(v18, *MEMORY[0x277D841A8], v4);
      swift_willThrow();
    }
  }

  return v4;
}

uint64_t sub_24810E8FC()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(v0 + 32);
  v3 = swift_unknownObjectRetain();
  v4 = MEMORY[0x24C1C7CF0](v3);
  v5 = v1;
  if (v4 != sub_248124388())
  {
    __break(1u);
LABEL_4:
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = *(v0 + 32);
    *(v0 + 32) = v5;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 16);
  swift_unknownObjectRetain();

  sub_24810EA64(v0, v7, v5);
  type metadata accessor for _XPCKeyedEncodingContainer();

  swift_unknownObjectRetain();

  swift_getWitnessTable();
  sub_248124918();

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_24810EA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x24C1C7CF0](a3);
  if (v4 == sub_248124388())
  {
    return a1;
  }

  result = sub_2481247D8();
  __break(1u);
  return result;
}

uint64_t sub_24810EB0C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = *(v1 + 32);
    v5 = swift_unknownObjectRetain();
    v6 = MEMORY[0x24C1C7CF0](v5);
    v7 = v3;
    if (v6 == sub_248124338())
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = xpc_array_create(0, 0);
  v8 = *(v1 + 32);
  *(v1 + 32) = v7;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
LABEL_5:
  v9 = *(v1 + 16);
  swift_unknownObjectRetain();

  v10 = MEMORY[0x24C1C7CF0](v7);
  if (v10 == sub_248124338())
  {
    a1[3] = &type metadata for _XPCUnkeyedEncodingContainer;
    a1[4] = sub_248112020();

    result = swift_unknownObjectRelease();
    *a1 = v1;
    a1[1] = v7;
    a1[2] = v9;
  }

  else
  {
    result = sub_2481247D8();
    __break(1u);
  }

  return result;
}

void sub_24810EC94(void *a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 32))
  {
    __break(1u);
  }

  else
  {
    a1[3] = type metadata accessor for _XPCEncoder();
    a1[4] = sub_248112250(&qword_27EE880D8, type metadata accessor for _XPCEncoder);
    *a1 = v3;
  }
}

uint64_t sub_24810ED24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[4] = a3;
  v11[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v8 = sub_248111D50(v11);
  result = __swift_destroy_boxed_opaque_existential_0(v11);
  if (!v4)
  {
    v10 = *(v3 + 32);
    *(v3 + 32) = v8;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24810EDD4()
{
  v1 = *v0;
  v2 = xpc_null_create();
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  return swift_unknownObjectRelease();
}

uint64_t sub_24810EE10(char a1)
{
  v2 = *v1;
  v3 = xpc_BOOL_create(a1 & 1);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_24810EE50()
{
  v1 = *v0;
  v2 = sub_2481244B8();
  v3 = xpc_string_create((v2 + 32));

  v4 = *(v1 + 32);
  *(v1 + 32) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_24810EEA8(double a1)
{
  v2 = *v1;
  v3 = xpc_double_create(a1);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_24810EEE4(float a1)
{
  v2 = *v1;
  v3 = xpc_double_create(a1);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_24810EF50(char a1)
{
  v2 = *v1;
  v3 = xpc_int64_create(a1);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_24810EF90(__int16 a1)
{
  v2 = *v1;
  v3 = xpc_int64_create(a1);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_24810EFD0(int a1)
{
  v2 = *v1;
  v3 = xpc_int64_create(a1);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_24810F054(unsigned __int8 a1)
{
  v2 = *v1;
  v3 = xpc_uint64_create(a1);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_24810F094(unsigned __int16 a1)
{
  v2 = *v1;
  v3 = xpc_uint64_create(a1);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_24810F0D4(uint64_t value)
{
  v2 = *v1;
  v3 = xpc_uint64_create(value);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_24810F114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *v4;
  v6 = a4();
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;
  return swift_unknownObjectRelease();
}

uint64_t sub_24810F190(uint64_t a1, ValueMetadata *a2, unint64_t a3)
{
  v4 = v3;
  xarray = *(v3 + 8);
  count = xpc_array_get_count(xarray);
  *&v20 = 0x207865646E49;
  *(&v20 + 1) = 0xE600000000000000;
  v23 = count;
  v8 = sub_248124938();
  MEMORY[0x24C1C6C90](v8);

  v9 = *(v3 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_24811CFC0(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_24811CFC0((v10 > 1), v11 + 1, 1, v9);
  }

  v21 = &type metadata for XPCCodingKey;
  v22 = sub_24810E568();
  v12 = swift_allocObject();
  *&v20 = v12;
  *(v12 + 16) = 0x207865646E49;
  *(v12 + 24) = 0xE600000000000000;
  *(v12 + 32) = count;
  *(v12 + 40) = 0;
  v9[2] = v11 + 1;
  sub_248112238(&v20, &v9[5 * v11 + 4]);
  *(v4 + 16) = v9;
  v21 = a2;
  v22 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  (*(a2[-1].Description + 2))(boxed_opaque_existential_1, a1, a2);
  v14 = sub_248111D50(&v20);
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_0(&v20);
  }

  else
  {
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0(&v20);
    xpc_array_append_value(xarray, v15);
    swift_unknownObjectRelease();
  }

  return sub_24810F7DC(v4);
}

uint64_t sub_24810F378()
{
  v1 = v0;
  v2 = v0[1];
  count = xpc_array_get_count(v2);
  *&v14 = 0x207865646E49;
  *(&v14 + 1) = 0xE600000000000000;
  v18 = count;
  v4 = sub_248124938();
  MEMORY[0x24C1C6C90](v4);

  v5 = v0[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_24811CFC0(0, v5[2] + 1, 1, v5);
  }

  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_24811CFC0((v6 > 1), v7 + 1, 1, v5);
  }

  v16 = &type metadata for XPCCodingKey;
  v17 = sub_24810E568();
  v8 = swift_allocObject();
  *&v14 = v8;
  *(v8 + 16) = 0x207865646E49;
  *(v8 + 24) = 0xE600000000000000;
  *(v8 + 32) = count;
  *(v8 + 40) = 0;
  v5[2] = v7 + 1;
  sub_248112238(&v14, &v5[5 * v7 + 4]);
  v1[2] = v5;
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_array_append_value(v2, v9);
  v10 = *v1;

  swift_unknownObjectRetain();
  *&v14 = sub_24810EA64(v10, v5, v9);
  *(&v14 + 1) = v11;
  v15 = v12;
  type metadata accessor for _XPCKeyedEncodingContainer();

  swift_unknownObjectRetain();

  swift_getWitnessTable();
  sub_248124918();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return sub_24810F7DC(v1);
}

uint64_t sub_24810F5C0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  count = xpc_array_get_count(v4);
  *&v16 = 0x207865646E49;
  *(&v16 + 1) = 0xE600000000000000;
  v19 = count;
  v6 = sub_248124938();
  MEMORY[0x24C1C6C90](v6);

  v7 = v1[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_24811CFC0((v8 > 1), v9 + 1, 1, v7);
  }

  v17 = &type metadata for XPCCodingKey;
  v18 = sub_24810E568();
  v10 = swift_allocObject();
  *&v16 = v10;
  *(v10 + 16) = 0x207865646E49;
  *(v10 + 24) = 0xE600000000000000;
  *(v10 + 32) = count;
  *(v10 + 40) = 0;
  v7[2] = v9 + 1;
  sub_248112238(&v16, &v7[5 * v9 + 4]);
  v2[2] = v7;
  v11 = xpc_array_create(0, 0);
  xpc_array_append_value(v4, v11);
  v12 = *v2;

  v13 = swift_unknownObjectRetain();
  v14 = MEMORY[0x24C1C7CF0](v13);
  if (v14 == sub_248124338())
  {
    a1[3] = &type metadata for _XPCUnkeyedEncodingContainer;
    a1[4] = sub_248112020();
    swift_unknownObjectRelease();
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v7;
    return sub_24810F7DC(v2);
  }

  else
  {
    result = sub_2481247D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24810F7DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_24811D210(v2);
    v2 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v1 = a1;
  v3 = *(a1 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v2[2];
  if (v5)
  {
LABEL_4:
    v6 = v5 - 1;
    result = __swift_destroy_boxed_opaque_existential_0(&v2[5 * v5 - 1]);
    v2[2] = v6;
    *(v1 + 16) = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24810F85C@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  xpc_array_get_count(v3);
  v5 = type metadata accessor for _XPCSuperUnkeyedEncoder();
  v6 = swift_allocObject();
  v7 = MEMORY[0x24C1C7CF0](v3);
  result = sub_248124338();
  if (v7 == result)
  {
    v9 = MEMORY[0x277D84F90];
    v6[2] = MEMORY[0x277D84F90];
    v10 = sub_248111B20(v9);

    v6[3] = v10;
    v6[4] = 0;
    a1[3] = v5;
    result = sub_248112250(&unk_27EE88180, type metadata accessor for _XPCSuperUnkeyedEncoder);
    a1[4] = result;
    *a1 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24810F93C()
{
  v1 = *(v0 + 8);
  v2 = xpc_null_create();
  xpc_array_append_value(v1, v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810F988(char a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_BOOL_create(a1 & 1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810F9D8()
{
  v1 = *(v0 + 8);
  v2 = sub_2481244B8();
  v3 = xpc_string_create((v2 + 32));

  xpc_array_append_value(v1, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FA38(double a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_double_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FA84(float a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_double_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FB00(char a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_int64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FB50(__int16 a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_int64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FBA0(int a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_int64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FC34(unsigned __int8 a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_uint64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FC84(unsigned __int16 a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_uint64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FCD4(uint64_t value)
{
  v2 = *(v1 + 8);
  v3 = xpc_uint64_create(value);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_24810FD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(v4 + 8);
  v6 = a4();
  xpc_array_append_value(v5, v6);
  return swift_unknownObjectRelease();
}

uint64_t sub_2481100D0(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_248124DB8();
  v7 = sub_2481244B8();

  xpc_dictionary_set_value(a4, (v7 + 32), a1);
}

uint64_t sub_24811015C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = xpc_null_create();
  v12 = *(a2 + 16);
  v10 = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, a1);
  sub_2481100D0(v6, v11, v8, v5);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_248110214(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_BOOL_create(a1 & 1);
  v13 = *(a3 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_2481102D0(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_int64_create(a1);
  v13 = *(a3 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_24811038C(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_int64_create(a1);
  v13 = *(a3 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_248110448(int a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_int64_create(a1);
  v13 = *(a3 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_248110504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *(v4 + 8);
  v8 = a4();
  v14 = *(a3 + 16);
  v12 = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v8, v13, v10, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_2481105C0(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_uint64_create(a1);
  v13 = *(a3 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_24811067C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_uint64_create(a1);
  v13 = *(a3 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_248110738(uint64_t value, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_uint64_create(value);
  v13 = *(a3 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a2);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_2481107F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 8);
  v8 = sub_2481244B8();
  v9 = xpc_string_create((v8 + 32));

  v15 = *(a4 + 16);
  v13 = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, a3);
  sub_2481100D0(v9, v14, v11, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t sub_2481108C0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_double_create(a3);
  v13 = *(a2 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a1);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_248110978(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *(v3 + 8);
  v7 = xpc_double_create(a3);
  v13 = *(a2 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a1);
  sub_2481100D0(v7, v12, v9, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_248110A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a1;
  v42 = a5;
  v38 = a4;
  v34 = a3;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = *(v7 + 16);
  v33 = v15;
  v14(&v32 - v12);
  v37 = v5;
  v16 = (v5 + 16);
  v17 = *(v5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_24811CFC0(0, v17[2] + 1, 1, v17);
    *v16 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_24811CFC0((v19 > 1), v20 + 1, 1, v17);
    *v16 = v17;
  }

  v32 = v14;
  (v14)(v11, v13, v6);
  v21 = *(v34 + 24);
  sub_24811D224(v20, v11, v16, v6, v21);
  (*(v7 + 8))(v13, v6);
  v23 = v37;
  v22 = v38;
  *(v37 + 16) = v17;
  v24 = *(v23 + 8);
  v40 = v22;
  v41 = v42;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v35, v22);
  v26 = v36;
  v27 = sub_248111D50(v39);
  if (!v26)
  {
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0(v39);
    v40 = v6;
    v41 = v21;
    v29 = __swift_allocate_boxed_opaque_existential_1(v39);
    v32(v29, v33, v6);
    sub_2481100D0(v28, v39, v30, v24);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0(v39);
  return sub_24810F7DC(v23);
}

uint64_t sub_248110CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v44 = a4;
  v45 = a5;
  v42 = a6;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = *v7;
  v19 = v7[1];
  v43 = v7;
  v22 = v7[2];
  v20 = v7 + 2;
  v21 = v22;
  v23 = *(a3 + 24);
  v46[3] = v10;
  v46[4] = v23;
  v39 = v18;
  v40 = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  v25 = *(v11 + 16);
  v25(boxed_opaque_existential_1, a2, v10);
  v41 = v17;
  sub_2481100D0(v17, v46, v26, v19);
  __swift_destroy_boxed_opaque_existential_0(v46);
  v25(v16, a2, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_24811CFC0(0, v21[2] + 1, 1, v21);
    *v20 = v21;
  }

  v29 = v21[2];
  v28 = v21[3];
  if (v29 >= v28 >> 1)
  {
    v21 = sub_24811CFC0((v28 > 1), v29 + 1, 1, v21);
    *v20 = v21;
  }

  v30 = v38;
  v25(v38, v16, v10);
  sub_24811D224(v29, v30, v20, v10, v40);
  (*(v11 + 8))(v16, v10);
  v31 = v43;
  v43[2] = v21;
  v32 = v39;

  v33 = v41;
  swift_unknownObjectRetain();
  v46[0] = sub_24810EA64(v32, v21, v33);
  v46[1] = v34;
  v46[2] = v35;
  type metadata accessor for _XPCKeyedEncodingContainer();
  swift_getWitnessTable();
  sub_248124918();
  sub_24810F7DC(v31);
  return swift_unknownObjectRelease();
}

uint64_t sub_248110F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v36 = a3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v33 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = xpc_array_create(0, 0);
  v15 = *v3;
  v16 = v3[1];
  v37 = v4;
  v19 = *(v4 + 16);
  v18 = (v4 + 16);
  v17 = v19;
  v20 = *(a2 + 24);
  v38[3] = v7;
  v38[4] = v20;
  v34 = v20;
  v35 = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  v22 = *(v8 + 16);
  v22(boxed_opaque_existential_1, a1, v7);
  sub_2481100D0(v14, v38, v23, v16);
  __swift_destroy_boxed_opaque_existential_0(v38);
  v22(v13, a1, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_24811CFC0(0, v17[2] + 1, 1, v17);
    *v18 = v17;
  }

  v26 = v17[2];
  v25 = v17[3];
  if (v26 >= v25 >> 1)
  {
    v17 = sub_24811CFC0((v25 > 1), v26 + 1, 1, v17);
    *v18 = v17;
  }

  v27 = v33;
  v22(v33, v13, v7);
  sub_24811D224(v26, v27, v18, v7, v34);
  (*(v8 + 8))(v13, v7);
  *v18 = v17;
  v28 = v35;

  v29 = swift_unknownObjectRetain();
  v30 = MEMORY[0x24C1C7CF0](v29);
  if (v30 == sub_248124338())
  {
    v31 = v36;
    v36[3] = &type metadata for _XPCUnkeyedEncodingContainer;
    v31[4] = sub_248112020();
    *v31 = v28;
    v31[1] = v14;
    v31[2] = v17;
    sub_24810F7DC(v37);
    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_2481247D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24811126C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = type metadata accessor for _XPCSuperKeyedEncoder();
  v5 = swift_allocObject();
  v6 = MEMORY[0x24C1C7CF0](v3);
  result = sub_248124388();
  if (v6 == result)
  {
    v8 = MEMORY[0x277D84F90];
    v5[2] = MEMORY[0x277D84F90];
    v5[3] = sub_248111B20(v8);
    v5[4] = 0;
    a1[3] = v4;
    result = sub_248112250(&unk_27EE88190, type metadata accessor for _XPCSuperKeyedEncoder);
    a1[4] = result;
    *a1 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_248111320@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = type metadata accessor for _XPCSuperKeyedEncoder();
  v6 = swift_allocObject();

  v7 = swift_unknownObjectRetain();
  v8 = MEMORY[0x24C1C7CF0](v7);
  result = sub_248124388();
  if (v8 == result)
  {
    v10 = MEMORY[0x277D84F90];
    v6[2] = MEMORY[0x277D84F90];
    v11 = sub_248111B20(v10);
    swift_unknownObjectRelease();
    v6[3] = v11;
    v6[4] = 0;

    a1[3] = v5;
    result = sub_248112250(&unk_27EE88190, type metadata accessor for _XPCSuperKeyedEncoder);
    a1[4] = result;
    *a1 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2481118DC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_248111924(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2481247C8();
  v5 = sub_248124438();

  return sub_248111988(a1, v5);
}

unint64_t sub_248111988(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_2481247C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_248124468();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_248111B20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE880F0, &qword_248127110);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE880F8, &qword_248127118);
    v8 = sub_248124818();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24811208C(v10, v6);
      result = sub_248111924(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2481247C8();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_24810BEFC(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_248111D50(void *a1)
{
  v33[5] = *MEMORY[0x277D85DE8];
  v3 = sub_2481242C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &uuid - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (swift_getDynamicType() == v3)
  {
    sub_2480F1CC8(a1, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE880E0, &qword_248127108);
    swift_dynamicCast();
    uuid = sub_2481242B8();
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v12 = xpc_uuid_create(&uuid);
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v8 = type metadata accessor for _XPCEncoder();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D84F90];
    v9[2] = MEMORY[0x277D84F90];
    v9[3] = sub_248111B20(v10);
    v9[4] = 0;
    v11 = a1[4];
    v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v33[3] = v8;
    v33[4] = sub_248112250(&qword_27EE880D0, type metadata accessor for _XPCEncoder);
    v33[0] = v9;

    sub_248124428();
    if (v1)
    {

      __swift_destroy_boxed_opaque_existential_0(v33);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v33);
      v12 = v9[4];
      if (v12)
      {
        v21 = v9[4];
        swift_unknownObjectRetain();
      }

      else
      {
        v12 = xpc_null_create();
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t sub_248112020()
{
  result = qword_27EE880E8;
  if (!qword_27EE880E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE880E8);
  }

  return result;
}

uint64_t sub_24811208C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE880F0, &qword_248127110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2481120FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_248112160(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2481121A8(uint64_t result, int a2, int a3)
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

uint64_t sub_248112200()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_248112238(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_248112250(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_248112380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v8 = sub_248124648();
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  type metadata accessor for _XPCDecoder();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  v14 = sub_248111B20(MEMORY[0x277D84F90]);
  v12[3] = a2;
  v12[4] = v14;
  v12[2] = v13;
  v15 = a1;
  swift_unknownObjectRetain();
  sub_248112D8C(a3, v11);
  if (v4)
  {
  }

  v16 = v25;
  v17 = v26;
  v18 = *(a3 - 8);
  if ((*(v18 + 48))(v11, 1, a3) == 1)
  {
    (*(v16 + 8))(v11, v8);
    v19 = sub_248124728();
    swift_allocError();
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v21 = v15;
    sub_248124718();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84170], v19);
    swift_willThrow();
  }

  return (*(v18 + 32))(v17, v11, a3);
}

uint64_t sub_248112650()
{
  v1 = *(v0 + 24);
  v2 = MEMORY[0x24C1C7CF0](v1);
  if (v2 == sub_248124318())
  {
    v11 = sub_248124728();
    swift_allocError();
    v13 = v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v13 = sub_248124898();
    swift_beginAccess();
    v15 = *(v0 + 16);

    sub_248124718();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84170], v11);
    return swift_willThrow();
  }

  v3 = MEMORY[0x24C1C7CF0](v1);
  if (v3 != sub_248124388())
  {
    swift_beginAccess();
    v4 = *(v0 + 16);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881D0, &qword_248127620);
    v6 = sub_248124728();
    swift_allocError();
    v8 = v7;

    sub_2481246E8();

    v9 = sub_24811D2E0(v1);
    MEMORY[0x24C1C6C90](v9);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v8 = v5;
    sub_248124718();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
    return swift_willThrow();
  }

  swift_unknownObjectRetain();
  sub_248112960(v0, v1);
  type metadata accessor for _XPCKeyedDecodingContainer();
  swift_getWitnessTable();
  return sub_2481248A8();
}

uint64_t sub_248112960(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x24C1C7CF0](a2);
  if (v3 == sub_248124388())
  {
    swift_beginAccess();
    v4 = *(a1 + 16);

    return a1;
  }

  else
  {
    result = sub_2481247D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_248112A24@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = MEMORY[0x24C1C7CF0](v3);
  if (v4 == sub_248124318())
  {
    v13 = sub_248124728();
    swift_allocError();
    v15 = v14;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881C8, &qword_248127618);
    swift_beginAccess();
    v17 = *(v1 + 16);

    sub_248124718();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84170], v13);
    return swift_willThrow();
  }

  v5 = MEMORY[0x24C1C7CF0](v3);
  if (v5 != sub_248124338())
  {
    swift_beginAccess();
    v6 = *(v1 + 16);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881B8, &qword_248127610);
    v8 = sub_248124728();
    swift_allocError();
    v10 = v9;

    sub_2481246E8();

    v11 = sub_24811D2E0(v3);
    MEMORY[0x24C1C6C90](v11);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v10 = v7;
    sub_248124718();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D84160], v8);
    return swift_willThrow();
  }

  v19 = swift_unknownObjectRetain();
  v20 = MEMORY[0x24C1C7CF0](v19);
  if (v20 == sub_248124338())
  {
    swift_beginAccess();
    v21 = *(v1 + 16);
    a1[3] = &type metadata for _XPCUnkeyedDecodingContainer;
    a1[4] = sub_24811FA78();
    v22 = swift_allocObject();
    *a1 = v22;
    v22[2] = v1;
    v22[3] = v3;
    v22[4] = v21;
    v22[5] = 0;
  }

  else
  {
    result = sub_2481247D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_248112D8C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for _XPCDecoder();
  sub_24811FB84(qword_27EE881D8);

  result = sub_2481245B8();
  if (!v2)
  {
    return (*(*(a1 - 8) + 56))(a2, 0, 1, a1);
  }

  return result;
}

uint64_t sub_248112E6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34[0] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881B0, &qword_248126138);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v34 - v12;
  v14 = sub_2481242C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v34 - v21;
  if (v20 != a2)
  {
    swift_beginAccess();
    v23 = *(v5 + 16);
    type metadata accessor for _XPCDecoder();
    v24 = swift_allocObject();

    v25 = sub_248111B20(MEMORY[0x277D84F90]);
    v24[3] = a1;
    v24[4] = v25;
    v24[2] = v23;
    swift_unknownObjectRetain();
    sub_248112D8C(a3, a5);
  }

  v27 = v20;
  v28 = v34[5];
  result = sub_248113300(a1, v13);
  if (!v28)
  {
    if ((*(v15 + 48))(v13, 1, v27) == 1)
    {
      sub_24811FA10(v13);
      v29 = *(*(a3 - 8) + 56);
    }

    else
    {
      v30 = *(v15 + 32);
      v30(v22, v13, v27);
      v30(v19, v22, v27);
      v31 = swift_dynamicCast();
      v29 = *(*(a3 - 8) + 56);
      if (v31)
      {
        v32 = a5;
        v33 = 0;
        return v29(v32, v33, 1, a3);
      }
    }

    v32 = a5;
    v33 = 1;
    return v29(v32, v33, 1, a3);
  }

  return result;
}

const char *sub_248113134(void *a1)
{
  v3 = MEMORY[0x24C1C7CF0]();
  if (v3 == sub_248124318())
  {
    return 0;
  }

  v4 = MEMORY[0x24C1C7CF0](a1);
  if (v4 == sub_248124368())
  {
    result = xpc_string_get_string_ptr(a1);
    if (result)
    {
      return sub_2481244F8();
    }
  }

  else
  {
    swift_beginAccess();
    v5 = *(v1 + 16);
    v6 = sub_248124728();
    swift_allocError();
    v8 = v7;

    sub_2481246E8();

    v9 = sub_24811D2E0(a1);
    MEMORY[0x24C1C6C90](v9);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v8 = MEMORY[0x277D837D0];
    sub_248124718();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248113300@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = MEMORY[0x24C1C7CF0]();
  if (v5 == sub_248124318())
  {
    goto LABEL_4;
  }

  v6 = MEMORY[0x24C1C7CF0](a1);
  if (v6 != sub_248124328())
  {
    swift_beginAccess();
    v7 = *(v2 + 16);
    v8 = sub_2481242C8();
    v9 = sub_248124728();
    swift_allocError();
    v11 = v10;

    sub_2481246E8();

    v12 = sub_24811D2E0(a1);
    MEMORY[0x24C1C6C90](v12);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v11 = v8;
    sub_248124718();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
    return swift_willThrow();
  }

  bytes = xpc_uuid_get_bytes(a1);
  if (!bytes)
  {
LABEL_4:
    v15 = sub_2481242C8();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];
    sub_2481242A8();

    v18 = sub_2481242C8();
    return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
  }
}

uint64_t sub_2481135F8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for _XPCDecoder();
  a1[4] = sub_24811FB84(&qword_27EE881A8);
  *a1 = v3;
}

uint64_t sub_248113664()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v5 = MEMORY[0x277D839B0];
    swift_beginAccess();
    v7 = *(v0 + 16);

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248113780()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v5 = MEMORY[0x277D83B88];
    swift_beginAccess();
    v7 = *(v0 + 16);

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_24811389C()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v5 = MEMORY[0x277D84900];
    swift_beginAccess();
    v7 = *(v0 + 16);

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2481139B8()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v5 = MEMORY[0x277D84958];
    swift_beginAccess();
    v7 = *(v0 + 16);

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248113AD4()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v5 = MEMORY[0x277D849A8];
    swift_beginAccess();
    v7 = *(v0 + 16);

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248113BF0()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v5 = MEMORY[0x277D84A28];
    swift_beginAccess();
    v7 = *(v0 + 16);

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248113D0C()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v5 = MEMORY[0x277D83E88];
    swift_beginAccess();
    v7 = *(v0 + 16);

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248113E28()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v5 = MEMORY[0x277D84B78];
    swift_beginAccess();
    v7 = *(v0 + 16);

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248113F44()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v5 = MEMORY[0x277D84C58];
    swift_beginAccess();
    v7 = *(v0 + 16);

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248114060()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v5 = MEMORY[0x277D84CC0];
    swift_beginAccess();
    v7 = *(v0 + 16);

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_24811417C()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v5 = MEMORY[0x277D84D38];
    swift_beginAccess();
    v7 = *(v0 + 16);

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248114298()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v5 = MEMORY[0x277D83A90];
    swift_beginAccess();
    v7 = *(v0 + 16);

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2481143B4()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v5 = MEMORY[0x277D839F8];
    swift_beginAccess();
    v7 = *(v0 + 16);

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2481144D0()
{
  v1 = MEMORY[0x24C1C7CF0](*(v0 + 24));
  result = sub_248124318();
  if (v1 == result)
  {
    v3 = sub_248124728();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v5 = MEMORY[0x277D837D0];
    swift_beginAccess();
    v7 = *(v0 + 16);

    sub_248124718();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2481145EC(uint64_t a1)
{
  v3 = MEMORY[0x24C1C7CF0](*(v1 + 24));
  result = sub_248124318();
  if (v3 == result)
  {
    v5 = sub_248124728();
    swift_allocError();
    v7 = v6;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v7 = a1;
    swift_beginAccess();
    v9 = *(v1 + 16);

    sub_2481246E8();

    v10 = sub_248124DF8();
    MEMORY[0x24C1C6C90](v10);

    MEMORY[0x24C1C6C90](0xD00000000000001ELL, 0x8000000248129570);
    sub_248124718();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84170], v5);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_248114780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = sub_248124648();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  result = sub_2481145EC(a1);
  if (!v5)
  {
    sub_248112E6C(*(v4 + 24), a1, a2, a3, v13);
    v15 = *(a2 - 8);
    result = (*(v15 + 48))(v13, 1, a2);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v15 + 32))(a4, v13, a2);
    }
  }

  return result;
}

uint64_t sub_2481148CC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t sub_248114948()
{
  v2 = *v0;
  LOBYTE(result) = sub_248113664();
  if (v1)
  {
    return result & 1;
  }

  result = sub_24811D46C(*(v2 + 24));
  if (result != 2)
  {
    return result & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_248114990()
{
  v2 = *v0;
  result = sub_2481144D0();
  if (!v1)
  {
    result = sub_248113134(*(v2 + 24));
    if (!v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2481149CC()
{
  v2 = *v0;
  result = sub_2481143B4();
  if (!v1)
  {
    result = sub_24811F840(*(v2 + 24));
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_248114A10()
{
  v2 = *v0;
  result = sub_248114298();
  if (!v1)
  {
    result = sub_24811F660(*(v2 + 24));
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_248114C2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3();
  if (!v5)
  {
    result = a4(*(v7 + 24));
    if ((result & 0x100) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_248114CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3();
  if (!v5)
  {
    result = a4(*(v7 + 24));
    if ((result & 0x10000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_248114D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3();
  if (!v5)
  {
    result = a4(*(v7 + 24));
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_248114DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3();
  if (!v5)
  {
    result = a4(*(v7 + 24));
    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_248114E48()
{
  v1 = v0[1];
  v2 = v0[3];
  if (v2 >= xpc_array_get_count(v1))
  {
    v6 = sub_248124728();
    swift_allocError();
    v8 = v7;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE88268, &qword_248127A00);
    v10 = *v0;
    swift_beginAccess();
    v11 = *(v10 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;

    v13 = sub_248124938();
    MEMORY[0x24C1C6C90](v13);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v14 = swift_allocObject();
    *(inited + 32) = v14;
    *(v14 + 16) = 0x207865646E49;
    *(v14 + 24) = 0xE600000000000000;
    *(v14 + 32) = v2;
    *(v14 + 40) = 0;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84170], v6);
    swift_willThrow();
  }

  else
  {
    v3 = xpc_array_get_value(v1, v2);
    v4 = MEMORY[0x24C1C7CF0]();
    swift_unknownObjectRelease();
    if (v4 == sub_248124318())
    {
      v0[3] = v2 + 1;
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

__int128 *sub_2481150A0()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_248124728();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v19 = MEMORY[0x277D837D0];
    v21 = *v0;
    v22 = *v2 + 16;
    swift_beginAccess();
    v23 = *(v21 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v43[1] = 0xE600000000000000;
    v43[14] = v4;

    v25 = sub_248124938();
    MEMORY[0x24C1C6C90](v25);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v26 = swift_allocObject();
    *(inited + 32) = v26;
    *(v26 + 16) = 0x207865646E49;
    *(v26 + 24) = 0xE600000000000000;
    *(v26 + 32) = v4;
    *(v26 + 40) = 0;
    v43[0] = v23;
    v14 = v43;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v40 = 0x207865646E49;
    *(&v40 + 1) = 0xE600000000000000;
    v43[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v41 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v42 = v11;
    v12 = swift_allocObject();
    *&v40 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v40, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_248113134(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v28 = v16;
      v39 = v11;
      swift_unknownObjectRelease();
      if (v28)
      {
        v2[3] = v4 + 1;
        sub_248116794(v2);
        return v14;
      }

      v38 = sub_248124728();
      swift_allocError();
      v30 = v29;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v30 = MEMORY[0x277D837D0];
      v31 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_2481262D0;
      *&v40 = 0x207865646E49;
      *(&v40 + 1) = 0xE600000000000000;
      v43[0] = v4;

      v33 = sub_248124938();
      MEMORY[0x24C1C6C90](v33);

      v35 = *(&v40 + 1);
      v34 = v40;
      *(v32 + 56) = &type metadata for XPCCodingKey;
      *(v32 + 64) = v39;
      v36 = swift_allocObject();
      *(v32 + 32) = v36;
      *(v36 + 16) = __PAIR128__(v35, v34);
      *(v36 + 32) = v4;
      *(v36 + 40) = 0;
      *&v40 = v31;
      v14 = &v40;
      sub_24811D108(v32);
      sub_248124718();
      (*(*(v38 - 8) + 104))(v30, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_248116794(v2);
  }

  return v14;
}

uint64_t sub_2481155C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v57 = a3;
  v9 = sub_248124648();
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = v4[1];
  v14 = v4[3];
  if (v14 >= xpc_array_get_count(v13))
  {
    v27 = sub_248124728();
    swift_allocError();
    v29 = v28;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v29 = a1;
    v31 = *v4;
    swift_beginAccess();
    v32 = *(v31 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v62 = 0x207865646E49;
    v63 = 0xE600000000000000;
    v64 = v14;

    v34 = sub_248124938();
    MEMORY[0x24C1C6C90](v34);

    v35 = v62;
    v36 = v63;
    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v37 = swift_allocObject();
    *(inited + 32) = v37;
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    *(v37 + 32) = v14;
    *(v37 + 40) = 0;
    v62 = v32;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84170], v27);
    return swift_willThrow();
  }

  v50 = v9;
  v51 = a4;
  v15 = *v4;
  *&v59 = 0x207865646E49;
  *(&v59 + 1) = 0xE600000000000000;
  v62 = v14;
  v16 = sub_248124938();
  MEMORY[0x24C1C6C90](v16);

  v52 = *(&v59 + 1);
  v53 = v59;
  swift_beginAccess();
  v17 = *(v15 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v15 + 16) = v17;
  v56 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_24811CFC0(0, v17[2] + 1, 1, v17);
    *(v15 + 16) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  v54 = v5;
  if (v20 >= v19 >> 1)
  {
    v17 = sub_24811CFC0((v19 > 1), v20 + 1, 1, v17);
  }

  v60 = &type metadata for XPCCodingKey;
  v21 = sub_24810E568();
  v61 = v21;
  v22 = swift_allocObject();
  *&v59 = v22;
  v23 = v52;
  *(v22 + 16) = v53;
  *(v22 + 24) = v23;
  *(v22 + 32) = v14;
  *(v22 + 40) = 0;
  v17[2] = v20 + 1;
  sub_248112238(&v59, &v17[5 * v20 + 4]);
  *(v15 + 16) = v17;
  swift_endAccess();
  v24 = xpc_array_get_value(v13, v14);
  v25 = v56;
  v26 = v58;
  sub_248112E6C(v24, v56, a2, v57, v12);
  if (v26)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v39 = *(a2 - 8);
    if ((*(v39 + 48))(v12, 1, a2) != 1)
    {
      (*(v39 + 32))(v51, v12, a2);
      v49 = v54;
      v54[3] = v14 + 1;
      return sub_248116794(v49);
    }

    (*(v55 + 8))(v12, v50);
    v40 = sub_248124728();
    swift_allocError();
    v42 = v41;
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v42 = v25;
    v43 = *(v15 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_2481262D0;
    *&v59 = 0x207865646E49;
    *(&v59 + 1) = 0xE600000000000000;
    v62 = v14;

    v45 = sub_248124938();
    MEMORY[0x24C1C6C90](v45);

    v46 = v59;
    *(v44 + 56) = &type metadata for XPCCodingKey;
    *(v44 + 64) = v21;
    v47 = swift_allocObject();
    *(v44 + 32) = v47;
    *(v47 + 16) = v46;
    *(v47 + 32) = v14;
    *(v47 + 40) = 0;
    *&v59 = v43;
    sub_24811D108(v44);
    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    sub_2481246E8();

    *&v59 = 0x6465746365707845;
    *(&v59 + 1) = 0xE900000000000020;
    v48 = sub_248124DF8();
    MEMORY[0x24C1C6C90](v48);

    MEMORY[0x24C1C6C90](0xD000000000000018, 0x8000000248129D50);
    sub_248124718();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84170], v40);
    swift_willThrow();
  }

  v49 = v54;
  return sub_248116794(v49);
}

uint64_t sub_248115CBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v4 = *v2;
  v5 = v2[3];
  *&v36 = 0x207865646E49;
  *(&v36 + 1) = 0xE600000000000000;
  v40 = v5;
  v6 = sub_248124938();
  MEMORY[0x24C1C6C90](v6);

  swift_beginAccess();
  v7 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
    *(v4 + 16) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
  }

  v38 = &type metadata for XPCCodingKey;
  v39 = sub_24810E568();
  v11 = swift_allocObject();
  *&v36 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v5;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  sub_248112238(&v36, &v7[5 * v10 + 4]);
  *(v4 + 16) = v7;
  swift_endAccess();
  v12 = v3[1];
  if (v5 < xpc_array_get_count(v12))
  {
    v13 = xpc_array_get_value(v12, v5);
    v14 = MEMORY[0x24C1C7CF0]();
    if (v14 == sub_248124318())
    {
      v28 = sub_248124728();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v30 = sub_248124898();
      v32 = v3[2];

      sub_248124718();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84170], v28);
    }

    else
    {
      v15 = MEMORY[0x24C1C7CF0](v13);
      if (v15 == sub_248124388())
      {
        v3[3] = v5 + 1;

        swift_unknownObjectRetain();
        *&v36 = sub_248112960(v4, v13);
        *(&v36 + 1) = v33;
        v37 = v34;
        type metadata accessor for _XPCKeyedDecodingContainer();

        swift_unknownObjectRetain();

        swift_getWitnessTable();
        sub_2481248A8();

        swift_unknownObjectRelease();

        goto LABEL_13;
      }

      v16 = v3[2];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881D0, &qword_248127620);
      v18 = sub_248124728();
      swift_allocError();
      v20 = v19;
      *&v36 = 0;
      *(&v36 + 1) = 0xE000000000000000;
      sub_2481246E8();

      *&v36 = 0xD000000000000035;
      *(&v36 + 1) = 0x8000000248129C10;
      v21 = sub_24811D2E0(v13);
      MEMORY[0x24C1C6C90](v21);

      MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v20 = v17;

      sub_248124718();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84160], v18);
    }

    swift_willThrow();
LABEL_13:
    swift_unknownObjectRelease();
    return sub_248116794(v3);
  }

  v23 = sub_248124728();
  swift_allocError();
  v25 = v24;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
  *v25 = sub_248124898();
  v27 = v3[2];

  sub_248124718();
  (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84170], v23);
  swift_willThrow();
  return sub_248116794(v3);
}

uint64_t sub_24811621C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = *v1;
  v4 = v1[3];
  *&v38 = 0x207865646E49;
  *(&v38 + 1) = 0xE600000000000000;
  v41 = v4;
  v5 = sub_248124938();
  MEMORY[0x24C1C6C90](v5);

  swift_beginAccess();
  v6 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_24811CFC0(0, v6[2] + 1, 1, v6);
    *(v3 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_24811CFC0((v8 > 1), v9 + 1, 1, v6);
  }

  v39 = &type metadata for XPCCodingKey;
  v40 = sub_24810E568();
  v10 = swift_allocObject();
  *&v38 = v10;
  *(v10 + 16) = 0x207865646E49;
  *(v10 + 24) = 0xE600000000000000;
  *(v10 + 32) = v4;
  *(v10 + 40) = 0;
  v6[2] = v9 + 1;
  sub_248112238(&v38, &v6[5 * v9 + 4]);
  *(v3 + 16) = v6;
  swift_endAccess();
  v11 = v2[1];
  if (v4 >= xpc_array_get_count(v11))
  {
    v22 = sub_248124728();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881C8, &qword_248127618);
    v26 = v2[2];

    sub_248124718();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84170], v22);
    swift_willThrow();
    return sub_248116794(v2);
  }

  v12 = xpc_array_get_value(v11, v4);
  v13 = MEMORY[0x24C1C7CF0]();
  if (v13 == sub_248124318())
  {
    v27 = sub_248124728();
    swift_allocError();
    v29 = v28;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881C8, &qword_248127618);
    v31 = v2[2];

    sub_248124718();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84170], v27);
    goto LABEL_11;
  }

  v14 = MEMORY[0x24C1C7CF0](v12);
  if (v14 != sub_248124338())
  {
    v15 = v2[2];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881B8, &qword_248127610);
    v17 = sub_248124728();
    swift_allocError();
    v19 = v18;
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_2481246E8();

    *&v38 = 0xD000000000000028;
    *(&v38 + 1) = 0x8000000248129B20;
    v20 = sub_24811D2E0(v12);
    MEMORY[0x24C1C6C90](v20);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v19 = v16;

    sub_248124718();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
LABEL_11:
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_248116794(v2);
  }

  v2[3] = v4 + 1;
  v32 = swift_unknownObjectRetain();
  v33 = MEMORY[0x24C1C7CF0](v32);
  if (v33 == sub_248124338())
  {
    v34 = *(v3 + 16);
    v35 = v42;
    v42[3] = &type metadata for _XPCUnkeyedDecodingContainer;
    v35[4] = sub_24811FA78();
    v36 = swift_allocObject();
    *v35 = v36;

    swift_unknownObjectRelease();
    v36[2] = v3;
    v36[3] = v12;
    v36[4] = v34;
    v36[5] = 0;
    return sub_248116794(v2);
  }

  result = sub_2481247D8();
  __break(1u);
  return result;
}

uint64_t sub_248116794(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_24811D210(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_0(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(v1 + 16) = v2;
    swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_248116A88()
{
  result = sub_248124968();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_248116AD8()
{
  result = sub_248124978();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_248116B80()
{
  result = sub_2481249A8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_248116BD0()
{
  result = sub_248124988();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_248116D10()
{
  result = sub_2481249B8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_248116D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_248116E34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = sub_248124568();
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = &v14;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_248123FAC;
  *(v9 + 24) = v8;
  aBlock[4] = sub_248123FC8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2481170A0;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  xpc_dictionary_apply(a2, v10);
  _Block_release(v10);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v12 = v14;

    return v12;
  }

  return result;
}

uint64_t sub_248116FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_248124648();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v10 - v7;
  sub_2481244F8();
  sub_248124DC8();
  result = (*(*(a4 - 8) + 48))(v8, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_2481245A8();
    sub_248124598();
    return 1;
  }

  return result;
}

uint64_t sub_2481170A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

BOOL sub_2481170F8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_248124DB8();
  v4 = sub_2481244B8();

  v5 = xpc_dictionary_get_value(a3, (v4 + 32));

  if (v5)
  {
    swift_unknownObjectRelease();
  }

  return v5 != 0;
}

BOOL sub_248117178(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_248124DB8();
  v11 = sub_2481244B8();

  v12 = xpc_dictionary_get_value(a3, (v11 + 32));

  if (v12)
  {
    v13 = MEMORY[0x24C1C7CF0](v12);
    v14 = sub_248124318();
    swift_unknownObjectRelease();
    return v13 == v14;
  }

  else
  {
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v18[3] = a5;
    v18[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
    swift_beginAccess();
    v21 = *(a2 + 16);

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v22 = *(a6 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](46, 0xE100000000000000);
    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84158], v16);
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_2481173A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a4;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - v16;
  v44 = v15;
  sub_248124DB8();
  v18 = sub_2481244B8();

  v41 = a3;
  v19 = xpc_dictionary_get_value(a3, (v18 + 32));

  if (v19)
  {
    v39 = a6;
    v20 = *(v10 + 16);
    v20(v17, v44, a5);
    swift_beginAccess();
    v21 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v21;
    v38 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_24811CFC0(0, *(v21 + 16) + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v24 = *(v21 + 16);
    v23 = *(v21 + 24);
    if (v24 >= v23 >> 1)
    {
      v21 = sub_24811CFC0((v23 > 1), v24 + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v20(v14, v17, a5);
    sub_24811D224(v24, v14, (a2 + 16), a5, v39);
    (*(v10 + 8))(v17, a5);
    *(a2 + 16) = v21;
    swift_endAccess();
    LOBYTE(v21) = a2;
    v25 = v40;
    v26 = sub_24811D46C(v38);
    if (!v25)
    {
      LOBYTE(v21) = v26;
      if (v26 == 2)
      {
        v21 = sub_248124728();
        swift_allocError();
        v28 = v27;
        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
        *v28 = MEMORY[0x277D839B0];
        v30 = *(a2 + 16);

        sub_248124718();
        (*(*(v21 - 8) + 104))(v28, *MEMORY[0x277D84170], v21);
        swift_willThrow();
      }
    }

    sub_24811C104(a2);
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = sub_248124728();
    swift_allocError();
    v33 = v32;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    (*(v10 + 16))(boxed_opaque_existential_1, v44, a5);
    swift_beginAccess();
    v35 = *(a2 + 16);
    v43[0] = 0;
    v43[1] = 0xE000000000000000;

    v21 = v43;
    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v36 = *(a6 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84158], v31);
    swift_willThrow();
  }

  return v21 & 1;
}

uint64_t sub_248117844(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a4;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  v48 = v15;
  sub_248124DB8();
  v18 = sub_2481244B8();

  v44 = a3;
  v19 = xpc_dictionary_get_value(a3, (v18 + 32));

  if (v19)
  {
    v42 = a6;
    v20 = *(v10 + 16);
    v20(v17, v48, a5);
    swift_beginAccess();
    v21 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v21;
    v41 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_24811CFC0(0, v21[2] + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_24811CFC0((v23 > 1), v24 + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v20(v14, v17, a5);
    sub_24811D224(v24, v14, (a2 + 16), a5, v42);
    (*(v10 + 8))(v17, a5);
    *(a2 + 16) = v21;
    swift_endAccess();
    v25 = v43;
    v26 = sub_24811D62C(v41);
    if (v25)
    {
      goto LABEL_9;
    }

    if (v27)
    {
      v28 = sub_248124728();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v30 = MEMORY[0x277D83B88];
      v32 = *(a2 + 16);

      sub_248124718();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84170], v28);
      swift_willThrow();
LABEL_9:
      sub_24811C104(a2);
      return swift_unknownObjectRelease();
    }

    v40 = v26;
    sub_24811C104(a2);
    swift_unknownObjectRelease();
    return v40;
  }

  else
  {
    v34 = sub_248124728();
    swift_allocError();
    v36 = v35;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v36[3] = a5;
    v36[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    (*(v10 + 16))(boxed_opaque_existential_1, v48, a5);
    swift_beginAccess();
    v38 = *(a2 + 16);
    v46 = 0;
    v47 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v39 = *(a6 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84158], v34);
    return swift_willThrow();
  }
}

uint64_t sub_248117CE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a4;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  v47 = v15;
  sub_248124DB8();
  v18 = sub_2481244B8();

  v43 = a3;
  v19 = xpc_dictionary_get_value(a3, (v18 + 32));

  if (v19)
  {
    v41 = a6;
    v20 = *(v10 + 16);
    v20(v17, v47, a5);
    swift_beginAccess();
    v21 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v21;
    v40 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_24811CFC0(0, v21[2] + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_24811CFC0((v23 > 1), v24 + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v20(v14, v17, a5);
    sub_24811D224(v24, v14, (a2 + 16), a5, v41);
    (*(v10 + 8))(v17, a5);
    *(a2 + 16) = v21;
    swift_endAccess();
    v25 = v42;
    v26 = sub_24811D960(v40);
    if (!v25)
    {
      if ((v26 & 0x100) == 0)
      {
        v27 = v26;
        sub_24811C104(a2);
        swift_unknownObjectRelease();
        return v27;
      }

      v35 = sub_248124728();
      swift_allocError();
      v37 = v36;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v37 = MEMORY[0x277D84900];
      v39 = *(a2 + 16);

      sub_248124718();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84170], v35);
      swift_willThrow();
    }

    sub_24811C104(a2);
    return swift_unknownObjectRelease();
  }

  else
  {
    v29 = sub_248124728();
    swift_allocError();
    v31 = v30;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v31[3] = a5;
    v31[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    (*(v10 + 16))(boxed_opaque_existential_1, v47, a5);
    swift_beginAccess();
    v33 = *(a2 + 16);
    v45 = 0;
    v46 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v34 = *(a6 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84158], v29);
    return swift_willThrow();
  }
}

uint64_t sub_24811817C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a4;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  v47 = v15;
  sub_248124DB8();
  v18 = sub_2481244B8();

  v43 = a3;
  v19 = xpc_dictionary_get_value(a3, (v18 + 32));

  if (v19)
  {
    v41 = a6;
    v20 = *(v10 + 16);
    v20(v17, v47, a5);
    swift_beginAccess();
    v21 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v21;
    v40 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_24811CFC0(0, v21[2] + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_24811CFC0((v23 > 1), v24 + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v20(v14, v17, a5);
    sub_24811D224(v24, v14, (a2 + 16), a5, v41);
    (*(v10 + 8))(v17, a5);
    *(a2 + 16) = v21;
    swift_endAccess();
    v25 = v42;
    v26 = sub_24811DC94(v40);
    if (!v25)
    {
      if ((v26 & 0x10000) == 0)
      {
        v27 = v26;
        sub_24811C104(a2);
        swift_unknownObjectRelease();
        return v27;
      }

      v35 = sub_248124728();
      swift_allocError();
      v37 = v36;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v37 = MEMORY[0x277D84958];
      v39 = *(a2 + 16);

      sub_248124718();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84170], v35);
      swift_willThrow();
    }

    sub_24811C104(a2);
    return swift_unknownObjectRelease();
  }

  else
  {
    v29 = sub_248124728();
    swift_allocError();
    v31 = v30;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v31[3] = a5;
    v31[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    (*(v10 + 16))(boxed_opaque_existential_1, v47, a5);
    swift_beginAccess();
    v33 = *(a2 + 16);
    v45 = 0;
    v46 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v34 = *(a6 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84158], v29);
    return swift_willThrow();
  }
}

void *sub_248118618(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a4;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  v45 = v15;
  sub_248124DB8();
  v18 = sub_2481244B8();

  v42 = a3;
  v19 = xpc_dictionary_get_value(a3, (v18 + 32));

  if (v19)
  {
    v40 = a6;
    v20 = *(v10 + 16);
    v20(v17, v45, a5);
    swift_beginAccess();
    v21 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v21;
    v39 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_24811CFC0(0, v21[2] + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_24811CFC0((v23 > 1), v24 + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v20(v14, v17, a5);
    sub_24811D224(v24, v14, (a2 + 16), a5, v40);
    (*(v10 + 8))(v17, a5);
    *(a2 + 16) = v21;
    swift_endAccess();
    v25 = a2;
    v26 = v41;
    v27 = sub_24811DFCC(v39);
    if (!v26)
    {
      v25 = v27;
      if ((v27 & 0x100000000) != 0)
      {
        v25 = sub_248124728();
        swift_allocError();
        v35 = v34;
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
        *v35 = MEMORY[0x277D849A8];
        v37 = *(a2 + 16);

        sub_248124718();
        (*(*(v25 - 1) + 104))(v35, *MEMORY[0x277D84170], v25);
        swift_willThrow();
      }
    }

    sub_24811C104(a2);
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = sub_248124728();
    swift_allocError();
    v30 = v29;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v30[3] = a5;
    v30[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v10 + 16))(boxed_opaque_existential_1, v45, a5);
    swift_beginAccess();
    v32 = *(a2 + 16);
    v44[0] = 0;
    v44[1] = 0xE000000000000000;

    v25 = v44;
    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v33 = *(a6 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84158], v28);
    swift_willThrow();
  }

  return v25;
}

uint64_t sub_248118AB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a4;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  v48 = v15;
  sub_248124DB8();
  v18 = sub_2481244B8();

  v44 = a3;
  v19 = xpc_dictionary_get_value(a3, (v18 + 32));

  if (v19)
  {
    v42 = a6;
    v20 = *(v10 + 16);
    v20(v17, v48, a5);
    swift_beginAccess();
    v21 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v21;
    v41 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_24811CFC0(0, v21[2] + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_24811CFC0((v23 > 1), v24 + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v20(v14, v17, a5);
    sub_24811D224(v24, v14, (a2 + 16), a5, v42);
    (*(v10 + 8))(v17, a5);
    *(a2 + 16) = v21;
    swift_endAccess();
    v25 = v43;
    v26 = sub_24811E30C(v41);
    if (v25)
    {
      goto LABEL_9;
    }

    if (v27)
    {
      v28 = sub_248124728();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v30 = MEMORY[0x277D84A28];
      v32 = *(a2 + 16);

      sub_248124718();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84170], v28);
      swift_willThrow();
LABEL_9:
      sub_24811C104(a2);
      return swift_unknownObjectRelease();
    }

    v40 = v26;
    sub_24811C104(a2);
    swift_unknownObjectRelease();
    return v40;
  }

  else
  {
    v34 = sub_248124728();
    swift_allocError();
    v36 = v35;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v36[3] = a5;
    v36[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    (*(v10 + 16))(boxed_opaque_existential_1, v48, a5);
    swift_beginAccess();
    v38 = *(a2 + 16);
    v46 = 0;
    v47 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v39 = *(a6 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84158], v34);
    return swift_willThrow();
  }
}

uint64_t sub_248118F50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a4;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  v48 = v15;
  sub_248124DB8();
  v18 = sub_2481244B8();

  v44 = a3;
  v19 = xpc_dictionary_get_value(a3, (v18 + 32));

  if (v19)
  {
    v42 = a6;
    v20 = *(v10 + 16);
    v20(v17, v48, a5);
    swift_beginAccess();
    v21 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v21;
    v41 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_24811CFC0(0, v21[2] + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_24811CFC0((v23 > 1), v24 + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v20(v14, v17, a5);
    sub_24811D224(v24, v14, (a2 + 16), a5, v42);
    (*(v10 + 8))(v17, a5);
    *(a2 + 16) = v21;
    swift_endAccess();
    v25 = v43;
    v26 = sub_24811E644(v41);
    if (v25)
    {
      goto LABEL_9;
    }

    if (v27)
    {
      v28 = sub_248124728();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v30 = MEMORY[0x277D83E88];
      v32 = *(a2 + 16);

      sub_248124718();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84170], v28);
      swift_willThrow();
LABEL_9:
      sub_24811C104(a2);
      return swift_unknownObjectRelease();
    }

    v40 = v26;
    sub_24811C104(a2);
    swift_unknownObjectRelease();
    return v40;
  }

  else
  {
    v34 = sub_248124728();
    swift_allocError();
    v36 = v35;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v36[3] = a5;
    v36[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    (*(v10 + 16))(boxed_opaque_existential_1, v48, a5);
    swift_beginAccess();
    v38 = *(a2 + 16);
    v46 = 0;
    v47 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v39 = *(a6 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84158], v34);
    return swift_willThrow();
  }
}

uint64_t sub_2481193EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a4;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  v47 = v15;
  sub_248124DB8();
  v18 = sub_2481244B8();

  v43 = a3;
  v19 = xpc_dictionary_get_value(a3, (v18 + 32));

  if (v19)
  {
    v41 = a6;
    v20 = *(v10 + 16);
    v20(v17, v47, a5);
    swift_beginAccess();
    v21 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v21;
    v40 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_24811CFC0(0, v21[2] + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_24811CFC0((v23 > 1), v24 + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v20(v14, v17, a5);
    sub_24811D224(v24, v14, (a2 + 16), a5, v41);
    (*(v10 + 8))(v17, a5);
    *(a2 + 16) = v21;
    swift_endAccess();
    v25 = v42;
    v26 = sub_24811E978(v40);
    if (!v25)
    {
      if ((v26 & 0x100) == 0)
      {
        v27 = v26;
        sub_24811C104(a2);
        swift_unknownObjectRelease();
        return v27;
      }

      v35 = sub_248124728();
      swift_allocError();
      v37 = v36;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v37 = MEMORY[0x277D84B78];
      v39 = *(a2 + 16);

      sub_248124718();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84170], v35);
      swift_willThrow();
    }

    sub_24811C104(a2);
    return swift_unknownObjectRelease();
  }

  else
  {
    v29 = sub_248124728();
    swift_allocError();
    v31 = v30;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v31[3] = a5;
    v31[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    (*(v10 + 16))(boxed_opaque_existential_1, v47, a5);
    swift_beginAccess();
    v33 = *(a2 + 16);
    v45 = 0;
    v46 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v34 = *(a6 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84158], v29);
    return swift_willThrow();
  }
}

uint64_t sub_248119888(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a4;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  v47 = v15;
  sub_248124DB8();
  v18 = sub_2481244B8();

  v43 = a3;
  v19 = xpc_dictionary_get_value(a3, (v18 + 32));

  if (v19)
  {
    v41 = a6;
    v20 = *(v10 + 16);
    v20(v17, v47, a5);
    swift_beginAccess();
    v21 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v21;
    v40 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_24811CFC0(0, v21[2] + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_24811CFC0((v23 > 1), v24 + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v20(v14, v17, a5);
    sub_24811D224(v24, v14, (a2 + 16), a5, v41);
    (*(v10 + 8))(v17, a5);
    *(a2 + 16) = v21;
    swift_endAccess();
    v25 = v42;
    v26 = sub_24811ECB0(v40);
    if (!v25)
    {
      if ((v26 & 0x10000) == 0)
      {
        v27 = v26;
        sub_24811C104(a2);
        swift_unknownObjectRelease();
        return v27;
      }

      v35 = sub_248124728();
      swift_allocError();
      v37 = v36;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v37 = MEMORY[0x277D84C58];
      v39 = *(a2 + 16);

      sub_248124718();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84170], v35);
      swift_willThrow();
    }

    sub_24811C104(a2);
    return swift_unknownObjectRelease();
  }

  else
  {
    v29 = sub_248124728();
    swift_allocError();
    v31 = v30;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v31[3] = a5;
    v31[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    (*(v10 + 16))(boxed_opaque_existential_1, v47, a5);
    swift_beginAccess();
    v33 = *(a2 + 16);
    v45 = 0;
    v46 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v34 = *(a6 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84158], v29);
    return swift_willThrow();
  }
}

void *sub_248119D24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a4;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  v45 = v15;
  sub_248124DB8();
  v18 = sub_2481244B8();

  v42 = a3;
  v19 = xpc_dictionary_get_value(a3, (v18 + 32));

  if (v19)
  {
    v40 = a6;
    v20 = *(v10 + 16);
    v20(v17, v45, a5);
    swift_beginAccess();
    v21 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v21;
    v39 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_24811CFC0(0, v21[2] + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_24811CFC0((v23 > 1), v24 + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v20(v14, v17, a5);
    sub_24811D224(v24, v14, (a2 + 16), a5, v40);
    (*(v10 + 8))(v17, a5);
    *(a2 + 16) = v21;
    swift_endAccess();
    v25 = a2;
    v26 = v41;
    v27 = sub_24811EFE8(v39);
    if (!v26)
    {
      v25 = v27;
      if ((v27 & 0x100000000) != 0)
      {
        v25 = sub_248124728();
        swift_allocError();
        v35 = v34;
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
        *v35 = MEMORY[0x277D84CC0];
        v37 = *(a2 + 16);

        sub_248124718();
        (*(*(v25 - 1) + 104))(v35, *MEMORY[0x277D84170], v25);
        swift_willThrow();
      }
    }

    sub_24811C104(a2);
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = sub_248124728();
    swift_allocError();
    v30 = v29;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v30[3] = a5;
    v30[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v10 + 16))(boxed_opaque_existential_1, v45, a5);
    swift_beginAccess();
    v32 = *(a2 + 16);
    v44[0] = 0;
    v44[1] = 0xE000000000000000;

    v25 = v44;
    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v33 = *(a6 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84158], v28);
    swift_willThrow();
  }

  return v25;
}

uint64_t sub_24811A1C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a4;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  v48 = v15;
  sub_248124DB8();
  v18 = sub_2481244B8();

  v44 = a3;
  v19 = xpc_dictionary_get_value(a3, (v18 + 32));

  if (v19)
  {
    v42 = a6;
    v20 = *(v10 + 16);
    v20(v17, v48, a5);
    swift_beginAccess();
    v21 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v21;
    v41 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_24811CFC0(0, v21[2] + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_24811CFC0((v23 > 1), v24 + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v20(v14, v17, a5);
    sub_24811D224(v24, v14, (a2 + 16), a5, v42);
    (*(v10 + 8))(v17, a5);
    *(a2 + 16) = v21;
    swift_endAccess();
    v25 = v43;
    v26 = sub_24811F328(v41);
    if (v25)
    {
      goto LABEL_9;
    }

    if (v27)
    {
      v28 = sub_248124728();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v30 = MEMORY[0x277D84D38];
      v32 = *(a2 + 16);

      sub_248124718();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84170], v28);
      swift_willThrow();
LABEL_9:
      sub_24811C104(a2);
      return swift_unknownObjectRelease();
    }

    v40 = v26;
    sub_24811C104(a2);
    swift_unknownObjectRelease();
    return v40;
  }

  else
  {
    v34 = sub_248124728();
    swift_allocError();
    v36 = v35;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v36[3] = a5;
    v36[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    (*(v10 + 16))(boxed_opaque_existential_1, v48, a5);
    swift_beginAccess();
    v38 = *(a2 + 16);
    v46 = 0;
    v47 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v39 = *(a6 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84158], v34);
    return swift_willThrow();
  }
}

float sub_24811A65C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  v46 = v16;
  sub_248124DB8();
  v19 = sub_2481244B8();

  v44 = a3;
  v20 = xpc_dictionary_get_value(a3, (v19 + 32));

  if (!v20)
  {
    v28 = sub_248124728();
    swift_allocError();
    v30 = v29;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v30[3] = a5;
    v30[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v11 + 16))(boxed_opaque_existential_1, v46, a5);
    swift_beginAccess();
    v32 = *(a2 + 16);
    v47 = 0;
    v48 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v33 = *(a6 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84158], v28);
    swift_willThrow();
    return v6;
  }

  v42 = a6;
  v21 = *(v11 + 16);
  v21(v18, v46, a5);
  swift_beginAccess();
  v22 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v22;
  v41 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_24811CFC0(0, v22[2] + 1, 1, v22);
    *(a2 + 16) = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_24811CFC0((v24 > 1), v25 + 1, 1, v22);
    *(a2 + 16) = v22;
  }

  v21(v15, v18, a5);
  sub_24811D224(v25, v15, (a2 + 16), a5, v42);
  (*(v11 + 8))(v18, a5);
  *(a2 + 16) = v22;
  swift_endAccess();
  v26 = v43;
  v27 = sub_24811F660(v41);
  if (v26)
  {
LABEL_11:
    sub_24811C104(a2);
    swift_unknownObjectRelease();
    return v6;
  }

  if ((v27 & 0x100000000) != 0)
  {
    v34 = sub_248124728();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v36 = MEMORY[0x277D83A90];
    v38 = *(a2 + 16);

    sub_248124718();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84170], v34);
    swift_willThrow();
    goto LABEL_11;
  }

  v6 = *&v27;
  sub_24811C104(a2);
  swift_unknownObjectRelease();
  return v6;
}

double sub_24811AB00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - v17;
  v47 = v16;
  sub_248124DB8();
  v19 = sub_2481244B8();

  v45 = a3;
  v20 = xpc_dictionary_get_value(a3, (v19 + 32));

  v44 = v20;
  if (v20)
  {
    v42 = a6;
    v21 = *(v11 + 16);
    v21(v18, v47, a5);
    swift_beginAccess();
    v22 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v22;
    v24 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_24811CFC0(0, v22[2] + 1, 1, v22);
      *(a2 + 16) = v22;
    }

    v26 = v22[2];
    v25 = v22[3];
    if (v26 >= v25 >> 1)
    {
      v22 = sub_24811CFC0((v25 > 1), v26 + 1, 1, v22);
      *(v24 + 16) = v22;
    }

    v21(v15, v18, a5);
    sub_24811D224(v26, v15, (v24 + 16), a5, v42);
    (*(v11 + 8))(v18, a5);
    *(v24 + 16) = v22;
    swift_endAccess();
    v27 = v43;
    v28 = sub_24811F840(v44);
    if (!v27)
    {
      if ((v29 & 1) == 0)
      {
        v6 = *&v28;
        sub_24811C104(v24);
        swift_unknownObjectRelease();
        return v6;
      }

      v30 = sub_248124728();
      swift_allocError();
      v32 = v31;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v32 = MEMORY[0x277D839F8];
      v34 = *(v24 + 16);

      sub_248124718();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84170], v30);
      swift_willThrow();
    }

    sub_24811C104(v24);
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = sub_248124728();
    swift_allocError();
    v36 = v35;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v36[3] = a5;
    v36[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    (*(v11 + 16))(boxed_opaque_existential_1, v47, a5);
    swift_beginAccess();
    v38 = *(a2 + 16);
    v48 = 0;
    v49 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v39 = *(a6 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v46 - 8) + 104))(v36, *MEMORY[0x277D84158]);
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_24811AFA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a4;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v41 - v16;
  v47 = v15;
  sub_248124DB8();
  v18 = sub_2481244B8();

  v43 = a3;
  v19 = xpc_dictionary_get_value(a3, (v18 + 32));

  v42 = v19;
  if (v19)
  {
    v41[0] = a6;
    v20 = *(v10 + 16);
    v20(v17, v47, a5);
    swift_beginAccess();
    v21 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v21;
    v23 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_24811CFC0(0, v21[2] + 1, 1, v21);
      *(a2 + 16) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_24811CFC0((v24 > 1), v25 + 1, 1, v21);
      *(v23 + 16) = v21;
    }

    v20(v14, v17, a5);
    sub_24811D224(v25, v14, (v23 + 16), a5, v41[0]);
    (*(v10 + 8))(v17, a5);
    *(v23 + 16) = v21;
    swift_endAccess();
    v26 = v41[1];
    v27 = sub_248113134(v42);
    if (v26)
    {
      goto LABEL_7;
    }

    if (!v28)
    {
      v36 = sub_248124728();
      swift_allocError();
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v38 = MEMORY[0x277D837D0];
      v40 = *(v23 + 16);

      sub_248124718();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84170], v36);
      swift_willThrow();
LABEL_7:
      sub_24811C104(v23);
      return swift_unknownObjectRelease();
    }

    v35 = v27;
    sub_24811C104(v23);
    swift_unknownObjectRelease();
    return v35;
  }

  else
  {
    v44 = sub_248124728();
    swift_allocError();
    v31 = v30;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v31[3] = a5;
    v31[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    (*(v10 + 16))(boxed_opaque_existential_1, v47, a5);
    swift_beginAccess();
    v33 = *(a2 + 16);
    v45 = 0;
    v46 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v34 = *(a6 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v44 - 8) + 104))(v31, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t sub_24811B44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v65 = a5;
  v66 = a7;
  v57 = a9;
  v58 = a1;
  v15 = sub_248124648();
  v55 = *(v15 - 8);
  v56 = v15;
  v16 = *(v55 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v63 = &v54 - v18;
  v19 = *(a6 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v54 - v24;
  v71 = a2;
  v26 = a8;
  sub_248124DB8();
  v27 = sub_2481244B8();

  v64 = a4;
  v28 = xpc_dictionary_get_value(a4, (v27 + 32));

  if (v28)
  {
    v60 = v28;
    v61 = v26;
    v59 = a10;
    v29 = *(v19 + 16);
    v30 = a6;
    v29(v25, v71, a6);
    swift_beginAccess();
    v31 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v31;
    v71 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_24811CFC0(0, v31[2] + 1, 1, v31);
      *(v71 + 16) = v31;
    }

    v34 = v31[2];
    v33 = v31[3];
    if (v34 >= v33 >> 1)
    {
      v31 = sub_24811CFC0((v33 > 1), v34 + 1, 1, v31);
      *(v71 + 16) = v31;
    }

    v35 = v60;
    v29(v23, v25, v30);
    v36 = v71;
    sub_24811D224(v34, v23, (v71 + 16), v30, v61);
    (*(v19 + 8))(v25, v30);
    *(v36 + 16) = v31;
    swift_endAccess();
    v37 = v62;
    v38 = v63;
    v39 = v66;
    sub_248112E6C(v35, v66, v66, v59, v63);
    if (!v37)
    {
      v62 = v30;
      v47 = *(v39 - 8);
      if ((*(v47 + 48))(v38, 1, v39) == 1)
      {
        (*(v55 + 8))(v38, v56);
        v48 = sub_248124728();
        swift_allocError();
        v50 = v49;
        v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
        *v50 = v58;
        v52 = *(v36 + 16);
        v69 = 0;
        v70 = 0xE000000000000000;

        sub_2481246E8();

        v69 = 0x6465746365707845;
        v70 = 0xE900000000000020;
        v53 = sub_248124DF8();
        MEMORY[0x24C1C6C90](v53);

        MEMORY[0x24C1C6C90](0xD00000000000001ELL, 0x800000024812A090);
        sub_248124718();
        (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84170], v48);
        swift_willThrow();
      }

      else
      {
        (*(v47 + 32))(v57, v38, v39);
      }
    }

    sub_24811C104(v36);
    return swift_unknownObjectRelease();
  }

  else
  {
    v41 = sub_248124728();
    v65 = swift_allocError();
    v43 = v42;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v43[3] = a6;
    v43[4] = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
    (*(v19 + 16))(boxed_opaque_existential_1, v71, a6);
    swift_beginAccess();
    v45 = *(a3 + 16);
    v67 = 0;
    v68 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000001DLL, 0x800000024812A070);
    v46 = *(v26 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](11817, 0xE200000000000000);
    sub_248124718();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84158], v41);
    return swift_willThrow();
  }
}

uint64_t sub_24811BAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v50 = a8;
  v57 = a7;
  v55 = a6;
  v62 = a3;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v49 - v16;
  v18 = *(v11 + 16);
  v52 = v19;
  v56 = v20;
  v18(v49 - v16);
  swift_beginAccess();
  v21 = *(a2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_24811CFC0(0, v21[2] + 1, 1, v21);
    *(a2 + 16) = v21;
  }

  v53 = a9;
  v54 = a4;
  v24 = v21[2];
  v23 = v21[3];
  v58 = a2;
  if (v24 >= v23 >> 1)
  {
    v21 = sub_24811CFC0((v23 > 1), v24 + 1, 1, v21);
    *(a2 + 16) = v21;
  }

  v25 = v56;
  (v18)(v15, v17, v56);
  v26 = v58;
  v27 = v24;
  v28 = v57;
  sub_24811D224(v27, v15, (v58 + 16), v25, v57);
  (*(v11 + 8))(v17, v25);
  *(v26 + 16) = v21;
  swift_endAccess();
  v29 = v52;
  sub_248124DB8();
  v30 = sub_2481244B8();

  v31 = xpc_dictionary_get_value(v62, (v30 + 32));

  if (!v31)
  {

    v50 = sub_248124728();
    v51 = swift_allocError();
    v41 = v40;
    v49[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v41[3] = v25;
    v41[4] = v28;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
    (v18)(boxed_opaque_existential_1, v29, v25);
    v59 = 0;
    v60 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0x6720746F6E6E6143, 0xEB00000000207465);
    sub_248124898();
    v43 = sub_248124DF8();
    MEMORY[0x24C1C6C90](v43);

    MEMORY[0x24C1C6C90](0xD00000000000001BLL, 0x800000024812A050);
    v44 = *(v28 + 16);
    sub_248124B28();
    sub_248124718();
    (*(*(v50 - 8) + 104))(v41, *MEMORY[0x277D84158]);
    swift_willThrow();
    v33 = v58;
    return sub_24811C104(v33);
  }

  v32 = MEMORY[0x24C1C7CF0](v31);
  if (v32 != sub_248124388())
  {
    v33 = v58;

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881D0, &qword_248127620);
    v35 = sub_248124728();
    swift_allocError();
    v37 = v36;
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_2481246E8();

    v59 = 0xD000000000000035;
    v60 = 0x8000000248129C10;
    v38 = sub_24811D2E0(v31);
    MEMORY[0x24C1C6C90](v38);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v37 = v34;

    sub_248124718();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_24811C104(v33);
  }

  swift_unknownObjectRetain();
  v46 = v58;
  v59 = sub_248112960(v58, v31);
  v60 = v47;
  v61 = v48;
  type metadata accessor for _XPCKeyedDecodingContainer();

  swift_unknownObjectRetain();

  swift_getWitnessTable();
  sub_2481248A8();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return sub_24811C104(v46);
}

uint64_t sub_24811C104(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_24811D210(v2);
    v2 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v2[2];
  if (v5)
  {
LABEL_4:
    v6 = v5 - 1;
    __swift_destroy_boxed_opaque_existential_0(&v2[5 * v5 - 1]);
    v2[2] = v6;
    *(a1 + 16) = v2;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24811C1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v55 = a4;
  v56 = a6;
  v57 = a3;
  v52 = a7;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = *(v10 + 16);
  v17(&v51 - v15, a1, v18);
  swift_beginAccess();
  v19 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = a2;
  *(a2 + 16) = v19;
  v21 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_24811CFC0(0, v19[2] + 1, 1, v19);
    *(v60 + 16) = v19;
  }

  v23 = v19[2];
  v22 = v19[3];
  if (v23 >= v22 >> 1)
  {
    v19 = sub_24811CFC0((v22 > 1), v23 + 1, 1, v19);
    *(v60 + 16) = v19;
  }

  v17(v14, v16, a5);
  v53 = v17;
  v24 = v60;
  v25 = v14;
  v26 = v56;
  sub_24811D224(v23, v25, (v60 + 16), a5, v56);
  (*(v10 + 8))(v16, a5);
  v27 = v26;
  *(v24 + 16) = v19;
  swift_endAccess();
  sub_248124DB8();
  v28 = sub_2481244B8();

  v29 = xpc_dictionary_get_value(v57, (v28 + 32));

  if (!v29)
  {
    v37 = sub_248124728();
    v54 = swift_allocError();
    v38 = v21;
    v40 = v39;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE88270, &qword_248127A08) + 48);
    v40[3] = a5;
    v40[4] = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
    v53(boxed_opaque_existential_1, v38, a5);
    v58 = 0;
    v59 = 0xE000000000000000;

    sub_2481246E8();
    MEMORY[0x24C1C6C90](0xD00000000000003ELL, 0x800000024812A010);
    v43 = *(v27 + 16);
    sub_248124B28();
    MEMORY[0x24C1C6C90](41, 0xE100000000000000);
    sub_248124718();
    (*(*(v37 - 8) + 104))(v40, *MEMORY[0x277D84158], v37);
    swift_willThrow();
    return sub_24811C104(v60);
  }

  v30 = MEMORY[0x24C1C7CF0](v29);
  if (v30 != sub_248124338())
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881B8, &qword_248127610);
    v32 = sub_248124728();
    swift_allocError();
    v34 = v33;
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_2481246E8();

    v58 = 0xD000000000000028;
    v59 = 0x8000000248129B20;
    v35 = sub_24811D2E0(v29);
    MEMORY[0x24C1C6C90](v35);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v34 = v31;

    sub_248124718();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_24811C104(v60);
  }

  v45 = swift_unknownObjectRetain();
  v46 = MEMORY[0x24C1C7CF0](v45);
  if (v46 == sub_248124338())
  {
    v47 = v60;
    v48 = *(v60 + 16);
    v49 = v52;
    v52[3] = &type metadata for _XPCUnkeyedDecodingContainer;
    v49[4] = sub_24811FA78();
    v50 = swift_allocObject();
    *v49 = v50;

    swift_unknownObjectRelease();
    v50[2] = v47;
    v50[3] = v29;
    v50[4] = v48;
    v50[5] = 0;
    return sub_24811C104(v47);
  }

  else
  {
    result = sub_2481247D8();
    __break(1u);
  }

  return result;
}

BOOL sub_24811C820(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_2481170F8(a1, a2, *(v2 + 8));
}

uint64_t sub_24811CC0C()
{
  result = sub_248124BA8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24811CC5C()
{
  result = sub_248124BB8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24811CD04()
{
  result = sub_248124BE8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24811CD54()
{
  result = sub_248124BC8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24811CE94()
{
  result = sub_248124BF8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_24811CEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

void *sub_24811CFC0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE88260, &qword_2481279F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24811D108(void *result)
{
  v2 = result[2];
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24811CFC0(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE88260, &qword_2481279F8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24811D224(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_248112238(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_24811D2E0(uint64_t a1)
{
  v2 = MEMORY[0x24C1C7CF0]();
  if (v2 == sub_248124318())
  {
    return 0x76206C6C756E2061;
  }

  v3 = 0x7265626D756E2061;
  v4 = MEMORY[0x24C1C7CF0](a1);
  if (v4 != sub_248124348())
  {
    v5 = MEMORY[0x24C1C7CF0](a1);
    if (v5 != sub_248124378())
    {
      v6 = MEMORY[0x24C1C7CF0](a1);
      if (v6 == sub_248124368())
      {
        return 0x676E697274732061;
      }

      else
      {
        v7 = MEMORY[0x24C1C7CF0](a1);
        if (v7 == sub_248124338())
        {
          return 0x7961727261206E61;
        }

        else
        {
          v8 = MEMORY[0x24C1C7CF0](a1);
          if (v8 == sub_248124388())
          {
            return 0x6F69746369642061;
          }

          else
          {
            v9 = MEMORY[0x24C1C7CF0](a1);
            if (v9 == sub_248124328())
            {
              return 0x646975752061;
            }

            else
            {
              v10 = MEMORY[0x24C1C7CF0](a1);
              xpc_type_get_name(v10);
              return sub_2481244F8();
            }
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_24811D46C(void *a1)
{
  v3 = MEMORY[0x24C1C7CF0]();
  if (v3 == sub_248124318())
  {
    return 2;
  }

  v4 = MEMORY[0x24C1C7CF0](a1);
  if (v4 == sub_248124308())
  {
    return xpc_BOOL_get_value(a1);
  }

  swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = sub_248124728();
  swift_allocError();
  v8 = v7;

  sub_2481246E8();

  v9 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v9);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
  *v8 = MEMORY[0x277D839B0];
  sub_248124718();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
  return swift_willThrow();
}

uint64_t sub_24811D62C(void *a1)
{
  v3 = MEMORY[0x24C1C7CF0]();
  if (v3 == sub_248124318())
  {
    return 0;
  }

  v4 = MEMORY[0x24C1C7CF0](a1);
  if (v4 == sub_248124348())
  {
    value = xpc_int64_get_value(a1);
    v13 = xpc_int64_get_value(a1);
    result = value;
    if (value == v13)
    {
      return result;
    }

    v14 = sub_248124728();
    swift_allocError();
    v16 = v15;
    swift_beginAccess();
    v17 = *(v1 + 16);

    sub_2481246E8();

    xpc_int64_get_value(a1);
    v18 = sub_248124938();
    MEMORY[0x24C1C6C90](v18);

    MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
    MEMORY[0x24C1C6C90](7630409, 0xE300000000000000);
    MEMORY[0x24C1C6C90](46, 0xE100000000000000);
    sub_248124718();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
  }

  else
  {
    swift_beginAccess();
    v5 = *(v1 + 16);
    v6 = sub_248124728();
    swift_allocError();
    v8 = v7;

    sub_2481246E8();

    v9 = sub_24811D2E0(a1);
    MEMORY[0x24C1C6C90](v9);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v8 = MEMORY[0x277D83B88];
    sub_248124718();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
  }

  return swift_willThrow();
}

uint64_t sub_24811D960(void *a1)
{
  v3 = MEMORY[0x24C1C7CF0]();
  v4 = sub_248124318();
  if (v3 == v4)
  {
    value = 0;
    return value | ((v3 == v4) << 8);
  }

  v5 = MEMORY[0x24C1C7CF0](a1);
  if (v5 == sub_248124348())
  {
    value = xpc_int64_get_value(a1);
    if (xpc_int64_get_value(a1) != value)
    {
      v14 = sub_248124728();
      swift_allocError();
      v16 = v15;
      swift_beginAccess();
      v17 = *(v1 + 16);

      sub_2481246E8();

      xpc_int64_get_value(a1);
      v18 = sub_248124938();
      MEMORY[0x24C1C6C90](v18);

      MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
      MEMORY[0x24C1C6C90](947154505, 0xE400000000000000);
      MEMORY[0x24C1C6C90](46, 0xE100000000000000);
      sub_248124718();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
      return swift_willThrow();
    }

    return value | ((v3 == v4) << 8);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = sub_248124728();
  swift_allocError();
  v9 = v8;

  sub_2481246E8();

  v10 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v10);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
  *v9 = MEMORY[0x277D84900];
  sub_248124718();
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
  return swift_willThrow();
}

uint64_t sub_24811DC94(void *a1)
{
  v3 = MEMORY[0x24C1C7CF0]();
  v4 = sub_248124318();
  if (v3 == v4)
  {
    value = 0;
    return value | ((v3 == v4) << 16);
  }

  v5 = MEMORY[0x24C1C7CF0](a1);
  if (v5 == sub_248124348())
  {
    value = xpc_int64_get_value(a1);
    if (xpc_int64_get_value(a1) != value)
    {
      v14 = sub_248124728();
      swift_allocError();
      v16 = v15;
      swift_beginAccess();
      v17 = *(v1 + 16);

      sub_2481246E8();

      xpc_int64_get_value(a1);
      v18 = sub_248124938();
      MEMORY[0x24C1C6C90](v18);

      MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
      MEMORY[0x24C1C6C90](0x3631746E49, 0xE500000000000000);
      MEMORY[0x24C1C6C90](46, 0xE100000000000000);
      sub_248124718();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
      return swift_willThrow();
    }

    return value | ((v3 == v4) << 16);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = sub_248124728();
  swift_allocError();
  v9 = v8;

  sub_2481246E8();

  v10 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v10);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
  *v9 = MEMORY[0x277D84958];
  sub_248124718();
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
  return swift_willThrow();
}

unint64_t sub_24811DFCC(void *a1)
{
  v3 = MEMORY[0x24C1C7CF0]();
  v4 = sub_248124318();
  if (v3 == v4)
  {
    value = 0;
    return value | ((v3 == v4) << 32);
  }

  v5 = MEMORY[0x24C1C7CF0](a1);
  if (v5 == sub_248124348())
  {
    value = xpc_int64_get_value(a1);
    if (xpc_int64_get_value(a1) != value)
    {
      v14 = sub_248124728();
      swift_allocError();
      v16 = v15;
      swift_beginAccess();
      v17 = *(v1 + 16);

      sub_2481246E8();

      xpc_int64_get_value(a1);
      v18 = sub_248124938();
      MEMORY[0x24C1C6C90](v18);

      MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
      MEMORY[0x24C1C6C90](0x3233746E49, 0xE500000000000000);
      MEMORY[0x24C1C6C90](46, 0xE100000000000000);
      sub_248124718();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
      return swift_willThrow();
    }

    return value | ((v3 == v4) << 32);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = sub_248124728();
  swift_allocError();
  v9 = v8;

  sub_2481246E8();

  v10 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v10);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
  *v9 = MEMORY[0x277D849A8];
  sub_248124718();
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
  return swift_willThrow();
}

uint64_t sub_24811E30C(void *a1)
{
  v3 = MEMORY[0x24C1C7CF0]();
  if (v3 == sub_248124318())
  {
    return 0;
  }

  v4 = MEMORY[0x24C1C7CF0](a1);
  if (v4 == sub_248124348())
  {
    value = xpc_int64_get_value(a1);
    v13 = xpc_int64_get_value(a1);
    result = value;
    if (value == v13)
    {
      return result;
    }

    v14 = sub_248124728();
    swift_allocError();
    v16 = v15;
    swift_beginAccess();
    v17 = *(v1 + 16);

    sub_2481246E8();

    xpc_int64_get_value(a1);
    v18 = sub_248124938();
    MEMORY[0x24C1C6C90](v18);

    MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
    MEMORY[0x24C1C6C90](0x3436746E49, 0xE500000000000000);
    MEMORY[0x24C1C6C90](46, 0xE100000000000000);
    sub_248124718();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
  }

  else
  {
    swift_beginAccess();
    v5 = *(v1 + 16);
    v6 = sub_248124728();
    swift_allocError();
    v8 = v7;

    sub_2481246E8();

    v9 = sub_24811D2E0(a1);
    MEMORY[0x24C1C6C90](v9);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v8 = MEMORY[0x277D84A28];
    sub_248124718();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
  }

  return swift_willThrow();
}

uint64_t sub_24811E644(void *a1)
{
  v3 = MEMORY[0x24C1C7CF0]();
  if (v3 == sub_248124318())
  {
    return 0;
  }

  v4 = MEMORY[0x24C1C7CF0](a1);
  if (v4 == sub_248124378())
  {
    value = xpc_uint64_get_value(a1);
    v13 = xpc_uint64_get_value(a1);
    result = value;
    if (value == v13)
    {
      return result;
    }

    v14 = sub_248124728();
    swift_allocError();
    v16 = v15;
    swift_beginAccess();
    v17 = *(v1 + 16);

    sub_2481246E8();

    xpc_uint64_get_value(a1);
    v18 = sub_248124938();
    MEMORY[0x24C1C6C90](v18);

    MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
    MEMORY[0x24C1C6C90](1953384789, 0xE400000000000000);
    MEMORY[0x24C1C6C90](46, 0xE100000000000000);
    sub_248124718();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
  }

  else
  {
    swift_beginAccess();
    v5 = *(v1 + 16);
    v6 = sub_248124728();
    swift_allocError();
    v8 = v7;

    sub_2481246E8();

    v9 = sub_24811D2E0(a1);
    MEMORY[0x24C1C6C90](v9);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v8 = MEMORY[0x277D83E88];
    sub_248124718();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
  }

  return swift_willThrow();
}

uint64_t sub_24811E978(void *a1)
{
  v3 = MEMORY[0x24C1C7CF0]();
  v4 = sub_248124318();
  if (v3 == v4)
  {
    value = 0;
    return value | ((v3 == v4) << 8);
  }

  v5 = MEMORY[0x24C1C7CF0](a1);
  if (v5 == sub_248124378())
  {
    value = xpc_uint64_get_value(a1);
    if (xpc_uint64_get_value(a1) != value)
    {
      v14 = sub_248124728();
      swift_allocError();
      v16 = v15;
      swift_beginAccess();
      v17 = *(v1 + 16);

      sub_2481246E8();

      xpc_uint64_get_value(a1);
      v18 = sub_248124938();
      MEMORY[0x24C1C6C90](v18);

      MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
      MEMORY[0x24C1C6C90](0x38746E4955, 0xE500000000000000);
      MEMORY[0x24C1C6C90](46, 0xE100000000000000);
      sub_248124718();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
      return swift_willThrow();
    }

    return value | ((v3 == v4) << 8);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = sub_248124728();
  swift_allocError();
  v9 = v8;

  sub_2481246E8();

  v10 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v10);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
  *v9 = MEMORY[0x277D84B78];
  sub_248124718();
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
  return swift_willThrow();
}

uint64_t sub_24811ECB0(void *a1)
{
  v3 = MEMORY[0x24C1C7CF0]();
  v4 = sub_248124318();
  if (v3 == v4)
  {
    value = 0;
    return value | ((v3 == v4) << 16);
  }

  v5 = MEMORY[0x24C1C7CF0](a1);
  if (v5 == sub_248124378())
  {
    value = xpc_uint64_get_value(a1);
    if (xpc_uint64_get_value(a1) != value)
    {
      v14 = sub_248124728();
      swift_allocError();
      v16 = v15;
      swift_beginAccess();
      v17 = *(v1 + 16);

      sub_2481246E8();

      xpc_uint64_get_value(a1);
      v18 = sub_248124938();
      MEMORY[0x24C1C6C90](v18);

      MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
      MEMORY[0x24C1C6C90](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x24C1C6C90](46, 0xE100000000000000);
      sub_248124718();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
      return swift_willThrow();
    }

    return value | ((v3 == v4) << 16);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = sub_248124728();
  swift_allocError();
  v9 = v8;

  sub_2481246E8();

  v10 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v10);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
  *v9 = MEMORY[0x277D84C58];
  sub_248124718();
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
  return swift_willThrow();
}

unint64_t sub_24811EFE8(void *a1)
{
  v3 = MEMORY[0x24C1C7CF0]();
  v4 = sub_248124318();
  if (v3 == v4)
  {
    value = 0;
    return value | ((v3 == v4) << 32);
  }

  v5 = MEMORY[0x24C1C7CF0](a1);
  if (v5 == sub_248124378())
  {
    value = xpc_uint64_get_value(a1);
    if (xpc_uint64_get_value(a1) != value)
    {
      v14 = sub_248124728();
      swift_allocError();
      v16 = v15;
      swift_beginAccess();
      v17 = *(v1 + 16);

      sub_2481246E8();

      xpc_uint64_get_value(a1);
      v18 = sub_248124938();
      MEMORY[0x24C1C6C90](v18);

      MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
      MEMORY[0x24C1C6C90](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x24C1C6C90](46, 0xE100000000000000);
      sub_248124718();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
      return swift_willThrow();
    }

    return value | ((v3 == v4) << 32);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = sub_248124728();
  swift_allocError();
  v9 = v8;

  sub_2481246E8();

  v10 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v10);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
  *v9 = MEMORY[0x277D84CC0];
  sub_248124718();
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
  return swift_willThrow();
}

uint64_t sub_24811F328(void *a1)
{
  v3 = MEMORY[0x24C1C7CF0]();
  if (v3 == sub_248124318())
  {
    return 0;
  }

  v4 = MEMORY[0x24C1C7CF0](a1);
  if (v4 == sub_248124378())
  {
    value = xpc_uint64_get_value(a1);
    v13 = xpc_uint64_get_value(a1);
    result = value;
    if (value == v13)
    {
      return result;
    }

    v14 = sub_248124728();
    swift_allocError();
    v16 = v15;
    swift_beginAccess();
    v17 = *(v1 + 16);

    sub_2481246E8();

    xpc_uint64_get_value(a1);
    v18 = sub_248124938();
    MEMORY[0x24C1C6C90](v18);

    MEMORY[0x24C1C6C90](0xD000000000000011, 0x80000002481295C0);
    MEMORY[0x24C1C6C90](0x3436746E4955, 0xE600000000000000);
    MEMORY[0x24C1C6C90](46, 0xE100000000000000);
    sub_248124718();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
  }

  else
  {
    swift_beginAccess();
    v5 = *(v1 + 16);
    v6 = sub_248124728();
    swift_allocError();
    v8 = v7;

    sub_2481246E8();

    v9 = sub_24811D2E0(a1);
    MEMORY[0x24C1C6C90](v9);

    MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v8 = MEMORY[0x277D84D38];
    sub_248124718();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
  }

  return swift_willThrow();
}

unint64_t sub_24811F660(void *a1)
{
  v3 = MEMORY[0x24C1C7CF0]();
  v4 = sub_248124318();
  if (v3 == v4)
  {
    v13 = 0;
  }

  else
  {
    v5 = MEMORY[0x24C1C7CF0](a1);
    if (v5 != sub_248124358())
    {
      swift_beginAccess();
      v6 = *(v1 + 16);
      v7 = sub_248124728();
      swift_allocError();
      v9 = v8;

      sub_2481246E8();

      v10 = sub_24811D2E0(a1);
      MEMORY[0x24C1C6C90](v10);

      MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v9 = MEMORY[0x277D83A90];
      sub_248124718();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
      return swift_willThrow();
    }

    *&v14 = xpc_double_get_value(a1);
    v13 = v14;
  }

  return v13 | ((v3 == v4) << 32);
}

uint64_t sub_24811F840(void *a1)
{
  v3 = MEMORY[0x24C1C7CF0]();
  if (v3 == sub_248124318())
  {
    return 0;
  }

  v4 = MEMORY[0x24C1C7CF0](a1);
  if (v4 == sub_248124358())
  {
    return xpc_double_get_value(a1);
  }

  swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = sub_248124728();
  swift_allocError();
  v8 = v7;

  sub_2481246E8();

  v9 = sub_24811D2E0(a1);
  MEMORY[0x24C1C6C90](v9);

  MEMORY[0x24C1C6C90](0x64616574736E6920, 0xE90000000000002ELL);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
  *v8 = MEMORY[0x277D839F8];
  sub_248124718();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
  return swift_willThrow();
}

uint64_t sub_24811FA10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881B0, &qword_248126138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24811FA78()
{
  result = qword_27EE881C0;
  if (!qword_27EE881C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE881C0);
  }

  return result;
}

uint64_t sub_24811FAFC(void (*a1)(void), uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  a1(v3[2]);
  v5 = v3[3];
  swift_unknownObjectRelease();
  v6 = v3[4];

  return a3(v3, a2, 7);
}

uint64_t sub_24811FB84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _XPCDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24811FBC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24811FC00(uint64_t *a1, int a2)
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

uint64_t sub_24811FC48(uint64_t result, int a2, int a3)
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

uint64_t sub_24811FC98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_24811FCD0()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v15 = sub_248124728();
    swift_allocError();
    v17 = v16;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v17 = MEMORY[0x277D839B0];
    v19 = *v0;
    v20 = *v2 + 16;
    swift_beginAccess();
    v21 = *(v19 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v40[1] = 0xE600000000000000;
    v40[14] = v4;

    v23 = sub_248124938();
    MEMORY[0x24C1C6C90](v23);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v24 = swift_allocObject();
    *(inited + 32) = v24;
    *(v24 + 16) = 0x207865646E49;
    *(v24 + 24) = 0xE600000000000000;
    *(v24 + 32) = v4;
    *(v24 + 40) = 0;
    v40[0] = v21;
    v7 = v40;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v37 = 0x207865646E49;
    *(&v37 + 1) = 0xE600000000000000;
    v40[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, *(v7 + 2) + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v38 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v39 = v11;
    v12 = swift_allocObject();
    *&v37 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    *(v7 + 2) = v10 + 1;
    sub_248112238(&v37, v7 + 40 * v10 + 32);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    LOBYTE(v7) = v5;
    v14 = sub_24811D46C(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v7) = v14;
      v36 = v11;
      swift_unknownObjectRelease();
      if (v7 != 2)
      {
        v2[3] = v4 + 1;
        sub_248116794(v2);
        return v7 & 1;
      }

      v35 = sub_248124728();
      swift_allocError();
      v26 = v25;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v26 = MEMORY[0x277D839B0];
      v27 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_2481262D0;
      *&v37 = 0x207865646E49;
      *(&v37 + 1) = 0xE600000000000000;
      v40[0] = v4;

      v29 = sub_248124938();
      MEMORY[0x24C1C6C90](v29);

      v31 = *(&v37 + 1);
      v30 = v37;
      *(v28 + 56) = &type metadata for XPCCodingKey;
      *(v28 + 64) = v36;
      v32 = swift_allocObject();
      *(v28 + 32) = v32;
      *(v32 + 16) = __PAIR128__(v31, v30);
      *(v32 + 32) = v4;
      *(v32 + 40) = 0;
      *&v37 = v27;
      v7 = &v37;
      sub_24811D108(v28);
      sub_248124718();
      (*(*(v35 - 8) + 104))(v26, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_248116794(v2);
  }

  return v7 & 1;
}

__int128 *sub_2481201F8()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_248124728();
    swift_allocError();
    v19 = v18;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v19 = MEMORY[0x277D83B88];
    v20 = *v0;
    v21 = *v2 + 16;
    swift_beginAccess();
    v22 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v42[1] = 0xE600000000000000;
    v42[14] = v4;

    v24 = sub_248124938();
    MEMORY[0x24C1C6C90](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    v42[0] = v22;
    v14 = v42;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v39 = 0x207865646E49;
    *(&v39 + 1) = 0xE600000000000000;
    v42[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v40 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v41 = v11;
    v12 = swift_allocObject();
    *&v39 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v39, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811D62C(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v26 = v16;
      swift_unknownObjectRelease();
      if ((v26 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_248116794(v2);
        return v14;
      }

      v38 = sub_248124728();
      swift_allocError();
      v28 = v27;
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v28 = MEMORY[0x277D83B88];
      v29 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_2481262D0;
      *&v39 = 0x207865646E49;
      *(&v39 + 1) = 0xE600000000000000;
      v42[0] = v4;

      v31 = sub_248124938();
      MEMORY[0x24C1C6C90](v31);

      v33 = *(&v39 + 1);
      v32 = v39;
      *(v30 + 56) = &type metadata for XPCCodingKey;
      *(v30 + 64) = v11;
      v34 = swift_allocObject();
      *(v30 + 32) = v34;
      *(v34 + 16) = __PAIR128__(v33, v32);
      *(v34 + 32) = v4;
      *(v34 + 40) = 0;
      *&v39 = v29;
      v14 = &v39;
      sub_24811D108(v30);
      sub_248124718();
      (*(*(v38 - 8) + 104))(v28, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_248116794(v2);
  }

  return v14;
}

__int128 *sub_248120714()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v18 = MEMORY[0x277D84900];
    v20 = *v0;
    v21 = *v2 + 16;
    swift_beginAccess();
    v22 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v41[1] = 0xE600000000000000;
    v41[14] = v4;

    v24 = sub_248124938();
    MEMORY[0x24C1C6C90](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    v41[0] = v22;
    v14 = v41;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v38 = 0x207865646E49;
    *(&v38 + 1) = 0xE600000000000000;
    v41[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v39 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v40 = v11;
    v12 = swift_allocObject();
    *&v38 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v38, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811D960(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_248116794(v2);
      return v14;
    }

    v14 = v15;
    v37 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100) != 0)
    {
      v36 = sub_248124728();
      swift_allocError();
      v27 = v26;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v27 = MEMORY[0x277D84900];
      v28 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2481262D0;
      *&v38 = 0x207865646E49;
      *(&v38 + 1) = 0xE600000000000000;
      v41[0] = v4;

      v30 = sub_248124938();
      MEMORY[0x24C1C6C90](v30);

      v32 = *(&v38 + 1);
      v31 = v38;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v37;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v38 = v28;
      v14 = &v38;
      sub_24811D108(v29);
      sub_248124718();
      (*(*(v36 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_248116794(v2);
  }

  return v14;
}

__int128 *sub_248120C34()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v18 = MEMORY[0x277D84958];
    v20 = *v0;
    v21 = *v2 + 16;
    swift_beginAccess();
    v22 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v41[1] = 0xE600000000000000;
    v41[14] = v4;

    v24 = sub_248124938();
    MEMORY[0x24C1C6C90](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    v41[0] = v22;
    v14 = v41;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v38 = 0x207865646E49;
    *(&v38 + 1) = 0xE600000000000000;
    v41[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v39 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v40 = v11;
    v12 = swift_allocObject();
    *&v38 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v38, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811DC94(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_248116794(v2);
      return v14;
    }

    v14 = v15;
    v37 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x10000) != 0)
    {
      v36 = sub_248124728();
      swift_allocError();
      v27 = v26;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v27 = MEMORY[0x277D84958];
      v28 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2481262D0;
      *&v38 = 0x207865646E49;
      *(&v38 + 1) = 0xE600000000000000;
      v41[0] = v4;

      v30 = sub_248124938();
      MEMORY[0x24C1C6C90](v30);

      v32 = *(&v38 + 1);
      v31 = v38;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v37;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v38 = v28;
      v14 = &v38;
      sub_24811D108(v29);
      sub_248124718();
      (*(*(v36 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_248116794(v2);
  }

  return v14;
}

unint64_t sub_248121154()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v18 = MEMORY[0x277D849A8];
    v20 = *v0;
    v21 = *v2 + 16;
    swift_beginAccess();
    v22 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v41[1] = 0xE600000000000000;
    v41[14] = v4;

    v24 = sub_248124938();
    MEMORY[0x24C1C6C90](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    v41[0] = v22;
    v14 = v41;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v38 = 0x207865646E49;
    *(&v38 + 1) = 0xE600000000000000;
    v41[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v39 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v40 = v11;
    v12 = swift_allocObject();
    *&v38 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v38, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811DFCC(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_248116794(v2);
      return v14;
    }

    v14 = v15;
    v37 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100000000) != 0)
    {
      v36 = sub_248124728();
      swift_allocError();
      v27 = v26;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v27 = MEMORY[0x277D849A8];
      v28 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2481262D0;
      *&v38 = 0x207865646E49;
      *(&v38 + 1) = 0xE600000000000000;
      v41[0] = v4;

      v30 = sub_248124938();
      MEMORY[0x24C1C6C90](v30);

      v32 = *(&v38 + 1);
      v31 = v38;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v37;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v38 = v28;
      v14 = &v38;
      sub_24811D108(v29);
      sub_248124718();
      (*(*(v36 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_248116794(v2);
  }

  return v14;
}

__int128 *sub_248121674()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_248124728();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v19 = MEMORY[0x277D84A28];
    v21 = *v0;
    v22 = *v2 + 16;
    swift_beginAccess();
    v23 = *(v21 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v43[1] = 0xE600000000000000;
    v43[14] = v4;

    v25 = sub_248124938();
    MEMORY[0x24C1C6C90](v25);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v26 = swift_allocObject();
    *(inited + 32) = v26;
    *(v26 + 16) = 0x207865646E49;
    *(v26 + 24) = 0xE600000000000000;
    *(v26 + 32) = v4;
    *(v26 + 40) = 0;
    v43[0] = v23;
    v14 = v43;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v40 = 0x207865646E49;
    *(&v40 + 1) = 0xE600000000000000;
    v43[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v41 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v42 = v11;
    v12 = swift_allocObject();
    *&v40 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v40, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811E30C(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v27 = v16;
      v39 = v11;
      swift_unknownObjectRelease();
      if ((v27 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_248116794(v2);
        return v14;
      }

      v38 = sub_248124728();
      swift_allocError();
      v29 = v28;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v29 = MEMORY[0x277D84A28];
      v30 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_2481262D0;
      *&v40 = 0x207865646E49;
      *(&v40 + 1) = 0xE600000000000000;
      v43[0] = v4;

      v32 = sub_248124938();
      MEMORY[0x24C1C6C90](v32);

      v34 = *(&v40 + 1);
      v33 = v40;
      *(v31 + 56) = &type metadata for XPCCodingKey;
      *(v31 + 64) = v39;
      v35 = swift_allocObject();
      *(v31 + 32) = v35;
      *(v35 + 16) = __PAIR128__(v34, v33);
      *(v35 + 32) = v4;
      *(v35 + 40) = 0;
      *&v40 = v30;
      v14 = &v40;
      sub_24811D108(v31);
      sub_248124718();
      (*(*(v38 - 8) + 104))(v29, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_248116794(v2);
  }

  return v14;
}

__int128 *sub_248121B98()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_248124728();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v19 = MEMORY[0x277D83E88];
    v21 = *v0;
    v22 = *v2 + 16;
    swift_beginAccess();
    v23 = *(v21 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v43[1] = 0xE600000000000000;
    v43[14] = v4;

    v25 = sub_248124938();
    MEMORY[0x24C1C6C90](v25);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v26 = swift_allocObject();
    *(inited + 32) = v26;
    *(v26 + 16) = 0x207865646E49;
    *(v26 + 24) = 0xE600000000000000;
    *(v26 + 32) = v4;
    *(v26 + 40) = 0;
    v43[0] = v23;
    v14 = v43;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v40 = 0x207865646E49;
    *(&v40 + 1) = 0xE600000000000000;
    v43[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v41 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v42 = v11;
    v12 = swift_allocObject();
    *&v40 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v40, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811E644(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v27 = v16;
      v39 = v11;
      swift_unknownObjectRelease();
      if ((v27 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_248116794(v2);
        return v14;
      }

      v38 = sub_248124728();
      swift_allocError();
      v29 = v28;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v29 = MEMORY[0x277D83E88];
      v30 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_2481262D0;
      *&v40 = 0x207865646E49;
      *(&v40 + 1) = 0xE600000000000000;
      v43[0] = v4;

      v32 = sub_248124938();
      MEMORY[0x24C1C6C90](v32);

      v34 = *(&v40 + 1);
      v33 = v40;
      *(v31 + 56) = &type metadata for XPCCodingKey;
      *(v31 + 64) = v39;
      v35 = swift_allocObject();
      *(v31 + 32) = v35;
      *(v35 + 16) = __PAIR128__(v34, v33);
      *(v35 + 32) = v4;
      *(v35 + 40) = 0;
      *&v40 = v30;
      v14 = &v40;
      sub_24811D108(v31);
      sub_248124718();
      (*(*(v38 - 8) + 104))(v29, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_248116794(v2);
  }

  return v14;
}

__int128 *sub_2481220BC()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v18 = MEMORY[0x277D84B78];
    v20 = *v0;
    v21 = *v2 + 16;
    swift_beginAccess();
    v22 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v41[1] = 0xE600000000000000;
    v41[14] = v4;

    v24 = sub_248124938();
    MEMORY[0x24C1C6C90](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    v41[0] = v22;
    v14 = v41;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v38 = 0x207865646E49;
    *(&v38 + 1) = 0xE600000000000000;
    v41[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v39 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v40 = v11;
    v12 = swift_allocObject();
    *&v38 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v38, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811E978(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_248116794(v2);
      return v14;
    }

    v14 = v15;
    v37 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100) != 0)
    {
      v36 = sub_248124728();
      swift_allocError();
      v27 = v26;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v27 = MEMORY[0x277D84B78];
      v28 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2481262D0;
      *&v38 = 0x207865646E49;
      *(&v38 + 1) = 0xE600000000000000;
      v41[0] = v4;

      v30 = sub_248124938();
      MEMORY[0x24C1C6C90](v30);

      v32 = *(&v38 + 1);
      v31 = v38;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v37;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v38 = v28;
      v14 = &v38;
      sub_24811D108(v29);
      sub_248124718();
      (*(*(v36 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_248116794(v2);
  }

  return v14;
}

__int128 *sub_2481225DC()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v18 = MEMORY[0x277D84C58];
    v20 = *v0;
    v21 = *v2 + 16;
    swift_beginAccess();
    v22 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v41[1] = 0xE600000000000000;
    v41[14] = v4;

    v24 = sub_248124938();
    MEMORY[0x24C1C6C90](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    v41[0] = v22;
    v14 = v41;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v38 = 0x207865646E49;
    *(&v38 + 1) = 0xE600000000000000;
    v41[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v39 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v40 = v11;
    v12 = swift_allocObject();
    *&v38 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v38, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811ECB0(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_248116794(v2);
      return v14;
    }

    v14 = v15;
    v37 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x10000) != 0)
    {
      v36 = sub_248124728();
      swift_allocError();
      v27 = v26;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v27 = MEMORY[0x277D84C58];
      v28 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2481262D0;
      *&v38 = 0x207865646E49;
      *(&v38 + 1) = 0xE600000000000000;
      v41[0] = v4;

      v30 = sub_248124938();
      MEMORY[0x24C1C6C90](v30);

      v32 = *(&v38 + 1);
      v31 = v38;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v37;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v38 = v28;
      v14 = &v38;
      sub_24811D108(v29);
      sub_248124718();
      (*(*(v36 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_248116794(v2);
  }

  return v14;
}

unint64_t sub_248122AFC()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v18 = MEMORY[0x277D84CC0];
    v20 = *v0;
    v21 = *v2 + 16;
    swift_beginAccess();
    v22 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v41[1] = 0xE600000000000000;
    v41[14] = v4;

    v24 = sub_248124938();
    MEMORY[0x24C1C6C90](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    v41[0] = v22;
    v14 = v41;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v38 = 0x207865646E49;
    *(&v38 + 1) = 0xE600000000000000;
    v41[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v39 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v40 = v11;
    v12 = swift_allocObject();
    *&v38 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v38, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811EFE8(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_248116794(v2);
      return v14;
    }

    v14 = v15;
    v37 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100000000) != 0)
    {
      v36 = sub_248124728();
      swift_allocError();
      v27 = v26;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v27 = MEMORY[0x277D84CC0];
      v28 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2481262D0;
      *&v38 = 0x207865646E49;
      *(&v38 + 1) = 0xE600000000000000;
      v41[0] = v4;

      v30 = sub_248124938();
      MEMORY[0x24C1C6C90](v30);

      v32 = *(&v38 + 1);
      v31 = v38;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v37;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v38 = v28;
      v14 = &v38;
      sub_24811D108(v29);
      sub_248124718();
      (*(*(v36 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_248116794(v2);
  }

  return v14;
}

__int128 *sub_24812301C()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_248124728();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v19 = MEMORY[0x277D84D38];
    v21 = *v0;
    v22 = *v2 + 16;
    swift_beginAccess();
    v23 = *(v21 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v43[1] = 0xE600000000000000;
    v43[14] = v4;

    v25 = sub_248124938();
    MEMORY[0x24C1C6C90](v25);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v26 = swift_allocObject();
    *(inited + 32) = v26;
    *(v26 + 16) = 0x207865646E49;
    *(v26 + 24) = 0xE600000000000000;
    *(v26 + 32) = v4;
    *(v26 + 40) = 0;
    v43[0] = v23;
    v14 = v43;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v40 = 0x207865646E49;
    *(&v40 + 1) = 0xE600000000000000;
    v43[0] = v4;
    v6 = sub_248124938();
    MEMORY[0x24C1C6C90](v6);

    swift_beginAccess();
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_24811CFC0(0, v7[2] + 1, 1, v7);
      *(v5 + 16) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_24811CFC0((v9 > 1), v10 + 1, 1, v7);
    }

    v41 = &type metadata for XPCCodingKey;
    v11 = sub_24810E568();
    v42 = v11;
    v12 = swift_allocObject();
    *&v40 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_248112238(&v40, &v7[5 * v10 + 4]);
    *(v5 + 16) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_24811F328(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v27 = v16;
      v39 = v11;
      swift_unknownObjectRelease();
      if ((v27 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_248116794(v2);
        return v14;
      }

      v38 = sub_248124728();
      swift_allocError();
      v29 = v28;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v29 = MEMORY[0x277D84D38];
      v30 = *(v5 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_2481262D0;
      *&v40 = 0x207865646E49;
      *(&v40 + 1) = 0xE600000000000000;
      v43[0] = v4;

      v32 = sub_248124938();
      MEMORY[0x24C1C6C90](v32);

      v34 = *(&v40 + 1);
      v33 = v40;
      *(v31 + 56) = &type metadata for XPCCodingKey;
      *(v31 + 64) = v39;
      v35 = swift_allocObject();
      *(v31 + 32) = v35;
      *(v35 + 16) = __PAIR128__(v34, v33);
      *(v35 + 32) = v4;
      *(v35 + 40) = 0;
      *&v40 = v30;
      v14 = &v40;
      sub_24811D108(v31);
      sub_248124718();
      (*(*(v38 - 8) + 104))(v29, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_248116794(v2);
  }

  return v14;
}

float sub_248123540()
{
  v3 = v0;
  v4 = v0[1];
  v5 = v0[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v16 = sub_248124728();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v18 = MEMORY[0x277D83A90];
    v20 = *v0;
    v21 = *v3 + 16;
    swift_beginAccess();
    v22 = *(v20 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v41 = 0xE600000000000000;
    v42 = v5;

    v24 = sub_248124938();
    MEMORY[0x24C1C6C90](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v5;
    *(v25 + 40) = 0;
    v40 = v22;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v6 = *v0;
    *&v37 = 0x207865646E49;
    *(&v37 + 1) = 0xE600000000000000;
    v40 = v5;
    v7 = sub_248124938();
    MEMORY[0x24C1C6C90](v7);

    swift_beginAccess();
    v8 = *(v6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_24811CFC0(0, v8[2] + 1, 1, v8);
      *(v6 + 16) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_24811CFC0((v10 > 1), v11 + 1, 1, v8);
    }

    v38 = &type metadata for XPCCodingKey;
    v12 = sub_24810E568();
    v39 = v12;
    v13 = swift_allocObject();
    *&v37 = v13;
    *(v13 + 16) = 0x207865646E49;
    *(v13 + 24) = 0xE600000000000000;
    *(v13 + 32) = v5;
    *(v13 + 40) = 0;
    v8[2] = v11 + 1;
    sub_248112238(&v37, &v8[5 * v11 + 4]);
    *(v6 + 16) = v8;
    swift_endAccess();
    v14 = xpc_array_get_value(v4, v5);
    v15 = sub_24811F660(v14);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_248116794(v3);
      return v2;
    }

    v26 = v15;
    swift_unknownObjectRelease();
    if ((v26 & 0x100000000) != 0)
    {
      v36 = sub_248124728();
      swift_allocError();
      v28 = v27;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v28 = MEMORY[0x277D83A90];
      v29 = *(v6 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_2481262D0;
      *&v37 = 0x207865646E49;
      *(&v37 + 1) = 0xE600000000000000;
      v40 = v5;

      v31 = sub_248124938();
      MEMORY[0x24C1C6C90](v31);

      v32 = v37;
      *(v30 + 56) = &type metadata for XPCCodingKey;
      *(v30 + 64) = v12;
      v33 = swift_allocObject();
      *(v30 + 32) = v33;
      *(v33 + 16) = v32;
      *(v33 + 32) = v5;
      *(v33 + 40) = 0;
      *&v37 = v29;
      sub_24811D108(v30);
      sub_248124718();
      (*(*(v36 - 8) + 104))(v28, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2 = *&v26;
    v3[3] = v5 + 1;
    sub_248116794(v3);
  }

  return v2;
}

double sub_248123A6C()
{
  v3 = v0;
  v4 = v0[1];
  v5 = v0[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v17 = sub_248124728();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
    *v19 = MEMORY[0x277D839F8];
    v21 = *v0;
    v22 = *v3 + 16;
    swift_beginAccess();
    v23 = *(v21 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2481262D0;
    v44 = 0xE600000000000000;
    v45 = v5;

    v25 = sub_248124938();
    MEMORY[0x24C1C6C90](v25);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_24810E568();
    v26 = swift_allocObject();
    *(inited + 32) = v26;
    *(v26 + 16) = 0x207865646E49;
    *(v26 + 24) = 0xE600000000000000;
    *(v26 + 32) = v5;
    *(v26 + 40) = 0;
    v43 = v23;
    sub_24811D108(inited);
    sub_248124718();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v6 = *v0;
    *&v40 = 0x207865646E49;
    *(&v40 + 1) = 0xE600000000000000;
    v43 = v5;
    v7 = sub_248124938();
    MEMORY[0x24C1C6C90](v7);

    swift_beginAccess();
    v8 = *(v6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_24811CFC0(0, v8[2] + 1, 1, v8);
      *(v6 + 16) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_24811CFC0((v10 > 1), v11 + 1, 1, v8);
    }

    v41 = &type metadata for XPCCodingKey;
    v12 = sub_24810E568();
    v42 = v12;
    v13 = swift_allocObject();
    *&v40 = v13;
    *(v13 + 16) = 0x207865646E49;
    *(v13 + 24) = 0xE600000000000000;
    *(v13 + 32) = v5;
    *(v13 + 40) = 0;
    v8[2] = v11 + 1;
    sub_248112238(&v40, &v8[5 * v11 + 4]);
    *(v6 + 16) = v8;
    swift_endAccess();
    v14 = xpc_array_get_value(v4, v5);
    v15 = sub_24811F840(v14);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = v16;
      v39 = v12;
      v28 = *&v15;
      swift_unknownObjectRelease();
      if ((v27 & 1) == 0)
      {
        v2 = v28;
        v3[3] = v5 + 1;
        sub_248116794(v3);
        return v2;
      }

      v38 = sub_248124728();
      swift_allocError();
      v30 = v29;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE881A0, &unk_2481274B0) + 48);
      *v30 = MEMORY[0x277D839F8];
      v31 = *(v6 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_2481262D0;
      *&v40 = 0x207865646E49;
      *(&v40 + 1) = 0xE600000000000000;
      v43 = v5;

      v33 = sub_248124938();
      MEMORY[0x24C1C6C90](v33);

      v34 = v40;
      *(v32 + 56) = &type metadata for XPCCodingKey;
      *(v32 + 64) = v39;
      v35 = swift_allocObject();
      *(v32 + 32) = v35;
      *(v35 + 16) = v34;
      *(v35 + 32) = v5;
      *(v35 + 40) = 0;
      *&v40 = v31;
      sub_24811D108(v32);
      sub_248124718();
      (*(*(v38 - 8) + 104))(v30, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_248116794(v3);
  }

  return v2;
}

uint64_t sub_248123FC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}