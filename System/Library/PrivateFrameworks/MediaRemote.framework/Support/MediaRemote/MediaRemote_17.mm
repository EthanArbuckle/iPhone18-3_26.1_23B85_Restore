unint64_t sub_100276ADC()
{
  result = qword_100524378;
  if (!qword_100524378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524378);
  }

  return result;
}

unint64_t sub_100276B34()
{
  result = qword_100524380;
  if (!qword_100524380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524380);
  }

  return result;
}

void sub_100276BB0()
{
  type metadata accessor for RoutingSessionConfiguration.Attribution();
  if (v0 <= 0x3F)
  {
    sub_100276CA4(319, &qword_100523D48, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100276CA4(319, &unk_1005243E0, &type metadata for RoutingEvent.Result, type metadata accessor for Future);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100276CA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100276CF4(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 sub_100276D10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100276D24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100276D6C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100276DC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100276E08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100276E4C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100276E74(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100276E8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100276EA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_100276EFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_100276F74(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100276F90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100276FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100277038(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10027704C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 33))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 32);
  if (v3 <= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100277094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 245;
    *(result + 8) = 0;
    if (a3 >= 0xF5)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
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

void sub_1002770FC()
{
  sub_100277228(319, &unk_100524440, &type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100277228(319, &qword_100523E28, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100277228(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RoutingInteraction.Action.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RoutingInteraction.Action.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RoutingInteraction.Action.HandoffCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RoutingInteraction.Action.HandoffCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100277600()
{
  result = qword_100530510[0];
  if (!qword_100530510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100530510);
  }

  return result;
}

unint64_t sub_100277658()
{
  result = qword_100530720[0];
  if (!qword_100530720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100530720);
  }

  return result;
}

unint64_t sub_1002776B0()
{
  result = qword_100530930[0];
  if (!qword_100530930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100530930);
  }

  return result;
}

unint64_t sub_100277708()
{
  result = qword_100530B40[0];
  if (!qword_100530B40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100530B40);
  }

  return result;
}

unint64_t sub_100277760()
{
  result = qword_100530D50[0];
  if (!qword_100530D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100530D50);
  }

  return result;
}

unint64_t sub_1002777B8()
{
  result = qword_100530F60[0];
  if (!qword_100530F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100530F60);
  }

  return result;
}

unint64_t sub_100277810()
{
  result = qword_100531170[0];
  if (!qword_100531170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100531170);
  }

  return result;
}

unint64_t sub_100277868()
{
  result = qword_100531380[0];
  if (!qword_100531380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100531380);
  }

  return result;
}

unint64_t sub_1002778C0()
{
  result = qword_100531590[0];
  if (!qword_100531590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100531590);
  }

  return result;
}

unint64_t sub_100277918()
{
  result = qword_1005317A0[0];
  if (!qword_1005317A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005317A0);
  }

  return result;
}

unint64_t sub_100277970()
{
  result = qword_1005319B0[0];
  if (!qword_1005319B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005319B0);
  }

  return result;
}

unint64_t sub_1002779C8()
{
  result = qword_100531BC0[0];
  if (!qword_100531BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100531BC0);
  }

  return result;
}

unint64_t sub_100277A20()
{
  result = qword_100531DD0[0];
  if (!qword_100531DD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100531DD0);
  }

  return result;
}

unint64_t sub_100277A78()
{
  result = qword_100531FE0[0];
  if (!qword_100531FE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100531FE0);
  }

  return result;
}

unint64_t sub_100277AD0()
{
  result = qword_1005321F0;
  if (!qword_1005321F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005321F0);
  }

  return result;
}

unint64_t sub_100277B28()
{
  result = qword_100532400[0];
  if (!qword_100532400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532400);
  }

  return result;
}

unint64_t sub_100277B80()
{
  result = qword_100532510;
  if (!qword_100532510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532510);
  }

  return result;
}

unint64_t sub_100277BD8()
{
  result = qword_100532518[0];
  if (!qword_100532518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532518);
  }

  return result;
}

unint64_t sub_100277C30()
{
  result = qword_1005325A0;
  if (!qword_1005325A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005325A0);
  }

  return result;
}

unint64_t sub_100277C88()
{
  result = qword_1005325A8[0];
  if (!qword_1005325A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005325A8);
  }

  return result;
}

unint64_t sub_100277CE0()
{
  result = qword_100532630;
  if (!qword_100532630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532630);
  }

  return result;
}

unint64_t sub_100277D38()
{
  result = qword_100532638[0];
  if (!qword_100532638[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532638);
  }

  return result;
}

unint64_t sub_100277D90()
{
  result = qword_1005326C0;
  if (!qword_1005326C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005326C0);
  }

  return result;
}

unint64_t sub_100277DE8()
{
  result = qword_1005326C8[0];
  if (!qword_1005326C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005326C8);
  }

  return result;
}

unint64_t sub_100277E40()
{
  result = qword_100532750;
  if (!qword_100532750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532750);
  }

  return result;
}

unint64_t sub_100277E98()
{
  result = qword_100532758[0];
  if (!qword_100532758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532758);
  }

  return result;
}

unint64_t sub_100277EF0()
{
  result = qword_1005327E0;
  if (!qword_1005327E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005327E0);
  }

  return result;
}

unint64_t sub_100277F48()
{
  result = qword_1005327E8[0];
  if (!qword_1005327E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005327E8);
  }

  return result;
}

unint64_t sub_100277FA0()
{
  result = qword_100532870;
  if (!qword_100532870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532870);
  }

  return result;
}

unint64_t sub_100277FF8()
{
  result = qword_100532878;
  if (!qword_100532878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532878);
  }

  return result;
}

unint64_t sub_100278050()
{
  result = qword_100532900;
  if (!qword_100532900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532900);
  }

  return result;
}

unint64_t sub_1002780A8()
{
  result = qword_100532908[0];
  if (!qword_100532908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532908);
  }

  return result;
}

unint64_t sub_100278100()
{
  result = qword_100532990;
  if (!qword_100532990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532990);
  }

  return result;
}

unint64_t sub_100278158()
{
  result = qword_100532998[0];
  if (!qword_100532998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532998);
  }

  return result;
}

unint64_t sub_1002781B0()
{
  result = qword_100532A20;
  if (!qword_100532A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532A20);
  }

  return result;
}

unint64_t sub_100278208()
{
  result = qword_100532A28[0];
  if (!qword_100532A28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532A28);
  }

  return result;
}

unint64_t sub_100278260()
{
  result = qword_100532AB0;
  if (!qword_100532AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532AB0);
  }

  return result;
}

unint64_t sub_1002782B8()
{
  result = qword_100532AB8[0];
  if (!qword_100532AB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532AB8);
  }

  return result;
}

unint64_t sub_100278310()
{
  result = qword_100532B40;
  if (!qword_100532B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532B40);
  }

  return result;
}

unint64_t sub_100278368()
{
  result = qword_100532B48[0];
  if (!qword_100532B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532B48);
  }

  return result;
}

unint64_t sub_1002783C0()
{
  result = qword_100532BD0;
  if (!qword_100532BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532BD0);
  }

  return result;
}

unint64_t sub_100278418()
{
  result = qword_100532BD8[0];
  if (!qword_100532BD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532BD8);
  }

  return result;
}

unint64_t sub_100278470()
{
  result = qword_100532C60;
  if (!qword_100532C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532C60);
  }

  return result;
}

unint64_t sub_1002784C8()
{
  result = qword_100532C68[0];
  if (!qword_100532C68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532C68);
  }

  return result;
}

unint64_t sub_100278520()
{
  result = qword_100532CF0;
  if (!qword_100532CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532CF0);
  }

  return result;
}

unint64_t sub_100278578()
{
  result = qword_100532CF8[0];
  if (!qword_100532CF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532CF8);
  }

  return result;
}

unint64_t sub_1002785D0()
{
  result = qword_100532D80;
  if (!qword_100532D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100532D80);
  }

  return result;
}

unint64_t sub_100278628()
{
  result = qword_100532D88[0];
  if (!qword_100532D88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100532D88);
  }

  return result;
}

unint64_t sub_10027867C()
{
  result = qword_100524660;
  if (!qword_100524660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524660);
  }

  return result;
}

uint64_t sub_1002786E8()
{
  v1 = v0;
  v33 = *v0;
  v2 = type metadata accessor for Logger();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoutingMode();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingMode;
  swift_beginAccess();
  v11 = v6[2];
  v11(v9, &v0[v10], v5);
  sub_100017FCC(&qword_1005249D0, &type metadata accessor for RoutingMode);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = v6[1];
  result = v13(v9, v5);
  if ((v12 & 1) == 0)
  {
    v31 = v11;
    v15 = sub_100028D40();
    (*(v35 + 16))(v34, v15, v2);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    v32 = v17;
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v18 = 136315394;
      v19 = _typeName(_:qualified:)();
      v29 = v16;
      v21 = sub_10002C9C8(v19, v20, &v36);
      v33 = v2;
      v22 = v21;

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      v31(v9, &v1[v10], v5);
      sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v13(v9, v5);
      v26 = sub_10002C9C8(v23, v25, &v36);

      *(v18 + 14) = v26;
      v27 = v29;
      _os_log_impl(&_mh_execute_header, v29, v32, "[%s] setRoutingMode - value: %{public}s", v18, 0x16u);
      swift_arrayDestroy();

      (*(v35 + 8))(v34, v33);
    }

    else
    {

      (*(v35 + 8))(v34, v2);
    }

    return sub_10027AEE8();
  }

  return result;
}

uint64_t sub_100278AF8(uint64_t a1)
{
  v3 = type metadata accessor for RoutingMode();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingMode;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_1002786E8();
  v9 = *(v4 + 8);
  v9(a1, v3);
  return (v9)(v7, v3);
}

void (*sub_100278C54(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = type metadata accessor for RoutingMode();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[11] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v11 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingMode;
  v4[14] = v9;
  v4[15] = v11;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[16] = v12;
  v4[17] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_100278DC8;
}

void sub_100278DC8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 128);
  v3 = *(*a1 + 136);
  v5 = *(*a1 + 112);
  v6 = *(*a1 + 120);
  v7 = *(*a1 + 96);
  v8 = *(*a1 + 104);
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 88);
  v11 = *(*a1 + 72);
  if (a2)
  {
    v4(*(*a1 + 104), v5, v9);
    v4(v7, (v11 + v6), v9);
    swift_beginAccess();
    (*(v10 + 24))(v11 + v6, v8, v9);
    swift_endAccess();
    sub_1002786E8();
    v12 = *(v10 + 8);
    v12(v7, v9);
  }

  else
  {
    v4(*(*a1 + 104), (v11 + v6), v9);
    swift_beginAccess();
    (*(v10 + 24))(v11 + v6, v5, v9);
    swift_endAccess();
    sub_1002786E8();
    v12 = *(v10 + 8);
  }

  v12(v8, v9);
  v12(v5, v9);
  free(v5);
  free(v8);
  free(v7);

  free(v2);
}

void (*sub_100278F4C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingItems;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_100278FE8;
}

void sub_100278FE8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *v3;
  v7 = v2[4];
  if (a2)
  {

    sub_1000180A0(v6);

    v8 = *v3;
  }

  else
  {
    sub_1000180A0(v6);
  }

  free(v2);
}

uint64_t sub_10027906C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1002790D8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100028D40();
  (*(v4 + 16))(v7, v8, v3);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v11 = 136315650;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10002C9C8(v12, v13, &v21);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), &v21);
    *(v11 + 22) = 2082;
    if (*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
    {
      v15 = *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
      v16 = *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8);
    }

    else
    {
      v16 = 0xE300000000000000;
      v15 = 7104878;
    }

    v17 = sub_10002C9C8(v15, v16, &v21);

    *(v11 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%s]<%{public}s> setTargetRoutingContextIdentifier - value: %{public}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  (*(v4 + 8))(v7, v3);
  sub_10027A424();
  v18 = sub_10027C58C();
  return (*(*v1 + 240))(v18);
}

void *sub_1002793A4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
    *(v1 + v2) = &_swiftEmptySetSingleton;
  }

  return v4;
}

id sub_1002793E8()
{
  sub_1001BC5A8(&qword_1005249C8, &qword_100457080);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100450890;
  v1 = MRAVEndpointVolumeDidChangeNotification;
  v2 = MRAVEndpointVolumeControlCapabilitiesDidChangeNotification;
  v5 = MRAVEndpointVolumeControlCapabilitiesDidChangeNotification;
  *(v0 + 32) = MRAVEndpointVolumeDidChangeNotification;
  *(v0 + 40) = v2;
  qword_100532E18 = v0;
  v3 = v1;

  return v5;
}

id sub_100279470()
{
  v0 = *sub_100021264();

  return v0;
}

uint64_t sub_10027949C(void *a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  sub_100279534(a1, a2, a3, a4 | ((HIDWORD(a4) & 1) << 32), a5, a6, a7);
  return v17;
}

uint64_t sub_100279534(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v113 = a6;
  v114 = a5;
  v118 = a4;
  LODWORD(v112) = a3;
  v110 = a2;
  v111 = a1;
  v109 = *v7;
  v10 = type metadata accessor for Logger();
  v115 = *(v10 - 8);
  v116 = v10;
  v11 = *(v115 + 64);
  v12 = __chkstk_darwin(v10);
  v117 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v108 = &v103 - v14;
  v15 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v103 - v17;
  v104 = type metadata accessor for NSNotificationCenter.Publisher();
  v103 = *(v104 - 8);
  v19 = *(v103 + 64);
  __chkstk_darwin(v104);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1001BC5A8(&unk_100525EF0, &qword_100458110);
  v106 = *(v22 - 8);
  v107 = v22;
  v23 = *(v106 + 64);
  __chkstk_darwin(v22);
  v105 = &v103 - v24;
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = (&v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingMode;
  v31 = enum case for RoutingMode.disabled(_:);
  v32 = type metadata accessor for RoutingMode();
  (*(*(v32 - 8) + 104))(v8 + v30, v31, v32);
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingItems) = _swiftEmptyArrayStorage;
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers) = 0;
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v33 = v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSessionIdentifier;
  *v33 = 0;
  v33[4] = 1;
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSession) = 0;
  v34 = (v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
  *v34 = 0;
  v34[1] = 0;
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___discoverySession) = 0;
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___hearingAidHelper) = 0;
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___notificationObservers) = 0;
  *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___endpointNotificationObservers) = 0;
  v35 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer;
  type metadata accessor for RouteNormalizer();
  *(v8 + v35) = sub_10033E514();
  v36 = (v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier);
  *v36 = static String.nanoIDFourChar()();
  v36[1] = v37;
  v38 = (v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken);
  *v38 = 0;
  v38[1] = 0;
  *v29 = a7;
  (*(v26 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v25);
  v39 = a7;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  result = (*(v26 + 8))(v29, v25);
  if (v36)
  {
    v41 = v110;
    *(v8 + 40) = v112;
    v8[3] = v111;
    v8[4] = v41;
    v8[2] = v39;
    if ((v118 & 0x100000000) != 0)
    {
      v83 = v39;
      v67 = v115;
      v66 = v116;
    }

    else
    {
      v42 = v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSessionIdentifier;
      v43 = v118;
      *v42 = v118;
      v42[4] = 0;
      v44 = objc_opt_self();
      v45 = v39;
      v46 = [v44 retrieveSessionWithID:v43];
      v47 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSession;
      v48 = *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSession);
      *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSession) = v46;
      v111 = v46;
      v112 = v46;

      v49 = [objc_opt_self() defaultCenter];
      v50 = *(v8 + v47);
      NSNotificationCenter.publisher(for:object:)();

      v120[0] = v8[2];
      v51 = v120[0];
      v52 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v52 - 8) + 56))(v18, 1, 1, v52);
      sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
      sub_100017FCC(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher);
      sub_1002853D8();
      v53 = v51;
      v54 = v105;
      v55 = v104;
      Publisher.receive<A>(on:options:)();
      sub_1000038A4(v18, &unk_100524C50, &qword_10044F180);

      (*(v103 + 8))(v21, v55);
      swift_allocObject();
      swift_weakInit();
      sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110);
      v56 = v107;
      Publisher<>.sink(receiveValue:)();

      (*(v106 + 8))(v54, v56);
      v120[0] = sub_10027938C();
      AnyCancellable.store(in:)();

      v57 = *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___notificationObservers);
      *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___notificationObservers) = v120[0];

      v58 = v112;
      v59 = [v112 routingContextUID];
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v63 = (v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
      v64 = *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8);
      *v63 = v60;
      v63[1] = v62;

      v65 = sub_100028D40();
      v67 = v115;
      v66 = v116;
      v68 = v108;
      (*(v115 + 16))(v108, v65, v116);
      v69 = v58;

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v112 = v39;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v120[0] = v110;
        *v72 = 136316162;
        v74 = _typeName(_:qualified:)();
        v76 = sub_10002C9C8(v74, v75, v120);

        *(v72 + 4) = v76;
        *(v72 + 12) = 2082;
        v77 = *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier);
        v78 = *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8);

        v79 = sub_10002C9C8(v77, v78, v120);

        *(v72 + 14) = v79;
        *(v72 + 22) = 2114;
        *(v72 + 24) = v69;
        *v73 = v111;
        *(v72 + 32) = 1024;
        *(v72 + 34) = v118;
        *(v72 + 38) = 2082;
        v80 = v63[1];
        if (v80)
        {
          v81 = *v63;
          v82 = v80;
        }

        else
        {
          v82 = 0xE300000000000000;
          v81 = 7104878;
        }

        v84 = v108;
        v85 = v69;

        v86 = sub_10002C9C8(v81, v82, v120);

        *(v72 + 40) = v86;
        _os_log_impl(&_mh_execute_header, v70, v71, "[%s]<%{public}s> init - configured session: %{public}@ for target identifier: %u with target context: %{public}s", v72, 0x30u);
        sub_1000038A4(v73, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();

        v67 = v115;
        v66 = v116;
        (*(v115 + 8))(v84, v116);
        v39 = v112;
      }

      else
      {

        (*(v67 + 8))(v68, v66);
      }
    }

    sub_10027A424();
    v87 = sub_10027C58C();
    v88 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingItems;
    swift_beginAccess();
    v89 = *(v8 + v88);
    *(v8 + v88) = v87;

    v90 = v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delegate;
    swift_beginAccess();
    *(v90 + 1) = v113;
    swift_unknownObjectWeakAssign();
    v91 = sub_100028D40();
    v92 = v117;
    (*(v67 + 16))(v117, v91, v66);

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v95 = 136315394;
      v96 = _typeName(_:qualified:)();
      v98 = sub_10002C9C8(v96, v97, &v119);
      v112 = v39;
      v99 = v98;

      *(v95 + 4) = v99;
      *(v95 + 12) = 2082;
      v100 = *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier);
      v101 = *(v8 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8);

      v102 = sub_10002C9C8(v100, v101, &v119);

      *(v95 + 14) = v102;
      _os_log_impl(&_mh_execute_header, v93, v94, "[%s]<%{public}s> init - completed", v95, 0x16u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
      (*(v67 + 8))(v117, v66);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v67 + 8))(v92, v66);
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10027A424()
{
  v1 = v0;
  v98 = *v0;
  v2 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v77 - v4;
  v83 = type metadata accessor for NSNotificationCenter.Publisher();
  v6 = *(v83 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v83);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1001BC5A8(&unk_100525EF0, &qword_100458110);
  v93 = *(v97 - 8);
  v10 = *(v93 + 64);
  __chkstk_darwin(v97);
  v12 = &v77 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100279398();

  v92 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___endpointNotificationObservers;
  v18 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___endpointNotificationObservers);
  *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___endpointNotificationObservers) = &_swiftEmptySetSingleton;

  v19 = sub_100028D40();
  (*(v14 + 16))(v17, v19, v13);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  LODWORD(v96) = v21;
  v22 = os_log_type_enabled(v20, v21);
  v78 = v1;
  v79 = v9;
  v77 = v5;
  if (v22)
  {
    v91 = v14;
    v94 = v6;
    v95 = v12;
    v23 = v1;
    v24 = swift_slowAlloc();
    v99[0] = swift_slowAlloc();
    *v24 = 136315650;
    v25 = _typeName(_:qualified:)();
    v27 = sub_10002C9C8(v25, v26, v99);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_10002C9C8(*(v23 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v23 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), v99);
    *(v24 + 22) = 2082;
    v28 = (v23 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
    if (*(v23 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
    {
      v29 = *v28;
      v30 = v28[1];
    }

    else
    {
      v30 = 0xE300000000000000;
      v29 = 7104878;
    }

    v31 = v91;

    v32 = sub_10002C9C8(v29, v30, v99);

    *(v24 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v20, v96, "[%s]<%{public}s> registerEndpointNotifications - register for context: %{public}s", v24, 0x20u);
    swift_arrayDestroy();

    (*(v31 + 8))(v17, v13);
    v5 = v77;
    v6 = v94;
    v12 = v95;
    v9 = v79;
    v1 = v78;
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  v33 = (v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
  if (*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
  {
    v34 = *v33;
    v35 = v33[1];

    v36 = String._bridgeToObjectiveC()();
  }

  else
  {
    v36 = 0;
  }

  v37 = [objc_opt_self() sharedLocalEndpointForRoutingContextWithUID:v36];
  v96 = v37;

  v95 = objc_opt_self();
  v38 = [v95 defaultCenter];
  v39 = v37;
  v98 = v39;
  NSNotificationCenter.publisher(for:object:)();

  v40 = v78;
  v99[0] = v78[2];
  v41 = v99[0];
  v91 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v42 = *(v91 - 8);
  v43 = *(v42 + 56);
  v89 = v42 + 56;
  v90 = v43;
  v43(v5, 1, 1, v91);
  v88 = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  v87 = sub_100017FCC(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher);
  v86 = sub_1002853D8();
  v85 = v41;
  v44 = v83;
  Publisher.receive<A>(on:options:)();
  sub_1000038A4(v5, &unk_100524C50, &qword_10044F180);
  v45 = *(v6 + 8);
  v94 = v6 + 8;
  v84 = v45;
  v45(v9, v44);
  swift_allocObject();
  swift_weakInit();
  v81 = sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110);
  v46 = v97;
  Publisher<>.sink(receiveValue:)();

  v47 = v44;
  v48 = v93 + 8;
  v80 = *(v93 + 8);
  v80(v12, v46);
  v49 = v92;
  v99[0] = *(v40 + v92);

  AnyCancellable.store(in:)();

  v50 = *(v40 + v49);
  *(v40 + v49) = v99[0];

  v51 = [v95 defaultCenter];
  v52 = v98;
  NSNotificationCenter.publisher(for:object:)();

  v82 = v52;
  v53 = v85;
  v99[0] = v85;
  v90(v5, 1, 1, v91);
  Publisher.receive<A>(on:options:)();
  sub_1000038A4(v5, &unk_100524C50, &qword_10044F180);

  v54 = v97;
  v84(v9, v47);
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();
  v55 = v48;

  v56 = v12;
  v80(v12, v54);
  v99[0] = *(v40 + v49);

  AnyCancellable.store(in:)();

  v57 = *(v40 + v49);
  *(v40 + v49) = v99[0];

  if (qword_100532E10 != -1)
  {
    swift_once();
  }

  v58 = *(qword_100532E18 + 16);
  v59 = v77;
  v60 = v78;
  v61 = v95;
  if (v58)
  {
    v62 = (qword_100532E18 + 32);
    v93 = v55;
    do
    {
      v63 = *v62++;
      v98 = v63;
      v64 = [v61 defaultCenter];
      v65 = v82;
      v66 = v79;
      NSNotificationCenter.publisher(for:object:)();

      v67 = v85;
      v99[0] = v85;
      v90(v59, 1, 1, v91);
      v68 = v67;
      v69 = v56;
      v70 = v59;
      v71 = v83;
      Publisher.receive<A>(on:options:)();
      sub_1000038A4(v70, &unk_100524C50, &qword_10044F180);

      v72 = v71;
      v59 = v70;
      v84(v66, v72);
      swift_allocObject();
      swift_weakInit();
      v73 = v97;
      Publisher<>.sink(receiveValue:)();
      v74 = v92;

      v75 = v73;
      v56 = v69;
      v80(v69, v75);
      v99[0] = *(v60 + v74);

      AnyCancellable.store(in:)();

      v76 = *(v60 + v74);
      *(v60 + v74) = v99[0];
      v61 = v95;

      --v58;
    }

    while (v58);
  }
}

uint64_t sub_10027AEE8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v145 = *(v3 - 8);
  v146 = v3;
  v4 = *(v145 + 64);
  __chkstk_darwin(v3);
  v143 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for DispatchQoS();
  v142 = *(v144 - 8);
  v6 = *(v142 + 64);
  __chkstk_darwin(v144);
  v141 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DispatchTime();
  v140 = *(v149 - 8);
  v8 = *(v140 + 64);
  v9 = __chkstk_darwin(v149);
  v11 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v148 = &v138 - v12;
  v13 = type metadata accessor for Logger();
  v156 = *(v13 - 8);
  v157 = v13;
  v14 = *(v156 + 64);
  v15 = __chkstk_darwin(v13);
  v150 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v138 - v18;
  v20 = __chkstk_darwin(v17);
  v147 = &v138 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v138 - v23;
  __chkstk_darwin(v22);
  v26 = &v138 - v25;
  v27 = type metadata accessor for RoutingMode();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v152 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v34 = &v138 - v33;
  v155 = v2;
  v151 = *(v2 + 208);
  (v151)(v32);
  v153 = v28;
  v154 = v27;
  v35 = (*(v28 + 88))(v34, v27);
  if (v35 == enum case for RoutingMode.disabled(_:) || v35 == enum case for RoutingMode.prewarm(_:))
  {
    v53 = sub_10001B030();
    v54 = [v53 discoveryMode];

    if (v54)
    {
      v55 = (v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken);
      if (!*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken + 8))
      {
        v56 = static String.nanoIDFourChar()();
        v57 = v55[1];
        *v55 = v56;
        v55[1] = v58;
        v150 = v58;

        v59 = sub_100028D40();
        v61 = v156;
        v60 = v157;
        (*(v156 + 16))(v26, v59, v157);

        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          aBlock[0] = v139;
          *v64 = 136315650;
          v65 = _typeName(_:qualified:)();
          v67 = sub_10002C9C8(v65, v66, aBlock);
          v147 = v56;
          v68 = v67;

          *(v64 + 4) = v68;
          *(v64 + 12) = 2082;
          *(v64 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), aBlock);
          *(v64 + 22) = 2082;
          v69 = v152;
          v151();
          sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode);
          v70 = v154;
          v71 = dispatch thunk of CustomStringConvertible.description.getter();
          v73 = v72;
          (*(v153 + 8))(v69, v70);
          v74 = sub_10002C9C8(v71, v73, aBlock);
          v56 = v147;
          v75 = v155;

          *(v64 + 24) = v74;
          _os_log_impl(&_mh_execute_header, v62, v63, "[%s]<%{public}s> updateDiscovery - schedule disable for routing mode: %{public}s", v64, 0x20u);
          swift_arrayDestroy();

          (*(v156 + 8))(v26, v157);
        }

        else
        {

          (*(v61 + 8))(v26, v60);
          v75 = v155;
        }

        v157 = v1[2];
        static DispatchTime.now()();
        type metadata accessor for Preferences();
        static Preferences.discoveryHysteresis.getter();
        + infix(_:_:)();
        v156 = *(v140 + 8);
        (v156)(v11, v149);
        v129 = swift_allocObject();
        swift_weakInit();
        v130 = swift_allocObject();
        v130[2] = v129;
        v130[3] = v56;
        v130[4] = v150;
        v130[5] = v75;
        aBlock[4] = sub_10028639C;
        aBlock[5] = v130;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100003D98;
        aBlock[3] = &unk_1004C7210;
        v131 = _Block_copy(aBlock);

        v132 = v141;
        static DispatchQoS.unspecified.getter();
        v158 = _swiftEmptyArrayStorage;
        sub_100017FCC(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
        sub_1001BC5A8(&unk_100522280, &unk_10044F590);
        sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
        v133 = v143;
        v134 = v146;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v135 = v148;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v131);
        (*(v145 + 8))(v133, v134);
        (*(v142 + 8))(v132, v144);
        (v156)(v135, v149);
      }
    }

    goto LABEL_30;
  }

  if (v35 == enum case for RoutingMode.localNetwork(_:))
  {
    v36 = sub_10001B030();
    v37 = [v36 discoveryMode];

    if (v37 != 2)
    {
      v38 = sub_100028D40();
      v40 = v156;
      v39 = v157;
      (*(v156 + 16))(v24, v38, v157);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        aBlock[0] = v150;
        *v43 = 136315650;
        v44 = _typeName(_:qualified:)();
        v46 = sub_10002C9C8(v44, v45, aBlock);

        *(v43 + 4) = v46;
        *(v43 + 12) = 2082;
        *(v43 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), aBlock);
        *(v43 + 22) = 2082;
        v47 = v152;
        v151();
        sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode);
        v48 = v154;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        (*(v153 + 8))(v47, v48);
        v52 = sub_10002C9C8(v49, v51, aBlock);

        *(v43 + 24) = v52;
        _os_log_impl(&_mh_execute_header, v41, v42, "[%s]<%{public}s> updateDiscovery - enable for routing mode: %{public}s", v43, 0x20u);
        swift_arrayDestroy();

        (*(v156 + 8))(v24, v157);
      }

      else
      {

        (*(v40 + 8))(v24, v39);
      }

      [*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___discoverySession) setDiscoveryMode:2];
    }

    v93 = (v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken);
    if (!*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken + 8))
    {
      goto LABEL_30;
    }

    v94 = sub_100028D40();
    v96 = v156;
    v95 = v157;
    v97 = v147;
    (*(v156 + 16))(v147, v94, v157);

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v100 = 136315650;
      v101 = _typeName(_:qualified:)();
      v103 = sub_10002C9C8(v101, v102, aBlock);

      *(v100 + 4) = v103;
      *(v100 + 12) = 2082;
      *(v100 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), aBlock);
      *(v100 + 22) = 2082;
      v104 = v152;
      v151();
      sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode);
      v105 = v154;
      v106 = dispatch thunk of CustomStringConvertible.description.getter();
      v108 = v107;
      (*(v153 + 8))(v104, v105);
      v109 = sub_10002C9C8(v106, v108, aBlock);

      *(v100 + 24) = v109;
      _os_log_impl(&_mh_execute_header, v98, v99, "[%s]<%{public}s> updateDiscovery - cancel scheduled disable for routing mode: %{public}s", v100, 0x20u);
      swift_arrayDestroy();

      (*(v156 + 8))(v147, v157);
    }

    else
    {

      (*(v96 + 8))(v97, v95);
    }

LABEL_27:
    v128 = v93[1];
    *v93 = 0;
    v93[1] = 0;

LABEL_30:
    v136 = sub_10027C58C();
    return (*(*v1 + 240))(v136);
  }

  if (v35 == enum case for RoutingMode.detailed(_:))
  {
    v76 = sub_10001B030();
    v77 = [v76 discoveryMode];

    if (v77 != 3)
    {
      v78 = sub_100028D40();
      v80 = v156;
      v79 = v157;
      (*(v156 + 16))(v19, v78, v157);

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        aBlock[0] = v149;
        *v83 = 136315650;
        v84 = _typeName(_:qualified:)();
        v86 = sub_10002C9C8(v84, v85, aBlock);

        *(v83 + 4) = v86;
        *(v83 + 12) = 2082;
        *(v83 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), aBlock);
        *(v83 + 22) = 2082;
        v87 = v152;
        v151();
        sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode);
        v88 = v154;
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        (*(v153 + 8))(v87, v88);
        v92 = sub_10002C9C8(v89, v91, aBlock);

        *(v83 + 24) = v92;
        _os_log_impl(&_mh_execute_header, v81, v82, "[%s]<%{public}s> updateDiscovery - enable for routing mode: %{public}s", v83, 0x20u);
        swift_arrayDestroy();

        (*(v156 + 8))(v19, v157);
      }

      else
      {

        (*(v80 + 8))(v19, v79);
      }

      [*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___discoverySession) setDiscoveryMode:3];
    }

    v93 = (v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken);
    v110 = v150;
    if (!*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken + 8))
    {
      goto LABEL_30;
    }

    v111 = sub_100028D40();
    v113 = v156;
    v112 = v157;
    (*(v156 + 16))(v110, v111, v157);

    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      LODWORD(v148) = v115;
      v117 = v116;
      v149 = swift_slowAlloc();
      aBlock[0] = v149;
      *v117 = 136315650;
      v118 = _typeName(_:qualified:)();
      v120 = sub_10002C9C8(v118, v119, aBlock);

      *(v117 + 4) = v120;
      *(v117 + 12) = 2082;
      *(v117 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), aBlock);
      *(v117 + 22) = 2082;
      v121 = v152;
      v151();
      sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode);
      v122 = v112;
      v123 = v154;
      v124 = dispatch thunk of CustomStringConvertible.description.getter();
      v126 = v125;
      (*(v153 + 8))(v121, v123);
      v127 = sub_10002C9C8(v124, v126, aBlock);

      *(v117 + 24) = v127;
      _os_log_impl(&_mh_execute_header, v114, v148, "[%s]<%{public}s> updateDiscovery - cancel scheduled disable for routing mode: %{public}s", v117, 0x20u);
      swift_arrayDestroy();

      (*(v113 + 8))(v150, v122);
    }

    else
    {

      (*(v113 + 8))(v110, v112);
    }

    goto LABEL_27;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10027C14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RoutingMode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v42 = v6;
    v17 = (result + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken);
    v18 = *(result + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken + 8);
    if (v18 && (*v17 == a2 ? (v19 = v18 == a3) : (v19 = 0), v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v20 = sub_100028D40();
      (*(v11 + 16))(v14, v20, v10);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v41 = v11;
        v24 = v23;
        v40 = swift_slowAlloc();
        v43 = v40;
        *v24 = 136315650;
        v25 = _typeName(_:qualified:)();
        v39 = v22;
        v27 = sub_10002C9C8(v25, v26, &v43);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2082;
        v28 = *(v16 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier);
        v29 = *(v16 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8);

        v30 = sub_10002C9C8(v28, v29, &v43);

        *(v24 + 14) = v30;
        *(v24 + 22) = 2082;
        (*(*v16 + 208))(v31);
        sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        (*(v42 + 8))(v9, v5);
        v35 = sub_10002C9C8(v32, v34, &v43);

        *(v24 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v21, v39, "[%s]<%{public}s> updateDiscovery - disable for routing mode: %{public}s", v24, 0x20u);
        swift_arrayDestroy();

        (*(v41 + 8))(v14, v10);
      }

      else
      {

        (*(v11 + 8))(v14, v10);
      }

      v36 = sub_10001B030();
      [v36 setDiscoveryMode:0];

      v37 = v17[1];
      *v17 = 0;
      v17[1] = 0;
    }

    else
    {
    }
  }

  return result;
}

id sub_10027C58C()
{
  v206 = sub_1001BC5A8(&unk_100524C80, &qword_1004573A0);
  v205 = *(v206 - 8);
  v1 = *(v205 + 64);
  __chkstk_darwin(v206);
  v204 = &v202 - v2;
  v3 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v215 = &v202 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v216 = &v202 - v7;
  v8 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v229 = &v202 - v10;
  v11 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v203 = &v202 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v225 = &v202 - v16;
  v17 = __chkstk_darwin(v15);
  v226 = &v202 - v18;
  __chkstk_darwin(v17);
  v20 = &v202 - v19;
  v234 = type metadata accessor for HostedRoutingItem(0);
  v218 = *(v234 - 8);
  v21 = *(v218 + 64);
  v22 = __chkstk_darwin(v234);
  v24 = &v202 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v202 - v26;
  v28 = __chkstk_darwin(v25);
  v208 = &v202 - v29;
  v30 = __chkstk_darwin(v28);
  v210 = &v202 - v31;
  __chkstk_darwin(v30);
  v33 = &v202 - v32;
  sub_100018D7C(0, &qword_100523B28, MRDeviceInfo_ptr);
  v230 = sub_100018D1C();
  v235 = v0;
  v34 = (v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
  {
    v35 = *v34;
    v36 = v34[1];

    v37 = String._bridgeToObjectiveC()();
  }

  else
  {
    v37 = 0;
  }

  v38 = objc_opt_self();
  v39 = [v38 sharedLocalEndpointForRoutingContextWithUID:v37];

  v40 = v39;
  v227 = [v38 sharedSystemAudioLocalEndpoint];

  v228 = v40;
  v211 = v40;
  result = [v211 outputDevices];
  if (!result)
  {
    goto LABEL_96;
  }

  v42 = result;
  sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = sub_10001B030();
  v45 = [v44 availableOutputDevices];

  v207 = v27;
  v202 = v24;
  if (v45)
  {
    v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
  }

  v239 = &_swiftEmptySetSingleton;
  v47 = v211;
  v48 = [v211 predictedOutputDevice];

  v49 = &selRef_sinkWithCompletion_shouldContinue_;
  v232 = v46;
  v217 = v43;
  if (!v48)
  {
    goto LABEL_16;
  }

  v50 = [v48 uid];
  if (!v50)
  {
    v51 = v48;
LABEL_15:

LABEL_16:
    v209 = 0;
    v64 = &_swiftEmptyDictionarySingleton;
    if (v43 < 0 || (v43 & 0x4000000000000000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_24;
  }

  v51 = v50;
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;
  v55 = [v48 name];
  if (!v55)
  {

    v43 = v217;
    goto LABEL_15;
  }

  v56 = v55;
  v236 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v233 = v57;

  v237 = (*(**(v235 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer) + 184))(v52, v54);
  v59 = v58;
  sub_100008318(&v238, v52, v54);

  v231 = sub_100018E6C();
  v224 = v60;
  LODWORD(v223) = v61;
  v62 = type metadata accessor for RoutingItem.SelectionIndicator();
  (*(*(v62 - 8) + 56))(v20, 1, 1, v62);
  if (v228 == v227)
  {
    v63 = *sub_10001CEC0();
  }

  else
  {
    v63 = sub_10001CB30();
  }

  v65 = [v230 matchesUID:v51];

  v66 = 1;
  if ((v65 & 1) == 0)
  {
    v67 = sub_100018E6C();
    v69 = v68;
    v71 = v70;
    v66 = sub_10001CD44(v67, v68, v70);
    sub_100019550(v67, v69, v71);
  }

  v72 = v229;
  sub_10001C1E0(v229);
  v73 = type metadata accessor for RoutingItem.Attributes();
  (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
  v74 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
  v75 = variable initialization expression of SystemGroupSessionRemoteControlService.sessionCancellables();
  v76 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();

  LOBYTE(v238) = 1;
  v199 = v66;
  v209 = 1;
  v77 = v237;
  sub_100258314(v237, v59, 0, 0, v236, v233, v231, v224, v33, v223, 1, v74 & 1, v20, v63, v75, v199, v200, 0, 1, 0, v76, v72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v238 = &_swiftEmptyDictionarySingleton;
  sub_10001DB34(v33, v77, v59, isUniquelyReferenced_nonNull_native);

  v64 = v238;
  v43 = v217;
  if (v217 < 0)
  {
    goto LABEL_49;
  }

  v46 = v232;
  v49 = &selRef_sinkWithCompletion_shouldContinue_;
  if ((v217 & 0x4000000000000000) != 0)
  {
    goto LABEL_50;
  }

LABEL_24:
  v79 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v79)
  {
    while (v79 < 1)
    {
      __break(1u);
LABEL_49:
      v46 = v232;
      v49 = &selRef_sinkWithCompletion_shouldContinue_;
LABEL_50:
      v79 = _CocoaArrayWrapper.endIndex.getter();
      if (!v79)
      {
        goto LABEL_51;
      }
    }

    v80 = 0;
    v236 = v43 & 0xC000000000000001;
    v213 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer;
    v212 = (v218 + 56);
    v214 = v79;
    do
    {
      if (v236)
      {
        v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v81 = *(v43 + 8 * v80 + 32);
      }

      v82 = v81;
      v83 = [v81 v49[237]];
      if (v83)
      {
        v84 = v83;
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;
        v88 = [v82 name];
        if (v88)
        {
          v89 = v88;
          v231 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v233 = v90;

          v91 = (*(**(v235 + v213) + 184))(v85, v87);
          v93 = v91;
          v94 = v92;
          if (v64[2] && (v95 = sub_10000698C(v91, v92), (v96 & 1) != 0))
          {
            v97 = v218;
            v98 = v216;
            sub_10001D948(v64[7] + *(v218 + 72) * v95, v216);
            (*(v97 + 56))(v98, 0, 1, v234);

            sub_1000038A4(v98, &qword_100523C18, &qword_100451AF0);
          }

          else
          {
            v99 = 1;
            v100 = v216;
            (*v212)(v216, 1, 1, v234);
            sub_1000038A4(v100, &qword_100523C18, &qword_100451AF0);
            v101 = v211;
            LODWORD(v220) = [v211 volumeControlCapabilitiesForOutputDeviceUID:v84];
            [v101 volumeForOutputDeviceUID:v84];
            v103 = v102;
            sub_100008318(&v238, v85, v87);

            v104 = sub_100018E6C();
            v222 = v105;
            v223 = v104;
            LODWORD(v221) = v106;
            if (v209)
            {
              v99 = !sub_10001B2AC();
            }

            v107 = type metadata accessor for RoutingItem.SelectionIndicator();
            (*(*(v107 - 8) + 56))(v226, 1, 1, v107);
            if (v228 == v227)
            {
              LODWORD(v219) = *sub_10001CEC0();
            }

            else
            {
              LODWORD(v219) = sub_10001CB30();
            }

            LODWORD(v224) = v99;
            v108 = [v230 matchesUID:v84];

            v237 = v64;
            if (v108)
            {
              v109 = 1;
            }

            else
            {
              v110 = sub_100018E6C();
              v112 = v111;
              v114 = v113;
              v109 = sub_10001CD44(v110, v111, v113);
              sub_100019550(v110, v112, v114);
            }

            v115 = sub_10001CB2C(v220);
            v116 = v229;
            sub_10001C1E0(v229);
            v117 = type metadata accessor for RoutingItem.Attributes();
            (*(*(v117 - 8) + 56))(v116, 0, 1, v117);
            v118 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
            v119 = variable initialization expression of SystemGroupSessionRemoteControlService.sessionCancellables();

            LOBYTE(v238) = 0;
            v201 = v116;
            v120 = v210;
            sub_100258314(v93, v94, 0, 0, v231, v233, v223, v222, v210, v221, v224 & 1, v118 & 1, v226, v219, v119, v109, v200, v103, 0, v103 >> 48, v115, v201);
            v121 = v237;
            v122 = swift_isUniquelyReferenced_nonNull_native();
            v238 = v121;
            sub_10001DB34(v120, v93, v94, v122);

            v64 = v238;
            v46 = v232;
          }

          v49 = &selRef_sinkWithCompletion_shouldContinue_;
          v43 = v217;
          v79 = v214;
        }

        else
        {
        }
      }

      else
      {
      }

      ++v80;
    }

    while (v79 != v80);
  }

LABEL_51:

  if (!(v46 >> 62))
  {
    v123 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v123)
    {
      goto LABEL_53;
    }

LABEL_75:

    v164 = sub_10001E0D0();
    v165 = [v164 hearingAidName];

    if (!v165)
    {
LABEL_93:
      v238 = v64;
      swift_getKeyPath();

      v193 = v204;
      KeyPathComparator.init<A>(_:order:)();
      sub_1001BC5A8(&qword_1005249A8, &unk_100457068);
      sub_10000462C(&qword_1005249B0, &qword_1005249A8, &unk_100457068);
      sub_10000462C(&qword_1005249B8, &unk_100524C80, &qword_1004573A0);
      v194 = v206;
      v195 = Sequence.sorted<A>(using:)();
      (*(v205 + 8))(v193, v194);

      (*(**(v235 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer) + 192))(v239);

      return v195;
    }

    v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v168 = v167;

    v169 = 1 << *(v64 + 32);
    v170 = -1;
    if (v169 < 64)
    {
      v170 = ~(-1 << v169);
    }

    v171 = v170 & v64[8];
    v172 = (v169 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v173 = 0;
    v174 = v207;
    while (v171)
    {
LABEL_84:
      sub_10001D948(v64[7] + *(v218 + 72) * (__clz(__rbit64(v171)) | (v173 << 6)), v174);
      if (*(v174 + 32) == v166 && *(v174 + 40) == v168)
      {
        sub_10001DA14(v174);
LABEL_92:

        goto LABEL_93;
      }

      v171 &= v171 - 1;
      v177 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = sub_10001DA14(v174);
      if (v177)
      {
        goto LABEL_92;
      }
    }

    while (1)
    {
      v175 = v173 + 1;
      if (__OFADD__(v173, 1))
      {
        break;
      }

      if (v175 >= v172)
      {

        v178 = sub_100257FD0();
        v179 = v178[1];
        v237 = *v178;
        v180 = type metadata accessor for RoutingItem.SelectionIndicator();
        v181 = v203;
        (*(*(v180 - 8) + 56))(v203, 1, 1, v180);
        swift_bridgeObjectRetain_n();
        v182 = *sub_10001CEC0();
        v183 = type metadata accessor for RoutingItem.Attributes();
        v184 = v64;
        v185 = v229;
        (*(*(v183 - 8) + 56))(v229, 1, 1, v183);
        v186 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
        v187 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
        v188 = variable initialization expression of SystemGroupSessionRemoteControlService.sessionCancellables();
        v189 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
        LOBYTE(v238) = 1;
        v198 = v187 & 1;
        v197 = v186 & 1;
        v190 = v202;
        v191 = v237;
        sub_100258314(v237, v179, 0, 0, v166, v168, 10, 0, v202, 0x8A00u, v197, v198, v181, v182, v188, 0, v200, 0, 1, 0, v189, v185);
        v192 = swift_isUniquelyReferenced_nonNull_native();
        v238 = v184;
        sub_10001DB34(v190, v191, v179, v192);

        v64 = v238;
        goto LABEL_93;
      }

      v171 = v64[v175 + 8];
      ++v173;
      if (v171)
      {
        v173 = v175;
        goto LABEL_84;
      }
    }

    __break(1u);
    goto LABEL_95;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v123 = result;
  if (!result)
  {
    goto LABEL_75;
  }

LABEL_53:
  if (v123 >= 1)
  {
    v124 = 0;
    v222 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer;
    v125 = v46 & 0xC000000000000001;
    v220 = (v218 + 56);
    v219 = v123;
    v221 = v46 & 0xC000000000000001;
    do
    {
      if (v125)
      {
        v126 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v126 = *(v46 + 8 * v124 + 32);
      }

      v127 = v126;
      v128 = [v126 v49[237]];
      if (v128)
      {
        v129 = v128;
        v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v132 = v131;
        v133 = [v127 name];
        if (v133)
        {
          v134 = v133;
          v233 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v236 = v135;

          v136 = (*(**(v235 + v222) + 184))(v130, v132);
          v138 = v136;
          v139 = v137;
          if (v64[2] && (v140 = sub_10000698C(v136, v137), (v141 & 1) != 0))
          {
            v142 = v218;
            v143 = v215;
            sub_10001D948(v64[7] + *(v218 + 72) * v140, v215);
            (*(v142 + 56))(v143, 0, 1, v234);

            sub_1000038A4(v143, &qword_100523C18, &qword_100451AF0);
            v46 = v232;
            v49 = &selRef_sinkWithCompletion_shouldContinue_;
          }

          else
          {
            v144 = v215;
            (*v220)(v215, 1, 1, v234);
            sub_1000038A4(v144, &qword_100523C18, &qword_100451AF0);
            sub_100008318(&v238, v130, v132);

            v231 = sub_100018E6C();
            v226 = v145;
            LODWORD(v224) = v146;
            v147 = type metadata accessor for RoutingItem.SelectionIndicator();
            (*(*(v147 - 8) + 56))(v225, 1, 1, v147);
            if (v228 == v227)
            {
              LODWORD(v223) = *sub_10001CEC0();
            }

            else
            {
              LODWORD(v223) = sub_10001CB30();
            }

            v148 = [v230 matchesUID:v129];

            v237 = v64;
            if (v148)
            {
              v149 = 1;
            }

            else
            {
              v150 = sub_100018E6C();
              v152 = v151;
              v154 = v153;
              v149 = sub_10001CD44(v150, v151, v153);
              sub_100019550(v150, v152, v154);
            }

            v155 = v229;
            sub_10001C1E0(v229);
            v156 = type metadata accessor for RoutingItem.Attributes();
            (*(*(v156 - 8) + 56))(v155, 0, 1, v156);
            v157 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
            v158 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
            v159 = variable initialization expression of SystemGroupSessionRemoteControlService.sessionCancellables();
            v160 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();

            LOBYTE(v238) = 1;
            v196 = v157 & 1;
            v161 = v208;
            sub_100258314(v138, v139, 0, 0, v233, v236, v231, v226, v208, v224, v196, v158 & 1, v225, v223, v159, v149, v200, 0, 1, 0, v160, v155);
            v162 = v237;
            v163 = swift_isUniquelyReferenced_nonNull_native();
            v238 = v162;
            sub_10001DB34(v161, v138, v139, v163);

            v64 = v238;
            v46 = v232;
            v49 = &selRef_sinkWithCompletion_shouldContinue_;
            v123 = v219;
          }

          v125 = v221;
        }

        else
        {
        }
      }

      else
      {
      }

      ++v124;
    }

    while (v123 != v124);
    goto LABEL_75;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_10027DB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_100285D14(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_10000698C(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1002860CC();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_10021A064(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_10027DC94()
{
  sub_10002349C(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingMode;
  v2 = type metadata accessor for RoutingMode();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingItems);

  v4 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers);

  sub_1001DFBCC(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delegate);

  v5 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8);

  v6 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___notificationObservers);

  v7 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___endpointNotificationObservers);

  v8 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer);

  v9 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8);

  v10 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delayedDisableDiscoveryToken + 8);

  return v0;
}

uint64_t sub_10027DDD4()
{
  sub_10027DC94();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void (*sub_10027DE74(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 224))();
  return sub_10027DF04;
}

void sub_10027DF04(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10027DF98(uint64_t *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v410 = a3;
  v401 = a2;
  v402 = *v3;
  v388 = type metadata accessor for RoutingControl.RoutingControlType();
  v393 = *(v388 - 8);
  v5 = *(v393 + 64);
  v6 = __chkstk_darwin(v388);
  v387 = &v379 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v392 = &v379 - v8;
  v396 = type metadata accessor for RoutingControl();
  v395 = *(v396 - 8);
  v9 = *(v395 + 64);
  v10 = __chkstk_darwin(v396);
  v386 = &v379 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v394 = &v379 - v12;
  v383 = type metadata accessor for HostedRoutingItem(0);
  v417 = *(v383 - 8);
  v13 = *(v417 + 8);
  v14 = __chkstk_darwin(v383);
  v416 = (&v379 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v381 = &v379 - v17;
  v18 = __chkstk_darwin(v16);
  v382 = &v379 - v19;
  v20 = __chkstk_darwin(v18);
  v415 = &v379 - v21;
  v22 = __chkstk_darwin(v20);
  v380 = &v379 - v23;
  __chkstk_darwin(v22);
  v389 = &v379 - v24;
  v404 = type metadata accessor for Logger();
  v406 = *(v404 - 8);
  v25 = *(v406 + 64);
  v26 = __chkstk_darwin(v404);
  v385 = &v379 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v379 = &v379 - v29;
  v30 = __chkstk_darwin(v28);
  v384 = &v379 - v31;
  __chkstk_darwin(v30);
  v413 = &v379 - v32;
  v418 = type metadata accessor for ContinuousClock.Instant();
  v421 = *(v418 - 8);
  v399 = *(v421 + 8);
  v33 = __chkstk_darwin(v418);
  v409 = (&v379 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __chkstk_darwin(v33);
  v408 = (&v379 - v36);
  v37 = __chkstk_darwin(v35);
  v412 = &v379 - v38;
  __chkstk_darwin(v37);
  v40 = &v379 - v39;
  v41 = type metadata accessor for ContinuousClock();
  v419 = *(v41 - 8);
  v42 = v419;
  v43 = *(v419 + 64);
  v44 = __chkstk_darwin(v41);
  v407 = &v379 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v44);
  v47 = &v379 - v46;
  v48 = __chkstk_darwin(v45);
  v50 = &v379 - v49;
  v411 = &v379 - v49;
  __chkstk_darwin(v48);
  v52 = &v379 - v51;
  v405 = a1;
  v53 = a1[1];
  v403 = *a1;
  v414 = v53;
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  v54 = *(v42 + 16);
  v397 = v52;
  v55 = v41;
  v54(v50, v52, v41);
  v56 = v421;
  v57 = *(v421 + 2);
  v58 = v412;
  v398 = v40;
  v59 = v40;
  v60 = v418;
  v57(v412, v59, v418);
  v400 = v47;
  v61 = v47;
  v62 = v411;
  v54(v61, v411, v55);
  v57(v408, v58, v60);
  v54(v407, v62, v55);
  v57(v409, v58, v60);
  v63 = v419;
  v64 = (*(v419 + 80) + 16) & ~*(v419 + 80);
  v65 = (v43 + *(v56 + 80) + v64) & ~*(v56 + 80);
  v66 = (v399 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v70 = *(v63 + 32);
  v71 = v411;
  v411 = v55;
  v72 = v55;
  v73 = v402;
  v70(v69 + v64, v71, v72);
  v74 = v60;
  v75 = v403;
  (*(v421 + 4))(v69 + v65, v412, v74);
  *(v69 + v66) = v420;
  v76 = (v69 + v67);
  v77 = v406;
  v78 = v404;
  v79 = v414;
  *v76 = v75;
  v76[1] = v79;
  v80 = (v69 + v68);
  v81 = v410;
  *v80 = v401;
  v80[1] = v81;
  v412 = v69;
  *(v69 + ((v68 + 23) & 0xFFFFFFFFFFFFFFF8)) = v73;
  v82 = v405;
  v83 = v79;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  v84 = sub_100028D40();
  v85 = *(v77 + 16);
  v390 = v84;
  v399 = v77 + 16;
  v391 = v85;
  (v85)(v413);
  v86 = *(v82 + 32);
  v427[0] = *(v82 + 16);
  v427[1] = v86;
  v428 = *(v82 + 48);

  sub_10026D080(v427, &aBlock);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();
  v89 = v83;

  sub_100238E4C(v427);
  if (os_log_type_enabled(v87, v88))
  {
    v90 = swift_slowAlloc();
    *&v422 = swift_slowAlloc();
    *v90 = 136315906;
    v91 = _typeName(_:qualified:)();
    v93 = sub_10002C9C8(v91, v92, &v422);

    *(v90 + 4) = v93;
    *(v90 + 12) = 2082;
    *(v90 + 14) = sub_10002C9C8(*(v420 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v420 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), &v422);
    *(v90 + 22) = 2082;
    v94 = v75;
    *(v90 + 24) = sub_10002C9C8(v75, v89, &v422);
    *(v90 + 32) = 2082;
    v95 = *(v82 + 16);
    aBlock = *v82;
    v424 = v95;
    v425 = *(v82 + 32);
    v426 = *(v82 + 48);
    sub_1002856A4();
    v96 = dispatch thunk of CustomStringConvertible.description.getter();
    v98 = sub_10002C9C8(v96, v97, &v422);

    *(v90 + 34) = v98;
    _os_log_impl(&_mh_execute_header, v87, v88, "[%s]<%{public}s> interact<%{public}s> - interaction: %{public}s", v90, 0x2Au);
    swift_arrayDestroy();

    v77 = v406;
    v78 = v404;
  }

  else
  {
    v94 = v75;
  }

  v99 = *(v77 + 8);
  v99(v413, v78);
  v100 = v427[0];
  if (v428 > 1u)
  {
    if (v428 != 2)
    {
      if (v428 == 7)
      {
        v101 = *(v421 + 1);
        v101(v408, v418);
        v102 = *(v419 + 8);
        v419 += 8;
        v417 = v102;
        v102(v400, v411);
        v103 = swift_projectBox();
        (*(v395 + 16))(v394, v103, v396);
        v104 = v392;
        RoutingControl.type.getter();
        v105 = *(v393 + 88);
        v106 = v388;
        v107 = v105(v104, v388);
        if (v107 == enum case for RoutingControl.RoutingControlType.absoluteVolume(_:))
        {
          v417(v407, v411);
          v101(v409, v418);

          v354 = v414;

          v355 = v420;

          *&aBlock = 0;
          *(&aBlock + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(95);
          v356._countAndFlagsBits = 91;
          v356._object = 0xE100000000000000;
          String.append(_:)(v356);
          v357._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v357);

          v358._countAndFlagsBits = 15453;
          v358._object = 0xE200000000000000;
          String.append(_:)(v358);
          String.append(_:)(*(v355 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier));
          v359._countAndFlagsBits = 0x617265746E69203ELL;
          v359._object = 0xEB000000003C7463;
          String.append(_:)(v359);
          v360._countAndFlagsBits = v403;
          v360._object = v354;
          String.append(_:)(v360);
          v361._countAndFlagsBits = 0x746E6F63202D203ELL;
          v361._object = 0xED0000203A6C6F72;
          String.append(_:)(v361);
          sub_100017FCC(&qword_100524278, &type metadata accessor for RoutingControl);
          v362._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v362);

          v363._countAndFlagsBits = 0xD00000000000003CLL;
          v363._object = 0x800000010043E270;
          String.append(_:)(v363);
        }

        else
        {
          v108 = enum case for RoutingControl.RoutingControlType.relativeVolume(_:);
          v109 = v414;
          v421 = v101;
          if (v107 == enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
          {
            v110 = v392;
            (*(v393 + 96))(v392, v106);
            v111 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
            (*(*(v111 - 8) + 8))(v110, v111);
LABEL_28:
            v169 = v387;
            RoutingControl.type.getter();
            v170 = v105(v169, v106);
            if (v170 == v108)
            {
              (*(v393 + 96))(v169, v106);
              v171 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
              (*(*(v171 - 8) + 8))(v169, v171);
LABEL_31:
              v172 = type metadata accessor for InternalRoutingError();
              sub_100017FCC(&qword_100524710, &type metadata accessor for InternalRoutingError);
              v173 = swift_allocError();
              (*(*(v172 - 8) + 104))(v174, enum case for InternalRoutingError.notImplemented(_:), v172);
              v175 = MRDFastSyncGroupSessionState.rawValue.getter(v173, 0, 0);
              v177 = v176;
              v179 = v178;
              v181 = v180;
              v182 = v407;
              v183 = v409;
              sub_100281384(v175, v176, v178, v180, v407, v409, v420, v403, v109, v401, v410);

              sub_10023DCB0(v177, v179, v181);

              v184 = v411;
              v185 = v417;
              v417(v182, v411);
              v186 = v418;
              v187 = v421;
              v421(v183, v418);

              (*(v395 + 8))(v394, v396);
              v187(v398, v186);
              return v185(v397, v184);
            }

            if (v170 == enum case for RoutingControl.RoutingControlType.mute(_:))
            {
              goto LABEL_31;
            }

            v417(v407, v411);
            v421(v409, v418);

            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(58);
            v373._countAndFlagsBits = 91;
            v373._object = 0xE100000000000000;
            String.append(_:)(v373);
            v374._countAndFlagsBits = _typeName(_:qualified:)();
            String.append(_:)(v374);

            v375._countAndFlagsBits = 0xD000000000000016;
            v375._object = 0x800000010043E2B0;
            String.append(_:)(v375);
            v376._countAndFlagsBits = v403;
            v376._object = v109;
            String.append(_:)(v376);
            v377._countAndFlagsBits = 0xD00000000000001DLL;
            v377._object = 0x800000010043E2D0;
            String.append(_:)(v377);
            sub_100017FCC(&qword_100524278, &type metadata accessor for RoutingControl);
            v378._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v378);

            goto LABEL_75;
          }

          if (v107 == enum case for RoutingControl.RoutingControlType.mute(_:))
          {
            goto LABEL_28;
          }

          v417(v407, v411);
          v421(v409, v418);

          v364 = v420;

          *&aBlock = 0;
          *(&aBlock + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(53);
          v422 = aBlock;
          v365._countAndFlagsBits = 91;
          v365._object = 0xE100000000000000;
          String.append(_:)(v365);
          v366._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v366);

          v367._countAndFlagsBits = 15453;
          v367._object = 0xE200000000000000;
          String.append(_:)(v367);
          String.append(_:)(*(v364 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier));
          v368._countAndFlagsBits = 0x617265746E69203ELL;
          v368._object = 0xEB000000003C7463;
          String.append(_:)(v368);
          v369._countAndFlagsBits = v403;
          v369._object = v109;
          String.append(_:)(v369);
          v370._object = 0x800000010043E250;
          v370._countAndFlagsBits = 0xD00000000000001FLL;
          String.append(_:)(v370);
          v371 = *(v405 + 1);
          aBlock = *v405;
          v424 = v371;
          v425 = *(v405 + 2);
          v426 = *(v405 + 48);
          sub_1002856A4();
          v372._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v372);
        }

LABEL_75:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v118 = v421;
      if (v428 == 10)
      {
        v421 = *(v421 + 1);
        v421(v408, v418);
        v419 = *(v419 + 8);
        v138 = v411;
        (v419)(v400, v411);
        v139 = sub_1001BC5A8(&qword_100523030, &unk_100450F40);
        v140 = swift_projectBox();
        v141 = *(v140 + *(v139 + 48));
        v142 = v395;
        v143 = v386;
        v144 = v396;
        (*(v395 + 16))(v386, v140, v396);

        sub_1002831BC(v143, v141, v405, v412);

        v145 = v419;
        (v419)(v407, v138);
        v146 = v418;
        v147 = v421;
        v421(v409, v418);

        (*(v142 + 8))(v143, v144);
        v147(v398, v146);
        return v145(v397, v138);
      }

LABEL_71:
      v339 = *(v419 + 8);
      v340 = v411;
      v339(v407, v411);
      v341 = *(v118 + 1);
      v342 = v418;
      v341(v409, v418);

      v343 = v94;
      v344 = v414;

      v345 = v420;

      v341(v408, v342);
      v339(v400, v340);
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v422 = aBlock;
      v346._countAndFlagsBits = 91;
      v346._object = 0xE100000000000000;
      String.append(_:)(v346);
      v347._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v347);

      v348._countAndFlagsBits = 15453;
      v348._object = 0xE200000000000000;
      String.append(_:)(v348);
      String.append(_:)(*(v345 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier));
      v349._countAndFlagsBits = 0x617265746E69203ELL;
      v349._object = 0xEB000000003C7463;
      String.append(_:)(v349);
      v350._countAndFlagsBits = v343;
      v350._object = v344;
      String.append(_:)(v350);
      v351._object = 0x800000010043E250;
      v351._countAndFlagsBits = 0xD00000000000001FLL;
      String.append(_:)(v351);
      v352 = *(v405 + 1);
      aBlock = *v405;
      v424 = v352;
      v425 = *(v405 + 2);
      v426 = *(v405 + 48);
      sub_1002856A4();
      v353._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v353);

      goto LABEL_75;
    }

    v413 = v99;
    v132 = v420;
    v133 = *(**(v420 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer) + 176);

    v395 = v133(v100, *(&v100 + 1));
    v396 = v134;
    v135 = (v132 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
    if (*(v132 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
    {
      v94 = v78;
      v136 = *v135;

      v137 = String._bridgeToObjectiveC()();
    }

    else
    {
      v94 = v78;
      v137 = 0;
    }

    v415 = [objc_opt_self() sharedLocalEndpointForRoutingContextWithUID:v137];

    v188 = (*(*v420 + 232))();
    v118 = *(v188 + 16);
    if (v118)
    {
      v189 = 0;
      while (1)
      {
        if (v189 >= *(v188 + 16))
        {
          __break(1u);
          goto LABEL_70;
        }

        sub_10001D948(v188 + ((*(v417 + 80) + 32) & ~*(v417 + 80)) + *(v417 + 9) * v189, v416);
        if (sub_1002587B8() == v100 && v190 == *(&v100 + 1))
        {
          break;
        }

        v191 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v191)
        {
          goto LABEL_51;
        }

        ++v189;
        sub_10001DA14(v416);
        if (v118 == v189)
        {
          goto LABEL_40;
        }
      }

LABEL_51:

      v246 = v383;
      v247 = v381;
      v248 = *(v421 + 1);
      v249 = v408;
      v421 = (v421 + 8);
      v408 = v248;
      (v248)(v249, v418);
      v250 = *(v419 + 8);
      v419 += 8;
      v417 = v250;
      v250(v400, v411);
      sub_10001DFD4(v416, v247);
      v251 = v382;
      sub_10001DFD4(v247, v382);
      v252 = *(v251 + *(v246 + 64) + 16);
      v253 = v405;
      if (((v252 >> 8) & 6 | (v252 >> 7) & 1) == 5)
      {
        v254 = v379;
        v391();

        v255 = v414;

        v256 = Logger.logObject.getter();
        v257 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v256, v257))
        {
          v258 = swift_slowAlloc();
          *&aBlock = swift_slowAlloc();
          *v258 = 136315650;
          v259 = _typeName(_:qualified:)();
          v261 = sub_10002C9C8(v259, v260, &aBlock);

          *(v258 + 4) = v261;
          *(v258 + 12) = 2082;
          *(v258 + 14) = sub_10002C9C8(*(v420 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v420 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), &aBlock);
          *(v258 + 22) = 2082;
          v251 = v382;
          *(v258 + 24) = sub_10002C9C8(v403, v255, &aBlock);
          _os_log_impl(&_mh_execute_header, v256, v257, "[%s]<%{public}s> interact<%{public}s> - reset predicted item", v258, 0x20u);
          swift_arrayDestroy();

          v262 = v379;
          v263 = v404;
        }

        else
        {

          v262 = v254;
          v263 = v94;
        }

        (v413)(v262, v263);
        [v415 resetPredictedOutputDevice];
      }

      if (sub_100258968())
      {

        v303 = *(v251 + 32);
        v302 = *(v251 + 40);

        v304 = v420;
        v305 = sub_10001E0D0();
        v306 = String._bridgeToObjectiveC()();
        v307 = swift_allocObject();
        v308 = *(v253 + 16);
        *(v307 + 24) = *v253;
        *(v307 + 16) = v304;
        *(v307 + 40) = v308;
        *(v307 + 56) = *(v253 + 32);
        *(v307 + 72) = *(v253 + 48);
        v309 = v412;
        *(v307 + 80) = sub_10028554C;
        *(v307 + 88) = v309;
        *(v307 + 96) = v303;
        *(v307 + 104) = v302;
        *&v425 = sub_100285718;
        *(&v425 + 1) = v307;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v424 = sub_1001BC53C;
        *(&v424 + 1) = &unk_1004C70B8;
        v310 = _Block_copy(&aBlock);

        sub_10026D080(v427, &v422);

        [v305 routeToHearingAidForInteraction:v306 completion:v310];
        _Block_release(v310);

        v311 = v411;
        v312 = v417;
        v417(v407, v411);
        v313 = v418;
        v314 = v408;
        (v408)(v409, v418);

        v314(v398, v313);
        v312(v397, v311);
        v315 = v251;
      }

      else
      {
        v316 = MRRequestDetailsInitiatorRoutePicker;
        v317 = *(v253 + 16);
        aBlock = *v253;
        v424 = v317;
        v425 = *(v253 + 32);
        v426 = *(v253 + 48);
        sub_1002856A4();
        dispatch thunk of CustomStringConvertible.description.getter();
        v318 = objc_allocWithZone(MRRequestDetails);
        v319 = v253;
        v320 = String._bridgeToObjectiveC()();
        v321 = String._bridgeToObjectiveC()();

        v322 = [v318 initWithInitiator:v316 requestID:v320 reason:v321 userInitiated:1];

        sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
        v323 = swift_allocObject();
        *(v323 + 16) = xmmword_10044EC70;
        v324 = v396;
        *(v323 + 32) = v395;
        *(v323 + 40) = v324;
        v325 = objc_allocWithZone(MRGroupTopologyModificationRequest);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v327 = [v325 initWithRequestDetails:v322 type:3 outputDeviceUIDs:isa];

        [v327 setShouldWaitForUpdatedOutputDevices:1];
        v328 = v420;
        v329 = v420[2];
        v330 = swift_allocObject();
        v331 = *(v319 + 16);
        *(v330 + 56) = *v319;
        v332 = v412;
        *(v330 + 16) = sub_10028554C;
        *(v330 + 24) = v332;
        *(v330 + 32) = v100;
        *(v330 + 48) = v328;
        *(v330 + 72) = v331;
        *(v330 + 88) = *(v319 + 32);
        *(v330 + 104) = *(v319 + 48);
        *&v425 = sub_1002856F8;
        *(&v425 + 1) = v330;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v424 = sub_1001BC53C;
        *(&v424 + 1) = &unk_1004C7068;
        v333 = _Block_copy(&aBlock);

        sub_10026D080(v427, &v422);

        v334 = v415;
        [v415 modifyTopologyWithRequest:v327 withReplyQueue:v329 completion:v333];
        _Block_release(v333);

        v335 = v411;
        v336 = v417;
        v417(v407, v411);
        v337 = v418;
        v338 = v408;
        (v408)(v409, v418);

        v338(v398, v337);
        v336(v397, v335);
        v315 = v382;
      }

      return sub_10001DA14(v315);
    }

LABEL_40:

    v192 = v385;
    v193 = v94;
    (v391)(v385, v390, v94);

    v194 = v414;

    v195 = Logger.logObject.getter();
    v196 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v195, v196))
    {
      v197 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v197 = 136315906;
      v198 = _typeName(_:qualified:)();
      v200 = v194;
      v201 = sub_10002C9C8(v198, v199, &aBlock);

      *(v197 + 4) = v201;
      v194 = v200;
      v202 = v420;
      *(v197 + 12) = 2082;
      *(v197 + 14) = sub_10002C9C8(*(v202 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v202 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), &aBlock);
      *(v197 + 22) = 2082;
      *(v197 + 24) = sub_10002C9C8(v403, v194, &aBlock);
      *(v197 + 32) = 2082;
      *(v197 + 34) = sub_10002C9C8(v100, *(&v100 + 1), &aBlock);
      _os_log_impl(&_mh_execute_header, v195, v196, "[%s]<%{public}s> interact<%{public}s> - could not find source item matching identifier: %{public}s", v197, 0x2Au);
      swift_arrayDestroy();

      (v413)(v385, v404);
    }

    else
    {

      (v413)(v192, v193);
    }

    v203 = v407;
    v216 = type metadata accessor for InternalRoutingError();
    sub_100017FCC(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v217 = swift_allocError();
    (*(*(v216 - 8) + 104))(v218, enum case for InternalRoutingError.itemNotFound(_:), v216);
    v219 = MRDFastSyncGroupSessionState.rawValue.getter(v217, v100, *(&v100 + 1));
    v221 = v220;
    v223 = v222;
    v225 = v224;
    v226 = v400;
    v227 = v408;
    sub_100281384(v219, v220, v222, v224, v400, v408, v420, v403, v194, v401, v410);

    sub_10023DCB0(v221, v223, v225);

    v228 = *(v419 + 8);
    v229 = v203;
    v230 = v411;
    v228(v229, v411);
    v231 = *(v421 + 1);
    v232 = v418;
    v231(v409, v418);

    v231(v227, v232);
    v233 = v226;
LABEL_48:
    v228(v233, v230);
    v231(v398, v232);
    return (v228)(v397, v230);
  }

  if (v428)
  {
    v118 = v421;
    if (v428 != 1)
    {
      goto LABEL_71;
    }

    v149 = *(v421 + 1);
    v421 = (v421 + 8);
    v417 = v149;
    v149(v408, v418);
    v150 = *(v419 + 8);
    v419 += 8;
    v416 = v150;
    (v150)(v400, v411);
    v151 = v420;
    v152 = *(**(v420 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer) + 176);

    v415 = v100;
    v153 = v152(v100, *(&v100 + 1));
    v155 = v154;
    v156 = MRRequestDetailsInitiatorRoutePicker;
    v157 = *(v405 + 1);
    aBlock = *v405;
    v424 = v157;
    v425 = *(v405 + 2);
    v426 = *(v405 + 48);
    sub_1002856A4();
    dispatch thunk of CustomStringConvertible.description.getter();
    v158 = objc_allocWithZone(MRRequestDetails);
    v159 = String._bridgeToObjectiveC()();
    v160 = String._bridgeToObjectiveC()();

    v161 = [v158 initWithInitiator:v156 requestID:v159 reason:v160 userInitiated:1];

    sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
    v162 = swift_allocObject();
    *(v162 + 16) = xmmword_10044EC70;
    *(v162 + 32) = v153;
    *(v162 + 40) = v155;
    v163 = objc_allocWithZone(MRGroupTopologyModificationRequest);
    v164 = Array._bridgeToObjectiveC()().super.isa;

    v165 = [v163 initWithRequestDetails:v161 type:2 outputDeviceUIDs:v164];

    [v165 setShouldWaitForUpdatedOutputDevices:1];
    if (*(v151 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
    {
      v166 = *(v151 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
      v167 = *(v151 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8);

      v168 = String._bridgeToObjectiveC()();
    }

    else
    {
      v168 = 0;
    }

    v204 = v398;
    v205 = [objc_opt_self() sharedLocalEndpointForRoutingContextWithUID:v168];

    v206 = v151[2];
    v207 = swift_allocObject();
    v208 = v405;
    v209 = *(v405 + 1);
    *(v207 + 56) = *v405;
    v210 = v412;
    *(v207 + 16) = sub_10028554C;
    *(v207 + 24) = v210;
    *(v207 + 32) = v415;
    *(v207 + 40) = *(&v100 + 1);
    *(v207 + 48) = v151;
    *(v207 + 72) = v209;
    *(v207 + 88) = *(v208 + 32);
    *(v207 + 104) = *(v208 + 48);
    *&v425 = sub_1002857C0;
    *(&v425 + 1) = v207;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v424 = sub_1001BC53C;
    *(&v424 + 1) = &unk_1004C7108;
    v211 = _Block_copy(&aBlock);

    sub_10026D080(v427, &v422);

    [v205 modifyTopologyWithRequest:v165 withReplyQueue:v206 completion:v211];
    _Block_release(v211);

    v212 = v411;
    v213 = v416;
    (v416)(v407, v411);
    v214 = v418;
    v215 = v417;
    v417(v409, v418);

    v215(v204, v214);
    return v213(v397, v212);
  }

  else
  {
    v413 = v99;
    v112 = v420;
    v113 = *(**(v420 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer) + 176);
    v114 = *(&v427[0] + 1);

    v416 = v113(v100, v114);
    v116 = v115;
    v94 = v112;
    v117 = (*(*v112 + 232))();
    v118 = *(v117 + 16);
    if (!v118)
    {
LABEL_18:

      v122 = v384;
      v123 = v404;
      (v391)(v384, v390, v404);

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v126 = 136315906;
        v127 = _typeName(_:qualified:)();
        v129 = v94;
        v130 = sub_10002C9C8(v127, v128, &aBlock);

        *(v126 + 4) = v130;
        *(v126 + 12) = 2082;
        *(v126 + 14) = sub_10002C9C8(*(v129 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v129 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), &aBlock);
        *(v126 + 22) = 2082;
        *(v126 + 24) = sub_10002C9C8(v403, v414, &aBlock);
        *(v126 + 32) = 2082;
        *(v126 + 34) = sub_10002C9C8(v100, v114, &aBlock);
        _os_log_impl(&_mh_execute_header, v124, v125, "[%s]<%{public}s> interact<%{public}s> - could not find source item matching identifier: %{public}s", v126, 0x2Au);
        swift_arrayDestroy();

        (v413)(v384, v404);
      }

      else
      {

        (v413)(v122, v123);
      }

      v131 = v407;
      v234 = type metadata accessor for InternalRoutingError();
      sub_100017FCC(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v235 = swift_allocError();
      (*(*(v234 - 8) + 104))(v236, enum case for InternalRoutingError.itemNotFound(_:), v234);
      v237 = MRDFastSyncGroupSessionState.rawValue.getter(v235, v100, v114);
      v239 = v238;
      v241 = v240;
      v243 = v242;
      v244 = v408;
      sub_100281384(v237, v238, v240, v242, v400, v408, v420, v403, v414, v401, v410);

      sub_10023DCB0(v239, v241, v243);

      v228 = *(v419 + 8);
      v245 = v131;
      v230 = v411;
      v228(v245, v411);
      v231 = *(v421 + 1);
      v232 = v418;
      v231(v409, v418);

      v231(v244, v232);
      v233 = v400;
      goto LABEL_48;
    }

    v119 = 0;
    while (1)
    {
      if (v119 >= *(v117 + 16))
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      sub_10001D948(v117 + ((*(v417 + 80) + 32) & ~*(v417 + 80)) + *(v417 + 9) * v119, v415);
      if (sub_1002587B8() == v100 && v120 == v114)
      {
        break;
      }

      v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v121)
      {
        goto LABEL_54;
      }

      ++v119;
      sub_10001DA14(v415);
      if (v118 == v119)
      {
        goto LABEL_18;
      }
    }

LABEL_54:

    v264 = (v421 + 8);
    v417 = *(v421 + 1);
    v417(v408, v418);
    v265 = *(v419 + 8);
    v419 += 8;
    v413 = v265;
    (v265)(v400, v411);
    v266 = v380;
    sub_10001DFD4(v415, v380);
    sub_10001DFD4(v266, v389);
    v267 = v405;
    if (*(v94 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
    {
      v268 = *(v94 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
      v269 = *(v94 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8);

      v270 = String._bridgeToObjectiveC()();
    }

    else
    {
      v270 = 0;
    }

    v271 = [objc_opt_self() sharedLocalEndpointForRoutingContextWithUID:v270];

    v272 = *(v389 + *(v383 + 44));
    LOBYTE(aBlock) = *sub_100257764();
    LOBYTE(v422) = v272;
    sub_100248690();
    v273 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v421 = v264;
    v415 = v271;
    if ((v273 & 1) != 0 && (v274 = [v271 predictedOutputDevice]) != 0 && (v275 = v274, v276 = objc_msgSend(v274, "uid"), v275, v276))
    {
      v277 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v279 = v278;

      sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
      v280 = swift_allocObject();
      *(v280 + 16) = xmmword_100450890;
      *(v280 + 32) = v416;
      *(v280 + 40) = v116;
      *(v280 + 48) = v277;
      *(v280 + 56) = v279;
    }

    else
    {
      sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
      v281 = swift_allocObject();
      *(v281 + 16) = xmmword_10044EC70;
      *(v281 + 32) = v416;
      *(v281 + 40) = v116;
    }

    v282 = MRRequestDetailsInitiatorRoutePicker;
    v283 = *(v267 + 16);
    aBlock = *v267;
    v424 = v283;
    v425 = *(v267 + 32);
    v426 = *(v267 + 48);
    sub_1002856A4();
    dispatch thunk of CustomStringConvertible.description.getter();
    v284 = objc_allocWithZone(MRRequestDetails);
    v285 = String._bridgeToObjectiveC()();
    v286 = String._bridgeToObjectiveC()();

    v287 = [v284 initWithInitiator:v282 requestID:v285 reason:v286 userInitiated:1];

    v288 = objc_allocWithZone(MRGroupTopologyModificationRequest);
    v289 = Array._bridgeToObjectiveC()().super.isa;

    v290 = [v288 initWithRequestDetails:v287 type:1 outputDeviceUIDs:v289];

    [v290 setShouldWaitForUpdatedOutputDevices:1];
    v291 = v420;
    v292 = v420[2];
    v293 = swift_allocObject();
    v294 = *(v267 + 16);
    *(v293 + 56) = *v267;
    v295 = v412;
    *(v293 + 16) = sub_10028554C;
    *(v293 + 24) = v295;
    *(v293 + 32) = v100;
    *(v293 + 40) = v114;
    *(v293 + 48) = v291;
    *(v293 + 72) = v294;
    *(v293 + 88) = *(v267 + 32);
    *(v293 + 104) = *(v267 + 48);
    *&v425 = sub_100285840;
    *(&v425 + 1) = v293;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v424 = sub_1001BC53C;
    *(&v424 + 1) = &unk_1004C7158;
    v296 = _Block_copy(&aBlock);

    sub_10026D080(v427, &v422);

    v297 = v415;
    [v415 modifyTopologyWithRequest:v290 withReplyQueue:v292 completion:v296];
    _Block_release(v296);

    v298 = v411;
    v299 = v413;
    (v413)(v407, v411);
    v300 = v418;
    v301 = v417;
    v417(v409, v418);

    sub_10001DA14(v389);
    v301(v398, v300);
    return v299(v397, v298);
  }
}

uint64_t sub_100281384(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void (*a10)(uint64_t *), uint64_t a11)
{
  v85 = a8;
  v113 = a4;
  v112 = a3;
  v108 = a11;
  v109 = a10;
  v14 = sub_1001BC5A8(&unk_100524EC0, &qword_100457040);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v104 = &v81 - v16;
  v17 = type metadata accessor for InternalRoutingError();
  v106 = *(v17 - 8);
  v107 = v17;
  v18 = *(v106 + 64);
  __chkstk_darwin(v17);
  v105 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v96 = *(v97 - 8);
  v20 = *(v96 + 64);
  __chkstk_darwin(v97);
  v94 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v93 = *(v95 - 8);
  v22 = *(v93 + 64);
  __chkstk_darwin(v95);
  v89 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v88 = *(v90 - 8);
  v24 = *(v88 + 64);
  __chkstk_darwin(v90);
  v86 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Duration.UnitsFormatStyle();
  v91 = *(v92 - 8);
  v26 = *(v91 + 64);
  __chkstk_darwin(v92);
  v87 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Logger();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ContinuousClock.Instant();
  v102 = *(v33 - 8);
  v103 = v33;
  v34 = *(v102 + 64);
  __chkstk_darwin(v33);
  v36 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContinuousClock.now.getter();
  v101 = v36;
  v111 = ContinuousClock.Instant.duration(to:)();
  v100 = v37;
  v38 = sub_100028D40();
  v39 = *(v29 + 16);
  v99 = v28;
  v39(v32, v38, v28);
  v40 = a7;

  v41 = a1;
  v42 = a2;
  v43 = a2;
  v44 = v112;
  LOBYTE(v36) = v113;
  sub_10023DBE8(a1, v43, v112, v113);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v84 = a9;

  v83 = v40;

  v110 = v42;
  sub_10023DC58(v41, v42, v44, v36);
  v98 = v45;
  if (os_log_type_enabled(v45, v46))
  {
    v47 = v32;
    v82 = v46;
    v48 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v115 = v81;
    *v48 = 136316162;
    v49 = _typeName(_:qualified:)();
    v51 = sub_10002C9C8(v49, v50, &v115);

    *(v48 + 4) = v51;
    *(v48 + 12) = 2082;
    *(v48 + 14) = sub_10002C9C8(*(v83 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v83 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), &v115);
    *(v48 + 22) = 2082;
    *(v48 + 24) = sub_10002C9C8(v85, v84, &v115);
    *(v48 + 32) = 2082;
    v52 = v41;
    if (v41)
    {
      v116 = 0;
      v117 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v114, " with error: ");
      HIWORD(v114[1]) = -4864;
      v116 = v41;
      v117 = v110;
      v118 = v112;
      v119 = v113;
      sub_10023DD70();
      v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v53);

      v54._countAndFlagsBits = 32;
      v54._object = 0xE100000000000000;
      String.append(_:)(v54);
      v55 = v114[0];
      v56 = v114[1];
    }

    else
    {
      v56 = 0xE100000000000000;
      v55 = 32;
    }

    v57 = sub_10002C9C8(v55, v56, &v115);

    *(v48 + 34) = v57;
    *(v48 + 42) = 2082;
    sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
    v58 = *(type metadata accessor for Duration.UnitsFormatStyle.Unit() - 8);
    v59 = *(v58 + 72);
    v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100450890;
    static Duration.UnitsFormatStyle.Unit.seconds.getter();
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_1002868A0(v61);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v62 = v86;
    static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
    v63 = v89;
    static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
    v64 = v94;
    static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
    v65 = v87;
    static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

    (*(v96 + 8))(v64, v97);
    (*(v93 + 8))(v63, v95);
    (*(v88 + 8))(v62, v90);
    sub_100017FCC(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle);
    v66 = v92;
    Duration.formatted<A>(_:)();
    (*(v91 + 8))(v65, v66);
    v67 = sub_10002C9C8(v116, v117, &v115);

    *(v48 + 44) = v67;
    v68 = v98;
    _os_log_impl(&_mh_execute_header, v98, v82, "[%s]<%{public}s> interact<%{public}s> - finished%{public}sin: %{public}s", v48, 0x34u);
    swift_arrayDestroy();

    (*(v29 + 8))(v47, v99);
  }

  else
  {

    (*(v29 + 8))(v32, v99);
    v52 = v41;
  }

  v69 = v109;
  v71 = v106;
  v70 = v107;
  v72 = v104;
  v73 = v105;
  if (!v52)
  {
    (*(v106 + 56))(v104, 1, 1, v107);
    goto LABEL_12;
  }

  v116 = v52;
  swift_errorRetain();
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  v74 = swift_dynamicCast();
  (*(v71 + 56))(v72, v74 ^ 1u, 1, v70);
  if ((*(v71 + 48))(v72, 1, v70) == 1)
  {
LABEL_12:
    sub_1000038A4(v72, &unk_100524EC0, &qword_100457040);
LABEL_13:
    v76 = v110;
    v77 = v112;
    v78 = v113;
    sub_10023DBE8(v52, v110, v112, v113);
    static Duration./ infix(_:_:)();
    sub_10026CEA0(v52, v76, v77, v78, 1, &v116, v79);
    v69(&v116);
    sub_100286E38(&v116);
    return (*(v102 + 8))(v101, v103);
  }

  (*(v71 + 32))(v73, v72, v70);
  if ((InternalRoutingError.isStabilityError.getter() & 1) == 0)
  {
    (*(v71 + 8))(v73, v70);
    goto LABEL_13;
  }

  static Duration./ infix(_:_:)();
  sub_10026CEA0(0, 0, 0, 0, 0, &v116, v75);
  v69(&v116);
  sub_100286E38(&v116);
  (*(v71 + 8))(v73, v70);
  return (*(v102 + 8))(v101, v103);
}

uint64_t sub_100281F58(__int128 *a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v121 = a5;
  v122 = a4;
  v120 = a3;
  v119 = a2;
  v124 = *v5;
  v117 = type metadata accessor for DispatchWorkItemFlags();
  v116 = *(v117 - 8);
  v8 = *(v116 + 64);
  __chkstk_darwin(v117);
  v114 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for DispatchQoS();
  v112 = *(v113 - 8);
  v10 = *(v112 + 64);
  __chkstk_darwin(v113);
  v111 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for DispatchTime();
  v110 = *(v129 - 8);
  v12 = *(v110 + 64);
  v13 = __chkstk_darwin(v129);
  v109 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v128 = &v103 - v15;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ContinuousClock.Instant();
  v132 = *(v21 - 8);
  v133 = v21;
  v22 = v132[8];
  v23 = __chkstk_darwin(v21);
  v135 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v127 = &v103 - v26;
  v107 = v27;
  __chkstk_darwin(v25);
  v29 = &v103 - v28;
  v130 = type metadata accessor for ContinuousClock();
  v136 = *(v130 - 8);
  v30 = *(v136 + 64);
  v31 = __chkstk_darwin(v130);
  v134 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v126 = &v103 - v34;
  v106 = v35;
  __chkstk_darwin(v33);
  v37 = &v103 - v36;
  ContinuousClock.init()();
  v38 = *(a1 + 1);
  v123 = *a1;
  v131 = v29;
  ContinuousClock.now.getter();
  v39 = sub_100028D40();
  v40 = *(v17 + 16);
  v115 = v16;
  v40(v20, v39, v16);
  v41 = a1[2];
  v142[0] = a1[1];
  v142[1] = v41;
  v143 = *(a1 + 48);

  sub_10026D080(v142, &aBlock);
  v108 = v20;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  sub_100238E4C(v142);
  v44 = os_log_type_enabled(v42, v43);
  v125 = v6;
  v118 = v38;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v141 = v105;
    *v45 = 136315906;
    v46 = _typeName(_:qualified:)();
    v48 = sub_10002C9C8(v46, v47, &v141);
    v104 = v17;
    v49 = v38;
    v50 = v48;

    *(v45 + 4) = v50;
    *(v45 + 12) = 2082;
    *(v45 + 14) = sub_10002C9C8(*(v125 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(v125 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), &v141);
    *(v45 + 22) = 2082;
    *(v45 + 24) = sub_10002C9C8(v123, v49, &v141);
    *(v45 + 32) = 2082;
    v51 = a1[1];
    aBlock = *a1;
    v138 = v51;
    v139 = a1[2];
    v140 = *(a1 + 48);
    sub_1002856A4();
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = sub_10002C9C8(v52, v53, &v141);

    *(v45 + 34) = v54;
    _os_log_impl(&_mh_execute_header, v42, v43, "[%s]<%{public}s> waitForItemStability<%{public}s> - interaction: %{public}s", v45, 0x2Au);
    swift_arrayDestroy();

    (*(v104 + 8))(v108, v115);
  }

  else
  {

    (*(v17 + 8))(v108, v115);
  }

  v55 = v136;
  v56 = *(v136 + 16);
  v57 = v126;
  v115 = v37;
  v58 = v130;
  v56(v126, v37, v130);
  v59 = v132;
  v60 = v132[2];
  v61 = v127;
  v62 = v133;
  v60(v127, v131, v133);
  v56(v134, v57, v58);
  v60(v135, v61, v62);
  v63 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v64 = (v106 + *(v59 + 80) + v63) & ~*(v59 + 80);
  v65 = (v107 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  (*(v136 + 32))(v68 + v63, v126, v58);
  (v59[4])(v68 + v64, v127, v62);
  v69 = v125;
  *(v68 + v65) = v125;
  v70 = (v68 + v66);
  v71 = v118;
  *v70 = v123;
  v70[1] = v71;
  v72 = (v68 + v67);
  v73 = v120;
  *v72 = v119;
  v72[1] = v73;
  *(v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8)) = v124;

  v74 = static String.nanoIDFourChar()();
  v76 = v75;
  v77 = swift_allocObject();
  swift_weakInit();
  v78 = swift_allocObject();
  v108 = v77;
  v79 = v122;
  v78[2] = v77;
  v78[3] = v79;
  v78[4] = v121;
  v78[5] = v74;
  v78[6] = v76;
  v78[7] = sub_100286568;
  v78[8] = v68;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_100286568;
  *(v80 + 24) = v68;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_100286694;
  *(v81 + 24) = v78;
  v82 = sub_100037528();
  swift_bridgeObjectRetain_n();
  v127 = v68;
  swift_retain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = v82;
  sub_100285D14(sub_10021C408, v81, v74, v76, isUniquelyReferenced_nonNull_native);

  v84 = *(v69 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers);
  *(v69 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers) = aBlock;

  v106 = *(v69 + 16);
  v85 = v109;
  static DispatchTime.now()();
  + infix(_:_:)();
  v107 = *(v110 + 8);
  v107(v85, v129);
  v86 = swift_allocObject();
  swift_weakInit();
  v87 = swift_allocObject();
  v87[2] = v86;
  v87[3] = v74;
  v109 = v74;
  v87[4] = v76;
  v87[5] = sub_1002867B0;
  v87[6] = v80;
  *&v139 = sub_1002867DC;
  *(&v139 + 1) = v87;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v138 = sub_100003D98;
  *(&v138 + 1) = &unk_1004C7378;
  v88 = _Block_copy(&aBlock);
  v110 = v76;

  v126 = v80;

  v89 = v111;
  static DispatchQoS.unspecified.getter();
  v141 = _swiftEmptyArrayStorage;
  sub_100017FCC(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  v90 = v114;
  v91 = v117;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v92 = v128;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v88);
  (*(v116 + 8))(v90, v91);
  (*(v112 + 8))(v89, v113);
  v107(v92, v129);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v94 = Strong;
    v95 = v110;
    (*(*Strong + 232))();
    v96 = v122();

    if (v96)
    {
      v141 = sub_100037528();
      sub_10027DB8C(0, 0, v109, v95);
      v97 = *(v94 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers);
      *(v94 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers) = v141;

      sub_100283D64(0, v134, v135, v125, v123, v118, v119, v120, v124);
    }

    else
    {
    }
  }

  else
  {
  }

  v98 = v133;
  v99 = v132[1];
  v99(v135, v133);
  v100 = *(v136 + 8);
  v101 = v130;
  v100(v134, v130);
  v99(v131, v98);
  v100(v115, v101);
}

uint64_t sub_100282DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HostedRoutingItem(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = *(v8 + 72);
  while (1)
  {
    sub_10001D948(v12, v10);
    v15 = *v10 == a2 && v10[1] == a3;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_10001DA14(v10);
      goto LABEL_4;
    }

    v14 = *(v10 + *(v6 + 36));
    sub_10001DA14(v10);
    if ((v14 & 1) == 0)
    {
      return 1;
    }

LABEL_4:
    v12 += v13;
    if (!--v11)
    {
      return 0;
    }
  }
}

uint64_t sub_100282F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HostedRoutingItem(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = *(v8 + 72);
  while (1)
  {
    sub_10001D948(v12, v10);
    v15 = *(v10 + 4) == a2 && *(v10 + 5) == a3;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_10001DA14(v10);
      goto LABEL_4;
    }

    v14 = v10[*(v6 + 36)];
    sub_10001DA14(v10);
    if (v14)
    {
      return 1;
    }

LABEL_4:
    v12 += v13;
    if (!--v11)
    {
      return 0;
    }
  }
}

uint64_t sub_100283078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HostedRoutingItem(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = *(v8 + 72);
  while (1)
  {
    sub_10001D948(v12, v10);
    v15 = *v10 == a2 && v10[1] == a3;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_10001DA14(v10);
      goto LABEL_4;
    }

    v14 = *(v10 + *(v6 + 36));
    sub_10001DA14(v10);
    if (v14)
    {
      return 1;
    }

LABEL_4:
    v12 += v13;
    if (!--v11)
    {
      return 0;
    }
  }
}

void sub_1002831BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v74 = a4;
  v72 = *v5;
  v8 = type metadata accessor for RoutingControl.Target();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for RoutingControl.RoutingControlType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a3 + 8);
  v73 = *a3;
  v19 = v5[2];
  v75 = v18;
  v76 = v19;
  v71 = a1;
  RoutingControl.type.getter();
  if ((*(v14 + 88))(v17, v13) == enum case for RoutingControl.RoutingControlType.absoluteVolume(_:))
  {
    (*(v14 + 96))(v17, v13);
    v20 = *v17;
    if (*(v5 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
    {
      v21 = *(v5 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
      v22 = *(v5 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8);

      v23 = String._bridgeToObjectiveC()();
    }

    else
    {
      v23 = 0;
    }

    v24 = [objc_opt_self() sharedLocalEndpointForRoutingContextWithUID:v23];

    v25 = dispatch thunk of VolumeGroup.copy()();
    RoutingControl.target.getter();
    v26 = (*(v9 + 88))(v12, v8);
    v72 = v24;
    if (v26 == enum case for RoutingControl.Target.session(_:))
    {
      (*(v9 + 8))(v12, v8);
      dispatch thunk of VolumeGroup.apply(groupVolume:)();
      aBlock = 0;
      v79 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      aBlock = 0xD00000000000001CLL;
      v79 = 0x800000010043E5E0;
      v27._countAndFlagsBits = v73;
      v27._object = v75;
      String.append(_:)(v27);
      v28._countAndFlagsBits = 62;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v29 = objc_allocWithZone(MRRequestDetails);
      v30 = String._bridgeToObjectiveC()();
      v31 = String._bridgeToObjectiveC()();
      v32 = String._bridgeToObjectiveC()();

      v33 = [v29 initWithName:v30 requestID:v31 reason:v32];

      v34 = *(a3 + 32);
      v84 = *(a3 + 16);
      v85 = v34;
      v86 = *(a3 + 48);
      v35 = swift_allocObject();
      v36 = v76;
      *(v35 + 16) = v76;
      *(v35 + 24) = sub_10028554C;
      *(v35 + 32) = v74;
      *(v35 + 40) = v5;
      v37 = *(a3 + 16);
      *(v35 + 48) = *a3;
      *(v35 + 64) = v37;
      *(v35 + 80) = *(a3 + 32);
      *(v35 + 96) = *(a3 + 48);
      v38 = v72;
      *(v35 + 104) = v25;
      *(v35 + 112) = v38;
      v82 = sub_100286CD8;
      v83 = v35;
      aBlock = _NSConcreteStackBlock;
      v79 = 1107296256;
      v80 = sub_1001BC53C;
      v81 = &unk_1004C74B8;
      v39 = _Block_copy(&aBlock);
      v40 = v36;

      sub_10026D080(&v84, v77);

      v41 = v38;

      LODWORD(v42) = v20;
      [v41 setVolume:v33 details:v40 queue:v39 completion:v42];

      _Block_release(v39);
LABEL_9:

      return;
    }

    if (v26 == enum case for RoutingControl.Target.item(_:))
    {
      (*(v9 + 96))(v12, v8);
      v43 = *v12;
      v44 = v12[1];
      v45 = sub_1002586E4();
      v47 = v46;

      dispatch thunk of VolumeGroup.apply(volume:to:)();
      (*(**(v5 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer) + 176))(v45, v47);

      v71 = String._bridgeToObjectiveC()();

      aBlock = 0;
      v79 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      aBlock = 0xD00000000000001CLL;
      v79 = 0x800000010043E5E0;
      v48._countAndFlagsBits = v73;
      v48._object = v75;
      String.append(_:)(v48);
      v49._countAndFlagsBits = 62;
      v49._object = 0xE100000000000000;
      String.append(_:)(v49);
      v50 = objc_allocWithZone(MRRequestDetails);
      v51 = String._bridgeToObjectiveC()();
      v52 = String._bridgeToObjectiveC()();
      v53 = String._bridgeToObjectiveC()();

      v33 = [v50 initWithName:v51 requestID:v52 reason:v53];

      v54 = *(a3 + 32);
      v84 = *(a3 + 16);
      v85 = v54;
      v86 = *(a3 + 48);
      v55 = swift_allocObject();
      v36 = v76;
      *(v55 + 16) = v76;
      *(v55 + 24) = sub_10028554C;
      *(v55 + 32) = v74;
      *(v55 + 40) = v5;
      v56 = *(a3 + 16);
      *(v55 + 48) = *a3;
      *(v55 + 64) = v56;
      *(v55 + 80) = *(a3 + 32);
      *(v55 + 96) = *(a3 + 48);
      v57 = v72;
      *(v55 + 104) = v25;
      *(v55 + 112) = v57;
      v82 = sub_100286C48;
      v83 = v55;
      aBlock = _NSConcreteStackBlock;
      v79 = 1107296256;
      v80 = sub_1001BC53C;
      v81 = &unk_1004C7468;
      v58 = _Block_copy(&aBlock);
      v59 = v36;

      v60 = v57;
      sub_10026D080(&v84, v77);

      LODWORD(v61) = v20;
      v62 = v71;
      [v60 setOutputDeviceVolume:v71 outputDevice:v33 details:v59 queue:v58 completion:v61];

      _Block_release(v58);

      goto LABEL_9;
    }
  }

  else
  {
    (*(v14 + 8))(v17, v13);
    aBlock = 0;
    v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    v63._countAndFlagsBits = 91;
    v63._object = 0xE100000000000000;
    String.append(_:)(v63);
    v64._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v64);

    v65._countAndFlagsBits = 0xD00000000000001ELL;
    v65._object = 0x800000010043E5A0;
    String.append(_:)(v65);
    v66._countAndFlagsBits = v73;
    v66._object = v75;
    String.append(_:)(v66);
    v67._countAndFlagsBits = 0x746E6F63202D203ELL;
    v67._object = 0xED0000203A6C6F72;
    String.append(_:)(v67);
    type metadata accessor for RoutingControl();
    sub_100017FCC(&qword_100524278, &type metadata accessor for RoutingControl);
    v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v68);

    v69._object = 0x800000010043E5C0;
    v69._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v69);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_100283B48(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t (*a10)(void))
{
  v33[1] = a5;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v21 = a2;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = a2;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  result = (*(v18 + 8))(v21, v17);
  if (a2)
  {
    if (!a1)
    {
LABEL_5:
      v25 = swift_allocObject();
      *(v25 + 16) = a7;
      *(v25 + 24) = a8;

      v26 = a8;
      sub_100281F58(a6, a3, a4, a10, v25);
    }

    swift_getErrorValue();
    v24 = v33[3];
    swift_errorRetain();
    if (sub_100248E9C(v24))
    {

      goto LABEL_5;
    }

    swift_errorRetain();
    MRDFastSyncGroupSessionState.rawValue.getter(a1, 0, 0);
    v28 = v27;
    v30 = v29;
    v32 = v31;
    (a3)();

    sub_10023DCB0(v28, v30, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100283D64(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a8, uint64_t a9)
{
  v110 = a8;
  v111 = a7;
  v94 = a9;
  v95 = a5;
  v12 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v89[-v14];
  v16 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v104 = *(v16 - 8);
  v105 = v16;
  v17 = *(v104 + 64);
  __chkstk_darwin(v16);
  v100 = &v89[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v101 = *(v19 - 8);
  v102 = v19;
  v20 = *(v101 + 64);
  __chkstk_darwin(v19);
  v97 = &v89[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v98 = *(v22 - 8);
  v99 = v22;
  v23 = *(v98 + 64);
  __chkstk_darwin(v22);
  v96 = &v89[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for Duration.UnitsFormatStyle();
  v106 = *(v25 - 8);
  v107 = v25;
  v26 = *(v106 + 64);
  __chkstk_darwin(v25);
  v103 = &v89[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = type metadata accessor for Logger();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v89[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = type metadata accessor for ContinuousClock.Instant();
  v108 = *(v33 - 8);
  v109 = v33;
  v34 = *(v108 + 64);
  __chkstk_darwin(v33);
  v36 = &v89[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ContinuousClock.now.getter();
  v37 = ContinuousClock.Instant.duration(to:)();
  v39 = v37;
  if (a1)
  {
    v93 = v37;
    v92 = v38;
    v40 = sub_100028D40();
    (*(v29 + 16))(v32, v40, v28);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v114[0] = v91;
      *v43 = 136315906;
      v44 = _typeName(_:qualified:)();
      v90 = v42;
      v46 = sub_10002C9C8(v44, v45, v114);
      v94 = v28;
      v47 = v46;

      *(v43 + 4) = v47;
      *(v43 + 12) = 2082;
      *(v43 + 14) = sub_10002C9C8(*(a4 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(a4 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), v114);
      *(v43 + 22) = 2082;
      *(v43 + 24) = sub_10002C9C8(v95, a6, v114);
      *(v43 + 32) = 2082;
      sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
      v48 = *(type metadata accessor for Duration.UnitsFormatStyle.Unit() - 8);
      v49 = *(v48 + 72);
      v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100450890;
      static Duration.UnitsFormatStyle.Unit.seconds.getter();
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_1002868A0(v51);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v52 = v96;
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      v53 = v97;
      static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
      v54 = v100;
      static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
      v55 = v103;
      static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

      (*(v104 + 8))(v54, v105);
      (*(v101 + 8))(v53, v102);
      (*(v98 + 8))(v52, v99);
      sub_100017FCC(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle);
      v56 = v107;
      Duration.formatted<A>(_:)();
      (*(v106 + 8))(v55, v56);
      v57 = sub_10002C9C8(v112, v113, v114);

      *(v43 + 34) = v57;
      _os_log_impl(&_mh_execute_header, v41, v90, "[%s]<%{public}s> waitForItemStability<%{public}s> - timed out after: %{public}s", v43, 0x2Au);
      swift_arrayDestroy();

      (*(v29 + 8))(v32, v94);
    }

    else
    {

      (*(v29 + 8))(v32, v28);
    }

    v60 = type metadata accessor for InternalRoutingError();
    sub_100017FCC(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v61 = swift_allocError();
    (*(*(v60 - 8) + 104))(v62, enum case for InternalRoutingError.stabilityTimeout(_:), v60);
    v63 = MRDFastSyncGroupSessionState.rawValue.getter(v61, 0, 0);
    v65 = v64;
    v67 = v66;
    v69 = v68;
  }

  else
  {
    v58 = v38;
    v59 = sub_100015A78();
    sub_100015B34(v59, v15);
    if ((*(v29 + 48))(v15, 1, v28) == 1)
    {
      sub_1000038A4(v15, &qword_100525C00, &unk_1004511A0);
    }

    else
    {
      v93 = v39;

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v90 = v71;
        v73 = v72;
        v91 = swift_slowAlloc();
        v114[0] = v91;
        *v73 = 136315906;
        v74 = _typeName(_:qualified:)();
        v92 = v58;
        v76 = sub_10002C9C8(v74, v75, v114);
        v94 = v28;
        v77 = v76;

        *(v73 + 4) = v77;
        *(v73 + 12) = 2080;
        *(v73 + 14) = sub_10002C9C8(*(a4 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier), *(a4 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier + 8), v114);
        *(v73 + 22) = 2080;
        *(v73 + 24) = sub_10002C9C8(v95, a6, v114);
        *(v73 + 32) = 2080;
        sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
        v78 = *(type metadata accessor for Duration.UnitsFormatStyle.Unit() - 8);
        v79 = *(v78 + 72);
        v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_100450890;
        static Duration.UnitsFormatStyle.Unit.seconds.getter();
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_1002868A0(v81);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v82 = v96;
        static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
        v83 = v97;
        static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
        v84 = v100;
        static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
        v85 = v103;
        static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();
        v28 = v94;

        (*(v104 + 8))(v84, v105);
        (*(v101 + 8))(v83, v102);
        (*(v98 + 8))(v82, v99);
        sub_100017FCC(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle);
        v86 = v107;
        Duration.formatted<A>(_:)();
        (*(v106 + 8))(v85, v86);
        v87 = sub_10002C9C8(v112, v113, v114);

        *(v73 + 34) = v87;
        _os_log_impl(&_mh_execute_header, v70, v90, "[%s]<%s> waitForItemStability<%s> - stable after: %s", v73, 0x2Au);
        swift_arrayDestroy();
      }

      (*(v29 + 8))(v15, v28);
    }

    v63 = 0;
    v65 = 0;
    v67 = 0;
    v69 = 0;
  }

  v111(v63, v65, v67, v69);
  sub_10023DC58(v63, v65, v67, v69);
  return (*(v108 + 8))(v36, v109);
}

void sub_1002849F4()
{
  v70 = type metadata accessor for HostedRoutingItem(0);
  v1 = *(v70 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v70);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoutingMode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = 0;
  v76 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  v75 = 0xD000000000000023;
  v76 = 0x800000010043E2F0;
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_identifier));
  v10._countAndFlagsBits = 2622;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v74, "Routing Mode: ");
  HIBYTE(v74._object) = -18;
  (*(*v0 + 208))(v11);
  sub_100017FCC(&unk_100524C30, &type metadata accessor for RoutingMode);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  (*(v6 + 8))(v9, v5);
  v13 = v0;
  v14._countAndFlagsBits = 10;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  String.append(_:)(v74);

  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v74._countAndFlagsBits = 0xD000000000000016;
  v74._object = 0x800000010043E320;
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSessionIdentifier + 4))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSessionIdentifier);
  }

  LODWORD(v71) = v15;
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 10;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  String.append(_:)(v74);

  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v74._countAndFlagsBits = 0xD000000000000011;
  v74._object = 0x800000010043E340;
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8))
  {
    v18 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
    v19 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8);
  }

  else
  {
    v19 = 0xE300000000000000;
    v18 = 7104878;
  }

  v20._countAndFlagsBits = v18;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 10;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  String.append(_:)(v74);

  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v74._countAndFlagsBits = 0xD000000000000010;
  v74._object = 0x800000010043E360;
  v23 = (*(*v0 + 232))(v22);
  v24 = *(v23 + 16);
  v69 = v0;
  if (v24)
  {
    v73 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v24, 0);
    v25 = v73;
    v26 = *(v1 + 80);
    v68 = v23;
    v27 = v23 + ((v26 + 32) & ~v26);
    v28 = *(v1 + 72);
    do
    {
      sub_10001D948(v27, v4);
      v71 = 538976288;
      v72 = 0xE400000000000000;
      sub_100017FCC(&unk_100524C40, type metadata accessor for HostedRoutingItem);
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      v30 = v71;
      v31 = v72;
      sub_10001DA14(v4);
      v73 = v25;
      v33 = v25[2];
      v32 = v25[3];
      if (v33 >= v32 >> 1)
      {
        sub_1000089FC((v32 > 1), v33 + 1, 1);
        v25 = v73;
      }

      v25[2] = v33 + 1;
      v34 = &v25[2 * v33];
      v34[4] = v30;
      v34[5] = v31;
      v27 += v28;
      --v24;
    }

    while (v24);

    v13 = v69;
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
  }

  v71 = v25;
  v35 = sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  v36 = sub_10000462C(&qword_100523680, &qword_1005229B0, &unk_100450110);
  v37 = BidirectionalCollection<>.joined(separator:)();
  v39 = v38;

  v40._countAndFlagsBits = v37;
  v40._object = v39;
  String.append(_:)(v40);

  v41._countAndFlagsBits = 10;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);
  String.append(_:)(v74);

  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v74._countAndFlagsBits = 0xD000000000000012;
  v74._object = 0x800000010043E380;
  v42 = sub_10001B030();
  v43 = [v42 availableOutputDevices];

  if (!v43)
  {
    goto LABEL_30;
  }

  sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v44 >> 62)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
    if (v45)
    {
      goto LABEL_17;
    }

LABEL_27:

    v47 = _swiftEmptyArrayStorage;
LABEL_28:
    v71 = v47;
    v60 = BidirectionalCollection<>.joined(separator:)();
    v62 = v61;

    v63._countAndFlagsBits = v60;
    v63._object = v62;
    String.append(_:)(v63);

    v64._countAndFlagsBits = 10;
    v64._object = 0xE100000000000000;
    String.append(_:)(v64);
    String.append(_:)(v74);

    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v74._countAndFlagsBits = 0xD000000000000013;
    v74._object = 0x800000010043E3A0;
    v65 = *(v13 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routeNormalizer);
    v66._countAndFlagsBits = sub_10033E5D8();
    String.append(_:)(v66);

    v67._countAndFlagsBits = 10;
    v67._object = 0xE100000000000000;
    String.append(_:)(v67);
    String.append(_:)(v74);

    return;
  }

  v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v45)
  {
    goto LABEL_27;
  }

LABEL_17:
  v73 = _swiftEmptyArrayStorage;
  sub_1000089FC(0, v45 & ~(v45 >> 63), 0);
  if ((v45 & 0x8000000000000000) == 0)
  {
    v68 = v36;
    v70 = v35;
    v46 = 0;
    v47 = v73;
    do
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v48 = *(v44 + 8 * v46 + 32);
      }

      v49 = v48;
      v71 = 538976288;
      v72 = 0xE400000000000000;
      v50 = [v48 description];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54._countAndFlagsBits = v51;
      v54._object = v53;
      String.append(_:)(v54);

      v55 = v71;
      v56 = v72;
      v73 = v47;
      v58 = v47[2];
      v57 = v47[3];
      if (v58 >= v57 >> 1)
      {
        sub_1000089FC((v57 > 1), v58 + 1, 1);
        v47 = v73;
      }

      ++v46;
      v47[2] = v58 + 1;
      v59 = &v47[2 * v58];
      v59[4] = v55;
      v59[5] = v56;
    }

    while (v45 != v46);

    v13 = v69;
    goto LABEL_28;
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_10028531C(uint64_t a1)
{
  v2 = sub_100017FCC(&qword_1005249F8, type metadata accessor for Name);
  v3 = sub_100017FCC(&qword_100524A00, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_1002853D8()
{
  result = qword_100524C70;
  if (!qword_100524C70)
  {
    sub_100018D7C(255, &qword_100524C60, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524C70);
  }

  return result;
}

uint64_t sub_100285440()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSession);
    if (v2)
    {
      v3 = [v2 routingContextUID];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = (v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
    v8 = *(v1 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8);
    *v7 = v4;
    v7[1] = v6;

    sub_1002790D8();
  }

  return result;
}

unint64_t sub_1002854F8()
{
  result = qword_100524700;
  if (!qword_100524700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524700);
  }

  return result;
}

uint64_t sub_10028554C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *(type metadata accessor for ContinuousClock() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v4 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
  return sub_100281384(a1, a2, a3, a4, v4 + v10, v4 + v13, *(v4 + v14), *(v4 + v15), *(v4 + v15 + 8), *(v4 + v16), *(v4 + v16 + 8));
}

unint64_t sub_1002856A4()
{
  result = qword_100524708;
  if (!qword_100524708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524708);
  }

  return result;
}

uint64_t sub_100285718()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  sub_100281F58((v0 + 24), v2, v3, sub_100286BC8, v6);
}

uint64_t sub_1002857E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  sub_1002485A4(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_100285860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = v3;
  v6 = *(v3 + 16);
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  v10 = *(v5 + 48);
  if (!a1)
  {
    goto LABEL_4;
  }

  v20 = *(v5 + 24);
  swift_getErrorValue();
  swift_errorRetain();
  if (sub_100248E9C(v21))
  {

    v7 = v20;
LABEL_4:
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = v9;

    sub_100281F58((v5 + 56), v6, v7, a3, v12);
  }

  swift_errorRetain();

  MRDFastSyncGroupSessionState.rawValue.getter(a1, v8, v9);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (v6)();

  sub_10023DCB0(v15, v17, v19);
}

uint64_t sub_1002859AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_10000698C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v16 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1002860CC();
    v10 = v16;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_10021A064(v7, v10);
  *v3 = v10;
  return v13;
}

uint64_t sub_100285A5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100524980, &qword_100457028);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100285D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000698C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100285A5C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_10000698C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1002860CC();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_100285E9C()
{
  v1 = v0;
  v2 = type metadata accessor for HostedRoutingItem(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001BC5A8(&qword_1005249C0, &qword_100457078);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_10001D948(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_10001DFD4(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_1002860CC()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100524980, &qword_100457028);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

uint64_t type metadata accessor for AVDiscoveryRoutingItemDataSource()
{
  result = qword_100532EF0;
  if (!qword_100532EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002862A0()
{
  result = type metadata accessor for RoutingMode();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1002863C8()
{
  v1 = type metadata accessor for ContinuousClock();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v17 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v10);

  v14 = *(v0 + v11 + 8);

  v15 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, ((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v17 | 7);
}

uint64_t sub_100286568(char a1)
{
  v3 = *(type metadata accessor for ContinuousClock() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100283D64(a1, v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v9), *(v1 + v9 + 8), *(v1 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100286694()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    (*(*result + 232))();
    v10 = v2();

    if (v10)
    {
      v12 = sub_100037528();

      sub_10027DB8C(0, 0, v3, v5);
      v11 = *(v9 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers);
      *(v9 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers) = v12;

      v6(0);
    }
  }

  return result;
}

uint64_t sub_1002867B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

uint64_t sub_1002867DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v11 = sub_100037528();
    v8 = sub_1002859AC(v2, v3);
    v9 = *(v7 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers);
    *(v7 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers) = v11;

    if (v8)
    {
      v10 = sub_1001C7C2C(v8);
      v4(v10);
    }
  }

  return result;
}

void *sub_1002868A0(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1001BC5A8(&qword_100524990, &unk_100457030);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_100017FCC(&qword_100524EF0, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_100017FCC(&qword_100524998, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100286BD0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_10027C58C();
    (*(*v1 + 240))(v2);
  }

  return result;
}

uint64_t sub_100286C68()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  sub_1002485A4(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  v4 = *(v0 + 104);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100286D34()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100286D78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v7[3] = sub_1001BC5A8(&qword_1005249A0, &unk_100458530);
  v7[4] = sub_10000462C(&unk_100524CA0, &qword_1005249A0, &unk_100458530);
  v7[0] = a1;

  [v3 volume];
  LOBYTE(a1) = sub_100266EA8(v7, v5);
  sub_100026A44(v7);
  return a1 & 1;
}

uint64_t sub_100286E8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100286EF4()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_10001BF64(v7), (v3 & 1) == 0))
  {

    sub_10001BF10(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    return sub_1000038A4(&v8, &qword_100522890, &qword_100450610);
  }

  sub_100020E0C(*(v1 + 56) + 32 * v2, &v8);
  sub_10001BF10(v7);

  if (!*(&v9 + 1))
  {
    return sub_1000038A4(&v8, &qword_100522890, &qword_100450610);
  }

  sub_1000038A4(&v8, &qword_100522890, &qword_100450610);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_10027C58C();
    (*(*v5 + 240))(v6);
  }

  return result;
}

void type metadata accessor for Name()
{
  if (!qword_1005249D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1005249D8);
    }
  }
}

uint64_t sub_1002871BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode;
  swift_beginAccess();
  v4 = type metadata accessor for RoutingMode();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100287244(uint64_t a1)
{
  v3 = type metadata accessor for RoutingMode();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_1002876D0(v7, &OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode, "[%s]<%{public}s> setRoutingMode - value: %{public}s");
  v9 = *(v4 + 8);
  v9(a1, v3);
  return (v9)(v7, v3);
}

void (*sub_1002873B8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = type metadata accessor for RoutingMode();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[11] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v11 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode;
  v4[14] = v9;
  v4[15] = v11;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[16] = v12;
  v4[17] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_10028752C;
}

void sub_10028752C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 128);
  v3 = *(*a1 + 136);
  v5 = *(*a1 + 112);
  v6 = *(*a1 + 120);
  v7 = *(*a1 + 96);
  v8 = *(*a1 + 104);
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 88);
  v11 = *(*a1 + 72);
  if (a2)
  {
    v4(*(*a1 + 104), v5, v9);
    v4(v7, (v11 + v6), v9);
    swift_beginAccess();
    (*(v10 + 24))(v11 + v6, v8, v9);
    swift_endAccess();
    sub_1002876D0(v7, &OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode, "[%s]<%{public}s> setRoutingMode - value: %{public}s");
    v12 = *(v10 + 8);
    v12(v7, v9);
  }

  else
  {
    v4(*(*a1 + 104), (v11 + v6), v9);
    swift_beginAccess();
    (*(v10 + 24))(v11 + v6, v5, v9);
    swift_endAccess();
    sub_1002876D0(v8, &OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode, "[%s]<%{public}s> setRoutingMode - value: %{public}s");
    v12 = *(v10 + 8);
  }

  v12(v8, v9);
  v12(v5, v9);
  free(v5);
  free(v8);
  free(v7);

  free(v2);
}

uint64_t sub_1002876D0(uint64_t a1, uint64_t *a2, const char *a3)
{
  v5 = v3;
  v37 = *v3;
  v38 = a3;
  v6 = type metadata accessor for Logger();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RoutingMode();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  swift_beginAccess();
  v15 = v10[2];
  v15(v13, &v3[v14], v9);
  sub_100017EF4(&qword_1005249D0, &type metadata accessor for RoutingMode);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = v10[1];
  result = v17(v13, v9);
  if ((v16 & 1) == 0)
  {
    v35 = v17;
    v19 = sub_100028D40();
    (*(v40 + 16))(v39, v19, v6);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v36 = v21;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v33 = v15;
      v23 = v22;
      v41 = swift_slowAlloc();
      *v23 = 136315650;
      v24 = _typeName(_:qualified:)();
      v34 = v20;
      v26 = sub_10002C9C8(v24, v25, &v41);
      v37 = v6;
      v27 = v26;

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_10002C9C8(*&v5[OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier], *&v5[OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier + 8], &v41);
      *(v23 + 22) = 2082;
      v33(v13, &v5[v14], v9);
      sub_100017EF4(&unk_100524C30, &type metadata accessor for RoutingMode);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v35(v13, v9);
      v31 = sub_10002C9C8(v28, v30, &v41);

      *(v23 + 24) = v31;
      v32 = v34;
      _os_log_impl(&_mh_execute_header, v34, v36, v38, v23, 0x20u);
      swift_arrayDestroy();

      (*(v40 + 8))(v39, v37);
    }

    else
    {

      (*(v40 + 8))(v39, v6);
    }

    return sub_100289AC4();
  }

  return result;
}

void (*sub_100287B00(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingItems;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_100287B9C;
}

void sub_100287B9C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *v3;
  v7 = v2[4];
  if (a2)
  {

    sub_10002C684(v6);

    v8 = *v3;
  }

  else
  {
    sub_10002C684(v6);
  }

  free(v2);
}

uint64_t sub_100287C20(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  sub_100287CA8(a1, a2, a3, a4, a5, a6, a7);
  return v17;
}

uint64_t sub_100287CA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v58 = a6;
  v60 = a5;
  v65 = a4;
  v64 = a3;
  v62 = a1;
  v63 = a2;
  v56[1] = *v8;
  v61 = type metadata accessor for Logger();
  v59 = *(v61 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v61);
  v66 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode;
  v18 = enum case for RoutingMode.disabled(_:);
  v19 = type metadata accessor for RoutingMode();
  v20 = *(*(v19 - 8) + 104);
  v20(v8 + v17, v18, v19);
  v20(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_overrideRoutingMode, v18, v19);
  *(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingItems) = _swiftEmptyArrayStorage;
  *(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_pendingInteractions) = &_swiftEmptyDictionarySingleton;
  v21 = v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction;
  *(v21 + 48) = 0;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *v21 = 0u;
  v22 = (v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource____lazy_storage___subDataSource);
  *v22 = 0;
  v22[1] = 0;
  v22[2] = 0;
  v23 = (v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier);
  *v23 = static String.nanoIDFourChar()();
  v23[1] = v24;
  *v16 = a7;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v25 = a7;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v16, v12);
  if (v23)
  {
    v28 = v62;
    v27 = v63;
    *(v8 + 16) = v25;
    *(v8 + 24) = v28;
    *(v8 + 32) = v27;
    v29 = v64;
    *(v8 + 40) = v64;
    v30 = v65;
    *(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_timeline) = v65;
    v57 = v25;
    sub_10002CBE8(v28, v27, v29);

    sub_10002F518();
    v32 = v31;
    ObjectType = swift_getObjectType();
    v34 = (*(v32 + 56))(ObjectType, v32);
    swift_unknownObjectRelease();
    (*(*v8 + 224))(v34);
    v35 = *(*v30 + 224);

    v35(v36, &off_1004C7628);

    *(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_delegate + 8) = v58;
    swift_unknownObjectWeakAssign();
    v37 = sub_100028D40();
    v38 = v59;
    v39 = v61;
    (*(v59 + 16))(v66, v37, v61);
    sub_10002CBE8(v28, v27, v29);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    sub_10002349C(v28, v27, v29);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v70 = v58;
      *v42 = 136315650;
      v43 = _typeName(_:qualified:)();
      v45 = sub_10002C9C8(v43, v44, &v70);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2082;
      v46 = *(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier);
      v47 = *(v8 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier + 8);

      v48 = sub_10002C9C8(v46, v47, &v70);

      *(v42 + 14) = v48;
      *(v42 + 22) = 2082;
      v50 = v62;
      v49 = v63;
      v67 = v62;
      v68 = v63;
      v51 = v64;
      v69 = v64;
      sub_1002854F8();
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      sub_10002349C(v50, v49, v51);
      v55 = sub_10002C9C8(v52, v54, &v70);

      *(v42 + 24) = v55;
      _os_log_impl(&_mh_execute_header, v40, v41, "[%s]<%{public}s> init - item type: %{public}s", v42, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();

      (*(v38 + 8))(v66, v61);
    }

    else
    {

      swift_unknownObjectRelease();

      sub_10002349C(v62, v63, v64);
      (*(v38 + 8))(v66, v39);
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1002882CC()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100028D40();
  (*(v4 + 16))(v7, v8, v3);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = &unk_100538000;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v12 = 136315650;
    v13 = _typeName(_:qualified:)();
    v15 = sub_10002C9C8(v13, v14, &v31);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_10002C9C8(*(v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier), *(v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier + 8), &v31);
    *(v12 + 22) = 2082;
    v16 = *(v0 + 40);
    v29 = *(v0 + 3);
    v30 = v16;
    sub_1002854F8();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = sub_10002C9C8(v17, v18, &v31);

    *(v12 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%s]<%{public}s> deinit - item type: %{public}s", v12, 0x20u);
    swift_arrayDestroy();

    v11 = &unk_100538000;
  }

  (*(v4 + 8))(v7, v3);
  sub_10002349C(v0[3], v0[4], *(v0 + 40));
  v20 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingMode;
  v21 = type metadata accessor for RoutingMode();
  v22 = *(*(v21 - 8) + 8);
  v22(v1 + v20, v21);
  v22(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_overrideRoutingMode, v21);
  v23 = *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingItems);

  sub_1001DFBCC(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_delegate);
  v24 = *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_timeline);

  v25 = *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_pendingInteractions);

  sub_10028AE60(*(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction), *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 8), *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 16), *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 24), *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 32), *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 40), *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 48));
  v26 = *(v1 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource____lazy_storage___subDataSource);
  swift_unknownObjectRelease();
  v27 = *(v1 + v11[162] + 8);

  return v1;
}

uint64_t sub_100288648()
{
  sub_1002882CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1002886A0()
{
  v1 = *v0;
  v2 = type metadata accessor for RoutingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v17 = 60;
  v18 = 0xE100000000000000;
  v7._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 60;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier));
  v9._countAndFlagsBits = 0x65707974202D203ELL;
  v9._object = 0xEA0000000000203ALL;
  String.append(_:)(v9);
  v10 = *(v0 + 40);
  v15 = *(v0 + 3);
  v16 = v10;
  sub_1002854F8();
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6E6974756F72202CLL;
  v12._object = 0xEF203A65646F4D67;
  String.append(_:)(v12);
  (*(*v0 + 168))();
  sub_100017EF4(&unk_100524C30, &type metadata accessor for RoutingMode);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  (*(v3 + 8))(v6, v2);
  return v17;
}

uint64_t sub_1002888FC(uint64_t a1)
{
  v2 = v1;
  v164 = *v1;
  v162 = type metadata accessor for RoutingControl.RoutingControlType();
  v160 = *(v162 - 8);
  v4 = *(v160 + 64);
  __chkstk_darwin(v162);
  v161 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RoutingControl();
  v163 = *(v6 - 1);
  v7 = *(v163 + 64);
  __chkstk_darwin(v6);
  v9 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HostedRoutingItem(0);
  v166 = *(v15 - 8);
  v16 = *(v166 + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (*(*a1 + 112))(v17);
  v24 = v20[3];
  if (!v24)
  {
  }

  if (v24 < 1)
  {
    goto LABEL_38;
  }

  v147 = v9;
  v148 = v6;
  v149 = v11;
  v150 = v14;
  v25 = v20[4];
  v26 = v20[2];
  if (v25 < v26)
  {
    v26 = 0;
  }

  v27 = v20[v25 - v26 + 5];

  v29 = *(*v27 + 176);
  v29(v174, v28);
  swift_beginAccess();
  v30 = sub_10028AED4(v174);
  v32 = v31;
  v184 = v174[0];
  v182[0] = v174[1];
  v182[1] = v174[2];
  v183 = v175;
  swift_endAccess();
  sub_1001E6204(&v184);
  sub_100238E4C(v182);
  if (!v30)
  {
  }

  v146 = v10;
  v33 = swift_allocObject();
  v152 = v30;
  v153 = v32;
  *(v33 + 16) = v30;
  *(v33 + 24) = v32;

  v29(&v176, v34);
  v6 = *(&v176 + 1);
  v35 = v176;
  LODWORD(v158) = v179;
  v36 = swift_allocObject();
  v36[2] = v2;
  v36[3] = sub_10028AFB0;
  v151 = v36;
  v36[4] = v33;
  v37 = v177;
  v38 = v178;
  v180[0] = v177;
  v180[1] = v178;
  v181 = v179;
  v39 = v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction;
  v40 = *(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction);
  v156 = *(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 8);
  v157 = v40;
  v165 = v2;
  v41 = *(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 16);
  v159 = v27;
  v42 = *(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 24);
  v154 = *(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 32);
  v155 = v41;
  v43 = *(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 40);
  v145 = v35;
  *v39 = __PAIR128__(v6, v35);
  *(v39 + 1) = v37;
  *(v39 + 2) = v38;
  v44 = v39[48];
  v39[48] = v158;

  sub_10026D080(v180, &v170);

  sub_10026D080(v180, &v170);

  v158 = v33;

  v10 = v165;
  v45 = v42;
  v46 = v159;
  sub_10028AE60(v157, v156, v155, v45, v154, v43, v44);
  sub_100289D1C();

  v47 = sub_100238E4C(v180);
  v20 = (*(*v46 + 104))(v47);
  if (v20)
  {
    if (v20 == 3)
    {
      v48 = type metadata accessor for InternalRoutingError();
      sub_100017EF4(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v49 = swift_allocError();
      (*(*(v48 - 8) + 104))(v50, enum case for InternalRoutingError.cancelled(_:), v48);
      v51 = MRDFastSyncGroupSessionState.rawValue.getter(v49, 0, 0);
      sub_10026CEA0(v51, v52, v53, v54, 1, &v170, 0.0);
      v55 = *v39;
      v56 = *(v39 + 1);
      v57 = *(v39 + 2);
      v58 = *(v39 + 3);
      v59 = *(v39 + 4);
      v60 = *(v39 + 5);
      *v39 = 0u;
      *(v39 + 1) = 0u;
      *(v39 + 2) = 0u;
      v61 = v39[48];
      v39[48] = 0;
      sub_10028AE60(v55, v56, v57, v58, v59, v60, v61);
      sub_100289D1C();
      v167 = v170;
      v168 = v171;
      v169 = v172;
      v62 = v152;
      v152(&v167);

      sub_1001C7C2C(v62);

LABEL_9:
      sub_100238E4C(v180);

      return sub_100286E38(&v170);
    }

    goto LABEL_39;
  }

  (*(*a1 + 248))(v46);
  v64 = *&v180[0];
  if (v181 >= 4u)
  {
    if (v181 != 7)
    {
      v118 = v152;
      if (v181 != 10)
      {
LABEL_42:
        v130 = v118;

        sub_1001C7C2C(v130);
        *&v170 = 0;
        *(&v170 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(62);
        v167 = v170;
        v131._countAndFlagsBits = 91;
        v131._object = 0xE100000000000000;
        String.append(_:)(v131);
        v132._countAndFlagsBits = _typeName(_:qualified:)();
        String.append(_:)(v132);

        v133._countAndFlagsBits = 15453;
        v133._object = 0xE200000000000000;
        String.append(_:)(v133);
        String.append(_:)(*(v10 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier));
        v134._object = 0x800000010043E630;
        v134._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v134);
        v135._countAndFlagsBits = v145;
        v135._object = v6;
        String.append(_:)(v135);
        v136._countAndFlagsBits = 0xD00000000000001FLL;
        v136._object = 0x800000010043E250;
        String.append(_:)(v136);
        v170 = v176;
        v171 = v177;
        v172 = v178;
        v173 = v179;
        sub_1002856A4();
        v137._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v137);

        while (1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_44:
          *&v170 = 0;
          *(&v170 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(58);
          v138._countAndFlagsBits = 91;
          v138._object = 0xE100000000000000;
          String.append(_:)(v138);
          v139._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v139);

          v140._countAndFlagsBits = 15453;
          v140._object = 0xE200000000000000;
          String.append(_:)(v140);
          String.append(_:)(*(v10 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier));
          v141._object = 0x800000010043E630;
          v141._countAndFlagsBits = 0xD000000000000014;
          String.append(_:)(v141);
          v142._countAndFlagsBits = v145;
          v142._object = v6;
          String.append(_:)(v142);
          v143._countAndFlagsBits = 0xD00000000000001BLL;
          v143._object = 0x800000010043E650;
          String.append(_:)(v143);
          sub_100017EF4(&qword_100524278, &type metadata accessor for RoutingControl);
          v144._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v144);
        }
      }

      sub_1001C7C2C(v152);
      v119 = sub_10002F518();
      v121 = v120;
      ObjectType = swift_getObjectType();
      *&v170 = v119;
      (*(*(v121 + 16) + 8))(&v176, sub_10028AFF4, v151, ObjectType);

      swift_unknownObjectRelease();

      return sub_100238E4C(v180);
    }

    sub_1001C7C2C(v152);
    v91 = swift_projectBox();
    v92 = v163;
    (*(v163 + 16))(v147, v91, v148);
    v93 = v161;
    RoutingControl.type.getter();
    v94 = v160;
    v95 = v162;
    v96 = (*(v160 + 88))(v93, v162);
    if (v96 != enum case for RoutingControl.RoutingControlType.absoluteVolume(_:))
    {
      if (v96 == enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
      {

        (*(v94 + 96))(v93, v95);
        v97 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
        (*(*(v97 - 8) + 8))(v93, v97);
LABEL_35:
        v123 = sub_10002F518();
        v125 = v124;
        v126 = swift_getObjectType();
        *&v170 = v123;
        (*(*(v125 + 16) + 8))(&v176, sub_10028AFF4, v151, v126);
        swift_unknownObjectRelease();

        (*(v92 + 8))(v147, v148);

        return sub_100238E4C(v180);
      }

      if (v96 != enum case for RoutingControl.RoutingControlType.mute(_:))
      {
        goto LABEL_44;
      }
    }

    goto LABEL_35;
  }

  v65 = *(&v180[0] + 1);

  v162 = v6;

  v66 = sub_10002F518();
  v161 = v67;
  v69 = v68;
  v70 = swift_getObjectType();
  v71 = *(v69 + 56);
  v163 = v66;
  v160 = v70;
  v20 = v71(v70, v69);
  v10 = v20;
  v72 = 0;
  v6 = v20[2];
  while (1)
  {
    if (v6 == v72)
    {

      v98 = type metadata accessor for InternalRoutingError();
      sub_100017EF4(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v99 = swift_allocError();
      (*(*(v98 - 8) + 104))(v100, enum case for InternalRoutingError.itemNotFound(_:), v98);
      v101 = MRDFastSyncGroupSessionState.rawValue.getter(v99, v64, v65);
      sub_10026CEA0(v101, v102, v103, v104, 1, &v170, 0.0);
      v105 = *v39;
      v106 = *(v39 + 1);
      v107 = *(v39 + 2);
      v108 = *(v39 + 3);
      v109 = *(v39 + 4);
      v110 = *(v39 + 5);
      *v39 = 0u;
      *(v39 + 1) = 0u;
      *(v39 + 2) = 0u;
      v111 = v39[48];
      v39[48] = 0;
      sub_10028AE60(v105, v106, v107, v108, v109, v110, v111);
      sub_100289D1C();
      v167 = v170;
      v168 = v171;
      v169 = v172;
      v112 = v152;
      v152(&v167);

      sub_1001C7C2C(v112);

      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    if (v72 >= *(v10 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      if (v20 - 1 >= 2)
      {
        v127 = v23;
        v128 = v22;
        v129 = v21;

        sub_10023DCB0(v129, v128, v127);
      }

      v118 = sub_1001C7C2C(v152);
      __break(1u);
      goto LABEL_42;
    }

    sub_10001D948(v10 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v72, v19);
    if (sub_1002587B8() == v64 && v74 == v65)
    {
      break;
    }

    ++v72;
    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = sub_10001DA14(v19);
    if (v73)
    {
      goto LABEL_22;
    }
  }

  sub_10001DA14(v19);
LABEL_22:

  sub_1001C7C2C(v152);

  v75 = sub_100028D40();
  v77 = v149;
  v76 = v150;
  v78 = v146;
  (*(v149 + 16))(v150, v75, v146);
  v79 = v162;

  v80 = v165;

  swift_unknownObjectRetain();
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *&v170 = swift_slowAlloc();
    *v83 = 136315906;
    v84 = _typeName(_:qualified:)();
    v86 = sub_10002C9C8(v84, v85, &v170);

    *(v83 + 4) = v86;
    *(v83 + 12) = 2082;
    *(v83 + 14) = sub_10002C9C8(*(v80 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier), *(v80 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier + 8), &v170);
    *(v83 + 22) = 2082;
    v87 = sub_10002C9C8(v145, v79, &v170);

    *(v83 + 24) = v87;
    *(v83 + 32) = 2082;
    *&v167 = v163;
    v88 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = sub_10002C9C8(v88, v89, &v170);

    *(v83 + 34) = v90;
    _os_log_impl(&_mh_execute_header, v81, v82, "[%s]<%{public}s> timelineDidUpdate<%{public}s> - delegating to data source: %{public}s", v83, 0x2Au);
    swift_arrayDestroy();

    (*(v77 + 8))(v150, v146);
  }

  else
  {

    (*(v77 + 8))(v76, v78);
  }

  v113 = *(v80 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource____lazy_storage___subDataSource);
  v114 = *(v80 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource____lazy_storage___subDataSource + 16);
  v115 = swift_getObjectType();
  *&v170 = v113;
  v116 = *(v114 + 16);
  v117 = *(v116 + 8);
  swift_unknownObjectRetain();
  v117(&v176, sub_10028AFF4, v151, v115, v116);

  swift_unknownObjectRelease();

  sub_100238E4C(v180);
  swift_unknownObjectRelease();
}

uint64_t sub_1002899A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 + 16);
  v18 = *a1;
  v9 = *(a1 + 32);
  v16[0] = v8;
  v16[1] = v9;
  v17 = *(a1 + 48);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_pendingInteractions;
  swift_beginAccess();
  sub_10028BC98(&v18, v15);
  sub_10026D080(v16, v15);

  v12 = *(v4 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = *(v4 + v11);
  *(v4 + v11) = 0x8000000000000000;
  sub_10028B8E4(sub_10028BC54, v10, a1, isUniquelyReferenced_nonNull_native);
  sub_1001E6204(&v18);
  sub_100238E4C(v16);
  *(v4 + v11) = v15[0];
  swift_endAccess();
  return sub_100289D1C();
}

uint64_t sub_100289AC4()
{
  v1 = v0;
  v2 = type metadata accessor for RoutingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_overrideRoutingMode;
  swift_beginAccess();
  v17 = *(v3 + 16);
  v17(v9, v0 + v10, v2);
  (*(v3 + 104))(v7, enum case for RoutingMode.disabled(_:), v2);
  sub_100017EF4(&qword_1005249D0, &type metadata accessor for RoutingMode);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v3 + 8);
  v12(v7, v2);
  v12(v9, v2);
  sub_10002F518();
  v14 = v13;
  ObjectType = swift_getObjectType();
  if (v11)
  {
    (*(*v1 + 168))();
  }

  else
  {
    v17(v9, v1 + v10, v2);
  }

  (*(v14 + 40))(v9, ObjectType, v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_100289D1C()
{
  v1 = type metadata accessor for RoutingMode();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  v3 = __chkstk_darwin(v1);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v34 = &v33 - v5;
  v6 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_pendingInteractions;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = sub_10028ADC8(*(v7 + 16), 0);
  v10 = sub_10028BA90(&v38, (v9 + 32), v8, v7);

  sub_100045960();
  if (v10 != v8)
  {
    __break(1u);
LABEL_4:
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = (v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction);
  v12 = *(v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction + 8);
  if (v12)
  {
    v33 = *v11;
    v13 = v11[2];
    v14 = v11[3];
    v15 = v11[4];
    v16 = v11[5];
    v17 = *(v11 + 48);

    sub_10026D0B8(v13, v14, v15, v16, v17);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10028ACA4(0, *(v9 + 2) + 1, 1, v9);
    }

    v19 = *(v9 + 2);
    v18 = *(v9 + 3);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v9 = sub_10028ACA4((v18 > 1), v19 + 1, 1, v9);
    }

    *(v9 + 2) = v20;
    v21 = &v9[56 * v19];
    *(v21 + 4) = v33;
    *(v21 + 5) = v12;
    *(v21 + 6) = v13;
    *(v21 + 7) = v14;
    *(v21 + 8) = v15;
    *(v21 + 9) = v16;
    v21[80] = v17;
  }

  else
  {
    v20 = *(v9 + 2);
  }

  v22 = v20 + 1;
  v23 = 80;
  v24 = &enum case for RoutingMode.disabled(_:);
  while (--v22)
  {
    v25 = v9[v23];
    v23 += 56;
    if (v25 <= 2)
    {
      v24 = &enum case for RoutingMode.detailed(_:);
      break;
    }
  }

  v27 = v36;
  v26 = v37;
  v28 = v34;
  (*(v36 + 104))(v34, *v24, v37);
  v29 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_overrideRoutingMode;
  swift_beginAccess();
  v30 = v35;
  (*(v27 + 16))(v35, v0 + v29, v26);
  swift_beginAccess();
  (*(v27 + 24))(v0 + v29, v28, v26);
  swift_endAccess();
  sub_1002876D0(v30, &OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_overrideRoutingMode, "[%s]<%{public}s> setOverrideRoutingMode - value: %{public}s");
  v31 = *(v27 + 8);
  v31(v30, v26);
  return (v31)(v28, v26);
}

void (*sub_10028A0C4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 184))();
  return sub_10027DF04;
}

uint64_t sub_10028A218()
{
  v1 = v0;
  v63 = type metadata accessor for HostedRoutingItem(0);
  v61 = *(v63 - 8);
  v2 = *(v61 + 64);
  __chkstk_darwin(v63);
  v4 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoutingMode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v67._countAndFlagsBits = 0xD000000000000018;
  v67._object = 0x800000010043E670;
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier));
  v10._countAndFlagsBits = 2622;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v69 = v67;
  v64._countAndFlagsBits = 0x707954206D657449;
  v64._object = 0xEB00000000203A65;
  v11 = *(v0 + 40);
  v67 = *(v0 + 24);
  v68 = v11;
  sub_1002854F8();
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  String.append(_:)(v64);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v67, "Routing Mode: ");
  HIBYTE(v67._object) = -18;
  (*(*v0 + 168))(v14);
  sub_100017EF4(&unk_100524C30, &type metadata accessor for RoutingMode);
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16 = *(v6 + 8);
  v16(v9, v5);
  v17._countAndFlagsBits = 10;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  String.append(_:)(v67);

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v64._countAndFlagsBits = 0xD000000000000017;
  v64._object = 0x800000010043E690;
  v18 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_overrideRoutingMode;
  swift_beginAccess();
  (*(v6 + 16))(v9, v1 + v18, v5);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v16(v9, v5);
  v20._countAndFlagsBits = 10;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  String.append(_:)(v64);

  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v64._countAndFlagsBits = 0xD000000000000010;
  v64._object = 0x800000010043E360;
  v22 = *(*v1 + 216);
  v62 = v1;
  v23 = v22(v21);
  v24 = *(v23 + 16);
  if (v24)
  {
    v66 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v24, 0);
    v25 = v66;
    v26 = *(v61 + 80);
    v60[1] = v23;
    v27 = v23 + ((v26 + 32) & ~v26);
    v28 = *(v61 + 72);
    do
    {
      sub_10001D948(v27, v4);
      v65._countAndFlagsBits = 538976288;
      v65._object = 0xE400000000000000;
      sub_100017EF4(&unk_100524C40, type metadata accessor for HostedRoutingItem);
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      countAndFlagsBits = v65._countAndFlagsBits;
      object = v65._object;
      sub_10001DA14(v4);
      v66 = v25;
      v33 = v25[2];
      v32 = v25[3];
      if (v33 >= v32 >> 1)
      {
        sub_1000089FC((v32 > 1), v33 + 1, 1);
        v25 = v66;
      }

      v25[2] = v33 + 1;
      v34 = &v25[2 * v33];
      v34[4] = countAndFlagsBits;
      v34[5] = object;
      v27 += v28;
      --v24;
    }

    while (v24);
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
  }

  v65._countAndFlagsBits = v25;
  sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  sub_10002C150();
  v35 = BidirectionalCollection<>.joined(separator:)();
  v37 = v36;

  v38._countAndFlagsBits = v35;
  v38._object = v37;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 10;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  String.append(_:)(v64);

  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v65._countAndFlagsBits = 0xD000000000000017;
  v65._object = 0x800000010043E6B0;
  v40 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_pendingInteractions;
  v41 = v62;
  swift_beginAccess();
  v42 = *(v41 + v40);

  v44 = sub_10028A9B8(v43);

  v66 = v44;
  v45 = BidirectionalCollection<>.joined(separator:)();
  v47 = v46;

  v48._countAndFlagsBits = v45;
  v48._object = v47;
  String.append(_:)(v48);

  v49._countAndFlagsBits = 10;
  v49._object = 0xE100000000000000;
  String.append(_:)(v49);
  String.append(_:)(v65);

  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v65._countAndFlagsBits = 0xD000000000000012;
  v65._object = 0x800000010043E6D0;
  v50 = sub_10002F518();
  v52 = v51;
  ObjectType = swift_getObjectType();
  v66 = v50;
  v54 = (*(*(v52 + 8) + 8))(ObjectType);
  v56 = v55;
  swift_unknownObjectRelease();
  v57._countAndFlagsBits = v54;
  v57._object = v56;
  String.append(_:)(v57);

  v58._countAndFlagsBits = 10;
  v58._object = 0xE100000000000000;
  String.append(_:)(v58);
  String.append(_:)(v65);

  return v69._countAndFlagsBits;
}

uint64_t sub_10028A9B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  sub_1000089FC(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v28 = v3 + 72;
  v29 = v1;
  v30 = v3 + 64;
  v31 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v34 = v7 >> 6;
    v32 = v8;
    v33 = *(v3 + 36);
    v10 = *(v3 + 48) + 56 * v7;
    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    v35 = v2;
    v13 = *(v10 + 32);
    v14 = *(v10 + 40);
    v15 = *(v10 + 48);
    v36 = *v10;
    v37 = *(v10 + 8);

    sub_10026D0B8(v12, v11, v13, v14, v15);
    sub_1002856A4();
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17 = v13;
    v2 = v35;
    result = sub_1002485A4(v12, v11, v17, v14, v15);
    v19 = v35[2];
    v18 = v35[3];
    if (v19 >= v18 >> 1)
    {
      result = sub_1000089FC((v18 > 1), v19 + 1, 1);
      v2 = v35;
    }

    v2[2] = v19 + 1;
    v20 = &v2[2 * v19];
    v20[4] = 538976288;
    v20[5] = 0xE400000000000000;
    v3 = v31;
    v9 = 1 << *(v31 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = v30;
    v21 = *(v30 + 8 * v34);
    if ((v21 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v33 != *(v31 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v7 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v34 << 6;
      v24 = v34 + 1;
      v25 = (v28 + 8 * v34);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_10000A16C(v7, v33, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_10000A16C(v7, v33, 0);
    }

LABEL_4:
    v8 = v32 + 1;
    v7 = v9;
    if (v32 + 1 == v29)
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

char *sub_10028ACA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_100524C08, &unk_100457390);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10028ADC8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1001BC5A8(&qword_100524C08, &unk_100457390);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void sub_10028AE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a2)
  {

    sub_1002485A4(a3, a4, a5, a6, a7);
  }
}

uint64_t sub_10028AED4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10028B074(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v21 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10028B70C();
    v9 = v21;
  }

  v10 = *(v9 + 48) + 56 * v6;
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  v14 = *(v10 + 32);
  v15 = *(v10 + 40);
  v16 = *(v10 + 48);

  sub_1002485A4(v12, v13, v14, v15, v16);
  v17 = (*(v9 + 56) + 16 * v6);
  v18 = *v17;
  v19 = v17[1];
  sub_10028B42C(v6, v9);
  *v2 = v9;
  return v18;
}

uint64_t sub_10028AFB0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  return v2(v6);
}

uint64_t sub_10028AFF4(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2] + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_processingInteraction;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  v12 = *(v5 + 48);
  *(v5 + 48) = 0;
  sub_10028AE60(v6, v7, v8, v9, v10, v11, v12);
  sub_100289D1C();
  return v3(a1);
}

unint64_t sub_10028B074(uint64_t a1)
{
  v6 = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v3 = *(v1 + 40);
  sub_10028BE34();
  v4 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10028B60C(a1, v4);
}

uint64_t sub_10028B0F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100524BF8, &qword_100457388);
  v46 = a2;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v5 + 16))
  {
    v9 = 0;
    v43 = v3;
    v44 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 64;
    v45 = v5;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v48 = (v12 - 1) & v12;
LABEL_17:
      v23 = v19 | (v9 << 6);
      v24 = *(v5 + 56);
      v25 = *(v5 + 48) + 56 * v23;
      v26 = *(v25 + 8);
      v27 = *(v25 + 16);
      v28 = *(v25 + 24);
      v29 = *(v25 + 32);
      v30 = *(v25 + 40);
      v31 = *(v25 + 48);
      v47 = *v25;
      v50 = *(v24 + 16 * v23);
      if ((v46 & 1) == 0)
      {

        sub_10026D0B8(v27, v28, v29, v30, v31);
      }

      v49 = v31;
      v32 = v27;
      v33 = v29;
      v34 = *(v8 + 40);
      sub_10028BE34();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v35 = -1 << *(v8 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v16 = v28;
        v17 = v49;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v16 = v28;
      v17 = v49;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = *(v8 + 48) + 56 * v15;
      *v18 = v47;
      *(v18 + 8) = v26;
      *(v18 + 16) = v32;
      *(v18 + 24) = v16;
      *(v18 + 32) = v33;
      *(v18 + 40) = v30;
      *(v18 + 48) = v17;
      *(*(v8 + 56) + 16 * v15) = v50;
      ++*(v8 + 16);
      v5 = v45;
      v12 = v48;
    }

    v20 = v9;
    result = v44;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v13)
      {
        break;
      }

      v22 = v44[v9];
      ++v20;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v48 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_35;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v44, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v44 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10028B42C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    sub_10028BE34();
    do
    {
      v9 = 56 * v6;
      v10 = *(a2 + 40);
      v11 = *(a2 + 48) + 56 * v6;
      v27 = *v11;
      v28 = *(v11 + 8);
      v29 = *(v11 + 16);
      v30 = *(v11 + 32);
      v31 = *(v11 + 48);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 56 * v3;
          v17 = (v15 + v9);
          if (56 * v3 < v9 || v16 >= v17 + 56 || v3 != v6)
          {
            v18 = *v17;
            v19 = v17[1];
            v20 = v17[2];
            *(v16 + 48) = *(v17 + 6);
            *(v16 + 16) = v19;
            *(v16 + 32) = v20;
            *v16 = v18;
          }

          v21 = *(a2 + 56);
          v22 = (v21 + 16 * v3);
          v23 = (v21 + 16 * v6);
          if (v3 != v6 || v22 >= v23 + 1)
          {
            *v22 = *v23;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10028B60C(__int128 *a1, uint64_t a2)
{
  v14 = *a1;
  v15 = a1[1];
  v3 = a1[2];
  v16 = *(a1 + 48);
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_100276B34();
    do
    {
      v7 = *(v2 + 48) + 56 * v5;
      v9 = *v7;
      v10 = *(v7 + 8);
      v11 = *(v7 + 16);
      v12 = *(v7 + 32);
      v13 = *(v7 + 48);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_10028B70C()
{
  sub_1001BC5A8(&qword_100524BF8, &qword_100457388);
  v25 = v0;
  v1 = *v0;
  v26 = static _DictionaryStorage.copy(original:)();
  if (*(v1 + 16))
  {
    result = (v26 + 64);
    v3 = ((1 << *(v26 + 32)) + 63) >> 6;
    if (v26 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v26 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 56 * v14;
        v16 = *(v1 + 48) + 56 * v14;
        v17 = *(v16 + 8);
        v18 = *(v16 + 16);
        v19 = *(v16 + 24);
        v20 = *(v16 + 32);
        v21 = *(v16 + 40);
        v14 *= 16;
        v22 = *(*(v1 + 56) + v14);
        v23 = *(v26 + 48) + v15;
        v24 = *(v16 + 48);
        *v23 = *v16;
        *(v23 + 8) = v17;
        *(v23 + 16) = v18;
        *(v23 + 24) = v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        *(v23 + 48) = v24;
        *(*(v26 + 56) + v14) = v22;

        sub_10026D0B8(v18, v19, v20, v21, v24);
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v25 = v26;
  }

  return result;
}

uint64_t sub_10028B8E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10028B074(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10028B0F4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10028B074(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10028B70C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v27 = *(a3 + 16);
    v37 = *a3;
    v26 = v37;
    v28 = *(a3 + 32);
    v35[0] = v27;
    v35[1] = v28;
    v36 = *(a3 + 48);
    v29 = v36;
    v22[(v11 >> 6) + 8] |= 1 << v11;
    v30 = v22[6] + 56 * v11;
    *(v30 + 48) = v29;
    *(v30 + 16) = v27;
    *(v30 + 32) = v28;
    *v30 = v26;
    v31 = (v22[7] + 16 * v11);
    *v31 = a1;
    v31[1] = a2;
    v32 = v22[2];
    v15 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v15)
    {
      v22[2] = v33;
      sub_10028BC98(&v37, v34);
      return sub_10026D080(v35, v34);
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * v11);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

void *sub_10028BA90(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v22 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v22;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v26 = a4;
    v27 = a3;
    v24 = -1 << *(a4 + 32);
    v25 = result;
    result = 0;
    v9 = 0;
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v28 = v9;
      v14 = *(a4 + 48) + 56 * (__clz(__rbit64(v7)) | (v9 << 6));
      v15 = *(v14 + 8);
      v7 &= v7 - 1;
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      v18 = *(v14 + 32);
      v19 = *(v14 + 40);
      v20 = *(v14 + 48);
      *v8 = *v14;
      *(v8 + 8) = v15;
      *(v8 + 16) = v16;
      *(v8 + 24) = v17;
      *(v8 + 32) = v18;
      *(v8 + 40) = v19;
      *(v8 + 48) = v20;
      if (v11 == v27)
      {

        sub_10026D0B8(v16, v17, v18, v19, v20);
        result = v25;
        a4 = v26;
        v5 = v24;
        a3 = v27;
        v22 = v28;
        goto LABEL_24;
      }

      v8 += 56;

      sub_10026D0B8(v16, v17, v18, v19, v20);
      result = v11;
      v21 = __OFADD__(v11++, 1);
      a4 = v26;
      v9 = v28;
      if (v21)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
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
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v23 = v9 + 1;
    }

    else
    {
      v23 = v10;
    }

    v22 = v23 - 1;
    a3 = result;
    v5 = v24;
    result = v25;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10028BC54(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  return v2(v6);
}

uint64_t type metadata accessor for RoutingItemDataSource()
{
  result = qword_100533240;
  if (!qword_100533240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10028BD48()
{
  result = type metadata accessor for RoutingMode();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_10028BE34()
{
  result = qword_100524C00;
  if (!qword_100524C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524C00);
  }

  return result;
}

id sub_10028BE88(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtCC12mediaremoted39RemoteControlGroupSessionItemDataSource27GroupSessionManagerObserver_callback];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_10028BF0C()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12mediaremoted39RemoteControlGroupSessionItemDataSource27GroupSessionManagerObserver_callback);
  v2 = *(v0 + OBJC_IVAR____TtCC12mediaremoted39RemoteControlGroupSessionItemDataSource27GroupSessionManagerObserver_callback + 8);
  return v1();
}

id sub_10028BFC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteControlGroupSessionItemDataSource.GroupSessionManagerObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10028C010@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingMode;
  swift_beginAccess();
  v4 = type metadata accessor for RoutingMode();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10028C098(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingMode;
  swift_beginAccess();
  v4 = type metadata accessor for RoutingMode();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_10028C188(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingItems;
  swift_beginAccess();
  v11 = *(v2 + v10);

  LOBYTE(a1) = sub_10001ECB8(v12, a1);

  if ((a1 & 1) == 0)
  {
    v14 = sub_100028D40();
    (*(v6 + 16))(v9, v14, v5);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      HIDWORD(v32) = v16;
      v18 = v17;
      v33 = swift_slowAlloc();
      v34 = v33;
      *v18 = 136315394;
      v19 = _typeName(_:qualified:)();
      v21 = sub_10002C9C8(v19, v20, &v34);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v22 = *(v2 + v10);
      type metadata accessor for HostedRoutingItem(0);

      v23 = Array.description.getter();
      v25 = v24;

      v26 = sub_10002C9C8(v23, v25, &v34);

      *(v18 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v15, BYTE4(v32), "[%s] setRoutingItems - value: %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    (*(v6 + 8))(v9, v5);
    v27 = v2 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v28 = *(v27 + 1);
      ObjectType = swift_getObjectType();
      v30 = *(v2 + v10);
      v31 = *(v28 + 8);

      v31(v2, &off_1004C7720, v30, ObjectType, v28);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10028C4A8()
{
  v1 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingItems;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_10028C4F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingItems;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_10028C188(v4);
}

void (*sub_10028C554(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingItems;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_10028C5F0;
}

void sub_10028C5F0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *v3;
  v7 = v2[4];
  if (a2)
  {

    sub_10028C188(v6);

    v8 = *v3;
  }

  else
  {
    sub_10028C188(v6);
  }

  free(v2);
}

uint64_t sub_10028C674()
{
  v1 = (v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingContextIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_10028C6CC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingContextIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

void *sub_10028C78C()
{
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource____lazy_storage___notificationObservers))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource____lazy_storage___notificationObservers);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
    *(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource____lazy_storage___notificationObservers) = &_swiftEmptySetSingleton;
  }

  return v1;
}

uint64_t sub_10028C7D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  sub_10028C854(a1, a2, a3, a4, a5, a6);
  return v15;
}

uint64_t sub_10028C854(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v47 = a2;
  v48 = a5;
  v51 = a4;
  LODWORD(v50) = a3;
  v45[1] = *v6;
  v46 = a1;
  v49 = type metadata accessor for Logger();
  v9 = *(v49 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v49);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingMode;
  v19 = enum case for RoutingMode.disabled(_:);
  v20 = type metadata accessor for RoutingMode();
  (*(*(v20 - 8) + 104))(v7 + v18, v19, v20);
  *(v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingItems) = _swiftEmptyArrayStorage;
  v21 = (v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingContextIdentifier);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier);
  *v22 = static String.nanoIDFourChar()();
  v22[1] = v23;
  *(v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource____lazy_storage___notificationObservers) = 0;
  *(v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_discoveryObserver) = 0;
  *(v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *v17 = a6;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v24 = a6;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v17, v13);
  if (v22)
  {
    v26 = v47;
    v7[2] = v46;
    v7[3] = v26;
    *(v7 + 32) = v50;
    v7[5] = v24;
    v27 = *(*v7 + 320);
    v28 = v24;
    v29 = v27();
    v30 = (*(*v7 + 344))(v29);
    v31 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingItems;
    swift_beginAccess();
    v32 = *(v7 + v31);
    *(v7 + v31) = v30;

    *(v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_delegate + 8) = v48;
    swift_unknownObjectWeakAssign();
    v33 = sub_100028D40();
    v34 = v49;
    (*(v9 + 16))(v12, v33, v49);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v37 = 136315394;
      v38 = _typeName(_:qualified:)();
      v40 = sub_10002C9C8(v38, v39, &v52);
      v50 = v28;
      v41 = v40;

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      v42 = *(v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier);
      v43 = *(v7 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8);

      v44 = sub_10002C9C8(v42, v43, &v52);

      *(v37 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%s]<%{public}s> init", v37, 0x16u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v9 + 8))(v12, v34);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10028CD38()
{
  v1 = *v0;
  v2 = type metadata accessor for RoutingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v17 = 60;
  v18 = 0xE100000000000000;
  v7._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 60;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier));
  v9._countAndFlagsBits = 0x65707974202D203ELL;
  v9._object = 0xEA0000000000203ALL;
  String.append(_:)(v9);
  v10 = *(v0 + 32);
  v15 = *(v0 + 1);
  v16 = v10;
  sub_1002854F8();
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6E6974756F72202CLL;
  v12._object = 0xEF203A65646F4D67;
  String.append(_:)(v12);
  (*(*v0 + 152))();
  sub_100017F3C(&unk_100524C30, &type metadata accessor for RoutingMode);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  (*(v3 + 8))(v6, v2);
  return v17;
}

uint64_t sub_10028CF94(uint64_t *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v189 = a3;
  v190 = a2;
  v201 = *v3;
  v172 = type metadata accessor for HostedRoutingItem(0);
  v186 = *(v172 - 8);
  v5 = *(v186 + 64);
  v6 = __chkstk_darwin(v172);
  v184 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v171 = &v170 - v9;
  __chkstk_darwin(v8);
  v177 = &v170 - v10;
  v197 = type metadata accessor for Logger();
  v199 = *(v197 - 8);
  v11 = *(v199 + 64);
  v12 = __chkstk_darwin(v197);
  v178 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v173 = &v170 - v15;
  __chkstk_darwin(v14);
  v195 = &v170 - v16;
  v200 = type metadata accessor for ContinuousClock.Instant();
  v17 = *(v200 - 8);
  v185 = *(v17 + 8);
  v18 = __chkstk_darwin(v200);
  v192 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v194 = &v170 - v21;
  __chkstk_darwin(v20);
  v23 = &v170 - v22;
  v24 = type metadata accessor for ContinuousClock();
  v193 = *(v24 - 8);
  v25 = v193;
  v26 = *(v193 + 64);
  v27 = __chkstk_darwin(v24);
  v191 = (&v170 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __chkstk_darwin(v27);
  v30 = (&v170 - v29);
  __chkstk_darwin(v28);
  v32 = &v170 - v31;
  v188 = a1;
  v33 = a1[1];
  v196 = *a1;
  v198 = v33;
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  v34 = *(v25 + 16);
  v183 = v30;
  v181 = v32;
  v34(v30, v32, v24);
  v35 = *(v17 + 2);
  v36 = v194;
  v182 = v23;
  v37 = v23;
  v38 = v200;
  v35(v194, v37, v200);
  v34(v191, v30, v24);
  v35(v192, v36, v38);
  v39 = v193;
  v40 = (*(v193 + 80) + 16) & ~*(v193 + 80);
  v41 = (v26 + v17[80] + v40) & ~v17[80];
  v42 = (v185 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = *(v39 + 32);
  v179 = v24;
  v46(v45 + v40, v183, v24);
  v183 = v17;
  v47 = v187;
  (*(v17 + 4))(v45 + v41, v194, v200);
  *(v45 + v42) = v47;
  v48 = (v45 + v43);
  v49 = v198;
  *v48 = v196;
  v48[1] = v49;
  v50 = (v45 + v44);
  v51 = v189;
  *v50 = v190;
  v50[1] = v51;
  v180 = v45;
  *(v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8)) = v201;

  v52 = sub_100028D40();
  v53 = *(v199 + 16);
  v174 = v52;
  v176 = v199 + 16;
  v175 = v53;
  (v53)(v195);
  v55 = *(v188 + 16);
  v54 = *(v188 + 24);
  v57 = *(v188 + 32);
  v56 = *(v188 + 40);
  LODWORD(v41) = *(v188 + 48);

  sub_10026D0B8(v55, v54, v57, v56, v41);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  v185 = v55;
  LODWORD(v194) = v41;
  sub_1002485A4(v55, v54, v57, v56, v41);
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *&v206 = swift_slowAlloc();
    *v60 = 136315906;
    v61 = _typeName(_:qualified:)();
    v63 = v58;
    v64 = sub_10002C9C8(v61, v62, &v206);

    *(v60 + 4) = v64;
    *(v60 + 12) = 2082;
    *(v60 + 14) = sub_10002C9C8(*(v47 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(v47 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &v206);
    *(v60 + 22) = 2082;
    *(v60 + 24) = sub_10002C9C8(v196, v198, &v206);
    *(v60 + 32) = 2082;
    v65 = *(v188 + 16);
    aBlock = *v188;
    v203 = v65;
    v204 = *(v188 + 32);
    v205 = *(v188 + 48);
    sub_1002856A4();
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = sub_10002C9C8(v66, v67, &v206);

    *(v60 + 34) = v68;
    _os_log_impl(&_mh_execute_header, v63, v59, "[%s]<%{public}s> interact<%{public}s> - interaction: %{public}s", v60, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v69 = v195;
  v70 = v197;
  v195 = *(v199 + 8);
  (v195)(v69, v197);
  v71 = v47;
  v72 = v185;
  v73 = v184;
  if (v194 != 3)
  {
LABEL_29:
    v183[1](v192, v200);
    (*(v193 + 8))(v191, v179);
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v206 = aBlock;
    v154._countAndFlagsBits = 91;
    v154._object = 0xE100000000000000;
    String.append(_:)(v154);
    v155._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v155);

    v156._countAndFlagsBits = 15453;
    v156._object = 0xE200000000000000;
    String.append(_:)(v156);
    String.append(_:)(*(v71 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier));
    v157._countAndFlagsBits = 0x617265746E69203ELL;
    v157._object = 0xEB000000003C7463;
    String.append(_:)(v157);
    v158._countAndFlagsBits = v196;
    v158._object = v198;
    String.append(_:)(v158);
    v159._countAndFlagsBits = 0xD00000000000001FLL;
    v159._object = 0x800000010043E250;
    String.append(_:)(v159);
    v160 = *(v188 + 16);
    aBlock = *v188;
    v203 = v160;
    v204 = *(v188 + 32);
    v205 = *(v188 + 48);
    sub_1002856A4();
    v161._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v161);

LABEL_31:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v75 = (*(*v71 + 176))(v74);
  v76 = *(v75 + 16);
  v77 = v186;
  if (!v76)
  {
LABEL_14:

    v80 = v178;
    v175(v178, v174, v70);
    v81 = v70;
    v82 = v198;

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v85 = 136315906;
      v86 = _typeName(_:qualified:)();
      v88 = v71;
      v89 = sub_10002C9C8(v86, v87, &aBlock);

      *(v85 + 4) = v89;
      v71 = v88;
      *(v85 + 12) = 2082;
      *(v85 + 14) = sub_10002C9C8(*(v88 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(v88 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &aBlock);
      *(v85 + 22) = 2082;
      v90 = v196;
      *(v85 + 24) = sub_10002C9C8(v196, v82, &aBlock);
      *(v85 + 32) = 2082;
      *(v85 + 34) = sub_10002C9C8(v72, v54, &aBlock);
      _os_log_impl(&_mh_execute_header, v83, v84, "[%s]<%{public}s> interact<%{public}s> - could not find source item matching identifier: %{public}s", v85, 0x2Au);
      swift_arrayDestroy();

      (v195)(v178, v197);
      v91 = v179;
    }

    else
    {

      (v195)(v80, v81);
      v91 = v179;
      v90 = v196;
    }

    v112 = type metadata accessor for InternalRoutingError();
    sub_100017F3C(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v113 = swift_allocError();
    (*(*(v112 - 8) + 104))(v114, enum case for InternalRoutingError.itemNotFound(_:), v112);
    v115 = MRDFastSyncGroupSessionState.rawValue.getter(v113, v72, v54);
    v117 = v116;
    v119 = v118;
    v121 = v120;
    v123 = v191;
    v122 = v192;
    sub_10028E52C(v115, v116, v118, v120, v191, v192, v71, v90, v82, v190, v189);

    sub_10023DCB0(v117, v119, v121);

    v124 = v183[1];
    v125 = v200;
    v124(v122, v200);
    v126 = *(v193 + 8);
    v126(v123, v91);
    v124(v182, v125);
    return (v126)(v181, v91);
  }

  v78 = 0;
  while (1)
  {
    if (v78 >= *(v75 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    sub_10001D948(v75 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v78, v73);
    v79 = *v73 == v72 && v54 == v73[1];
    if (v79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v78;
    sub_10001DA14(v73);
    if (v76 == v78)
    {
      goto LABEL_14;
    }
  }

  v92 = v171;
  sub_10001DFD4(v73, v171);
  v93 = v92;
  v94 = v177;
  sub_10001DFD4(v93, v177);
  v95 = v94 + *(v172 + 64);
  if ((HIBYTE(*(v95 + 16)) & 6 | (*(v95 + 16) >> 7) & 1) != 6 || (v96 = *v95, v97 = *(v96 + 32), (~v97 & 0x6FE) == 0))
  {
    v183[1](v192, v200);
    (*(v193 + 8))(v191, v179);
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v162._countAndFlagsBits = 91;
    v162._object = 0xE100000000000000;
    String.append(_:)(v162);
    v163._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v163);

    v164._countAndFlagsBits = 15453;
    v164._object = 0xE200000000000000;
    String.append(_:)(v164);
    String.append(_:)(*(v187 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier));
    v165._countAndFlagsBits = 0x617265746E69203ELL;
    v165._object = 0xEB000000003C7463;
    String.append(_:)(v165);
    v166._countAndFlagsBits = v196;
    v166._object = v198;
    String.append(_:)(v166);
    v167._object = 0x800000010043E890;
    v167._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v167);
    sub_100017F3C(&unk_100524C40, type metadata accessor for HostedRoutingItem);
    v168._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v168);

    v169._countAndFlagsBits = 0xD000000000000014;
    v169._object = 0x800000010043E8B0;
    String.append(_:)(v169);
    goto LABEL_31;
  }

  v98 = *(v96 + 16);
  v99 = *(v96 + 24);
  v100 = objc_opt_self();
  v188 = v98;
  v186 = v99;
  LODWORD(v194) = v97;
  sub_10001DAE0(v98, v99, v97);
  v101 = [v100 server];
  v102 = [v101 groupSessionServer];

  v103 = v198;
  v104 = v173;
  if (v102 && (v105 = [v102 sessionManager], v102, v105))
  {
    v201 = v183[1];
    v106 = v200;
    v201(v192, v200);
    v199 = *(v193 + 8);
    v107 = v179;
    (v199)(v191, v179);
    v108 = String._bridgeToObjectiveC()();
    v109 = swift_allocObject();
    swift_weakInit();
    v110 = swift_allocObject();
    v110[2] = v109;
    v110[3] = sub_100291830;
    v110[4] = v180;
    v110[5] = v72;
    v110[6] = v54;
    *&v204 = sub_100291988;
    *(&v204 + 1) = v110;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v203 = sub_1001BC53C;
    *(&v203 + 1) = &unk_1004C76D0;
    v111 = _Block_copy(&aBlock);

    [v105 launchApplicationForDiscoveredSessionIdentifier:v108 foreground:0 completion:v111];
    _Block_release(v111);

    sub_100248970(v188, v186, v194);
    v201(v182, v106);
    (v199)(v181, v107);
  }

  else
  {
    v175(v104, v174, v70);

    v128 = v187;

    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      *&aBlock = v184;
      *v131 = 136315650;
      v132 = _typeName(_:qualified:)();
      v134 = v103;
      v135 = sub_10002C9C8(v132, v133, &aBlock);

      *(v131 + 4) = v135;
      *(v131 + 12) = 2082;
      *(v131 + 14) = sub_10002C9C8(*(v128 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(v128 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &aBlock);
      *(v131 + 22) = 2082;
      v136 = v196;
      *(v131 + 24) = sub_10002C9C8(v196, v134, &aBlock);
      _os_log_impl(&_mh_execute_header, v129, v130, "[%s]<%{public}s> interact<%{public}s> - group session manager is missing", v131, 0x20u);
      swift_arrayDestroy();

      (v195)(v173, v197);
      v137 = v179;
    }

    else
    {

      (v195)(v104, v70);
      v137 = v179;
      v136 = v196;
    }

    v138 = v190;
    v139 = type metadata accessor for InternalRoutingError();
    sub_100017F3C(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v140 = swift_allocError();
    (*(*(v139 - 8) + 104))(v141, enum case for InternalRoutingError.unsupportedOperation(_:), v139);
    v142 = MRDFastSyncGroupSessionState.rawValue.getter(v140, v72, v54);
    v144 = v143;
    v146 = v145;
    v148 = v147;
    v150 = v191;
    v149 = v192;
    sub_10028E52C(v142, v143, v145, v147, v191, v192, v128, v136, v198, v138, v189);

    sub_10023DCB0(v144, v146, v148);

    sub_100248970(v188, v186, v194);
    v151 = v183[1];
    v152 = v200;
    v151(v149, v200);
    v153 = *(v193 + 8);
    v153(v150, v137);
    v151(v182, v152);
    v153(v181, v137);
  }

  return sub_10001DA14(v177);
}