unint64_t sub_24AC04D04()
{
  result = qword_27EF9AA28;
  if (!qword_27EF9AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA28);
  }

  return result;
}

unint64_t sub_24AC04D88()
{
  result = qword_27EF9AA38;
  if (!qword_27EF9AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA38);
  }

  return result;
}

uint64_t sub_24AC04E14(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_24AC04E5C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_24AC04EA4()
{
  result = qword_27EF9AC28[0];
  if (!qword_27EF9AC28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9AC28);
  }

  return result;
}

unint64_t sub_24AC04EF8()
{
  result = qword_27EF9AA48;
  if (!qword_27EF9AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA48);
  }

  return result;
}

unint64_t sub_24AC04F7C()
{
  result = qword_27EF9AA58;
  if (!qword_27EF9AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA58);
  }

  return result;
}

uint64_t sub_24AC05008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A970, &qword_24AC10690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AC05098()
{
  result = qword_27EF9AA60;
  if (!qword_27EF9AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA60);
  }

  return result;
}

unint64_t sub_24AC050F0()
{
  result = qword_27EF9AA68;
  if (!qword_27EF9AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA68);
  }

  return result;
}

unint64_t sub_24AC05148()
{
  result = qword_27EF9AA70;
  if (!qword_27EF9AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA70);
  }

  return result;
}

unint64_t sub_24AC051A0()
{
  result = qword_27EF9AA78;
  if (!qword_27EF9AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA78);
  }

  return result;
}

unint64_t sub_24AC051F8()
{
  result = qword_27EF9AA80;
  if (!qword_27EF9AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA80);
  }

  return result;
}

unint64_t sub_24AC05254()
{
  result = qword_27EF9AA90;
  if (!qword_27EF9AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA90);
  }

  return result;
}

unint64_t sub_24AC052AC()
{
  result = qword_27EF9AA98;
  if (!qword_27EF9AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA98);
  }

  return result;
}

unint64_t sub_24AC05304()
{
  result = qword_27EF9AAA0;
  if (!qword_27EF9AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AAA0);
  }

  return result;
}

uint64_t sub_24AC05360(uint64_t a1)
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

uint64_t sub_24AC053D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

uint64_t getEnumTagSinglePayload for SourceTypes(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for SourceTypes(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_24AC05664(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_24AC056AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24AC0573C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24AC057CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_24AC05828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Email.EmailType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Email.EmailType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_17FinHealthInsights14CurrencyAmountVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
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

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_24AC05A40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
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

uint64_t sub_24AC05A9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Transaction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Transaction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Email.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Email.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Order.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Order.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrderMatchReason.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OrderMatchReason.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24AC060D0()
{
  result = qword_27EF9C4B0[0];
  if (!qword_27EF9C4B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9C4B0);
  }

  return result;
}

unint64_t sub_24AC06128()
{
  result = qword_27EF9C6C0[0];
  if (!qword_27EF9C6C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9C6C0);
  }

  return result;
}

unint64_t sub_24AC06180()
{
  result = qword_27EF9C8D0[0];
  if (!qword_27EF9C8D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9C8D0);
  }

  return result;
}

unint64_t sub_24AC061D8()
{
  result = qword_27EF9CAE0[0];
  if (!qword_27EF9CAE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9CAE0);
  }

  return result;
}

unint64_t sub_24AC06230()
{
  result = qword_27EF9CCF0[0];
  if (!qword_27EF9CCF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9CCF0);
  }

  return result;
}

unint64_t sub_24AC06288()
{
  result = qword_27EF9CF00[0];
  if (!qword_27EF9CF00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9CF00);
  }

  return result;
}

unint64_t sub_24AC062E0()
{
  result = qword_27EF9D010;
  if (!qword_27EF9D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9D010);
  }

  return result;
}

unint64_t sub_24AC06338()
{
  result = qword_27EF9D018[0];
  if (!qword_27EF9D018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9D018);
  }

  return result;
}

unint64_t sub_24AC06390()
{
  result = qword_27EF9D0A0;
  if (!qword_27EF9D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9D0A0);
  }

  return result;
}

unint64_t sub_24AC063E8()
{
  result = qword_27EF9D0A8[0];
  if (!qword_27EF9D0A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9D0A8);
  }

  return result;
}

unint64_t sub_24AC06440()
{
  result = qword_27EF9D130;
  if (!qword_27EF9D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9D130);
  }

  return result;
}

unint64_t sub_24AC06498()
{
  result = qword_27EF9D138[0];
  if (!qword_27EF9D138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9D138);
  }

  return result;
}

unint64_t sub_24AC064F0()
{
  result = qword_27EF9D1C0;
  if (!qword_27EF9D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9D1C0);
  }

  return result;
}

unint64_t sub_24AC06548()
{
  result = qword_27EF9D1C8[0];
  if (!qword_27EF9D1C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9D1C8);
  }

  return result;
}

unint64_t sub_24AC065A0()
{
  result = qword_27EF9D250;
  if (!qword_27EF9D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9D250);
  }

  return result;
}

unint64_t sub_24AC065F8()
{
  result = qword_27EF9D258[0];
  if (!qword_27EF9D258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9D258);
  }

  return result;
}

unint64_t sub_24AC06650()
{
  result = qword_27EF9D2E0;
  if (!qword_27EF9D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9D2E0);
  }

  return result;
}

unint64_t sub_24AC066A8()
{
  result = qword_27EF9D2E8[0];
  if (!qword_27EF9D2E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9D2E8);
  }

  return result;
}

uint64_t sub_24AC06734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D754E726564726FLL && a2 == 0xEC00000073726562;
  if (v4 || (sub_24AC0F798() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F447265646E6573 && a2 == 0xED0000736E69616DLL || (sub_24AC0F798() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696B63617274 && a2 == 0xEF737265626D754ELL || (sub_24AC0F798() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144726564726FLL && a2 == 0xEA00000000007365 || (sub_24AC0F798() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xE900000000000073 || (sub_24AC0F798() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024AC12790 == a2 || (sub_24AC0F798() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024AC127B0 == a2 || (sub_24AC0F798() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024AC127D0 == a2 || (sub_24AC0F798() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024AC127F0 == a2 || (sub_24AC0F798() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656449726564726FLL && a2 == 0xEF7265696669746ELL || (sub_24AC0F798() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000 || (sub_24AC0F798() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEC000000736E6F69)
  {

    return 11;
  }

  else
  {
    v6 = sub_24AC0F798();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_24AC06B2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E655365746164 && a2 == 0xE800000000000000;
  if (v4 || (sub_24AC0F798() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024AC12810 == a2 || (sub_24AC0F798() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707369446D6F7266 && a2 == 0xEF656D614E79616CLL || (sub_24AC0F798() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F447265646E6573 && a2 == 0xEC0000006E69616DLL || (sub_24AC0F798() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7079546C69616D65 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v6 = sub_24AC0F798();

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

uint64_t sub_24AC06CF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69;
  if (v3 || (sub_24AC0F798() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000 || (sub_24AC0F798() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_24AC0F798() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEE00746E756F6D41 || (sub_24AC0F798() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024AC12830 == a2 || (sub_24AC0F798() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657461446E6F69 || (sub_24AC0F798() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72756F467473616CLL && a2 == 0xEE00737469676944 || (sub_24AC0F798() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x52556E696769726FLL && a2 == 0xE90000000000004CLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_24AC0F798();

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

unint64_t sub_24AC06FB4()
{
  result = qword_27EF9AAA8;
  if (!qword_27EF9AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AAA8);
  }

  return result;
}

unint64_t sub_24AC070A4()
{
  result = sub_24ABF45BC(&unk_285E22D50);
  qword_27EF9DC28 = result;
  return result;
}

uint64_t *sub_24AC070CC()
{
  if (qword_27EF9D3F0 != -1)
  {
    swift_once();
  }

  return &qword_27EF9DC28;
}

uint64_t sub_24AC0711C()
{
  if (qword_27EF9D3F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24AC07260(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_24ABEF620(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_24AC0F5F8();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 24 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_24ABEF620((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_24ABEF6E4(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_24ABEF6E4(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_24AC0748C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v33 = MEMORY[0x277D84F90];
  sub_24ABEF620(0, v1, 0);
  v2 = v33;
  v4 = v3 + 56;
  v5 = -1 << *(v3 + 32);
  result = sub_24AC0F5F8();
  v7 = result;
  v8 = 0;
  v26 = v3 + 64;
  v27 = v1;
  v28 = v3 + 56;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v29 = v8;
    v30 = *(v3 + 36);
    v11 = *(v3 + 48) + 24 * v7;
    v12 = v3;
    v13 = *v11;
    v14 = *(v11 + 8);
    v15 = *(v11 + 16);
    swift_getKeyPath();
    swift_bridgeObjectRetain_n();
    swift_getAtKeyPath();

    v17 = *(v33 + 16);
    v16 = *(v33 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_24ABEF620((v16 > 1), v17 + 1, 1);
    }

    *(v33 + 16) = v17 + 1;
    v18 = v33 + 16 * v17;
    *(v18 + 32) = v31;
    *(v18 + 40) = v32;
    v9 = 1 << *(v12 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v3 = v12;
    v4 = v28;
    v19 = *(v28 + 8 * v10);
    if ((v19 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v30 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v7 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (v26 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_24ABEF6E4(v7, v30, 0);
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_24ABEF6E4(v7, v30, 0);
    }

LABEL_4:
    v8 = v29 + 1;
    v7 = v9;
    if (v29 + 1 == v27)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

_BYTE *sub_24AC07704@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

__n128 sub_24AC07714@<Q0>(char a1@<W0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2[1].n128_u64[0];
  *a4 = a1;
  result = *a2;
  *(a4 + 8) = *a2;
  *(a4 + 24) = v4;
  *(a4 + 32) = a3;
  *(a4 + 36) = BYTE4(a3) & 1;
  return result;
}

BOOL sub_24AC07738(uint64_t *a1, uint64_t a2)
{
  v4 = sub_24AC0F3A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = (*(*a2 + 144))(v9, v10);
  sub_24AC0F388();

  v12 = sub_24AC0F398();
  v13 = sub_24AC0F558();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_24ABF433C(v9, v10, &v20);
    *(v14 + 12) = 2048;
    *(v14 + 14) = v11;
    _os_log_impl(&dword_24ABED000, v12, v13, "common order number: %s with entropy: %f", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x24C22C700](v15, -1, -1);
    MEMORY[0x24C22C700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v16 = sub_24AC0F448();
  return v11 >= 2.12 && v16 > 8;
}

uint64_t sub_24AC07954(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(a1 + 48) + 152 * (v10 | (v8 << 6));
      v12 = *(v11 + 88);
      if (v12)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v21 = *(v11 + 80);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24ABF41E8(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v20 = v15 + 1;
      v18 = v9;
      v19 = *(v9 + 16);
      result = sub_24ABF41E8((v14 > 1), v15 + 1, 1, v18);
      v15 = v19;
      v16 = v20;
      v9 = result;
    }

    *(v9 + 16) = v16;
    v17 = v9 + 16 * v15;
    *(v17 + 32) = v21;
    *(v17 + 40) = v12;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v13);
    ++v8;
    if (v5)
    {
      v8 = v13;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AC07ADC(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result - 40;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v3 + 72 * v1;
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 80);
    ++v1;
    v5 += 72;
    if ((v7 & 1) == 0)
    {
      v8 = *v5;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24AC0A1E0(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        result = sub_24AC0A1E0((v9 > 1), v10 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + 8 * v10 + 32) = v8;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_24AC07BE4(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(a1 + 48) + 152 * (v10 | (v8 << 6));
      if ((*(v11 + 104) & 1) == 0)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v13 = *(v11 + 96);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24AC0A1E0(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v14 = *(v9 + 16);
    v15 = *(v9 + 24);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v19 = v14 + 1;
      v17 = v9;
      v18 = *(v9 + 16);
      result = sub_24AC0A1E0((v15 > 1), v14 + 1, 1, v17);
      v14 = v18;
      v16 = v19;
      v9 = result;
    }

    *(v9 + 16) = v16;
    *(v9 + 8 * v14 + 32) = v13;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v12);
    ++v8;
    if (v5)
    {
      v8 = v12;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24AC07D54(uint64_t a1, uint64_t (*a2)(void *))
{
  v46 = a2;
  v49 = a1;
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v52 = MEMORY[0x277D84F90];
  v47 = v6;
  v48 = v2;
  while (v5)
  {
LABEL_11:
    v51 = v5;
    v10 = *(v49 + 48) + 152 * (__clz(__rbit64(v5)) | (v8 << 6));
    v11 = *(v10 + 16);
    v56[0] = *v10;
    v56[1] = v11;
    v12 = *(v10 + 80);
    v14 = *(v10 + 32);
    v13 = *(v10 + 48);
    v56[4] = *(v10 + 64);
    v56[5] = v12;
    v56[2] = v14;
    v56[3] = v13;
    v16 = *(v10 + 112);
    v15 = *(v10 + 128);
    v17 = *(v10 + 96);
    v59 = *(v10 + 144);
    v57 = v16;
    v58 = v15;
    v56[6] = v17;
    v18 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      v19 = v57;
      v55[0] = 44;
      v55[1] = 0xE100000000000000;
      MEMORY[0x28223BE20](result);
      v45[2] = v55;
      sub_24AC0D894(v56, &v54, &qword_27EF9A970, &qword_24AC10690);

      v20 = v50;
      result = sub_24AC09C48(0x7FFFFFFFFFFFFFFFLL, 1, v46, v45, v19, v18, v21);
      v50 = v20;
      v60 = *(result + 16);
      if (v60)
      {
        v22 = 0;
        v23 = (result + 56);
        v24 = MEMORY[0x277D84F90];
        v53 = result;
        while (v22 < *(result + 16))
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          v28 = *(v23 - 3);
          v27 = *(v23 - 2);

          v29 = MEMORY[0x24C22BC40](v28, v27, v25, v26);
          v31 = v30;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_24ABF41E8(0, *(v24 + 2) + 1, 1, v24);
          }

          v33 = *(v24 + 2);
          v32 = *(v24 + 3);
          if (v33 >= v32 >> 1)
          {
            v24 = sub_24ABF41E8((v32 > 1), v33 + 1, 1, v24);
          }

          ++v22;
          *(v24 + 2) = v33 + 1;
          v34 = &v24[16 * v33];
          *(v34 + 4) = v29;
          *(v34 + 5) = v31;
          v23 += 4;
          result = v53;
          if (v60 == v22)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

      v24 = MEMORY[0x277D84F90];
LABEL_23:

      sub_24ABF7420(v56, &qword_27EF9A970, &qword_24AC10690);
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    v35 = *(v24 + 2);
    result = v52;
    v36 = *(v52 + 2);
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      goto LABEL_39;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v38 = v52;
    if ((result & 1) == 0 || (v39 = *(v52 + 3) >> 1, v39 < v37))
    {
      if (v36 <= v37)
      {
        v40 = v36 + v35;
      }

      else
      {
        v40 = v36;
      }

      result = sub_24ABF41E8(result, v40, 1, v52);
      v38 = result;
      v39 = *(result + 24) >> 1;
    }

    v41 = *(v24 + 2);
    v52 = v38;
    if (v41)
    {
      if (v39 - *(v38 + 2) < v35)
      {
        goto LABEL_41;
      }

      swift_arrayInitWithCopy();

      if (v35)
      {
        v42 = *(v52 + 2);
        v43 = __OFADD__(v42, v35);
        v44 = v42 + v35;
        if (v43)
        {
          goto LABEL_42;
        }

        *(v52 + 2) = v44;
      }
    }

    else
    {

      if (v35)
      {
        goto LABEL_40;
      }
    }

    v5 = (v51 - 1) & v51;
    v6 = v47;
    v2 = v48;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v52;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

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
  return result;
}

unint64_t sub_24AC08108(unsigned __int8 a1)
{
  v1 = 0x656D695465746164;
  v2 = 0xD000000000000013;
  if (a1 != 2)
  {
    v2 = 0x72756F467473616CLL;
  }

  if (a1)
  {
    v1 = 0x746E756F6D61;
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

uint64_t sub_24AC081A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  v3 = "ame";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD00000000000001ELL;
    }

    if (v4)
    {
      v5 = "order_number_and_domains_match";
    }

    else
    {
      v5 = "ame";
    }
  }

  else if (a1 == 2)
  {
    v5 = "tracking_numbers_match";
    v6 = 0xD000000000000010;
  }

  else if (a1 == 3)
  {
    v5 = "heuristics_match";
    v6 = 0xD000000000000015;
  }

  else
  {
    v5 = "order_number_mismatch";
    v6 = 0xD00000000000001DLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD000000000000016;
    }

    else
    {
      v2 = 0xD00000000000001ELL;
    }

    if (a2)
    {
      v3 = "order_number_and_domains_match";
    }
  }

  else if (a2 == 2)
  {
    v3 = "tracking_numbers_match";
  }

  else if (a2 == 3)
  {
    v3 = "heuristics_match";
    v2 = 0xD000000000000015;
  }

  else
  {
    v3 = "order_number_mismatch";
    v2 = 0xD00000000000001DLL;
  }

  if (v6 == v2 && (v5 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24AC0F798();
  }

  return v7 & 1;
}

uint64_t sub_24AC08310(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656D695465746164;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0x72756F467473616CLL;
    }

    if (v3 == 2)
    {
      v5 = 0x800000024AC12860;
    }

    else
    {
      v5 = 0xEE00737469676944;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746E756F6D61;
    }

    else
    {
      v4 = 0x656D695465746164;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xD000000000000013;
  v8 = 0x800000024AC12860;
  if (a2 != 2)
  {
    v7 = 0x72756F467473616CLL;
    v8 = 0xEE00737469676944;
  }

  if (a2)
  {
    v2 = 0x746E756F6D61;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24AC0F798();
  }

  return v11 & 1;
}

uint64_t sub_24AC08464()
{
  v1 = *v0;
  sub_24AC0F7C8();
  sub_24AC0F3D8();

  return sub_24AC0F808();
}

uint64_t sub_24AC08534()
{
  *v0;
  *v0;
  *v0;
  sub_24AC0F3D8();
}

uint64_t sub_24AC085F0()
{
  v1 = *v0;
  sub_24AC0F7C8();
  sub_24AC0F3D8();

  return sub_24AC0F808();
}

uint64_t sub_24AC086BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24AC0D0C4();
  *a2 = result;
  return result;
}

void sub_24AC086EC(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x656D695465746164;
  v4 = 0x800000024AC12860;
  v5 = 0xD000000000000013;
  if (*v1 != 2)
  {
    v5 = 0x72756F467473616CLL;
    v4 = 0xEE00737469676944;
  }

  if (*v1)
  {
    v3 = 0x746E756F6D61;
    v2 = 0xE600000000000000;
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

uint64_t sub_24AC08788@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v43 = a3;
  v6 = sub_24AC0F3A8();
  v7 = *(v6 - 8);
  v41 = v6;
  v42 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24AC0F358();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v19 = *a1;
  v44 = a1[1];
  v20 = sub_24AC0F408();
  v21 = [a2 dateFromString_];

  if (v21)
  {
    sub_24AC0F338();

    v22 = v45;
    (*(v12 + 32))(v45, v18, v11);
LABEL_5:
    v29 = 0;
    return (*(v12 + 56))(v22, v29, 1, v11);
  }

  v23 = v42;
  v40 = v11;
  v24 = v45;
  v25 = sub_24AC0F408();
  v26 = [v43 dateFromString_];

  if (v26)
  {
    v27 = v16;
    sub_24AC0F338();

    v22 = v24;
    v28 = v24;
    v11 = v40;
    (*(v12 + 32))(v28, v27, v40);
    goto LABEL_5;
  }

  v47 = 0;
  if (sub_24ABEFF5C(v19, v44))
  {
    v22 = v24;
    sub_24AC0F328();
    v29 = 0;
  }

  else
  {
    v31 = v19;
    sub_24AC0F388();

    v32 = sub_24AC0F398();
    v33 = sub_24AC0F558();

    v46 = v32;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v10;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_24ABF433C(v31, v44, &v47);
      v37 = v33;
      v38 = v46;
      _os_log_impl(&dword_24ABED000, v46, v37, "Can not parse orderDate %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x24C22C700](v36, -1, -1);
      MEMORY[0x24C22C700](v35, -1, -1);

      (*(v23 + 8))(v34, v41);
    }

    else
    {

      (*(v23 + 8))(v10, v41);
    }

    v29 = 1;
    v22 = v24;
  }

  v11 = v40;
  return (*(v12 + 56))(v22, v29, 1, v11);
}

void sub_24AC08B40(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = sub_24AC0CF38(MEMORY[0x277D84F90]);

    v4 = sub_24AC0F478();
    if (!v5)
    {
      v17 = 0;
LABEL_34:

      v47 = 0;
      v48 = sub_24AC0F448();
      v49 = 1 << *(v3 + 32);
      v50 = -1;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      v51 = v50 & v3[8];
      v52 = (v49 + 63) >> 6;
      v53 = 0.0;
      if (!v51)
      {
        goto LABEL_39;
      }

      do
      {
LABEL_37:
        while (1)
        {
          v54 = __clz(__rbit64(v51));
          v51 &= v51 - 1;
          v55 = *(v3[7] + ((v47 << 9) | (8 * v54)));
          v56 = v55 / v48;
          if (v56 > 0.0)
          {
            break;
          }

          if (!v51)
          {
            goto LABEL_39;
          }
        }

        v53 = v53 - (v56 * log2f(v55 / v48));
      }

      while (v51);
LABEL_39:
      while (1)
      {
        v57 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v57 >= v52)
        {

          sub_24AC0D110(v17);
          return;
        }

        v51 = v3[v57 + 8];
        ++v47;
        if (v51)
        {
          v47 = v57;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

    v6 = v4;
    v7 = v5;
    sub_24AC0D110(0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v3;
    v9 = sub_24AC0A4E4(v6, v7);
    v11 = v3[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v15 = v10;
    if (v3[3] >= v14)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = v9;
        sub_24AC0C57C();
        v9 = v19;
        v3 = v58;
        if (v15)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_24AC0BF48(v14, isUniquelyReferenced_nonNull_native);
      v9 = sub_24AC0A4E4(v6, v7);
      if ((v15 & 1) != (v16 & 1))
      {
LABEL_9:
        sub_24AC0F7B8();
        __break(1u);
        return;
      }
    }

    if (v15)
    {
LABEL_14:
      v18 = v9;

      v9 = v18;
LABEL_18:
      v23 = v3[7];
      v24 = *(v23 + 8 * v9);
      v13 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v13)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      *(v23 + 8 * v9) = v25;
      v26 = sub_24AC0F478();
      if (v27)
      {
        v28 = v26;
        v29 = v27;
        while (1)
        {
          sub_24AC0D110(sub_24AC08F68);
          v30 = swift_isUniquelyReferenced_nonNull_native();
          v59 = v3;
          v31 = sub_24AC0A4E4(v28, v29);
          v33 = v3[2];
          v34 = (v32 & 1) == 0;
          v13 = __OFADD__(v33, v34);
          v35 = v33 + v34;
          if (v13)
          {
            goto LABEL_47;
          }

          v36 = v32;
          if (v3[3] < v35)
          {
            break;
          }

          if (v30)
          {
            goto LABEL_26;
          }

          v39 = v31;
          sub_24AC0C57C();
          v31 = v39;
          v3 = v59;
          if ((v36 & 1) == 0)
          {
LABEL_29:
            v3[(v31 >> 6) + 8] |= 1 << v31;
            v40 = (v3[6] + 16 * v31);
            *v40 = v28;
            v40[1] = v29;
            *(v3[7] + 8 * v31) = 0;
            v41 = v3[2];
            v13 = __OFADD__(v41, 1);
            v42 = v41 + 1;
            if (v13)
            {
              goto LABEL_49;
            }

            v3[2] = v42;
            goto LABEL_31;
          }

LABEL_27:
          v38 = v31;

          v31 = v38;
LABEL_31:
          v43 = v3[7];
          v44 = *(v43 + 8 * v31);
          v13 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v13)
          {
            goto LABEL_48;
          }

          *(v43 + 8 * v31) = v45;
          v28 = sub_24AC0F478();
          v29 = v46;
          if (!v46)
          {
            goto LABEL_33;
          }
        }

        sub_24AC0BF48(v35, v30);
        v31 = sub_24AC0A4E4(v28, v29);
        if ((v36 & 1) != (v37 & 1))
        {
          goto LABEL_9;
        }

LABEL_26:
        if ((v36 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

LABEL_33:
      v17 = sub_24AC08F68;
      goto LABEL_34;
    }

LABEL_16:
    v3[(v9 >> 6) + 8] |= 1 << v9;
    v20 = (v3[6] + 16 * v9);
    *v20 = v6;
    v20[1] = v7;
    *(v3[7] + 8 * v9) = 0;
    v21 = v3[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v13)
    {
LABEL_49:
      __break(1u);
      return;
    }

    v3[2] = v22;
    goto LABEL_18;
  }
}

FinHealthInsights::OrderMatchReasonType_optional __swiftcall OrderMatchReasonType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24AC0F6C8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t OrderMatchReasonType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000015;
  if (v1 != 3)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000010;
  }

  v3 = 0xD000000000000016;
  if (!*v0)
  {
    v3 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    result = v3;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_24AC09070()
{
  v1 = *v0;
  sub_24AC0F7C8();
  sub_24AC0F3D8();

  return sub_24AC0F808();
}

uint64_t sub_24AC09144()
{
  *v0;
  *v0;
  *v0;
  sub_24AC0F3D8();
}

uint64_t sub_24AC09204()
{
  v1 = *v0;
  sub_24AC0F7C8();
  sub_24AC0F3D8();

  return sub_24AC0F808();
}

void sub_24AC092E0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "tracking_numbers_match";
  v4 = "heuristics_match";
  v5 = 0xD000000000000015;
  if (v2 != 3)
  {
    v5 = 0xD00000000000001DLL;
    v4 = "order_number_mismatch";
  }

  if (v2 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v3 = v4;
  }

  v6 = 0xD000000000000016;
  if (*v1)
  {
    v7 = "order_number_and_domains_match";
  }

  else
  {
    v6 = 0xD00000000000001ELL;
    v7 = "ame";
  }

  if (*v1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v6 = v5;
    v8 = v3;
  }

  *a1 = v6;
  a1[1] = v8 | 0x8000000000000000;
}

void sub_24AC09454(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 1;
}

uint64_t OrderMatchDecision.reason.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_24AC0D120(v2, v3, v4);
}

__n128 OrderMatchDecision.reason.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_i64[0];
  sub_24AC0D134(v1[1], v1[2], v1[3]);
  result = v4;
  *(v1 + 1) = v4;
  v1[3] = v2;
  return result;
}

uint64_t OrderMatchDecision.confidence.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t OrderMatchReason.data.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t OrderMatchReason.data.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t OrderMatchReason.description.getter()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);

  sub_24AC0F668();
  MEMORY[0x24C22BC80](0x206E6F736165523CLL, 0xED00003A65707974);
  sub_24AC0F688();
  MEMORY[0x24C22BC80](0x3A6174614420, 0xE600000000000000);
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v2)
  {
    v2 = 0xE000000000000000;
  }

  MEMORY[0x24C22BC80](v4, v2);

  MEMORY[0x24C22BC80](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24AC09708()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 0x79546E6F73616572;
  }

  *v0;
  return result;
}

uint64_t sub_24AC09740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79546E6F73616572 && a2 == 0xEA00000000006570;
  if (v6 || (sub_24AC0F798() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AC0F798();

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

uint64_t sub_24AC09824(uint64_t a1)
{
  v2 = sub_24AC0D148();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AC09860(uint64_t a1)
{
  v2 = sub_24AC0D148();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OrderMatchReason.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB08, &qword_24AC11998);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AC0D148();
  sub_24AC0F828();
  v16 = v9;
  v15 = 0;
  sub_24AC0D19C();
  sub_24AC0F758();
  if (!v2)
  {
    v14 = 1;
    sub_24AC0F728();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t OrderMatchReason.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB18, &qword_24AC119A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AC0D148();
  sub_24AC0F818();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  sub_24AC0D1F0();
  sub_24AC0F708();
  v11 = v19;
  v17 = 1;
  v12 = sub_24AC0F6D8();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24AC09C48@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_24AC0F4A8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_24AC0A2E4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_24AC0A2E4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_24AC0F498();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_24AC0F458();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_24AC0F458();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_24AC0F4A8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_24AC0A2E4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_24AC0F4A8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_24AC0A2E4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_24AC0A2E4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_24AC0F458();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

size_t sub_24AC0A008(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB68, &qword_24AC11E18);
  v10 = *(sub_24AC0F358() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_24AC0F358() - 8);
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

char *sub_24AC0A1E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB70, &unk_24AC11E20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_24AC0A2E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB78, &qword_24AC11E30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24AC0A3F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9ABB8, qword_24AC11EA0);
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

unint64_t sub_24AC0A4E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24AC0F7C8();
  sub_24AC0F3D8();
  v6 = sub_24AC0F808();

  return sub_24AC03890(a1, a2, v6);
}

uint64_t sub_24AC0A55C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24AC0F358();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_24ABF7608(&qword_27EF9AAE0);
  v36 = a2;
  v13 = sub_24AC0F3B8();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_24ABF7608(&qword_27EF9AB58);
      v23 = sub_24AC0F3F8();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_24AC0B01C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_24AC0A814(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9ABA8, &unk_24AC11E50);
  result = sub_24AC0F628();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_24AC0F7C8();
      sub_24AC0F3D8();
      result = sub_24AC0F808();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24AC0AA74(uint64_t a1)
{
  v2 = v1;
  v41 = sub_24AC0F358();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB60, &qword_24AC11E10);
  result = sub_24AC0F628();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_24ABF7608(&qword_27EF9AAE0);
      result = sub_24AC0F3B8();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_24AC0ADBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB88, &qword_24AC11E38);
  result = sub_24AC0F628();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v30 = *v19;
      v31 = v19[1];
      v20 = *(v6 + 40);
      sub_24ABF7DAC();
      result = sub_24AC0F3B8();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v30;
      v15[1] = v31;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24AC0B01C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_24AC0F358();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24AC0AA74(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24AC0B3F4();
      goto LABEL_12;
    }

    sub_24AC0B9DC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_24ABF7608(&qword_27EF9AAE0);
  v15 = sub_24AC0F3B8();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_24ABF7608(&qword_27EF9AB58);
      v23 = sub_24AC0F3F8();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24AC0F7A8();
  __break(1u);
  return result;
}

void *sub_24AC0B298()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9ABA8, &unk_24AC11E50);
  v2 = *v0;
  v3 = sub_24AC0F618();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_24AC0B3F4()
{
  v1 = v0;
  v2 = sub_24AC0F358();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB60, &qword_24AC11E10);
  v7 = *v0;
  v8 = sub_24AC0F618();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_24AC0B62C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB88, &qword_24AC11E38);
  v2 = *v0;
  v3 = sub_24AC0F618();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 24);
        v20 = *(v4 + 48) + v17;
        v21 = *(v18 + 8);
        *v20 = *v18;
        *(v20 + 8) = v21;
        *(v20 + 24) = v19;
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

uint64_t sub_24AC0B7A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9ABA8, &unk_24AC11E50);
  result = sub_24AC0F628();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_24AC0F7C8();

      sub_24AC0F3D8();
      result = sub_24AC0F808();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24AC0B9DC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24AC0F358();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB60, &qword_24AC11E10);
  v10 = sub_24AC0F628();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_24ABF7608(&qword_27EF9AAE0);
      result = sub_24AC0F3B8();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_24AC0BCE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB88, &qword_24AC11E38);
  result = sub_24AC0F628();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
      *v30 = *v19;
      *&v30[8] = *(v19 + 8);
      *&v30[24] = *(v19 + 24);
      v20 = *(v6 + 40);
      sub_24ABF7DAC();

      result = sub_24AC0F3B8();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        v3 = v29;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
      v3 = v29;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = *v30;
      v15[1] = *&v30[16];
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24AC0BF48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB50, &qword_24AC11E08);
  v38 = a2;
  result = sub_24AC0F6A8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_24AC0F7C8();
      sub_24AC0F3D8();
      result = sub_24AC0F808();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24AC0C1E8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24AC0F608() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_24AC0F7C8();
      sub_24AC0F3D8();

      result = sub_24AC0F808();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (8 * v3 != 8 * v6 || (v3 = v6, v16 >= v17 + 1))
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_24AC0C41C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB98, &qword_24AC11E48);
  v2 = *v0;
  v3 = sub_24AC0F698();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 4) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 8 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 4);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v19 = *(v4 + 56) + 8 * v14;
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_24AC0C57C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB50, &qword_24AC11E08);
  v2 = *v0;
  v3 = sub_24AC0F698();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

uint64_t sub_24AC0C6E4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_24AC0C938(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_24AC0C8A8(v12, v6, a2, a1);

    MEMORY[0x24C22C700](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_24AC0C8A8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_24AC0C938(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_24AC0C938(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_24AC0F7C8();

      sub_24AC0F3D8();
      v27 = sub_24AC0F808();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_24AC0F798() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_24AC0CD14(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_24AC0F7C8();

      sub_24AC0F3D8();
      v41 = sub_24AC0F808();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_24AC0F798() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AC0CD14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9ABA8, &unk_24AC11E50);
  result = sub_24AC0F638();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_24AC0F7C8();

    sub_24AC0F3D8();
    result = sub_24AC0F808();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_24AC0CF38(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB50, &qword_24AC11E08);
  v3 = sub_24AC0F6B8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_24AC0A4E4(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = result;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v6 = *v11;

    v9 = sub_24AC0A4E4(v4, v17);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AC0D054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AAD0, &qword_24AC11988);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AC0D0C4()
{
  v0 = sub_24AC0F6C8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24AC0D110(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AC0D120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_24AC0D134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_24AC0D148()
{
  result = qword_27EF9D3F8[0];
  if (!qword_27EF9D3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9D3F8);
  }

  return result;
}

unint64_t sub_24AC0D19C()
{
  result = qword_27EF9AB10;
  if (!qword_27EF9AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AB10);
  }

  return result;
}

unint64_t sub_24AC0D1F0()
{
  result = qword_27EF9AB20;
  if (!qword_27EF9AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AB20);
  }

  return result;
}

unint64_t sub_24AC0D248()
{
  result = qword_27EF9AB28;
  if (!qword_27EF9AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AB28);
  }

  return result;
}

unint64_t sub_24AC0D2E4()
{
  result = qword_27EF9AB40;
  if (!qword_27EF9AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AB40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrderMatcher.SimilarityScoreDimensionKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OrderMatcher.SimilarityScoreDimensionKey(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24AC0D4E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 37))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_24AC0D550(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AC0D5CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24AC0D628(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_24AC0D6A0()
{
  result = qword_27EF9DA80[0];
  if (!qword_27EF9DA80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9DA80);
  }

  return result;
}

unint64_t sub_24AC0D6F8()
{
  result = qword_27EF9DB90;
  if (!qword_27EF9DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DB90);
  }

  return result;
}

unint64_t sub_24AC0D750()
{
  result = qword_27EF9DB98[0];
  if (!qword_27EF9DB98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9DB98);
  }

  return result;
}

unint64_t sub_24AC0D7A4()
{
  result = qword_27EF9AB48;
  if (!qword_27EF9AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AB48);
  }

  return result;
}

_BYTE *sub_24AC0D7F8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_24AC0D894(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AC0D8FC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AC0F798() & 1;
  }
}

uint64_t static MerchantMatcher.merchantSimilarity(merchant1:merchant2:)()
{
  v0 = sub_24AC0ED58();
  v2 = v1;
  v3 = sub_24AC0ED58();
  v5 = v4;
  v6 = sub_24AC0F098(&unk_285E231E8);
  swift_arrayDestroy();
  if (sub_24AC0F448() && sub_24AC0F448())
  {
    if (v0 == v3 && v2 == v5)
    {
      goto LABEL_6;
    }

    if (sub_24AC0F798())
    {
      goto LABEL_6;
    }

    v114 = v0;
    v115 = v2;
    v116 = v3;
    v117 = v5;
    sub_24ABEF690();
    if (sub_24AC0F5D8() & 1) != 0 || (v114 = v3, v115 = v5, v116 = v0, v117 = v2, v8 = sub_24AC0F5D8(), (v8))
    {
LABEL_6:
    }

    v108[0] = v5;
    v109 = v3;
    v114 = 32;
    v115 = 0xE100000000000000;
    MEMORY[0x28223BE20](v8);
    v107 = &v114;
    v9 = sub_24AC09C48(0x7FFFFFFFFFFFFFFFLL, 1, sub_24AC0D878, v106, v0, v2, v108);
    v108[1] = 0;
    v10 = *(v9 + 16);
    if (v10)
    {
      v114 = MEMORY[0x277D84F90];
      v11 = v9;
      result = sub_24ABEF620(0, v10, 0);
      v12 = 0;
      v13 = v114;
      v14 = (v11 + 56);
      while (v12 < *(v11 + 16))
      {
        v15 = v13;
        v16 = *(v14 - 3);
        v17 = *(v14 - 2);
        v19 = *(v14 - 1);
        v18 = *v14;

        v20 = v16;
        v13 = v15;
        v21 = MEMORY[0x24C22BC40](v20, v17, v19, v18);
        v23 = v22;

        v114 = v13;
        v25 = *(v13 + 16);
        v24 = *(v13 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_24ABEF620((v24 > 1), v25 + 1, 1);
          v13 = v114;
        }

        ++v12;
        *(v13 + 16) = v25 + 1;
        v26 = v13 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
        v14 += 4;
        if (v10 == v12)
        {

          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_20:
    v27 = MEMORY[0x277D84F90];
    v112 = *(v13 + 16);
    if (v112)
    {
      v28 = 0;
      v111 = v13 + 32;
      v29 = v6 + 56;
      while (1)
      {
        if (v28 >= *(v13 + 16))
        {
          goto LABEL_92;
        }

        v30 = v13;
        v31 = (v111 + 16 * v28);
        v33 = *v31;
        v32 = v31[1];
        ++v28;
        if (!*(v6 + 16))
        {
          break;
        }

        v34 = *(v6 + 40);
        sub_24AC0F7C8();

        sub_24AC0F3D8();
        v35 = sub_24AC0F808();
        v36 = -1 << *(v6 + 32);
        v37 = v35 & ~v36;
        if ((*(v29 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
        {
          v38 = ~v36;
          while (1)
          {
            v39 = (*(v6 + 48) + 16 * v37);
            v40 = *v39 == v33 && v39[1] == v32;
            if (v40 || (sub_24AC0F798() & 1) != 0)
            {
              break;
            }

            v37 = (v37 + 1) & v38;
            if (((*(v29 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          v13 = v30;
          if (v28 == v112)
          {
            goto LABEL_40;
          }
        }

        else
        {
LABEL_33:
          result = swift_isUniquelyReferenced_nonNull_native();
          v116 = v27;
          if ((result & 1) == 0)
          {
            result = sub_24ABEF620(0, *(v27 + 16) + 1, 1);
            v27 = v116;
          }

          v13 = v30;
          v42 = *(v27 + 16);
          v41 = *(v27 + 24);
          v43 = v27;
          if (v42 >= v41 >> 1)
          {
            result = sub_24ABEF620((v41 > 1), v42 + 1, 1);
            v13 = v30;
            v43 = v116;
          }

          *(v43 + 16) = v42 + 1;
          v44 = v43 + 16 * v42;
          *(v44 + 32) = v33;
          *(v44 + 40) = v32;
          v27 = v43;
          if (v28 == v112)
          {
            goto LABEL_40;
          }
        }
      }

      goto LABEL_33;
    }

LABEL_40:
    v110 = v27;

    v114 = 32;
    v115 = 0xE100000000000000;
    MEMORY[0x28223BE20](v45);
    v107 = &v114;
    v46 = sub_24AC09C48(0x7FFFFFFFFFFFFFFFLL, 1, sub_24AC0D954, v106, v109, v108[0], v108);
    v47 = *(v46 + 16);
    if (v47)
    {
      v114 = MEMORY[0x277D84F90];
      sub_24ABEF620(0, v47, 0);
      v48 = v114;
      v49 = (v46 + 56);
      do
      {
        v50 = *(v49 - 3);
        v51 = *(v49 - 2);
        v52 = *(v49 - 1);
        v53 = *v49;

        v54 = MEMORY[0x24C22BC40](v50, v51, v52, v53);
        v56 = v55;

        v114 = v48;
        v58 = *(v48 + 16);
        v57 = *(v48 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_24ABEF620((v57 > 1), v58 + 1, 1);
          v48 = v114;
        }

        *(v48 + 16) = v58 + 1;
        v59 = v48 + 16 * v58;
        *(v59 + 32) = v54;
        *(v59 + 40) = v56;
        v49 += 4;
        --v47;
      }

      while (v47);
    }

    else
    {

      v48 = MEMORY[0x277D84F90];
    }

    v60 = *(v48 + 16);
    if (v60)
    {
      v61 = 0;
      v112 = v48 + 32;
      v62 = v6 + 56;
      v63 = MEMORY[0x277D84F90];
      v111 = v60;
      while (1)
      {
        if (v61 >= *(v48 + 16))
        {
          goto LABEL_93;
        }

        v64 = (v112 + 16 * v61);
        v66 = *v64;
        v65 = v64[1];
        ++v61;
        if (!*(v6 + 16))
        {
          break;
        }

        v67 = *(v6 + 40);
        sub_24AC0F7C8();

        sub_24AC0F3D8();
        v68 = sub_24AC0F808();
        v69 = -1 << *(v6 + 32);
        v70 = v68 & ~v69;
        if ((*(v62 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70))
        {
          v71 = ~v69;
          while (1)
          {
            v72 = (*(v6 + 48) + 16 * v70);
            v73 = *v72 == v66 && v72[1] == v65;
            if (v73 || (sub_24AC0F798() & 1) != 0)
            {
              break;
            }

            v70 = (v70 + 1) & v71;
            if (((*(v62 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
            {
              goto LABEL_60;
            }
          }

          if (v61 == v60)
          {
            goto LABEL_68;
          }
        }

        else
        {
LABEL_60:
          result = swift_isUniquelyReferenced_nonNull_native();
          v116 = v63;
          if ((result & 1) == 0)
          {
            result = sub_24ABEF620(0, v63[2] + 1, 1);
            v63 = v116;
          }

          v75 = v63[2];
          v74 = v63[3];
          if (v75 >= v74 >> 1)
          {
            result = sub_24ABEF620((v74 > 1), v75 + 1, 1);
            v63 = v116;
          }

          v63[2] = v75 + 1;
          v76 = &v63[2 * v75];
          v76[4] = v66;
          v76[5] = v65;
          v60 = v111;
          if (v61 == v111)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_60;
    }

    v63 = MEMORY[0x277D84F90];
LABEL_68:

    v77 = *(v110 + 16);
    if (!v77 || (v78 = v63[2]) == 0)
    {
    }

    v80 = sub_24ABEF6F0(v79);

    v112 = sub_24ABEF6F0(v81);

    v116 = MEMORY[0x277D84FA0];
    v82 = v77 - 1;
    if (v77 != 1)
    {
      v83 = *(v110 + 16);
      if (v77 > v83 || v83 < 2 || v77 - 2 >= v83)
      {
        goto LABEL_96;
      }

      v84 = (v110 + 56);
      do
      {
        v85 = *(v84 - 2);
        v86 = *(v84 - 1);
        v87 = *v84;
        v114 = *(v84 - 3);
        v115 = v85;
        swift_bridgeObjectRetain_n();

        MEMORY[0x24C22BC80](v86, v87);

        sub_24ABEF788(&v114, v114, v115);

        v84 += 2;
        --v82;
      }

      while (v82);
    }

    v113 = MEMORY[0x277D84FA0];
    v88 = v78 - 1;
    if (v78 != 1)
    {
      v89 = v63[2];
      if (v78 > v89 || v89 < 2 || (v78 - 2) >= v89)
      {
        goto LABEL_97;
      }

      v90 = (v63 + 7);
      do
      {
        v91 = *(v90 - 2);
        v92 = *(v90 - 1);
        v93 = *v90;
        v114 = *(v90 - 3);
        v115 = v91;
        swift_bridgeObjectRetain_n();

        MEMORY[0x24C22BC80](v92, v93);

        sub_24ABEF788(&v114, v114, v115);

        v90 += 2;
        --v88;
      }

      while (v88);
    }

    v94 = v112;
    v95 = sub_24AC0E750(v112, v80, sub_24AC0C938, sub_24AC0C938);
    v96 = v116;

    v97 = sub_24AC0E750(v94, v96, sub_24AC0C938, sub_24AC0C938);

    v98 = v113;

    v99 = sub_24AC0E750(v80, v98, sub_24AC0C938, sub_24AC0C938);

    v100 = sub_24AC0E3EC(v99, v97);
    v101 = sub_24AC0E750(v98, v96, sub_24AC0C938, sub_24AC0C938);

    v102 = sub_24AC0E3EC(v101, v100);
    v103 = v95[2];

    v104 = *(v102 + 16);

    if (v104 + 0x4000000000000000 < 0)
    {
      goto LABEL_94;
    }

    if (__OFADD__(v103, 2 * v104))
    {
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      return result;
    }

    if (v103 + 2 * v104)
    {
      v105 = v78 >= v77 ? v77 : v78;
      if ((v105 + 0x4000000000000000) < 0)
      {
        goto LABEL_98;
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_24AC0E3EC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_24ABEF788(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AC0E4F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9ABC0, &qword_24AC11EF0);
  result = sub_24AC0F628();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_24AC0F7C8();
      sub_24AC0F3D8();
      result = sub_24AC0F808();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void *sub_24AC0E750(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();

    v13 = sub_24AC0E92C(v16, v10, a2, a1, a4);

    MEMORY[0x24C22C700](v16, -1, -1);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void *sub_24AC0E92C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_24AC0E9C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9ABC0, &qword_24AC11EF0);
  v2 = *v0;
  v3 = sub_24AC0F618();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_24AC0EB20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9ABC0, &qword_24AC11EF0);
  result = sub_24AC0F628();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_24AC0F7C8();
      sub_24AC0F3D8();
      result = sub_24AC0F808();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24AC0ED58()
{
  v0 = sub_24AC0F318();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24AC0F418();
  v28 = v5;
  v25 = 0xD000000000000017;
  v26 = 0x800000024AC12980;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_24ABEF690();
  v6 = sub_24AC0F5C8();
  v8 = v7;

  v27 = v6;
  v28 = v8;
  v25 = 0x2E5C7777775ELL;
  v26 = 0xE600000000000000;
  v23 = 0;
  v24 = 0xE000000000000000;
  v9 = sub_24AC0F5C8();
  v11 = v10;

  v27 = v9;
  v28 = v11;
  v25 = 0xD000000000000014;
  v26 = 0x800000024AC129A0;
  v23 = 0;
  v24 = 0xE000000000000000;
  v12 = sub_24AC0F5C8();
  v14 = v13;

  v27 = v12;
  v28 = v14;
  v25 = 1563307355;
  v26 = 0xE400000000000000;
  v23 = 32;
  v24 = 0xE100000000000000;
  v15 = sub_24AC0F5C8();
  v17 = v16;

  v27 = v15;
  v28 = v17;
  v25 = 0x5D735C775C5E5BLL;
  v26 = 0xE700000000000000;
  v23 = 0;
  v24 = 0xE000000000000000;
  v18 = sub_24AC0F5C8();
  v20 = v19;

  v27 = v18;
  v28 = v20;
  sub_24AC0F308();
  v21 = sub_24AC0F5B8();
  (*(v1 + 8))(v4, v0);

  return v21;
}

uint64_t sub_24AC0F098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9ABA8, &unk_24AC11E50);
    v3 = sub_24AC0F638();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_24AC0F7C8();

      sub_24AC0F3D8();
      result = sub_24AC0F808();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_24AC0F798();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MerchantMatcher(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MerchantMatcher(_WORD *result, int a2, int a3)
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