uint64_t UserState.ExplicitContentTreatment.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D54EA7A4()
{
  result = qword_1EC7F7798;
  if (!qword_1EC7F7798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F77A0, &qword_1D566B7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7798);
  }

  return result;
}

unint64_t sub_1D54EA80C()
{
  result = qword_1EC7F77A8;
  if (!qword_1EC7F77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77A8);
  }

  return result;
}

_BYTE *_s24ExplicitContentTreatmentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D54EA970@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = nullsub_1(*a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1D54EA9A0()
{

  v0 = sub_1D54E86C0();
  if (v0 == 2)
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D568F910);
    MEMORY[0x1DA6EAC70](0x4D676E696B636F4CLL, 0xEB0000000065646FLL);
    MEMORY[0x1DA6EAC70](0x206D6F726620, 0xE600000000000000);
    sub_1D5615D48();
    sub_1D51D2CAC();
    swift_allocError();
    *v1 = 0;
    v1[1] = 0xE000000000000000;
    swift_willThrow();
  }

  else
  {
    v3 = v0;

    return v3 & 1;
  }
}

uint64_t sub_1D54EAAE8()
{

  v0 = sub_1D54E85DC();
  if (v0 == 6)
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D568F910);
    MEMORY[0x1DA6EAC70](0x4D6C616E72756F4ALL, 0xEB0000000065646FLL);
    MEMORY[0x1DA6EAC70](0x206D6F726620, 0xE600000000000000);
    sub_1D5615D48();
    sub_1D51D2CAC();
    swift_allocError();
    *v1 = 0;
    v1[1] = 0xE000000000000000;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_1D54EAC2C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*v2, a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D54EAC5C(char a1)
{
  result = 0x4554454C4544;
  switch(a1)
  {
    case 1:
      result = 0x455441434E555254;
      break;
    case 2:
      result = 0x54534953524550;
      break;
    case 3:
      result = 0x59524F4D454DLL;
      break;
    case 4:
      result = 4997463;
      break;
    case 5:
      result = 4605519;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D54EAD60(sqlite3_context *a1, char a2)
{
  sub_1D54E8628(a2);
  sub_1D54EC04C(a1);
}

sqlite3_stmt *sub_1D54EADE8(sqlite3_stmt *a1, uint64_t a2)
{
  result = sub_1D54EBE18(a1, a2);
  if (!v2)
  {

    v4 = sub_1D54E86C0();
    if (v4 == 2)
    {
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D568F910);
      MEMORY[0x1DA6EAC70](0x4D676E696B636F4CLL, 0xEB0000000065646FLL);
      MEMORY[0x1DA6EAC70](0x206D6F726620, 0xE600000000000000);
      sub_1D5615D48();
      sub_1D51D2CAC();
      swift_allocError();
      *v5 = 0;
      v5[1] = 0xE000000000000000;
      swift_willThrow();
    }

    else
    {
      v6 = v4;

      return (v6 & 1);
    }
  }

  return result;
}

unint64_t sub_1D54EAF38(sqlite3_stmt *a1, uint64_t a2)
{
  sub_1D54EBE18(a1, a2);
  if (!v2)
  {

    v4 = sub_1D54E85DC();
    if (v4 == 6)
    {
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D568F910);
      MEMORY[0x1DA6EAC70](0x4D6C616E72756F4ALL, 0xEB0000000065646FLL);
      MEMORY[0x1DA6EAC70](0x206D6F726620, 0xE600000000000000);
      sub_1D5615D48();
      v3 = 0xE000000000000000;
      sub_1D51D2CAC();
      swift_allocError();
      *v5 = 0;
      v5[1] = 0xE000000000000000;
      swift_willThrow();
    }

    else
    {
      v3 = v4;
    }
  }

  return v3;
}

sqlite3_stmt *sub_1D54EB088(sqlite3_stmt *result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_column_int64(result, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EB0D0(sqlite3_stmt *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0x564953554C435845;
  }

  else
  {
    v3 = 0x4C414D524F4ELL;
  }

  sub_1D54EBEB8(a1, a2, v3);
}

uint64_t sub_1D54EB13C(sqlite3_stmt *a1, uint64_t a2, char a3)
{
  v5 = sub_1D54E8628(a3);
  sub_1D54EBEB8(a1, a2, v5);
}

sqlite3_stmt *sub_1D54EB1A0(sqlite3_stmt *result, uint64_t a2, sqlite3_int64 a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_int64(result, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EB1E8(void *a1)
{
  OUTLINED_FUNCTION_7_135(a1);
  result = sub_1D54EAAE8();
  if (!v2)
  {
    *v1 = result;
  }

  return result;
}

uint64_t sub_1D54EB214@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D54EAC5C(*v1);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_1D54EB260@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D54EAF38(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1D54EB2A8(void *a1)
{
  OUTLINED_FUNCTION_7_135(a1);
  result = sub_1D54EA9A0();
  if (!v2)
  {
    *v1 = result & 1;
  }

  return result;
}

uint64_t sub_1D54EB2D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D54E8714(*v1);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

sqlite3_stmt *sub_1D54EB324@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D54EADE8(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_1D54EB370@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_1D4F48DE4(a1, a2);
}

uint64_t sub_1D54EB380@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1D54EB408(uint64_t result, uint64_t iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = iCol;
  if (iCol > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = result;
  result = sqlite3_column_type(result, iCol);
  if (result != 5)
  {
    OUTLINED_FUNCTION_16_93();
    sub_1D5615B68();

    sqlite3_column_type(v3, v2);
    v4 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v4);

    MEMORY[0x1DA6EAC70](0x65756C617620, 0xE600000000000000);
    sub_1D51D2CAC();
    OUTLINED_FUNCTION_121_0();
    *v5 = 0xD00000000000001ELL;
    v5[1] = 0x80000001D568F500;
    return swift_willThrow();
  }

  return result;
}

sqlite3_stmt *sub_1D54EB53C(sqlite3_stmt *result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_null(result, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EB59C(char a1)
{
  if (a1)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

sqlite3_stmt *sub_1D54EB5B0(sqlite3_stmt *result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return (sqlite3_column_int(result, a2) != 0);
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1D54EB600(sqlite3_stmt *result, uint64_t a2, char a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_int(result, a2, a3 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EB678@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D54EB378(*a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1D54EB6AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D54EB378(*v1);
  *a1 = result & 1;
  return result;
}

sqlite3_stmt *sub_1D54EB700@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D54EB5B0(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_1D54EB758@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*v2, a1);
  *a2 = result;
  return result;
}

sqlite3_int64 sub_1D54EB870(sqlite3_int64 result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sqlite3_column_int64(result, a2);
  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

sqlite3_stmt *sub_1D54EB8C0(sqlite3_stmt *result, uint64_t a2, sqlite3_int64 a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    return sqlite3_bind_int64(result, a2, a3);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D54EB910(sqlite3_context *a1, sqlite3_int64 a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    sqlite3_result_int64(a1, a2);
  }
}

uint64_t sub_1D54EB94C()
{
  OUTLINED_FUNCTION_16_93();
  sub_1D5615568();
  return v1;
}

void sub_1D54EB988(sqlite3_stmt *a1, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    sqlite3_column_double(a1, a2);
    return;
  }

  __break(1u);
}

sqlite3_stmt *sub_1D54EB9D0(sqlite3_stmt *result, uint64_t a2, double a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_double(result, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EBA40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = nullsub_1(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_1D54EBAC0(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1D54EB988(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t sub_1D54EBB14()
{
  OUTLINED_FUNCTION_16_93();
  sub_1D5615588();
  return v1;
}

void sub_1D54EBB50(sqlite3_stmt *a1, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    sqlite3_column_double(a1, a2);
    return;
  }

  __break(1u);
}

sqlite3_stmt *sub_1D54EBB9C(sqlite3_stmt *result, uint64_t a2, float a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_double(result, a2, a3);
  }

  __break(1u);
  return result;
}

void sub_1D54EBC14(int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = *a1;
  v6 = nullsub_1(a1, a2);
  if (!v3)
  {
    *a3 = LODWORD(v6);
  }
}

void sub_1D54EBC44(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = *v3;
  v6 = nullsub_1(a1, a2);
  *a3 = LODWORD(v6);
}

void sub_1D54EBC94(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  sub_1D54EBB50(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t sub_1D54EBCE8(uint64_t a1)
{
  if (a1)
  {
    result = sub_1D5614D28();
    if (v2)
    {
      return result;
    }

    OUTLINED_FUNCTION_16_93();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D56877D0);
    sub_1D5615D48();
    v4 = v6;
    v3 = v7;
    sub_1D51D2CAC();
    OUTLINED_FUNCTION_121_0();
  }

  else
  {
    v3 = 0x80000001D56877A0;
    sub_1D51D2CAC();
    OUTLINED_FUNCTION_121_0();
    v4 = 0xD00000000000002DLL;
  }

  *v5 = v4;
  v5[1] = v3;
  return swift_willThrow();
}

void sub_1D54EBDEC(void *a1)
{
  v3 = OUTLINED_FUNCTION_7_135(a1);
  nullsub_1(v3, v4);
  if (!v2)
  {
    *v1 = v5;
    v1[1] = v6;
  }
}

sqlite3_stmt *sub_1D54EBE18(sqlite3_stmt *result, uint64_t iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v2 = iCol;
    if (iCol <= 0x7FFFFFFF)
    {
      v3 = result;
      v4 = sqlite3_column_text(result, iCol);
      sqlite3_column_bytes(v3, v2);
      return sub_1D54EBCE8(v4);
    }
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1D54EBE8C@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, sqlite3_stmt **a3@<X8>)
{
  result = sub_1D54EBE18(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1D54EBEB8(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5614DA8();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1D5614D98();
  sub_1D4F53278();
  v15 = sub_1D5615998();
  result = (*(v9 + 8))(v14, v6);
  if (v15)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      a3 = *(v15 + 16);
      if (a3)
      {
        if (qword_1EDD56B70 == -1)
        {
LABEL_6:
          sqlite3_bind_text64(a1, a2, (v15 + 32), a3 - 1, qword_1EDD76B88, 1u);
        }

LABEL_10:
        OUTLINED_FUNCTION_0_252();
        goto LABEL_6;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EC04C(sqlite3_context *a1)
{
  v2 = sub_1D5614DA8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1D5614D98();
  sub_1D4F53278();
  v11 = sub_1D5615998();
  result = (*(v5 + 8))(v10, v2);
  if (v11)
  {
    v13 = *(v11 + 16);
    if (v13)
    {
      if (qword_1EDD56B70 == -1)
      {
LABEL_4:
        sqlite3_result_text64(a1, (v11 + 32), v13 - 1, qword_1EDD76B88, 1u);
      }
    }

    else
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_0_252();
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EC19C(sqlite3_context *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1D54EC04C(a1);
}

uint64_t sub_1D54EC1B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_2_186();
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_190();
  OUTLINED_FUNCTION_2_186();
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_190();
  v11 = OUTLINED_FUNCTION_11_119();
  v12(v11);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    return 1280070990;
  }

  v13 = OUTLINED_FUNCTION_10_120();
  v14(v13);
  (*(a2 + 16))(v4, a2);
  v15 = OUTLINED_FUNCTION_12_102();
  v16(v15);
  return v2;
}

void sub_1D54EC324()
{
  OUTLINED_FUNCTION_25_1();
  v26 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_2_186();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_190();
  v14 = v12 - v13;
  v16 = *(v15 + 16);
  OUTLINED_FUNCTION_2_186();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3_190();
  v24 = v22 - v23;
  (*(v8 + 16))(v14, v25);
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) != 1)
  {
    (*(v18 + 32))(v24, v14, v16);
    (*(v26 + 8))(v6, v4, v16);
    (*(v18 + 8))(v24, v16);
    goto LABEL_6;
  }

  (*(v8 + 8))(v14, v2);
  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v4 <= 0x7FFFFFFF)
  {
    sqlite3_bind_null(v6, v4);
LABEL_6:
    OUTLINED_FUNCTION_248();
    OUTLINED_FUNCTION_26();
    return;
  }

  __break(1u);
}

void sub_1D54EC530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = sub_1D56158D8();
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v40 = &a9 - v39;
  if (v28 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v28 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (sqlite3_column_type(v30, v28) == 5)
  {
    OUTLINED_FUNCTION_20_92(v32, 1);
  }

  else
  {
    (*(v24 + 8))(v30, v28, v26, v24);
    if (!v20)
    {
      OUTLINED_FUNCTION_20_92(v40, 0);
      (*(v36 + 32))(v32, v40, v33);
    }
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D54EC6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 16);
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

void sub_1D54EC710()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38 = v7;
  v8 = sub_1D56158D8();
  v9 = OUTLINED_FUNCTION_4(v8);
  v34 = v10;
  v35 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v33 - v13;
  v36 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1D56158D8();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v33 - v22;
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v21);
  v28 = &v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v33 - v29;
  (*(v18 + 16))(v23, v6, v15);
  if (__swift_getEnumTagSinglePayload(v23, 1, AssociatedTypeWitness) == 1)
  {
    v31 = *(v18 + 8);
    v31(v6, v15);
    v31(v23, v15);
    OUTLINED_FUNCTION_20_92(v38, 1);
  }

  else
  {
    (*(v24 + 32))(v30, v23, AssociatedTypeWitness);
    (*(v24 + 16))(v28, v30, AssociatedTypeWitness);
    v32 = v37;
    (*(v36 + 56))(v28, v4);
    (*(v18 + 8))(v6, v15);
    (*(v24 + 8))(v30, AssociatedTypeWitness);
    if (!v0)
    {
      OUTLINED_FUNCTION_20_92(v32, 0);
      (*(v34 + 32))(v38, v32, v35);
    }
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void sub_1D54ECA54()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_4(v3);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v16 = *(v15 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  (*(v9 + 16))(v14, v22, v4);
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    (*(v9 + 8))(v14, v4);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v24 = 1;
LABEL_5:
    __swift_storeEnumTagSinglePayload(v6, v24, 1, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v25 = OUTLINED_FUNCTION_15_93();
  v26(v25);
  (*(v2 + 64))(v16, v2);
  (*(v17 + 8))(v21, v16);
  if (!v0)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v24 = 0;
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void sub_1D54ECC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  sub_1D54EC710();
}

uint64_t sub_1D54ECCA0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v9 = *(*a3 + 8);
  a1[1] = swift_getWitnessTable();
  v8 = v4[2];
  a1[2] = swift_getWitnessTable();
  v7 = v4[3];
  a1[3] = swift_getWitnessTable();
  v6 = v4[4];
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_1D54ECD84(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v8 = *(*a3 + 8);
  a1[1] = swift_getWitnessTable();
  v7 = *(v4 + 16);
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  v6 = *(v4 + 32);
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_1D54ECEA8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a3 + 24);
  v7 = *(v4 + 8);
  a1[1] = swift_getWitnessTable();
  v6 = *(v4 + 16);
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D54ECF60(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_2_186();
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_190();
  OUTLINED_FUNCTION_2_186();
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_190();
  v11 = OUTLINED_FUNCTION_11_119();
  v12(v11);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    return 1280070990;
  }

  v13 = OUTLINED_FUNCTION_10_120();
  v14(v13);
  (*(a2 + 8))(v4, a2);
  v15 = OUTLINED_FUNCTION_12_102();
  v16(v15);
  return v2;
}

void sub_1D54ED0D4()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_2_186();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_190();
  v13 = v11 - v12;
  v15 = *(v14 + 16);
  OUTLINED_FUNCTION_2_186();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_3_190();
  v23 = v21 - v22;
  (*(v7 + 16))(v13, v24, v3);
  if (__swift_getEnumTagSinglePayload(v13, 1, v15) == 1)
  {
    (*(v7 + 8))(v13, v3);
    sqlite3_result_null(v5);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_15_93();
    v26(v25);
    (*(v1 + 16))(v5, v15, v1);
    (*(v17 + 8))(v23, v15);
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D54ED2A4()
{
  v0 = sub_1D560C178();
  MEMORY[0x1DA6EAC70](v0);

  return 0x28343665736162;
}

uint64_t sub_1D54ED308(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  if (a1)
  {
    return MEMORY[0x1DA6E1FA0](a1, a2);
  }

  sub_1D51D2CAC();
  OUTLINED_FUNCTION_121_0();
  *v3 = 0xD00000000000002BLL;
  v3[1] = 0x80000001D568F8E0;
  return swift_willThrow();
}

unint64_t sub_1D54ED3D8(uint64_t a1)
{
  result = sub_1D54ED400();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D54ED400()
{
  result = qword_1EC7F77B0;
  if (!qword_1EC7F77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77B0);
  }

  return result;
}

void sub_1D54ED454(sqlite3_context *a1, uint64_t a2, unint64_t a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  switch(a3 >> 62)
  {
    case 1uLL:
      if (a2 >> 32 < a2)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 = sub_1D560BCA8();
      if (!v11)
      {
        goto LABEL_14;
      }

      v15 = sub_1D560BCC8();
      if (__OFSUB__(a2, v15))
      {
LABEL_26:
        __break(1u);
      }

      v11 += a2 - v15;
LABEL_14:
      v14 = (a2 >> 32) - a2;
LABEL_15:
      v16 = sub_1D560BCB8();
      if (v16 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = v16;
      }

      v18 = v17 + v11;
      if (v11)
      {
        LODWORD(v7) = v18;
      }

      else
      {
        LODWORD(v7) = 0;
      }

      v8 = v11;
LABEL_22:
      sub_1D54ED66C(v8, v7, a1, a2, a3);
      sub_1D4E55E1C(a2, a3);
      if (v3)
      {

        __break(1u);
      }

      else
      {
        v19 = *MEMORY[0x1E69E9840];
      }

      return;
    case 2uLL:
      v9 = *(a2 + 16);
      v10 = *(a2 + 24);

      v11 = sub_1D560BCA8();
      if (!v11)
      {
        goto LABEL_6;
      }

      v12 = sub_1D560BCC8();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_25;
      }

      v11 += v9 - v12;
LABEL_6:
      v13 = __OFSUB__(v10, v9);
      v14 = v10 - v9;
      if (!v13)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_9:
      memset(v20, 0, 14);
      v8 = v20;
      v7 = v20;
      goto LABEL_22;
    case 3uLL:
      goto LABEL_9;
    default:
      v20[0] = a2;
      LOWORD(v20[1]) = a3;
      BYTE2(v20[1]) = BYTE2(a3);
      BYTE3(v20[1]) = BYTE3(a3);
      BYTE4(v20[1]) = BYTE4(a3);
      BYTE5(v20[1]) = BYTE5(a3);
      v7 = v20 + BYTE6(a3);
      v8 = v20;
      goto LABEL_22;
  }
}

void sub_1D54ED66C(void *a1, int a2, sqlite3_context *a3, uint64_t a4, unint64_t a5)
{
  v7 = 0;
  switch(a5 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        v7 = HIDWORD(a4) - a4;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v9 = *(a4 + 16);
      v8 = *(a4 + 24);
      v7 = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
LABEL_6:
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
LABEL_7:
          if (qword_1EDD56B70 == -1)
          {
LABEL_8:
            sqlite3_result_blob64(a3, a1, v7, qword_1EDD76B88);
            return;
          }
        }

        swift_once();
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
      return;
    case 3uLL:
      goto LABEL_7;
    default:
      v7 = BYTE6(a5);
      goto LABEL_7;
  }
}

sqlite3_stmt *sub_1D54ED764(sqlite3_stmt *result, uint64_t iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v2 = iCol;
    if (iCol <= 0x7FFFFFFF)
    {
      v3 = result;
      v4 = sqlite3_column_blob(result, iCol);
      v5 = sqlite3_column_bytes(v3, v2);
      return sub_1D54ED308(v4, v5);
    }
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1D54ED7DC@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, sqlite3_stmt **a3@<X8>)
{
  result = sub_1D54ED764(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1D54ED808(sqlite3_stmt *a1, int64_t a2, uint64_t a3, unint64_t a4)
{
  v29[2] = *MEMORY[0x1E69E9840];
  switch(a4 >> 62)
  {
    case 1uLL:
      if (a3 > a3 >> 32)
      {
        goto LABEL_36;
      }

      v13 = sub_1D560BCA8();
      if (!v13)
      {
        goto LABEL_26;
      }

      v23 = sub_1D560BCC8();
      if (__OFSUB__(a3, v23))
      {
        goto LABEL_46;
      }

      v13 += a3 - v23;
LABEL_26:
      sub_1D560BCB8();
      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_18_89();
      if (!(v8 ^ v9 | v7))
      {
        goto LABEL_43;
      }

      v24 = OUTLINED_FUNCTION_75_2();
      v16 = MEMORY[0x1DA6E1FB0](v24);
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_44;
    case 2uLL:
      goto LABEL_7;
    case 3uLL:
      goto LABEL_15;
    default:
      v29[0] = a3;
      LOWORD(v29[1]) = a4;
      BYTE2(v29[1]) = BYTE2(a4);
      BYTE3(v29[1]) = BYTE3(a4);
      BYTE4(v29[1]) = BYTE4(a4);
      BYTE5(v29[1]) = BYTE5(a4);
      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_18_89();
      if (!(v8 ^ v9 | v7))
      {
        goto LABEL_39;
      }

      v10 = OUTLINED_FUNCTION_75_2();
      v11 = MEMORY[0x1DA6E1FB0](v10);
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_7:
      v12 = *(a3 + 16);

      v13 = sub_1D560BCA8();
      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = sub_1D560BCC8();
      if (__OFSUB__(v12, v14))
      {
        goto LABEL_45;
      }

      v13 += v12 - v14;
LABEL_10:
      sub_1D560BCB8();
      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_18_89();
      if (!(v8 ^ v9 | v7))
      {
        goto LABEL_40;
      }

      v15 = OUTLINED_FUNCTION_75_2();
      v16 = MEMORY[0x1DA6E1FB0](v15);
      if (v16 < 0)
      {
        __break(1u);
LABEL_15:
        memset(v29, 0, 14);
        if (a2 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
        }

        OUTLINED_FUNCTION_18_89();
        if (!(v8 ^ v9 | v7))
        {
          goto LABEL_38;
        }

        v17 = OUTLINED_FUNCTION_75_2();
        v11 = MEMORY[0x1DA6E1FB0](v17);
        if (v11 < 0)
        {
          goto LABEL_42;
        }

LABEL_19:
        v18 = v11;
        if (qword_1EDD56B70 != -1)
        {
          OUTLINED_FUNCTION_0_252();
        }

        v19 = qword_1EDD76B88;
        v20 = v29;
        v21 = a1;
        v22 = a2;
      }

      else
      {
LABEL_30:
        v18 = v16;
        if (qword_1EDD56B70 != -1)
        {
          OUTLINED_FUNCTION_0_252();
        }

        v19 = qword_1EDD76B88;
        v21 = a1;
        v22 = a2;
        v20 = v13;
      }

      sqlite3_bind_blob64(v21, v22, v20, v18, v19);
      v25 = OUTLINED_FUNCTION_75_2();
      result = sub_1D4E55E1C(v25, v26);
      v28 = *MEMORY[0x1E69E9840];
      return result;
  }
}

unint64_t sub_1D54EDAFC()
{
  result = qword_1EC7F77B8;
  if (!qword_1EC7F77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77B8);
  }

  return result;
}

unint64_t sub_1D54EDB50(uint64_t a1)
{
  result = sub_1D54EDB78();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D54EDB78()
{
  result = qword_1EC7F77C0;
  if (!qword_1EC7F77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLDataType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D54EDCC0()
{
  result = qword_1EC7F77C8;
  if (!qword_1EC7F77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_92(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

void *sub_1D54EDDE0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6[72] = 1;
  LODWORD(__src[0]) = a1;
  __src[1] = a2;
  __src[2] = a3;
  __src[3] = MEMORY[0x1E69E7CC0];
  LOBYTE(__src[4]) = 0;
  __src[5] = 0;
  LOBYTE(__src[6]) = 1;
  __src[7] = 25;
  LOBYTE(__src[8]) = 0;
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = 0;
  v13 = 0;
  v14 = 1;
  v15 = 25;
  v16 = 0;
  sub_1D51D2D00(__src, v6);
  sub_1D51D2D5C(&v8);
  return memcpy(a4, __src, 0x41uLL);
}

uint64_t sub_1D54EDE80(sqlite3 *a1)
{
  v2 = v1;
  v4 = sub_1D5614DA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[3];
  v14[1] = v1[2];
  v14[2] = v9;

  sub_1D5614D98();
  sub_1D4F53278();
  v10 = sub_1D5615998();
  (*(v5 + 8))(v8, v4);

  if (qword_1EDD58488 != -1)
  {
    swift_once();
  }

  if (v10)
  {
    v11 = (v10 + 32);
  }

  else
  {
    v11 = 0;
  }

  swift_beginAccess();

  module_v2 = sqlite3_create_module_v2(a1, v11, &dword_1EDD76BC0, v2, sub_1D54EED08);
  swift_endAccess();

  return module_v2;
}

uint64_t sub_1D54EE030(uint64_t a1)
{
  switch(a1)
  {
    case '@':
      result = 5;
      break;
    case 'A':
      result = 6;
      break;
    case 'B':
      result = 7;
      break;
    case 'C':
      result = 8;
      break;
    case 'D':
      result = 9;
      break;
    case 'E':
      result = 10;
      break;
    case 'F':
      result = 11;
      break;
    case 'G':
      result = 12;
      break;
    case 'H':
      result = 13;
      break;
    case 'I':
      result = 14;
      break;
    case 'J':
      result = 15;
      break;
    default:
      if (a1 == 8)
      {
        v2 = 2;
      }

      else
      {
        v2 = 17;
      }

      if (a1 == 32)
      {
        v3 = 4;
      }

      else
      {
        v3 = v2;
      }

      if (a1 == 16)
      {
        v4 = 3;
      }

      else
      {
        v4 = v3;
      }

      if (a1 == 150)
      {
        v5 = 16;
      }

      else
      {
        v5 = v4;
      }

      if (a1 == 4)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      if (a1 == 2)
      {
        result = 0;
      }

      else
      {
        result = v6;
      }

      break;
  }

  return result;
}

uint64_t sub_1D54EE138@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D54EE030(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D54EE164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D54EE100(*v1);
  *a1 = result;
  return result;
}

void sub_1D54EE190(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v44 = a2[4];
  v5 = *(a2 + 3);
  v47 = *(a2 + 11);
  sub_1D4F032C4();
  v50 = v6;
  v51 = a1;
  if (v4 && v3)
  {
    v7 = 0;
    v48 = (v4 + 12 * v3);
    v45 = a1 + 32;
    v8 = (v4 + 4);
    do
    {
      v10 = v8 - 4;
      v9 = *(v8 - 1);
      if (v8[1])
      {
        v11 = sub_1D54EE030(*v8);
        if (v11 == 17)
        {

          sub_1D5615B68();

          v42 = sub_1D56160F8();
          MEMORY[0x1DA6EAC70](v42);

          sub_1D51D2CAC();
          swift_allocError();
          *v43 = 0xD000000000000024;
          v43[1] = 0x80000001D568F9E0;
          swift_willThrow();

          return;
        }

        if ((v9 & 0x80000000) != 0)
        {
          goto LABEL_38;
        }

        if (*(a1 + 16) <= v9)
        {
          goto LABEL_39;
        }

        v12 = v11;
        v13 = (v45 + 16 * v9);
        v14 = *v13;
        v15 = v13[1];
        v17 = *(v50 + 16);
        v16 = *(v50 + 24);

        if (v17 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_1_189();
          sub_1D4F032C4();
          v50 = v19;
        }

        *(v50 + 16) = v17 + 1;
        v18 = v50 + 40 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        *(v18 + 48) = v12;
        *(v18 + 49) = 1;
        *(v18 + 56) = v7;
        *(v18 + 64) = a2;
        a1 = v51;
      }

      v8 += 12;
      ++v7;
    }

    while (v10 + 12 != v48);
  }

  sub_1D4F031D0();
  v21 = v20;
  if (!v5 || !v44)
  {
LABEL_20:
    v52 = MEMORY[0x1E69E7CC0];
    v31 = *(a1 + 16);
    if (!v31)
    {
LABEL_32:

      return;
    }

    v32 = 0;
    v33 = (a1 + 40);
    v34 = MEMORY[0x1E69E7CC0];
    while (v32 <= 0x3F)
    {
      if ((v47 >> v32))
      {
        goto LABEL_26;
      }

LABEL_31:
      ++v32;
      v33 += 2;
      if (v31 == v32)
      {
        goto LABEL_32;
      }
    }

    if (*(a1 + 16) < 0x3FuLL)
    {
      goto LABEL_37;
    }

    sub_1D4EF3910();
    v34 = v52;
LABEL_26:
    v35 = *(v33 - 1);
    v36 = *v33;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = *(v34 + 16);
      sub_1D4F010A0();
      v34 = v40;
    }

    v37 = *(v34 + 16);
    if (v37 >= *(v34 + 24) >> 1)
    {
      OUTLINED_FUNCTION_1_189();
      sub_1D4F010A0();
      v34 = v41;
    }

    *(v34 + 16) = v37 + 1;
    v38 = v34 + 16 * v37;
    *(v38 + 32) = v35;
    *(v38 + 40) = v36;
    v52 = v34;
    a1 = v51;
    goto LABEL_31;
  }

  v49 = &v5[2 * v44];
  while (1)
  {
    v22 = *v5;
    if ((v22 & 0x80000000) != 0)
    {
      break;
    }

    if (*(a1 + 16) <= v22)
    {
      goto LABEL_36;
    }

    v23 = *(v5 + 4);
    v24 = (a1 + 32 + 16 * v22);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(v21 + 16);
    v28 = *(v21 + 24);

    if (v27 >= v28 >> 1)
    {
      OUTLINED_FUNCTION_1_189();
      sub_1D4F031D0();
      v21 = v30;
    }

    *(v21 + 16) = v27 + 1;
    v29 = v21 + 24 * v27;
    *(v29 + 32) = v25;
    *(v29 + 40) = v26;
    *(v29 + 48) = v23 != 0;
    v5 += 2;
    if (v5 == v49)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

char *sub_1D54EE59C(char *result)
{
  v2 = v1;
  v3 = result;
  v4 = *v1;
  v6 = *(v1 + 1);
  v5 = *(v1 + 2);
  *(result + 10) = v4;
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D561C050;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D51D2C58();
    *(inited + 32) = v6;
    *(inited + 40) = v5;

    v8 = sub_1D5616468();
    swift_setDeallocating();
    sub_1D4EFF2B4();
    result = sqlite3_vmprintf("%s", v8);
    *(v3 + 6) = result;
    *(v3 + 14) = 1;
  }

  v9 = *(v2 + 3);
  v10 = *(v9 + 16);
  v11 = (v9 + 72);
  v12 = 1;
  v13 = 0x7FFFFFFFLL;
  if (v10)
  {
    while (1)
    {
      v14 = *(v3 + 4);
      if (!v14)
      {
        break;
      }

      if (!v13)
      {
        __break(1u);
        break;
      }

      v15 = *(v11 - 2);
      v16 = *v11;
      v11 += 48;
      v17 = v14 + 8 * v15;
      *v17 = v12;
      *(v17 + 4) = v16;
      --v13;
      ++v12;
      if (!--v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    if ((v2[12] & 1) == 0)
    {
      *(v3 + 8) = *(v2 + 5);
    }

    *(v3 + 9) = *(v2 + 7);
    if (v2[16])
    {
      *(v3 + 20) = 1;
    }
  }

  return result;
}

double sub_1D54EE6E4()
{
  dword_1EDD76BC0 = 4;
  unk_1EDD76BC4 = 0;
  dword_1EDD76BCC = 0;
  qword_1EDD76BD0 = sub_1D54EE92C;
  qword_1EDD76BD8 = sub_1D54EE9A8;
  qword_1EDD76BE0 = sub_1D54EEA14;
  unk_1EDD76BE8 = 0;
  qword_1EDD76BF0 = sub_1D54EEA90;
  qword_1EDD76BF8 = sub_1D54EEAFC;
  qword_1EDD76C00 = sub_1D54EEBC4;
  qword_1EDD76C08 = sub_1D54EEC2C;
  qword_1EDD76C10 = sub_1D54EEC40;
  qword_1EDD76C18 = sub_1D54EECCC;
  qword_1EDD76C20 = sub_1D54EED04;
  result = 0.0;
  unk_1EDD76C28 = 0u;
  unk_1EDD76C38 = 0u;
  unk_1EDD76C48 = 0u;
  unk_1EDD76C58 = 0u;
  unk_1EDD76C68 = 0u;
  unk_1EDD76C78 = 0u;
  return result;
}

uint64_t sub_1D54EE7BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);

  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a5)
  {

    v9 = v8(v6, a5);
    sub_1D4EA7420(v8);

    return v9;
  }

LABEL_9:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1D54EE930(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = *(result + 24);
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    v6 = *(v3 + 80);
    v5 = *(v3 + 88);

    v7 = v6(v2, a2);

    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D54EE9AC(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      v4 = *(v2 + 64);
      v3 = *(v2 + 72);

      v4(v1);

      sqlite3_free(v1);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EEA18(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = *(result + 24);
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    v6 = *(v3 + 96);
    v5 = *(v3 + 104);

    v7 = v6(v2, a2);

    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D54EEA94(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      v4 = *(v2 + 112);
      v3 = *(v2 + 120);

      v4(v1);

      sqlite3_free(v1);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EEB00(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v8 = result;
  if (a3)
  {
    result = sub_1D5614E98();
    v9 = result;
    v11 = v10;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = 0;
  v11 = 0;
  if (!result)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = *(v8 + 8);
  if (v12)
  {
    v14 = *(v12 + 128);
    v13 = *(v12 + 136);

    v15 = v14(v8, a2, v9, v11, a5, a4);

    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D54EEBC8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v4 = *(v2 + 144);
      v3 = *(v2 + 152);

      v5 = v4(v1);

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EEC30(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54EEC44(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  v4 = *(result + 8);
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    v8 = *(v4 + 160);
    v7 = *(v4 + 168);

    v9 = v8(v3, a2, a3);

    return v9;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D54EECD0(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 24))
    {
      return 12;
    }

    if (a2)
    {
      result = 0;
      *a2 = *(v2 + 16);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D54EED0C()
{
  v1 = v0[3];

  v2 = v0[7];
  sub_1D4EA7420(v0[6]);
  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[19];

  v9 = v0[21];

  return v0;
}

uint64_t sub_1D54EED6C()
{
  sub_1D54EED0C();

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D54EEDD8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D54EEE2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D54EEE94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D54EEEE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1D54EEF64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1D54EEFA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D54EF004(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1D54EF044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1D54EF0A4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D54EF180()
{
  result = qword_1EC7F77D0;
  if (!qword_1EC7F77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77D0);
  }

  return result;
}

uint64_t sub_1D54EF1D8(uint64_t a1, uint64_t a2)
{
  switch(BYTE4(a1))
  {
    case 1:
      if (BYTE4(a2) != 1)
      {
        return 0;
      }

      goto LABEL_27;
    case 2:
      if (BYTE4(a2) != 2)
      {
        return 0;
      }

      goto LABEL_43;
    case 3:
      if (BYTE4(a2) != 3)
      {
        return 0;
      }

      goto LABEL_31;
    case 4:
      if (BYTE4(a2) != 4)
      {
        return 0;
      }

      goto LABEL_43;
    case 5:
      if (BYTE4(a2) == 5)
      {
        goto LABEL_27;
      }

      return 0;
    case 6:
      if (BYTE4(a2) == 6)
      {
        goto LABEL_35;
      }

      return 0;
    case 7:
      if (BYTE4(a2) != 7)
      {
        return 0;
      }

      if (a1 == 33)
      {
        if (a2 == 33)
        {
          return OUTLINED_FUNCTION_53_0();
        }
      }

      else if (a2 != 33)
      {
        goto LABEL_58;
      }

      return 0;
    case 8:
      if (BYTE4(a2) != 8)
      {
        return 0;
      }

LABEL_43:
      if (a1 == 3)
      {
        if (a2 == 3)
        {
          return OUTLINED_FUNCTION_53_0();
        }
      }

      else if (a2 != 3)
      {
        goto LABEL_58;
      }

      return 0;
    case 9:
      if (BYTE4(a2) != 9)
      {
        return 0;
      }

LABEL_35:
      if (a1 == 6)
      {
        if (a2 == 6)
        {
          return OUTLINED_FUNCTION_53_0();
        }
      }

      else if (a2 != 6)
      {
        goto LABEL_58;
      }

      return 0;
    case 0xA:
      if (BYTE4(a2) != 10)
      {
        return 0;
      }

      if (a1 == 12)
      {
        if (a2 == 12)
        {
          return OUTLINED_FUNCTION_53_0();
        }

        return 0;
      }

      if (a2 == 12)
      {
        return 0;
      }

LABEL_58:
      if (a2 == a1)
      {
        return OUTLINED_FUNCTION_53_0();
      }

      return 0;
    case 0xB:
      if (BYTE4(a2) != 11)
      {
        return 0;
      }

      goto LABEL_31;
    case 0xC:
      if (BYTE4(a2) != 12)
      {
        return 0;
      }

LABEL_27:
      if (a1 == 2)
      {
        if (a2 == 2)
        {
          return OUTLINED_FUNCTION_53_0();
        }
      }

      else if (a2 != 2 && ((a2 ^ a1) & 1) == 0)
      {
        return OUTLINED_FUNCTION_53_0();
      }

      return 0;
    case 0xD:
      if (BYTE4(a2) != 13)
      {
        return 0;
      }

LABEL_31:
      if ((a1 & 1) == 0)
      {
        if (a2)
        {
          return 0;
        }

        return OUTLINED_FUNCTION_53_0();
      }

      if (a2)
      {
        return OUTLINED_FUNCTION_53_0();
      }

      return 0;
    case 0xE:
      switch(a1)
      {
        case 1:
          if (BYTE4(a2) != 14 || a2 != 1)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 2:
          if (BYTE4(a2) != 14 || a2 != 2)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 3:
          if (BYTE4(a2) != 14 || a2 != 3)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 4:
          if (BYTE4(a2) != 14 || a2 != 4)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 5:
          if (BYTE4(a2) != 14 || a2 != 5)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 6:
          if (BYTE4(a2) != 14 || a2 != 6)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 7:
          if (BYTE4(a2) != 14 || a2 != 7)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 8:
          if (BYTE4(a2) != 14 || a2 != 8)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 9:
          if (BYTE4(a2) != 14 || a2 != 9)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 10:
          if (BYTE4(a2) != 14 || a2 != 10)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 11:
          if (BYTE4(a2) != 14 || a2 != 11)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 12:
          if (BYTE4(a2) != 14 || a2 != 12)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 13:
          if (BYTE4(a2) != 14 || a2 != 13)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 14:
          if (BYTE4(a2) != 14 || a2 != 14)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 15:
          if (BYTE4(a2) != 14 || a2 != 15)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 16:
          if (BYTE4(a2) != 14 || a2 != 16)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        case 17:
          if (BYTE4(a2) != 14 || a2 != 17)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
        default:
          if (BYTE4(a2) != 14 || a2)
          {
            return 0;
          }

          return OUTLINED_FUNCTION_53_0();
      }

    default:
      if (BYTE4(a2))
      {
        return 0;
      }

      return a1 == a2;
  }
}

uint64_t sub_1D54EF4CC(unsigned int a1)
{
  v1 = 0;
  v2 = a1 & 0xFFFFFF00;
  v3 = 0xE00000000;
  switch(a1)
  {
    case 0:
      v3 = 0x100000000;
      v4 = v2 == 512;
      v5 = 0x100000000;
      v6 = 0x100000000;
      goto LABEL_38;
    case 1:
      v3 = 0x200000000;
      v7 = 0x200000000;
      v8 = v2 == 512;
      v6 = 0x200000000;
      v9 = 0x200000000;
      goto LABEL_23;
    case 2:
      return v3 | v1;
    case 3:
      v1 = 1;
      return v3 | v1;
    case 4:
      v1 = v2 != 512;
      v3 = 0x300000000;
      return v3 | v1;
    case 5:
      v3 = 0x400000000;
      v7 = 0x400000000;
      v8 = v2 == 512;
      v6 = 0x400000000;
      v9 = 0x400000000;
      goto LABEL_23;
    case 6:
      v3 = 0x500000000;
      v4 = v2 == 512;
      v5 = 0x500000000;
      v6 = 0x500000000;
      goto LABEL_38;
    case 7:
      v1 = 2;
      return v3 | v1;
    case 8:
      if ((a1 - 256) >> 8 >= 6)
      {
        v1 = 6;
      }

      else
      {
        v1 = (a1 - 256) >> 8;
      }

      v3 = 0x600000000;
      return v3 | v1;
    case 9:
      v1 = 3;
      return v3 | v1;
    case 10:
      if ((a1 - 256) >> 8 >= 0x21)
      {
        v1 = 33;
      }

      else
      {
        v1 = (a1 - 256) >> 8;
      }

      v3 = 0x700000000;
      return v3 | v1;
    case 11:
      v3 = 0x800000000;
      v7 = 0x800000000;
      v8 = v2 == 512;
      v6 = 0x800000000;
      v9 = 0x800000000;
LABEL_23:
      if (v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = 3;
      }

      if (v8)
      {
        v6 = v9;
      }

      if (v2 == 768)
      {
        v11 = 2;
      }

      else
      {
        v11 = v10;
      }

      if (v2 == 768)
      {
        v6 = v7;
      }

      goto LABEL_43;
    case 12:
      v1 = 4;
      return v3 | v1;
    case 13:
      v1 = 5;
      return v3 | v1;
    case 14:
      if ((a1 - 256) >> 8 >= 6)
      {
        v1 = 6;
      }

      else
      {
        v1 = (a1 - 256) >> 8;
      }

      v3 = 0x900000000;
      return v3 | v1;
    case 15:
      v1 = 6;
      return v3 | v1;
    case 16:
      v1 = 7;
      return v3 | v1;
    case 17:
      v1 = 8;
      return v3 | v1;
    case 18:
      v1 = 9;
      return v3 | v1;
    case 19:
      if ((a1 - 256) >> 8 >= 0xC)
      {
        v1 = 12;
      }

      else
      {
        v1 = (a1 - 256) >> 8;
      }

      v3 = 0xA00000000;
      return v3 | v1;
    case 20:
      v1 = 10;
      return v3 | v1;
    case 21:
      v1 = 11;
      return v3 | v1;
    case 22:
      v1 = 12;
      return v3 | v1;
    case 23:
      v1 = v2 != 256;
      v3 = 0xB00000000;
      return v3 | v1;
    case 24:
      v1 = 13;
      return v3 | v1;
    case 25:
      v1 = 14;
      return v3 | v1;
    case 26:
      v1 = 15;
      return v3 | v1;
    case 27:
      v3 = 0xC00000000;
      v4 = v2 == 512;
      v5 = 0xC00000000;
      v6 = 0xC00000000;
LABEL_38:
      if (v4)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (!v4)
      {
        v6 = v5;
      }

LABEL_43:
      if (v2 == 256)
      {
        v1 = 0;
      }

      else
      {
        v1 = v11;
      }

      if (v2 != 256)
      {
        v3 = v6;
      }

      break;
    case 28:
      v1 = v2 != 256;
      v3 = 0xD00000000;
      break;
    default:
      v1 = a1;
      v3 = 0;
      break;
  }

  return v3 | v1;
}

uint64_t sub_1D54EF774(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D54EF7D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D54EF840(uint64_t a1)
{
  v2 = sub_1D54EF9DC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D54EF87C(uint64_t a1)
{
  v2 = sub_1D54EF9DC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D54EF8DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D8, &qword_1D561C200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D561C050;
  v2 = *MEMORY[0x1E696A278];
  *(inited + 32) = sub_1D5614D68();
  *(inited + 40) = v3;
  v8 = *(v0 + 16);
  v7 = v8;
  sub_1D508AD84(&v8, &v6);
  MEMORY[0x1DA6EAC70](2112032, 0xE300000000000000);
  MEMORY[0x1DA6EAC70](*(v0 + 32), *(v0 + 40));
  v4 = v7;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  return sub_1D5614BD8();
}

unint64_t sub_1D54EF9DC()
{
  result = qword_1EC7F77D8;
  if (!qword_1EC7F77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77D8);
  }

  return result;
}

uint64_t sub_1D54EFA3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF2 && *(a1 + 5))
    {
      v2 = *a1 + 241;
    }

    else
    {
      v3 = *(a1 + 4);
      if (v3 <= 0xE)
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

uint64_t sub_1D54EFA7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 4) = 0;
    *result = a2 - 242;
    if (a3 >= 0xF2)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D54EFAC0(uint64_t a1)
{
  if (*(a1 + 4) <= 0xDu)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 14);
  }
}

uint64_t sub_1D54EFAD8(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xE)
  {
    *result = a2 - 14;
    LOBYTE(a2) = 14;
  }

  *(result + 4) = a2;
  return result;
}

_BYTE *sub_1D54EFB20(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D54EFC10(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE0)
  {
    if (a2 + 32 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 32) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 33;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v5 = v6 - 33;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1D54EFC98(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
          *result = a2 + 32;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D54EFD70(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_4_147(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_4_147(v8);
}

_BYTE *sub_1D54EFDF4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_7_136(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_5_145(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_6_148(result, v6);
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
          result = OUTLINED_FUNCTION_35(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D54EFED4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D54EFF7C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_4_147(-1);
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
      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_4_147(v8);
}

_BYTE *sub_1D54F0000(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_7_136(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_5_145(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_6_148(result, v6);
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
          result = OUTLINED_FUNCTION_35(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D54F00D4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_4_147(-1);
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
      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_4_147((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_4_147(v8);
}

_BYTE *sub_1D54F0158(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_7_136(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_5_145(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_6_148(result, v6);
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
          result = OUTLINED_FUNCTION_35(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D54F0224()
{
  result = qword_1EC7F77E0;
  if (!qword_1EC7F77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77E0);
  }

  return result;
}

unint64_t sub_1D54F027C()
{
  result = qword_1EC7F77E8;
  if (!qword_1EC7F77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77E8);
  }

  return result;
}

unint64_t sub_1D54F02D4()
{
  result = qword_1EC7F77F0;
  if (!qword_1EC7F77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77F0);
  }

  return result;
}

unint64_t sub_1D54F032C()
{
  result = qword_1EC7F77F8;
  if (!qword_1EC7F77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F77F8);
  }

  return result;
}

unint64_t sub_1D54F0384()
{
  result = qword_1EC7F7800;
  if (!qword_1EC7F7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7800);
  }

  return result;
}

unint64_t sub_1D54F03DC()
{
  result = qword_1EC7F7808;
  if (!qword_1EC7F7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7808);
  }

  return result;
}

unint64_t sub_1D54F0434()
{
  result = qword_1EC7F7810;
  if (!qword_1EC7F7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7810);
  }

  return result;
}

unint64_t sub_1D54F048C()
{
  result = qword_1EC7F7818;
  if (!qword_1EC7F7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7818);
  }

  return result;
}

unint64_t sub_1D54F04E4()
{
  result = qword_1EC7F7820;
  if (!qword_1EC7F7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7820);
  }

  return result;
}

unint64_t sub_1D54F053C()
{
  result = qword_1EC7F7828;
  if (!qword_1EC7F7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7828);
  }

  return result;
}

unint64_t sub_1D54F0594()
{
  result = qword_1EC7F7830;
  if (!qword_1EC7F7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7830);
  }

  return result;
}

unint64_t sub_1D54F05EC()
{
  result = qword_1EC7F7838;
  if (!qword_1EC7F7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7838);
  }

  return result;
}

unint64_t sub_1D54F0644()
{
  result = qword_1EC7F7840;
  if (!qword_1EC7F7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7840);
  }

  return result;
}

uint64_t sub_1D54F06B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_1D54F06F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1D54F076C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D54F07A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D54F07FC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 80) = a2;
  return result;
}

void sub_1D54F0834(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  OUTLINED_FUNCTION_0_253(a1);
}

void sub_1D54F083C(uint64_t a1, uint64_t a2)
{
  if (__OFADD__(a2, 2))
  {
    __break(1u);
  }

  else
  {
    sub_1D4F0029C();
  }
}

uint64_t sub_1D54F088C(uint64_t a1, uint64_t a2)
{

  sub_1D4EFF470();
  v5 = *(*v2 + 16);
  result = sub_1D4EFF6D8(v5);
  v7 = *v2;
  *(v7 + 16) = v5 + 1;
  v8 = v7 + 80 * v5;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 104) = 0;
  *v2 = v7;
  return result;
}

uint64_t sub_1D54F08F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  result = sub_1D54F0A30();
  v7 = *(a4 + 16);
  if (v7)
  {

    v8 = a2;

    v9 = a1;
    v10 = a3;
    v11 = a4;
LABEL_5:

    *a5 = v9;
    *(a5 + 8) = v8;
    *(a5 + 16) = v10;
    *(a5 + 24) = v11;
    *(a5 + 32) = v7 != 0;
    return result;
  }

  if (a3)
  {
    v9 = a2;

    v10 = 0;
    v11 = 0;
    v8 = a3;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54F0A30()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  v32 = 0;
  v33 = 0xE000000000000000;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = *v1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D54F1BBC(v4, v26);
      if (v31)
      {
        if (v31 == 1)
        {
          sub_1D4E48324(v26, v24);
          MEMORY[0x1DA6EAC70](63, 0xE100000000000000);
          __src[0] = *(v5 + 16) + 1;
          __src[1] = 0;
          LOBYTE(__src[2]) = 0;
          sub_1D4E628D4(v24, &__src[3]);
          LOBYTE(__src[10]) = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D4F0036C();
            v5 = v14;
          }

          v6 = *(v5 + 16);
          if (v6 >= *(v5 + 24) >> 1)
          {
            sub_1D4F0036C();
            v5 = v15;
          }

          __swift_destroy_boxed_opaque_existential_1(v24);
          *(v5 + 16) = v6 + 1;
          memcpy((v5 + 88 * v6 + 32), __src, 0x51uLL);
        }

        else
        {
          v7 = v27;
          v8 = v28;
          v10 = v29;
          v9 = v30;
          sub_1D4E48324(v26, v24);
          __src[0] = v7;
          __src[1] = v8;
          MEMORY[0x1DA6EAC70](2703144, 0xE300000000000000);
          MEMORY[0x1DA6EAC70](__src[0], __src[1]);

          __src[0] = *(v5 + 16) + 1;
          __src[1] = 0;
          LOBYTE(__src[2]) = 0;
          v11 = v25;
          v12 = __swift_project_boxed_opaque_existential_1(v24, v25);
          sub_1D54F0CEC(v12, v11, &__src[3]);
          __src[8] = v10;
          __src[9] = v9;
          LOBYTE(__src[10]) = 1;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = *(v5 + 16);
            sub_1D4F0036C();
            v5 = v17;
          }

          v13 = *(v5 + 16);
          if (v13 >= *(v5 + 24) >> 1)
          {
            sub_1D4F0036C();
            v5 = v18;
          }

          *(v5 + 16) = v13 + 1;
          memcpy((v5 + 88 * v13 + 32), __src, 0x51uLL);
          __swift_destroy_boxed_opaque_existential_1(v24);
        }
      }

      else
      {
        MEMORY[0x1DA6EAC70](*&v26[0], *(&v26[0] + 1));
      }

      v4 += 80;
      --v3;
    }

    while (v3);
    v19 = v32;
    v2 = v33;
  }

  else
  {
    v19 = 0;
    v5 = MEMORY[0x1E69E7CC0];
  }

  v20 = v1[2];

  v1[1] = v19;
  v1[2] = v2;
  if (!*(v5 + 16))
  {
  }

  v21 = v1[3];

  v1[3] = v5;
  return result;
}

uint64_t sub_1D54F0CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s12ReferenceBoxCMa();
  (*(v6 + 16))(v9, a1, a2);
  result = sub_1D54E1628(v9);
  a3[3] = v10;
  a3[4] = &off_1F50BF670;
  *a3 = result;
  return result;
}

uint64_t sub_1D54F0DD8(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_1D54F1BBC(v2, v16);
      if (v17)
      {
        if (v17 == 1)
        {
          sub_1D4E48324(v16, v13);
          v3 = v14;
          v4 = v15;
          __swift_project_boxed_opaque_existential_1(v13, v14);
          v5 = (*(v4 + 16))(v3, v4);
          v7 = v6;
          swift_beginAccess();
          MEMORY[0x1DA6EAC70](v5, v7);
          swift_endAccess();
        }

        else
        {

          sub_1D4E48324(v16, v13);
          v9 = v14;
          v10 = v15;
          v11 = __swift_project_boxed_opaque_existential_1(v13, v14);
          sub_1D54F0F5C(v11, v18, v9, v10);
        }

        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
        v8 = v16[0];
        swift_beginAccess();
        MEMORY[0x1DA6EAC70](v8, *(&v8 + 1));
        swift_endAccess();
      }

      v2 += 80;
      --v1;
    }

    while (v1);
  }

  swift_beginAccess();
  return v18[0];
}

uint64_t sub_1D54F0F5C(void (**a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a1;
  v6 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = v44 - v9;
  v56 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = sub_1D56158D8();
  v46 = *(v53 - 8);
  v11 = *(v46 + 64);
  v12 = MEMORY[0x1EEE9AC00](v53);
  v52 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v51 = v44 - v14;
  v45 = sub_1D5615E58();
  v15 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44[1] = v44 - v16;
  v48 = v6;
  v54 = sub_1D5615E48();
  v44[0] = *(v54 - 8);
  v17 = *(v44[0] + 64);
  MEMORY[0x1EEE9AC00](v54);
  v55 = v44 - v18;
  swift_beginAccess();
  MEMORY[0x1DA6EAC70](0x205443454C455328, 0xE800000000000000);
  swift_endAccess();
  v19 = (*(a4 + 16))(a3, a4);
  v20 = *(v19 + 16);
  v62 = (v20 - 1);
  v59 = v20;
  v60 = v19;
  v21 = (v19 + 40);
  v22 = v20;
  v23 = 0;
  if (v20)
  {
    while (v23 < *(v60 + 16))
    {
      v58 = v22;
      v24 = *(v21 - 1);
      v25 = *v21;
      v26 = v21;
      v64 = 0x6E6D756C6F63;
      v65 = 0xE600000000000000;
      v57 = (v23 + 1);
      v63 = v23 + 1;

      v27 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v27);

      MEMORY[0x1DA6EAC70](542327072, 0xE400000000000000);
      MEMORY[0x1DA6EAC70](v24, v25);

      v28 = v64;
      v29 = v65;
      swift_beginAccess();
      MEMORY[0x1DA6EAC70](v28, v29);
      swift_endAccess();

      if (v23 != v62)
      {
        swift_beginAccess();
        MEMORY[0x1DA6EAC70](8236, 0xE200000000000000);
        swift_endAccess();
      }

      v21 = v26 + 3;
      v23 = v57;
      v22 = (v58 - 1);
      if (v58 == 1)
      {
        goto LABEL_6;
      }
    }

LABEL_19:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_6:
    swift_beginAccess();
    MEMORY[0x1DA6EAC70](0x5628204D4F524620, 0xEE00205345554C41);
    swift_endAccess();
    MEMORY[0x1DA6EAE20](a3, v48);
    sub_1D5615E28();
    v57 = (v46 + 32);
    v49 = (v47 + 32);
    v47 += 8;
    v48 = (v60 + 40);
    while (1)
    {
      v30 = TupleTypeMetadata2;
      v31 = v52;
      sub_1D5615E38();
      v32 = v51;
      (*v57)(v51, v31, v53);
      if (__swift_getEnumTagSinglePayload(v32, 1, v30) == 1)
      {
        break;
      }

      v58 = *v32;
      (*v49)(v61, &v32[*(v30 + 48)], v56);
      swift_beginAccess();
      MEMORY[0x1DA6EAC70](8232, 0xE200000000000000);
      swift_endAccess();
      v33 = 0;
      v34 = v48;
      while (v59 != v33)
      {
        if (v33 >= *(v60 + 16))
        {
          __break(1u);
          goto LABEL_19;
        }

        v35 = *(v34 - 1);
        v36 = *v34;
        v37 = *(a4 + 32);

        v37(&v64, v35, v36, v61, a3, a4);

        v39 = v66;
        v38 = v67;
        __swift_project_boxed_opaque_existential_1(&v64, v66);
        v40 = (*(*(v38 + 8) + 8))(v39);
        v42 = v41;
        swift_beginAccess();
        MEMORY[0x1DA6EAC70](v40, v42);
        swift_endAccess();

        if (v62 != v33)
        {
          swift_beginAccess();
          MEMORY[0x1DA6EAC70](8236, 0xE200000000000000);
          swift_endAccess();
        }

        __swift_destroy_boxed_opaque_existential_1(&v64);
        v34 += 3;
        v33 = (v33 + 1);
      }

      swift_beginAccess();
      MEMORY[0x1DA6EAC70](10528, 0xE200000000000000);
      swift_endAccess();
      if (v58 != v62)
      {
        swift_beginAccess();
        MEMORY[0x1DA6EAC70](8236, 0xE200000000000000);
        swift_endAccess();
      }

      (*v47)(v61, v56);
    }

    (*(v44[0] + 8))(v55, v54);

    swift_beginAccess();
    MEMORY[0x1DA6EAC70](2697504, 0xE300000000000000);
    return swift_endAccess();
  }

  return result;
}

void sub_1D54F1734(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1D54F083C(a1, a2);
  *a3 = v4;
  a3[1] = 0;
  v5 = MEMORY[0x1E69E7CC0];
  a3[2] = 0;
  a3[3] = v5;
}

uint64_t sub_1D54F1774()
{
  v1 = sub_1D560BAB8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[1];
  if ((v0[4] & 1) == 0)
  {
    v11 = *v0;
    goto LABEL_5;
  }

  if (v0[2])
  {
    v11 = v0[1];
    v10 = v0[2];
LABEL_5:
    v13[0] = v11;
    v13[1] = v10;
    sub_1D560BAA8();
    sub_1D4F53278();
    v12 = sub_1D5615958();
    (*(v4 + 8))(v9, v1);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54F188C()
{
  v1 = *(v0 + 8);
  v2 = sub_1D560BAB8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  if (*(v0 + 32))
  {
    v10 = sub_1D54F0DD8(*v0);
    v1 = v11;
  }

  else
  {
  }

  v14[0] = v10;
  v14[1] = v1;
  sub_1D560BAA8();
  sub_1D4F53278();
  v12 = sub_1D5615958();
  (*(v5 + 8))(v9, v2);

  return v12;
}

double sub_1D54F19B0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D54F0834(v5, *a1, a1[1]);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_1D54F19FC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D54F08F4(*a1, a1[1], a1[2], a1[3], v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

unint64_t sub_1D54F1A50()
{
  result = qword_1EC7F7848;
  if (!qword_1EC7F7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7848);
  }

  return result;
}

unint64_t sub_1D54F1AA8()
{
  result = qword_1EC7F7850;
  if (!qword_1EC7F7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7850);
  }

  return result;
}

unint64_t sub_1D54F1B00()
{
  result = qword_1EC7F7858;
  if (!qword_1EC7F7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7858);
  }

  return result;
}

unint64_t sub_1D54F1B58()
{
  result = qword_1EC7F7860;
  if (!qword_1EC7F7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7860);
  }

  return result;
}

uint64_t sub_1D54F1BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  if (*(a1 + 32))
  {
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = *a2;
    v11 = *(a2 + 8);
    if (*(a2 + 32))
    {
      v26 = *(a1 + 24);
      v13 = *(a2 + 16);
      v12 = *(a2 + 24);
      v31 = *a1;
      v32 = v7;
      sub_1D51D2F74(a1, &v27);
      sub_1D51D2F74(a2, &v27);
      sub_1D54F1E94(&v32, &v27);
      sub_1D4EF329C(v10);
      v35 = v11;
      v36 = v13;
      sub_1D4E6C9CC(&v35, &qword_1EC7EC3B0, &qword_1D5630D90);
      v37 = v12;
      sub_1D4E6C9CC(&v37, &qword_1EC7F7870, &unk_1D566CFA8);
      sub_1D4E6C9CC(&v32, &qword_1EC7F7868, &unk_1D566CF98);
      v33[0] = v6;
      v33[1] = v9;
      sub_1D4E6C9CC(v33, &qword_1EC7EC3B0, &qword_1D5630D90);
      v34 = v26;
      sub_1D4E6C9CC(&v34, &qword_1EC7F7870, &unk_1D566CFA8);
      v14 = v31;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC48, &unk_1D561DA60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D561C050;
      *(inited + 32) = v10;
      *(inited + 40) = v11;
      *(inited + 104) = 0;
      v37 = v7;
      sub_1D51D2F74(a1, &v27);
      sub_1D51D2F74(a2, &v27);
      sub_1D4EF329C(inited);
      v35 = v6;
      v36 = v9;
      sub_1D4E6C9CC(&v35, &qword_1EC7EC3B0, &qword_1D5630D90);
      v33[0] = v8;
      sub_1D4E6C9CC(v33, &qword_1EC7F7870, &unk_1D566CFA8);
      v14 = v37;
    }
  }

  else
  {
    v15 = *a2;
    if ((*(a2 + 32) & 1) == 0)
    {
      v25 = *(a2 + 8);
      v27 = *a1;

      result = MEMORY[0x1DA6EAC70](v15, v25);
      v23 = 0;
      v24 = 0;
      v22 = 0;
      v20 = v27;
      v21 = v6;
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC48, &unk_1D561DA60);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D561C050;
    *(v16 + 32) = v7;
    *(v16 + 40) = v6;
    *(v16 + 104) = 0;
    v35 = v16;
    sub_1D51D2F74(a1, &v27);

    sub_1D4EF329C(v17);
    v14 = v35;
  }

  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v27 = v14;
  v28 = 0;
  result = sub_1D54F0A30();
  v20 = v27;
  v21 = v28;
  v22 = 1;
  v23 = v29;
  v24 = v30;
LABEL_9:
  *a3 = v20;
  *(a3 + 8) = v21;
  *(a3 + 16) = v23;
  *(a3 + 24) = v24;
  *(a3 + 32) = v22;
  return result;
}

uint64_t sub_1D54F1E94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7868, &unk_1D566CF98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D54F1F18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D54F1F54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D54F1FA4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_1D54F1FF0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F200C, v1);
}

uint64_t sub_1D54F200C()
{
  OUTLINED_FUNCTION_60();
  v0[4] = *(v0[3] + 128);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_28_67(v1);

  return sub_1D54F2350();
}

uint64_t sub_1D54F20A8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[6] = v0;

  if (v0)
  {
    v9 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1D54F21C8, v9, 0);
  }

  else
  {
    v10 = v3[4];

    OUTLINED_FUNCTION_55();

    return v11();
  }
}

uint64_t sub_1D54F21C8()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1D54F2224(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F2240, v1);
}

void sub_1D54F2240()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_connection);
  v0[4] = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_60();

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_28_67(v2);

    sub_1D54F2350();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D54F22F0(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 56) = a1;
  v4 = *(a2 + 16);
  *(v3 + 80) = *a2;
  *(v3 + 96) = v4;
  *(v3 + 49) = *(a2 + 32);
  return OUTLINED_FUNCTION_12_6(sub_1D52AF3C0, v2);
}

uint64_t sub_1D54F2320(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 56) = a1;
  v4 = *(a2 + 16);
  *(v3 + 80) = *a2;
  *(v3 + 96) = v4;
  *(v3 + 49) = *(a2 + 32);
  return OUTLINED_FUNCTION_12_6(sub_1D52AF4E0, v2);
}

uint64_t sub_1D54F2350()
{
  OUTLINED_FUNCTION_80();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D54F2414;

  return sub_1D54F273C();
}

uint64_t sub_1D54F2414()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v7 + 32) = v0;

  if (v0)
  {
    v8 = sub_1D4F8FB5C;
  }

  else
  {
    v8 = sub_1D54F252C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v4, 0);
}

uint64_t sub_1D54F254C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D54F2568, a2, 0);
}

const char *sub_1D54F2568()
{
  do
  {
    do
    {
      v1 = *(v0 + 104);
      v2 = sub_1D54F6448();
      sub_1D54EF4CC(v2);
      OUTLINED_FUNCTION_17_88();
    }

    while (v5);
    v5 = v4 == 14 && v3 == 16;
  }

  while (v5);
  v6 = *(v0 + 96);
  swift_beginAccess();
  v7 = sqlite3_extended_errcode(*(v6 + 136));
  result = sqlite3_errstr(v2);
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = sub_1D5614E98();
  v11 = v10;
  result = sqlite3_errmsg(*(v6 + 136));
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v12 = sub_1D5614E98();
  v14 = v13;
  v15 = sub_1D54EF4CC(v7);
  v16 = v15;
  v17 = HIDWORD(v15);
  sub_1D51D2BD0();
  v18 = OUTLINED_FUNCTION_121_0();
  *v19 = v7;
  *(v19 + 4) = v16;
  *(v19 + 8) = v17;
  *(v19 + 16) = v9;
  *(v19 + 24) = v11;
  *(v19 + 32) = v12;
  *(v19 + 40) = v14;
  swift_willThrow();
  *(v0 + 88) = v18;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  if (swift_dynamicCast() && (v21 = *(v0 + 20), v22 = *(v0 + 24), v23 = *(v0 + 40), v24 = *(v0 + 56), , , (sub_1D54EF1D8(v21 | (v22 << 32), 0xE00000011) & 1) != 0))
  {

    OUTLINED_FUNCTION_22_1();
  }

  else
  {

    OUTLINED_FUNCTION_55();
  }

  return v25();
}

uint64_t sub_1D54F273C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v7 = swift_task_alloc();
  v5[8] = v7;
  *v7 = v5;
  v7[1] = sub_1D54F27DC;

  return sub_1D54F9828(a2);
}

uint64_t sub_1D54F27DC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 72) = v8;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = *(v3 + 56);
    OUTLINED_FUNCTION_204();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1D54F2910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_160();
  if (qword_1EDD58A80 != -1)
  {
    OUTLINED_FUNCTION_10_121();
  }

  v14 = v12[9];
  v15 = v12[7];
  v16 = v12[4];
  v12[2] = v14;
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_29_59(v17);
  v18[4] = v15;
  v18[5] = v14;
  v18[6] = v16;
  v19 = sub_1D54E6DE4();
  v20 = *(MEMORY[0x1E69E8950] + 4);

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v12[11] = v21;
  *v21 = v22;
  v21[1] = sub_1D54F2A70;
  v23 = v12[3];

  return MEMORY[0x1EEE6DE98](v23, v12 + 2, &unk_1D566D108, v13, v15, v19, 0xD00000000000002CLL, 0x80000001D568FA60, a9, a10, a11, a12);
}

uint64_t sub_1D54F2A70()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = v5[11];
  v7 = v5[10];
  v8 = v5[9];
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v3 + 96) = v0;

  v11 = *(v3 + 56);
  if (v0)
  {
    v12 = sub_1D54F2C08;
  }

  else
  {
    v12 = sub_1D54F2BB0;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1D54F2BB0()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D54F2C08()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 72);

  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54F2C64()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v1[6] = v4;
  v1[7] = v0;
  v1[4] = v2;
  v1[5] = v5;
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  v6[1] = sub_1D54F2CFC;

  return sub_1D54F9828(v3);
}

uint64_t sub_1D54F2CFC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 72) = v8;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = *(v3 + 56);
    OUTLINED_FUNCTION_204();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1D54F2E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_160();
  if (qword_1EDD58A80 != -1)
  {
    OUTLINED_FUNCTION_10_121();
  }

  v14 = v12[9];
  v15 = v12[7];
  v16 = v12[4];
  v12[3] = v14;
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_29_59(v17);
  v18[4] = v15;
  v18[5] = v14;
  v18[6] = v16;
  v19 = sub_1D54E6DE4();
  v20 = *(MEMORY[0x1E69E8950] + 4);

  v21 = swift_task_alloc();
  v12[11] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  *v21 = v12;
  v21[1] = sub_1D54F2F9C;

  return MEMORY[0x1EEE6DE98](v12 + 2, v12 + 3, &unk_1D566D138, v13, v15, v19, 0xD00000000000002CLL, 0x80000001D568FA60, a9, a10, a11, a12);
}

uint64_t sub_1D54F2F9C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = v5[11];
  v7 = v5[10];
  v8 = v5[9];
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v3 + 96) = v0;

  v11 = *(v3 + 56);
  if (v0)
  {
    v12 = sub_1D54F2C08;
  }

  else
  {
    v12 = sub_1D54F30DC;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1D54F30DC()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[9];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1D54F3140(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v6[15] = v8;
  *v8 = v6;
  v8[1] = sub_1D54F324C;

  return v10();
}

uint64_t sub_1D54F324C()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v2 + 120);
  *v4 = *v1;
  *(v3 + 128) = v0;

  v6 = *(v2 + 96);
  OUTLINED_FUNCTION_204();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

const char *sub_1D54F3368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  v15 = *(v14 + 128);
  sub_1D54FA610(*(v14 + 104), *(v14 + 96), *(v14 + 112));
  if (v15)
  {
    v16 = v15;
    *(v14 + 88) = v15;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {
      v18 = *(v14 + 16);
      v19 = *(v14 + 20);
      v20 = *(v14 + 24);
      v22 = *(v14 + 32);
      v21 = *(v14 + 40);
      v24 = *(v14 + 48);
      v23 = *(v14 + 56);
      if (sub_1D54EF1D8(v19 | (v20 << 32), 0xE00000011))
      {
        a9 = v24;
        HIDWORD(a10) = v18;
        v26 = *(v14 + 104);
        v25 = *(v14 + 112);
        v27 = *(v14 + 96);

        OUTLINED_FUNCTION_34_62();
        if (v25)
        {
        }

        else
        {
          sub_1D51D2BD0();
          OUTLINED_FUNCTION_121_0();
          *v37 = HIDWORD(a10);
          *(v37 + 4) = v19;
          *(v37 + 8) = v20;
          *(v37 + 16) = v22;
          *(v37 + 24) = v21;
          OUTLINED_FUNCTION_38_47(v37, a9);
        }

        goto LABEL_19;
      }
    }

    v28 = *(v14 + 104);

    v29 = sub_1D54F634C();
    sub_1D54EF4CC(v29);
    OUTLINED_FUNCTION_17_88();
    if (!v32)
    {
      v32 = v31 == 14 && v30 == 16;
      if (!v32)
      {
        v33 = *(v14 + 96);
        swift_beginAccess();
        sqlite3_extended_errcode(*(v33 + 136));
        result = OUTLINED_FUNCTION_36_60();
        if (result)
        {
          sub_1D5614E98();
          result = OUTLINED_FUNCTION_19_83();
          if (result)
          {
            sub_1D5614E98();
            OUTLINED_FUNCTION_22_73();
            OUTLINED_FUNCTION_37_49();
            v35 = OUTLINED_FUNCTION_121_0();
            OUTLINED_FUNCTION_3_191(v35, v36);

LABEL_19:
            OUTLINED_FUNCTION_15_5();
            goto LABEL_20;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    swift_willThrow();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_22_1();
LABEL_20:
  OUTLINED_FUNCTION_89();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D54F3724()
{
  OUTLINED_FUNCTION_163_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_18_90();

  return sub_1D54F3140(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D54F37C4(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[13] = a3;
  v11 = (a1 + *a1);
  v8 = a1[1];
  v9 = swift_task_alloc();
  v5[16] = v9;
  *v9 = v5;
  v9[1] = sub_1D54F38D8;

  return (v11)(v5 + 11, a3, a4);
}

uint64_t sub_1D54F38D8()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v2 + 128);
  *v4 = *v1;
  *(v3 + 136) = v0;

  v6 = *(v2 + 104);
  OUTLINED_FUNCTION_204();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54F3DD4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1D54F3E9C;

  return sub_1D54F37C4(a2, a3, a4, a5, a6);
}

uint64_t sub_1D54F3E9C()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1D54F3F94()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_163_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1D4E6ED20;
  v3 = OUTLINED_FUNCTION_18_90();

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_20_93()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 20) | (*(v0 + 24) << 32);

  return sub_1D54EF1D8(v7, 0xE00000011);
}

void OUTLINED_FUNCTION_34_62()
{

  sub_1D54FA610(v1, v2, v0);
}

unint64_t OUTLINED_FUNCTION_37_49()
{

  return sub_1D51D2BD0();
}

uint64_t sub_1D54F40BC(uint64_t a1)
{
  result = sub_1D54F6560();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    result = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v7 = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v5 = 0;
      while (1)
      {
        sub_1D54F65A4(a1, v5);
        if (v1)
        {
          break;
        }

        ++v5;
        sub_1D5615C88();
        v6 = *(v7 + 16);
        sub_1D5615CC8();
        sub_1D5615CD8();
        sub_1D5615C98();
        if (v4 == v5)
        {
          return v7;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D54F419C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D54F40BC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double sub_1D54F41C8@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v11 = *v1;
  v12[0] = v3;
  *(v12 + 9) = *(v1 + 25);
  v4 = *(v1 + 24);
  v13[0] = *(v1 + 8);
  v13[1] = v4;
  v14 = *(v1 + 40);
  sub_1D51D28F8(v8);

  sub_1D51D2984(v13);
  v5 = v8[1];
  *a1 = v8[0];
  a1[1] = v5;
  result = *&v9;
  v7 = v10;
  a1[2] = v9;
  a1[3] = v7;
  return result;
}

double sub_1D54F424C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1);
  v11 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D54F5660(v9, AssociatedTypeWitness, a1, a2, v16);
  v13 = v16[1];
  *a3 = v16[0];
  a3[1] = v13;
  result = *&v17;
  v15 = v18;
  a3[2] = v17;
  a3[3] = v15;
  return result;
}

void sub_1D54F435C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a1;
  v10 = sub_1D54F6560();
  v11 = 0;
  v33 = 0;
  v31 = a3;
  v32 = a4;
  v12 = (a3 & 0xFFFFFFFFFFFFFFFELL);
  v28 = a4 & 0xFFFFFFFFFFFFFFFELL;
  v29 = v10;
  v13 = 16;
  v26 = a5;
  v27 = 8 * a2;
  while (v11 != a2)
  {
    v14 = v12[v11];
    v15 = *(v28 + 8 * v11);
    if (a2 == 1)
    {
      TupleTypeMetadata = *v12;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v10);
      for (i = 0; a2 != i; ++i)
      {
        *(&v25 + 8 * i - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)) = v12[i];
      }

      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v19 = *(TupleTypeMetadata + 16 * v11 + 32);
      a5 = v26;
    }

    sub_1D54F459C(v14, &v33, v29, v30, a2, v31, v14, v32);
    if (v5)
    {
      if (v11)
      {
        v21 = (TupleTypeMetadata + v13);
        do
        {
          v22 = *v21;
          v21 -= 4;
          (*(*(v12[--v11] - 8) + 8))(a5 + v22);
        }

        while (v11);
      }

      return;
    }

    ++v11;
    v13 += 16;
  }

  if (a2 == 1)
  {
    v20 = *v12;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);
    for (j = 0; a2 != j; ++j)
    {
      *(&v25 + 8 * j - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0)) = v12[j];
    }

    v20 = swift_getTupleTypeMetadata();
  }

  __swift_storeEnumTagSinglePayload(a5, 0, 1, v20);
}

void sub_1D54F459C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = OUTLINED_FUNCTION_7_137();
  if (*a2 >= a3)
  {
LABEL_7:
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1D5615B68();
    v40 = v42;
    v41 = v43;
    MEMORY[0x1DA6EAC70](0x6574656D61726150, 0xEA00000000002072);
    OUTLINED_FUNCTION_7_137();
    v35 = *a2;
    v28 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v28);

    MEMORY[0x1DA6EAC70](543584032, 0xE400000000000000);
    v35 = a7;
    swift_getMetatypeMetadata();
    v29 = sub_1D5614DB8();
    MEMORY[0x1DA6EAC70](v29);

    MEMORY[0x1DA6EAC70](0xD000000000000022, 0x80000001D568FA90);
    v35 = a3;
    v30 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v30);

    MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D568FAC0);
    v31 = v40;
    v32 = v41;
    sub_1D51D2CAC();
    swift_allocError();
    *v33 = v31;
    v33[1] = v32;
    swift_willThrow();
    OUTLINED_FUNCTION_6_149();
    OUTLINED_FUNCTION_9_124();
    if (!v27)
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_10;
  }

  MEMORY[0x1EEE9AC00](v15);
  v34[2] = a5;
  v34[3] = a6;
  v34[4] = a7;
  v34[5] = a8;
  v34[6] = v16;
  v34[7] = a2;
  sub_1D54F6658(sub_1D54F59E8, v34, a7);
  if (v8)
  {
    v44 = v8;
    v17 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (!swift_dynamicCast())
    {
      goto LABEL_13;
    }

    v19 = v35;
    v18 = v36;
    OUTLINED_FUNCTION_7_137();
    v20 = sub_1D54F671C(*a2);
    v22 = v21;
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1D5615B68();
    v38 = v40;
    v39 = v41;
    MEMORY[0x1DA6EAC70](0x6320746C75736552, 0xEE00206E6D756C6FLL);
    OUTLINED_FUNCTION_7_137();
    v37 = *a2;
    v23 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v23);

    MEMORY[0x1DA6EAC70](24608, 0xE200000000000000);
    MEMORY[0x1DA6EAC70](v20, v22);

    MEMORY[0x1DA6EAC70](0xD00000000000001ELL, 0x80000001D568FAE0);
    v37 = a7;
    swift_getMetatypeMetadata();
    v24 = sub_1D5614DB8();
    MEMORY[0x1DA6EAC70](v24);

    MEMORY[0x1DA6EAC70](8250, 0xE200000000000000);
    MEMORY[0x1DA6EAC70](v19, v18);

    a7 = v38;
    a3 = v39;
    sub_1D51D2CAC();
    swift_allocError();
    *v25 = a7;
    v25[1] = a3;
    swift_willThrow();

    OUTLINED_FUNCTION_6_149();
    OUTLINED_FUNCTION_9_124();
    if (!v27)
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_10:
  OUTLINED_FUNCTION_6_149();
  OUTLINED_FUNCTION_9_124();
  if (!v27)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:

  OUTLINED_FUNCTION_6_149();
  OUTLINED_FUNCTION_9_124();
  if (!v27)
  {
LABEL_14:
    *a2 = v26;
    return;
  }

  __break(1u);
}

double sub_1D54F4A84@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  sub_1D54F424C(a1, WitnessTable, v10);
  v6 = *v2;

  sub_1D51D29D8(v2[1], v2[2], v2[3], v2[4], *(v2 + 40));
  v7 = v10[1];
  *a2 = v10[0];
  a2[1] = v7;
  result = *&v11;
  v9 = v12;
  a2[2] = v11;
  a2[3] = v9;
  return result;
}

uint64_t sub_1D54F4B0C(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F4B2C, 0);
}

uint64_t sub_1D54F4B2C()
{
  v1 = *(v0 + 128);
  *(v0 + 136) = *v1;
  v2 = *(v1 + 8);
  *(v0 + 144) = v2;
  v3 = *(v1 + 16);
  *(v0 + 152) = v3;
  v4 = *(v1 + 24);
  *(v0 + 160) = v4;
  v5 = *(v1 + 32);
  *(v0 + 168) = v5;
  v6 = *(v1 + 40);
  *(v0 + 97) = v6;
  if (v6 >> 6)
  {
    if (v6 >> 6 == 1)
    {
      v7 = *(v0 + 120);
      v8 = swift_task_alloc();
      *(v0 + 200) = v8;
      v9 = *(v7 + 16);
      *(v0 + 208) = v9;
      *(v8 + 16) = v9;
      *(v8 + 24) = v1;

      v10 = swift_task_alloc();
      *(v0 + 216) = v10;
      sub_1D56158D8();
      *v10 = v0;
      v10[1] = sub_1D54F4E88;
      v11 = *(v0 + 112);

      return sub_1D54F7EA4(v11, v2, &unk_1D566D180, v8);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(*(v0 + 112), 1, 1, *(*(v0 + 120) + 16));
      OUTLINED_FUNCTION_22_1();

      return v17();
    }
  }

  else
  {
    *&v13 = v2;
    *(&v13 + 1) = v3;
    *&v14 = v4;
    *(&v14 + 1) = v5;
    *(v0 + 64) = v13;
    *(v0 + 80) = v14;
    v15 = v6 & 1;
    *(v0 + 96) = v6 & 1;

    sub_1D51D2A80(v2, v3, v4, v5, v15);
    v16 = swift_task_alloc();
    *(v0 + 176) = v16;
    *v16 = v0;
    v16[1] = sub_1D54F4D6C;

    return sub_1D54F6844();
  }
}

uint64_t sub_1D54F4D6C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 176);
  *v4 = *v1;
  *(v3 + 184) = v7;
  *(v3 + 192) = v0;

  if (v0)
  {
    v8 = sub_1D54F5258;
  }

  else
  {
    sub_1D51D29D8(*(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 168), *(v3 + 97) & 1);
    v8 = sub_1D54F4F90;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D54F4E88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 224) = v0;

  if (v0)
  {
    v9 = sub_1D54F5334;
  }

  else
  {
    v10 = *(v3 + 200);

    v9 = sub_1D54F51F8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D54F4F90()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 97);

  sub_1D51D2AD0(v6, v5, v4, v3, v2, v8);
  *v7 = v6;
  *(v7 + 8) = v1;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  *(v7 + 40) = 64;
  v9 = swift_task_alloc();
  *(v0 + 232) = v9;
  *v9 = v0;
  v9[1] = sub_1D54F5094;
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v12 = *(v0 + 112);

  return sub_1D54F4B0C(v12, v10);
}

uint64_t sub_1D54F5094()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 240) = v0;

  if (v0)
  {
    v9 = sub_1D54F52CC;
  }

  else
  {
    v9 = sub_1D54F5194;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D54F5194()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);

  OUTLINED_FUNCTION_22_1();

  return v3();
}

uint64_t sub_1D54F51F8()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_22_1();

  return v3();
}

uint64_t sub_1D54F5258()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 136);
  sub_1D51D29D8(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 97) & 1);

  v2 = *(v0 + 192);
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54F52CC()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[23];
  v2 = v0[17];

  v3 = v0[30];
  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D54F5334()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);

  *(v0 + 104) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  if (swift_dynamicCast() && (v4 = *(v0 + 20), v5 = *(v0 + 24), v6 = *(v0 + 40), v7 = *(v0 + 56), , , (sub_1D54EF1D8(v4 | (v5 << 32), 0xE00000011) & 1) != 0))
  {
    v8 = *(v0 + 144);

    *(v0 + 248) = *(v8 + 16);
    *(v0 + 256) = *(v8 + 24);
    v9 = *(v0 + 136);

    return MEMORY[0x1EEE6DFA0](sub_1D54F5494, v9, 0);
  }

  else
  {
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);

    v12 = *(v0 + 224);
    OUTLINED_FUNCTION_55();

    return v13();
  }
}

uint64_t sub_1D54F5494()
{
  v1 = v0[17];
  sub_1D54F81FC(v0[31], v0[32]);
  v0[33] = 0;
  v2 = v0[32];

  return MEMORY[0x1EEE6DFA0](sub_1D54F552C, 0, 0);
}

uint64_t sub_1D54F552C()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);

  sub_1D51D2AD0(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40));
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 40) = 0x80;
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v1);

  OUTLINED_FUNCTION_22_1();

  return v6();
}

uint64_t sub_1D54F55E8()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 256);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);

  v4 = *(v0 + 264);
  OUTLINED_FUNCTION_55();

  return v5();
}

__n128 sub_1D54F5660@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = (*(a4 + 16))(a3, a4);
  (*(a4 + 24))(v15, a3, a4);
  v11 = v16;
  (*(*(a3 - 8) + 8))(a1, a3);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a3;
  result = v15[0];
  v14 = v15[1];
  *a5 = v10;
  *(a5 + 24) = v14;
  *(a5 + 8) = result;
  *(a5 + 40) = v11;
  *(a5 + 48) = sub_1D54F5FEC;
  *(a5 + 56) = v12;
  return result;
}

uint64_t sub_1D54F576C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D54F578C, a2, 0);
}

const char *sub_1D54F578C()
{
  v1 = v0[7];
  v2 = sub_1D54F6448();
  v3 = sub_1D54EF4CC(v2);
  if (BYTE4(v3) != 1 && (BYTE4(v3) != 14 || v3 != 16))
  {
    v5 = v0[6];
    swift_beginAccess();
    v6 = sqlite3_extended_errcode(*(v5 + 136));
    result = sqlite3_errstr(v2);
    if (result)
    {
      v8 = sub_1D5614E98();
      v10 = v9;
      result = sqlite3_errmsg(*(v5 + 136));
      if (result)
      {
        v11 = sub_1D5614E98();
        v13 = v12;
        v14 = sub_1D54EF4CC(v6);
        v15 = v14;
        v16 = HIDWORD(v14);
        sub_1D51D2BD0();
        swift_allocError();
        *v17 = v6;
        *(v17 + 4) = v15;
        *(v17 + 8) = v16;
        *(v17 + 16) = v8;
        *(v17 + 24) = v10;
        *(v17 + 32) = v11;
        *(v17 + 40) = v13;
        swift_willThrow();
        OUTLINED_FUNCTION_55();
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v19 = v0[7];
  v18 = v0[8];
  v20 = v0[5];
  v22 = *(v18 + 48);
  v21 = *(v18 + 56);

  v22(v19);

  OUTLINED_FUNCTION_22_1();
LABEL_11:

  return v23();
}

uint64_t sub_1D54F5924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1D4E6ED20;

  return sub_1D54F576C(a1, a2, a3, v8);
}

uint64_t sub_1D54F5A0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D4E6ED20;

  return sub_1D54F4B0C(a1, a2);
}

uint64_t sub_1D54F5AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1D54F5B88;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1D54F5B88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_55();

  return v9();
}

uint64_t sub_1D54F5C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return OUTLINED_FUNCTION_12_6(sub_1D54F5C94, a2);
}

uint64_t sub_1D54F5C94()
{
  v1 = *(v0 + 24);
  result = sub_1D54F8520();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v13 = MEMORY[0x1E69E7CC0];
      sub_1D4F03980();
      v5 = 0;
      v4 = v13;
      do
      {
        v6 = *(v0 + 24);
        v7 = sub_1D54F671C(v5);
        v9 = v8;
        v10 = *(v13 + 16);
        if (v10 >= *(v13 + 24) >> 1)
        {
          sub_1D4F03980();
        }

        ++v5;
        *(v13 + 16) = v10 + 1;
        v11 = v13 + 16 * v10;
        *(v11 + 32) = v7;
        *(v11 + 40) = v9;
      }

      while (v3 != v5);
    }

    **(v0 + 16) = v4;
    OUTLINED_FUNCTION_22_1();

    return v12();
  }

  return result;
}

uint64_t sub_1D54F5DC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D54F5E00(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1D54F5E40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D54F5ECC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D54F5F0C()
{
  result = qword_1EC7F7878;
  if (!qword_1EC7F7878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F7880, &qword_1D566D318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7878);
  }

  return result;
}

unint64_t sub_1D54F5F70(uint64_t a1)
{
  result = sub_1D54F5F98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D54F5F98()
{
  result = qword_1EC7F7888[0];
  if (!qword_1EC7F7888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F7888);
  }

  return result;
}

uint64_t sub_1D54F5FEC(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return (*(v3 + 32))(a1, v2);
}

uint64_t sub_1D54F6024()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal11SQLDatabaseC20AsyncResultsIteratorV0F5State33_A53AC6D3F49790A2EEF7C0CAFC751450LLOy_x_G(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1D54F6084(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1D54F60C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D54F612C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D54F6168(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFE && *(a1 + 41))
    {
      v2 = *a1 + 16381;
    }

    else
    {
      v2 = ((*(a1 + 40) >> 6) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 40) >> 1) & 0x1F) << 7)))) ^ 0x3FFF;
      if (v2 >= 0x3FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D54F61D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_1D54F626C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 40) & 1 | (a2 << 6);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    *(result + 40) = v2;
  }

  else
  {
    *result = 8 * (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x80;
  }

  return result;
}

unint64_t sub_1D54F62E0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D54F634C()
{
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_147();
    _s10ConnectionCMa();
    OUTLINED_FUNCTION_0_254();
    sub_1D54FE58C(v1, v2);
    OUTLINED_FUNCTION_6_150();
    sub_1D5615348();
  }

  swift_beginAccess();
  v3 = *(v0 + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = sqlite3_finalize(v3);
  *(v0 + 48) = 0;
  swift_weakAssign();
  if (*(v0 + 56))
  {
    v5 = *(v0 + 56);

    sub_1D54F634C(v6);
  }

  return v4;
}

uint64_t sub_1D54F6448()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_147();
    _s10ConnectionCMa();
    OUTLINED_FUNCTION_0_254();
    sub_1D54FE58C(v2, v3);
    OUTLINED_FUNCTION_6_150();
    sub_1D5615348();

    if (*(v0 + 88) != 101)
    {
      OUTLINED_FUNCTION_3_192();
      swift_beginAccess();
      v4 = sqlite3_step(*(v0 + 48));
      *(v0 + 88) = v4;
      if (v4 != 101)
      {
        return v4;
      }
    }

    if (!*(v0 + 56))
    {
      return 101;
    }

    v6 = sub_1D54F6448(v5);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

sqlite3_stmt *sub_1D54F65A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 101 && *(a1 + 56))
  {
    v5 = *(a1 + 56);

    a2 = sub_1D54F65A4(v6, a2);

    return a2;
  }

  OUTLINED_FUNCTION_3_192();
  swift_beginAccess();
  result = *(a1 + 48);
  if (result)
  {
    v8 = sub_1D54E3EA8(result, a2);
    if (!v2)
    {
      return v8;
    }

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54F6658(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 88) == 101 && *(v3 + 56))
  {
    v7 = *(v3 + 56);

    sub_1D54F6658(a1, a2, a3);
  }

  else
  {
    OUTLINED_FUNCTION_3_192();
    swift_beginAccess();
    result = *(v3 + 48);
    if (result)
    {
      return a1();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D54F671C(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_147();
  _s10ConnectionCMa();
  OUTLINED_FUNCTION_0_254();
  sub_1D54FE58C(v4, v5);
  OUTLINED_FUNCTION_6_150();
  sub_1D5615348();

  if (*(v1 + 88) == 101 && *(v1 + 56))
  {
    v6 = *(v1 + 56);

    sub_1D54F671C(a1);
    OUTLINED_FUNCTION_218_0();

    return a1;
  }

  OUTLINED_FUNCTION_3_192();
  result = swift_beginAccess();
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sqlite3_column_name(*(v1 + 48), a1);
  if (result)
  {
    return sub_1D5614E98();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1D54F6844()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  *(v1 + 40) = v0;
  v4 = swift_task_alloc();
  *(v1 + 48) = v4;
  *v4 = v1;
  v4[1] = sub_1D54F68D8;

  return sub_1D54F9828(v3);
}

uint64_t sub_1D54F68D8()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;

  if (v0)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    v12 = *(v4 + 40);
    *(v4 + 56) = v3;
    OUTLINED_FUNCTION_47_44();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1D54F6A10()
{
  OUTLINED_FUNCTION_160();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  _s14StatementTokenCMa();
  swift_allocObject();

  v4 = sub_1D54F9FD0(v3);
  v5 = v4[2];
  v6 = v4[3];
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();

  v7 = *(v2 + 216);
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + 216);
  sub_1D4F13984();
  *(v2 + 216) = v10;
  swift_endAccess();

  OUTLINED_FUNCTION_50();

  return v8(v4);
}

uint64_t sub_1D54F6B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54F6B30, a1, 0);
}

const char *sub_1D54F6B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[8];
  v14 = sub_1D54F6448();
  sub_1D54EF4CC(v14);
  OUTLINED_FUNCTION_17_88();
  if (!v17)
  {
    v17 = v16 == 14 && v15 == 16;
    if (!v17)
    {
      v18 = v12[7];
      OUTLINED_FUNCTION_146();
      swift_beginAccess();
      sqlite3_extended_errcode(*(v18 + 136));
      result = OUTLINED_FUNCTION_55_34();
      if (result)
      {
        sub_1D5614E98();
        OUTLINED_FUNCTION_218_0();
        result = sqlite3_errmsg(*(v18 + 136));
        if (result)
        {
          sub_1D5614E98();
          OUTLINED_FUNCTION_24_71();
          sub_1D54EF4CC(v13);
          OUTLINED_FUNCTION_40_54();
          sub_1D51D2BD0();
          OUTLINED_FUNCTION_29();
          v20 = swift_allocError();
          OUTLINED_FUNCTION_10_122(v20, v21);
          OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_134();

          return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  v23 = v12[8];
  v22 = v12[9];
  v25 = *(v22 + 48);
  v24 = *(v22 + 56);

  v26 = OUTLINED_FUNCTION_22_74();
  v25(v26);

  v35 = v12[5];
  v36 = v12[6];
  OUTLINED_FUNCTION_47_34();
  OUTLINED_FUNCTION_134();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_1D54F6C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54FE664, a1, 0);
}

uint64_t sub_1D54F6CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54F6CDC, a1, 0);
}

const char *sub_1D54F6CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[7];
  v14 = sub_1D54F6448();
  sub_1D54EF4CC(v14);
  OUTLINED_FUNCTION_17_88();
  if (!v17)
  {
    v17 = v16 == 14 && v15 == 16;
    if (!v17)
    {
      v18 = v12[6];
      OUTLINED_FUNCTION_146();
      swift_beginAccess();
      sqlite3_extended_errcode(*(v18 + 136));
      result = OUTLINED_FUNCTION_55_34();
      if (result)
      {
        sub_1D5614E98();
        OUTLINED_FUNCTION_218_0();
        result = sqlite3_errmsg(*(v18 + 136));
        if (result)
        {
          sub_1D5614E98();
          OUTLINED_FUNCTION_24_71();
          sub_1D54EF4CC(v13);
          OUTLINED_FUNCTION_40_54();
          sub_1D51D2BD0();
          OUTLINED_FUNCTION_29();
          v20 = swift_allocError();
          OUTLINED_FUNCTION_10_122(v20, v21);
          OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_134();

          return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  v23 = v12[7];
  v22 = v12[8];
  v25 = *(v22 + 48);
  v24 = *(v22 + 56);

  v26 = OUTLINED_FUNCTION_22_74();
  v25(v26);

  v35 = v12[5];
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_134();

  return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_1D54F6E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D54F6E58, a2, 0);
}

const char *sub_1D54F6E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[7];
  v14 = sub_1D54F6448();
  sub_1D54EF4CC(v14);
  OUTLINED_FUNCTION_17_88();
  if (v17 || (v16 == 14 ? (v17 = v15 == 16) : (v17 = 0), v17))
  {
    v23 = v12[7];
    v22 = v12[8];
    v24 = v12[5];
    v25 = *(v22 + 48);
    v26 = *(v22 + 56);

    v25(v23);

    OUTLINED_FUNCTION_55();
    goto LABEL_10;
  }

  v18 = v12[6];
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  sqlite3_extended_errcode(*(v18 + 136));
  result = OUTLINED_FUNCTION_55_34();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1D5614E98();
  OUTLINED_FUNCTION_218_0();
  result = sqlite3_errmsg(*(v18 + 136));
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1D5614E98();
  OUTLINED_FUNCTION_24_71();
  sub_1D54EF4CC(v13);
  OUTLINED_FUNCTION_40_54();
  sub_1D51D2BD0();
  OUTLINED_FUNCTION_29();
  v20 = swift_allocError();
  OUTLINED_FUNCTION_10_122(v20, v21);
  OUTLINED_FUNCTION_55();
LABEL_10:
  OUTLINED_FUNCTION_134();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_1D54F6F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54F6FC0, a1, 0);
}

const char *sub_1D54F6FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 64);
  v14 = sub_1D54F6448();
  sub_1D54EF4CC(v14);
  OUTLINED_FUNCTION_17_88();
  if (!v17)
  {
    v17 = v16 == 14 && v15 == 16;
    if (!v17)
    {
      v18 = *(v12 + 56);
      OUTLINED_FUNCTION_146();
      swift_beginAccess();
      sqlite3_extended_errcode(*(v18 + 136));
      result = OUTLINED_FUNCTION_55_34();
      if (result)
      {
        sub_1D5614E98();
        OUTLINED_FUNCTION_218_0();
        result = sqlite3_errmsg(*(v18 + 136));
        if (result)
        {
          sub_1D5614E98();
          OUTLINED_FUNCTION_24_71();
          sub_1D54EF4CC(v13);
          OUTLINED_FUNCTION_40_54();
          sub_1D51D2BD0();
          OUTLINED_FUNCTION_29();
          v20 = swift_allocError();
          OUTLINED_FUNCTION_10_122(v20, v21);
          OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_134();

          return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  v23 = *(v12 + 64);
  v22 = *(v12 + 72);
  v25 = *(v22 + 48);
  v24 = *(v22 + 56);

  v26 = OUTLINED_FUNCTION_22_74();
  v25(v26);

  v35 = *(v12 + 40);
  v36 = *(v12 + 48);
  OUTLINED_FUNCTION_47_34();
  OUTLINED_FUNCTION_134();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_1D54F7120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F713C, a2);
}

uint64_t sub_1D54F713C()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[6];
  OUTLINED_FUNCTION_9_125(v0[5]);
  v2 = *(v1 + 216);
  v3 = OUTLINED_FUNCTION_71();
  v6 = sub_1D4ED06B0(v3, v4, v5);
  v0[8] = v6;
  if (!v6)
  {
    swift_endAccess();
    sub_1D54FE4D8();
    OUTLINED_FUNCTION_29();
    v15 = swift_allocError();
    OUTLINED_FUNCTION_25_65(v15, v16);
    OUTLINED_FUNCTION_55();
    v17 = OUTLINED_FUNCTION_42_47();
    OUTLINED_FUNCTION_39_51(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29);
    OUTLINED_FUNCTION_45_45();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_43_43();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_272(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_7_138(v8);
  OUTLINED_FUNCTION_45_45();

  return sub_1D54F6B08(v10, v11, v12);
}

uint64_t sub_1D54F7244()
{
  OUTLINED_FUNCTION_91();
  v5 = v4;
  OUTLINED_FUNCTION_32_60();
  OUTLINED_FUNCTION_23_0();
  *v6 = v3;
  v7 = v3[9];
  *v6 = *v1;
  v3[10] = v0;

  v8 = v3[6];
  if (!v0)
  {
    v3[11] = v5;
    v3[12] = v2;
  }

  OUTLINED_FUNCTION_47_44();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D54F736C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[8];

  OUTLINED_FUNCTION_47_34();
  v4 = v0[11];
  v3 = v0[12];

  return v2(v3, v4);
}

uint64_t sub_1D54F73CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F73E8, a2);
}

uint64_t sub_1D54F73E8()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[6];
  OUTLINED_FUNCTION_9_125(v0[5]);
  v2 = *(v1 + 216);
  v3 = OUTLINED_FUNCTION_71();
  v6 = sub_1D4ED06B0(v3, v4, v5);
  v0[8] = v6;
  if (!v6)
  {
    swift_endAccess();
    sub_1D54FE4D8();
    OUTLINED_FUNCTION_29();
    v15 = swift_allocError();
    OUTLINED_FUNCTION_25_65(v15, v16);
    OUTLINED_FUNCTION_55();
    v17 = OUTLINED_FUNCTION_42_47();
    OUTLINED_FUNCTION_39_51(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29);
    OUTLINED_FUNCTION_45_45();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_43_43();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_272(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_7_138(v8);
  OUTLINED_FUNCTION_45_45();

  return sub_1D54F6C8C(v10, v11, v12);
}

uint64_t sub_1D54F74F0()
{
  OUTLINED_FUNCTION_91();
  v5 = v4;
  OUTLINED_FUNCTION_32_60();
  OUTLINED_FUNCTION_23_0();
  *v6 = v3;
  v7 = *(v3 + 72);
  *v6 = *v1;
  *(v3 + 80) = v0;

  v8 = *(v3 + 48);
  if (!v0)
  {
    *(v3 + 96) = v5;
    *(v3 + 88) = v2;
  }

  OUTLINED_FUNCTION_47_44();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D54F761C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F7638, a2);
}

uint64_t sub_1D54F7638()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[6];
  OUTLINED_FUNCTION_9_125(v0[5]);
  v2 = *(v1 + 216);
  v3 = OUTLINED_FUNCTION_71();
  v6 = sub_1D4ED06B0(v3, v4, v5);
  v0[8] = v6;
  if (!v6)
  {
    swift_endAccess();
    sub_1D54FE4D8();
    OUTLINED_FUNCTION_29();
    v15 = swift_allocError();
    OUTLINED_FUNCTION_25_65(v15, v16);
    OUTLINED_FUNCTION_55();
    v17 = OUTLINED_FUNCTION_42_47();
    OUTLINED_FUNCTION_39_51(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29);
    OUTLINED_FUNCTION_45_45();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_43_43();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_272(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_7_138(v8);
  OUTLINED_FUNCTION_45_45();

  return sub_1D54F6CB4(v10, v11, v12);
}

uint64_t sub_1D54F7740()
{
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v7 = *(v4 + 72);
  *v6 = *v1;
  *(v5 + 80) = v0;

  v8 = *(v4 + 48);
  if (v0)
  {
    v9 = sub_1D52F4514;
  }

  else
  {
    *(v5 + 88) = v3;
    v9 = sub_1D54F7870;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1D54F7870()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_50();
  v3 = *(v0 + 88);

  return v2(v3);
}

uint64_t sub_1D54F78D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return OUTLINED_FUNCTION_12_6(sub_1D54F78F0, a3);
}

uint64_t sub_1D54F78F0()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[7];
  OUTLINED_FUNCTION_9_125(v0[6]);
  v2 = *(v1 + 216);
  v3 = OUTLINED_FUNCTION_71();
  v6 = sub_1D4ED06B0(v3, v4, v5);
  v0[9] = v6;
  if (!v6)
  {
    swift_endAccess();
    sub_1D54FE4D8();
    OUTLINED_FUNCTION_29();
    v17 = swift_allocError();
    OUTLINED_FUNCTION_25_65(v17, v18);
    OUTLINED_FUNCTION_55();
    v19 = OUTLINED_FUNCTION_42_47();
    OUTLINED_FUNCTION_39_51(v19, v20, v21, v22, v23, v24, v25, v26, v29, v30, v31);
    OUTLINED_FUNCTION_45_45();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_43_43();
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1D54F7A10;
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[5];
  OUTLINED_FUNCTION_45_45();

  return sub_1D54F6E38(v11, v12, v13, v14);
}

uint64_t sub_1D54F7A10()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *(v2 + 80);
  *v4 = *v1;
  *(v3 + 88) = v0;

  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1D54F7B90;
  }

  else
  {
    v7 = sub_1D54F7B34;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D54F7B34()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D54F7B90()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54F7BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F7C08, a2);
}

uint64_t sub_1D54F7C08()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[6];
  OUTLINED_FUNCTION_9_125(v0[5]);
  v2 = *(v1 + 216);
  v3 = OUTLINED_FUNCTION_71();
  v6 = sub_1D4ED06B0(v3, v4, v5);
  v0[8] = v6;
  if (!v6)
  {
    swift_endAccess();
    sub_1D54FE4D8();
    OUTLINED_FUNCTION_29();
    v15 = swift_allocError();
    OUTLINED_FUNCTION_25_65(v15, v16);
    OUTLINED_FUNCTION_55();
    v17 = OUTLINED_FUNCTION_42_47();
    OUTLINED_FUNCTION_39_51(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29);
    OUTLINED_FUNCTION_45_45();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_43_43();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_272(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_7_138(v8);
  OUTLINED_FUNCTION_45_45();

  return sub_1D54F6F98(v10, v11, v12);
}

uint64_t sub_1D54F7D10()
{
  OUTLINED_FUNCTION_91();
  v5 = v4;
  OUTLINED_FUNCTION_32_60();
  OUTLINED_FUNCTION_23_0();
  *v6 = v3;
  v7 = *(v3 + 72);
  *v6 = *v1;
  *(v3 + 80) = v0;

  v8 = *(v3 + 48);
  if (!v0)
  {
    *(v3 + 96) = v5;
    *(v3 + 88) = v2;
  }

  OUTLINED_FUNCTION_47_44();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D54F7E3C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);

  OUTLINED_FUNCTION_47_34();
  v4 = *(v0 + 88);

  return v3(v4, v1 & 1);
}

uint64_t sub_1D54F7EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F7EC8, v4);
}

uint64_t sub_1D54F7EC8()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[9];
  v2 = v0[6];
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  swift_beginAccess();
  v5 = sub_1D4ED06B0(v4, v3, *(v1 + 216));
  v0[10] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = v0[7];
    swift_endAccess();
    v16 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_1D54F807C;
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[5];

    return v16(v12, v10, v6);
  }

  else
  {
    swift_endAccess();
    sub_1D54FE4D8();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v14 = v4;
    v14[1] = v3;
    swift_willThrow();
    OUTLINED_FUNCTION_55();
    v17 = v15;

    return v17();
  }
}

uint64_t sub_1D54F807C()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *(v2 + 88);
  *v4 = *v1;
  *(v3 + 96) = v0;

  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_1D54DFDF4;
  }

  else
  {
    v7 = sub_1D54F81A0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D54F81A0()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_55();

  return v2();
}

const char *sub_1D54F81FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 216);
  if (!*(v6 + 16))
  {
    return swift_endAccess();
  }

  v7 = sub_1D4F15A78(a1, a2);
  if ((v8 & 1) == 0)
  {
    return swift_endAccess();
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  swift_endAccess();

  if (sub_1D54F8E68())
  {
    v10 = sub_1D54F972C();
    sub_1D54EF4CC(v10);
    OUTLINED_FUNCTION_17_88();
    if (!v13)
    {
      v13 = v12 == 14 && v11 == 16;
      if (!v13)
      {
        OUTLINED_FUNCTION_3_192();
        swift_beginAccess();
        v14 = sqlite3_extended_errcode(*(v3 + 136));
        result = sqlite3_errstr(v10);
        if (result)
        {
          sub_1D5614E98();
          OUTLINED_FUNCTION_24_71();
          if (!sqlite3_errmsg(*(v3 + 136)))
          {
            __break(1u);
            return swift_endAccess();
          }

          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_34;
      }
    }
  }

  else
  {
    v16 = sub_1D54F634C();
    sub_1D54EF4CC(v16);
    OUTLINED_FUNCTION_17_88();
    if (v13)
    {
      goto LABEL_31;
    }

    if (v18 == 14 && v17 == 16)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_3_192();
    swift_beginAccess();
    v14 = sqlite3_extended_errcode(*(v3 + 136));
    result = sqlite3_errstr(v16);
    if (!result)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_1D5614E98();
    OUTLINED_FUNCTION_24_71();
    if (sqlite3_errmsg(*(v3 + 136)))
    {
LABEL_29:
      v27 = sub_1D5614E98();
      v29 = v28;
      v30 = sub_1D54EF4CC(v14);
      v31 = v30;
      v32 = HIDWORD(v30);
      sub_1D51D2BD0();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      *v33 = v14;
      *(v33 + 4) = v31;
      *(v33 + 8) = v32;
      *(v33 + 16) = a2;
      *(v33 + 24) = a1;
      *(v33 + 32) = v27;
      *(v33 + 40) = v29;
      swift_willThrow();
    }

    __break(1u);
  }

  v20 = *(v9 + 32);
  v21 = *(v9 + 40);
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();

  v22 = sub_1D54F9F70(v20, v21);
  swift_endAccess();

  if (!v22)
  {
    v34 = *(v9 + 32);
    v35 = *(v9 + 40);
    OUTLINED_FUNCTION_26_75();
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    sub_1D54FAFF0(v36, 0, 1, v34, v35);
    sub_1D54FAE84(v34, v35);

    sub_1D54FA7FC();
    swift_endAccess();
LABEL_31:
    OUTLINED_FUNCTION_26_75();
    swift_beginAccess();
    sub_1D5515D2C(a1, a2);
    swift_endAccess();
  }

  v23 = sub_1D54F634C();
  sub_1D54EF4CC(v23);
  OUTLINED_FUNCTION_17_88();
  if (v13)
  {
    goto LABEL_31;
  }

  if (v25 == 14 && v24 == 16)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_3_192();
  swift_beginAccess();
  v14 = sqlite3_extended_errcode(*(v3 + 136));
  result = sqlite3_errstr(v23);
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1D5614E98();
  OUTLINED_FUNCTION_24_71();
  result = sqlite3_errmsg(*(v3 + 136));
  if (result)
  {
    goto LABEL_29;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1D54F8564(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), int (*a4)(void))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_147();
    _s10ConnectionCMa();
    OUTLINED_FUNCTION_0_254();
    sub_1D54FE58C(v8, v9);
    sub_1D5615348();

    if (*(v4 + 88) == 101 && *(v4 + 56))
    {
      v10 = *(v4 + 56);

      v12 = a3(v11);

      return v12;
    }

    else
    {
      OUTLINED_FUNCTION_3_192();
      swift_beginAccess();
      return a4(*(v4 + 48));
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54F8678()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7990, &qword_1D566D690);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1D5616428();
  qword_1EDD76C98 = result;
  return result;
}

uint64_t sub_1D54F86D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57[1] = *MEMORY[0x1E69E9840];
  v48 = *v5;
  v12 = sub_1D560BAB8();
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = MEMORY[0x1E69E7CC0];
  swift_weakInit();
  *(v6 + 88) = 0;
  swift_weakAssign();
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  v49 = a4;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v16 = sub_1D5614DE8();
  v17 = v16 + 32;
  v52 = v16;
  v18 = *(v16 + 16);
  v57[0] = 0;

  v53 = a5;
  v19 = a1;
  v20 = v18;

  v21 = v18;
  v22 = v54;
  sub_1D54E4D58(v19, v17, v17, v21, v6, v57);
  if (v22)
  {
    swift_beginAccess();
    sqlite3_finalize(*(v6 + 48));
    swift_willThrow();
  }

  else
  {
    v54 = v15;
    if (v57[0])
    {
      v47 = v20;
      v23 = &v57[0][-v17];
      if (v23 < sub_1D5614E38())
      {

        v24 = sub_1D54F8AE8(v23);
        v25 = MEMORY[0x1DA6EABE0](v24);
        v46 = v26;

        v27 = *(v6 + 40);
        v28 = v46;
        *(v6 + 32) = v25;
        *(v6 + 40) = v28;

        v29 = v47 - v23;
        if (__OFSUB__(v47, v23))
        {
          __break(1u);
        }

        v30 = sub_1D54F8BA8(v29, a2, a3);
        v31 = MEMORY[0x1DA6EABE0](v30);
        v33 = v32;

        v55 = v31;
        v56 = v33;
        v34 = v54;
        sub_1D560BAA8();
        sub_1D4F53278();
        v35 = sub_1D5615958();
        v37 = v36;
        (*(v50 + 8))(v34, v51);

        v38 = HIBYTE(v37) & 0xF;
        if ((v37 & 0x2000000000000000) == 0)
        {
          v38 = v35 & 0xFFFFFFFFFFFFLL;
        }

        v39 = v49;
        if (v38)
        {
          swift_allocObject();
          v40 = v53;

          v42 = sub_1D54F86D4(v41, v35, v37, v39, v40);
          v43 = *(v6 + 56);
          *(v6 + 56) = v42;
        }

        else
        {
        }
      }
    }

    swift_beginAccess();
    *(v6 + 64) = sqlite3_bind_parameter_count(*(v6 + 48));
  }

  v44 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1D54F8AE8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D5614E58();
    v1 = sub_1D5614F88();

    return v1;
  }

  return result;
}

unint64_t sub_1D54F8BA8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    result = sub_1D5614E58();
    if (v4)
    {
      result = 15;
    }

    if (4 * v3 >= result >> 14)
    {
      v5 = sub_1D5614F88();

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54F8C80(uint64_t a1, uint64_t a2)
{

  v5 = sub_1D54F1774();
  v7 = v6;
  v8 = sub_1D54F1774();
  v10 = v9;
  swift_allocObject();
  v11 = sub_1D54F86D4(a1, v5, v7, v8, v10);
  if (!v2)
  {
    sub_1D54F8D70(a2);
  }

  sub_1D51D2984(a2);

  return v11;
}

uint64_t sub_1D54F8D70(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_147();
    _s10ConnectionCMa();
    OUTLINED_FUNCTION_0_254();
    sub_1D54FE58C(v3, v4);
    OUTLINED_FUNCTION_6_150();
    sub_1D5615348();

    sub_1D54F9358();
    if (*(a1 + 32))
    {
      v5 = *(a1 + 24);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    sub_1D54F9440(v5, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54F8E68()
{
  v1 = v0[4];
  v2 = v0[5];

  LOBYTE(v1) = sub_1D5614F18();

  if (v1)
  {
    return 0;
  }

  v3 = v0[4];
  v4 = v0[5];

  LOBYTE(v3) = sub_1D5614F18();

  if (v3)
  {
    return 0;
  }

  if (v0[7])
  {

    sub_1D54F8E68(v6);
  }

  return 1;
}

uint64_t sub_1D54F8F24()
{
  OUTLINED_FUNCTION_3_192();
  result = swift_beginAccess();
  if (v0[6])
  {
    __break(1u);
  }

  else
  {
    v2 = v0[3];

    v3 = v0[5];

    v4 = v0[9];

    swift_weakDestroy();
    v5 = v0[7];
    v0[7] = 0;

    if (v5)
    {
      do
      {

        if (!swift_isUniquelyReferenced_native())
        {
          break;
        }

        v6 = *(v5 + 56);
        swift_retain_n();

        v5 = v6;
      }

      while (v6);
    }

    return v0;
  }

  return result;
}

uint64_t sub_1D54F8FDC()
{
  sub_1D54F8F24();

  return MEMORY[0x1EEE6BDC0](v0, 92, 7);
}

uint64_t sub_1D54F9034(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1D54F90E8(a2, a3, a4 & 1, a5);
  if (!v8)
  {
    v12 = result;
    swift_beginAccess();
    result = *(v7 + 48);
    if (result)
    {
      return (*(a7 + 8))(result, v12, a6, a7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D54F90E8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    swift_beginAccess();
    v7 = *(v4 + 48);
    v8 = sub_1D5614DE8();
    v9 = sqlite3_bind_parameter_index(v7, (v8 + 32));

    if (v9 > 0)
    {
      return v9;
    }

    sub_1D5615B68();

    strcpy(v15, "Position name ");
    HIBYTE(v15[1]) = -18;
    MEMORY[0x1DA6EAC70](v5, a2);
    MEMORY[0x1DA6EAC70](0xD00000000000001DLL, 0x80000001D568FC20);
    v13 = v15[0];
    v12 = v15[1];
    goto LABEL_9;
  }

  a2 = result + a4;
  if (!__OFADD__(result, a4))
  {
    if (a2 < 1)
    {
      v12 = 0x80000001D568FC40;
      sub_1D54FE484();
      swift_allocError();
      v13 = 0xD00000000000004ELL;
      goto LABEL_11;
    }

    if (*(v4 + 64) >= a2)
    {
      return a2;
    }

    sub_1D5615B68();

    v15[2] = 0x6E6F697469736F50;
    v15[3] = 0xEF207865646E6920;
    v15[0] = a2;
    a2 = MEMORY[0x1E69E6590];
    v10 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v10);

    MEMORY[0x1DA6EAC70](0xD00000000000001ELL, 0x80000001D568FC90);
    v15[0] = *(v4 + 64);
    v11 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v11);

    v13 = 0x6E6F697469736F50;
    v12 = 0xEF207865646E6920;
LABEL_9:
    sub_1D54FE484();
    swift_allocError();
LABEL_11:
    *v14 = v13;
    v14[1] = v12;
    swift_willThrow();
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54F9358()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_147();
    _s10ConnectionCMa();
    OUTLINED_FUNCTION_0_254();
    sub_1D54FE58C(v2, v3);
    OUTLINED_FUNCTION_6_150();
    sub_1D5615348();

    v4 = *(v0 + 72);
    *(v0 + 72) = MEMORY[0x1E69E7CC0];

    if (*(v0 + 56))
    {
      v5 = *(v0 + 56);

      sub_1D54F9358(v6);
    }

    OUTLINED_FUNCTION_3_192();
    swift_beginAccess();
    return sqlite3_clear_bindings(*(v0 + 48));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54F9440(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = v2[9];
  v2[9] = a1;

  v8 = 0;
  v36 = *(a1 + 16);
  v26 = a1;
  for (i = a1 + 32; ; i += 88)
  {
    if (v36 == v8)
    {
      v8 = v36;
      goto LABEL_10;
    }

    sub_1D54FE3C4(i, v35);
    if (v8 == v2[8])
    {
      break;
    }

    sub_1D54FE3C4(v35, v28);
    v10 = v28[0];
    v11 = v28[1];
    v12 = v29;
    if (v31 == 1)
    {
    }

    sub_1D4F69344(v30, v32);
    v14 = v33;
    v13 = v34;
    v15 = __swift_project_boxed_opaque_existential_1(v32, v33);
    sub_1D54F9034(v15, v10, v11, v12, a2, v14, v13);
    sub_1D54FE420(v35);
    sub_1D54FE474(v10, v11, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v32);
    ++v8;
    if (v4)
    {
      return result;
    }
  }

  result = sub_1D54FE420(v35);
LABEL_10:
  if (v2[7])
  {
    sub_1D54F62E0(v8, v36, v26);
    v17 = v16;
    v19 = v18;
    if (v18)
    {
      sub_1D56161E8();
      swift_unknownObjectRetain_n();

      v24 = swift_dynamicCastClass();
      if (!v24)
      {
        swift_unknownObjectRelease();
        v24 = MEMORY[0x1E69E7CC0];
      }

      v25 = *(v24 + 16);

      if (__OFSUB__(v19 >> 1, v17))
      {
        __break(1u);
      }

      else if (v25 == (v19 >> 1) - v17)
      {
        v23 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v23)
        {
LABEL_21:
          sub_1D54F9440(v23, -v8);
        }

        v23 = MEMORY[0x1E69E7CC0];
LABEL_20:
        swift_unknownObjectRelease();
        goto LABEL_21;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v20 = OUTLINED_FUNCTION_85_0();
    sub_1D5240214(v20, v21, v17, v19);
    v23 = v22;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D54F968C()
{
  v6 = 0;
  OUTLINED_FUNCTION_3_192();
  swift_beginAccess();
  result = sqlite3_expanded_sql(*(v0 + 48));
  if (result)
  {
    result = sub_1D5614D28();
    if (v2)
    {
      v6 = result;
    }

    else
    {
      result = 0;
    }

    if (*(v0 + 56))
    {
      v3 = *(v0 + 56);

      v5 = sub_1D54F968C(v4);
      MEMORY[0x1DA6EAC70](v5);

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54F972C()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_147();
    _s10ConnectionCMa();
    OUTLINED_FUNCTION_0_254();
    sub_1D54FE58C(v2, v3);
    OUTLINED_FUNCTION_6_150();
    sub_1D5615348();

    *(v0 + 88) = 0;
    if (*(v0 + 56))
    {
      v4 = *(v0 + 56);

      sub_1D54F972C(v5);
    }

    OUTLINED_FUNCTION_3_192();
    swift_beginAccess();
    return sqlite3_reset(*(v0 + 48));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54F9828(uint64_t a1)
{
  *(v2 + 232) = a1;
  *(v2 + 240) = v1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F9844, v1);
}

void sub_1D54F9844()
{
  v3 = *(v2 + 232);
  v4 = *(v2 + 240);
  sub_1D54F1774();
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  v5 = sub_1D54F9F70(v0, v1);

  if (!v5)
  {
    v36 = *(v2 + 240);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v2 + 248) = Strong;
    *(v2 + 256) = *(v36 + 128);
    if (Strong)
    {
      v38 = *(v2 + 232);
      if (*(v38 + 32))
      {
        v39 = *(v38 + 24);
      }

      else
      {
        v40 = MEMORY[0x1E69E7CC0];
      }

      *(v2 + 264) = v40;
      v41 = *(v40 + 16);
      *(v2 + 272) = v41;
      if (v41)
      {
        v42 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_52_36(v42);
          if (v45)
          {
            break;
          }

          sub_1D54FE3C4(v44 + 88 * v43 + 32, v2 + 16);
          if (*(v2 + 96))
          {
            sub_1D54FE474(*(v2 + 16), *(v2 + 24), *(v2 + 32));
            v54 = *(v2 + 80);
            *(v2 + 288) = *(v2 + 88);
            __swift_destroy_boxed_opaque_existential_1((v2 + 40));
            OUTLINED_FUNCTION_12_103();
            v55 = *(v54 + 4);
            v56 = swift_task_alloc();
            *(v2 + 296) = v56;
            *v56 = v2;
            OUTLINED_FUNCTION_15_94(v56);
            OUTLINED_FUNCTION_89();

            __asm { BRAA            X2, X16 }
          }

          sub_1D54FE420(v2 + 16);
          v42 = *(v2 + 280) + 1;
          if (v42 == *(v2 + 272))
          {
            v46 = *(v2 + 264);
            v47 = *(v2 + 248);
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_35;
      }

LABEL_23:

      swift_unknownObjectRelease();
    }

    v48 = *(v2 + 232);
    v49 = *(v2 + 240);
    _s9StatementCMa();

    sub_1D51D2F74(v48, v2 + 104);
    sub_1D54F8C80(v49, v48);
LABEL_28:
    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X2, X16 }
  }

  v6 = *(v2 + 232);
  v7 = *(v2 + 240);
  swift_endAccess();
  v8 = sub_1D54F1774();
  v10 = v9;
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  v12 = *(v7 + 160);
  v11 = *(v7 + 168);
  *(v2 + 216) = v8;
  *(v2 + 224) = v10;
  v13 = swift_task_alloc();
  v13[2] = v12;
  v13[3] = v11;
  v13[4] = v2 + 216;
  v14 = sub_1D523FA04(sub_1D54FE648, v13, v11);
  v16 = v15;
  v18 = v17;

  if ((v16 & 1) == 0)
  {
    v19 = *(v2 + 240);
    sub_1D54FC91C(v14, v18);

    sub_1D54FCAE0(v14);
  }

  sub_1D54FA7FC();
  swift_endAccess();
  v20 = sub_1D54F9358();
  sub_1D54EF4CC(v20);
  OUTLINED_FUNCTION_17_88();
  if (v23 || (v22 == 14 ? (v23 = v21 == 16) : (v23 = 0), v23))
  {
    sub_1D54F8D70(*(v2 + 232));
    goto LABEL_28;
  }

  v24 = *(v2 + 240);
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v25 = sqlite3_extended_errcode(*(v24 + 136));
  if (!sqlite3_errstr(v20))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v26 = sub_1D5614E98();
  v28 = v27;
  if (sqlite3_errmsg(*(v24 + 136)))
  {
    v29 = sub_1D5614E98();
    v31 = v30;
    v32 = sub_1D54EF4CC(v25);
    v33 = v32;
    v34 = HIDWORD(v32);
    sub_1D51D2BD0();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v35 = v25;
    *(v35 + 4) = v33;
    *(v35 + 8) = v34;
    *(v35 + 16) = v26;
    *(v35 + 24) = v28;
    *(v35 + 32) = v29;
    *(v35 + 40) = v31;
    swift_willThrow();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X1, X16 }
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_1D54F9C54()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  v2[38] = v0;

  if (v0)
  {
    v8 = v2[33];
    v9 = v2[30];

    v10 = sub_1D54F9F08;
    v11 = v9;
  }

  else
  {
    v11 = v2[30];
    v10 = sub_1D54F9D6C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

void sub_1D54F9D6C()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 288);

  v2 = *(v0 + 304);
  while (1)
  {
    v3 = *(v0 + 280) + 1;
    if (v3 == *(v0 + 272))
    {
      break;
    }

    OUTLINED_FUNCTION_52_36(v3);
    if (v6)
    {
      __break(1u);
      return;
    }

    sub_1D54FE3C4(v5 + 88 * v4 + 32, v0 + 16);
    if (*(v0 + 96))
    {
      sub_1D54FE474(*(v0 + 16), *(v0 + 24), *(v0 + 32));
      v12 = *(v0 + 80);
      *(v0 + 288) = *(v0 + 88);
      __swift_destroy_boxed_opaque_existential_1((v0 + 40));
      OUTLINED_FUNCTION_12_103();
      v17 = v13;
      v14 = *(v12 + 4);
      v15 = swift_task_alloc();
      *(v0 + 296) = v15;
      *v15 = v0;
      v16 = OUTLINED_FUNCTION_15_94();

      v17(v16);
      return;
    }

    sub_1D54FE420(v0 + 16);
  }

  v7 = *(v0 + 264);
  v8 = *(v0 + 248);

  swift_unknownObjectRelease();
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  _s9StatementCMa();

  sub_1D51D2F74(v9, v0 + 104);
  sub_1D54F8C80(v10, v9);
  OUTLINED_FUNCTION_50();

  v11();
}

uint64_t sub_1D54F9F08()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[36];
  v2 = v0[31];
  swift_unknownObjectRelease();

  v3 = v0[38];
  OUTLINED_FUNCTION_55();

  return v4();
}

unint64_t sub_1D54F9F70(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D54FAB28(a1, a2, v2[2], v2[3], v2[4]);
  if (v5)
  {
  }

  sub_1D54FAE84(a1, a2);
  return v5;
}

void *sub_1D54F9FD0(uint64_t a1)
{
  sub_1D4EF1814(0xD000000000000040, 0x80000001D567E560, 0xFuLL);
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = a1;
  return v1;
}

void *sub_1D54FA01C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  v8 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v9[5] = v7;
  v9[6] = v6;
  swift_retain_n();

  sub_1D54FA208(0, 0, v4, 0, 0, &unk_1D566D688, v9);

  sub_1D4E6C9CC(v4, &qword_1EC7EB710, &qword_1D561F440);
  v10 = v0[3];

  v11 = v0[4];

  return v0;
}

uint64_t sub_1D54FA16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D54FA190, a4, 0);
}

uint64_t sub_1D54FA190()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[2];
  sub_1D54F81FC(v0[3], v0[4]);
  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D54FA208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27[0] = a5;
  v27[1] = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v27 - v13;
  if (*(a7 + 16))
  {
    v15 = *(a7 + 24);
    v16 = *(a7 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = sub_1D5615338();
    v19 = v18;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v17 = 0;
    v19 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1D5155C5C(a3, v14);
  v21 = sub_1D5615458();
  if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
  {
    sub_1D4E6C9CC(v14, &qword_1EC7EB710, &qword_1D561F440);
  }

  else
  {
    sub_1D5615448();
    (*(*(v21 - 8) + 8))(v14, v21);
  }

  if (a2)
  {
    v22 = sub_1D5614DE8() + 32;
    swift_unknownObjectRetain();

    if (v19 | v17)
    {
      v29[0] = 0;
      v29[1] = 0;
      v23 = v29;
      v29[2] = v17;
      v29[3] = v19;
    }

    else
    {
      v23 = 0;
    }

    if (a4 != 1)
    {
      v28[0] = 6;
      v28[1] = v23;
      v28[2] = a4;
      v28[3] = v27[0];
      v23 = v28;
    }

    v27[2] = 7;
    v27[3] = v23;
    v27[4] = v22;
    v25 = swift_task_create();

    if (isCurrentExecutorWithFlags)
    {
LABEL_16:
      swift_task_immediate();
    }
  }

  else
  {
    swift_unknownObjectRetain();

    if (v19 | v17)
    {
      v30[0] = 0;
      v30[1] = 0;
      v24 = v30;
      v30[2] = v17;
      v30[3] = v19;
    }

    else
    {
      v24 = 0;
    }

    if (a4 != 1)
    {
      v29[4] = 6;
      v29[5] = v24;
      v29[6] = a4;
      v29[7] = v27[0];
    }

    v25 = swift_task_create();
    if (isCurrentExecutorWithFlags)
    {
      goto LABEL_16;
    }
  }

  swift_unknownObjectRelease();

  return v25;
}