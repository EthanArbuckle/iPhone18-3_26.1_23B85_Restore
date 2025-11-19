uint64_t sub_1DB1672EC(uint64_t a1)
{
  v2 = sub_1DB167D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB167328(uint64_t a1)
{
  v2 = sub_1DB167D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnyQueryType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC279D8, &qword_1DB2C2508);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB167D40();
  sub_1DB2BBA84();
  if (!v2)
  {
    LOBYTE(v18[0]) = 1;
    sub_1DB1647B8();
    sub_1DB2BB7B4();
    v24 = v20[0];
    v11 = sub_1DB165CE4();
    v17[0] = v12;
    v17[1] = v17;
    v13 = *(v11[-1].Description + 8);
    MEMORY[0x1EEE9AC00](v11);
    v23 = 0;
    sub_1DB2BB724();
    sub_1DB2BB1C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
    v15 = swift_dynamicCast();
    if (v15)
    {
      (*(v6 + 8))(v9, v5);
      sub_1DB1355D0(v18, v20);
      sub_1DB1355D0(v20, v21);
      v16 = v21[1];
      *a2 = v21[0];
      *(a2 + 16) = v16;
      *(a2 + 32) = v22;
    }

    else
    {
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      sub_1DB167D94(v18);
      LOBYTE(v20[0]) = 0;
      sub_1DB2BB564();
      swift_allocError();
      sub_1DB1688F0(&qword_1ECC279F0, &qword_1ECC279D8, &qword_1DB2C2508);
      sub_1DB2BB544();
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AnyQueryType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC279F8, &qword_1DB2C2510);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB167D40();
  sub_1DB2BBA94();
  sub_1DB164980(v3, &v18[1]);
  __swift_project_boxed_opaque_existential_1(&v18[1], *&v18[13]);
  DynamicType = swift_getDynamicType();
  v12 = *&v18[17];
  __swift_destroy_boxed_opaque_existential_1(&v18[1]);
  (*(v12 + 48))(v18, DynamicType, v12);
  if (!v2)
  {
    v17 = v18[0];
    v16[3] = 1;
    sub_1DB1646BC();
    sub_1DB2BB8A4();
    v13 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    LOBYTE(v18[0]) = 0;
    sub_1DB2BB814();
    v14 = *(*(v13 + 8) + 16);
    sub_1DB2BACE4();
    __swift_destroy_boxed_opaque_existential_1(&v18[1]);
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_1DB167910@<X0>(_WORD *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = AssociatedTypeWitness == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (swift_conformsToProtocol2() && AssociatedTypeWitness)
    {
      result = sub_1DB168AE8();
      if (v1)
      {
        return result;
      }

      v6 = BYTE1(v12) | 0x100;
      goto LABEL_12;
    }

    swift_getMetatypeMetadata();
    swift_getMetatypeMetadata();
    v8 = sub_1DB2BADF4();
    v10 = v9;
    sub_1DB135B68();
    swift_allocError();
    *v11 = 0xD000000000000015;
    *(v11 + 8) = 0x80000001DB2D4410;
    *(v11 + 16) = 0xD000000000000010;
    *(v11 + 24) = 0x80000001DB2C2640;
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;
    *(v11 + 48) = 1;
    return swift_willThrow();
  }

  else
  {
    result = (*(v4 + 64))(&v12, AssociatedTypeWitness, v4);
    if (!v1)
    {
      v6 = v12;
LABEL_12:
      *a1 = v6;
    }
  }

  return result;
}

void static QueryType<>.queryTypeCodableType.getter(_WORD *a1@<X8>)
{
  *a1 = 512;
}

{
  *a1 = 768;
}

{
  *a1 = 1024;
}

BOOL _s19OnDeviceStorageCore016QueryTypeCodableF0O2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 8;
  if (v2 >> 8 == 2)
  {
    return (v3 & 0xFF00) == 0x200;
  }

  if (v4 == 3)
  {
    return (v3 & 0xFF00) == 0x300;
  }

  if (v4 == 4)
  {
    return (v3 & 0xFF00) == 0x400;
  }

  if ((v3 >> 8) - 2 < 3)
  {
    return 0;
  }

  v6 = (v3 ^ v2) == 0;
  v7 = (v3 >> 8) ^ v4 ^ 1;
  if (!v6)
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

unint64_t sub_1DB167B9C()
{
  result = qword_1EE13F638;
  if (!qword_1EE13F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F638);
  }

  return result;
}

unint64_t sub_1DB167BF0()
{
  result = qword_1ECC27998;
  if (!qword_1ECC27998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27998);
  }

  return result;
}

unint64_t sub_1DB167C44()
{
  result = qword_1ECC279A0;
  if (!qword_1ECC279A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC279A0);
  }

  return result;
}

unint64_t sub_1DB167C98()
{
  result = qword_1EE13F610;
  if (!qword_1EE13F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F610);
  }

  return result;
}

unint64_t sub_1DB167CEC()
{
  result = qword_1ECC279A8;
  if (!qword_1ECC279A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC279A8);
  }

  return result;
}

unint64_t sub_1DB167D40()
{
  result = qword_1ECC279E0;
  if (!qword_1ECC279E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC279E0);
  }

  return result;
}

uint64_t sub_1DB167D94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC279E8, &unk_1DB2C3AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for QueryTypeCodableType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 65284;
  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 16)) - 65284;
  }

  if (v4)
  {
    v5 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v5 << 16)) - 65284;
    }
  }

LABEL_19:
  v7 = *(a1 + 1);
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for QueryTypeCodableType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65284;
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 2) = v6;
      }

      else
      {
        *(result + 2) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *(result + 1) = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1DB167F64(uint64_t a1)
{
  v1 = *(a1 + 1);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB167F80(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 1) = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for URIQueryParameter.FileMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for URIQueryParameter.FileMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DB168168()
{
  result = qword_1ECC27A00;
  if (!qword_1ECC27A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27A00);
  }

  return result;
}

unint64_t sub_1DB1681C0()
{
  result = qword_1ECC27A08;
  if (!qword_1ECC27A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27A08);
  }

  return result;
}

unint64_t sub_1DB168218()
{
  result = qword_1ECC27A10;
  if (!qword_1ECC27A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27A10);
  }

  return result;
}

unint64_t sub_1DB168270()
{
  result = qword_1ECC27A18;
  if (!qword_1ECC27A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27A18);
  }

  return result;
}

unint64_t sub_1DB1682C8()
{
  result = qword_1ECC27A20;
  if (!qword_1ECC27A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27A20);
  }

  return result;
}

unint64_t sub_1DB168320()
{
  result = qword_1EE13F640;
  if (!qword_1EE13F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F640);
  }

  return result;
}

unint64_t sub_1DB168378()
{
  result = qword_1EE13F648;
  if (!qword_1EE13F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F648);
  }

  return result;
}

unint64_t sub_1DB1683D0()
{
  result = qword_1EE13F600;
  if (!qword_1EE13F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F600);
  }

  return result;
}

unint64_t sub_1DB168428()
{
  result = qword_1EE13F608;
  if (!qword_1EE13F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F608);
  }

  return result;
}

unint64_t sub_1DB168480()
{
  result = qword_1EE13F618;
  if (!qword_1EE13F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F618);
  }

  return result;
}

unint64_t sub_1DB1684D8()
{
  result = qword_1EE13F620;
  if (!qword_1EE13F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F620);
  }

  return result;
}

unint64_t sub_1DB168530()
{
  result = qword_1EE13F5F0;
  if (!qword_1EE13F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F5F0);
  }

  return result;
}

unint64_t sub_1DB168588()
{
  result = qword_1EE13F5F8;
  if (!qword_1EE13F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F5F8);
  }

  return result;
}

unint64_t sub_1DB1685E0()
{
  result = qword_1EE13F628;
  if (!qword_1EE13F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F628);
  }

  return result;
}

unint64_t sub_1DB168638()
{
  result = qword_1EE13F630;
  if (!qword_1EE13F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F630);
  }

  return result;
}

uint64_t sub_1DB16868C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x755172616C616373 && a2 == 0xEB00000000797265;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C626174 && a2 == 0xE500000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2003134838 && a2 == 0xE400000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x546C617574726976 && a2 == 0xEC000000656C6261)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1DB1687F4()
{
  result = qword_1ECC27A28;
  if (!qword_1ECC27A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27A28);
  }

  return result;
}

unint64_t sub_1DB168848()
{
  result = qword_1ECC27A30;
  if (!qword_1ECC27A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27A30);
  }

  return result;
}

unint64_t sub_1DB16889C()
{
  result = qword_1EE13F740;
  if (!qword_1EE13F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F740);
  }

  return result;
}

uint64_t sub_1DB1688F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

ValueMetadata *sub_1DB168940()
{
  v1 = *v0;
  if (v1 > 4)
  {
    if (*v0 <= 6u)
    {
      if (v1 != 5)
      {
        return MEMORY[0x1E69E6370];
      }

      v2 = sub_1DB2BA944();
      v4 = &unk_1ECC27958;
      v5 = MEMORY[0x1E69695A8];
      goto LABEL_19;
    }

    v3 = MEMORY[0x1E69E7360];
    if (v1 != 8)
    {
      v3 = MEMORY[0x1E69E6158];
    }

    if (v1 == 7)
    {
      return MEMORY[0x1E69E63B0];
    }

    else
    {
      return v3;
    }
  }

  else
  {
    if (*v0 > 1u)
    {
      if (v1 == 2)
      {
        v2 = sub_1DB2BA904();
        v4 = &unk_1EE13F288;
        v5 = MEMORY[0x1E6969530];
      }

      else
      {
        if (v1 == 3)
        {
          return MEMORY[0x1E69E6530];
        }

        v2 = sub_1DB2BA824();
        v4 = &unk_1ECC27960;
        v5 = MEMORY[0x1E6968FB0];
      }

LABEL_19:
      sub_1DB165C44(v4, v5);
      return v2;
    }

    if (*v0)
    {
      v2 = MEMORY[0x1E6969080];
      sub_1DB165C8C();
    }

    else
    {
      v2 = &type metadata for Blob;
      sub_1DB138BFC();
    }
  }

  return v2;
}

uint64_t sub_1DB168AE8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = swift_conformsToProtocol2();
  if (v1)
  {
    v2 = AssociatedTypeWitness == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    return (*(v1 + 64))(AssociatedTypeWitness, v1);
  }

  swift_getMetatypeMetadata();
  swift_getMetatypeMetadata();
  v3 = sub_1DB2BADF4();
  v5 = v4;
  sub_1DB135B68();
  swift_allocError();
  *v6 = 0xD000000000000010;
  *(v6 + 8) = 0x80000001DB2D43F0;
  *(v6 + 16) = xmmword_1DB2C2C90;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  *(v6 + 48) = 1;
  return swift_willThrow();
}

uint64_t sub_1DB168C28(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x656C62756F64;
    v6 = 0x3436746E69;
    if (a1 != 8)
    {
      v6 = 0x676E69727473;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1684632949;
    if (a1 != 5)
    {
      v7 = 1819242338;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1651469410;
    v2 = 1702125924;
    v3 = 7630441;
    if (a1 != 3)
    {
      v3 = 7107189;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1635017060;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DB168D20(uint64_t a1)
{
  v2 = sub_1DB169F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB168D5C(uint64_t a1)
{
  v2 = sub_1DB169F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB168D98(uint64_t a1)
{
  v2 = sub_1DB169D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB168DD4(uint64_t a1)
{
  v2 = sub_1DB169D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB168E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB16C194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB168E4C(uint64_t a1)
{
  v2 = sub_1DB169BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB168E88(uint64_t a1)
{
  v2 = sub_1DB169BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB168EC4(uint64_t a1)
{
  v2 = sub_1DB169EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB168F00(uint64_t a1)
{
  v2 = sub_1DB169EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB168F3C(uint64_t a1)
{
  v2 = sub_1DB169E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB168F78(uint64_t a1)
{
  v2 = sub_1DB169E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB168FB4(uint64_t a1)
{
  v2 = sub_1DB169CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB168FF0(uint64_t a1)
{
  v2 = sub_1DB169CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB16902C(uint64_t a1)
{
  v2 = sub_1DB169C98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB169068(uint64_t a1)
{
  v2 = sub_1DB169C98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB1690A4(uint64_t a1)
{
  v2 = sub_1DB169E3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB1690E0(uint64_t a1)
{
  v2 = sub_1DB169E3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB16911C(uint64_t a1)
{
  v2 = sub_1DB169C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB169158(uint64_t a1)
{
  v2 = sub_1DB169C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB169194(uint64_t a1)
{
  v2 = sub_1DB169DE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB1691D0(uint64_t a1)
{
  v2 = sub_1DB169DE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB16920C(uint64_t a1)
{
  v2 = sub_1DB169D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB169248(uint64_t a1)
{
  v2 = sub_1DB169D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ValueCodableType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B78, &qword_1DB2C2CB0);
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v75 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B80, &qword_1DB2C2CB8);
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B88, &qword_1DB2C2CC0);
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B90, &qword_1DB2C2CC8);
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B98, &qword_1DB2C2CD0);
  v64 = *(v15 - 8);
  v65 = v15;
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27BA0, &qword_1DB2C2CD8);
  v61 = *(v18 - 8);
  v62 = v18;
  v19 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v51 - v20;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27BA8, &qword_1DB2C2CE0);
  v58 = *(v59 - 8);
  v21 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v51 - v22;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27BB0, &qword_1DB2C2CE8);
  v55 = *(v56 - 8);
  v23 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v51 - v24;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27BB8, &qword_1DB2C2CF0);
  v52 = *(v53 - 8);
  v25 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v27 = &v51 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27BC0, &qword_1DB2C2CF8);
  v51 = *(v28 - 8);
  v29 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v51 - v30;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27BC8, &qword_1DB2C2D00);
  v32 = *(v79 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v35 = &v51 - v34;
  v36 = *v1;
  v37 = a1;
  v39 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(v37, v39);
  sub_1DB169BF0();
  v78 = v35;
  sub_1DB2BBA94();
  v40 = (v32 + 8);
  if (v36 > 4)
  {
    if (v36 <= 6)
    {
      if (v36 == 5)
      {
        v85 = 5;
        sub_1DB169D94();
        v44 = v63;
        v42 = v78;
        v43 = v79;
        sub_1DB2BB804();
        v46 = v64;
        v45 = v65;
      }

      else
      {
        v86 = 6;
        sub_1DB169D40();
        v44 = v66;
        v42 = v78;
        v43 = v79;
        sub_1DB2BB804();
        v46 = v67;
        v45 = v68;
      }
    }

    else if (v36 == 7)
    {
      v87 = 7;
      sub_1DB169CEC();
      v44 = v69;
      v42 = v78;
      v43 = v79;
      sub_1DB2BB804();
      v46 = v70;
      v45 = v71;
    }

    else if (v36 == 8)
    {
      v88 = 8;
      sub_1DB169C98();
      v44 = v72;
      v42 = v78;
      v43 = v79;
      sub_1DB2BB804();
      v46 = v73;
      v45 = v74;
    }

    else
    {
      v89 = 9;
      sub_1DB169C44();
      v44 = v75;
      v42 = v78;
      v43 = v79;
      sub_1DB2BB804();
      v46 = v76;
      v45 = v77;
    }

    goto LABEL_20;
  }

  if (v36 > 1)
  {
    if (v36 == 2)
    {
      v82 = 2;
      sub_1DB169E90();
      v47 = v54;
      v42 = v78;
      v43 = v79;
      sub_1DB2BB804();
      (*(v55 + 8))(v47, v56);
      return (*v40)(v42, v43);
    }

    if (v36 == 3)
    {
      v83 = 3;
      sub_1DB169E3C();
      v41 = v57;
      v42 = v78;
      v43 = v79;
      sub_1DB2BB804();
      (*(v58 + 8))(v41, v59);
      return (*v40)(v42, v43);
    }

    v84 = 4;
    sub_1DB169DE8();
    v44 = v60;
    v42 = v78;
    v43 = v79;
    sub_1DB2BB804();
    v46 = v61;
    v45 = v62;
LABEL_20:
    (*(v46 + 8))(v44, v45);
    return (*v40)(v42, v43);
  }

  if (v36)
  {
    v81 = 1;
    sub_1DB169EE4();
    v48 = v78;
    v49 = v79;
    sub_1DB2BB804();
    (*(v52 + 8))(v27, v53);
    return (*v40)(v48, v49);
  }

  v80 = 0;
  sub_1DB169F38();
  v42 = v78;
  v43 = v79;
  sub_1DB2BB804();
  (*(v51 + 8))(v31, v28);
  return (*v40)(v42, v43);
}

unint64_t sub_1DB169BF0()
{
  result = qword_1EE13FA68;
  if (!qword_1EE13FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA68);
  }

  return result;
}

unint64_t sub_1DB169C44()
{
  result = qword_1EE13F9B0;
  if (!qword_1EE13F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9B0);
  }

  return result;
}

unint64_t sub_1DB169C98()
{
  result = qword_1ECC27BD0;
  if (!qword_1ECC27BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27BD0);
  }

  return result;
}

unint64_t sub_1DB169CEC()
{
  result = qword_1ECC27BD8;
  if (!qword_1ECC27BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27BD8);
  }

  return result;
}

unint64_t sub_1DB169D40()
{
  result = qword_1ECC27BE0;
  if (!qword_1ECC27BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27BE0);
  }

  return result;
}

unint64_t sub_1DB169D94()
{
  result = qword_1ECC27BE8;
  if (!qword_1ECC27BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27BE8);
  }

  return result;
}

unint64_t sub_1DB169DE8()
{
  result = qword_1ECC27BF0;
  if (!qword_1ECC27BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27BF0);
  }

  return result;
}

unint64_t sub_1DB169E3C()
{
  result = qword_1ECC27BF8;
  if (!qword_1ECC27BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27BF8);
  }

  return result;
}

unint64_t sub_1DB169E90()
{
  result = qword_1ECC27C00;
  if (!qword_1ECC27C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27C00);
  }

  return result;
}

unint64_t sub_1DB169EE4()
{
  result = qword_1ECC27C08;
  if (!qword_1ECC27C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27C08);
  }

  return result;
}

unint64_t sub_1DB169F38()
{
  result = qword_1ECC27C10;
  if (!qword_1ECC27C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27C10);
  }

  return result;
}

uint64_t ValueCodableType.hashValue.getter()
{
  v1 = *v0;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  return sub_1DB2BBA54();
}

uint64_t ValueCodableType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C18, &qword_1DB2C2D08);
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C20, &qword_1DB2C2D10);
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v88 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C28, &qword_1DB2C2D18);
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v64 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C30, &qword_1DB2C2D20);
  v78 = *(v79 - 8);
  v12 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v93 = &v64 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C38, &qword_1DB2C2D28);
  v76 = *(v77 - 8);
  v14 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v92 = &v64 - v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C40, &qword_1DB2C2D30);
  v75 = *(v74 - 8);
  v16 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v91 = &v64 - v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C48, &qword_1DB2C2D38);
  v72 = *(v73 - 8);
  v18 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v86 = &v64 - v19;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C50, &qword_1DB2C2D40);
  v70 = *(v71 - 8);
  v20 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v90 = &v64 - v21;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C58, &qword_1DB2C2D48);
  v68 = *(v69 - 8);
  v22 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C60, &qword_1DB2C2D50);
  v67 = *(v25 - 8);
  v26 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v64 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C68, &unk_1DB2C2D58);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v64 - v32;
  v34 = a1[3];
  v35 = a1[4];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1DB169BF0();
  v36 = v96;
  sub_1DB2BBA84();
  if (!v36)
  {
    v65 = v28;
    v64 = v25;
    v66 = v24;
    v37 = v90;
    v38 = v91;
    v39 = v92;
    v40 = v93;
    v96 = v30;
    v41 = v94;
    v42 = sub_1DB2BB7D4();
    v43 = (2 * *(v42 + 16)) | 1;
    v97 = v42;
    v98 = v42 + 32;
    v99 = 0;
    v100 = v43;
    v44 = sub_1DB14B1EC();
    if (v44 != 10 && v99 == v100 >> 1)
    {
      v101 = v44;
      if (v44 <= 4u)
      {
        if (v44 <= 1u)
        {
          if (v44)
          {
            v102 = 1;
            sub_1DB169EE4();
            v62 = v66;
            sub_1DB2BB704();
            v63 = v96;
            (*(v68 + 8))(v62, v69);
            (*(v63 + 8))(v33, v29);
          }

          else
          {
            v102 = 0;
            sub_1DB169F38();
            v58 = v65;
            sub_1DB2BB704();
            v59 = v96;
            (*(v67 + 8))(v58, v64);
            (*(v59 + 8))(v33, v29);
          }

          swift_unknownObjectRelease();
          v51 = v95;
          v53 = v41;
        }

        else
        {
          if (v44 == 2)
          {
            v102 = 2;
            sub_1DB169E90();
            sub_1DB2BB704();
            (*(v70 + 8))(v37, v71);
            (*(v96 + 8))(v33, v29);
          }

          else
          {
            if (v44 == 3)
            {
              v102 = 3;
              sub_1DB169E3C();
              v45 = v86;
              sub_1DB2BB704();
              v46 = v96;
              (*(v72 + 8))(v45, v73);
            }

            else
            {
              v102 = 4;
              sub_1DB169DE8();
              sub_1DB2BB704();
              v46 = v96;
              (*(v75 + 8))(v38, v74);
            }

            (*(v46 + 8))(v33, v29);
          }

          swift_unknownObjectRelease();
          v53 = v94;
          v51 = v95;
        }

        goto LABEL_33;
      }

      if (v44 <= 6u)
      {
        v53 = v41;
        v60 = v96;
        if (v44 == 5)
        {
          v102 = 5;
          sub_1DB169D94();
          sub_1DB2BB704();
          (*(v76 + 8))(v39, v77);
        }

        else
        {
          v102 = 6;
          sub_1DB169D40();
          sub_1DB2BB704();
          (*(v78 + 8))(v40, v79);
        }

        (*(v60 + 8))(v33, v29);
        goto LABEL_32;
      }

      v53 = v41;
      v54 = v96;
      if (v44 == 7)
      {
        v102 = 7;
        sub_1DB169CEC();
        v55 = v87;
        sub_1DB2BB704();
        v57 = v80;
        v56 = v81;
      }

      else
      {
        if (v44 != 8)
        {
          v102 = 9;
          sub_1DB169C44();
          v61 = v89;
          sub_1DB2BB704();
          (*(v84 + 8))(v61, v85);
          goto LABEL_29;
        }

        v102 = 8;
        sub_1DB169C98();
        v55 = v88;
        sub_1DB2BB704();
        v57 = v82;
        v56 = v83;
      }

      (*(v57 + 8))(v55, v56);
LABEL_29:
      (*(v54 + 8))(v33, v29);
LABEL_32:
      swift_unknownObjectRelease();
      v51 = v95;
LABEL_33:
      *v53 = v101;
      return __swift_destroy_boxed_opaque_existential_1(v51);
    }

    v47 = sub_1DB2BB564();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
    *v49 = &type metadata for ValueCodableType;
    sub_1DB2BB714();
    sub_1DB2BB554();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
    (*(v96 + 8))(v33, v29);
    swift_unknownObjectRelease();
  }

  v51 = v95;
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

__n128 AnyValue.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

uint64_t AnyValue.init(binding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB1446A4(a1, v8, &qword_1ECC26E28, &unk_1DB2C2D70);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C78, &qword_1DB2C2D80);
    if (swift_dynamicCast())
    {
      if (*(&v11 + 1))
      {
        sub_1DB1445E0(a1, &qword_1ECC26E28, &unk_1DB2C2D70);
        sub_1DB1355D0(&v10, v13);
        return sub_1DB1355D0(v13, a2);
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    sub_1DB1445E0(v8, &qword_1ECC26E28, &unk_1DB2C2D70);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_1DB1445E0(&v10, &qword_1ECC27C70, &qword_1DB2C2D68);
  v5 = sub_1DB2BB564();
  swift_allocError();
  v7 = v6;
  sub_1DB2BB554();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x1E69E6B00], v5);
  swift_willThrow();
  return sub_1DB1445E0(a1, &qword_1ECC26E28, &unk_1DB2C2D70);
}

uint64_t sub_1DB16AF78(uint64_t a1)
{
  v2 = sub_1DB16B330();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB16AFB4(uint64_t a1)
{
  v2 = sub_1DB16B330();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnyValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C80, &qword_1DB2C2D88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB16B330();
  sub_1DB2BBA84();
  if (!v2)
  {
    LOBYTE(v18[0]) = 1;
    sub_1DB164710();
    sub_1DB2BB764();
    if (LOBYTE(v21[0]) == 10)
    {
      (*(v6 + 8))(v9, v5);
      v22 = 0u;
      v23 = 0u;
    }

    else
    {
      v20 = v21[0];
      v12 = sub_1DB168940();
      v16[2] = v13;
      v25 = v12;
      v14 = *(v12[-1].Description + 8);
      MEMORY[0x1EEE9AC00](v12);
      v17 = 0;
      sub_1DB2BB724();
      v16[1] = v16;
      sub_1DB2BB1C4();
      (*(v6 + 8))(v9, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C78, &qword_1DB2C2D80);
      if (swift_dynamicCast())
      {
        sub_1DB1355D0(v18, v21);
        sub_1DB1355D0(v21, &v22);
        goto LABEL_5;
      }

      v19 = 0;
      memset(v18, 0, sizeof(v18));
      sub_1DB1445E0(v18, &qword_1ECC27C70, &qword_1DB2C2D68);
      v22 = 0u;
      v23 = 0u;
    }

    v24 = 0;
LABEL_5:
    v11 = v23;
    *a2 = v22;
    *(a2 + 16) = v11;
    *(a2 + 32) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DB16B330()
{
  result = qword_1ECC27C88;
  if (!qword_1ECC27C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27C88);
  }

  return result;
}

uint64_t AnyValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C90, &qword_1DB2C2D90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB16B330();
  sub_1DB2BBA94();
  sub_1DB1446A4(v3, &v16, &qword_1ECC27C70, &qword_1DB2C2D68);
  if (v17)
  {
    sub_1DB1355D0(&v16, v18);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    swift_getDynamicType();
    (*(v20 + 64))(&v16);
    if (!v2)
    {
      v15 = v16;
      v14[14] = 1;
      sub_1DB16456C();
      sub_1DB2BB8A4();
      v11 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v15 = 0;
      sub_1DB2BB814();
      v12 = *(*(v11 + 8) + 16);
      sub_1DB2BACE4();
      __swift_destroy_boxed_opaque_existential_1(&v16);
    }

    (*(v6 + 8))(v9, v5);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    return sub_1DB1445E0(&v16, &qword_1ECC27C70, &qword_1DB2C2D68);
  }
}

uint64_t static Value.valueCodableType.getter()
{
  swift_getMetatypeMetadata();
  swift_getMetatypeMetadata();
  v0 = sub_1DB2BADF4();
  v2 = v1;
  sub_1DB135B68();
  swift_allocError();
  *v3 = 0xD000000000000010;
  *(v3 + 8) = 0x80000001DB2D43F0;
  *(v3 + 16) = xmmword_1DB2C2CA0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v2;
  *(v3 + 48) = 1;
  return swift_willThrow();
}

unint64_t sub_1DB16B734()
{
  result = qword_1ECC27C98;
  if (!qword_1ECC27C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27C98);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore5Value_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1DB16B884()
{
  result = qword_1ECC27CA0;
  if (!qword_1ECC27CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27CA0);
  }

  return result;
}

unint64_t sub_1DB16B8DC()
{
  result = qword_1ECC27CA8;
  if (!qword_1ECC27CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27CA8);
  }

  return result;
}

unint64_t sub_1DB16B934()
{
  result = qword_1ECC27CB0;
  if (!qword_1ECC27CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27CB0);
  }

  return result;
}

unint64_t sub_1DB16B98C()
{
  result = qword_1ECC27CB8;
  if (!qword_1ECC27CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27CB8);
  }

  return result;
}

unint64_t sub_1DB16B9E4()
{
  result = qword_1EE13FA28;
  if (!qword_1EE13FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA28);
  }

  return result;
}

unint64_t sub_1DB16BA3C()
{
  result = qword_1EE13FA30;
  if (!qword_1EE13FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA30);
  }

  return result;
}

unint64_t sub_1DB16BA94()
{
  result = qword_1EE13FA08;
  if (!qword_1EE13FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA08);
  }

  return result;
}

unint64_t sub_1DB16BAEC()
{
  result = qword_1EE13FA10;
  if (!qword_1EE13FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA10);
  }

  return result;
}

unint64_t sub_1DB16BB44()
{
  result = qword_1EE13F9F8;
  if (!qword_1EE13F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9F8);
  }

  return result;
}

unint64_t sub_1DB16BB9C()
{
  result = qword_1EE13FA00;
  if (!qword_1EE13FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA00);
  }

  return result;
}

unint64_t sub_1DB16BBF4()
{
  result = qword_1EE13FA48;
  if (!qword_1EE13FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA48);
  }

  return result;
}

unint64_t sub_1DB16BC4C()
{
  result = qword_1EE13FA50;
  if (!qword_1EE13FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA50);
  }

  return result;
}

unint64_t sub_1DB16BCA4()
{
  result = qword_1EE13FA38;
  if (!qword_1EE13FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA38);
  }

  return result;
}

unint64_t sub_1DB16BCFC()
{
  result = qword_1EE13FA40;
  if (!qword_1EE13FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA40);
  }

  return result;
}

unint64_t sub_1DB16BD54()
{
  result = qword_1EE13F9E8;
  if (!qword_1EE13F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9E8);
  }

  return result;
}

unint64_t sub_1DB16BDAC()
{
  result = qword_1EE13F9F0;
  if (!qword_1EE13F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9F0);
  }

  return result;
}

unint64_t sub_1DB16BE04()
{
  result = qword_1EE13FA18;
  if (!qword_1EE13FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA18);
  }

  return result;
}

unint64_t sub_1DB16BE5C()
{
  result = qword_1EE13FA20;
  if (!qword_1EE13FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA20);
  }

  return result;
}

unint64_t sub_1DB16BEB4()
{
  result = qword_1EE13F9C8;
  if (!qword_1EE13F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9C8);
  }

  return result;
}

unint64_t sub_1DB16BF0C()
{
  result = qword_1EE13F9D0;
  if (!qword_1EE13F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9D0);
  }

  return result;
}

unint64_t sub_1DB16BF64()
{
  result = qword_1EE13F9D8;
  if (!qword_1EE13F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9D8);
  }

  return result;
}

unint64_t sub_1DB16BFBC()
{
  result = qword_1EE13F9E0;
  if (!qword_1EE13F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9E0);
  }

  return result;
}

unint64_t sub_1DB16C014()
{
  result = qword_1EE13F9C0;
  if (!qword_1EE13F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9C0);
  }

  return result;
}

unint64_t sub_1DB16C06C()
{
  result = qword_1EE13F9B8;
  if (!qword_1EE13F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9B8);
  }

  return result;
}

unint64_t sub_1DB16C0C4()
{
  result = qword_1EE13FA58;
  if (!qword_1EE13FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA58);
  }

  return result;
}

unint64_t sub_1DB16C11C()
{
  result = qword_1EE13FA60;
  if (!qword_1EE13FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA60);
  }

  return result;
}

uint64_t sub_1DB16C194(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1651469410 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7630441 && a2 == 0xE300000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x3436746E69 && a2 == 0xE500000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t RowValuesIterator.init(array:batchSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = 0;
  a3[2] = a2;
  a3[3] = 0;
  return result;
}

uint64_t RowValuesIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(a1 + 16);
  result = sub_1DB2BB124();
  if (v4 >= result)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v63 = v2[2];
  if (v63 >= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CC0, &unk_1DB2C3850);
    v62 = v4;
    v61 = sub_1DB2BB6E4();
    if (v61)
    {
      result = sub_1DB2BB124();
      v8 = v4;
      v60 = result;
      if (v4 < result)
      {
        v55 = v6;
        v56 = v2;
        v57 = v5;
        v58 = a2;
        v9 = 0;
        v59 = v61 + 32;
        v8 = v4;
        while (1)
        {
          if (v9 >= v63)
          {
            goto LABEL_93;
          }

          if (v4 < 0)
          {
            goto LABEL_104;
          }

          if (v4 >= *(v61 + 16))
          {
            goto LABEL_105;
          }

          v64 = v9;
          v65 = v8;
          v8 = *(v59 + 8 * v4);
          v10 = 1 << *(v8 + 32);
          if (v10 < 64)
          {
            v11 = ~(-1 << v10);
          }

          else
          {
            v11 = -1;
          }

          v12 = v11 & *(v8 + 64);
          v13 = (v10 + 63) >> 6;
          v14 = *(v59 + 8 * v4);
          swift_bridgeObjectRetain_n();
          v15 = 0;
          v16 = 2;
          while (1)
          {
            if (!v12)
            {
              while (1)
              {
                v17 = v15 + 1;
                if (__OFADD__(v15, 1))
                {
                  break;
                }

                if (v17 >= v13)
                {
                  goto LABEL_47;
                }

                v12 = *(v8 + 64 + 8 * v17);
                ++v15;
                if (v12)
                {
                  v15 = v17;
                  goto LABEL_20;
                }
              }

              __break(1u);
              goto LABEL_93;
            }

LABEL_20:
            v18 = __clz(__rbit64(v12)) | (v15 << 6);
            v4 = *(*(v8 + 48) + 16 * v18 + 8);
            sub_1DB1446A4(*(v8 + 56) + 32 * v18, &v72, &qword_1ECC26F30, &unk_1DB2BFA90);
            v66 = v73;
            v67 = v72;

            if (!v4)
            {
              break;
            }

            v73 = v66;
            v72 = v67;
            v19 = v16 + 2 * (v16 > 2);
            if (__OFADD__(v16, 2 * (v16 > 2)))
            {
              goto LABEL_99;
            }

            sub_1DB1446A4(&v72, &v70, &qword_1ECC26F30, &unk_1DB2BFA90);
            if (v71)
            {
              if (swift_dynamicCast())
              {
                v4 = *(&v68 + 1);
                v20 = v68;
                if ((*(&v68 + 1) & 0x1000000000000000) != 0)
                {
                  v34 = sub_1DB2BAF34();

                  result = sub_1DB1445E0(&v72, &qword_1ECC26F30, &unk_1DB2BFA90);
                  v22 = v34 + 2;
                  if (__OFADD__(v34, 2))
                  {
                    goto LABEL_102;
                  }
                }

                else
                {
                  sub_1DB1445E0(&v72, &qword_1ECC26F30, &unk_1DB2BFA90);

                  if ((v4 & 0x2000000000000000) != 0)
                  {
                    v32 = HIBYTE(v4) & 0xF;
                    v22 = v32 + 2;
                    if (__OFADD__(v32, 2))
                    {
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v21 = v20 & 0xFFFFFFFFFFFFLL;
                    v22 = v21 + 2;
                    if (__OFADD__(v21, 2))
                    {
                      goto LABEL_102;
                    }
                  }
                }

                v16 = v19 + v22;
                if (__OFADD__(v19, v22))
                {
                  goto LABEL_103;
                }

                goto LABEL_14;
              }
            }

            else
            {
              sub_1DB1445E0(&v70, &qword_1ECC26F30, &unk_1DB2BFA90);
            }

            sub_1DB1446A4(&v72, &v68, &qword_1ECC26F30, &unk_1DB2BFA90);
            if (v69)
            {
              sub_1DB144640(&v68, &v70);
              v23 = v71;
              v24 = __swift_project_boxed_opaque_existential_1(&v70, v71);
              v25 = *(*(v23 - 8) + 64);
              MEMORY[0x1EEE9AC00](v24);
              (*(v27 + 16))(&v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
              v28 = sub_1DB2BADF4();
              v4 = v29;
              if ((v29 & 0x1000000000000000) != 0)
              {
                v33 = sub_1DB2BAF34();

                result = sub_1DB1445E0(&v72, &qword_1ECC26F30, &unk_1DB2BFA90);
                v31 = __OFADD__(v19, v33);
                v16 = v19 + v33;
                if (v31)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                sub_1DB1445E0(&v72, &qword_1ECC26F30, &unk_1DB2BFA90);

                if ((v4 & 0x2000000000000000) != 0)
                {
                  v30 = HIBYTE(v4) & 0xF;
                }

                else
                {
                  v30 = v28 & 0xFFFFFFFFFFFFLL;
                }

                v31 = __OFADD__(v19, v30);
                v16 = v19 + v30;
                if (v31)
                {
                  goto LABEL_101;
                }
              }

              __swift_destroy_boxed_opaque_existential_1(&v70);
            }

            else
            {
              sub_1DB1445E0(&v72, &qword_1ECC26F30, &unk_1DB2BFA90);
              result = sub_1DB1445E0(&v68, &qword_1ECC26F30, &unk_1DB2BFA90);
              v16 = v19 + 4;
              if (__OFADD__(v19, 4))
              {
                goto LABEL_107;
              }
            }

LABEL_14:
            v12 &= v12 - 1;
          }

LABEL_47:

          v9 = v64 + v16;
          if (__OFADD__(v64, v16))
          {
            goto LABEL_106;
          }

          v8 = v65 + 1;
          v4 = v62;
          if (v65 + 1 == v60)
          {
            v8 = v60;
            a2 = v58;
            v2 = v56;
            break;
          }
        }
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DB0, &qword_1DB2C3B10);
      *&v67 = sub_1DB2BB6E4();
      if (v67)
      {
        result = sub_1DB2BB124();
        v8 = v4;
        v64 = result;
        if (v4 < result)
        {
          v55 = v6;
          v56 = v2;
          v57 = v5;
          v58 = a2;
          v35 = 0;
          v61 = v67 + 32;
          v8 = v4;
          while (1)
          {
            if (v35 >= v63)
            {
LABEL_93:

              a2 = v58;
              v2 = v56;
              goto LABEL_94;
            }

            if (v4 < 0)
            {
              break;
            }

            if (v4 >= *(v67 + 16))
            {
              goto LABEL_109;
            }

            v65 = v8;
            result = *(v61 + 8 * v4);
            v36 = *(result + 16);
            if (v36)
            {
              v37 = result + 32;
              *&v66 = result;

              v38 = 2;
              do
              {
                sub_1DB164AE0(v37, &v72);
                sub_1DB164980(v74, &v70);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
                if (swift_dynamicCast())
                {
                  if ((*(&v68 + 1) & 0x1000000000000000) != 0)
                  {
                    v46 = sub_1DB2BAF34();

                    result = sub_1DB164B3C(&v72);
                    v31 = __OFADD__(v46, 2);
                    v40 = v46 + 2;
                    if (v31)
                    {
                      goto LABEL_100;
                    }
                  }

                  else
                  {
                    sub_1DB164B3C(&v72);

                    if ((*(&v68 + 1) & 0x2000000000000000) != 0)
                    {
                      v39 = HIBYTE(*(&v68 + 1)) & 0xFLL;
                    }

                    else
                    {
                      v39 = v68 & 0xFFFFFFFFFFFFLL;
                    }

                    v31 = __OFADD__(v39, 2);
                    v40 = v39 + 2;
                    if (v31)
                    {
                      goto LABEL_100;
                    }
                  }
                }

                else
                {
                  sub_1DB164980(v74, &v70);
                  v41 = sub_1DB2BADF4();
                  v43 = v42;
                  if ((v42 & 0x1000000000000000) != 0)
                  {
                    v40 = sub_1DB2BAF34();

                    result = sub_1DB164B3C(&v72);
                  }

                  else
                  {
                    sub_1DB164B3C(&v72);

                    if ((v43 & 0x2000000000000000) != 0)
                    {
                      v40 = HIBYTE(v43) & 0xF;
                    }

                    else
                    {
                      v40 = v41 & 0xFFFFFFFFFFFFLL;
                    }
                  }
                }

                v44 = v38 + v40;
                if (__OFADD__(v38, v40))
                {
                  __break(1u);
LABEL_98:
                  __break(1u);
LABEL_99:
                  __break(1u);
LABEL_100:
                  __break(1u);
LABEL_101:
                  __break(1u);
LABEL_102:
                  __break(1u);
LABEL_103:
                  __break(1u);
LABEL_104:
                  __break(1u);
LABEL_105:
                  __break(1u);
LABEL_106:
                  __break(1u);
LABEL_107:
                  __break(1u);
                  goto LABEL_108;
                }

                v45 = v38 > 2;
                v38 = v44 + 2 * (v38 > 2);
                if (__OFADD__(v44, 2 * v45))
                {
                  goto LABEL_98;
                }

                v37 += 80;
                --v36;
              }

              while (v36);

              v31 = __OFADD__(v35, v38);
              v35 += v38;
              if (v31)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v31 = __OFADD__(v35, 2);
              v35 += 2;
              if (v31)
              {
                goto LABEL_110;
              }
            }

            v8 = v65 + 1;
            v4 = v62;
            if (v65 + 1 == v64)
            {
              v8 = v64;
              a2 = v58;
              v2 = v56;
              goto LABEL_89;
            }
          }

LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

LABEL_89:
      }

      else
      {
        result = sub_1DB2BB124();
        v8 = result;
      }
    }

LABEL_94:
    if (v8 >= v4)
    {
      *&v72 = sub_1DB2BB1A4();
      *(&v72 + 1) = v47;
      *&v73 = v48;
      *(&v73 + 1) = v49;
      sub_1DB2BB414();
      swift_getWitnessTable();
      result = sub_1DB2BB194();
      v2[1] = v8;
      v50 = v2[3];
      v31 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (!v31)
      {
        v52 = result;
        v2[3] = v51;
        v53 = v51 - 1;
        result = sub_1DB2BB124();
        *a2 = v52;
        *(a2 + 8) = v53;
        *(a2 + 16) = v8 == result;
        return result;
      }

      goto LABEL_112;
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    return result;
  }

  v2[1] = sub_1DB2BB124();
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

uint64_t QueryBatch.init(query:index:isLast:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for QueryBatch();
  *(a5 + *(result + 36)) = a2;
  *(a5 + *(result + 40)) = a3;
  return result;
}

void *Insert.batchQueries(size:)(uint64_t a1)
{
  sub_1DB1446A4(v1, v26, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v27)
  {
    v3 = *v26;
    v4 = *&v26[8];
    v5 = *&v26[24];
    v6 = *&v26[40];
    v7 = *&v26[56];
    v8 = *&v26[72];
    v9 = *&v26[88];
    v11 = *&v26[104];
    v10 = *&v26[120];
  }

  else
  {
    sub_1DB1445E0(v26, &qword_1ECC27CC8, &unk_1DB2C3860);
    v3 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v11 = 0uLL;
    v10 = 0uLL;
  }

  *v28 = v3;
  *&v28[8] = v4;
  *&v28[24] = v5;
  *&v28[40] = v6;
  *&v28[56] = v7;
  *&v28[72] = v8;
  *&v28[88] = v9;
  *&v28[104] = v11;
  *&v28[120] = v10;
  if (v4)
  {
    v34 = *&v28[80];
    v35 = *&v28[96];
    v36 = *&v28[112];
    v30 = *&v28[16];
    v31 = *&v28[32];
    v32 = *&v28[48];
    v33 = *&v28[64];
    v37 = *&v28[128];
    v29 = *v28;
    sub_1DB16D26C(&v29, v26);
    v12 = swift_allocObject();
    v13 = *&v26[112];
    *(v12 + 112) = *&v26[96];
    *(v12 + 128) = v13;
    v14 = *&v26[128];
    v15 = *&v26[48];
    *(v12 + 48) = *&v26[32];
    *(v12 + 64) = v15;
    v16 = *&v26[80];
    *(v12 + 80) = *&v26[64];
    *(v12 + 96) = v16;
    v17 = *&v26[16];
    *(v12 + 16) = *v26;
    *(v12 + 32) = v17;
    *(v12 + 144) = v14;
    *(v12 + 152) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CE8, &qword_1DB2C3880);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1DB16D2C8;
    *(v18 + 24) = v12;
    v19 = swift_allocObject();
    v20 = v34;
    v21 = v36;
    *(v19 + 112) = v35;
    *(v19 + 128) = v21;
    *(v19 + 144) = v37;
    v22 = v30;
    v23 = v32;
    *(v19 + 48) = v31;
    *(v19 + 64) = v23;
    *(v19 + 80) = v33;
    *(v19 + 96) = v20;
    *(v19 + 16) = v29;
    *(v19 + 32) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CF0, &qword_1DB2C3888);
    result = swift_allocObject();
    result[2] = v18;
    result[3] = sub_1DB16D414;
    result[4] = v19;
  }

  else
  {
    sub_1DB1445E0(v28, &qword_1ECC27CD0, &unk_1DB2CB840);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CD8, &qword_1DB2C3870);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DB2BCC40;
    sub_1DB16D210(v1, v25 + 32);
    *(v25 + 176) = 0;
    *(v25 + 184) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CE0, &qword_1DB2C3878);
    result = swift_allocObject();
    result[2] = v25;
  }

  return result;
}

uint64_t sub_1DB16D2C8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 152);
  *a1 = *(v1 + 80);
  a1[1] = 0;
  a1[2] = v2;
  a1[3] = 0;
}

__n128 sub_1DB16D2DC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  sub_1DB16D26C(a2, v11);

  *&v12 = v4;
  v7 = v15;
  *(a3 + 96) = v14;
  *(a3 + 112) = v7;
  *(a3 + 128) = v16;
  v8 = v11[3];
  *(a3 + 32) = v11[2];
  *(a3 + 48) = v8;
  v9 = v11[1];
  *a3 = v11[0];
  *(a3 + 16) = v9;
  result = v13;
  *(a3 + 64) = v12;
  *(a3 + 80) = result;
  *(a3 + 136) = 1;
  *(a3 + 144) = v5;
  *(a3 + 152) = v6;
  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{
  v3 = v1[3];

  v4 = v1[5];

  v5 = v1[7];

  v6 = v1[9];

  v7 = v1[10];

  if (v1[12])
  {

    v8 = v1[13];
  }

  if (v1[17])
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + 14);
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t Expressible.estimatedBatchRowCount(using:limitedTo:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  if (v14 < 1)
  {
    if (qword_1ECC26BD0 != -1)
    {
      swift_once();
    }

    v25 = qword_1ECC41F10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v26 = swift_allocObject();
    v79 = xmmword_1DB2BCC40;
    *(v26 + 16) = xmmword_1DB2BCC40;
    v95 = sub_1DB156674(0, 25, 0, MEMORY[0x1E69E7CC0]);
    v27._object = 0x80000001DB2D4460;
    v27._countAndFlagsBits = 0xD000000000000018;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    MetatypeMetadata = MEMORY[0x1E69E6530];
    v91[0] = a2;
    sub_1DB1446A4(v91, v94, &qword_1ECC26F30, &unk_1DB2BFA90);
    v80 = 0u;
    v81 = 0u;
    sub_1DB156864(v94, &v80);
    LOBYTE(v82) = 0;
    v28 = v95;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1DB156674(0, *(v28 + 2) + 1, 1, v28);
    }

    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_1DB156674((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    v31 = &v28[40 * v30];
    v32 = v80;
    v33 = v81;
    v31[64] = v82;
    *(v31 + 2) = v32;
    *(v31 + 3) = v33;
    v95 = v28;
    sub_1DB1445E0(v91, &qword_1ECC26F30, &unk_1DB2BFA90);
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v34);
    *(v26 + 32) = v95;
    v35 = sub_1DB2BB264();
    if (os_log_type_enabled(v25, v35))
    {
      v36 = os_variant_has_internal_content() ^ 1;
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *&v80 = v26;
      *(&v80 + 1) = sub_1DB15693C;
      *&v81 = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27468, &unk_1DB2CDBD0);
      sub_1DB156944();
      v38 = sub_1DB2BAD24();
      v40 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
      v41 = swift_allocObject();
      *(v41 + 16) = v79;
      *(v41 + 56) = MEMORY[0x1E69E6158];
      *(v41 + 64) = sub_1DB156A2C();
      *(v41 + 32) = v38;
      *(v41 + 40) = v40;
      sub_1DB2BAA04();
    }
  }

  else
  {
    v15 = *(v8 + 16);
    v15(&v77 - v13, v4, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
    if (swift_dynamicCast())
    {
      sub_1DB1355D0(&v80, v91);
      v16 = MetatypeMetadata;
      v17 = v93;
      __swift_project_boxed_opaque_existential_1(v91, MetatypeMetadata);
      v18 = a1[9];
      v88 = a1[8];
      v89 = v18;
      v90 = a1[10];
      v19 = a1[5];
      v84 = a1[4];
      v85 = v19;
      v20 = a1[7];
      v86 = a1[6];
      v87 = v20;
      v21 = a1[1];
      v80 = *a1;
      v81 = v21;
      v22 = a1[3];
      v82 = a1[2];
      v83 = v22;
      v23 = sub_1DB16DD44(&v80, a2, v16, v17);
      __swift_destroy_boxed_opaque_existential_1(v91);
      return v23;
    }

    *&v82 = 0;
    v80 = 0u;
    v81 = 0u;
    sub_1DB1445E0(&v80, &qword_1ECC279E8, &unk_1DB2C3AE0);
    v15(v12, v4, a3);
    v42 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      v43 = v80;
      v44 = a1[9];
      v88 = a1[8];
      v89 = v44;
      v90 = a1[10];
      v45 = a1[5];
      v84 = a1[4];
      v85 = v45;
      v46 = a1[7];
      v86 = a1[6];
      v87 = v46;
      v47 = a1[1];
      v80 = *a1;
      v81 = v47;
      v48 = a1[3];
      v82 = a1[2];
      v83 = v48;
      v49 = sub_1DB16E588(&v80, a2, v43, *(&v43 + 1));

      return v49;
    }

    if (qword_1ECC26BD0 != -1)
    {
      swift_once();
    }

    v50 = qword_1ECC41F10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v51 = swift_allocObject();
    v79 = xmmword_1DB2BCC40;
    *(v51 + 16) = xmmword_1DB2BCC40;
    v95 = sub_1DB156674(0, 26, 0, MEMORY[0x1E69E7CC0]);
    v52._countAndFlagsBits = 0;
    v52._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v52);
    MetatypeMetadata = v42;
    v91[0] = 0xD000000000000028;
    v91[1] = 0x80000001DB2D4480;
    sub_1DB1446A4(v91, v94, &qword_1ECC26F30, &unk_1DB2BFA90);
    v80 = 0u;
    v81 = 0u;
    sub_1DB156864(v94, &v80);
    LOBYTE(v82) = 0;
    v53 = v95;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1DB156674(0, *(v53 + 2) + 1, 1, v53);
    }

    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      v78 = v55 + 1;
      v76 = sub_1DB156674((v54 > 1), v55 + 1, 1, v53);
      v56 = v78;
      v53 = v76;
    }

    *(v53 + 2) = v56;
    v57 = &v53[40 * v55];
    v58 = v80;
    v59 = v81;
    v57[64] = v82;
    *(v57 + 2) = v58;
    *(v57 + 3) = v59;
    v95 = v53;
    sub_1DB1445E0(v91, &qword_1ECC26F30, &unk_1DB2BFA90);
    v60._object = 0x80000001DB2D44B0;
    v60._countAndFlagsBits = 0xD000000000000018;
    LogMessage.StringInterpolation.appendLiteral(_:)(v60);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v91[0] = DynamicType;
    sub_1DB1446A4(v91, v94, &qword_1ECC26F30, &unk_1DB2BFA90);
    v80 = 0u;
    v81 = 0u;
    sub_1DB156864(v94, &v80);
    LOBYTE(v82) = 0;
    v62 = v95;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_1DB156674(0, *(v62 + 2) + 1, 1, v62);
      v95 = v62;
    }

    v64 = *(v62 + 2);
    v63 = *(v62 + 3);
    if (v64 >= v63 >> 1)
    {
      v62 = sub_1DB156674((v63 > 1), v64 + 1, 1, v62);
    }

    *(v62 + 2) = v64 + 1;
    v65 = &v62[40 * v64];
    v66 = v80;
    v67 = v81;
    v65[64] = v82;
    *(v65 + 2) = v66;
    *(v65 + 3) = v67;
    v95 = v62;
    sub_1DB1445E0(v91, &qword_1ECC26F30, &unk_1DB2BFA90);
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v68);
    *(v51 + 32) = v95;
    v69 = sub_1DB2BB264();
    if (os_log_type_enabled(v50, v69))
    {
      v70 = os_variant_has_internal_content() ^ 1;
      v71 = swift_allocObject();
      *(v71 + 16) = v70;
      *&v80 = v51;
      *(&v80 + 1) = sub_1DB158A74;
      *&v81 = v71;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27468, &unk_1DB2CDBD0);
      sub_1DB156944();
      v72 = sub_1DB2BAD24();
      v74 = v73;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
      v75 = swift_allocObject();
      *(v75 + 16) = v79;
      *(v75 + 56) = v42;
      *(v75 + 64) = sub_1DB156A2C();
      *(v75 + 32) = v72;
      *(v75 + 40) = v74;
      sub_1DB2BAA04();
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t sub_1DB16DD44(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[9];
  v76 = a1[8];
  v77 = v5;
  v78 = a1[10];
  v6 = a1[5];
  v72 = a1[4];
  v73 = v6;
  v7 = a1[7];
  v74 = a1[6];
  v75 = v7;
  v8 = a1[1];
  v68 = *a1;
  v69 = v8;
  v9 = a1[3];
  v70 = a1[2];
  v71 = v9;
  v10 = sub_1DB1705CC(&v68, a3, a4);
  if (v11)
  {
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v12 = *(&v69 + 1);
    v13 = v70;
    __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DB2BCC40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274E0, &unk_1DB2BFDE0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB2BCC40;
    *(&v63 + 1) = MEMORY[0x1E69E6158];
    *&v62 = 0xD00000000000002CLL;
    *(&v62 + 1) = 0x80000001DB2D44D0;
    *(v15 + 48) = 0u;
    *(v15 + 32) = 0u;
    sub_1DB156864(&v62, v15 + 32);
    *(v15 + 64) = 0;
    *(v14 + 32) = v15;
    Logger.warning(_:)(v14, v12, v13);
LABEL_21:

    __swift_destroy_boxed_opaque_existential_1(&v68);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = v10;
  if (v10 <= 0)
  {
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v30 = *(&v69 + 1);
    v31 = v70;
    __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1DB2BCC40;
    v67 = sub_1DB156674(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v33._object = 0x80000001DB2D4500;
    v33._countAndFlagsBits = 0xD00000000000001BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    v66 = MEMORY[0x1E69E6530];
    v65[0] = v16;
    sub_1DB1446A4(v65, v61, &qword_1ECC26F30, &unk_1DB2BFA90);
    v62 = 0u;
    v63 = 0u;
    sub_1DB156864(v61, &v62);
    v64 = 0;
    v34 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1DB156674(0, *(v34 + 2) + 1, 1, v34);
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_1DB156674((v35 > 1), v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v37 = &v34[40 * v36];
    v38 = v62;
    v39 = v63;
    v37[64] = v64;
    *(v37 + 2) = v38;
    *(v37 + 3) = v39;
    v67 = v34;
    sub_1DB1445E0(v65, &qword_1ECC26F30, &unk_1DB2BFA90);
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    *(v32 + 32) = v67;
    Logger.warning(_:)(v32, v30, v31);
    goto LABEL_21;
  }

  if (v10 >= a2)
  {
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v41 = *(&v69 + 1);
    v42 = v70;
    __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1DB2BCC40;
    v67 = sub_1DB156674(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v44._countAndFlagsBits = 0xD000000000000023;
    v44._object = 0x80000001DB2D4520;
    LogMessage.StringInterpolation.appendLiteral(_:)(v44);
    v45 = MEMORY[0x1E69E6530];
    v66 = MEMORY[0x1E69E6530];
    v65[0] = v16;
    sub_1DB1446A4(v65, v61, &qword_1ECC26F30, &unk_1DB2BFA90);
    v62 = 0u;
    v63 = 0u;
    sub_1DB156864(v61, &v62);
    v64 = 0;
    v46 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_1DB156674(0, *(v46 + 2) + 1, 1, v46);
    }

    v48 = *(v46 + 2);
    v47 = *(v46 + 3);
    if (v48 >= v47 >> 1)
    {
      v46 = sub_1DB156674((v47 > 1), v48 + 1, 1, v46);
    }

    *(v46 + 2) = v48 + 1;
    v49 = &v46[40 * v48];
    v50 = v62;
    v51 = v63;
    v49[64] = v64;
    *(v49 + 2) = v50;
    *(v49 + 3) = v51;
    v67 = v46;
    sub_1DB1445E0(v65, &qword_1ECC26F30, &unk_1DB2BFA90);
    v52._countAndFlagsBits = 0xD00000000000002DLL;
    v52._object = 0x80000001DB2D4550;
    LogMessage.StringInterpolation.appendLiteral(_:)(v52);
    v66 = v45;
    v65[0] = v16;
    sub_1DB1446A4(v65, v61, &qword_1ECC26F30, &unk_1DB2BFA90);
    v62 = 0u;
    v63 = 0u;
    sub_1DB156864(v61, &v62);
    v64 = 0;
    v53 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1DB156674(0, *(v53 + 2) + 1, 1, v53);
      v67 = v53;
    }

    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_1DB156674((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[40 * v55];
    v57 = v62;
    v58 = v63;
    v56[64] = v64;
    *(v56 + 2) = v57;
    *(v56 + 3) = v58;
    v67 = v53;
    sub_1DB1445E0(v65, &qword_1ECC26F30, &unk_1DB2BFA90);
    v59._countAndFlagsBits = 0;
    v59._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v59);
    *(v43 + 32) = v67;
    Logger.warning(_:)(v43, v41, v42);

    __swift_destroy_boxed_opaque_existential_1(&v68);
    return 1;
  }

  else
  {
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v17 = *(&v69 + 1);
    v18 = v70;
    __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DB2BCC40;
    v67 = sub_1DB156674(0, 30, 0, MEMORY[0x1E69E7CC0]);
    v20._countAndFlagsBits = 0xD00000000000001DLL;
    v20._object = 0x80000001DB2D4580;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v66 = MEMORY[0x1E69E6530];
    v65[0] = v16;
    sub_1DB1446A4(v65, v61, &qword_1ECC26F30, &unk_1DB2BFA90);
    v62 = 0u;
    v63 = 0u;
    sub_1DB156864(v61, &v62);
    v64 = 0;
    v21 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1DB156674(0, *(v21 + 2) + 1, 1, v21);
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v60 = sub_1DB156674((v22 > 1), v23 + 1, 1, v21);
      v24 = v23 + 1;
      v21 = v60;
    }

    *(v21 + 2) = v24;
    v25 = &v21[40 * v23];
    v26 = v62;
    v27 = v63;
    v25[64] = v64;
    *(v25 + 2) = v26;
    *(v25 + 3) = v27;
    v67 = v21;
    sub_1DB1445E0(v65, &qword_1ECC26F30, &unk_1DB2BFA90);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    *(v19 + 32) = v67;
    Logger.info(_:)(v19, v17, v18);

    __swift_destroy_boxed_opaque_existential_1(&v68);
    return a2 / v16;
  }
}

uint64_t sub_1DB16E588(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D00, &qword_1DB2C39C8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v168 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v168 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v190 = &v168 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v168 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v168 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D08, &qword_1DB2C39D0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v174 = &v168 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v182 = &v168 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v185 = &v168 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v194 = &v168 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v187 = &v168 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v195 = &v168 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v188 = &v168 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v192 = &v168 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v189 = &v168 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v193 = &v168 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v175 = &v168 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v168 - v51;
  v53 = *(a1 + 168);
  v54 = *(v53 + 16);
  if (!v54)
  {
    v196 = 0;
    goto LABEL_57;
  }

  v179 = v52;
  v184 = v15;
  v169 = a2;
  v196 = 0;
  v205 = 0;
  v55 = 0;
  v56 = v53 + 32;
  v57 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v57 = a3;
  }

  v58 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v58 = 11;
  }

  v200 = v58 | (v57 << 16);
  v199 = (v50 + 8);
  v198 = a4;
  v197 = a3;
  v186 = v18;
  v191 = v23;
  v176 = v25;
  v207 = v26;
  v177 = v12;
  v172 = v53;
  v171 = v54;
  v170 = v53 + 32;
  do
  {
    if (v55 >= *(v53 + 16))
    {
      goto LABEL_79;
    }

    v59 = *(v56 + 24 * v55 + 16);
    v178 = *(v59 + 16);
    if (!v178)
    {
      goto LABEL_40;
    }

    v173 = v55;
    v181 = v59 + 32;

    v61 = 0;
    v180 = v60;
    do
    {
      if (v61 >= *(v60 + 16))
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        swift_once();
LABEL_51:
        sub_1DB2BBAF4();
        v122 = v221;
        v123 = v222;
        __swift_project_boxed_opaque_existential_1(&v219, v221);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
        v124 = swift_allocObject();
        v210 = xmmword_1DB2BCC40;
        *(v124 + 16) = xmmword_1DB2BCC40;
        v218 = sub_1DB156674(0, 41, 0, MEMORY[0x1E69E7CC0]);
        v125._countAndFlagsBits = 0xD000000000000028;
        v125._object = 0x80000001DB2D4670;
        LogMessage.StringInterpolation.appendLiteral(_:)(v125);
        v126 = MEMORY[0x1E69E6158];
        v217 = MEMORY[0x1E69E6158];
        v216[0] = v211;
        v216[1] = v25;
        sub_1DB1446A4(v216, v212, &qword_1ECC26F30, &unk_1DB2BFA90);
        v213 = 0u;
        v214 = 0u;
        sub_1DB156864(v212, &v213);
        v215 = 0;
        v127 = v218;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_1DB156674(0, *(v127 + 2) + 1, 1, v127);
        }

        v129 = *(v127 + 2);
        v128 = *(v127 + 3);
        if (v129 >= v128 >> 1)
        {
          v127 = sub_1DB156674((v128 > 1), v129 + 1, 1, v127);
        }

        *(v127 + 2) = v129 + 1;
        v130 = &v127[40 * v129];
        v131 = v213;
        v132 = v214;
        v130[64] = v215;
        *(v130 + 2) = v131;
        *(v130 + 3) = v132;
        v218 = v127;
        sub_1DB1445E0(v216, &qword_1ECC26F30, &unk_1DB2BFA90);
        v133._countAndFlagsBits = 0;
        v133._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v133);
        *(v124 + 32) = v218;
        Logger.warning(_:)(v124, v122, v123);

        __swift_destroy_boxed_opaque_existential_1(&v219);
        sub_1DB2BBAF4();
        v134 = v221;
        v135 = v222;
        __swift_project_boxed_opaque_existential_1(&v219, v221);
        v136 = swift_allocObject();
        *(v136 + 16) = v210;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274E0, &unk_1DB2BFDE0);
        v137 = swift_allocObject();
        *(v137 + 16) = v210;
        *(&v214 + 1) = v126;
        *&v213 = 0xD00000000000002CLL;
        *(&v213 + 1) = 0x80000001DB2D44D0;
        *(v137 + 48) = 0u;
        *(v137 + 32) = 0u;
        sub_1DB156864(&v213, v137 + 32);
        *(v137 + 64) = 0;
        *(v136 + 32) = v137;
        Logger.warning(_:)(v136, v134, v135);
LABEL_64:

        __swift_destroy_boxed_opaque_existential_1(&v219);
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v183 = v61;
      v62 = (v181 + 56 * v61);
      v63 = v62[1];
      v64 = v62[6];
      *&v210 = *v62;
      v219 = v210;
      v220 = v63;
      swift_bridgeObjectRetain_n();
      v204 = v64;

      MEMORY[0x1E1283490](710684252, 0xE400000000000000);
      v65 = v179;
      sub_1DB2BA9F4();
      v201 = v63;
      v25 = sub_1DB2BB004();
      sub_1DB1688F0(&qword_1ECC27D10, &qword_1ECC27D08, &qword_1DB2C39D0);
      v66 = v175;
      sub_1DB2BA9B4();
      v67 = v207;
      sub_1DB2BA9D4();

      v68 = *v199;
      (*v199)(v66, v67);
      v68(v65, v67);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D18, &qword_1DB2C39D8);
      v70 = *(*(v69 - 8) + 48);
      v203 = 1;
      v71 = v176;
      LODWORD(v68) = v70(v176, 1, v69);
      sub_1DB1445E0(v71, &qword_1ECC27D00, &qword_1DB2C39C8);
      v72 = v68 == 1;
      v73 = v201;
      v74 = v177;
      if (v72)
      {
        v219 = 34;
        v220 = 0xE100000000000000;
        MEMORY[0x1E1283490](v210, v201);
        MEMORY[0x1E1283490](0x2A5C2E5C22, 0xE500000000000000);
        v75 = v182;
        sub_1DB2BA9F4();
        sub_1DB2BB004();
        v25 = v76;
        sub_1DB1688F0(&qword_1ECC27D10, &qword_1ECC27D08, &qword_1DB2C39D0);
        v77 = v174;
        sub_1DB2BA9B4();
        sub_1DB2BA9D4();

        v78 = *v199;
        (*v199)(v77, v67);
        v78(v75, v67);
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D18, &qword_1DB2C39D8);
        v203 = (*(*(v79 - 8) + 48))(v74, 1, v79) != 1;
        sub_1DB1445E0(v74, &qword_1ECC27D00, &qword_1DB2C39C8);
        v73 = v201;
      }

      v80 = v204;
      v202 = *(v204 + 16);
      if (v202)
      {

        v81 = 0;
        v82 = (v80 + 56);
        while (1)
        {
          if (v81 >= *(v80 + 16))
          {
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          v83 = *(v82 - 3);
          v25 = *(v82 - 2);
          v206 = *(v82 - 1);
          v208 = *v82;
          v211 = v83;
          if (v203)
          {
          }

          else
          {
            v219 = v210;
            v220 = v73;

            MEMORY[0x1E1283490](46, 0xE100000000000000);
            v209 = v25;
            MEMORY[0x1E1283490](v83, v25);
            v84 = v193;
            sub_1DB2BA9F4();
            sub_1DB2BB004();
            sub_1DB1688F0(&qword_1ECC27D10, &qword_1ECC27D08, &qword_1DB2C39D0);
            v88 = v189;
            sub_1DB2BA9B4();
            v89 = v207;
            sub_1DB2BA9D4();

            v96 = *v199;
            (*v199)(v88, v89);
            v96(v84, v89);
            v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D18, &qword_1DB2C39D8);
            v98 = v191;
            v99 = (*(*(v97 - 8) + 48))(v191, 1, v97);
            sub_1DB1445E0(v98, &qword_1ECC27D00, &qword_1DB2C39C8);
            v73 = v201;
            v25 = v209;
            if (v99 == 1)
            {
              v219 = 34;
              v220 = 0xE100000000000000;
              MEMORY[0x1E1283490](v210, v201);
              MEMORY[0x1E1283490](11810, 0xE200000000000000);
              MEMORY[0x1E1283490](v211, v25);
              v90 = v192;
              sub_1DB2BA9F4();
              sub_1DB2BB004();
              sub_1DB1688F0(&qword_1ECC27D10, &qword_1ECC27D08, &qword_1DB2C39D0);
              v91 = v188;
              sub_1DB2BA9B4();
              v92 = v207;
              sub_1DB2BA9D4();

              v100 = *v199;
              (*v199)(v91, v92);
              v100(v90, v92);
              v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D18, &qword_1DB2C39D8);
              v102 = v190;
              LODWORD(v100) = (*(*(v101 - 8) + 48))(v190, 1, v101);
              sub_1DB1445E0(v102, &qword_1ECC27D00, &qword_1DB2C39C8);
              v73 = v201;
              v25 = v209;
              if (v100 == 1)
              {
                v219 = v210;
                v220 = v201;

                MEMORY[0x1E1283490](8750, 0xE200000000000000);
                MEMORY[0x1E1283490](v211, v25);
                MEMORY[0x1E1283490](34, 0xE100000000000000);
                sub_1DB2BA9F4();
                sub_1DB2BB004();
                sub_1DB1688F0(&qword_1ECC27D10, &qword_1ECC27D08, &qword_1DB2C39D0);
                v93 = v187;
                sub_1DB2BA9B4();
                v94 = v186;
                v95 = v207;
                sub_1DB2BA9D4();

                v103 = *v199;
                (*v199)(v93, v95);
                v103(v195, v95);
                v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D18, &qword_1DB2C39D8);
                LODWORD(v103) = (*(*(v104 - 8) + 48))(v94, 1, v104);
                sub_1DB1445E0(v94, &qword_1ECC27D00, &qword_1DB2C39C8);
                v73 = v201;
                v25 = v209;
                if (v103 == 1)
                {
                  v219 = 34;
                  v220 = 0xE100000000000000;
                  MEMORY[0x1E1283490](v210, v201);
                  MEMORY[0x1E1283490](2240034, 0xE300000000000000);
                  MEMORY[0x1E1283490](v211, v25);
                  MEMORY[0x1E1283490](34, 0xE100000000000000);
                  sub_1DB2BA9F4();
                  sub_1DB2BB004();
                  sub_1DB1688F0(&qword_1ECC27D10, &qword_1ECC27D08, &qword_1DB2C39D0);
                  v105 = v185;
                  sub_1DB2BA9B4();
                  v106 = v184;
                  v107 = v207;
                  sub_1DB2BA9D4();

                  v108 = *v199;
                  (*v199)(v105, v107);
                  v108(v194, v107);
                  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D18, &qword_1DB2C39D8);
                  LODWORD(v108) = (*(*(v109 - 8) + 48))(v106, 1, v109);
                  sub_1DB1445E0(v106, &qword_1ECC27D00, &qword_1DB2C39C8);
                  v73 = v201;
                  v25 = v209;
                  if (v108 == 1)
                  {

                    v80 = v204;
                    goto LABEL_18;
                  }
                }
              }
            }
          }

          if (!(v208 >> 6))
          {
            break;
          }

          v80 = v204;
          if (v208 >> 6 == 1)
          {
            if (v208)
            {
              goto LABEL_50;
            }

LABEL_29:

            v85 = 0x7FFFFFFFFFFFFFFFLL;
            if (v206 < 0x7FFFFFFFFFFFFFFFLL)
            {
              v85 = v206;
            }

            goto LABEL_31;
          }

          v85 = 8;
LABEL_31:
          v86 = __OFADD__(v205, v85);
          v87 = v205 + v85;
          if (v86)
          {
            goto LABEL_66;
          }

          v196 = v87;
          v205 = v87;
LABEL_18:
          ++v81;
          v82 += 40;
          if (v202 == v81)
          {
            swift_bridgeObjectRelease_n();
            goto LABEL_11;
          }
        }

        v80 = v204;
        if (v208)
        {
LABEL_50:

          if (qword_1EE13F2E0 != -1)
          {
            goto LABEL_80;
          }

          goto LABEL_51;
        }

        goto LABEL_29;
      }

LABEL_11:
      v61 = v183 + 1;

      v60 = v180;
    }

    while (v61 != v178);

    v53 = v172;
    v54 = v171;
    v55 = v173;
    v56 = v170;
LABEL_40:
    ++v55;
  }

  while (v55 != v54);
  if (v196 <= 0)
  {
LABEL_57:
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v138 = v221;
    v139 = v222;
    __swift_project_boxed_opaque_existential_1(&v219, v221);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v140 = swift_allocObject();
    *(v140 + 16) = xmmword_1DB2BCC40;
    v218 = sub_1DB156674(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v141._object = 0x80000001DB2D4500;
    v141._countAndFlagsBits = 0xD00000000000001BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v141);
    v217 = MEMORY[0x1E69E6530];
    v216[0] = v196;
    sub_1DB1446A4(v216, v212, &qword_1ECC26F30, &unk_1DB2BFA90);
    v213 = 0u;
    v214 = 0u;
    sub_1DB156864(v212, &v213);
    v215 = 0;
    v142 = v218;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v142 = sub_1DB156674(0, *(v142 + 2) + 1, 1, v142);
    }

    v144 = *(v142 + 2);
    v143 = *(v142 + 3);
    if (v144 >= v143 >> 1)
    {
      v142 = sub_1DB156674((v143 > 1), v144 + 1, 1, v142);
    }

    *(v142 + 2) = v144 + 1;
    v145 = &v142[40 * v144];
    v146 = v213;
    v147 = v214;
    v145[64] = v215;
    *(v145 + 2) = v146;
    *(v145 + 3) = v147;
    v218 = v142;
    sub_1DB1445E0(v216, &qword_1ECC26F30, &unk_1DB2BFA90);
    v148._countAndFlagsBits = 0;
    v148._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v148);
    *(v140 + 32) = v218;
    Logger.warning(_:)(v140, v138, v139);
    goto LABEL_64;
  }

  v25 = 0xD00000000000001BLL;
  if (v196 >= v169)
  {
LABEL_67:
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v149 = v221;
    v150 = v222;
    __swift_project_boxed_opaque_existential_1(&v219, v221);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v151 = swift_allocObject();
    *(v151 + 16) = xmmword_1DB2BCC40;
    v218 = sub_1DB156674(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v152._countAndFlagsBits = (v25 + 8);
    v152._object = 0x80000001DB2D4520;
    LogMessage.StringInterpolation.appendLiteral(_:)(v152);
    v153 = MEMORY[0x1E69E6530];
    v217 = MEMORY[0x1E69E6530];
    v216[0] = v196;
    sub_1DB1446A4(v216, v212, &qword_1ECC26F30, &unk_1DB2BFA90);
    v213 = 0u;
    v214 = 0u;
    sub_1DB156864(v212, &v213);
    v215 = 0;
    v154 = v218;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v154 = sub_1DB156674(0, *(v154 + 2) + 1, 1, v154);
    }

    v156 = *(v154 + 2);
    v155 = *(v154 + 3);
    if (v156 >= v155 >> 1)
    {
      v154 = sub_1DB156674((v155 > 1), v156 + 1, 1, v154);
    }

    *(v154 + 2) = v156 + 1;
    v157 = &v154[40 * v156];
    v158 = v213;
    v159 = v214;
    v157[64] = v215;
    *(v157 + 2) = v158;
    *(v157 + 3) = v159;
    v218 = v154;
    sub_1DB1445E0(v216, &qword_1ECC26F30, &unk_1DB2BFA90);
    v160._countAndFlagsBits = (v25 + 18);
    v160._object = 0x80000001DB2D4550;
    LogMessage.StringInterpolation.appendLiteral(_:)(v160);
    v217 = v153;
    v216[0] = v196;
    sub_1DB1446A4(v216, v212, &qword_1ECC26F30, &unk_1DB2BFA90);
    v213 = 0u;
    v214 = 0u;
    sub_1DB156864(v212, &v213);
    v215 = 0;
    v161 = v218;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v161 = sub_1DB156674(0, *(v161 + 2) + 1, 1, v161);
      v218 = v161;
    }

    v163 = *(v161 + 2);
    v162 = *(v161 + 3);
    if (v163 >= v162 >> 1)
    {
      v161 = sub_1DB156674((v162 > 1), v163 + 1, 1, v161);
    }

    *(v161 + 2) = v163 + 1;
    v164 = &v161[40 * v163];
    v165 = v213;
    v166 = v214;
    v164[64] = v215;
    *(v164 + 2) = v165;
    *(v164 + 3) = v166;
    v218 = v161;
    sub_1DB1445E0(v216, &qword_1ECC26F30, &unk_1DB2BFA90);
    v167._countAndFlagsBits = 0;
    v167._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v167);
    *(v151 + 32) = v218;
    Logger.warning(_:)(v151, v149, v150);

    __swift_destroy_boxed_opaque_existential_1(&v219);
    return 1;
  }

  else
  {
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v110 = v221;
    v111 = v222;
    __swift_project_boxed_opaque_existential_1(&v219, v221);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_1DB2BCC40;
    v218 = sub_1DB156674(0, 30, 0, MEMORY[0x1E69E7CC0]);
    v113._countAndFlagsBits = 0xD00000000000001DLL;
    v113._object = 0x80000001DB2D4580;
    LogMessage.StringInterpolation.appendLiteral(_:)(v113);
    v217 = MEMORY[0x1E69E6530];
    v216[0] = v196;
    sub_1DB1446A4(v216, v212, &qword_1ECC26F30, &unk_1DB2BFA90);
    v213 = 0u;
    v214 = 0u;
    sub_1DB156864(v212, &v213);
    v215 = 0;
    v114 = v218;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = sub_1DB156674(0, *(v114 + 2) + 1, 1, v114);
    }

    v116 = *(v114 + 2);
    v115 = *(v114 + 3);
    if (v116 >= v115 >> 1)
    {
      v114 = sub_1DB156674((v115 > 1), v116 + 1, 1, v114);
    }

    *(v114 + 2) = v116 + 1;
    v117 = &v114[40 * v116];
    v118 = v213;
    v119 = v214;
    v117[64] = v215;
    *(v117 + 2) = v118;
    *(v117 + 3) = v119;
    v218 = v114;
    sub_1DB1445E0(v216, &qword_1ECC26F30, &unk_1DB2BFA90);
    v120._countAndFlagsBits = 0;
    v120._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v120);
    *(v112 + 32) = v218;
    Logger.info(_:)(v112, v110, v111);

    __swift_destroy_boxed_opaque_existential_1(&v219);
    return v169 / v196;
  }
}

uint64_t sub_1DB1705CC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[9];
  v139 = a1[8];
  v140 = v6;
  v7 = *(a1 + 21);
  v141 = *(a1 + 20);
  v8 = a1[5];
  v135 = a1[4];
  v136 = v8;
  v9 = a1[7];
  v137 = a1[6];
  v138 = v9;
  v10 = a1[1];
  v131 = *a1;
  v132 = v10;
  v11 = a1[3];
  v133 = a1[2];
  v134 = v11;
  v13 = a3 + 16;
  v12 = *(a3 + 16);
  v12(v142, a2, a3);
  v95 = v142[1];

  sub_1DB17181C(v142);
  v93 = v12;
  v12(v143, a2, a3);
  v14 = v143[2];
  v15 = v143[3];
  v16 = v143[6];
  v17 = v143[7];

  sub_1DB17181C(v143);
  v94 = v17;
  if (!v17)
  {
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v34 = v125;
    v35 = v126;
    __swift_project_boxed_opaque_existential_1(&v123, v125);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1DB2BCC40;
    v130 = sub_1DB156674(0, 63, 0, MEMORY[0x1E69E7CC0]);
    v37._countAndFlagsBits = 0xD00000000000003ELL;
    v37._object = 0x80000001DB2D45A0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    *(&v97 + 1) = MEMORY[0x1E69E6158];
    *&v96 = v14;
    *(&v96 + 1) = v15;
    sub_1DB1446A4(&v96, v108, &qword_1ECC26F30, &unk_1DB2BFA90);
    v111 = 0u;
    v112 = 0u;

    sub_1DB156864(v108, &v111);
    LOBYTE(v113) = 0;
    v38 = v130;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1DB156674(0, *(v38 + 2) + 1, 1, v38);
      v130 = v38;
    }

    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_1DB156674((v39 > 1), v40 + 1, 1, v38);
    }

    *(v38 + 2) = v40 + 1;
    v41 = &v38[40 * v40];
    v42 = v111;
    v43 = v112;
    v41[64] = v113;
    *(v41 + 2) = v42;
    *(v41 + 3) = v43;
    v130 = v38;
    sub_1DB1445E0(&v96, &qword_1ECC26F30, &unk_1DB2BFA90);
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v44);
    *(v36 + 32) = v130;
    Logger.warning(_:)(v36, v34, v35);
LABEL_27:

    __swift_destroy_boxed_opaque_existential_1(&v123);

    return 0;
  }

  v91 = a2;
  v92 = v3;
  *&v111 = v7;
  DataSpecification.subscript.getter(v16, v17, &v123);
  v18 = *(&v123 + 1);
  if (!*(&v123 + 1))
  {
LABEL_21:
    *&v123 = 0;
    *(&v123 + 1) = 0xE000000000000000;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
    MEMORY[0x1E1283490](v14, v15);
    MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
    MEMORY[0x1E1283490](v16, v17);
    v45 = v123;
    v124 = 0;
    LOBYTE(v125) = 5;
    sub_1DB171870();
    swift_willThrowTypedImpl();
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v13 = v125;
    v23 = v126;
    __swift_project_boxed_opaque_existential_1(&v123, v125);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1DB2BCC40;
    v130 = sub_1DB156674(0, 64, 0, MEMORY[0x1E69E7CC0]);
    v46._countAndFlagsBits = 0xD00000000000003FLL;
    v46._object = 0x80000001DB2D4630;
    LogMessage.StringInterpolation.appendLiteral(_:)(v46);
    *(&v97 + 1) = &type metadata for AccessCredential.Error;
    v47 = swift_allocObject();
    *&v96 = v47;
    *(v47 + 16) = v45;
    *(v47 + 32) = 0;
    *(v47 + 40) = 5;
    sub_1DB1446A4(&v96, v108, &qword_1ECC26F30, &unk_1DB2BFA90);
    v111 = 0u;
    v112 = 0u;
    sub_1DB156864(v108, &v111);
    LOBYTE(v113) = 0;
    v26 = v130;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1DB156674(0, *(v26 + 2) + 1, 1, v26);
      v130 = v26;
    }

LABEL_25:
    v25 = *(v26 + 2);
    v27 = *(v26 + 3);
    v20 = v25 + 1;
    if (v25 >= v27 >> 1)
    {
LABEL_77:
      v26 = sub_1DB156674((v27 > 1), v20, 1, v26);
    }

    *(v26 + 2) = v20;
    v48 = &v26[40 * v25];
    v49 = v111;
    v50 = v112;
    v48[64] = v113;
    *(v48 + 2) = v49;
    *(v48 + 3) = v50;
    v130 = v26;
    sub_1DB1445E0(&v96, &qword_1ECC26F30, &unk_1DB2BFA90);
    v51._countAndFlagsBits = 0;
    v51._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v51);
    *(v24 + 32) = v130;
    Logger.warning(_:)(v24, v13, v23);
    goto LABEL_27;
  }

  v19 = v123;
  v111 = v123;
  *&v112 = v124;
  v20 = &v111;
  v90 = v15;
  DataSpecification.Namespace.subscript.getter(v14, v15, &v123);
  v21 = *(&v123 + 1);
  if (!*(&v123 + 1))
  {
    sub_1DB1718E4(v19, v18);
    v15 = v90;
    v17 = v94;
    goto LABEL_21;
  }

  v83 = v123;
  v84 = v124;
  v85 = v125;
  v86 = v126;
  v87 = v127;
  v88 = v128;
  v89 = a3;
  sub_1DB1718E4(v19, v18);
  v22 = v95 + 32;
  v23 = -*(v95 + 16);
  v24 = -1;
  v25 = 0xE100000000000000;
  v26 = (v95 + 32);
  while (v23 + v24 != -1)
  {
    v27 = *(v95 + 16);
    if (++v24 >= v27)
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    sub_1DB164980(v26, &v123);
    v28 = v125;
    v29 = v126;
    __swift_project_boxed_opaque_existential_1(&v123, v125);
    v30 = Expressible.unqualifiedColumnName.getter(v28, v29);
    v20 = v31;
    if (v30 == 42 && v31 == 0xE100000000000000)
    {

      __swift_destroy_boxed_opaque_existential_1(&v123);
LABEL_36:
      v63 = v88;

      sub_1DB171928(v83, v21);
      goto LABEL_37;
    }

    v26 += 40;
    v33 = sub_1DB2BB924();

    __swift_destroy_boxed_opaque_existential_1(&v123);
    if (v33)
    {
      goto LABEL_36;
    }
  }

  *&v123 = v83;
  *(&v123 + 1) = v21;
  v124 = v84;
  LOBYTE(v125) = v85 & 1;
  v126 = v86;
  LOBYTE(v127) = v87 & 1;
  v128 = v88;
  v53 = *(v95 + 16);
  v54 = MEMORY[0x1E69E7CC0];
  if (v53)
  {
    *&v96 = MEMORY[0x1E69E7CC0];
    sub_1DB138470(0, v53, 0);
    v54 = v96;
    do
    {
      sub_1DB164980(v22, &v111);
      v55 = *(&v112 + 1);
      v56 = v113;
      __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
      v57 = Expressible.unqualifiedColumnName.getter(v55, v56);
      v59 = v58;
      __swift_destroy_boxed_opaque_existential_1(&v111);
      *&v96 = v54;
      v61 = *(v54 + 16);
      v60 = *(v54 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1DB138470((v60 > 1), v61 + 1, 1);
        v54 = v96;
      }

      *(v54 + 16) = v61 + 1;
      v62 = v54 + 16 * v61;
      *(v62 + 32) = v57;
      *(v62 + 40) = v59;
      v22 += 40;
      --v53;
    }

    while (v53);
  }

  v63 = DataSpecification.Namespace.Table.columnSpecs(for:)(v54);

LABEL_37:
  v64 = *(v63 + 16);
  if (v64)
  {
    v65 = 0;
    v66 = (v63 + 56);
    while (1)
    {
      v68 = *(v66 - 1);
      v69 = *v66;
      if (v69 >> 6 > 1)
      {
        v67 = __OFADD__(v65, 8);
        v65 += 8;
        if (v67)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v69)
        {
          v79 = *(v66 - 3);
          v80 = *(v66 - 2);

          if (qword_1EE13F2E0 != -1)
          {
            swift_once();
          }

          sub_1DB2BBAF4();
          v13 = v125;
          v23 = v126;
          __swift_project_boxed_opaque_existential_1(&v123, v125);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1DB2BCC40;
          v130 = sub_1DB156674(0, 41, 0, MEMORY[0x1E69E7CC0]);
          v81._countAndFlagsBits = 0xD000000000000028;
          v81._object = 0x80000001DB2D4670;
          LogMessage.StringInterpolation.appendLiteral(_:)(v81);
          *(&v97 + 1) = MEMORY[0x1E69E6158];
          *&v96 = v79;
          *(&v96 + 1) = v80;
          sub_1DB1446A4(&v96, v108, &qword_1ECC26F30, &unk_1DB2BFA90);
          v111 = 0u;
          v112 = 0u;
          sub_1DB156864(v108, &v111);
          LOBYTE(v113) = 0;
          v26 = v130;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_1DB156674(0, *(v26 + 2) + 1, 1, v26);
          }

          goto LABEL_25;
        }

        if (v68 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v68 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v67 = __OFADD__(v65, v68);
        v65 += v68;
        if (v67)
        {
LABEL_47:
          __break(1u);
          break;
        }
      }

      v66 += 40;
      if (!--v64)
      {
        goto LABEL_49;
      }
    }
  }

  v65 = 0;
LABEL_49:

  v20 = v92;
  v93(&v123, v91, v89);
  v26 = v129;

  sub_1DB17181C(&v123);
  v23 = 0;
  v25 = (v26 + 40);
  v24 = -*(v26 + 2);
  v70 = -1;
  while (v24 + v70 != -1)
  {
    v27 = *(v26 + 2);
    if (++v70 >= v27)
    {
      __break(1u);
      goto LABEL_75;
    }

    sub_1DB164980(v25, &v96);
    v71 = *(&v97 + 1);
    v72 = v98;
    __swift_project_boxed_opaque_existential_1(&v96, *(&v97 + 1));
    v119 = v139;
    v120 = v140;
    v115 = v135;
    v116 = v136;
    v117 = v137;
    v118 = v138;
    v111 = v131;
    v112 = v132;
    v113 = v133;
    v114 = v134;
    v121 = v141;
    v122 = v7;
    v20 = sub_1DB1705CC(&v111, v71, v72);
    if (v73)
    {
LABEL_63:

      v78 = &v96;
LABEL_73:
      __swift_destroy_boxed_opaque_existential_1(v78);
      return v20;
    }

    v25 += 88;
    __swift_destroy_boxed_opaque_existential_1(&v96);
    v67 = __OFADD__(v23, v20);
    v23 += v20;
    if (v67)
    {
      __break(1u);
      break;
    }
  }

  v20 = v92;
  v93(&v111, v91, v89);
  v26 = v121;

  sub_1DB17181C(&v111);
  v13 = 0;
  v25 = (v26 + 40);
  v24 = -*(v26 + 2);
  v74 = -1;
  while (v24 + v74 != -1)
  {
    v27 = *(v26 + 2);
    if (++v74 >= v27)
    {
      goto LABEL_76;
    }

    sub_1DB164980(v25, v108);
    v75 = v109;
    v76 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    v104 = v139;
    v105 = v140;
    v100 = v135;
    v101 = v136;
    v102 = v137;
    v103 = v138;
    v96 = v131;
    v97 = v132;
    v98 = v133;
    v99 = v134;
    v106 = v141;
    v107 = v7;
    v20 = sub_1DB1705CC(&v96, v75, v76);
    if (v77)
    {

      v78 = v108;
      goto LABEL_73;
    }

    v25 += 48;
    __swift_destroy_boxed_opaque_existential_1(v108);
    v67 = __OFADD__(v13, v20);
    v13 += v20;
    if (v67)
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v82 = v65 + v23;
  if (__OFADD__(v65, v23))
  {
    __break(1u);
  }

  else
  {
    v20 = v82 + v13;
    if (!__OFADD__(v82, v13))
    {
      return v20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB17127C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DB1712D0(uint64_t *a1, int a2)
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

uint64_t sub_1DB171318(uint64_t result, int a2, int a3)
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

uint64_t sub_1DB171370()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DB1713C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1DB171408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB171468(uint64_t a1)
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

uint64_t sub_1DB1714F0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

void sub_1DB171648(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

unint64_t sub_1DB171870()
{
  result = qword_1ECC27CF8;
  if (!qword_1ECC27CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27CF8);
  }

  return result;
}

uint64_t sub_1DB1718C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 4 < 4 || a4 == 0)
  {
  }

  return result;
}

uint64_t sub_1DB1718E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DB171928(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t Expression.excluded.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];

  MEMORY[0x1E1283490](v5, v6);
  v8 = *(a1 + 16);

  return Expression.init(_:_:)(0x6564756C63786522, 0xEB000000002E2264, v7, a2);
}

Swift::Bool __swiftcall Connection.tableExists(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  type metadata accessor for SchemaReader();
  inited = swift_initStackObject();
  *(inited + 16) = v1;

  v5 = sub_1DB26E840();
  swift_setDeallocating();
  v6 = *(inited + 16);

  v7 = (v5 + 40);
  v8 = *(v5 + 16) + 1;
  while (--v8)
  {
    if (*(v7 - 1) != countAndFlagsBits || *v7 != object)
    {
      v7 += 4;
      if ((sub_1DB2BB924() & 1) == 0)
      {
        continue;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t static Connection.releaseMemory()()
{
  if (qword_1EE13F2E0 != -1)
  {
    swift_once();
  }

  sub_1DB2BBAF4();
  v0 = v7;
  v1 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB2BCC40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274E0, &unk_1DB2BFDE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB2BCC40;
  v5[3] = MEMORY[0x1E69E6158];
  v5[0] = 0xD000000000000017;
  v5[1] = 0x80000001DB2D46A0;
  *(v3 + 48) = 0u;
  *(v3 + 32) = 0u;
  sub_1DB156864(v5, v3 + 32);
  *(v3 + 64) = 0;
  *(v2 + 32) = v3;
  Logger.info(_:)(v2, v0, v1);

  __swift_destroy_boxed_opaque_existential_1(v6);
  sqlite3_soft_heap_limit64(0);
  return sqlite3_release_memory(0x7FFFFFFF);
}

uint64_t sub_1DB171C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB2BCC40;
  *(v6 + 56) = MEMORY[0x1E69E6530];
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a3;
  v7 = *(a2 + 48);

  return v7(63, 0xE100000000000000, v6, a1, a2);
}

uint64_t static Blob.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECC26BE0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ECC27D20;
}

uint64_t QueryType.descoped.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*(a1 - 8) + 16);
  v166 = a3;
  v6();
  v7 = *(a2 + 16);
  v167 = a1;
  v168 = a2;
  v7(&v208, a1, a2);
  v207[0] = *(&v208 + 1);
  *(v207 + 3) = HIDWORD(v208);
  v8 = v209;
  v205 = v216;
  v206 = v217;
  v156 = v219;
  v157 = v218;
  v154 = v221;
  v155 = v220;
  v204 = v224;
  v203 = v223;
  *(v202 + 3) = *&v227[3];
  v202[0] = *v227;
  v163 = v222;
  v164 = v228;
  v165 = v208;
  v9 = *(v209 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v161 = v211;
    v162 = v213;
    *&v169 = v214;
    sub_1DB1754EC(&v208, &v180);
    v193[0] = v10;
    sub_1DB1384B0(0, v9, 0);
    v171 = v193[0];
    v160 = v8;
    v11 = v8 + 32;
    do
    {
      sub_1DB164980(v11, &v175);
      v170 = v176;
      v12 = v176;
      v13 = __swift_project_boxed_opaque_existential_1(&v175, v176);
      v14 = *(v12 - 8);
      v15 = *(v14 + 64);
      MEMORY[0x1EEE9AC00](v13);
      v17 = *(v14 + 16);
      v17(&v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
      if (swift_dynamicCast())
      {
        sub_1DB1355D0(&v197, &v180);
        v18 = *(&v181 + 1);
        v19 = v182;
        __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
        v20 = *(v19 + 56);
        *(&v196[1] + 1) = v18;
        *&v196[2] = v19;
        __swift_allocate_boxed_opaque_existential_0(v196);
        v20(v18, v19);
        v21 = *(&v196[1] + 1);
        v22 = *&v196[2];
        v23 = __swift_project_boxed_opaque_existential_1(v196, *(&v196[1] + 1));
        *(&v198[0] + 1) = v21;
        *&v198[1] = *(v22 + 8);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v197);
        (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v23, v21);
        __swift_destroy_boxed_opaque_existential_1(v196);
        __swift_destroy_boxed_opaque_existential_1(&v180);
      }

      else
      {
        v197 = 0u;
        memset(v198, 0, 24);
        sub_1DB167D94(&v197);
        *(v198 + 8) = v170;
        v25 = __swift_allocate_boxed_opaque_existential_0(&v197);
        v17(v25, v13, v12);
      }

      sub_1DB1355D0(&v197, &v180);
      __swift_destroy_boxed_opaque_existential_1(&v175);
      v193[0] = v171;
      v27 = *(v171 + 16);
      v26 = *(v171 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1DB1384B0((v26 > 1), v27 + 1, 1);
      }

      v28 = *(&v181 + 1);
      v29 = v182;
      v30 = __swift_mutable_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
      v31 = *(*(v28 - 8) + 64);
      MEMORY[0x1EEE9AC00](v30);
      v33 = &v151 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v33);
      sub_1DB16412C(v27, v33, v193, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(&v180);
      v171 = v193[0];
      v11 += 40;
      --v9;
    }

    while (v9);
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1DB1754EC(&v208, &v180);
    v171 = MEMORY[0x1E69E7CC0];
  }

  v35 = v215;

  v36 = v211;
  v159 = v212;
  v160 = v210;
  v161 = v213;

  v162 = v36;

  v37 = *(v35 + 16);
  if (v37)
  {
    v201 = v10;
    sub_1DB138660(0, v37, 0);
    v38 = v201;
    v158 = v35;
    v39 = v35 + 32;
    do
    {
      sub_1DB175548(v39, &v175);
      LODWORD(v170) = v175;
      v40 = *(&v176 + 1);
      v41 = v177;
      __swift_project_boxed_opaque_existential_1(&v175 + 1, *(&v176 + 1));
      v42 = *(v41 + 56);
      *(&v181 + 1) = v40;
      *&v182 = v41;
      __swift_allocate_boxed_opaque_existential_0(&v180);
      v42(v40, v41);
      v169 = v179;
      v43 = v179;
      v44 = __swift_project_boxed_opaque_existential_1(v178, v179);
      v45 = *(v43 - 8);
      v46 = *(v45 + 64);
      MEMORY[0x1EEE9AC00](v44);
      v48 = *(v45 + 16);
      v48(&v151 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
      if (swift_dynamicCast())
      {
        sub_1DB1355D0(v196, v193);
        v49 = v194;
        v50 = v195;
        __swift_project_boxed_opaque_existential_1(v193, v194);
        v51 = *(v50 + 56);
        v173 = v49;
        v174 = v50;
        __swift_allocate_boxed_opaque_existential_0(v172);
        v51(v49, v50);
        v52 = v173;
        v53 = v174;
        v54 = __swift_project_boxed_opaque_existential_1(v172, v173);
        *(&v196[1] + 1) = v52;
        *&v196[2] = *(v53 + 8);
        v55 = __swift_allocate_boxed_opaque_existential_0(v196);
        (*(*(v52 - 8) + 16))(v55, v54, v52);
        __swift_destroy_boxed_opaque_existential_1(v172);
        __swift_destroy_boxed_opaque_existential_1(v193);
      }

      else
      {
        memset(v196, 0, 40);
        sub_1DB167D94(v196);
        *(&v196[1] + 8) = v169;
        v56 = __swift_allocate_boxed_opaque_existential_0(v196);
        v48(v56, v44, v43);
      }

      LOBYTE(v197) = v170;
      sub_1DB1355D0(&v180, &v197 + 8);
      sub_1DB1355D0(v196, v199);
      v182 = v198[1];
      v183 = v199[0];
      v184[0] = v199[1];
      *&v184[1] = v200;
      v180 = v197;
      v181 = v198[0];
      sub_1DB1755A4(&v175);
      v57 = v38;
      v201 = v38;
      v59 = *(v38 + 16);
      v58 = *(v38 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1DB138660((v58 > 1), v59 + 1, 1);
        v57 = v201;
      }

      *(v57 + 16) = v59 + 1;
      v38 = v57;
      v60 = v57 + 88 * v59;
      v61 = v181;
      *(v60 + 32) = v180;
      *(v60 + 48) = v61;
      v62 = v182;
      v63 = v183;
      v64 = v184[0];
      *(v60 + 112) = *&v184[1];
      *(v60 + 80) = v63;
      *(v60 + 96) = v64;
      *(v60 + 64) = v62;
      v39 += 88;
      --v37;
    }

    while (v37);
  }

  else
  {

    v38 = MEMORY[0x1E69E7CC0];
  }

  v65 = v218;
  v158 = v38;
  v152 = v220;
  v153 = v219;
  v151 = v221;
  if (v218)
  {
    v66 = *(v218 + 16);
    if (v66)
    {
      sub_1DB1757B0(v219, v220);
      v193[0] = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v66, 0);
      *&v170 = v193[0];
      v67 = v65 + 32;
      do
      {
        sub_1DB164980(v67, &v175);
        v169 = v176;
        v68 = v176;
        v69 = __swift_project_boxed_opaque_existential_1(&v175, v176);
        v70 = *(v68 - 8);
        v71 = *(v70 + 64);
        MEMORY[0x1EEE9AC00](v69);
        v73 = *(v70 + 16);
        v73(&v151 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0), v69, v68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
        if (swift_dynamicCast())
        {
          sub_1DB1355D0(&v197, &v180);
          v74 = *(&v181 + 1);
          v75 = v182;
          __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
          v76 = *(v75 + 56);
          *(&v196[1] + 1) = v74;
          *&v196[2] = v75;
          __swift_allocate_boxed_opaque_existential_0(v196);
          v76(v74, v75);
          v77 = *(&v196[1] + 1);
          v78 = *&v196[2];
          v79 = __swift_project_boxed_opaque_existential_1(v196, *(&v196[1] + 1));
          *(&v198[0] + 1) = v77;
          *&v198[1] = *(v78 + 8);
          v80 = __swift_allocate_boxed_opaque_existential_0(&v197);
          (*(*(v77 - 8) + 16))(v80, v79, v77);
          __swift_destroy_boxed_opaque_existential_1(v196);
          __swift_destroy_boxed_opaque_existential_1(&v180);
        }

        else
        {
          v197 = 0u;
          memset(v198, 0, 24);
          sub_1DB167D94(&v197);
          *(v198 + 8) = v169;
          v81 = __swift_allocate_boxed_opaque_existential_0(&v197);
          v73(v81, v69, v68);
        }

        sub_1DB1355D0(&v197, &v180);
        __swift_destroy_boxed_opaque_existential_1(&v175);
        v193[0] = v170;
        v83 = *(v170 + 16);
        v82 = *(v170 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_1DB1384B0((v82 > 1), v83 + 1, 1);
        }

        v84 = *(&v181 + 1);
        v85 = v182;
        v86 = __swift_mutable_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
        v87 = *(*(v84 - 8) + 64);
        MEMORY[0x1EEE9AC00](v86);
        v89 = &v151 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v90 + 16))(v89);
        sub_1DB16412C(v83, v89, v193, v84, v85);
        __swift_destroy_boxed_opaque_existential_1(&v180);
        *&v170 = v193[0];
        v67 += 40;
        --v66;
      }

      while (v66);
    }

    else
    {
      sub_1DB1757B0(v219, v220);
      *&v170 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    *&v170 = 0;
  }

  sub_1DB1755F8(v157, v156, v155);
  v91 = v222;
  if (v222)
  {
    v92 = *(v222 + 16);
    v93 = MEMORY[0x1E69E7CC0];
    if (v92)
    {
      v193[0] = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v92, 0);
      v93 = v193[0];
      v94 = v91 + 32;
      do
      {
        sub_1DB164980(v94, &v175);
        v169 = v176;
        v95 = v176;
        v96 = __swift_project_boxed_opaque_existential_1(&v175, v176);
        v97 = *(v95 - 8);
        v98 = *(v97 + 64);
        MEMORY[0x1EEE9AC00](v96);
        v100 = *(v97 + 16);
        v100(&v151 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0), v96, v95);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
        if (swift_dynamicCast())
        {
          sub_1DB1355D0(&v197, &v180);
          v101 = *(&v181 + 1);
          v102 = v182;
          __swift_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
          v103 = *(v102 + 56);
          *(&v196[1] + 1) = v101;
          *&v196[2] = v102;
          __swift_allocate_boxed_opaque_existential_0(v196);
          v103(v101, v102);
          v104 = *(&v196[1] + 1);
          v105 = *&v196[2];
          v106 = __swift_project_boxed_opaque_existential_1(v196, *(&v196[1] + 1));
          *(&v198[0] + 1) = v104;
          *&v198[1] = *(v105 + 8);
          v107 = __swift_allocate_boxed_opaque_existential_0(&v197);
          (*(*(v104 - 8) + 16))(v107, v106, v104);
          __swift_destroy_boxed_opaque_existential_1(v196);
          __swift_destroy_boxed_opaque_existential_1(&v180);
        }

        else
        {
          v197 = 0u;
          memset(v198, 0, 24);
          sub_1DB167D94(&v197);
          *(v198 + 8) = v169;
          v108 = __swift_allocate_boxed_opaque_existential_0(&v197);
          v100(v108, v96, v95);
        }

        sub_1DB1355D0(&v197, &v180);
        __swift_destroy_boxed_opaque_existential_1(&v175);
        v193[0] = v93;
        v110 = *(v93 + 16);
        v109 = *(v93 + 24);
        if (v110 >= v109 >> 1)
        {
          sub_1DB1384B0((v109 > 1), v110 + 1, 1);
        }

        v111 = *(&v181 + 1);
        v112 = v182;
        v113 = __swift_mutable_project_boxed_opaque_existential_1(&v180, *(&v181 + 1));
        v114 = *(*(v111 - 8) + 64);
        MEMORY[0x1EEE9AC00](v113);
        v116 = &v151 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v117 + 16))(v116);
        sub_1DB16412C(v110, v116, v193, v111, v112);
        __swift_destroy_boxed_opaque_existential_1(&v180);
        v93 = v193[0];
        v94 += 40;
        --v92;
      }

      while (v92);
    }

    *&v169 = v93;
  }

  else
  {
    *&v169 = 0;
  }

  v118 = v225;

  v119 = *(v118 + 16);
  if (v119)
  {
    *&v197 = MEMORY[0x1E69E7CC0];
    sub_1DB138640(0, v119, 0);
    v120 = v197;
    v163 = v118;
    v121 = v118 + 32;
    do
    {
      sub_1DB175650(v121, &v175);
      v122 = v175;
      v124 = *(&v176 + 1);
      v123 = v177;
      __swift_project_boxed_opaque_existential_1(&v175 + 1, *(&v176 + 1));
      v125 = *(v123 + 56);
      *&v182 = v124;
      *(&v182 + 1) = v123;
      __swift_allocate_boxed_opaque_existential_0(&v180 + 1);
      v125(v124, v123);
      LOBYTE(v180) = v122;
      sub_1DB1756AC(&v175);
      *&v197 = v120;
      v127 = *(v120 + 16);
      v126 = *(v120 + 24);
      if (v127 >= v126 >> 1)
      {
        sub_1DB138640((v126 > 1), v127 + 1, 1);
        v120 = v197;
      }

      *(v120 + 16) = v127 + 1;
      v128 = (v120 + 48 * v127);
      v129 = v180;
      v130 = v182;
      v128[3] = v181;
      v128[4] = v130;
      v128[2] = v129;
      v121 += 48;
      --v119;
    }

    while (v119);
  }

  else
  {

    v120 = MEMORY[0x1E69E7CC0];
  }

  v131 = v226;
  v132 = v228;
  v133 = *(v228 + 16);
  if (v133)
  {
    *&v197 = MEMORY[0x1E69E7CC0];
    sub_1DB138620(0, v133, 0);
    v134 = v197;
    v135 = v132 + 32;
    do
    {
      sub_1DB175700(v135, &v175);
      sub_1DB1734CC(&v175, &v180);
      sub_1DB17575C(&v175);
      *&v197 = v134;
      v137 = *(v134 + 16);
      v136 = *(v134 + 24);
      if (v137 >= v136 >> 1)
      {
        sub_1DB138620((v136 > 1), v137 + 1, 1);
        v134 = v197;
      }

      *(v134 + 16) = v137 + 1;
      v138 = (v134 + 240 * v137);
      v139 = v180;
      v140 = v182;
      v138[3] = v181;
      v138[4] = v140;
      v138[2] = v139;
      v141 = v183;
      v142 = v184[0];
      v143 = v185;
      v138[7] = v184[1];
      v138[8] = v143;
      v138[5] = v141;
      v138[6] = v142;
      v144 = v186;
      v145 = v187[0];
      v146 = v188;
      v138[11] = v187[1];
      v138[12] = v146;
      v138[9] = v144;
      v138[10] = v145;
      v147 = v189;
      v148 = v190;
      v149 = v192;
      v138[15] = v191;
      v138[16] = v149;
      v138[13] = v147;
      v138[14] = v148;
      v135 += 240;
      --v133;
    }

    while (v133);
    sub_1DB17181C(&v208);
  }

  else
  {
    sub_1DB17181C(&v208);
    v134 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v180) = v165;
  *(&v180 + 1) = v207[0];
  DWORD1(v180) = *(v207 + 3);
  *(&v180 + 1) = v171;
  *&v181 = v160;
  *(&v181 + 1) = v162;
  *&v182 = v159;
  *(&v182 + 1) = v161;
  v183 = 0uLL;
  *&v184[0] = v158;
  *(v184 + 8) = v205;
  *(&v184[1] + 1) = v206;
  *&v185 = v170;
  *(&v185 + 1) = v153;
  *&v186 = v152;
  *(&v186 + 1) = v151;
  *&v187[0] = v169;
  *(v187 + 8) = v203;
  *(&v187[1] + 1) = v204;
  *&v188 = v120;
  BYTE8(v188) = v131;
  HIDWORD(v188) = *(v202 + 3);
  *(&v188 + 9) = v202[0];
  *&v189 = v134;
  return (*(v168 + 24))(&v180, v167);
}

uint64_t sub_1DB173060@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  __swift_project_boxed_opaque_existential_1(a1 + 1, v5);
  v7 = *(v6 + 56);
  v32 = v5;
  v33 = v6;
  __swift_allocate_boxed_opaque_existential_0(&v31);
  v7(v5, v6);
  v23 = *(a1 + 72);
  v8 = v23;
  v9 = __swift_project_boxed_opaque_existential_1(a1 + 6, v23);
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = *(v10 + 16);
  v13(&v24[-2] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
  if (swift_dynamicCast())
  {
    sub_1DB1355D0(v30, v27);
    v14 = v28;
    v15 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v16 = *(v15 + 56);
    v25 = v14;
    v26 = v15;
    __swift_allocate_boxed_opaque_existential_0(v24);
    v16(v14, v15);
    v17 = v25;
    v18 = v26;
    v19 = __swift_project_boxed_opaque_existential_1(v24, v25);
    *&v30[24] = v17;
    *&v30[32] = *(v18 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, v19, v17);
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    memset(v30, 0, sizeof(v30));
    sub_1DB167D94(v30);
    *&v30[24] = v23;
    v21 = __swift_allocate_boxed_opaque_existential_0(v30);
    v13(v21, v9, v8);
  }

  *a2 = v4;
  sub_1DB1355D0(&v31, (a2 + 8));
  return sub_1DB1355D0(v30, (a2 + 48));
}

uint64_t sub_1DB1732D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = *(a1 + 24);
  v3 = v18;
  v4 = __swift_project_boxed_opaque_existential_1(a1, v18);
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = *(v5 + 16);
  v8((&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0)), v4, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
  if (swift_dynamicCast())
  {
    sub_1DB1355D0(&v19, v22);
    v9 = v23;
    v10 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v11 = *(v10 + 56);
    *(&v20 + 1) = v9;
    v21 = v10;
    __swift_allocate_boxed_opaque_existential_0(&v19);
    v11(v9, v10);
    v12 = *(&v20 + 1);
    v13 = v21;
    v14 = __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
    a2[3] = v12;
    a2[4] = *(v13 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v14, v12);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_1DB167D94(&v19);
    *(a2 + 3) = v18;
    v17 = __swift_allocate_boxed_opaque_existential_0(a2);
    return v8(v17, v4, v3);
  }
}

double sub_1DB1734CC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v2 = a1[9];
  v172 = a1[8];
  v173 = v2;
  v174 = a1[10];
  v3 = a1[5];
  v5 = a1[2];
  v4 = a1[3];
  v168 = a1[4];
  v169 = v3;
  v6 = a1[7];
  v170 = a1[6];
  v171 = v6;
  v7 = a1[1];
  v164 = *a1;
  v165 = v7;
  v175 = *(a1 + 22);
  v166 = v5;
  v167 = v4;
  v163[0] = *(a1 + 1);
  *(v163 + 3) = *(a1 + 1);
  v8 = *(&v164 + 1);
  v161 = *(a1 + 72);
  v162 = *(a1 + 11);
  v121 = v171;
  v122 = *(&v170 + 1);
  v120 = *(&v171 + 1);
  v9 = *(a1 + 136);
  v160 = *(a1 + 19);
  v159 = v9;
  *(v158 + 3) = *(a1 + 43);
  v137 = a1;
  v158[0] = *(a1 + 169);
  v123 = v172;
  v128 = v170;
  v129 = v175;
  v135 = v164;
  v10 = *(*(&v164 + 1) + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v133 = *(&v7 + 1);
    v134 = *(&v5 + 1);
    sub_1DB1754EC(&v164, &v142);
    v157 = v11;
    sub_1DB1384B0(0, v10, 0);
    v12 = v157;
    v13 = v8 + 32;
    do
    {
      sub_1DB164980(v13, &v138);
      sub_1DB1732D4(&v138, &v142);
      __swift_destroy_boxed_opaque_existential_1(&v138);
      v157 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DB1384B0((v14 > 1), v15 + 1, 1);
      }

      v16 = *(&v143 + 1);
      v17 = v144;
      v18 = __swift_mutable_project_boxed_opaque_existential_1(&v142, *(&v143 + 1));
      v19 = *(*(v16 - 8) + 64);
      MEMORY[0x1EEE9AC00](v18);
      v21 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v21);
      sub_1DB16412C(v15, v21, &v157, v16, v17);
      __swift_destroy_boxed_opaque_existential_1(&v142);
      v12 = v157;
      v13 += 40;
      --v10;
    }

    while (v10);
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1DB1754EC(&v164, &v142);
    v12 = MEMORY[0x1E69E7CC0];
  }

  v134 = v12;
  v23 = v168;

  v24 = *(&v165 + 1);
  v130 = v166;
  v131 = v165;
  v132 = *(&v166 + 1);

  v133 = v24;

  v25 = *(v23 + 16);
  if (v25)
  {
    v26 = v11;
    v157 = v11;
    sub_1DB138660(0, v25, 0);
    v27 = v157;
    v28 = v23 + 32;
    do
    {
      sub_1DB175548(v28, &v138);
      sub_1DB173060(&v138, &v142);
      sub_1DB1755A4(&v138);
      v157 = v27;
      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1DB138660((v29 > 1), v30 + 1, 1);
        v27 = v157;
      }

      *(v27 + 16) = v30 + 1;
      v31 = v27 + 88 * v30;
      v32 = v143;
      *(v31 + 32) = v142;
      *(v31 + 48) = v32;
      v33 = v144;
      v34 = v145;
      v35 = v146;
      *(v31 + 112) = v147;
      *(v31 + 80) = v34;
      *(v31 + 96) = v35;
      *(v31 + 64) = v33;
      v28 += 88;
      --v25;
    }

    while (v25);
  }

  else
  {
    v26 = v11;

    v27 = MEMORY[0x1E69E7CC0];
  }

  v36 = v170;
  v126 = v171;
  v127 = *(&v170 + 1);
  v125 = *(&v171 + 1);
  if (v170)
  {
    v37 = *(v170 + 16);
    if (v37)
    {
      sub_1DB1757B0(*(&v170 + 1), v171);
      v38 = v26;
      v157 = v26;
      sub_1DB1384B0(0, v37, 0);
      v39 = v157;
      v40 = v36 + 32;
      do
      {
        sub_1DB164980(v40, &v138);
        sub_1DB1732D4(&v138, &v142);
        __swift_destroy_boxed_opaque_existential_1(&v138);
        v157 = v39;
        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1DB1384B0((v41 > 1), v42 + 1, 1);
        }

        v43 = *(&v143 + 1);
        v44 = v144;
        v45 = __swift_mutable_project_boxed_opaque_existential_1(&v142, *(&v143 + 1));
        v46 = *(*(v43 - 8) + 64);
        MEMORY[0x1EEE9AC00](v45);
        v48 = &v120 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v49 + 16))(v48);
        sub_1DB16412C(v42, v48, &v157, v43, v44);
        __swift_destroy_boxed_opaque_existential_1(&v142);
        v39 = v157;
        v40 += 40;
        --v37;
      }

      while (v37);
      v26 = v38;
    }

    else
    {
      sub_1DB1757B0(*(&v170 + 1), v171);
      v39 = MEMORY[0x1E69E7CC0];
    }

    v124 = v39;
  }

  else
  {
    v124 = 0;
  }

  sub_1DB1755F8(v128, v122, v121);
  v50 = v172;
  if (!v172)
  {
    v52 = 0;
    goto LABEL_33;
  }

  v51 = *(v172 + 16);
  v52 = MEMORY[0x1E69E7CC0];
  if (!v51)
  {
LABEL_33:
    v54 = v26;
    goto LABEL_34;
  }

  v157 = MEMORY[0x1E69E7CC0];
  sub_1DB1384B0(0, v51, 0);
  v52 = v157;
  v53 = v50 + 32;
  v54 = v26;
  do
  {
    sub_1DB164980(v53, &v138);
    sub_1DB1732D4(&v138, &v142);
    __swift_destroy_boxed_opaque_existential_1(&v138);
    v157 = v52;
    v56 = *(v52 + 16);
    v55 = *(v52 + 24);
    if (v56 >= v55 >> 1)
    {
      sub_1DB1384B0((v55 > 1), v56 + 1, 1);
    }

    v57 = *(&v143 + 1);
    v58 = v144;
    v59 = __swift_mutable_project_boxed_opaque_existential_1(&v142, *(&v143 + 1));
    v60 = *(*(v57 - 8) + 64);
    MEMORY[0x1EEE9AC00](v59);
    v62 = &v120 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v63 + 16))(v62);
    sub_1DB16412C(v56, v62, &v157, v57, v58);
    __swift_destroy_boxed_opaque_existential_1(&v142);
    v52 = v157;
    v53 += 40;
    --v51;
  }

  while (v51);
LABEL_34:
  v122 = v52;
  v128 = v27;
  v64 = v174;

  v65 = *(v64 + 16);
  if (v65)
  {
    v157 = v54;
    sub_1DB138640(0, v65, 0);
    v66 = v157;
    v123 = v64;
    v67 = v64 + 32;
    do
    {
      sub_1DB175650(v67, &v138);
      v68 = v138;
      v70 = v140;
      v69 = v141;
      __swift_project_boxed_opaque_existential_1(v139, v140);
      v71 = *(v69 + 56);
      *&v144 = v70;
      *(&v144 + 1) = v69;
      __swift_allocate_boxed_opaque_existential_0(&v142 + 1);
      v71(v70, v69);
      LOBYTE(v142) = v68;
      sub_1DB1756AC(&v138);
      v157 = v66;
      v73 = *(v66 + 16);
      v72 = *(v66 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_1DB138640((v72 > 1), v73 + 1, 1);
        v66 = v157;
      }

      *(v66 + 16) = v73 + 1;
      v74 = (v66 + 48 * v73);
      v75 = v142;
      v76 = v144;
      v74[3] = v143;
      v74[4] = v76;
      v74[2] = v75;
      v67 += 48;
      --v65;
    }

    while (v65);
  }

  else
  {

    v66 = MEMORY[0x1E69E7CC0];
  }

  LODWORD(v123) = BYTE8(v174);
  v77 = v175;
  v78 = *(v175 + 16);
  v79 = MEMORY[0x1E69E7CC0];
  if (v78)
  {
    v157 = MEMORY[0x1E69E7CC0];
    sub_1DB138620(0, v78, 0);
    v79 = v157;
    v80 = v77 + 32;
    do
    {
      sub_1DB175700(v80, &v138);
      sub_1DB1734CC(&v142, &v138);
      sub_1DB17575C(&v138);
      v157 = v79;
      v82 = *(v79 + 16);
      v81 = *(v79 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_1DB138620((v81 > 1), v82 + 1, 1);
        v79 = v157;
      }

      *(v79 + 16) = v82 + 1;
      v83 = (v79 + 240 * v82);
      v84 = v142;
      v85 = v144;
      v83[3] = v143;
      v83[4] = v85;
      v83[2] = v84;
      v86 = v145;
      v87 = v146;
      v88 = v148;
      v83[7] = v147;
      v83[8] = v88;
      v83[5] = v86;
      v83[6] = v87;
      v89 = v149;
      v90 = v150;
      v91 = v152;
      v83[11] = v151;
      v83[12] = v91;
      v83[9] = v89;
      v83[10] = v90;
      v92 = v153;
      v93 = v154;
      v94 = v156;
      v83[15] = v155;
      v83[16] = v94;
      v83[13] = v92;
      v83[14] = v93;
      v80 += 240;
      --v78;
    }

    while (v78);
  }

  v95 = v137;
  v96 = *(v137 + 23);
  if (v96)
  {
    v97 = *(v96 + 16);
    v98 = MEMORY[0x1E69E7CC0];
    if (v97)
    {
      v157 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v97, 0);
      v98 = v157;
      v99 = v96 + 32;
      do
      {
        sub_1DB164980(v99, &v138);
        sub_1DB1732D4(&v138, &v142);
        __swift_destroy_boxed_opaque_existential_1(&v138);
        v157 = v98;
        v101 = *(v98 + 16);
        v100 = *(v98 + 24);
        if (v101 >= v100 >> 1)
        {
          sub_1DB1384B0((v100 > 1), v101 + 1, 1);
        }

        v102 = *(&v143 + 1);
        v103 = v144;
        v104 = __swift_mutable_project_boxed_opaque_existential_1(&v142, *(&v143 + 1));
        v105 = *(*(v102 - 8) + 64);
        MEMORY[0x1EEE9AC00](v104);
        v107 = &v120 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v108 + 16))(v107);
        sub_1DB16412C(v101, v107, &v157, v102, v103);
        __swift_destroy_boxed_opaque_existential_1(&v142);
        v98 = v157;
        v99 += 40;
        --v97;
      }

      while (v97);
      v95 = v137;
    }
  }

  else
  {
    v98 = 0;
  }

  LODWORD(v137) = *(v95 + 192);
  v109 = *(v95 + 28);
  v110 = *(v95 + 29);
  __swift_project_boxed_opaque_existential_1(v95 + 25, v109);
  v111 = *(v110 + 56);
  v112 = v136;
  *(v136 + 224) = v109;
  *(v112 + 232) = v110;
  __swift_allocate_boxed_opaque_existential_0((v112 + 200));
  v111(v109, v110);
  *v112 = v135;
  *(v112 + 1) = v163[0];
  *(v112 + 4) = *(v163 + 3);
  v113 = v131;
  *(v112 + 8) = v134;
  *(v112 + 16) = v113;
  v114 = v130;
  *(v112 + 24) = v133;
  *(v112 + 32) = v114;
  *(v112 + 40) = v132;
  *(v112 + 48) = 0;
  v115 = v128;
  *(v112 + 56) = 0;
  *(v112 + 64) = v115;
  *(v112 + 72) = v161;
  v116 = v124;
  *(v112 + 88) = v162;
  *(v112 + 96) = v116;
  v117 = v126;
  *(v112 + 104) = v127;
  *(v112 + 112) = v117;
  v118 = v122;
  *(v112 + 120) = v125;
  *(v112 + 128) = v118;
  result = *&v159;
  *(v112 + 136) = v159;
  *(v112 + 152) = v160;
  *(v112 + 160) = v66;
  *(v112 + 168) = v123;
  *(v112 + 169) = v158[0];
  *(v112 + 172) = *(v158 + 3);
  *(v112 + 176) = v79;
  *(v112 + 184) = v98;
  *(v112 + 192) = v137;
  return result;
}

double sub_1DB174094@<D0>(void (*a1)(__int128 *, __int128 *)@<X2>, void (*a2)(__int128 *)@<X3>, __int128 *a3@<X8>)
{
  v128 = a2;
  v5 = v3[9];
  v163 = v3[8];
  v164 = v5;
  v165 = v3[10];
  v6 = v3[5];
  v159 = v3[4];
  v160 = v6;
  v7 = v3[7];
  v161 = v3[6];
  v8 = v161;
  v162 = v7;
  v9 = v3[1];
  v155 = *v3;
  v156 = v9;
  v10 = v3[3];
  v11 = v3[1];
  v157 = v3[2];
  v12 = v157;
  v158 = v10;
  v13 = v3[9];
  a3[8] = v3[8];
  a3[9] = v13;
  a3[10] = v3[10];
  v14 = v3[5];
  a3[4] = v3[4];
  a3[5] = v14;
  a3[6] = v8;
  a3[7] = v7;
  *a3 = *v3;
  a3[1] = v11;
  v166 = *(v3 + 22);
  *(a3 + 22) = *(v3 + 22);
  a3[2] = v12;
  a3[3] = v10;
  v129 = a3;
  v154[0] = *(v3 + 1);
  *(v154 + 3) = *(v3 + 1);
  v15 = *(&v155 + 1);
  v152 = *(v3 + 72);
  v153 = *(v3 + 11);
  v115 = *(&v161 + 1);
  v116 = v161;
  v113[1] = *(&v162 + 1);
  v114 = v162;
  v16 = *(v3 + 136);
  v151 = *(v3 + 19);
  v150 = v16;
  *(v149 + 3) = *(v3 + 43);
  v149[0] = *(v3 + 169);
  v118 = v163;
  v126 = v166;
  v127 = v155;
  v17 = *(*(&v155 + 1) + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v124 = *(&v157 + 1);
    v125 = *(&v158 + 1);
    a1(&v155, &v133);
    a1(&v155, &v133);
    v148 = v18;
    sub_1DB1384B0(0, v17, 0);
    v19 = v148;
    v20 = v15 + 32;
    do
    {
      sub_1DB164980(v20, v130);
      sub_1DB1732D4(v130, &v133);
      __swift_destroy_boxed_opaque_existential_1(v130);
      v148 = v19;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1DB1384B0((v21 > 1), v22 + 1, 1);
      }

      v23 = *(&v134 + 1);
      v24 = v135;
      v25 = __swift_mutable_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
      v26 = *(*(v23 - 8) + 64);
      MEMORY[0x1EEE9AC00](v25);
      v28 = v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v28);
      sub_1DB16412C(v22, v28, &v148, v23, v24);
      __swift_destroy_boxed_opaque_existential_1(&v133);
      v19 = v148;
      v20 += 40;
      --v17;
    }

    while (v17);
  }

  else
  {
    a1(&v155, &v133);
    a1(&v155, &v133);
    v19 = MEMORY[0x1E69E7CC0];
  }

  v30 = v159;

  v31 = *(&v156 + 1);
  v122 = v157;
  v123 = v156;
  v124 = *(&v157 + 1);

  v125 = v31;

  v32 = *(v30 + 16);
  if (v32)
  {
    v148 = MEMORY[0x1E69E7CC0];
    sub_1DB138660(0, v32, 0);
    v33 = v148;
    v34 = v30 + 32;
    do
    {
      sub_1DB175548(v34, v130);
      sub_1DB173060(v130, &v133);
      sub_1DB1755A4(v130);
      v148 = v33;
      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1DB138660((v35 > 1), v36 + 1, 1);
        v33 = v148;
      }

      *(v33 + 16) = v36 + 1;
      v37 = v33 + 88 * v36;
      v38 = v134;
      *(v37 + 32) = v133;
      *(v37 + 48) = v38;
      v39 = v135;
      v40 = v136;
      v41 = v137;
      *(v37 + 112) = v138;
      *(v37 + 80) = v40;
      *(v37 + 96) = v41;
      *(v37 + 64) = v39;
      v34 += 88;
      --v32;
    }

    while (v32);
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  v42 = v161;
  v120 = v162;
  v121 = *(&v161 + 1);
  v119 = *(&v162 + 1);
  if (v161)
  {
    v43 = *(v161 + 16);
    if (v43)
    {
      sub_1DB1757B0(*(&v161 + 1), v162);
      v148 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v43, 0);
      v44 = v148;
      v45 = v42 + 32;
      do
      {
        sub_1DB164980(v45, v130);
        sub_1DB1732D4(v130, &v133);
        __swift_destroy_boxed_opaque_existential_1(v130);
        v148 = v44;
        v47 = *(v44 + 16);
        v46 = *(v44 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1DB1384B0((v46 > 1), v47 + 1, 1);
        }

        v48 = *(&v134 + 1);
        v49 = v135;
        v50 = __swift_mutable_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
        v51 = *(*(v48 - 8) + 64);
        MEMORY[0x1EEE9AC00](v50);
        v53 = v113 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v54 + 16))(v53);
        sub_1DB16412C(v47, v53, &v148, v48, v49);
        __swift_destroy_boxed_opaque_existential_1(&v133);
        v44 = v148;
        v45 += 40;
        --v43;
      }

      while (v43);
    }

    else
    {
      sub_1DB1757B0(*(&v161 + 1), v162);
      v44 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v44 = 0;
  }

  v117 = v44;
  sub_1DB1755F8(v116, v115, v114);
  v55 = v163;
  if (v163)
  {
    v56 = *(v163 + 16);
    v57 = MEMORY[0x1E69E7CC0];
    if (v56)
    {
      v148 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v56, 0);
      v57 = v148;
      v58 = v55 + 32;
      do
      {
        sub_1DB164980(v58, v130);
        sub_1DB1732D4(v130, &v133);
        __swift_destroy_boxed_opaque_existential_1(v130);
        v148 = v57;
        v60 = *(v57 + 16);
        v59 = *(v57 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_1DB1384B0((v59 > 1), v60 + 1, 1);
        }

        v61 = *(&v134 + 1);
        v62 = v135;
        v63 = __swift_mutable_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
        v64 = *(*(v61 - 8) + 64);
        MEMORY[0x1EEE9AC00](v63);
        v66 = v113 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v67 + 16))(v66);
        sub_1DB16412C(v60, v66, &v148, v61, v62);
        __swift_destroy_boxed_opaque_existential_1(&v133);
        v57 = v148;
        v58 += 40;
        --v56;
      }

      while (v56);
    }
  }

  else
  {
    v57 = 0;
  }

  v116 = v57;
  v68 = v165;

  v69 = *(v68 + 16);
  if (v69)
  {
    v115 = v33;
    v118 = v19;
    v148 = MEMORY[0x1E69E7CC0];
    sub_1DB138640(0, v69, 0);
    v70 = v148;
    v114 = v68;
    v71 = v68 + 32;
    do
    {
      sub_1DB175650(v71, v130);
      v72 = v130[0];
      v73 = v131;
      v74 = v132;
      __swift_project_boxed_opaque_existential_1(v130 + 1, v131);
      v75 = *(v74 + 56);
      *&v135 = v73;
      *(&v135 + 1) = v74;
      __swift_allocate_boxed_opaque_existential_0(&v133 + 1);
      v75(v73, v74);
      LOBYTE(v133) = v72;
      sub_1DB1756AC(v130);
      v148 = v70;
      v77 = *(v70 + 16);
      v76 = *(v70 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_1DB138640((v76 > 1), v77 + 1, 1);
        v70 = v148;
      }

      *(v70 + 16) = v77 + 1;
      v78 = (v70 + 48 * v77);
      v79 = v133;
      v80 = v135;
      v78[3] = v134;
      v78[4] = v80;
      v78[2] = v79;
      v71 += 48;
      --v69;
    }

    while (v69);

    v19 = v118;
    v33 = v115;
  }

  else
  {

    v70 = MEMORY[0x1E69E7CC0];
  }

  v81 = BYTE8(v165);
  v82 = v166;
  v83 = *(v166 + 16);
  v84 = MEMORY[0x1E69E7CC0];
  if (v83)
  {
    LODWORD(v118) = BYTE8(v165);
    v148 = MEMORY[0x1E69E7CC0];
    sub_1DB138620(0, v83, 0);
    v84 = v148;
    v85 = v82 + 32;
    do
    {
      sub_1DB175700(v85, v130);
      sub_1DB1734CC(v130, &v133);
      sub_1DB17575C(v130);
      v148 = v84;
      v87 = *(v84 + 16);
      v86 = *(v84 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_1DB138620((v86 > 1), v87 + 1, 1);
        v84 = v148;
      }

      *(v84 + 16) = v87 + 1;
      v88 = (v84 + 240 * v87);
      v89 = v133;
      v90 = v135;
      v88[3] = v134;
      v88[4] = v90;
      v88[2] = v89;
      v91 = v136;
      v92 = v137;
      v93 = v139;
      v88[7] = v138;
      v88[8] = v93;
      v88[5] = v91;
      v88[6] = v92;
      v94 = v140;
      v95 = v141;
      v96 = v143;
      v88[11] = v142;
      v88[12] = v96;
      v88[9] = v94;
      v88[10] = v95;
      v97 = v144;
      v98 = v145;
      v99 = v147;
      v88[15] = v146;
      v88[16] = v99;
      v88[13] = v97;
      v88[14] = v98;
      v85 += 240;
      --v83;
    }

    while (v83);
    v81 = v118;
  }

  v100 = v129;
  v101 = v129[9];
  v141 = v129[8];
  v142 = v101;
  v143 = v129[10];
  *&v144 = *(v129 + 22);
  v102 = v129[5];
  v137 = v129[4];
  v138 = v102;
  v103 = v129[7];
  v139 = v129[6];
  v140 = v103;
  v104 = v129[1];
  v133 = *v129;
  v134 = v104;
  v105 = v129[3];
  v135 = v129[2];
  v136 = v105;
  v128(&v133);
  *v100 = v127;
  *(v100 + 1) = v154[0];
  *(v100 + 1) = *(v154 + 3);
  v106 = v123;
  *(v100 + 1) = v19;
  *(v100 + 2) = v106;
  v107 = v122;
  *(v100 + 3) = v125;
  *(v100 + 4) = v107;
  *(v100 + 5) = v124;
  *(v100 + 6) = 0;
  *(v100 + 7) = 0;
  *(v100 + 8) = v33;
  *(v100 + 72) = v152;
  v108 = v117;
  *(v100 + 11) = v153;
  *(v100 + 12) = v108;
  v109 = v120;
  *(v100 + 13) = v121;
  *(v100 + 14) = v109;
  v110 = v116;
  *(v100 + 15) = v119;
  *(v100 + 16) = v110;
  v111 = v151;
  result = *&v150;
  *(v100 + 136) = v150;
  *(v100 + 19) = v111;
  *(v100 + 20) = v70;
  *(v100 + 168) = v81;
  *(v100 + 43) = *(v149 + 3);
  *(v100 + 169) = v149[0];
  *(v100 + 22) = v84;
  return result;
}

double sub_1DB174AB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[9];
  v5 = v2[7];
  v153 = v2[8];
  v154 = v4;
  v6 = v2[9];
  v155 = v2[10];
  v7 = v2[5];
  v9 = v2[3];
  v149 = v2[4];
  v8 = v149;
  v150 = v7;
  v10 = v2[5];
  v11 = v2[7];
  v151 = v2[6];
  v12 = v151;
  v152 = v11;
  v13 = v2[1];
  v146[0] = *v2;
  v146[1] = v13;
  v14 = v2[3];
  v16 = *v2;
  v15 = v2[1];
  v147 = v2[2];
  v17 = v147;
  v148 = v14;
  *(a2 + 128) = v153;
  *(a2 + 144) = v6;
  *(a2 + 160) = v2[10];
  *(a2 + 64) = v8;
  *(a2 + 80) = v10;
  *(a2 + 96) = v12;
  *(a2 + 112) = v5;
  *a2 = v16;
  *(a2 + 16) = v15;
  v156 = *(v2 + 22);
  *(a2 + 176) = *(v2 + 22);
  *(a2 + 32) = v17;
  *(a2 + 48) = v9;
  v121 = a2;
  ScalarQuery.clauses.getter(&v157);
  v145[0] = *v158;
  *(v145 + 3) = *&v158[3];
  v18 = v159;
  v114 = v164;
  v143 = v166;
  v144 = v167;
  v107 = v169;
  v108 = v168;
  v105 = v171;
  v106 = v170;
  v112 = v163;
  v113 = v172;
  v142 = v174;
  v141 = v173;
  *(v140 + 3) = *&v177[3];
  v140[0] = *v177;
  v119 = v178;
  v120 = v157;
  v19 = *(v159 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  v122 = a1;
  if (v19)
  {
    (*(*(a1 - 8) + 16))(&v126, v146, a1);
    sub_1DB1754EC(&v157, &v126);
    v139 = v20;
    sub_1DB1384B0(0, v19, 0);
    v21 = v139;
    v22 = v18 + 32;
    do
    {
      sub_1DB164980(v22, v123);
      sub_1DB1732D4(v123, &v126);
      __swift_destroy_boxed_opaque_existential_1(v123);
      v139 = v21;
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1DB1384B0((v23 > 1), v24 + 1, 1);
      }

      v25 = *(&v127 + 1);
      v26 = v128;
      v27 = __swift_mutable_project_boxed_opaque_existential_1(&v126, *(&v127 + 1));
      v28 = *(*(v25 - 8) + 64);
      MEMORY[0x1EEE9AC00](v27);
      v30 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v30);
      sub_1DB16412C(v24, v30, &v139, v25, v26);
      __swift_destroy_boxed_opaque_existential_1(&v126);
      v21 = v139;
      v22 += 40;
      --v19;
    }

    while (v19);
  }

  else
  {
    (*(*(a1 - 8) + 16))(&v126, v146, a1);
    sub_1DB1754EC(&v157, &v126);
    v21 = MEMORY[0x1E69E7CC0];
  }

  v32 = v165;

  v33 = v161;
  v115 = v162;
  v116 = v160;
  v117 = v163;

  v118 = v33;

  v34 = *(v32 + 16);
  if (v34)
  {
    v35 = MEMORY[0x1E69E7CC0];
    v139 = MEMORY[0x1E69E7CC0];
    sub_1DB138660(0, v34, 0);
    v36 = v139;
    v37 = v32 + 32;
    do
    {
      sub_1DB175548(v37, v123);
      sub_1DB173060(v123, &v126);
      sub_1DB1755A4(v123);
      v139 = v36;
      v39 = *(v36 + 16);
      v38 = *(v36 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1DB138660((v38 > 1), v39 + 1, 1);
        v36 = v139;
      }

      *(v36 + 16) = v39 + 1;
      v40 = v36 + 88 * v39;
      v41 = v127;
      *(v40 + 32) = v126;
      *(v40 + 48) = v41;
      v42 = v128;
      v43 = v129;
      v44 = v130[0];
      *(v40 + 112) = *&v130[1];
      *(v40 + 80) = v43;
      *(v40 + 96) = v44;
      *(v40 + 64) = v42;
      v37 += 88;
      --v34;
    }

    while (v34);
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
    v35 = MEMORY[0x1E69E7CC0];
  }

  v114 = v36;
  v45 = v168;
  v111 = v170;
  v112 = v169;
  v110 = v171;
  if (v168)
  {
    v46 = *(v168 + 16);
    if (v46)
    {
      sub_1DB1757B0(v169, v170);
      v139 = v35;
      sub_1DB1384B0(0, v46, 0);
      v47 = v139;
      v48 = v45 + 32;
      do
      {
        sub_1DB164980(v48, v123);
        sub_1DB1732D4(v123, &v126);
        __swift_destroy_boxed_opaque_existential_1(v123);
        v139 = v47;
        v50 = *(v47 + 16);
        v49 = *(v47 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_1DB1384B0((v49 > 1), v50 + 1, 1);
        }

        v51 = *(&v127 + 1);
        v52 = v128;
        v53 = __swift_mutable_project_boxed_opaque_existential_1(&v126, *(&v127 + 1));
        v54 = *(*(v51 - 8) + 64);
        MEMORY[0x1EEE9AC00](v53);
        v56 = &v105 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v57 + 16))(v56);
        sub_1DB16412C(v50, v56, &v139, v51, v52);
        __swift_destroy_boxed_opaque_existential_1(&v126);
        v47 = v139;
        v48 += 40;
        --v46;
      }

      while (v46);
    }

    else
    {
      sub_1DB1757B0(v169, v170);
      v47 = MEMORY[0x1E69E7CC0];
    }

    v109 = v47;
  }

  else
  {
    v109 = 0;
  }

  sub_1DB1755F8(v108, v107, v106);
  v58 = v172;
  if (v172)
  {
    v59 = *(v172 + 16);
    v60 = MEMORY[0x1E69E7CC0];
    if (v59)
    {
      v139 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v59, 0);
      v60 = v139;
      v61 = v58 + 32;
      do
      {
        sub_1DB164980(v61, v123);
        sub_1DB1732D4(v123, &v126);
        __swift_destroy_boxed_opaque_existential_1(v123);
        v139 = v60;
        v63 = *(v60 + 16);
        v62 = *(v60 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_1DB1384B0((v62 > 1), v63 + 1, 1);
        }

        v64 = *(&v127 + 1);
        v65 = v128;
        v66 = __swift_mutable_project_boxed_opaque_existential_1(&v126, *(&v127 + 1));
        v67 = *(*(v64 - 8) + 64);
        MEMORY[0x1EEE9AC00](v66);
        v69 = &v105 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v70 + 16))(v69);
        sub_1DB16412C(v63, v69, &v139, v64, v65);
        __swift_destroy_boxed_opaque_existential_1(&v126);
        v60 = v139;
        v61 += 40;
        --v59;
      }

      while (v59);
    }
  }

  else
  {
    v60 = 0;
  }

  v108 = v60;
  v71 = v175;

  v72 = *(v71 + 16);
  if (v72)
  {
    v113 = v21;
    v139 = v35;
    sub_1DB138640(0, v72, 0);
    v73 = v139;
    v107 = v71;
    v74 = v71 + 32;
    do
    {
      sub_1DB175650(v74, v123);
      v75 = v123[0];
      v76 = v124;
      v77 = v125;
      __swift_project_boxed_opaque_existential_1(v123 + 1, v124);
      v78 = *(v77 + 56);
      *&v128 = v76;
      *(&v128 + 1) = v77;
      __swift_allocate_boxed_opaque_existential_0(&v126 + 1);
      v78(v76, v77);
      LOBYTE(v126) = v75;
      sub_1DB1756AC(v123);
      v139 = v73;
      v80 = *(v73 + 16);
      v79 = *(v73 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_1DB138640((v79 > 1), v80 + 1, 1);
        v73 = v139;
      }

      *(v73 + 16) = v80 + 1;
      v81 = (v73 + 48 * v80);
      v82 = v126;
      v83 = v128;
      v81[3] = v127;
      v81[4] = v83;
      v81[2] = v82;
      v74 += 48;
      --v72;
    }

    while (v72);

    v21 = v113;
    v84 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v84 = v35;

    v73 = MEMORY[0x1E69E7CC0];
  }

  v85 = v176;
  v86 = v178;
  v87 = *(v178 + 16);
  if (v87)
  {
    v139 = v84;
    sub_1DB138620(0, v87, 0);
    v88 = v139;
    v89 = v86 + 32;
    do
    {
      sub_1DB175700(v89, v123);
      sub_1DB1734CC(v123, &v126);
      sub_1DB17575C(v123);
      v139 = v88;
      v91 = *(v88 + 16);
      v90 = *(v88 + 24);
      if (v91 >= v90 >> 1)
      {
        sub_1DB138620((v90 > 1), v91 + 1, 1);
        v88 = v139;
      }

      *(v88 + 16) = v91 + 1;
      v92 = (v88 + 240 * v91);
      v93 = v126;
      v94 = v128;
      v92[3] = v127;
      v92[4] = v94;
      v92[2] = v93;
      v95 = v129;
      v96 = v130[0];
      v97 = v131;
      v92[7] = v130[1];
      v92[8] = v97;
      v92[5] = v95;
      v92[6] = v96;
      v98 = v132;
      v99 = v133[0];
      v100 = v134;
      v92[11] = v133[1];
      v92[12] = v100;
      v92[9] = v98;
      v92[10] = v99;
      v101 = v135;
      v102 = v136;
      v103 = v138;
      v92[15] = v137;
      v92[16] = v103;
      v92[13] = v101;
      v92[14] = v102;
      v89 += 240;
      --v87;
    }

    while (v87);
    sub_1DB17181C(&v157);
  }

  else
  {
    sub_1DB17181C(&v157);
    v88 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v126) = v120;
  *(&v126 + 1) = v145[0];
  DWORD1(v126) = *(v145 + 3);
  *(&v126 + 1) = v21;
  *&v127 = v116;
  *(&v127 + 1) = v118;
  *&v128 = v115;
  *(&v128 + 1) = v117;
  v129 = 0uLL;
  *&v130[0] = v114;
  *(v130 + 8) = v143;
  *(&v130[1] + 1) = v144;
  *&v131 = v109;
  *(&v131 + 1) = v112;
  *&v132 = v111;
  *(&v132 + 1) = v110;
  *&v133[0] = v108;
  *(v133 + 8) = v141;
  *(&v133[1] + 1) = v142;
  *&v134 = v73;
  BYTE8(v134) = v85;
  HIDWORD(v134) = *(v140 + 3);
  *(&v134 + 9) = v140[0];
  *&v135 = v88;
  *&result = ScalarQuery.clauses.setter(&v126, v122).n128_u64[0];
  return result;
}

uint64_t sub_1DB1755F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_1DB1718E4(a2, a3);
  }

  return result;
}

uint64_t sub_1DB1757B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DB175A04(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = sub_1DB1F78F8(a1, a2, a3);

  return v3;
}

uint64_t *Expressible.expanded(using:in:rawStatementHandler:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v110 = a6;
  v112 = a4;
  v113 = a3;
  v114 = a2;
  v115 = a7;
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v111 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v109 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v109 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v109 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = *(v9 + 16);
  boxed_opaque_existential_0 = v24;
  v22(&v109 - v23, v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
  if (!swift_dynamicCast())
  {
    memset(v175, 0, 40);
    sub_1DB1445E0(v175, &qword_1ECC279E8, &unk_1DB2C3AE0);
    v22(v21, boxed_opaque_existential_0, a5);
    if (!swift_dynamicCast())
    {
      memset(v156, 0, 136);
      BYTE8(v156[8]) = -1;
      sub_1DB1445E0(v156, &qword_1ECC27D28, &unk_1DB2CB830);
      v22(v18, boxed_opaque_existential_0, a5);
      if (swift_dynamicCast())
      {
        v51 = v115;
        v115[3] = &type metadata for Update;
        v51[4] = sub_1DB1F6FE0();
        result = swift_allocObject();
        *v51 = result;
        v53 = v156[5];
        *(result + 5) = v156[4];
        *(result + 6) = v53;
        *(result + 107) = *(&v156[5] + 11);
        v54 = v156[1];
        *(result + 1) = v156[0];
        *(result + 2) = v54;
        v55 = v156[3];
        *(result + 3) = v156[2];
        *(result + 4) = v55;
        return result;
      }

      v22(v15, boxed_opaque_existential_0, a5);
      v74 = swift_dynamicCast();
      v75 = v202;
      if (v74)
      {
        v76 = *&v156[0];
        result = sub_1DB1F6F8C();
        v77 = *(v156 + 8);
        v78 = v115;
        v115[3] = &type metadata for Delete;
        v78[4] = result;
        *v78 = v76;
        *(v78 + 1) = v77;
        return result;
      }

      v22(v111, boxed_opaque_existential_0, a5);
      v82 = MEMORY[0x1E69E6158];
      if (swift_dynamicCast())
      {
        v83 = v113(*&v156[0], *(&v156[0] + 1));
        if (!v75)
        {
          v101 = v83;
          v102 = v84;

          v103 = v115;
          v115[3] = v82;
          v103[4] = &protocol witness table for String;
          *v103 = v101;
          v103[1] = v102;
          return result;
        }
      }

      else
      {
        v92 = v110;
        v93 = v75;
        v94 = *(v110 + 24);
        v94(v156, a5, v110);
        v95 = v156[0];

        v96 = v113(v95, *(&v95 + 1));
        if (!v93)
        {
          v104 = v96;
          v202 = v97;

          v94(v156, a5, v92);
          v105 = *&v156[1];

          v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
          v107 = v115;
          v115[3] = v106;
          result = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
          v107[4] = result;
          v108 = v202;
          *v107 = v104;
          v107[1] = v108;
          v107[2] = v105;
          return result;
        }
      }
    }

    v200 = v156[6];
    v201[0] = v156[7];
    *(v201 + 9) = *(&v156[7] + 9);
    v196 = v156[2];
    v197 = v156[3];
    v198 = v156[4];
    v199 = v156[5];
    v194 = v156[0];
    v195 = v156[1];
    v40 = v115;
    v115[3] = &type metadata for Insert;
    v40[4] = sub_1DB1F70DC();
    v41 = swift_allocObject();
    *v40 = v41;
    sub_1DB1446A4(&v194, v156, &qword_1ECC27CC8, &unk_1DB2C3860);
    if (BYTE8(v156[8]))
    {
      v42 = *&v156[0];
      v43 = *(v156 + 8);
      v44 = *(&v156[1] + 8);
      v45 = *(&v156[2] + 8);
      v46 = *(&v156[3] + 8);
      v47 = *(&v156[4] + 8);
      v48 = *(&v156[5] + 8);
      v49 = *(&v156[6] + 8);
      v50 = *(&v156[7] + 8);
    }

    else
    {
      sub_1DB1445E0(v156, &qword_1ECC27CC8, &unk_1DB2C3860);
      v42 = 0;
      v43 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
    }

    *&v152[0] = v42;
    *(v152 + 8) = v43;
    *(&v152[1] + 8) = v44;
    *(&v152[2] + 8) = v45;
    *(&v152[3] + 8) = v46;
    *(&v152[4] + 8) = v47;
    *(&v152[5] + 8) = v48;
    *(&v152[6] + 8) = v49;
    *(&v152[7] + 8) = v50;
    if (v43)
    {
      v183 = v152[6];
      v184 = v152[7];
      v185 = *&v152[8];
      v179 = v152[2];
      v180 = v152[3];
      v182 = v152[5];
      v181 = v152[4];
      v178 = v152[1];
      v177 = v152[0];
      sub_1DB1446A4(&v183, &v170, &qword_1ECC279E8, &unk_1DB2C3AE0);
      if (v171)
      {
        sub_1DB1355D0(&v170, v172);
        v61 = v173;
        v62 = v174;
        v63 = __swift_project_boxed_opaque_existential_1(v172, v173);
        v160[3] = v61;
        v160[4] = v62;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v160);
        v64 = *(v61 - 8);
        v65 = *(v64 + 64);
        MEMORY[0x1EEE9AC00](boxed_opaque_existential_0);
        v67 = &v109 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v64 + 16))(v67, v63, v61);
        (*(v62 + 16))(v152, v61, v62);
        v68 = a1[9];
        v149 = a1[8];
        v150 = v68;
        v151 = a1[10];
        v69 = a1[5];
        v145 = a1[4];
        v146 = v69;
        v70 = a1[7];
        v147 = a1[6];
        v148 = v70;
        v71 = a1[1];
        v141 = *a1;
        v142 = v71;
        v72 = a1[3];
        v143 = a1[2];
        v144 = v72;
        v73 = v202;
        sub_1DB1E5268(&v141, v114, v156);
        if (v73)
        {
          (*(v64 + 8))(v67, v61);
          sub_1DB1F7130(&v177);
          sub_1DB1F7184(&v194);
          v137 = v152[8];
          v138 = v153;
          v139 = v154;
          v140 = v155;
          v133 = v152[4];
          v134 = v152[5];
          v135 = v152[6];
          v136 = v152[7];
          v129 = v152[0];
          v130 = v152[1];
          v131 = v152[2];
          v132 = v152[3];
          sub_1DB17181C(&v129);
          __swift_deallocate_boxed_opaque_existential_1(v160);
          __swift_destroy_boxed_opaque_existential_1(v172);
          return __swift_deallocate_boxed_opaque_existential_1(v115);
        }

        v137 = v152[8];
        v138 = v153;
        v139 = v154;
        v140 = v155;
        v133 = v152[4];
        v134 = v152[5];
        v135 = v152[6];
        v136 = v152[7];
        v129 = v152[0];
        v130 = v152[1];
        v131 = v152[2];
        v132 = v152[3];
        sub_1DB17181C(&v129);
        v125 = v156[8];
        v126 = v157;
        v127 = v158;
        v128 = v159;
        v121 = v156[4];
        v122 = v156[5];
        v123 = v156[6];
        v124 = v156[7];
        v117 = v156[0];
        v118 = v156[1];
        v119 = v156[2];
        v120 = v156[3];
        (*(v62 + 24))(&v117, v61, v62);
        (*(v64 + 32))(boxed_opaque_existential_0, v67, v61);
        v167 = v183;
        v168 = v184;
        v169 = v185;
        v163 = v179;
        v164 = v180;
        v166 = v182;
        v165 = v181;
        v162 = v178;
        v161 = v177;
        sub_1DB1F8894(v160, &v167, &qword_1ECC279E8, &unk_1DB2C3AE0);
        *&v175[96] = v167;
        *&v175[112] = v168;
        *&v175[128] = v169;
        *&v175[32] = v163;
        *&v175[48] = v164;
        *&v175[80] = v166;
        *&v175[64] = v165;
        *&v175[16] = v162;
        *v175 = v161;
        v176 = 1;
        __swift_destroy_boxed_opaque_existential_1(v172);
      }

      else
      {
        sub_1DB1F7130(&v177);
        sub_1DB1445E0(&v170, &qword_1ECC279E8, &unk_1DB2C3AE0);
        sub_1DB16D210(&v194, v175);
      }

      v89 = *&v175[8];
      v88 = *v175;
      v90 = *&v175[16];
      v191 = *&v175[88];
      v192 = *&v175[104];
      v193 = *&v175[120];
      v187 = *&v175[24];
      v188 = *&v175[40];
      v190 = *&v175[72];
      v189 = *&v175[56];
      v91 = v176;
    }

    else
    {
      sub_1DB1445E0(v152, &qword_1ECC27CD0, &unk_1DB2CB840);
      sub_1DB1446A4(&v194, v156, &qword_1ECC27CC8, &unk_1DB2C3860);
      if (BYTE8(v156[8]))
      {
        v152[6] = v156[6];
        v152[7] = v156[7];
        *&v152[8] = *&v156[8];
        v152[2] = v156[2];
        v152[3] = v156[3];
        v152[4] = v156[4];
        v152[5] = v156[5];
        v152[0] = v156[0];
        v152[1] = v156[1];
        v79 = sub_1DB1F4E58();
        v81 = v80;
        sub_1DB1F7130(v152);
      }

      else
      {
        v81 = *(&v156[0] + 1);
        v79 = *&v156[0];
      }

      v85 = v202;
      v86 = v113(v79, v81);
      if (v85)
      {

        sub_1DB1F7184(&v194);
        return __swift_deallocate_boxed_opaque_existential_1(v115);
      }

      v88 = v86;
      v89 = v87;

      sub_1DB1446A4(&v194, v156, &qword_1ECC27CC8, &unk_1DB2C3860);
      if (BYTE8(v156[8]))
      {
        sub_1DB1445E0(v156, &qword_1ECC27CC8, &unk_1DB2C3860);
        v90 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v90 = *&v156[1];
      }

      v91 = 0;
      v186 = 0;
    }

    v98 = v189;
    *(v41 + 88) = v190;
    v99 = v192;
    *(v41 + 104) = v191;
    *(v41 + 120) = v99;
    *(v41 + 136) = v193;
    v100 = v188;
    *(v41 + 40) = v187;
    *(v41 + 56) = v100;
    *(v41 + 16) = v88;
    *(v41 + 24) = v89;
    *(v41 + 32) = v90;
    *(v41 + 72) = v98;
    *(v41 + 152) = v91;
    return sub_1DB1F7184(&v194);
  }

  sub_1DB1355D0(v175, &v194);
  v26 = *(&v195 + 1);
  v27 = v196;
  v28 = __swift_project_boxed_opaque_existential_1(&v194, *(&v195 + 1));
  *(&v178 + 1) = v26;
  *&v179 = v27;
  v29 = __swift_allocate_boxed_opaque_existential_0(&v177);
  v30 = *(v26 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v33, v28, v26);
  (*(v27 + 16))(v152, v26, v27);
  v34 = a1[9];
  v149 = a1[8];
  v150 = v34;
  v151 = a1[10];
  v35 = a1[5];
  v145 = a1[4];
  v146 = v35;
  v36 = a1[7];
  v147 = a1[6];
  v148 = v36;
  v37 = a1[1];
  v141 = *a1;
  v142 = v37;
  v38 = a1[3];
  v143 = a1[2];
  v144 = v38;
  v39 = v202;
  sub_1DB1E5268(&v141, v114, v156);
  if (v39)
  {
    (*(v30 + 8))(v33, v26);
    v137 = v152[8];
    v138 = v153;
    v139 = v154;
    v140 = v155;
    v133 = v152[4];
    v134 = v152[5];
    v135 = v152[6];
    v136 = v152[7];
    v129 = v152[0];
    v130 = v152[1];
    v131 = v152[2];
    v132 = v152[3];
    sub_1DB17181C(&v129);
    __swift_deallocate_boxed_opaque_existential_1(&v177);
  }

  else
  {
    v137 = v152[8];
    v138 = v153;
    v139 = v154;
    v140 = v155;
    v133 = v152[4];
    v134 = v152[5];
    v135 = v152[6];
    v136 = v152[7];
    v129 = v152[0];
    v130 = v152[1];
    v131 = v152[2];
    v132 = v152[3];
    sub_1DB17181C(&v129);
    v125 = v156[8];
    v126 = v157;
    v127 = v158;
    v128 = v159;
    v121 = v156[4];
    v122 = v156[5];
    v123 = v156[6];
    v124 = v156[7];
    v117 = v156[0];
    v118 = v156[1];
    v119 = v156[2];
    v120 = v156[3];
    (*(v27 + 24))(&v117, v26, v27);
    (*(v30 + 32))(v29, v33, v26);
    v56 = *(&v178 + 1);
    v57 = v179;
    v58 = __swift_project_boxed_opaque_existential_1(&v177, *(&v178 + 1));
    v59 = v115;
    v115[3] = v56;
    v59[4] = *(v57 + 8);
    v60 = __swift_allocate_boxed_opaque_existential_0(v59);
    (*(*(v56 - 8) + 16))(v60, v58, v56);
    __swift_destroy_boxed_opaque_existential_1(&v177);
  }

  return __swift_destroy_boxed_opaque_existential_1(&v194);
}

uint64_t Expressible.isExpandable.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v178 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D40, &qword_1DB2C39F8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v186 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v185 = &v170 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v188 = &v170 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D48, &qword_1DB2C3A00);
  v189 = *(v12 - 8);
  v190 = v12;
  v13 = *(v189 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v180 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v184 = &v170 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v179 = &v170 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v183 = &v170 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v187 = &v170 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v193 = &v170 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D50, &qword_1DB2C3A08);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v175 = &v170 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v174 = &v170 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v181 = &v170 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v194 = (&v170 - v34);
  MEMORY[0x1EEE9AC00](v33);
  v192 = &v170 - v35;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D58, &qword_1DB2C3A10);
  v191 = *(v196 - 8);
  v36 = *(v191 + 64);
  v37 = MEMORY[0x1EEE9AC00](v196);
  v172 = &v170 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v173 = &v170 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v170 = &v170 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v171 = &v170 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v177 = &v170 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v176 = &v170 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v198 = &v170 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v195 = &v170 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v199 = &v170 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v197 = &v170 - v56;
  v57 = *(a1 - 8);
  v58 = *(v57 + 64);
  v59 = MEMORY[0x1EEE9AC00](v55);
  v182 = &v170 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v63 = &v170 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61);
  v66 = &v170 - v65;
  v67 = MEMORY[0x1EEE9AC00](v64);
  v69 = &v170 - v68;
  MEMORY[0x1EEE9AC00](v67);
  v72 = *(v57 + 16);
  v70 = (v57 + 16);
  v71 = v72;
  v72(&v170 - v73, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
  if (swift_dynamicCast())
  {
    sub_1DB1355D0(&v208, &v216);
    v74 = *(&v217 + 1);
    v75 = v218;
    __swift_project_boxed_opaque_existential_1(&v216, *(&v217 + 1));
    (*(v75 + 16))(v202, v74, v75);
    v76 = *&v202[8];
    v195 = *(*&v202[8] + 16);
    if (v195)
    {
      v3 = 0;
      v77 = *&v202[8] + 32;
      v78 = v192;
      v193 = *&v202[8];
      v194 = (v191 + 8);
      while (v3 < *(v76 + 2))
      {
        v198 = v77;
        sub_1DB164980(v77, v200);
        v80 = *&v200[24];
        v79 = *&v200[32];
        __swift_project_boxed_opaque_existential_1(v200, *&v200[24]);
        (*(v79 + 24))(v205, v80, v79);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D68, &qword_1DB2C3A20);
        sub_1DB2BA9C4();
        sub_1DB2BB004();
        v74 = v196;

        sub_1DB1688F0(&qword_1EE13F278, &qword_1ECC27D58, &qword_1DB2C3A10);
        sub_1DB2BA9B4();
        v81 = v199;
        sub_1DB2BA9D4();

        v70 = *v194;
        (*v194)(v81, v74);
        (v70)(v197, v74);
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D70, &qword_1DB2C3A28);
        LODWORD(v81) = (*(*(v82 - 8) + 48))(v78, 1, v82);
        sub_1DB1445E0(v78, &qword_1ECC27D50, &qword_1DB2C3A08);
        __swift_destroy_boxed_opaque_existential_1(v200);
        if (v81 != 1)
        {
LABEL_22:
          sub_1DB17181C(v202);
          v95 = 1;
          goto LABEL_39;
        }

        ++v3;
        v77 = (v198 + 40);
        v76 = v193;
        if (v195 == v3)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

LABEL_11:
    v92 = *&v202[64];
    v93 = *&v202[64] + 32;
    v70 = -*(*&v202[64] + 16);
    v74 = -1;
    while (&v70[v74] != -1)
    {
      if (++v74 >= *(v92 + 16))
      {
        goto LABEL_86;
      }

      v94 = v93 + 88;
      sub_1DB175548(v93, v200);
      sub_1DB1F3784(v200, v205);
      sub_1DB1755A4(v200);
      v93 = v94;
      if (v205[0])
      {
        goto LABEL_22;
      }
    }

    v96 = v203;
    result = v203 + 32;
    v98 = -*(v203 + 16);
    v99 = -1;
    while (v98 + v99 != -1)
    {
      if (++v99 >= *(v96 + 16))
      {
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v100 = result + 48;
      sub_1DB175650(result, v200);
      sub_1DB1F39B4(v200, v205);
      sub_1DB1756AC(v200);
      result = v100;
      if (v205[0])
      {
        goto LABEL_22;
      }
    }

    v112 = v204;
    result = v204 + 32;
    v113 = -*(v204 + 16);
    v114 = -1;
    do
    {
      v95 = v113 + v114 != -1;
      if (v113 + v114 == -1)
      {
        break;
      }

      if (++v114 >= *(v112 + 16))
      {
        goto LABEL_91;
      }

      v115 = result + 240;
      sub_1DB175700(result, v200);
      sub_1DB1F3F6C(v200, v205);
      sub_1DB17575C(v200);
      result = v115;
    }

    while (LOBYTE(v205[0]) != 1);
    sub_1DB17181C(v202);
LABEL_39:
    v116 = &v216;
    goto LABEL_40;
  }

  *&v210 = 0;
  v208 = 0u;
  v209 = 0u;
  sub_1DB1445E0(&v208, &qword_1ECC279E8, &unk_1DB2C3AE0);
  v71(v69, v3, a1);
  if (!swift_dynamicCast())
  {
    memset(v200, 0, 136);
    v200[136] = -1;
    sub_1DB1445E0(v200, &qword_1ECC27D28, &unk_1DB2CB830);
    v71(v66, v3, a1);
    if (swift_dynamicCast())
    {
      sub_1DB1F7034(*v200, *&v200[8], *&v200[16], *&v200[24], *&v200[32], *&v200[40], *&v200[48], *&v200[56], *&v200[64], *&v200[72], *&v200[80], *&v200[88], *&v200[96], *&v200[104], v200[106]);
      return 0;
    }

    else
    {
      v71(v63, v3, a1);
      if (swift_dynamicCast())
      {
      }

      else
      {
        v71(v182, v3, a1);
        if (swift_dynamicCast())
        {
          v122 = *v200;
          v121 = *&v200[8];
          sub_1DB2BA9C4();
          v123 = HIBYTE(v121) & 0xF;
          if ((v121 & 0x2000000000000000) == 0)
          {
            v123 = v122;
          }

          v124 = 7;
          if (((v121 >> 60) & ((v122 & 0x800000000000000) == 0)) != 0)
          {
            v124 = 11;
          }

          v198 = (v124 | (v123 << 16));
          v199 = v121;
          sub_1DB2BB004();
          sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00);
          v125 = v179;
          v126 = v190;
          sub_1DB2BA9B4();
          sub_1DB2BA9D4();

          v147 = *(v189 + 8);
          v147(v125, v126);
          v147(v183, v126);
          v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
          v149 = v185;
          v150 = (*(*(v148 - 8) + 48))(v185, 1, v148);
          sub_1DB1445E0(v149, &qword_1ECC27D40, &qword_1DB2C39F8);
          if (v150 != 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D68, &qword_1DB2C3A20);
            v3 = v171;
            sub_1DB2BA9C4();
            sub_1DB2BB004();

            sub_1DB1688F0(&qword_1EE13F278, &qword_1ECC27D58, &qword_1DB2C3A10);
            v70 = v170;
            v74 = v196;
            sub_1DB2BA9B4();
            sub_1DB2BA9D4();
LABEL_87:

            v164 = *(v191 + 8);
            v164(v70, v74);
            v164(v3, v74);
            v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D70, &qword_1DB2C3A28);
            v168 = v174;
            v169 = (*(*(v165 - 8) + 48))(v174, 1, v165);
            goto LABEL_88;
          }
        }

        else
        {
          (*(v178 + 24))(v200, a1);
          v138 = *v200;
          v137 = *&v200[8];

          sub_1DB2BA9C4();
          v139 = HIBYTE(v137) & 0xF;
          if ((v137 & 0x2000000000000000) == 0)
          {
            v139 = v138;
          }

          v140 = 7;
          if (((v137 >> 60) & ((v138 & 0x800000000000000) == 0)) != 0)
          {
            v140 = 11;
          }

          v198 = (v140 | (v139 << 16));
          v199 = v137;
          sub_1DB2BB004();
          sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00);
          v141 = v180;
          v142 = v190;
          sub_1DB2BA9B4();
          sub_1DB2BA9D4();

          v151 = *(v189 + 8);
          v151(v141, v142);
          v151(v184, v142);
          v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
          v153 = v186;
          v154 = (*(*(v152 - 8) + 48))(v186, 1, v152);
          sub_1DB1445E0(v153, &qword_1ECC27D40, &qword_1DB2C39F8);
          if (v154 != 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D68, &qword_1DB2C3A20);
            v155 = v173;
            sub_1DB2BA9C4();
            sub_1DB2BB004();

            sub_1DB1688F0(&qword_1EE13F278, &qword_1ECC27D58, &qword_1DB2C3A10);
            v156 = v172;
            v157 = v196;
            sub_1DB2BA9B4();
            sub_1DB2BA9D4();

            v166 = *(v191 + 8);
            v166(v156, v157);
            v166(v155, v157);
            v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D70, &qword_1DB2C3A28);
            v168 = v175;
            v169 = (*(*(v167 - 8) + 48))(v175, 1, v167);
LABEL_88:
            v95 = v169 != 1;
            v163 = v168;
LABEL_89:
            sub_1DB1445E0(v163, &qword_1ECC27D50, &qword_1DB2C3A08);
            return v95;
          }
        }
      }

      return 0;
    }
  }

  v222 = *&v200[96];
  v223[0] = *&v200[112];
  *(v223 + 9) = *&v200[121];
  v218 = *&v200[32];
  v219 = *&v200[48];
  v220 = *&v200[64];
  v221 = *&v200[80];
  v216 = *v200;
  v217 = *&v200[16];
  sub_1DB1446A4(&v216, v200, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v200[136])
  {
    v83 = *v200;
    v84 = *&v200[8];
    v85 = *&v200[24];
    v86 = *&v200[40];
    v87 = *&v200[56];
    v88 = *&v200[72];
    v89 = *&v200[88];
    v90 = *&v200[104];
    v91 = *&v200[120];
  }

  else
  {
    sub_1DB1445E0(v200, &qword_1ECC27CC8, &unk_1DB2C3860);
    v83 = 0;
    v84 = 0uLL;
    v85 = 0uLL;
    v86 = 0uLL;
    v87 = 0uLL;
    v88 = 0uLL;
    v89 = 0uLL;
    v90 = 0uLL;
    v91 = 0uLL;
  }

  *v202 = v83;
  *&v202[8] = v84;
  *&v202[24] = v85;
  *&v202[40] = v86;
  *&v202[56] = v87;
  *&v202[72] = v88;
  *&v202[88] = v89;
  *&v202[104] = v90;
  *&v202[120] = v91;
  if (!v84)
  {
    sub_1DB1445E0(v202, &qword_1ECC27CD0, &unk_1DB2CB840);
    sub_1DB1446A4(&v216, v200, &qword_1ECC27CC8, &unk_1DB2C3860);
    if (v200[136])
    {
      *&v202[96] = *&v200[96];
      *&v202[112] = *&v200[112];
      *&v202[128] = *&v200[128];
      *&v202[32] = *&v200[32];
      *&v202[48] = *&v200[48];
      *&v202[64] = *&v200[64];
      *&v202[80] = *&v200[80];
      *v202 = *v200;
      *&v202[16] = *&v200[16];
      sub_1DB1F4E58();
      sub_1DB1F7130(v202);
    }

    else
    {
    }

    sub_1DB2BA9C4();
    sub_1DB2BB004();

    sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00);
    v127 = v187;
    v128 = v190;
    sub_1DB2BA9B4();
    v129 = v188;
    sub_1DB2BA9D4();

    v134 = *(v189 + 8);
    v134(v127, v128);
    v134(v193, v128);
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
    v136 = (*(*(v135 - 8) + 48))(v129, 1, v135);
    sub_1DB1445E0(v129, &qword_1ECC27D40, &qword_1DB2C39F8);
    if (v136 != 1)
    {
      sub_1DB1446A4(&v216, v200, &qword_1ECC27CC8, &unk_1DB2C3860);
      if (v200[136])
      {
        *&v202[96] = *&v200[96];
        *&v202[112] = *&v200[112];
        *&v202[128] = *&v200[128];
        *&v202[32] = *&v200[32];
        *&v202[48] = *&v200[48];
        *&v202[64] = *&v200[64];
        *&v202[80] = *&v200[80];
        *v202 = *v200;
        *&v202[16] = *&v200[16];
        sub_1DB1F4E58();
        sub_1DB1F7130(v202);
      }

      else
      {
      }

      v158 = v176;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D68, &qword_1DB2C3A20);
      sub_1DB2BA9C4();
      sub_1DB2BB004();

      sub_1DB1688F0(&qword_1EE13F278, &qword_1ECC27D58, &qword_1DB2C3A10);
      v159 = v177;
      v160 = v196;
      sub_1DB2BA9B4();
      sub_1DB2BA9D4();

      v161 = *(v191 + 8);
      v161(v159, v160);
      v161(v158, v160);
      sub_1DB1F7184(&v216);
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D70, &qword_1DB2C3A28);
      v95 = (*(*(v162 - 8) + 48))(v181, 1, v162) != 1;
      v163 = v181;
      goto LABEL_89;
    }

    sub_1DB1F7184(&v216);
    return 0;
  }

  v214[0] = *&v202[96];
  v214[1] = *&v202[112];
  v215 = *&v202[128];
  v210 = *&v202[32];
  v211 = *&v202[48];
  v212 = *&v202[64];
  v213 = *&v202[80];
  v208 = *v202;
  v209 = *&v202[16];
  sub_1DB1446A4(v214, v205, &qword_1ECC279E8, &unk_1DB2C3AE0);
  v101 = v206;
  if (!v206)
  {
    sub_1DB1F7130(&v208);
    sub_1DB1F7184(&v216);
    sub_1DB1445E0(v205, &qword_1ECC279E8, &unk_1DB2C3AE0);
    return 0;
  }

  v102 = v207;
  __swift_project_boxed_opaque_existential_1(v205, v206);
  (*(v102 + 16))(v202, v101, v102);
  v103 = *&v202[8];
  v197 = *(*&v202[8] + 16);
  if (!v197)
  {
LABEL_44:
    v117 = *&v202[64];
    result = *&v202[64] + 32;
    v118 = -*(*&v202[64] + 16);
    v119 = -1;
    while (v118 + v119 != -1)
    {
      if (++v119 >= *(v117 + 16))
      {
        goto LABEL_93;
      }

      v120 = result + 88;
      sub_1DB175548(result, v200);
      sub_1DB1F3784(v200, v201);
      sub_1DB1755A4(v200);
      result = v120;
      if (v201[0])
      {
        goto LABEL_62;
      }
    }

    v130 = v203;
    result = v203 + 32;
    v131 = -*(v203 + 16);
    v132 = -1;
    while (v131 + v132 != -1)
    {
      if (++v132 >= *(v130 + 16))
      {
        goto LABEL_94;
      }

      v133 = result + 48;
      sub_1DB175650(result, v200);
      sub_1DB1F39B4(v200, v201);
      sub_1DB1756AC(v200);
      result = v133;
      if (v201[0])
      {
        goto LABEL_62;
      }
    }

    v143 = v204;
    result = v204 + 32;
    v144 = -*(v204 + 16);
    v145 = -1;
    do
    {
      v95 = v144 + v145 != -1;
      if (v144 + v145 == -1)
      {
        break;
      }

      if (++v145 >= *(v143 + 16))
      {
        goto LABEL_95;
      }

      v146 = result + 240;
      sub_1DB175700(result, v200);
      sub_1DB1F3F6C(v200, v201);
      sub_1DB17575C(v200);
      result = v146;
    }

    while (LOBYTE(v201[0]) != 1);
    sub_1DB1F7130(&v208);
    sub_1DB1F7184(&v216);
    sub_1DB17181C(v202);
LABEL_76:
    v116 = v205;
LABEL_40:
    __swift_destroy_boxed_opaque_existential_1(v116);
    return v95;
  }

  v104 = 0;
  result = *&v202[8] + 32;
  v192 = *&v202[8];
  v193 = (v191 + 8);
  v105 = v196;
  while (v104 < *(v103 + 2))
  {
    v199 = result;
    sub_1DB164980(result, v200);
    v106 = *&v200[24];
    v107 = *&v200[32];
    __swift_project_boxed_opaque_existential_1(v200, *&v200[24]);
    (*(v107 + 24))(v201, v106, v107);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D68, &qword_1DB2C3A20);
    sub_1DB2BA9C4();
    sub_1DB2BB004();
    v108 = v194;

    sub_1DB1688F0(&qword_1EE13F278, &qword_1ECC27D58, &qword_1DB2C3A10);
    sub_1DB2BA9B4();
    v109 = v198;
    sub_1DB2BA9D4();

    v110 = *v193;
    (*v193)(v109, v105);
    v110(v195, v105);
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D70, &qword_1DB2C3A28);
    LODWORD(v109) = (*(*(v111 - 8) + 48))(v108, 1, v111);
    sub_1DB1445E0(v108, &qword_1ECC27D50, &qword_1DB2C3A08);
    __swift_destroy_boxed_opaque_existential_1(v200);
    if (v109 != 1)
    {
LABEL_62:
      sub_1DB1F7130(&v208);
      sub_1DB1F7184(&v216);
      sub_1DB17181C(v202);
      v95 = 1;
      goto LABEL_76;
    }

    ++v104;
    result = (v199 + 40);
    v103 = v192;
    if (v197 == v104)
    {
      goto LABEL_44;
    }
  }

LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

double sub_1DB1E4CD8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a3;
  v12 = a1[1];
  if (a2 && (v53 = *a1, v54 = v12, MEMORY[0x1EEE9AC00](a1), v39 = &v53, (sub_1DB25F2DC(sub_1DB1F8968, v38, v13) & 1) == 0))
  {
    *(a7 + 32) = 0;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
  }

  else
  {
    v44 = a7;
    v45 = a5;
    v14 = *(a6 + 24);
    v42 = a6 + 24;
    v43 = v14;
    v14(&v53, a5, a6);
    v15 = v53;
    v16 = v54;

    LOBYTE(v15) = sub_1DB23CC0C(v15, v16, 46);
    v46 = v7;

    if (v15)
    {
      v17 = sub_1DB2B995C(34, 0xE100000000000000);
      v19 = v18;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DB2BD5A0;
      v21 = *a4;
      v22 = a4[1];
      *(v20 + 32) = sub_1DB2B995C(34, 0xE100000000000000);
      *(v20 + 40) = v23;
      *(v20 + 48) = sub_1DB2B995C(34, 0xE100000000000000);
      *(v20 + 56) = v24;
      v53 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
      sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
      v25 = sub_1DB2BAD24();
      v19 = v26;
      v17 = v25;
    }

    v27 = v45;
    v28 = v43;
    v43(&v53, v45, a6);
    v29 = v53;
    v30 = v54;

    v51 = v29;
    v52 = v30;
    v49 = 42;
    v50 = 0xE100000000000000;
    v47 = v17;
    v48 = v19;
    v39 = sub_1DB143508();
    v40 = v39;
    v38[0] = MEMORY[0x1E69E6158];
    v38[1] = v39;
    v31 = sub_1DB2BB3D4();
    v41 = v32;

    v28(&v53, v27, a6);
    v33 = v55;

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v35 = v44;
    v44[3] = v34;
    v35[4] = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    v37 = v41;
    *v35 = v31;
    v35[1] = v37;
    v35[2] = v33;
  }

  return result;
}

void *sub_1DB1E501C(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 64);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = *v5;
    v8 = *(v5 - 8);
    v9 = *(v5 - 3);
    v10 = *(v5 - 2);
    v30[0] = *(v5 - 4);
    v30[1] = v9;
    v30[2] = v10;
    v31 = v8;
    v32 = v7;

    v24(&v26, v30);
    if (v3)
    {
      break;
    }

    if (v27)
    {
      sub_1DB1355D0(&v26, v29);
      sub_1DB1355D0(v29, &v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_1DB1573FC(0, v6[2] + 1, 1, v6);
        v33 = v6;
      }

      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        v14 = sub_1DB1573FC((v12 > 1), v13 + 1, 1, v6);
        v33 = v14;
      }

      else
      {
        v14 = v6;
      }

      v15 = v27;
      v16 = v28;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(&v26, v27);
      v18 = *(*(v15 - 8) + 64);
      MEMORY[0x1EEE9AC00](v17);
      v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v20);
      sub_1DB200A54(v13, v20, &v33, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(&v26);
      v6 = v14;
    }

    else
    {
      sub_1DB1445E0(&v26, &qword_1ECC27898, &unk_1DB2CCD00);
    }

    v5 += 5;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_1DB1E5268@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v154 = a2;
  v133[0] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D40, &qword_1DB2C39F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v150 = v133 - v8;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D48, &qword_1DB2C3A00);
  v9 = *(v149 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v149);
  v148 = v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v133 - v13;
  v15 = a1[9];
  v248 = a1[8];
  v249 = v15;
  v16 = a1[5];
  v244 = a1[4];
  v245 = v16;
  v17 = a1[6];
  v247 = a1[7];
  v246 = v17;
  v18 = a1[1];
  v240 = *a1;
  v241 = v18;
  v19 = a1[2];
  v243 = a1[3];
  v242 = v19;
  v20 = v3[9];
  v259 = v3[8];
  v260 = v20;
  v261 = v3[10];
  v21 = v3[5];
  v255 = v3[4];
  v256 = v21;
  v22 = v3[7];
  v257 = v3[6];
  v258 = v22;
  v23 = v3[1];
  v251 = *v3;
  v252 = v23;
  v24 = v3[3];
  v25 = v3[1];
  v253 = v3[2];
  v254 = v24;
  v26 = *(a1 + 20);
  v152 = *(a1 + 21);
  v250 = v26;
  v262 = *(v3 + 22);
  v138 = v251;
  v238[0] = *(v3 + 1);
  *(v238 + 3) = *(v3 + 1);
  v235 = v25;
  v236 = v253;
  v237 = v24;
  v234 = *(v3 + 19);
  v233 = *(v3 + 136);
  v27 = *(v3 + 104);
  v232 = *(v3 + 120);
  v231 = v27;
  v28 = *(v3 + 72);
  v230 = *(v3 + 88);
  v229 = v28;
  v134 = v255;
  v135 = v261;
  v136 = BYTE8(v261);
  LODWORD(v26) = *(v3 + 169);
  *(v228 + 3) = *(v3 + 43);
  v228[0] = v26;
  v137 = v262;
  v29 = *(&v251 + 1);
  v142 = v252;
  v239[0] = v252;
  v239[1] = v253;
  v139 = v24;
  v239[2] = v24;
  v143 = *(&v24 + 1);
  *&v215 = MEMORY[0x1E69E7CC0];
  v147 = *(*(&v251 + 1) + 16);
  if (v147)
  {
    v146 = *(&v251 + 1) + 32;
    sub_1DB1754EC(&v251, &v221);
    v145 = (v9 + 8);
    v133[1] = " placeholders, expected: ";

    v31 = 0;
    v140 = xmmword_1DB2BCC40;
    v32 = v4;
    v144 = v29;
    v151 = v14;
    while (1)
    {
      if (v31 >= *(v29 + 2))
      {
        goto LABEL_64;
      }

      v155 = v31;
      sub_1DB164980(v146 + 40 * v31, &v195);
      v35 = *(&v196 + 1);
      v36 = v197;
      v37 = __swift_project_boxed_opaque_existential_1(&v195, *(&v196 + 1));
      v38 = v36[3];
      v157 = v37;
      v158 = v35;
      v156 = v36;
      *&v153 = v38;
      *(&v153 + 1) = v36 + 3;
      v38(&v221, v35, v36);

      sub_1DB2BA9C4();
      sub_1DB2BB004();
      v263 = v32;
      v39 = v150;

      sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00);
      v40 = v148;
      v41 = v149;
      sub_1DB2BA9B4();
      v42 = v263;
      sub_1DB2BA9D4();
      v32 = v42;
      if (v42)
      {
        MEMORY[0x1E1284A10](v42);

        v43 = *v145;
        (*v145)(v40, v41);
        v43(v151, v41);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        (*(*(v44 - 8) + 56))(v39, 1, 1, v44);
        sub_1DB1445E0(v39, &qword_1ECC27D40, &qword_1DB2C39F8);
        v32 = 0;
      }

      else
      {

        v45 = *v145;
        (*v145)(v40, v41);
        v45(v151, v41);
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        LODWORD(v45) = (*(*(v46 - 8) + 48))(v39, 1, v46);
        sub_1DB1445E0(v39, &qword_1ECC27D40, &qword_1DB2C39F8);
        if (v45 != 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
          v33 = swift_allocObject();
          *(v33 + 16) = v140;
          v55 = v158;
          v56 = v156;
          *(v33 + 56) = v158;
          *(v33 + 64) = v56;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v33 + 32));
          (*(*(v55 - 1) + 16))(boxed_opaque_existential_0, v157, v55);
          goto LABEL_4;
        }
      }

      v47 = v157;
      v48 = v158;
      v49 = v156;
      (v153)(&v221, v158, v156);
      v50 = *(&v221 + 1);
      v51 = v221;

      LOBYTE(v51) = sub_1DB23CC0C(v51, v50, 42);

      if ((v51 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
        v33 = swift_allocObject();
        *(v33 + 16) = v140;
        *(v33 + 56) = v48;
        *(v33 + 64) = v49;
        v34 = __swift_allocate_boxed_opaque_existential_0((v33 + 32));
        (*(*(v48 - 1) + 16))(v34, v47, v48);
        goto LABEL_4;
      }

      v52 = v154;
      v53 = v142;
      if (!v143)
      {

        sub_1DB1F88FC();
        swift_allocError();
        *v122 = v53;
        *(v122 + 16) = 0;
        *(v122 + 24) = 4;
        swift_willThrow();

        goto LABEL_60;
      }

      if (v154)
      {

        if (Connection.tableExists(_:)(v53))
        {
          type metadata accessor for SchemaReader();
          v54 = swift_allocObject();
          *(v54 + 16) = v52;

          v68 = sub_1DB26B520(v53._countAndFlagsBits, v53._object);
          swift_setDeallocating();
          v69 = *(v54 + 16);

          swift_deallocClassInstance();
          v70 = *(v68 + 16);
          if (v70)
          {
            v263 = 0;
            *&v221 = MEMORY[0x1E69E7CC0];
            sub_1DB138470(0, v70, 0);
            v58 = v221;
            *(&v153 + 1) = v68;
            v71 = (v68 + 40);
            do
            {
              v73 = *(v71 - 1);
              v72 = *v71;
              *&v221 = v58;
              v75 = *(v58 + 16);
              v74 = *(v58 + 24);

              if (v75 >= v74 >> 1)
              {
                sub_1DB138470((v74 > 1), v75 + 1, 1);
                v58 = v221;
              }

              *(v58 + 16) = v75 + 1;
              v76 = v58 + 16 * v75;
              *(v76 + 32) = v73;
              *(v76 + 40) = v72;
              v71 += 16;
              --v70;
            }

            while (v70);

            v32 = v263;
          }

          else
          {

            v58 = MEMORY[0x1E69E7CC0];
          }

          goto LABEL_17;
        }
      }

      v58 = 0;
LABEL_17:
      *&v171 = v152;
      DataSpecification.subscript.getter(v139, v143, &v221);
      v59 = *(&v221 + 1);
      if (!*(&v221 + 1))
      {

        goto LABEL_59;
      }

      v263 = v32;
      v60 = v221;
      v171 = v221;
      *&v172 = v222;
      DataSpecification.Namespace.subscript.getter(v142, *(&v142 + 1), &v221);
      v61 = *(&v221 + 1);
      if (!*(&v221 + 1))
      {

        sub_1DB1718E4(v60, v59);
LABEL_59:
        *&v221 = 0;
        *(&v221 + 1) = 0xE000000000000000;
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
        MEMORY[0x1E1283490](v142, *(&v142 + 1));
        MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
        MEMORY[0x1E1283490](v139, v143);
        v131 = v221;
        *&v222 = 0;
        BYTE8(v222) = 5;
        sub_1DB171870();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v132 = v131;
        *(v132 + 16) = 0;
        *(v132 + 24) = 5;
LABEL_60:
        __swift_destroy_boxed_opaque_existential_1(&v195);
        v98 = v144;

LABEL_61:
        v119 = v137;
        v118 = v134;
        v120 = v135;
        goto LABEL_62;
      }

      v62 = v224;
      v153 = v223;
      v141 = *(&v222 + 1);
      v63 = v221;
      sub_1DB1718E4(v60, v59);

      v64 = sub_1DB171928(v63, v61);
      MEMORY[0x1EEE9AC00](v64);
      v66 = v156;
      v65 = v157;
      v133[-6] = v158;
      v133[-5] = v66;
      v133[-4] = v58;
      v133[-3] = v65;
      v133[-2] = v239;
      v67 = v263;
      v33 = sub_1DB1E501C(sub_1DB1F8950, &v133[-8], v62);
      v32 = v67;

LABEL_4:
      v29 = v144;
      v31 = v155 + 1;
      __swift_destroy_boxed_opaque_existential_1(&v195);
      result = sub_1DB1414E8(v33);
      if (v31 == v147)
      {

        v151 = v215;
        goto LABEL_29;
      }
    }
  }

  sub_1DB1754EC(&v251, &v221);
  v151 = MEMORY[0x1E69E7CC0];
  v32 = v4;
LABEL_29:
  v263 = v32;
  v77 = v255;

  v138 &= 1u;
  v78 = *(v77 + 16);
  if (v78)
  {
    v220 = MEMORY[0x1E69E7CC0];
    result = sub_1DB138660(0, v78, 0);
    if (!*(v77 + 16))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v79 = 0;
    v80 = v77 + 32;
    v81 = v220;
    *(&v153 + 1) = v78 - 1;
    v155 = v77;
    while (1)
    {
      v158 = v81;
      sub_1DB175548(v80, v210);
      LODWORD(v156) = v210[0];
      v82 = v212;
      v83 = v213;
      v84 = __swift_project_boxed_opaque_existential_1(v211, v212);
      v208 = v82;
      v209 = v83;
      v85 = __swift_allocate_boxed_opaque_existential_0(&v207);
      v157 = v133;
      v86 = *(v82 - 8);
      v87 = *(v86 + 64);
      MEMORY[0x1EEE9AC00](v85);
      v89 = v133 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v86 + 16))(v89, v84, v82);
      (*(v83 + 16))(&v195, v82, v83);
      v191 = v248;
      v192 = v249;
      v187 = v244;
      v188 = v245;
      v189 = v246;
      v190 = v247;
      v183 = v240;
      v184 = v241;
      v185 = v242;
      v186 = v243;
      v193 = v250;
      v194 = v152;
      v90 = v263;
      sub_1DB1E5268(&v221, &v183, v154);
      v263 = v90;
      if (v90)
      {
        v179 = v203;
        v180 = v204;
        v181 = v205;
        v182 = v206;
        v175 = v199;
        v176 = v200;
        v177 = v201;
        v178 = v202;
        v171 = v195;
        v172 = v196;
        v173 = v197;
        v174 = v198;
        sub_1DB17181C(&v171);
        (*(v86 + 8))(v89, v82);
        __swift_deallocate_boxed_opaque_existential_1(&v207);
        sub_1DB1755A4(v210);

        v98 = v151;
        goto LABEL_61;
      }

      v179 = v203;
      v180 = v204;
      v181 = v205;
      v182 = v206;
      v175 = v199;
      v176 = v200;
      v177 = v201;
      v178 = v202;
      v171 = v195;
      v172 = v196;
      v173 = v197;
      v174 = v198;
      sub_1DB17181C(&v171);
      v167 = v225[4];
      v168 = v225[5];
      v169 = v226;
      v170 = v227;
      v163 = v225[0];
      v164 = v225[1];
      v165 = v225[2];
      v166 = v225[3];
      v159 = v221;
      v160 = v222;
      v161 = v223;
      v162 = v224;
      (*(v83 + 24))(&v159, v82, v83);
      (*(v86 + 32))(v85, v89, v82);
      sub_1DB164980(&v214, v218);
      LOBYTE(v215) = v156;
      sub_1DB1355D0(&v207, &v215 + 8);
      result = sub_1DB1755A4(v210);
      v81 = v158;
      v220 = v158;
      v92 = v158[2];
      v91 = v158[3];
      if (v92 >= v91 >> 1)
      {
        result = sub_1DB138660((v91 > 1), v92 + 1, 1);
        v81 = v220;
      }

      v81[2] = v92 + 1;
      v93 = &v81[11 * v92];
      v94 = v216;
      *(v93 + 2) = v215;
      *(v93 + 3) = v94;
      v95 = v217;
      v96 = v218[0];
      v97 = v218[1];
      v93[14] = v219;
      *(v93 + 5) = v96;
      *(v93 + 6) = v97;
      *(v93 + 4) = v95;
      if (*(&v153 + 1) == v79)
      {
        break;
      }

      v80 += 88;
      if (++v79 >= *(v155 + 16))
      {
        goto LABEL_63;
      }
    }
  }

  else
  {

    v81 = MEMORY[0x1E69E7CC0];
  }

  v99 = v261;
  v100 = *(v261 + 16);
  if (!v100)
  {

    v103 = MEMORY[0x1E69E7CC0];
    goto LABEL_53;
  }

  v158 = v81;
  v220 = MEMORY[0x1E69E7CC0];
  result = sub_1DB138640(0, v100, 0);
  if (!*(v99 + 16))
  {
LABEL_65:
    __break(1u);
    return result;
  }

  v101 = 0;
  v102 = v99 + 32;
  v103 = v220;
  *&v153 = v100 - 1;
  *(&v153 + 1) = v99;
  while (1)
  {
    v157 = v103;
    sub_1DB175650(v102, v210);
    LODWORD(v155) = v210[0];
    v104 = v212;
    v105 = v213;
    v106 = __swift_project_boxed_opaque_existential_1(v211, v212);
    v208 = v104;
    v209 = v105;
    v107 = __swift_allocate_boxed_opaque_existential_0(&v207);
    v156 = v133;
    v108 = *(v104 - 8);
    v109 = *(v108 + 64);
    MEMORY[0x1EEE9AC00](v107);
    v111 = v133 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v108 + 16))(v111, v106, v104);
    (*(v105 + 16))(&v195, v104, v105);
    v191 = v248;
    v192 = v249;
    v187 = v244;
    v188 = v245;
    v189 = v246;
    v190 = v247;
    v183 = v240;
    v184 = v241;
    v185 = v242;
    v186 = v243;
    v193 = v250;
    v194 = v152;
    v112 = v263;
    sub_1DB1E5268(&v221, &v183, v154);
    v263 = v112;
    if (v112)
    {
      v179 = v203;
      v180 = v204;
      v181 = v205;
      v182 = v206;
      v175 = v199;
      v176 = v200;
      v177 = v201;
      v178 = v202;
      v171 = v195;
      v172 = v196;
      v173 = v197;
      v174 = v198;
      sub_1DB17181C(&v171);
      (*(v108 + 8))(v111, v104);
      __swift_deallocate_boxed_opaque_existential_1(&v207);
      sub_1DB1756AC(v210);

      v98 = v151;
      v118 = v158;
      v119 = v137;
      v120 = v135;
      goto LABEL_62;
    }

    v179 = v203;
    v180 = v204;
    v181 = v205;
    v182 = v206;
    v175 = v199;
    v176 = v200;
    v177 = v201;
    v178 = v202;
    v171 = v195;
    v172 = v196;
    v173 = v197;
    v174 = v198;
    sub_1DB17181C(&v171);
    v167 = v225[4];
    v168 = v225[5];
    v169 = v226;
    v170 = v227;
    v163 = v225[0];
    v164 = v225[1];
    v165 = v225[2];
    v166 = v225[3];
    v159 = v221;
    v160 = v222;
    v161 = v223;
    v162 = v224;
    (*(v105 + 24))(&v159, v104, v105);
    (*(v108 + 32))(v107, v111, v104);
    LOBYTE(v215) = v155;
    sub_1DB1355D0(&v207, &v215 + 8);
    result = sub_1DB1756AC(v210);
    v103 = v157;
    v220 = v157;
    v114 = v157[2];
    v113 = v157[3];
    if (v114 >= v113 >> 1)
    {
      result = sub_1DB138640((v113 > 1), v114 + 1, 1);
      v103 = v220;
    }

    v103[2] = v114 + 1;
    v115 = &v103[6 * v114];
    v116 = v215;
    v117 = v217;
    v115[3] = v216;
    v115[4] = v117;
    v115[2] = v116;
    if (v153 == v101)
    {
      break;
    }

    v102 += 48;
    if (++v101 >= *(*(&v153 + 1) + 16))
    {
      goto LABEL_65;
    }
  }

  v81 = v158;
LABEL_53:
  LOBYTE(v171) = BYTE8(v261);
  *(&v171 + 1) = v262;
  v225[4] = v248;
  v225[5] = v249;
  v225[0] = v244;
  v225[1] = v245;
  v225[3] = v247;
  v225[2] = v246;
  v221 = v240;
  v222 = v241;
  v224 = v243;
  v223 = v242;
  *&v226 = v250;
  *(&v226 + 1) = v152;

  v121 = v263;
  sub_1DB1E78A8(&v221);

  if (v121)
  {
    v98 = v151;
    v118 = v81;
    v120 = v103;
    v119 = v137;
LABEL_62:
    LOBYTE(v221) = v138;
    *(&v221 + 1) = v238[0];
    DWORD1(v221) = *(v238 + 3);
    *(&v221 + 1) = v98;
    v222 = v235;
    v223 = v236;
    v224 = v237;
    *(&v225[1] + 8) = v230;
    *(v225 + 8) = v229;
    *&v225[0] = v118;
    *(&v225[5] + 1) = v234;
    *(&v225[4] + 8) = v233;
    *(&v225[3] + 8) = v232;
    *(&v225[2] + 8) = v231;
    *&v226 = v120;
    BYTE8(v226) = v136;
    HIDWORD(v226) = *(v228 + 3);
    *(&v226 + 9) = v228[0];
    v227 = v119;
    return sub_1DB17181C(&v221);
  }

  else
  {
    v123 = v195;
    v124 = *(&v195 + 1);

    v125 = v133[0];
    *v133[0] = v138;
    *(v125 + 1) = v238[0];
    *(v125 + 4) = *(v238 + 3);
    *(v125 + 8) = v151;
    v126 = v236;
    *(v125 + 16) = v235;
    *(v125 + 32) = v126;
    *(v125 + 48) = v237;
    *(v125 + 64) = v81;
    v127 = v230;
    *(v125 + 72) = v229;
    *(v125 + 88) = v127;
    v128 = v231;
    v129 = v232;
    v130 = v234;
    *(v125 + 136) = v233;
    *(v125 + 120) = v129;
    *(v125 + 104) = v128;
    *(v125 + 152) = v130;
    *(v125 + 160) = v103;
    *(v125 + 168) = v123;
    *(v125 + 169) = v228[0];
    *(v125 + 172) = *(v228 + 3);
    *(v125 + 176) = v124;
  }

  return result;
}

uint64_t sub_1DB1E6B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = v5;
  v88 = a2;
  v84 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D40, &qword_1DB2C39F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v96 = v82 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D48, &qword_1DB2C3A00);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v14);
  v20 = v82 - v19;
  v87 = *(a1 + 168);
  v21 = a3[1];
  v118[0] = *a3;
  v118[1] = v21;
  v119 = a3[2];
  v83 = *v4;
  v22 = *(v4 + 1);
  v120 = MEMORY[0x1E69E7CC0];
  v95 = *(v22 + 16);
  if (v95)
  {
    v23 = 0;
    v93 = (v18 + 8);
    v94 = v22 + 32;
    v82[0] = " placeholders, expected: ";
    v89 = xmmword_1DB2BCC40;
    v100 = v16;
    v101 = v12;
    v86 = v82 - v19;
    v92 = v22;
    while (1)
    {
      if (v23 >= *(v22 + 16))
      {
        __break(1u);
        return result;
      }

      v99 = v23;
      sub_1DB164980(v94 + 40 * v23, v115);
      v27 = v116;
      v28 = v117;
      v29 = __swift_project_boxed_opaque_existential_1(v115, v116);
      v30 = *(v28 + 24);
      v103 = v29;
      v104 = v27;
      v102 = v28;
      v97 = v30;
      v98 = v28 + 24;
      v30(&v108, v27, v28);

      sub_1DB2BA9C4();
      sub_1DB2BB004();
      v31 = v96;

      sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00);
      sub_1DB2BA9B4();
      v32 = v100;
      v33 = v101;
      sub_1DB2BA9D4();
      if (v6)
      {
        MEMORY[0x1E1284A10](v6);

        v34 = *v93;
        (*v93)(v32, v33);
        v34(v20, v33);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
        sub_1DB1445E0(v31, &qword_1ECC27D40, &qword_1DB2C39F8);
        v36 = v20;
      }

      else
      {

        v37 = *v93;
        (*v93)(v32, v33);
        v37(v20, v33);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        LODWORD(v37) = (*(*(v38 - 8) + 48))(v31, 1, v38);
        sub_1DB1445E0(v31, &qword_1ECC27D40, &qword_1DB2C39F8);
        if (v37 != 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
          v24 = swift_allocObject();
          *(v24 + 16) = v89;
          v51 = v104;
          v52 = v102;
          *(v24 + 56) = v104;
          *(v24 + 64) = v52;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v24 + 32));
          (*(*(v51 - 8) + 16))(boxed_opaque_existential_0, v103, v51);
          goto LABEL_28;
        }

        v36 = v20;
      }

      v39 = v103;
      v40 = v104;
      v41 = v102;
      v97(&v108, v104, v102);
      v43 = v108;
      v42 = v109;

      LOBYTE(v43) = sub_1DB23CC0C(v43, v42, 42);

      if (v43)
      {
        v44 = *(&v119 + 1);
        v45 = v88;
        if (!*(&v119 + 1))
        {

          v77 = v118[0];
          sub_1DB1F88FC();
          swift_allocError();
          *v78 = v77;
          *(v78 + 16) = 0;
          *(v78 + 24) = 4;
          swift_willThrow();

          return __swift_destroy_boxed_opaque_existential_1(v115);
        }

        v46 = v119;
        v47 = v118[0];
        v98 = *(&v118[0] + 1);
        v91 = *&v118[0];
        if (v88)
        {

          if (Connection.tableExists(_:)(v47))
          {
            type metadata accessor for SchemaReader();
            inited = swift_initStackObject();
            *(inited + 16) = v45;

            v49 = sub_1DB26B520(v47._countAndFlagsBits, v47._object);
            v50 = 0;
            v90 = v46;
            v55 = v49;
            swift_setDeallocating();
            v56 = *(inited + 16);

            v57 = *(v55 + 16);
            v54 = MEMORY[0x1E69E7CC0];
            if (v57)
            {
              v85 = v44;
              v97 = 0;
              v108 = MEMORY[0x1E69E7CC0];
              sub_1DB138470(0, v57, 0);
              v54 = v108;
              v82[3] = v55;
              v58 = (v55 + 40);
              do
              {
                v60 = *(v58 - 1);
                v59 = *v58;
                v108 = v54;
                v62 = *(v54 + 16);
                v61 = *(v54 + 24);

                if (v62 >= v61 >> 1)
                {
                  sub_1DB138470((v61 > 1), v62 + 1, 1);
                  v54 = v108;
                }

                *(v54 + 16) = v62 + 1;
                v63 = v54 + 16 * v62;
                *(v63 + 32) = v60;
                *(v63 + 40) = v59;
                v58 += 16;
                --v57;
              }

              while (v57);

              v50 = v97;
              v44 = v85;
            }

            else
            {
            }

            v46 = v90;
LABEL_25:
            v105 = v87;
            v64 = v46;
            DataSpecification.subscript.getter(v46, v44, &v108);
            v65 = v109;
            if (!v109)
            {

              goto LABEL_36;
            }

            v66 = v44;
            v97 = v50;
            v67 = v108;
            v105 = v108;
            v106 = v109;
            v107 = v110;
            DataSpecification.Namespace.subscript.getter(v91, v98, &v108);
            v68 = v109;
            if (!v109)
            {

              sub_1DB1718E4(v67, v65);
              v44 = v66;
LABEL_36:
              v108 = 0;
              v109 = 0xE000000000000000;
              sub_1DB2BB4F4();
              MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
              MEMORY[0x1E1283490](v91, v98);
              MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
              MEMORY[0x1E1283490](v64, v44);
              v79 = v108;
              v80 = v109;
              v110 = 0;
              LOBYTE(v111) = 5;
              sub_1DB171870();
              swift_willThrowTypedImpl();
              swift_allocError();
              *v81 = v79;
              *(v81 + 8) = v80;
              *(v81 + 16) = 0;
              *(v81 + 24) = 5;
              return __swift_destroy_boxed_opaque_existential_1(v115);
            }

            v69 = v114;
            v98 = v113;
            v90 = v111;
            v91 = v112;
            v70 = v108;
            sub_1DB1718E4(v67, v65);

            v20 = v86;
            v71 = sub_1DB171928(v70, v68);
            MEMORY[0x1EEE9AC00](v71);
            v73 = v102;
            v72 = v103;
            v82[-6] = v104;
            v82[-5] = v73;
            v82[-4] = v54;
            v82[-3] = v72;
            v82[-2] = v118;
            v74 = v97;
            v24 = sub_1DB1E501C(sub_1DB1F8BBC, &v82[-8], v69);
            v6 = v74;

LABEL_28:
            v26 = v99;
            goto LABEL_4;
          }
        }

        v54 = 0;
        v50 = 0;
        goto LABEL_25;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      v24 = swift_allocObject();
      *(v24 + 16) = v89;
      *(v24 + 56) = v40;
      *(v24 + 64) = v41;
      v25 = __swift_allocate_boxed_opaque_existential_0((v24 + 32));
      (*(*(v40 - 8) + 16))(v25, v39, v40);
      v26 = v99;
      v20 = v36;
      v6 = 0;
LABEL_4:
      v23 = v26 + 1;
      __swift_destroy_boxed_opaque_existential_1(v115);
      result = sub_1DB1414E8(v24);
      v22 = v92;
      if (v23 == v95)
      {
        v75 = v120;
        goto LABEL_32;
      }
    }
  }

  v75 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v76 = v84;
  *v84 = v83;
  *(v76 + 1) = v75;
  return result;
}

void sub_1DB1E78A8(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4 = v2;
  v967 = v5;
  v6 = v3;
  v930 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D40, &qword_1DB2C39F8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v939 = &v882 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v882 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v952 = &v882 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v925 = &v882 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v931 = &v882 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v882 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v934 = &v882 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v946 = &v882 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v941 = &v882 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D48, &qword_1DB2C3A00);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v882 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v45 = MEMORY[0x1EEE9AC00](v44);
  v937 = &v882 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v933 = &v882 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v956 = &v882 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v945 = &v882 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v959 = &v882 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v940 = &v882 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v69 = &v882 - v68;
  v70 = v6[4];
  v1143 = v6[5];
  v1142 = v70;
  v71 = v6[3];
  v1140 = v6[2];
  v1141 = v71;
  v72 = v6[9];
  v1148 = v6[10];
  v73 = v6[7];
  v74 = v6[8];
  v1147 = v72;
  v1146 = v74;
  v1144 = v6[6];
  v1145 = v73;
  v75 = *v6;
  v1139 = v6[1];
  v1138 = v75;
  v76 = *v1;
  v77 = *(v1 + 1);
  v78 = *(v77 + 16);
  v79 = MEMORY[0x1E69E7CC0];
  if (!v78)
  {
    v826 = v930;
    goto LABEL_429;
  }

  v899 = *v1;
  v951 = v69;
  v920 = v62;
  v921 = v64;
  v932 = v63;
  v919 = v61;
  v912 = v60;
  v961 = v59;
  v949 = v58;
  v962 = v37;
  v954 = v67;
  v948 = v66;
  v936 = v65;
  v969 = v57;
  v922 = v23;
  v955 = v14;
  v1137 = MEMORY[0x1E69E7CC0];
  v906 = v78;
  v928 = v77;
  sub_1DB138158(v78);
  if (!*(v928 + 16))
  {
LABEL_474:
    __break(1u);
LABEL_475:

    sub_1DB1F88FC();
    swift_allocError();
    object = v944._object;
    *v861 = v944._countAndFlagsBits;
    *(v861 + 8) = object;
    *(v861 + 16) = 0;
    *(v861 + 24) = 4;
    swift_willThrow();

    goto LABEL_482;
  }

  v80 = v4;
  v81 = 0;
  v82 = v928 + 32;
  v968 = (v30 + 8);
  v935 = " placeholders, expected: ";
  v924 = (&v1075 + 1);
  v907 = (&v1097 + 1);
  v927 = &v1104[1];
  v929 = (&v1090 + 1);
  v947 = xmmword_1DB2BCC40;
  v83 = 1;
  v905 = v928 + 32;
LABEL_4:
  v908 = v83;
  sub_1DB175700(v82 + 240 * v81, v1125);
  v1172 = v1125[8];
  v1173 = v1125[9];
  v1174 = v1125[10];
  v1175 = v1126;
  v1168 = v1125[4];
  v1169 = v1125[5];
  v1170 = v1125[6];
  v1171 = v1125[7];
  v1164 = v1125[0];
  v1165 = v1125[1];
  v1166 = v1125[2];
  v1167 = v1125[3];
  sub_1DB1768C0(v1123, &v1138, v967);
  if (v80)
  {
    goto LABEL_470;
  }

  v1119 = v1123[8];
  v1120 = v1123[9];
  v1121 = v1123[10];
  v1122 = v1124;
  v1115 = v1123[4];
  v1116 = v1123[5];
  v1117 = v1123[6];
  v1118 = v1123[7];
  v1111 = v1123[0];
  v1112 = v1123[1];
  v1113 = v1123[2];
  v1114 = v1123[3];
  v84 = v1127;
  if (v1127)
  {
    v85 = *(v1127 + 16);
    if (v85)
    {
      v1062[0] = MEMORY[0x1E69E7CC0];
      sub_1DB138140(v85);
      v86 = 0;
      v87 = (v84 + 32);
      v916 = v85;
      v917 = v84;
      v915 = (v84 + 32);
      while (1)
      {
        if (v86 >= *(v84 + 16))
        {
          goto LABEL_512;
        }

        v1176 = v80;
        v923 = v86;
        sub_1DB164980(&v87[40 * v86], v1056);
        v88 = v1057;
        v966 = v1058;
        v89 = __swift_project_boxed_opaque_existential_1(v1056, v1057);
        v90 = *(v88 - 8);
        v91 = *(v90 + 64);
        MEMORY[0x1EEE9AC00](v89);
        v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
        v93 = *(v90 + 16);
        v93(&v882 - v92, v89, v88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
        if (swift_dynamicCast())
        {
          v911 = &v882;
          sub_1DB1355D0(v989, &v991);
          v94 = *(&v992 + 1);
          v95 = v993;
          __swift_project_boxed_opaque_existential_1(&v991, *(&v992 + 1));
          *(&v978 + 1) = v94;
          *&v979 = v95;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v977);
          v914 = &v882;
          v96 = *(*(v94 - 8) + 64);
          MEMORY[0x1EEE9AC00](boxed_opaque_existential_0);
          v909 = v98;
          v99 = *(v98 + 16);
          v904 = &v882 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
          v99();
          v100 = *(v95 + 16);
          v910 = v94;
          v886 = v95;
          v100(v1104, v94, v95);
          *&v1107[128] = *&v1104[128];
          v1108 = *&v1104[144];
          v1109 = v1105;
          v1110 = v1106;
          *&v1107[64] = *&v1104[64];
          *&v1107[80] = *&v1104[80];
          *&v1107[96] = *&v1104[96];
          *&v1107[112] = *&v1104[112];
          *v1107 = *v1104;
          *&v1107[16] = *&v1104[16];
          *&v1107[32] = *&v1104[32];
          *&v1107[48] = *&v1104[48];
          LODWORD(v926) = v1104[0];
          *v973 = *v927;
          *&v973[3] = *(v927 + 3);
          v1037 = *&v1104[16];
          v1038 = *&v1104[32];
          v1039 = *&v1104[48];
          v1045 = *&v1104[88];
          v1044 = *&v1104[72];
          *&v1049 = *&v1104[152];
          v1048 = *&v1104[136];
          v1047 = *&v1104[120];
          v1046 = *&v1104[104];
          v901 = *&v1104[64];
          v902 = v1105;
          LODWORD(v903) = BYTE8(v1105);
          *(v970 + 3) = HIDWORD(v1105);
          v970[0] = *(&v1105 + 9);
          v913 = v1106;
          v85 = *&v1104[8];
          v1156[0] = *&v1104[16];
          v1156[1] = *&v1104[32];
          v942 = *&v1104[48];
          v1157 = *&v1104[48];
          v958 = *&v1104[56];
          v1158 = *&v1104[56];
          v101 = MEMORY[0x1E69E7CC0];
          *&v1027 = MEMORY[0x1E69E7CC0];
          v943 = *(*&v1104[8] + 16);
          if (!v943)
          {
            sub_1DB1754EC(v1107, &v1097);
            v887 = v101;
            v103 = v1176;
            goto LABEL_96;
          }

          v953 = *&v1104[16];
          v957 = *&v1104[24];
          v938 = *(&v1148 + 1);
          v944._object = (*&v1104[8] + 32);
          sub_1DB1754EC(v1107, &v1097);

          v102 = 0;
          v103 = v1176;
          v944._countAndFlagsBits = v85;
          do
          {
            if (v102 >= *(v85 + 16))
            {
              __break(1u);
              goto LABEL_505;
            }

            v963 = v102;
            sub_1DB164980(v944._object + 40 * v102, &v1090);
            v108 = v1091._object;
            v109 = v1092;
            v110 = __swift_project_boxed_opaque_existential_1(&v1090, v1091._object);
            v111 = v109[3];
            v965 = v110;
            v966 = v108;
            v964 = v109;
            *(&v960 + 1) = v109 + 3;
            *&v960 = v111;
            v111(&v1097, v108, v109);
            v1176 = v103;

            sub_1DB2BA9C4();
            sub_1DB2BB004();

            sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00);
            v112 = v940;
            v113 = v969;
            sub_1DB2BA9B4();
            v114 = v941;
            v115 = v1176;
            sub_1DB2BA9D4();
            v103 = v115;
            if (v115)
            {
              MEMORY[0x1E1284A10](v115);

              v116 = *v968;
              (*v968)(v112, v113);
              v116(v951, v113);
              v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
              (*(*(v117 - 8) + 56))(v114, 1, 1, v117);
              sub_1DB1445E0(v114, &qword_1ECC27D40, &qword_1DB2C39F8);
            }

            else
            {

              v118 = *v968;
              (*v968)(v112, v113);
              v118(v951, v113);
              v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
              LODWORD(v118) = (*(*(v119 - 8) + 48))(v114, 1, v119);
              sub_1DB1445E0(v114, &qword_1ECC27D40, &qword_1DB2C39F8);
              if (v118 != 1)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
                v104 = swift_allocObject();
                *(v104 + 16) = v947;
                v105 = v966;
                v106 = v964;
                *(v104 + 56) = v966;
                *(v104 + 64) = v106;
                v107 = __swift_allocate_boxed_opaque_existential_0((v104 + 32));
                (*(*(v105 - 8) + 16))(v107, v965, v105);
                goto LABEL_13;
              }
            }

            (v960)(&v1097, v966, v964);
            v120 = v1097;

            if ((*(&v120 + 1) & 0x2000000000000000) != 0)
            {
              v121 = HIBYTE(*(&v120 + 1)) & 0xFLL;
            }

            else
            {
              v121 = v120 & 0xFFFFFFFFFFFFLL;
            }

            if (v121)
            {
              v122 = 0;
              while (1)
              {
                if ((*(&v120 + 1) & 0x1000000000000000) != 0)
                {
                  v125 = sub_1DB2BB4E4();
                  goto LABEL_32;
                }

                if ((*(&v120 + 1) & 0x2000000000000000) != 0)
                {
                  *&v1075 = v120;
                  *(&v1075 + 1) = *(&v120 + 1) & 0xFFFFFFFFFFFFFFLL;
                  v124 = &v1075 + v122;
                }

                else
                {
                  v123 = (*(&v120 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32;
                  if ((v120 & 0x1000000000000000) == 0)
                  {
                    v123 = sub_1DB2BB5B4();
                  }

                  v124 = (v123 + v122);
                }

                v125 = *v124;
                if ((*v124 & 0x80000000) == 0)
                {
                  break;
                }

                v127 = (__clz(v125 ^ 0xFF) - 24);
                if (v127 > 2)
                {
                  if (v127 == 3)
                  {
                    v125 = ((v125 & 0xF) << 12) | ((v124[1] & 0x3F) << 6) | v124[2] & 0x3F;
                    v126 = 3;
                  }

                  else
                  {
                    v125 = ((v125 & 0xF) << 18) | ((v124[1] & 0x3F) << 12) | ((v124[2] & 0x3F) << 6) | v124[3] & 0x3F;
                    v126 = 4;
                  }
                }

                else
                {
                  if (v127 == 1)
                  {
                    break;
                  }

                  v125 = v124[1] & 0x3F | ((v125 & 0x1F) << 6);
                  v126 = 2;
                }

LABEL_32:
                if (v125 == 42)
                {

                  if (v958)
                  {
                    v128 = v967;
                    if (v967)
                    {

                      v129 = v953;
                      v130._countAndFlagsBits = v953;
                      v131 = v957;
                      v130._object = v957;
                      if (Connection.tableExists(_:)(v130))
                      {
                        type metadata accessor for SchemaReader();
                        *(swift_allocObject() + 16) = v128;

                        v142 = sub_1DB26B520(v129, v131);
                        swift_setDeallocating();
                        SchemaReader.__deallocating_deinit();
                        v143 = sub_1DB165CE0(v142);
                        if (v143)
                        {
                          v144 = v143;
                          *&v1097 = MEMORY[0x1E69E7CC0];
                          sub_1DB138128(v143);
                          if (v144 < 0)
                          {
                            goto LABEL_521;
                          }

                          v145 = (v142 + 40);
                          do
                          {
                            v146 = *(v145 - 1);
                            v147 = *v145;

                            sub_1DB138850();
                            v148 = *(v1097 + 16);
                            sub_1DB13893C(v148);
                            v149 = sub_1DB1389E8(v148, v146, v147);
                            nullsub_1(v149);
                            v145 += 16;
                            --v144;
                          }

                          while (v144);

                          v132 = v1097;
                        }

                        else
                        {

                          v132 = sub_1DB138230(0);
                        }
                      }

                      else
                      {

                        v132 = 0;
                      }
                    }

                    else
                    {
                      v132 = 0;
                    }

                    *&v1075 = v938;
                    DataSpecification.subscript.getter(v942, v958, &v1097);
                    v133 = *(&v1097 + 1);
                    if (*(&v1097 + 1))
                    {
                      v1176 = 0;
                      v134 = v1097;
                      v1075 = v1097;
                      v1076._countAndFlagsBits = v1098;
                      DataSpecification.Namespace.subscript.getter(v953, v957, &v1097);
                      v135 = *(&v1097 + 1);
                      if (*(&v1097 + 1))
                      {
                        v136 = v1100;
                        *&v960 = *(&v1099 + 1);
                        v950 = v1099;
                        *(&v960 + 1) = v132;
                        v137 = v1097;
                        sub_1DB1718E4(v134, v133);

                        v138 = sub_1DB171928(v137, v135);
                        MEMORY[0x1EEE9AC00](v138);
                        v139 = v964;
                        *(&v882 - 6) = v966;
                        *(&v882 - 5) = v139;
                        v140 = v965;
                        *(&v882 - 4) = *(&v960 + 1);
                        *(&v882 - 3) = v140;
                        *(&v882 - 2) = v1156;
                        v141 = v1176;
                        v104 = sub_1DB1E501C(sub_1DB1F8BBC, (&v882 - 8), v136);
                        v103 = v141;

                        goto LABEL_13;
                      }

                      sub_1DB1718E4(v134, v133);
                    }

                    else
                    {
                    }

                    *&v1097 = 0;
                    *(&v1097 + 1) = 0xE000000000000000;
                    sub_1DB2BB4F4();
                    MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
                    MEMORY[0x1E1283490](v953, v957);
                    MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
                    MEMORY[0x1E1283490](v942, v958);
                    v839 = v1097;
                    *&v1098 = 0;
                    BYTE8(v1098) = 5;
                    sub_1DB171870();
                    swift_willThrowTypedImpl();
                    swift_allocError();
                    *v840 = v839;
                    *(v840 + 16) = 0;
                    *(v840 + 24) = 5;
                  }

                  else
                  {

                    sub_1DB1F88FC();
                    swift_allocError();
                    v837 = v957;
                    *v838 = v953;
                    *(v838 + 8) = v837;
                    *(v838 + 16) = 0;
                    *(v838 + 24) = 4;
                    swift_willThrow();
                  }

                  sub_1DB1759B0(&v1111);
                  sub_1DB17181C(v1107);
                  (v909[1])(v904, v910);
                  __swift_destroy_boxed_opaque_existential_1(&v1090);
                  countAndFlagsBits = v944._countAndFlagsBits;

                  v842 = countAndFlagsBits;
                  v843 = v901;
                  v85 = v902;
                  goto LABEL_468;
                }

                v122 += v126;
                if (v122 >= v121)
                {
                  goto LABEL_56;
                }
              }

              v126 = 1;
              goto LABEL_32;
            }

LABEL_56:

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
            v150 = swift_allocObject();
            v151 = sub_1DB158A70(v150, 1);
            v152 = v966;
            v153 = v964;
            v154[3] = v966;
            v154[4] = v153;
            v155 = __swift_allocate_boxed_opaque_existential_0(v154);
            (*(*(v152 - 8) + 16))(v155, v965, v152);
            v104 = nullsub_1(v151);
            v103 = 0;
LABEL_13:
            v85 = v944._countAndFlagsBits;
            v102 = v963 + 1;
            __swift_destroy_boxed_opaque_existential_1(&v1090);
            sub_1DB1414E8(v104);
          }

          while (v102 != v943);

          v887 = v1027;
LABEL_96:
          v234 = *&v1107[64];

          LODWORD(v926) = v926 & 1;
          v235 = *(v234 + 16);
          if (v235)
          {
            v1008[0] = MEMORY[0x1E69E7CC0];
            sub_1DB138188(v235);
            if (*(v234 + 16))
            {
              v236 = 0;
              v237 = v234 + 32;
              v238 = 1;
              v883 = v235;
              v884 = v234;
              v882 = v234 + 32;
              do
              {
                v894 = v238;
                sub_1DB175548(v237 + 88 * v236, &v1027);
                LODWORD(v893) = v1027;
                v240 = *(&v1029 + 1);
                v239 = v1029;
                __swift_project_boxed_opaque_existential_1(&v1027 + 1, v1029);
                *&v1006[8] = __PAIR128__(v240, v239);
                v891 = __swift_allocate_boxed_opaque_existential_0(&v1005);
                v900 = &v882;
                v241 = *(*(v239 - 1) + 64);
                MEMORY[0x1EEE9AC00](v891);
                v896 = (&v882 - ((v242 + 15) & 0xFFFFFFFFFFFFFFF0));
                v897 = v243;
                (*(v243 + 2))();
                v244 = v240[2];
                v898 = v239;
                v892 = v240;
                v244(&v1090, v239, v240);
                v1101[4] = v1094[4];
                v1101[5] = v1094[5];
                v1102 = v1095;
                v1103 = v1096;
                v1101[0] = v1094[0];
                v1101[1] = v1094[1];
                v1101[2] = v1094[2];
                v1101[3] = v1094[3];
                v1097 = v1090;
                v1098 = v1091;
                v1099 = v1092;
                v1100 = v1093;
                LODWORD(v918) = v1090;
                LODWORD(v997) = *v929;
                *(&v997 + 3) = *(v929 + 3);
                v999 = v1091;
                v1000 = v1092;
                v1001 = v1093;
                v1010 = *(&v1094[1] + 8);
                v1009 = *(v1094 + 8);
                *&v1014 = *(&v1094[5] + 1);
                v1013 = *(&v1094[4] + 8);
                v1012 = *(&v1094[3] + 8);
                v1011 = *(&v1094[2] + 8);
                v888 = *&v1094[0];
                v889 = v1095;
                LODWORD(v890) = BYTE8(v1095);
                *(&v975 + 3) = HIDWORD(v1095);
                LODWORD(v975) = *(&v1095 + 9);
                v895 = v1096;
                v245 = *(&v1090 + 1);
                v1155[0] = v1091;
                v1155[1] = v1092;
                v950 = *(&v1093 + 1);
                v942 = v1093;
                v1155[2] = v1093;
                v246 = MEMORY[0x1E69E7CC0];
                *&v987 = MEMORY[0x1E69E7CC0];
                v958 = *(*(&v1090 + 1) + 16);
                if (!v958)
                {
                  sub_1DB1754EC(&v1097, &v1075);
                  goto LABEL_126;
                }

                v944 = v1091;
                v938 = *(&v1148 + 1);
                sub_1DB1754EC(&v1097, &v1075);
                v957 = (v245 + 32);

                v247 = 0;
                v953 = v245;
                do
                {
                  if (v247 >= *(v245 + 16))
                  {
                    __break(1u);

                    sub_1DB1F89E4(&v1138);
                    sub_1DB1759B0(&v1111);
                    sub_1DB17181C(v1107);
                    sub_1DB17181C(&v1097);
                    (v901[1])(v898, v902);
                    (v909[1])(v904, v910);
                    sub_1DB1F7130(&v1027);
                    sub_1DB1F7184(&v1044);
                    v869 = v247;
                    v871 = v234;
                    v437 = v986;
                    v866 = v895;
                    v85 = v896;
                    v870 = v889;
                    goto LABEL_484;
                  }

                  v966 = v247;
                  sub_1DB164980(v957 + 40 * v247, &v1064);
                  v253 = v1065._object;
                  v254 = v1066;
                  v255 = __swift_project_boxed_opaque_existential_1(&v1064, v1065._object);
                  v256 = *(v254 + 3);
                  v964 = v255;
                  v965 = v253;
                  v963 = v254;
                  *(&v960 + 1) = v254 + 24;
                  *&v960 = v256;
                  v256(&v1075, v253, v254);
                  v1176 = v103;

                  sub_1DB2BA9C4();
                  sub_1DB2BB004();
                  v234 = v257;

                  sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00);
                  v258 = v945;
                  v259 = v969;
                  sub_1DB2BA9B4();
                  v260 = v946;
                  v261 = v1176;
                  sub_1DB2BA9D4();
                  v103 = v261;
                  if (v261)
                  {
                    MEMORY[0x1E1284A10](v261);

                    v262 = *v968;
                    (*v968)(v258, v259);
                    v262(v959, v259);
                    v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
                    (*(*(v263 - 8) + 56))(v260, 1, 1, v263);
                    sub_1DB1445E0(v260, &qword_1ECC27D40, &qword_1DB2C39F8);
                    v103 = 0;
                  }

                  else
                  {

                    v264 = *v968;
                    (*v968)(v258, v259);
                    v264(v959, v259);
                    v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
                    LODWORD(v264) = (*(*(v265 - 8) + 48))(v260, 1, v265);
                    sub_1DB1445E0(v260, &qword_1ECC27D40, &qword_1DB2C39F8);
                    if (v264 != 1)
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
                      v252 = swift_allocObject();
                      *(v252 + 16) = v947;
                      v274 = v965;
                      v275 = v963;
                      *(v252 + 56) = v965;
                      *(v252 + 64) = v275;
                      v276 = __swift_allocate_boxed_opaque_existential_0((v252 + 32));
                      (*(*(v274 - 1) + 16))(v276, v964, v274);
                      v266 = v966;
                      goto LABEL_102;
                    }
                  }

                  v266 = v966;
                  v267 = v965;
                  v268 = v964;
                  v269 = v963;
                  (v960)(&v1075, v965, v963);
                  v271 = *(&v1075 + 1);
                  v270 = v1075;

                  LOBYTE(v270) = sub_1DB23CC0C(v270, v271, 42);

                  if ((v270 & 1) == 0)
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
                    v248 = swift_allocObject();
                    v249 = sub_1DB158A70(v248, 1);
                    v250[3] = v267;
                    v250[4] = v269;
                    v251 = __swift_allocate_boxed_opaque_existential_0(v250);
                    (*(*(v267 - 8) + 16))(v251, v268, v267);
                    v252 = nullsub_1(v249);
                    goto LABEL_102;
                  }

                  if (!v950)
                  {

                    sub_1DB1F88FC();
                    swift_allocError();
                    v844 = v944._object;
                    *v845 = v944._countAndFlagsBits;
                    *(v845 + 8) = v844;
                    *(v845 + 16) = 0;
                    *(v845 + 24) = 4;
                    swift_willThrow();

                    goto LABEL_450;
                  }

                  v272 = v967;
                  if (v967)
                  {

                    v273 = v944;
                    if (Connection.tableExists(_:)(v944))
                    {
                      type metadata accessor for SchemaReader();
                      *(swift_allocObject() + 16) = v272;

                      v286 = sub_1DB26B520(v273._countAndFlagsBits, v273._object);
                      swift_setDeallocating();
                      SchemaReader.__deallocating_deinit();
                      v287 = sub_1DB165CE0(v286);
                      if (v287)
                      {
                        v288 = v287;
                        *&v1075 = MEMORY[0x1E69E7CC0];
                        sub_1DB138128(v287);
                        if (v288 < 0)
                        {
                          goto LABEL_522;
                        }

                        v289 = (v286 + 40);
                        do
                        {
                          v290 = *(v289 - 1);
                          v291 = *v289;

                          sub_1DB138850();
                          v292 = *(v1075 + 16);
                          sub_1DB13893C(v292);
                          v293 = sub_1DB1389E8(v292, v290, v291);
                          nullsub_1(v293);
                          v289 += 16;
                          --v288;
                        }

                        while (v288);

                        v277 = v1075;
                        v103 = 0;
                      }

                      else
                      {

                        v277 = sub_1DB138230(0);
                      }

                      goto LABEL_115;
                    }
                  }

                  v277 = 0;
LABEL_115:
                  v983._countAndFlagsBits = v938;
                  DataSpecification.subscript.getter(v942, v950, &v1075);
                  v278 = *(&v1075 + 1);
                  if (!*(&v1075 + 1))
                  {

                    goto LABEL_449;
                  }

                  v1176 = v103;
                  v279 = v1075;
                  v983 = v1075;
                  *&v984 = v1076._countAndFlagsBits;
                  DataSpecification.Namespace.subscript.getter(v944._countAndFlagsBits, v944._object, &v1075);
                  v280 = *(&v1075 + 1);
                  if (!*(&v1075 + 1))
                  {

                    sub_1DB1718E4(v279, v278);
LABEL_449:
                    *&v1075 = 0;
                    *(&v1075 + 1) = 0xE000000000000000;
                    sub_1DB2BB4F4();
                    MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
                    MEMORY[0x1E1283490](v944._countAndFlagsBits, v944._object);
                    MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
                    MEMORY[0x1E1283490](v942, v950);
                    v846 = v1075;
                    v1076._countAndFlagsBits = 0;
                    LOBYTE(v1076._object) = 5;
                    sub_1DB171870();
                    swift_willThrowTypedImpl();
                    swift_allocError();
                    *v847 = v846;
                    *(v847 + 16) = 0;
                    *(v847 + 24) = 5;
LABEL_450:
                    sub_1DB1759B0(&v1111);
                    sub_1DB17181C(&v1097);
                    sub_1DB17181C(v1107);
                    (*(v897 + 1))(v896, v898);
                    (v909[1])(v904, v910);
                    __swift_destroy_boxed_opaque_existential_1(&v1064);
                    v246 = v953;

LABEL_451:
                    LOBYTE(v1075) = v918;
                    *(&v1075 + 1) = v997;
                    DWORD1(v1075) = *(&v997 + 3);
                    *(&v1075 + 1) = v246;
                    v1076 = v999;
                    v1077 = v1000;
                    v1078 = v1001;
                    v1081 = v1010;
                    v1080 = v1009;
                    v1079 = v888;
                    v1085 = v1014;
                    v1084 = v1013;
                    v1083 = v1012;
                    v1082 = v1011;
                    v1086 = v889;
                    v1087 = v890;
                    *&v1088[3] = *(&v975 + 3);
                    *v1088 = v975;
                    v1089 = v895;
                    sub_1DB17181C(&v1075);
                    __swift_deallocate_boxed_opaque_existential_1(&v1005);
                    sub_1DB1755A4(&v1027);

                    v843 = v901;
                    v85 = v902;
                    goto LABEL_467;
                  }

                  *(&v960 + 1) = v277;
                  v234 = v1078;
                  *&v960 = *(&v1077 + 1);
                  v943 = v1077;
                  v281 = v1075;
                  sub_1DB1718E4(v279, v278);

                  v266 = v966;
                  v282 = sub_1DB171928(v281, v280);
                  MEMORY[0x1EEE9AC00](v282);
                  v283 = v963;
                  *(&v882 - 6) = v965;
                  *(&v882 - 5) = v283;
                  v284 = v964;
                  *(&v882 - 4) = *(&v960 + 1);
                  *(&v882 - 3) = v284;
                  *(&v882 - 2) = v1155;
                  v285 = v1176;
                  v252 = sub_1DB1E501C(sub_1DB1F8BBC, (&v882 - 8), v234);
                  v103 = v285;

LABEL_102:
                  v247 = v266 + 1;
                  __swift_destroy_boxed_opaque_existential_1(&v1064);
                  sub_1DB1414E8(v252);
                  v245 = v953;
                }

                while (v247 != v958);

                v246 = v987;
LABEL_126:
                v294 = *&v1101[0];

                LODWORD(v918) = v918 & 1;
                v295 = v967;

                sub_1DB1F8988(&v1138, &v1075);
                v296 = sub_1DB1F7558(v294, &v1138, v295);
                if (v103)
                {

                  sub_1DB1F89E4(&v1138);
                  sub_1DB1759B0(&v1111);
                  sub_1DB17181C(&v1097);
                  sub_1DB17181C(v1107);
                  (*(v897 + 1))(v896, v898);
                  (v909[1])(v904, v910);
                  goto LABEL_451;
                }

                v297 = v296;

                v298 = v1102;
                sub_1DB1F89E4(&v1138);

                sub_1DB1F8988(&v1138, &v1075);
                v299 = sub_1DB1F71D8(v298, &v1138, v295);

                sub_1DB1F89E4(&v1138);

                LOBYTE(v1020) = BYTE8(v1102);
                v1021 = v1103;
                v1072 = v1146;
                v1073 = v1147;
                v1074 = v1148;
                v1068 = v1142;
                v1069 = v1143;
                v1071 = v1145;
                v1070 = v1144;
                v1064 = v1138;
                v1065 = v1139;
                v1067 = v1141;
                v1066 = v1140;

                sub_1DB1E78A8(&v983, &v1064, v295);
                sub_1DB17181C(&v1097);

                LOBYTE(v298) = v983._countAndFlagsBits;
                v300 = v983._object;

                v1076 = v999;
                v1077 = v1000;
                v1078 = v1001;
                v1082 = v1011;
                v1083 = v1012;
                v1084 = v1013;
                v301 = v1010;
                v1080 = v1009;
                v302 = v924;
                *v924 = v997;
                *(v302 + 3) = *(&v997 + 3);
                v1085 = v1014;
                v1081 = v301;
                *&v1088[3] = *(&v975 + 3);
                *v1088 = v975;
                LOBYTE(v1075) = v918;
                *(&v1075 + 1) = v246;
                v1079 = v297;
                v1086 = v299;
                v1087 = v298;
                v1089 = v300;
                v303 = v896;
                v304 = v898;
                (v892[3])(&v1075, v898);
                (*(v897 + 4))(v891, v303, v304);
                sub_1DB164980(&v1030, &v1025[32]);
                LOBYTE(v1024) = v893;
                sub_1DB1355D0(&v1005, &v1024 + 8);
                sub_1DB1755A4(&v1027);
                v305 = v1008[0];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1DB138660(0, *(v305 + 16) + 1, 1);
                  v305 = v1008[0];
                }

                v306 = v883;
                v234 = v884;
                v85 = *(v305 + 16);
                v307 = *(v305 + 24);
                if (v85 >= v307 >> 1)
                {
                  sub_1DB138660((v307 > 1), v85 + 1, 1);
                  v305 = v1008[0];
                }

                *(v305 + 16) = v85 + 1;
                v308 = v305 + 88 * v85;
                v309 = *v1025;
                *(v308 + 32) = v1024;
                *(v308 + 48) = v309;
                v310 = *&v1025[16];
                v311 = *&v1025[32];
                v312 = *&v1025[48];
                *(v308 + 112) = *&v1025[64];
                *(v308 + 80) = v311;
                *(v308 + 96) = v312;
                *(v308 + 64) = v310;
                v236 = v894;
                if (v894 == v306)
                {

                  v103 = 0;
                  v85 = MEMORY[0x1E69E7CC0];
                  goto LABEL_135;
                }

                v238 = v894 + 1;
                v103 = 0;
                v237 = v882;
              }

              while (v894 < *(v234 + 16));
            }

LABEL_505:
            __break(1u);
            goto LABEL_506;
          }

          v85 = MEMORY[0x1E69E7CC0];
          v305 = MEMORY[0x1E69E7CC0];
LABEL_135:
          v313 = v1109;
          v314 = *(v1109 + 16);
          v888 = v305;
          if (!v314)
          {
            v378 = v103;

            goto LABEL_184;
          }

          v1008[0] = v85;
          v884 = v314;
          sub_1DB138170(v314);
          if (!*(v313 + 16))
          {
            goto LABEL_511;
          }

          v315 = 0;
          v316 = v313 + 32;
          v317 = 1;
          v882 = v313 + 32;
          v883 = v313;
LABEL_138:
          v895 = v317;
          sub_1DB175650(v316 + 48 * v315, &v1009);
          LODWORD(v894) = v1009;
          v319 = *(&v1011 + 1);
          v318 = v1011;
          __swift_project_boxed_opaque_existential_1(&v1009 + 1, v1011);
          *&v1006[8] = __PAIR128__(v319, v318);
          v892 = __swift_allocate_boxed_opaque_existential_0(&v1005);
          v901 = &v882;
          v320 = *(*(v318 - 1) + 64);
          MEMORY[0x1EEE9AC00](v892);
          v897 = &v882 - ((v321 + 15) & 0xFFFFFFFFFFFFFFF0);
          v898 = v322;
          (*(v322 + 2))();
          v323 = *(v319 + 2);
          v900 = v318;
          v893 = v319;
          v323(&v1090, v318, v319);
          v1101[4] = v1094[4];
          v1101[5] = v1094[5];
          v1102 = v1095;
          v1103 = v1096;
          v1101[0] = v1094[0];
          v1101[1] = v1094[1];
          v1101[2] = v1094[2];
          v1101[3] = v1094[3];
          v1097 = v1090;
          v1098 = v1091;
          v1099 = v1092;
          v1100 = v1093;
          LODWORD(v918) = v1090;
          LODWORD(v997) = *v929;
          *(&v997 + 3) = *(v929 + 3);
          v999 = v1091;
          v1000 = v1092;
          v1001 = v1093;
          *v1025 = *(&v1094[1] + 8);
          v1024 = *(v1094 + 8);
          *&v1025[64] = *(&v1094[5] + 1);
          *&v1025[48] = *(&v1094[4] + 8);
          *&v1025[32] = *(&v1094[3] + 8);
          *&v1025[16] = *(&v1094[2] + 8);
          v889 = *&v1094[0];
          v890 = v1095;
          LODWORD(v891) = BYTE8(v1095);
          *(&v975 + 3) = HIDWORD(v1095);
          LODWORD(v975) = *(&v1095 + 9);
          v896 = v1096;
          v324 = *(&v1090 + 1);
          v1154[0] = v1091;
          v1154[1] = v1092;
          v950 = *(&v1093 + 1);
          v942 = v1093;
          v1154[2] = v1093;
          v14 = MEMORY[0x1E69E7CC0];
          *&v987 = MEMORY[0x1E69E7CC0];
          v958 = *(*(&v1090 + 1) + 16);
          if (!v958)
          {
            sub_1DB1754EC(&v1097, &v1075);
            goto LABEL_165;
          }

          v944 = v1091;
          v938 = *(&v1148 + 1);
          sub_1DB1754EC(&v1097, &v1075);
          v957 = (v324 + 32);

          v325 = 0;
          v953 = v324;
          while (1)
          {
            if (v325 >= *(v324 + 16))
            {
              __break(1u);

              sub_1DB1F89E4(&v1138);
              sub_1DB1759B0(&v1111);
              sub_1DB17181C(v1107);
              sub_1DB17181C(&v1097);
              (v901[1])(v898, v902);
              (v909[1])(v904, v910);
              sub_1DB1F7130(&v1027);
              sub_1DB1F7184(&v1044);
              v876 = v324;
              v880 = v325;
              v437 = v986;
              v85 = v896;
              v877 = v914;
              v878 = v900;
              v879 = v891;
              v881 = v890;
              goto LABEL_493;
            }

            v966 = v325;
            sub_1DB164980(v957 + 40 * v325, &v1064);
            v331 = v1065._object;
            v332 = v1066;
            v333 = __swift_project_boxed_opaque_existential_1(&v1064, v1065._object);
            v334 = *(v332 + 3);
            v964 = v333;
            v965 = v331;
            v963 = v332;
            *(&v960 + 1) = v332 + 24;
            *&v960 = v334;
            v334(&v1075, v331, v332);
            v1176 = v103;

            sub_1DB2BA9C4();
            sub_1DB2BB004();

            sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00);
            v335 = v933;
            v336 = v969;
            sub_1DB2BA9B4();
            v337 = v934;
            v338 = v1176;
            sub_1DB2BA9D4();
            v103 = v338;
            if (v338)
            {
              MEMORY[0x1E1284A10](v338);

              v339 = *v968;
              (*v968)(v335, v336);
              v339(v956, v336);
              v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
              (*(*(v340 - 8) + 56))(v337, 1, 1, v340);
              sub_1DB1445E0(v337, &qword_1ECC27D40, &qword_1DB2C39F8);
              v103 = 0;
            }

            else
            {

              v341 = *v968;
              (*v968)(v335, v336);
              v341(v956, v336);
              v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
              LODWORD(v341) = (*(*(v342 - 8) + 48))(v337, 1, v342);
              sub_1DB1445E0(v337, &qword_1ECC27D40, &qword_1DB2C39F8);
              if (v341 != 1)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
                v330 = swift_allocObject();
                *(v330 + 16) = v947;
                v351 = v965;
                v352 = v963;
                *(v330 + 56) = v965;
                *(v330 + 64) = v352;
                v353 = __swift_allocate_boxed_opaque_existential_0((v330 + 32));
                (*(*(v351 - 1) + 16))(v353, v964, v351);
                v343 = v966;
                goto LABEL_141;
              }
            }

            v343 = v966;
            v344 = v965;
            v345 = v964;
            v346 = v963;
            (v960)(&v1075, v965, v963);
            v348 = *(&v1075 + 1);
            v347 = v1075;

            LOBYTE(v347) = sub_1DB23CC0C(v347, v348, 42);

            if (v347)
            {
              if (!v950)
              {

                sub_1DB1F88FC();
                swift_allocError();
                v852 = v944._object;
                *v853 = v944._countAndFlagsBits;
                *(v853 + 8) = v852;
                *(v853 + 16) = 0;
                *(v853 + 24) = 4;
                swift_willThrow();

                goto LABEL_464;
              }

              v349 = v967;
              if (v967)
              {

                v350 = v944;
                if (Connection.tableExists(_:)(v944))
                {
                  type metadata accessor for SchemaReader();
                  *(swift_allocObject() + 16) = v349;

                  v364 = sub_1DB26B520(v350._countAndFlagsBits, v350._object);
                  swift_setDeallocating();
                  SchemaReader.__deallocating_deinit();
                  v365 = sub_1DB165CE0(v364);
                  if (v365)
                  {
                    v366 = v365;
                    *&v1075 = MEMORY[0x1E69E7CC0];
                    sub_1DB138128(v365);
                    if (v366 < 0)
                    {
                      goto LABEL_524;
                    }

                    v367 = (v364 + 40);
                    do
                    {
                      v368 = *(v367 - 1);
                      v369 = *v367;

                      sub_1DB138850();
                      v370 = *(v1075 + 16);
                      sub_1DB13893C(v370);
                      v371 = sub_1DB1389E8(v370, v368, v369);
                      nullsub_1(v371);
                      v367 += 16;
                      --v366;
                    }

                    while (v366);

                    v354 = v1075;
                    v103 = 0;
                  }

                  else
                  {

                    v354 = sub_1DB138230(0);
                  }

                  goto LABEL_154;
                }
              }

              v354 = 0;
LABEL_154:
              v983._countAndFlagsBits = v938;
              DataSpecification.subscript.getter(v942, v950, &v1075);
              v355 = *(&v1075 + 1);
              if (!*(&v1075 + 1))
              {

                goto LABEL_463;
              }

              v1176 = v103;
              v356 = v1075;
              v983 = v1075;
              *&v984 = v1076._countAndFlagsBits;
              DataSpecification.Namespace.subscript.getter(v944._countAndFlagsBits, v944._object, &v1075);
              v357 = *(&v1075 + 1);
              if (!*(&v1075 + 1))
              {

                sub_1DB1718E4(v356, v355);
LABEL_463:
                *&v1075 = 0;
                *(&v1075 + 1) = 0xE000000000000000;
                sub_1DB2BB4F4();
                MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
                MEMORY[0x1E1283490](v944._countAndFlagsBits, v944._object);
                MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
                MEMORY[0x1E1283490](v942, v950);
                v854 = v1075;
                v1076._countAndFlagsBits = 0;
                LOBYTE(v1076._object) = 5;
                sub_1DB171870();
                swift_willThrowTypedImpl();
                swift_allocError();
                *v855 = v854;
                *(v855 + 16) = 0;
                *(v855 + 24) = 5;
LABEL_464:
                sub_1DB1759B0(&v1111);
                sub_1DB17181C(&v1097);
                sub_1DB17181C(v1107);
                (*(v898 + 1))(v897, v900);
                (v909[1])(v904, v910);
                __swift_destroy_boxed_opaque_existential_1(&v1064);
                v856 = v953;

                v14 = v856;
LABEL_465:
                v678 = v889;
                v857 = v890;
LABEL_466:
                LOBYTE(v1075) = v918;
                *(&v1075 + 1) = v997;
                DWORD1(v1075) = *(&v997 + 3);
                *(&v1075 + 1) = v14;
                v1076 = v999;
                v1077 = v1000;
                v1078 = v1001;
                v1081 = *v1025;
                v1080 = v1024;
                v1079 = v678;
                v1085 = *&v1025[64];
                v1084 = *&v1025[48];
                v1083 = *&v1025[32];
                v1082 = *&v1025[16];
                v1086 = v857;
                v1087 = v891;
                *&v1088[3] = *(&v975 + 3);
                *v1088 = v975;
                v1089 = v896;
                sub_1DB17181C(&v1075);
                __swift_deallocate_boxed_opaque_existential_1(&v1005);
                sub_1DB1756AC(&v1009);

                v843 = v888;
                v85 = v902;
LABEL_467:
                v842 = v887;
LABEL_468:
                LOBYTE(v1097) = v926;
                *(&v1097 + 1) = *v973;
                DWORD1(v1097) = *&v973[3];
                *(&v1097 + 1) = v842;
                v1098 = v1037;
                v1099 = v1038;
                v1100 = v1039;
                *(&v1101[1] + 8) = v1045;
                *(v1101 + 8) = v1044;
                *&v1101[0] = v843;
                *(&v1101[5] + 1) = v1049;
                *(&v1101[4] + 8) = v1048;
                *(&v1101[3] + 8) = v1047;
                *(&v1101[2] + 8) = v1046;
                *&v1102 = v85;
                BYTE8(v1102) = v903;
                HIDWORD(v1102) = *(v970 + 3);
                *(&v1102 + 9) = v970[0];
                v1103 = v913;
                sub_1DB17181C(&v1097);
                __swift_deallocate_boxed_opaque_existential_1(&v977);
                __swift_destroy_boxed_opaque_existential_1(&v991);
LABEL_469:
                __swift_destroy_boxed_opaque_existential_1(v1056);

                goto LABEL_470;
              }

              v358 = v1078;
              *&v960 = *(&v1077 + 1);
              v943 = v1077;
              *(&v960 + 1) = v354;
              v359 = v1075;
              sub_1DB1718E4(v356, v355);

              v360 = sub_1DB171928(v359, v357);
              MEMORY[0x1EEE9AC00](v360);
              v361 = v963;
              *(&v882 - 6) = v965;
              *(&v882 - 5) = v361;
              v362 = v964;
              *(&v882 - 4) = *(&v960 + 1);
              *(&v882 - 3) = v362;
              *(&v882 - 2) = v1154;
              v363 = v1176;
              v330 = sub_1DB1E501C(sub_1DB1F8BBC, (&v882 - 8), v358);
              v103 = v363;
              v343 = v966;

              goto LABEL_141;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
            v326 = swift_allocObject();
            v327 = sub_1DB158A70(v326, 1);
            v328[3] = v344;
            v328[4] = v346;
            v329 = __swift_allocate_boxed_opaque_existential_0(v328);
            (*(*(v344 - 8) + 16))(v329, v345, v344);
            v330 = nullsub_1(v327);
LABEL_141:
            v325 = v343 + 1;
            __swift_destroy_boxed_opaque_existential_1(&v1064);
            sub_1DB1414E8(v330);
            v324 = v953;
            if (v325 == v958)
            {

              v14 = v987;
LABEL_165:
              v372 = *&v1101[0];

              LODWORD(v918) = v918 & 1;
              v373 = v967;

              sub_1DB1F8988(&v1138, &v1075);
              v374 = sub_1DB1F7558(v372, &v1138, v373);
              if (v103)
              {

                sub_1DB1F89E4(&v1138);
                sub_1DB1759B0(&v1111);
                sub_1DB17181C(&v1097);
                sub_1DB17181C(v1107);
                (*(v898 + 1))(v897, v900);
                (v909[1])(v904, v910);
                goto LABEL_465;
              }

              v375 = v374;

              v376 = v1102;
              sub_1DB1F89E4(&v1138);

              sub_1DB1F8988(&v1138, &v1075);
              v377 = sub_1DB1F71D8(v376, &v1138, v373);

              sub_1DB1F89E4(&v1138);

              LOBYTE(v1020) = BYTE8(v1102);
              v1021 = v1103;
              v1072 = v1146;
              v1073 = v1147;
              v1074 = v1148;
              v1068 = v1142;
              v1069 = v1143;
              v1071 = v1145;
              v1070 = v1144;
              v1064 = v1138;
              v1065 = v1139;
              v1067 = v1141;
              v1066 = v1140;

              sub_1DB1E78A8(&v983, &v1064, v373);
              v378 = 0;
              sub_1DB17181C(&v1097);

              LOBYTE(v376) = v983._countAndFlagsBits;
              v379 = v983._object;

              v1076 = v999;
              v1077 = v1000;
              v1078 = v1001;
              v1082 = *&v1025[16];
              v1083 = *&v1025[32];
              v1084 = *&v1025[48];
              v380 = *v1025;
              v1080 = v1024;
              v381 = v924;
              *v924 = v997;
              *(v381 + 3) = *(&v997 + 3);
              v1085 = *&v1025[64];
              v1081 = v380;
              *&v1088[3] = *(&v975 + 3);
              *v1088 = v975;
              LOBYTE(v1075) = v918;
              *(&v1075 + 1) = v14;
              v1079 = v375;
              v1086 = v377;
              v1087 = v376;
              v1089 = v379;
              v382 = v897;
              v383 = v900;
              v893[3](&v1075, v900);
              (*(v898 + 4))(v892, v382, v383);
              LOBYTE(v1027) = v894;
              sub_1DB1355D0(&v1005, &v1027 + 8);
              sub_1DB1756AC(&v1009);
              v85 = v1008[0];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1DB138640(0, *(v85 + 16) + 1, 1);
                v85 = v1008[0];
              }

              v384 = v883;
              v315 = v895;
              v386 = *(v85 + 16);
              v385 = *(v85 + 24);
              if (v386 >= v385 >> 1)
              {
                sub_1DB138640((v385 > 1), v386 + 1, 1);
                v315 = v895;
                v85 = v1008[0];
              }

              *(v85 + 16) = v386 + 1;
              v387 = (v85 + 48 * v386);
              v388 = v1027;
              v389 = v1029;
              v387[3] = v1028;
              v387[4] = v389;
              v387[2] = v388;
              if (v315 != v884)
              {
                v317 = v315 + 1;
                v103 = 0;
                v316 = v882;
                if (v315 >= *(v384 + 16))
                {
LABEL_511:
                  __break(1u);
LABEL_512:
                  __break(1u);
LABEL_513:
                  __break(1u);
LABEL_514:
                  __break(1u);
LABEL_515:
                  __break(1u);
LABEL_516:
                  sub_1DB1759B0(&v1111);
                  sub_1DB17181C(v1107);

                  (v909[1])(v904, v910);
                  sub_1DB1F7130(&v1027);
                  sub_1DB1F7184(&v1044);
                  v866 = v888;
                  v437 = v986;
LABEL_494:
                  v865 = v887;
LABEL_495:
                  LOBYTE(v1097) = v918;
                  *(&v1097 + 1) = v1007[0];
                  DWORD1(v1097) = *(v1007 + 3);
                  *(&v1097 + 1) = v865;
                  v1098 = v1005;
                  v1099 = *v1006;
                  v1100 = *&v1006[16];
                  *(&v1101[1] + 8) = v1000;
                  *(v1101 + 8) = v999;
                  *&v1101[0] = v866;
                  *(&v1101[5] + 1) = v1004;
                  *(&v1101[4] + 8) = v1003;
                  *(&v1101[3] + 8) = v1002;
                  *(&v1101[2] + 8) = v1001;
                  *&v1102 = v85;
                  BYTE8(v1102) = v897;
                  HIDWORD(v1102) = *(v437 + 251);
                  *(&v1102 + 9) = v998[0];
                  v1103 = v911;
                  sub_1DB17181C(&v1097);
                  __swift_deallocate_boxed_opaque_existential_1(v1008);
                  __swift_destroy_boxed_opaque_existential_1(&v1020);
                  __swift_deallocate_boxed_opaque_existential_1(&v1052);
                  goto LABEL_469;
                }

                goto LABEL_138;
              }

LABEL_184:
              LOBYTE(v1064) = BYTE8(v1109);
              *(&v1064 + 1) = v1110;
              v1094[4] = v1146;
              v1094[5] = v1147;
              v1095 = v1148;
              v1094[0] = v1142;
              v1094[1] = v1143;
              v1094[3] = v1145;
              v1094[2] = v1144;
              v1090 = v1138;
              v1091 = v1139;
              v1093 = v1141;
              v1092 = v1140;

              sub_1DB1E78A8(&v1075, &v1090, v967);
              v1176 = v378;
              if (!v378)
              {
                sub_1DB17181C(v1107);

                v397 = v1075;
                v398 = *(&v1075 + 1);

                v1098 = v1037;
                v1099 = v1038;
                v1100 = v1039;
                *(&v1101[2] + 8) = v1046;
                *(&v1101[3] + 8) = v1047;
                *(&v1101[4] + 8) = v1048;
                v399 = v1045;
                *(v1101 + 8) = v1044;
                v400 = v907;
                *v907 = *v973;
                *(v400 + 3) = *&v973[3];
                *(&v1101[5] + 1) = v1049;
                *(&v1101[1] + 8) = v399;
                HIDWORD(v1102) = *(v970 + 3);
                *(&v1102 + 9) = v970[0];
                LOBYTE(v1097) = v926;
                *(&v1097 + 1) = v887;
                *&v1101[0] = v888;
                *&v1102 = v85;
                BYTE8(v1102) = v397;
                v1103 = v398;
                v401 = v904;
                v402 = v910;
                (*(v886 + 24))(&v1097, v910);
                (v909[4])(boxed_opaque_existential_0, v401, v402);
                v403 = *(&v978 + 1);
                v404 = v979;
                v405 = __swift_project_boxed_opaque_existential_1(&v977, *(&v978 + 1));
                v1054 = v403;
                v1055 = *(v404 + 8);
                v406 = __swift_allocate_boxed_opaque_existential_0(&v1052);
                (*(v403[-1].Description + 2))(v406, v405, v403);
                __swift_destroy_boxed_opaque_existential_1(&v977);
                __swift_destroy_boxed_opaque_existential_1(&v991);
                goto LABEL_188;
              }

LABEL_506:
              sub_1DB1759B0(&v1111);
              sub_1DB17181C(v1107);

              (v909[1])(v904, v910);
              v843 = v888;
              goto LABEL_467;
            }
          }
        }

        memset(v989, 0, 40);
        v156 = sub_1DB1445E0(v989, &qword_1ECC279E8, &unk_1DB2C3AE0);
        MEMORY[0x1EEE9AC00](v156);
        v93(&v882 - v92, v89, v88);
        if (swift_dynamicCast())
        {
          break;
        }

        memset(v1107, 0, 136);
        v1107[136] = -1;
        v166 = sub_1DB1445E0(v1107, &qword_1ECC27D28, &unk_1DB2CB830);
        MEMORY[0x1EEE9AC00](v166);
        v167 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
        v93(&v882 - v167, v89, v88);
        v168 = swift_dynamicCast();
        if (v168)
        {
          v1054 = &type metadata for Update;
          v1055 = sub_1DB1F6FE0();
          v169 = swift_allocObject();
          v1052 = v169;
          v170 = *&v1107[80];
          v169[5] = *&v1107[64];
          v169[6] = v170;
          *(v169 + 107) = *&v1107[91];
          v171 = *&v1107[16];
          v169[1] = *v1107;
          v169[2] = v171;
          v172 = *&v1107[48];
          v169[3] = *&v1107[32];
          v169[4] = v172;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v168);
          v93(&v882 - v167, v89, v88);
          v229 = swift_dynamicCast();
          if (v229)
          {
            v230 = *v1107;
            v1055 = sub_1DB1F6F8C();
            v1054 = &type metadata for Delete;
            v1052 = v230;
            v1053 = *&v1107[8];
          }

          else
          {
            MEMORY[0x1EEE9AC00](v229);
            v93(&v882 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0), v89, v88);
            v390 = MEMORY[0x1E69E6158];
            if (swift_dynamicCast())
            {
              v1054 = v390;
              v1055 = &protocol witness table for String;
              v1052 = *v1107;
              *&v1053 = *&v1107[8];
            }

            else
            {
              v407 = v966;
              v408 = *(v966 + 24);
              v408(v1107, v88, v966);
              v409 = *v1107;
              v410 = *&v1107[8];

              v408(v1107, v88, v407);
              v411 = *&v1107[16];

              v1054 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
              v412 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
              v1052 = v409;
              *&v1053 = v410;
              v1055 = v412;
              *(&v1053 + 1) = v411;
            }
          }
        }

LABEL_188:
        sub_1DB1355D0(&v1052, v1059);
        __swift_destroy_boxed_opaque_existential_1(v1056);
        v413 = v1062[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DB1384B0(0, *(v413 + 16) + 1, 1);
          v413 = v1062[0];
        }

        v415 = *(v413 + 16);
        v414 = *(v413 + 24);
        if (v415 >= v414 >> 1)
        {
          sub_1DB1384B0((v414 > 1), v415 + 1, 1);
        }

        v416 = v923 + 1;
        v417 = v1060;
        v418 = v1061;
        v419 = __swift_mutable_project_boxed_opaque_existential_1(v1059, v1060);
        v14 = &v882;
        v420 = *(*(v417 - 8) + 64);
        MEMORY[0x1EEE9AC00](v419);
        v422 = &v882 - ((v421 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v423 + 16))(v422);
        v424 = v417;
        v86 = v416;
        sub_1DB16412C(v415, v422, v1062, v424, v418);
        __swift_destroy_boxed_opaque_existential_1(v1059);
        v85 = v916;
        v84 = v917;
        v425 = v416 == v916;
        v80 = v1176;
        v87 = v915;
        if (v425)
        {
          v825 = v1062[0];
          goto LABEL_284;
        }
      }

      v1050 = *&v1107[96];
      v1051[0] = *&v1107[112];
      *(v1051 + 9) = *&v1107[121];
      v1046 = *&v1107[32];
      v1047 = *&v1107[48];
      v1049 = *&v1107[80];
      v1048 = *&v1107[64];
      v1045 = *&v1107[16];
      v1044 = *v1107;
      v1054 = &type metadata for Insert;
      v1055 = sub_1DB1F70DC();
      v926 = swift_allocObject();
      v1052 = v926;
      sub_1DB1446A4(&v1044, v1107, &qword_1ECC27CC8, &unk_1DB2C3860);
      if (v1107[136])
      {
        v157 = *v1107;
        v158 = *&v1107[8];
        v159 = *&v1107[24];
        v160 = *&v1107[40];
        v161 = *&v1107[56];
        v162 = *&v1107[72];
        v163 = *&v1107[88];
        v164 = *&v1107[104];
        v165 = *&v1107[120];
      }

      else
      {
        sub_1DB1445E0(v1107, &qword_1ECC27CC8, &unk_1DB2C3860);
        v157 = 0;
        v158 = 0uLL;
        v159 = 0uLL;
        v160 = 0uLL;
        v161 = 0uLL;
        v162 = 0uLL;
        v163 = 0uLL;
        v164 = 0uLL;
        v165 = 0uLL;
      }

      v173 = v1176;
      *v1104 = v157;
      *&v1104[8] = v158;
      *&v1104[24] = v159;
      *&v1104[40] = v160;
      *&v1104[56] = v161;
      *&v1104[72] = v162;
      *&v1104[88] = v163;
      *&v1104[104] = v164;
      *&v1104[120] = v165;
      if (!v158)
      {
        sub_1DB1445E0(v1104, &qword_1ECC27CD0, &unk_1DB2CB840);
        sub_1DB1446A4(&v1044, v1107, &qword_1ECC27CC8, &unk_1DB2C3860);
        if (v1107[136])
        {
          *&v1104[96] = *&v1107[96];
          *&v1104[112] = *&v1107[112];
          *&v1104[128] = *&v1107[128];
          *&v1104[32] = *&v1107[32];
          *&v1104[48] = *&v1107[48];
          *&v1104[80] = *&v1107[80];
          *&v1104[64] = *&v1107[64];
          *&v1104[16] = *&v1107[16];
          *v1104 = *v1107;
          v231 = sub_1DB1F4E58();
          v233 = v232;
          sub_1DB1F7130(v1104);
        }

        else
        {
          v231 = *v1107;
          v233 = *&v1107[8];
        }

        sub_1DB1446A4(&v1044, v1107, &qword_1ECC27CC8, &unk_1DB2C3860);
        if (v1107[136])
        {
          sub_1DB1445E0(v1107, &qword_1ECC27CC8, &unk_1DB2C3860);
          v391 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v391 = *&v1107[16];
        }

        v392 = 0;
        v1036 = 0;
        goto LABEL_182;
      }

      v1033 = *&v1104[96];
      v1034 = *&v1104[112];
      v1035 = *&v1104[128];
      v1029 = *&v1104[32];
      v1030 = *&v1104[48];
      v1032 = *&v1104[80];
      v1031 = *&v1104[64];
      v1028 = *&v1104[16];
      v1027 = *v1104;
      sub_1DB1446A4(&v1033, &v1018, &qword_1ECC279E8, &unk_1DB2C3AE0);
      if (!v1019)
      {
        sub_1DB1F7130(&v1027);
        sub_1DB1445E0(&v1018, &qword_1ECC279E8, &unk_1DB2C3AE0);
        sub_1DB16D210(&v1044, &v1024);
        goto LABEL_176;
      }

      sub_1DB1355D0(&v1018, &v1020);
      v174 = v1022;
      v175 = v1023;
      __swift_project_boxed_opaque_existential_1(&v1020, v1022);
      v1008[3] = v174;
      v1008[4] = v175;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1008);
      v913 = &v882;
      v176 = *(*(v174 - 8) + 64);
      MEMORY[0x1EEE9AC00](boxed_opaque_existential_0);
      v909 = v178;
      v179 = *(v178 + 16);
      v904 = &v882 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
      v179();
      v180 = *(v175 + 16);
      v910 = v174;
      v886 = v175;
      v180(v1104, v174, v175);
      *&v1107[128] = *&v1104[128];
      v1108 = *&v1104[144];
      v1109 = v1105;
      v1110 = v1106;
      *&v1107[64] = *&v1104[64];
      *&v1107[80] = *&v1104[80];
      *&v1107[96] = *&v1104[96];
      *&v1107[112] = *&v1104[112];
      *v1107 = *v1104;
      *&v1107[16] = *&v1104[16];
      *&v1107[32] = *&v1104[32];
      *&v1107[48] = *&v1104[48];
      LODWORD(v918) = v1104[0];
      v1007[0] = *v927;
      *(v1007 + 3) = *(v927 + 3);
      v1005 = *&v1104[16];
      *v1006 = *&v1104[32];
      *&v1006[16] = *&v1104[48];
      v1000 = *&v1104[88];
      v999 = *&v1104[72];
      v1004 = *&v1104[152];
      v1003 = *&v1104[136];
      v1002 = *&v1104[120];
      v1001 = *&v1104[104];
      v895 = *&v1104[64];
      v896 = v1105;
      LODWORD(v897) = BYTE8(v1105);
      *(v998 + 3) = HIDWORD(v1105);
      v998[0] = *(&v1105 + 9);
      v911 = v1106;
      v85 = *&v1104[8];
      v1161[0] = *&v1104[16];
      v1161[1] = *&v1104[32];
      v942 = *&v1104[48];
      v1162 = *&v1104[48];
      v950 = *&v1104[56];
      v1163 = *&v1104[56];
      v181 = MEMORY[0x1E69E7CC0];
      *v989 = MEMORY[0x1E69E7CC0];
      v958 = *(*&v1104[8] + 16);
      if (v958)
      {
        v944 = *&v1104[16];
        v938 = *(&v1148 + 1);
        v957 = (*&v1104[8] + 32);
        sub_1DB1754EC(v1107, &v1097);

        v182 = 0;
        v953 = v85;
        while (1)
        {
          if (v182 >= *(v85 + 16))
          {
            goto LABEL_513;
          }

          v966 = v182;
          sub_1DB164980(v957 + 40 * v182, &v1090);
          v188 = v1091._object;
          v189 = v1092;
          v190 = __swift_project_boxed_opaque_existential_1(&v1090, v1091._object);
          v191 = *(v189 + 3);
          v964 = v190;
          v965 = v188;
          v963 = v189;
          *(&v960 + 1) = v189 + 24;
          *&v960 = v191;
          v191(&v1097, v188, v189);
          v1176 = v173;

          sub_1DB2BA9C4();
          sub_1DB2BB004();

          sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00);
          v192 = v921;
          v193 = v969;
          sub_1DB2BA9B4();
          v194 = v922;
          v195 = v1176;
          sub_1DB2BA9D4();
          v173 = v195;
          if (v195)
          {
            MEMORY[0x1E1284A10](v195);

            v196 = *v968;
            (*v968)(v192, v193);
            v196(v937, v193);
            v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
            (*(*(v197 - 8) + 56))(v194, 1, 1, v197);
            sub_1DB1445E0(v194, &qword_1ECC27D40, &qword_1DB2C39F8);
            v173 = 0;
          }

          else
          {

            v198 = *v968;
            (*v968)(v192, v193);
            v198(v937, v193);
            v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
            LODWORD(v198) = (*(*(v199 - 8) + 48))(v194, 1, v199);
            sub_1DB1445E0(v194, &qword_1ECC27D40, &qword_1DB2C39F8);
            if (v198 != 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
              v187 = swift_allocObject();
              *(v187 + 16) = v947;
              v208 = v965;
              v209 = v963;
              *(v187 + 56) = v965;
              *(v187 + 64) = v209;
              v210 = __swift_allocate_boxed_opaque_existential_0((v187 + 32));
              (*(*(v208 - 1) + 16))(v210, v964, v208);
              v200 = v966;
              goto LABEL_69;
            }
          }

          v200 = v966;
          v201 = v965;
          v202 = v964;
          v203 = v963;
          (v960)(&v1097, v965, v963);
          v205 = *(&v1097 + 1);
          v204 = v1097;

          LOBYTE(v204) = sub_1DB23CC0C(v204, v205, 42);

          if (v204)
          {
            if (!v950)
            {

              sub_1DB1F88FC();
              swift_allocError();
              v858 = v944._object;
              *v859 = v944._countAndFlagsBits;
              *(v859 + 8) = v858;
              *(v859 + 16) = 0;
              *(v859 + 24) = 4;
              swift_willThrow();

              goto LABEL_478;
            }

            v206 = v967;
            if (v967)
            {

              v207 = v944;
              if (Connection.tableExists(_:)(v944))
              {
                type metadata accessor for SchemaReader();
                *(swift_allocObject() + 16) = v206;

                v221 = sub_1DB26B520(v207._countAndFlagsBits, v207._object);
                swift_setDeallocating();
                SchemaReader.__deallocating_deinit();
                v222 = sub_1DB165CE0(v221);
                if (v222)
                {
                  v223 = v222;
                  *&v1097 = MEMORY[0x1E69E7CC0];
                  sub_1DB138128(v222);
                  if (v223 < 0)
                  {
                    goto LABEL_525;
                  }

                  v224 = (v221 + 40);
                  do
                  {
                    v225 = *(v224 - 1);
                    v226 = *v224;

                    sub_1DB138850();
                    v227 = *(v1097 + 16);
                    sub_1DB13893C(v227);
                    v228 = sub_1DB1389E8(v227, v225, v226);
                    nullsub_1(v228);
                    v224 += 16;
                    --v223;
                  }

                  while (v223);

                  v211 = v1097;
                }

                else
                {

                  v211 = sub_1DB138230(0);
                }

                goto LABEL_82;
              }
            }

            v211 = 0;
LABEL_82:
            *&v1075 = v938;
            DataSpecification.subscript.getter(v942, v950, &v1097);
            v212 = *(&v1097 + 1);
            if (!*(&v1097 + 1))
            {

              goto LABEL_477;
            }

            *(&v960 + 1) = v211;
            v1176 = 0;
            v213 = v1097;
            v1075 = v1097;
            v1076._countAndFlagsBits = v1098;
            DataSpecification.Namespace.subscript.getter(v944._countAndFlagsBits, v944._object, &v1097);
            v214 = *(&v1097 + 1);
            if (!*(&v1097 + 1))
            {

              sub_1DB1718E4(v213, v212);
LABEL_477:
              *&v1097 = 0;
              *(&v1097 + 1) = 0xE000000000000000;
              sub_1DB2BB4F4();
              MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
              MEMORY[0x1E1283490](v944._countAndFlagsBits, v944._object);
              MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
              MEMORY[0x1E1283490](v942, v950);
              v862 = v1097;
              *&v1098 = 0;
              BYTE8(v1098) = 5;
              sub_1DB171870();
              swift_willThrowTypedImpl();
              swift_allocError();
              *v863 = v862;
              *(v863 + 16) = 0;
              *(v863 + 24) = 5;
LABEL_478:
              v437 = v986;
              sub_1DB1759B0(&v1111);
              sub_1DB17181C(v1107);
              (v909[1])(v904, v910);
              sub_1DB1F7130(&v1027);
              sub_1DB1F7184(&v1044);
              __swift_destroy_boxed_opaque_existential_1(&v1090);
              v864 = v953;

              v865 = v864;
              v866 = v895;
              v85 = v896;
              goto LABEL_495;
            }

            v215 = v1100;
            *&v960 = *(&v1099 + 1);
            v943 = v1099;
            v216 = v1097;
            sub_1DB1718E4(v213, v212);

            v200 = v966;
            v217 = sub_1DB171928(v216, v214);
            MEMORY[0x1EEE9AC00](v217);
            v218 = v963;
            *(&v882 - 6) = v965;
            *(&v882 - 5) = v218;
            v219 = v964;
            *(&v882 - 4) = *(&v960 + 1);
            *(&v882 - 3) = v219;
            *(&v882 - 2) = v1161;
            v220 = v1176;
            v187 = sub_1DB1E501C(sub_1DB1F8BBC, (&v882 - 8), v215);
            v173 = v220;

            goto LABEL_69;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
          v183 = swift_allocObject();
          v184 = sub_1DB158A70(v183, 1);
          v185[3] = v201;
          v185[4] = v203;
          v186 = __swift_allocate_boxed_opaque_existential_0(v185);
          (*(*(v201 - 8) + 16))(v186, v202, v201);
          v187 = nullsub_1(v184);
LABEL_69:
          v182 = v200 + 1;
          __swift_destroy_boxed_opaque_existential_1(&v1090);
          sub_1DB1414E8(v187);
          v85 = v953;
          if (v182 == v958)
          {

            v887 = *v989;
            goto LABEL_196;
          }
        }
      }

      sub_1DB1754EC(v1107, &v1097);
      v887 = v181;
LABEL_196:
      v426 = *&v1107[64];

      LODWORD(v918) = v918 & 1;
      v85 = *(v426 + 16);
      if (!v85)
      {

        v85 = MEMORY[0x1E69E7CC0];
        v497 = MEMORY[0x1E69E7CC0];
        goto LABEL_236;
      }

      v997 = MEMORY[0x1E69E7CC0];
      sub_1DB138188(v85);
      if (!*(v426 + 16))
      {
        goto LABEL_515;
      }

      v427 = 0;
      v428 = v426 + 32;
      v429 = 1;
      v883 = v85;
      v884 = v426;
      v882 = v426 + 32;
LABEL_199:
      v894 = v429;
      sub_1DB175548(v428 + 88 * v427, v989);
      LODWORD(v893) = v989[0];
      v431 = *&v989[40];
      v430 = *&v989[32];
      __swift_project_boxed_opaque_existential_1(&v989[8], *&v989[32]);
      v988 = __PAIR128__(v431, v430);
      v891 = __swift_allocate_boxed_opaque_existential_0(&v987);
      v903 = &v882;
      v432 = *(*(v430 - 1) + 64);
      MEMORY[0x1EEE9AC00](v891);
      v901 = v434;
      v435 = *(v434 + 16);
      v898 = &v882 - ((v433 + 15) & 0xFFFFFFFFFFFFFFF0);
      v435();
      v436 = v431[2];
      v902 = v430;
      v892 = v431;
      v436(&v1090, v430, v431);
      v1101[4] = v1094[4];
      v1101[5] = v1094[5];
      v1102 = v1095;
      v1103 = v1096;
      v1101[0] = v1094[0];
      v1101[1] = v1094[1];
      v1101[2] = v1094[2];
      v1101[3] = v1094[3];
      v1097 = v1090;
      v1098 = v1091;
      v1099 = v1092;
      v1100 = v1093;
      LODWORD(v914) = v1090;
      v986[0] = *v929;
      v437 = v986;
      *(v986 + 3) = *(v929 + 3);
      v983 = v1091;
      v984 = v1092;
      v985 = v1093;
      v978 = *(&v1094[1] + 8);
      v977 = *(v1094 + 8);
      v982 = *(&v1094[5] + 1);
      v981 = *(&v1094[4] + 8);
      v980 = *(&v1094[3] + 8);
      v979 = *(&v1094[2] + 8);
      v888 = *&v1094[0];
      v889 = v1095;
      LODWORD(v890) = BYTE8(v1095);
      *(v976 + 3) = HIDWORD(v1095);
      v976[0] = *(&v1095 + 9);
      v900 = v1096;
      v438 = *(&v1090 + 1);
      v1160[0] = v1091;
      v1160[1] = v1092;
      v950 = *(&v1093 + 1);
      v942 = v1093;
      v1160[2] = v1093;
      v439 = MEMORY[0x1E69E7CC0];
      v975 = MEMORY[0x1E69E7CC0];
      v958 = *(*(&v1090 + 1) + 16);
      if (!v958)
      {
        sub_1DB1754EC(&v1097, &v1075);
        goto LABEL_227;
      }

      v944 = v1091;
      v938 = *(&v1148 + 1);
      sub_1DB1754EC(&v1097, &v1075);
      v957 = (v438 + 32);

      v85 = 0;
      v953 = v438;
      while (1)
      {
        if (v85 >= *(v438 + 16))
        {
          goto LABEL_514;
        }

        v966 = v85;
        sub_1DB164980(v957 + 40 * v85, &v1064);
        v445 = v1065._object;
        v446 = v1066;
        v447 = __swift_project_boxed_opaque_existential_1(&v1064, v1065._object);
        v448 = *(v446 + 3);
        v964 = v447;
        v965 = v445;
        v963 = v446;
        *(&v960 + 1) = v446 + 24;
        *&v960 = v448;
        v448(&v1075, v445, v446);
        v1176 = v173;

        sub_1DB2BA9C4();
        sub_1DB2BB004();

        sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00);
        v449 = v920;
        v450 = v969;
        sub_1DB2BA9B4();
        v451 = v931;
        v452 = v1176;
        sub_1DB2BA9D4();
        v173 = v452;
        if (v452)
        {
          MEMORY[0x1E1284A10](v452);

          v453 = *v968;
          (*v968)(v449, v450);
          v453(v932, v450);
          v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
          (*(*(v454 - 8) + 56))(v451, 1, 1, v454);
          sub_1DB1445E0(v451, &qword_1ECC27D40, &qword_1DB2C39F8);
          v173 = 0;
        }

        else
        {

          v455 = *v968;
          (*v968)(v449, v450);
          v455(v932, v450);
          v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
          LODWORD(v455) = (*(*(v456 - 8) + 48))(v451, 1, v456);
          sub_1DB1445E0(v451, &qword_1ECC27D40, &qword_1DB2C39F8);
          if (v455 != 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
            v444 = swift_allocObject();
            *(v444 + 16) = v947;
            v465 = v965;
            v466 = v963;
            *(v444 + 56) = v965;
            *(v444 + 64) = v466;
            v467 = __swift_allocate_boxed_opaque_existential_0((v444 + 32));
            (*(*(v465 - 1) + 16))(v467, v964, v465);
            goto LABEL_218;
          }
        }

        v457 = v966;
        v458 = v965;
        v459 = v964;
        v460 = v963;
        (v960)(&v1075, v965, v963);
        v461 = *(&v1075 + 1);
        v462 = v1075;

        LOBYTE(v462) = sub_1DB23CC0C(v462, v461, 42);

        if (v462)
        {
          if (!v950)
          {
            goto LABEL_475;
          }

          v463 = v967;
          if (v967)
          {

            v464 = v944;
            if (Connection.tableExists(_:)(v944))
            {
              type metadata accessor for SchemaReader();
              *(swift_allocObject() + 16) = v463;

              v478 = sub_1DB26B520(v464._countAndFlagsBits, v464._object);
              swift_setDeallocating();
              SchemaReader.__deallocating_deinit();
              v479 = sub_1DB165CE0(v478);
              if (v479)
              {
                v480 = v479;
                *&v1075 = MEMORY[0x1E69E7CC0];
                sub_1DB138128(v479);
                if (v480 < 0)
                {
                  goto LABEL_526;
                }

                v481 = (v478 + 40);
                do
                {
                  v482 = *(v481 - 1);
                  v483 = *v481;

                  sub_1DB138850();
                  v484 = *(v1075 + 16);
                  sub_1DB13893C(v484);
                  v485 = sub_1DB1389E8(v484, v482, v483);
                  nullsub_1(v485);
                  v481 += 16;
                  --v480;
                }

                while (v480);

                v468 = v1075;
              }

              else
              {

                v468 = sub_1DB138230(0);
              }

LABEL_215:
              *&v971 = v938;
              DataSpecification.subscript.getter(v942, v950, &v1075);
              v469 = *(&v1075 + 1);
              if (!*(&v1075 + 1))
              {

                goto LABEL_481;
              }

              v1176 = 0;
              v470 = v1075;
              v971 = v1075;
              v972 = v1076._countAndFlagsBits;
              DataSpecification.Namespace.subscript.getter(v944._countAndFlagsBits, v944._object, &v1075);
              v471 = *(&v1075 + 1);
              if (!*(&v1075 + 1))
              {

                sub_1DB1718E4(v470, v469);
LABEL_481:
                *&v1075 = 0;
                *(&v1075 + 1) = 0xE000000000000000;
                sub_1DB2BB4F4();
                MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
                MEMORY[0x1E1283490](v944._countAndFlagsBits, v944._object);
                MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
                MEMORY[0x1E1283490](v942, v950);
                v867 = v1075;
                v1076._countAndFlagsBits = 0;
                LOBYTE(v1076._object) = 5;
                sub_1DB171870();
                swift_willThrowTypedImpl();
                swift_allocError();
                *v868 = v867;
                *(v868 + 16) = 0;
                *(v868 + 24) = 5;
LABEL_482:
                v437 = v986;
                sub_1DB1759B0(&v1111);
                sub_1DB17181C(&v1097);
                sub_1DB17181C(v1107);
                (v901[1])(v898, v902);
                (v909[1])(v904, v910);
                sub_1DB1F7130(&v1027);
                sub_1DB1F7184(&v1044);
                __swift_destroy_boxed_opaque_existential_1(&v1064);
                v869 = v953;

LABEL_483:
                v866 = v895;
                v85 = v896;
                v871 = v888;
                v870 = v889;
LABEL_484:
                LOBYTE(v1075) = v914;
                *(&v1075 + 1) = v986[0];
                DWORD1(v1075) = *(v986 + 3);
                *(&v1075 + 1) = v869;
                v1076 = v983;
                v1077 = v984;
                v1078 = v985;
                v1081 = v978;
                v1080 = v977;
                v1079 = v871;
                v1085 = v982;
                v1084 = v981;
                v1083 = v980;
                v1082 = v979;
                v1086 = v870;
                v1087 = v890;
                *&v1088[3] = *(v976 + 3);
                *v1088 = v976[0];
                v1089 = v900;
                sub_1DB17181C(&v1075);
                __swift_deallocate_boxed_opaque_existential_1(&v987);
                sub_1DB1755A4(v989);

                goto LABEL_494;
              }

              *(&v960 + 1) = v468;
              v472 = v1078;
              *&v960 = *(&v1077 + 1);
              v943 = v1077;
              v473 = v1075;
              sub_1DB1718E4(v470, v469);

              v474 = sub_1DB171928(v473, v471);
              MEMORY[0x1EEE9AC00](v474);
              v475 = v963;
              *(&v882 - 6) = v965;
              *(&v882 - 5) = v475;
              v476 = v964;
              *(&v882 - 4) = *(&v960 + 1);
              *(&v882 - 3) = v476;
              *(&v882 - 2) = v1160;
              v477 = v1176;
              v444 = sub_1DB1E501C(sub_1DB1F8BBC, (&v882 - 8), v472);
              v173 = v477;

LABEL_218:
              v457 = v966;
              goto LABEL_202;
            }
          }

          v468 = 0;
          goto LABEL_215;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
        v440 = swift_allocObject();
        v441 = sub_1DB158A70(v440, 1);
        v442[3] = v458;
        v442[4] = v460;
        v443 = __swift_allocate_boxed_opaque_existential_0(v442);
        (*(*(v458 - 8) + 16))(v443, v459, v458);
        v444 = nullsub_1(v441);
LABEL_202:
        v85 = v457 + 1;
        __swift_destroy_boxed_opaque_existential_1(&v1064);
        sub_1DB1414E8(v444);
        v437 = v986;
        v438 = v953;
        if (v85 == v958)
        {

          v439 = v975;
LABEL_227:
          v486 = *&v1101[0];

          LODWORD(v914) = v914 & 1;
          v487 = v967;

          sub_1DB1F8988(&v1138, &v1075);
          v488 = sub_1DB1F7558(v486, &v1138, v487);
          if (v173)
          {

            sub_1DB1F89E4(&v1138);
            sub_1DB1759B0(&v1111);
            sub_1DB17181C(v1107);
            sub_1DB17181C(&v1097);
            (v901[1])(v898, v902);
            (v909[1])(v904, v910);
            sub_1DB1F7130(&v1027);
            sub_1DB1F7184(&v1044);
            v869 = v439;
            goto LABEL_483;
          }

          v489 = v488;

          v490 = v1102;
          sub_1DB1F89E4(&v1138);

          sub_1DB1F8988(&v1138, &v1075);
          v491 = sub_1DB1F71D8(v490, &v1138, v487);

          sub_1DB1F89E4(&v1138);

          v973[0] = BYTE8(v1102);
          v974 = v1103;
          v1072 = v1146;
          v1073 = v1147;
          v1074 = v1148;
          v1068 = v1142;
          v1069 = v1143;
          v1071 = v1145;
          v1070 = v1144;
          v1064 = v1138;
          v1065 = v1139;
          v1067 = v1141;
          v1066 = v1140;

          sub_1DB1E78A8(&v971, &v1064, v487);
          sub_1DB17181C(&v1097);

          LOBYTE(v490) = v971;
          v492 = *(&v971 + 1);

          v1076 = v983;
          v1077 = v984;
          v1078 = v985;
          v1082 = v979;
          v1083 = v980;
          v1084 = v981;
          v493 = v978;
          v1080 = v977;
          v494 = v924;
          *v924 = v986[0];
          *(v494 + 3) = *(v986 + 3);
          v1085 = v982;
          v1081 = v493;
          *&v1088[3] = *(v976 + 3);
          *v1088 = v976[0];
          LOBYTE(v1075) = v914;
          *(&v1075 + 1) = v439;
          v1079 = v489;
          v1086 = v491;
          v1087 = v490;
          v1089 = v492;
          v495 = v898;
          v496 = v902;
          (v892[3])(&v1075, v902);
          (v901[4])(v891, v495, v496);
          sub_1DB164980(&v990, &v994);
          LOBYTE(v991) = v893;
          sub_1DB1355D0(&v987, &v991 + 8);
          sub_1DB1755A4(v989);
          v497 = v997;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DB138660(0, v497[2] + 1, 1);
            v497 = v997;
          }

          v427 = v894;
          v499 = v497[2];
          v498 = v497[3];
          if (v499 >= v498 >> 1)
          {
            sub_1DB138660((v498 > 1), v499 + 1, 1);
            v427 = v894;
            v497 = v997;
          }

          v497[2] = v499 + 1;
          v500 = &v497[11 * v499];
          v501 = v992;
          *(v500 + 2) = v991;
          *(v500 + 3) = v501;
          v502 = v993;
          v503 = v994;
          v504 = v995;
          v500[14] = v996;
          *(v500 + 5) = v503;
          *(v500 + 6) = v504;
          *(v500 + 4) = v502;
          v85 = v883;
          if (v427 != v883)
          {
            v429 = v427 + 1;
            v173 = 0;
            v428 = v882;
            if (v427 >= *(v884 + 16))
            {
              goto LABEL_515;
            }

            goto LABEL_199;
          }

          v173 = 0;
          v85 = MEMORY[0x1E69E7CC0];
LABEL_236:
          v505 = v1109;
          v506 = *(v1109 + 16);
          v888 = v497;
          if (!v506)
          {
            v572 = v173;

            goto LABEL_276;
          }

          v997 = v85;
          v884 = v506;
          sub_1DB138170(v506);
          if (!*(v505 + 16))
          {
            goto LABEL_519;
          }

          v507 = 0;
          v508 = v505 + 32;
          v509 = 1;
          v882 = v505 + 32;
          v883 = v505;
          while (2)
          {
            v895 = v509;
            sub_1DB175650(v508 + 48 * v507, &v977);
            LODWORD(v894) = v977;
            v511 = *(&v979 + 1);
            v510 = v979;
            __swift_project_boxed_opaque_existential_1(&v977 + 1, v979);
            v988 = __PAIR128__(v511, v510);
            v892 = __swift_allocate_boxed_opaque_existential_0(&v987);
            v903 = &v882;
            v512 = *(*(v510 - 1) + 64);
            MEMORY[0x1EEE9AC00](v892);
            v901 = v514;
            v515 = *(v514 + 16);
            v898 = &v882 - ((v513 + 15) & 0xFFFFFFFFFFFFFFF0);
            v515();
            v516 = *(v511 + 2);
            v902 = v510;
            v893 = v511;
            v516(&v1090, v510, v511);
            v1101[4] = v1094[4];
            v1101[5] = v1094[5];
            v1102 = v1095;
            v1103 = v1096;
            v1101[0] = v1094[0];
            v1101[1] = v1094[1];
            v1101[2] = v1094[2];
            v1101[3] = v1094[3];
            v1097 = v1090;
            v1098 = v1091;
            v1099 = v1092;
            v1100 = v1093;
            LODWORD(v914) = v1090;
            v986[0] = *v929;
            v437 = v986;
            *(v986 + 3) = *(v929 + 3);
            v983 = v1091;
            v984 = v1092;
            v985 = v1093;
            v992 = *(&v1094[1] + 8);
            v991 = *(v1094 + 8);
            v996 = *(&v1094[5] + 1);
            v995 = *(&v1094[4] + 8);
            v994 = *(&v1094[3] + 8);
            v993 = *(&v1094[2] + 8);
            v889 = *&v1094[0];
            v890 = v1095;
            LODWORD(v891) = BYTE8(v1095);
            *(v976 + 3) = HIDWORD(v1095);
            v976[0] = *(&v1095 + 9);
            v900 = v1096;
            v517 = *(&v1090 + 1);
            v1159[0] = v1091;
            v1159[1] = v1092;
            v950 = *(&v1093 + 1);
            v942 = v1093;
            v1159[2] = v1093;
            v518 = MEMORY[0x1E69E7CC0];
            v975 = MEMORY[0x1E69E7CC0];
            v958 = *(*(&v1090 + 1) + 16);
            if (!v958)
            {
              sub_1DB1754EC(&v1097, &v1075);
              goto LABEL_267;
            }

            v944 = v1091;
            v938 = *(&v1148 + 1);
            sub_1DB1754EC(&v1097, &v1075);
            v957 = (v517 + 32);

            v519 = 0;
            v953 = v517;
LABEL_243:
            v1176 = v173;
            if (v519 >= *(v517 + 16))
            {
              __break(1u);
              goto LABEL_518;
            }

            v966 = v519;
            sub_1DB164980(v957 + 40 * v519, &v1064);
            v525 = v1065._object;
            v526 = v1066;
            v527 = __swift_project_boxed_opaque_existential_1(&v1064, v1065._object);
            v528 = *(v526 + 3);
            v964 = v527;
            v965 = v525;
            v963 = v526;
            *(&v960 + 1) = v526 + 24;
            *&v960 = v528;
            v528(&v1075, v525, v526);

            sub_1DB2BA9C4();
            sub_1DB2BB004();

            sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00);
            v529 = v912;
            v530 = v969;
            sub_1DB2BA9B4();
            v531 = v925;
            v532 = v1176;
            sub_1DB2BA9D4();
            v173 = v532;
            if (v532)
            {
              MEMORY[0x1E1284A10](v532);

              v533 = *v968;
              (*v968)(v529, v530);
              v533(v919, v530);
              v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
              (*(*(v534 - 8) + 56))(v531, 1, 1, v534);
              sub_1DB1445E0(v531, &qword_1ECC27D40, &qword_1DB2C39F8);
              v173 = 0;
              goto LABEL_247;
            }

            v535 = *v968;
            (*v968)(v529, v530);
            v535(v919, v530);
            v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
            LODWORD(v535) = (*(*(v536 - 8) + 48))(v531, 1, v536);
            sub_1DB1445E0(v531, &qword_1ECC27D40, &qword_1DB2C39F8);
            if (v535 != 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
              v524 = swift_allocObject();
              *(v524 + 16) = v947;
              v545 = v965;
              v546 = v963;
              *(v524 + 56) = v965;
              *(v524 + 64) = v546;
              v547 = __swift_allocate_boxed_opaque_existential_0((v524 + 32));
              (*(*(v545 - 1) + 16))(v547, v964, v545);
              goto LABEL_258;
            }

LABEL_247:
            v537 = v966;
            v538 = v965;
            v539 = v964;
            v540 = v963;
            (v960)(&v1075, v965, v963);
            v541 = *(&v1075 + 1);
            v542 = v1075;

            LOBYTE(v542) = sub_1DB23CC0C(v542, v541, 42);

            if (v542)
            {
              if (!v950)
              {

                sub_1DB1F88FC();
                swift_allocError();
                v872 = v944._object;
                *v873 = v944._countAndFlagsBits;
                *(v873 + 8) = v872;
                *(v873 + 16) = 0;
                *(v873 + 24) = 4;
                swift_willThrow();

                goto LABEL_491;
              }

              v543 = v967;
              if (v967)
              {

                v544 = v944;
                if (Connection.tableExists(_:)(v944))
                {
                  type metadata accessor for SchemaReader();
                  *(swift_allocObject() + 16) = v543;

                  v558 = sub_1DB26B520(v544._countAndFlagsBits, v544._object);
                  swift_setDeallocating();
                  SchemaReader.__deallocating_deinit();
                  v559 = sub_1DB165CE0(v558);
                  if (v559)
                  {
                    v560 = v559;
                    *&v1075 = MEMORY[0x1E69E7CC0];
                    sub_1DB138128(v559);
                    if (v560 < 0)
                    {
                      goto LABEL_527;
                    }

                    v561 = (v558 + 40);
                    do
                    {
                      v562 = *(v561 - 1);
                      v563 = *v561;

                      sub_1DB138850();
                      v564 = *(v1075 + 16);
                      sub_1DB13893C(v564);
                      v565 = sub_1DB1389E8(v564, v562, v563);
                      nullsub_1(v565);
                      v561 += 16;
                      --v560;
                    }

                    while (v560);

                    v548 = v1075;
                  }

                  else
                  {

                    v548 = sub_1DB138230(0);
                  }

LABEL_255:
                  *&v971 = v938;
                  DataSpecification.subscript.getter(v942, v950, &v1075);
                  v549 = *(&v1075 + 1);
                  if (!*(&v1075 + 1))
                  {

                    goto LABEL_490;
                  }

                  v1176 = 0;
                  v550 = v1075;
                  v971 = v1075;
                  v972 = v1076._countAndFlagsBits;
                  DataSpecification.Namespace.subscript.getter(v944._countAndFlagsBits, v944._object, &v1075);
                  v551 = *(&v1075 + 1);
                  if (!*(&v1075 + 1))
                  {

                    sub_1DB1718E4(v550, v549);
LABEL_490:
                    *&v1075 = 0;
                    *(&v1075 + 1) = 0xE000000000000000;
                    sub_1DB2BB4F4();
                    MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
                    MEMORY[0x1E1283490](v944._countAndFlagsBits, v944._object);
                    MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
                    MEMORY[0x1E1283490](v942, v950);
                    v874 = v1075;
                    v1076._countAndFlagsBits = 0;
                    LOBYTE(v1076._object) = 5;
                    sub_1DB171870();
                    swift_willThrowTypedImpl();
                    swift_allocError();
                    *v875 = v874;
                    *(v875 + 16) = 0;
                    *(v875 + 24) = 5;
LABEL_491:
                    v437 = v986;
                    sub_1DB1759B0(&v1111);
                    sub_1DB17181C(&v1097);
                    sub_1DB17181C(v1107);
                    (v901[1])(v898, v902);
                    (v909[1])(v904, v910);
                    sub_1DB1F7130(&v1027);
                    sub_1DB1F7184(&v1044);
                    __swift_destroy_boxed_opaque_existential_1(&v1064);
                    v876 = v953;

LABEL_492:
                    v85 = v896;
                    v877 = v914;
                    v878 = v900;
                    v879 = v891;
                    v880 = v889;
                    v881 = v890;
LABEL_493:
                    LOBYTE(v1075) = v877;
                    *(&v1075 + 1) = v986[0];
                    DWORD1(v1075) = *(v437 + 3);
                    *(&v1075 + 1) = v876;
                    v1076 = v983;
                    v1077 = v984;
                    v1078 = v985;
                    v1081 = v992;
                    v1080 = v991;
                    v1079 = v880;
                    v1085 = v996;
                    v1084 = v995;
                    v1083 = v994;
                    v1082 = v993;
                    v1086 = v881;
                    v1087 = v879;
                    *&v1088[3] = *(v976 + 3);
                    *v1088 = v976[0];
                    v1089 = v878;
                    sub_1DB17181C(&v1075);
                    __swift_deallocate_boxed_opaque_existential_1(&v987);
                    sub_1DB1756AC(&v977);

                    v866 = v888;
                    goto LABEL_494;
                  }

                  *(&v960 + 1) = v548;
                  v552 = v1078;
                  *&v960 = *(&v1077 + 1);
                  v943 = v1077;
                  v553 = v1075;
                  sub_1DB1718E4(v550, v549);

                  v554 = sub_1DB171928(v553, v551);
                  MEMORY[0x1EEE9AC00](v554);
                  v555 = v963;
                  *(&v882 - 6) = v965;
                  *(&v882 - 5) = v555;
                  v556 = v964;
                  *(&v882 - 4) = *(&v960 + 1);
                  *(&v882 - 3) = v556;
                  *(&v882 - 2) = v1159;
                  v557 = v1176;
                  v524 = sub_1DB1E501C(sub_1DB1F8BBC, (&v882 - 8), v552);
                  v173 = v557;

LABEL_258:
                  v537 = v966;
LABEL_242:
                  v519 = v537 + 1;
                  __swift_destroy_boxed_opaque_existential_1(&v1064);
                  sub_1DB1414E8(v524);
                  v517 = v953;
                  if (v519 == v958)
                  {

                    v518 = v975;
                    v437 = v986;
LABEL_267:
                    v566 = *&v1101[0];

                    LODWORD(v914) = v914 & 1;
                    v567 = v967;

                    sub_1DB1F8988(&v1138, &v1075);
                    v568 = sub_1DB1F7558(v566, &v1138, v567);
                    if (!v173)
                    {
                      v569 = v568;

                      v570 = v1102;
                      sub_1DB1F89E4(&v1138);

                      sub_1DB1F8988(&v1138, &v1075);
                      v571 = sub_1DB1F71D8(v570, &v1138, v567);

                      sub_1DB1F89E4(&v1138);

                      v973[0] = BYTE8(v1102);
                      v974 = v1103;
                      v1072 = v1146;
                      v1073 = v1147;
                      v1074 = v1148;
                      v1068 = v1142;
                      v1069 = v1143;
                      v1071 = v1145;
                      v1070 = v1144;
                      v1064 = v1138;
                      v1065 = v1139;
                      v1067 = v1141;
                      v1066 = v1140;

                      sub_1DB1E78A8(&v971, &v1064, v567);
                      v572 = 0;
                      sub_1DB17181C(&v1097);

                      LOBYTE(v570) = v971;
                      v573 = *(&v971 + 1);

                      v1076 = v983;
                      v1077 = v984;
                      v1078 = v985;
                      v1082 = v993;
                      v1083 = v994;
                      v1084 = v995;
                      v574 = v992;
                      v1080 = v991;
                      v575 = v924;
                      *v924 = v986[0];
                      *(v575 + 3) = *(v986 + 3);
                      v1085 = v996;
                      v1081 = v574;
                      *&v1088[3] = *(v976 + 3);
                      *v1088 = v976[0];
                      LOBYTE(v1075) = v914;
                      *(&v1075 + 1) = v518;
                      v1079 = v569;
                      v1086 = v571;
                      v1087 = v570;
                      v1089 = v573;
                      v576 = v898;
                      v577 = v902;
                      v893[3](&v1075, v902);
                      (v901[4])(v892, v576, v577);
                      v989[0] = v894;
                      sub_1DB1355D0(&v987, &v989[8]);
                      sub_1DB1756AC(&v977);
                      v85 = v997;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_1DB138640(0, *(v85 + 16) + 1, 1);
                        v85 = v997;
                      }

                      v507 = v895;
                      v579 = *(v85 + 16);
                      v578 = *(v85 + 24);
                      if (v579 >= v578 >> 1)
                      {
                        sub_1DB138640((v578 > 1), v579 + 1, 1);
                        v507 = v895;
                        v85 = v997;
                      }

                      *(v85 + 16) = v579 + 1;
                      v580 = (v85 + 48 * v579);
                      v581 = *v989;
                      v582 = *&v989[32];
                      v580[3] = *&v989[16];
                      v580[4] = v582;
                      v580[2] = v581;
                      if (v507 != v884)
                      {
                        v509 = v507 + 1;
                        v508 = v882;
                        v173 = 0;
                        if (v507 >= *(v883 + 16))
                        {
                          goto LABEL_519;
                        }

                        continue;
                      }

LABEL_276:
                      LOBYTE(v1064) = BYTE8(v1109);
                      *(&v1064 + 1) = v1110;
                      v1094[4] = v1146;
                      v1094[5] = v1147;
                      v1095 = v1148;
                      v1094[0] = v1142;
                      v1094[1] = v1143;
                      v1094[3] = v1145;
                      v1094[2] = v1144;
                      v1090 = v1138;
                      v1091 = v1139;
                      v1093 = v1141;
                      v1092 = v1140;

                      sub_1DB1E78A8(&v1075, &v1090, v967);
                      v1176 = v572;
                      if (v572)
                      {
                        goto LABEL_516;
                      }

                      sub_1DB17181C(v1107);

                      v583 = v1075;
                      v584 = *(&v1075 + 1);

                      v1098 = v1005;
                      v1099 = *v1006;
                      v1100 = *&v1006[16];
                      *(&v1101[2] + 8) = v1001;
                      *(&v1101[3] + 8) = v1002;
                      *(&v1101[4] + 8) = v1003;
                      v585 = v1000;
                      *(v1101 + 8) = v999;
                      v586 = v907;
                      *v907 = v1007[0];
                      *(v586 + 3) = *(v1007 + 3);
                      *(&v1101[5] + 1) = v1004;
                      *(&v1101[1] + 8) = v585;
                      HIDWORD(v1102) = *(v998 + 3);
                      *(&v1102 + 9) = v998[0];
                      LOBYTE(v1097) = v918;
                      *(&v1097 + 1) = v887;
                      *&v1101[0] = v888;
                      *&v1102 = v85;
                      BYTE8(v1102) = v583;
                      v1103 = v584;
                      v587 = v904;
                      v588 = v910;
                      (*(v886 + 24))(&v1097, v910);
                      (v909[4])(boxed_opaque_existential_0, v587, v588);
                      v1015 = v1033;
                      v1016 = v1034;
                      v1017 = v1035;
                      v1011 = v1029;
                      v1012 = v1030;
                      v1014 = v1032;
                      v1013 = v1031;
                      v1010 = v1028;
                      v1009 = v1027;
                      sub_1DB1F8894(v1008, &v1015, &qword_1ECC279E8, &unk_1DB2C3AE0);
                      *&v1025[80] = v1015;
                      *&v1025[96] = v1016;
                      *&v1025[112] = v1017;
                      *&v1025[16] = v1011;
                      *&v1025[32] = v1012;
                      *&v1025[64] = v1014;
                      *&v1025[48] = v1013;
                      *v1025 = v1010;
                      v1024 = v1009;
                      v1026 = 1;
                      __swift_destroy_boxed_opaque_existential_1(&v1020);
LABEL_176:
                      v233 = *(&v1024 + 1);
                      v231 = v1024;
                      v391 = *v1025;
                      v1041 = *&v1025[72];
                      v1042 = *&v1025[88];
                      v1043 = *&v1025[104];
                      v1037 = *&v1025[8];
                      v1038 = *&v1025[24];
                      v1040 = *&v1025[56];
                      v1039 = *&v1025[40];
                      v392 = v1026;
LABEL_182:
                      v393 = v1039;
                      v394 = v926;
                      *(v926 + 88) = v1040;
                      v395 = v1042;
                      *(v394 + 104) = v1041;
                      *(v394 + 120) = v395;
                      *(v394 + 136) = v1043;
                      v396 = v1038;
                      *(v394 + 40) = v1037;
                      *(v394 + 56) = v396;
                      *(v394 + 16) = v231;
                      *(v394 + 24) = v233;
                      *(v394 + 32) = v391;
                      *(v394 + 72) = v393;
                      *(v394 + 152) = v392;
                      sub_1DB1F7184(&v1044);
                      goto LABEL_188;
                    }

LABEL_509:

                    sub_1DB1F89E4(&v1138);
                    sub_1DB1759B0(&v1111);
                    sub_1DB17181C(v1107);
                    sub_1DB17181C(&v1097);
                    (v901[1])(v898, v902);
                    (v909[1])(v904, v910);
                    sub_1DB1F7130(&v1027);
                    sub_1DB1F7184(&v1044);
                    v876 = v518;
                    goto LABEL_492;
                  }

                  goto LABEL_243;
                }
              }

              v548 = 0;
              goto LABEL_255;
            }

            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
          v520 = swift_allocObject();
          v521 = sub_1DB158A70(v520, 1);
          v522[3] = v538;
          v522[4] = v540;
          v523 = __swift_allocate_boxed_opaque_existential_0(v522);
          (*(*(v538 - 8) + 16))(v523, v539, v538);
          v524 = nullsub_1(v521);
          goto LABEL_242;
        }
      }
    }

    v825 = MEMORY[0x1E69E7CC0];
LABEL_284:
    v914 = v825;
  }

  else
  {
    v914 = 0;
  }

  LODWORD(v890) = v1128;
  v589 = v1130;
  v590 = v1131;
  __swift_project_boxed_opaque_existential_1(v1129, v1130);
  *(&v992 + 1) = v589;
  *&v993 = v590;
  v888 = __swift_allocate_boxed_opaque_existential_0(&v991);
  v913 = &v882;
  v591 = *(*(v589 - 8) + 64);
  MEMORY[0x1EEE9AC00](v888);
  v915 = &v882 - ((v592 + 15) & 0xFFFFFFFFFFFFFFF0);
  v916 = v593;
  (*(v593 + 16))();
  v594 = *(v590 + 2);
  v917 = v589;
  v889 = v590;
  v594(v1104, v589, v590);
  *&v1107[128] = *&v1104[128];
  v1108 = *&v1104[144];
  v1109 = v1105;
  v1110 = v1106;
  *&v1107[64] = *&v1104[64];
  *&v1107[80] = *&v1104[80];
  *&v1107[96] = *&v1104[96];
  *&v1107[112] = *&v1104[112];
  *v1107 = *v1104;
  *&v1107[16] = *&v1104[16];
  *&v1107[32] = *&v1104[32];
  *&v1107[48] = *&v1104[48];
  LODWORD(v926) = v1104[0];
  LODWORD(v1020) = *v927;
  *(&v1020 + 3) = *(v927 + 3);
  v1037 = *&v1104[16];
  v1038 = *&v1104[32];
  v1039 = *&v1104[48];
  v1045 = *&v1104[88];
  v1044 = *&v1104[72];
  *&v1049 = *&v1104[152];
  v1048 = *&v1104[136];
  v1047 = *&v1104[120];
  v1046 = *&v1104[104];
  v909 = *&v1104[64];
  v910 = v1105;
  LODWORD(v911) = BYTE8(v1105);
  *(&v1018 + 3) = HIDWORD(v1105);
  LODWORD(v1018) = *(&v1105 + 9);
  v918 = v1106;
  v518 = *&v1104[8];
  v1151[0] = *&v1104[16];
  v950 = *&v1104[24];
  v1151[1] = *&v1104[32];
  v942 = *&v1104[48];
  v1152 = *&v1104[48];
  v958 = *&v1104[56];
  v1153 = *&v1104[56];
  v595 = MEMORY[0x1E69E7CC0];
  *&v1027 = MEMORY[0x1E69E7CC0];
  v943 = *(*&v1104[8] + 16);
  if (v943)
  {
    v957 = *&v1104[16];
    v938 = *(&v1148 + 1);
    v944._object = (*&v1104[8] + 32);
    sub_1DB1754EC(v1107, &v1097);

    v596 = 0;
    v944._countAndFlagsBits = v518;
    while (1)
    {
      if (v596 >= *(v518 + 16))
      {
        __break(1u);
        goto LABEL_499;
      }

      v963 = v596;
      sub_1DB164980(v944._object + 40 * v596, &v1090);
      v601 = v1091._object;
      v602 = v1092;
      v603 = __swift_project_boxed_opaque_existential_1(&v1090, v1091._object);
      v604 = v602[3];
      v965 = v603;
      v966 = v601;
      v964 = v602;
      *(&v960 + 1) = v602 + 3;
      *&v960 = v604;
      v604(&v1097, v601, v602);
      v1176 = v80;

      sub_1DB2BA9C4();
      sub_1DB2BB004();

      sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00);
      v14 = v949;
      v605 = v969;
      sub_1DB2BA9B4();
      v606 = v952;
      v607 = v1176;
      sub_1DB2BA9D4();
      v80 = v607;
      if (v607)
      {
        MEMORY[0x1E1284A10](v607);

        v608 = *v968;
        (*v968)(v14, v605);
        v608(v961, v605);
        v609 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        (*(*(v609 - 8) + 56))(v606, 1, 1, v609);
        sub_1DB1445E0(v606, &qword_1ECC27D40, &qword_1DB2C39F8);
        v1176 = 0;
      }

      else
      {

        v610 = *v968;
        (*v968)(v14, v605);
        v610(v961, v605);
        v611 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        LODWORD(v610) = (*(*(v611 - 8) + 48))(v606, 1, v611);
        sub_1DB1445E0(v606, &qword_1ECC27D40, &qword_1DB2C39F8);
        if (v610 != 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
          v597 = swift_allocObject();
          *(v597 + 16) = v947;
          v598 = v966;
          v599 = v964;
          *(v597 + 56) = v966;
          *(v597 + 64) = v599;
          v600 = __swift_allocate_boxed_opaque_existential_0((v597 + 32));
          (*(*(v598 - 8) + 16))(v600, v965, v598);
          goto LABEL_288;
        }

        v1176 = 0;
      }

      (v960)(&v1097, v966, v964);
      v612 = *(&v1097 + 1);
      v613 = v1097;

      v614 = (v612 & 0x2000000000000000) != 0 ? HIBYTE(v612) & 0xF : v613 & 0xFFFFFFFFFFFFLL;
      if (v614)
      {
        break;
      }

LABEL_339:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      v660 = swift_allocObject();
      v661 = sub_1DB158A70(v660, 1);
      v662 = v966;
      v663 = v964;
      v664[3] = v966;
      v664[4] = v663;
      v665 = __swift_allocate_boxed_opaque_existential_0(v664);
      (*(*(v662 - 8) + 16))(v665, v965, v662);
      v597 = nullsub_1(v661);
      v80 = v1176;
LABEL_288:
      v518 = v944._countAndFlagsBits;
      v596 = v963 + 1;
      __swift_destroy_boxed_opaque_existential_1(&v1090);
      sub_1DB1414E8(v597);
      if (v596 == v943)
      {

        v891 = v1027;
        goto LABEL_342;
      }
    }

    v615 = 0;
    v14 = (v612 & 0xFFFFFFFFFFFFFFLL);
    while (1)
    {
      if ((v612 & 0x1000000000000000) != 0)
      {
        v618 = sub_1DB2BB4E4();
        goto LABEL_308;
      }

      if ((v612 & 0x2000000000000000) != 0)
      {
        *&v1075 = v613;
        *(&v1075 + 1) = v612 & 0xFFFFFFFFFFFFFFLL;
        v617 = &v1075 + v615;
      }

      else
      {
        v616 = (v612 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v613 & 0x1000000000000000) == 0)
        {
          v616 = sub_1DB2BB5B4();
        }

        v617 = (v616 + v615);
      }

      v618 = *v617;
      if ((*v617 & 0x80000000) == 0)
      {
        break;
      }

      v620 = (__clz(v618 ^ 0xFF) - 24);
      if (v620 > 2)
      {
        if (v620 == 3)
        {
          v618 = ((v618 & 0xF) << 12) | ((v617[1] & 0x3F) << 6) | v617[2] & 0x3F;
          v619 = 3;
        }

        else
        {
          v618 = ((v618 & 0xF) << 18) | ((v617[1] & 0x3F) << 12) | ((v617[2] & 0x3F) << 6) | v617[3] & 0x3F;
          v619 = 4;
        }
      }

      else
      {
        if (v620 == 1)
        {
          break;
        }

        v618 = v617[1] & 0x3F | ((v618 & 0x1F) << 6);
        v619 = 2;
      }

LABEL_308:
      if (v618 == 42)
      {

        if (!v958)
        {

          sub_1DB1F88FC();
          swift_allocError();
          v827 = v950;
          *v828 = v957;
          *(v828 + 8) = v827;
          *(v828 + 16) = 0;
          *(v828 + 24) = 4;
          swift_willThrow();

          goto LABEL_434;
        }

        v621 = v967;
        if (!v967)
        {
          v624 = v950;
          goto LABEL_326;
        }

        v622 = v957;
        v623._countAndFlagsBits = v957;
        v624 = v950;
        v623._object = v950;
        if (!Connection.tableExists(_:)(v623))
        {

          v621 = 0;
          goto LABEL_326;
        }

        type metadata accessor for SchemaReader();
        *(swift_allocObject() + 16) = v621;

        v625 = v1176;
        v626 = sub_1DB26B520(v622, v624);
        if (v625)
        {
          swift_setDeallocating();
          SchemaReader.__deallocating_deinit();
          if (qword_1EE13F2E0 != -1)
          {
            swift_once();
          }

          sub_1DB2BBAF4();
          v627 = *(&v1098 + 1);
          v628 = v1099;
          *(&v960 + 1) = __swift_project_boxed_opaque_existential_1(&v1097, *(&v1098 + 1));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
          v629 = swift_allocObject();
          *&v960 = sub_1DB158A70(v629, 1);
          v631 = v630;
          *&v1009 = MEMORY[0x1E69E7CC0];
          sub_1DB156558(37);
          v632._countAndFlagsBits = 0xD000000000000021;
          v632._object = (v935 | 0x8000000000000000);
          LogMessage.StringInterpolation.appendLiteral(_:)(v632);
          v1065._object = MEMORY[0x1E69E6158];
          *&v1064 = v957;
          *(&v1064 + 1) = v624;
          sub_1DB1446A4(&v1064, &v1024, &qword_1ECC26F30, &unk_1DB2BFA90);
          v1075 = 0u;
          v1076 = 0;

          sub_1DB1F8894(&v1024, &v1075, &qword_1ECC26F30, &unk_1DB2BFA90);
          LOBYTE(v1077) = 0;
          sub_1DB1565BC();
          v633 = *(v1009 + 16);
          sub_1DB156608(v633);
          sub_1DB15664C(v633, &v1075);
          nullsub_1(v634);
          sub_1DB1445E0(&v1064, &qword_1ECC26F30, &unk_1DB2BFA90);
          v635._countAndFlagsBits = 8250;
          v635._object = 0xE200000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v635);
          swift_getErrorValue();
          v636 = v1062[1];
          v637 = v1063;
          v1065._object = v1063;
          v638 = __swift_allocate_boxed_opaque_existential_0(&v1064);
          (*(*(v637 - 1) + 16))(v638, v636, v637);
          sub_1DB1446A4(&v1064, &v1024, &qword_1ECC26F30, &unk_1DB2BFA90);
          v1075 = 0u;
          v1076 = 0;
          sub_1DB1F8894(&v1024, &v1075, &qword_1ECC26F30, &unk_1DB2BFA90);
          LOBYTE(v1077) = 0;
          sub_1DB1565BC();
          v639 = *(v1009 + 16);
          sub_1DB156608(v639);
          sub_1DB15664C(v639, &v1075);
          nullsub_1(v640);
          v624 = v950;
          sub_1DB1445E0(&v1064, &qword_1ECC26F30, &unk_1DB2BFA90);
          v641._countAndFlagsBits = 0;
          v641._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v641);
          *v631 = v1009;
          v642 = nullsub_1(v960);
          Logger.warning(_:)(v642, v627, v628);

          __swift_destroy_boxed_opaque_existential_1(&v1097);
          v621 = sub_1DB138230(0);
          MEMORY[0x1E1284A10](v625);

          v1176 = 0;
          goto LABEL_326;
        }

        v651 = v626;
        swift_setDeallocating();
        SchemaReader.__deallocating_deinit();
        v652 = sub_1DB165CE0(v651);
        v1176 = 0;
        if (!v652)
        {

          v621 = sub_1DB138230(0);

          goto LABEL_326;
        }

        v653 = v652;
        *&v1097 = MEMORY[0x1E69E7CC0];
        sub_1DB138128(v652);
        if ((v653 & 0x8000000000000000) == 0)
        {
          v621 = v1097;
          *(&v960 + 1) = v651;
          v654 = (v651 + 40);
          do
          {
            v656 = *(v654 - 1);
            v655 = *v654;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1DB138470(0, *(v621 + 16) + 1, 1);
              v621 = v1097;
            }

            v658 = *(v621 + 16);
            v657 = *(v621 + 24);
            if (v658 >= v657 >> 1)
            {
              sub_1DB138470((v657 > 1), v658 + 1, 1);
              v621 = v1097;
            }

            *(v621 + 16) = v658 + 1;
            v659 = v621 + 16 * v658;
            *(v659 + 32) = v656;
            *(v659 + 40) = v655;
            v654 += 16;
            --v653;
          }

          while (v653);

          v624 = v950;
LABEL_326:
          *&v1075 = v938;
          DataSpecification.subscript.getter(v942, v958, &v1097);
          v643 = *(&v1097 + 1);
          if (*(&v1097 + 1))
          {
            v644 = v1097;
            v1075 = v1097;
            v1076._countAndFlagsBits = v1098;
            DataSpecification.Namespace.subscript.getter(v957, v624, &v1097);
            v645 = *(&v1097 + 1);
            if (*(&v1097 + 1))
            {
              v646 = v1100;
              v960 = v1099;
              v953 = *(&v1098 + 1);
              v14 = v1097;
              sub_1DB1718E4(v644, v643);

              v647 = sub_1DB171928(v14, v645);
              MEMORY[0x1EEE9AC00](v647);
              v648 = v964;
              *(&v882 - 6) = v966;
              *(&v882 - 5) = v648;
              v649 = v965;
              *(&v882 - 4) = v621;
              *(&v882 - 3) = v649;
              *(&v882 - 2) = v1151;
              v650 = v1176;
              v597 = sub_1DB1E501C(sub_1DB1F8BBC, (&v882 - 8), v646);

              v80 = v650;

              goto LABEL_288;
            }

            sub_1DB1718E4(v644, v643);
          }

          else
          {
          }

          *&v1097 = 0;
          *(&v1097 + 1) = 0xE000000000000000;
          sub_1DB2BB4F4();
          MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
          MEMORY[0x1E1283490](v957, v624);
          MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
          MEMORY[0x1E1283490](v942, v958);
          v829 = v1097;
          *&v1098 = 0;
          BYTE8(v1098) = 5;
          sub_1DB171870();
          swift_willThrowTypedImpl();
          swift_allocError();
          *v830 = v829;
          *(v830 + 16) = 0;
          *(v830 + 24) = 5;
LABEL_434:
          sub_1DB1759B0(&v1111);
          sub_1DB17181C(v1107);
          (*(v916 + 8))(v915, v917);
          __swift_destroy_boxed_opaque_existential_1(&v1090);
          v831 = v944._countAndFlagsBits;

          v832 = v909;
          v518 = v910;
          goto LABEL_459;
        }

LABEL_518:
        __break(1u);
LABEL_519:
        __break(1u);
LABEL_520:
        __break(1u);
LABEL_521:
        __break(1u);
LABEL_522:
        __break(1u);
LABEL_523:
        __break(1u);
LABEL_524:
        __break(1u);
LABEL_525:
        __break(1u);
LABEL_526:
        __break(1u);
LABEL_527:
        __break(1u);
        return;
      }

      v615 += v619;
      if (v615 >= v614)
      {
        goto LABEL_339;
      }
    }

    v619 = 1;
    goto LABEL_308;
  }

  sub_1DB1754EC(v1107, &v1097);
  v891 = v595;
LABEL_342:
  v666 = *&v1107[64];

  LODWORD(v926) = v926 & 1;
  v518 = *(v666 + 16);
  if (!v518)
  {

    v518 = MEMORY[0x1E69E7CC0];
    v734 = MEMORY[0x1E69E7CC0];
    goto LABEL_381;
  }

  v1059[0] = MEMORY[0x1E69E7CC0];
  sub_1DB138188(v518);
  if (!*(v666 + 16))
  {
    goto LABEL_499;
  }

  v667 = 0;
  v668 = (v666 + 32);
  v669 = 1;
  v886 = v518;
  v887 = v666;
  boxed_opaque_existential_0 = (v666 + 32);
  while (2)
  {
    v898 = v669;
    sub_1DB175548(&v668[11 * v667], &v1027);
    LODWORD(v897) = v1027;
    v671 = *(&v1029 + 1);
    v670 = v1029;
    __swift_project_boxed_opaque_existential_1(&v1027 + 1, v1029);
    *&v989[24] = __PAIR128__(v671, v670);
    v895 = __swift_allocate_boxed_opaque_existential_0(v989);
    v900 = &v882;
    v672 = *(*(v670 - 1) + 64);
    MEMORY[0x1EEE9AC00](v895);
    v902 = &v882 - ((v673 + 15) & 0xFFFFFFFFFFFFFFF0);
    v903 = v674;
    (*(v674 + 16))();
    v675 = v671[2];
    v904 = v670;
    v896 = v671;
    v675(&v1090, v670, v671);
    v1101[4] = v1094[4];
    v1101[5] = v1094[5];
    v1102 = v1095;
    v1103 = v1096;
    v1101[0] = v1094[0];
    v1101[1] = v1094[1];
    v1101[2] = v1094[2];
    v1101[3] = v1094[3];
    v1097 = v1090;
    v1098 = v1091;
    v1099 = v1092;
    v1100 = v1093;
    LODWORD(v923) = v1090;
    LODWORD(v1008[0]) = *v929;
    *(v1008 + 3) = *(v929 + 3);
    v999 = v1091;
    v1000 = v1092;
    v1001 = v1093;
    v1010 = *(&v1094[1] + 8);
    v1009 = *(v1094 + 8);
    *&v1014 = *(&v1094[5] + 1);
    v1013 = *(&v1094[4] + 8);
    v1012 = *(&v1094[3] + 8);
    v1011 = *(&v1094[2] + 8);
    v892 = *&v1094[0];
    v893 = v1095;
    LODWORD(v894) = BYTE8(v1095);
    *(&v987 + 3) = HIDWORD(v1095);
    LODWORD(v987) = *(&v1095 + 9);
    v901 = v1096;
    v676 = *(&v1090 + 1);
    v1150[0] = v1091;
    v1150[1] = v1092;
    v950 = *(&v1093 + 1);
    v942 = v1093;
    v1150[2] = v1093;
    v677 = MEMORY[0x1E69E7CC0];
    v1056[0] = MEMORY[0x1E69E7CC0];
    v958 = *(*(&v1090 + 1) + 16);
    if (!v958)
    {
      sub_1DB1754EC(&v1097, &v1075);
      goto LABEL_372;
    }

    v944 = v1091;
    v938 = *(&v1148 + 1);
    v957 = (*(&v1090 + 1) + 32);
    sub_1DB1754EC(&v1097, &v1075);

    v678 = 0;
    v953 = v676;
    do
    {
      if (v678 >= *(v676 + 16))
      {
        __break(1u);

        sub_1DB1F89E4(&v1138);
        sub_1DB1759B0(&v1111);
        sub_1DB17181C(&v1097);
        sub_1DB17181C(v1107);
        (*(v898 + 1))(v897, v900);
        (v909[1])(v904, v910);
        v857 = v890;
        goto LABEL_466;
      }

      v966 = v678;
      sub_1DB164980(v957 + 40 * v678, &v1064);
      v684 = v1065._object;
      v685 = v1066;
      v686 = __swift_project_boxed_opaque_existential_1(&v1064, v1065._object);
      v687 = *(v685 + 3);
      v964 = v686;
      v965 = v684;
      v963 = v685;
      *(&v960 + 1) = v685 + 24;
      *&v960 = v687;
      v687(&v1075, v684, v685);
      v1176 = v80;

      sub_1DB2BA9C4();
      sub_1DB2BB004();
      v14 = v688;

      sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00);
      v689 = v954;
      v690 = v969;
      sub_1DB2BA9B4();
      v691 = v955;
      v692 = v1176;
      sub_1DB2BA9D4();
      v80 = v692;
      if (v692)
      {
        MEMORY[0x1E1284A10](v692);

        v693 = *v968;
        (*v968)(v689, v690);
        v693(v962, v690);
        v694 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        (*(*(v694 - 8) + 56))(v691, 1, 1, v694);
        sub_1DB1445E0(v691, &qword_1ECC27D40, &qword_1DB2C39F8);
        v80 = 0;
      }

      else
      {

        v695 = *v968;
        (*v968)(v689, v690);
        v695(v962, v690);
        v696 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        LODWORD(v695) = (*(*(v696 - 8) + 48))(v691, 1, v696);
        sub_1DB1445E0(v691, &qword_1ECC27D40, &qword_1DB2C39F8);
        if (v695 != 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
          v683 = swift_allocObject();
          *(v683 + 16) = v947;
          v704 = v965;
          v705 = v963;
          *(v683 + 56) = v965;
          *(v683 + 64) = v705;
          v706 = __swift_allocate_boxed_opaque_existential_0((v683 + 32));
          (*(*(v704 - 1) + 16))(v706, v964, v704);
          v697 = v966;
          goto LABEL_348;
        }
      }

      v697 = v966;
      v698 = v965;
      v699 = v964;
      v14 = v963;
      (v960)(&v1075, v965, v963);
      v700 = *(&v1075 + 1);
      v701 = v1075;

      LOBYTE(v701) = sub_1DB23CC0C(v701, v700, 42);

      if ((v701 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
        v679 = swift_allocObject();
        v680 = sub_1DB158A70(v679, 1);
        v681[3] = v698;
        v681[4] = v14;
        v682 = __swift_allocate_boxed_opaque_existential_0(v681);
        (*(*(v698 - 8) + 16))(v682, v699, v698);
        v683 = nullsub_1(v680);
        goto LABEL_348;
      }

      if (!v950)
      {

        sub_1DB1F88FC();
        swift_allocError();
        v833 = v944._object;
        *v834 = v944._countAndFlagsBits;
        *(v834 + 8) = v833;
        *(v834 + 16) = 0;
        *(v834 + 24) = 4;
        swift_willThrow();

        goto LABEL_439;
      }

      v702 = v967;
      if (v967)
      {

        v703 = v944;
        if (Connection.tableExists(_:)(v944))
        {
          type metadata accessor for SchemaReader();
          *(swift_allocObject() + 16) = v702;

          v716 = sub_1DB26B520(v703._countAndFlagsBits, v703._object);
          swift_setDeallocating();
          SchemaReader.__deallocating_deinit();
          v717 = sub_1DB165CE0(v716);
          if (v717)
          {
            v718 = v717;
            *&v1075 = MEMORY[0x1E69E7CC0];
            sub_1DB138128(v717);
            if (v718 < 0)
            {
              goto LABEL_520;
            }

            v719 = (v716 + 40);
            do
            {
              v720 = *(v719 - 1);
              v721 = *v719;

              sub_1DB138850();
              v722 = *(v1075 + 16);
              sub_1DB13893C(v722);
              v723 = sub_1DB1389E8(v722, v720, v721);
              nullsub_1(v723);
              v719 += 16;
              --v718;
            }

            while (v718);

            v707 = v1075;
            v80 = 0;
          }

          else
          {

            v707 = sub_1DB138230(0);

            v80 = 0;
          }

          goto LABEL_361;
        }
      }

      v707 = 0;
LABEL_361:
      *&v977 = v938;
      DataSpecification.subscript.getter(v942, v950, &v1075);
      v708 = *(&v1075 + 1);
      if (!*(&v1075 + 1))
      {

        goto LABEL_438;
      }

      v1176 = v80;
      v709 = v1075;
      v977 = v1075;
      *&v978 = v1076._countAndFlagsBits;
      DataSpecification.Namespace.subscript.getter(v944._countAndFlagsBits, v944._object, &v1075);
      v710 = *(&v1075 + 1);
      if (!*(&v1075 + 1))
      {

        sub_1DB1718E4(v709, v708);
LABEL_438:
        *&v1075 = 0;
        *(&v1075 + 1) = 0xE000000000000000;
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
        MEMORY[0x1E1283490](v944._countAndFlagsBits, v944._object);
        MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
        MEMORY[0x1E1283490](v942, v950);
        v835 = v1075;
        v1076._countAndFlagsBits = 0;
        LOBYTE(v1076._object) = 5;
        sub_1DB171870();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v836 = v835;
        *(v836 + 16) = 0;
        *(v836 + 24) = 5;
LABEL_439:
        sub_1DB1759B0(&v1111);
        sub_1DB17181C(&v1097);
        sub_1DB17181C(v1107);
        (v903[1])(v902, v904);
        (*(v916 + 8))(v915, v917);
        __swift_destroy_boxed_opaque_existential_1(&v1064);
        v677 = v953;

LABEL_440:
        LOBYTE(v1075) = v923;
        *(&v1075 + 1) = v1008[0];
        DWORD1(v1075) = *(v1008 + 3);
        *(&v1075 + 1) = v677;
        v1076 = v999;
        v1077 = v1000;
        v1078 = v1001;
        v1081 = v1010;
        v1080 = v1009;
        v1079 = v892;
        v1085 = v1014;
        v1084 = v1013;
        v1083 = v1012;
        v1082 = v1011;
        v1086 = v893;
        v1087 = v894;
        *&v1088[3] = *(&v987 + 3);
        *v1088 = v987;
        v1089 = v901;
        sub_1DB17181C(&v1075);
        __swift_deallocate_boxed_opaque_existential_1(v989);
        sub_1DB1755A4(&v1027);

        v832 = v909;
        v518 = v910;
        goto LABEL_458;
      }

      v14 = v1078;
      *&v960 = *(&v1077 + 1);
      v943 = v1077;
      *(&v960 + 1) = v707;
      v711 = v1075;
      sub_1DB1718E4(v709, v708);

      v697 = v966;
      v712 = sub_1DB171928(v711, v710);
      MEMORY[0x1EEE9AC00](v712);
      v713 = v963;
      *(&v882 - 6) = v965;
      *(&v882 - 5) = v713;
      v714 = v964;
      *(&v882 - 4) = *(&v960 + 1);
      *(&v882 - 3) = v714;
      *(&v882 - 2) = v1150;
      v715 = v1176;
      v683 = sub_1DB1E501C(sub_1DB1F8BBC, (&v882 - 8), v14);
      v80 = v715;

LABEL_348:
      v678 = v697 + 1;
      __swift_destroy_boxed_opaque_existential_1(&v1064);
      sub_1DB1414E8(v683);
      v676 = v953;
    }

    while (v678 != v958);

    v677 = v1056[0];
LABEL_372:
    v724 = *&v1101[0];

    LODWORD(v923) = v923 & 1;
    v725 = v967;

    sub_1DB1F8988(&v1138, &v1075);
    v726 = sub_1DB1F7558(v724, &v1138, v725);
    if (v80)
    {

      sub_1DB1F89E4(&v1138);
      sub_1DB1759B0(&v1111);

      sub_1DB17181C(&v1097);
      sub_1DB17181C(v1107);
      (v903[1])(v902, v904);
      (*(v916 + 8))(v915, v917);
      goto LABEL_440;
    }

    v727 = v726;

    v728 = v1102;
    sub_1DB1F89E4(&v1138);

    sub_1DB1F8988(&v1138, &v1075);
    v14 = sub_1DB1F71D8(v728, &v1138, v725);

    sub_1DB1F89E4(&v1138);

    LOBYTE(v1005) = BYTE8(v1102);
    *(&v1005 + 1) = v1103;
    v1072 = v1146;
    v1073 = v1147;
    v1074 = v1148;
    v1068 = v1142;
    v1069 = v1143;
    v1071 = v1145;
    v1070 = v1144;
    v1064 = v1138;
    v1065 = v1139;
    v1067 = v1141;
    v1066 = v1140;

    sub_1DB1E78A8(&v977, &v1064, v725);
    sub_1DB17181C(&v1097);

    LOBYTE(v728) = v977;
    v729 = *(&v977 + 1);

    v1076 = v999;
    v1077 = v1000;
    v1078 = v1001;
    v1082 = v1011;
    v1083 = v1012;
    v1084 = v1013;
    v730 = v1010;
    v1080 = v1009;
    v731 = v924;
    *v924 = v1008[0];
    *(v731 + 3) = *(v1008 + 3);
    v1085 = v1014;
    v1081 = v730;
    *&v1088[3] = *(&v987 + 3);
    *v1088 = v987;
    LOBYTE(v1075) = v923;
    *(&v1075 + 1) = v677;
    v1079 = v727;
    v1086 = v14;
    v1087 = v728;
    v1089 = v729;
    v732 = v902;
    v733 = v904;
    (v896[3])(&v1075, v904);
    (v903[4])(v895, v732, v733);
    sub_1DB164980(&v1030, &v1025[32]);
    LOBYTE(v1024) = v897;
    sub_1DB1355D0(v989, &v1024 + 8);
    sub_1DB1755A4(&v1027);
    v734 = v1059[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DB138660(0, *(v734 + 16) + 1, 1);
      v734 = v1059[0];
    }

    v667 = v898;
    v736 = *(v734 + 16);
    v735 = *(v734 + 24);
    if (v736 >= v735 >> 1)
    {
      sub_1DB138660((v735 > 1), v736 + 1, 1);
      v667 = v898;
      v734 = v1059[0];
    }

    *(v734 + 16) = v736 + 1;
    v737 = v734 + 88 * v736;
    v738 = *v1025;
    *(v737 + 32) = v1024;
    *(v737 + 48) = v738;
    v739 = *&v1025[16];
    v740 = *&v1025[32];
    v741 = *&v1025[48];
    *(v737 + 112) = *&v1025[64];
    *(v737 + 80) = v740;
    *(v737 + 96) = v741;
    *(v737 + 64) = v739;
    v518 = v886;
    if (v667 != v886)
    {
      v669 = (v667 + 1);
      v668 = boxed_opaque_existential_0;
      if (v667 >= *(v887 + 16))
      {
LABEL_499:
        __break(1u);
        goto LABEL_500;
      }

      continue;
    }

    break;
  }

  v518 = MEMORY[0x1E69E7CC0];
LABEL_381:
  v742 = v1109;
  v743 = *(v1109 + 16);
  v892 = v734;
  if (!v743)
  {
    v807 = v80;

    goto LABEL_420;
  }

  v1059[0] = v518;
  v437 = v1059;
  v887 = v743;
  sub_1DB138170(v743);
  if (!*(v742 + 16))
  {
    goto LABEL_508;
  }

  v744 = 0;
  v745 = (v742 + 32);
  v746 = 1;
  boxed_opaque_existential_0 = (v742 + 32);
  v886 = v742;
  while (2)
  {
    v900 = v746;
    sub_1DB175650(&v745[6 * v744], &v1009);
    LODWORD(v898) = v1009;
    v748 = *(&v1011 + 1);
    v747 = v1011;
    __swift_project_boxed_opaque_existential_1(&v1009 + 1, v1011);
    *&v989[24] = __PAIR128__(v748, v747);
    v896 = __swift_allocate_boxed_opaque_existential_0(v989);
    v909 = &v882;
    v749 = *(*(v747 - 1) + 64);
    MEMORY[0x1EEE9AC00](v896);
    v902 = &v882 - ((v750 + 15) & 0xFFFFFFFFFFFFFFF0);
    v903 = v751;
    (*(v751 + 16))();
    v752 = *(v748 + 2);
    v904 = v747;
    v897 = v748;
    v752(&v1090, v747, v748);
    v1101[4] = v1094[4];
    v1101[5] = v1094[5];
    v1102 = v1095;
    v1103 = v1096;
    v1101[0] = v1094[0];
    v1101[1] = v1094[1];
    v1101[2] = v1094[2];
    v1101[3] = v1094[3];
    v1097 = v1090;
    v1098 = v1091;
    v1099 = v1092;
    v1100 = v1093;
    LODWORD(v923) = v1090;
    LODWORD(v1008[0]) = *v929;
    *(v1008 + 3) = *(v929 + 3);
    v999 = v1091;
    v1000 = v1092;
    v1001 = v1093;
    *v1025 = *(&v1094[1] + 8);
    v1024 = *(v1094 + 8);
    *&v1025[64] = *(&v1094[5] + 1);
    *&v1025[48] = *(&v1094[4] + 8);
    *&v1025[32] = *(&v1094[3] + 8);
    *&v1025[16] = *(&v1094[2] + 8);
    v893 = *&v1094[0];
    v894 = v1095;
    LODWORD(v895) = BYTE8(v1095);
    v437 = v986;
    *(&v987 + 3) = HIDWORD(v1095);
    LODWORD(v987) = *(&v1095 + 9);
    v901 = v1096;
    v753 = *(&v1090 + 1);
    v1149[0] = v1091;
    v1149[1] = v1092;
    v950 = *(&v1093 + 1);
    v942 = v1093;
    v1149[2] = v1093;
    v754 = MEMORY[0x1E69E7CC0];
    v1056[0] = MEMORY[0x1E69E7CC0];
    v958 = *(*(&v1090 + 1) + 16);
    if (v958)
    {
      v944 = v1091;
      v938 = *(&v1148 + 1);
      v957 = (*(&v1090 + 1) + 32);
      sub_1DB1754EC(&v1097, &v1075);

      v518 = 0;
      v953 = v753;
      while (1)
      {
        if (v518 >= *(v753 + 16))
        {
          __break(1u);
          goto LABEL_508;
        }

        v966 = v518;
        sub_1DB164980(v957 + 40 * v518, &v1064);
        v760 = v1065._object;
        v761 = v1066;
        v762 = __swift_project_boxed_opaque_existential_1(&v1064, v1065._object);
        v763 = *(v761 + 3);
        v964 = v762;
        v965 = v760;
        v963 = v761;
        *(&v960 + 1) = v761 + 24;
        *&v960 = v763;
        v763(&v1075, v760, v761);
        v1176 = v80;

        sub_1DB2BA9C4();
        sub_1DB2BB004();

        sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00);
        v764 = v936;
        v765 = v969;
        sub_1DB2BA9B4();
        v766 = v939;
        v767 = v1176;
        sub_1DB2BA9D4();
        v80 = v767;
        if (v767)
        {
          MEMORY[0x1E1284A10](v767);

          v768 = *v968;
          (*v968)(v764, v765);
          v768(v948, v765);
          v769 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
          (*(*(v769 - 8) + 56))(v766, 1, 1, v769);
          sub_1DB1445E0(v766, &qword_1ECC27D40, &qword_1DB2C39F8);
          v80 = 0;
        }

        else
        {

          v770 = *v968;
          (*v968)(v764, v765);
          v770(v948, v765);
          v771 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
          LODWORD(v770) = (*(*(v771 - 8) + 48))(v766, 1, v771);
          sub_1DB1445E0(v766, &qword_1ECC27D40, &qword_1DB2C39F8);
          if (v770 != 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
            v759 = swift_allocObject();
            *(v759 + 16) = v947;
            v780 = v965;
            v781 = v963;
            *(v759 + 56) = v965;
            *(v759 + 64) = v781;
            v782 = __swift_allocate_boxed_opaque_existential_0((v759 + 32));
            (*(*(v780 - 1) + 16))(v782, v964, v780);
            v772 = v966;
            goto LABEL_387;
          }
        }

        v772 = v966;
        v773 = v965;
        v774 = v964;
        v775 = v963;
        (v960)(&v1075, v965, v963);
        v776 = *(&v1075 + 1);
        v777 = v1075;

        LOBYTE(v777) = sub_1DB23CC0C(v777, v776, 42);

        if ((v777 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
          v755 = swift_allocObject();
          v756 = sub_1DB158A70(v755, 1);
          v757[3] = v773;
          v757[4] = v775;
          v758 = __swift_allocate_boxed_opaque_existential_0(v757);
          (*(*(v773 - 8) + 16))(v758, v774, v773);
          v759 = nullsub_1(v756);
          goto LABEL_387;
        }

        if (!v950)
        {

          sub_1DB1F88FC();
          swift_allocError();
          v848 = v944._object;
          *v849 = v944._countAndFlagsBits;
          *(v849 + 8) = v848;
          *(v849 + 16) = 0;
          *(v849 + 24) = 4;
          swift_willThrow();

          goto LABEL_456;
        }

        v778 = v967;
        if (v967)
        {

          v779 = v944;
          if (Connection.tableExists(_:)(v944))
          {
            type metadata accessor for SchemaReader();
            *(swift_allocObject() + 16) = v778;

            v793 = sub_1DB26B520(v779._countAndFlagsBits, v779._object);
            swift_setDeallocating();
            SchemaReader.__deallocating_deinit();
            v794 = sub_1DB165CE0(v793);
            if (v794)
            {
              v795 = v794;
              *&v1075 = MEMORY[0x1E69E7CC0];
              sub_1DB138128(v794);
              if (v795 < 0)
              {
                goto LABEL_523;
              }

              v796 = (v793 + 40);
              do
              {
                v797 = *(v796 - 1);
                v798 = *v796;

                sub_1DB138850();
                v799 = *(v1075 + 16);
                sub_1DB13893C(v799);
                v800 = sub_1DB1389E8(v799, v797, v798);
                nullsub_1(v800);
                v796 += 16;
                --v795;
              }

              while (v795);

              v783 = v1075;
              v80 = 0;
            }

            else
            {

              v783 = sub_1DB138230(0);
            }

            goto LABEL_400;
          }
        }

        v783 = 0;
LABEL_400:
        *&v977 = v938;
        DataSpecification.subscript.getter(v942, v950, &v1075);
        v784 = *(&v1075 + 1);
        if (!*(&v1075 + 1))
        {

          goto LABEL_455;
        }

        v1176 = v80;
        v785 = v1075;
        v977 = v1075;
        *&v978 = v1076._countAndFlagsBits;
        DataSpecification.Namespace.subscript.getter(v944._countAndFlagsBits, v944._object, &v1075);
        v786 = *(&v1075 + 1);
        if (!*(&v1075 + 1))
        {

          sub_1DB1718E4(v785, v784);
LABEL_455:
          *&v1075 = 0;
          *(&v1075 + 1) = 0xE000000000000000;
          sub_1DB2BB4F4();
          MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
          MEMORY[0x1E1283490](v944._countAndFlagsBits, v944._object);
          MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
          MEMORY[0x1E1283490](v942, v950);
          v850 = v1075;
          v1076._countAndFlagsBits = 0;
          LOBYTE(v1076._object) = 5;
          sub_1DB171870();
          swift_willThrowTypedImpl();
          swift_allocError();
          *v851 = v850;
          *(v851 + 16) = 0;
          *(v851 + 24) = 5;
LABEL_456:
          sub_1DB1759B0(&v1111);
          sub_1DB17181C(&v1097);
          sub_1DB17181C(v1107);
          (v903[1])(v902, v904);
          (*(v916 + 8))(v915, v917);
          __swift_destroy_boxed_opaque_existential_1(&v1064);
          v754 = v953;

          goto LABEL_457;
        }

        v787 = v1078;
        *&v960 = *(&v1077 + 1);
        v943 = v1077;
        *(&v960 + 1) = v783;
        v788 = v1075;
        sub_1DB1718E4(v785, v784);

        v772 = v966;
        v789 = sub_1DB171928(v788, v786);
        MEMORY[0x1EEE9AC00](v789);
        v790 = v963;
        *(&v882 - 6) = v965;
        *(&v882 - 5) = v790;
        v791 = v964;
        *(&v882 - 4) = *(&v960 + 1);
        *(&v882 - 3) = v791;
        *(&v882 - 2) = v1149;
        v792 = v1176;
        v759 = sub_1DB1E501C(sub_1DB1F8BBC, (&v882 - 8), v787);
        v80 = v792;

LABEL_387:
        v518 = v772 + 1;
        __swift_destroy_boxed_opaque_existential_1(&v1064);
        sub_1DB1414E8(v759);
        v437 = v986;
        v753 = v953;
        if (v518 == v958)
        {

          v754 = v1056[0];
          goto LABEL_411;
        }
      }
    }

    sub_1DB1754EC(&v1097, &v1075);
LABEL_411:
    v801 = *&v1101[0];

    LODWORD(v923) = v923 & 1;
    v802 = v967;

    sub_1DB1F8988(&v1138, &v1075);
    v803 = sub_1DB1F7558(v801, &v1138, v802);
    if (!v80)
    {
      v804 = v803;

      v805 = v1102;
      sub_1DB1F89E4(&v1138);

      sub_1DB1F8988(&v1138, &v1075);
      v806 = sub_1DB1F71D8(v805, &v1138, v802);

      sub_1DB1F89E4(&v1138);

      LOBYTE(v1005) = BYTE8(v1102);
      *(&v1005 + 1) = v1103;
      v1072 = v1146;
      v1073 = v1147;
      v1074 = v1148;
      v1068 = v1142;
      v1069 = v1143;
      v1071 = v1145;
      v1070 = v1144;
      v1064 = v1138;
      v1065 = v1139;
      v1067 = v1141;
      v1066 = v1140;

      sub_1DB1E78A8(&v977, &v1064, v802);
      v807 = 0;
      sub_1DB17181C(&v1097);

      LOBYTE(v805) = v977;
      v808 = *(&v977 + 1);

      v1076 = v999;
      v1077 = v1000;
      v1078 = v1001;
      v1082 = *&v1025[16];
      v1083 = *&v1025[32];
      v1084 = *&v1025[48];
      v809 = *v1025;
      v1080 = v1024;
      v810 = v924;
      *v924 = v1008[0];
      *(v810 + 3) = *(v1008 + 3);
      v1085 = *&v1025[64];
      v1081 = v809;
      *&v1088[3] = *(&v987 + 3);
      *v1088 = v987;
      LOBYTE(v1075) = v923;
      *(&v1075 + 1) = v754;
      v1079 = v804;
      v1086 = v806;
      v1087 = v805;
      v1089 = v808;
      v437 = v902;
      v811 = v904;
      (*(v897 + 3))(&v1075, v904);
      (v903[4])(v896, v437, v811);
      LOBYTE(v1027) = v898;
      sub_1DB1355D0(v989, &v1027 + 8);
      sub_1DB1756AC(&v1009);
      v518 = v1059[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v437 = v1059;
        sub_1DB138640(0, *(v518 + 16) + 1, 1);
        v518 = v1059[0];
      }

      v14 = v909;
      v744 = v900;
      v813 = *(v518 + 16);
      v812 = *(v518 + 24);
      if (v813 >= v812 >> 1)
      {
        v437 = v1059;
        sub_1DB138640((v812 > 1), v813 + 1, 1);
        v744 = v900;
        v518 = v1059[0];
      }

      *(v518 + 16) = v813 + 1;
      v814 = (v518 + 48 * v813);
      v815 = v1027;
      v816 = v1029;
      v814[3] = v1028;
      v814[4] = v816;
      v814[2] = v815;
      if (v744 != v887)
      {
        v746 = v744 + 1;
        v745 = boxed_opaque_existential_0;
        if (v744 < *(v886 + 16))
        {
          continue;
        }

LABEL_508:
        __break(1u);
        goto LABEL_509;
      }

LABEL_420:
      LOBYTE(v1064) = BYTE8(v1109);
      *(&v1064 + 1) = v1110;
      v1094[4] = v1146;
      v1094[5] = v1147;
      v1095 = v1148;
      v1094[0] = v1142;
      v1094[1] = v1143;
      v1094[3] = v1145;
      v1094[2] = v1144;
      v1090 = v1138;
      v1091 = v1139;
      v1093 = v1141;
      v1092 = v1140;

      sub_1DB1E78A8(&v1075, &v1090, v967);
      v80 = v807;
      if (v807)
      {
LABEL_500:
        sub_1DB1759B0(&v1111);

        sub_1DB17181C(v1107);

        (*(v916 + 8))(v915, v917);
        v832 = v892;
        goto LABEL_458;
      }

      sub_1DB17181C(v1107);

      v817 = v1075;
      v818 = *(&v1075 + 1);

      v1098 = v1037;
      v1099 = v1038;
      v1100 = v1039;
      *(&v1101[2] + 8) = v1046;
      *(&v1101[3] + 8) = v1047;
      *(&v1101[4] + 8) = v1048;
      v819 = v1045;
      *(v1101 + 8) = v1044;
      v820 = v907;
      *v907 = v1020;
      *(v820 + 3) = *(&v1020 + 3);
      *(&v1101[5] + 1) = v1049;
      *(&v1101[1] + 8) = v819;
      HIDWORD(v1102) = *(&v1018 + 3);
      *(&v1102 + 9) = v1018;
      LOBYTE(v1097) = v926;
      *(&v1097 + 1) = v891;
      *&v1101[0] = v892;
      *&v1102 = v518;
      BYTE8(v1102) = v817;
      v1103 = v818;
      v821 = v915;
      v822 = v917;
      (*(v889 + 3))(&v1097, v917);
      (*(v916 + 32))(v888, v821, v822);
      v1132[8] = v1119;
      v1132[9] = v1120;
      v1132[10] = v1121;
      v1132[4] = v1115;
      v1132[5] = v1116;
      v1132[6] = v1117;
      v1132[7] = v1118;
      v1132[0] = v1111;
      v1132[1] = v1112;
      v1132[2] = v1113;
      v1132[3] = v1114;
      v1133 = v1122;
      v1134 = v914;
      v1135 = v890;
      sub_1DB1355D0(&v991, &v1136);
      sub_1DB17575C(v1125);
      v823 = v1137;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DB138620(0, *(v823 + 16) + 1, 1);
        v823 = v1137;
      }

      v824 = *(v823 + 16);
      sub_1DB13896C(v824);
      sub_1DB139038(v824, v1132);
      v81 = v908;
      if (v908 != v906)
      {
        v83 = v908 + 1;
        v82 = v905;
        if (*(v928 + 16) <= v908)
        {
          goto LABEL_474;
        }

        goto LABEL_4;
      }

      v79 = v1137;
      v826 = v930;
      v76 = v899;
LABEL_429:
      *v826 = v76;
      *(v826 + 8) = v79;
      return;
    }

    break;
  }

  sub_1DB1F89E4(&v1138);
  sub_1DB1759B0(&v1111);

  sub_1DB17181C(&v1097);
  sub_1DB17181C(v1107);
  (v903[1])(v902, v904);
  (*(v916 + 8))(v915, v917);
LABEL_457:
  LOBYTE(v1075) = v923;
  *(&v1075 + 1) = v1008[0];
  DWORD1(v1075) = *(v1008 + 3);
  *(&v1075 + 1) = v754;
  v1076 = v999;
  v1077 = v1000;
  v1078 = v1001;
  v1081 = *v1025;
  v1080 = v1024;
  v1079 = v893;
  v1085 = *&v1025[64];
  v1084 = *&v1025[48];
  v1083 = *&v1025[32];
  v1082 = *&v1025[16];
  v1086 = v894;
  v1087 = v895;
  *&v1088[3] = *(&v987 + 3);
  *v1088 = v987;
  v1089 = v901;
  sub_1DB17181C(&v1075);
  __swift_deallocate_boxed_opaque_existential_1(v989);
  sub_1DB1756AC(&v1009);

  v518 = v910;
  v832 = v892;
LABEL_458:
  v831 = v891;
LABEL_459:
  LOBYTE(v1097) = v926;
  *(&v1097 + 1) = v1020;
  DWORD1(v1097) = *(&v1020 + 3);
  *(&v1097 + 1) = v831;
  v1098 = v1037;
  v1099 = v1038;
  v1100 = v1039;
  *(&v1101[1] + 8) = v1045;
  *(v1101 + 8) = v1044;
  *&v1101[0] = v832;
  *(&v1101[5] + 1) = v1049;
  *(&v1101[4] + 8) = v1048;
  *(&v1101[3] + 8) = v1047;
  *(&v1101[2] + 8) = v1046;
  *&v1102 = v518;
  BYTE8(v1102) = v911;
  HIDWORD(v1102) = *(&v1018 + 3);
  *(&v1102 + 9) = v1018;
  v1103 = v918;
  sub_1DB17181C(&v1097);
  __swift_deallocate_boxed_opaque_existential_1(&v991);
LABEL_470:
  sub_1DB17575C(v1125);
}