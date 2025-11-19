IDSFoundation::CLIText __swiftcall CLIText.lead(_:)(Swift::Int a1)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 24);
  *(v1 + 16) = *(v2 + 16);
  *(v1 + 24) = v4;
  *v1 = a1;
  *(v1 + 8) = v3;

  result.segments._rawValue = v8;
  result.trailingPadding = v6;
  result.leadingPadding = v5;
  result.alignment = v7;
  return result;
}

IDSFoundation::CLIText __swiftcall CLIText.trail(_:)(Swift::Int a1)
{
  v3 = *v2;
  v4 = v2[3];
  *(v1 + 16) = *(v2 + 16);
  *(v1 + 24) = v4;
  *v1 = v3;
  *(v1 + 8) = a1;

  result.segments._rawValue = v8;
  result.trailingPadding = v6;
  result.leadingPadding = v5;
  result.alignment = v7;
  return result;
}

IDSFoundation::CLIText __swiftcall CLIText.align(_:)(IDSFoundation::CLITextAlign a1)
{
  v3 = *a1;
  v4 = *(v2 + 24);
  *v1 = *v2;
  *(v1 + 24) = v4;
  *(v1 + 16) = v3;

  result.segments._rawValue = v8;
  result.trailingPadding = v6;
  result.leadingPadding = v5;
  result.alignment = v7;
  return result;
}

uint64_t *sub_1A7CDD04C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v2;
  return result;
}

uint64_t sub_1A7CDD0E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1A7E22DA0();
  }

  return sub_1A7E22BB0();
}

uint64_t sub_1A7CDD144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A7E418C0;
  (*(a3 + 8))(a2, a3);
  (*(v5 + 8))(v8, a2);
  return v9;
}

uint64_t sub_1A7CDD274(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B4D08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A7CDD2EC()
{
  result = qword_1EB2B4F98;
  if (!qword_1EB2B4F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4F98);
  }

  return result;
}

unint64_t sub_1A7CDD344()
{
  result = qword_1EB2B4FA0;
  if (!qword_1EB2B4FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FA0);
  }

  return result;
}

unint64_t sub_1A7CDD398(uint64_t a1)
{
  result = sub_1A7CDD3C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A7CDD3C0()
{
  result = qword_1EB2B4FA8;
  if (!qword_1EB2B4FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FA8);
  }

  return result;
}

unint64_t sub_1A7CDD418()
{
  result = qword_1EB2B4FB0;
  if (!qword_1EB2B4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FB0);
  }

  return result;
}

unint64_t sub_1A7CDD470()
{
  result = qword_1EB2B4FB8;
  if (!qword_1EB2B4FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetatypeWrapper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for MetatypeWrapper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7CDD58C(uint64_t a1, int a2)
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

uint64_t sub_1A7CDD5D4(uint64_t result, int a2, int a3)
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

uint64_t IDSNAT64PrefixWrapper.prefix.getter()
{
  v1 = v0 + OBJC_IVAR___IDSNAT64PrefixWrapper_prefix;
  swift_beginAccess();
  return *v1;
}

uint64_t IDSNAT64PrefixWrapper.prefix.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___IDSNAT64PrefixWrapper_prefix);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t type metadata accessor for IDSNAT64PrefixWrapper()
{
  result = qword_1EB2B4FC8;
  if (!qword_1EB2B4FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B4FC8);
  }

  return result;
}

uint64_t sub_1A7CDD7D0()
{
  v1 = *v0;
  v2 = 1701669236;
  v3 = 0x415265746F6D6572;
  v4 = 0x736E657078457369;
  if (v1 != 3)
  {
    v4 = 0x7274736E6F437369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5441526C61636F6CLL;
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

uint64_t sub_1A7CDD87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7CDE1C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7CDD8A4(uint64_t a1)
{
  v2 = sub_1A7CDDB34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CDD8E0(uint64_t a1)
{
  v2 = sub_1A7CDDB34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReportExpenseMeasurement.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B4FD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v12 - v7;
  v9 = *(v1 + 8);
  v15 = *(v1 + 16);
  v16 = v9;
  v10 = *(v1 + 24);
  v13 = *(v1 + 32);
  v14 = v10;
  v12[1] = *(v1 + 40);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CDDB34();
  sub_1A7E23260();
  v21 = 0;
  sub_1A7E23010();
  if (!v2)
  {
    v20 = 1;
    sub_1A7E22FF0();
    v19 = 2;
    sub_1A7E22FF0();
    v18 = 3;
    sub_1A7E23000();
    v17 = 4;
    sub_1A7E23000();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1A7CDDB34()
{
  result = qword_1EB2B4FD8;
  if (!qword_1EB2B4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FD8);
  }

  return result;
}

uint64_t IDSLinkQualityReportExpenseMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B4FE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CDDB34();
  sub_1A7E23250();
  if (v2)
  {
    return sub_1A7B0CD6C(a1);
  }

  v28 = 0;
  sub_1A7E22F10();
  v11 = v10;
  v27 = 1;
  v12 = sub_1A7E22EF0();
  v14 = v13;
  v23 = v12;
  v26 = 2;
  v21 = sub_1A7E22EF0();
  v22 = v15;
  v25 = 3;
  v16 = sub_1A7E22F00();
  v24 = 4;
  v18 = sub_1A7E22F00();
  (*(v6 + 8))(v9, v5);
  v19 = v18 & 1;
  *a2 = v11;
  v20 = v22;
  *(a2 + 8) = v23;
  *(a2 + 16) = v14;
  *(a2 + 24) = v21;
  *(a2 + 32) = v20;
  *(a2 + 40) = v16 & 1;
  *(a2 + 41) = v19;

  sub_1A7B0CD6C(a1);
}

__n128 sub_1A7CDDEB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A7CDDECC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7CDDF14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDSLinkQualityReportExpenseMeasurement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IDSLinkQualityReportExpenseMeasurement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A7CDE0C4()
{
  result = qword_1EB2B4FE8;
  if (!qword_1EB2B4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FE8);
  }

  return result;
}

unint64_t sub_1A7CDE11C()
{
  result = qword_1EB2B4FF0;
  if (!qword_1EB2B4FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FF0);
  }

  return result;
}

unint64_t sub_1A7CDE174()
{
  result = qword_1EB2B4FF8;
  if (!qword_1EB2B4FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4FF8);
  }

  return result;
}

uint64_t sub_1A7CDE1C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5441526C61636F6CLL && a2 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x415265746F6D6572 && a2 == 0xE900000000000054 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E657078457369 && a2 == 0xEB00000000657669 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7274736E6F437369 && a2 == 0xED000064656E6961)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

IDSFoundation::IDSLinkQualityReportStatsMeasurement __swiftcall IDSLinkQualityReportStatsMeasurement.init(start:end:)(Swift::Double start, Swift::Double end)
{
  *v2 = start;
  v2[1] = end;
  result.end = end;
  result.start = start;
  return result;
}

uint64_t sub_1A7CDE3F4()
{
  if (*v0)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1A7CDE424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7CDE4FC(uint64_t a1)
{
  v2 = sub_1A7CDE6FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CDE538(uint64_t a1)
{
  v2 = sub_1A7CDE6FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReportStatsMeasurement.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B5000);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9[-v6];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CDE6FC();
  sub_1A7E23260();
  v9[15] = 0;
  sub_1A7E23010();
  if (!v1)
  {
    v9[14] = 1;
    sub_1A7E23010();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A7CDE6FC()
{
  result = qword_1EB2B5008;
  if (!qword_1EB2B5008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5008);
  }

  return result;
}

uint64_t IDSLinkQualityReportStatsMeasurement.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5010);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CDE6FC();
  sub_1A7E23250();
  if (!v2)
  {
    v17 = 0;
    sub_1A7E22F10();
    v11 = v10;
    v16 = 1;
    sub_1A7E22F10();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t getEnumTagSinglePayload for CLIString.Style(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CLIString.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A7CDEA8C()
{
  result = qword_1EB2B5018;
  if (!qword_1EB2B5018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5018);
  }

  return result;
}

unint64_t sub_1A7CDEAE4()
{
  result = qword_1EB2B5020;
  if (!qword_1EB2B5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5020);
  }

  return result;
}

unint64_t sub_1A7CDEB3C()
{
  result = qword_1EB2B5028;
  if (!qword_1EB2B5028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5028);
  }

  return result;
}

uint64_t EndpointLinkCreationController.__allocating_init(linkInitializer:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  type metadata accessor for LinkCreationController();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CD0];
  *(v5 + 16) = 0;
  *(v5 + 24) = v6;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v4 + 16) = v5;
  return v4;
}

uint64_t static LinkDefinitionInitializer.custom(_:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
}

uint64_t EndpointLinkCreationController.update(_:localEndpoints:remoteEndpoints:permutating:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v168 = a4;
  v156 = a1;
  v174 = sub_1A7E220D0();
  v8 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174, v9);
  v173 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v172 = &v155 - v13;
  v175 = sub_1A7E220A0();
  v14 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175, v15);
  v166 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v165 = &v155 - v19;
  v20 = swift_allocObject();
  v21 = sub_1A7CE2290(MEMORY[0x1E69E7CC0]);
  v167 = v20;
  *(v20 + 16) = v21;
  v157 = v20 + 16;
  *&v191 = 0;
  *(&v191 + 1) = 0xE000000000000000;
  sub_1A7E22B70();

  *&v191 = 0xD000000000000011;
  *(&v191 + 1) = 0x80000001A7EAE1A0;
  v22 = MEMORY[0x1AC561E20](a2, &type metadata for LinkEndpoint);
  MEMORY[0x1AC561C90](v22);

  v23 = v191;
  v24 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v24;
  v162 = a5;
  if (isUniquelyReferenced_nonNull_native)
  {
    v26 = a5;
  }

  else
  {
    v147 = sub_1A7CCCAA4(0, *(v24 + 2) + 1, 1, v24);
    v26 = v162;
    v24 = v147;
    *v162 = v147;
  }

  v28 = *(v24 + 2);
  v27 = *(v24 + 3);
  if (v28 >= v27 >> 1)
  {
    v148 = sub_1A7CCCAA4((v27 > 1), v28 + 1, 1, v24);
    v26 = v162;
    v24 = v148;
  }

  *(v24 + 2) = v28 + 1;
  *&v24[16 * v28 + 32] = v23;
  *v26 = v24;
  *&v191 = 0;
  *(&v191 + 1) = 0xE000000000000000;
  sub_1A7E22B70();

  *&v191 = 0xD000000000000012;
  *(&v191 + 1) = 0x80000001A7EAE1C0;
  v29 = MEMORY[0x1AC561E20](a3, &type metadata for LinkEndpoint);
  MEMORY[0x1AC561C90](v29);

  v30 = v162;
  v31 = v191;
  *v162 = v24;
  v33 = *(v24 + 2);
  v32 = *(v24 + 3);
  if (v33 >= v32 >> 1)
  {
    v149 = sub_1A7CCCAA4((v32 > 1), v33 + 1, 1, v24);
    v30 = v162;
    v24 = v149;
  }

  *(v24 + 2) = v33 + 1;
  *&v24[16 * v33 + 32] = v31;
  *v30 = v24;
  strcpy(&v191, "Permutating: ");
  HIWORD(v191) = -4864;
  v34 = sub_1A7CC7FFC(&qword_1EB2B4AF8);
  v35 = MEMORY[0x1AC561E20](v168, v34);
  MEMORY[0x1AC561C90](v35);

  v37 = v162;
  v38 = v191;
  *v162 = v24;
  v40 = *(v24 + 2);
  v39 = *(v24 + 3);
  v41 = v40 + 1;
  if (v40 >= v39 >> 1)
  {
    v150 = sub_1A7CCCAA4((v39 > 1), v40 + 1, 1, v24);
    v37 = v162;
    v24 = v150;
  }

  *(v24 + 2) = v41;
  *&v24[16 * v40 + 32] = v38;
  *v37 = v24;
  v42 = *(v24 + 3);
  if ((v40 + 2) > (v42 >> 1))
  {
    v151 = sub_1A7CCCAA4((v42 > 1), v40 + 2, 1, v24);
    v37 = v162;
    v24 = v151;
  }

  *(v24 + 2) = v40 + 2;
  v43 = &v24[16 * v41];
  *(v43 + 4) = 0;
  *(v43 + 5) = 0xE000000000000000;
  *v37 = v24;
  v44 = v37;
  v161 = *(a2 + 16);
  if (v161)
  {
    v45 = 0;
    v176 = *(a3 + 16);
    v170 = "LinkCreationController:";
    v171 = a3 + 32;
    v159 = (v8 + 8);
    v160 = a2 + 32;
    v163 = (v14 + 8);
    *&v36 = 136315650;
    v169 = v36;
    v46 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v164 = v45;
      v49 = *(v160 + 8 * v45);
      *&v191 = 0x206D6F7246202DLL;
      *(&v191 + 1) = 0xE700000000000000;
      *&v186 = v49;

      v50 = LinkEndpoint.uniqueID.getter();
      MEMORY[0x1AC561C90](v50);

      v51 = v191;
      v52 = *v44;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *v44 = v52;
      if ((v53 & 1) == 0)
      {
        v126 = sub_1A7CCCAA4(0, *(v52 + 2) + 1, 1, v52);
        v44 = v162;
        v52 = v126;
        *v162 = v126;
      }

      v55 = *(v52 + 2);
      v54 = *(v52 + 3);
      if (v55 >= v54 >> 1)
      {
        v127 = sub_1A7CCCAA4((v54 > 1), v55 + 1, 1, v52);
        v44 = v162;
        v52 = v127;
      }

      *(v52 + 2) = v55 + 1;
      *&v52[16 * v55 + 32] = v51;
      *v44 = v52;
      v197 = v46;
      if (v176)
      {
        break;
      }

      v47 = v46;
LABEL_14:
      v45 = v164 + 1;
      *&v191 = v47;
      v48._countAndFlagsBits = 538976288;
      v48._object = 0xE400000000000000;
      v44 = v162;
      LinkEngineStateLog.log(_:indentation:)(&v191, v48);

      if (v45 == v161)
      {
        v24 = *v44;
        goto LABEL_96;
      }
    }

    v56 = 0;
    v57 = v175;
    while (1)
    {
      v178 = v56;
      v60 = *(v171 + 8 * v56);
      v61 = qword_1EB2B2D08;

      if (v61 != -1)
      {
        swift_once();
      }

      v62 = sub_1A7E22060();
      v63 = sub_1A7B0CB00(v62, qword_1EB2B2D10);

      v177 = v63;
      v64 = sub_1A7E22040();
      v65 = sub_1A7E228D0();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v191 = v67;
        *v66 = v169;
        *(v66 + 4) = sub_1A7B0CB38(0xD000000000000039, v170 | 0x8000000000000000, &v191);
        *(v66 + 12) = 2080;
        *&v186 = v49;
        v68 = LinkEndpoint.uniqueID.getter();
        v70 = sub_1A7B0CB38(v68, v69, &v191);

        *(v66 + 14) = v70;
        *(v66 + 22) = 2080;
        *&v186 = v60;
        v71 = LinkEndpoint.uniqueID.getter();
        v73 = sub_1A7B0CB38(v71, v72, &v191);

        *(v66 + 24) = v73;
        v57 = v175;
        _os_log_impl(&dword_1A7AD9000, v64, v65, "%s: checking %s -> %s", v66, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v67, -1, -1);
        v74 = v66;
        v46 = MEMORY[0x1E69E7CC0];
        MEMORY[0x1AC5654B0](v74, -1, -1);
      }

      v76 = v173;
      v75 = v174;
      v77 = v172;
      if (!*(v49 + 16))
      {
        break;
      }

      v78 = sub_1A7CD0DFC(&type metadata for LinkEndpointIP);
      if ((v79 & 1) == 0)
      {
        break;
      }

      sub_1A7B0CD10(*(v49 + 56) + 32 * v78, &v186);
      sub_1A7B1503C(&v186, &v180);
      sub_1A7CC7FFC(&qword_1EB2B5040);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v193 = 0u;
        v194 = 0u;
        v191 = 0u;
        v192 = 0u;
        goto LABEL_34;
      }

      if (!*(&v192 + 1))
      {
        goto LABEL_34;
      }

      sub_1A7CC99E0(&v191, &v186);
      sub_1A7CC7FFC(&qword_1EB2B5048);
      v80 = v165;
      if (swift_dynamicCast())
      {
        (*v163)(v80, v57);
        sub_1A7B0CD6C(&v186);
        sub_1A7CE23DC(&v191);
        v81 = 0;
      }

      else if (swift_dynamicCast())
      {
        (*v159)(v77, v75);
        sub_1A7B0CD6C(&v186);
        sub_1A7CE23DC(&v191);
        v81 = 1;
      }

      else
      {
        sub_1A7B0CD6C(&v186);
        sub_1A7CE23DC(&v191);
        v81 = 2;
      }

      v46 = MEMORY[0x1E69E7CC0];
      if (!*(v60 + 16))
      {
LABEL_54:
        v191 = 0u;
        v192 = 0u;
        v193 = 0u;
        v194 = 0u;
        goto LABEL_55;
      }

LABEL_41:
      v84 = sub_1A7CD0DFC(&type metadata for LinkEndpointIP);
      if ((v85 & 1) == 0)
      {
        goto LABEL_54;
      }

      sub_1A7B0CD10(*(v60 + 56) + 32 * v84, &v186);
      sub_1A7B1503C(&v186, &v180);
      sub_1A7CC7FFC(&qword_1EB2B5040);
      if (swift_dynamicCast())
      {
        if (*(&v192 + 1))
        {
          sub_1A7CC99E0(&v191, &v186);
          sub_1A7CC7FFC(&qword_1EB2B5048);
          v86 = v57;
          v87 = v166;
          if (swift_dynamicCast())
          {
            (*v163)(v87, v86);
            sub_1A7B0CD6C(&v186);
            sub_1A7CE23DC(&v191);
            v88 = 0;
          }

          else if (swift_dynamicCast())
          {
            (*v159)(v76, v75);
            sub_1A7B0CD6C(&v186);
            sub_1A7CE23DC(&v191);
            v88 = 1;
          }

          else
          {
            sub_1A7B0CD6C(&v186);
            sub_1A7CE23DC(&v191);
            v88 = 2;
          }

          v57 = v86;
          v46 = MEMORY[0x1E69E7CC0];
          goto LABEL_82;
        }
      }

      else
      {
        v193 = 0u;
        v194 = 0u;
        v191 = 0u;
        v192 = 0u;
      }

LABEL_55:
      sub_1A7CC9970(&v191, &qword_1EB2B5030);
      if (!*(v60 + 16) || (v89 = sub_1A7CD0DFC(&type metadata for LinkEndpointIPFamily), (v90 & 1) == 0) || (sub_1A7B0CD10(*(v60 + 56) + 32 * v89, &v191), sub_1A7B1503C(&v191, &v186), sub_1A7CC7FFC(&qword_1EB2B5040), (swift_dynamicCast() & 1) == 0) || !v181)
      {
        if (v81 != 3)
        {
          goto LABEL_87;
        }

        goto LABEL_61;
      }

      v88 = v180;

LABEL_82:
      if (v81 == 3)
      {
        if (v88 != 3)
        {
          goto LABEL_87;
        }
      }

      else if (v88 == 3 || qword_1A7E434C0[v81] != qword_1A7E434C0[v88])
      {
LABEL_87:

        v110 = sub_1A7E22040();
        v111 = sub_1A7E228C0();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          *&v191 = v113;
          *v112 = v169;
          *(v112 + 4) = sub_1A7B0CB38(0xD000000000000039, v170 | 0x8000000000000000, &v191);
          *(v112 + 12) = 2080;
          *&v186 = v49;
          v114 = LinkEndpoint.uniqueID.getter();
          v116 = sub_1A7B0CB38(v114, v115, &v191);

          *(v112 + 14) = v116;
          *(v112 + 22) = 2080;
          *&v186 = v60;
          v117 = LinkEndpoint.uniqueID.getter();
          v119 = v118;

          v120 = sub_1A7B0CB38(v117, v119, &v191);

          *(v112 + 24) = v120;
          _os_log_impl(&dword_1A7AD9000, v110, v111, "%s: skipping %s -> %s because IP family is different", v112, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1AC5654B0](v113, -1, -1);
          v121 = v112;
          v46 = MEMORY[0x1E69E7CC0];
          MEMORY[0x1AC5654B0](v121, -1, -1);
        }

        else
        {
        }

        goto LABEL_22;
      }

LABEL_61:
      v196 = v46;
      *&v191 = 0x206F54202DLL;
      *(&v191 + 1) = 0xE500000000000000;
      *&v186 = v60;
      v91 = LinkEndpoint.uniqueID.getter();
      MEMORY[0x1AC561C90](v91);

      v92 = v191;
      v93 = sub_1A7CCCAA4(0, 1, 1, v46);
      v95 = *(v93 + 2);
      v94 = *(v93 + 3);
      if (v95 >= v94 >> 1)
      {
        v93 = sub_1A7CCCAA4((v94 > 1), v95 + 1, 1, v93);
      }

      *(v93 + 2) = v95 + 1;
      *&v93[16 * v95 + 32] = v92;
      v196 = v93;
      sub_1A7CE0488(v60, &type metadata for IDSLinkEndpointInterfaceAllowList, 1, &v191);
      v96 = v191;
      v57 = v175;
      if (v191 < 2)
      {
LABEL_21:
        *&v191 = v46;
        sub_1A7CE1350(v49, v60, v46, v168, &v191, v167);

        *&v186 = v191;
        v58._countAndFlagsBits = 538976288;
        v58._object = 0xE400000000000000;
        LinkEngineStateLog.log(_:indentation:)(&v186, v58);

        *&v186 = v196;
        v59._countAndFlagsBits = 538976288;
        v59._object = 0xE400000000000000;
        LinkEngineStateLog.log(_:indentation:)(&v186, v59);
      }

      else
      {
        sub_1A7CE03D4(v49, &v186);
        v194 = v189;
        v195 = v190;
        v192 = v187;
        v193 = v188;
        v191 = v186;
        if (!*(&v190 + 1) || (v97 = BYTE8(v192), v98 = v192, sub_1A7CC9970(&v191, &qword_1EB2B5038), (v97 & 1) != 0))
        {
          v98 = -1;
        }

        v99 = *(v96 + 16);
        v100 = 32;
        while (v99)
        {
          v101 = *(v96 + v100);
          v100 += 8;
          --v99;
          if (v101 == v98)
          {
            sub_1A7CE23BC(v96);
            goto LABEL_21;
          }
        }

        swift_bridgeObjectRetain_n();
        sub_1A7CE23CC(v96);
        v102 = sub_1A7E22040();
        v103 = sub_1A7E228C0();
        sub_1A7CE23BC(v96);
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v185 = v105;
          *v104 = v169;
          *(v104 + 4) = sub_1A7B0CB38(0xD000000000000039, v170 | 0x8000000000000000, &v185);
          *(v104 + 12) = 2048;
          if (!*(v49 + 16) || (v106 = sub_1A7CD0DFC(&type metadata for LinkEndpointInterface), (v107 & 1) == 0) || (sub_1A7B0CD10(*(v49 + 56) + 32 * v106, &v180), sub_1A7B1503C(&v180, &v179), sub_1A7CC7FFC(&qword_1EB2B5040), (swift_dynamicCast() & 1) == 0))
          {
            v189 = 0u;
            v190 = 0u;
            v187 = 0u;
            v188 = 0u;
            v186 = 0u;
          }

          v183 = v189;
          v184 = v190;
          v181 = v187;
          v182 = v188;
          v180 = v186;
          if (*(&v190 + 1))
          {
            v108 = BYTE8(v181);
            v109 = v181;
            sub_1A7CC9970(&v180, &qword_1EB2B5038);

            if ((v108 & 1) == 0)
            {
              goto LABEL_93;
            }
          }

          else
          {
          }

          v109 = -1;
LABEL_93:
          *(v104 + 14) = v109;

          *(v104 + 22) = 2080;
          v122 = MEMORY[0x1AC561E20](v96, MEMORY[0x1E69E6530]);
          v124 = v123;
          sub_1A7CE23BC(v96);
          v125 = sub_1A7B0CB38(v122, v124, &v185);

          *(v104 + 24) = v125;
          _os_log_impl(&dword_1A7AD9000, v102, v103, "%s: interface not in allow list; interface: %ld, allow list: %s", v104, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1AC5654B0](v105, -1, -1);
          MEMORY[0x1AC5654B0](v104, -1, -1);

          v46 = MEMORY[0x1E69E7CC0];
          goto LABEL_22;
        }

        swift_bridgeObjectRelease_n();
        sub_1A7CE23BC(v96);
      }

LABEL_22:
      v56 = v178 + 1;
      if (v178 + 1 == v176)
      {

        v47 = v197;
        goto LABEL_14;
      }
    }

    v191 = 0u;
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
LABEL_34:
    sub_1A7CC9970(&v191, &qword_1EB2B5030);
    if (*(v49 + 16) && (v82 = sub_1A7CD0DFC(&type metadata for LinkEndpointIPFamily), (v83 & 1) != 0) && (sub_1A7B0CD10(*(v49 + 56) + 32 * v82, &v191), sub_1A7B1503C(&v191, &v186), sub_1A7CC7FFC(&qword_1EB2B5040), (swift_dynamicCast() & 1) != 0) && v181)
    {
      v81 = v180;

      if (!*(v60 + 16))
      {
        goto LABEL_54;
      }
    }

    else
    {
      v81 = 3;
      if (!*(v60 + 16))
      {
        goto LABEL_54;
      }
    }

    goto LABEL_41;
  }

LABEL_96:
  v128 = swift_isUniquelyReferenced_nonNull_native();
  *v44 = v24;
  if ((v128 & 1) == 0)
  {
    v152 = sub_1A7CCCAA4(0, *(v24 + 2) + 1, 1, v24);
    v44 = v162;
    v24 = v152;
    *v162 = v152;
  }

  v129 = v158;
  v131 = *(v24 + 2);
  v130 = *(v24 + 3);
  v132 = v131 + 1;
  if (v131 >= v130 >> 1)
  {
    v153 = sub_1A7CCCAA4((v130 > 1), v131 + 1, 1, v24);
    v44 = v162;
    v24 = v153;
  }

  *(v24 + 2) = v132;
  v133 = &v24[16 * v131];
  *(v133 + 4) = 0;
  *(v133 + 5) = 0xE000000000000000;
  *v44 = v24;
  v134 = *(v24 + 3);
  v135 = v131 + 2;
  if (v135 > (v134 >> 1))
  {
    v154 = sub_1A7CCCAA4((v134 > 1), v135, 1, v24);
    v44 = v162;
    v24 = v154;
  }

  *(v24 + 2) = v135;
  v136 = &v24[16 * v132];
  *(v136 + 4) = 0xD000000000000017;
  *(v136 + 5) = 0x80000001A7EAE1E0;
  *v44 = v24;
  v137 = MEMORY[0x1E69E7CC0];
  *&v180 = MEMORY[0x1E69E7CC0];
  v138 = *(v129 + 16);
  v139 = v157;
  swift_beginAccess();
  v140 = *v139;
  v141 = *(*v139 + 16);
  if (!v141)
  {
    goto LABEL_105;
  }

  v178 = v138;
  v142 = sub_1A7CE0B74(v141, 0);
  v143 = sub_1A7CE0E08(&v191, v142 + 4, v141, v140);

  result = sub_1A7CC9770();
  if (v143 == v141)
  {
    v137 = v142;
LABEL_105:
    v145 = sub_1A7DEA990(v156, v137, &v180);

    *&v191 = v180;
    v146._countAndFlagsBits = 538976288;
    v146._object = 0xE400000000000000;
    LinkEngineStateLog.log(_:indentation:)(&v191, v146);

    return v145;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7CDFFF4()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2D10);
  sub_1A7B0CB00(v0, qword_1EB2B2D10);
  return sub_1A7E22050();
}

uint64_t LinkDefinitionInitializer.initializer.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LinkDefinitionInitializer.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LinkDefinitionInitializer.init(initializer:description:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static LinkDefinitionInitializer.protocolStack(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;

  sub_1A7E22B70();

  v5 = MEMORY[0x1AC561E20](a1, &type metadata for LinkProtocolID);
  MEMORY[0x1AC561C90](v5);

  result = MEMORY[0x1AC561C90](41, 0xE100000000000000);
  *a2 = sub_1A7CE2430;
  a2[1] = v4;
  a2[2] = 0x6F636F746F72702ELL;
  a2[3] = 0xEF286B636174536CLL;
  return result;
}

_OWORD *sub_1A7CE01D0(uint64_t a1, uint64_t a2)
{
  v3[3] = &type metadata for LinkDefinitionProtocolStack;
  v3[0] = a2;

  return sub_1A7CC8D74(v3, &type metadata for LinkDefinitionProtocolStack);
}

uint64_t EndpointLinkCreationController.init(linkInitializer:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LinkCreationController();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CD0];
  *(v5 + 16) = 0;
  *(v5 + 24) = v6;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v2 + 16) = v5;
  return v2;
}

uint64_t EndpointLinkCreationController.update(_:localEndpoints:remoteEndpoints:permutating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1E69E7CC0];
  v4 = EndpointLinkCreationController.update(_:localEndpoints:remoteEndpoints:permutating:log:)(a1, a2, a3, a4, &v6);

  return v4;
}

uint64_t EndpointLinkCreationController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1A7CE0318@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_1A7CD0DFC(&type metadata for LinkEndpointIP), (v5 & 1) == 0) || (sub_1A7B0CD10(*(a1 + 56) + 32 * v4, v8), sub_1A7B1503C(v8, &v7), sub_1A7CC7FFC(&qword_1EB2B5040), (swift_dynamicCast() & 1) == 0))
  {
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1A7CE03D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_1A7CD0DFC(&type metadata for LinkEndpointInterface), (v5 & 1) == 0) || (sub_1A7B0CD10(*(a1 + 56) + 32 * v4, v8), sub_1A7B1503C(v8, &v7), sub_1A7CC7FFC(&qword_1EB2B5040), (swift_dynamicCast() & 1) == 0))
  {
    result = 0.0;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

unint64_t sub_1A7CE0488@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (!*(result + 16) || (v6 = result, result = sub_1A7CD0DFC(a2), (v7 & 1) == 0) || (sub_1A7B0CD10(*(v6 + 56) + 32 * result, v9), sub_1A7B1503C(v9, &v8), sub_1A7CC7FFC(&qword_1EB2B5040), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a4 = a3;
  }

  return result;
}

unint64_t sub_1A7CE0528@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if (!*(result + 16) || (v3 = result, result = sub_1A7CD0DFC(&type metadata for LinkDefinitionProtocolStack), (v4 & 1) == 0) || (sub_1A7B0CD10(*(v3 + 56) + 32 * result, v6), sub_1A7B1503C(v6, &v5), sub_1A7CC7FFC(&qword_1EB2B5040), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_1A7CE05CC@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (!*(result + 16) || (v3 = result, result = sub_1A7CD0DFC(&type metadata for LinkDefinitionIsPreferred), (v4 & 1) == 0) || (sub_1A7B0CD10(*(v3 + 56) + 32 * result, v6), sub_1A7B1503C(v6, &v5), sub_1A7CC7FFC(&qword_1EB2B5040), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a2 = 2;
  }

  return result;
}

unint64_t sub_1A7CE0680@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!*(result + 16) || (v4 = result, result = sub_1A7CD0DFC(a2), (v5 & 1) == 0) || (sub_1A7B0CD10(*(v4 + 56) + 32 * result, v7), sub_1A7B1503C(v7, &v6), sub_1A7CC7FFC(&qword_1EB2B5040), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

unint64_t sub_1A7CE072C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16) && (v3 = result, result = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v4 & 1) != 0))
  {
    sub_1A7B0CD10(*(v3 + 56) + 32 * result, v7);
    sub_1A7B1503C(v7, &v6);
    sub_1A7CC7FFC(&qword_1EB2B5040);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a2 = 0;
    }

    v5 = result ^ 1;
  }

  else
  {
    *a2 = 0;
    v5 = 1;
  }

  *(a2 + 4) = v5;
  return result;
}

double sub_1A7CE07D8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointRelaySessionID), (v5 & 1) == 0) || (sub_1A7B0CD10(*(a1 + 56) + 32 * v4, v8), sub_1A7B1503C(v8, &v7), sub_1A7CC7FFC(&qword_1EB2B5040), (swift_dynamicCast() & 1) == 0))
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_1A7CE0874@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16) && (v3 = result, result = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointNAT64Prefix), (v4 & 1) != 0))
  {
    sub_1A7B0CD10(*(v3 + 56) + 32 * result, v6);
    sub_1A7B1503C(v6, &v5);
    sub_1A7CC7FFC(&qword_1EB2B5040);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    *(a2 + 17) = result ^ 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 256;
  }

  return result;
}

unint64_t sub_1A7CE0934@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (!*(result + 16) || (v4 = result, result = sub_1A7CD0DFC(a2), (v5 & 1) == 0) || (sub_1A7B0CD10(*(v4 + 56) + 32 * result, v7), sub_1A7B1503C(v7, &v6), sub_1A7CC7FFC(&qword_1EB2B5040), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a3 = 2;
  }

  return result;
}

unint64_t sub_1A7CE09D4@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if (!*(result + 16) || (v3 = result, result = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointQRPlaceholderMarker), (v4 & 1) == 0) || (sub_1A7B0CD10(*(v3 + 56) + 32 * result, v6), sub_1A7B1503C(v6, &v5), sub_1A7CC7FFC(&qword_1EB2B5040), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *sub_1A7CE0A6C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A7CC7FFC(&qword_1EB2B4AC8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1A7CE0AF0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A7CC7FFC(&qword_1EB2B4B98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1A7CE0B74(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A7CC7FFC(&qword_1EB2B5228);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1A7CE0C04(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A7CC7FFC(&unk_1EB2B7C00);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *sub_1A7CE0C80(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A7CC7FFC(&qword_1EB2B4A98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1A7CE0D08(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1A7CE0E08(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 64;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v22 = -1 << *(a4 + 32);
    v23 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = a4;
      v17 = (*(a4 + 56) + 24 * (v15 | (v10 << 6)));
      v18 = v17[1];
      v19 = v17[2];
      *v9 = *v17;
      v9[1] = v18;
      v9[2] = v19;
      if (v12 == v23)
      {

        a4 = v16;
        v6 = v22;
        a3 = v23;
        goto LABEL_24;
      }

      v9 += 3;

      result = v12;
      v20 = __OFADD__(v12++, 1);
      a4 = v16;
      if (v20)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v21 = v10 + 1;
    }

    else
    {
      v21 = v11;
    }

    v10 = v21 - 1;
    a3 = result;
    v6 = v22;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A7CE0FA4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A7CE10F8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A7CE1250(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1A7CE1350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5, uint64_t a6)
{
  v62 = a6;
  v11 = sub_1A7CC7FFC(&qword_1EB2B5220);
  v75[3] = v11;
  v75[4] = sub_1A7CE5090();
  v75[0] = a4;
  if (*(a4 + 16))
  {
    v61 = a1;
    v12 = *(a4 + 32);
    v13 = sub_1A7CC9878(v75, v11);
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    (*(v16 + 16))(&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v60 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v74 = AssociatedConformanceWitness;
    v17 = sub_1A7CC98BC(&v70);

    v58 = v17;
    sub_1A7E22880();
    v53 = v12;
    v18 = *(v12 + 16);
    if (v18)
    {
      v19 = (v53 + 56);
      v54 = xmmword_1A7E418C0;
      v57 = a5;
      v56 = a2;
      v55 = a3;
      do
      {
        v20 = *(v19 - 2);
        v63 = *(v19 - 3);
        v22 = *(v19 - 1);
        v21 = *v19;
        v65 = 8237;
        v66 = 0xE200000000000000;

        MEMORY[0x1AC561C90](v22, v21);
        MEMORY[0x1AC561C90](58, 0xE100000000000000);
        v23 = v65;
        v24 = v66;
        v25 = *a5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = sub_1A7CCCAA4(0, *(v25 + 2) + 1, 1, v25);
          *a5 = v25;
        }

        v28 = *(v25 + 2);
        v27 = *(v25 + 3);
        if (v28 >= v27 >> 1)
        {
          v25 = sub_1A7CCCAA4((v27 > 1), v28 + 1, 1, v25);
        }

        *(v25 + 2) = v28 + 1;
        v29 = &v25[16 * v28];
        *(v29 + 4) = v23;
        *(v29 + 5) = v24;
        a5 = v57;
        *v57 = v25;
        v65 = MEMORY[0x1E69E7CC0];
        v64[0] = v61;
        v69 = v56;
        sub_1A7CC7FFC(&qword_1EB2B4B60);
        inited = swift_initStackObject();
        *(inited + 16) = v54;
        *(inited + 32) = v63;
        *(inited + 40) = v20;
        *(inited + 48) = v22;
        *(inited + 56) = v21;
        v68 = v55;

        sub_1A7DDEF70(inited);
        sub_1A7CE19D0(v64, &v69, v68, v58, &v65, v62, v60, AssociatedConformanceWitness);

        v64[0] = v65;
        v31._countAndFlagsBits = 538976288;
        v31._object = 0xE400000000000000;
        LinkEngineStateLog.log(_:indentation:)(v64, v31);

        v19 += 4;
        --v18;
      }

      while (v18);
    }

    sub_1A7B0CD6C(&v70);
  }

  else
  {
    v32 = sub_1A7CE2568(MEMORY[0x1E69E7CC0]);
    v70 = v32;
    v71 = a1;
    v72 = a2;
    v33 = a3;
    v34 = *(a3 + 16);
    if (v34)
    {

      v35 = v33 + 56;
      do
      {
        v36 = *(v35 - 24);
        v35 += 32;

        v36(&v70);

        --v34;
      }

      while (v34);
      v37 = v70;
      a1 = v71;
      a2 = v72;
    }

    else
    {
      v37 = v32;
    }

    v65 = v37;
    v66 = a1;
    v67 = a2;
    v38 = LinkDefinition.uniqueID.getter();
    v40 = v39;
    v41 = v62;
    swift_beginAccess();

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(v62 + 16);
    *(v62 + 16) = 0x8000000000000000;
    sub_1A7DC3CE4(v37, a1, a2, v38, v40, v42);

    *(v41 + 16) = v69;
    swift_endAccess();
    v64[0] = 8237;
    v64[1] = 0xE200000000000000;
    v65 = v70;
    v66 = v71;
    v67 = v72;
    v43 = LinkDefinition.uniqueID.getter();
    v45 = v44;

    MEMORY[0x1AC561C90](v43, v45);

    v46 = *a5;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v46;
    if ((v47 & 1) == 0)
    {
      v46 = sub_1A7CCCAA4(0, *(v46 + 2) + 1, 1, v46);
      *a5 = v46;
    }

    v49 = *(v46 + 2);
    v48 = *(v46 + 3);
    if (v49 >= v48 >> 1)
    {
      v46 = sub_1A7CCCAA4((v48 > 1), v49 + 1, 1, v46);
    }

    *(v46 + 2) = v49 + 1;
    v50 = &v46[16 * v49];
    *(v50 + 4) = 8237;
    *(v50 + 5) = 0xE200000000000000;
    *a5 = v46;
  }

  return sub_1A7B0CD6C(v75);
}

uint64_t sub_1A7CE19D0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a6;
  v83 = a7;
  v84 = a8;
  v14 = sub_1A7CC98BC(v82);
  (*(*(a7 - 8) + 16))(v14, a4, a7);
  v15 = *a1;
  v16 = *a2;
  sub_1A7E22870();
  v17 = v71;
  if (v71)
  {
    v67 = v15;
    v18 = sub_1A7CC9878(v82, v83);
    v19 = MEMORY[0x1EEE9AC00](v18, v18);
    (*(v21 + 16))(&v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v66 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v75 = AssociatedConformanceWitness;
    v64 = sub_1A7CC98BC(&v71);
    sub_1A7E22880();
    v59 = v17;
    v22 = *(v17 + 16);
    if (v22)
    {
      v23 = (v59 + 56);
      v60 = xmmword_1A7E418C0;
      v63 = a5;
      v62 = v16;
      v61 = a3;
      do
      {
        v24 = *(v23 - 2);
        v69 = *(v23 - 3);
        v26 = *(v23 - 1);
        v25 = *v23;
        v79 = 8237;
        v80 = 0xE200000000000000;

        MEMORY[0x1AC561C90](v26, v25);
        MEMORY[0x1AC561C90](58, 0xE100000000000000);
        v28 = v79;
        v27 = v80;
        v29 = *a5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_1A7CCCAA4(0, *(v29 + 2) + 1, 1, v29);
          *a5 = v29;
        }

        v32 = *(v29 + 2);
        v31 = *(v29 + 3);
        if (v32 >= v31 >> 1)
        {
          v29 = sub_1A7CCCAA4((v31 > 1), v32 + 1, 1, v29);
        }

        *(v29 + 2) = v32 + 1;
        v33 = &v29[16 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v27;
        a5 = v63;
        *v63 = v29;
        v79 = MEMORY[0x1E69E7CC0];
        v76 = v62;
        v77 = v67;
        sub_1A7CC7FFC(&qword_1EB2B4B60);
        inited = swift_initStackObject();
        *(inited + 16) = v60;
        *(inited + 32) = v69;
        *(inited + 40) = v24;
        *(inited + 48) = v26;
        *(inited + 56) = v25;
        v70 = v61;

        sub_1A7DDEF70(inited);
        sub_1A7CE19D0(&v77, &v76, v70, v64, &v79, v68, v66, AssociatedConformanceWitness);

        v77 = v79;
        v35._countAndFlagsBits = 538976288;
        v35._object = 0xE400000000000000;
        LinkEngineStateLog.log(_:indentation:)(&v77, v35);

        v23 += 4;
        --v22;
      }

      while (v22);
    }

    sub_1A7B0CD6C(&v71);
  }

  else
  {
    v36 = sub_1A7CE2568(MEMORY[0x1E69E7CC0]);
    v71 = v36;
    v72 = v15;
    v73 = v16;
    v37 = a3;
    v38 = *(a3 + 16);
    if (v38)
    {

      v39 = v37 + 56;
      do
      {
        v40 = *(v39 - 24);
        v39 += 32;

        v40(&v71);

        --v38;
      }

      while (v38);
      v41 = v71;
      v15 = v72;
      v16 = v73;
    }

    else
    {
      v41 = v36;
    }

    v79 = v41;
    v80 = v15;
    v81 = v16;
    v42 = LinkDefinition.uniqueID.getter();
    v44 = v43;
    v45 = v68;
    swift_beginAccess();

    v46 = swift_isUniquelyReferenced_nonNull_native();
    v76 = *(v68 + 16);
    *(v68 + 16) = 0x8000000000000000;
    sub_1A7DC3CE4(v41, v15, v16, v42, v44, v46);

    *(v45 + 16) = v76;
    swift_endAccess();
    v77 = 8237;
    v78 = 0xE200000000000000;
    v79 = v71;
    v80 = v72;
    v81 = v73;
    v47 = LinkDefinition.uniqueID.getter();
    v49 = v48;

    MEMORY[0x1AC561C90](v47, v49);

    v50 = v77;
    v51 = v78;
    v52 = *a5;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v52;
    if ((v53 & 1) == 0)
    {
      v52 = sub_1A7CCCAA4(0, *(v52 + 2) + 1, 1, v52);
      *a5 = v52;
    }

    v55 = *(v52 + 2);
    v54 = *(v52 + 3);
    if (v55 >= v54 >> 1)
    {
      v52 = sub_1A7CCCAA4((v54 > 1), v55 + 1, 1, v52);
    }

    *(v52 + 2) = v55 + 1;
    v56 = &v52[16 * v55];
    *(v56 + 4) = v50;
    *(v56 + 5) = v51;
    *a5 = v52;
  }

  return sub_1A7B0CD6C(v82);
}

unint64_t sub_1A7CE2010(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B50D0);
    v3 = sub_1A7E22E20();
    v4 = (a1 + 32);

    while (1)
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = *(v4 + 1);
      v8 = *(v4 + 2);
      v9 = *(v4 + 3);
      v10 = *(v4 + 4);

      result = sub_1A7CD0D3C(v5 | (v6 << 8), v7, v8, v9);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 32 * result;
      *v13 = v5;
      *(v13 + 1) = v6;
      *(v13 + 8) = v7;
      *(v13 + 16) = v8;
      *(v13 + 24) = v9;
      *(v3[7] + 8 * result) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v4 += 40;
      v3[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE2144(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B50C8);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 40); ; i += 6)
    {
      v19 = v1;
      v5 = *(i - 8);
      v6 = *(i - 7);
      v7 = *i;
      v8 = i[1];
      v9 = i[2];
      v10 = i[3];
      v11 = i[4];

      result = sub_1A7CD0D3C(v5 | (v6 << 8), v7, v8, v9);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 32 * result;
      *v14 = v5;
      *(v14 + 1) = v6;
      *(v14 + 8) = v7;
      *(v14 + 16) = v8;
      *(v14 + 24) = v9;
      v15 = (v3[7] + 16 * result);
      *v15 = v10;
      v15[1] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      v1 = v19 - 1;
      if (v19 == 1)
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE2290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5230);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1A7CD1248(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A7CE23BC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1A7CE23CC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

_OWORD *sub_1A7CE2430()
{
  v1 = *(v0 + 16);
  v3[3] = &type metadata for LinkDefinitionProtocolStack;
  v3[0] = v1;

  return sub_1A7CC8D74(v3, &type metadata for LinkDefinitionProtocolStack);
}

uint64_t sub_1A7CE2480(uint64_t *a1, int a2)
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

uint64_t sub_1A7CE24C8(uint64_t result, int a2, int a3)
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

unint64_t sub_1A7CE2568(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5208);
    v3 = sub_1A7E22E20();
    for (i = a1 + 32; ; i += 40)
    {
      sub_1A7CD1F00(i, &v10, &qword_1EB2B5210);
      result = sub_1A7CD0DFC(v10);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v10;
      result = sub_1A7B1503C(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE267C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51F8);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v11, &qword_1EB2B5200);
      result = sub_1A7CD12C0(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v11, v3[6] + 24 * result, &qword_1EB2B4B30);
      *(v3[7] + 8 * v7) = v11[3];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 32;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE27BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5050);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v11, &qword_1EB2B5058);
      result = sub_1A7CD1220(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v11, v3[6] + 24 * result, &qword_1EB2B4B00);
      *(v3[7] + 8 * v7) = v11[3];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 32;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE28FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5218);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1A7CD1248(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE2A10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5090);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v13, &qword_1EB2B5098);
      result = sub_1A7CD1220(v13);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v13, v3[6] + 24 * result, &qword_1EB2B4B00);
      v8 = (v3[7] + 32 * v7);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE2B54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51F0);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A7CD1248(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE2C50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51C0);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v11, &qword_1EB2B51C8);
      result = sub_1A7CD1368(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v11, v3[6] + 24 * result, &qword_1EB2B4BE0);
      *(v3[7] + 8 * v7) = v11[3];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 32;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE2D90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51E0);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v13, &qword_1EB2B51E8);
      result = sub_1A7CD137C(v13);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v13, v3[6] + 24 * result, &qword_1EB2B4B40);
      v8 = (v3[7] + 32 * v7);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE2ED4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51D0);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v11, &qword_1EB2B51D8);
      result = sub_1A7CD137C(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v11, v3[6] + 24 * result, &qword_1EB2B4B40);
      *(v3[7] + 8 * v7) = v11[3];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 32;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE3028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5148);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A7CD1248(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE312C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5118);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v13, &qword_1EB2B5120);
      result = sub_1A7CD12C0(v13);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v13, v3[6] + 24 * result, &qword_1EB2B4B30);
      v8 = (v3[7] + 32 * v7);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE3270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5128);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v13, &qword_1EB2B5130);
      result = sub_1A7CD1234(v13);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v13, v3[6] + 24 * result, &qword_1EB2B4AE8);
      v8 = (v3[7] + 32 * v7);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE33B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5138);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v13, &qword_1EB2B5140);
      result = sub_1A7CD1390(v13);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v13, v3[6] + 24 * result, &qword_1EB2B4B18);
      v8 = (v3[7] + 32 * v7);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE34F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B50E8);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v13, &qword_1EB2B50F0);
      result = sub_1A7CD1368(v13);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v13, v3[6] + 24 * result, &qword_1EB2B4BE0);
      v8 = (v3[7] + 32 * v7);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE363C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5060);
    v3 = sub_1A7E22E20();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[1];
      v25 = *v4;
      *v26 = v6;
      v7 = v4[5];
      *&v26[48] = v4[4];
      *&v26[64] = v7;
      v8 = v4[7];
      *&v26[80] = v4[6];
      *&v26[96] = v8;
      v9 = v4[3];
      *&v26[16] = v4[2];
      *&v26[32] = v9;
      v10 = v25;
      v11 = *v26;
      sub_1A7CD1F00(&v25, &v24, &qword_1EB2B5068);
      result = sub_1A7CD12D4(v10, *(&v10 + 1), v11);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 24 * result;
      *v14 = v10;
      *(v14 + 16) = v11;
      v15 = v3[7] + 104 * result;
      v16 = *&v26[8];
      v17 = *&v26[40];
      *(v15 + 16) = *&v26[24];
      *(v15 + 32) = v17;
      *v15 = v16;
      v18 = *&v26[56];
      v19 = *&v26[72];
      v20 = *&v26[88];
      *(v15 + 96) = *&v26[104];
      *(v15 + 64) = v19;
      *(v15 + 80) = v20;
      *(v15 + 48) = v18;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_11;
      }

      v3[2] = v23;
      if (!i)
      {

        return v3;
      }

      v4 += 8;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE37CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5170);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 56); ; i = (i + 56))
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v15 = i[1];
      v16 = *i;

      result = sub_1A7CD1424(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[7] + 40 * result;
      *v11 = v7;
      *(v11 + 24) = v15;
      *(v11 + 8) = v16;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE38F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51A8);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1A7CD12D4(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 24 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE3A04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51A0);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1A7CD12D4(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v13 = (v3[7] + 16 * result);
      *v13 = v8;
      v13[1] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE3B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5088);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *(i - 7);
      v11 = *i;

      result = sub_1A7CD1248(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = v3[7] + 32 * result;
      *v15 = v8;
      *(v15 + 8) = v7;
      *(v15 + 16) = v9;
      *(v15 + 17) = v10;
      *(v15 + 24) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE3C64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B51B0);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, &v13, &qword_1EB2B51B8);
      v5 = v13;
      v6 = v14;
      result = sub_1A7CD1248(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A7B1503C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE3D94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B50B8);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A7CD1248(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE3EC0(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5188);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A7CC7FFC(&qword_1EB2B5190);
    v8 = sub_1A7E22E20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1A7CD1F00(v10, v6, &qword_1EB2B5188);
      result = sub_1A7CD14FC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A7E21B60();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE40A8(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5178);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A7CC7FFC(&qword_1EB2B5180);
    v8 = sub_1A7E22E20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1A7CD1F00(v10, v6, &qword_1EB2B5178);
      v12 = *v6;
      result = sub_1A7CD14B8(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_1A7CC7FFC(&qword_1EB2B61D0);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE4290(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5160);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A7CC7FFC(&qword_1EB2B5168);
    v8 = sub_1A7E22E20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1A7CD1F00(v10, v6, &qword_1EB2B5160);
      result = sub_1A7CD14FC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A7E21B60();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE4478(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5150);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A7CC7FFC(&qword_1EB2B5158);
    v8 = sub_1A7E22E20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1A7CD1F00(v10, v6, &qword_1EB2B5150);
      result = sub_1A7CD14FC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A7E21B60();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE4674(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B5108);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v11, &qword_1EB2B5110);
      result = sub_1A7CD1390(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v11, v3[6] + 24 * result, &qword_1EB2B4B18);
      *(v3[7] + 8 * v7) = v11[3];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 32;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE47B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B50F8);
    v3 = sub_1A7E22E20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A7CD1F00(v4, v11, &qword_1EB2B5100);
      result = sub_1A7CD1234(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = sub_1A7CE5028(v11, v3[6] + 24 * result, &qword_1EB2B4AE8);
      *(v3[7] + 8 * v7) = v11[3];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 32;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE48F4(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5070);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A7CC7FFC(&qword_1EB2B5078);
    v8 = sub_1A7E22E20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1A7CD1F00(v10, v6, &qword_1EB2B5070);
      v12 = *v6;
      result = sub_1A7CD15C0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_1A7CC7FFC(&qword_1EB2B61D0);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE4AF0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1A7CC7FFC(a2);
    v4 = sub_1A7E22E20();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_1A7CD1248(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE4BEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B50D8);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1A7CD162C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE4CF8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1A7CC7FFC(a2);
    v4 = sub_1A7E22E20();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1A7CD1248(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A7CE4DF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7CC7FFC(&qword_1EB2B50A0);
    v3 = sub_1A7E22E20();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1A7CD162C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1A7CE4F14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A7CC7FFC(a2);
  v7 = sub_1A7E22E20();
  LOBYTE(v8) = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = a4(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  result = v9;
  v14 = (a1 + 56);
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v7[6] + v12) = v8;
    *(v7[7] + 8 * v12) = result;
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v7[2] = v17;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v18 = v14 + 2;
    v8 = *(v14 - 8);
    v19 = *v14;

    v12 = a4(v8);
    v14 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7CE5028(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1A7CC7FFC(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A7CE5090()
{
  result = qword_1EB2B2908;
  if (!qword_1EB2B2908)
  {
    sub_1A7CC9830(&qword_1EB2B5220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2908);
  }

  return result;
}

uint64_t sub_1A7CE5100()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B5238);
  sub_1A7B0CB00(v0, qword_1EB2B5238);
  return sub_1A7E22050();
}

void *sub_1A7CE5188(void *a1)
{
  LinkEndpoint.init(_:isRemote:relaySessionID:)([a1 local], 0, 0);
  if (!v20)
  {
    return 0;
  }

  LinkEndpoint.init(_:isRemote:relaySessionID:)([a1 remote], 1, 0);
  v24 = sub_1A7CE2568(MEMORY[0x1E69E7CC0]);
  v25 = v20;
  v26 = v20;
  if ([a1 isVirtualRelayStunCandidatePair])
  {
    v2 = &unk_1F1AABBE8;
  }

  else if ([a1 isP2P])
  {
    v2 = &unk_1F1AABC18;
  }

  else
  {
    if (![a1 isRelayStunCandidatePair])
    {
      if (qword_1EB2B4710 != -1)
      {
        swift_once();
      }

      v15 = sub_1A7E22060();
      sub_1A7B0CB00(v15, qword_1EB2B5238);
      v16 = sub_1A7E22040();
      v17 = sub_1A7E228E0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1A7B0CB38(0xD00000000000001ALL, 0x80000001A7EAE2A0, &v20);
        _os_log_impl(&dword_1A7AD9000, v16, v17, "%s: Unexpected candidate pair type: neither VR nor P2P, and not Relay.", v18, 0xCu);
        sub_1A7B0CD6C(v19);
        MEMORY[0x1AC5654B0](v19, -1, -1);
        MEMORY[0x1AC5654B0](v18, -1, -1);
      }

      goto LABEL_14;
    }

    if (qword_1EB2B4710 != -1)
    {
      swift_once();
    }

    v4 = sub_1A7E22060();
    sub_1A7B0CB00(v4, qword_1EB2B5238);
    v5 = sub_1A7E22040();
    v6 = sub_1A7E228E0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1A7B0CB38(0xD00000000000001ALL, 0x80000001A7EAE2A0, &v20);
      _os_log_impl(&dword_1A7AD9000, v5, v6, "%s: LinkEngine Relay Links generally should not be created from existing IDSStunCandidatePairs.", v7, 0xCu);
      sub_1A7B0CD6C(v8);
      MEMORY[0x1AC5654B0](v8, -1, -1);
      MEMORY[0x1AC5654B0](v7, -1, -1);
    }

    v2 = &unk_1F1AABC48;
  }

  v23 = &type metadata for LinkDefinitionProtocolStack;
  v20 = v2;
  sub_1A7CC8D74(&v20, &type metadata for LinkDefinitionProtocolStack);
LABEL_14:
  v9 = v24;
  v10 = v25;
  v11 = v26;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  v12 = LinkDefinition.uniqueID.getter();
  v14 = LinkEngine.add(linkWithUniqueName:)(v12, v13);
  os_unfair_lock_lock(v14 + 10);
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = &type metadata for LinkDefinitionComponent;

  sub_1A7CC8D74(&v20, &type metadata for LinkDefinitionComponent);
  os_unfair_lock_unlock(v14 + 10);

  return v12;
}

uint64_t LEToolLinkStatePrintStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t LEToolRelayEngineResponseMessage.print(to:style:)(void *a1, uint64_t *a2)
{
  v5 = v2[3];
  v48 = v2[2];
  v49 = v5;
  v50 = v2[4];
  v51 = *(v2 + 10);
  v6 = v2[1];
  v46 = *v2;
  v47 = v6;
  v7 = a1[3];
  v8 = a1[4];
  sub_1A7CC9878(a1, v7);
  strcpy(&v42, "Relay Engine");
  BYTE13(v42) = 0;
  HIWORD(v42) = -5120;
  LOWORD(v43) = 513;
  *(&v43 + 1) = 0;
  v44 = 0;
  v45 = 2;
  CLIPrinter.print(_:)(&v42, v7, v8);

  v9 = *(&v46 + 1);
  if (*(&v46 + 1))
  {
    v10 = v46;
    v11 = a1[3];
    v12 = a1[4];
    v13 = sub_1A7CC9878(a1, v11);
    MEMORY[0x1EEE9AC00](v13, v14);
    v34 = v10;
    v35 = v9;
    CLIPrinter.print(_:)(sub_1A7CE5EF4, v33, v11, v12);
  }

  v15 = *(&v47 + 1);
  if (*(&v47 + 1))
  {
    v16 = v47;
    v17 = a1[3];
    v18 = a1[4];
    v19 = sub_1A7CC9878(a1, v17);
    MEMORY[0x1EEE9AC00](v19, v20);
    v34 = v16;
    v35 = v15;
    CLIPrinter.print(_:)(sub_1A7CE5EEC, v33, v17, v18);
  }

  if (*(v48 + 16))
  {
    v21 = a1[3];
    v22 = a1[4];
    v23 = sub_1A7CC9878(a1, v21);
    MEMORY[0x1EEE9AC00](v23, v24);
    v34 = &v46;
    CLIPrinter.print(_:)(sub_1A7CE5C64, v33, v21, v22);
  }

  v25 = a1[3];
  v26 = a1[4];
  v27 = sub_1A7CC9878(a1, v25);
  MEMORY[0x1EEE9AC00](v27, v28);
  v34 = &v46;
  CLIPrinter.print(_:)(sub_1A7CE5D48, v33, v25, v26);
  v29 = a1[3];
  v30 = a1[4];
  sub_1A7CC9878(a1, v29);
  *(&v43 + 1) = &type metadata for CLIRule;
  v44 = sub_1A7CE5D50();
  LOBYTE(v42) = 9;
  CLIPrinter.print(_:)(&v42, v29, v30);
  sub_1A7B0CD6C(&v42);
  sub_1A7CC9878(a1, a1[3]);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  CLIPrinter.print(_:)(v31);
  v42 = v49;
  v43 = v50;
  v44 = v51;
  v39 = v49;
  v40 = v50;
  v41 = v51;
  v37 = *a2;
  v38 = *(a2 + 8);
  sub_1A7CE5DA4(&v42, v36);
  LEToolResponse.print(to:style:)(a1, &v37);
  return sub_1A7CE5E00(v39, *(&v39 + 1), v40, *(&v40 + 1));
}

uint64_t sub_1A7CE5994(uint64_t a1, uint64_t a2)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x80000001A7EAE2C0;
  *(v4 + 48) = 513;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 2;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 768;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 2;

  sub_1A7DDF090(inited);
  return v4;
}

uint64_t sub_1A7CE5A80(uint64_t a1, uint64_t a2)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  *(v4 + 32) = 0x6973736553205251;
  *(v4 + 40) = 0xEF203A4449206E6FLL;
  *(v4 + 48) = 513;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 2;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 768;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 2;

  sub_1A7DDF090(inited);
  return v4;
}

uint64_t sub_1A7CE5B74(uint64_t a1)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A7E418C0;
  *(v2 + 32) = 0xD000000000000014;
  *(v2 + 40) = 0x80000001A7EAE2E0;
  *(v2 + 48) = 512;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 2;
  v3 = MEMORY[0x1AC561E20](*(a1 + 32), MEMORY[0x1E69E6158]);
  v5 = v4;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  *(inited + 48) = 768;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 2;
  sub_1A7DDF090(inited);
  return v2;
}

uint64_t sub_1A7CE5C6C(uint64_t a1)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A7E418C0;
  *(v2 + 32) = 0x657461636F6C6C41;
  *(v2 + 40) = 0xEF203A6570795420;
  *(v2 + 48) = 513;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 2;
  v3 = *(a1 + 40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E418C0;
  IDSQuickRelayAllocateType.cli.getter(v3, inited + 32);
  sub_1A7DDF090(inited);
  return v2;
}

unint64_t sub_1A7CE5D50()
{
  result = qword_1EB2B5250;
  if (!qword_1EB2B5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5250);
  }

  return result;
}

uint64_t sub_1A7CE5E00(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a4 >> 60) & 7;
  switch(v4)
  {
    case 2:
      return sub_1A7CE5E84(result, a2, a3, a4 & 0x8FFFFFFFFFFFFFFFLL);
    case 1:
      return sub_1A7CE5E2C(result, a2, a3);
    case 0:
  }

  return result;
}

uint64_t sub_1A7CE5E2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1A7CE5E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  if (a4 < 0)
  {
  }

  return result;
}

unint64_t sub_1A7CE5F00()
{
  result = qword_1EB2B5258;
  if (!qword_1EB2B5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5258);
  }

  return result;
}

uint64_t MetatypeWrapper.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t sub_1A7CE5FF0()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t sub_1A7CE6064()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

unint64_t sub_1A7CE60AC()
{
  result = qword_1EB2B3378;
  if (!qword_1EB2B3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B3378);
  }

  return result;
}

uint64_t sub_1A7CE611C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A7CE6178(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1A7CE6208(uint64_t a1)
{
  v2 = sub_1A7CE6D68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CE6244(uint64_t a1)
{
  v2 = sub_1A7CE6D68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CE6280()
{
  v1 = *v0;
  v2 = 0x65736E65707865;
  v3 = 0x74536C616E676973;
  v4 = 0x7374656B636170;
  if (v1 != 3)
  {
    v4 = 0x7473727562;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7374617473;
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

uint64_t sub_1A7CE6320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7CE8480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7CE6348(uint64_t a1)
{
  v2 = sub_1A7CE6D14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CE6384(uint64_t a1)
{
  v2 = sub_1A7CE6D14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CE63C0(uint64_t a1)
{
  v2 = sub_1A7CE7008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CE63FC(uint64_t a1)
{
  v2 = sub_1A7CE7008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CE6438(uint64_t a1)
{
  v2 = sub_1A7CE6E10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CE6474(uint64_t a1)
{
  v2 = sub_1A7CE6E10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CE64B0(uint64_t a1)
{
  v2 = sub_1A7CE6EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CE64EC(uint64_t a1)
{
  v2 = sub_1A7CE6EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CE6528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7CE65A8(uint64_t a1)
{
  v2 = sub_1A7CE6F60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CE65E4(uint64_t a1)
{
  v2 = sub_1A7CE6F60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReportMeasurement.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B5260);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v47 = &v40 - v5;
  v6 = sub_1A7CC7FFC(&qword_1EB2B5268);
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v44 = &v40 - v8;
  v43 = sub_1A7CC7FFC(&qword_1EB2B5270);
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v9);
  v41 = &v40 - v10;
  v11 = sub_1A7CC7FFC(&qword_1EB2B5278);
  v51 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v40 - v13;
  v15 = sub_1A7CC7FFC(&qword_1EB2B5280);
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v40 - v17;
  v55 = sub_1A7CC7FFC(&qword_1EB2B5288);
  v58 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v19);
  v20 = v1[1];
  v56 = *v1;
  v57 = v20;
  v21 = v1[3];
  v52 = v1[2];
  v53 = v21;
  v54 = v1[4];
  v22 = *(v1 + 20);
  v23 = a1[3];
  v24 = a1;
  v26 = &v40 - v25;
  sub_1A7CC9878(v24, v23);
  sub_1A7CE6D14();
  sub_1A7E23260();
  v27 = v22 >> 13;
  if (v22 >> 13 <= 1)
  {
    v33 = v50;
    v32 = v51;
    if (!v27)
    {
      LOBYTE(v59) = 0;
      sub_1A7CE7008();
      v34 = v26;
      v35 = v55;
      sub_1A7E22F80();
      v59 = v56;
      v60 = v57;
      v61 = v52;
      v62 = v53;
      v63 = v54;
      v64 = v22 & 0x101;
      sub_1A7CE705C();
      sub_1A7E23030();
      (*(v33 + 8))(v18, v15);
      return (*(v58 + 8))(v34, v35);
    }

    LOBYTE(v59) = 1;
    sub_1A7CE6F60();
    v28 = v55;
    sub_1A7E22F80();
    v59 = v56;
    v60 = v57;
    sub_1A7CE6FB4();
    sub_1A7E23030();
    (*(v32 + 8))(v14, v11);
  }

  else
  {
    if (v27 == 2)
    {
      LOBYTE(v59) = 2;
      sub_1A7CE6EB8();
      v37 = v41;
      v38 = v55;
      sub_1A7E22F80();
      v59 = v56;
      v60 = v57;
      sub_1A7CE6F0C();
      v39 = v43;
      sub_1A7E23030();
      (*(v42 + 8))(v37, v39);
      return (*(v58 + 8))(v26, v38);
    }

    v28 = v55;
    if (v27 == 3)
    {
      LOBYTE(v59) = 3;
      sub_1A7CE6E10();
      v29 = v44;
      sub_1A7E22F80();
      v59 = v56;
      v60 = v57;
      v61 = v52;
      v62 = v53;
      v63 = v54;
      sub_1A7CE6E64();
      v30 = v46;
      sub_1A7E23030();
      v31 = v45;
    }

    else
    {
      LOBYTE(v59) = 4;
      sub_1A7CE6D68();
      v29 = v47;
      sub_1A7E22F80();
      v59 = v56;
      v60 = v57;
      v61 = v52;
      v62 = v53;
      v63 = v54;
      sub_1A7CE6DBC();
      v30 = v49;
      sub_1A7E23030();
      v31 = v48;
    }

    (*(v31 + 8))(v29, v30);
  }

  return (*(v58 + 8))(v26, v28);
}

unint64_t sub_1A7CE6D14()
{
  result = qword_1EB2B5290;
  if (!qword_1EB2B5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5290);
  }

  return result;
}

unint64_t sub_1A7CE6D68()
{
  result = qword_1EB2B5298;
  if (!qword_1EB2B5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5298);
  }

  return result;
}

unint64_t sub_1A7CE6DBC()
{
  result = qword_1EB2B52A0;
  if (!qword_1EB2B52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52A0);
  }

  return result;
}

unint64_t sub_1A7CE6E10()
{
  result = qword_1EB2B52A8;
  if (!qword_1EB2B52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52A8);
  }

  return result;
}

unint64_t sub_1A7CE6E64()
{
  result = qword_1EB2B52B0;
  if (!qword_1EB2B52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52B0);
  }

  return result;
}

unint64_t sub_1A7CE6EB8()
{
  result = qword_1EB2B52B8;
  if (!qword_1EB2B52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52B8);
  }

  return result;
}

unint64_t sub_1A7CE6F0C()
{
  result = qword_1EB2B52C0;
  if (!qword_1EB2B52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52C0);
  }

  return result;
}

unint64_t sub_1A7CE6F60()
{
  result = qword_1EB2B52C8;
  if (!qword_1EB2B52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52C8);
  }

  return result;
}

unint64_t sub_1A7CE6FB4()
{
  result = qword_1EB2B52D0;
  if (!qword_1EB2B52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52D0);
  }

  return result;
}

unint64_t sub_1A7CE7008()
{
  result = qword_1EB2B52D8;
  if (!qword_1EB2B52D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52D8);
  }

  return result;
}

unint64_t sub_1A7CE705C()
{
  result = qword_1EB2B52E0;
  if (!qword_1EB2B52E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B52E0);
  }

  return result;
}

uint64_t IDSLinkQualityReportMeasurement.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v73 = a2;
  v77 = sub_1A7CC7FFC(&qword_1EB2B52E8);
  v71 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v3);
  v74 = &v63 - v4;
  v69 = sub_1A7CC7FFC(&qword_1EB2B52F0);
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v5);
  v76 = &v63 - v6;
  v68 = sub_1A7CC7FFC(&qword_1EB2B52F8);
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v7);
  v75 = &v63 - v8;
  v66 = sub_1A7CC7FFC(&qword_1EB2B5300);
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v9);
  v11 = &v63 - v10;
  v12 = sub_1A7CC7FFC(&qword_1EB2B5308);
  v65 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v63 - v14;
  v16 = sub_1A7CC7FFC(&qword_1EB2B5310);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v63 - v19;
  v21 = a1[3];
  v78 = a1;
  sub_1A7CC9878(a1, v21);
  sub_1A7CE6D14();
  v22 = v89;
  sub_1A7E23250();
  if (v22)
  {
    goto LABEL_11;
  }

  v23 = v15;
  v63 = v12;
  v25 = v75;
  v24 = v76;
  v64 = 0;
  v26 = v77;
  v89 = v17;
  v27 = sub_1A7E22F70();
  v28 = (2 * *(v27 + 16)) | 1;
  v85 = v27;
  v86 = v27 + 32;
  v87 = 0;
  v88 = v28;
  v29 = sub_1A7CDB548();
  v30 = v16;
  if (v29 == 5 || v87 != v88 >> 1)
  {
    v36 = sub_1A7E22BD0();
    swift_allocError();
    v37 = v20;
    v39 = v38;
    sub_1A7CC7FFC(&qword_1EB2B4EC8);
    *v39 = &type metadata for IDSLinkQualityReportMeasurement;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v36 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v89 + 8))(v37, v16);
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    v40 = v78;
    return sub_1A7B0CD6C(v40);
  }

  if (v29 <= 1u)
  {
    if (!v29)
    {
      LOBYTE(v79) = 0;
      sub_1A7CE7008();
      v42 = v23;
      v43 = v64;
      sub_1A7E22E70();
      v44 = v20;
      v45 = v89;
      if (!v43)
      {
        sub_1A7CE7C44();
        v46 = v63;
        sub_1A7E22F30();
        (*(v65 + 8))(v42, v46);
        (*(v45 + 8))(v44, v30);
        swift_unknownObjectRelease();
        v57 = v79;
        v58 = v80;
        v59 = v81;
        v61 = v82;
        if (v84)
        {
          v47 = 256;
        }

        else
        {
          v47 = 0;
        }

        v60 = v47 | v83;
        goto LABEL_29;
      }

      (*(v89 + 8))(v44, v30);
      goto LABEL_10;
    }

    LOBYTE(v79) = 1;
    sub_1A7CE6F60();
    v54 = v64;
    sub_1A7E22E70();
    v32 = v20;
    v33 = v89;
    if (!v54)
    {
      v55 = v32;
      sub_1A7CE7BF0();
      v56 = v66;
      sub_1A7E22F30();
      (*(v67 + 8))(v11, v56);
      (*(v33 + 8))(v55, v30);
      swift_unknownObjectRelease();
      v58 = 0;
      v59 = 0;
      v61 = 0;
      v57 = v79;
      v60 = 0x2000;
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (v29 == 2)
  {
    LOBYTE(v79) = 2;
    sub_1A7CE6EB8();
    v48 = v64;
    sub_1A7E22E70();
    if (!v48)
    {
      sub_1A7CE7B9C();
      v49 = v68;
      sub_1A7E22F30();
      (*(v70 + 8))(v25, v49);
      (*(v89 + 8))(v20, v16);
      swift_unknownObjectRelease();
      v58 = 0;
      v59 = 0;
      v61 = 0;
      v57 = v79;
      v60 = 0x4000;
      goto LABEL_29;
    }

    (*(v89 + 8))(v20, v16);
    goto LABEL_10;
  }

  if (v29 == 3)
  {
    LOBYTE(v79) = 3;
    sub_1A7CE6E10();
    v31 = v64;
    sub_1A7E22E70();
    v32 = v20;
    v33 = v89;
    if (!v31)
    {
      v34 = v32;
      sub_1A7CE7B48();
      v35 = v69;
      sub_1A7E22F30();
      (*(v72 + 8))(v24, v35);
      (*(v33 + 8))(v34, v30);
      swift_unknownObjectRelease();
      v57 = v79;
      v58 = v80;
      v59 = v81;
      v60 = 24576;
      v61 = v82;
LABEL_29:
      v40 = v78;
      v62 = v73;
      *v73 = v57;
      *(v62 + 2) = v58;
      *(v62 + 3) = v59;
      *(v62 + 4) = v61;
      *(v62 + 20) = v60;
      return sub_1A7B0CD6C(v40);
    }

LABEL_25:
    (*(v33 + 8))(v32, v16);
    goto LABEL_10;
  }

  LOBYTE(v79) = 4;
  sub_1A7CE6D68();
  v50 = v74;
  v51 = v64;
  sub_1A7E22E70();
  v52 = v20;
  v53 = v89;
  if (!v51)
  {
    v76 = v52;
    sub_1A7CE7AF4();
    sub_1A7E22F30();
    (*(v71 + 8))(v50, v26);
    (*(v53 + 8))(v76, v30);
    swift_unknownObjectRelease();
    v57 = v79;
    v58 = v80;
    v59 = v81;
    v60 = 0x8000;
    v61 = v82;
    goto LABEL_29;
  }

  (*(v89 + 8))(v52, v30);
  swift_unknownObjectRelease();
  v40 = v78;
  return sub_1A7B0CD6C(v40);
}

unint64_t sub_1A7CE7AF4()
{
  result = qword_1EB2B5318;
  if (!qword_1EB2B5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5318);
  }

  return result;
}

unint64_t sub_1A7CE7B48()
{
  result = qword_1EB2B5320;
  if (!qword_1EB2B5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5320);
  }

  return result;
}

unint64_t sub_1A7CE7B9C()
{
  result = qword_1EB2B5328;
  if (!qword_1EB2B5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5328);
  }

  return result;
}

unint64_t sub_1A7CE7BF0()
{
  result = qword_1EB2B5330;
  if (!qword_1EB2B5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5330);
  }

  return result;
}

unint64_t sub_1A7CE7C44()
{
  result = qword_1EB2B5338;
  if (!qword_1EB2B5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5338);
  }

  return result;
}

uint64_t sub_1A7CE7CD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 2 >= 0xFFF && *(a1 + 42))
  {
    return (*a1 + 16380);
  }

  v3 = ((*(a1 + 40) >> 13) | (8 * ((*(a1 + 40) >> 2) & 0x780 | (*(a1 + 40) >> 1)))) ^ 0x3FFF;
  if (v3 >= 0x3FFB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A7CE7D3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 2 > 0xFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 16380;
    if (a3 >> 2 >= 0xFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >> 2 >= 0xFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x7FF) - (a2 << 11);
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

unint64_t sub_1A7CE7E54()
{
  result = qword_1EB2B5340;
  if (!qword_1EB2B5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5340);
  }

  return result;
}

unint64_t sub_1A7CE7EAC()
{
  result = qword_1EB2B5348;
  if (!qword_1EB2B5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5348);
  }

  return result;
}

unint64_t sub_1A7CE7F04()
{
  result = qword_1EB2B5350;
  if (!qword_1EB2B5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5350);
  }

  return result;
}

unint64_t sub_1A7CE7F5C()
{
  result = qword_1EB2B5358;
  if (!qword_1EB2B5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5358);
  }

  return result;
}

unint64_t sub_1A7CE7FB4()
{
  result = qword_1EB2B5360;
  if (!qword_1EB2B5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5360);
  }

  return result;
}

unint64_t sub_1A7CE800C()
{
  result = qword_1EB2B5368;
  if (!qword_1EB2B5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5368);
  }

  return result;
}

unint64_t sub_1A7CE8064()
{
  result = qword_1EB2B5370;
  if (!qword_1EB2B5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5370);
  }

  return result;
}

unint64_t sub_1A7CE80BC()
{
  result = qword_1EB2B5378;
  if (!qword_1EB2B5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5378);
  }

  return result;
}

unint64_t sub_1A7CE8114()
{
  result = qword_1EB2B5380;
  if (!qword_1EB2B5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5380);
  }

  return result;
}

unint64_t sub_1A7CE816C()
{
  result = qword_1EB2B5388;
  if (!qword_1EB2B5388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5388);
  }

  return result;
}

unint64_t sub_1A7CE81C4()
{
  result = qword_1EB2B5390;
  if (!qword_1EB2B5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5390);
  }

  return result;
}

unint64_t sub_1A7CE821C()
{
  result = qword_1EB2B5398;
  if (!qword_1EB2B5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5398);
  }

  return result;
}

unint64_t sub_1A7CE8274()
{
  result = qword_1EB2B53A0;
  if (!qword_1EB2B53A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B53A0);
  }

  return result;
}

unint64_t sub_1A7CE82CC()
{
  result = qword_1EB2B53A8;
  if (!qword_1EB2B53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B53A8);
  }

  return result;
}

unint64_t sub_1A7CE8324()
{
  result = qword_1EB2B53B0;
  if (!qword_1EB2B53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B53B0);
  }

  return result;
}

unint64_t sub_1A7CE837C()
{
  result = qword_1EB2B53B8;
  if (!qword_1EB2B53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B53B8);
  }

  return result;
}

unint64_t sub_1A7CE83D4()
{
  result = qword_1EB2B53C0;
  if (!qword_1EB2B53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B53C0);
  }

  return result;
}

unint64_t sub_1A7CE842C()
{
  result = qword_1EB2B53C8;
  if (!qword_1EB2B53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B53C8);
  }

  return result;
}

uint64_t sub_1A7CE8480(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E65707865 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7374617473 && a2 == 0xE500000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74536C616E676973 && a2 == 0xEE006874676E6572 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7374656B636170 && a2 == 0xE700000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473727562 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

unint64_t sub_1A7CE8644@<X0>(unint64_t *a1@<X8>)
{
  os_unfair_lock_lock((v1 + 200));
  sub_1A7CC94C0((v1 + 208), &v4);
  os_unfair_lock_unlock((v1 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v5 = 0;
LABEL_5:

    result = sub_1A7CE2B54(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  result = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_6:
  *a1 = result;
  return result;
}

uint64_t sub_1A7CE86F4()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2C10);
  sub_1A7B0CB00(v0, qword_1EB2B2C10);
  return sub_1A7E22050();
}

uint64_t IDSLinksQualityBasicStatsOngoingTask.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A7CE87B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A7CE87D0, 0, 0);
}

uint64_t sub_1A7CE87D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1A7CE88C8;
    v3 = v0[5];

    return sub_1A7CE8AA4(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A7CE88C8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7CE8A40, 0, 0);
  }

  else
  {

    v8 = *(v6 + 56) == 0;
    v9 = *(v7 + 8);

    return v9(a1, a2, v8);
  }
}

uint64_t sub_1A7CE8A40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7CE8AA4(uint64_t a1)
{
  v2[82] = v1;
  v2[81] = a1;
  v2[83] = type metadata accessor for IDSLinksQualityReportBuilder();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7CE8B48, 0, 0);
}

uint64_t sub_1A7CE8B48()
{
  v1 = (v0 + 624);
  v2 = *(v0 + 648);
  os_unfair_lock_lock((v2 + 16));
  v3 = *(v2 + 24);

  os_unfair_lock_unlock((v2 + 16));
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = &qword_1EB2B66D0;
  v53 = v3;
LABEL_4:
  v52 = v10;
  *(v0 + 688) = v10;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
LABEL_12:
      v13 = *(*(v3 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));

      os_unfair_lock_lock((v13 + 40));
      v14 = *(v13 + 48);
      if (*(v14 + 16) && (v15 = sub_1A7CD0DFC(&type metadata for LinkEngineLinkIDSTestableLinkComponent), (v16 & 1) != 0))
      {
        sub_1A7B0CD10(*(v14 + 56) + 32 * v15, v0 + 400);
      }

      else
      {
        *(v0 + 400) = 0u;
        *(v0 + 416) = 0u;
      }

      v7 &= v7 - 1;
      os_unfair_lock_unlock((v13 + 40));
      sub_1A7CC7FFC(v11);
      if (swift_dynamicCast())
      {
        break;
      }

      *(v0 + 592) = xmmword_1A7E43F70;
LABEL_7:
      sub_1A7CEB438(1);

      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v17 = v11;
    v18 = *(v0 + 592);
    v19 = *(v0 + 600);
    if (v18 == 1)
    {
      v11 = v17;
      v3 = v53;
      goto LABEL_7;
    }

    v20 = swift_unknownObjectRetain();
    sub_1A7CEB438(v20);
    if (v18)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1A7CCCE58(0, v52[2] + 1, 1, v52);
      }

      v22 = v52[2];
      v21 = v52[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v50 = v52[2];
        v51 = v22 + 1;
        v25 = sub_1A7CCCE58((v21 > 1), v22 + 1, 1, v52);
        v22 = v50;
        v23 = v51;
        v52 = v25;
      }

      v10 = v52;
      v52[2] = v23;
      v24 = &v52[3 * v22];
      v24[4] = v13;
      v24[5] = v18;
      v24[6] = v19;
      v11 = v17;
      v3 = v53;
      goto LABEL_4;
    }

    v11 = v17;
    v3 = v53;
  }

  while (v7);
  while (1)
  {
LABEL_8:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_12;
    }
  }

  if (qword_1EB2B2C08 == -1)
  {
    goto LABEL_28;
  }

LABEL_53:
  swift_once();
LABEL_28:
  v26 = sub_1A7E22060();
  *(v0 + 696) = sub_1A7B0CB00(v26, qword_1EB2B2C10);
  v27 = sub_1A7E22040();
  v28 = sub_1A7E228F0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1A7AD9000, v27, v28, "IDSLinksQualityBasicStatsOngoingTask started", v29, 2u);
    MEMORY[0x1AC5654B0](v29, -1, -1);
  }

  v30 = v52[2];
  *(v0 + 704) = v30;
  if (v30)
  {
    v31 = 0;
    while (1)
    {
      *(v0 + 720) = v31;
      *(v0 + 712) = 0;
      v32 = *(v0 + 688);
      if (v31 >= *(v32 + 16))
      {
        goto LABEL_52;
      }

      v33 = *(v0 + 648);
      v34 = (v32 + 24 * v31);
      v35 = v34[4];
      *(v0 + 728) = v35;
      *(v0 + 736) = v34[5];
      v36 = v34[6];
      *(v0 + 744) = v36;

      swift_unknownObjectRetain();
      os_unfair_lock_lock((v33 + 200));
      v37 = *(v33 + 208);
      if (*(v37 + 16) && (v38 = sub_1A7CD0DFC(&type metadata for IDSLinksQualityLinkCycleAssignmentsComponent), (v39 & 1) != 0))
      {
        sub_1A7B0CD10(*(v37 + 56) + 32 * v38, v0 + 432);
      }

      else
      {
        *(v0 + 432) = 0u;
        *(v0 + 448) = 0u;
      }

      os_unfair_lock_unlock((*(v0 + 648) + 200));
      *(v0 + 752) = sub_1A7CC7FFC(&qword_1EB2B66D0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v40 = *v1;
      if (!*v1)
      {
        goto LABEL_43;
      }

      if (!*(v40 + 16))
      {
        goto LABEL_32;
      }

LABEL_44:
      v41 = sub_1A7CD1248(*(v35 + 16), *(v35 + 24));
      if (v42)
      {
        *(v0 + 760) = *(*(v40 + 56) + 8 * v41);

        ObjectType = swift_getObjectType();
        *(v0 + 768) = ObjectType;
        v54 = (*(v36 + 40) + **(v36 + 40));
        v44 = swift_task_alloc();
        *(v0 + 776) = v44;
        *v44 = v0;
        v44[1] = sub_1A7CE9190;

        return v54(v0 + 176, ObjectType, v36);
      }

LABEL_32:
      swift_unknownObjectRelease();

      v31 = *(v0 + 720) + 1;
      if (v31 == *(v0 + 704))
      {
        goto LABEL_48;
      }
    }

    *v1 = 0;
LABEL_43:

    v40 = MEMORY[0x1E69E7CC8];
    if (!*(MEMORY[0x1E69E7CC8] + 16))
    {
      goto LABEL_32;
    }

    goto LABEL_44;
  }

LABEL_48:
  v46 = *(v0 + 656);

  v47 = *(v46 + 64);
  v48 = *(v46 + 72);

  v49 = *(v0 + 8);

  return v49(v47, v48);
}

uint64_t sub_1A7CE9190()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7CE928C, 0, 0);
}

uint64_t sub_1A7CE928C()
{
  v1 = *(v0 + 192);
  *(v0 + 120) = *(v0 + 176);
  v2 = *(v0 + 744);
  *(v0 + 136) = v1;
  *(v0 + 152) = *(v0 + 208);
  *(v0 + 167) = *(v0 + 223);
  v7 = (*(v2 + 48) + **(v2 + 48));
  v3 = swift_task_alloc();
  *(v0 + 784) = v3;
  *v3 = v0;
  v3[1] = sub_1A7CE93BC;
  v4 = *(v0 + 768);
  v5 = *(v0 + 744);

  return v7(v0 + 464, v4, v5);
}

uint64_t sub_1A7CE93BC()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7CE94B8, 0, 0);
}

void sub_1A7CE94B8()
{
  v69 = v0;
  v1 = *(v0 + 728);
  v64 = *(v0 + 472);
  v65 = *(v0 + 464);
  v62 = *(v0 + 488);
  v63 = *(v0 + 480);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_bridgeObjectRetain_n();
  v4 = sub_1A7E22040();
  v5 = sub_1A7E228F0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 760);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v68 = v8;
    *v7 = 136315138;
    *(v0 + 608) = v2;
    *(v0 + 616) = v3;
    swift_bridgeObjectRetain_n();
    MEMORY[0x1AC561C90](58, 0xE100000000000000);
    *(v0 + 640) = v6;
    v9 = sub_1A7E23090();
    MEMORY[0x1AC561C90](v9);

    v10 = sub_1A7B0CB38(*(v0 + 608), *(v0 + 616), &v68);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_1A7AD9000, v4, v5, "    %s", v7, 0xCu);
    sub_1A7B0CD6C(v8);
    MEMORY[0x1AC5654B0](v8, -1, -1);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  v11 = (v0 + 632);
  v12 = *(v0 + 648);

  sub_1A7CEB448(v0 + 120, v0 + 232);
  os_unfair_lock_lock((v12 + 200));
  v13 = type metadata accessor for IDSLinksQualityReportBuilderComponent();
  v14 = v13;
  v15 = *(v12 + 208);
  if (*(v15 + 16) && (v16 = sub_1A7CD0DFC(v13), (v17 & 1) != 0))
  {
    sub_1A7B0CD10(*(v15 + 56) + 32 * v16, v0 + 496);
  }

  else
  {
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
  }

  v66 = v2;
  if (swift_dynamicCast())
  {
    v18 = *v11;
    if (*v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *v11 = 0;
  }

  v19 = *(v0 + 680);
  v20 = *(v0 + 672);
  v21 = *(v0 + 664);
  sub_1A7E22050();
  v22 = *(v21 + 20);
  v23 = MEMORY[0x1E69E7CC0];
  *(v19 + v22) = sub_1A7CE363C(MEMORY[0x1E69E7CC0]);
  v18 = swift_allocObject();
  v24 = (v18 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
  sub_1A7E22050();
  v25 = *(v21 + 20);
  *(v20 + v25) = sub_1A7CE363C(v23);
  v24->_os_unfair_lock_opaque = 0;
  v26 = *(sub_1A7CC7FFC(&qword_1EB2B53D8) + 28);
  v27 = sub_1A7CC7FFC(&qword_1EB2B53E0);
  bzero(v24 + v26, *(*(v27 - 8) + 64));
  sub_1A7CEB4A4(v20, v24 + v26);
  os_unfair_lock_lock(v24);
  sub_1A7CEB508(v24 + v26);
  sub_1A7CEB564(v19, v24 + v26);
  os_unfair_lock_unlock(v24);
  sub_1A7CEB508(v19);
  *(v0 + 632) = v18;
LABEL_12:
  v28 = *(v0 + 664);
  v29 = *(v0 + 648);
  *(v0 + 552) = v14;
  *(v0 + 528) = v18;
  swift_retain_n();
  sub_1A7CC8D74(v0 + 528, v14);

  os_unfair_lock_unlock(v29 + 50);
  v30 = (v18 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
  os_unfair_lock_lock((v18 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder));
  v31 = v30 + *(sub_1A7CC7FFC(&qword_1EB2B53D8) + 28);
  v32 = *(v28 + 20);
  v33 = *(*&v31[v32] + 16);

  if (v33)
  {
    v34 = *(v0 + 760);
    sub_1A7CEB448(v0 + 120, v0 + 288);
    v35 = v66;
    sub_1A7CD12D4(v66, v3, v34);
    if (v36)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_1A7CEB448(v0 + 120, v0 + 344);
    v35 = v66;
  }

  v37 = *(v0 + 760);
  *(v0 + 16) = v35;
  *(v0 + 24) = v3;
  *(v0 + 32) = v37;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 4;
  *(v0 + 80) = 0xA0000000ALL;
  *(v0 + 88) = 0;
  *(v0 + 90) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = MEMORY[0x1E69E7CC0];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = *&v31[v32];
  sub_1A7DC4018(v0 + 16, v35, v3, v37, isUniquelyReferenced_nonNull_native);
  *&v31[v32] = v68;
LABEL_17:
  v39 = sub_1A7DC9138((v0 + 560), v35, v3, *(v0 + 760));
  if (!*(v40 + 8))
  {
LABEL_44:
    __break(1u);
    return;
  }

  v41 = v39;
  v42 = *(v0 + 712);
  sub_1A7CE9DD0(v40, v65, v64, v63, v62, *(v0 + 656), v0 + 120);
  if (v42)
  {
    (v41)(v0 + 560, 0);

    sub_1A7CEB5C8(v0 + 120);

    sub_1A7CEB5C8(v0 + 120);

    os_unfair_lock_unlock(v30);
    return;
  }

  (v41)(v0 + 560, 0);

  sub_1A7CEB5C8(v0 + 120);
  os_unfair_lock_unlock(v30);

  swift_unknownObjectRelease();

  sub_1A7CEB5C8(v0 + 120);

  sub_1A7CEB5C8(v0 + 120);
  v43 = *(v0 + 720) + 1;
  if (v43 == *(v0 + 704))
  {
LABEL_23:
    v44 = *(v0 + 656);

    v45 = *(v44 + 64);
    v46 = *(v44 + 72);

    v47 = *(v0 + 8);

    v47(v45, v46);
    return;
  }

  v48 = (v0 + 624);
  while (1)
  {
    *(v0 + 720) = v43;
    *(v0 + 712) = 0;
    v49 = *(v0 + 688);
    if (v43 >= *(v49 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v50 = *(v0 + 648);
    v51 = (v49 + 24 * v43);
    v52 = v51[4];
    *(v0 + 728) = v52;
    *(v0 + 736) = v51[5];
    v53 = v51[6];
    *(v0 + 744) = v53;

    swift_unknownObjectRetain();
    os_unfair_lock_lock((v50 + 200));
    v54 = *(v50 + 208);
    if (*(v54 + 16) && (v55 = sub_1A7CD0DFC(&type metadata for IDSLinksQualityLinkCycleAssignmentsComponent), (v56 & 1) != 0))
    {
      sub_1A7B0CD10(*(v54 + 56) + 32 * v55, v0 + 432);
    }

    else
    {
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;
    }

    os_unfair_lock_unlock((*(v0 + 648) + 200));
    *(v0 + 752) = sub_1A7CC7FFC(&qword_1EB2B66D0);
    if (swift_dynamicCast())
    {
      break;
    }

    *v48 = 0;
LABEL_38:

    v57 = MEMORY[0x1E69E7CC8];
    if (*(MEMORY[0x1E69E7CC8] + 16))
    {
      goto LABEL_39;
    }

LABEL_27:
    swift_unknownObjectRelease();

    v43 = *(v0 + 720) + 1;
    if (v43 == *(v0 + 704))
    {
      goto LABEL_23;
    }
  }

  v57 = *v48;
  if (!*v48)
  {
    goto LABEL_38;
  }

  if (!*(v57 + 16))
  {
    goto LABEL_27;
  }

LABEL_39:
  v58 = sub_1A7CD1248(*(v52 + 16), *(v52 + 24));
  if ((v59 & 1) == 0)
  {
    goto LABEL_27;
  }

  *(v0 + 760) = *(*(v57 + 56) + 8 * v58);

  ObjectType = swift_getObjectType();
  *(v0 + 768) = ObjectType;
  v67 = (*(v53 + 40) + **(v53 + 40));
  v61 = swift_task_alloc();
  *(v0 + 776) = v61;
  *v61 = v0;
  v61[1] = sub_1A7CE9190;

  v67(v0 + 176, ObjectType, v53);
}

uint64_t LinkEngine.basicStatsQualityMeasurementTask.setter(uint64_t a1)
{
  sub_1A7CEAF64(a1);
}

uint64_t sub_1A7CE9DD0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1EB2B2C08 != -1)
  {
    swift_once();
  }

  v14 = sub_1A7E22060();
  sub_1A7B0CB00(v14, qword_1EB2B2C10);
  v15 = sub_1A7E22040();
  v16 = sub_1A7E228F0();
  v57 = a1;
  if (os_log_type_enabled(v15, v16))
  {
    v56 = a2;
    v17 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v60 = v55;
    *v17 = 136315138;
    *&v64 = v56;
    *(&v64 + 1) = a3;
    *&v65 = a4;
    *(&v65 + 1) = a5;
    v18 = IDSTestableLinkPacketStats.description.getter();
    v20 = a7;
    v21 = a3;
    v22 = a4;
    v23 = a6;
    v24 = sub_1A7B0CB38(v18, v19, &v60);

    *(v17 + 4) = v24;
    a6 = v23;
    a4 = v22;
    a3 = v21;
    a7 = v20;
    _os_log_impl(&dword_1A7AD9000, v15, v16, "        Adding packet metrics: %s", v17, 0xCu);
    sub_1A7B0CD6C(v55);
    a1 = v57;
    MEMORY[0x1AC5654B0](v55, -1, -1);
    v25 = v17;
    a2 = v56;
    MEMORY[0x1AC5654B0](v25, -1, -1);
  }

  v26 = *(a6 + 48);
  v26();
  if (((a3 | a2 | a4 | a5) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v27;
    v15 = a3;
    a3 = *(a1 + 96);
    a6 = a2;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_7;
    }
  }

  a3 = sub_1A7CCCFA0(0, *(a3 + 2) + 1, 1, a3);
LABEL_7:
  v29 = *(a3 + 2);
  v28 = *(a3 + 3);
  if (v29 >= v28 >> 1)
  {
    a3 = sub_1A7CCCFA0((v28 > 1), v29 + 1, 1, a3);
  }

  *(a3 + 2) = v29 + 1;
  v30 = &a3[64 * v29];
  *(v30 + 4) = 0;
  *(v30 + 5) = 0;
  *(v30 + 6) = v7;
  *(v30 + 7) = a6;
  *(v30 + 8) = v15;
  *(v30 + 9) = a4;
  *(v30 + 10) = a5;
  *(v30 + 44) = 24576;
  *(a1 + 96) = a3;
  sub_1A7CEB448(a7, &v64);
  v31 = sub_1A7E22040();
  v32 = sub_1A7E228F0();
  sub_1A7CEB5C8(a7);
  if (os_log_type_enabled(v31, v32))
  {
    v59 = v26;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v63 = v34;
    *v33 = 136315138;
    v35 = *(a7 + 16);
    v60 = *a7;
    v61 = v35;
    *v62 = *(a7 + 32);
    *&v62[15] = *(a7 + 47);
    sub_1A7CEB448(a7, &v64);
    v36 = IDSTestableLinkMetadata.description.getter();
    v38 = v37;
    v64 = v60;
    v65 = v61;
    v66[0] = *v62;
    *(v66 + 15) = *&v62[15];
    sub_1A7CEB5C8(&v64);
    v39 = sub_1A7B0CB38(v36, v38, &v63);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_1A7AD9000, v31, v32, "        Adding expense metrics: %s", v33, 0xCu);
    sub_1A7B0CD6C(v34);
    MEMORY[0x1AC5654B0](v34, -1, -1);
    v40 = v33;
    v26 = v59;
    MEMORY[0x1AC5654B0](v40, -1, -1);
  }

  v41 = (v26)();
  v42 = IDSRadioAccessTechnology.description.getter(*(a7 + 40));
  v44 = v43;
  v45 = IDSRadioAccessTechnology.description.getter(*(a7 + 44));
  v47 = v46;
  v48 = *(a7 + 48);
  v49 = *(a7 + 49);
  v51 = *(a3 + 2);
  v50 = *(a3 + 3);

  if (v51 >= v50 >> 1)
  {
    a3 = sub_1A7CCCFA0((v50 > 1), v51 + 1, 1, a3);
  }

  *(a3 + 2) = v51 + 1;
  if (v49)
  {
    v53 = 256;
  }

  else
  {
    v53 = 0;
  }

  v54 = &a3[64 * v51];
  *(v54 + 4) = 0;
  *(v54 + 5) = 0;
  *(v54 + 6) = v41;
  *(v54 + 7) = v42;
  *(v54 + 8) = v44;
  *(v54 + 9) = v45;
  *(v54 + 10) = v47;
  *(v54 + 44) = v53 & 0xFFFE | v48 & 1;
  *(v57 + 96) = a3;
  return result;
}

uint64_t IDSLinksQualityBasicStatsOngoingTask.stop()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1A7CEA284, 0, 0);
}

uint64_t sub_1A7CEA284()
{
  v12 = v0;
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 40);
  v0[4] = v2;

  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_1A7CEA404;

    return IDSLinksQualityRepeatingAsyncTask.stop()();
  }

  else
  {
    v5 = v0[2];
    os_unfair_lock_lock((v5 + 32));
    v6 = *(v5 + 40);

    os_unfair_lock_unlock((v5 + 32));
    if (v6)
    {
      v7 = (v6 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state);
      os_unfair_lock_lock((v6 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
      Strong = swift_weakLoadStrong();
      os_unfair_lock_unlock(v7);

      if (Strong)
      {
        v9 = v0[3];
        os_unfair_lock_lock(Strong + 50);
        memset(v11, 0, sizeof(v11));
        sub_1A7CC8D74(v11, v9);
        os_unfair_lock_unlock(Strong + 50);
      }
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1A7CEA404()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7CEA51C, 0, 0);
}

uint64_t sub_1A7CEA51C()
{
  v9 = v0;
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 40);

  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state);
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
    Strong = swift_weakLoadStrong();
    os_unfair_lock_unlock(v3);

    if (Strong)
    {
      v5 = v0[3];
      os_unfair_lock_lock(Strong + 50);
      memset(v8, 0, sizeof(v8));
      sub_1A7CC8D74(v8, v5);
      os_unfair_lock_unlock(Strong + 50);
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t IDSLinksQualityBasicStatsOngoingTask.deinit()
{

  sub_1A7CEAFFC(v0 + 40);

  return v0;
}

uint64_t IDSLinksQualityBasicStatsOngoingTask.__deallocating_deinit()
{

  sub_1A7CEAFFC(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7CEA680()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return IDSLinksQualityBasicStatsOngoingTask.stop()();
}

uint64_t LinkEngine.basicStatsQualityMeasurementTask.getter()
{
  os_unfair_lock_lock((v0 + 200));
  sub_1A7CC94E0((v0 + 208), &v2);
  os_unfair_lock_unlock((v0 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  type metadata accessor for IDSLinksQualityBasicStatsOngoingTask();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void (*LinkEngine.basicStatsQualityMeasurementTask.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  os_unfair_lock_lock((v1 + 200));
  sub_1A7CC94E0((v1 + 208), v4);
  os_unfair_lock_unlock((v1 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  *(v4 + 64) = type metadata accessor for IDSLinksQualityBasicStatsOngoingTask();
  v5 = swift_dynamicCast();
  v6 = *(v4 + 40);
  if (!v5)
  {
    v6 = 0;
  }

  *(v4 + 32) = v6;
  return sub_1A7CEA880;
}

void sub_1A7CEA880(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 32);

  v5 = v3[7];
  if (a2)
  {

    os_unfair_lock_lock(v5 + 50);
    if (v4)
    {
      v6 = v3[8];
      v7 = v4;
      v8 = v6;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v15 = 0;
      v16 = 0;
      v6 = v3[8];
    }

    v12 = v3[7];
    v14 = v7;
    v17 = v8;

    sub_1A7CC8D74(&v14, v6);
    os_unfair_lock_unlock(v12 + 50);
  }

  else
  {
    os_unfair_lock_lock(v5 + 50);
    if (v4)
    {
      v9 = v3[8];
      v10 = v4;
      v11 = v9;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v15 = 0;
      v16 = 0;
      v9 = v3[8];
    }

    v13 = v3[7];
    v14 = v10;
    v17 = v11;

    sub_1A7CC8D74(&v14, v9);
    os_unfair_lock_unlock(v13 + 50);
  }

  free(v3);
}

uint64_t sub_1A7CEA9C4(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v67 = a1;
  v64 = *v6;
  v11 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v65 = &v51 - v13;
  v66 = sub_1A7E226D0();
  v60 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A7E22060();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v61 = v20;
  v62 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v51 - v23;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0xD000000000000026;
  *(v6 + 24) = 0x80000001A7EAE350;
  *(v6 + 40) = 0;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;

  v63 = (v6 + 32);
  os_unfair_lock_lock((v6 + 32));

  v25 = *(v6 + 24);
  v57 = *(v6 + 16);
  v26 = qword_1EB2B2C08;
  v54 = v25;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = sub_1A7B0CB00(v17, qword_1EB2B2C10);
  v59 = v18;
  v28 = *(v18 + 16);
  v29 = v24;
  v28(v24, v27, v17);
  v53 = v28;
  v58 = swift_allocObject();
  swift_weakInit();

  sub_1A7E226B0();
  type metadata accessor for IDSLinksQualityRepeatingAsyncTask();
  v30 = swift_allocObject();
  v56 = v16;
  v31 = v17;
  v32 = v30 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
  v33 = swift_weakInit();
  v68[1] = 0;
  *v32 = 0;
  *(v32 + 16) = 0;
  *(v32 + 8) = 0;
  sub_1A7CEB2D0(v33, v32 + 8);
  v55 = v24;
  v52 = v31;
  v28((v30 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_logger), v24, v31);
  v34 = (v30 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);
  v35 = v54;
  *v34 = v57;
  v34[1] = v35;
  v36 = v30 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
  os_unfair_lock_lock((v30 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
  swift_weakAssign();
  v37 = v60;
  v38 = v65;
  v39 = v16;
  v40 = v66;
  (*(v60 + 16))(v65, v39, v66);
  (*(v37 + 56))(v38, 0, 1, v40);
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v62;
  v53(v62, v29, v31);
  v43 = v59;
  v44 = (*(v59 + 80) + 56) & ~*(v59 + 80);
  v45 = swift_allocObject();
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *(v45 + 4) = v41;
  *(v45 + 5) = &unk_1A7E44048;
  *(v45 + 6) = v58;
  v46 = v42;
  v47 = v52;
  (*(v43 + 32))(&v45[v44], v46, v52);

  *(v36 + 16) = sub_1A7D3F5DC(0, 0, v65, &unk_1A7E44050, v45);

  os_unfair_lock_unlock(v36);

  (*(v37 + 8))(v56, v66);
  (*(v43 + 8))(v55, v47);

  *(v6 + 40) = v30;
  os_unfair_lock_unlock(v63);

  v48 = v67;
  os_unfair_lock_lock(v67 + 50);
  v49 = v64;
  v68[3] = v64;
  v68[0] = v6;

  sub_1A7CC8D74(v68, v49);
  os_unfair_lock_unlock(v48 + 50);

  return v6;
}

uint64_t sub_1A7CEAF64(uint64_t a1)
{

  os_unfair_lock_lock(v1 + 50);
  v3 = type metadata accessor for IDSLinksQualityBasicStatsOngoingTask();
  v4 = v3;
  if (!a1)
  {
    v4 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  v6[0] = a1;
  v6[3] = v4;

  sub_1A7CC8D74(v6, v3);
  os_unfair_lock_unlock(v1 + 50);
}

uint64_t sub_1A7CEB068(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1A7CEB0C4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A7CEB124(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A7CEB1BC;

  return sub_1A7CE87B0(a1, v1);
}

uint64_t sub_1A7CEB1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_1A7CEB32C(uint64_t a1)
{
  v4 = *(sub_1A7E22060() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A7CD22FC;

  return sub_1A7D12A0C(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1A7CEB438(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A7CEB4A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSLinksQualityReportBuilder();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7CEB508(uint64_t a1)
{
  v2 = type metadata accessor for IDSLinksQualityReportBuilder();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A7CEB564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSLinksQualityReportBuilder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IDSToolOutputStyleFlag.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t IDSToolPrintStyle.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t sub_1A7CEB7C4()
{
  if (qword_1EB2B4738 != -1)
  {
    result = swift_once();
  }

  LOBYTE(qword_1EB2B53E8) = 0;
  *(&qword_1EB2B53E8 + 1) = qword_1EB2B5600;
  return result;
}

uint64_t static IDSToolPrintStyle.full.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B4720 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EB2B53E8;
  *(a1 + 8) = byte_1EB2B53F0;
  return result;
}

uint64_t sub_1A7CEB898()
{
  if (qword_1EB2B4730 != -1)
  {
    result = swift_once();
  }

  LOBYTE(qword_1EB2B53F1) = 1;
  *(&qword_1EB2B53F1 + 1) = qword_1EB2B55F8;
  return result;
}

uint64_t static IDSToolPrintStyle.summary.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B4728 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EB2B53F1;
  *(a1 + 8) = byte_1EB2B53F9;
  return result;
}

unint64_t sub_1A7CEB970()
{
  result = qword_1EB2B5400;
  if (!qword_1EB2B5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5400);
  }

  return result;
}

unint64_t sub_1A7CEB9C8()
{
  result = qword_1EB2B5408;
  if (!qword_1EB2B5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5408);
  }

  return result;
}

unint64_t sub_1A7CEBA20()
{
  result = qword_1EB2B5410;
  if (!qword_1EB2B5410)
  {
    sub_1A7CC9830(&qword_1EB2B5418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5410);
  }

  return result;
}

unint64_t sub_1A7CEBA88()
{
  result = qword_1EB2B5420;
  if (!qword_1EB2B5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5420);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for IDSToolPrintStyle(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IDSToolPrintStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[9])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSToolPrintStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDSToolOutputStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[9])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IDSToolOutputStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1A7CEBC30(unsigned __int8 *a1)
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

uint64_t sub_1A7CEBC44(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

__n128 sub_1A7CEBC80(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1A7CEBC94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_1A7CEBCDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7CEBD30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1A7CCE988(0, v2, 0);
  v6 = 0;
  result = v26;
  v20 = a1 + 32;
  v21 = v2;
  do
  {
    v24 = result;
    v8 = (v20 + 16 * v6);
    v9 = *v8;
    v22 = v8[9];
    v23 = v8[8];
    v10 = *(*v8 + 16);
    v11 = *(*a2 + 16);

    if (v10 >= v11)
    {
      v12 = v9;
    }

    else
    {

      v12 = v9;
      do
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1A7CCC868(0, *(v12 + 2) + 1, 1, v12);
        }

        v14 = *(v12 + 2);
        v13 = *(v12 + 3);
        v15 = v14 + 1;
        if (v14 >= v13 >> 1)
        {
          v12 = sub_1A7CCC868((v13 > 1), v14 + 1, 1, v12);
        }

        *(v12 + 2) = v15;
        v16 = &v12[40 * v14];
        *(v16 + 4) = 0;
        *(v16 + 5) = 0;
        v16[48] = 1;
        *(v16 + 13) = *&v25[3];
        *(v16 + 49) = *v25;
        *(v16 + 7) = v3;
        *(v16 + 16) = 0;
        *(v16 + 34) = 0;
      }

      while (v15 < *(*a2 + 16));
    }

    result = v24;
    v18 = *(v24 + 16);
    v17 = *(v24 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1A7CCE988((v17 > 1), v18 + 1, 1);
      result = v24;
    }

    *(result + 16) = v18 + 1;
    v19 = result + 16 * v18;
    *(v19 + 32) = v12;
    ++v6;
    *(v19 + 40) = v23;
    *(v19 + 41) = v22;
  }

  while (v6 != v21);
  return result;
}

void sub_1A7CEBF20()
{
  v12 = v0[1];
  v11 = *(v12 + 2);
  if (v11)
  {
    v1 = 0;
    while (v1 < *(v12 + 2))
    {
      v2 = *&v12[16 * v1 + 32];
      v3 = *(v2 + 16);
      if (v3)
      {
        v13 = v1;

        v4 = 0;
        while (v4 < *(v2 + 16))
        {
          v5 = *v0;
          if (*(*v0 + 2) <= v4)
          {
            do
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v5 = sub_1A7CCC644(0, *(v5 + 2) + 1, 1, v5);
              }

              v7 = *(v5 + 2);
              v6 = *(v5 + 3);
              if (v7 >= v6 >> 1)
              {
                v5 = sub_1A7CCC644((v6 > 1), v7 + 1, 1, v5);
              }

              *(v5 + 2) = v7 + 1;
              v8 = &v5[56 * v7];
              *(v8 + 2) = xmmword_1A7E44250;
              *(v8 + 6) = 1;
              v8[56] = 2;
              *(v8 + 57) = *v14;
              *(v8 + 15) = *&v14[3];
              *(v8 + 4) = vdupq_n_s64(1uLL);
              *(v8 + 40) = 0;
              v8[82] = 1;
            }

            while (v7 < v4);
            *v0 = v5;
          }

          if (++v4 == v3)
          {

            v1 = v13;
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:
      if (++v1 == v11)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v10 = sub_1A7CEBD30(v9, v0);
    swift_bridgeObjectRelease_n();
    v0[1] = v10;
  }
}

uint64_t sub_1A7CEC0F8()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    goto LABEL_10;
  }

  v2 = v0;
  if (v1[80] <= *(v0 + 17))
  {
    LOBYTE(v3) = *(v0 + 17);
  }

  else
  {
    LOBYTE(v3) = v1[80];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_56;
  }

  v4 = *(v1 + 2);
  if (v4)
  {
    goto LABEL_7;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  for (result = sub_1A7CDD090(v0); ; result = v0)
  {
    v0 = result + 16;
    v2 = *(result + 16);
    if (!v2)
    {
      __break(1u);
      return result;
    }

    v9 = 0;
    *(result + 40) = v3;
    v10 = v0 + 16 * v2;
    v11 = *(v10 + 9);
    if (v11 <= *(v33 + 20))
    {
      LOBYTE(v11) = *(v33 + 20);
    }

    *(v10 + 9) = v11;
    v36 = v1 + 82;
    v37 = result + 32;
    v12 = MEMORY[0x1E69E7CC0];
    v39 = v1;
    v34 = v2;
    v35 = result + 16;
    while (v9 < *v0)
    {
      v13 = (v37 + 16 * v9);
      v42 = v13[9];
      v43 = v13[8];
      v3 = *(*v13 + 16);
      if (v3)
      {
        v38 = v12;

        v15 = *(v14 + 32);
        v16 = *(v14 + 48);
        *&v53[14] = *(v14 + 62);
        v52 = v15;
        *v53 = v16;
        v17 = v53[17];
        v51 = *(v14 + 64);
        v18 = *(v14 + 48);
        v49 = *(v14 + 32);
        v50 = v18;
        if (!*(v1 + 2))
        {
LABEL_54:
          __break(1u);
          break;
        }

        v1 = 0;
        LODWORD(v2) = v53[21];
        v41 = (v3 - 1);
        v0 = 72;
        v3 = v36;
        v19 = MEMORY[0x1E69E7CC0];
        v40 = v14;
        while (1)
        {
          if (v17 <= *(v3 - 2))
          {
            v17 = *(v3 - 2);
          }

          v44 = v17;
          if (v53[19] <= *(v3 - 1))
          {
            v20 = *(v3 - 1);
          }

          else
          {
            v20 = v53[19];
          }

          if (v53[18] <= v43)
          {
            v21 = v43;
          }

          else
          {
            v21 = v53[18];
          }

          if (v53[20] <= v42)
          {
            v22 = v42;
          }

          else
          {
            v22 = v53[20];
          }

          if (!v2)
          {
            LOBYTE(v2) = *v3;
          }

          v46 = v49;
          v47 = v50;
          v48 = v51;
          sub_1A7CF36A8(&v52, v45);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1A7CCC868(0, *(v19 + 2) + 1, 1, v19);
          }

          v24 = *(v19 + 2);
          v23 = *(v19 + 3);
          if (v24 >= v23 >> 1)
          {
            v19 = sub_1A7CCC868((v23 > 1), v24 + 1, 1, v19);
          }

          *(v19 + 2) = v24 + 1;
          v25 = &v19[40 * v24];
          v26 = v46;
          v27 = v47;
          v25[64] = v48;
          *(v25 + 2) = v26;
          *(v25 + 3) = v27;
          v25[65] = v44;
          v25[66] = v21;
          v25[67] = v20;
          v25[68] = v22;
          v25[69] = v2;
          if (v41 == v1)
          {
            break;
          }

          v28 = *(v40 + v0);
          v29 = *(v40 + v0 + 16);
          *&v53[14] = *(v40 + v0 + 30);
          v52 = v28;
          *v53 = v29;
          v17 = v53[17];
          v51 = *(v40 + v0 + 32);
          v30 = *(v40 + v0 + 16);
          v49 = *(v40 + v0);
          v50 = v30;
          v2 = v53[21];
          v3 += 56;
          v0 += 40;
          if (++v1 >= *(v39 + 2))
          {
            goto LABEL_54;
          }
        }

        v1 = v39;
        v2 = v34;
        v0 = v35;
        v12 = v38;
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1A7CCC75C(0, *(v12 + 2) + 1, 1, v12);
      }

      v3 = *(v12 + 2);
      v31 = *(v12 + 3);
      if (v3 >= v31 >> 1)
      {
        v12 = sub_1A7CCC75C((v31 > 1), v3 + 1, 1, v12);
      }

      *(v12 + 2) = v3 + 1;
      v32 = &v12[16 * v3];
      *(v32 + 4) = v19;
      ++v9;
      v32[40] = v43;
      v32[41] = v42;
      if (v9 == v2)
      {

        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_56:
    v1 = sub_1A7CDD0A4(v1);
    v4 = *(v1 + 2);
    if (!v4)
    {
      goto LABEL_57;
    }

LABEL_7:
    v1[80] = v3;
    v5 = &v1[56 * v4];
    v6 = v5[25];
    if (v6 <= *(v2 + 18))
    {
      LOBYTE(v6) = *(v2 + 18);
    }

    v5[25] = v6;
    v0 = v2;
    *v2 = v1;
LABEL_10:
    v7 = *(v0 + 8);
    v33 = v0;
    if (!*(v7 + 16))
    {
      break;
    }

    if (*(v7 + 40) <= *(v0 + 19))
    {
      LOBYTE(v3) = *(v0 + 19);
    }

    else
    {
      LOBYTE(v3) = *(v7 + 40);
    }

    v0 = *(v0 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_53:
  *(v33 + 8) = v12;
  return result;
}

uint64_t sub_1A7CEC4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v133 = a4;
  v137 = a3;
  v144 = a1;
  v132 = sub_1A7CC7FFC(&qword_1EB2B5438);
  v125 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v5);
  v131 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v130 = &v124 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v129 = &v124 - v12;
  v13 = *(a2 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CD0];
  v136 = a2;
  v141 = v13;
  if (v13)
  {
    v154[0] = MEMORY[0x1E69E7CC0];
    sub_1A7CCE9A8(0, v13, 0);
    v16 = v154[0];
    v17 = (a2 + 32);
    v18 = *(v154[0] + 2);
    v19 = (a2 + 32);
    v20 = v13;
    do
    {
      v22 = *v19;
      v19 += 7;
      v21 = v22;
      v154[0] = v16;
      v23 = *(v16 + 3);
      if (v18 >= v23 >> 1)
      {
        sub_1A7CCE9A8((v23 > 1), v18 + 1, 1);
        v16 = v154[0];
      }

      *(v16 + 2) = v18 + 1;
      *&v16[8 * v18++ + 32] = v21;
      --v20;
    }

    while (v20);
    v24 = swift_allocObject();
    v135 = v24;
    v148 = v16;
    *(v24 + 16) = v16;
    v140 = (v24 + 16);
    v154[0] = v14;
    v13 = v141;
    sub_1A7CCE9A8(0, v141, 0);
    v14 = v154[0];
    v25 = *(v154[0] + 2);
    v26 = v13;
    do
    {
      v28 = *v17;
      v17 += 7;
      v27 = v28;
      v154[0] = v14;
      v29 = *(v14 + 3);
      if (v25 >= v29 >> 1)
      {
        sub_1A7CCE9A8((v29 > 1), v25 + 1, 1);
        v14 = v154[0];
      }

      *(v14 + 2) = v25 + 1;
      *&v14[8 * v25++ + 32] = v27;
      --v26;
    }

    while (v26);
    v30 = swift_allocObject();
    v134 = v30;
    *(v30 + 16) = v14;
    v31 = (v30 + 16);
    v159 = v15;
    a2 = v136;
    v32 = (v136 + 48);
    v15 = v13;
    do
    {
      v33 = *v32;
      v32 += 7;
      sub_1A7CF0038(v154, v33);
      --v15;
    }

    while (v15);
    v34 = v148;
  }

  else
  {
    v35 = swift_allocObject();
    v135 = v35;
    *(v35 + 16) = v14;
    v140 = (v35 + 16);
    v36 = swift_allocObject();
    v134 = v36;
    *(v36 + 16) = v14;
    v31 = (v36 + 16);
    v159 = v15;
    v34 = v14;
  }

  v37 = *(v137 + 16);
  v139 = v31;
  if (!v37)
  {
LABEL_56:
    v81 = *(v14 + 2);
    if (!v81)
    {
      goto LABEL_64;
    }

    v82 = (v14 + 32);
    v83 = 1;
    while (1)
    {
      v84 = *v82++;
      v85 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        break;
      }

      v67 = __OFADD__(v83, v85);
      v83 += v85;
      if (v67)
      {
        goto LABEL_109;
      }

      if (!--v81)
      {
        goto LABEL_65;
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v38 = 0;
  v39 = v137 + 32;
  v40 = a2 + 32;
  v15 = 40;
  v127 = v37;
  v126 = v137 + 32;
  v138 = a2 + 32;
  while (1)
  {
    v41 = *(v39 + 16 * v38);
    v42 = *(v41 + 16);
    if (v42)
    {
      break;
    }

LABEL_17:
    if (++v38 == v37)
    {
      goto LABEL_56;
    }
  }

  v128 = v38;
  v149 = (v41 + 32);

  v43 = 0;
  v143 = v41;
  v142 = v42;
  while (1)
  {
    v44 = &v149[40 * v43];
    v45 = *v44;
    v46 = *(v44 + 1);
    *&v158[14] = *(v44 + 30);
    v157 = v45;
    *v158 = v46;
    if (v43 == v13)
    {
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

    v47 = v40 + 56 * v43;
    v48 = *(v47 + 24);
    if (v48 == 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1A7CDD0B8(v14);
      }

      if (v43 >= *(v14 + 2))
      {
        goto LABEL_103;
      }

      *&v14[8 * v43 + 32] = v144;
      *v31 = v14;
      goto LABEL_53;
    }

    if (v48 == 1)
    {
      break;
    }

LABEL_53:
    if (++v43 == v42)
    {

      v37 = v127;
      v38 = v128;
      v39 = v126;
      goto LABEL_17;
    }

    if (v43 >= *(v41 + 16))
    {
      goto LABEL_100;
    }
  }

  if (v43 >= *(v14 + 2))
  {
    goto LABEL_104;
  }

  v148 = v34;
  v15 = *(v47 + 32);
  v150 = *(v47 + 40);
  v146 = v14;
  v49 = *&v14[8 * v43 + 32];
  v50 = *&v158[8];
  v51 = *(*&v158[8] + 16);
  v145 = *&v158[8];
  if (v51)
  {
    v147 = v15;
    sub_1A7CF36A8(&v157, v154);
    sub_1A7CF36A8(&v157, v154);
    v154[0] = MEMORY[0x1E69E7CC0];
    sub_1A7CCE918(0, v51, 0);
    v52 = v154[0];
    v53 = (v50 + 40);
    do
    {
      v55 = *(v53 - 1);
      v54 = *v53;
      v154[0] = v52;
      v57 = *(v52 + 2);
      v56 = *(v52 + 3);

      if (v57 >= v56 >> 1)
      {
        sub_1A7CCE918((v56 > 1), v57 + 1, 1);
        v52 = v154[0];
      }

      *(v52 + 2) = v57 + 1;
      v58 = &v52[16 * v57];
      *(v58 + 4) = v55;
      *(v58 + 5) = v54;
      v53 += 6;
      --v51;
    }

    while (v51);
    sub_1A7CF3704(&v157);
    v31 = v139;
    v15 = v147;
  }

  else
  {
    sub_1A7CF36A8(&v157, v154);
    v52 = MEMORY[0x1E69E7CC0];
  }

  v154[0] = v52;
  sub_1A7CC7FFC(&qword_1EB2B4AA0);
  sub_1A7CF3788(&qword_1EB2B3088, &qword_1EB2B4AA0);
  v59 = sub_1A7E221F0();
  v61 = v60;

  v154[0] = v59;
  v154[1] = v61;
  sub_1A7CC7DFC();
  v62 = sub_1A7E22A40();

  v147 = v62;
  v63 = *(v62 + 16);
  if (!v63)
  {
LABEL_42:

    v14 = v146;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1A7CDD0B8(v14);
    }

    v69 = v148;
    v70 = v145;
    if (v43 >= *(v14 + 2))
    {
      goto LABEL_105;
    }

    *&v14[8 * v43 + 32] = v49;
    *v31 = v14;
    if (v43 >= *(v69 + 2))
    {
      goto LABEL_106;
    }

    v71 = *&v69[8 * v43 + 32];
    v151[0] = v15;
    v151[1] = v150;
    v152 = v158[21];
    v153 = v70;
    sub_1A7CF36A8(&v157, v154);
    CLIText.formatted(maxWidth:pad:useColors:)(1, 1, v154);

    v72 = v155;
    v73 = v156;
    sub_1A7CC9878(v154, v155);
    v74 = *(v73 + 8);
    sub_1A7CF36A8(&v157, v151);
    v75 = v74(v72, v73);
    v76 = v155;
    v77 = v156;
    sub_1A7CC9878(v154, v155);
    (*(v77 + 16))(v76, v77);
    v78 = v155;
    v79 = v156;
    sub_1A7CC9878(v154, v155);
    (*(v79 + 24))(v78, v79);
    sub_1A7CF3704(&v157);
    sub_1A7B0CD6C(v154);
    v34 = v148;

    if (v75 <= v71)
    {
      v80 = v71;
    }

    else
    {
      v80 = v75;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1A7CDD0B8(v34);
    }

    v13 = v141;
    v15 = 40;
    v41 = v143;
    v42 = v142;
    if (v43 >= *(v34 + 2))
    {
      goto LABEL_107;
    }

    *&v34[8 * v43 + 32] = v80;
    *v140 = v34;
    v40 = v138;
    goto LABEL_53;
  }

  v64 = (v147 + 56);
  while (1)
  {
    v14 = *v64;

    v65 = sub_1A7E229D0();

    v66 = v65 + v15;
    if (__OFADD__(v65, v15))
    {
      break;
    }

    v67 = __OFADD__(v66, v150);
    v68 = v150 + v66;
    if (v67)
    {
      goto LABEL_63;
    }

    if (v68 > v49)
    {
      v49 = v68;
    }

    v64 += 4;
    if (!--v63)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  v83 = 1;
LABEL_65:
  v86 = v159;
  v15 = *(v159 + 16);
  v87 = MEMORY[0x1E69E7CC0];
  v147 = v159;
  if (!v15)
  {
LABEL_68:
    v154[0] = v87;
    v15 = 0;
    sub_1A7CEF724(v154);
    v89 = v14;
    v90 = v154[0];
    v91 = *(v154[0] + 2);
    swift_beginAccess();
    v150 = v91;
    if (!v91)
    {
LABEL_81:

      v106 = v147;
      v107 = *(v147 + 16);
      v108 = MEMORY[0x1E69E7CC0];
      if (v107)
      {
        v108 = sub_1A7CE0A6C(*(v147 + 16), 0);
        v150 = sub_1A7CE0D08(v154, v108 + 4, v107, v106);

        sub_1A7CC9770();
        if (v150 != v107)
        {
          goto LABEL_115;
        }
      }

      v154[0] = v108;
      sub_1A7CEF724(v154);

      v109 = v154[0];
      v110 = *(v154[0] + 2);
      swift_beginAccess();
      v150 = v110;
      if (!v110)
      {
LABEL_96:

        return v89;
      }

      v111 = 0;
      v149 = v109 + 32;
      v148 = (v125 + 8);
      v112 = v130;
      v113 = v132;
      while (v111 < *(v109 + 2))
      {
        v114 = v83 - v144;
        if (v83 <= v144)
        {
          goto LABEL_96;
        }

        if (__OFSUB__(v83, v144))
        {
          goto LABEL_113;
        }

        v115 = *&v149[8 * v111];
        v151[0] = MEMORY[0x1E69E7CC0];
        sub_1A7CC7FFC(&qword_1EB2B5440);
        sub_1A7CF3788(&qword_1EB2B5448, &qword_1EB2B5440);
        v116 = v129;
        sub_1A7E23300();
        v117 = v136;
        sub_1A7CEDAF0(v136, v115);
        sub_1A7E232C0();
        sub_1A7CED37C(v112, v114, 0, v117, v137, v133 & 0xFFFFFFFF01, v134, v135);
        v118 = *v148;
        (*v148)(v112, v113);
        v118(v116, v113);
        v89 = *v139;
        v119 = *(*v139 + 2);
        if (v119)
        {
          v120 = (v89 + 32);
          v83 = 1;
          while (1)
          {
            v121 = *v120++;
            v122 = v121 + 1;
            if (__OFADD__(v121, 1))
            {
              goto LABEL_101;
            }

            v67 = __OFADD__(v83, v122);
            v83 += v122;
            if (v67)
            {
              goto LABEL_102;
            }

            if (!--v119)
            {
              goto LABEL_86;
            }
          }
        }

        v83 = 1;
LABEL_86:
        if (++v111 == v150)
        {
          goto LABEL_96;
        }
      }

LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v92 = 0;
    v149 = v90 + 32;
    v148 = (v125 + 8);
    while (v92 < *(v90 + 2))
    {
      v93 = v83 - v144;
      if (v83 <= v144)
      {
        goto LABEL_81;
      }

      if (__OFSUB__(v83, v144))
      {
        goto LABEL_111;
      }

      v94 = *&v149[8 * v92];
      v154[0] = MEMORY[0x1E69E7CC0];
      sub_1A7CC7FFC(&qword_1EB2B5440);
      sub_1A7CF3788(&qword_1EB2B5448, &qword_1EB2B5440);
      v95 = v129;
      sub_1A7E23300();
      v96 = v136;
      sub_1A7CEDAF0(v136, v94);
      v97 = v130;
      v98 = v132;
      sub_1A7E232C0();
      sub_1A7CED37C(v97, v93, 0, v96, v137, v133 & 0xFFFFFFFF01, v134, v135);
      v99 = *v148;
      (*v148)(v97, v98);
      v100 = v98;
      v101 = v139;
      v99(v95, v100);
      v102 = *(*v101 + 2);
      if (v102)
      {
        v89 = *v101;
        v103 = (*v101 + 32);
        v83 = 1;
        while (1)
        {
          v104 = *v103++;
          v105 = v104 + 1;
          if (__OFADD__(v104, 1))
          {
            break;
          }

          v67 = __OFADD__(v83, v105);
          v83 += v105;
          if (v67)
          {
            goto LABEL_98;
          }

          if (!--v102)
          {
            goto LABEL_71;
          }
        }

        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v89 = *v101;
      v83 = 1;
LABEL_71:
      if (++v92 == v150)
      {
        goto LABEL_81;
      }
    }

LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v146 = v14;
  v87 = sub_1A7CE0A6C(v15, 0);
  v88 = sub_1A7CE0D08(v154, v87 + 4, v15, v86);

  sub_1A7CC9770();
  if (v88 == v15)
  {
    v14 = v146;
    goto LABEL_68;
  }

LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1A7CED37C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v77 = a8;
  v84 = a2;
  v85 = a7;
  v82 = a3;
  v10 = sub_1A7CC7FFC(&qword_1EB2B5450);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - v13;
  v15 = sub_1A7CC7FFC(&qword_1EB2B5458);
  MEMORY[0x1EEE9AC00](v15, v16);
  v76 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v70 - v20;
  v22 = sub_1A7CC7FFC(&qword_1EB2B5438);
  result = sub_1A7E232F0();
  if (result)
  {
    return result;
  }

  v75 = v22;
  v80 = a1;
  sub_1A7E232E0();
  v24 = *(v11 + 16);
  v74 = v11 + 16;
  v73 = v24;
  v24(v21, v14, v10);
  v79 = v15;
  v25 = *(v15 + 36);
  v26 = sub_1A7CF3788(&qword_1EB2B5460, &qword_1EB2B5450);
  sub_1A7E22830();
  v27 = *(v11 + 8);
  v81 = v11 + 8;
  v72 = v27;
  v27(v14, v10);
  v28 = 0;
  v83 = a4;
  v71 = a4 + 40;
LABEL_3:
  while (1)
  {
    sub_1A7E22850();
    if (*&v21[v25] == v86[0])
    {
      break;
    }

    v29 = sub_1A7E22890();
    v31 = *v30;
    v32 = v30[1];
    v29(v86, 0);
    result = sub_1A7E22860();
    if (v32 != v31)
    {
      if (v32 >= v31)
      {
        v33 = v32 - v31;
        if (v32 > v31)
        {
          v34 = *(v83 + 16);
          v35 = v34 >= v31;
          v36 = v34 - v31;
          if (!v35)
          {
            v36 = 0;
          }

          v37 = (v71 + 56 * v31);
          while (v36)
          {
            v38 = *v37;
            if (*v37 <= 1)
            {
              v38 = 1;
            }

            v39 = __OFADD__(v28, v38);
            v28 += v38;
            if (v39)
            {
              goto LABEL_59;
            }

            --v36;
            v37 += 7;
            if (!--v33)
            {
              goto LABEL_3;
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
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        return result;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }
  }

  result = sub_1A7CC9970(v21, &qword_1EB2B5458);
  v40 = v84;
  v41 = v84;
  v42 = ceil(v84 / v28);
  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_73;
  }

  if (v42 <= -9.22337204e18)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v42 >= 9.22337204e18)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  sub_1A7E232E0();
  v43 = v76;
  v73(v76, v14, v10);
  v44 = *(v79 + 36);
  sub_1A7E22830();
  v72(v14, v10);
  sub_1A7E22850();
  v75 = v44;
  v45 = *(v43 + v44);
  v46 = v83;
  if (v45 != v86[0])
  {
    v74 = v83 + 40;
    v79 = v42;
    v78 = v10;
    while (2)
    {
      v47 = sub_1A7E22890();
      v49 = *v48;
      v50 = v48[1];
      v47(v86, 0);
      sub_1A7E22860();
      swift_beginAccess();
      swift_beginAccess();
      result = swift_beginAccess();
      v51 = v49;
      v52 = v49;
LABEL_24:
      if (v51 <= v50)
      {
        v53 = v50;
      }

      else
      {
        v53 = v51;
      }

      v81 = v53;
      v54 = (v74 + 56 * v51);
      v80 = v51;
      while (v50 != v52)
      {
        if (v50 < v49)
        {
          goto LABEL_60;
        }

        if (v51 < v49)
        {
          goto LABEL_61;
        }

        if (v81 == v52)
        {
          goto LABEL_62;
        }

        if (v40 < 1)
        {
          return sub_1A7CC9970(v76, &qword_1EB2B5458);
        }

        if (v51 < 0)
        {
          goto LABEL_63;
        }

        if (v52 >= *(v46 + 16))
        {
          goto LABEL_64;
        }

        v55 = *v54;
        v56 = v79 * *v54;
        if ((v79 * *v54) >> 64 != v56 >> 63)
        {
          goto LABEL_65;
        }

        v57 = *(v85 + 16);
        if (v52 >= *(v57 + 16))
        {
          goto LABEL_66;
        }

        v58 = *(v57 + 8 * v52 + 32);
        v39 = __OFSUB__(v58, v56);
        v59 = v58 - v56;
        if (v39)
        {
          goto LABEL_67;
        }

        v84 = v40;
        if (v59 <= 1)
        {
          v60 = 1;
        }

        else
        {
          v60 = v59;
        }

        if ((v82 & 1) == 0)
        {
          v61 = *(v77 + 16);
          if (v52 >= *(v61 + 16))
          {
            goto LABEL_72;
          }

          v62 = *(v61 + 8 * v52 + 32);
          if (v60 <= v62)
          {
            v60 = v62;
          }
        }

        v63 = v50;
        v64 = v26;
        v65 = v49;
        v66 = v58 - v60;
        if (__OFSUB__(v58, v60))
        {
          goto LABEL_68;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        *(v85 + 16) = v57;
        if ((result & 1) == 0)
        {
          result = sub_1A7CDD0B8(v57);
          v57 = result;
        }

        v51 = v80;
        if (v52 >= *(v57 + 16))
        {
          goto LABEL_69;
        }

        *(v57 + 8 * v52 + 32) = v60;
        v67 = v84;
        *(v85 + 16) = v57;
        v39 = __OFSUB__(v67, v66);
        v40 = v67 - v66;
        if (v39)
        {
          goto LABEL_70;
        }

        v39 = __OFSUB__(v28, v55);
        v28 -= v55;
        if (v39)
        {
          goto LABEL_71;
        }

        v54 += 7;
        ++v52;
        v46 = v83;
        v49 = v65;
        v26 = v64;
        v50 = v63;
        if (v28 >= 1)
        {
          v68 = ceil(v41 / v28);
          if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_78;
          }

          if (v68 <= -9.22337204e18)
          {
            goto LABEL_79;
          }

          if (v68 >= 9.22337204e18)
          {
            goto LABEL_80;
          }

          v79 = v68;
          v51 = v52;
          goto LABEL_24;
        }
      }

      v69 = v76;
      sub_1A7E22850();
      if (*(v69 + v75) != v86[0])
      {
        continue;
      }

      break;
    }
  }

  return sub_1A7CC9970(v76, &qword_1EB2B5458);
}