uint64_t getEnumTagSinglePayload for ControlCenterAnalytics.TileModuleTileInteractionEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlCenterAnalytics.TileModuleTileInteractionEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlCenterAnalytics.TileModuleExistsEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlCenterAnalytics.TileModuleExistsEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20CFBBA74()
{
  result = qword_27C81E6F8;
  if (!qword_27C81E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E6F8);
  }

  return result;
}

unint64_t sub_20CFBBACC()
{
  result = qword_27C81E700;
  if (!qword_27C81E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E700);
  }

  return result;
}

unint64_t sub_20CFBBB24()
{
  result = qword_27C81E708;
  if (!qword_27C81E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E708);
  }

  return result;
}

unint64_t sub_20CFBBB7C()
{
  result = qword_27C81E710;
  if (!qword_27C81E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E710);
  }

  return result;
}

unint64_t sub_20CFBBBD4()
{
  result = qword_27C81E718;
  if (!qword_27C81E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E718);
  }

  return result;
}

unint64_t sub_20CFBBC2C()
{
  result = qword_27C81E720;
  if (!qword_27C81E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E720);
  }

  return result;
}

unint64_t sub_20CFBBC84()
{
  result = qword_27C81E728;
  if (!qword_27C81E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E728);
  }

  return result;
}

unint64_t sub_20CFBBCDC()
{
  result = qword_27C81E730;
  if (!qword_27C81E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E730);
  }

  return result;
}

unint64_t sub_20CFBBD34()
{
  result = qword_27C81E738;
  if (!qword_27C81E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E738);
  }

  return result;
}

unint64_t sub_20CFBBD8C()
{
  result = qword_27C81E740;
  if (!qword_27C81E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E740);
  }

  return result;
}

unint64_t sub_20CFBBDE4()
{
  result = qword_27C81E748;
  if (!qword_27C81E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E748);
  }

  return result;
}

unint64_t sub_20CFBBE3C()
{
  result = qword_27C81E750;
  if (!qword_27C81E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E750);
  }

  return result;
}

unint64_t sub_20CFBBE94()
{
  result = qword_27C81E758;
  if (!qword_27C81E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E758);
  }

  return result;
}

unint64_t sub_20CFBBEEC()
{
  result = qword_27C81E760;
  if (!qword_27C81E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E760);
  }

  return result;
}

unint64_t sub_20CFBBF44()
{
  result = qword_27C81E768;
  if (!qword_27C81E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E768);
  }

  return result;
}

unint64_t sub_20CFBBF9C()
{
  result = qword_27C81E770;
  if (!qword_27C81E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E770);
  }

  return result;
}

unint64_t sub_20CFBBFF4()
{
  result = qword_27C81E778;
  if (!qword_27C81E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E778);
  }

  return result;
}

unint64_t sub_20CFBC04C()
{
  result = qword_27C81E780;
  if (!qword_27C81E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E780);
  }

  return result;
}

unint64_t sub_20CFBC0A4()
{
  result = qword_27C81E788;
  if (!qword_27C81E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E788);
  }

  return result;
}

unint64_t sub_20CFBC0FC()
{
  result = qword_27C81E790;
  if (!qword_27C81E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E790);
  }

  return result;
}

unint64_t sub_20CFBC154()
{
  result = qword_27C81E798;
  if (!qword_27C81E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E798);
  }

  return result;
}

uint64_t sub_20CFBC1A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_20D568BF8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x694B656C75646F6DLL && a2 == 0xEA0000000000646ELL || (sub_20D568BF8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6953656C75646F6DLL && a2 == 0xEF7373616C43657ALL || (sub_20D568BF8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x43746E656D656C65 && a2 == 0xEC000000746E756FLL || (sub_20D568BF8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020D5D23D0 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020D5D23F0 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736E6961746E6F63 && a2 == 0xED0000656E656353 || (sub_20D568BF8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x800000020D5D2410 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x736E6961746E6F63 && a2 == 0xEE00796772656E45 || (sub_20D568BF8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x736E6961746E6F63 && a2 == 0xEF6574616D696C43 || (sub_20D568BF8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000019 && 0x800000020D5D2430 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x736E6961746E6F63 && a2 == 0xED0000616964654DLL || (sub_20D568BF8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x736E6961746E6F63 && a2 == 0xED00007265746157 || (sub_20D568BF8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020D5D2450 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_20D568BF8();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_20CFBC68C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x664F7265626D756ELL && a2 == 0xEF73656C75646F4DLL;
  if (v4 || (sub_20D568BF8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000020D5D2470 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020D5D2490 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_20D568BF8();

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

uint64_t sub_20CFBC7B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v3 || (sub_20D568BF8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_20D568BF8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x537972616D697270 && a2 == 0xEC00000065746174 || (sub_20D568BF8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (sub_20D568BF8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697463417369 && a2 == 0xEF6D657449746553 || (sub_20D568BF8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020D5D24B0 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020D5D24D0 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020D5D24F0 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x694B656C75646F6DLL && a2 == 0xEA0000000000646ELL || (sub_20D568BF8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6953656C75646F6DLL && a2 == 0xEF7373616C43657ALL || (sub_20D568BF8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x657A6953656C6974 && a2 == 0xE800000000000000 || (sub_20D568BF8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x800000020D5D2510 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020D5D2530 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65646E49656C6974 && a2 == 0xE900000000000078 || (sub_20D568BF8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x63616C50656C6974 && a2 == 0xED0000746E656D65 || (sub_20D568BF8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x800000020D5D2550 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020D5D2570 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000019 && 0x800000020D5D2590 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020D5D25B0 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020D5D25D0 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 20;
  }

  else
  {
    v6 = sub_20D568BF8();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_20CFBCE6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_20D568BF8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x694B656C75646F6DLL && a2 == 0xEA0000000000646ELL || (sub_20D568BF8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6953656C75646F6DLL && a2 == 0xEF7373616C43657ALL || (sub_20D568BF8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65704F656D6974 && a2 == 0xE800000000000000 || (sub_20D568BF8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEC000000736E6F69 || (sub_20D568BF8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 5;
  }

  else
  {
    v6 = sub_20D568BF8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_20CFBD08C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x800000020D5D25F0 == a2;
  if (v3 || (sub_20D568BF8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020D5D2610 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x694B656C75646F6DLL && a2 == 0xEA0000000000646ELL || (sub_20D568BF8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 3;
  }

  else
  {
    v6 = sub_20D568BF8();

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

uint64_t sub_20CFBD210(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000020D5D2630 == a2 || (sub_20D568BF8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6961746E6F63 && a2 == 0xED0000656E656353 || (sub_20D568BF8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v5 = sub_20D568BF8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_20CFBD344(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
  if (v4 || (sub_20D568BF8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_20D568BF8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = sub_20D568BF8();

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

unint64_t sub_20CFBD460()
{
  result = qword_27C81E7A8;
  if (!qword_27C81E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E7A8);
  }

  return result;
}

unint64_t sub_20CFBD4B4()
{
  result = qword_27C81E7B0;
  if (!qword_27C81E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E7B0);
  }

  return result;
}

unint64_t sub_20CFBD508()
{
  result = qword_27C81E7B8;
  if (!qword_27C81E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E7B8);
  }

  return result;
}

unint64_t sub_20CFBD55C()
{
  result = qword_27C81E7C0;
  if (!qword_27C81E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E7C0);
  }

  return result;
}

unint64_t sub_20CFBD5B0()
{
  result = qword_27C81E7C8;
  if (!qword_27C81E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E7C8);
  }

  return result;
}

id sub_20CFBD684()
{
  sub_20CFBD6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E7D0);
  v0 = sub_20D567A58();

  return v0;
}

uint64_t sub_20CFBD6EC()
{
  v0 = sub_20D563DB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D15250], v0);
  sub_20CF0448C();
  v4 = sub_20D563978();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E7D8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20D5BC410;
  if (v4)
  {
    v6 = &unk_28111FD50;
  }

  else
  {
    v6 = &unk_28111FE30;
  }

  *(v5 + 32) = sub_20CECF940(0, v6);
  return v5;
}

id sub_20CFBD848()
{
  result = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:2.0 stiffness:300.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  qword_27C81E7E0 = result;
  return result;
}

void sub_20CFBD89C(double a1, double a2, uint64_t a3, void *a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x20F31E230](*&a1);
  if (a2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a2;
  }

  MEMORY[0x20F31E230](*&v6);
  if (a4)
  {
    sub_20D568D68();
    v7 = a4;
    sub_20D568408();
  }

  else
  {
    sub_20D568D68();
  }
}

uint64_t sub_20CFBD94C(void *a1, double a2, double a3)
{
  sub_20D568D48();
  if (a2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a2;
  }

  MEMORY[0x20F31E230](*&v6);
  if (a3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a3;
  }

  MEMORY[0x20F31E230](*&v7);
  sub_20D568D68();
  if (a1)
  {
    v8 = a1;
    sub_20D568408();
  }

  return sub_20D568D98();
}

uint64_t sub_20CFBDA14()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_20D568D48();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x20F31E230](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x20F31E230](*&v5);
  sub_20D568D68();
  if (v3)
  {
    v6 = v3;
    sub_20D568408();
  }

  return sub_20D568D98();
}

id sub_20CFBDAEC(void *a1)
{
  sub_20CFBF424(a1);
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v4 = swift_unknownObjectRetain();
    sub_20CFC0C9C(v4, sub_20CFC430C, v3);
  }

  else
  {
    v6 = sub_20D567EA8();
    if (qword_27C81A2D0 != -1)
    {
      swift_once();
    }

    v7 = qword_27C838278;
    if (os_log_type_enabled(qword_27C838278, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_20CEE913C(0xD00000000000001ELL, 0x800000020D5D2790, &v10);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_20CEE913C(0xD000000000000019, 0x800000020D5D2850, &v10);
      _os_log_impl(&dword_20CEB6000, v7, v6, "%s:%s: Prepare for transition failed", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v9, -1, -1);
      MEMORY[0x20F31FC70](v8, -1, -1);
    }

    return [a1 completeTransition_];
  }
}

void sub_20CFBDD50(void *a1)
{
  v127 = sub_20D564208();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D563DB8();
  v129 = *(v4 - 8);
  v130 = v4;
  MEMORY[0x28223BE20](v4);
  v128 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D567648();
  v124 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D567678();
  v123 = *(v9 - 8);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &selRef_updateUITextWithResults_;
  v14 = [a1 viewControllers];
  v15 = sub_20CECF940(0, &qword_28111FF50);
  v16 = sub_20D567A78();

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_68:

    goto LABEL_69;
  }

  if (!sub_20D568768())
  {
    goto LABEL_68;
  }

LABEL_3:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x20F31DD20](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_76;
    }

    v17 = *(v16 + 32);
  }

  v131 = v17;

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18 || (v122 = v18, (v19 = [a1 topViewController]) == 0))
  {

LABEL_69:
    v110 = sub_20D567EA8();
    if (qword_27C81A2D0 != -1)
    {
      swift_once();
    }

    v111 = qword_27C838278;
    if (os_log_type_enabled(qword_27C838278, v110))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *&aBlock.a = v113;
      *v112 = 136315650;
      *(v112 + 4) = sub_20CEE913C(0xD00000000000001ELL, 0x800000020D5D2790, &aBlock);
      *(v112 + 12) = 2080;
      *(v112 + 14) = sub_20CEE913C(0xD000000000000031, 0x800000020D5D2890, &aBlock);
      *(v112 + 22) = 2082;
      v114 = [a1 viewControllers];
      v115 = sub_20D567A78();

      v116 = MEMORY[0x20F31CF30](v115, v15);
      v118 = v117;

      v119 = sub_20CEE913C(v116, v118, &aBlock);

      *(v112 + 24) = v119;
      _os_log_impl(&dword_20CEB6000, v111, v110, "%s:%s: Failed to get either bottom or top VC: %{public}s", v112, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v113, -1, -1);
      MEMORY[0x20F31FC70](v112, -1, -1);
    }

    return;
  }

  v16 = v19;
  objc_opt_self();
  v121 = swift_dynamicCastObjCClass();
  if (!v121)
  {

    goto LABEL_69;
  }

  if (!*(v1 + OBJC_IVAR____TtC6HomeUI17DashboardAnimator_style))
  {
    v131 = v131;
    v31 = v122;
    v32 = [v122 collectionView];
    if (!v32)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v33 = v32;
    [v32 _setSafeAreaInsetsFrozen_];

    v34 = [v31 collectionView];
    if (!v34)
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v35 = v34;
    [v31 systemMinimumLayoutMargins];
    [v35 setDirectionalLayoutMargins_];

    v36 = [v31 collectionView];
    if (!v36)
    {
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v37 = v36;
    [v36 setShowsVerticalScrollIndicator_];

    v38 = [v31 collectionView];
    if (!v38)
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v39 = v38;
    aBlock.a = 1.0;
    aBlock.b = 0.0;
    aBlock.c = 0.0;
    aBlock.d = 1.0;
    aBlock.tx = 0.0;
    aBlock.ty = 0.0;
    CGAffineTransformScale(&v132, &aBlock, 0.925, 0.925);
    aBlock = v132;
    [v39 setTransform_];

    v40 = [v31 collectionView];
    if (!v40)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    [v40 setAlpha_];

    v13 = [a1 disappearingViewController];
    if (!v13)
    {
      goto LABEL_44;
    }

    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    if (!v41 || (v42 = v41, ![v41 isOverlay]))
    {

      v13 = 0;
      goto LABEL_44;
    }

    v43 = [v42 view];
    if (!v43)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v44 = v43;
    v45 = [v43 subviews];

    sub_20CECF940(0, &qword_28111FB70);
    v1 = sub_20D567A78();

    if (!(v1 >> 62))
    {
      v46 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_30:
      v120 = v13;
      if (v46)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x20F31DD20](0, v1);
        }

        else
        {
          if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          v47 = *(v1 + 32);
        }

        v13 = v47;
      }

      else
      {

        v13 = 0;
      }

      v49 = v121;
      v50 = [v121 navigationItem];
      v51 = [a1 navigationBar];
      v52 = sub_20CFBEDA4();

      if (v52)
      {
        v53 = 1;
      }

      else
      {
        v53 = 2;
      }

      [v50 setLargeTitleDisplayMode_];

      sub_20CECF940(0, &qword_28111FF30);
      v54 = sub_20D567FC8();
      v55 = swift_allocObject();
      *(v55 + 16) = v49;
      *&aBlock.tx = sub_20CFC436C;
      *&aBlock.ty = v55;
      *&aBlock.a = MEMORY[0x277D85DD0];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_20CFFFE8C;
      *&aBlock.d = &block_descriptor_120;
      v56 = _Block_copy(&aBlock);
      v57 = v16;

      sub_20D567658();
      *&aBlock.a = MEMORY[0x277D84F90];
      sub_20CFC4324(&qword_281120070, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F1F0);
      sub_20CFC41D0();
      sub_20D5686B8();
      MEMORY[0x20F31D480](0, v12, v8, v56);
      _Block_release(v56);

      (*(v124 + 8))(v8, v6);
      (*(v123 + 8))(v12, v9);
LABEL_44:
      v58 = v16;
      v59 = v121;
      v60 = [v121 view];
      if (!v60)
      {
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v61 = v60;
      v62 = &selRef_allActionGridEditorSectionIdentifiers;
      [v60 bounds];
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;

      v71 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithFrame_];
      v72 = [objc_opt_self() hu_categoryDashboardBackgroundEffects];
      if (!v72)
      {
        sub_20CECF940(0, &unk_28111FFA0);
        sub_20D567A78();
        v72 = sub_20D567A58();
      }

      [v71 setBackgroundEffects_];

      [v71 setAlpha_];
      [v71 setAutoresizingMask_];
      v73 = [v59 view];
      if (!v73)
      {
        goto LABEL_90;
      }

      v74 = v73;
      [v73 insertSubview:v71 atIndex:0];

      v76 = v128;
      v75 = v129;
      v77 = v130;
      (*(v129 + 104))(v128, *MEMORY[0x277D15248], v130);
      sub_20CFC4324(&qword_2811209A0, MEMORY[0x277D15260]);
      LOBYTE(v74) = sub_20D563978();
      (*(v75 + 8))(v76, v77);
      if (v74 & 1) != 0 && (v78 = v126, v79 = v125, v80 = v127, (*(v126 + 104))(v125, *MEMORY[0x277D15B08], v127), sub_20CFC4324(&unk_281120980, MEMORY[0x277D15B10]), v81 = sub_20D563978(), (*(v78 + 8))(v79, v80), (v81))
      {
        if (v13)
        {
          v82 = v13;
          goto LABEL_64;
        }
      }

      else
      {
        if (v13)
        {
          v82 = v13;
        }

        else
        {
          v83 = v122;
          v84 = [v122 view];
          if (!v84)
          {
LABEL_91:
            __break(1u);
            goto LABEL_92;
          }

          v85 = v84;
          v86 = [v83 view];
          if (!v86)
          {
LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

          v87 = v86;
          [v86 bounds];
          v89 = v88;
          v91 = v90;
          v93 = v92;
          v95 = v94;

          v82 = [v85 resizableSnapshotViewFromRect:1 afterScreenUpdates:v89 withCapInsets:{v91, v93, v95, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
          if (!v82)
          {
            goto LABEL_66;
          }

          v13 = 0;
        }

        v96 = v13;
        v62 = [v59 view];

        if (v62)
        {
          goto LABEL_65;
        }

        __break(1u);
      }

      v97 = v122;
      v98 = [v122 view];
      if (!v98)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v99 = v98;
      v100 = [v97 view];
      if (!v100)
      {
LABEL_96:
        __break(1u);
        return;
      }

      v101 = v100;
      [v100 v62[436]];
      v103 = v102;
      v105 = v104;
      v107 = v106;
      v109 = v108;

      v82 = [v99 resizableSnapshotViewFromRect:0 afterScreenUpdates:v103 withCapInsets:{v105, v107, v109, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
      if (v82)
      {
        v13 = 0;
LABEL_64:
        v96 = v13;
        v62 = [v59 view];

        if (!v62)
        {
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

LABEL_65:
        [(SEL *)v62 insertSubview:v82 atIndex:0];

        return;
      }

LABEL_66:

      return;
    }

LABEL_76:
    v46 = sub_20D568768();
    goto LABEL_30;
  }

  if (*(v1 + OBJC_IVAR____TtC6HomeUI17DashboardAnimator_style) == 1)
  {
    v20 = v16;
    v21 = v121;
    v22 = [v121 collectionView];
    if (v22)
    {
      v23 = v22;
      [v22 setAlpha_];

      v24 = [v21 collectionView];
      if (v24)
      {
        v25 = v24;
        aBlock.a = 1.0;
        aBlock.b = 0.0;
        aBlock.c = 0.0;
        aBlock.d = 1.0;
        aBlock.tx = 0.0;
        aBlock.ty = 0.0;
        [v24 setTransform_];

        v26 = [v21 collectionView];
        if (v26)
        {
          v27 = v26;
          [v26 setShowsVerticalScrollIndicator_];

          v28 = [v21 collectionView];
          if (v28)
          {
            [v28 _setSafeAreaInsetsFrozen_];

            v29 = [v122 collectionView];
            if (v29)
            {
              v30 = v29;
              [v29 setDirectionalLayoutMargins_];

              return;
            }

            goto LABEL_87;
          }

          goto LABEL_85;
        }

        goto LABEL_83;
      }

      goto LABEL_81;
    }

    goto LABEL_79;
  }

  v48 = v131;
}

BOOL sub_20CFBEDA4()
{
  v1 = [v0 _backgroundView];
  if (v1)
  {
    v2 = v1;
    [v0 frame];
    v4 = v3;
    [v2 frame];
    v6 = v5;
    [v2 frame];
    v8 = v7;

    return v4 <= v6 + v8;
  }

  else
  {
    v10 = sub_20D567EA8();
    if (qword_27C81A2D0 != -1)
    {
      swift_once();
    }

    v11 = qword_27C838278;
    result = os_log_type_enabled(qword_27C838278, v10);
    if (result)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v12 = 136315650;
      *(v12 + 4) = sub_20CEE913C(0xD00000000000001ELL, 0x800000020D5D2790, &v16);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_20CEE913C(0xD000000000000013, 0x800000020D5D28D0, &v16);
      *(v12 + 22) = 2114;
      *(v12 + 24) = v0;
      *v13 = v0;
      v15 = v0;
      _os_log_impl(&dword_20CEB6000, v11, v10, "%s:%s: Failed to get background view %{public}@", v12, 0x20u);
      sub_20CF31DFC(v13);
      MEMORY[0x20F31FC70](v13, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v14, -1, -1);
      MEMORY[0x20F31FC70](v12, -1, -1);
      return 0;
    }
  }

  return result;
}

void sub_20CFBEFC0(void *a1)
{
  v1 = [a1 navigationItem];
  [v1 setLargeTitleDisplayMode_];
}

char *sub_20CFBF018(char *a1, uint64_t a2, id a3, double a4, double a5)
{
  v9 = [a3 _layoutSectionForSection_layoutEnvironment_];
  v10 = [a3 itemManager];
  v11 = [v10 sectionIndexForDisplayedSectionIdentifier_];

  if (v11 != sub_20D563338() && v11 >= a1)
  {
    return v9;
  }

  result = sub_20D563338();
  if (v11 == result)
  {
    if (!a1)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!__OFADD__(v11, 1))
  {
    if (v11 + 1 == a1)
    {
      goto LABEL_13;
    }

LABEL_11:
    if (__OFADD__(a1, 1))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    a4 = (a1 + 1) * a5;
LABEL_13:
    [v9 contentInsets];
    [v9 setContentInsets_];
    v15 = [v9 boundarySupplementaryItems];
    v16 = sub_20CECF940(0, qword_28111FBA0);
    v17 = sub_20D567A78();

    if (v17 >> 62)
    {
      v18 = sub_20D568768();
      if (v18)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_15:
        result = sub_20D5688F8();
        if ((v18 & 0x8000000000000000) == 0)
        {
          v36 = v16;
          v37 = v9;
          v19 = 0;
          while (1)
          {
            v24 = (v17 & 0xC000000000000001) != 0 ? MEMORY[0x20F31DD20](v19, v17) : *(v17 + 8 * v19 + 32);
            v25 = v24;
            v26 = [v24 elementKind];
            v27 = sub_20D567838();
            v29 = v28;

            if (v27 == sub_20D567838() && v29 == v30)
            {
              break;
            }

            v32 = sub_20D568BF8();

            if (v32)
            {
              goto LABEL_29;
            }

LABEL_18:
            ++v19;
            sub_20D5688C8();
            sub_20D568908();
            sub_20D568918();
            sub_20D5688D8();
            if (v18 == v19)
            {

              v9 = v37;
              goto LABEL_34;
            }
          }

LABEL_29:
          v33 = [v25 layoutSize];
          v34 = [v25 elementKind];
          if (!v34)
          {
            sub_20D567838();
            v34 = sub_20D5677F8();
          }

          v20 = [v25 alignment];
          [v25 offset];
          v22 = v21;
          [v25 offset];
          [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v33 elementKind:v34 alignment:v20 absoluteOffset:{v22, a4 + v23}];

          goto LABEL_18;
        }

        __break(1u);
        goto LABEL_37;
      }
    }

LABEL_34:
    v35 = sub_20D567A58();

    [v9 setBoundarySupplementaryItems_];

    return v9;
  }

LABEL_38:
  __break(1u);
  return result;
}

void sub_20CFBF424(void *a1)
{
  v3 = [a1 viewControllerForKey_];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = [a1 viewForKey_];
      if (v7)
      {
        v8 = v7;
        v9 = [a1 viewControllerForKey_];
        if (v9)
        {
          v10 = v9;
          objc_opt_self();
          v11 = swift_dynamicCastObjCClass();
          if (v11)
          {
            v12 = v11;
            v200 = [a1 viewForKey_];
            if (v200)
            {
              v13 = v4;
              v14 = [v6 collectionView];
              if (v14)
              {
                v15 = v14;
                [v14 setShowsVerticalScrollIndicator_];

                v199 = v13;
                if (!*(v1 + OBJC_IVAR____TtC6HomeUI17DashboardAnimator_style))
                {
                  v43 = [v6 collectionView];
                  if (v43)
                  {
                    v44 = v43;
                    [v43 _setSafeAreaInsetsFrozen_];

                    v45 = [v6 collectionView];
                    if (v45)
                    {
                      v46 = v45;
                      [v6 systemMinimumLayoutMargins];
                      [v46 setDirectionalLayoutMargins_];

                      v47 = [a1 containerView];
                      [v47 bounds];
                      v49 = v48;
                      v51 = v50;
                      v53 = v52;
                      v55 = v54;

                      [v200 setFrame_];
                      v56 = [a1 containerView];
                      [v56 addSubview_];

                      v57 = [a1 containerView];
                      [v57 bounds];
                      v59 = v58;
                      v61 = v60;
                      v63 = v62;
                      v65 = v64;

                      v66 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithFrame_];
                      v67 = [objc_opt_self() hu_categoryDashboardBackgroundEffects];
                      if (!v67)
                      {
                        sub_20CECF940(0, &unk_28111FFA0);
                        sub_20D567A78();
                        v67 = sub_20D567A58();
                      }

                      [v66 setBackgroundEffects_];

                      [v66 setAlpha_];
                      [v66 setAutoresizingMask_];
                      [v200 insertSubview:v66 atIndex:0];
                      swift_unknownObjectWeakAssign();

                      sub_20CFC0378(v6);
                      v68 = v10;
                      v69 = [v12 collectionView];
                      if (v69)
                      {
                        v70 = v69;
                        [v69 frame];
                        v72 = v71;
                        v74 = v73;
                        v76 = v75;
                        v78 = v77;

                        v79 = v1 + OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewFrame;
                        *v79 = v72;
                        *(v79 + 8) = v74;
                        *(v79 + 16) = v76;
                        *(v79 + 24) = v78;
                        *(v79 + 32) = 0;
                        v80 = [v12 collectionView];
                        if (v80)
                        {
                          v81 = v80;
                          v82 = [a1 containerView];
                          [v82 bounds];
                          v84 = v83;
                          v86 = v85;
                          v88 = v87;
                          v90 = v89;

                          [v81 setFrame_];
                          v91 = [v12 collectionViewLayout];
                          v92 = *(v1 + OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewLayout);
                          *(v1 + OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewLayout) = v91;

                          v93 = [v12 collectionView];
                          if (v93)
                          {
                            v94 = v93;
                            v95 = [a1 &selRef_createHomeHubsAndBridgesListViewHostingControllerWithHome_];
                            [v95 bounds];
                            v97 = v96;
                            v99 = v98;
                            v101 = v100;
                            v103 = v102;

                            v202.origin.x = v97;
                            v202.origin.y = v99;
                            v202.size.width = v101;
                            v202.size.height = v103;
                            Height = CGRectGetHeight(v202);
                            v105 = swift_allocObject();
                            *(v105 + 2) = v12;
                            v105[3] = Height;
                            v105[4] = 150.0;
                            v106 = objc_allocWithZone(MEMORY[0x277D752B8]);
                            aBlock[4] = sub_20CFC4300;
                            aBlock[5] = v105;
                            aBlock[0] = MEMORY[0x277D85DD0];
                            aBlock[1] = 1107296256;
                            aBlock[2] = sub_20CFC3CF0;
                            aBlock[3] = &block_descriptor_111;
                            v107 = _Block_copy(aBlock);
                            v108 = v68;
                            v109 = [v106 initWithSectionProvider_];
                            _Block_release(v107);

                            [v94 setCollectionViewLayout_];

                            v110 = [v12 collectionView];
                            if (v110)
                            {
                              v111 = v110;
                              [v110 layoutIfNeeded];

                              v112 = [v12 collectionView];
                              if (v112)
                              {
                                v113 = v112;
                                [v112 contentInset];
                                v115 = v114;
                                v117 = v116;
                                v119 = v118;
                                v121 = v120;

                                v122 = (v1 + OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset);
                                *v122 = v115;
                                v122[1] = v117;
                                v122[2] = v119;
                                v122[3] = v121;
                                if (([objc_opt_self() isAnIPad] & 1) == 0)
                                {
                                  v123 = [v12 collectionView];
                                  if (!v123)
                                  {
LABEL_71:
                                    __break(1u);
                                    goto LABEL_72;
                                  }

                                  v124 = v123;
                                  [v123 setContentInsetAdjustmentBehavior_];

                                  v125 = [v12 collectionView];
                                  if (!v125)
                                  {
LABEL_72:
                                    __break(1u);
                                    goto LABEL_73;
                                  }

                                  v126 = v125;
                                  v127 = [v6 collectionView];
                                  if (!v127)
                                  {
LABEL_73:
                                    __break(1u);
                                    return;
                                  }

                                  v128 = v127;
                                  [v127 adjustedContentInset];
                                  v130 = v129;
                                  v132 = v131;
                                  v134 = v133;
                                  v136 = v135;

                                  [v126 setContentInset_];
                                }

                                v137 = [v12 collectionView];

                                if (v137)
                                {
                                  v138 = [v6 collectionView];

                                  if (v138)
                                  {
                                    [v138 adjustedContentInset];
                                    v140 = v139;

                                    [v137 setContentOffset_];
                                    return;
                                  }

                                  goto LABEL_64;
                                }

LABEL_63:
                                __break(1u);
LABEL_64:
                                __break(1u);
                                goto LABEL_65;
                              }

LABEL_62:
                              __break(1u);
                              goto LABEL_63;
                            }

LABEL_61:
                            __break(1u);
                            goto LABEL_62;
                          }

LABEL_60:
                          __break(1u);
                          goto LABEL_61;
                        }

LABEL_59:
                        __break(1u);
                        goto LABEL_60;
                      }

LABEL_58:
                      __break(1u);
                      goto LABEL_59;
                    }

LABEL_57:
                    __break(1u);
                    goto LABEL_58;
                  }

LABEL_56:
                  __break(1u);
                  goto LABEL_57;
                }

                if (*(v1 + OBJC_IVAR____TtC6HomeUI17DashboardAnimator_style) == 1)
                {

                  v16 = v8;
                  v17 = [a1 containerView];
                  [v17 bounds];
                  v19 = v18;
                  v21 = v20;
                  v23 = v22;
                  v25 = v24;

                  [v200 setFrame_];
                  v26 = v16;
                  v27 = [a1 containerView];
                  [v27 insertSubview:v200 belowSubview:v26];

                  v28 = v10;
                  v29 = [v12 navigationItem];
                  v30 = [v29 standardAppearance];

                  v31 = *(v1 + OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetNavigationBarAppearance);
                  *(v1 + OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetNavigationBarAppearance) = v30;

                  v32 = [v12 navigationItem];
                  v33 = [v6 navigationItem];
                  v34 = [v33 standardAppearance];

                  [v32 setStandardAppearance_];
                  v35 = [v12 context];
                  [v12 prepareForTransitionToContext:v35 forViewController:v12];

                  return;
                }

                v141 = [v8 subviews];
                sub_20CECF940(0, &qword_28111FB70);
                v142 = sub_20D567A78();

                if (v142 >> 62)
                {
                  v143 = sub_20D568768();
                }

                else
                {
                  v143 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (!v143)
                {

                  v158 = 0x1FB53C000;
LABEL_45:
                  [v200 setAlpha_];
                  v159 = [a1 containerView];
                  [v159 bounds];
                  v161 = v160;
                  v163 = v162;
                  v165 = v164;
                  v167 = v166;

                  [v200 *(v158 + 2520)];
                  v168 = [a1 containerView];
                  [v168 addSubview_];

                  v169 = v10;
                  v170 = [v12 collectionView];
                  if (v170)
                  {
                    v171 = v170;
                    [v170 contentInset];
                    v173 = v172;
                    v175 = v174;
                    v177 = v176;
                    v179 = v178;

                    v180 = (v1 + OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset);
                    *v180 = v173;
                    v180[1] = v175;
                    v180[2] = v177;
                    v180[3] = v179;
                    v181 = [v12 collectionView];
                    if (v181)
                    {
                      v182 = v181;
                      [v181 setContentInsetAdjustmentBehavior_];

                      v183 = [v12 collectionView];
                      if (v183)
                      {
                        v184 = v183;
                        v185 = [v6 collectionView];
                        if (v185)
                        {
                          v186 = v185;
                          [v185 adjustedContentInset];
                          v188 = v187;
                          v190 = v189;
                          v192 = v191;
                          v194 = v193;

                          [v184 setContentInset_];
                          v195 = [v12 collectionView];

                          if (v195)
                          {
                            v196 = [v6 collectionView];

                            if (v196)
                            {
                              [v196 adjustedContentInset];
                              v198 = v197;

                              [v195 setContentOffset_];
                              return;
                            }

                            goto LABEL_70;
                          }

LABEL_69:
                          __break(1u);
LABEL_70:
                          __break(1u);
                          goto LABEL_71;
                        }

LABEL_68:
                        __break(1u);
                        goto LABEL_69;
                      }

LABEL_67:
                      __break(1u);
                      goto LABEL_68;
                    }

LABEL_66:
                    __break(1u);
                    goto LABEL_67;
                  }

LABEL_65:
                  __break(1u);
                  goto LABEL_66;
                }

                if ((v142 & 0xC000000000000001) != 0)
                {
                  v144 = MEMORY[0x20F31DD20](0, v142);
                  goto LABEL_43;
                }

                if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v144 = *(v142 + 32);
LABEL_43:
                  v145 = v144;

                  v146 = v8;
                  v147 = [a1 containerView];
                  [v147 bounds];
                  v149 = v148;
                  v151 = v150;
                  v153 = v152;
                  v155 = v154;

                  [v145 setFrame_];
                  v156 = v146;
                  v157 = [a1 containerView];
                  [v157 insertSubview:v145 belowSubview:v156];

                  v158 = &selRef_setDescriptionInset_;
                  goto LABEL_45;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_56;
            }
          }

          v4 = v8;
        }

        else
        {
          v10 = v8;
        }

        v4 = v10;
      }
    }
  }

  v36 = sub_20D567EA8();
  if (qword_27C81A2D0 != -1)
  {
    swift_once();
  }

  v37 = qword_27C838278;
  if (os_log_type_enabled(qword_27C838278, v36))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315650;
    *(v38 + 4) = sub_20CEE913C(0xD00000000000001ELL, 0x800000020D5D2790, aBlock);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_20CEE913C(0xD00000000000001CLL, 0x800000020D5D27E0, aBlock);
    *(v38 + 22) = 2082;
    aBlock[6] = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E888);
    v40 = sub_20D567868();
    v42 = sub_20CEE913C(v40, v41, aBlock);

    *(v38 + 24) = v42;
    _os_log_impl(&dword_20CEB6000, v37, v36, "%s:%s: Failed to get views from transition context: %{public}s", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v39, -1, -1);
    MEMORY[0x20F31FC70](v38, -1, -1);
  }
}

void sub_20CFC0378(void *a1)
{
  v2 = sub_20D563DB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D15248], v2);
  sub_20CFC4324(&qword_2811209A0, MEMORY[0x277D15260]);
  v6 = sub_20D563978();
  (*(v3 + 8))(v5, v2);
  if (v6 & 1) == 0 || ([objc_opt_self() isAnIPhone])
  {
    return;
  }

  v7 = [a1 view];
  if (!v7)
  {
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v8 = v7;
  v9 = [v7 subviews];

  v10 = sub_20CECF940(0, &qword_28111FB70);
  v11 = sub_20D567A78();

  v78 = v10;
  if (v11 >> 62)
  {
LABEL_32:
    v12 = sub_20D568768();
    if (v12)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_6:
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x20F31DD20](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          break;
        }

        ++v13;
        if (v16 == v12)
        {
          goto LABEL_33;
        }
      }

      v18 = v17;

      v19 = [a1 navigationController];
      if (!v19)
      {

        goto LABEL_34;
      }

      v20 = v19;
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (!v21)
      {

        goto LABEL_34;
      }

      v22 = v21;
      v23 = [v21 duplicateWallpaperView];
      if (v23)
      {
        v24 = v23;
        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (v25)
        {
          goto LABEL_22;
        }
      }

      v26 = [a1 &selRef_yearDayRule];
      if (!v26)
      {
        goto LABEL_47;
      }

      v27 = v26;
      [v26 frame];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      v25 = [objc_allocWithZone(HUWallpaperView) initWithFrame_];
LABEL_22:
      v36 = v25;
      [v36 setTranslatesAutoresizingMaskIntoConstraints_];
      v37 = [v18 wallpaper];
      [v36 populateWallpaper:v37 withAnimation:0 onlyIfNeeded:0];

      [v36 setClipsToBounds_];
      [v22 setDuplicateWallpaperView_];
      v38 = v20;
      v39 = [v22 &selRef_yearDayRule];
      if (!v39)
      {
        goto LABEL_42;
      }

      v40 = v39;
      [v39 insertSubview:v36 atIndex:0];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_20D5BC4C0;
      v42 = [v36 leadingAnchor];
      v43 = [v22 &selRef_yearDayRule];
      if (v43)
      {
        v44 = v43;
        v45 = [v43 leadingAnchor];

        v46 = [v42 constraintEqualToAnchor_];
        *(v41 + 32) = v46;
        v47 = [v36 trailingAnchor];
        v48 = [v22 &selRef_yearDayRule];
        if (!v48)
        {
          goto LABEL_44;
        }

        v49 = v48;
        v50 = [v48 trailingAnchor];

        v51 = [v47 constraintEqualToAnchor_];
        *(v41 + 40) = v51;
        v52 = [v36 topAnchor];
        v53 = [v22 &selRef_yearDayRule];
        if (v53)
        {
          v54 = v53;
          v55 = [v53 topAnchor];

          v56 = [v52 constraintEqualToAnchor_];
          *(v41 + 48) = v56;
          v57 = [v36 bottomAnchor];

          v58 = [v22 &selRef_yearDayRule];
          if (!v58)
          {
            goto LABEL_46;
          }

          v59 = objc_opt_self();
          v60 = [v58 bottomAnchor];

          v61 = [v57 constraintEqualToAnchor_];
          *(v41 + 56) = v61;
          sub_20CECF940(0, &qword_28111FEC0);
          v62 = sub_20D567A58();

          [v59 activateConstraints_];

          return;
        }

        goto LABEL_45;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }
  }

LABEL_33:

LABEL_34:
  v63 = sub_20D567EA8();
  if (qword_27C81A2D0 != -1)
  {
    swift_once();
  }

  v64 = qword_27C838278;
  if (os_log_type_enabled(qword_27C838278, v63))
  {
    v65 = a1;
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v79 = v68;
    *v66 = 136315906;
    *(v66 + 4) = sub_20CEE913C(0xD00000000000001ELL, 0x800000020D5D2790, &v79);
    *(v66 + 12) = 2080;
    *(v66 + 14) = sub_20CEE913C(0xD00000000000001CLL, 0x800000020D5D27E0, &v79);
    *(v66 + 22) = 2082;
    v69 = [v65 &selRef_yearDayRule];

    if (v69)
    {
      v70 = [v69 subviews];

      v71 = v78;
      v72 = sub_20D567A78();

      v73 = MEMORY[0x20F31CF30](v72, v71);
      v75 = v74;

      v76 = sub_20CEE913C(v73, v75, &v79);

      *(v66 + 24) = v76;
      *(v66 + 32) = 2114;
      v77 = [v65 navigationController];
      *(v66 + 34) = v77;
      *v67 = v77;
      _os_log_impl(&dword_20CEB6000, v64, v63, "%s:%s: Failed to get wallpaper view or nav controller. subviews: (%{public}s) nav controller: (%{public}@)", v66, 0x2Au);
      sub_20CF31DFC(v67);
      MEMORY[0x20F31FC70](v67, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v68, -1, -1);
      MEMORY[0x20F31FC70](v66, -1, -1);
      return;
    }

    goto LABEL_41;
  }
}

uint64_t sub_20CFC0C9C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = sub_20D567648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D567678();
  v156 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v155 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 viewControllerForKey_];
  if (!v13)
  {
LABEL_19:
    LOBYTE(v31) = sub_20D567EA8();
    if (qword_27C81A2D0 == -1)
    {
LABEL_20:
      v41 = qword_27C838278;
      result = os_log_type_enabled(qword_27C838278, v31);
      if (result)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        aBlock[0] = v44;
        *v43 = 136315650;
        *(v43 + 4) = sub_20CEE913C(0xD00000000000001ELL, 0x800000020D5D2790, aBlock);
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_20CEE913C(0xD000000000000024, 0x800000020D5D27B0, aBlock);
        *(v43 + 22) = 2082;
        v160 = a1;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E888);
        v45 = sub_20D567868();
        v47 = sub_20CEE913C(v45, v46, aBlock);

        *(v43 + 24) = v47;
        _os_log_impl(&dword_20CEB6000, v41, v31, "%s:%s: Failed to get views from transition context: %{public}s", v43, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v44, -1, -1);
        result = MEMORY[0x20F31FC70](v43, -1, -1);
      }

      if (a2)
      {
        return a2(0);
      }

      return result;
    }

LABEL_76:
    swift_once();
    goto LABEL_20;
  }

  v14 = v13;
  v153 = v10;
  v154 = v11;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15 || (v16 = v15, v151 = v8, (v17 = [a1 viewForKey_]) == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  v152 = v17;
  v18 = [a1 viewControllerForKey_];
  if (!v18)
  {
LABEL_17:

    goto LABEL_18;
  }

  v19 = v18;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    v40 = v152;
    v152 = v14;
LABEL_16:

    v14 = v19;
    goto LABEL_17;
  }

  v21 = v20;
  v22 = [a1 viewForKey_];
  if (!v22)
  {
    v40 = v14;
    goto LABEL_16;
  }

  v23 = v22;
  v159 = MEMORY[0x277D84F90];
  v160 = MEMORY[0x277D84F98];
  v24 = *(v3 + OBJC_IVAR____TtC6HomeUI17DashboardAnimator_style);
  v146 = v3;
  v142 = v7;
  v145 = v22;
  v147 = v19;
  v143 = v21;
  if (v24)
  {
    if (v24 == 1)
    {
      v25 = swift_allocObject();
      v26 = v152;
      *(v25 + 16) = v152;
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E890);
      v27 = swift_allocObject();
      v149 = xmmword_20D5BC410;
      *(v27 + 16) = xmmword_20D5BC410;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_20CFC4234;
      *(v28 + 24) = v25;
      *(v27 + 32) = sub_20CFC4410;
      *(v27 + 40) = v28;
      swift_beginAccess();
      v29 = v26;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v158 = v160;
      sub_20CEEFCA8(v27, 0, isUniquelyReferenced_nonNull_native, 0.25, 0.0);
      v31 = v158;
      v160 = v158;
      swift_endAccess();

      if (qword_27C81A218 != -1)
      {
        swift_once();
      }

      v32 = qword_27C81E7E0;
      v33 = swift_allocObject();
      *(v33 + 16) = v21;
      v34 = *(v31 + 16);
      v35 = v147;
      v148 = COERCE_DOUBLE(v32);
      if (v34 && (v36 = sub_20CEED8D8(v32, 0.25, 0.0), (v37 & 1) != 0))
      {
        aBlock[0] = *(*(v31 + 56) + 8 * v36);
        inited = swift_initStackObject();
        *(inited + 16) = v149;
        v39 = swift_allocObject();
        *(v39 + 16) = sub_20CFC4248;
        *(v39 + 24) = v33;
        *(inited + 32) = sub_20CFC4410;
        *(inited + 40) = v39;

        sub_20D5663C8();
        sub_20CF6C07C(inited);
      }

      else
      {
        v81 = v35;
        v82 = swift_allocObject();
        *(v82 + 16) = v149;
        v83 = swift_allocObject();
        *(v83 + 16) = sub_20CFC4248;
        *(v83 + 24) = v33;
        *(v82 + 32) = sub_20CFC4410;
        *(v82 + 40) = v83;
        swift_beginAccess();

        v84 = swift_isUniquelyReferenced_nonNull_native();
        v158 = v160;
        v85 = v82;
        v35 = v81;
        sub_20CEEFCA8(v85, v32, v84, 0.25, 0.0);

        v31 = v158;
        swift_endAccess();
      }

      v86 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v87 = swift_allocObject();
      *(v87 + 16) = v21;
      *(v87 + 24) = v86;
      v58 = swift_allocObject();
      *(v58 + 16) = sub_20CFC4250;
      *(v58 + 24) = v87;
      swift_beginAccess();
      v88 = v35;

      v63 = sub_20CEE8678(0, 1, 1, MEMORY[0x277D84F90]);
      v90 = v63[2];
      v89 = v63[3];
      if (v90 >= v89 >> 1)
      {
        v63 = sub_20CEE8678((v89 > 1), v90 + 1, 1, v63);
      }

      v63[2] = v90 + 1;
      v66 = &v63[2 * v90];
      v67 = sub_20CFC440C;
    }

    else
    {
      v68 = swift_allocObject();
      v69 = v152;
      *(v68 + 16) = v23;
      *(v68 + 24) = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E890);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_20D5BC410;
      v71 = swift_allocObject();
      *(v71 + 16) = sub_20CFC40F8;
      *(v71 + 24) = v68;
      *(v70 + 32) = sub_20CFC4144;
      *(v70 + 40) = v71;
      swift_beginAccess();
      v72 = v69;
      v73 = v23;

      v74 = swift_isUniquelyReferenced_nonNull_native();
      v158 = v160;
      sub_20CEEFCA8(v70, 0, v74, 0.0, 0.0);
      v31 = v158;
      swift_endAccess();

      v75 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v76 = swift_allocObject();
      v76[2] = v21;
      v76[3] = v75;
      v76[4] = a1;
      v76[5] = v73;
      v58 = swift_allocObject();
      *(v58 + 16) = sub_20CFC414C;
      *(v58 + 24) = v76;
      swift_beginAccess();
      v77 = v147;
      v78 = v73;

      swift_unknownObjectRetain();

      v63 = sub_20CEE8678(0, 1, 1, MEMORY[0x277D84F90]);
      v80 = v63[2];
      v79 = v63[3];
      if (v80 >= v79 >> 1)
      {
        v63 = sub_20CEE8678((v79 > 1), v80 + 1, 1, v63);
      }

      v63[2] = v80 + 1;
      v66 = &v63[2 * v80];
      v67 = sub_20CFC4158;
    }
  }

  else
  {
    if (qword_27C81A218 != -1)
    {
      swift_once();
    }

    v48 = qword_27C81E7E0;
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = swift_allocObject();
    *(v50 + 16) = v16;
    *(v50 + 24) = v49;
    *&v149 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E890);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20D5BC410;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_20CFC4298;
    *(v52 + 24) = v50;
    *(v51 + 32) = sub_20CFC4410;
    *(v51 + 40) = v52;
    swift_beginAccess();
    v150 = v14;

    v148 = COERCE_DOUBLE(v48);

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v158 = v160;
    sub_20CEEFCA8(v51, v48, v53, 0.25, 0.0);

    v31 = v158;
    swift_endAccess();

    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    v56 = v143;
    v55[2] = v54;
    v55[3] = v56;
    v57 = v152;
    v55[4] = v16;
    v55[5] = v57;
    v55[6] = v23;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_20CFC42A0;
    *(v58 + 24) = v55;
    swift_beginAccess();
    v59 = v150;

    v60 = v147;
    v61 = v57;
    v62 = v23;

    v63 = sub_20CEE8678(0, 1, 1, MEMORY[0x277D84F90]);
    v65 = v63[2];
    v64 = v63[3];
    if (v65 >= v64 >> 1)
    {
      v63 = sub_20CEE8678((v64 > 1), v65 + 1, 1, v63);
    }

    v63[2] = v65 + 1;
    v66 = &v63[2 * v65];
    v67 = sub_20CFC440C;
  }

  v66[4] = v67;
  v66[5] = v58;
  v159 = v63;
  swift_endAccess();

  v91 = swift_allocObject();
  *(v91 + 16) = a2;
  *(v91 + 24) = a3;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_20CFC4184;
  *(v92 + 24) = v91;
  swift_beginAccess();
  sub_20CEC81F4(a2);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v63 = sub_20CEE8678(0, v63[2] + 1, 1, v63);
  }

  v94 = v63[2];
  v93 = v63[3];
  if (v94 >= v93 >> 1)
  {
    v63 = sub_20CEE8678((v93 > 1), v94 + 1, 1, v63);
  }

  v63[2] = v94 + 1;
  v95 = &v63[2 * v94];
  v95[4] = sub_20CFC440C;
  v95[5] = v92;
  v144 = v63;
  v159 = v63;
  swift_endAccess();

  v97 = v31 + 64;
  v96 = *(v31 + 64);
  v98 = 1 << *(v31 + 32);
  v99 = -1;
  v100 = -1 << v98;
  if (v98 < 64)
  {
    v99 = ~v100;
  }

  v101 = v99 & v96;
  if (v101)
  {
    v102 = 0;
    v103 = __clz(__rbit64(v101));
    v104 = (v101 - 1) & v101;
    a2 = ((v98 + 63) >> 6);
LABEL_49:
    a1 = 24;
    v108 = *(v31 + 48) + 24 * v103;
    v109 = *v108;
    v110 = *(v108 + 8);
    v150 = *(v108 + 16);
    v111 = v150;
    sub_20D5663C8();
    while (v104)
    {
LABEL_50:
      v112 = __clz(__rbit64(v104));
      v104 &= v104 - 1;
      v113 = *(v31 + 48) + 24 * (v112 | (v102 << 6));
      v114 = *v113;
      v115 = *(v113 + 8);
      if (v109 + v110 < *v113 + v115)
      {
        v117 = *(v113 + 16);
        v118 = v117;

        v109 = v114;
        v110 = v115;
        v150 = v117;
      }
    }

    while (1)
    {
      v116 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        break;
      }

      if (v116 >= a2)
      {

        *&v149 = v109;
        v148 = v110;
        v96 = *(v31 + 64);
        v98 = 1 << *(v31 + 32);
        v106 = ~(-1 << v98);
        a2 = ((v98 + 63) >> 6);
        goto LABEL_58;
      }

      v104 = *(v97 + 8 * v116);
      ++v102;
      if (v104)
      {
        v102 = v116;
        goto LABEL_50;
      }
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v105 = 0;
  v106 = ~v100;
  a2 = ((v98 + 63) >> 6);
  v150 = 1;
  while ((a2 - 1) != v105)
  {
    v102 = v105 + 1;
    v107 = *(v31 + 72 + 8 * v105);
    v101 -= 64;
    v105 = (v105 + 1);
    if (v107)
    {
      v104 = (v107 - 1) & v107;
      v103 = __clz(__rbit64(v107)) - v101;
      goto LABEL_49;
    }
  }

  *&v149 = 0;
  v148 = 0.0;
LABEL_58:
  if (v98 >= 64)
  {
    v119 = -1;
  }

  else
  {
    v119 = v106;
  }

  v120 = v119 & v96;
  sub_20D5663C8();
  v121 = 0;
  a1 = 24;
  if (v120)
  {
    while (1)
    {
      v122 = v121;
LABEL_67:
      v123 = __clz(__rbit64(v120));
      v120 &= v120 - 1;
      v124 = v123 | (v122 << 6);
      v125 = (*(v31 + 48) + 24 * v124);
      v126 = *v125;
      v127 = v125[1];
      v128 = *(v125 + 2);
      v129 = *(*(v31 + 56) + 8 * v124);
      v130 = v128;
      sub_20D5663C8();
      sub_20CFC34A4(v128, v129, v149, *&v148, v150, &v159, v126, v127);

      if (!v120)
      {
        goto LABEL_63;
      }
    }
  }

  while (1)
  {
LABEL_63:
    v122 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      __break(1u);
      goto LABEL_75;
    }

    if (v122 >= a2)
    {
      break;
    }

    v120 = *(v97 + 8 * v122);
    ++v121;
    if (v120)
    {
      v121 = v122;
      goto LABEL_67;
    }
  }

  v131 = *(v146 + OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewLayout);
  if (v131)
  {
    sub_20CECF940(0, &qword_28111FF30);
    v132 = v131;
    v133 = sub_20D567FC8();
    v134 = swift_allocObject();
    *(v134 + 16) = v143;
    *(v134 + 24) = v132;
    aBlock[4] = sub_20CFC41C8;
    aBlock[5] = v134;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CFFFE8C;
    aBlock[3] = &block_descriptor_51;
    v135 = _Block_copy(aBlock);
    v136 = v147;
    v137 = v132;

    v138 = v155;
    sub_20D567658();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_20CFC4324(&qword_281120070, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F1F0);
    sub_20CFC41D0();
    v139 = v153;
    v140 = v142;
    sub_20D5686B8();
    MEMORY[0x20F31D480](0, v138, v139, v135);
    sub_20CFC41B8(v149, *&v148, v150);
    _Block_release(v135);

    (*(v151 + 8))(v139, v140);
    (*(v156 + 8))(v138, v154);
  }

  else
  {

    sub_20CFC41B8(v149, *&v148, v150);
  }
}

void sub_20CFC2008(void *a1)
{
  v2 = [a1 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v21.a = 1.0;
  v21.b = 0.0;
  v21.c = 0.0;
  v21.d = 1.0;
  v21.tx = 0.0;
  v21.ty = 0.0;
  CGAffineTransformScale(&v20, &v21, 0.925, 0.925);
  v21 = v20;
  [v3 setTransform_];

  v4 = [a1 collectionView];
  if (!v4)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 setAlpha_];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();

    [v8 setAlpha_];
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9 && (v10 = v9, v11 = swift_unknownObjectWeakLoadStrong(), v10, v11))
  {
  }

  else
  {
    v12 = sub_20D567EA8();
    if (qword_27C81A2D0 != -1)
    {
      swift_once();
    }

    v13 = qword_27C838278;
    if (os_log_type_enabled(qword_27C838278, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315650;
      *(v14 + 4) = sub_20CEE913C(0xD00000000000001ELL, 0x800000020D5D2790, &v19);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_20CEE913C(0xD000000000000024, 0x800000020D5D27B0, &v19);
      *(v14 + 22) = 2082;
      swift_beginAccess();
      swift_unknownObjectWeakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E898);
      v16 = sub_20D567868();
      v18 = sub_20CEE913C(v16, v17, &v19);

      *(v14 + 24) = v18;
      _os_log_impl(&dword_20CEB6000, v13, v12, "%s:%s: Blur view is nil while trying to fade in %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v15, -1, -1);
      MEMORY[0x20F31FC70](v14, -1, -1);
    }
  }
}

void sub_20CFC2318(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *&Strong[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewFrame];
    v12 = *&Strong[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewFrame + 8];
    v13 = *&Strong[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewFrame + 16];
    v14 = *&Strong[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewFrame + 24];
    v15 = Strong[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewFrame + 32];

    if ((v15 & 1) == 0)
    {
      v16 = [a3 collectionView];
      if (!v16)
      {
LABEL_16:
        __break(1u);
        return;
      }

      v17 = v16;
      [v16 setFrame_];
    }
  }

  v18 = [a3 collectionView];
  if (!v18)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  [v18 setContentInsetAdjustmentBehavior_];

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = *&v20[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset];
    v22 = *&v20[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset + 8];
    v23 = *&v20[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset + 16];
    v24 = *&v20[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset + 24];

    v25 = [a3 collectionView];
    if (v25)
    {
      v26 = v25;
      [v25 setContentInset_];

      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_9:
  v27 = [a3 navigationItem];
  [v27 setLargeTitleDisplayMode_];

  v28 = [a3 navigationItem];
  [v28 setLargeTitleDisplayMode_];

  sub_20CFC2594(a4, a5);
  v30 = v29;
  [a5 bounds];
  v31 = [a5 resizableSnapshotViewFromRect:v30 != 0 afterScreenUpdates:? withCapInsets:?];
  if (v31)
  {
    v32 = v31;
    [a6 insertSubview:v31 atIndex:0];
    if (v30)
    {
      [v30 removeFromSuperview];
    }
  }

  else
  {
    v32 = v30;
  }
}

void sub_20CFC2594(void *a1, void *a2)
{
  v3 = a1;
  v4 = &selRef_mediaServiceItemManager;
  v5 = [a1 navigationController];
  v6 = &selRef_mediaServiceItemManager;
  if (v5)
  {
    v7 = v5;
    v8 = [v5 parentViewController];

    if (v8)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        goto LABEL_9;
      }
    }
  }

  v10 = [v3 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 parentViewController];

    if (v12)
    {
      v13 = [v12 parentViewController];

      if (v13)
      {
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
LABEL_9:
          v3 = v9;
          v14 = [v3 view];
          if (v14)
          {
            v15 = v14;
            v16 = [v14 subviews];

            v17 = sub_20CECF940(0, &qword_28111FB70);
            v18 = sub_20D567A78();

            v85 = a2;
            if (v18 >> 62)
            {
              v19 = sub_20D568768();
              if (v19)
              {
                goto LABEL_12;
              }
            }

            else
            {
              v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v19)
              {
LABEL_12:
                v20 = 0;
                v6 = (v18 & 0xFFFFFFFFFFFFFF8);
                v4 = off_277DB1000;
                while (1)
                {
                  if ((v18 & 0xC000000000000001) != 0)
                  {
                    v21 = MEMORY[0x20F31DD20](v20, v18);
                  }

                  else
                  {
                    if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_38;
                    }

                    v21 = *(v18 + 8 * v20 + 32);
                  }

                  v22 = v21;
                  v23 = v20 + 1;
                  if (__OFADD__(v20, 1))
                  {
                    __break(1u);
LABEL_38:
                    __break(1u);
                    goto LABEL_39;
                  }

                  objc_opt_self();
                  v24 = swift_dynamicCastObjCClass();
                  if (v24)
                  {
                    break;
                  }

                  ++v20;
                  if (v23 == v19)
                  {
                    goto LABEL_41;
                  }
                }

                v25 = v24;

                v26 = [v3 view];
                if (!v26)
                {
                  goto LABEL_50;
                }

                v27 = v26;
                [v26 frame];
                v29 = v28;
                v31 = v30;
                v33 = v32;
                v35 = v34;

                v36 = [objc_allocWithZone(HUWallpaperView) initWithFrame_];
                v37 = [v25 wallpaper];
                [v36 populateWallpaper:v37 withAnimation:0 onlyIfNeeded:0];

                v38 = v36;
                v39 = [v3 view];
                if (v39)
                {
                  v40 = v39;
                  v41 = [v3 view];

                  if (!v41)
                  {
                    goto LABEL_52;
                  }

                  [v41 frame];
                  v43 = v42;
                  v45 = v44;
                  v47 = v46;
                  v49 = v48;

                  [v40 convertRect:v85 toCoordinateSpace:{v43, v45, v47, v49}];
                  v51 = v50;
                  v53 = v52;
                  v55 = v54;
                  v57 = v56;

                  [v38 setFrame_];
                  [v38 setClipsToBounds_];

                  [v85 insertSubview:v38 atIndex:0];
                  return;
                }

                goto LABEL_51;
              }
            }

LABEL_41:

            v74 = sub_20D567EA8();
            if (qword_27C81A2D0 != -1)
            {
              swift_once();
            }

            v75 = qword_27C838278;
            if (!os_log_type_enabled(qword_27C838278, v74))
            {
LABEL_46:

              return;
            }

            v3 = v3;
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v88 = v77;
            *v76 = 136315650;
            *(v76 + 4) = sub_20CEE913C(0xD00000000000001ELL, 0x800000020D5D2790, &v88);
            *(v76 + 12) = 2080;
            *(v76 + 14) = sub_20CEE913C(0xD000000000000024, 0x800000020D5D27B0, &v88);
            *(v76 + 22) = 2082;
            v78 = [v3 view];

            if (v78)
            {
              v79 = [v78 subviews];

              v80 = sub_20D567A78();
              v81 = MEMORY[0x20F31CF30](v80, v17);
              v83 = v82;

              v84 = sub_20CEE913C(v81, v83, &v88);

              *(v76 + 24) = v84;
              _os_log_impl(&dword_20CEB6000, v75, v74, "%s:%s: Failed to get wallpaper view %{public}s", v76, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x20F31FC70](v77, -1, -1);
              MEMORY[0x20F31FC70](v76, -1, -1);
              goto LABEL_46;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          return;
        }
      }
    }
  }

  LOBYTE(v17) = sub_20D567EA8();
  if (qword_27C81A2D0 != -1)
  {
LABEL_39:
    swift_once();
  }

  v58 = qword_27C838278;
  if (os_log_type_enabled(qword_27C838278, v17))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v88 = v86;
    *v59 = 136316162;
    *(v59 + 4) = sub_20CEE913C(0xD00000000000001ELL, 0x800000020D5D2790, &v88);
    *(v59 + 12) = 2080;
    *(v59 + 14) = sub_20CEE913C(0xD000000000000024, 0x800000020D5D27B0, &v88);
    *(v59 + 22) = 2114;
    v61 = [v3 v4[228]];
    *(v59 + 24) = v61;
    *v60 = v61;
    *(v59 + 32) = 2114;
    v62 = [v3 v4[228]];
    v63 = v6;
    if (v62)
    {
      v64 = v6[475];
      v65 = v62;
      v66 = [v62 v64];

      v67 = v66;
    }

    else
    {
      v66 = 0;
      v67 = 0;
    }

    *(v59 + 34) = v66;
    v60[1] = v67;
    *(v59 + 42) = 2114;
    v68 = [v3 v4[228]];
    if (v68)
    {
      v69 = v68;
      v70 = [v68 v63 + 3716];

      v71 = v87;
      if (v70)
      {
        v72 = [v70 v63 + 3716];

        v73 = v72;
      }

      else
      {
        v72 = 0;
        v73 = 0;
      }
    }

    else
    {
      v72 = 0;
      v73 = 0;
      v71 = v87;
    }

    *(v59 + 44) = v72;
    v60[2] = v73;
    _os_log_impl(&dword_20CEB6000, v58, v17, "%s:%s: Failed to get splitViewController. nav controller: (%{public}@) parent: (%{public}@) parent's parent: (%{public}@)", v59, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v60, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v71, -1, -1);
    MEMORY[0x20F31FC70](v59, -1, -1);
  }
}

void sub_20CFC2E00(void *a1)
{
  v2 = [a1 collectionView];
  if (v2)
  {
    v3 = v2;
    v6[0] = 0x3FF0000000000000;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0x3FF0000000000000;
    v6[4] = 0;
    v6[5] = 0;
    [v2 setTransform_];

    v4 = [a1 collectionView];
    if (v4)
    {
      v5 = v4;
      [v4 setAlpha_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20CFC2EA8(uint64_t a1, void *a2)
{
  v3 = sub_20D563DB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a2 navigationItem];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetNavigationBarAppearance);
  }

  else
  {
    v10 = 0;
  }

  [v7 setStandardAppearance_];

  v11 = [a2 collectionView];
  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  [v11 setShowsVerticalScrollIndicator_];

  v13 = [a2 collectionView];
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v13;
  [v13 _setSafeAreaInsetsFrozen_];

  v15 = [a2 collectionView];
  if (!v15)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 setDirectionalLayoutMargins_];

  (*(v4 + 104))(v6, *MEMORY[0x277D15248], v3);
  sub_20CFC4324(&qword_2811209A0, MEMORY[0x277D15260]);
  LOBYTE(v16) = sub_20D563978();
  (*(v4 + 8))(v6, v3);
  if (v16)
  {
    v17 = [a2 navigationController];
    if (v17)
    {
      v18 = v17;
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = [v19 duplicateWallpaperView];
        [v20 removeFromSuperview];
      }
    }
  }
}

void sub_20CFC317C(int a1, id a2, uint64_t a3, void *a4, void *a5)
{
  v8 = [a2 collectionView];
  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = v8;
  [v8 setContentInsetAdjustmentBehavior_];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_5:
    v17 = [a2 navigationItem];
    [v17 setLargeTitleDisplayMode_];

    v18 = [a2 navigationItem];
    [v18 setLargeTitleDisplayMode_];

    v19 = [a4 containerView];
    v20 = [v19 subviews];

    sub_20CECF940(0, &qword_28111FB70);
    v21 = sub_20D567A78();

    if (v21 >> 62)
    {
      if (sub_20D568768())
      {
        goto LABEL_7;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x20F31DD20](0, v21);
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v22 = *(v21 + 32);
      }

      v23 = v22;

      [a5 insertSubview:v23 atIndex:0];

LABEL_13:
      v24 = [a4 containerView];
      v25 = [v24 subviews];

      v26 = sub_20D567A78();
      if (v26 >> 62)
      {
        if (sub_20D568768())
        {
          goto LABEL_15;
        }
      }

      else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_15:
        if ((v26 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x20F31DD20](0, v26);
          goto LABEL_18;
        }

        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v27 = *(v26 + 32);
LABEL_18:
          v28 = v27;

          [a5 insertSubview:v28 atIndex:1];

          return;
        }

        goto LABEL_24;
      }

      return;
    }

    goto LABEL_13;
  }

  v11 = *&Strong[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset];
  v12 = *&Strong[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset + 8];
  v13 = *&Strong[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset + 16];
  v14 = *&Strong[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset + 24];

  v15 = [a2 collectionView];
  if (v15)
  {
    v16 = v15;
    [v15 setContentInset_];

    goto LABEL_5;
  }

LABEL_26:
  __break(1u);
}

void sub_20CFC34A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, double a7, double a8)
{
  if (a1)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:a1 timingParameters:a7];
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:3 curve:0 animations:a7];
  }

  v12 = v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = (a2 + 32);
    do
    {
      v15 = swift_allocObject();
      v16 = *v14++;
      *(v15 + 16) = v16;
      v34 = sub_20CFC42B0;
      v35 = v15;
      aBlock = MEMORY[0x277D85DD0];
      v31 = 1107296256;
      v32 = sub_20CFFFE8C;
      v33 = &block_descriptor_99;
      v17 = _Block_copy(&aBlock);
      swift_retain_n();

      [v12 addAnimations_];

      _Block_release(v17);
      --v13;
    }

    while (v13);
  }

  if (a5 == 1 || *&a3 != a7 || *&a4 != a8)
  {
    goto LABEL_8;
  }

  if (a1)
  {
    if (!a5)
    {
      goto LABEL_8;
    }

    sub_20CECF940(0, &qword_27C81BFC0);
    sub_20CFC42F0(a3, a4, a5);
    v18 = a1;
    v19 = sub_20D5683F8();

    sub_20CFC41B8(a3, a4, a5);
    if ((v19 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (a5)
  {
LABEL_8:
    [v12 startAnimationAfterDelay_];

    return;
  }

  swift_beginAccess();
  v20 = *a6;
  v21 = *(*a6 + 16);
  sub_20D5663C8();
  if (!v21)
  {
LABEL_20:

    goto LABEL_8;
  }

  v22 = 0;
  while (v22 < *(v20 + 16))
  {
    v23 = swift_allocObject();
    *(v23 + 16) = *(v20 + 32 + 16 * v22);
    v34 = sub_20CFC42B8;
    v35 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_20CFC382C;
    v33 = &block_descriptor_105;
    v24 = _Block_copy(&aBlock);
    swift_retain_n();

    [v12 addCompletion_];

    _Block_release(v24);
    if (v21 == ++v22)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t sub_20CFC382C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_20CFC3880(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:131.563 damping:22.9402 initialVelocity:{0.0, 0.0}];
  [v4 setImplicitDuration_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v4 timingParameters:0.55];
  v6 = [a1 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setCollectionViewLayout:a2 withAnimator:v5];
  }

  else
  {
    __break(1u);
  }
}

id sub_20CFC39A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardAnimator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20CFC3A3C(uint64_t (*a1)(uint64_t), uint64_t a2, void *a3, void *a4)
{
  type metadata accessor for GridStatusCell();
  if (swift_dynamicCastClass())
  {
    [a3 frame];
    [a4 setFrame_];
  }

  [a4 frame];
  [a3 setFrame_];
  [a4 alpha];
  [a3 setAlpha_];
  v7 = [a3 layer];
  [a4 transform3D];
  [v7 setTransform_];

  result = [a3 layoutIfNeeded];
  if (a1)
  {
    return a1(1);
  }

  return result;
}

id sub_20CFC3B58(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a4;
  v11 = _sSo35UICollectionViewCompositionalLayoutC6HomeUIE10_animation3for2to4typeyySbcSgcSgSo0a8ReusableB0CSg_So0abD10AttributesCSgSo01_aB20CustomAnimationsTypeVtF_0(a3, a4, a5);
  v13 = v12;

  if (v11)
  {
    v15[4] = v11;
    v15[5] = v13;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_20CFC3C48;
    v15[3] = &block_descriptor_14;
    v11 = _Block_copy(v15);
  }

  return v11;
}

uint64_t sub_20CFC3C48(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v3 = sub_20CFC40E0;
  }

  else
  {
    v4 = 0;
  }

  v2(v3, v4);
  sub_20CEC8164(v3);
}

id sub_20CFC3CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

BOOL sub_20CFC3D6C(unint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6)
{
  if (a3 != a5 || a4 != a6)
  {
    return 0;
  }

  v7 = (a1 | a2) == 0;
  if (!a1 || !a2)
  {
    return v7;
  }

  sub_20CECF940(0, &qword_27C81BFC0);
  v11 = a2;
  v12 = a1;
  v13 = sub_20D5683F8();

  return v13 & 1;
}

id (*_sSo35UICollectionViewCompositionalLayoutC6HomeUIE10_animation3for2to4typeyySbcSgcSgSo0a8ReusableB0CSg_So0abD10AttributesCSgSo01_aB20CustomAnimationsTypeVtF_0(void *a1, void *a2, uint64_t a3))(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  if (a1 && a2)
  {
    if (a3 == 1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = a1;
      *(v5 + 24) = a2;
      v6 = a1;
      v7 = a2;
      return sub_20CFC4374;
    }
  }

  else
  {
    v9 = sub_20D567EA8();
    if (qword_27C81A2D0 != -1)
    {
      swift_once();
    }

    v10 = qword_27C838278;
    if (os_log_type_enabled(qword_27C838278, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v11 = 136315906;
      *(v11 + 4) = sub_20CEE913C(0xD00000000000001ELL, 0x800000020D5D2790, &v16);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_20CEE913C(0xD000000000000018, 0x800000020D5D28F0, &v16);
      *(v11 + 22) = 2114;
      *(v11 + 24) = a1;
      *(v11 + 32) = 2114;
      *(v11 + 34) = a2;
      *v12 = a1;
      v12[1] = a2;
      v14 = a1;
      v15 = a2;
      _os_log_impl(&dword_20CEB6000, v10, v9, "%s:%s: Required arguments not provided. view: (%{public}@) toLayoutAttributes: (%{public}@)", v11, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v12, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v13, -1, -1);
      MEMORY[0x20F31FC70](v11, -1, -1);
    }
  }

  return 0;
}

unint64_t sub_20CFC4074()
{
  result = qword_27C81E880;
  if (!qword_27C81E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E880);
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_20CFC40F8()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 setAlpha_];
}

uint64_t sub_20CFC4184()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

void sub_20CFC41B8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
  }
}

unint64_t sub_20CFC41D0()
{
  result = qword_281120050;
  if (!qword_281120050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81F1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281120050);
  }

  return result;
}

uint64_t objectdestroy_68Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CFC42B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

id sub_20CFC42F0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
    return a3;
  }

  return result;
}

uint64_t sub_20CFC4324(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20CFC4390()
{
  result = qword_27C81E8A0;
  if (!qword_27C81E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E8A0);
  }

  return result;
}

uint64_t sub_20CFC44A4(void *a1)
{
  v3 = [v1 home];
  v4 = [v3 accessories];

  sub_20CECF940(0, &qword_28111FFF0);
  v5 = sub_20D567A78();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_20:

    goto LABEL_21;
  }

LABEL_19:
  v6 = sub_20D568768();
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_3:
  v7 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x20F31DD20](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v19 = v8;
    if (sub_20CFC46B4(&v19, a1))
    {
      break;
    }

    ++v7;
    if (v10 == v6)
    {
      goto LABEL_20;
    }
  }

  v11 = [v9 hf_displayName];
  v12 = sub_20D567838();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = [v9 hf_displayName];
    v17 = sub_20D567838();

    goto LABEL_22;
  }

LABEL_21:
  v16 = [a1 name];
  v17 = sub_20D567838();
LABEL_22:

  return v17;
}

uint64_t sub_20CFC46B4(id *a1, void *a2)
{
  v4 = sub_20D563818();
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D948);
  MEMORY[0x28223BE20](v33);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = [*a1 device];
  if (v16)
  {
    v17 = v16;
    v18 = a2;
    v19 = [v16 uniqueIdentifier];

    sub_20D5637E8();
    a2 = v18;
    v20 = *(v35 + 56);
    v20(v15, 0, 1, v4);
  }

  else
  {
    v20 = *(v35 + 56);
    v20(v15, 1, 1, v4);
  }

  v21 = [a2 device];
  v22 = [v21 uniqueIdentifier];

  sub_20D5637E8();
  v20(v13, 0, 1, v4);
  v23 = *(v33 + 48);
  sub_20CF073C8(v15, v7);
  sub_20CF073C8(v13, &v7[v23]);
  v24 = v35;
  v25 = *(v35 + 48);
  if (v25(v7, 1, v4) != 1)
  {
    sub_20CF073C8(v7, v34);
    if (v25(&v7[v23], 1, v4) != 1)
    {
      v27 = v24;
      v28 = v32;
      (*(v24 + 32))(v32, &v7[v23], v4);
      sub_20CF72C88();
      v29 = v34;
      v26 = sub_20D5677E8();
      v30 = *(v27 + 8);
      v30(v28, v4);
      sub_20CEF928C(v13, &qword_27C81C180);
      sub_20CEF928C(v15, &qword_27C81C180);
      v30(v29, v4);
      sub_20CEF928C(v7, &qword_27C81C180);
      return v26 & 1;
    }

    sub_20CEF928C(v13, &qword_27C81C180);
    sub_20CEF928C(v15, &qword_27C81C180);
    (*(v24 + 8))(v34, v4);
    goto LABEL_9;
  }

  sub_20CEF928C(v13, &qword_27C81C180);
  sub_20CEF928C(v15, &qword_27C81C180);
  if (v25(&v7[v23], 1, v4) != 1)
  {
LABEL_9:
    sub_20CEF928C(v7, &qword_27C81D948);
    v26 = 0;
    return v26 & 1;
  }

  sub_20CEF928C(v7, &qword_27C81C180);
  v26 = 1;
  return v26 & 1;
}

id NoResponseResidentsBannerItem.__allocating_init(home:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithHome_];

  return v3;
}

id NoResponseResidentsBannerItem.init(home:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NoResponseResidentsBannerItem();
  v3 = objc_msgSendSuper2(&v5, sel_initWithHome_, a1);

  return v3;
}

id NoResponseResidentsBannerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoResponseResidentsBannerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20CFC4C7C()
{
  v1 = sub_20D565988();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v99 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D14858]) init];
  v9 = [v0 home];
  v10 = [v9 supportsResidentSelection];

  if (!v10 || (v11 = [v0 home], v12 = objc_msgSend(v11, sel_hf_currentUserIsAdministrator), v11, !v12))
  {
    v16 = *MEMORY[0x277D13FB8];
    sub_20CECF940(0, &qword_28111FB20);
    v17 = v8;
    v18 = sub_20D5683C8();
    [v17 setObject:v18 forKeyedSubscript:v16];

LABEL_56:
    [objc_opt_self() futureWithResult_];

    return;
  }

  v13 = [v0 home];
  v14 = [v13 autoSelectedPreferredResidents];

  if (v14)
  {
    sub_20CECF940(0, &qword_27C81E8B0);
    v15 = sub_20D567A78();
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v100 = v2;
  v101 = v1;
  if (v15 >> 62)
  {
LABEL_59:
    v19 = sub_20D568768();
  }

  else
  {
    v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v99 = v5;
  v102 = v7;
  v7 = v0;
  v105 = v8;
  if (v19)
  {
    v5 = 0;
    v0 = (v15 & 0xFFFFFFFFFFFFFF8);
    do
    {
      v20 = v19 != v5;
      if (v19 == v5)
      {
        break;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x20F31DD20](v5, v15);
      }

      else
      {
        if (v5 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v21 = *(v15 + 8 * v5 + 32);
      }

      v22 = v21;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v8 = [v21 hf_isReachable];

      ++v5;
    }

    while (!v8);
  }

  else
  {
    v20 = 1;
  }

  v23 = [v7 home];
  v24 = [v23 userSelectedPreferredResident];

  v104 = v7;
  if (v24)
  {

    v25 = [v7 home];
    v26 = [v25 userSelectedPreferredResident];

    if (v26)
    {
      v27 = [v26 hf_isReachable];

      if ((v20 & v27 & 1) == 0)
      {
        v103 = v27 ^ 1;
        goto LABEL_28;
      }

LABEL_25:

LABEL_40:
      v8 = v105;
LABEL_55:
      v88 = *MEMORY[0x277D13DA0];
      v106 = sub_20CECF940(0, &qword_27C81E8B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E8B8);
      v89 = sub_20D568C48();
      v90 = objc_opt_self();
      v91 = [v90 setWithObject_];
      swift_unknownObjectRelease();
      [v8 setObject:v91 forKeyedSubscript:v88];

      v92 = *MEMORY[0x277D13DA8];
      v93 = [v104 home];
      v94 = [v90 setWithObject_];

      [v8 setObject:v94 forKeyedSubscript:v92];
      v95 = *MEMORY[0x277D13FB8];
      sub_20CECF940(0, &qword_28111FB20);
      v96 = sub_20D5683C8();
      [v8 setObject:v96 forKeyedSubscript:v95];

      v97 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      [v8 setObject:v97 forKeyedSubscript:@"bannerItemCategory"];

      v98 = v8;
      goto LABEL_56;
    }

    v103 = 1;
  }

  else
  {
    if (v20)
    {
      goto LABEL_25;
    }

    v103 = 0;
  }

LABEL_28:
  v28 = *MEMORY[0x277D13F60];
  v29 = sub_20D5677F8();
  v30 = HULocalizedString(v29);

  if (!v30)
  {
    sub_20D567838();
    v30 = sub_20D5677F8();
  }

  v31 = v105;
  [v105 setObject:v30 forKeyedSubscript:v28];

  v32 = *MEMORY[0x277D13DE8];
  v33 = sub_20D5677F8();
  v34 = HULocalizedString(v33);

  if (!v34)
  {
    sub_20D567838();
    v34 = sub_20D5677F8();
  }

  [v31 setObject:v34 forKeyedSubscript:v32];

  v35 = objc_opt_self();
  v36 = [v35 configurationWithScale_];
  v37 = [v35 configurationPreferringMulticolor];
  v38 = [v36 configurationByApplyingConfiguration_];

  v39 = objc_allocWithZone(MEMORY[0x277D14B78]);
  v40 = sub_20D5677F8();
  v41 = [v39 initWithSystemImageName:v40 configuration:v38];

  v42 = *MEMORY[0x277D13E88];
  v43 = [objc_allocWithZone(MEMORY[0x277D14728]) initWithSymbolIconConfiguration_];
  [v31 setObject:v43 forKeyedSubscript:v42];

  if (v20)
  {

    if (v103)
    {
      v44 = [v104 home];
      v45 = [v44 userSelectedPreferredResident];

      v8 = v105;
      if (v45)
      {
        if (qword_27C81A2E8 != -1)
        {
          swift_once();
        }

        v46 = qword_27C838288;
        sub_20D565998();
        v47 = v104;
        v48 = v45;
        v49 = sub_20D565968();
        v50 = sub_20D567EA8();

        v51 = os_log_type_enabled(v49, v50);
        v53 = v100;
        v52 = v101;
        if (v51)
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138412546;
          *(v54 + 4) = v47;
          *(v54 + 12) = 2112;
          *(v54 + 14) = v48;
          *v55 = v47;
          v55[1] = v45;
          v56 = v47;
          v57 = v48;
          _os_log_impl(&dword_20CEB6000, v49, v50, "%@: Displaying selected home hub not responding for %@", v54, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
          swift_arrayDestroy();
          MEMORY[0x20F31FC70](v55, -1, -1);
          MEMORY[0x20F31FC70](v54, -1, -1);
        }

        (*(v53 + 8))(v99, v52);
        v58 = *MEMORY[0x277D13E20];
        v59 = sub_20D5677F8();
        v60 = HULocalizedString(v59);

        sub_20D567838();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_20D5BC410;
        v62 = sub_20CFC44A4(v48);
        v64 = v63;
        *(v61 + 56) = MEMORY[0x277D837D0];
        *(v61 + 64) = sub_20CED4498();
        *(v61 + 32) = v62;
        *(v61 + 40) = v64;
        sub_20D567808();

        v65 = sub_20D5677F8();

        v8 = v105;
        [v105 setObject:v65 forKeyedSubscript:v58];
      }

      goto LABEL_55;
    }

    goto LABEL_40;
  }

  if (v103)
  {

    v66 = [v104 home];
    v67 = [v66 userSelectedPreferredResident];

    v8 = v105;
    v68 = v102;
    if (!v67)
    {
      goto LABEL_55;
    }

LABEL_49:
    if (qword_27C81A2E8 != -1)
    {
      swift_once();
    }

    v70 = qword_27C838288;
    sub_20D565998();
    v71 = v104;
    v72 = v67;
    v73 = sub_20D565968();
    v74 = sub_20D567EA8();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412546;
      *(v75 + 4) = v71;
      *(v75 + 12) = 2112;
      *(v75 + 14) = v72;
      *v76 = v71;
      v76[1] = v72;
      v77 = v71;
      v78 = v72;
      _os_log_impl(&dword_20CEB6000, v73, v74, "%@: Displaying auto home hub not responding for %@", v75, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
      swift_arrayDestroy();
      v79 = v76;
      v8 = v105;
      MEMORY[0x20F31FC70](v79, -1, -1);
      v68 = v102;
      MEMORY[0x20F31FC70](v75, -1, -1);
    }

    (*(v100 + 8))(v68, v101);
    v80 = *MEMORY[0x277D13E20];
    v81 = sub_20D5677F8();
    v82 = HULocalizedString(v81);

    sub_20D567838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_20D5BC410;
    v84 = sub_20CFC44A4(v72);
    v86 = v85;
    *(v83 + 56) = MEMORY[0x277D837D0];
    *(v83 + 64) = sub_20CED4498();
    *(v83 + 32) = v84;
    *(v83 + 40) = v86;
    sub_20D567808();

    v87 = sub_20D5677F8();

    [v8 setObject:v87 forKeyedSubscript:v80];

    goto LABEL_55;
  }

  v8 = v105;
  v68 = v102;
  if (!v19)
  {

    goto LABEL_55;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    v69 = MEMORY[0x20F31DD20](0, v15);
    goto LABEL_48;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v69 = *(v15 + 32);
LABEL_48:
    v67 = v69;

    goto LABEL_49;
  }

  __break(1u);
}

uint64_t sub_20CFC5A38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D708);
  __swift_allocate_value_buffer(v0, qword_27C8381A0);
  __swift_project_value_buffer(v0, qword_27C8381A0);
  return sub_20D5665E8();
}

uint64_t sub_20CFC5AEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E8E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E8F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  sub_20CF156D0(&qword_2811209E8, &qword_27C81E8F0);
  sub_20D563538();
  v11[15] = 0;
  sub_20D563528();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E8F8);
  a1[4] = sub_20CFC6290();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_20CF156D0(&qword_281120A38, &qword_27C81E8E8);
  sub_20D5634E8();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_20CFC5D4C()
{
  v1 = *v0;
  sub_20D5663C8();
  return v1;
}

uint64_t sub_20CFC5DAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D708);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E8E0);
  sub_20D566528();
  *(swift_allocObject() + 16) = xmmword_20D5BC410;
  if (qword_27C81A220 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27C8381A0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  sub_20D566548();
  sub_20D5663C8();

  v5 = sub_20D5663C8();

  return v5;
}

unint64_t sub_20CFC5FCC()
{
  result = qword_27C81E8C0;
  if (!qword_27C81E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81E8C0);
  }

  return result;
}

uint64_t sub_20CFC6020()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E8C8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E8D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E8D8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20D5BC4B0;
  v9 = sub_20D566438();
  v10 = MEMORY[0x277CE1A00];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  sub_20D566448();
  v11 = sub_20D566508();
  v12 = MEMORY[0x277CE1A20];
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  __swift_allocate_boxed_opaque_existential_1((v8 + 72));
  sub_20D566448();
  sub_20D5663F8();

  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x20F31B8D0](v7, v4, OpaqueTypeConformance2);
  v16[0] = v4;
  v16[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_20D566418();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

unint64_t sub_20CFC6290()
{
  result = qword_281120A48;
  if (!qword_281120A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81E8F8);
    sub_20CF156D0(&qword_2811209F0, &qword_27C81E8F0);
    sub_20CFC6348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281120A48);
  }

  return result;
}

unint64_t sub_20CFC6348()
{
  result = qword_281120A40;
  if (!qword_281120A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81E8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281120A40);
  }

  return result;
}

BOOL _sSo25HUAddPeopleViewControllerC6HomeUIE26adaptiveTemperatureEnabled3forSbSo6HMHomeCSg_tF_0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [v1 accessories];
  sub_20CF76A34();
  v3 = sub_20D567A78();

  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_20D568768();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x20F31DD20](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v9 = [v7 hf_adaptiveTemperatureEnabled];

    ++v5;
  }

  while (!v9);

  return v6;
}

id ActivityLogSettingsModuleController.__allocating_init(module:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithModule_];

  return v3;
}

char *ActivityLogSettingsModuleController.init(module:)(void *a1)
{
  v3 = OBJC_IVAR___HUActivityLogSettingsModuleController_durationFormatter;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  type metadata accessor for ActivityLogItemModule();
  *&v1[OBJC_IVAR___HUActivityLogSettingsModuleController_activityLogItemModule] = swift_dynamicCastClassUnconditional();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ActivityLogSettingsModuleController();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v10, sel_initWithModule_, v4);
  v6 = OBJC_IVAR___HUActivityLogSettingsModuleController_durationFormatter;
  v7 = *&v5[OBJC_IVAR___HUActivityLogSettingsModuleController_durationFormatter];
  v8 = v5;
  [v7 setZeroFormattingBehavior_];
  [*&v5[v6] setCollapsesLargestUnit_];
  [*&v5[v6] setAllowedUnits_];
  [*&v5[v6] setUnitsStyle_];

  return v8;
}

void sub_20CFC6760(int a1, id a2, char *a3)
{
  if (([a2 isEventLogEnabled] & 1) == 0)
  {
    v4 = *(*&a3[OBJC_IVAR___HUActivityLogSettingsModuleController_activityLogItemModule] + OBJC_IVAR___HUActivityLogItemModule_home);
    v5 = swift_allocObject();
    *(v5 + 16) = 1;
    *(v5 + 24) = v4;
    *(v5 + 32) = a3;
    *(v5 + 40) = 0;
    *(v5 + 48) = 0;
    v9[4] = sub_20CFC97D0;
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_20CFC7884;
    v9[3] = &block_descriptor_49;
    v6 = _Block_copy(v9);
    v7 = v4;
    v8 = a3;

    [v7 updateEventLogEnabled:1 completionHandler:v6];
    _Block_release(v6);
  }
}

void sub_20CFC68FC()
{
  v1 = sub_20D5677F8();
  v2 = HULocalizedString(v1);

  sub_20D567838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20D5BC410;
  v4 = [*(*&v0[OBJC_IVAR___HUActivityLogSettingsModuleController_activityLogItemModule] + OBJC_IVAR___HUActivityLogItemModule_home) name];
  v5 = sub_20D567838();
  v7 = v6;

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_20CED4498();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_20D567808();

  v8 = sub_20D5677F8();
  v9 = HULocalizedString(v8);

  sub_20D567838();
  v10 = sub_20D5677F8();

  v11 = sub_20D5677F8();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v13 = sub_20D5677F8();
  v14 = HULocalizedString(v13);

  sub_20D567838();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v16 = v0;
  v17 = sub_20D5677F8();

  v35 = sub_20CFC96EC;
  v36 = v15;
  v31 = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_20CF13714;
  v34 = &block_descriptor_17;
  v18 = _Block_copy(&v31);

  v19 = objc_opt_self();
  v20 = [v19 actionWithTitle:v17 style:1 handler:v18];
  _Block_release(v18);

  v21 = sub_20D5677F8();
  v22 = HULocalizedString(v21);

  sub_20D567838();
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  v24 = v16;
  v25 = sub_20D5677F8();

  v35 = sub_20CFC96F4;
  v36 = v23;
  v31 = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_20CF13714;
  v34 = &block_descriptor_23;
  v26 = _Block_copy(&v31);

  v27 = [v19 actionWithTitle:v25 style:0 handler:v26];
  _Block_release(v26);

  [v12 addAction_];
  [v12 addAction_];
  v28 = [objc_opt_self() requestWithViewController_];
  v29 = [v24 host];
  if (v29)
  {
    v30 = [v29 moduleController:v24 presentViewControllerForRequest:v28];
    swift_unknownObjectRelease();
  }
}

void sub_20CFC6DE0(uint64_t a1, char *a2)
{
  v3 = sub_20D565988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A320 != -1)
  {
    swift_once();
  }

  v7 = qword_27C8382B8;
  sub_20D565998();
  v8 = sub_20D565968();
  v9 = sub_20D567EC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_20CEB6000, v8, v9, "User tapped cancel", v10, 2u);
    MEMORY[0x20F31FC70](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v11 = [a2 host];
  if (v11)
  {
    v12 = v11;
    if ([v11 respondsToSelector_])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
      v13 = swift_allocObject();
      v14 = *&a2[OBJC_IVAR___HUActivityLogSettingsModuleController_activityLogItemModule];
      *(v13 + 16) = xmmword_20D5BA040;
      v15 = *(v14 + OBJC_IVAR___HUActivityLogItemModule_activityLogEnableItem);
      *(v13 + 32) = v15;
      sub_20CECF940(0, &qword_281120AC0);
      v16 = v15;
      v17 = sub_20D567A58();

      [v12 reloadCellForItems:v17 withDiffableDataSourceReload:0];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_20CFC7044(uint64_t a1, char *a2)
{
  v3 = sub_20D565988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A320 != -1)
  {
    swift_once();
  }

  v7 = qword_27C8382B8;
  sub_20D565998();
  v8 = sub_20D565968();
  v9 = sub_20D567EC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_20CEB6000, v8, v9, "User tapped turn off Activity History", v10, 2u);
    MEMORY[0x20F31FC70](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = *(*&a2[OBJC_IVAR___HUActivityLogSettingsModuleController_activityLogItemModule] + OBJC_IVAR___HUActivityLogItemModule_home);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v12;
  *(v13 + 32) = a2;
  *(v13 + 40) = sub_20CFC96FC;
  *(v13 + 48) = v11;
  aBlock[4] = sub_20CFC97D0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CFC7884;
  aBlock[3] = &block_descriptor_33;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = v12;
  v17 = v15;

  [v16 updateEventLogEnabled:0 completionHandler:v14];
  _Block_release(v14);
}

void sub_20CFC72E4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v7[8] = v2;
    v7[9] = v3;
    v4 = *(*(a2 + OBJC_IVAR___HUActivityLogSettingsModuleController_activityLogItemModule) + OBJC_IVAR___HUActivityLogItemModule_home);
    v7[4] = sub_20CFC78F0;
    v7[5] = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_20CFC7884;
    v7[3] = &block_descriptor_36;
    v5 = _Block_copy(v7);
    v6 = v4;
    [v6 clearEventLogWithCompletionHandler_];
    _Block_release(v5);
  }
}

void sub_20CFC73B4(void *a1, int a2, void *a3, char *a4, void (*a5)(void), void (*a6)(void))
{
  v49 = a2;
  v11 = sub_20D565988();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  if (a1)
  {
    v48 = a5;
    v18 = a1;
    if (qword_27C81A2B8 != -1)
    {
      swift_once();
    }

    v19 = qword_27C838268;
    sub_20D565998();
    v20 = a1;
    v21 = a3;
    v22 = sub_20D565968();
    v23 = sub_20D567EA8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47 = a4;
      v26 = v25;
      *v24 = 67109634;
      *(v24 + 4) = v49 & 1;
      *(v24 + 8) = 2112;
      v27 = a1;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 10) = v28;
      *(v24 + 18) = 2112;
      *(v24 + 20) = v21;
      *v26 = v28;
      v26[1] = v21;
      v29 = v21;
      _os_log_impl(&dword_20CEB6000, v22, v23, "Error setting Activity History to %{BOOL}d: %@ for home: %@", v24, 0x1Cu);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
      swift_arrayDestroy();
      v30 = v26;
      a4 = v47;
      MEMORY[0x20F31FC70](v30, -1, -1);
      MEMORY[0x20F31FC70](v24, -1, -1);
    }

    (*(v12 + 8))(v17, v11);
    v31 = [a4 host];
    a5 = v48;
    if (v31)
    {
      v32 = v31;
      if ([v31 respondsToSelector_])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
        v33 = swift_allocObject();
        v34 = *&a4[OBJC_IVAR___HUActivityLogSettingsModuleController_activityLogItemModule];
        *(v33 + 16) = xmmword_20D5BA040;
        v35 = *(v34 + OBJC_IVAR___HUActivityLogItemModule_activityLogEnableItem);
        *(v33 + 32) = v35;
        sub_20CECF940(0, &qword_281120AC0);
        v36 = v35;
        v37 = sub_20D567A58();

        [v32 reloadCellForItems:v37 withDiffableDataSourceReload:0];

        swift_unknownObjectRelease();
        if (!a5)
        {
          return;
        }

LABEL_18:
        a5(a1);
        return;
      }

      swift_unknownObjectRelease();
    }

    if (!a5)
    {
      return;
    }

    goto LABEL_18;
  }

  if (qword_27C81A2B8 != -1)
  {
    swift_once();
  }

  v38 = qword_27C838268;
  sub_20D565998();
  v39 = a3;
  v40 = sub_20D565968();
  v41 = sub_20D567EC8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v48 = a6;
    v43 = v42;
    v44 = swift_slowAlloc();
    *v43 = 67109378;
    *(v43 + 4) = v49 & 1;
    *(v43 + 8) = 2112;
    *(v43 + 10) = v39;
    *v44 = v39;
    v45 = v39;
    _os_log_impl(&dword_20CEB6000, v40, v41, "Successfully updated Activity History to %{BOOL}d for home: %@", v43, 0x12u);
    sub_20CF31DFC(v44);
    MEMORY[0x20F31FC70](v44, -1, -1);
    MEMORY[0x20F31FC70](v43, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  if (a5)
  {
    goto LABEL_18;
  }
}

void sub_20CFC7884(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_20CFC78F0(void *a1)
{
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  if (!a1)
  {
    if (qword_27C81A2B8 != -1)
    {
      swift_once();
    }

    v17 = qword_27C838268;
    sub_20D565998();
    v11 = sub_20D565968();
    v18 = sub_20D567EC8();
    if (!os_log_type_enabled(v11, v18))
    {
      v8 = v6;
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_20CEB6000, v11, v18, "Successfully cleared Activity History", v13, 2u);
    v8 = v6;
    goto LABEL_10;
  }

  if (qword_27C81A2B8 != -1)
  {
    swift_once();
  }

  v9 = qword_27C838268;
  sub_20D565998();
  v10 = a1;
  v11 = sub_20D565968();
  v12 = sub_20D567EA8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_20CEB6000, v11, v12, "Error clearing Activity History: %@", v13, 0xCu);
    sub_20CF31DFC(v14);
    MEMORY[0x20F31FC70](v14, -1, -1);
LABEL_10:
    MEMORY[0x20F31FC70](v13, -1, -1);
  }

LABEL_12:

  return (*(v3 + 8))(v8, v2);
}

void sub_20CFC7B8C(uint64_t a1, char a2)
{
  v4 = *&v2[OBJC_IVAR___HUActivityLogSettingsModuleController_activityLogItemModule];
  v5 = [*(v4 + OBJC_IVAR___HUActivityLogItemModule_activityLogEnableItem) latestResults];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = sub_20D567758();

  v8 = sub_20D567838();
  if (!*(v7 + 16))
  {

    goto LABEL_9;
  }

  v10 = v2;
  v11 = sub_20CEED668(v8, v9);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_9:

    return;
  }

  sub_20CED43FC(*(v7 + 56) + 32 * v11, aBlock);

  sub_20CECF940(0, &qword_28111FB20);
  if (swift_dynamicCast())
  {
    v14 = v22;
    v15 = [v22 integerValue];
    if ((a2 & 1) != 0 || v15 != 2)
    {
      v16 = *(v4 + OBJC_IVAR___HUActivityLogItemModule_home);
      v17 = swift_allocObject();
      *(v17 + 16) = 1;
      *(v17 + 24) = v16;
      *(v17 + 32) = v10;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      aBlock[4] = sub_20CFC8F40;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20CFC7884;
      aBlock[3] = &block_descriptor_15;
      v18 = _Block_copy(aBlock);
      v19 = v16;
      v20 = v10;

      [v19 updateEventLogEnabled:1 completionHandler:v18];
      _Block_release(v18);
    }

    else
    {
      sub_20CFC68FC();
    }
  }
}

id ActivityLogItemModule.__allocating_init(home:itemUpdater:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_20CFC8F5C(a1, a2);

  swift_unknownObjectRelease();
  return v6;
}

id ActivityLogItemModule.init(home:itemUpdater:)(void *a1, uint64_t a2)
{
  v3 = sub_20CFC8F5C(a1, a2);

  swift_unknownObjectRelease();
  return v3;
}

id sub_20CFC7ED8(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BC4A0;
  v5 = *MEMORY[0x277D13F60];
  *(inited + 32) = *MEMORY[0x277D13F60];
  v6 = v5;
  v7 = sub_20D5677F8();
  v8 = HULocalizedString(v7);

  v9 = sub_20D567838();
  v11 = v10;

  v12 = MEMORY[0x277D837D0];
  *(inited + 40) = v9;
  *(inited + 48) = v11;
  v13 = *MEMORY[0x277D13EA8];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v15 = v13;
  v16 = [v14 initWithBool_];
  v17 = sub_20CECF940(0, &qword_28111FB20);
  *(inited + 80) = v16;
  v18 = *MEMORY[0x277D13F10];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  v19 = v18;
  *(inited + 120) = sub_20D5683C8();
  v20 = *MEMORY[0x277D13DA8];
  *(inited + 144) = v17;
  *(inited + 152) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_20D5BA040;
  *(v21 + 32) = a2;
  v22 = v20;
  v23 = a2;
  v24 = sub_20CEF3450(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E928);
  *(inited + 160) = v24;
  sub_20CEF452C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C2C8);
  swift_arrayDestroy();
  type metadata accessor for HFItemResultKey(0);
  sub_20CFC9698(&qword_28111FF80, type metadata accessor for HFItemResultKey);
  v25 = sub_20D567738();

  v26 = [objc_opt_self() futureWithResult_];

  return v26;
}

id ActivityLogItemModule.__allocating_init(itemUpdater:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithItemUpdater_];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_20CFC82F4()
{
  v10 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BA040;
  v2 = *(v0 + OBJC_IVAR___HUActivityLogItemModule_activityLogEnableItem);
  *(inited + 32) = v2;
  v3 = v2;
  sub_20CEF302C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v4 = objc_allocWithZone(MEMORY[0x277D14B40]);
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v5 = sub_20D567CD8();

  v6 = [v4 initWithItems_];

  v7 = v6;
  MEMORY[0x20F31CEE0]();
  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  v8 = sub_20CEF3314(v10);

  return v8;
}

id sub_20CFC8590(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20CFC8614(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E930);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v57 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E938);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - v7;
  v9 = sub_20D5634D8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    return;
  }

  v58 = v5;
  v59 = v10;
  v60 = v9;
  v61 = v12;
  v63 = v13;
  v14 = *(*&v1[OBJC_IVAR___HUActivityLogSettingsModuleController_activityLogItemModule] + OBJC_IVAR___HUActivityLogItemModule_home);
  v62 = a1;
  v15 = v14;
  v16 = sub_20D5677F8();
  v17 = HFLocalizedString();

  sub_20D567838();
  [v15 isEventLogEnabled];
  sub_20CECF940(0, &unk_28111FB00);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v1;
  v19 = v15;
  v20 = v1;
  v21 = sub_20D568438();
  v22 = sub_20D5677F8();
  v23 = HFLocalizedString();

  sub_20D567838();
  [v19 isEventLogEnabled];
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = v20;
  v25 = v19;
  v26 = v20;
  v27 = sub_20D568438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20D5C27F0;
  *(v28 + 32) = v21;
  *(v28 + 40) = v27;
  v66 = v28;
  v29 = v21;
  v30 = v27;
  if ([v25 eventLogDuration] == 30)
  {
    v31 = v63;
  }

  else
  {
    v32 = [v25 isEventLogEnabled];
    v31 = v63;
    if (v32)
    {
      v33 = sub_20D563848();
      (*(*(v33 - 8) + 56))(v8, 1, 1, v33);
      v34 = sub_20D563858();
      (*(*(v34 - 8) + 56))(v58, 1, 1, v34);
      sub_20D5634C8();
      v35 = *&v26[OBJC_IVAR___HUActivityLogSettingsModuleController_durationFormatter];
      v36 = sub_20D5634B8();
      v37 = [v35 stringFromDateComponents_];

      if (v37)
      {
        v38 = sub_20D567838();
        v40 = v39;

        v64 = v38;
        v65 = v40;
        sub_20CEF44D8();
        sub_20D5685B8();
      }

      else
      {
        v41 = sub_20D5677F8();
        v42 = HULocalizedString(v41);

        sub_20D567838();
      }

      v43 = v59;
      v28 = v60;
      v44 = sub_20D568438();
      [v30 setState_];
      v45 = v44;
      MEMORY[0x20F31CEE0]();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }

      goto LABEL_9;
    }
  }

  while (1)
  {
    if (v28 >> 62)
    {
      v43 = sub_20CECF940(0, &unk_28111FFC0);
      sub_20D5663C8();
      sub_20D568A78();
    }

    else
    {
      sub_20D5663C8();
      sub_20D568C08();
      v43 = sub_20CECF940(0, &unk_28111FFC0);
    }

    sub_20CECF940(0, &qword_28111FB78);
    v45 = sub_20D568308();
    v46 = [v45 selectedElements];
    sub_20CECF940(0, &unk_28111FFC0);
    v47 = sub_20D567A78();

    if (v47 >> 62)
    {
      break;
    }

    if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

LABEL_14:
    if ((v47 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x20F31DD20](0, v47);
      goto LABEL_17;
    }

    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v48 = *(v47 + 32);
LABEL_17:
      v49 = v48;

      v50 = [v49 title];

      sub_20D567838();
      v52 = v51;

      goto LABEL_21;
    }

    __break(1u);
LABEL_28:
    sub_20D567AB8();
LABEL_9:
    sub_20D567B08();

    (*(v43 + 8))(v61, v28);
    v28 = v66;
  }

  if (sub_20D568768())
  {
    goto LABEL_14;
  }

LABEL_20:

  v52 = 0;
LABEL_21:
  v53 = [v31 button];
  if (v52)
  {
    v54 = sub_20D5677F8();
  }

  else
  {
    v54 = 0;
  }

  [v53 setTitle:v54 forState:0];

  v55 = [v31 button];
  v56 = v45;
  [v55 setMenu_];
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_20CFC8F5C(void *a1, uint64_t a2)
{
  if ([a1 hf_hasEnabledResident] && (v5 = objc_msgSend(objc_opt_self(), sel_sharedDispatcher), v6 = objc_msgSend(v5, sel_homeManager), v5, v6) && (v7 = objc_msgSend(v6, sel_hasOptedToHH2), v6, (v7 & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = [a1 isEventLogEnabled] ^ 1;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = objc_allocWithZone(MEMORY[0x277D14B38]);
  aBlock[4] = sub_20CFC96E0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF351D8;
  aBlock[3] = &block_descriptor_11;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = [v10 initWithResultsBlock_];
  _Block_release(v11);

  *&v2[OBJC_IVAR___HUActivityLogItemModule_activityLogEnableItem] = v13;
  *&v2[OBJC_IVAR___HUActivityLogItemModule_home] = v12;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for ActivityLogItemModule();
  v14 = v12;
  return objc_msgSendSuper2(&v16, sel_initWithItemUpdater_, a2);
}

double sub_20CFC9124()
{
  v28 = sub_20D5636B8();
  v1 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D563DC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277D14850]);
  v9 = sub_20D5677F8();
  v10 = [v8 initWithIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v11 = swift_allocObject();
  v27 = xmmword_20D5BA040;
  *(v11 + 16) = xmmword_20D5BA040;
  v12 = *(v0 + OBJC_IVAR___HUActivityLogItemModule_activityLogEnableItem);
  *(v11 + 32) = v12;
  sub_20CECF940(0, &qword_281120AC0);
  v13 = v12;
  v14 = sub_20D567A58();

  [v10 setItems_];

  (*(v5 + 104))(v7, *MEMORY[0x277D15280], v4);
  sub_20CFC9698(&qword_27C81D9F8, MEMORY[0x277D15298]);
  LOBYTE(v14) = sub_20D563978();
  (*(v5 + 8))(v7, v4);
  if (v14)
  {
    v15 = sub_20D5677F8();
    v16 = HFLocalizedString();

    if (!v16)
    {
      sub_20D567838();
      v16 = sub_20D5677F8();
    }

    v17 = sub_20D5677F8();
    v18 = HULocalizedString(v17);

    if (!v18)
    {
      sub_20D567838();
      v18 = sub_20D5677F8();
    }
  }

  else
  {
    v19 = sub_20D5677F8();
    v16 = HULocalizedString(v19);

    if (!v16)
    {
      sub_20D567838();
      v16 = sub_20D5677F8();
    }

    v20 = sub_20D5677F8();
    v18 = HULocalizedString(v20);

    if (!v18)
    {
      sub_20D567838();
      v18 = sub_20D5677F8();
    }
  }

  v21 = objc_opt_self();
  v22 = [objc_opt_self() hf_learnAboutActivityLogsURL];
  sub_20D563698();

  v23 = sub_20D563678();
  (*(v1 + 8))(v3, v28);
  v24 = [v21 hf:v16 attributedStringForString:v18 withAppendedString:v23 asURL:0 withAttributes:?];

  [v10 setAttributedFooterTitle_];
  v25 = swift_allocObject();
  result = *&v27;
  *(v25 + 16) = v27;
  *(v25 + 32) = v10;
  return result;
}

uint64_t sub_20CFC9698(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20CFC9704()
{
  if ([*(v0 + 16) isEventLogEnabled])
  {
    sub_20CFC68FC();
  }
}

uint64_t objectdestroyTm_3()
{
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double sub_20CFC97D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 8);
  v9 = *(a2 + 40);
  v10 = *(a2 + 41);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (v8 == 3)
    {
      v11 = 1;
    }

    else
    {
      v12 = 1;
      if ((v9 & 1) == 0)
      {
        v12 = 2;
      }

      if (v7)
      {
        v11 = v12;
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else if (v6)
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  v20 = v6;
  v21 = v7;
  v22 = *(a2 + 2);
  v23 = *(a2 + 6);
  v24 = v8;
  v25 = *(a2 + 16);
  v26 = *(a2 + 32);
  v27 = v9;
  v28 = v10;
  *(&v17 + 1) = 0;
  *&v18 = 0;
  BYTE8(v18) = 1;
  *&v16 = v11;
  *(&v16 + 1) = sub_20CFC9D00(&v20);
  LOBYTE(v17) = 0;
  v19 = a1;
  v20 = v6;
  v21 = v7;
  v22 = *(a2 + 2);
  v23 = *(a2 + 6);
  v24 = v8;
  v25 = *(a2 + 16);
  v26 = *(a2 + 32);
  v27 = v9;
  v28 = v10;
  swift_unknownObjectRetain();
  sub_20CFC99E0(&v20);
  objc_opt_self();
  if (swift_dynamicCastObjCClass() && v8 != 3 && (v7 & 1) != 0 && (v9 & 1) == 0)
  {
    v13 = [objc_opt_self() whiteColor];
    v14 = [objc_opt_self() colorEffectMonochromeTint:v13 blendingAmount:1.0 brightnessAdjustment:0.45];

    *&v18 = v14;
  }

  *a3 = v16;
  *(a3 + 16) = v17;
  result = *&v18;
  BYTE9(v18) = v8 == 0;
  *(a3 + 32) = v18;
  *(a3 + 48) = v19;
  return result;
}

void sub_20CFC99E0(unsigned __int8 *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 1);
  v7 = a1[40];
  v8 = a1[41];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    swift_unknownObjectRetain();
    if ([v10 isSystemImage])
    {
      v11 = [v10 imageSymbolConfiguration];
      LOBYTE(v28) = v3;
      BYTE1(v28) = v4;
      BYTE2(v28) = v5;
      *(&v28 + 3) = *(a1 + 3);
      HIBYTE(v28) = a1[7];
      v29 = v6;
      v30 = *(a1 + 1);
      v31 = *(a1 + 4);
      LOBYTE(v32) = v7;
      BYTE1(v32) = v8;
      v12 = v11;
      v13 = _s6HomeUI12BaseIconViewC13ConfigurationV0eF0O0D0V9tintColor7contextSo7UIColorCSgAC7ContextV_tFZ_0(&v28);
      v14 = v12;
      if (v13)
      {
        v15 = v13;
        v14 = [objc_opt_self() configurationWithHierarchicalColor_];

        if (v12)
        {
          v16 = v12;
          v17 = v14;
          v14 = [v16 configurationByApplyingConfiguration_];
        }
      }

      if (([v10 isSystemImage] & (v6 == 0)) != 0)
      {
        v18 = 10.0;
      }

      else
      {
        v18 = 24.0;
      }

      v19 = [objc_opt_self() configurationWithPointSize_];
      v20 = v19;
      if (v14)
      {
        v21 = [v14 configurationByApplyingConfiguration_];
      }

      else
      {
        v21 = v19;
      }

      v27 = v21;
      v26 = [v10 imageIconDescriptorWithUpdatedImageSymbolConfiguration_];

LABEL_26:
      swift_unknownObjectRelease_n();
      *(v1 + 48) = v26;
      return;
    }

    swift_unknownObjectRelease();
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v6 == 3;
  }

  else
  {
    v23 = 1;
  }

  if (!v23 && (v4 & 1) == 0 && (v7 & 1) == 0 && ((v5 | v3 ^ 1) & 1) != 0)
  {
    v24 = v22;
    swift_unknownObjectRetain();
    v12 = [v24 packageIdentifier];
    if (!v12)
    {
      sub_20D567838();
      v12 = sub_20D5677F8();
    }

    v25 = [v24 state];
    v14 = HFCAPackageAlternateStateForHFCAPackageState();

    if (!v14)
    {
      __break(1u);
      return;
    }

    v26 = [objc_allocWithZone(MEMORY[0x277D14440]) initWithPackageIdentifier:v12 state:v14];
    goto LABEL_26;
  }
}

id sub_20CFC9D00(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = *(a1 + 1);
  v4 = *(a1 + 4);
  v5 = a1[41];
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  v8 = [v7 colorWithAlphaComponent_];

  if (v5 != 2 && (v5 & 1) != 0)
  {
    return v8;
  }

  if (v3 == 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v2;
  }

  if ((v9 & 1) == 0)
  {
    v11 = [v6 clearColor];
    goto LABEL_14;
  }

  v10 = v4 ? v1 : 0;
  if (v10 != 1)
  {
    return v8;
  }

  v11 = [v4 hu:HFPrimaryStateFromBOOL() colorForPrimaryState:?];
LABEL_14:
  v13 = v11;

  return v13;
}

id _s6HomeUI12BaseIconViewC13ConfigurationV0eF0O0D0V9tintColor7contextSo7UIColorCSgAC7ContextV_tFZ_0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 3);
  if ((*(a1 + 1) - 3) >= 2)
  {
    if (!(v1 & 1 | ((a1[1] & 1) == 0)))
    {
      v3 = [objc_opt_self() whiteColor];
      v4 = [v3 colorWithAlphaComponent_];
      goto LABEL_6;
    }

LABEL_8:
    v5 = v2;
    return v2;
  }

  if (!a1[1])
  {
    if (((v1 | a1[16]) & 1) == 0)
    {
      return [objc_opt_self() secondaryLabelColor];
    }

    goto LABEL_8;
  }

  v3 = [objc_opt_self() secondaryLabelColor];
  v4 = [v3 colorWithAlphaComponent_];
LABEL_6:
  v2 = v4;

  return v2;
}

id sub_20CFC9F20(void *a1)
{
  v1 = a1;
  v2 = [v1 accessoryTypeGroup];
  v3 = [v2 hu_tintColor];

  return v3;
}

id HFAccessoryCategoryStatusItem.tintColor.getter()
{
  v1 = [v0 accessoryTypeGroup];
  v2 = [v1 hu_tintColor];

  return v2;
}

id sub_20CFC9FF4(void *a1)
{
  v1 = a1;
  v2 = [v1 accessoryRepresentableObject];
  swift_getObjectType();
  v3 = sub_20D568198();
  swift_unknownObjectRelease();
  v4 = [v3 hu_tintColor];

  return v4;
}

id _sSo13HFServiceItemC6HomeUIE9tintColorSo7UIColorCSgvg_0()
{
  v1 = [v0 accessoryRepresentableObject];
  swift_getObjectType();
  v2 = sub_20D568198();
  swift_unknownObjectRelease();
  v3 = [v2 hu_tintColor];

  return v3;
}

id sub_20CFCA0F4(void *a1)
{
  v1 = a1;
  HFAccessoryType.tintColor.getter();
  v3 = v2;

  return v3;
}

void HFAccessoryType.tintColor.getter()
{
  v1 = v0;
  sub_20CECF940(0, &qword_27C81C3E0);
  v2 = [objc_opt_self() serviceType_];
  v3 = sub_20D5683F8();

  if (v3)
  {
    v4 = [objc_opt_self() systemTealColor];
  }

  else
  {
    v5 = [objc_opt_self() sortedAccessoryTypeGroups];
    sub_20CECF940(0, &qword_28111FEA8);
    v6 = sub_20D567A78();

    v7 = sub_20CEF3480(v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5C27F0;
    v9 = objc_opt_self();
    *(inited + 32) = [v9 outletAccessoryTypeGroup];
    *(inited + 40) = [v9 switchAccessoryTypeGroup];
    v10 = sub_20CF2CBE8(inited, v7);
    swift_setDeallocating();
    swift_arrayDestroy();
    if ((v10 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_20D568718();
      sub_20CEF7F74(&unk_27C81C1C8, &qword_28111FEA8);
      sub_20D567D58();
      v12 = v26;
      v11 = v27;
      v13 = v28;
      v14 = v29;
      v15 = v30;
    }

    else
    {
      v16 = -1 << *(v10 + 32);
      v11 = (v10 + 56);
      v13 = ~v16;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v15 = v18 & *(v10 + 56);
      sub_20D5663C8();
      v14 = 0;
      v12 = v10;
    }

    v19 = (v13 + 64) >> 6;
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v20 = v14;
    v21 = v15;
    v22 = v14;
    if (v15)
    {
LABEL_14:
      v23 = (v21 - 1) & v21;
      v24 = *(*(v12 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
      if (v24)
      {
        do
        {
          if ([v24 containsType_])
          {
            break;
          }

          v14 = v22;
          v15 = v23;
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_10;
          }

LABEL_16:
          if (!sub_20D568798())
          {
            goto LABEL_21;
          }

          swift_dynamicCast();
          v24 = v25;
          v22 = v14;
          v23 = v15;
        }

        while (v25);
      }

LABEL_22:
      sub_20CEC80DC();

      [v24 hu_tintColor];
    }

    else
    {
      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v19)
        {
LABEL_21:
          v24 = 0;
          goto LABEL_22;
        }

        v21 = *&v11[8 * v22];
        ++v20;
        if (v21)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

id sub_20CFCA4E0(void *a1)
{
  v1 = a1;
  v2 = HFAccessoryTypeGroup.tintColor.getter();

  return v2;
}

id HFAccessoryTypeGroup.tintColor.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 climateAccessoryTypeGroup];
  sub_20CECF940(0, &qword_28111FEA8);
  v2 = sub_20D5683F8();

  if (v2)
  {
    v3 = &selRef_hu_climateCategoryColor;
    return [objc_opt_self() *v3];
  }

  v4 = [v0 energyAccessoryTypeGroup];
  v5 = sub_20D5683F8();

  if (v5)
  {
    v3 = &selRef_hu_energyCategoryColor;
    return [objc_opt_self() *v3];
  }

  v6 = [v0 lightAccessoryTypeGroup];
  v7 = sub_20D5683F8();

  if (v7 & 1) != 0 || (v8 = [v0 outletAccessoryTypeGroup], v9 = sub_20D5683F8(), v8, (v9) || (v10 = objc_msgSend(v0, sel_switchAccessoryTypeGroup), v11 = sub_20D5683F8(), v10, (v11))
  {
    v3 = &selRef_hu_lightingCategoryColor;
    return [objc_opt_self() *v3];
  }

  v13 = [v0 mediaAccessoryTypeGroup];
  v14 = sub_20D5683F8();

  if (v14)
  {
    v3 = &selRef_hu_mediaCategoryColor;
    return [objc_opt_self() *v3];
  }

  v15 = [v0 securityAccessoryTypeGroup];
  v16 = sub_20D5683F8();

  if (v16)
  {
    v3 = &selRef_hu_securityCategoryColor;
    return [objc_opt_self() *v3];
  }

  v17 = [v0 waterAccessoryTypeGroup];
  v18 = sub_20D5683F8();

  if (v18)
  {
    v3 = &selRef_hu_waterCategoryColor;
    return [objc_opt_self() *v3];
  }

  return 0;
}

id sub_20CFCA768(void *a1)
{
  v1 = a1;
  v2 = HFControlItem.tintColor.getter();

  return v2;
}

id HFControlItem.tintColor.getter()
{
  v1 = v0;
  v2 = [v0 latestResults];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = sub_20D567758();

  v5 = sub_20D567838();
  if (!*(v4 + 16))
  {

    goto LABEL_7;
  }

  v7 = sub_20CEED668(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_20CED43FC(*(v4 + 56) + 32 * v7, v30);

  sub_20CECF940(0, &qword_28111FB60);
  if (swift_dynamicCast())
  {
    return v29;
  }

LABEL_8:
  v11 = [objc_msgSend(v1 valueSource)];
  swift_unknownObjectRelease();
  if (v11)
  {
    v12 = [v11 serviceType];

    v13 = sub_20D567838();
    v15 = v14;

    if (v13 == sub_20D567838() && v15 == v16)
    {
      goto LABEL_16;
    }

    v18 = sub_20D568BF8();

    if (v18)
    {
      goto LABEL_17;
    }

    if (v13 == sub_20D567838() && v15 == v19)
    {
LABEL_16:
    }

    else
    {
      v28 = sub_20D568BF8();

      if ((v28 & 1) == 0)
      {
LABEL_19:
        v24 = objc_opt_self();
        v25 = sub_20D5677F8();
        v26 = [v24 serviceType_];

        v27 = [v26 hu_tintColor];

        return v27;
      }
    }

LABEL_17:
    v20 = [objc_msgSend(v1 valueSource)];
    swift_unknownObjectRelease();
    sub_20CECF940(0, &qword_27C81AEC0);
    sub_20CEF7F74(&qword_27C81D290, &qword_27C81AEC0);
    v21 = sub_20D567D08();

    v22 = sub_20CFAF968(v21);

    if (v22)
    {
      v23 = [v22 hf_effectiveServiceType];

      sub_20D567838();
    }

    goto LABEL_19;
  }

  return 0;
}

void sub_20CFCAC34()
{
  if (v0[qword_27C81E948] == 1)
  {
    v1 = [objc_opt_self() controlCenterModuleBackgroundMaterial];
  }

  else
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  }

  v2 = v1;
  [v0 setView_];
}

void sub_20CFCACCC(void *a1)
{
  v1 = a1;
  sub_20CFCAC34();
}

void sub_20CFCAD14()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  [v1 setAutoresizingMask_];

  v3 = *&v0[qword_27C81E940];
  [v3 setInsetsLayoutMarginsFromSafeArea_];
  [v3 setAutoresizingMask_];
  v4 = [v0 view];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  v14 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  v15 = [v0 view];
  if (v15)
  {
    v16 = v15;
    [v15 addSubview_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_20CFCAEA4(void *a1)
{
  v1 = a1;
  sub_20CFCAD14();
}

void sub_20CFCAEFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_20CFCB028();
}

id _s6HomeUI10HUTAFFieldCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id NearbyAccessoriesEditorViewController.init(primaryAccessory:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR___HUNearbyAccessoriesEditorViewController_EmptySetIdentifier;
  sub_20CECF940(0, &qword_27C81BFA8);
  *&v3[v7] = sub_20D568428();
  v8 = &v3[OBJC_IVAR___HUNearbyAccessoriesEditorViewController_NearbyAccessoryCustomUUIDStrings];
  *v8 = 0xD000000000000022;
  *(v8 + 1) = 0x800000020D5D2DC0;
  *&v3[OBJC_IVAR___HUNearbyAccessoriesEditorViewController_accessoryElementModule] = 0;
  *&v3[OBJC_IVAR___HUNearbyAccessoriesEditorViewController_instructionModule] = 0;
  *&v3[OBJC_IVAR___HUNearbyAccessoriesEditorViewController_primaryAccessory] = a1;
  v9 = &v3[OBJC_IVAR___HUNearbyAccessoriesEditorViewController_completionHandler];
  *v9 = a2;
  *(v9 + 1) = a3;
  v10 = objc_allocWithZone(type metadata accessor for CollectionLayoutManager());
  v40 = a1;

  v11 = [v10 init];
  *&v3[OBJC_IVAR___HUNearbyAccessoriesEditorViewController_layoutManager] = v11;
  type metadata accessor for SimpleAccessoryRepresentableObjectSelectionController();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = sub_20CEF4680(MEMORY[0x277D84F90]);
  *&v3[OBJC_IVAR___HUNearbyAccessoriesEditorViewController_selectionController] = v12;
  v13 = [objc_allocWithZone(MEMORY[0x277D14B08]) initWithDelegate_];
  v43.receiver = v3;
  v43.super_class = type metadata accessor for NearbyAccessoriesEditorViewController();
  v39 = v13;
  v14 = objc_msgSendSuper2(&v43, sel_initUsingCompositionalLayoutWithItemManager_, v39);
  [v39 setDelegate_];

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v37 = [objc_allocWithZone(MEMORY[0x277D148D0]) &selRef_indexesOfObjectsPassingTest_];
  v38 = type metadata accessor for AccessoryRepresentableItemModule.Context();
  v15 = objc_allocWithZone(v38);
  v16 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  *&v15[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel] = 0;
  v17 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  *&v15[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer] = 0;
  v18 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  *&v15[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType] = 1;
  v19 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  v15[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions] = 0;
  v20 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  v15[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter] = 0;
  v21 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
  *&v15[v21] = [objc_allocWithZone(MEMORY[0x277D148D0]) &selRef_indexesOfObjectsPassingTest_];
  v22 = &v15[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v15[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_itemFilter];
  *v23 = 0;
  v23[1] = 0;
  swift_beginAccess();
  *&v15[v16] = 0;
  swift_beginAccess();
  *&v15[v17] = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  *&v15[v18] = 1;
  swift_beginAccess();
  v15[v19] = 1;
  swift_beginAccess();
  v15[v20] = 0;
  swift_beginAccess();
  *&v15[v21] = v37;
  v24 = v37;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v25 = *v22;
  *v22 = 0;
  v22[1] = 0;
  sub_20CEC8164(v25);
  swift_beginAccess();
  v26 = *v23;
  *v23 = 0;
  v23[1] = 0;
  sub_20CEC8164(v26);
  v42.receiver = v15;
  v42.super_class = v38;
  v27 = objc_msgSendSuper2(&v42, sel_init);

  v28 = swift_allocObject();
  *(v28 + 16) = v14;
  v29 = &v27[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  swift_beginAccess();
  v30 = *v29;
  *v29 = sub_20CFCEA18;
  v29[1] = v28;
  v31 = v14;
  sub_20CEC8164(v30);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v27;
  aBlock[4] = sub_20CFCEA40;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF35658;
  aBlock[3] = &block_descriptor_16;
  v34 = _Block_copy(aBlock);
  v35 = v27;

  [v39 setItemModuleCreator_];
  _Block_release(v34);

  return v31;
}

double sub_20CFCB5F8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_20D5677F8();
  v7 = HULocalizedString(v6);

  v8 = sub_20D567838();
  v10 = v9;

  v11 = type metadata accessor for InstructionItemModule();
  v12 = objc_allocWithZone(v11);
  sub_20CECF940(0, &qword_27C820E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EA90);
  inited = swift_initStackObject();
  v14 = *MEMORY[0x277D13E20];
  *(inited + 32) = *MEMORY[0x277D13E20];
  *(inited + 16) = xmmword_20D5BC410;
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  v15 = v14;
  sub_20CEF452C(inited);
  swift_setDeallocating();
  sub_20CEF928C(inited + 32, &qword_27C81C2C8);
  *&v12[OBJC_IVAR___HUInstructionItemModule_instructionItem] = sub_20D567E48();
  v41.receiver = v12;
  v41.super_class = v11;
  v16 = objc_msgSendSuper2(&v41, sel_initWithItemUpdater_, a2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + OBJC_IVAR___HUNearbyAccessoriesEditorViewController_instructionModule);
    *(Strong + OBJC_IVAR___HUNearbyAccessoriesEditorViewController_instructionModule) = v16;
    v19 = Strong;
    v20 = v16;
  }

  v21 = objc_allocWithZone(type metadata accessor for AccessoryRepresentableItemModule());
  v22 = &v21[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  *v22 = 0;
  *(v22 + 1) = 0;
  *&v21[OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider] = 0;
  *&v21[OBJC_IVAR___HUAccessoryRepresentableItemModule_context] = a4;
  swift_getObjectType();
  v23 = a4;
  swift_unknownObjectRetain();
  v24 = a1;
  v25 = sub_20CF86924(v24, a2, 0, 0, v21);

  swift_unknownObjectRelease();
  v26 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v27 = *&v23[v26];
  v28 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  *&v25[v28] = v27;
  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = *(v29 + OBJC_IVAR___HUNearbyAccessoriesEditorViewController_selectionController);
    v31 = v29;

    v32 = sub_20CFCF1E8(&qword_27C81EAA0, type metadata accessor for SimpleAccessoryRepresentableObjectSelectionController);
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = &v25[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  swift_beginAccess();
  *v33 = v30;
  *(v33 + 1) = v32;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = *(v34 + OBJC_IVAR___HUNearbyAccessoriesEditorViewController_accessoryElementModule);
    *(v34 + OBJC_IVAR___HUNearbyAccessoriesEditorViewController_accessoryElementModule) = v25;
    v36 = v34;
    v37 = v25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v38 = swift_allocObject();
  *&result = 2;
  *(v38 + 16) = xmmword_20D5C27F0;
  *(v38 + 32) = v16;
  *(v38 + 40) = v25;
  return result;
}

void sub_20CFCBA1C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for NearbyAccessoriesEditorViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = sub_20D5677F8();
  v3 = HULocalizedString(v2);

  if (!v3)
  {
    sub_20D567838();
    v3 = sub_20D5677F8();
  }

  [v1 setText_];

  v4 = [objc_opt_self() boldSystemFontOfSize_];
  [v1 setFont_];

  v5 = [v0 navigationItem];
  [v5 setTitleView_];

  v6 = [v0 navigationItem];
  v7 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v8 = v0;
  v9 = [v7 initWithBarButtonSystemItem:0 target:v8 action:sel_dismissEditorWithSender_];
  [v6 setRightBarButtonItem_];

  v10 = [v8 navigationItem];
  v11 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v8 action:sel_cancelEditingWithSender_];

  [v10 setLeftBarButtonItem_];
}

uint64_t sub_20CFCBC88()
{
  v1 = sub_20D565DE8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v31 - v6;
  v34 = &unk_2825BCA78;
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v9 = result;
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v11 = [sub_20D5681A8() isEqual_];
      swift_unknownObjectRelease();
      if (v11 || (v12 = [objc_opt_self() mediaAccessoryTypeGroup], v31[1] = ObjectType, v13 = sub_20D568198(), v14 = objc_msgSend(v12, sel_containsType_, v13), v12, v13, v14) && (v15 = sub_20D568198(), v16 = objc_msgSend(objc_opt_self(), sel_categoryType_, *MEMORY[0x277CD0F20]), sub_20CECF940(0, &qword_27C81C3E0), v17 = sub_20D5683F8(), v15, v16, (v17 & 1) == 0) || (v33 = v9, sub_20D565EC8(), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EA50), v18 = swift_allocObject(), *(v18 + 16) = xmmword_20D5BC410, sub_20D565DC8(), v32 = v18, v19 = MEMORY[0x277D13288], sub_20CFCF1E8(&qword_27C81F060, MEMORY[0x277D13288]), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EA60), sub_20CFCF230(), sub_20D5686B8(), sub_20CFCF1E8(&qword_27C81EA70, v19), sub_20D5679E8(), sub_20D5679E8(), v20 = *(v2 + 8), v20(v5, v1), v20(v7, v1), v32 == v31[2]))
      {
        swift_unknownObjectRelease();
        return 0;
      }

      v21 = sub_20D568198();
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      v23 = v22;
      if (v22)
      {
        v24 = [v22 serviceType];
        v25 = sub_20D567838();
        v27 = v26;

        v28 = sub_20D567838();
        if (v27)
        {
          if (v25 == v28 && v27 == v29)
          {

            swift_unknownObjectRelease();

            return 0;
          }

          v30 = sub_20D568BF8();

          swift_unknownObjectRelease();

          return (v30 & 1) == 0;
        }
      }

      else
      {

        sub_20D567838();
      }

      swift_unknownObjectRelease();

      return 1;
    }
  }

  return result;
}

uint64_t sub_20CFCC164()
{
  v2 = v0;
  v75 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v63 - v4;
  v71 = sub_20D563818();
  v5 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CEF4C34(MEMORY[0x277D84F90]);

  v9 = sub_20D086570();

  if (v9 >> 62)
  {
LABEL_42:
    v10 = sub_20D568768();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_43:

    if ((v8 & 0xC000000000000001) != 0)
    {
      goto LABEL_31;
    }

LABEL_44:
    if (!*(v8 + 16))
    {
      v30 = *(v2 + OBJC_IVAR___HUNearbyAccessoriesEditorViewController_EmptySetIdentifier);
LABEL_46:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v8;
      sub_20CEEFE04(v30, v30, isUniquelyReferenced_nonNull_native);
    }

    goto LABEL_47;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_43;
  }

LABEL_3:
  v64 = v2;
  v11 = 0;
  v66 = v9 & 0xFFFFFFFFFFFFFF8;
  v67 = v10;
  v69 = v5 + 1;
  v70 = v9 & 0xC000000000000001;
  v68 = v9;
  do
  {
    if (v70)
    {
      MEMORY[0x20F31DD20](v11, v9);
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v11 >= *(v66 + 16))
      {
        goto LABEL_41;
      }

      swift_unknownObjectRetain();
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
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
        goto LABEL_42;
      }
    }

    swift_getObjectType();
    v15 = [sub_20D5681A8() uniqueIdentifier];
    swift_unknownObjectRelease();
    sub_20D5637E8();

    sub_20D5637B8();
    (*v69)(v7, v71);
    v9 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v1 = sub_20D5677F8();

    v5 = [v9 initWithString_];

    if ((v8 & 0xC000000000000001) != 0)
    {
      if (v8 < 0)
      {
        v16 = v8;
      }

      else
      {
        v16 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v17 = v5;
      v18 = sub_20D568768();
      if (__OFADD__(v18, 1))
      {
        goto LABEL_39;
      }

      v8 = sub_20CFCE7C8(v16, v18 + 1);
    }

    else
    {
      v19 = v5;
    }

    v2 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v8;
    v1 = sub_20CEED9B4(v5);
    v21 = *(v8 + 16);
    v22 = (v20 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_38;
    }

    v9 = v20;
    if (*(v8 + 24) >= v23)
    {
      if (v2)
      {
        v8 = v73;
        if (v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_20CF9D304();
        v8 = v73;
        if (v9)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_20CF99524(v23, v2);
      v24 = sub_20CEED9B4(v5);
      if ((v9 & 1) != (v25 & 1))
      {
        sub_20CECF940(0, &qword_27C81BFA8);
        result = sub_20D568C68();
        __break(1u);
        return result;
      }

      v1 = v24;
      v8 = v73;
      if (v9)
      {
LABEL_4:
        v12 = *(v8 + 56);
        v13 = *(v12 + 8 * v1);
        *(v12 + 8 * v1) = v5;

        swift_unknownObjectRelease();
        goto LABEL_5;
      }
    }

    *(v8 + 8 * (v1 >> 6) + 64) |= 1 << v1;
    *(*(v8 + 48) + 8 * v1) = v5;
    *(*(v8 + 56) + 8 * v1) = v5;
    swift_unknownObjectRelease();
    v26 = *(v8 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_40;
    }

    *(v8 + 16) = v28;
LABEL_5:
    ++v11;
    v9 = v68;
  }

  while (v14 != v67);

  v2 = v64;
  if ((v8 & 0xC000000000000001) == 0)
  {
    goto LABEL_44;
  }

LABEL_31:
  if (v8 < 0)
  {
    v29 = v8;
  }

  else
  {
    v29 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_20D568768())
  {
    v30 = *(v2 + OBJC_IVAR___HUNearbyAccessoriesEditorViewController_EmptySetIdentifier);
    v31 = sub_20D568768();
    if (!__OFADD__(v31, 1))
    {
      v8 = sub_20CFCE7C8(v29, v31 + 1);
      goto LABEL_46;
    }

    __break(1u);
LABEL_59:
    swift_once();
LABEL_55:
    sub_20D565868();
    sub_20CEF5EF8(v1, v29);
    goto LABEL_57;
  }

LABEL_47:
  v33 = objc_opt_self();
  sub_20CECF940(0, &qword_27C81BFA8);
  sub_20CEF7F74(&unk_27C81EA20, &qword_27C81BFA8);
  v34 = sub_20D567738();
  v73 = 0;
  v35 = [v33 archivedDataWithRootObject:v34 requiringSecureCoding:1 error:&v73];

  v36 = v73;
  if (v35)
  {
    v1 = sub_20D5636D8();
    v29 = v37;

    v38 = objc_allocWithZone(MEMORY[0x277CBEA90]);
    sub_20CF26E34(v1, v29);
    v39 = sub_20D5636C8();
    v40 = [v38 initWithData_];

    sub_20CEF5EF8(v1, v29);
    if (!v40)
    {

      sub_20D567EA8();
      if (qword_27C81A2F0 != -1)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }

    v41 = [*(v2 + OBJC_IVAR___HUNearbyAccessoriesEditorViewController_primaryAccessory) applicationData];
    v42 = v40;

    v43 = sub_20D5677F8();
    [v41 setObject:v42 forKey:v43];
    sub_20CEF5EF8(v1, v29);
  }

  else
  {
    v44 = v36;

    v45 = sub_20D5635D8();

    swift_willThrow();
    v73 = 0;
    v74 = 0xE000000000000000;
    v72 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
    sub_20D5689B8();
    v47 = v73;
    v46 = v74;
    v48 = sub_20D567EA8();
    if (qword_27C81A2F0 != -1)
    {
      swift_once();
    }

    v49 = qword_27C838290;
    if (os_log_type_enabled(qword_27C838290, v48))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v73 = v51;
      *v50 = 136315138;
      v52 = sub_20CEE913C(v47, v46, &v73);

      *(v50 + 4) = v52;
      _os_log_impl(&dword_20CEB6000, v49, v48, "Unable to archive custom data: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x20F31FC70](v51, -1, -1);
      MEMORY[0x20F31FC70](v50, -1, -1);
    }

    else
    {
    }
  }

LABEL_57:
  v53 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v54 = [v2 navigationItem];
  v55 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v54 setRightBarButtonItem_];

  [v53 startAnimating];
  v56 = sub_20D567C58();
  v57 = v65;
  (*(*(v56 - 8) + 56))(v65, 1, 1, v56);
  sub_20D567C18();
  v58 = v2;
  v59 = sub_20D567C08();
  v60 = swift_allocObject();
  v61 = MEMORY[0x277D85700];
  v60[2] = v59;
  v60[3] = v61;
  v60[4] = v58;
  sub_20CF18960(0, 0, v57, &unk_20D5C2940, v60);
}

uint64_t sub_20CFCCB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a4;
  sub_20D567C18();
  v4[35] = sub_20D567C08();
  v6 = sub_20D567BA8();
  v4[36] = v6;
  v4[37] = v5;

  return MEMORY[0x2822009F8](sub_20CFCCC0C, v6, v5);
}

uint64_t sub_20CFCCC0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BC410;
  *(inited + 32) = sub_20D567838();
  *(inited + 40) = v2;

  v3 = sub_20D086570();

  if (v3 >> 62)
  {
    v4 = sub_20D568768();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v0[34];

  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v0[38] = sub_20CEF4D2C(inited);
  swift_setDeallocating();
  sub_20CEF928C(inited + 32, &qword_27C81EA38);
  v6 = *(v5 + OBJC_IVAR___HUNearbyAccessoriesEditorViewController_primaryAccessory);
  v7 = [v6 applicationData];
  v0[39] = v7;
  v0[2] = v0;
  v0[3] = sub_20CFCCE50;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EA40);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20CFCD508;
  v0[13] = &block_descriptor_29_1;
  v0[14] = v8;
  [v6 hf:v7 updateApplicationData:1 handleError:v0 + 10 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20CFCCE50()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  v3 = *(v1 + 296);
  v4 = *(v1 + 288);
  if (v2)
  {
    v5 = sub_20CFCD20C;
  }

  else
  {
    v5 = sub_20CFCCF80;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20CFCCF80()
{
  v17 = v0;
  v1 = v0[39];

  if (qword_27C81A2F0 != -1)
  {
    swift_once();
  }

  v2 = qword_27C838290;
  v3 = sub_20D567EC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    v6 = sub_20CEE913C(0, 0xE000000000000000, &v16);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_20CEB6000, v2, v3, "Finished updating application data with err: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x20F31FC70](v5, -1, -1);
    MEMORY[0x20F31FC70](v4, -1, -1);
  }

  else
  {
  }

  v7 = v0[38];
  v8 = v0[34];
  v9 = objc_opt_self();
  sub_20CF28148(v7);

  v10 = sub_20D567738();

  v11 = [v9 sendAssociatedAccessoriesDidModifyListEventWithPayload_];

  v12 = *&v8[OBJC_IVAR___HUNearbyAccessoriesEditorViewController_completionHandler + 8];
  v0[29] = *&v8[OBJC_IVAR___HUNearbyAccessoriesEditorViewController_completionHandler];
  v0[30] = v12;
  v0[25] = MEMORY[0x277D85DD0];
  v0[26] = 1107296256;
  v0[27] = sub_20CFFFE8C;
  v0[28] = &block_descriptor_32_0;
  v13 = _Block_copy(v0 + 25);

  [v8 dismissViewControllerAnimated:1 completion:v13];
  _Block_release(v13);
  v14 = v0[1];

  return v14();
}

uint64_t sub_20CFCD20C()
{
  v21 = v0;
  v1 = v0[39];
  v2 = v0[40];

  swift_willThrow();

  v0[31] = 0;
  v0[32] = 0xE000000000000000;
  v0[33] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
  sub_20D5689B8();

  v4 = v0[31];
  v3 = v0[32];
  if (qword_27C81A2F0 != -1)
  {
    swift_once();
  }

  v5 = qword_27C838290;
  v6 = sub_20D567EC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    if (v3)
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }

    if (!v3)
    {
      v3 = 0xE000000000000000;
    }

    v10 = sub_20CEE913C(v9, v3, &v20);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_20CEB6000, v5, v6, "Finished updating application data with err: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F31FC70](v8, -1, -1);
    MEMORY[0x20F31FC70](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[38];
  v12 = v0[34];
  v13 = objc_opt_self();
  sub_20CF28148(v11);

  v14 = sub_20D567738();

  v15 = [v13 sendAssociatedAccessoriesDidModifyListEventWithPayload_];

  v16 = *&v12[OBJC_IVAR___HUNearbyAccessoriesEditorViewController_completionHandler + 8];
  v0[29] = *&v12[OBJC_IVAR___HUNearbyAccessoriesEditorViewController_completionHandler];
  v0[30] = v16;
  v0[25] = MEMORY[0x277D85DD0];
  v0[26] = 1107296256;
  v0[27] = sub_20CFFFE8C;
  v0[28] = &block_descriptor_32_0;
  v17 = _Block_copy(v0 + 25);

  [v12 dismissViewControllerAnimated:1 completion:v17];
  _Block_release(v17);
  v18 = v0[1];

  return v18();
}

uint64_t sub_20CFCD508(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

id sub_20CFCD6C8()
{
  swift_getObjectType();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for NearbyAccessoriesEditorViewController();
  v1 = objc_msgSendSuper2(&v6, sel_hu_preloadContent);
  if (!v1 || (v2 = v1, sub_20CFCD794(v0, &v5), v2, v2, (result = v5) == 0))
  {
    v4 = [objc_opt_self() futureWithNoResult];

    return v4;
  }

  return result;
}

void sub_20CFCD794(char *a1@<X1>, void *a2@<X8>)
{
  v4 = sub_20D563818();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1;
  v86 = *&a1[OBJC_IVAR___HUNearbyAccessoriesEditorViewController_primaryAccessory];
  v8 = [v86 applicationData];
  v9 = sub_20D5677F8();
  v10 = [v8 objectForKey_];

  v82 = a2;
  if (!v10)
  {
    goto LABEL_11;
  }

  v91 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EA80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = v92;
  v12 = v93;
  v13 = sub_20CFCEA60();
  if (!v13)
  {
    sub_20CEF5EF8(v11, v12);
LABEL_11:
    if (qword_27C81A2F0 != -1)
    {
LABEL_70:
      swift_once();
    }

    v25 = qword_27C838290;
    v26 = sub_20D567EC8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20CEB6000, v25, v26, "Editor - displaying using accessories in the same room.", v27, 2u);
      MEMORY[0x20F31FC70](v27, -1, -1);
    }

    v28 = [v84 itemManager];
    v29 = [v28 allDisplayedItems];

    v30 = sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
    v31 = sub_20D567D08();

    v83 = v30;
    if ((v31 & 0xC000000000000001) != 0)
    {
      sub_20D568718();
      sub_20D567D58();
      v31 = v92;
      v32 = v93;
      v33 = v94;
      v34 = v95;
      v35 = v96;
    }

    else
    {
      v34 = 0;
      v36 = -1 << *(v31 + 32);
      v32 = v31 + 56;
      v33 = ~v36;
      v37 = -v36;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v35 = v38 & *(v31 + 56);
    }

    v81 = v33;
    v39 = (v33 + 64) >> 6;
    for (i = v32; ; v32 = i)
    {
      if (v31 < 0)
      {
        v45 = sub_20D568798();
        if (!v45)
        {
          goto LABEL_38;
        }

        v90 = v45;
        swift_dynamicCast();
        v44 = v91;
        v42 = v34;
        v43 = v35;
        if (!v91)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v40 = v34;
        v41 = v35;
        v42 = v34;
        if (!v35)
        {
          while (1)
          {
            v42 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              break;
            }

            if (v42 >= v39)
            {
              goto LABEL_38;
            }

            v41 = *(v32 + 8 * v42);
            ++v40;
            if (v41)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
          goto LABEL_69;
        }

LABEL_28:
        v43 = (v41 - 1) & v41;
        v44 = *(*(v31 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v41)))));
        if (!v44)
        {
          goto LABEL_38;
        }
      }

      v97 = &unk_28251AC90;
      v46 = swift_dynamicCastObjCProtocolConditional();
      if (!v46)
      {

        goto LABEL_38;
      }

      v47 = v46;
      v88 = v43;
      v48 = v31;
      v49 = v44;
      v50 = [v86 room];
      if (!v50)
      {
        break;
      }

      v51 = v50;
      v52 = [v47 accessoryRepresentableObject];
      swift_getObjectType();
      v53 = sub_20D568228();
      swift_unknownObjectRelease();
      if (v53)
      {
        type metadata accessor for SimpleAccessoryRepresentableObjectSelectionController();
        sub_20CFCF1E8(&qword_27C81EA78, type metadata accessor for SimpleAccessoryRepresentableObjectSelectionController);

        v54 = v87;
        sub_20D565F08();
        if (v54)
        {

          v87 = 0;
        }

        else
        {
          v87 = 0;
        }
      }

      else
      {
      }

      v34 = v42;
      v35 = v88;
      v31 = v48;
    }

LABEL_38:
    sub_20CEC80DC();
    goto LABEL_39;
  }

  v88 = v13;
  v78 = v12;
  v79 = v11;
  if (qword_27C81A2F0 != -1)
  {
    swift_once();
  }

  v14 = qword_27C838290;
  v15 = sub_20D567EC8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_20CEB6000, v14, v15, "Editor - displaying using custom accessories.", v16, 2u);
    MEMORY[0x20F31FC70](v16, -1, -1);
  }

  i = v7;
  v86 = v4;
  v17 = [v84 itemManager];
  v18 = [v17 allDisplayedItems];

  v19 = sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  v20 = sub_20D567D08();

  v80 = v19;
  if ((v20 & 0xC000000000000001) != 0)
  {
    sub_20D568718();
    sub_20D567D58();
    v20 = v92;
    v21 = v93;
    v22 = v94;
    v23 = v95;
    v24 = v96;
  }

  else
  {
    v23 = 0;
    v58 = -1 << *(v20 + 32);
    v21 = v20 + 56;
    v22 = ~v58;
    v59 = -v58;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    else
    {
      v60 = -1;
    }

    v24 = v60 & *(v20 + 56);
  }

  v77[1] = v22;
  v61 = (v22 + 64) >> 6;
  v81 = (v5 + 8);
  v83 = v20;
  if ((v20 & 0x8000000000000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_50:
  v62 = sub_20D568798();
  if (v62)
  {
    v90 = v62;
    swift_dynamicCast();
    v63 = v91;
    v64 = v23;
    v65 = v24;
    while (v63)
    {
      v89 = &unk_28251AC90;
      v68 = swift_dynamicCastObjCProtocolConditional();
      if (v68)
      {
        v69 = [objc_msgSend(v68 homeKitObject)];
        swift_unknownObjectRelease();
        v70 = i;
        sub_20D5637E8();

        v71 = sub_20D5637B8();
        v73 = v72;
        (*v81)(v70, v86);
        if (!*(v88 + 16))
        {

LABEL_49:

          v23 = v64;
          v24 = v65;
          v20 = v83;
          if (v83 < 0)
          {
            goto LABEL_50;
          }

          goto LABEL_52;
        }

        sub_20CEED668(v71, v73);
        v75 = v74;

        if ((v75 & 1) == 0)
        {
          goto LABEL_49;
        }

        type metadata accessor for SimpleAccessoryRepresentableObjectSelectionController();
        sub_20CFCF1E8(&qword_27C81EA78, type metadata accessor for SimpleAccessoryRepresentableObjectSelectionController);

        v76 = v87;
        sub_20D565F08();
        v20 = v83;
        if (v76)
        {

          v87 = 0;
        }

        else
        {
          v87 = 0;
        }
      }

      else
      {
      }

      v23 = v64;
      v24 = v65;
      if (v20 < 0)
      {
        goto LABEL_50;
      }

LABEL_52:
      v66 = v23;
      v67 = v24;
      v64 = v23;
      if (!v24)
      {
        while (1)
        {
          v64 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            break;
          }

          if (v64 >= v61)
          {
            goto LABEL_67;
          }

          v67 = *(v21 + 8 * v64);
          ++v66;
          if (v67)
          {
            goto LABEL_56;
          }
        }

LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

LABEL_56:
      v65 = (v67 - 1) & v67;
      v63 = *(*(v20 + 48) + ((v64 << 9) | (8 * __clz(__rbit64(v67)))));
    }
  }

LABEL_67:
  sub_20CEC80DC();
  sub_20CEF5EF8(v79, v78);

LABEL_39:
  v55 = v82;
  v56 = [objc_opt_self() futureWithNoResult];
  v57 = [v56 asGeneric];

  *v55 = v57;
}

id sub_20CFCE1D8(uint64_t a1, void *a2)
{
  v5 = [v2 itemManager];
  v6 = [v5 displayedSectionIdentifierForSectionIndex_];

  if (v6)
  {
    v7 = sub_20D567838();
    v9 = v8;

    v10 = *&v2[OBJC_IVAR___HUNearbyAccessoriesEditorViewController_layoutManager];
    v16[0] = 0;
    v16[1] = 0;
    v17 = 2;
    v11 = v10;
    sub_20CEFA3C8(v7, v9, v16, a2);
    v13 = v12;

    return v13;
  }

  else
  {
    v18.receiver = v2;
    v18.super_class = type metadata accessor for NearbyAccessoriesEditorViewController();
    v15 = objc_msgSendSuper2(&v18, sel_layoutSectionForSection_layoutEnvironment_, a1, a2);

    return v15;
  }
}

id NearbyAccessoriesEditorViewController.__allocating_init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 collectionViewLayout:a2];

  return v5;
}

id NearbyAccessoriesEditorViewController.__allocating_init(usingCompositionalLayoutWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initUsingCompositionalLayoutWithItemManager_];

  return v3;
}

id NearbyAccessoriesEditorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyAccessoriesEditorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CFCE7C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BFB0);
    v2 = sub_20D568AC8();
    v19 = v2;
    sub_20D568A18();
    v3 = sub_20D568A48();
    if (v3)
    {
      v4 = v3;
      sub_20CECF940(0, &qword_27C81BFA8);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_20CF99524(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_20D5683E8();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_20D568A48();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CFCEA60()
{
  sub_20CECF940(0, &qword_27C81EA88);
  sub_20CECF940(0, &qword_27C81BFA8);
  v0 = sub_20D567F78();
  if (!v0)
  {
    return 0;
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = sub_20D568A18() | 0x8000000000000000;
  }

  else
  {
    v11 = -1 << *(v0 + 32);
    v8 = ~v11;
    v7 = v0 + 64;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(v0 + 64);
    v10 = v0;
  }

  sub_20D5663C8();
  isUniquelyReferenced_nonNull_native = 0;
  v15 = (v8 + 64) >> 6;
  v6 = MEMORY[0x277D84F98];
  v45 = v10;
  v46 = v7;
  v44 = v15;
  while ((v10 & 0x8000000000000000) != 0)
  {
    if (!sub_20D568A48() || (swift_dynamicCast(), v23 = v49, swift_dynamicCast(), v24 = v49, v19 = isUniquelyReferenced_nonNull_native, v20 = v9, !v49))
    {
LABEL_36:
      sub_20CEC80DC();

      return v6;
    }

LABEL_25:
    v48 = v23;
    v25 = sub_20D567838();
    v27 = v26;
    v47 = v24;
    v28 = sub_20D567838();
    v30 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v6;
    v8 = sub_20CEED668(v25, v27);
    v32 = v6[2];
    v33 = (v31 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_39;
    }

    v35 = v31;
    if (v6[3] >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v31)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_20CF9C840();
        if (v35)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_20CF98158(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_20CEED668(v25, v27);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_41;
      }

      v8 = v36;
      if (v35)
      {
LABEL_14:

        v16 = (v6[7] + 16 * v8);
        v8 = v16[1];
        *v16 = v28;
        v16[1] = v30;

        goto LABEL_15;
      }
    }

    v6[(v8 >> 6) + 8] |= 1 << v8;
    v38 = (v6[6] + 16 * v8);
    *v38 = v25;
    v38[1] = v27;
    v39 = (v6[7] + 16 * v8);
    *v39 = v28;
    v39[1] = v30;

    v40 = v6[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      __break(1u);
LABEL_41:
      result = sub_20D568C68();
      __break(1u);
      return result;
    }

    v6[2] = v42;
LABEL_15:
    isUniquelyReferenced_nonNull_native = v19;
    v7 = v46;
    v9 = v20;
    v15 = v44;
    v10 = v45;
  }

  v17 = isUniquelyReferenced_nonNull_native;
  v18 = v9;
  v19 = isUniquelyReferenced_nonNull_native;
  if (v9)
  {
LABEL_21:
    v20 = (v18 - 1) & v18;
    v21 = (v19 << 9) | (8 * __clz(__rbit64(v18)));
    v22 = *(*(v10 + 56) + v21);
    v23 = *(*(v10 + 48) + v21);
    v24 = v22;
    if (!v23)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
      goto LABEL_36;
    }

    v18 = *(v7 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  swift_once();
  v1 = qword_27C838290;
  if (os_log_type_enabled(qword_27C838290, v8))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138412290;
    v4 = isUniquelyReferenced_nonNull_native;
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v5;
    *v3 = v5;
    _os_log_impl(&dword_20CEB6000, v1, v8, "error = %@", v2, 0xCu);
    sub_20CEF928C(v3, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v3, -1, -1);
    MEMORY[0x20F31FC70](v2, -1, -1);
  }

  return 0;
}

id sub_20CFCEF1C()
{
  type metadata accessor for AccessoryRepresentableItemModule();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = v0;
    v2 = type metadata accessor for AccessoryListModuleController();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR___HUAccessoryListModuleController_cellVerticalContentInset] = 0x4028000000000000;
    *&v3[OBJC_IVAR___HUAccessoryListModuleController_collectionLayoutManager] = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    v8.receiver = v3;
    v8.super_class = v2;
    v4 = objc_msgSendSuper2(&v8, sel_initWithModule_, v1);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v5 = [v4 asGeneric];
LABEL_5:
    v6 = v5;

    return v6;
  }

  type metadata accessor for InstructionItemModule();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v4 = [objc_allocWithZone(type metadata accessor for InstructionModuleController()) initWithModule_];
    v5 = [v4 asGeneric];
    goto LABEL_5;
  }

  return v6;
}

uint64_t sub_20CFCF11C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF5FFC;

  return sub_20CFCCB74(a1, v4, v5, v6);
}

uint64_t sub_20CFCF1E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20CFCF230()
{
  result = qword_27C81F070;
  if (!qword_27C81F070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C81EA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F070);
  }

  return result;
}

id EnergyDashboardItemModule.__allocating_init(itemUpdater:dashboardContext:home:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___HUEnergyDashboardItemModule_dashboardContext] = a2;
  *&v7[OBJC_IVAR___HUEnergyDashboardItemModule_home] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  v8 = objc_msgSendSuper2(&v10, sel_initWithItemUpdater_, a1);
  swift_unknownObjectRelease();
  return v8;
}

id EnergyDashboardItemModule.init(itemUpdater:dashboardContext:home:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___HUEnergyDashboardItemModule_dashboardContext] = a2;
  *&v3[OBJC_IVAR___HUEnergyDashboardItemModule_home] = a3;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for EnergyDashboardItemModule();
  v5 = objc_msgSendSuper2(&v7, sel_initWithItemUpdater_, a1);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_20CFCF468()
{
  v10 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BA040;
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(MEMORY[0x277D14B38]);
  v9[4] = sub_20CFCF8DC;
  v9[5] = v1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_20CF351D8;
  v9[3] = &block_descriptor_17;
  v3 = _Block_copy(v9);

  v4 = [v2 initWithResultsBlock_];
  _Block_release(v3);

  *(inited + 32) = v4;
  sub_20CEF302C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v5 = objc_allocWithZone(MEMORY[0x277D14B40]);
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v6 = sub_20D567CD8();

  v7 = [v5 initWithItems_];

  sub_20CEEA3F4(v9, v7);
  return v10;
}

id sub_20CFCF658()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, v2 = *(Strong + OBJC_IVAR___HUEnergyDashboardItemModule_home), v1, LOBYTE(v1) = [v2 hf_isHomeEnergyVisible], v2, (v1 & 1) == 0))
  {
    v3 = sub_20D567838();
    v5 = v4;
    sub_20CECF940(0, &qword_28111FB20);
    v6 = sub_20D5683C8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20CEEFF48(v6, v3, v5, isUniquelyReferenced_nonNull_native);
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + OBJC_IVAR___HUEnergyDashboardItemModule_home);

    v11 = sub_20D567838();
    v13 = v12;
    sub_20CECF940(0, &unk_28111FB90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EAB8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_20D5BC410;
    *(v14 + 56) = sub_20CECF940(0, &qword_28111FB80);
    *(v14 + 32) = v10;
    v15 = v10;
    v16 = MEMORY[0x20F31D770](v14);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CEEFF48(v16, v11, v13, v17);
  }

  v18 = sub_20D567738();

  v19 = [objc_opt_self() futureWithResult_];

  return v19;
}

uint64_t sub_20CFCF96C()
{
  v1 = v0;
  v13 = MEMORY[0x277D84F90];
  v2 = [objc_allocWithZone(MEMORY[0x277D14850]) initWithIdentifier_];
  v3 = [v1 allItems];
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v4 = sub_20D567D08();

  sub_20CF81C08(v4);

  v5 = sub_20D567A58();

  [v2 setItems_];

  v6 = v2;
  MEMORY[0x20F31CEE0]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  v7 = objc_opt_self();
  sub_20CECF940(0, &unk_28111FFD0);
  v8 = sub_20D567A58();

  v9 = sub_20D567CD8();
  v10 = [v7 filterSections:v8 toDisplayedItems:v9];

  v11 = sub_20D567A78();
  return v11;
}

id EnergyDashboardItemModule.__allocating_init(itemUpdater:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithItemUpdater_];
  swift_unknownObjectRelease();
  return v2;
}

id EnergyDashboardItemModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnergyDashboardItemModule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id HUUserNotificationTopicServiceListModule.buildNativeMatterAccessoryItemProvider()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = aBlock - v3;
  v5 = [v0 home];
  v6 = sub_20D563818();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = objc_allocWithZone(sub_20D565E88());
  v8 = sub_20D565E78();
  v9 = swift_allocObject();
  *(v9 + 16) = ObjectType;
  v10 = objc_allocWithZone(MEMORY[0x277D14C38]);
  aBlock[4] = sub_20CFD02B0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF3B6B0;
  aBlock[3] = &block_descriptor_18;
  v11 = _Block_copy(aBlock);
  v12 = [v10 initWithSourceProvider:v8 transformationBlock:v11];

  _Block_release(v11);

  return v12;
}

id sub_20CFCFF80(id a1)
{
  sub_20D565D18();
  if (swift_dynamicCastClass())
  {
    a1 = a1;
    sub_20D565CD8();
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      result = [swift_getObjCClassFromMetadata() _createTransformItemForItem_notificationSettingsProvider_];
      if (result)
      {
        v3 = result;

        swift_unknownObjectRelease();
        return v3;
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    swift_unknownObjectRelease();
    v12 = sub_20D567EA8();
    if (qword_27C81A2F8 != -1)
    {
      swift_once();
    }

    v13 = qword_27C838298;
    if (os_log_type_enabled(qword_27C838298, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      sub_20D565CD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C81EAC0);
      v16 = sub_20D567868();
      v18 = sub_20CEE913C(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_20CEB6000, v13, v12, "Expected HMAccessory: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x20F31FC70](v15, -1, -1);
      MEMORY[0x20F31FC70](v14, -1, -1);
    }
  }

  else
  {
    v4 = sub_20D567EA8();
    if (qword_27C81A2F8 != -1)
    {
      swift_once();
    }

    v5 = qword_27C838298;
    if (os_log_type_enabled(qword_27C838298, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      sub_20CF2C85C();
      v8 = a1;
      v9 = sub_20D567868();
      v11 = sub_20CEE913C(v9, v10, &v20);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_20CEB6000, v5, v4, "Expected MatterAccessoryLikeItem: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x20F31FC70](v7, -1, -1);
      MEMORY[0x20F31FC70](v6, -1, -1);
    }
  }

  return a1;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CFD0314(uint64_t a1)
{
  v32 = sub_20D563458();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v30 = v5;
  v25 = v1;
  v35 = MEMORY[0x277D84F90];
  sub_20CEF0B4C(0, v6, 0);
  v7 = v35;
  v8 = a1 + 64;
  result = sub_20D5686C8();
  v10 = result;
  v11 = 0;
  v34 = *(a1 + 36);
  v28 = a1 + 64;
  v29 = v3 + 32;
  v26 = a1 + 72;
  v27 = v6;
  v31 = v3;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v33 = v11;
    v14 = a1;
    sub_20D5663C8();
    sub_20D5663C8();
    v15 = v30;
    sub_20D563428();

    v35 = v7;
    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_20CEF0B4C(v16 > 1, v17 + 1, 1);
      v7 = v35;
    }

    *(v7 + 16) = v17 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v15, v32);
    v12 = 1 << *(v14 + 32);
    if (v10 >= v12)
    {
      goto LABEL_25;
    }

    v8 = v28;
    v18 = *(v28 + 8 * v13);
    if ((v18 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v14;
    if (v34 != *(v14 + 36))
    {
      goto LABEL_27;
    }

    v19 = v18 & (-2 << (v10 & 0x3F));
    if (v19)
    {
      v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v13 << 6;
      v21 = v13 + 1;
      v22 = (v26 + 8 * v13);
      while (v21 < (v12 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_20CFAE618(v10, v34, 0);
          v12 = __clz(__rbit64(v23)) + v20;
          goto LABEL_20;
        }
      }

      result = sub_20CFAE618(v10, v34, 0);
LABEL_20:
      a1 = v14;
    }

    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id OAuthLoginManager.__allocating_init(authURL:presentingContext:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_20CFD2A1C(a1, a2);
}

id OAuthLoginManager.init(authURL:presentingContext:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_20CFD2A78(a1, a2, v2);
}

void sub_20CFD0994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_20CEF9178(a1, &v13 - v7, &unk_27C81CDF0);
  v9 = sub_20D5636B8();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_20D563678();
    (*(v10 + 8))(v8, v9);
  }

  if (a2)
  {
    v12 = sub_20D5635C8();
  }

  else
  {
    v12 = 0;
  }

  (*(a3 + 16))(a3, v11, v12);
}

void sub_20CFD0AF0(uint64_t a1, void (*a2)(void, void, void *), uint64_t a3)
{
  swift_getObjectType();

  sub_20CFD2C3C(a1, a2, a3, v3);
}

void sub_20CFD0B48(uint64_t a1, void *a2, void (*a3)(void, void, void), uint64_t a4, char *a5)
{
  v115 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v9 - 8);
  v110 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v112 = &v104 - v12;
  v13 = sub_20D565988();
  v116 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v114 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v111 = &v104 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v104 - v18;
  MEMORY[0x28223BE20](v20);
  v113 = &v104 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v104 - v23;
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v108 = v19;
  v25 = qword_27C838280;
  sub_20D565998();
  v26 = sub_20D565968();
  v27 = sub_20D567EC8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v109 = a2;
    v29 = a1;
    v30 = a5;
    v31 = a3;
    v32 = v28;
    v33 = v13;
    v34 = swift_slowAlloc();
    v117 = v34;
    *v32 = 136315138;
    *(v32 + 4) = sub_20CEE913C(0xD000000000000034, 0x800000020D5D3090, &v117);
    _os_log_impl(&dword_20CEB6000, v26, v27, "%s Completed OAuth callback", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    v35 = v34;
    v13 = v33;
    MEMORY[0x20F31FC70](v35, -1, -1);
    v36 = v32;
    a3 = v31;
    a5 = v30;
    a1 = v29;
    a2 = v109;
    MEMORY[0x20F31FC70](v36, -1, -1);
  }

  v37 = *(v116 + 8);
  v37(v24, v13);
  v38 = v25;
  if (a2)
  {
    v39 = a3;
    v40 = v37;
    v41 = v114;
    sub_20D565998();
    v42 = a2;
    v43 = sub_20D565968();
    v44 = sub_20D567EA8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v109 = v13;
      v47 = v46;
      v48 = swift_slowAlloc();
      v117 = v48;
      *v45 = 136315394;
      *(v45 + 4) = sub_20CEE913C(0xD000000000000034, 0x800000020D5D3090, &v117);
      *(v45 + 12) = 2112;
      v49 = a2;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 14) = v50;
      *v47 = v50;
      _os_log_impl(&dword_20CEB6000, v43, v44, "%s OAuth Session failed. Error: %@", v45, 0x16u);
      sub_20CEF928C(v47, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v47, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x20F31FC70](v48, -1, -1);
      MEMORY[0x20F31FC70](v45, -1, -1);

      v51 = v41;
      v52 = v109;
    }

    else
    {

      v51 = v41;
      v52 = v13;
    }

    v40(v51, v52);
    v39(0, 0, a2);
  }

  else
  {
    v53 = v113;
    v114 = v38;
    sub_20D565998();
    v54 = v112;
    sub_20CEF9178(a1, v112, &unk_27C81CDF0);
    v55 = sub_20D565968();
    v56 = sub_20D567EC8();
    if (os_log_type_enabled(v55, v56))
    {
      v106 = a1;
      v107 = a3;
      v109 = v13;
      v57 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v117 = v105;
      *v57 = 136315394;
      *(v57 + 4) = sub_20CEE913C(0xD000000000000034, 0x800000020D5D3090, &v117);
      *(v57 + 12) = 2080;
      v58 = v110;
      sub_20CEF9178(v54, v110, &unk_27C81CDF0);
      v59 = sub_20D5636B8();
      v60 = *(v59 - 8);
      v61 = a5;
      if ((*(v60 + 48))(v58, 1, v59) == 1)
      {
        sub_20CEF928C(v58, &unk_27C81CDF0);
        v62 = 0xE500000000000000;
        v63 = 0x3E6C696E3CLL;
      }

      else
      {
        v64 = v58;
        v63 = sub_20D563658();
        v62 = v65;
        (*(v60 + 8))(v64, v59);
      }

      sub_20CEF928C(v112, &unk_27C81CDF0);
      v66 = sub_20CEE913C(v63, v62, &v117);

      *(v57 + 14) = v66;
      _os_log_impl(&dword_20CEB6000, v55, v56, "%s Redirect: %s", v57, 0x16u);
      v67 = v105;
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v67, -1, -1);
      MEMORY[0x20F31FC70](v57, -1, -1);

      v13 = v109;
      v37(v113, v109);
      a1 = v106;
      a3 = v107;
      a5 = v61;
    }

    else
    {

      sub_20CEF928C(v54, &unk_27C81CDF0);
      v37(v53, v13);
    }

    v68 = sub_20CFD3EBC(a1);
    v69 = v111;
    if (*(v68 + 16) && (v70 = sub_20CEED668(0x6574617473, 0xE500000000000000), (v71 & 1) != 0) && ((v72 = (*(v68 + 56) + 16 * v70), *v72 == *&a5[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_uuid]) && v72[1] == *&a5[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_uuid + 8] || (sub_20D568BF8() & 1) != 0))
    {
      v73 = *(v68 + 16);
      v104 = v37;
      if (v73 && (v74 = sub_20CEED668(1701080931, 0xE400000000000000), (v75 & 1) != 0))
      {
        v76 = (*(v68 + 56) + 16 * v74);
        v78 = *v76;
        v77 = v76[1];
        sub_20D5663C8();
      }

      else
      {
        v78 = 0;
        v77 = 0;
      }

      v89 = v114;
      v90 = v108;
      sub_20D565998();
      sub_20D5663C8();
      v91 = sub_20D565968();
      v92 = sub_20D567EC8();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v109 = v13;
        v95 = v94;
        v117 = v94;
        *v93 = 136315394;
        *(v93 + 4) = sub_20CEE913C(0xD000000000000034, 0x800000020D5D3090, &v117);
        *(v93 + 12) = 2080;
        v96 = a3;
        if (v77)
        {
          v97 = v78;
        }

        else
        {
          v97 = 0x2065646F63206F6ELL;
        }

        if (v77)
        {
          v98 = v77;
        }

        else
        {
          v98 = 0xED0000646E756F66;
        }

        sub_20D5663C8();
        v99 = sub_20CEE913C(v97, v98, &v117);

        *(v93 + 14) = v99;
        a3 = v96;
        _os_log_impl(&dword_20CEB6000, v91, v92, "%s Auth code: %s", v93, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v95, -1, -1);
        MEMORY[0x20F31FC70](v93, -1, -1);

        v100 = v90;
        v101 = v109;
      }

      else
      {

        v100 = v90;
        v101 = v13;
      }

      v104(v100, v101);
      if (v77)
      {
        v102 = 0;
      }

      else
      {
        sub_20CEF5CA0();
        v102 = swift_allocError();
        *v103 = 2;
      }

      a3(v78, v77, v102);
    }

    else
    {
      v79 = a3;
      v80 = v37;

      v81 = v114;
      sub_20D565998();
      v82 = a5;
      v83 = sub_20D565968();
      v84 = sub_20D567EA8();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v117 = v86;
        *v85 = 136315394;
        *(v85 + 4) = sub_20CEE913C(0xD000000000000034, 0x800000020D5D3090, &v117);
        *(v85 + 12) = 2080;
        *(v85 + 14) = sub_20CEE913C(*&v82[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_uuid], *&v82[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_uuid + 8], &v117);
        _os_log_impl(&dword_20CEB6000, v83, v84, "%s OAuth state query param returned doesn't match what was sent. Expected state param: %s", v85, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v86, -1, -1);
        MEMORY[0x20F31FC70](v85, -1, -1);
      }

      v80(v69, v13);
      sub_20CEF5CA0();
      v87 = swift_allocError();
      *v88 = 2;
      v79(0, 0, v87);
    }
  }
}

void sub_20CFD1778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_20D5677F8();
    if (a3)
    {
LABEL_3:
      v7 = sub_20D5635C8();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

BOOL sub_20CFD1960()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_20D5636B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() hasInternalDiagnostics])
  {
    sub_20CFD1B60();
  }

  v8 = OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authURL;
  swift_beginAccess();
  sub_20CEF9178(v0 + v8, v3, &unk_27C81CDF0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20CEF928C(v3, &unk_27C81CDF0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v10 = sub_20D563668();
    v12 = v11;
    (*(v5 + 8))(v7, v4);

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    return v13 != 0;
  }
}

void sub_20CFD1B60()
{
  v1 = sub_20D565988();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = sub_20D5636B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = sub_20D5677F8();
  v16 = [v14 stringForKey_];

  if (v16)
  {
    v17 = sub_20D567838();
    v19 = v18;

    sub_20D5636A8();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      sub_20CEF928C(v9, &unk_27C81CDF0);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      (*(v11 + 16))(v7, v13, v10);
      (*(v11 + 56))(v7, 0, 1, v10);
      v20 = OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authURL;
      swift_beginAccess();
      sub_20CFD51B8(v7, v0 + v20);
      swift_endAccess();
      if (qword_27C81A2D8 != -1)
      {
        swift_once();
      }

      v21 = qword_27C838280;
      sub_20D565998();
      sub_20D5663C8();
      v22 = sub_20D565968();
      v23 = sub_20D567EC8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30[0] = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_20CEE913C(0xD000000000000015, 0x800000020D5D3140, v30);
        *(v24 + 12) = 2080;
        v26 = sub_20CEE913C(v17, v19, v30);

        *(v24 + 14) = v26;
        _os_log_impl(&dword_20CEB6000, v22, v23, "%s Overriding OAuthURL with %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v25, -1, -1);
        MEMORY[0x20F31FC70](v24, -1, -1);
      }

      else
      {
      }

      (*(v28 + 8))(v3, v29);
      (*(v11 + 8))(v13, v10);
    }
  }
}

uint64_t sub_20CFD2008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a3;
  v68 = a4;
  v6 = sub_20D5634A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v66 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v62 - v10;
  v12 = sub_20D563458();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EB20);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v62 - v17;
  v19 = a1;
  sub_20D563488();
  v67 = v7;
  v69 = *(v7 + 48);
  v70 = v7 + 48;
  v20 = v69(v18, 1, v6);
  v71 = a2;
  if (v20 || (v73 = v13, v74 = v15, (v23 = sub_20D563468()) == 0))
  {
    v21 = MEMORY[0x277D84F98];
    v22 = v68;
    goto LABEL_27;
  }

  v62 = v6;
  v63 = v18;
  v64 = v11;
  v65 = a1;
  v79 = *(v23 + 16);
  if (!v79)
  {
    v21 = MEMORY[0x277D84F98];
LABEL_26:

    v22 = v68;
    v11 = v64;
    v19 = v65;
    v6 = v62;
    v18 = v63;
LABEL_27:
    v53 = v72;
    sub_20D5663C8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v21;
    sub_20CEEF4C8(v71, v53, 0x6574617473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    sub_20CFD0314(v81);

    v55 = v69;
    if (v69(v18, 1, v6))
    {
    }

    else
    {
      sub_20D563478();
    }

    if (v55(v18, 1, v6))
    {
      v56 = sub_20D5636B8();
      (*(*(v56 - 8) + 56))(v11, 1, 1, v56);
    }

    else
    {
      v58 = v66;
      v57 = v67;
      (*(v67 + 16))(v66, v18, v6);
      sub_20D563498();
      (*(v57 + 8))(v58, v6);
      v56 = sub_20D5636B8();
      v59 = *(v56 - 8);
      if ((*(v59 + 48))(v11, 1, v56) != 1)
      {
        (*(v59 + 32))(v22, v11, v56);
        return sub_20CEF928C(v18, &unk_27C81EB20);
      }
    }

    sub_20D5636B8();
    v60 = *(v56 - 8);
    (*(v60 + 16))(v22, v19, v56);
    if ((*(v60 + 48))(v11, 1, v56) != 1)
    {
      sub_20CEF928C(v11, &unk_27C81CDF0);
    }

    return sub_20CEF928C(v18, &unk_27C81EB20);
  }

  v24 = 0;
  v25 = v73;
  v26 = v74;
  v78 = v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v76 = (v73 + 8);
  v77 = v73 + 16;
  v21 = MEMORY[0x277D84F98];
  v75 = v23;
  while (v24 < *(v23 + 16))
  {
    (*(v25 + 16))(v26, v78 + *(v25 + 72) * v24, v12);
    v27 = sub_20D563438();
    v29 = v28;
    v30 = sub_20D563448();
    if (v31)
    {
      v32 = v31;
      v80 = v30;
      v33 = v12;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v81 = v21;
      v36 = sub_20CEED668(v27, v29);
      v37 = v21[2];
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_38;
      }

      v40 = v35;
      if (v21[3] >= v39)
      {
        if ((v34 & 1) == 0)
        {
          sub_20CF9C840();
        }
      }

      else
      {
        sub_20CF98158(v39, v34);
        v41 = sub_20CEED668(v27, v29);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_40;
        }

        v36 = v41;
      }

      v12 = v33;
      v26 = v74;
      if (v40)
      {

        v21 = v81;
        v47 = (v81[7] + 16 * v36);
        *v47 = v80;
        v47[1] = v32;

        (*v76)(v26, v12);
      }

      else
      {
        v21 = v81;
        v81[(v36 >> 6) + 8] |= 1 << v36;
        v48 = (v21[6] + 16 * v36);
        *v48 = v27;
        v48[1] = v29;
        v49 = (v21[7] + 16 * v36);
        *v49 = v80;
        v49[1] = v32;
        (*v76)(v26, v12);
        v50 = v21[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_39;
        }

        v21[2] = v52;
      }

      v25 = v73;
    }

    else
    {
      v43 = sub_20CEED668(v27, v29);
      v45 = v44;

      if (v45)
      {
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v81 = v21;
        if (!v46)
        {
          sub_20CF9C840();
          v21 = v81;
        }

        sub_20D089834(v43, v21);
      }

      (*v76)(v26, v12);
    }

    v23 = v75;
    if (v79 == ++v24)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_20D568C68();
  __break(1u);
  return result;
}