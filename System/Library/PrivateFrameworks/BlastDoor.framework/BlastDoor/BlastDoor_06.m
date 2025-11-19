uint64_t getEnumTagSinglePayload for SafetyMonitorMessage.SMTriggerCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SafetyMonitorMessage.SMTriggerCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2140594BC()
{
  result = qword_27C9043A8;
  if (!qword_27C9043A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9043A8);
  }

  return result;
}

unint64_t sub_214059510()
{
  result = qword_27C9043B0;
  if (!qword_27C9043B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9043B0);
  }

  return result;
}

unint64_t sub_214059564()
{
  result = qword_27C9043B8;
  if (!qword_27C9043B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9043B8);
  }

  return result;
}

unint64_t sub_2140595B8()
{
  result = qword_27C9043C0;
  if (!qword_27C9043C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9043C0);
  }

  return result;
}

unint64_t sub_21405960C()
{
  result = qword_27C9043C8;
  if (!qword_27C9043C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9043C8);
  }

  return result;
}

unint64_t sub_214059660()
{
  result = qword_27C9043D0;
  if (!qword_27C9043D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9043D0);
  }

  return result;
}

uint64_t sub_2140596B4(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  if (*a1)
  {
    v3 = *a3;
    v8 = *a1;
    MEMORY[0x28223BE20](a1);
    v6[2] = &v8;
    v7 = 2;

    v4 = sub_2140479E4(sub_214047580, v6, v3);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_21405976C(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  v6 = *a3;
  v5 = *(a3 + 8);
  v7 = *(a3 + 16);
  if (v4 == 2)
  {
    return v6(*(v3 + 16), v7) & 1;
  }

  v8 = *(a3 + 24);
  v9 = *(a3 + 32);
  v11 = v4 & 1;
  if ((v8(&v11) & 1) == 0)
  {
    return v6(*(v3 + 16), v7) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t VideoMessageMessageQuality.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DA9E8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6._countAndFlagsBits = sub_2146DA6B8();
    VideoMessageMessageQuality.init(rawValue:)(v6);
    if (v9 == 5)
    {
      v7 = 4;
    }

    else
    {
      v7 = v9;
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BlastDoor::VideoMessageMessageQuality_optional __swiftcall VideoMessageMessageQuality.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VideoMessageMessageQuality.rawValue.getter()
{
  v1 = 7823730;
  v2 = *v0;
  v3 = 7827308;
  if (v2 != 3)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (v2 == 2)
  {
    v1 = 1751607656;
  }

  if (*v0)
  {
    v3 = 0x6D756964656DLL;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

void sub_214059AD8(uint64_t *a1@<X8>)
{
  v2 = 7823730;
  v3 = *v1;
  v4 = 7827308;
  v5 = 0xE300000000000000;
  v6 = 0xE400000000000000;
  v7 = 0xE300000000000000;
  if (v3 != 3)
  {
    v2 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v3 == 2)
  {
    v2 = 1751607656;
  }

  else
  {
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x6D756964656DLL;
    v5 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v8 = v6;
  }

  else
  {
    v2 = v4;
    v8 = v5;
  }

  *a1 = v2;
  a1[1] = v8;
}

uint64_t sub_214059B58()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214059C1C()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_214059CCC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214059DF4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DA9E8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_2146DA6B8();
    v6 = sub_2146DA098();

    if (v6 >= 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = v6;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214059EE4@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214059F40()
{
  v1 = 0x6F65646976;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F69647561;
  }
}

uint64_t sub_214059F94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6F65646976;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6F69647561;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x6F65646976;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F69647561;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_21405A088@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_214059EE4(a1);
}

void sub_21405A094(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6F65646976;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F69647561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21405A0EC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21405A188()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_21405A210()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21405A310@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DA9E8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_2146DA6B8();
    v6 = sub_2146DA098();

    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6 != 0;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21405A3FC@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

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

unint64_t sub_21405A460()
{
  if (*v0)
  {
    result = 0x6E776F6E6B6E75;
  }

  else
  {
    result = 0xD00000000000003BLL;
  }

  *v0;
  return result;
}

uint64_t sub_21405A4A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  else
  {
    v4 = 0xD00000000000003BLL;
  }

  if (v3)
  {
    v5 = 0x8000000214785F40;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x6E776F6E6B6E75;
  }

  else
  {
    v6 = 0xD00000000000003BLL;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0x8000000214785F40;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_21405A54C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

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

void sub_21405A5AC(unint64_t *a1@<X8>)
{
  v2 = 0x8000000214785F40;
  v3 = 0xD00000000000003BLL;
  if (*v1)
  {
    v3 = 0x6E776F6E6B6E75;
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_21405A5F0()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21405A678()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_21405A6EC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21405A7D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21405A840(uint64_t a1)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_21405A8C8@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoMessageMetadata();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for VideoMessageMetadata()
{
  result = qword_280B30340;
  if (!qword_280B30340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21405A948(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for VideoMessageMetadata();
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t sub_21405A9C0@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoMessageMetadata();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_21405A9F4(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for VideoMessageMetadata();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t sub_21405AA6C@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoMessageMetadata();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_21405AAA0(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for VideoMessageMetadata();
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t sub_21405AB3C(uint64_t a1)
{
  result = type metadata accessor for VideoMessageMetadata();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_21405ABD8(double a1)
{
  result = type metadata accessor for VideoMessageMetadata();
  *(v1 + *(result + 36)) = a1;
  return result;
}

int *sub_21405AC50@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  v14 = sub_2146D8B88();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  result = type metadata accessor for VideoMessageMetadata();
  *(a6 + result[5]) = v11;
  *(a6 + result[6]) = v12;
  *(a6 + result[7]) = v13;
  *(a6 + result[8]) = a5;
  *(a6 + result[9]) = a7;
  return result;
}

uint64_t sub_21405AD10()
{
  sub_2146D8B88();
  sub_21405B658(&unk_27C914340, MEMORY[0x277CC95F0]);
  sub_2146D94E8();
  v1 = type metadata accessor for VideoMessageMetadata();
  *(v0 + *(v1 + 20));
  v2 = v1;
  sub_2146D9698();

  *(v0 + v2[6]);
  *(v0 + v2[6]);
  sub_2146D9698();

  *(v0 + v2[7]);
  sub_2146D9698();

  MEMORY[0x216055860](*(v0 + v2[8]));
  v3 = *(v0 + v2[9]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x2160558A0](*&v3);
}

uint64_t sub_21405AEFC()
{
  sub_2146DA958();
  sub_21405AD10();
  return sub_2146DA9B8();
}

uint64_t sub_21405AF3C()
{
  sub_2146DA958();
  sub_21405AD10();
  return sub_2146DA9B8();
}

uint64_t sub_21405AF80()
{
  sub_2146DA958();
  sub_21405AD10();
  return sub_2146DA9B8();
}

BOOL sub_21405AFC0(uint64_t a1, uint64_t a2)
{
  if ((sub_2146D8B48() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for VideoMessageMetadata();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (!v6)
  {
    v8 = 0xE500000000000000;
    v9 = 0x6F69647561;
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  if (v6 != 1)
  {
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_5:
    if (v7 == 1)
    {
      v10 = 0xE500000000000000;
      if (v9 != 0x6F65646976)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6F65646976;
  if (v7)
  {
    goto LABEL_5;
  }

LABEL_9:
  v10 = 0xE500000000000000;
  if (v9 != 0x6F69647561)
  {
LABEL_16:
    v11 = sub_2146DA6A8();

    if ((v11 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v8 != v10)
  {
    goto LABEL_16;
  }

LABEL_17:
  v12 = v4[6];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13)
  {
    v15 = 0x6E776F6E6B6E75;
  }

  else
  {
    v15 = 0xD00000000000003BLL;
  }

  if (v13)
  {
    v16 = 0xE700000000000000;
  }

  else
  {
    v16 = 0x8000000214785F40;
  }

  if (v14)
  {
    v17 = 0x6E776F6E6B6E75;
  }

  else
  {
    v17 = 0xD00000000000003BLL;
  }

  if (v14)
  {
    v18 = 0xE700000000000000;
  }

  else
  {
    v18 = 0x8000000214785F40;
  }

  if (v15 == v17 && v16 == v18)
  {
  }

  else
  {
    v20 = sub_2146DA6A8();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_2144A75C8(*(a1 + v4[7]), *(a2 + v4[7])) & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  return 0;
}

unint64_t sub_21405B1F8()
{
  result = qword_27C9043E0;
  if (!qword_27C9043E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9043E0);
  }

  return result;
}

unint64_t sub_21405B24C()
{
  result = qword_27C9043E8;
  if (!qword_27C9043E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9043E8);
  }

  return result;
}

unint64_t sub_21405B2A4()
{
  result = qword_27C9043F0;
  if (!qword_27C9043F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9043F0);
  }

  return result;
}

uint64_t sub_21405B324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21405B360()
{
  result = qword_27C9043F8;
  if (!qword_27C9043F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9043F8);
  }

  return result;
}

unint64_t sub_21405B3B4()
{
  result = qword_27C904400;
  if (!qword_27C904400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904400);
  }

  return result;
}

unint64_t sub_21405B40C()
{
  result = qword_27C904408;
  if (!qword_27C904408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904408);
  }

  return result;
}

unint64_t sub_21405B48C()
{
  result = qword_27C904410;
  if (!qword_27C904410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904410);
  }

  return result;
}

unint64_t sub_21405B4E0()
{
  result = qword_27C904418;
  if (!qword_27C904418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904418);
  }

  return result;
}

unint64_t sub_21405B538()
{
  result = qword_27C904420;
  if (!qword_27C904420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904420);
  }

  return result;
}

uint64_t sub_21405B58C(uint64_t a1)
{
  *(a1 + 8) = sub_21405B658(&qword_27C904428, type metadata accessor for VideoMessageMetadata);
  result = sub_21405B658(&qword_27C904430, type metadata accessor for VideoMessageMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21405B658(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21405B6F8()
{
  result = qword_27C904440;
  if (!qword_27C904440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904440);
  }

  return result;
}

unint64_t sub_21405B74C()
{
  result = qword_27C904448;
  if (!qword_27C904448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904448);
  }

  return result;
}

unint64_t sub_21405B7A0()
{
  result = qword_27C904450;
  if (!qword_27C904450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904450);
  }

  return result;
}

uint64_t sub_21405B7F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v0[5];
  v4 = *(v0 + 3);
  v0[8];
  v5 = *(v0 + 3);
  v6 = *(v0 + 5);
  v28 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E6930;
  *(inited + 32) = 0x7461746E6569726FLL;
  v8 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xEB000000006E6F69;
  *(inited + 48) = v1 - 1;
  *(inited + 72) = v8;
  strcpy((inited + 80), "imageAlignment");
  *(inited + 95) = -18;
  *(inited + 96) = v2 - 1;
  *(inited + 120) = v8;
  *(inited + 128) = 0x6874646977;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = v3 - 1;
  *(inited + 168) = v8;
  *(inited + 176) = 0x797453656C746974;
  *(inited + 184) = 0xEA0000000000656CLL;
  if (v4 == 2)
  {
    v9 = 0;
    v10 = 0;
    *(inited + 200) = 0;
    *(inited + 208) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_2146E68D0;
    *(v11 + 32) = 1684828002;
    *(v11 + 40) = 0xE400000000000000;
    v12 = sub_2146D9988();
    v13 = sub_21403EBDC();
    *(v11 + 48) = v12;
    *(v11 + 72) = v13;
    *(v11 + 80) = 0x7363696C617469;
    *(v11 + 88) = 0xE700000000000000;
    *(v11 + 96) = sub_2146D9988();
    *(v11 + 120) = v13;
    *(v11 + 128) = 0x6E696C7265646E75;
    *(v11 + 136) = 0xE900000000000065;
    v14 = sub_2146D9988();
    *(v11 + 168) = v13;
    *(v11 + 144) = v14;
    v9 = sub_2140457C0(v11);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
    swift_arrayDestroy();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  }

  *(inited + 192) = v9;
  *(inited + 216) = v10;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x8000000214785FB0;
  if (v5 == 2)
  {
    v15 = 0;
    v16 = 0;
    *(inited + 248) = 0;
    *(inited + 256) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_2146E68D0;
    *(v17 + 32) = 1684828002;
    *(v17 + 40) = 0xE400000000000000;
    v18 = sub_2146D9988();
    v19 = sub_21403EBDC();
    *(v17 + 48) = v18;
    *(v17 + 72) = v19;
    *(v17 + 80) = 0x7363696C617469;
    *(v17 + 88) = 0xE700000000000000;
    *(v17 + 96) = sub_2146D9988();
    *(v17 + 120) = v19;
    *(v17 + 128) = 0x6E696C7265646E75;
    *(v17 + 136) = 0xE900000000000065;
    v20 = sub_2146D9988();
    *(v17 + 168) = v19;
    *(v17 + 144) = v20;
    v15 = sub_2140457C0(v17);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
    swift_arrayDestroy();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  }

  *(inited + 240) = v15;
  *(inited + 264) = v16;
  strcpy((inited + 272), "cardStyleUrl");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  if (!v6)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(inited + 304) = 0;
    v24 = v28;
LABEL_11:
    *(inited + 288) = v21;
    *(inited + 296) = v22;
    *(inited + 312) = v23;
    sub_213FDC9D0(v24, v6);
    v25 = sub_214045690(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
    swift_arrayDestroy();
    v26 = sub_2140418B8(v25);

    return v26;
  }

  v24 = v28;
  if (v6 != 1)
  {
    v23 = MEMORY[0x277D837D0];
    v21 = v28;
    v22 = v6;
    goto LABEL_11;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21405BCC4()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_21405BDDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21405CD14();
  *a2 = result;
  return result;
}

void sub_21405BE0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6F69;
  v4 = 0x7461746E6569726FLL;
  v5 = 0xEA0000000000656CLL;
  v6 = 0x797453656C746974;
  v7 = 0x8000000214785FB0;
  v8 = 0xD000000000000010;
  if (v2 != 4)
  {
    v8 = 0x6C79745364726163;
    v7 = 0xEC0000006C725565;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE00746E656D6E67;
  v10 = 0x696C416567616D69;
  if (v2 != 1)
  {
    v10 = 0x6874646977;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_21405BEEC()
{
  v1 = *v0;
  v2 = 0x7461746E6569726FLL;
  v3 = 0x797453656C746974;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x6C79745364726163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696C416567616D69;
  if (v1 != 1)
  {
    v5 = 0x6874646977;
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

uint64_t sub_21405BFC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21405CD14();
  *a1 = result;
  return result;
}

uint64_t sub_21405BFF0(uint64_t a1)
{
  v2 = sub_21405C8D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21405C02C(uint64_t a1)
{
  v2 = sub_21405C8D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21405C068@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904458, &qword_2146EC038);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21405C8D8();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v52) = 0;
    v11 = sub_2146DA1A8();
    LOBYTE(v52) = 1;
    v51 = sub_2146DA1A8();
    LOBYTE(v52) = 2;
    v50 = sub_2146DA1A8();
    LOBYTE(v59[0]) = 3;
    sub_21405C92C();
    sub_2146DA148();
    v60 = BYTE2(v52);
    v13 = v52;
    LOBYTE(v59[0]) = 4;
    sub_2146DA148();
    v48 = BYTE2(v52);
    v49 = v13;
    v14 = v52;
    LOBYTE(v52) = 5;
    v15 = sub_2146DA0F8();
    v60 = v49 | (v60 << 16);
    v49 = v14 | (v48 << 16);
    if (v11 == 1)
    {
      v17 = 2;
    }

    else
    {
      v17 = v11 == 0;
    }

    if (v51 == 1)
    {
      v18 = 2;
    }

    else
    {
      v18 = v51 == 0;
    }

    v46 = v18;
    v47 = v17;
    if (v50 == 1)
    {
      v19 = 2;
    }

    else
    {
      v19 = v50 == 0;
    }

    v45 = v19;
    v20 = v16;
    v21 = v15;
    sub_214509038(&v52);
    v22 = v53;
    v23 = v54;
    v24 = v55;
    v40 = v21;
    v41 = 0x800000021478A360;
    v59[0] = v21;
    v59[1] = v20;
    v50 = v20;
    v25 = v52;
    v48 = v56;
    v61 = v56;
    v52 = 0xD00000000000001ELL;
    v53 = 0x800000021478B1A0;
    v42 = 0x800000021478B1A0;
    v54 = 0xD00000000000001CLL;
    v55 = 0x800000021478A360;
    v26 = v22;

    v51 = v23;
    v43 = v24;
    sub_213FDC9D0(v23, v24);
    v44 = v25;
    v27 = v25(v59, &v61, &v52);
    v28 = v40;
    if (v27)
    {
      v29 = v43;
      sub_213FDC6D0(v51, v43);
      (*(v6 + 8))(v9, v5);

      sub_213FDC6D0(v51, v29);
      v30 = v46;
      *a2 = v47;
      *(a2 + 1) = v30;
      *(a2 + 2) = v45;
      v31 = v60;
      *(a2 + 5) = BYTE2(v60);
      *(a2 + 3) = v31;
      v32 = v49;
      *(a2 + 8) = BYTE2(v49);
      *(a2 + 6) = v32;
      *(a2 + 16) = v44;
      *(a2 + 24) = v26;
      v33 = v50;
      *(a2 + 32) = v28;
      *(a2 + 40) = v33;
      *(a2 + 48) = v48;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      v35 = v41;
      v34 = v42;
      *v36 = 0xD00000000000001ELL;
      v36[1] = v34;
      v36[2] = 0xD00000000000001CLL;
      v36[3] = v35;
      swift_willThrow();

      (*(v6 + 8))(v9, v5);

      v37 = v51;
      v38 = v43;
      sub_213FDC6D0(v51, v43);
      LOBYTE(v52) = v47;
      BYTE1(v52) = v46;
      BYTE2(v52) = v45;
      BYTE5(v52) = BYTE2(v60);
      *(&v52 + 3) = v60;
      LOBYTE(v53) = BYTE2(v49);
      HIWORD(v52) = v49;
      v54 = v44;
      v55 = v26;
      v56 = v37;
      v57 = v38;
      v58 = v48;
      sub_21405C980(&v52);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21405C55C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904470, &qword_2146EC040);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v22 = v1[1];
  v21 = v1[2];
  v26 = v1[5];
  v9 = *(v1 + 3);
  v18 = v1[8];
  v19 = *(v1 + 3);
  v20 = v9;
  v10 = *(v1 + 5);
  v17 = *(v1 + 4);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21405C8D8();
  sub_2146DAA28();
  LOBYTE(v24) = 0;
  v12 = v23;
  sub_2146DA368();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v13 = v19;
  v14 = v20;
  v15 = v26;
  v23 = v10;
  LOBYTE(v24) = 1;
  sub_2146DA368();
  LOBYTE(v24) = 2;
  sub_2146DA368();
  BYTE2(v24) = (v14 | (v15 << 16)) >> 16;
  LOWORD(v24) = v14;
  v27 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904478, &qword_2146EC048);
  sub_21405C9D4();
  sub_2146DA388();
  BYTE2(v24) = (v13 | (v18 << 16)) >> 16;
  LOWORD(v24) = v13;
  v27 = 4;
  sub_2146DA388();
  if (v23 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v24 = v17;
    v25 = v23;
    v27 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

unint64_t sub_21405C8D8()
{
  result = qword_27C904460;
  if (!qword_27C904460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904460);
  }

  return result;
}

unint64_t sub_21405C92C()
{
  result = qword_27C904468;
  if (!qword_27C904468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904468);
  }

  return result;
}

unint64_t sub_21405C9D4()
{
  result = qword_27C904480;
  if (!qword_27C904480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904478, &qword_2146EC048);
    sub_21405CA58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904480);
  }

  return result;
}

unint64_t sub_21405CA58()
{
  result = qword_27C904488;
  if (!qword_27C904488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904488);
  }

  return result;
}

uint64_t _s19CodingConfigurationV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
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

  return (v8 + 1);
}

uint64_t _s19CodingConfigurationV10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21405CC10()
{
  result = qword_27C904490;
  if (!qword_27C904490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904490);
  }

  return result;
}

unint64_t sub_21405CC68()
{
  result = qword_27C904498;
  if (!qword_27C904498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904498);
  }

  return result;
}

unint64_t sub_21405CCC0()
{
  result = qword_27C9044A0;
  if (!qword_27C9044A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9044A0);
  }

  return result;
}

uint64_t sub_21405CD14()
{
  v0 = sub_2146DA098();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21405CD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21405CDD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21405CE5C(uint64_t a1)
{
  *(a1 + 8) = sub_21405CF10(&qword_280B30870);
  result = sub_21405CF10(&qword_280B30878);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DeliveryReceipt()
{
  result = qword_280B30860;
  if (!qword_280B30860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21405CF10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DeliveryReceipt();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21405CF7C()
{
  result = type metadata accessor for Metadata();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21405CFE8()
{
  v2 = *v0;
  v1 = v0[1];

  sub_2146D9EF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v3 = sub_2146D9608();
  MEMORY[0x2160545D0](v3);

  MEMORY[0x2160545D0](15913, 0xE200000000000000);
  return 0xD000000000000018;
}

unint64_t sub_21405D0D0()
{
  result = qword_280B2E598;
  if (!qword_280B2E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E598);
  }

  return result;
}

unint64_t sub_21405D124()
{
  result = qword_280B2E5A0;
  if (!qword_280B2E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E5A0);
  }

  return result;
}

unint64_t sub_21405D1A4()
{
  result = qword_280B2E588;
  if (!qword_280B2E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E588);
  }

  return result;
}

unint64_t sub_21405D1F8()
{
  result = qword_280B2E590;
  if (!qword_280B2E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E590);
  }

  return result;
}

unint64_t sub_21405D278()
{
  result = qword_27C9044A8;
  if (!qword_27C9044A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9044A8);
  }

  return result;
}

unint64_t sub_21405D2CC()
{
  result = qword_27C9044B0;
  if (!qword_27C9044B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9044B0);
  }

  return result;
}

unint64_t sub_21405D34C()
{
  result = qword_27C9044B8;
  if (!qword_27C9044B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9044B8);
  }

  return result;
}

unint64_t sub_21405D3A0()
{
  result = qword_27C9044C0;
  if (!qword_27C9044C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9044C0);
  }

  return result;
}

unint64_t sub_21405D420()
{
  result = qword_27C9044C8;
  if (!qword_27C9044C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9044C8);
  }

  return result;
}

unint64_t sub_21405D474()
{
  result = qword_27C9044D0;
  if (!qword_27C9044D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9044D0);
  }

  return result;
}

unint64_t sub_21405D4F4()
{
  result = qword_27C9044D8;
  if (!qword_27C9044D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9044D8);
  }

  return result;
}

unint64_t sub_21405D548()
{
  result = qword_27C9044E0;
  if (!qword_27C9044E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9044E0);
  }

  return result;
}

unint64_t sub_21405D5C8()
{
  result = qword_27C9044E8;
  if (!qword_27C9044E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9044E8);
  }

  return result;
}

unint64_t sub_21405D61C()
{
  result = qword_27C9044F0;
  if (!qword_27C9044F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9044F0);
  }

  return result;
}

unint64_t sub_21405D69C()
{
  result = qword_27C9044F8;
  if (!qword_27C9044F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9044F8);
  }

  return result;
}

unint64_t sub_21405D6F0()
{
  result = qword_27C904500;
  if (!qword_27C904500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904500);
  }

  return result;
}

unint64_t sub_21405D770()
{
  result = qword_27C904508;
  if (!qword_27C904508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904508);
  }

  return result;
}

unint64_t sub_21405D7C4()
{
  result = qword_27C904510;
  if (!qword_27C904510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904510);
  }

  return result;
}

uint64_t sub_21405D844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21405D880()
{
  result = qword_27C904518;
  if (!qword_27C904518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904518);
  }

  return result;
}

unint64_t sub_21405D8D4()
{
  result = qword_27C904520;
  if (!qword_27C904520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904520);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21405D984(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_21405D9E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21405DA70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21405DAB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_21405DB18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_21405DB74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21405DBE8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_21405DC44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21405DCA8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_21405DD04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21405DD64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21405DDAC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_21405DDFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_21405DE58(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21405DEBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21405DF04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21405DF50(uint64_t a1, int a2)
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

uint64_t sub_21405DF98(uint64_t result, int a2, int a3)
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

uint64_t sub_21405DFE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21405E030(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21405E0B4(uint64_t a1)
{
  *(a1 + 8) = sub_21405E168(&qword_27C904528);
  result = sub_21405E168(&qword_27C904530);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for JunkChatCommand()
{
  result = qword_280B2F510;
  if (!qword_280B2F510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21405E168(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for JunkChatCommand();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21405E1D4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_21405E204(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21405E25C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_21405E28C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_21405E2E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_214031CA0(v2);
}

__n128 sub_21405E2F8(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = v1[5];
  v4 = v1[6];
  sub_214031CE0(v1[4]);
  result = v6;
  *(v1 + 2) = v6;
  v1[6] = v2;
  return result;
}

unint64_t sub_21405E37C(uint64_t a1)
{
  *(a1 + 8) = sub_21405E3AC();
  result = sub_21405E400();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21405E3AC()
{
  result = qword_27C904538;
  if (!qword_27C904538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904538);
  }

  return result;
}

unint64_t sub_21405E400()
{
  result = qword_27C904540;
  if (!qword_27C904540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904540);
  }

  return result;
}

uint64_t sub_21405E470(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_21405E4CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21405E564@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

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

uint64_t sub_21405E60C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "imageProviderType";
  }

  else
  {
    v2 = "descriptionStyle";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "imageProviderType";
  }

  else
  {
    v4 = "descriptionStyle";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2146DA6A8();
  }

  return v5 & 1;
}

uint64_t sub_21405E6B0()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21405E728()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_21405E78C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_21405E80C(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "imageProviderType";
  }

  else
  {
    v2 = "descriptionStyle";
  }

  *a1 = 0xD000000000000011;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_21405E874@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

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

uint64_t sub_21405E8D8(uint64_t a1)
{
  v2 = sub_214061AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21405E914(uint64_t a1)
{
  v2 = sub_214061AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21405E950(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1635017060;
  }

  else
  {
    v2 = 1701603686;
  }

  if (*a2)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 1701603686;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_21405E9C8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21405EA30()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_21405EA7C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21405EAEC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

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

void sub_21405EB48(uint64_t *a1@<X8>)
{
  v2 = 1701603686;
  if (*v1)
  {
    v2 = 1635017060;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_21405EC20@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a3;
  v6 = sub_2146D8958();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v112 - v12;
  v14 = a2[9];
  v167 = a2[8];
  v168 = v14;
  v15 = a2[11];
  v169 = a2[10];
  v170 = v15;
  v16 = a2[5];
  v163 = a2[4];
  v164 = v16;
  v17 = a2[7];
  v165 = a2[6];
  v166 = v17;
  v18 = a2[1];
  v159 = *a2;
  v160 = v18;
  v19 = a2[3];
  v161 = a2[2];
  v162 = v19;
  v171 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904548, &unk_2146ECC10);
  sub_21405FA60();
  sub_2146DA1C8();
  if (v3)
  {
    (*(*(v20 - 8) + 8))(a1, v20);
    return sub_21405FAB4(&v159);
  }

  else
  {
    v113 = v13;
    v114 = v11;
    v22 = v117;
    v115 = v6;
    v116 = v7;
    v23 = v172;
    v158[8] = v167;
    v158[9] = v168;
    v158[10] = v169;
    v158[11] = v170;
    v158[4] = v163;
    v158[5] = v164;
    v158[6] = v165;
    v158[7] = v166;
    v158[0] = v159;
    v158[1] = v160;
    v158[2] = v161;
    v158[3] = v162;
    v24 = sub_21405FB08(v158);
    if (v24 <= 1)
    {
      v26 = a1;
      if (v24)
      {
        v30 = sub_213FB4918(v158);
        type metadata accessor for PixelBufferDecoder();
        v31 = swift_allocObject();
        v32 = v30[3];
        v34 = *v30;
        v33 = v30[1];
        v31[3] = v30[2];
        v31[4] = v32;
        v31[1] = v34;
        v31[2] = v33;
        v35 = v30[7];
        v37 = v30[4];
        v36 = v30[5];
        v31[7] = v30[6];
        v31[8] = v35;
        v31[5] = v37;
        v31[6] = v36;
        v38 = v30[11];
        v40 = v30[8];
        v39 = v30[9];
        v31[11] = v30[10];
        v31[12] = v38;
        v31[9] = v40;
        v31[10] = v39;
        if (v23)
        {
          LOBYTE(v118[0]) = 1;
          v154 = v167;
          v155 = v168;
          v156 = v169;
          v157 = v170;
          v150 = v163;
          v151 = v164;
          v152 = v165;
          v153 = v166;
          v146 = v159;
          v147 = v160;
          v148 = v161;
          v149 = v162;
          v41 = sub_213FB4918(&v146);
          sub_214060FB0(v41, &v134);
          sub_21406116C();
          sub_2146DA1C8();
          v42 = v119;
          sub_2144AA2F8(v119, *(&v119 + 1));
          v80 = v79;
          type metadata accessor for CVBuffer(0);
          v132 = v81;
          v133 = &off_28268E9D0;
          sub_213FB54FC(v42, *(&v42 + 1));
          swift_setDeallocating();
          v82 = v31[10];
          v118[8] = v31[9];
          v118[9] = v82;
          v83 = v31[12];
          v118[10] = v31[11];
          v118[11] = v83;
          v84 = v31[6];
          v118[4] = v31[5];
          v118[5] = v84;
          v85 = v31[8];
          v118[6] = v31[7];
          v118[7] = v85;
          v86 = v31[2];
          v118[0] = v31[1];
          v118[1] = v86;
          v87 = v31[4];
          v118[2] = v31[3];
          v118[3] = v87;
          sub_214061060(v118);
          swift_deallocClassInstance();
          *&v131 = v80;
          (*(*(v20 - 8) + 8))(a1, v20);
          v88 = *v30;
          v89 = v30[1];
          v90 = v30[3];
          v121 = v30[2];
          v122 = v90;
          v119 = v88;
          v120 = v89;
          v91 = v30[4];
          v92 = v30[5];
          v93 = v30[7];
          v125 = v30[6];
          v126 = v93;
          v123 = v91;
          v124 = v92;
          v94 = v30[8];
          v95 = v30[9];
          v96 = v30[11];
          v129 = v30[10];
          v130 = v96;
          v127 = v94;
          v128 = v95;
          sub_2140611C0(&v119);
          v142 = v127;
          v143 = v128;
          v144 = v129;
          v145 = v130;
          v138 = v123;
          v139 = v124;
          v140 = v125;
          v141 = v126;
          v134 = v119;
          v135 = v120;
          v136 = v121;
          v137 = v122;
          nullsub_1(&v134);
          v97 = v117;
          result = sub_213FB77C8(&v131, v117);
          v98 = v143;
          *(v97 + 184) = v142;
          *(v97 + 200) = v98;
          v99 = v145;
          *(v97 + 216) = v144;
          *(v97 + 232) = v99;
          v100 = v139;
          *(v97 + 120) = v138;
          *(v97 + 136) = v100;
          v101 = v141;
          *(v97 + 152) = v140;
          *(v97 + 168) = v101;
          v102 = v135;
          *(v97 + 56) = v134;
          *(v97 + 72) = v102;
          v103 = v137;
          *(v97 + 88) = v136;
          *(v97 + 40) = 0;
          *(v97 + 48) = 1;
          *(v97 + 104) = v103;
        }

        else
        {
          LOBYTE(v131) = 1;
          v154 = v167;
          v155 = v168;
          v156 = v169;
          v157 = v170;
          v150 = v163;
          v151 = v164;
          v152 = v165;
          v153 = v166;
          v146 = v159;
          v147 = v160;
          v148 = v161;
          v149 = v162;
          v47 = sub_213FB4918(&v146);
          sub_214060FB0(v47, &v134);
          sub_21406100C();
          sub_2146DA1C8();
          v117 = *(&v119 + 1);
          *&v118[0] = v119;
          *&v134 = 47;
          *(&v134 + 1) = 0xE100000000000000;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
          sub_2140610B4();
          v56 = sub_2146D9558();
          v58 = v57;

          MEMORY[0x2160545D0](v56, v58);

          v59 = v114;
          sub_2146D8888();

          sub_214061118();
          swift_allocError();
          *v60 = 1280;
          *(v60 + 8) = 0;
          swift_willThrow();
          swift_setDeallocating();
          v61 = v31[10];
          v142 = v31[9];
          v143 = v61;
          v62 = v31[12];
          v144 = v31[11];
          v145 = v62;
          v63 = v31[6];
          v138 = v31[5];
          v139 = v63;
          v64 = v31[8];
          v140 = v31[7];
          v141 = v64;
          v65 = v31[2];
          v134 = v31[1];
          v135 = v65;
          v66 = v31[4];
          v136 = v31[3];
          v137 = v66;
          sub_214061060(&v134);
          swift_deallocClassInstance();

          sub_21405FAB4(&v159);
          (*(*(v20 - 8) + 8))(v26, v20);
          return (*(v116 + 8))(v59, v115);
        }
      }

      else
      {
        sub_213FB4918(v158);
        LOBYTE(v118[0]) = 1;
        if (v23)
        {
          sub_21406116C();
          v27 = MEMORY[0x277CC9318];
          sub_2146DA1C8();
          *(v22 + 24) = v27;
          *(v22 + 32) = &protocol witness table for Data;
          *v22 = v119;
        }

        else
        {
          sub_21406100C();
          sub_2146DA1C8();
          v48 = v119;
          v49 = v120;
          *(v22 + 24) = &type metadata for File;
          *(v22 + 32) = &off_28268EA30;
          *v22 = v48;
          *(v22 + 16) = v49;
        }

        (*(*(v20 - 8) + 8))(a1, v20);
        LOWORD(v134) = 0;
        sub_2140615D0(&v134);
        v154 = v142;
        v155 = v143;
        v156 = v144;
        v157 = v145;
        v150 = v138;
        v151 = v139;
        v152 = v140;
        v153 = v141;
        v146 = v134;
        v147 = v135;
        v148 = v136;
        v149 = v137;
        result = nullsub_1(&v146);
        v50 = v155;
        *(v22 + 184) = v154;
        *(v22 + 200) = v50;
        v51 = v157;
        *(v22 + 216) = v156;
        *(v22 + 232) = v51;
        v52 = v151;
        *(v22 + 120) = v150;
        *(v22 + 136) = v52;
        v53 = v153;
        *(v22 + 152) = v152;
        *(v22 + 168) = v53;
        v54 = v147;
        *(v22 + 56) = v146;
        *(v22 + 72) = v54;
        v55 = v149;
        *(v22 + 88) = v148;
        *(v22 + 40) = 0;
        *(v22 + 48) = 1;
        *(v22 + 104) = v55;
      }
    }

    else if (v24 == 2)
    {
      LOBYTE(v134) = 1;
      if (v23)
      {
        sub_21406116C();
        sub_2146DA1C8();
        v28 = v146;
        v119 = v146;
        sub_21402D9F8(v146, *(&v146 + 1));
        v67 = sub_214061224(&v119);
        sub_213FB54FC(v119, *(&v119 + 1));
        type metadata accessor for CGImage(0);
        *(&v135 + 1) = v68;
        *&v136 = &off_28268E9F0;
        sub_213FB54FC(v28, *(&v28 + 1));
        *&v134 = v67;
        (*(*(v20 - 8) + 8))(a1, v20);
        sub_2140615A8(&v146);
        result = sub_213FB77C8(&v134, v22);
        v69 = v155;
        *(v22 + 184) = v154;
        *(v22 + 200) = v69;
        v70 = v157;
        *(v22 + 216) = v156;
        *(v22 + 232) = v70;
        v71 = v151;
        *(v22 + 120) = v150;
        *(v22 + 136) = v71;
        v72 = v153;
        *(v22 + 152) = v152;
        *(v22 + 168) = v72;
        v73 = v147;
        *(v22 + 56) = v146;
        *(v22 + 72) = v73;
        v74 = v149;
        *(v22 + 88) = v148;
        *(v22 + 40) = 0;
        *(v22 + 48) = 1;
        *(v22 + 104) = v74;
      }

      else
      {
        sub_21406100C();
        sub_2146DA1C8();
        v114 = *(&v146 + 1);
        v43 = v146;
        *&v146 = 47;
        *(&v146 + 1) = 0xE100000000000000;
        *&v119 = v43;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
        sub_2140610B4();
        v112 = sub_2146D9558();
        v45 = v44;

        MEMORY[0x2160545D0](v112, v45);

        v46 = v113;
        sub_2146D8888();

        *&v119 = sub_2146D8978();
        *(&v119 + 1) = v75;
        v76 = sub_214061224(&v119);
        v78 = v115;
        v77 = v116;
        v112 = v76;
        sub_213FB54FC(v119, *(&v119 + 1));
        (*(v77 + 8))(v46, v78);
        type metadata accessor for CGImage(0);
        *(&v135 + 1) = v104;
        *&v136 = &off_28268E9F0;

        *&v134 = v112;
        (*(*(v20 - 8) + 8))(a1, v20);
        sub_2140615A8(&v146);
        v105 = v117;
        result = sub_213FB77C8(&v134, v117);
        v106 = v155;
        *(v105 + 184) = v154;
        *(v105 + 200) = v106;
        v107 = v157;
        *(v105 + 216) = v156;
        *(v105 + 232) = v107;
        v108 = v151;
        *(v105 + 120) = v150;
        *(v105 + 136) = v108;
        v109 = v153;
        *(v105 + 152) = v152;
        *(v105 + 168) = v109;
        v110 = v147;
        *(v105 + 56) = v146;
        *(v105 + 72) = v110;
        v111 = v149;
        *(v105 + 88) = v148;
        *(v105 + 40) = 0;
        *(v105 + 48) = 1;
        *(v105 + 104) = v111;
      }
    }

    else
    {
      if (v24 == 3)
      {
        sub_21405FB24();
        swift_allocError();
        *v25 = 0;
      }

      else
      {
        sub_21405FB24();
        swift_allocError();
        *v29 = 1;
      }

      swift_willThrow();
      return (*(*(v20 - 8) + 8))(a1, v20);
    }
  }

  return result;
}

unint64_t sub_21405FA60()
{
  result = qword_280B30CD0;
  if (!qword_280B30CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30CD0);
  }

  return result;
}

unint64_t sub_21405FB08(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

unint64_t sub_21405FB24()
{
  result = qword_27C904550;
  if (!qword_27C904550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904550);
  }

  return result;
}

uint64_t sub_21405FB78(uint64_t a1, _OWORD *a2)
{
  LOBYTE(v12[0]) = 1;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904560, &qword_2146ECC20);
  sub_214061630();
  result = sub_2146DA388();
  if (!v2)
  {
    v5 = a2[9];
    v12[8] = a2[8];
    v12[9] = v5;
    v6 = a2[11];
    v12[10] = a2[10];
    v12[11] = v6;
    v7 = a2[5];
    v12[4] = a2[4];
    v12[5] = v7;
    v8 = a2[7];
    v12[6] = a2[6];
    v12[7] = v8;
    v9 = a2[1];
    v12[0] = *a2;
    v12[1] = v9;
    v10 = a2[3];
    v12[2] = a2[2];
    v12[3] = v10;
    *&v12[0] = sub_21463C734(v12);
    *(&v12[0] + 1) = v11;
    v13 = 1;
    sub_214061684();
    sub_2146DA388();
    return sub_213FB54FC(*&v12[0], *(&v12[0] + 1));
  }

  return result;
}

double sub_21405FC9C@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[9];
  v5 = a1[7];
  v81 = a1[8];
  v82 = v4;
  v6 = a1[9];
  v7 = a1[11];
  v83 = a1[10];
  v84 = v7;
  v8 = a1[5];
  v9 = a1[3];
  v77 = a1[4];
  v78 = v8;
  v10 = a1[5];
  v11 = a1[7];
  v79 = a1[6];
  v80 = v11;
  v12 = a1[1];
  v73 = *a1;
  v74 = v12;
  v13 = a1[3];
  v15 = *a1;
  v14 = a1[1];
  v75 = a1[2];
  v76 = v13;
  v85[8] = v81;
  v85[9] = v6;
  v16 = a1[11];
  v85[10] = v83;
  v85[11] = v16;
  v85[4] = v77;
  v85[5] = v10;
  v85[6] = v79;
  v85[7] = v5;
  v85[0] = v15;
  v85[1] = v14;
  v85[2] = v75;
  v85[3] = v9;
  if (sub_21405FB08(v85) == 1)
  {
    sub_213FB4918(v85);
    v17 = v2[3];
    v18 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v17);
    (*(v18 + 24))(v60, sub_21463D924, 0, &type metadata for PixelBufferEncodingConfiguration, v17, v18);
    v56 = v60[8];
    v57 = v60[9];
    v58 = v60[10];
    v59 = v60[11];
    v52 = v60[4];
    v53 = v60[5];
    v54 = v60[6];
    v55 = v60[7];
    v48 = v60[0];
    v49 = v60[1];
    v50 = v60[2];
    v51 = v60[3];
    v26 = sub_214061734(&v48);
    if (v26 == 1)
    {
      sub_2146D9BA8();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      sub_2146D91D8();
      v44 = v81;
      v45 = v82;
      v46 = v83;
      v47 = v84;
      v40 = v77;
      v41 = v78;
      v42 = v79;
      v43 = v80;
      v36 = v73;
      v37 = v74;
      v38 = v75;
      v39 = v76;
      v27 = sub_213FB4918(&v36);
      sub_214060FB0(v27, &v61);
      v69 = v81;
      v70 = v82;
      v71 = v83;
      v72 = v84;
      v65 = v77;
      v66 = v78;
      v67 = v79;
      v68 = v80;
      v61 = v73;
      v62 = v74;
      v28 = v75;
      v29 = v76;
    }

    else
    {
      v44 = v56;
      v45 = v57;
      v46 = v58;
      v47 = v59;
      v40 = v52;
      v41 = v53;
      v42 = v54;
      v43 = v55;
      v36 = v48;
      v37 = v49;
      v38 = v50;
      v39 = v51;
      sub_2140611C0(&v36);
      v69 = v44;
      v70 = v45;
      v71 = v46;
      v72 = v47;
      v65 = v40;
      v66 = v41;
      v67 = v42;
      v68 = v43;
      v61 = v36;
      v62 = v37;
      v28 = v38;
      v29 = v39;
    }

    v63 = v28;
    v64 = v29;
    v30 = v70;
    a2[8] = v69;
    a2[9] = v30;
    v31 = v72;
    a2[10] = v71;
    a2[11] = v31;
    v32 = v66;
    a2[4] = v65;
    a2[5] = v32;
    v33 = v68;
    a2[6] = v67;
    a2[7] = v33;
    v34 = v62;
    *a2 = v61;
    a2[1] = v34;
    result = *&v63;
    v35 = v64;
    a2[2] = v63;
    a2[3] = v35;
  }

  else
  {
    v19 = v82;
    a2[8] = v81;
    a2[9] = v19;
    v20 = v84;
    a2[10] = v83;
    a2[11] = v20;
    v21 = v78;
    a2[4] = v77;
    a2[5] = v21;
    v22 = v80;
    a2[6] = v79;
    a2[7] = v22;
    v23 = v74;
    *a2 = v73;
    a2[1] = v23;
    v24 = v76;
    a2[2] = v75;
    a2[3] = v24;
    sub_2140616D8(&v73, &v61);
  }

  return result;
}

uint64_t sub_214060020()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214060108()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2140601DC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2140602C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214061DE8();
  *a2 = result;
  return result;
}

void sub_2140602F0(unint64_t *a1@<X8>)
{
  v2 = 0xED0000676E69646FLL;
  v3 = 0x636E456567616D69;
  v4 = 0xEF64657373657270;
  v5 = 0x6D6F436573667A6CLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000020;
    v4 = 0x8000000214786040;
  }

  if (*v1)
  {
    v3 = 0x6464697754657270;
    v2 = 0xEB0000000064656CLL;
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

unint64_t sub_214060394()
{
  v1 = 0x636E456567616D69;
  v2 = 0x6D6F436573667A6CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000020;
  }

  if (*v0)
  {
    v1 = 0x6464697754657270;
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

uint64_t sub_214060434@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214061DE8();
  *a1 = result;
  return result;
}

uint64_t sub_21406045C(uint64_t a1)
{
  v2 = sub_214061758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214060498(uint64_t a1)
{
  v2 = sub_214061758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140604D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x70616D746962;
  if (v2 != 1)
  {
    v4 = 0x6675426C65786970;
    v3 = 0xEB00000000726566;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7894113;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x70616D746962;
  if (*a2 != 1)
  {
    v8 = 0x6675426C65786970;
    v7 = 0xEB00000000726566;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7894113;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2140605D8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214060678()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_214060704()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2140607A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214061E88();
  *a2 = result;
  return result;
}

void sub_2140607D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x70616D746962;
  if (v2 != 1)
  {
    v5 = 0x6675426C65786970;
    v4 = 0xEB00000000726566;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7894113;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2140608DC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904568, &qword_2146ECC28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214061758();
  sub_2146DAA08();
  if (!v2)
  {
    v62 = 0;
    sub_2140617AC();
    sub_2146DA1C8();
    if (v63)
    {
      if (v63 == 1)
      {
        (*(v6 + 8))(v9, v5);
        sub_214061854(&v49);
LABEL_8:
        v16 = v58;
        a2[8] = v57;
        a2[9] = v16;
        v17 = v60;
        a2[10] = v59;
        a2[11] = v17;
        v18 = v54;
        a2[4] = v53;
        a2[5] = v18;
        v19 = v56;
        a2[6] = v55;
        a2[7] = v19;
        v20 = v50;
        *a2 = v49;
        a2[1] = v20;
        v21 = v52;
        a2[2] = v51;
        a2[3] = v21;
        return __swift_destroy_boxed_opaque_existential_1(v24);
      }

      v61 = 3;
      sub_214061800();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      v33 = v45;
      v34 = v46;
      v35 = v47;
      v36 = v48;
      v29 = v41;
      v30 = v42;
      v31 = v43;
      v32 = v44;
      v25 = v37;
      v26 = v38;
      v27 = v39;
      v28 = v40;
      sub_2140611C0(&v25);
      v57 = v33;
      v58 = v34;
      v59 = v35;
      v60 = v36;
      v53 = v29;
      v54 = v30;
      v55 = v31;
      v56 = v32;
      v49 = v25;
      v50 = v26;
      v14 = v27;
      v15 = v28;
    }

    else
    {
      LOBYTE(v37) = 1;
      v12 = sub_2146DA178();
      LOBYTE(v37) = 2;
      v13 = sub_2146DA178();
      (*(v6 + 8))(v9, v5);
      LOBYTE(v37) = v12 & 1;
      BYTE1(v37) = v13 & 1;
      sub_2140615D0(&v37);
      v57 = v45;
      v58 = v46;
      v59 = v47;
      v60 = v48;
      v53 = v41;
      v54 = v42;
      v55 = v43;
      v56 = v44;
      v49 = v37;
      v50 = v38;
      v14 = v39;
      v15 = v40;
    }

    v51 = v14;
    v52 = v15;
    goto LABEL_8;
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_214060C48(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904578, &qword_2146ECC30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v34 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214061758();
  sub_2146DAA28();
  v11 = v3[9];
  v35[8] = v3[8];
  v35[9] = v11;
  v12 = v3[11];
  v35[10] = v3[10];
  v35[11] = v12;
  v13 = v3[5];
  v35[4] = v3[4];
  v35[5] = v13;
  v14 = v3[7];
  v35[6] = v3[6];
  v35[7] = v14;
  v15 = v3[1];
  v35[0] = *v3;
  v35[1] = v15;
  v16 = v3[3];
  v35[2] = v3[2];
  v35[3] = v16;
  v17 = sub_21405FB08(v35);
  if (v17 > 1)
  {
    if (v17 != 2)
    {
      if (v17 == 3)
      {
        sub_21405FB24();
        swift_allocError();
        *v18 = 0;
      }

      else
      {
        sub_21405FB24();
        swift_allocError();
        *v22 = 1;
      }

      swift_willThrow();
      return (*(v6 + 8))(v9, v5);
    }

    LOBYTE(v34[0]) = 1;
    v36 = 0;
    sub_21406187C();
LABEL_13:
    sub_2146DA388();
    return (*(v6 + 8))(v9, v5);
  }

  if (v17)
  {
    v23 = sub_213FB4918(v35);
    LOBYTE(v34[0]) = 2;
    v36 = 0;
    sub_21406187C();
    sub_2146DA388();
    if (v2)
    {
      return (*(v6 + 8))(v9, v5);
    }

    v24 = *v23;
    v25 = v23[1];
    v26 = v23[3];
    v34[2] = v23[2];
    v34[3] = v26;
    v34[0] = v24;
    v34[1] = v25;
    v27 = v23[4];
    v28 = v23[5];
    v29 = v23[7];
    v34[6] = v23[6];
    v34[7] = v29;
    v34[4] = v27;
    v34[5] = v28;
    v30 = v23[8];
    v31 = v23[9];
    v32 = v23[11];
    v34[10] = v23[10];
    v34[11] = v32;
    v34[8] = v30;
    v34[9] = v31;
    v36 = 3;
    sub_2140618D0();
    goto LABEL_13;
  }

  v19 = sub_213FB4918(v35);
  v20 = *v19;
  v21 = v19[1];
  LOBYTE(v34[0]) = 0;
  v36 = 0;
  sub_21406187C();
  sub_2146DA388();
  if (!v2)
  {
    LOBYTE(v34[0]) = 1;
    sub_2146DA338();
    LOBYTE(v34[0]) = 2;
    sub_2146DA338();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_21406100C()
{
  result = qword_280B2FF08[0];
  if (!qword_280B2FF08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B2FF08);
  }

  return result;
}

unint64_t sub_2140610B4()
{
  result = qword_280B34F20;
  if (!qword_280B34F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C904F20, &qword_2146EE8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34F20);
  }

  return result;
}

unint64_t sub_214061118()
{
  result = qword_27C904558;
  if (!qword_27C904558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904558);
  }

  return result;
}

unint64_t sub_21406116C()
{
  result = qword_280B34F10;
  if (!qword_280B34F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34F10);
  }

  return result;
}

void *sub_2140611C0(void *result)
{
  v1 = result[5] & 1;
  v2 = result[7] & 1;
  v3 = result[9] & 0xFF01;
  v4 = result[13] & 0x101;
  v5 = result[15] & 1;
  v6 = result[17] & 1 | 0x4000000000000000;
  result[3] &= 1uLL;
  result[5] = v1;
  result[7] = v2;
  result[9] = v3;
  result[13] = v4;
  result[15] = v5;
  result[17] = v6;
  return result;
}

uint64_t sub_214061224(uint64_t *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      *(&v32 + 7) = 0;
      *&v32 = 0;
      result = sub_21409BB94(&v32, &v32);
      goto LABEL_27;
    }

    v8 = *a1;

    sub_213FB54FC(v4, v3);
    *&v32 = v4;
    *(&v32 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_2146ECC00;
    sub_213FB54FC(0, 0xC000000000000000);
    sub_2146D8968();
    v9 = *(&v32 + 1);
    v10 = *(v32 + 16);
    v11 = *(v32 + 24);
    result = sub_2146D8728();
    if (!result)
    {
      __break(1u);
      goto LABEL_35;
    }

    v12 = result;
    v13 = sub_2146D8758();
    v14 = v10 - v13;
    if (!__OFSUB__(v10, v13))
    {
      v15 = __OFSUB__(v11, v10);
      v16 = v11 - v10;
      if (!v15)
      {
        v17 = sub_2146D8748();
        if (v17 >= v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v17;
        }

        result = sub_21409BB94(v12 + v14, v12 + v14 + v18);
        *a1 = v32;
        a1[1] = v9 | 0x8000000000000000;
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v5)
  {
    sub_213FB54FC(v4, v3);
    *&v32 = v4;
    WORD4(v32) = v3;
    BYTE10(v32) = BYTE2(v3);
    BYTE11(v32) = BYTE3(v3);
    BYTE12(v32) = BYTE4(v3);
    BYTE13(v32) = BYTE5(v3);
    BYTE14(v32) = BYTE6(v3);
    result = sub_21409BB94(&v32, &v32 + BYTE6(v3));
    v7 = DWORD2(v32) | ((WORD6(v32) | (BYTE14(v32) << 16)) << 32);
    *a1 = v32;
    a1[1] = v7;
LABEL_27:
    v31 = *MEMORY[0x277D85DE8];
    return result;
  }

  v19 = v3 & 0x3FFFFFFFFFFFFFFFLL;

  sub_213FB54FC(v4, v3);
  *a1 = xmmword_2146ECC00;
  sub_213FB54FC(0, 0xC000000000000000);
  v20 = v4 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v20 < v4)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (sub_2146D8728() && __OFSUB__(v4, sub_2146D8758()))
    {
LABEL_33:
      __break(1u);
    }

    v21 = sub_2146D8778();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_2146D8708();

    v19 = v24;
  }

  if (v20 < v4)
  {
    goto LABEL_29;
  }

  result = sub_2146D8728();
  if (result)
  {
    v25 = result;
    v26 = sub_2146D8758();
    v27 = v4 - v26;
    if (!__OFSUB__(v4, v26))
    {
      v28 = sub_2146D8748();
      if (v28 >= v20 - v4)
      {
        v29 = v20 - v4;
      }

      else
      {
        v29 = v28;
      }

      v30 = sub_21409BB94(v25 + v27, v25 + v27 + v29);

      *a1 = v4;
      a1[1] = v19 | 0x4000000000000000;
      if (!v1)
      {
        result = v30;
      }

      goto LABEL_27;
    }

    goto LABEL_31;
  }

LABEL_35:
  __break(1u);
  return result;
}

double sub_2140615A8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x1FFFFFFFELL;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return result;
}

void *sub_2140615D0(void *result)
{
  v1 = result[5] & 1;
  v2 = result[7] & 1;
  v3 = result[9] & 0xFF01;
  v4 = result[13] & 0x101;
  v5 = result[15] & 1;
  v6 = result[17] & 1;
  result[3] &= 1uLL;
  result[5] = v1;
  result[7] = v2;
  result[9] = v3;
  result[13] = v4;
  result[15] = v5;
  result[17] = v6;
  return result;
}

unint64_t sub_214061630()
{
  result = qword_280B2E738;
  if (!qword_280B2E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E738);
  }

  return result;
}

unint64_t sub_214061684()
{
  result = qword_280B34B60;
  if (!qword_280B34B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34B60);
  }

  return result;
}

uint64_t sub_214061734(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_214061758()
{
  result = qword_280B31028;
  if (!qword_280B31028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B31028);
  }

  return result;
}

unint64_t sub_2140617AC()
{
  result = qword_280B30CC8;
  if (!qword_280B30CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30CC8);
  }

  return result;
}

unint64_t sub_214061800()
{
  result = qword_27C904570;
  if (!qword_27C904570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904570);
  }

  return result;
}

double sub_214061854(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0x8000000000000000;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return result;
}

unint64_t sub_21406187C()
{
  result = qword_280B2E730;
  if (!qword_280B2E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E730);
  }

  return result;
}

unint64_t sub_2140618D0()
{
  result = qword_27C904580;
  if (!qword_27C904580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904580);
  }

  return result;
}

unint64_t sub_214061928()
{
  result = qword_27C904588;
  if (!qword_27C904588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904588);
  }

  return result;
}

unint64_t sub_214061980()
{
  result = qword_280B31038;
  if (!qword_280B31038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B31038);
  }

  return result;
}

unint64_t sub_2140619D8()
{
  result = qword_280B31040;
  if (!qword_280B31040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B31040);
  }

  return result;
}

unint64_t sub_214061A30()
{
  result = qword_280B30CC0;
  if (!qword_280B30CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30CC0);
  }

  return result;
}

unint64_t sub_214061A88()
{
  result = qword_280B2E728;
  if (!qword_280B2E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2E728);
  }

  return result;
}

unint64_t sub_214061AE0()
{
  result = qword_280B31048;
  if (!qword_280B31048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B31048);
  }

  return result;
}

unint64_t sub_214061B88()
{
  result = qword_27C904590;
  if (!qword_27C904590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904590);
  }

  return result;
}

unint64_t sub_214061BE0()
{
  result = qword_27C904598;
  if (!qword_27C904598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904598);
  }

  return result;
}

unint64_t sub_214061C38()
{
  result = qword_27C9045A0;
  if (!qword_27C9045A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9045A0);
  }

  return result;
}

unint64_t sub_214061C90()
{
  result = qword_27C9045A8;
  if (!qword_27C9045A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9045A8);
  }

  return result;
}

unint64_t sub_214061CE8()
{
  result = qword_280B31018;
  if (!qword_280B31018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B31018);
  }

  return result;
}

unint64_t sub_214061D40()
{
  result = qword_280B31020;
  if (!qword_280B31020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B31020);
  }

  return result;
}

unint64_t sub_214061D94()
{
  result = qword_280B31050;
  if (!qword_280B31050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B31050);
  }

  return result;
}

uint64_t sub_214061DE8()
{
  v0 = sub_2146DA098();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_214061E34()
{
  result = qword_280B31030;
  if (!qword_280B31030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B31030);
  }

  return result;
}

uint64_t sub_214061E88()
{
  v0 = sub_2146DA098();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_214061EE8()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_280B35410 = result;
  return result;
}

uint64_t sub_214061F6C()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_280B35408 = result;
  return result;
}

uint64_t sub_214061FF8()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045B0 = result;
  return result;
}

uint64_t sub_21406207C()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_280B2E350 = result;
  return result;
}

uint64_t sub_214062100()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045B8 = result;
  return result;
}

uint64_t sub_21406218C()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045C0 = result;
  return result;
}

uint64_t sub_214062210()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045C8 = result;
  return result;
}

uint64_t sub_214062294()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045D0 = result;
  return result;
}

uint64_t sub_214062318()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045D8 = result;
  return result;
}

uint64_t sub_21406239C()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045E0 = result;
  return result;
}

uint64_t sub_214062420()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045E8 = result;
  return result;
}

uint64_t *sub_214062480()
{
  if (qword_27C902E50 != -1)
  {
    swift_once();
  }

  return &qword_27C9045E8;
}

uint64_t sub_2140624F4()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045F0 = result;
  return result;
}

uint64_t sub_214062578()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9045F8 = result;
  return result;
}

uint64_t sub_2140625FC()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_280B30DE0 = result;
  return result;
}

uint64_t sub_214062680()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904600 = result;
  return result;
}

uint64_t sub_214062710()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904608 = result;
  return result;
}

uint64_t sub_214062794()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904610 = result;
  return result;
}

uint64_t sub_214062818()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904618 = result;
  return result;
}

uint64_t sub_21406289C()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904620 = result;
  return result;
}

uint64_t sub_214062920()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904628 = result;
  return result;
}

uint64_t sub_2140629A4()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904630 = result;
  return result;
}

uint64_t sub_214062A28()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904638 = result;
  return result;
}

uint64_t sub_214062AAC()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904640 = result;
  return result;
}

uint64_t sub_214062B30()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904648 = result;
  return result;
}

uint64_t sub_214062BB4()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_280B2E358 = result;
  return result;
}

uint64_t sub_214062C38()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904650 = result;
  return result;
}

uint64_t sub_214062CBC()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904658 = result;
  return result;
}

uint64_t sub_214062D40()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904660 = result;
  return result;
}

uint64_t sub_214062DC4()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904668 = result;
  return result;
}

uint64_t sub_214062E48()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904670 = result;
  return result;
}

uint64_t sub_214062ECC()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904678 = result;
  return result;
}

uint64_t sub_214062F50()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904680 = result;
  return result;
}

uint64_t sub_214062FD4()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904688 = result;
  return result;
}

uint64_t sub_214063058()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904690 = result;
  return result;
}

uint64_t sub_2140630DC()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C904698 = result;
  return result;
}

uint64_t sub_214063160()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9046A0 = result;
  return result;
}

uint64_t sub_2140631E4()
{
  sub_214063750();
  result = sub_2146D9D28();
  qword_27C9046A8 = result;
  return result;
}

id sub_214063268(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_2140632C8()
{
  v0 = sub_2146D9208();
  __swift_allocate_value_buffer(v0, qword_27C9046B0);
  __swift_project_value_buffer(v0, qword_27C9046B0);
  return sub_2146D91F8();
}

uint64_t sub_214063364()
{
  v0 = sub_2146D9208();
  __swift_allocate_value_buffer(v0, qword_27C9046C8);
  __swift_project_value_buffer(v0, qword_27C9046C8);
  return sub_2146D91F8();
}

uint64_t sub_214063400()
{
  v0 = sub_2146D9208();
  __swift_allocate_value_buffer(v0, qword_27C9046E0);
  __swift_project_value_buffer(v0, qword_27C9046E0);
  return sub_2146D91F8();
}

uint64_t sub_214063530()
{
  v0 = sub_2146D9208();
  __swift_allocate_value_buffer(v0, qword_27C904710);
  __swift_project_value_buffer(v0, qword_27C904710);
  return sub_2146D91F8();
}

uint64_t sub_214063600(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2146D9208();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2146D91F8();
}

uint64_t sub_21406369C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2146D9208();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_214063750()
{
  result = qword_280B35400;
  if (!qword_280B35400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B35400);
  }

  return result;
}

uint64_t sub_21406379C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if ((result + 1) < 4)
  {
    v2 = result + 1;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2140637C0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_282653520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_214059810;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214032610;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214063914@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_214064194;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_214032610;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214063A34@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2146ED240;
  *(v4 + 16) = sub_214032554;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403255C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_2140428D0(inited, a1);
}

unint64_t sub_214063B78@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 200;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21406418C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214063CC8()
{
  result = qword_27C904740;
  if (!qword_27C904740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904740);
  }

  return result;
}

uint64_t sub_214063D1C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1 - 1);
  return sub_2146DA9B8();
}

uint64_t sub_214063D64()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1 - 1);
  return sub_2146DA9B8();
}

unint64_t sub_214063DDC()
{
  result = qword_27C904748;
  if (!qword_27C904748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904748);
  }

  return result;
}

unint64_t sub_214063E30()
{
  result = qword_27C904750;
  if (!qword_27C904750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904750);
  }

  return result;
}

uint64_t sub_214063F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214063F9C()
{
  result = qword_27C904758;
  if (!qword_27C904758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904758);
  }

  return result;
}

unint64_t sub_214063FF0()
{
  result = qword_27C904760;
  if (!qword_27C904760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904760);
  }

  return result;
}

uint64_t sub_21406405C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 257))
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

uint64_t sub_2140640A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 257) = 1;
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

    *(result + 257) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214064138()
{
  result = qword_27C904768;
  if (!qword_27C904768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904768);
  }

  return result;
}

uint64_t sub_2140641A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalloonPlugin.Payload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214064230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalloonPlugin.Payload(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BalloonPlugin.bundleID.getter()
{
  v1 = v0 + *(type metadata accessor for BalloonPlugin(0) + 20);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214064360@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for BalloonPlugin(0) + 20);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2140643F8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for BalloonPlugin(0) + 20);
  sub_214031F20(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t BalloonPlugin.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for BalloonPlugin(0) + 20);
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v12 = *(v5 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v5 + 24);

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*BalloonPlugin.bundleID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for BalloonPlugin(0) + 20);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2140646F8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2140646F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2] + *(*a1 + 8);
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v20 = **a1;
    v21 = v3;
    v13 = *v4;
    v14 = *(v4 + 8);
    v22 = *(v4 + 32);
    v23 = 0x6E776F6E6B6E753CLL;
    v24 = 0xE90000000000003ELL;
    v25 = 0xD00000000000001CLL;
    v26 = 0x800000021478A360;
    if (v13(&v20, &v22, &v23))
    {
      v15 = *(v2 + 8);
      v17 = v2[2];
      v16 = v2[3];

      v18 = v17 + v15;
      *(v18 + 16) = v5;
      *(v18 + 24) = v3;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v19 = 0x6E776F6E6B6E753CLL;
    v19[1] = 0xE90000000000003ELL;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v20 = **a1;
  v21 = v3;
  v7 = *v4;
  v6 = *(v4 + 8);
  v22 = *(v4 + 32);
  v23 = 0x6E776F6E6B6E753CLL;
  v24 = 0xE90000000000003ELL;
  v25 = 0xD00000000000001CLL;
  v26 = 0x800000021478A360;

  if ((v7(&v20, &v22, &v23) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = *(v2 + 8);
  v10 = v2[2];
  v9 = v2[3];

  v11 = v10 + v8;
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  v12 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t BalloonPlugin.$bundleID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

uint64_t sub_214064940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BalloonPlugin(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

uint64_t sub_2140649A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for BalloonPlugin(0) + 20);
  v8 = *(v7 + 8);
  v9 = *(v7 + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  return result;
}

__n128 BalloonPlugin.$bundleID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 20));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

void (*BalloonPlugin.$bundleID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for BalloonPlugin(0) + 20);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_214064B44;
}

void sub_214064B44(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5] + *(*a1 + 9);
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 8);
  v10 = *(v3 + 24);
  if (a2)
  {
    v11 = (*a1)[3];

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 8);

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
  }

  free(v2);
}

uint64_t BalloonPlugin.isExpirable.setter(char a1)
{
  result = type metadata accessor for BalloonPlugin(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t BalloonPlugin.attributionInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for BalloonPlugin(0) + 28));
}

uint64_t BalloonPlugin.attributionInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BalloonPlugin(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t BalloonPlugin.plainTextBody.getter()
{
  v1 = (v0 + *(type metadata accessor for BalloonPlugin(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BalloonPlugin.plainTextBody.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BalloonPlugin(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BalloonPlugin.content.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_214031CA0(v4);
}

__n128 BalloonPlugin.content.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 36));
  v4 = v3[1];
  v5 = v3[2];
  sub_214031CE0(*v3);
  result = v7;
  *v3 = v7;
  v3[2] = v2;
  return result;
}

uint64_t BalloonPlugin.participantDestinationIdentifiers.getter()
{
  if (*(v0 + *(type metadata accessor for BalloonPlugin(0) + 40) + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214064FB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for BalloonPlugin(0) + 40) + 16);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214065048(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for BalloonPlugin(0) + 40);
  sub_2140325F8(v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t BalloonPlugin.participantDestinationIdentifiers.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BalloonPlugin(0) + 40);
  v11 = a1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v10 = *(v3 + 24);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v3 + 16);

    *(v3 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*BalloonPlugin.participantDestinationIdentifiers.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for BalloonPlugin(0) + 40);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    *a1 = v4;

    return sub_2140652FC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2140652FC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1] + *(a1 + 6);
  if ((a2 & 1) == 0)
  {
    v13 = *a1;
    v9 = *v4;
    v10 = *(v4 + 8);
    v14 = *(v4 + 24);
    v15 = 0x6E776F6E6B6E753CLL;
    v16 = 0xE90000000000003ELL;
    v17 = 0xD00000000000001CLL;
    v18 = 0x800000021478A360;
    if (v9(&v13, &v14, &v15))
    {
      v11 = a1[2];

      *(v4 + 16) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v13 = *a1;
  v6 = *v4;
  v5 = *(v4 + 8);
  v14 = *(v4 + 24);
  v15 = 0x6E776F6E6B6E753CLL;
  v16 = 0xE90000000000003ELL;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  if ((v6(&v13, &v14, &v15) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v12 = 0x6E776F6E6B6E753CLL;
    v12[1] = 0xE90000000000003ELL;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v7 = a1[2];

  *(v4 + 16) = v3;
}

uint64_t BalloonPlugin.$participantDestinationIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v3;
}

uint64_t sub_214065544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BalloonPlugin(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3;
}

uint64_t sub_2140655A8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a2 + *(type metadata accessor for BalloonPlugin(0) + 40);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);

  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  return result;
}

__n128 BalloonPlugin.$participantDestinationIdentifiers.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 40));
  v6 = v5->n128_u64[1];
  v7 = v5[1].n128_u64[0];

  result = *a1;
  *v5 = *a1;
  v5[1].n128_u64[0] = v3;
  v5[1].n128_u8[8] = v4;
  return result;
}

void (*BalloonPlugin.$participantDestinationIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for BalloonPlugin(0) + 40);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  LOBYTE(v6) = *(v6 + 24);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v6;

  return sub_214065740;
}

void sub_214065740(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4] + *(*a1 + 7);
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 8);
  v8 = *(v3 + 16);
  if (a2)
  {
    v10 = (*a1)[2];

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    v11 = v2[1];
    v12 = v2[2];
  }

  else
  {
    v13 = *(v3 + 8);

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
  }

  free(v2);
}

uint64_t BalloonPlugin.associatedMessageGUID.getter()
{
  v1 = v0 + *(type metadata accessor for BalloonPlugin(0) + 44);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_214065898@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for BalloonPlugin(0) + 44);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214065934(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for BalloonPlugin(0) + 44);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t BalloonPlugin.associatedMessageGUID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for BalloonPlugin(0) + 44);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*BalloonPlugin.associatedMessageGUID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for BalloonPlugin(0) + 44);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

void sub_214065C38(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2] + *(*a1 + 10);
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v3;
    v10 = *v4;
    v11 = *(v4 + 8);
    v16 = *(v4 + 32);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2] + *(v2 + 10);
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 16) = v5;
      *(v12 + 24) = v3;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v3;
  v7 = *v4;
  v6 = *(v4 + 8);
  v16 = *(v4 + 32);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2] + *(v2 + 10);
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 16) = v5;
  *(v8 + 24) = v3;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t BalloonPlugin.$associatedMessageGUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_214065E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BalloonPlugin(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_214065EFC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for BalloonPlugin(0) + 44);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

__n128 BalloonPlugin.$associatedMessageGUID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 44));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

void (*BalloonPlugin.$associatedMessageGUID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for BalloonPlugin(0) + 44);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

void sub_2140660B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5] + *(*a1 + 9);
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 8);
  v9 = *(v3 + 16);
  v11 = *(v3 + 24);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 8);

    sub_213FDC6D0(v9, v11);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
  }

  free(v2);
}

uint64_t BalloonPlugin.associatedMessageRange.getter()
{
  v1 = (v0 + *(type metadata accessor for BalloonPlugin(0) + 48));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t BalloonPlugin.associatedMessageRange.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for BalloonPlugin(0);
  v8 = v3 + *(result + 48);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t BalloonPlugin.associatedMessageType.getter()
{
  v1 = v0 + *(type metadata accessor for BalloonPlugin(0) + 52);
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v1 + 16);
    v3 = *(v1 + 24) & 1;
  }

  return result;
}

uint64_t sub_2140662DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for BalloonPlugin(0);
  v5 = a1 + *(result + 52);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*BalloonPlugin.associatedMessageType.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for BalloonPlugin(0) + 52);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_21406646C;
  }

  return result;
}

uint64_t BalloonPlugin.$associatedMessageType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

uint64_t sub_21406650C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BalloonPlugin(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_214066578(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for BalloonPlugin(0) + 52);
  v9 = *(v8 + 8);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

__n128 BalloonPlugin.$associatedMessageType.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for BalloonPlugin(0) + 52));
  v8 = v7->n128_u64[1];

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

void (*BalloonPlugin.$associatedMessageType.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for BalloonPlugin(0) + 52);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_214066720;
}

void sub_214066720(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4] + *(*a1 + 7);
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 8);
  if (a2)
  {
    v11 = (*a1)[1];

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
    *(v3 + 26) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 8);

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
    *(v3 + 26) = v9;
  }

  free(v2);
}

uint64_t BalloonPlugin.attachments.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for BalloonPlugin(0) + 56));
}

uint64_t BalloonPlugin.attachments.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for BalloonPlugin(0) + 56);
  v4 = *(v1 + v3);

  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_2140668B4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2140669D4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146ED4B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 2;
  *(v5 + 16) = sub_2140676B8;
  *(v5 + 24) = v6;
  *(v4 + 32) = v5;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 3;
  *(v7 + 16) = sub_2140676E0;
  *(v7 + 24) = v8;
  *(v4 + 40) = v7;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = 4000;
  *(v9 + 16) = sub_2140676E0;
  *(v9 + 24) = v10;
  *(v4 + 48) = v9;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v11 + 16) = sub_2140676CC;
  *(v11 + 24) = v12;
  *(v3 + 32) = v11;
  v13 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v14 + 16) = sub_21403255C;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  return sub_2140428D0(inited, a1);
}

uint64_t BalloonPlugin.debugDescription.getter()
{
  sub_2146D9EF8();
  MEMORY[0x2160545D0](60, 0xE100000000000000);
  MEMORY[0x2160545D0](0x506E6F6F6C6C6142, 0xED00006E6967756CLL);
  MEMORY[0x2160545D0](0x49656C646E756220, 0xEB00000000203A44);
  v1 = type metadata accessor for BalloonPlugin(0);
  v2 = v0 + *(v1 + 20);
  v3 = *(v2 + 24);
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = v1;
  v5 = 7104878;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  MEMORY[0x2160545D0](v6, v3);

  MEMORY[0x2160545D0](0x7269707845736920, 0xEE00203A656C6261);
  if (*(v0 + v4[6]))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + v4[6]))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2160545D0](v8, v9);

  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBB0);
  v10 = v0 + v4[11];
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (!v12)
  {
    sub_213FDC6D0(v11, 0);
    v13 = 0xE300000000000000;
    v14 = 7104878;
    goto LABEL_12;
  }

  if (v12 == 1)
  {
LABEL_20:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v14 = sub_2146D9618();
  v13 = v15;
LABEL_12:
  MEMORY[0x2160545D0](v14, v13);

  MEMORY[0x2160545D0](0xD000000000000019, 0x800000021478BBD0);
  v16 = (v0 + v4[12]);
  if (v16[1])
  {
    v17 = 0xE300000000000000;
    v18 = 7104878;
  }

  else
  {
    v25 = *v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904770, &qword_2146ED4C0);
    v18 = sub_2146D9618();
    v17 = v19;
  }

  MEMORY[0x2160545D0](v18, v17);

  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBF0);
  v20 = v0 + v4[13];
  if (*(v20 + 25))
  {
    goto LABEL_20;
  }

  if (*(v20 + 24))
  {
    v21 = 0xE300000000000000;
  }

  else
  {
    v26 = *(v20 + 16);
    v5 = sub_2146D9618();
    v21 = v22;
  }

  MEMORY[0x2160545D0](v5, v21);

  MEMORY[0x2160545D0](0x6D68636174746120, 0xEE00203A73746E65);
  v27 = *(v0 + v4[14]);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0xD000000000000012, 0x800000021478BC10);
  v23 = MEMORY[0x216054820](*(v0 + v4[7]), &type metadata for AttributionInfo);
  MEMORY[0x2160545D0](v23);

  MEMORY[0x2160545D0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_214066FF0(uint64_t a1)
{
  *(a1 + 8) = sub_214067074(&qword_27C904778, type metadata accessor for BalloonPlugin.Payload);
  result = sub_214067074(&qword_27C904780, type metadata accessor for BalloonPlugin.Payload);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214067074(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2140670BC(uint64_t a1)
{
  *(a1 + 8) = sub_214067074(&qword_27C904788, type metadata accessor for BalloonPlugin);
  result = sub_214067074(&qword_27C904790, type metadata accessor for BalloonPlugin);
  *(a1 + 16) = result;
  return result;
}

void sub_214067168()
{
  type metadata accessor for BalloonPlugin.Payload(319);
  if (v0 <= 0x3F)
  {
    sub_2140673E4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
    if (v1 <= 0x3F)
    {
      sub_2140673E4(319, &qword_280B2E470, &type metadata for AttributionInfo, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_2140673E4(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2140673E4(319, &qword_280B2F2E8, &type metadata for _AttributedString, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_214067434(319, &qword_280B2E568, &unk_27C904F20, &qword_2146EE8A0, type metadata accessor for Validated);
            if (v5 <= 0x3F)
            {
              sub_214067434(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
              if (v6 <= 0x3F)
              {
                sub_214067434(319, &qword_280B2E390, &qword_27C904770, &qword_2146ED4C0, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_214067434(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0, type metadata accessor for Validated);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2140673E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_214067434(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2140674E8()
{
  result = type metadata accessor for MessagesAppBalloon();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Handwriting();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for LinkPresentation.MessagesPayload(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for CombinedPluginAttachmentInfo();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for DigitalTouchBalloon(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for MessagesAppCustomAcknowledgement();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_2140675AC(uint64_t a1, char a2, unint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_15:
    v7 = sub_2146DA028();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216054E00](v8, a3);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 != v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a3 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v15 = a1;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v14 = a2;
    LOBYTE(v12) = v11(&v15, &v14);

    v8 = v9 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v9;
}

uint64_t sub_2140676E4()
{
  result = sub_2145A8204();
  if (!v0)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    v4 = sub_2146D9588();
    sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    [v3 setClassName:v4 forClass:swift_getObjCClassFromMetadata()];

    [v2 encodeWithCoder_];
    v5 = [v3 encodedData];
    v6 = sub_2146D8A58();

    return v6;
  }

  return result;
}

uint64_t sub_2140677EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F436572616873;
  v4 = 0xEE0072656E696174;
  if (v2 != 1)
  {
    v3 = 0x6B6F546572616873;
    v4 = 0xEE00617461446E65;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C72556572616873;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6E6F436572616873;
  v8 = 0xEE0072656E696174;
  if (*a2 != 1)
  {
    v7 = 0x6B6F546572616873;
    v8 = 0xEE00617461446E65;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C72556572616873;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_214067920()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2140679DC()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_214067A84()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214067B3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21406967C();
  *a2 = result;
  return result;
}

void sub_214067B6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEE0072656E696174;
  v5 = 0x6E6F436572616873;
  if (v2 != 1)
  {
    v5 = 0x6B6F546572616873;
    v4 = 0xEE00617461446E65;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C72556572616873;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_214067BE4()
{
  v1 = 0x6E6F436572616873;
  if (*v0 != 1)
  {
    v1 = 0x6B6F546572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C72556572616873;
  }
}

uint64_t sub_214067C58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21406967C();
  *a1 = result;
  return result;
}

uint64_t sub_214067C80(uint64_t a1)
{
  v2 = sub_2140682BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214067CBC(uint64_t a1)
{
  v2 = sub_2140682BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214067CF8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v37 - v4;
  v5 = type metadata accessor for CloudKitSharingToken();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9047A0, &unk_2146ED5C8);
  v43 = *(v17 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140682BC();
  sub_2146DAA28();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v44 + *(v22 + 28), v11, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_213FB2DF4(v11, &qword_27C903F40, &unk_2146F1C50);
LABEL_9:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  sub_214032588(v11, v16);
  LOBYTE(v45) = 0;
  sub_2146D8958();
  sub_214069714(&qword_280B2FDE0, MEMORY[0x277CC9260]);
  v23 = v42;
  sub_2146DA308();
  v24 = v17;
  if (v23)
  {
    sub_213FB2DF4(v16, &unk_27C9131A0, &unk_2146E9D10);
    return (*(v43 + 8))(v20, v17);
  }

  sub_213FB2DF4(v16, &unk_27C9131A0, &unk_2146E9D10);
  v26 = type metadata accessor for AccountsRepresentativeCloudShareInfo(0);
  v27 = v44;
  v28 = v44 + *(v26 + 20);
  v29 = *(v28 + 24);
  if (v29 == 1)
  {
    goto LABEL_9;
  }

  v30 = v26;
  v31 = *(v28 + 16);
  LOBYTE(v45) = 1;

  sub_2146DA2B8();
  sub_213FDC6D0(v31, v29);
  v32 = v41;
  sub_213FB2E54(v27 + *(v30 + 24), v41, &qword_27C9041D8, &qword_2146ED5C0);
  if ((*(v39 + 48))(v32, 1, v40) == 1)
  {
    (*(v43 + 8))(v20, v24);
    return sub_213FB2DF4(v32, &qword_27C9041D8, &qword_2146ED5C0);
  }

  else
  {
    v33 = v38;
    sub_21404A900(v32, v38);
    v45 = sub_2140676E4();
    v46 = v34;
    v47 = 2;
    v35 = v45;
    v36 = v34;
    sub_214061684();
    sub_2146DA388();
    sub_214068310(v33);
    (*(v43 + 8))(v20, v24);
    return sub_213FB54FC(v35, v36);
  }
}

unint64_t sub_2140682BC()
{
  result = qword_27C9047A8;
  if (!qword_27C9047A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9047A8);
  }

  return result;
}

uint64_t sub_214068310(uint64_t a1)
{
  v2 = type metadata accessor for CloudKitSharingToken();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214068384()
{
  sub_2140683D8();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2140683D8()
{
  v0 = sub_2146D8608();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_2146D85F8();
  type metadata accessor for AccountsRepresentativeMessage(0);
  sub_214069714(&qword_27C904810, type metadata accessor for AccountsRepresentativeMessage);
  v3 = sub_2146D85D8();
  v5 = v4;
  v6 = v3;

  v7 = MEMORY[0x277D84F98];
  v13 = MEMORY[0x277D84F98];
  if (v5 >> 60 == 15)
  {
    sub_2144AEF6C(0xD000000000000010, 0x800000021478BC50, v10);
    sub_213FB2DF4(v10, &qword_27C913170, &qword_2146EAB20);
    return v13;
  }

  else
  {
    v12 = MEMORY[0x277CC9318];
    *&v11 = v6;
    *(&v11 + 1) = v5;
    sub_213FDC730(&v11, v10);
    sub_21402D9F8(v6, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v10, 0xD000000000000010, 0x800000021478BC50, isUniquelyReferenced_nonNull_native);
    sub_213FDC6BC(v6, v5);
    return v7;
  }
}

uint64_t sub_21406856C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x657A696C616E6966;
    v6 = 0xD000000000000018;
    if (a1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6465747065636361;
    if (a1 != 5)
    {
      v7 = 0x666E496572616873;
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
    v1 = 1701869940;
    v2 = 2003790950;
    v3 = 0x6169646F74737563;
    if (a1 != 3)
    {
      v3 = 0x69636966656E6562;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6E6F73616572;
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

uint64_t sub_2140686C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21406856C(*a1);
  v5 = v4;
  if (v3 == sub_21406856C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_21406874C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_21406856C(v1);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2140687B0()
{
  sub_21406856C(*v0);
  sub_2146D9698();
}

uint64_t sub_214068804()
{
  v1 = *v0;
  sub_2146DA958();
  sub_21406856C(v1);
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214068864@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2140696C8();
  *a2 = result;
  return result;
}

uint64_t sub_214068894@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21406856C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2140688DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2140696C8();
  *a1 = result;
  return result;
}

uint64_t sub_214068904(uint64_t a1)
{
  v2 = sub_214068D90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214068940(uint64_t a1)
{
  v2 = sub_214068D90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21406897C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9047B0, &qword_2146ED5D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214068D90();
  sub_2146DAA28();
  v24[15] = *v3;
  v24[14] = 0;
  sub_214068DE4();
  sub_2146DA308();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v24[13] = *(v3 + 1);
  v24[12] = 1;
  sub_214068E38();
  sub_2146DA308();
  v24[11] = *(v3 + 2);
  v24[10] = 2;
  sub_214068E8C();
  sub_2146DA308();
  v12 = *(v3 + 32);
  if (v12 != 1)
  {
    v13 = *(v3 + 24);
    v24[9] = 3;

    sub_2146DA2B8();
    sub_213FDC6D0(v13, v12);
    v14 = *(v3 + 72);
    if (v14 != 1)
    {
      v15 = *(v3 + 64);
      v24[8] = 4;

      sub_2146DA2B8();
      sub_213FDC6D0(v15, v14);
      v16 = *(v3 + 81);
      v24[7] = 5;
      sub_2146DA2C8();
      v17 = type metadata accessor for AccountsRepresentativeMessage(0);
      v18 = v17[10];
      v24[6] = 6;
      type metadata accessor for AccountsRepresentativeCloudShareInfo(0);
      sub_214069714(&qword_27C9047D8, type metadata accessor for AccountsRepresentativeCloudShareInfo);
      sub_2146DA298();
      v19 = *(v3 + v17[11]);
      v24[5] = 7;
      sub_2146DA2C8();
      v20 = *(v3 + v17[12]);
      v24[4] = 8;
      sub_2146DA2C8();
      v21 = (v3 + v17[13]);
      v22 = *v21;
      v23 = v21[1];
      v24[3] = 9;
      sub_2146DA2B8();
      return (*(v6 + 8))(v9, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_214068D90()
{
  result = qword_27C9047B8;
  if (!qword_27C9047B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9047B8);
  }

  return result;
}

unint64_t sub_214068DE4()
{
  result = qword_27C9047C0;
  if (!qword_27C9047C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9047C0);
  }

  return result;
}

unint64_t sub_214068E38()
{
  result = qword_27C9047C8;
  if (!qword_27C9047C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9047C8);
  }

  return result;
}

unint64_t sub_214068E8C()
{
  result = qword_27C9047D0;
  if (!qword_27C9047D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9047D0);
  }

  return result;
}

void sub_214068EE0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_21402D9F8(a1, a2);
  v8 = sub_21404A62C();
  if (v3)
  {
    sub_213FB54FC(a1, a2);
    v9 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {

      sub_21404A6EC();
      swift_allocError();
      v11 = v10;
      v12 = v32;
      v13 = [v12 domain];
      v14 = sub_2146D95B8();
      v16 = v15;

      MEMORY[0x2160545D0](v14, v16);

      *v11 = 0xD000000000000014;
      v11[1] = 0x800000021478AAD0;
      [v12 code];
      v17 = sub_2146DA428();
      v19 = v18;

      v11[2] = v17;
      v11[3] = v19;
      v11[4] = 0xD00000000000001DLL;
      v11[5] = 0x800000021478BC30;
      swift_willThrow();
    }

    else
    {

      sub_21404A6EC();
      swift_allocError();
      v27 = v26;
      v28 = v3;
      sub_214689A34(v3, 0xD00000000000001DLL, 0x800000021478BC30, v27);
      swift_willThrow();
    }
  }

  else
  {
    v20 = v8;
    sub_213FB54FC(a1, a2);
    v21 = v20;
    [v21 setRequiresSecureCoding_];
    [v21 _enableStrictSecureDecodingMode];
    sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = sub_2146D9588();
    [v21 setClass:ObjCClassFromMetadata forClassName:v23];

    v24 = [objc_allocWithZone(_BlastDoorCKDeviceToDeviceShareInvitationToken) initWithCoder_];
    if (v24)
    {
      v25 = sub_2146D8898();
      [v24 setShareURL_];

      sub_2145A8530(v24, a3);
    }

    else
    {
      v29 = sub_2146D9F58();
      swift_allocError();
      v31 = v30;
      sub_2146D9F28();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84168], v29);
      swift_willThrow();
    }
  }
}

uint64_t _s21EncodingConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s21EncodingConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_214069470()
{
  result = qword_27C9047E0;
  if (!qword_27C9047E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9047E0);
  }

  return result;
}

unint64_t sub_2140694C8()
{
  result = qword_27C9047E8;
  if (!qword_27C9047E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9047E8);
  }

  return result;
}

unint64_t sub_214069520()
{
  result = qword_27C9047F0;
  if (!qword_27C9047F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9047F0);
  }

  return result;
}

unint64_t sub_214069578()
{
  result = qword_27C9047F8;
  if (!qword_27C9047F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9047F8);
  }

  return result;
}

unint64_t sub_2140695D0()
{
  result = qword_27C904800;
  if (!qword_27C904800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904800);
  }

  return result;
}

unint64_t sub_214069628()
{
  result = qword_27C904808;
  if (!qword_27C904808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904808);
  }

  return result;
}

uint64_t sub_21406967C()
{
  v0 = sub_2146DA098();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2140696C8()
{
  v0 = sub_2146DA098();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_214069714(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_214069764(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v2, 0);
    v3 = v15;
    sub_214069AD8();
    v4 = (a1 + 40);
    do
    {
      v13 = *(v4 - 1);
      v14 = *v4;
      v5 = sub_2146D9DD8();
      v16 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_21409FD08((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v16;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_214069888(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v35 = MEMORY[0x277D84F90];
    result = sub_21409FD28(0, v2, 0);
    v4 = 0;
    v5 = v35;
    v27 = v1 + 32;
    v25 = v2;
    v26 = v1;
    while (v4 < *(v1 + 16))
    {
      v6 = (v27 + 24 * v4);
      v7 = v6[1];
      v8 = v6[2];
      v34 = *v6;
      sub_214069AD8();

      v9 = sub_2146D9DD8();
      v10 = v9;
      v30 = v11;
      v12 = *(v8 + 16);
      if (v12)
      {
        v28 = v9;
        v29 = v5;
        v33 = MEMORY[0x277D84F90];
        sub_21409FD08(0, v12, 0);
        v13 = v8;
        v14 = v33;
        v15 = (v13 + 40);
        do
        {
          v31 = *(v15 - 1);
          v32 = *v15;
          v16 = sub_2146D9DD8();
          v18 = v17;
          v20 = *(v33 + 16);
          v19 = *(v33 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_21409FD08((v19 > 1), v20 + 1, 1);
          }

          *(v33 + 16) = v20 + 1;
          v21 = v33 + 16 * v20;
          *(v21 + 32) = v16;
          *(v21 + 40) = v18;
          v15 += 2;
          --v12;
        }

        while (v12);

        v2 = v25;
        v1 = v26;
        v5 = v29;
        v10 = v28;
      }

      else
      {

        v14 = MEMORY[0x277D84F90];
      }

      v23 = *(v5 + 16);
      v22 = *(v5 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_21409FD28((v22 > 1), v23 + 1, 1);
      }

      ++v4;
      *(v5 + 16) = v23 + 1;
      v24 = (v5 + 24 * v23);
      v24[4] = v10;
      v24[5] = v30;
      v24[6] = v14;
      if (v4 == v2)
      {

        return v5;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_214069AD8()
{
  result = qword_280B35238;
  if (!qword_280B35238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B35238);
  }

  return result;
}

unint64_t sub_214069B2C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214069C30()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214069CAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    *a2 = *(a1 + 24);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214069D1C(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214069DCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v12 = *(v3 + 40);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 32);

    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214069F14(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_214069FB0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214069FB0(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 8);
    v11 = *(v4 + 16);
    v16 = *(v4 + 40);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 24) = v5;
      *(v4 + 32) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 8);
  v6 = *(v4 + 16);
  v16 = *(v4 + 40);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v8 = a1[3];

  *(v4 + 24) = v5;
  *(v4 + 32) = v3;
}

uint64_t sub_21406A1D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

uint64_t sub_21406A21C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  return result;
}

__n128 sub_21406A294(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

void (*sub_21406A2F0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406A388;
}

void sub_21406A388(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 16);
  v10 = *(v3 + 32);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v7;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 16);

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v7;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
  }

  free(v2);
}

uint64_t sub_21406A458()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 64);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21406A4D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    *a2 = *(a1 + 64);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21406A544(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21406A5F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v12 = *(v3 + 80);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 72);

    *(v3 + 64) = a1;
    *(v3 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_21406A73C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 64);
    a1[1] = v3;

    return sub_21406A7D8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21406A7D8(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 48);
    v11 = *(v4 + 56);
    v16 = *(v4 + 80);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 64) = v5;
      *(v4 + 72) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 48);
  v6 = *(v4 + 56);
  v16 = *(v4 + 80);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v8 = a1[3];

  *(v4 + 64) = v5;
  *(v4 + 72) = v3;
}

uint64_t sub_21406A9F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

uint64_t sub_21406AA44(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);

  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  *(a2 + 80) = v7;
  return result;
}

__n128 sub_21406AABC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[3].n128_u64[1];
  v7 = v1[4].n128_u64[1];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

void (*sub_21406AB18(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v7 = *(v1 + 64);
  v6 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406ABB0;
}

void sub_21406ABB0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 56);
  v10 = *(v3 + 72);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 56);

    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
  }

  free(v2);
}

uint64_t sub_21406ACB8()
{
  sub_21406AD60();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21406AD0C()
{
  sub_21406AD60();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21406AD60()
{
  v1 = *v0;
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[8];
  v4 = v0[9];
  v6 = *(v0 + 81);
  v16 = MEMORY[0x277D83E88];
  *&v15 = v1;
  sub_213FDC730(&v15, v14);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v14, 118, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  if (!v2)
  {
    goto LABEL_4;
  }

  v9 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D837D0];
  *&v15 = v3;
  *(&v15 + 1) = v2;
  sub_213FDC730(&v15, v14);

  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v14, 115, 0xE100000000000000, v10);
  if (v4)
  {
    v16 = v9;
    *&v15 = v5;
    *(&v15 + 1) = v4;
    sub_213FDC730(&v15, v14);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v14, 112, 0xE100000000000000, v11);
    v16 = &type metadata for IDSSessionReinitiate.IDSSessionReinitiateSubcommand;
    LOBYTE(v15) = v6;
    sub_213FDC730(&v15, v14);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v14, 26994, 0xE200000000000000, v12);
    return v7;
  }

  else
  {
LABEL_4:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_21406AF14()
{
  result = qword_27C904818;
  if (!qword_27C904818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904818);
  }

  return result;
}

unint64_t sub_21406AF94()
{
  result = qword_27C904820;
  if (!qword_27C904820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904820);
  }

  return result;
}

unint64_t sub_21406AFE8()
{
  result = qword_27C904828;
  if (!qword_27C904828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904828);
  }

  return result;
}

uint64_t sub_21406B068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21406B0A4()
{
  result = qword_27C904830;
  if (!qword_27C904830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904830);
  }

  return result;
}

unint64_t sub_21406B0F8()
{
  result = qword_27C904838;
  if (!qword_27C904838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904838);
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21406B170(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_21406B1B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21406B230()
{
  result = qword_27C904840;
  if (!qword_27C904840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904840);
  }

  return result;
}

uint64_t sub_21406B29C()
{
  v1 = v0;
  v185 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904848, &unk_2146F4E30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v132 = &v128 - v4;
  v5 = type metadata accessor for EncodedAppData(0);
  v130 = *(v5 - 8);
  v131 = v5;
  v6 = *(v130 + 64);
  MEMORY[0x28223BE20](v5);
  v133 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v129 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v134 = &v128 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v128 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v128 - v17;
  v19 = MEMORY[0x277D84F98];
  v137 = MEMORY[0x277D84F98];
  v20 = type metadata accessor for MessagesAppBalloon();
  v21 = (v1 + *(v20 + 24));
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
    *(&v173 + 1) = MEMORY[0x277D837D0];
    *&v172 = v23;
    *(&v172 + 1) = v22;
    sub_213FDC730(&v172, &v154);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v138 = v19;
    sub_2140524DC(&v154, 0x74786574646CLL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v137 = v138;
  }

  v136 = v20;
  v25 = *(v20 + 20);
  sub_213FB2E54(v1 + v25, v18, &unk_27C904F30, &unk_2146EFA20);
  v26 = sub_2146D8B88();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v29 = v28(v18, 1, v26);
  sub_213FB2DF4(v18, &unk_27C904F30, &unk_2146EFA20);
  v135 = v1;
  if (v29 != 1)
  {
    v30 = v1 + v25;
    v31 = v128;
    sub_213FB2E54(v30, v128, &unk_27C904F30, &unk_2146EFA20);
    if (v28(v31, 1, v26) == 1)
    {
      sub_213FB2DF4(v31, &unk_27C904F30, &unk_2146EFA20);
      sub_2144AEF6C(0xD000000000000011, 0x800000021478BCE0, &v172);
      sub_213FB2DF4(&v172, &qword_27C913170, &qword_2146EAB20);
    }

    else
    {
      *(&v173 + 1) = v26;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v172);
      (*(v27 + 32))(boxed_opaque_existential_0, v31, v26);
      sub_213FDC730(&v172, &v154);
      v33 = v137;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *&v138 = v33;
      sub_2140524DC(&v154, 0xD000000000000011, 0x800000021478BCE0, v34);
      v137 = v138;
    }

    v1 = v135;
  }

  v35 = v136;
  v36 = (v1 + v136[8]);
  v37 = v36[1];
  v38 = v1;
  if (v37 != 1)
  {
    v39 = *v36;
    v40 = *(v36 + 4);
    v175 = *(v36 + 3);
    v176 = v40;
    v177[0] = *(v36 + 5);
    *(v177 + 9) = *(v36 + 89);
    v41 = *(v36 + 2);
    v173 = *(v36 + 1);
    v174 = v41;
    *&v172 = v39;
    *(&v172 + 1) = v37;
    v42 = sub_21406C2A0();
    *(&v155 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v154 = v42;
    sub_213FDC730(&v154, &v172);
    v43 = v137;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    *&v138 = v43;
    sub_2140524DC(&v172, 0x6F666E4972657375, 0xE800000000000000, v44);
    v137 = v138;
  }

  v45 = v1 + v35[12];
  v46 = *(v45 + 24);
  if (v46)
  {
    if (v46 == 1)
    {
      goto LABEL_53;
    }

    v47 = *(v45 + 16);
    *(&v173 + 1) = MEMORY[0x277D837D0];
    *&v172 = v47;
    *(&v172 + 1) = v46;
    sub_213FDC730(&v172, &v154);

    v48 = v137;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    *&v138 = v48;
    sub_2140524DC(&v154, 0x6C4374756F79616CLL, 0xEB00000000737361, v49);
    v137 = v138;
  }

  v50 = v35[7];
  v51 = v1 + v50;
  v52 = v134;
  sub_213FB2E54(v51, v134, &unk_27C9131A0, &unk_2146E9D10);
  v53 = sub_2146D8958();
  v54 = v38;
  v55 = *(v53 - 8);
  v56 = *(v55 + 48);
  v57 = v56(v52, 1, v53);
  sub_213FB2DF4(v52, &unk_27C9131A0, &unk_2146E9D10);
  if (v57 != 1)
  {
    v58 = v129;
    sub_213FB2E54(v54 + v50, v129, &unk_27C9131A0, &unk_2146E9D10);
    if (v56(v58, 1, v53) == 1)
    {
      sub_213FB2DF4(v58, &unk_27C9131A0, &unk_2146E9D10);
      sub_2144AEF6C(5001813, 0xE300000000000000, &v172);
      sub_213FB2DF4(&v172, &qword_27C913170, &qword_2146EAB20);
    }

    else
    {
      *(&v173 + 1) = v53;
      v59 = __swift_allocate_boxed_opaque_existential_0(&v172);
      (*(v55 + 32))(v59, v58, v53);
      sub_213FDC730(&v172, &v154);
      v60 = v137;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *&v138 = v60;
      sub_2140524DC(&v154, 5001813, 0xE300000000000000, v61);
      v137 = v138;
    }

    v54 = v135;
  }

  v62 = v54[1];
  if (v62)
  {
    v63 = *v54;
    *(&v173 + 1) = MEMORY[0x277D837D0];
    *&v172 = v63;
    *(&v172 + 1) = v62;
    sub_213FDC730(&v172, &v154);

    v64 = v137;
    v65 = swift_isUniquelyReferenced_nonNull_native();
    *&v138 = v64;
    sub_2140524DC(&v154, 0xD000000000000012, 0x800000021478BCC0, v65);
    v137 = v138;
  }

  v134 = v136[11];
  sub_213FB2E54(v54 + v134, &v172, &qword_27C904850, &unk_2146EDB40);
  v66 = v178;
  v67 = v179;
  v68 = v180;
  v69 = v181;
  v70 = v182;
  v71 = v183;
  v72 = v184;
  sub_213FB2DF4(&v172, &qword_27C904850, &unk_2146EDB40);
  if (v66 >> 1 != 0xFFFFFFFF || (v68 | v67) > 1 || v70 & 0xFFFFFFFFFFFFFEFELL | v69 & 0xFFFFFFFFFFFF00FELL || (v72 | v71) >= 2)
  {
    v74 = v135;
    sub_213FB2E54(v135 + v134, &v172, &qword_27C904850, &unk_2146EDB40);
    if (v178 >> 1 == 0xFFFFFFFF && (v180 | v179) <= 1 && !(v182 & 0xFFFFFFFFFFFFFEFELL | v181 & 0xFFFFFFFFFFFF00FELL) && (v184 | v183) < 2)
    {
      sub_213FB2DF4(&v172, &qword_27C904850, &unk_2146EDB40);
      v77 = v136;
      v78 = MEMORY[0x277D837D0];
      sub_2144AEF6C(26977, 0xE200000000000000, &v172);
      sub_213FB2DF4(&v172, &qword_27C913170, &qword_2146EAB20);
      v75 = v132;
      v73 = v133;
      v76 = v131;
      goto LABEL_33;
    }

    sub_213FB2E54(&v172, &v138, &qword_27C904858, &qword_214736F00);
    if (*(&v139 + 1))
    {
      v166 = v150;
      v167 = v151;
      v168 = v152;
      v169 = v153;
      v162 = v146;
      v163 = v147;
      v164 = v148;
      v165 = v149;
      v158 = v142;
      v159 = v143;
      v160 = v144;
      v161 = v145;
      v154 = v138;
      v155 = v139;
      v156 = v140;
      v157 = v141;
      sub_21406D278(&v172);
      type metadata accessor for JPEGEncoder();
      v79 = swift_allocObject();
      v122 = sub_21463D370(v79);
      v124 = v123;
      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_21406D2CC(&v154);
      v171 = MEMORY[0x277CC9318];
      *&v170 = v122;
      *(&v170 + 1) = v124;
      sub_213FDC730(&v170, &v172);
      v125 = v137;
      v126 = swift_isUniquelyReferenced_nonNull_native();
      *&v154 = v125;
      sub_2140524DC(&v172, 26977, 0xE200000000000000, v126);
      v137 = v154;
      v73 = v133;
      goto LABEL_25;
    }

    __break(1u);
LABEL_53:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v73 = v133;
  v74 = v135;
LABEL_25:
  v76 = v131;
  v75 = v132;
  v77 = v136;
  v78 = MEMORY[0x277D837D0];
LABEL_33:
  v80 = (v74 + v77[10]);
  v81 = v80[1];
  if (v81)
  {
    v82 = *v80;
    *(&v173 + 1) = v78;
    *&v172 = v82;
    *(&v172 + 1) = v81;
    sub_213FDC730(&v172, &v154);

    v83 = v137;
    v84 = swift_isUniquelyReferenced_nonNull_native();
    *&v138 = v83;
    sub_2140524DC(&v154, 28257, 0xE200000000000000, v84);
    v137 = v138;
  }

  v85 = (v74 + v77[9]);
  if ((v85[1] & 1) == 0)
  {
    v86 = *v85;
    *(&v173 + 1) = MEMORY[0x277D83B88];
    *&v172 = v86;
    sub_213FDC730(&v172, &v154);
    v87 = v137;
    v88 = swift_isUniquelyReferenced_nonNull_native();
    *&v138 = v87;
    sub_2140524DC(&v154, 0x6469707061, 0xE500000000000000, v88);
    v137 = v138;
  }

  v89 = (v74 + v77[13]);
  v90 = v89[1];
  if (v90 != 1)
  {
    *&v154 = *v89;
    *(&v154 + 1) = v90;
    v91 = sub_21406C5D0();
    *(&v173 + 1) = MEMORY[0x277CC9318];
    *&v172 = v91;
    *(&v172 + 1) = v92;
    sub_213FDC730(&v172, &v154);
    v93 = v137;
    v94 = swift_isUniquelyReferenced_nonNull_native();
    *&v138 = v93;
    sub_2140524DC(&v154, 0x6F79614C6576696CLL, 0xEE006F666E497475, v94);
    v137 = v138;
  }

  sub_213FB2E54(v74 + v77[16], v75, &qword_27C904848, &unk_2146F4E30);
  if ((*(v130 + 48))(v75, 1, v76) == 1)
  {
    sub_213FB2DF4(v75, &qword_27C904848, &unk_2146F4E30);
  }

  else
  {
    v95 = sub_21406D198(v75, v73);
    v96 = (v73 + *(v76 + 20));
    v98 = *v96;
    v97 = v96[1];
    *&v172 = v98;
    *(&v172 + 1) = v97;
    MEMORY[0x28223BE20](v95);
    v127 = &v172;
    if (sub_21441C084(sub_21406D1FC, (&v128 - 4), &unk_2826536D8))
    {
      v99 = sub_214679ABC();
      *(&v173 + 1) = MEMORY[0x277CC9318];
      *&v172 = v99;
      *(&v172 + 1) = v100;
      sub_213FDC730(&v172, &v154);
      v101 = v137;
      v102 = swift_isUniquelyReferenced_nonNull_native();
      *&v138 = v101;
      sub_2140524DC(&v154, 1635017060, 0xE400000000000000, v102);
      sub_21406D21C(v73);
      v137 = v138;
    }

    else
    {
      sub_2146D9BA8();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_2146EA710;
      v104 = (v74 + v77[15]);
      v106 = *v104;
      v105 = v104[1];
      *(v103 + 56) = v78;
      *(v103 + 64) = sub_213FB2DA0();
      *(v103 + 32) = v106;
      *(v103 + 40) = v105;

      sub_2146D91D8();

      sub_21406D21C(v73);
    }
  }

  v107 = objc_opt_self();
  v108 = MEMORY[0x277D837D0];
  v109 = sub_2146D9468();

  *&v172 = 0;
  v110 = [v107 archivedDataWithRootObject:v109 requiringSecureCoding:1 error:&v172];

  v111 = v172;
  if (v110)
  {
    v112 = sub_2146D8A58();
  }

  else
  {
    v113 = v111;
    v114 = sub_2146D8838();

    swift_willThrow();
    sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_2146EA710;
    *&v172 = v114;
    v116 = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v117 = sub_2146D9618();
    v119 = v118;
    *(v115 + 56) = v108;
    *(v115 + 64) = sub_213FB2DA0();
    *(v115 + 32) = v117;
    *(v115 + 40) = v119;
    sub_2146D91D8();

    v112 = 0;
  }

  v120 = *MEMORY[0x277D85DE8];
  return v112;
}

uint64_t sub_21406C2A0()
{
  v1 = v0[1];
  v2 = v0[3];
  v21 = *v0;
  v22 = v0[2];
  v3 = v0[5];
  v4 = v0[7];
  v23 = v0[4];
  v24 = v0[6];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[11];
  v20 = v0[12];
  v25 = *(v0 + 104);
  v8 = MEMORY[0x277D84F98];
  if (v5)
  {
    v9 = v0[8];
    v10 = MEMORY[0x277D837D0];
    v28 = MEMORY[0x277D837D0];
    *&v27 = v9;
    *(&v27 + 1) = v5;
    sub_213FDC730(&v27, v26);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v26, 0x69742D6567616D69, 0xEB00000000656C74, isUniquelyReferenced_nonNull_native);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = MEMORY[0x277D837D0];
    if (v7)
    {
LABEL_3:
      v12 = v10;
      v28 = v10;
      *&v27 = v6;
      *(&v27 + 1) = v7;
      sub_213FDC730(&v27, v26);

      v13 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v26, 0x75732D6567616D69, 0xEE00656C74697462, v13);
      if (!v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v12 = v10;
  if (v1)
  {
LABEL_4:
    v28 = v12;
    *&v27 = v21;
    *(&v27 + 1) = v1;
    sub_213FDC730(&v27, v26);

    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v26, 0x6E6F6974706163, 0xE700000000000000, v14);
  }

LABEL_5:
  if (v2)
  {
    v28 = v12;
    *&v27 = v22;
    *(&v27 + 1) = v2;
    sub_213FDC730(&v27, v26);

    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v26, 0x6974706163627573, 0xEA00000000006E6FLL, v15);
  }

  if (v3)
  {
    v28 = v12;
    *&v27 = v23;
    *(&v27 + 1) = v3;
    sub_213FDC730(&v27, v26);

    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v26, 0xD000000000000014, 0x800000021478BD60, v16);
  }

  if (v4)
  {
    v28 = v12;
    *&v27 = v24;
    *(&v27 + 1) = v4;
    sub_213FDC730(&v27, v26);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v26, 0xD000000000000013, 0x800000021478BD40, v17);
  }

  if ((v25 & 1) == 0)
  {
    v28 = MEMORY[0x277D83B88];
    *&v27 = v20;
    sub_213FDC730(&v27, v26);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v26, 0x697463612D706174, 0xEA00000000006E6FLL, v18);
  }

  return v8;
}