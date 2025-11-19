uint64_t sub_2146637D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1779))
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

uint64_t sub_214663818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1768) = 0;
    *(result + 248) = 0u;
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
    *(result + 1778) = 0;
    *(result + 1776) = 0;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1779) = 1;
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

    *(result + 1779) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214663A54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 32))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214663AB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_214663B18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 2945))
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

uint64_t sub_214663B60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 2936) = 0;
    *(result + 248) = 0u;
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
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2944) = 0;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 2945) = 1;
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

    *(result + 2945) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CSDMConversationParticipantDidLeaveContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 6))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 5);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 5);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for CSDMConversationParticipantDidLeaveContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 4) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 5) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_214663F78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214663FC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21466403C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 48))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214664098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_214664104()
{
  result = qword_27C917748;
  if (!qword_27C917748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917748);
  }

  return result;
}

unint64_t sub_214664158()
{
  result = qword_27C917750;
  if (!qword_27C917750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917750);
  }

  return result;
}

unint64_t sub_2146641AC()
{
  result = qword_27C917758;
  if (!qword_27C917758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917758);
  }

  return result;
}

unint64_t sub_214664200()
{
  result = qword_27C917760;
  if (!qword_27C917760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917760);
  }

  return result;
}

unint64_t sub_214664254()
{
  result = qword_27C917768;
  if (!qword_27C917768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917768);
  }

  return result;
}

unint64_t sub_2146642A8()
{
  result = qword_27C917770;
  if (!qword_27C917770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917770);
  }

  return result;
}

uint64_t sub_214664348()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214664378(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t type metadata accessor for MessagesAppCustomAcknowledgement()
{
  result = qword_280B2E870;
  if (!qword_280B2E870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2146644F4()
{
  v1 = (v0 + *(type metadata accessor for MessagesAppCustomAcknowledgement() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_214664534(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessagesAppCustomAcknowledgement() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_21466469C()
{
  v1 = (v0 + *(type metadata accessor for MessagesAppCustomAcknowledgement() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_2146646C8(uint64_t a1, char a2)
{
  result = type metadata accessor for MessagesAppCustomAcknowledgement();
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_214664758()
{
  v1 = (v0 + *(type metadata accessor for MessagesAppCustomAcknowledgement() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_214664798(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessagesAppCustomAcknowledgement() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_214664828(uint64_t a1)
{
  *(a1 + 8) = sub_214664890(&qword_27C90CF08);
  result = sub_214664890(&qword_27C90CED8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214664890(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MessagesAppCustomAcknowledgement();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2146648FC()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_214664A0C(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
    if (v1 <= 0x3F)
    {
      sub_214664A0C(319, &qword_280B30B80, MEMORY[0x277CC9260]);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B34BC8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_214664A0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_214664A94(uint64_t a1)
{
  *(a1 + 8) = sub_214664B48(&qword_27C917778);
  result = sub_214664B48(&qword_27C917780);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MarkUnreadRequest()
{
  result = qword_280B30510;
  if (!qword_280B30510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214664B48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MarkUnreadRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_214664BB8()
{
  v116 = type metadata accessor for LinkAttribute(0);
  v1 = *(*(v116 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v116);
  v112 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v115 = &v103 - v5;
  MEMORY[0x28223BE20](v4);
  v114 = &v103 - v6;
  v7 = *v0;
  v8 = v0[1];
  v9 = v0[2];
  v10 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v11 = sub_2146D9588();
  v12 = [v10 initWithString_];

  v13 = *(v7 + 16);
  if (v13)
  {
    v14 = v7 + 32;
    v104 = @"__kIMTextStrikethroughAttributeName";
    v105 = @"__kIMTextUnderlineAttributeName";
    v106 = @"__kIMTextItalicAttributeName";
    v107 = @"__kIMTextBoldAttributeName";
    v108 = @"__kIMTextEffectAttributeName";
    v109 = @"__kIMLinkIsRichLinkAttributeName";
    v110 = @"__kIMLinkAttributeName";
    v111 = @"__kIMMentionConfirmedMention";
    v113 = @"__kIMBreadcrumbTextMarkerAttributeName";
    v117 = @"__kIMBreadcrumbTextOptionFlags";
    v118 = @"__kIMMessagePartAttributeName";
    v119 = @"__kIMBaseWritingDirectionAttributeName";
    v103 = xmmword_2146EA710;
    do
    {
      sub_214053840(v14, v140);
      v19 = v141;
      v20 = v142;
      __swift_project_boxed_opaque_existential_1(v140, v141);
      (*(v20 + 16))(v19, v20);
      sub_2146D9758();
      sub_2146D9758();
      v121 = sub_2146D9768();
      v21 = sub_2146D9768();
      sub_214053840(v140, v139);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905210, &qword_2146F1900);
      if (swift_dynamicCast())
      {
        memcpy(v124, v138, 0x1E1uLL);
        memcpy(v125, &v138[128], 0x139uLL);
        v22 = sub_214321D58(v125);
        v23 = MBDIMFileTransferAttributeName;
        if (v22 == 3)
        {
          sub_21438F464(v125);
          v23 = MBDIMLivePhotoAttributeName;
        }

        v15 = *v23;
        memcpy(v123, v124, sizeof(v123));
        v16 = objc_allocWithZone(type metadata accessor for _ObjCFileTransferAttributeWrapper());
        v17 = v15;
        sub_21431D360(v124, &v122);
        v18 = sub_2146666F4(v123);
        [v12 addAttribute:v17 value:v18 range:{v121, v21}];

        sub_2142E44CC(v124);
        goto LABEL_4;
      }

      if (swift_dynamicCast())
      {
        v24 = *v138;
        *&v120 = v14;
        v25 = v13;
        v26 = v9;
        v27 = v8;
        v28 = v21;
        v29 = v12;
        v30 = *&v138[8];
        v31 = v138[16];
        v32 = type metadata accessor for _ObjCBaseWritingDirectionAttributeWrapper();
        v33 = objc_allocWithZone(v32);
        v34 = &v33[OBJC_IVAR___BlastDoorBaseWritingDirectionAttribute_baseWritingDirectionAttribute];
        *v34 = v24;
        *(v34 + 1) = v30;
        v12 = v29;
        v34[16] = v31;
        v126.receiver = v33;
        v126.super_class = v32;
        v35 = v119;
        v36 = objc_msgSendSuper2(&v126, sel_init, v103, *(&v103 + 1));
      }

      else
      {
        if (swift_dynamicCast())
        {
          v120 = *v138;
          v39 = *&v138[16];
          v40 = type metadata accessor for _ObjCMessagePartAttributeWrapper();
          v41 = objc_allocWithZone(v40);
          v42 = &v41[OBJC_IVAR___BlastDoorMessagePartAttribute_messagePartAttribute];
          *v42 = v120;
          *(v42 + 2) = v39;
          v127.receiver = v41;
          v127.super_class = v40;
          v35 = v118;
          v43 = objc_msgSendSuper2(&v127, sel_init, v103, *(&v103 + 1));
LABEL_19:
          v37 = v43;
          [v12 addAttribute:v35 value:v43 range:{v121, v21}];
          goto LABEL_20;
        }

        if (swift_dynamicCast())
        {
          v120 = *v138;
          v44 = *&v138[16];
          v45 = type metadata accessor for _ObjCBreadcrumbTextOptionFlagsAttributeWrapper();
          v46 = objc_allocWithZone(v45);
          v47 = &v46[OBJC_IVAR___BlastDoorBreadcrumbTextOptionFlagsAttribute_breadcrumbTextOptionFlagsAttribute];
          *v47 = v120;
          *(v47 + 2) = v44;
          v128.receiver = v46;
          v128.super_class = v45;
          v35 = v117;
          v43 = objc_msgSendSuper2(&v128, sel_init, v103, *(&v103 + 1));
          goto LABEL_19;
        }

        if (swift_dynamicCast())
        {
          v120 = *v138;
          v48 = *&v138[16];
          v49 = *&v138[24];
          v50 = type metadata accessor for _ObjCBreadcrumbTextMarkerAttributeWrapper();
          v51 = objc_allocWithZone(v50);
          v52 = &v51[OBJC_IVAR___BlastDoorBreadcrumbTextMarkerAttribute_breadcrumbTextMarkerAttribute];
          *v52 = v120;
          *(v52 + 2) = v48;
          *(v52 + 3) = v49;
          v129.receiver = v51;
          v129.super_class = v50;
          v35 = v113;
          v43 = objc_msgSendSuper2(&v129, sel_init, v103, *(&v103 + 1));
          goto LABEL_19;
        }

        if (swift_dynamicCast())
        {
          v120 = *v138;
          v53 = *&v138[16];
          v54 = *&v138[24];
          v55 = type metadata accessor for _ObjCMentionAttributeWrapper();
          v56 = objc_allocWithZone(v55);
          v57 = &v56[OBJC_IVAR___BlastDoorMentionAttribute_mentionAttribute];
          *v57 = v120;
          *(v57 + 2) = v53;
          *(v57 + 3) = v54;
          v130.receiver = v56;
          v130.super_class = v55;
          v35 = v111;
          v43 = objc_msgSendSuper2(&v130, sel_init, v103, *(&v103 + 1));
          goto LABEL_19;
        }

        v58 = v114;
        if (swift_dynamicCast())
        {
          *&v120 = v12;
          v59 = v115;
          sub_214667224(v58, v115);
          v60 = v112;
          sub_2146672AC(v59, v112, type metadata accessor for LinkAttribute);
          v61 = type metadata accessor for _ObjCLinkAttributeWrapper(0);
          v62 = objc_allocWithZone(v61);
          sub_2146672AC(v60, v62 + OBJC_IVAR___BlastDoorLinkAttribute_linkAttribute[0], type metadata accessor for LinkAttribute);
          v131.receiver = v62;
          v131.super_class = v61;
          v63 = v110;
          v64 = objc_msgSendSuper2(&v131, sel_init);
          sub_214667314(v60, type metadata accessor for LinkAttribute);
          [v120 addAttribute:v63 value:v64 range:{v121, v21}];

          v12 = v120;
          sub_214667314(v115, type metadata accessor for LinkAttribute);
          goto LABEL_4;
        }

        if (swift_dynamicCast())
        {
          v65 = *v138;
          v66 = *&v138[8];
          *&v120 = v14;
          v25 = v13;
          v26 = v9;
          v27 = v8;
          v28 = v21;
          v29 = v12;
          v67 = v138[16];
          IsRichLinkAttributeWrapper = type metadata accessor for _ObjCLinkIsRichLinkAttributeWrapper();
          v69 = objc_allocWithZone(IsRichLinkAttributeWrapper);
          v70 = &v69[OBJC_IVAR___BlastDoorLinkIsRichLinkAttribute_linkIsRichLinkAttribute];
          *v70 = v65;
          *(v70 + 1) = v66;
          v70[16] = v67;
          v12 = v29;
          v132.receiver = v69;
          v132.super_class = IsRichLinkAttributeWrapper;
          v35 = v109;
          v36 = objc_msgSendSuper2(&v132, sel_init, v103, *(&v103 + 1));
        }

        else
        {
          if (!swift_dynamicCast())
          {
            if (swift_dynamicCast())
            {
              v77 = *v138;
              v78 = *&v138[8];
              v79 = type metadata accessor for _ObjCTextBoldAttributeWrapper();
              v80 = objc_allocWithZone(v79);
              v81 = &v80[OBJC_IVAR___BlastDoorTextBoldAttribute_textBoldAttribute];
              *v81 = v77;
              *(v81 + 1) = v78;
              v134.receiver = v80;
              v134.super_class = v79;
              v35 = v107;
              v43 = objc_msgSendSuper2(&v134, sel_init, v103, *(&v103 + 1));
            }

            else if (swift_dynamicCast())
            {
              v82 = *v138;
              v83 = *&v138[8];
              v84 = type metadata accessor for _ObjCTextItalicAttributeWrapper();
              v85 = objc_allocWithZone(v84);
              v86 = &v85[OBJC_IVAR___BlastDoorTextItalicAttribute_textItalicAttribute];
              *v86 = v82;
              *(v86 + 1) = v83;
              v135.receiver = v85;
              v135.super_class = v84;
              v35 = v106;
              v43 = objc_msgSendSuper2(&v135, sel_init, v103, *(&v103 + 1));
            }

            else if (swift_dynamicCast())
            {
              v87 = *v138;
              v88 = *&v138[8];
              v89 = type metadata accessor for _ObjCTextUnderlineAttributeWrapper();
              v90 = objc_allocWithZone(v89);
              v91 = &v90[OBJC_IVAR___BlastDoorTextUnderlineAttribute_textUnderlineAttribute];
              *v91 = v87;
              *(v91 + 1) = v88;
              v136.receiver = v90;
              v136.super_class = v89;
              v35 = v105;
              v43 = objc_msgSendSuper2(&v136, sel_init, v103, *(&v103 + 1));
            }

            else
            {
              if (!swift_dynamicCast())
              {
                if (qword_27C902E58 != -1)
                {
                  swift_once();
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
                v97 = swift_allocObject();
                *(v97 + 16) = v103;
                sub_214053840(v140, v138);
                sub_21466714C(v138, v123);
                if (*&v123[24])
                {
                  sub_213FB77C8(v123, v124);
                  sub_214053840(v124, v123);
                  v98 = sub_2146D9618();
                  v100 = v99;
                  __swift_destroy_boxed_opaque_existential_1(v124);
                  sub_2146671BC(v138);
                }

                else
                {
                  sub_2146671BC(v123);
                  sub_2146671BC(v138);
                  v100 = 0xE300000000000000;
                  v98 = 7104878;
                }

                *(v97 + 56) = MEMORY[0x277D837D0];
                *(v97 + 64) = sub_213FB2DA0();
                *(v97 + 32) = v98;
                *(v97 + 40) = v100;
                sub_2146D9BC8();
                sub_2146D91C8();

                goto LABEL_4;
              }

              v92 = *v138;
              v93 = *&v138[8];
              v94 = type metadata accessor for _ObjCTextStrikethroughAttributeWrapper();
              v95 = objc_allocWithZone(v94);
              v96 = &v95[OBJC_IVAR___BlastDoorTextStrikethroughAttribute_textStrikethroughAttribute];
              *v96 = v92;
              *(v96 + 1) = v93;
              v137.receiver = v95;
              v137.super_class = v94;
              v35 = v104;
              v43 = objc_msgSendSuper2(&v137, sel_init, v103, *(&v103 + 1));
            }

            goto LABEL_19;
          }

          v71 = *v138;
          v72 = *&v138[8];
          *&v120 = v14;
          v25 = v13;
          v26 = v9;
          v27 = v8;
          v28 = v21;
          v29 = v12;
          v73 = v138[16];
          v74 = type metadata accessor for _ObjCTextEffectAttributeWrapper();
          v75 = objc_allocWithZone(v74);
          v76 = &v75[OBJC_IVAR___BlastDoorTextEffectAttribute_textEffectAttribute];
          *v76 = v71;
          *(v76 + 1) = v72;
          v76[16] = v73;
          v12 = v29;
          v133.receiver = v75;
          v133.super_class = v74;
          v35 = v108;
          v36 = objc_msgSendSuper2(&v133, sel_init, v103, *(&v103 + 1));
        }
      }

      v37 = v36;
      v38 = v28;
      v8 = v27;
      v9 = v26;
      v13 = v25;
      v14 = v120;
      [v29 addAttribute:v35 value:v36 range:{v121, v38}];
LABEL_20:

LABEL_4:
      __swift_destroy_boxed_opaque_existential_1(v139);
      __swift_destroy_boxed_opaque_existential_1(v140);
      v14 += 40;
      --v13;
    }

    while (v13);
  }

  v101 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

  return v101;
}

uint64_t sub_214665824()
{
  v1 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachments;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2146658E0(uint64_t a1)
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachments;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_214665938(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachments;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

void *sub_214665A4C()
{
  v1 = OBJC_IVAR___BlastDoorFileTransferAttribute_imageInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_214665AA4(uint64_t a1)
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_imageInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_214665BA8()
{
  v1 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachmentSubtype;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_214665C5C(uint64_t a1)
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachmentSubtype;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_214665CB4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachmentSubtype;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_214665DF0()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorFileTransferAttribute_name);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_214665EB4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___BlastDoorFileTransferAttribute_name);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_214665F14(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___BlastDoorFileTransferAttribute_name);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_214666028()
{
  v1 = OBJC_IVAR___BlastDoorFileTransferAttribute_datasize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2146660C0(uint64_t a1)
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_datasize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_21466620C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_2146D9588();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2146662A0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_214666300(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_2146D95B8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_214666388(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_2146663E4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

void *sub_2146664F8()
{
  v1 = OBJC_IVAR___BlastDoorFileTransferAttribute_legacyAnimoji;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_214666550(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_2146665AC(uint64_t a1)
{
  v3 = OBJC_IVAR___BlastDoorFileTransferAttribute_legacyAnimoji;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_214666604(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id sub_2146666F4(const void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FileTransferAttribute.AttachmentInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v55, a1, 0x1E1uLL);
  v9 = OBJC_IVAR___BlastDoorFileTransferAttribute_imageInfo;
  *&v2[OBJC_IVAR___BlastDoorFileTransferAttribute_imageInfo] = 0;
  v10 = &v2[OBJC_IVAR___BlastDoorFileTransferAttribute_utiType];
  *v10 = 0;
  *(v10 + 1) = 0;
  v47 = v10;
  v11 = &v2[OBJC_IVAR___BlastDoorFileTransferAttribute_mimeType];
  *v11 = 0;
  *(v11 + 1) = 0;
  v48 = v11;
  v12 = OBJC_IVAR___BlastDoorFileTransferAttribute_legacyAnimoji;
  *&v2[OBJC_IVAR___BlastDoorFileTransferAttribute_legacyAnimoji] = 0;
  v13 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  v14 = *(v55[2] + 16);
  if (v14)
  {
    v45 = v9;
    v46 = v12;
    v15 = v55[2] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    v44[1] = v55[2];

    do
    {
      sub_2146672AC(v15, v8, type metadata accessor for FileTransferAttribute.AttachmentInfo);
      v17 = type metadata accessor for _ObjCFileTransferAttribute_AttachmentInfoWrapper(0);
      v18 = objc_allocWithZone(v17);
      sub_2146672AC(v8, v18 + OBJC_IVAR___BlastDoorFileTransferAttribute_AttachmentInfo_fileTransferAttribute_AttachmentInfo, type metadata accessor for FileTransferAttribute.AttachmentInfo);
      v53.receiver = v18;
      v53.super_class = v17;
      objc_msgSendSuper2(&v53, sel_init);
      v19 = sub_214667314(v8, type metadata accessor for FileTransferAttribute.AttachmentInfo);
      MEMORY[0x2160547D0](v19);
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2146D9938();
      }

      sub_2146D9958();
      v15 += v16;
      --v14;
    }

    while (v14);
    v13 = v54;

    v9 = v45;
    v12 = v46;
  }

  *&v2[OBJC_IVAR___BlastDoorFileTransferAttribute_attachments] = v13;
  if ((v55[5] & 1) == 0)
  {
    v21 = v55[4];
    v22 = v55[3];
    v23 = type metadata accessor for _ObjCFileTransferAttribute_ImageInfoWrapper();
    v24 = objc_allocWithZone(v23);
    v25 = &v24[OBJC_IVAR___BlastDoorFileTransferAttribute_ImageInfo_fileTransferAttribute_ImageInfo];
    *v25 = v22;
    *(v25 + 1) = v21;
    v49.receiver = v24;
    v49.super_class = v23;
    v26 = objc_msgSendSuper2(&v49, sel_init);
    swift_beginAccess();
    v27 = *&v2[v9];
    *&v2[v9] = v26;
  }

  v28 = type metadata accessor for _ObjCEnumFileTransferAttributeAttachmentSubtypeWrapper();
  v29 = objc_allocWithZone(v28);
  memcpy(&v29[OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype], &v55[16], 0x139uLL);
  sub_21431D304(&v55[16], &v52);
  v51.receiver = v29;
  v51.super_class = v28;
  v30 = 0;
  *&v2[OBJC_IVAR___BlastDoorFileTransferAttribute_attachmentSubtype] = objc_msgSendSuper2(&v51, sel_init);
  if ((v55[15] & 1) == 0)
  {
    v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v31 = v55[59];
  if (!v55[59] || (v32 = &v2[OBJC_IVAR___BlastDoorFileTransferAttribute_name], *v32 = v55[58], *(v32 + 1) = v31, v33 = v55[10], *&v2[OBJC_IVAR___BlastDoorFileTransferAttribute_datasize] = v55[6], v33 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v34 = v55[9];
    v35 = v47;
    swift_beginAccess();
    v36 = v35[1];
    *v35 = v34;
    v35[1] = v33;

    sub_213FDC9D0(v34, v33);

    v37 = v55[12];
    v38 = v55[13];
    v39 = v48;
    swift_beginAccess();
    v40 = *(v39 + 1);
    *v39 = v37;
    *(v39 + 1) = v38;

    sub_2142E44CC(v55);
    swift_beginAccess();
    v41 = *&v2[v12];
    *&v2[v12] = v30;

    v42 = type metadata accessor for _ObjCFileTransferAttributeWrapper();
    v50.receiver = v2;
    v50.super_class = v42;
    return objc_msgSendSuper2(&v50, sel_init);
  }

  return result;
}

uint64_t sub_214666BC4()
{
  v1 = v0;
  sub_2146D9EF8();
  MEMORY[0x2160545D0](0xD000000000000024, 0x80000002147A63C0);
  v2 = (v0 + OBJC_IVAR___BlastDoorFileTransferAttribute_name);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  MEMORY[0x2160545D0](v3, v4);

  MEMORY[0x2160545D0](0x7A69736174616420, 0xEA00000000003D65);
  v5 = OBJC_IVAR___BlastDoorFileTransferAttribute_datasize;
  swift_beginAccess();
  v29 = *(v1 + v5);
  v6 = sub_2146DA428();
  MEMORY[0x2160545D0](v6);

  MEMORY[0x2160545D0](0x6570795469747520, 0xE90000000000003DLL);
  v7 = (v1 + OBJC_IVAR___BlastDoorFileTransferAttribute_utiType);
  swift_beginAccess();
  if (v7[1])
  {
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7104878;
  }

  MEMORY[0x2160545D0](v8, v9);

  MEMORY[0x2160545D0](0x707954656D696D20, 0xEA00000000003D65);
  v10 = (v1 + OBJC_IVAR___BlastDoorFileTransferAttribute_mimeType);
  swift_beginAccess();
  v27 = *v10;
  v28 = v10[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v11 = sub_2146D9608();
  MEMORY[0x2160545D0](v11);

  MEMORY[0x2160545D0](0x4179636167656C20, 0xEF3D696A6F6D696ELL);
  v12 = OBJC_IVAR___BlastDoorFileTransferAttribute_legacyAnimoji;
  swift_beginAccess();
  v13 = *(v1 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9177D0, qword_214778630);
  v14 = sub_2146D9608();
  MEMORY[0x2160545D0](v14);

  MEMORY[0x2160545D0](0xD000000000000013, 0x80000002147A63F0);
  v15 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachmentSubtype;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = [v16 description];
  v18 = sub_2146D95B8();
  v20 = v19;

  MEMORY[0x2160545D0](v18, v20);

  MEMORY[0x2160545D0](0xD000000000000013, 0x80000002147A6410);
  v21 = OBJC_IVAR___BlastDoorFileTransferAttribute_attachments;
  swift_beginAccess();
  v22 = *(v1 + v21);
  if (v22 >> 62)
  {
    if (v22 < 0)
    {
      v26 = *(v1 + v21);
    }

    sub_2146DA028();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = sub_2146DA428();
  MEMORY[0x2160545D0](v24);

  return 0;
}

id sub_214666F7C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_214667010()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _ObjCFileTransferAttributeWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2146670EC()
{
  memcpy(__dst, v0, 0x1E1uLL);
  objc_allocWithZone(type metadata accessor for _ObjCFileTransferAttributeWrapper());
  sub_21431D360(__dst, &v2);
  return sub_2146666F4(v0);
}

uint64_t sub_21466714C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917788, &unk_214778620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2146671BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917788, &unk_214778620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214667224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkAttribute(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2146672AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214667314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_214667374()
{
  memcpy(__dst, v0, 0x1E1uLL);
  memcpy(v4, v0, 0x1E1uLL);
  v1 = objc_allocWithZone(type metadata accessor for _ObjCFileTransferAttributeWrapper());
  sub_21431D360(__dst, v3);
  return sub_2146666F4(v4);
}

uint64_t keypath_get_10Tm_0@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

id keypath_get_2Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

unint64_t sub_2146679F4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916610, &qword_214779300);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2147786A0;
  v5 = sub_2142E43D0();
  *(v4 + 32) = &type metadata for BaseWritingDirectionAttribute;
  *(v4 + 40) = v5;
  v6 = sub_2142E4328();
  *(v4 + 48) = &type metadata for MessagePartAttribute;
  *(v4 + 56) = v6;
  v7 = sub_2142E3A1C();
  *(v4 + 64) = &type metadata for FileTransferAttribute;
  *(v4 + 72) = v7;
  v8 = sub_2142E4280();
  *(v4 + 80) = &type metadata for BreadcrumbTextOptionFlagsAttribute;
  *(v4 + 88) = v8;
  v9 = sub_2142E41D8();
  *(v4 + 96) = &type metadata for BreadcrumbTextMarkerAttribute;
  *(v4 + 104) = v9;
  v10 = sub_2142E4130();
  *(v4 + 112) = &type metadata for MentionAttribute;
  *(v4 + 120) = v10;
  v11 = type metadata accessor for LinkAttribute(0);
  v12 = sub_21466EBC0(&qword_280B309B0, type metadata accessor for LinkAttribute);
  *(v4 + 128) = v11;
  *(v4 + 136) = v12;
  v13 = sub_2142E4088();
  *(v4 + 144) = &type metadata for TextEffectAttribute;
  *(v4 + 152) = v13;
  v14 = sub_2142E3FE0();
  *(v4 + 160) = &type metadata for TextBoldAttribute;
  *(v4 + 168) = v14;
  v15 = sub_2142E3F38();
  *(v4 + 176) = &type metadata for TextItalicAttribute;
  *(v4 + 184) = v15;
  v16 = sub_2142E3E90();
  *(v4 + 192) = &type metadata for TextUnderlineAttribute;
  *(v4 + 200) = v16;
  v17 = sub_2142E3DE8();
  *(v4 + 208) = &type metadata for TextStrikethroughAttribute;
  *(v4 + 216) = v17;
  v18 = sub_2142E3D40();
  *(v4 + 224) = &type metadata for LinkIsRichLinkAttribute;
  *(v4 + 232) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C70, &qword_2147319F0);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v19 + 16) = sub_21466F574;
  *(v19 + 24) = v20;
  *(v3 + 32) = v19;
  v21 = sub_2142E037C(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904100, &unk_2146EAA50);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v22 + 16) = sub_2145ED9C8;
  *(v22 + 24) = v23;
  *(inited + 32) = v22;
  return sub_214043C30(inited, a1);
}

uint64_t sub_214667C6C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return sub_2142E5A68(v3);
}

__n128 sub_214667CD0(uint64_t a1)
{
  v10 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_214032578(v6);
  result = v10;
  *(v1 + 32) = *a1;
  *(v1 + 48) = v10;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  return result;
}

uint64_t sub_214667D50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_214667D9C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[5].n128_u64[1];
  v6 = v1[6].n128_u64[0];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u8[8] = v4;
  return result;
}

uint64_t sub_214667DF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  if (v2 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = v1[7];
    v4 = v1[8];
    *a1 = v2;
    a1[1] = v3;
    a1[2] = v4;

    return sub_214031CA0(v2);
  }

  return result;
}

uint64_t sub_214667E74()
{
  if (*(v0 + 96))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214667F18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 496);
  v3 = *(v1 + 504);
  v4 = *(v1 + 512);
  v5 = *(v1 + 520);
  *a1 = *(v1 + 488);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214667F70(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 496);
  v7 = *(v1 + 504);
  v8 = *(v1 + 512);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 488) = *a1;
  *(v1 + 504) = v3;
  *(v1 + 512) = v4;
  *(v1 + 520) = v5;
  return result;
}

uint64_t sub_214667FDC()
{
  if (*(v0 + 512) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 504);

    return v1;
  }

  return result;
}

uint64_t sub_21466805C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 192);
  v4 = *(v1 + 200);
  *a1 = *(v1 + 176);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2146680A8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[11].n128_u64[1];
  v6 = v1[12].n128_u64[0];

  result = *a1;
  v1[11] = *a1;
  v1[12].n128_u64[0] = v3;
  v1[12].n128_u8[8] = v4;
  return result;
}

uint64_t sub_214668100()
{
  if (*(v0 + 192))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t AudioMessage.$participantDestinationIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 AudioMessage.$participantDestinationIdentifiers.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);

  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

uint64_t AudioMessage.participantDestinationIdentifiers.getter()
{
  if (*(v0 + 40))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t TextMessage.$threadIdentifierGUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextMessage(0) + 28));
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

__n128 TextMessage.$threadIdentifierGUID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for TextMessage(0) + 28));
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

uint64_t TextMessage.$threadOriginatorFallbackHash.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextMessage(0) + 32));
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

__n128 TextMessage.$threadOriginatorFallbackHash.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for TextMessage(0) + 32));
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

uint64_t TextMessage.$expressiveSendStyleIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextMessage(0) + 36));
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

__n128 TextMessage.$expressiveSendStyleIdentifier.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for TextMessage(0) + 36));
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

uint64_t TextMessage.$groupID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextMessage(0) + 40));
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

__n128 TextMessage.$groupID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for TextMessage(0) + 40));
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

uint64_t TextMessage.$lastPublisherOfOffGridStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextMessage(0) + 92));
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

__n128 TextMessage.$lastPublisherOfOffGridStatus.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for TextMessage(0) + 92));
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

uint64_t TextMessage.threadIdentifierGUID.getter()
{
  v1 = v0 + *(type metadata accessor for TextMessage(0) + 28);
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

uint64_t TextMessage.threadOriginatorFallbackHash.getter()
{
  v1 = v0 + *(type metadata accessor for TextMessage(0) + 32);
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

uint64_t TextMessage.expressiveSendStyleIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for TextMessage(0) + 36);
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

uint64_t TextMessage.groupID.getter()
{
  v1 = v0 + *(type metadata accessor for TextMessage(0) + 40);
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

uint64_t TextMessage.lastPublisherOfOffGridStatus.getter()
{
  v1 = v0 + *(type metadata accessor for TextMessage(0) + 92);
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

uint64_t sub_214668AEC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214668B38(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

__n128 sub_214668B94(uint64_t a1)
{
  sub_213FB2DF4(v1 + 40, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 232) = *(a1 + 192);
  *(v1 + 248) = v3;
  *(v1 + 264) = *(a1 + 224);
  v4 = *(a1 + 144);
  *(v1 + 168) = *(a1 + 128);
  *(v1 + 184) = v4;
  v5 = *(a1 + 176);
  *(v1 + 200) = *(a1 + 160);
  *(v1 + 216) = v5;
  v6 = *(a1 + 80);
  *(v1 + 104) = *(a1 + 64);
  *(v1 + 120) = v6;
  v7 = *(a1 + 112);
  *(v1 + 136) = *(a1 + 96);
  *(v1 + 152) = v7;
  v8 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 72) = result;
  *(v1 + 280) = *(a1 + 240);
  *(v1 + 88) = v10;
  return result;
}

void *sub_214668C3C(const void *a1)
{
  sub_213FB2DF4(v1 + 40, &qword_27C905500, &qword_2146F2BE0);

  return memcpy((v1 + 40), a1, 0x1B8uLL);
}

uint64_t sub_214668C90()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t TextMessage.MessageSummaryInfo.$sourceApplicationID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 TextMessage.MessageSummaryInfo.$sourceApplicationID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_u64[1];
  v7 = v1[2].n128_i64[0];
  v8 = v1[2].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  v1[3].n128_u8[0] = v5;
  return result;
}

uint64_t TextMessage.MessageSummaryInfo.$associatedBalloonBundleID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 TextMessage.MessageSummaryInfo.$associatedBalloonBundleID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t TextMessage.MessageSummaryInfo.sourceApplicationID.getter()
{
  if (*(v0 + 40) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 32);

    return v1;
  }

  return result;
}

uint64_t TextMessage.MessageSummaryInfo.associatedBalloonBundleID.getter()
{
  if (*(v0 + 80) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 72);

    return v1;
  }

  return result;
}

uint64_t sub_214669038@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1 + 40, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214669100()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9177E8, &qword_214779308);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_2146DA008();
  __swift_allocate_value_buffer(v4, qword_27CA19EC8);
  v5 = __swift_project_value_buffer(v4, qword_27CA19EC8);
  sub_2146D9FF8();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_214669230()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214669260(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2146692B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2146692E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214669340(uint64_t *a1)
{
  v1 = *a1;
  sub_21403220C(*a1, a1[1], a1[2], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_214031CE0(v1);
}

uint64_t (*sub_21466941C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = v1[6];
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = v1[7];
    v5 = v1[8];
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    sub_214031CA0(v3);
    return sub_2145ED1FC;
  }

  return result;
}

void (*sub_2146694BC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;

  sub_2142E5A68(v6);
  return sub_2145ED50C;
}

uint64_t sub_214669568(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v10 = *(v2 + 104);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 96);

    *(v2 + 96) = a1;
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

uint64_t (*sub_2146696A4(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 96);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_214394968;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_21466973C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_214394C54;
}

uint64_t sub_2146697DC(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t sub_214669860(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
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

uint64_t (*sub_2146699A8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214669A44(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

void (*sub_214669ADC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1F8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v3 + 248;
  *(v3 + 496) = v1;
  result = sub_213FB2E54(v1 + 40, v3 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v4 + 272))
  {
    v7 = *(v5 + 208);
    *(v4 + 192) = *(v5 + 192);
    *(v4 + 208) = v7;
    *(v4 + 224) = *(v5 + 224);
    *(v4 + 240) = *(v5 + 240);
    v8 = *(v5 + 144);
    *(v4 + 128) = *(v5 + 128);
    *(v4 + 144) = v8;
    v9 = *(v5 + 176);
    *(v4 + 160) = *(v5 + 160);
    *(v4 + 176) = v9;
    v10 = *(v5 + 80);
    *(v4 + 64) = *(v5 + 64);
    *(v4 + 80) = v10;
    v11 = *(v5 + 112);
    *(v4 + 96) = *(v5 + 96);
    *(v4 + 112) = v11;
    v12 = *(v5 + 16);
    *v4 = *v5;
    *(v4 + 16) = v12;
    v13 = *(v5 + 48);
    *(v4 + 32) = *(v5 + 32);
    *(v4 + 48) = v13;
    return sub_214487064;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_214669BC0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1 + 40, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_214487258;
}

uint64_t sub_214669CF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 512);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 504);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214669D6C(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214669E1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 488);
  v7 = *(v2 + 496);
  v11 = *(v3 + 520);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 504), *(v3 + 512));

    *(v3 + 504) = a1;
    *(v3 + 512) = a2;
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

void (*sub_214669F60(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 504);
  *(v3 + 24) = v5;
  v6 = *(v1 + 512);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21466A038;
  }

  return result;
}

void sub_21466A038(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 488);
    v11 = *(v3 + 496);
    v16 = *(v3 + 520);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 504) = v5;
      *(v12 + 512) = v4;
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
  v15 = v4;
  v7 = *(v3 + 488);
  v6 = *(v3 + 496);
  v16 = *(v3 + 520);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 504) = v5;
  *(v8 + 512) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_21466A208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 496);
  v3 = *(a1 + 504);
  v4 = *(a1 + 512);
  v5 = *(a1 + 520);
  *a2 = *(a1 + 488);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21466A25C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 496);
  v9 = *(a2 + 504);
  v10 = *(a2 + 512);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 488) = v4;
  *(a2 + 496) = v3;
  *(a2 + 504) = v5;
  *(a2 + 512) = v6;
  *(a2 + 520) = v7;
  return result;
}

void (*sub_21466A2E4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 496);
  v6 = *(v1 + 504);
  v7 = *(v1 + 512);
  v8 = *(v1 + 520);
  *v4 = *(v1 + 488);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21466A384;
}

void sub_21466A384(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 496);
  v9 = *(v3 + 504);
  v11 = *(v3 + 512);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 488) = v5;
    *(v3 + 496) = v4;
    *(v3 + 504) = v7;
    *(v3 + 512) = v6;
    *(v3 + 520) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 496);

    sub_213FDC6D0(v9, v11);
    *(v3 + 488) = v5;
    *(v3 + 496) = v4;
    *(v3 + 504) = v7;
    *(v3 + 512) = v6;
    *(v3 + 520) = v8;
  }

  free(v2);
}

uint64_t sub_21466A46C(uint64_t a1)
{
  v3 = *(v1 + 528);

  *(v1 + 528) = a1;
  return result;
}

uint64_t sub_21466A4B8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_21466A4E8(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21466A540()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return result;
}

uint64_t sub_21466A54C(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t sub_21466A57C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_21466A5AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_21466A604@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v4 = *(v1 + 152);
  v16 = *(v1 + 136);
  v3 = v16;
  v17 = v4;
  v18 = *(v1 + 168);
  v5 = v18;
  v11 = *(v1 + 56);
  v7 = *(v1 + 88);
  v12 = *(v1 + 72);
  v6 = v12;
  v13 = v7;
  v14 = *(v1 + 104);
  v8 = v14;
  v15 = v2;
  *a1 = v11;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_214091538(&v11, v10);
}

__n128 sub_21466A680(uint64_t a1)
{
  v3 = *(v1 + 136);
  v10[4] = *(v1 + 120);
  v10[5] = v3;
  v10[6] = *(v1 + 152);
  v11 = *(v1 + 168);
  v4 = *(v1 + 72);
  v10[0] = *(v1 + 56);
  v10[1] = v4;
  v5 = *(v1 + 104);
  v10[2] = *(v1 + 88);
  v10[3] = v5;
  sub_214091594(v10);
  v6 = *(a1 + 80);
  *(v1 + 120) = *(a1 + 64);
  *(v1 + 136) = v6;
  *(v1 + 152) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 88) = result;
  *(v1 + 168) = *(a1 + 112);
  *(v1 + 104) = v9;
  return result;
}

uint64_t sub_21466A738@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 192);
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

uint64_t sub_21466A7A0(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21466A848(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v10 = *(v2 + 200);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 192);

    *(v2 + 192) = a1;
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

uint64_t (*sub_21466A984(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 192);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_21466AA1C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21466AA1C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v13 = *a1;
    v9 = *(v4 + 176);
    v10 = *(v4 + 184);
    v14 = *(v4 + 200);
    v15 = 0x6E776F6E6B6E753CLL;
    v16 = 0xE90000000000003ELL;
    v17 = 0xD00000000000001CLL;
    v18 = 0x800000021478A360;
    if (v9(&v13, &v14, &v15))
    {
      v11 = a1[2];

      *(v4 + 192) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v13 = *a1;
  v6 = *(v4 + 176);
  v5 = *(v4 + 184);
  v14 = *(v4 + 200);
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

  *(v4 + 192) = v3;
}

uint64_t sub_21466ABFC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 184);
  v8 = *(a2 + 192);

  *(a2 + 176) = v4;
  *(a2 + 184) = v3;
  *(a2 + 192) = v5;
  *(a2 + 200) = v6;
  return result;
}

void (*sub_21466AC70(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 184);
  v6 = *(v1 + 192);
  v7 = *(v1 + 200);
  *v4 = *(v1 + 176);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_21466AD08;
}

void sub_21466AD08(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 184);
  v8 = *(v3 + 192);
  if (a2)
  {
    v10 = (*a1)[2];

    *(v3 + 176) = v5;
    *(v3 + 184) = v4;
    *(v3 + 192) = v6;
    *(v3 + 200) = v7;
    v11 = v2[1];
    v12 = v2[2];
  }

  else
  {
    v13 = *(v3 + 184);

    *(v3 + 176) = v5;
    *(v3 + 184) = v4;
    *(v3 + 192) = v6;
    *(v3 + 200) = v7;
  }

  free(v2);
}

uint64_t AudioMessage.content.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_214031CA0(v2);
}

__n128 AudioMessage.content.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = v1[1];
  v4 = v1[2];
  sub_214031CE0(*v1);
  result = v6;
  *v1 = v6;
  v1[2] = v2;
  return result;
}

uint64_t AudioMessage.participantDestinationIdentifiers.setter(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v10 = *(v2 + 48);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 40);

    *(v2 + 40) = a1;
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

uint64_t (*AudioMessage.participantDestinationIdentifiers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 40);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2145B8C7C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*AudioMessage.$participantDestinationIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *v4 = *(v1 + 24);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2145B8F68;
}

uint64_t AudioMessage.inlineAudioMessages.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

BlastDoor::TextMessage::ScheduleType_optional __swiftcall TextMessage.ScheduleType.init(defaultingRawValue:)(Swift::Int_optional defaultingRawValue)
{
  if (defaultingRawValue.is_nil)
  {
    *v1 = 5;
  }

  else if ((defaultingRawValue.value + 1) > 0xB)
  {
    *v1 = 0;
  }

  else
  {
    *v1 = byte_214779312[defaultingRawValue.value + 1];
  }

  return defaultingRawValue.value;
}

BlastDoor::TextMessage::ScheduleType_optional __swiftcall TextMessage.ScheduleType.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 1) > 0xB)
  {
    *v1 = 5;
  }

  else
  {
    *v1 = byte_21477931E[rawValue + 1];
  }

  return rawValue;
}

uint64_t sub_21466B18C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214779330[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_21466B214()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214779330[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_21466B400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21466B4D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_21466B65C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TextMessage(0) + 28);
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

uint64_t sub_21466B6F8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for TextMessage(0) + 28);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t TextMessage.threadIdentifierGUID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TextMessage(0) + 28);
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

void (*TextMessage.threadIdentifierGUID.modify(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for TextMessage(0) + 28);
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

    return sub_21409E1C0;
  }

  return result;
}

uint64_t sub_21466B9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TextMessage(0) + 28));
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

uint64_t sub_21466BA6C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for TextMessage(0) + 28);
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

void (*TextMessage.$threadIdentifierGUID.modify(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for TextMessage(0) + 28);
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
  return sub_21409E45C;
}

uint64_t sub_21466BBB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TextMessage(0) + 32);
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

uint64_t sub_21466BC4C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for TextMessage(0) + 32);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t TextMessage.threadOriginatorFallbackHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TextMessage(0) + 32);
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

void (*TextMessage.threadOriginatorFallbackHash.modify(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for TextMessage(0) + 32);
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

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_21466BF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TextMessage(0) + 32));
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

uint64_t sub_21466BFC0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for TextMessage(0) + 32);
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

void (*TextMessage.$threadOriginatorFallbackHash.modify(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for TextMessage(0) + 32);
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
  return sub_21439DFAC;
}

uint64_t sub_21466C104@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TextMessage(0) + 36);
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

uint64_t sub_21466C1A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for TextMessage(0) + 36);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t TextMessage.expressiveSendStyleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TextMessage(0) + 36);
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

void (*TextMessage.expressiveSendStyleIdentifier.modify(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for TextMessage(0) + 36);
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

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_21466C4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TextMessage(0) + 36));
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

uint64_t sub_21466C514(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for TextMessage(0) + 36);
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

void (*TextMessage.$expressiveSendStyleIdentifier.modify(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for TextMessage(0) + 36);
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
  return sub_21439DFAC;
}

uint64_t sub_21466C658@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TextMessage(0) + 40);
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

uint64_t sub_21466C6F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for TextMessage(0) + 40);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t TextMessage.groupID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TextMessage(0) + 40);
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

void (*TextMessage.groupID.modify(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for TextMessage(0) + 40);
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

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_21466C9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TextMessage(0) + 40));
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

uint64_t sub_21466CA68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for TextMessage(0) + 40);
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

void (*TextMessage.$groupID.modify(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for TextMessage(0) + 40);
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
  return sub_21439DFAC;
}

uint64_t TextMessage.currentGroupName.getter()
{
  v1 = (v0 + *(type metadata accessor for TextMessage(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TextMessage.currentGroupName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextMessage(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextMessage.groupParticipantVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for TextMessage(0) + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TextMessage.groupParticipantVersion.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TextMessage(0);
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TextMessage.groupProtocolVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for TextMessage(0) + 52));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TextMessage.groupProtocolVersion.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TextMessage(0);
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TextMessage.groupPhotoCreationTime.getter()
{
  v1 = (v0 + *(type metadata accessor for TextMessage(0) + 56));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TextMessage.groupPhotoCreationTime.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TextMessage(0);
  v6 = v2 + *(result + 56);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TextMessage.transcriptBackgroundVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for TextMessage(0) + 60));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TextMessage.transcriptBackgroundVersion.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TextMessage(0);
  v6 = v2 + *(result + 60);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TextMessage.MessageSummaryInfo.translatedMessageParts.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t TextMessage.MessageSummaryInfo.sourceApplicationID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v11 = *(v3 + 48);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 32), *(v3 + 40));

    *(v3 + 32) = a1;
    *(v3 + 40) = a2;
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

void (*TextMessage.MessageSummaryInfo.sourceApplicationID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 32);
  *(v3 + 24) = v5;
  v6 = *(v1 + 40);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145F81C8;
  }

  return result;
}

void (*TextMessage.MessageSummaryInfo.$sourceApplicationID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145F843C;
}

uint64_t TextMessage.MessageSummaryInfo.associatedBalloonBundleID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v11 = *(v3 + 88);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 72), *(v3 + 80));

    *(v3 + 72) = a1;
    *(v3 + 80) = a2;
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

void (*TextMessage.MessageSummaryInfo.associatedBalloonBundleID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 72);
  *(v3 + 24) = v5;
  v6 = *(v1 + 80);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21447871C;
  }

  return result;
}

void (*TextMessage.MessageSummaryInfo.$associatedBalloonBundleID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214478A68;
}

uint64_t TextMessage.messageSummaryInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextMessage(0) + 64));
  v4 = v3[4];
  v15 = v3[3];
  v5 = v15;
  v16[0] = v4;
  *(v16 + 9) = *(v3 + 73);
  v6 = *(v16 + 9);
  v7 = v3[2];
  v13 = v3[1];
  v8 = v13;
  v14 = v7;
  v12 = *v3;
  v9 = v12;
  a1[2] = v7;
  a1[3] = v5;
  a1[4] = v4;
  *(a1 + 73) = v6;
  *a1 = v9;
  a1[1] = v8;
  return sub_213FB2E54(&v12, &v11, &qword_27C909990, &qword_2146F58B0);
}

__n128 TextMessage.messageSummaryInfo.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for TextMessage(0) + 64));
  v4 = v3[4];
  v9[3] = v3[3];
  v10[0] = v4;
  *(v10 + 9) = *(v3 + 73);
  v5 = v3[2];
  v9[1] = v3[1];
  v9[2] = v5;
  v9[0] = *v3;
  sub_213FB2DF4(v9, &qword_27C909990, &qword_2146F58B0);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  *(v3 + 73) = *(a1 + 73);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v8;
  return result;
}

uint64_t TextMessage.isAutoReply.setter(char a1)
{
  result = type metadata accessor for TextMessage(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t TextMessage.availabilityVerificationRecipientChannelIDPrefix.getter()
{
  v1 = (v0 + *(type metadata accessor for TextMessage(0) + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TextMessage.availabilityVerificationRecipientChannelIDPrefix.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextMessage(0) + 72));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextMessage.availabilityVerificationRecipientEncryptionValidationToken.getter()
{
  v1 = (v0 + *(type metadata accessor for TextMessage(0) + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TextMessage.availabilityVerificationRecipientEncryptionValidationToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextMessage(0) + 76));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextMessage.availabilityOffGridRecipientSubscriptionValidationToken.getter()
{
  v1 = (v0 + *(type metadata accessor for TextMessage(0) + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TextMessage.availabilityOffGridRecipientSubscriptionValidationToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextMessage(0) + 80));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextMessage.availabilityOffGridRecipientEncryptionValidationToken.getter()
{
  v1 = (v0 + *(type metadata accessor for TextMessage(0) + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TextMessage.availabilityOffGridRecipientEncryptionValidationToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextMessage(0) + 84));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextMessage.seenAsOffGrid.setter(char a1)
{
  result = type metadata accessor for TextMessage(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t sub_21466DB6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TextMessage(0) + 92);
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

uint64_t sub_21466DC08(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for TextMessage(0) + 92);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t TextMessage.lastPublisherOfOffGridStatus.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TextMessage(0) + 92);
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

void (*TextMessage.lastPublisherOfOffGridStatus.modify(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for TextMessage(0) + 92);
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

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_21466DF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for TextMessage(0) + 92));
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

uint64_t sub_21466DF7C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for TextMessage(0) + 92);
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

void (*TextMessage.$lastPublisherOfOffGridStatus.modify(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for TextMessage(0) + 92);
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
  return sub_21439DFAC;
}

uint64_t TextMessage.nicknameInformation.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for TextMessage(0) + 96);
  memcpy(__dst, (v1 + v3), 0x109uLL);
  memcpy(a1, (v1 + v3), 0x109uLL);
  return sub_213FB2E54(__dst, &v5, &qword_27C909998, &qword_2146F58B8);
}

void *TextMessage.nicknameInformation.setter(const void *a1)
{
  v3 = *(type metadata accessor for TextMessage(0) + 96);
  memcpy(v5, (v1 + v3), 0x109uLL);
  sub_213FB2DF4(v5, &qword_27C909998, &qword_2146F58B8);
  return memcpy((v1 + v3), a1, 0x109uLL);
}

uint64_t TextMessage.truncatedNicknameRecordKey.getter()
{
  v1 = (v0 + *(type metadata accessor for TextMessage(0) + 100));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TextMessage.truncatedNicknameRecordKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextMessage(0) + 100));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextMessage.isExpirable.setter(char a1)
{
  result = type metadata accessor for TextMessage(0);
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t TextMessage.isSOS.setter(char a1)
{
  result = type metadata accessor for TextMessage(0);
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t TextMessage.isCritical.setter(char a1)
{
  result = type metadata accessor for TextMessage(0);
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t TextMessage.replicationSourceID.getter()
{
  v1 = (v0 + *(type metadata accessor for TextMessage(0) + 116));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TextMessage.replicationSourceID.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TextMessage(0);
  v6 = v2 + *(result + 116);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TextMessage.scheduleType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TextMessage(0);
  *a1 = *(v1 + *(result + 120));
  return result;
}

uint64_t TextMessage.scheduleType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TextMessage(0);
  *(v1 + *(result + 120)) = v2;
  return result;
}

uint64_t TextMessage.replicatedFallbackGUIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextMessage(0) + 128));
}

uint64_t TextMessage.replicatedFallbackGUIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TextMessage(0) + 128);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TextMessage.isBIAMessage.setter(char a1)
{
  result = type metadata accessor for TextMessage(0);
  *(v1 + *(result + 132)) = a1;
  return result;
}

uint64_t TextMessage.biaReferenceID.getter()
{
  v1 = (v0 + *(type metadata accessor for TextMessage(0) + 136));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TextMessage.biaReferenceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextMessage(0) + 136));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextMessage.debugDescription.getter()
{
  sub_2146D9EF8();
  MEMORY[0x2160545D0](60, 0xE100000000000000);
  MEMORY[0x2160545D0](0x7373654D74786554, 0xEB00000000656761);
  MEMORY[0x2160545D0](0x6570797462757320, 0xEA0000000000203ALL);
  v0 = *(type metadata accessor for TextMessage(0) + 20);
  type metadata accessor for TextMessage.MessageType(0);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0x7461646174656D20, 0xEB00000000203A61);
  type metadata accessor for Metadata();
  sub_2146D9FE8();
  MEMORY[0x2160545D0](15913, 0xE200000000000000);
  return 0;
}

uint64_t sub_21466EB3C(uint64_t a1)
{
  *(a1 + 8) = sub_21466EBC0(&qword_280B2FA98, type metadata accessor for TextMessage.MessageType);
  result = sub_21466EBC0(&qword_280B2FAA0, type metadata accessor for TextMessage.MessageType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21466EBC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21466EC0C()
{
  result = qword_27C9177D8;
  if (!qword_27C9177D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9177D8);
  }

  return result;
}

uint64_t sub_21466ECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21466ECF4(uint64_t a1)
{
  *(a1 + 8) = sub_21466EBC0(&qword_280B30A88, type metadata accessor for TextMessage);
  result = sub_21466EBC0(&qword_280B30A90, type metadata accessor for TextMessage);
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_21466EDB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21466EE00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21466EE74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 536))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 488);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21466EEBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
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
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 536) = 1;
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
      *(result + 488) = (a2 - 1);
      return result;
    }

    *(result + 536) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21466EFA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21466EFF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21466F0AC()
{
  type metadata accessor for Metadata();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TextMessage.MessageType(319);
    if (v1 <= 0x3F)
    {
      sub_21466F3B4(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
      if (v2 <= 0x3F)
      {
        sub_21409EE88(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
        if (v3 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B34BE0);
          if (v4 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B34BB8);
            if (v5 <= 0x3F)
            {
              sub_21403BEC8(319, &qword_280B2E320);
              if (v6 <= 0x3F)
              {
                sub_21403BEC8(319, &qword_280B2FAC8);
                if (v7 <= 0x3F)
                {
                  sub_21403BEC8(319, &qword_280B34BD8);
                  if (v8 <= 0x3F)
                  {
                    sub_21403BEC8(319, &qword_280B2F250);
                    if (v9 <= 0x3F)
                    {
                      sub_21403BEC8(319, &qword_280B34BC8);
                      if (v10 <= 0x3F)
                      {
                        sub_21403BEC8(319, &qword_280B2FA80);
                        if (v11 <= 0x3F)
                        {
                          sub_21466F3B4(319, &qword_280B35230, MEMORY[0x277CC9578]);
                          if (v12 <= 0x3F)
                          {
                            sub_21409EE88(319, &qword_280B2E3C0, &unk_27C904F20, &qword_2146EE8A0, MEMORY[0x277D83D88]);
                            if (v13 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_21466F3B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21466F408()
{
  result = type metadata accessor for BalloonPlugin(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CustomAcknowledgement();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21466F4E4()
{
  result = qword_27C9177E0;
  if (!qword_27C9177E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9177E0);
  }

  return result;
}

uint64_t sub_21466F538(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 2);
  v4 = *a3;
  v6 = *a1;
  v7 = v3;
  return sub_2145B9168(&v6, v4) & 1;
}

uint64_t sub_21466F574(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(v1 + 16);
  v5 = *a1;
  v6 = v2;
  return sub_2145B9168(&v5, v3) & 1;
}

uint64_t sub_21466F5B0(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a3;
    v6 = a1[1];
    v5 = a1[2];
    v11[0] = *a1;
    v11[1] = v6;
    v11[2] = v5;
    MEMORY[0x28223BE20](a1);
    v9[2] = v11;
    v10 = 2;

    v7 = sub_2140479E4(sub_21466F688, v9, v4);
    sub_214031CE0(v3);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_21466F688(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *v2;
  v6 = *(v2 + 2);
  v11 = v5;
  v12 = v6;
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10 = v3;
  return v7(&v11, &v10) & 1;
}

id sub_21466F6F0(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initForBusinessChat_];
}

id sub_21466F734(char a1)
{
  v2 = type metadata accessor for _ObjCValidatorContextWrapper();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR___BlastDoorValidatorContext_validatorContext] = a1;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_21466F840()
{
  v52[2] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v52[0] = 47;
  v52[1] = 0xE100000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v2 = sub_2146D9558();
  v4 = v3;

  MEMORY[0x2160545D0](v2, v4);

  v5 = sub_2146D9588();

  v6 = [objc_opt_self() fileHandleForReadingAtPath_];

  if (v6)
  {
    v7 = [v6 seekToEndOfFile];
    v52[0] = 0;
    v8 = &off_27817C000;
    if ([v6 seekToOffset:0 error:v52])
    {
      v9 = v52[0];
    }

    else
    {
      v11 = v52[0];
      v12 = sub_2146D8838();

      swift_willThrow();
    }

    v13 = sub_2146D9B78();
    v15 = v14;
    if (v14 >> 60 != 15)
    {
      v16 = v13;
      LOBYTE(v52[0]) = 12;
      if (Data.hasValidHeader(for:)(v52))
      {
        v17 = sub_21466FDF0();
        if ((v17 & 0x100000000) == 0)
        {
          v18 = v17;
          if (v17)
          {
            v19 = &off_27817C000;
            while (1)
            {
              v20 = [v6 v19[306]];
              v21 = &v20[v18];
              if (__CFADD__(v18, v20))
              {
                __break(1u);
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
              }

              v22 = __CFADD__(v21, 8);
              v23 = (v21 + 8);
              if (v22)
              {
                goto LABEL_54;
              }

              if (v23 >= v7)
              {
                goto LABEL_48;
              }

              v24 = sub_21466FFAC();
              if (v24 != 4)
              {
                if (v24 <= 2)
                {
                  v48 = sub_2146DA6A8();

                  sub_213FDC6BC(v16, v15);
                  v10 = v48 ^ 1;
                  goto LABEL_51;
                }

                goto LABEL_48;
              }

              v25 = [v6 v19[306]];
              v26 = v25 + v18;
              if (__CFADD__(v25, v18))
              {
                goto LABEL_55;
              }

              if (v26 >= 0xFFFFFFFFFFFFFFFCLL)
              {
                goto LABEL_56;
              }

              v52[0] = 0;
              if ([v6 v8[305]])
              {
                v27 = v52[0];
              }

              else
              {
                v28 = v52[0];
                v29 = sub_2146D8838();

                swift_willThrow();
              }

              v30 = sub_2146D9B78();
              v32 = v31;
              if (v31 >> 60 == 15)
              {
                goto LABEL_48;
              }

              v33 = v30;
              v34 = v31 >> 62;
              if ((v31 >> 62) > 1)
              {
                if (v34 != 2)
                {
                  goto LABEL_46;
                }

                v37 = *(v30 + 16);
                v36 = *(v30 + 24);
                v38 = __OFSUB__(v36, v37);
                v35 = v36 - v37;
                if (v38)
                {
                  goto LABEL_57;
                }
              }

              else if (v34)
              {
                LODWORD(v35) = HIDWORD(v30) - v30;
                if (__OFSUB__(HIDWORD(v30), v30))
                {
                  goto LABEL_58;
                }

                v35 = v35;
              }

              else
              {
                v35 = BYTE6(v31);
              }

              if (v35 != 4)
              {
LABEL_46:
                sub_213FDC6BC(v16, v15);
                v49 = v33;
                v50 = v32;
                goto LABEL_49;
              }

              if (v34 == 2)
              {
                break;
              }

              if (v34 == 1)
              {
                if (v30 > v30 >> 32)
                {
                  goto LABEL_60;
                }

                v39 = sub_2146D8728();
                if (!v39)
                {
                  goto LABEL_64;
                }

                v40 = v39;
                v41 = sub_2146D8758();
                if (__OFSUB__(v33, v41))
                {
                  goto LABEL_61;
                }

                v42 = (v33 - v41 + v40);
                result = sub_2146D8748();
                v19 = &off_27817C000;
                if (!v42)
                {
                  goto LABEL_65;
                }

LABEL_41:
                LODWORD(v30) = *v42;
                v8 = &off_27817C000;
              }

              v18 = _OSSwapInt32(v30);
              sub_213FDC6BC(v33, v32);
              if (!v18)
              {
                goto LABEL_48;
              }
            }

            v44 = *(v30 + 16);
            v45 = sub_2146D8728();
            if (!v45)
            {
              sub_2146D8748();
LABEL_63:
              __break(1u);
LABEL_64:
              result = sub_2146D8748();
              __break(1u);
LABEL_65:
              __break(1u);
              return result;
            }

            v46 = v45;
            v47 = sub_2146D8758();
            if (__OFSUB__(v44, v47))
            {
              goto LABEL_59;
            }

            v42 = (v44 - v47 + v46);
            sub_2146D8748();
            v19 = &off_27817C000;
            if (!v42)
            {
              goto LABEL_63;
            }

            goto LABEL_41;
          }
        }
      }

LABEL_48:
      v49 = v16;
      v50 = v15;
LABEL_49:
      sub_213FDC6BC(v49, v50);
    }

    v10 = 0;
LABEL_51:
    sub_21466FD10(v6);
  }

  else
  {
    v10 = 0;
  }

  v51 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void sub_21466FD10(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v1 = [a1 closeAndReturnError_];
  v2 = v8[0];
  if (v1)
  {
    v3 = *MEMORY[0x277D85DE8];

    v4 = v2;
  }

  else
  {
    v5 = v8[0];
    v6 = sub_2146D8838();

    swift_willThrow();
    v7 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_21466FDF0()
{
  v0 = sub_2146D9B78();
  if (v1 >> 60 != 15)
  {
    v2 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v2 != 2)
      {
LABEL_18:
        sub_213FDC6BC(v0, v1);
        goto LABEL_19;
      }

      v4 = *(v0 + 16);
      v3 = *(v0 + 24);
      v5 = __OFSUB__(v3, v4);
      v6 = v3 - v4;
      if (!v5)
      {
        if (v6 == 4)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    else
    {
      if (v2)
      {
        goto LABEL_16;
      }

      if (BYTE6(v1) != 4)
      {
        goto LABEL_18;
      }

LABEL_9:
      while (v2 != 2)
      {
        if (v2 != 1)
        {
          v9 = v1;
          v8 = v0;
          goto LABEL_26;
        }

        v7 = v0;
        if (v0 > v0 >> 32)
        {
          goto LABEL_29;
        }

        v8 = v0;
        v9 = v1;
        v10 = sub_2146D8728();
        if (!v10)
        {
          goto LABEL_34;
        }

        v11 = v10;
        v12 = sub_2146D8758();
        if (__OFSUB__(v7, v12))
        {
          goto LABEL_31;
        }

        v13 = (v7 - v12 + v11);
        v0 = sub_2146D8748();
        if (v13)
        {
          goto LABEL_24;
        }

        __break(1u);
LABEL_16:
        if (__OFSUB__(HIDWORD(v0), v0))
        {
          goto LABEL_28;
        }

        if (HIDWORD(v0) - v0 != 4)
        {
          goto LABEL_18;
        }
      }

      v8 = v0;
      v17 = *(v0 + 16);
      v9 = v1;
      v18 = sub_2146D8728();
      if (!v18)
      {
        goto LABEL_32;
      }

      v19 = v18;
      v20 = sub_2146D8758();
      if (!__OFSUB__(v17, v20))
      {
        v13 = (v17 - v20 + v19);
        sub_2146D8748();
        if (!v13)
        {
          goto LABEL_33;
        }

LABEL_24:
        LODWORD(v0) = *v13;
LABEL_26:
        v21 = _OSSwapInt32(v0);
        sub_213FDC6BC(v8, v9);
        v15 = 0;
        v14 = v21;
        return v14 | (v15 << 32);
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    sub_2146D8748();
LABEL_33:
    __break(1u);
LABEL_34:
    result = sub_2146D8748();
    __break(1u);
    return result;
  }

LABEL_19:
  v14 = 0;
  v15 = 1;
  return v14 | (v15 << 32);
}

uint64_t sub_21466FFAC()
{
  result = sub_2146D9B78();
  if (v1 >> 60 == 15)
  {
    return 4;
  }

  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_15;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 == 4)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      if (BYTE6(v1) != 4)
      {
        goto LABEL_15;
      }

LABEL_9:
      v7 = result;
      v8 = v1;
      sub_21402D9F8(result, v1);
      v9 = v7;
      v10 = v7;
      v11 = v8;
      sub_214670464(v10, v8);
      if (!v12)
      {
        v16 = v9;
        v17 = v8;
        sub_21402D9F8(v9, v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9177F0, &qword_214779380);
        if (swift_dynamicCast())
        {
          sub_213FB77C8(v14, v18);
          __swift_project_boxed_opaque_existential_1(v18, v19);
          if (sub_2146DA078())
          {
            sub_213FDC6BC(v9, v8);
            __swift_project_boxed_opaque_existential_1(v18, v19);
            sub_2146DA068();
            __swift_destroy_boxed_opaque_existential_1(v18);
LABEL_21:
            v13 = sub_214670678();
            sub_213FDC6BC(v9, v11);
            return v13;
          }

          __swift_destroy_boxed_opaque_existential_1(v18);
        }

        else
        {
          v15 = 0;
          memset(v14, 0, sizeof(v14));
          sub_214670610(v14);
        }

        sub_214670240(v9, v8);
      }

      sub_213FDC6BC(v9, v8);
      goto LABEL_21;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 4)
      {
        goto LABEL_9;
      }

LABEL_15:
      sub_213FDC6BC(result, v1);
      return 4;
    }
  }

  __break(1u);
  return result;
}

void *sub_2146701CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914828, &unk_2147514F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_214670240(uint64_t a1, unint64_t a2)
{
  sub_21402D9F8(a1, a2);
  v4 = *(sub_2146702E8(a1, a2) + 16);
  v5 = sub_2146D9678();

  return v5;
}

uint64_t sub_2146702AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2146D9678();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2146702E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_2146D8A88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_213FB54FC(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_2146701CC(v11, 0);
      v15 = sub_2146D89B8();
      sub_213FB54FC(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_214670464(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_2146D8728();
  if (a1)
  {
    a1 = sub_2146D8758();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_2146D8728() || !__OFSUB__(v5, sub_2146D8758()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_2146D8748();
LABEL_16:
  result = sub_2146D9678();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_214670610(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9177F8, &qword_214779388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214670678()
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

uint64_t sub_2146706C4()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19EE0);
  __swift_project_value_buffer(v0, qword_27CA19EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "exportedPCSData";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shareePublicKeyData";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21467088C()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for PCSManateeShareInvitation() + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for PCSManateeShareInvitation() + 24);
LABEL_3:
      v0 = 0;
      sub_2146D8EC8();
    }
  }
}

uint64_t sub_214670934()
{
  result = sub_2146709A4(v0);
  if (!v1)
  {
    sub_214670A44(v0);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2146709A4(uint64_t a1)
{
  result = type metadata accessor for PCSManateeShareInvitation();
  v3 = a1 + *(result + 20);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_21402D9F8(*v3, *(v3 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v5, v4);
  }

  return result;
}

uint64_t sub_214670A44(uint64_t a1)
{
  result = type metadata accessor for PCSManateeShareInvitation();
  v3 = a1 + *(result + 24);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_21402D9F8(*v3, *(v3 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v5, v4);
  }

  return result;
}

uint64_t sub_214670B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_214671110(&qword_27C917818, type metadata accessor for PCSManateeShareInvitation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214670BAC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27C903240 != -1)
  {
    swift_once();
  }

  v2 = sub_2146D9148();
  v3 = __swift_project_value_buffer(v2, qword_27CA19EE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_214670C54(uint64_t a1)
{
  v2 = sub_214671110(&qword_27C915C68, type metadata accessor for PCSManateeShareInvitation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214670CC0()
{
  sub_214671110(&qword_27C915C68, type metadata accessor for PCSManateeShareInvitation);

  return sub_2146D9008();
}

uint64_t type metadata accessor for PCSManateeShareInvitation()
{
  result = qword_27C917820;
  if (!qword_27C917820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214670EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PCSManateeShareInvitation();
  v5 = *(v4 + 20);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_213FDCA18(v7, v6);
      sub_213FDCA18(v10, v9);
      sub_213FDC6BC(v7, v6);
      goto LABEL_7;
    }

LABEL_5:
    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
    v11 = v10;
    v12 = v9;
LABEL_12:
    sub_213FDC6BC(v11, v12);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_213FDCA18(v7, v6);
  sub_213FDCA18(v10, v9);
  v13 = sub_214466780(v7, v6, v10, v9);
  sub_213FDC6BC(v10, v9);
  sub_213FDC6BC(v7, v6);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v14 = *(v4 + 24);
  v16 = *(a1 + v14);
  v15 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v19 = *v17;
  v18 = v17[1];
  if (v15 >> 60 != 15)
  {
    if (v18 >> 60 == 15)
    {
      goto LABEL_11;
    }

    sub_213FDCA18(v16, v15);
    sub_213FDCA18(v19, v18);
    v21 = sub_214466780(v16, v15, v19, v18);
    sub_213FDC6BC(v19, v18);
    sub_213FDC6BC(v16, v15);
    if (v21)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v18 >> 60 != 15)
  {
LABEL_11:
    sub_213FDCA18(v16, v15);
    sub_213FDCA18(v19, v18);
    sub_213FDC6BC(v16, v15);
    v11 = v19;
    v12 = v18;
    goto LABEL_12;
  }

  sub_213FDCA18(v16, v15);
  sub_213FDCA18(v19, v18);
  sub_213FDC6BC(v16, v15);
LABEL_15:
  sub_2146D8DF8();
  sub_214671110(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214671110(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_214671180()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_214671204();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214671204()
{
  if (!qword_280B2FDD0)
  {
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2FDD0);
    }
  }
}

id sub_214671268()
{
  v1 = type metadata accessor for _ObjCMachImageWrapper();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR___BlastDoorMachImage_image] = v0;
  v4.receiver = v2;
  v4.super_class = v1;

  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_21467146C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_214671500()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_214671548()
{
  v1 = *v0;
  v2 = type metadata accessor for _ObjCMachImageWrapper();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___BlastDoorMachImage_image] = v1;
  v5.receiver = v3;
  v5.super_class = v2;

  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_2146715C0()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 6);
  v6 = *(v0 + 7);
  v7 = *(v0 + 11);
  v20 = *(v0 + 97);
  v8 = *(v0 + 14);
  v18 = *(v0 + 10);
  v19 = *(v0 + 13);
  v9 = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (!v9)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = v9;
  if ((v2 & 1) == 0)
  {
    [v9 writeUint32:v1 forTag:1];
  }

  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_20;
    }

    v11 = sub_2146D9588();
    sub_213FDC6D0(v3, v4);
    [v10 writeString:v11 forTag:2];
  }

  if (v6)
  {
    v12 = sub_2146D9588();
    [v10 writeString:v12 forTag:3];
  }

  if (!v7)
  {
LABEL_12:
    if (v20 != 2)
    {
      [v10 writeBOOL:v20 & 1 forTag:5];
    }

    if (v8 >> 60 != 15)
    {
      sub_21402D9F8(v19, v8);
      v14 = sub_2146D8A38();
      [v10 writeData:v14 forTag:6];

      sub_213FDC6BC(v19, v8);
    }

    v15 = [v10 immutableData];
    if (v15)
    {
      v16 = v15;

      return v16;
    }

    goto LABEL_19;
  }

  if (v7 != 1)
  {

    v13 = sub_2146D9588();
    sub_213FDC6D0(v18, v7);
    [v10 writeString:v13 forTag:4];

    goto LABEL_12;
  }

LABEL_20:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_21467180C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DF24;
  *(v5 + 24) = 0;
  *(v4 + 32) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21439DF24;
  *(v6 + 24) = 0;
  *(v4 + 40) = v6;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v7 + 16) = sub_21439DF54;
  *(v7 + 24) = v8;
  *(v3 + 32) = v7;
  v9 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v10 + 16) = sub_214032610;
  *(v10 + 24) = v11;
  *(inited + 32) = v10;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2146719C4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 3;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_2145B865C;
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

uint64_t sub_214671B10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214671B68(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_214671BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214671C28(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[4].n128_u64[1];
  v7 = v1[5].n128_i64[0];
  v8 = v1[5].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u64[0] = v3;
  v1[5].n128_u64[1] = v4;
  v1[6].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214671C90()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    return v1;
  }

  return result;
}

uint64_t sub_214671D10()
{
  if (*(v0 + 88) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 80);

    return v1;
  }

  return result;
}

uint64_t sub_214671DB0(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_214671DE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v11 = *(v3 + 40);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 24), *(v3 + 32));

    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
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

void (*sub_214671F24(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214053CC4;
  }

  return result;
}

void (*sub_214671FFC(uint64_t *a1))(uint64_t **a1, char a2)
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
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2140540D0;
}

uint64_t sub_21467209C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_2146720CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_214672124(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 64);
  v7 = *(v2 + 72);
  v11 = *(v3 + 96);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 80), *(v3 + 88));

    *(v3 + 80) = a1;
    *(v3 + 88) = a2;
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

void (*sub_214672268(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 80);
  *(v3 + 24) = v5;
  v6 = *(v1 + 88);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145CF55C;
  }

  return result;
}

void (*sub_214672340(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  *v4 = *(v1 + 64);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145CF8A8;
}

uint64_t sub_214672410()
{
  v1 = *(v0 + 104);
  sub_213FDCA18(v1, *(v0 + 112));
  return v1;
}

uint64_t sub_214672444(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 104), *(v2 + 112));
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

void sub_2146724A0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v125 = *MEMORY[0x277D85DE8];
  if (a2 >> 60 == 15)
  {
    v3 = 0;
    v74 = 0;
    v91 = 0;
    v92 = 0;
    v88 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0xF000000000000000;
    v82 = 1;
    v86 = 0;
    LOBYTE(v87) = 2;
    goto LABEL_65;
  }

  v9 = objc_allocWithZone(MEMORY[0x277D43170]);
  sub_21402D9F8(a1, a2);
  v10 = sub_2146D8A38();
  v11 = [v9 initWithData_];

  v12 = [v11 position];
  if (v12 < [v11 length])
  {
    v88 = 0;
    v89 = 0;
    v74 = 0;
    v75 = 0;
    v91 = 0;
    v92 = 0;
    v3 = 0;
    v86 = 0;
    LOBYTE(v87) = 2;
    v13 = 1;
    v93 = 0xF000000000000000;
    while (1)
    {
      if ([v11 hasError])
      {
        goto LABEL_64;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        LOBYTE(v101) = 0;
        v18 = [v11 position] + 1;
        if (v18 >= [v11 position] && (v19 = objc_msgSend(v11, "position") + 1, v19 <= objc_msgSend(v11, "length")))
        {
          v20 = [v11 data];
          [v20 getBytes:&v101 range:{objc_msgSend(v11, "position"), 1}];

          [v11 setPosition:{objc_msgSend(v11, "position") + 1}];
        }

        else
        {
          [v11 _setError];
        }

        v17 |= (v101 & 0x7F) << v15;
        if ((v101 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v21 = v16++ >= 9;
        if (v21)
        {
          v22 = 0;
          goto LABEL_20;
        }
      }

      if ([v11 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v17;
      }

LABEL_20:
      if ([v11 hasError])
      {

        sub_2140861C4();
        swift_allocError();
        *v71 = 0;
        swift_willThrow();
        sub_213FDC6BC(v3, v93);
        sub_213FDC6BC(a1, a2);

        goto LABEL_72;
      }

      v23 = v22 >> 3;
      if ((v22 >> 3) > 3)
      {
        switch(v23)
        {
          case 4:

            v40 = PBReaderReadString();
            if (v40)
            {
              v41 = v40;
              v74 = sub_2146D95B8();
              v91 = v42;
            }

            else
            {
              v74 = 0;
              v91 = 0;
            }

            goto LABEL_6;
          case 6:
            v46 = PBReaderReadData();
            if (v46)
            {
              v47 = v46;
              v48 = sub_2146D8A58();
              v50 = v49;
              sub_213FDC6BC(v3, v93);

              v3 = v48;
              v93 = v50;
            }

            else
            {
              sub_213FDC6BC(v3, v93);
              v3 = 0;
              v93 = 0xF000000000000000;
            }

            goto LABEL_6;
          case 5:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            while (1)
            {
              LOBYTE(v101) = 0;
              v30 = [v11 position] + 1;
              if (v30 >= [v11 position] && (v31 = objc_msgSend(v11, "position") + 1, v31 <= objc_msgSend(v11, "length")))
              {
                v32 = [v11 data];
                [v32 getBytes:&v101 range:{objc_msgSend(v11, "position"), 1}];

                [v11 setPosition:{objc_msgSend(v11, "position") + 1}];
              }

              else
              {
                [v11 _setError];
              }

              v29 |= (v101 & 0x7F) << v27;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v21 = v28++ >= 9;
              if (v21)
              {
                LOBYTE(v87) = 0;
                goto LABEL_6;
              }
            }

            v87 = (v29 != 0) & ~[v11 hasError];
            goto LABEL_6;
        }
      }

      else
      {
        switch(v23)
        {
          case 1:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            while (1)
            {
              LOBYTE(v101) = 0;
              v36 = [v11 position] + 1;
              if (v36 >= [v11 position] && (v37 = objc_msgSend(v11, "position") + 1, v37 <= objc_msgSend(v11, "length")))
              {
                v38 = [v11 data];
                [v38 getBytes:&v101 range:{objc_msgSend(v11, "position"), 1}];

                [v11 setPosition:{objc_msgSend(v11, "position") + 1}];
              }

              else
              {
                [v11 _setError];
              }

              v35 |= (v101 & 0x7F) << v33;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              if (v34++ > 8)
              {
                v86 = 0;
                v13 = 0;
                goto LABEL_6;
              }
            }

            v13 = 0;
            if ([v11 hasError])
            {
              v51 = 0;
            }

            else
            {
              v51 = v35;
            }

            v86 = v51;
            goto LABEL_6;
          case 2:

            v43 = PBReaderReadString();
            if (v43)
            {
              v44 = v43;
              v75 = sub_2146D95B8();
              v89 = v45;
            }

            else
            {
              v75 = 0;
              v89 = 0;
            }

            goto LABEL_6;
          case 3:

            v24 = PBReaderReadString();
            if (v24)
            {
              v25 = v24;
              v88 = sub_2146D95B8();
              v92 = v26;
            }

            else
            {
              v88 = 0;
              v92 = 0;
            }

            goto LABEL_6;
        }
      }

      PBReaderSkipValueWithTag();
LABEL_6:
      v14 = [v11 position];
      if (v14 >= [v11 length])
      {
        goto LABEL_64;
      }
    }
  }

  v3 = 0;
  v74 = 0;
  v75 = 0;
  v91 = 0;
  v92 = 0;
  v88 = 0;
  v89 = 0;
  v93 = 0xF000000000000000;
  v13 = 1;
  v86 = 0;
  LOBYTE(v87) = 2;
LABEL_64:
  v82 = v13;

  sub_213FDC6BC(a1, a2);
  v6 = v93;
  v5 = v89;
  v4 = v75;
LABEL_65:
  sub_213FDCA18(v3, v6);
  sub_21467180C(&v101);
  v53 = v101;
  v52 = v102;
  v54 = v3;
  v55 = v103;
  v56 = v104;
  v57 = v105;
  sub_2146719C4(&v120);
  v78 = v120;
  v83 = v122;
  v84 = v123;
  v85 = v121;
  v79 = v124;
  v120 = v4;
  v121 = v5;
  v95[0] = v57;
  v101 = 0xD00000000000002DLL;
  v102 = 0x8000000214790D20;
  v103 = 0xD00000000000001CLL;
  v104 = 0x800000021478A360;

  v76 = v55;
  v58 = v55;
  v59 = v56;
  sub_213FDC9D0(v58, v56);
  v77 = v52;
  v60 = v80;
  v81 = v53;
  v61 = v53(&v120, v95, &v101);
  v94 = v6;
  if (v60)
  {

    v62 = v54;
    sub_213FDC6BC(v54, v6);

    v63 = v79;
    v64 = v52;
    v4 = v76;
LABEL_70:

    sub_213FDC6D0(v4, v56);
    v68 = v62;
    v69 = v94;
    v65 = v78;
    goto LABEL_71;
  }

  v90 = v5;
  v62 = v54;
  if ((v61 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v67 = 0xD00000000000002DLL;
    v67[1] = 0x8000000214790D20;
    v67[2] = 0xD00000000000001CLL;
    v67[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(v54, v6);

    v63 = v79;
    v64 = v52;
    v4 = v76;
    goto LABEL_70;
  }

  sub_213FDC6D0(v76, v56);

  v64 = v52;

  sub_213FDC6D0(v76, v56);
  v120 = v74;
  v121 = v91;
  v63 = v79;
  v95[0] = v79;
  v101 = 0xD000000000000033;
  v102 = 0x8000000214790D50;
  v103 = 0xD00000000000001CLL;
  v104 = 0x800000021478A360;

  sub_213FDC9D0(v83, v84);
  v65 = v78;
  v66 = v78(&v120, v95, &v101);
  v68 = v54;
  if (v66)
  {
    sub_213FDC6D0(v83, v84);
    sub_213FDC6BC(v54, v94);

    sub_213FDC6D0(v83, v84);
    *a3 = v86;
    *(a3 + 4) = v82 & 1;
    *(a3 + 8) = v81;
    *(a3 + 16) = v77;
    *(a3 + 24) = v4;
    *(a3 + 32) = v90;
    *(a3 + 40) = v57;
    *(a3 + 48) = v88;
    *(a3 + 56) = v92;
    *(a3 + 64) = v78;
    *(a3 + 72) = v85;
    *(a3 + 80) = v74;
    *(a3 + 88) = v91;
    *(a3 + 96) = v79;
    *(a3 + 97) = v87;
    *(a3 + 104) = v54;
    *(a3 + 112) = v94;
    goto LABEL_72;
  }

  sub_214031C4C();
  swift_allocError();
  *v72 = 0xD000000000000033;
  v72[1] = 0x8000000214790D50;
  v72[2] = 0xD00000000000001CLL;
  v72[3] = 0x800000021478A360;
  swift_willThrow();

  v69 = v94;
  sub_213FDC6BC(v62, v94);

  sub_213FDC6D0(v83, v84);
  v59 = v90;
LABEL_71:
  LODWORD(v101) = v86;
  BYTE4(v101) = v82 & 1;
  *(&v101 + 5) = v99;
  HIBYTE(v101) = v100;
  v102 = v81;
  v103 = v64;
  v104 = v4;
  v105 = v59;
  v106 = v57;
  *v107 = v98[0];
  *&v107[3] = *(v98 + 3);
  v108 = v88;
  v109 = v92;
  v110 = v65;
  v111 = v85;
  v112 = v83;
  v113 = v84;
  v114 = v63;
  v115 = v87;
  v117 = v97;
  v116 = v96;
  v118 = v68;
  v119 = v69;
  sub_21404B8A0(&v101);
LABEL_72:
  v70 = *MEMORY[0x277D85DE8];
}

unint64_t sub_214672F4C(uint64_t a1)
{
  *(a1 + 8) = sub_214320808();
  result = sub_21432061C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214672F7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_214672FC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214673030@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_214673150@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_214779750;
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

uint64_t RCSFileInfo.$fileSize.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 33);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 RCSFileInfo.$fileSize.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = *(v1 + 16);

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 33) = v5;
  return result;
}

uint64_t RCSFileInfo.$fileName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 RCSFileInfo.$fileName.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t RCSFileInfo.$contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 RCSFileInfo.$contentType.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_u64[1];
  v7 = v1[6].n128_u64[1];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t type metadata accessor for RCSFileInfo()
{
  result = qword_27C917848;
  if (!qword_27C917848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RCSFileInfo.$url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RCSFileInfo() + 36);

  return sub_2143A009C(a1, v3);
}

uint64_t RCSFileInfo.$playingLengthInSeconds.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RCSFileInfo() + 44));
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

__n128 RCSFileInfo.$playingLengthInSeconds.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for RCSFileInfo() + 44));
  v8 = v7->n128_u64[1];

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t RCSFileInfo.fileSize.getter()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    return *(v0 + 24);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t RCSFileInfo.fileName.getter()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

uint64_t RCSFileInfo.contentType.getter()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t RCSFileInfo.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = v1 + *(type metadata accessor for RCSFileInfo() + 36);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v7 + *(v8 + 28), v6, &unk_27C9131A0, &unk_2146E9D10);
  v9 = sub_2146D8958();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v6, v9);
  }

  sub_21407E248(v6);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t RCSFileInfo.playingLengthInSeconds.getter()
{
  v1 = v0 + *(type metadata accessor for RCSFileInfo() + 44);
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

uint64_t RCSFileInfo.FileType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x69616E626D756874;
  }

  else
  {
    result = 1701603686;
  }

  *v0;
  return result;
}

uint64_t sub_2146739D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x69616E626D756874;
  }

  else
  {
    v4 = 1701603686;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE90000000000006CLL;
  }

  if (*a2)
  {
    v6 = 0x69616E626D756874;
  }

  else
  {
    v6 = 1701603686;
  }

  if (*a2)
  {
    v7 = 0xE90000000000006CLL;
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
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_214673A74()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214673AF4()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_214673B60()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214673BE8(uint64_t *a1@<X8>)
{
  v2 = 1701603686;
  if (*v1)
  {
    v2 = 0x69616E626D756874;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t RCSFileInfo.FileDisposition.rawValue.getter()
{
  if (*v0)
  {
    result = 0x656D686361747461;
  }

  else
  {
    result = 0x7265646E6572;
  }

  *v0;
  return result;
}

uint64_t sub_214673D1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656D686361747461;
  }

  else
  {
    v4 = 0x7265646E6572;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEA0000000000746ELL;
  }

  if (*a2)
  {
    v6 = 0x656D686361747461;
  }

  else
  {
    v6 = 0x7265646E6572;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000746ELL;
  }

  else
  {
    v7 = 0xE600000000000000;
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

uint64_t sub_214673DC4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214673E48()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_214673EB8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214673F44(uint64_t *a1@<X8>)
{
  v2 = 0x7265646E6572;
  if (*v1)
  {
    v2 = 0x656D686361747461;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t (*RCSFileInfo.fileSize.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 32))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 24);
    return sub_214610CD8;
  }

  return result;
}

void (*RCSFileInfo.$fileSize.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 33);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214610E04;
}

uint64_t RCSFileInfo.fileName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v11 = *(v3 + 72);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 56), *(v3 + 64));

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
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

void (*RCSFileInfo.fileName.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21407493C;
  }

  return result;
}

void (*RCSFileInfo.$fileName.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214074D48;
}

uint64_t RCSFileInfo.contentType.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v12 = *(v3 + 112);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 104);

    *(v3 + 96) = a1;
    *(v3 + 104) = a2;
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

uint64_t (*RCSFileInfo.contentType.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 104);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 96);
    a1[1] = v3;

    return sub_2144114B0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*RCSFileInfo.$contentType.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 88);
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144117E0;
}

uint64_t sub_214674720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = a1 + *(type metadata accessor for RCSFileInfo() + 36);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v8 + *(v9 + 28), v7, &unk_27C9131A0, &unk_2146E9D10);
  v10 = sub_2146D8958();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v7, v10);
  }

  sub_21407E248(v7);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2146748AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D8958();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v12(v9, v11, v4);
  v13 = a2 + *(type metadata accessor for RCSFileInfo() + 36);
  sub_21402F904(v9);
  return (*(v5 + 8))(v11, v4);
}

uint64_t RCSFileInfo.url.setter(uint64_t a1)
{
  v3 = sub_2146D8958();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = v1 + *(type metadata accessor for RCSFileInfo() + 36);
  sub_21402F904(v7);
  return (*(v4 + 8))(a1, v3);
}

void (*RCSFileInfo.url.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_2146D8958();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for RCSFileInfo() + 36);
  *(v5 + 12) = v15;
  v16 = v1 + v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v16 + *(v17 + 28), v8, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v11 + 48))(v8, 1, v9) == 1)
  {
    sub_21407E248(v8);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
    return sub_2143A47E0;
  }

  return result;
}

void (*RCSFileInfo.$url.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for RCSFileInfo() + 36);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &unk_27C9131D0, &qword_2146EAA70);
  return sub_2143A4970;
}

uint64_t RCSFileInfo.untilDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSFileInfo() + 40);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSFileInfo.untilDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSFileInfo() + 40);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_214674F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for RCSFileInfo();
  v5 = a1 + *(result + 44);
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

uint64_t (*RCSFileInfo.playingLengthInSeconds.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for RCSFileInfo() + 44);
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

uint64_t sub_2146750A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for RCSFileInfo() + 44));
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

uint64_t sub_214675114(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for RCSFileInfo() + 44);
  v9 = *(v8 + 8);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*RCSFileInfo.$playingLengthInSeconds.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for RCSFileInfo() + 44);
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

unint64_t sub_214675250()
{
  result = qword_27C917838;
  if (!qword_27C917838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917838);
  }

  return result;
}

unint64_t sub_2146752A8()
{
  result = qword_27C917840;
  if (!qword_27C917840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917840);
  }

  return result;
}

uint64_t sub_2146752FC(uint64_t a1)
{
  *(a1 + 8) = sub_214675364(&qword_27C908EA8);
  result = sub_214675364(&qword_27C908EC0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214675364(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RCSFileInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2146753D0()
{
  sub_214675578(319, &qword_27C917858, &type metadata for RCSFileInfo.FileDisposition, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_214675578(319, &qword_27C9050E0, MEMORY[0x277D83B88], type metadata accessor for Validated);
    if (v1 <= 0x3F)
    {
      sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
      if (v2 <= 0x3F)
      {
        sub_214675578(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
        if (v3 <= 0x3F)
        {
          sub_2143A5654();
          if (v4 <= 0x3F)
          {
            sub_2146D8B08();
            if (v5 <= 0x3F)
            {
              sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
              if (v6 <= 0x3F)
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

void sub_214675578(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2146755E8()
{
  result = qword_27C917860;
  if (!qword_27C917860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917860);
  }

  return result;
}

unint64_t sub_21467563C()
{
  result = qword_27C917868;
  if (!qword_27C917868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917868);
  }

  return result;
}

uint64_t sub_2146756CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_214675700(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_214675700(uint64_t result)
{
  if (result > 205)
  {
    if ((result - 206) <= 0x31 && ((1 << (result + 50)) & 0x200F1BC20003FLL) != 0)
    {
      return result;
    }

    return 0;
  }

  if (result && result != 97 && result != 100)
  {
    return 0;
  }

  return result;
}

unint64_t sub_214675760()
{
  result = qword_27C917870;
  if (!qword_27C917870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917870);
  }

  return result;
}

uint64_t sub_2146757C4()
{
  v0 = sub_214675854();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

uint64_t sub_21467580C()
{
  v0 = sub_214675854();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

uint64_t sub_214675854()
{
  v1 = type metadata accessor for PersistenceEvent(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v60 = &v59 - v6;
  v7 = type metadata accessor for MembershipEvent(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v59 - v12;
  v13 = type metadata accessor for MentionEvent(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  v20 = type metadata accessor for ChangeEvent(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v59 - v25;
  v27 = type metadata accessor for CollaborationHighlightEvent(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_214678C34(v0, v30, type metadata accessor for CollaborationHighlightEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_214678CFC(v30, v19, type metadata accessor for MentionEvent);
      v52 = sub_2146D9588();
      v53 = type metadata accessor for MentionEventSecureCoding(0);
      v54 = v31;
      [v31 setClassName:v52 forClass:swift_getObjCClassFromMetadata()];

      sub_214678C34(v19, v17, type metadata accessor for MentionEvent);
      v55 = objc_allocWithZone(v53);
      sub_214678C34(v17, v55 + OBJC_IVAR____TtC9BlastDoor24MentionEventSecureCoding_mentionEvent, type metadata accessor for MentionEvent);
      v62.receiver = v55;
      v62.super_class = v53;
      v56 = objc_msgSendSuper2(&v62, sel_init);
      v39 = type metadata accessor for MentionEvent;
      sub_214678C9C(v17, type metadata accessor for MentionEvent);
      [v54 encodeObject:v56 forKey:*MEMORY[0x277CCA308]];

      v57 = [v54 encodedData];
      v41 = sub_2146D8A58();

      v42 = v19;
      goto LABEL_11;
    }

    sub_214678CFC(v30, v26, type metadata accessor for ChangeEvent);
    v43 = sub_2146D9588();
    v44 = type metadata accessor for ChangeEventSecureCoding(0);
    v45 = v31;
    [v31 setClassName:v43 forClass:swift_getObjCClassFromMetadata()];

    sub_214678C34(v26, v24, type metadata accessor for ChangeEvent);
    v46 = objc_allocWithZone(v44);
    sub_214678C34(v24, v46 + OBJC_IVAR____TtC9BlastDoor23ChangeEventSecureCoding_changeEvent, type metadata accessor for ChangeEvent);
    v61.receiver = v46;
    v61.super_class = v44;
    v47 = objc_msgSendSuper2(&v61, sel_init);
    v39 = type metadata accessor for ChangeEvent;
    sub_214678C9C(v24, type metadata accessor for ChangeEvent);
    [v45 encodeObject:v47 forKey:*MEMORY[0x277CCA308]];

    v31 = [v45 encodedData];
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v26 = v59;
    sub_214678CFC(v30, v59, type metadata accessor for MembershipEvent);
    v48 = sub_2146D9588();
    v49 = type metadata accessor for MembershipEventSecureCoding(0);
    [v31 setClassName:v48 forClass:swift_getObjCClassFromMetadata()];

    sub_214678C34(v26, v11, type metadata accessor for MembershipEvent);
    v50 = objc_allocWithZone(v49);
    sub_214678C34(v11, v50 + OBJC_IVAR____TtC9BlastDoor27MembershipEventSecureCoding_membershipEvent, type metadata accessor for MembershipEvent);
    v63.receiver = v50;
    v63.super_class = v49;
    v51 = objc_msgSendSuper2(&v63, sel_init);
    v39 = type metadata accessor for MembershipEvent;
    sub_214678C9C(v11, type metadata accessor for MembershipEvent);
    [v31 encodeObject:v51 forKey:*MEMORY[0x277CCA308]];

    v45 = [v31 encodedData];
LABEL_8:
    v41 = sub_2146D8A58();

    v42 = v26;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v33 = v60;
    sub_214678CFC(v30, v60, type metadata accessor for PersistenceEvent);
    v34 = sub_2146D9588();
    v35 = type metadata accessor for PersistenceEventSecureCoding(0);
    v36 = v31;
    [v31 setClassName:v34 forClass:swift_getObjCClassFromMetadata()];

    sub_214678C34(v33, v5, type metadata accessor for PersistenceEvent);
    v37 = objc_allocWithZone(v35);
    sub_214678C34(v5, v37 + OBJC_IVAR____TtC9BlastDoor28PersistenceEventSecureCoding_persistenceEvent, type metadata accessor for PersistenceEvent);
    v64.receiver = v37;
    v64.super_class = v35;
    v38 = objc_msgSendSuper2(&v64, sel_init);
    v39 = type metadata accessor for PersistenceEvent;
    sub_214678C9C(v5, type metadata accessor for PersistenceEvent);
    [v36 encodeObject:v38 forKey:*MEMORY[0x277CCA308]];

    v40 = [v36 encodedData];
    v41 = sub_2146D8A58();

    v42 = v33;
LABEL_11:
    sub_214678C9C(v42, v39);
    return v41;
  }

  sub_214678C9C(v30, type metadata accessor for CollaborationHighlightEvent);
  return 0;
}

uint64_t sub_2146760D0(char a1)
{
  result = swift_beginAccess();
  byte_27C917880 = a1;
  return result;
}

id sub_21467628C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21404A8B8(0, &unk_27C917890, 0x277CBEBC0);
  v13 = sub_2146D9CF8();
  if (!v13)
  {

LABEL_7:
    type metadata accessor for ChangeEventSecureCoding(0);
    v17 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v18 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v14 = v13;
  v15 = [v13 absoluteString];
  if (v15)
  {
    v16 = v15;
    sub_2146D95B8();
  }

  sub_2146D8928();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_21407E248(v7);
    goto LABEL_7;
  }

  v20 = *(v9 + 32);
  v20(v12, v7, v8);
  v21 = sub_2146D9588();
  v22 = [a1 decodeIntegerForKey_];

  if (v22 == 2)
  {
    v23 = 2;
  }

  else
  {
    v23 = v22 == 1;
  }

  v24 = v2 + OBJC_IVAR____TtC9BlastDoor23ChangeEventSecureCoding_changeEvent;
  v25 = type metadata accessor for ChangeEvent(0);
  v20(&v24[*(v25 + 20)], v12, v8);
  *v24 = v23;
  v26 = type metadata accessor for ChangeEventSecureCoding(0);
  v28.receiver = v2;
  v28.super_class = v26;
  v27 = objc_msgSendSuper2(&v28, sel_init);

  return v27;
}

void sub_2146765E4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ChangeEvent(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9BlastDoor23ChangeEventSecureCoding_changeEvent;
  swift_beginAccess();
  sub_214678C34(v2 + v9, v8, type metadata accessor for ChangeEvent);
  v10 = *(v5 + 28);
  sub_2146D8868();
  v11 = sub_2146D8958();
  (*(*(v11 - 8) + 8))(&v8[v10], v11);
  v12 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
  v13 = sub_2146D9588();

  v14 = [v12 initWithString_];

  v15 = sub_2146D9588();
  [a1 encodeObject:v14 forKey:v15];

  v16 = *(v2 + v9);
  v17 = sub_2146D9588();
  [a1 encodeInteger:v16 forKey:v17];
}

id sub_214676830()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21467699C(char a1)
{
  result = swift_beginAccess();
  byte_27C917881 = a1;
  return result;
}

uint64_t sub_214676A84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t (*a8)(void))
{
  v13 = a5(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v20 - v15;
  sub_214678C34(a1, &v20 - v15, a6);
  v17 = *a2;
  v18 = *a7;
  swift_beginAccess();
  sub_214677FEC(v16, v17 + v18, a8);
  return swift_endAccess();
}

uint64_t sub_214676B74@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_214678C34(v3 + v6, a3, a2);
}

uint64_t sub_214676BF0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  sub_214677FEC(a1, v3 + v6, a3);
  return swift_endAccess();
}

id sub_214676CE8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21404A8B8(0, &unk_27C917890, 0x277CBEBC0);
  v13 = sub_2146D9CF8();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 absoluteString];
    if (v15)
    {
      v16 = v15;
      sub_2146D95B8();
    }

    sub_2146D8928();

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      sub_21407E248(v7);
    }

    else
    {
      v17 = *(v9 + 32);
      v17(v12, v7, v8);
      sub_21404A8B8(0, &unk_27C9174A0, 0x277CCACA8);
      v18 = sub_2146D9CF8();
      if (v18)
      {
        v35[0] = 0uLL;
        v19 = v18;
        sub_2146D95A8();

        v20 = *(&v35[0] + 1);
        if (*(&v35[0] + 1))
        {
          v33 = *&v35[0];
          sub_21404A8B8(0, &unk_27C9178A0, 0x277CDC6F8);
          v21 = sub_2146D9CF8();
          if (v21)
          {
            sub_21449A7A4(v21, v35);

            v31 = v35[1];
            v32 = v35[0];
            v22 = v36;
            v23 = v2 + OBJC_IVAR____TtC9BlastDoor24MentionEventSecureCoding_mentionEvent;
            v24 = type metadata accessor for MentionEvent(0);
            v17(&v23[*(v24 + 24)], v12, v8);
            *v23 = v33;
            *(v23 + 1) = v20;
            v25 = v31;
            *(v23 + 1) = v32;
            *(v23 + 2) = v25;
            *(v23 + 6) = v22;
            v26 = type metadata accessor for MentionEventSecureCoding(0);
            v34.receiver = v2;
            v34.super_class = v26;
            v27 = objc_msgSendSuper2(&v34, sel_init);

            return v27;
          }

          (*(v9 + 8))(v12, v8);
        }

        else
        {

          (*(v9 + 8))(v12, v8);
        }
      }

      else
      {
        (*(v9 + 8))(v12, v8);
      }
    }
  }

  else
  {
  }

  type metadata accessor for MentionEventSecureCoding(0);
  v29 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v30 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_214677128(void *a1)
{
  v3 = type metadata accessor for MentionEvent(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v1 + OBJC_IVAR____TtC9BlastDoor24MentionEventSecureCoding_mentionEvent);
  swift_beginAccess();
  (*(v9 + 16))(v12, &v13[*(v4 + 32)], v8);
  v14 = sub_2146D8898();
  (*(v9 + 8))(v12, v8);
  v15 = sub_2146D9588();
  [a1 encodeObject:v14 forKey:v15];

  v16 = *v13;
  v17 = *(v13 + 1);

  v18 = sub_2146D9588();

  v19 = sub_2146D9588();
  [a1 encodeObject:v18 forKey:v19];

  sub_214678C34(v13, v7, type metadata accessor for MentionEvent);
  v20 = v7[4];
  if (v20)
  {
    v21 = v7[2];
    v22 = v7[3];
    v23 = v7[5];
    v24 = v7[6];
    sub_21402D9F8(v21, v22);

    sub_213FDCA18(v23, v24);
    sub_214678C9C(v7, type metadata accessor for MentionEvent);
    v25 = sub_2146D8A38();
    v26 = sub_2146D98E8();
    if (v24 >> 60 == 15)
    {
      v27 = 0;
    }

    else
    {
      v27 = sub_2146D8A38();
    }

    v28 = [objc_allocWithZone(MEMORY[0x277CDC6F8]) initWithRootHash:v25 publicKeys:v26 trackingPreventionSalt:v27];

    sub_2142EC728(v21, v22, v20, v23, v24);
    v29 = v28;
    v30 = sub_2146D9588();
    [a1 encodeObject:v29 forKey:v30];
  }

  else
  {
    sub_214678C9C(v7, type metadata accessor for MentionEvent);
  }
}

id sub_21467758C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21467768C(char a1)
{
  result = swift_beginAccess();
  byte_27C917882 = a1;
  return result;
}

id sub_214677848(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21404A8B8(0, &unk_27C917890, 0x277CBEBC0);
  v13 = sub_2146D9CF8();
  if (!v13)
  {

LABEL_7:
    type metadata accessor for MembershipEventSecureCoding(0);
    v17 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v18 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v14 = v13;
  v15 = [v13 absoluteString];
  if (v15)
  {
    v16 = v15;
    sub_2146D95B8();
  }

  sub_2146D8928();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_21407E248(v7);
    goto LABEL_7;
  }

  v20 = *(v9 + 32);
  v20(v12, v7, v8);
  v21 = sub_2146D9588();
  v22 = [a1 decodeIntegerForKey_];

  if (v22 == 2)
  {
    v23 = 2;
  }

  else
  {
    v23 = v22 == 1;
  }

  v24 = v2 + OBJC_IVAR____TtC9BlastDoor27MembershipEventSecureCoding_membershipEvent;
  v25 = type metadata accessor for MembershipEvent(0);
  v20(&v24[*(v25 + 20)], v12, v8);
  *v24 = v23;
  v26 = type metadata accessor for MembershipEventSecureCoding(0);
  v28.receiver = v2;
  v28.super_class = v26;
  v27 = objc_msgSendSuper2(&v28, sel_init);

  return v27;
}

void sub_214677B98(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MembershipEvent(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9BlastDoor27MembershipEventSecureCoding_membershipEvent;
  swift_beginAccess();
  sub_214678C34(v2 + v9, v8, type metadata accessor for MembershipEvent);
  v10 = *(v5 + 28);
  v11 = sub_2146D8898();
  v12 = sub_2146D8958();
  (*(*(v12 - 8) + 8))(&v8[v10], v12);
  v13 = sub_2146D9588();
  [a1 encodeObject:v11 forKey:v13];

  v14 = *(v2 + v9);
  v15 = sub_2146D9588();
  [a1 encodeInteger:v14 forKey:v15];
}

uint64_t sub_214677EC4(char a1)
{
  result = swift_beginAccess();
  byte_27C917883 = a1;
  return result;
}

uint64_t sub_214677FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

id sub_2146780E8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21404A8B8(0, &unk_27C917890, 0x277CBEBC0);
  v13 = sub_2146D9CF8();
  if (!v13)
  {

LABEL_7:
    type metadata accessor for PersistenceEventSecureCoding(0);
    v17 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v18 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v14 = v13;
  v15 = [v13 absoluteString];
  if (v15)
  {
    v16 = v15;
    sub_2146D95B8();
  }

  sub_2146D8928();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_21407E248(v7);
    goto LABEL_7;
  }

  v20 = *(v9 + 32);
  v20(v12, v7, v8);
  v21 = sub_2146D9588();
  v22 = [a1 decodeIntegerForKey_];

  if (v22 >= 5)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  v24 = v2 + OBJC_IVAR____TtC9BlastDoor28PersistenceEventSecureCoding_persistenceEvent;
  v25 = type metadata accessor for PersistenceEvent(0);
  v20(&v24[*(v25 + 20)], v12, v8);
  *v24 = v23;
  v26 = type metadata accessor for PersistenceEventSecureCoding(0);
  v28.receiver = v2;
  v28.super_class = v26;
  v27 = objc_msgSendSuper2(&v28, sel_init);

  return v27;
}

void sub_21467842C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PersistenceEvent(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9BlastDoor28PersistenceEventSecureCoding_persistenceEvent;
  swift_beginAccess();
  sub_214678C34(v2 + v9, v8, type metadata accessor for PersistenceEvent);
  v10 = *(v5 + 28);
  v11 = sub_2146D8898();
  v12 = sub_2146D8958();
  (*(*(v12 - 8) + 8))(&v8[v10], v12);
  v13 = sub_2146D9588();
  [a1 encodeObject:v11 forKey:v13];

  v14 = *(v2 + v9);
  v15 = sub_2146D9588();
  [a1 encodeInteger:v14 forKey:v15];
}

uint64_t keypath_get_1Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  return sub_214678C34(v6 + v7, a4, a3);
}

uint64_t sub_214678AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_214678C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214678C9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214678CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BlastDoor::IDSProtobuf::IDSProtobufKey_optional __swiftcall IDSProtobuf.IDSProtobufKey.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t IDSProtobuf.IDSProtobufKey.stringValue.getter()
{
  v1 = 0xD000000000000018;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_214678EC0(uint64_t a1)
{
  *(a1 + 8) = sub_214678F64(&qword_27C907868, type metadata accessor for IDSClientProtobufMessageType);
  result = sub_214678F64(&qword_27C907890, type metadata accessor for IDSClientProtobufMessageType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214678F64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_214678FAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "IDSProtoBufDataKey";
  v4 = 0xD000000000000018;
  if (v2 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (v2 == 1)
  {
    v6 = "IDSProtoBufDataKey";
  }

  else
  {
    v6 = "IDSProtoBufTypeKey";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "aradigm";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v3 = "IDSProtoBufTypeKey";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "aradigm";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

unint64_t sub_214679084()
{
  result = qword_27C917910;
  if (!qword_27C917910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917910);
  }

  return result;
}

uint64_t sub_2146790D8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214679170()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2146791F4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}