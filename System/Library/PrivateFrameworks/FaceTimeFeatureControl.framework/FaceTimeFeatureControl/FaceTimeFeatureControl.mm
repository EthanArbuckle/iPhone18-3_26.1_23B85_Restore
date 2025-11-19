uint64_t sub_24A9B11B4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

BOOL static EnablementStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t sub_24A9B1278()
{
  v1 = *v0;
  sub_24A9B8EE8();
  MEMORY[0x24C221D30](v1);
  return sub_24A9B8F08();
}

uint64_t sub_24A9B12C0()
{
  v1 = *v0;
  sub_24A9B8EE8();
  MEMORY[0x24C221D30](v1);
  return sub_24A9B8F08();
}

uint64_t sub_24A9B1304()
{
  if (*v0)
  {
    result = 0x6C62616E45746F6ELL;
  }

  else
  {
    result = 0x64656C62616E65;
  }

  *v0;
  return result;
}

uint64_t sub_24A9B1344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_24A9B8ED8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C62616E45746F6ELL && a2 == 0xEA00000000006465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A9B8ED8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24A9B1440(uint64_t a1)
{
  v2 = sub_24A9B2208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B147C(uint64_t a1)
{
  v2 = sub_24A9B2208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9B14C4(uint64_t a1)
{
  v2 = sub_24A9B2304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B1500(uint64_t a1)
{
  v2 = sub_24A9B2304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9B1544()
{
  sub_24A9B8EE8();
  MEMORY[0x24C221D30](0);
  return sub_24A9B8F08();
}

uint64_t sub_24A9B1588()
{
  sub_24A9B8EE8();
  MEMORY[0x24C221D30](0);
  return sub_24A9B8F08();
}

uint64_t sub_24A9B15D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24A9B8ED8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24A9B1654(uint64_t a1)
{
  v2 = sub_24A9B225C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B1690(uint64_t a1)
{
  v2 = sub_24A9B225C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnablementStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F7E0, &qword_24A9B92C0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F7E8, &qword_24A9B92C8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F7F0, &qword_24A9B92D0);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A9B2208();
  sub_24A9B8F28();
  if (v15 == 2)
  {
    v25 = 0;
    sub_24A9B2304();
    sub_24A9B8EB8();
    (*(v20 + 8))(v9, v21);
  }

  else
  {
    v27 = 1;
    sub_24A9B225C();
    v18 = v22;
    sub_24A9B8EB8();
    v26 = v15 & 1;
    sub_24A9B22B0();
    v19 = v24;
    sub_24A9B8EC8();
    (*(v23 + 8))(v18, v19);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t EnablementStatus.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x24C221D30](1);
    v2 = v1 & 1;
  }

  return MEMORY[0x24C221D30](v2);
}

uint64_t EnablementStatus.hashValue.getter()
{
  v1 = *v0;
  sub_24A9B8EE8();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x24C221D30](1);
    v2 = v1 & 1;
  }

  MEMORY[0x24C221D30](v2);
  return sub_24A9B8F08();
}

uint64_t EnablementStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F818, &qword_24A9B92D8);
  v29 = *(v27 - 8);
  v3 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F820, &qword_24A9B92E0);
  v28 = *(v6 - 8);
  v7 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F828, &qword_24A9B92E8);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v27 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24A9B2208();
  v17 = v31;
  sub_24A9B8F18();
  if (!v17)
  {
    v31 = v6;
    v18 = v11;
    v19 = v30;
    v20 = sub_24A9B8EA8();
    if (*(v20 + 16) == 1)
    {
      if (*(v20 + 32))
      {
        v35 = 1;
        sub_24A9B225C();
        sub_24A9B8E78();
        sub_24A9B23A4();
        v26 = v27;
        sub_24A9B8E98();
        (*(v29 + 8))(v5, v26);
        (*(v18 + 8))(v14, v10);
        swift_unknownObjectRelease();
        *v19 = v34;
      }

      else
      {
        v33 = 0;
        sub_24A9B2304();
        sub_24A9B8E78();
        (*(v28 + 8))(v9, v31);
        (*(v11 + 8))(v14, v10);
        swift_unknownObjectRelease();
        *v19 = 2;
      }
    }

    else
    {
      v21 = sub_24A9B8E58();
      swift_allocError();
      v23 = v22;
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F830, &qword_24A9B92F0) + 48);
      *v23 = &type metadata for EnablementStatus;
      sub_24A9B8E88();
      sub_24A9B8E48();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
      swift_willThrow();
      (*(v18 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_24A9B1F3C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A9B1F70()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_24A9B1FA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_24A9B1FD0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A9B2004()
{
  v1 = *v0;
  sub_24A9B8EE8();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x24C221D30](1);
    v2 = v1 & 1;
  }

  MEMORY[0x24C221D30](v2);
  return sub_24A9B8F08();
}

uint64_t sub_24A9B2064()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x24C221D30](1);
    v2 = v1 & 1;
  }

  return MEMORY[0x24C221D30](v2);
}

uint64_t sub_24A9B20AC()
{
  v1 = *v0;
  sub_24A9B8EE8();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x24C221D30](1);
    v2 = v1 & 1;
  }

  MEMORY[0x24C221D30](v2);
  return sub_24A9B8F08();
}

BOOL sub_24A9B213C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24A9B2208()
{
  result = qword_27EF7F7F8;
  if (!qword_27EF7F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F7F8);
  }

  return result;
}

unint64_t sub_24A9B225C()
{
  result = qword_27EF7F800;
  if (!qword_27EF7F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F800);
  }

  return result;
}

unint64_t sub_24A9B22B0()
{
  result = qword_27EF7F808;
  if (!qword_27EF7F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F808);
  }

  return result;
}

unint64_t sub_24A9B2304()
{
  result = qword_27EF7F810;
  if (!qword_27EF7F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F810);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_24A9B23A4()
{
  result = qword_27EF7F838;
  if (!qword_27EF7F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F838);
  }

  return result;
}

unint64_t sub_24A9B23FC()
{
  result = qword_27EF7F840;
  if (!qword_27EF7F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F840);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnablementStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
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

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EnablementStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24A9B25B4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24A9B25CC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnablementStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnablementStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnablementStatus.NotEnabledCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EnablementStatus.NotEnabledCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_24A9B2838()
{
  result = qword_27EF7F848;
  if (!qword_27EF7F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F848);
  }

  return result;
}

unint64_t sub_24A9B2890()
{
  result = qword_27EF7F850;
  if (!qword_27EF7F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F850);
  }

  return result;
}

unint64_t sub_24A9B28E8()
{
  result = qword_27EF7F858;
  if (!qword_27EF7F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F858);
  }

  return result;
}

unint64_t sub_24A9B2940()
{
  result = qword_27EF7F860;
  if (!qword_27EF7F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F860);
  }

  return result;
}

unint64_t sub_24A9B2998()
{
  result = qword_27EF7F868;
  if (!qword_27EF7F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F868);
  }

  return result;
}

unint64_t sub_24A9B29F0()
{
  result = qword_27EF7F870;
  if (!qword_27EF7F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F870);
  }

  return result;
}

unint64_t sub_24A9B2A48()
{
  result = qword_27EF7F878;
  if (!qword_27EF7F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F878);
  }

  return result;
}

unint64_t sub_24A9B2AA0()
{
  result = qword_27EF7F880;
  if (!qword_27EF7F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F880);
  }

  return result;
}

uint64_t sub_24A9B2B0C()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 0x656279616DLL;
  v4 = 0x656C626967696C65;
  if (v1 != 3)
  {
    v4 = 0x6967696C45746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
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

uint64_t sub_24A9B2BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A9B4508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A9B2BE0(uint64_t a1)
{
  v2 = sub_24A9B33F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B2C1C(uint64_t a1)
{
  v2 = sub_24A9B33F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9B2C58(uint64_t a1)
{
  v2 = sub_24A9B3498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B2C94(uint64_t a1)
{
  v2 = sub_24A9B3498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9B2CD0(uint64_t a1)
{
  v2 = sub_24A9B3594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B2D0C(uint64_t a1)
{
  v2 = sub_24A9B3594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9B2D48(uint64_t a1)
{
  v2 = sub_24A9B34EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B2D84(uint64_t a1)
{
  v2 = sub_24A9B34EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9B2DC0(uint64_t a1)
{
  v2 = sub_24A9B3444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B2DFC(uint64_t a1)
{
  v2 = sub_24A9B3444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9B2E38(uint64_t a1)
{
  v2 = sub_24A9B3540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B2E74(uint64_t a1)
{
  v2 = sub_24A9B3540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeatureEligibility.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F888, &qword_24A9B9700);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F890, &qword_24A9B9708);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F898, &qword_24A9B9710);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F8A0, &qword_24A9B9718);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F8A8, &qword_24A9B9720);
  v49 = *(v16 - 8);
  v17 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F8B0, &qword_24A9B9728);
  v20 = *(v52 - 8);
  v21 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_24A9B33F0();
  sub_24A9B8F28();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_24A9B3540();
      v38 = v52;
      sub_24A9B8EB8();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_24A9B3594();
      v38 = v52;
      sub_24A9B8EB8();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_24A9B34EC();
      v29 = v40;
      v30 = v52;
      sub_24A9B8EB8();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_24A9B3498();
      v29 = v43;
      v30 = v52;
      sub_24A9B8EB8();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_24A9B3444();
      v29 = v46;
      v30 = v52;
      sub_24A9B8EB8();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

unint64_t sub_24A9B33F0()
{
  result = qword_27EF7F8B8;
  if (!qword_27EF7F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F8B8);
  }

  return result;
}

unint64_t sub_24A9B3444()
{
  result = qword_27EF7F8C0;
  if (!qword_27EF7F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F8C0);
  }

  return result;
}

unint64_t sub_24A9B3498()
{
  result = qword_27EF7F8C8;
  if (!qword_27EF7F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F8C8);
  }

  return result;
}

unint64_t sub_24A9B34EC()
{
  result = qword_27EF7F8D0;
  if (!qword_27EF7F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F8D0);
  }

  return result;
}

unint64_t sub_24A9B3540()
{
  result = qword_27EF7F8D8;
  if (!qword_27EF7F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F8D8);
  }

  return result;
}

unint64_t sub_24A9B3594()
{
  result = qword_27EF7F8E0;
  if (!qword_27EF7F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F8E0);
  }

  return result;
}

uint64_t FeatureEligibility.hashValue.getter()
{
  v1 = *v0;
  sub_24A9B8EE8();
  MEMORY[0x24C221D30](v1);
  return sub_24A9B8F08();
}

uint64_t FeatureEligibility.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F8E8, &qword_24A9B9730);
  v60 = *(v63 - 8);
  v3 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F8F0, &qword_24A9B9738);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v66 = &v53 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F8F8, &qword_24A9B9740);
  v56 = *(v59 - 8);
  v9 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v65 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F900, &qword_24A9B9748);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F908, &qword_24A9B9750);
  v55 = *(v15 - 8);
  v16 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F910, &unk_24A9B9758);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24A9B33F0();
  v26 = v69;
  sub_24A9B8F18();
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = v18;
  v53 = v15;
  v54 = 0;
  v29 = v65;
  v28 = v66;
  v69 = v20;
  v30 = v67;
  v31 = v19;
  v32 = sub_24A9B8EA8();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_24A9B1F3C();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_24A9B8E58();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F830, &qword_24A9B92F0) + 48);
    *v41 = &type metadata for FeatureEligibility;
    sub_24A9B8E88();
    sub_24A9B8E48();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v69 + 8))(v23, v19);
    goto LABEL_10;
  }

  v74 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v75 = 1;
      sub_24A9B3540();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_24A9B8E78();
      if (v52)
      {
        v48 = v69;
        goto LABEL_23;
      }

      (*(v57 + 8))(v51, v58);
      (*(v69 + 8))(v23, v19);
    }

    else
    {
      v75 = 0;
      sub_24A9B3594();
      v45 = v54;
      sub_24A9B8E78();
      if (v45)
      {
        (*(v69 + 8))(v23, v19);
        goto LABEL_10;
      }

      (*(v55 + 8))(v27, v53);
      (*(v69 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
    goto LABEL_30;
  }

  v35 = v30;
  if (v34 == 2)
  {
    v75 = 2;
    sub_24A9B34EC();
    v46 = v31;
    v47 = v54;
    sub_24A9B8E78();
    v48 = v69;
    if (!v47)
    {
      (*(v56 + 8))(v29, v59);
      (*(v48 + 8))(v23, v46);
LABEL_25:
      swift_unknownObjectRelease();
      v43 = v68;
      goto LABEL_30;
    }

LABEL_23:
    (*(v48 + 8))(v23, v46);
    goto LABEL_10;
  }

  v36 = v23;
  v37 = v69;
  if (v34 != 3)
  {
    v75 = 4;
    sub_24A9B3444();
    v49 = v64;
    v50 = v54;
    sub_24A9B8E78();
    if (v50)
    {
      (*(v37 + 8))(v36, v31);
      goto LABEL_10;
    }

    (*(v60 + 8))(v49, v63);
    (*(v37 + 8))(v36, v31);
    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
LABEL_30:
    *v35 = v74;
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v75 = 3;
  sub_24A9B3498();
  v38 = v54;
  sub_24A9B8E78();
  if (!v38)
  {
    (*(v62 + 8))(v28, v61);
    (*(v37 + 8))(v36, v31);
    goto LABEL_25;
  }

  (*(v37 + 8))(v36, v31);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v43 = v68;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

unint64_t sub_24A9B3E8C()
{
  result = qword_27EF7F918;
  if (!qword_27EF7F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F918);
  }

  return result;
}

uint64_t sub_24A9B3EF0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24A9B3F80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A9B4094()
{
  result = qword_27EF7F920;
  if (!qword_27EF7F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F920);
  }

  return result;
}

unint64_t sub_24A9B40EC()
{
  result = qword_27EF7F928;
  if (!qword_27EF7F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F928);
  }

  return result;
}

unint64_t sub_24A9B4144()
{
  result = qword_27EF7F930;
  if (!qword_27EF7F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F930);
  }

  return result;
}

unint64_t sub_24A9B419C()
{
  result = qword_27EF7F938;
  if (!qword_27EF7F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F938);
  }

  return result;
}

unint64_t sub_24A9B41F4()
{
  result = qword_27EF7F940;
  if (!qword_27EF7F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F940);
  }

  return result;
}

unint64_t sub_24A9B424C()
{
  result = qword_27EF7F948;
  if (!qword_27EF7F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F948);
  }

  return result;
}

unint64_t sub_24A9B42A4()
{
  result = qword_27EF7F950;
  if (!qword_27EF7F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F950);
  }

  return result;
}

unint64_t sub_24A9B42FC()
{
  result = qword_27EF7F958;
  if (!qword_27EF7F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F958);
  }

  return result;
}

unint64_t sub_24A9B4354()
{
  result = qword_27EF7F960;
  if (!qword_27EF7F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F960);
  }

  return result;
}

unint64_t sub_24A9B43AC()
{
  result = qword_27EF7F968;
  if (!qword_27EF7F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F968);
  }

  return result;
}

unint64_t sub_24A9B4404()
{
  result = qword_27EF7F970;
  if (!qword_27EF7F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F970);
  }

  return result;
}

unint64_t sub_24A9B445C()
{
  result = qword_27EF7F978;
  if (!qword_27EF7F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F978);
  }

  return result;
}

unint64_t sub_24A9B44B4()
{
  result = qword_27EF7F980;
  if (!qword_27EF7F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F980);
  }

  return result;
}

uint64_t sub_24A9B4508(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C61766E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_24A9B8ED8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (sub_24A9B8ED8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656279616DLL && a2 == 0xE500000000000000 || (sub_24A9B8ED8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C626967696C65 && a2 == 0xE800000000000000 || (sub_24A9B8ED8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6967696C45746F6ELL && a2 == 0xEB00000000656C62)
  {

    return 4;
  }

  else
  {
    v6 = sub_24A9B8ED8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24A9B47D0()
{
  v0 = sub_24A9B8DA8();
  __swift_allocate_value_buffer(v0, qword_280CFC648);
  __swift_project_value_buffer(v0, qword_280CFC648);
  return sub_24A9B8D98();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24A9B4908()
{
  if (*v0)
  {
    result = 0x696269676C45736FLL;
  }

  else
  {
    result = 0x72747365526D646DLL;
  }

  *v0;
  return result;
}

uint64_t sub_24A9B4958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72747365526D646DLL && a2 == 0xEE006E6F69746369;
  if (v6 || (sub_24A9B8ED8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696269676C45736FLL && a2 == 0xEC0000007974696CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A9B8ED8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24A9B4A40(uint64_t a1)
{
  v2 = sub_24A9B4E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B4A7C(uint64_t a1)
{
  v2 = sub_24A9B4E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9B4AB8(uint64_t a1)
{
  v2 = sub_24A9B4F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B4AF4(uint64_t a1)
{
  v2 = sub_24A9B4F00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9B4B30(uint64_t a1)
{
  v2 = sub_24A9B4EAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B4B6C(uint64_t a1)
{
  v2 = sub_24A9B4EAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnavailableReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F988, &qword_24A9B9D80);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F990, &qword_24A9B9D88);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F998, &qword_24A9B9D90);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A9B4E58();
  sub_24A9B8F28();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_24A9B4EAC();
    v18 = v22;
    sub_24A9B8EB8();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_24A9B4F00();
    sub_24A9B8EB8();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_24A9B4E58()
{
  result = qword_27EF7F9A0;
  if (!qword_27EF7F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F9A0);
  }

  return result;
}

unint64_t sub_24A9B4EAC()
{
  result = qword_27EF7F9A8;
  if (!qword_27EF7F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F9A8);
  }

  return result;
}

unint64_t sub_24A9B4F00()
{
  result = qword_27EF7F9B0;
  if (!qword_27EF7F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F9B0);
  }

  return result;
}

uint64_t UnavailableReason.hashValue.getter()
{
  v1 = *v0;
  sub_24A9B8EE8();
  MEMORY[0x24C221D30](v1);
  return sub_24A9B8F08();
}

uint64_t UnavailableReason.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F9B8, &qword_24A9B9D98);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F9C0, &qword_24A9B9DA0);
  v31 = *(v7 - 8);
  v8 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F9C8, &unk_24A9B9DA8);
  v35 = *(v11 - 8);
  v12 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A9B4E58();
  v16 = v36;
  sub_24A9B8F18();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_24A9B8EA8();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_24A9B1F70();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_24A9B8E58();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F830, &qword_24A9B92F0) + 48);
      *v26 = &type metadata for UnavailableReason;
      sub_24A9B8E88();
      sub_24A9B8E48();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_24A9B4EAC();
        sub_24A9B8E78();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_24A9B4F00();
        sub_24A9B8E78();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_24A9B5488()
{
  result = qword_27EF7F9D0;
  if (!qword_27EF7F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F9D0);
  }

  return result;
}

unint64_t sub_24A9B5550()
{
  result = qword_27EF7F9D8;
  if (!qword_27EF7F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F9D8);
  }

  return result;
}

unint64_t sub_24A9B55A8()
{
  result = qword_27EF7F9E0;
  if (!qword_27EF7F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F9E0);
  }

  return result;
}

unint64_t sub_24A9B5600()
{
  result = qword_27EF7F9E8;
  if (!qword_27EF7F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F9E8);
  }

  return result;
}

unint64_t sub_24A9B5658()
{
  result = qword_27EF7F9F0;
  if (!qword_27EF7F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F9F0);
  }

  return result;
}

unint64_t sub_24A9B56B0()
{
  result = qword_27EF7F9F8;
  if (!qword_27EF7F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F9F8);
  }

  return result;
}

unint64_t sub_24A9B5708()
{
  result = qword_27EF7FA00;
  if (!qword_27EF7FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FA00);
  }

  return result;
}

unint64_t sub_24A9B5760()
{
  result = qword_27EF7FA08;
  if (!qword_27EF7FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FA08);
  }

  return result;
}

uint64_t sub_24A9B57C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FA28, &qword_24A9BA1B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24A9BA130;
  v1 = *MEMORY[0x277D25CD0];
  *(v0 + 32) = sub_24A9B8DE8();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277D25EB8];
  *(v0 + 48) = sub_24A9B8DE8();
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277D25FF0];
  *(v0 + 64) = sub_24A9B8DE8();
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277D26030];
  *(v0 + 80) = sub_24A9B8DE8();
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x277D26000];
  *(v0 + 96) = sub_24A9B8DE8();
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x277D25D90];
  *(v0 + 112) = sub_24A9B8DE8();
  *(v0 + 120) = v12;
  v13 = *MEMORY[0x277D260B0];
  *(v0 + 128) = sub_24A9B8DE8();
  *(v0 + 136) = v14;
  v15 = *MEMORY[0x277D25E70];
  *(v0 + 144) = sub_24A9B8DE8();
  *(v0 + 152) = v16;
  v17 = *MEMORY[0x277D260D0];
  *(v0 + 160) = sub_24A9B8DE8();
  *(v0 + 168) = v18;
  v19 = *MEMORY[0x277D25F30];
  *(v0 + 176) = sub_24A9B8DE8();
  *(v0 + 184) = v20;
  v21 = *MEMORY[0x277D25F38];
  *(v0 + 192) = sub_24A9B8DE8();
  *(v0 + 200) = v22;
  v23 = *MEMORY[0x277D25E88];
  *(v0 + 208) = sub_24A9B8DE8();
  *(v0 + 216) = v24;
  v25 = *MEMORY[0x277D26050];
  *(v0 + 224) = sub_24A9B8DE8();
  *(v0 + 232) = v26;
  v27 = *MEMORY[0x277D25F60];
  result = sub_24A9B8DE8();
  *(v0 + 240) = result;
  *(v0 + 248) = v29;
  qword_27EF82650 = v0;
  return result;
}

Swift::Void __swiftcall DeviceRestrictionController.setRestrictionsActive(_:)(Swift::Bool a1)
{
  v3 = *v1;
  if (qword_280CFC640 != -1)
  {
    swift_once();
  }

  v4 = sub_24A9B8DA8();
  __swift_project_value_buffer(v4, qword_280CFC648);
  v5 = sub_24A9B8D88();
  v6 = sub_24A9B8E28();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_24A9B0000, v5, v6, "Setting device restrictions active=%{BOOL}d", v7, 8u);
    MEMORY[0x24C222030](v7, -1, -1);
  }

  sub_24A9B5B80(a1);
}

void sub_24A9B5B80(char a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = *v1;
  if (*v1)
  {
    v21[0] = *v1;
    v4 = v2;
    if (sub_24A9B5E80(a1 & 1))
    {
      v5 = sub_24A9B8DB8();
    }

    else
    {
      v5 = 0;
    }

    v10 = sub_24A9B8DD8();
    v11 = sub_24A9B8DD8();
    v21[0] = 0;
    v12 = [v4 applyRestrictionDictionary:v5 clientType:v10 clientUUID:v11 localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:v21];

    if (v12)
    {
      v13 = v21[0];
    }

    else
    {
      v14 = v21[0];
      v15 = sub_24A9B8D78();

      swift_willThrow();
      if (qword_280CFC640 != -1)
      {
        swift_once();
      }

      v16 = sub_24A9B8DA8();
      __swift_project_value_buffer(v16, qword_280CFC648);
      v17 = sub_24A9B8D88();
      v18 = sub_24A9B8E18();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_24A9B0000, v17, v18, "Unable to apply restrictions with MCProfileConnection", v19, 2u);
        MEMORY[0x24C222030](v19, -1, -1);
      }
    }
  }

  else
  {
    if (qword_280CFC640 != -1)
    {
      swift_once();
    }

    v6 = sub_24A9B8DA8();
    __swift_project_value_buffer(v6, qword_280CFC648);
    v7 = sub_24A9B8D88();
    v8 = sub_24A9B8E18();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24A9B0000, v7, v8, "Unable to get MCProfileConnection", v9, 2u);
      MEMORY[0x24C222030](v9, -1, -1);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A9B5E80(char a1)
{
  if (a1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
    if (qword_27EF7F7D0 != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v2 = qword_27EF82650;
      v3 = *(qword_27EF82650 + 16);
      if (!v3)
      {
        break;
      }

      v4 = 0;
      v5 = (qword_27EF82650 + 40);
      while (v4 < *(v2 + 16))
      {
        ++v4;
        v7 = *(v5 - 1);
        v6 = *v5;

        v8 = sub_24A9B8DD8();
        [v1 MCSetBoolRestriction:v8 value:0];

        v5 += 2;
        if (v3 == v4)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_18:
      swift_once();
    }

LABEL_7:
    if (qword_280CFC640 != -1)
    {
      swift_once();
    }

    v9 = sub_24A9B8DA8();
    __swift_project_value_buffer(v9, qword_280CFC648);
    v10 = v1;
    v11 = sub_24A9B8D88();
    v12 = sub_24A9B8E28();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      sub_24A9B68B8();
      v15 = v10;
      v16 = sub_24A9B8DF8();
      v18 = sub_24A9B61E0(v16, v17, &v25);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_24A9B0000, v11, v12, "Set device restrictions. Updating configuration to mcFeaturesSettings %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x24C222030](v14, -1, -1);
      MEMORY[0x24C222030](v13, -1, -1);
    }

    v25 = 0;
    v19 = v10;
    sub_24A9B8DC8();

    return v25;
  }

  else
  {
    if (qword_280CFC640 != -1)
    {
      swift_once();
    }

    v21 = sub_24A9B8DA8();
    __swift_project_value_buffer(v21, qword_280CFC648);
    v22 = sub_24A9B8D88();
    v23 = sub_24A9B8E28();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_24A9B0000, v22, v23, "Remove device restrictions. Updating configuration to nil", v24, 2u);
      MEMORY[0x24C222030](v24, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_24A9B61E0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24A9B62AC(v11, 0, 0, 1, a1, a2);
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
    sub_24A9B6904(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24A9B62AC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24A9B63B8(a5, a6);
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
    result = sub_24A9B8E68();
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

uint64_t sub_24A9B63B8(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A9B6404(a1, a2);
  sub_24A9B6534(&unk_285DFB808);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24A9B6404(uint64_t a1, unint64_t a2)
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

  v6 = sub_24A9B6620(v5, 0);
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

  result = sub_24A9B8E68();
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
        v10 = sub_24A9B8E08();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24A9B6620(v10, 0);
        result = sub_24A9B8E38();
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

uint64_t sub_24A9B6534(uint64_t result)
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

  result = sub_24A9B6694(result, v12, 1, v3);
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

void *sub_24A9B6620(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FA20, &qword_24A9BA1B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24A9B6694(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FA20, &qword_24A9BA1B0);
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

uint64_t sub_24A9B6788(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FA10, &qword_24A9BA160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A9B67FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24A9B6858(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24A9B68B8()
{
  result = qword_27EF7FA18;
  if (!qword_27EF7FA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF7FA18);
  }

  return result;
}

uint64_t sub_24A9B6904(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A9B6990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F4365746F6D6572 && a2 == 0xED00006C6F72746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24A9B8ED8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24A9B6A20(uint64_t a1)
{
  v2 = sub_24A9B6CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B6A5C(uint64_t a1)
{
  v2 = sub_24A9B6CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9B6A98(uint64_t a1)
{
  v2 = sub_24A9B6D3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B6AD4(uint64_t a1)
{
  v2 = sub_24A9B6D3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallsFeature.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FA30, &qword_24A9BA1C0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FA38, &qword_24A9BA1C8);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A9B6CE8();
  sub_24A9B8F28();
  sub_24A9B6D3C();
  sub_24A9B8EB8();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_24A9B6CE8()
{
  result = qword_27EF7FA40;
  if (!qword_27EF7FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FA40);
  }

  return result;
}

unint64_t sub_24A9B6D3C()
{
  result = qword_27EF7FA48;
  if (!qword_27EF7FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FA48);
  }

  return result;
}

uint64_t CallsFeature.hashValue.getter()
{
  sub_24A9B8EE8();
  MEMORY[0x24C221D30](0);
  return sub_24A9B8F08();
}

uint64_t CallsFeature.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FA50, &qword_24A9BA1D0);
  v29 = *(v3 - 8);
  v4 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FA58, &unk_24A9BA1D8);
  v24 = *(v7 - 8);
  v8 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A9B6CE8();
  sub_24A9B8F18();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_24A9B8EA8();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if (sub_24A9B1FA4() || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_24A9B8E58();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F830, &qword_24A9B92F0) + 48);
    *v19 = &type metadata for CallsFeature;
    sub_24A9B8E88();
    sub_24A9B8E48();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_24A9B6D3C();
  sub_24A9B8E78();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t sub_24A9B714C()
{
  result = qword_27EF7FA60;
  if (!qword_27EF7FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FA60);
  }

  return result;
}

uint64_t sub_24A9B71B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FA30, &qword_24A9BA1C0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FA38, &qword_24A9BA1C8);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A9B6CE8();
  sub_24A9B8F28();
  sub_24A9B6D3C();
  sub_24A9B8EB8();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_24A9B73C4()
{
  result = qword_27EF7FA68;
  if (!qword_27EF7FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FA68);
  }

  return result;
}

unint64_t sub_24A9B741C()
{
  result = qword_27EF7FA70;
  if (!qword_27EF7FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FA70);
  }

  return result;
}

unint64_t sub_24A9B7474()
{
  result = qword_27EF7FA78;
  if (!qword_27EF7FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FA78);
  }

  return result;
}

unint64_t sub_24A9B74CC()
{
  result = qword_27EF7FA80;
  if (!qword_27EF7FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FA80);
  }

  return result;
}

unint64_t sub_24A9B7524()
{
  result = qword_27EF7FA88;
  if (!qword_27EF7FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FA88);
  }

  return result;
}

id sub_24A9B759C()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v4 = &type metadata for FeatureEligibilityChecker;
    v5 = &protocol witness table for FeatureEligibilityChecker;
    type metadata accessor for CallsFeatureManager();
    v2 = swift_allocObject();
    *(v2 + 56) = v1;
    result = sub_24A9B76B8(&v3, v2 + 16);
    qword_27EF7FA90 = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CallsFeatureManager.__allocating_init()()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v4 = &type metadata for FeatureEligibilityChecker;
    v5 = &protocol witness table for FeatureEligibilityChecker;
    v2 = swift_allocObject();
    *(v2 + 56) = v1;
    sub_24A9B76B8(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A9B76B8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t static CallsFeatureManager.shared.getter()
{
  if (qword_27EF7F7D8 != -1)
  {
    swift_once();
  }
}

void *CallsFeatureManager.enablementStatus(for:)@<X0>(char *a1@<X8>)
{
  result = [*(v1 + 56) isVideoConferencingRemoteControlAllowed];
  if (result)
  {
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), v4);
    v7 = 0;
    result = (*(v5 + 8))(&v8, &v7, v4, v5);
    if (v8 >= 4u)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

uint64_t CallsFeatureManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t CallsFeatureManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_24A9B78B8()
{
  v1 = 0x69486F5477617264;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F4365746F6D6572;
  }
}

uint64_t sub_24A9B7930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A9B8B14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A9B7964(uint64_t a1)
{
  v2 = sub_24A9B7EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B79A0(uint64_t a1)
{
  v2 = sub_24A9B7EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9B79DC(uint64_t a1)
{
  v2 = sub_24A9B7F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B7A18(uint64_t a1)
{
  v2 = sub_24A9B7F58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9B7A54(uint64_t a1)
{
  v2 = sub_24A9B7F04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B7A90(uint64_t a1)
{
  v2 = sub_24A9B7F04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A9B7ACC(uint64_t a1)
{
  v2 = sub_24A9B7FAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A9B7B08(uint64_t a1)
{
  v2 = sub_24A9B7FAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeatureEligibilityDomain.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FA98, &qword_24A9BA560);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FAA0, &qword_24A9BA568);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FAA8, &qword_24A9BA570);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FAB0, &qword_24A9BA578);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A9B7EB0();
  sub_24A9B8F28();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_24A9B7F58();
      v12 = v26;
      sub_24A9B8EB8();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_24A9B7F04();
      v12 = v29;
      sub_24A9B8EB8();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_24A9B7FAC();
    sub_24A9B8EB8();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_24A9B7EB0()
{
  result = qword_27EF7FAB8;
  if (!qword_27EF7FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FAB8);
  }

  return result;
}

unint64_t sub_24A9B7F04()
{
  result = qword_27EF7FAC0;
  if (!qword_27EF7FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FAC0);
  }

  return result;
}

unint64_t sub_24A9B7F58()
{
  result = qword_27EF7FAC8;
  if (!qword_27EF7FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FAC8);
  }

  return result;
}

unint64_t sub_24A9B7FAC()
{
  result = qword_27EF7FAD0;
  if (!qword_27EF7FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FAD0);
  }

  return result;
}

uint64_t FeatureEligibilityDomain.hashValue.getter()
{
  v1 = *v0;
  sub_24A9B8EE8();
  MEMORY[0x24C221D30](v1);
  return sub_24A9B8F08();
}

uint64_t FeatureEligibilityDomain.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FAD8, &qword_24A9BA580);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FAE0, &qword_24A9BA588);
  v37 = *(v40 - 8);
  v6 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FAE8, &qword_24A9BA590);
  v36 = *(v9 - 8);
  v10 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7FAF0, &unk_24A9BA598);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24A9B7EB0();
  v20 = v43;
  sub_24A9B8F18();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_24A9B8EA8();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_24A9B1FD0();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_24A9B8E58();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F830, &qword_24A9B92F0) + 48);
      *v30 = &type metadata for FeatureEligibilityDomain;
      sub_24A9B8E88();
      sub_24A9B8E48();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_24A9B7F58();
          sub_24A9B8E78();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_24A9B7F04();
          v33 = v22;
          sub_24A9B8E78();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_24A9B7FAC();
        sub_24A9B8E78();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

unint64_t sub_24A9B8618()
{
  result = qword_27EF7FAF8;
  if (!qword_27EF7FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FAF8);
  }

  return result;
}

uint64_t sub_24A9B867C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_24A9B870C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A9B8800()
{
  result = qword_27EF7FB00;
  if (!qword_27EF7FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FB00);
  }

  return result;
}

unint64_t sub_24A9B8858()
{
  result = qword_27EF7FB08;
  if (!qword_27EF7FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FB08);
  }

  return result;
}

unint64_t sub_24A9B88B0()
{
  result = qword_27EF7FB10;
  if (!qword_27EF7FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FB10);
  }

  return result;
}

unint64_t sub_24A9B8908()
{
  result = qword_27EF7FB18;
  if (!qword_27EF7FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FB18);
  }

  return result;
}

unint64_t sub_24A9B8960()
{
  result = qword_27EF7FB20;
  if (!qword_27EF7FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FB20);
  }

  return result;
}

unint64_t sub_24A9B89B8()
{
  result = qword_27EF7FB28;
  if (!qword_27EF7FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FB28);
  }

  return result;
}

unint64_t sub_24A9B8A10()
{
  result = qword_27EF7FB30;
  if (!qword_27EF7FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FB30);
  }

  return result;
}

unint64_t sub_24A9B8A68()
{
  result = qword_27EF7FB38;
  if (!qword_27EF7FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FB38);
  }

  return result;
}

unint64_t sub_24A9B8AC0()
{
  result = qword_27EF7FB40;
  if (!qword_27EF7FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7FB40);
  }

  return result;
}

uint64_t sub_24A9B8B14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4365746F6D6572 && a2 == 0xED00006C6F72746ELL;
  if (v4 || (sub_24A9B8ED8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69486F5477617264 && a2 == 0xEF746867696C6867 || (sub_24A9B8ED8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024A9BB020 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A9B8ED8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id sub_24A9B8D0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockMCProfileConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}