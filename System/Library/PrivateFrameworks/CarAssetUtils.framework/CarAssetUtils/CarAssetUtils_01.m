uint64_t sub_242C05444(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = v6[1];
  v16 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_242C1A8A0();
  sub_242C1A6E0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t _s13CarAssetUtils8CAUAssetO11ClosureMaskV2eeoiySbAE_AEtFZ_0(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = a2[1];
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v20 = *a1;
  v19 = *a2;
  v8 = CAUVehicleLayoutKey.rawValue.getter();
  v10 = v9;
  if (v8 == CAUVehicleLayoutKey.rawValue.getter() && v10 == v11)
  {
  }

  else
  {
    v12 = sub_242C1A740();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (v2)
  {
    v13 = 0x6465736F6C63;
  }

  else
  {
    v13 = 1852141679;
  }

  if (v2)
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  if (v5)
  {
    v15 = 0x6465736F6C63;
  }

  else
  {
    v15 = 1852141679;
  }

  if (v5)
  {
    v16 = 0xE600000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  if (v13 != v15 || v14 != v16)
  {
    v17 = sub_242C1A740();

    if (v17)
    {
      goto LABEL_21;
    }

    return 0;
  }

LABEL_21:
  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_242C1A740();
}

unint64_t sub_242C05740()
{
  result = qword_27ECDE298;
  if (!qword_27ECDE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE298);
  }

  return result;
}

unint64_t sub_242C05794()
{
  result = qword_27ECDE2A0;
  if (!qword_27ECDE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE2A0);
  }

  return result;
}

unint64_t sub_242C057E8()
{
  result = qword_27ECDE2B0;
  if (!qword_27ECDE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE2B0);
  }

  return result;
}

uint64_t _s13CarAssetUtils8CAUAssetO4SeatV2eeoiySbAE_AEtFZ_0(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 1);
  v16 = *(a1 + 2);
  v5 = a2[1];
  v6 = a2[2];
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v18 = *a1;
  v17 = *a2;
  v9 = CAUVehicleLayoutKey.rawValue.getter();
  v11 = v10;
  if (v9 == CAUVehicleLayoutKey.rawValue.getter() && v11 == v12)
  {
  }

  else
  {
    v13 = sub_242C1A740();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  v15 = sub_242C09E64(v2, v5);
  result = 0;
  if ((v15 & 1) != 0 && ((v3 ^ v6) & 1) == 0)
  {
    if (v4 == v7 && v16 == v8)
    {
      return 1;
    }

    else
    {

      return sub_242C1A740();
    }
  }

  return result;
}

unint64_t sub_242C05998()
{
  result = qword_27ECDE2C0;
  if (!qword_27ECDE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE2C0);
  }

  return result;
}

unint64_t sub_242C059EC()
{
  result = qword_27ECDE2C8;
  if (!qword_27ECDE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE2C8);
  }

  return result;
}

unint64_t sub_242C05A40()
{
  result = qword_27ECDE2D8;
  if (!qword_27ECDE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE2D8);
  }

  return result;
}

unint64_t sub_242C05A94()
{
  result = qword_27ECDE2E8;
  if (!qword_27ECDE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE2E8);
  }

  return result;
}

unint64_t sub_242C05AE8()
{
  result = qword_27ECDE300;
  if (!qword_27ECDE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE300);
  }

  return result;
}

unint64_t sub_242C05B3C()
{
  result = qword_27ECDE318;
  if (!qword_27ECDE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE318);
  }

  return result;
}

unint64_t sub_242C05B90()
{
  result = qword_27ECDE330;
  if (!qword_27ECDE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE330);
  }

  return result;
}

unint64_t sub_242C05BE4()
{
  result = qword_27ECDE348;
  if (!qword_27ECDE348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE348);
  }

  return result;
}

unint64_t sub_242C05C38()
{
  result = qword_27ECDE360;
  if (!qword_27ECDE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE360);
  }

  return result;
}

unint64_t sub_242C05C8C()
{
  result = qword_27ECDE378;
  if (!qword_27ECDE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE378);
  }

  return result;
}

unint64_t sub_242C05CE0()
{
  result = qword_27ECDE390;
  if (!qword_27ECDE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE390);
  }

  return result;
}

unint64_t sub_242C05D34()
{
  result = qword_27ECDE3A8;
  if (!qword_27ECDE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE3A8);
  }

  return result;
}

unint64_t sub_242C05D88()
{
  result = qword_27ECDE3C0;
  if (!qword_27ECDE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE3C0);
  }

  return result;
}

unint64_t sub_242C05DDC()
{
  result = qword_27ECDE3D8;
  if (!qword_27ECDE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE3D8);
  }

  return result;
}

unint64_t sub_242C05E30()
{
  result = qword_27ECDE3F0;
  if (!qword_27ECDE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE3F0);
  }

  return result;
}

unint64_t sub_242C05E88()
{
  result = qword_27ECDE400;
  if (!qword_27ECDE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE400);
  }

  return result;
}

unint64_t sub_242C05EE0()
{
  result = qword_27ECDE408;
  if (!qword_27ECDE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE408);
  }

  return result;
}

uint64_t sub_242C05FB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_242C05FFC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_242C060BC(uint64_t a1, int a2)
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

uint64_t sub_242C06104(uint64_t result, int a2, int a3)
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

unint64_t sub_242C06248()
{
  result = qword_27ECDE410;
  if (!qword_27ECDE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE410);
  }

  return result;
}

unint64_t sub_242C062A0()
{
  result = qword_27ECDE418;
  if (!qword_27ECDE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE418);
  }

  return result;
}

unint64_t sub_242C062F8()
{
  result = qword_27ECDE420;
  if (!qword_27ECDE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE420);
  }

  return result;
}

unint64_t sub_242C06350()
{
  result = qword_27ECDE428;
  if (!qword_27ECDE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE428);
  }

  return result;
}

unint64_t sub_242C063A8()
{
  result = qword_27ECDE430;
  if (!qword_27ECDE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE430);
  }

  return result;
}

unint64_t sub_242C06400()
{
  result = qword_27ECDE438;
  if (!qword_27ECDE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE438);
  }

  return result;
}

unint64_t sub_242C06458()
{
  result = qword_27ECDE440;
  if (!qword_27ECDE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE440);
  }

  return result;
}

unint64_t sub_242C064B0()
{
  result = qword_27ECDE448;
  if (!qword_27ECDE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE448);
  }

  return result;
}

unint64_t sub_242C06508()
{
  result = qword_27ECDE450;
  if (!qword_27ECDE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE450);
  }

  return result;
}

unint64_t sub_242C06560()
{
  result = qword_27ECDE458;
  if (!qword_27ECDE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE458);
  }

  return result;
}

unint64_t sub_242C065B8()
{
  result = qword_27ECDE460;
  if (!qword_27ECDE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE460);
  }

  return result;
}

unint64_t sub_242C06610()
{
  result = qword_27ECDE468;
  if (!qword_27ECDE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE468);
  }

  return result;
}

unint64_t sub_242C06668()
{
  result = qword_27ECDE470;
  if (!qword_27ECDE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE470);
  }

  return result;
}

unint64_t sub_242C066C0()
{
  result = qword_27ECDE478;
  if (!qword_27ECDE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE478);
  }

  return result;
}

unint64_t sub_242C06718()
{
  result = qword_27ECDE480;
  if (!qword_27ECDE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE480);
  }

  return result;
}

unint64_t sub_242C06770()
{
  result = qword_27ECDE488;
  if (!qword_27ECDE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE488);
  }

  return result;
}

unint64_t sub_242C067C8()
{
  result = qword_27ECDE490;
  if (!qword_27ECDE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE490);
  }

  return result;
}

unint64_t sub_242C06820()
{
  result = qword_27ECDE498;
  if (!qword_27ECDE498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE498);
  }

  return result;
}

unint64_t sub_242C06878()
{
  result = qword_27ECDE4A0;
  if (!qword_27ECDE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4A0);
  }

  return result;
}

unint64_t sub_242C068D0()
{
  result = qword_27ECDE4A8;
  if (!qword_27ECDE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4A8);
  }

  return result;
}

unint64_t sub_242C06928()
{
  result = qword_27ECDE4B0;
  if (!qword_27ECDE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4B0);
  }

  return result;
}

unint64_t sub_242C06980()
{
  result = qword_27ECDE4B8;
  if (!qword_27ECDE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4B8);
  }

  return result;
}

unint64_t sub_242C069D8()
{
  result = qword_27ECDE4C0;
  if (!qword_27ECDE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4C0);
  }

  return result;
}

unint64_t sub_242C06A30()
{
  result = qword_27ECDE4C8;
  if (!qword_27ECDE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4C8);
  }

  return result;
}

unint64_t sub_242C06A88()
{
  result = qword_27ECDE4D0;
  if (!qword_27ECDE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4D0);
  }

  return result;
}

unint64_t sub_242C06AE0()
{
  result = qword_27ECDE4D8;
  if (!qword_27ECDE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4D8);
  }

  return result;
}

unint64_t sub_242C06B38()
{
  result = qword_27ECDE4E0;
  if (!qword_27ECDE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4E0);
  }

  return result;
}

unint64_t sub_242C06B90()
{
  result = qword_27ECDE4E8;
  if (!qword_27ECDE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4E8);
  }

  return result;
}

unint64_t sub_242C06BE8()
{
  result = qword_27ECDE4F0;
  if (!qword_27ECDE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4F0);
  }

  return result;
}

unint64_t sub_242C06C40()
{
  result = qword_27ECDE4F8;
  if (!qword_27ECDE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4F8);
  }

  return result;
}

unint64_t sub_242C06C98()
{
  result = qword_27ECDE500;
  if (!qword_27ECDE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE500);
  }

  return result;
}

unint64_t sub_242C06CF0()
{
  result = qword_27ECDE508;
  if (!qword_27ECDE508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE508);
  }

  return result;
}

unint64_t sub_242C06D48()
{
  result = qword_27ECDE510;
  if (!qword_27ECDE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE510);
  }

  return result;
}

unint64_t sub_242C06DA0()
{
  result = qword_27ECDE518;
  if (!qword_27ECDE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE518);
  }

  return result;
}

unint64_t sub_242C06DF8()
{
  result = qword_27ECDE520;
  if (!qword_27ECDE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE520);
  }

  return result;
}

unint64_t sub_242C06E50()
{
  result = qword_27ECDE528;
  if (!qword_27ECDE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE528);
  }

  return result;
}

unint64_t sub_242C06EA8()
{
  result = qword_27ECDE530;
  if (!qword_27ECDE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE530);
  }

  return result;
}

unint64_t sub_242C06F00()
{
  result = qword_27ECDE538;
  if (!qword_27ECDE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE538);
  }

  return result;
}

unint64_t sub_242C06F58()
{
  result = qword_27ECDE540;
  if (!qword_27ECDE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE540);
  }

  return result;
}

unint64_t sub_242C06FB0()
{
  result = qword_27ECDE548;
  if (!qword_27ECDE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE548);
  }

  return result;
}

unint64_t sub_242C07008()
{
  result = qword_27ECDE550;
  if (!qword_27ECDE550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE550);
  }

  return result;
}

unint64_t sub_242C07060()
{
  result = qword_27ECDE558;
  if (!qword_27ECDE558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE558);
  }

  return result;
}

uint64_t sub_242C070B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000242C213E0 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_242C1A740();

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

uint64_t sub_242C071D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000242C213E0 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4448527369 && a2 == 0xE500000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_242C1A740();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_242C0733C()
{
  result = qword_27ECDE560;
  if (!qword_27ECDE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE560);
  }

  return result;
}

unint64_t sub_242C07390()
{
  result = qword_27ECDE568;
  if (!qword_27ECDE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE568);
  }

  return result;
}

_BYTE *CAUPhysicalControlBarsButtonLayoutInfo.init(edge:startingPoint:length:)@<X0>(_BYTE *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 4) = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t sub_242C074D8()
{
  v1 = 0x676E697472617473;
  if (*v0 != 1)
  {
    v1 = 0x6874676E656CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701274725;
  }
}

uint64_t sub_242C07534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C0820C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C0755C(uint64_t a1)
{
  v2 = sub_242C077A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C07598(uint64_t a1)
{
  v2 = sub_242C077A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUPhysicalControlBarsButtonLayoutInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE570, &qword_242C1E950);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  LODWORD(v7) = *(v1 + 2);
  v12[6] = *(v1 + 1);
  v12[3] = v7;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C077A0();
  sub_242C1A8A0();
  v16 = v9;
  v15 = 0;
  sub_242C077F4();
  sub_242C1A710();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = 1;
  sub_242C1A720();
  v13 = 2;
  sub_242C1A720();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_242C077A0()
{
  result = qword_27ECDE578;
  if (!qword_27ECDE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE578);
  }

  return result;
}

unint64_t sub_242C077F4()
{
  result = qword_27ECDE580;
  if (!qword_27ECDE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE580);
  }

  return result;
}

uint64_t CAUPhysicalControlBarsButtonLayoutInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE588, &qword_242C1E958);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C077A0();
  sub_242C1A880();
  if (!v2)
  {
    v18 = 0;
    sub_242C07A2C();
    sub_242C1A6B0();
    v11 = v19;
    v17 = 1;
    v13 = sub_242C1A6C0();
    v16 = 2;
    v14 = sub_242C1A6C0();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 4) = v13;
    *(a2 + 8) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242C07A2C()
{
  result = qword_27ECDE590;
  if (!qword_27ECDE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE590);
  }

  return result;
}

CarAssetUtils::CAUEdge_optional __swiftcall CAUEdge.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CAUEdge.rawValue.getter()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x7468676972;
  }

  if (*v0)
  {
    v1 = 1952867692;
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

unint64_t sub_242C07B8C()
{
  result = qword_27ECDE598;
  if (!qword_27ECDE598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE598);
  }

  return result;
}

uint64_t sub_242C07BE0()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C07C8C()
{
  *v0;
  *v0;
  *v0;
  sub_242C1A4B0();
}

uint64_t sub_242C07D24()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

void sub_242C07DD8(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368564;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74746F62;
  if (*v1 != 2)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1952867692;
    v2 = 0xE400000000000000;
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

uint64_t sub_242C07EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C08328();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C07F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C08328();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_242C07FC4()
{
  result = qword_27ECDE5A0;
  if (!qword_27ECDE5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE5A8, &qword_242C1EAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE5A0);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CAUPhysicalControlBarsButtonLayoutInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[12])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CAUPhysicalControlBarsButtonLayoutInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_242C08108()
{
  result = qword_27ECDE5B0;
  if (!qword_27ECDE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE5B0);
  }

  return result;
}

unint64_t sub_242C08160()
{
  result = qword_27ECDE5B8;
  if (!qword_27ECDE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE5B8);
  }

  return result;
}

unint64_t sub_242C081B8()
{
  result = qword_27ECDE5C0;
  if (!qword_27ECDE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE5C0);
  }

  return result;
}

uint64_t sub_242C0820C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701274725 && a2 == 0xE400000000000000;
  if (v3 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E697472617473 && a2 == 0xED0000746E696F50 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242C1A740();

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

unint64_t sub_242C08328()
{
  result = qword_27ECDE5C8;
  if (!qword_27ECDE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE5C8);
  }

  return result;
}

uint64_t JSONEncoder.encode<A>(_:toFile:)()
{
  result = sub_242C1A2B0();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    sub_242C1A3A0();
    return sub_242C083E4(v3, v4);
  }

  return result;
}

uint64_t sub_242C083E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

CarAssetUtils::CAUVehicleTrait_optional __swiftcall CAUVehicleTrait.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CAUVehicleTrait.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000014;
    if (v1 != 10)
    {
      v6 = 0xD000000000000012;
    }

    if (v1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x4C656C6369686576;
    v8 = 0xD000000000000010;
    if (v1 != 7)
    {
      v8 = 0xD000000000000019;
    }

    if (v1 != 6)
    {
      v7 = v8;
    }

    if (*v0 <= 8u)
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
    v2 = 0x726F697265746E69;
    v3 = 0x6172426F69647561;
    if (v1 != 4)
    {
      v3 = 0x4C656C6369686576;
    }

    if (v1 == 3)
    {
      v3 = 0x726F697265746E69;
    }

    if (v1 != 1)
    {
      v2 = 0x726F697265747865;
    }

    if (!*v0)
    {
      v2 = 0x726F697265747865;
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
}

uint64_t sub_242C08630(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = CAUVehicleTrait.rawValue.getter();
  v4 = v3;
  if (v2 == CAUVehicleTrait.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_242C1A740();
  }

  return v7 & 1;
}

unint64_t sub_242C086D0()
{
  result = qword_2815054E0;
  if (!qword_2815054E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815054E0);
  }

  return result;
}

uint64_t sub_242C08724()
{
  v1 = *v0;
  sub_242C1A820();
  CAUVehicleTrait.rawValue.getter();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C0878C()
{
  v2 = *v0;
  CAUVehicleTrait.rawValue.getter();
  sub_242C1A4B0();
}

uint64_t sub_242C087F0()
{
  v1 = *v0;
  sub_242C1A820();
  CAUVehicleTrait.rawValue.getter();
  sub_242C1A4B0();

  return sub_242C1A850();
}

unint64_t sub_242C08860@<X0>(unint64_t *a1@<X8>)
{
  result = CAUVehicleTrait.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CAUVehicleTrait(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CAUVehicleTrait(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CAUResource(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 14) | (4 * (HIBYTE(*a1) & 0x3C | (*a1 >> 6)))) ^ 0xFF;
  if (v6 >= 0xFD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for CAUResource(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = (((-a2 & 0xF0) << 6) - (a2 << 14)) & 0xFF3F | (((-a2 >> 2) & 3) << 6);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_242C08B54(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 14;
  v4 = (v1 & 0x3F | (((v1 >> 8) & 3) << 6)) + 2;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *sub_242C08B8C(_WORD *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0x33F | (a2 << 14);
  }

  else
  {
    *result = (4 * (a2 - 2)) & 0x300 | (a2 - 2) & 0x3F | 0x8000;
  }

  return result;
}

void sub_242C08BD4(_BYTE *a1@<X8>)
{
  v2 = *v1;
  v3 = v2 >> 14;
  if (v3 >= 2)
  {
    LOBYTE(v3) = byte_242C1EDC2[v2 ^ 0xFFFFFFFFFFFF8000];
  }

  *a1 = v3;
}

uint64_t sub_242C08C54()
{
  v1 = *v0;
  sub_242C1A820();
  MEMORY[0x245D23570](v1);
  return sub_242C1A850();
}

uint64_t sub_242C08CC8()
{
  v1 = *v0;
  sub_242C1A820();
  MEMORY[0x245D23570](v1);
  return sub_242C1A850();
}

BOOL sub_242C08D50(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_242C08D80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_242C08DAC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_242C08E84@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_242C08EB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t CAUPersistentElements.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C1A870();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v6 = sub_242C1A770();
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CAUPersistentElements.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C1A890();
  if ((v2 & 1) == 0)
  {
    v4 = MEMORY[0x277D84F90];
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v4 = sub_242C09850(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_242C09850((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = 25441;
  *(v7 + 5) = 0xE200000000000000;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_242C09850(0, *(v4 + 2) + 1, 1, v4);
    }

    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      v4 = sub_242C09850((v8 > 1), v9 + 1, 1, v4);
    }

    *(v4 + 2) = v9 + 1;
    v10 = &v4[16 * v9];
    *(v10 + 4) = 7233894;
    *(v10 + 5) = 0xE300000000000000;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_242C09850(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = sub_242C09850((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v13 = &v4[16 * v12];
    strcpy(v13 + 32, "frontDefrost");
    v13[45] = 0;
    *(v13 + 23) = -5120;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_242C09850(0, *(v4 + 2) + 1, 1, v4);
  }

  v15 = *(v4 + 2);
  v14 = *(v4 + 3);
  if (v15 >= v14 >> 1)
  {
    v4 = sub_242C09850((v14 > 1), v15 + 1, 1, v4);
  }

  *(v4 + 2) = v15 + 1;
  v16 = &v4[16 * v15];
  *(v16 + 4) = 0x7266654472616572;
  *(v16 + 5) = 0xEB0000000074736FLL;
  if ((v2 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_242C09850(0, *(v4 + 2) + 1, 1, v4);
    }

    v18 = *(v4 + 2);
    v17 = *(v4 + 3);
    if (v18 >= v17 >> 1)
    {
      v4 = sub_242C09850((v17 > 1), v18 + 1, 1, v4);
    }

    *(v4 + 2) = v18 + 1;
    v19 = &v4[16 * v18];
    *(v19 + 4) = 0xD000000000000011;
    *(v19 + 5) = 0x8000000242C21430;
  }

LABEL_31:
  __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE5D0, &unk_242C1EDD0);
  sub_242C097B4(&qword_27ECDE5E8);
  sub_242C1A7B0();

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_242C097B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE5D0, &unk_242C1EDD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_242C09850(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE620, &qword_242C1F048);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_242C09960()
{
  result = qword_27ECDE5F0;
  if (!qword_27ECDE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE5F0);
  }

  return result;
}

unint64_t sub_242C099B8()
{
  result = qword_27ECDE5F8;
  if (!qword_27ECDE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE5F8);
  }

  return result;
}

unint64_t sub_242C09A0C()
{
  result = qword_27ECDE600;
  if (!qword_27ECDE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE600);
  }

  return result;
}

unint64_t sub_242C09A64()
{
  result = qword_27ECDE608;
  if (!qword_27ECDE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE608);
  }

  return result;
}

void *sub_242C09AC8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE610, "z2");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE618, &qword_242C1F040);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t CAUError.AssetLibrary.hashValue.getter()
{
  v1 = *v0;
  sub_242C1A820();
  MEMORY[0x245D23570](v1);
  return sub_242C1A850();
}

unint64_t sub_242C09C98()
{
  result = qword_27ECDE628;
  if (!qword_27ECDE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE628);
  }

  return result;
}

unint64_t sub_242C09D14()
{
  result = qword_27ECDE630;
  if (!qword_27ECDE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE630);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CarAssetUtils8CAUErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 4)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_242C09D98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 25))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 24);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_242C09DE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_242C09E28(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_242C09E64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64657463656C6573;
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v3 = 0xED00006E4F746E65;
    if (a1 == 2)
    {
      v5 = 0x56646E4174616568;
    }

    else
    {
      v5 = 0x6E4F746E6576;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 0x6E4F74616568;
    }

    else
    {
      v5 = 0x64657463656C6573;
    }
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x56646E4174616568;
  v9 = 0xED00006E4F746E65;
  if (a2 != 2)
  {
    v8 = 0x6E4F746E6576;
    v9 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x6E4F74616568;
    v7 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_242C1A740();
  }

  return v12 & 1;
}

uint64_t sub_242C09FA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D6F74746F62;
    }

    else
    {
      v4 = 0x7468676972;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1952867692;
    }

    else
    {
      v4 = 7368564;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6D6F74746F62;
  if (a2 != 2)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 1952867692;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242C1A740();
  }

  return v11 & 1;
}

uint64_t sub_242C0A0C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7233894;
    }

    else
    {
      v3 = 0x74617265706D6574;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xEB00000000657275;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E614674616573;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000012;
    v4 = 0x8000000242C208B0;
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x6B6E694C70656564;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 7233894;
    }

    else
    {
      v6 = 0x74617265706D6574;
    }

    if (a2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xEB00000000657275;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x6E614674616573)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000242C208B0;
    if (v3 != 0xD000000000000012)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x6B6E694C70656564)
    {
LABEL_31:
      v7 = sub_242C1A740();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_242C0A25C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001DLL;
  v3 = "e";
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = "tpms_pressureValue_font_weight";
    v14 = "tpms_pressureUnit_font_weight";
    v15 = 0xD000000000000014;
    if (a1 != 8)
    {
      v15 = 0xD000000000000011;
      v14 = "trip_horizontalStack";
    }

    if (a1 == 7)
    {
      v15 = 0xD00000000000001DLL;
    }

    else
    {
      v13 = v14;
    }

    v16 = "tpms_pressureValue_font_style";
    v17 = 0xD00000000000001CLL;
    if (a1 != 5)
    {
      v17 = 0xD00000000000001ELL;
      v16 = "tpms_pressureUnit_font_style";
    }

    if (a1 <= 6u)
    {
      v11 = v17;
    }

    else
    {
      v11 = v15;
    }

    if (v4 <= 6)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = "label_bottom_padding";
    v6 = 0xD00000000000001FLL;
    v7 = "tpms_rightTop_label_top_padding";
    v8 = 0xD000000000000025;
    if (a1 != 3)
    {
      v8 = 0xD00000000000001DLL;
      v7 = "_label_bottom_padding";
    }

    if (a1 != 2)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = "tpms_leftTop_label_top_padding";
    v10 = 0xD000000000000024;
    if (!a1)
    {
      v10 = 0xD00000000000001ELL;
      v9 = "e";
    }

    if (a1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v3 = "label_bottom_padding";
        v2 = 0xD00000000000001FLL;
      }

      else if (a2 == 3)
      {
        v3 = "tpms_rightTop_label_top_padding";
        v2 = 0xD000000000000025;
      }

      else
      {
        v3 = "_label_bottom_padding";
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v3 = "tpms_leftTop_label_top_padding";
      v2 = 0xD000000000000024;
      goto LABEL_46;
    }

LABEL_45:
    v2 = 0xD00000000000001ELL;
    goto LABEL_46;
  }

  if (a2 <= 6u)
  {
    if (a2 == 5)
    {
      v3 = "tpms_pressureValue_font_style";
      v2 = 0xD00000000000001CLL;
      goto LABEL_46;
    }

    v3 = "tpms_pressureUnit_font_style";
    goto LABEL_45;
  }

  if (a2 == 7)
  {
    v3 = "tpms_pressureValue_font_weight";
  }

  else if (a2 == 8)
  {
    v3 = "tpms_pressureUnit_font_weight";
    v2 = 0xD000000000000014;
  }

  else
  {
    v3 = "trip_horizontalStack";
    v2 = 0xD000000000000011;
  }

LABEL_46:
  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_242C1A740();
  }

  return v18 & 1;
}

uint64_t sub_242C0A4C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656772616863;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEC00000065727573;
    v4 = 0xE400000000000000;
    if (a1 == 2)
    {
      v6 = 0x7365725065726974;
    }

    else
    {
      v6 = 1885958772;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE800000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x73657275736F6C63;
    }

    else
    {
      v6 = 0x656772616863;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE600000000000000;
  v9 = 0x7365725065726974;
  v10 = 0xEC00000065727573;
  if (a2 != 2)
  {
    v9 = 1885958772;
    v10 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x73657275736F6C63;
    v8 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_242C1A740();
  }

  return v13 & 1;
}

__n128 CAUManifest.init(cabin:topDownInterior:topDownExteriorClosuresOverlay:topDownExterior:seats:closures:audioBrandLogo:vehicleLogo:vehicleLayouts:wallpaperOverlays:physicalControlBarsLayouts:appDockIndicators:featureConfigurations:appUIConfigurations:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  return result;
}

uint64_t sub_242C0A620@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(v6 + 32);
  if (!*(v8 + 16))
  {
    goto LABEL_56;
  }

  v56 = *a4;
  v53 = *a5;
  result = sub_242BFA104(result, a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_56;
  }

  v50 = a3;
  v11 = *(*(v8 + 56) + 8 * result);
  v12 = *(v11 + 16);

  if (!v12)
  {
    v52 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  v13 = 0;
  v14 = v11 + 48;
  v51 = a6;
  v52 = MEMORY[0x277D84F90];
  v49 = v12;
  do
  {
    v15 = (v14 + 24 * v13);
    v16 = v12 - v13;
    while (1)
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        return result;
      }

      v18 = *(v15 - 16);
      v19 = *(v15 - 15);
      v55 = *(v15 - 14);
      v20 = *v15;
      v54 = *(v15 - 1);
      v21 = CAUVehicleLayoutKey.rawValue.getter();
      v23 = v22;
      if (v21 == CAUVehicleLayoutKey.rawValue.getter() && v23 == v24)
      {
      }

      else
      {
        v25 = sub_242C1A740();

        if ((v25 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if (v19 > 1)
      {
        v26 = v19 == 2;
        v27 = v19 == 2 ? 0x56646E4174616568 : 0x6E4F746E6576;
        v28 = 0xED00006E4F746E65;
      }

      else
      {
        v26 = v19 == 0;
        v27 = v19 ? 0x6E4F74616568 : 0x64657463656C6573;
        v28 = 0xE800000000000000;
      }

      v29 = v26 ? v28 : 0xE600000000000000;
      if (v53 <= 1)
      {
        break;
      }

      if (v53 == 2)
      {
        v31 = 0x56646E4174616568;
      }

      else
      {
        v31 = 0x6E4F746E6576;
      }

      if (v53 == 2)
      {
        v30 = 0xED00006E4F746E65;
      }

      else
      {
        v30 = 0xE600000000000000;
      }

      if (v27 == v31)
      {
        goto LABEL_38;
      }

LABEL_6:
      v17 = sub_242C1A740();

      if (v17)
      {
        goto LABEL_40;
      }

LABEL_7:

      v15 += 3;
      ++v13;
      if (!--v16)
      {
        a6 = v51;
        goto LABEL_48;
      }
    }

    if (!v53)
    {
      v30 = 0xE800000000000000;
      if (v27 == 0x64657463656C6573)
      {
        goto LABEL_38;
      }

      goto LABEL_6;
    }

    v30 = 0xE600000000000000;
    if (v27 != 0x6E4F74616568)
    {
      goto LABEL_6;
    }

LABEL_38:
    if (v29 != v30)
    {
      goto LABEL_6;
    }

LABEL_40:
    v32 = v52;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_242C0E414(0, *(v52 + 16) + 1, 1);
      v32 = v52;
    }

    a6 = v51;
    v34 = *(v32 + 16);
    v33 = *(v32 + 24);
    if (v34 >= v33 >> 1)
    {
      result = sub_242C0E414((v33 > 1), v34 + 1, 1);
      v32 = v52;
    }

    *(v32 + 16) = v34 + 1;
    v52 = v32;
    v35 = v32 + 24 * v34;
    *(v35 + 32) = v18;
    ++v13;
    *(v35 + 33) = v19;
    *(v35 + 34) = v55;
    *(v35 + 40) = v54;
    *(v35 + 48) = v20;
    v14 = v11 + 48;
    v12 = v49;
  }

  while (v16 != 1);
LABEL_48:

  v36 = *(v52 + 16);
  if (!v36)
  {

LABEL_56:
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    return result;
  }

  v37 = v52 + 24;
  v38 = v36 + 1;
  do
  {
    if (!--v38)
    {
      v45 = *(v52 + 32);
      v46 = *(v52 + 34);
      v48 = *(v52 + 40);
      v47 = *(v52 + 48);

      *a6 = v45;
      *(a6 + 2) = v46;
      *(a6 + 8) = v48;
      *(a6 + 16) = v47;
      return result;
    }

    v39 = (v37 + 24);
    v40 = *(v37 + 10);
    v37 += 24;
  }

  while (v40 != (v50 & 1));
  v42 = *(v39 - 1);
  v41 = *v39;
  v43 = *(v39 - 8);

  v44 = 0x10000;
  if (!v40)
  {
    v44 = 0;
  }

  *a6 = v43 | v44;
  *(a6 + 8) = v42;
  *(a6 + 16) = v41;
  return result;
}

uint64_t sub_242C0AA48@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *(v5 + 40);
  if (!*(v7 + 16) || (v31 = *a3, v8 = *a4, result = sub_242BFA104(result, a2), (v9 & 1) == 0))
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return result;
  }

  v28 = a5;
  v10 = *(*(v7 + 56) + 8 * result);
  v11 = *(v10 + 16);
  v32 = v10;

  v30 = v11;
  if (!v11)
  {
LABEL_27:

    *v28 = 0;
    v28[1] = 0;
    v28[2] = 0;
    return result;
  }

  v12 = 0;
  v13 = (v32 + 32);
  if (v8)
  {
    v14 = 0x6465736F6C63;
  }

  else
  {
    v14 = 1852141679;
  }

  if (v8)
  {
    v15 = 0xE600000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  while (1)
  {
    if (v12 >= *(v32 + 16))
    {
      __break(1u);
      return result;
    }

    v17 = *v13;
    v18 = v13[1];
    v19 = *(v13 + 2);
    v29 = *(v13 + 1);
    v20 = CAUVehicleLayoutKey.rawValue.getter();
    v22 = v21;
    if (v20 == CAUVehicleLayoutKey.rawValue.getter() && v22 == v23)
    {
    }

    else
    {
      v24 = sub_242C1A740();

      if ((v24 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v25 = v18 ? 0x6465736F6C63 : 1852141679;
    v26 = v18 ? 0xE600000000000000 : 0xE400000000000000;
    if (v25 == v14 && v26 == v15)
    {
      break;
    }

    v16 = sub_242C1A740();

    if (v16)
    {
      goto LABEL_28;
    }

LABEL_11:
    ++v12;

    v13 += 24;
    if (v30 == v12)
    {
      goto LABEL_27;
    }
  }

LABEL_28:

  v27 = 256;
  if (!v18)
  {
    v27 = 0;
  }

  *v28 = v27 | v17;
  v28[1] = v29;
  v28[2] = v19;
  return result;
}

unint64_t sub_242C0AC9C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v6 = *v4;
  if (!*(v6 + 16))
  {
    goto LABEL_14;
  }

  v9 = result;
  result = sub_242BFA104(result, a2);
  if (v10)
  {
    v11 = *(*(v6 + 56) + 8 * result);
    v12 = (v11 + 32);
    v13 = *(v11 + 16) + 1;
    while (--v13)
    {
      v14 = v12 + 24;
      v15 = *v12;
      v12 += 24;
      if (v15 == (a3 & 1))
      {
        v17 = *(v14 - 2);
        v16 = *(v14 - 1);
        *a4 = v15;
        a4[1] = v17;
        goto LABEL_11;
      }
    }
  }

  if (*(v6 + 16) && (result = sub_242BFA104(v9, a2), (v18 & 1) != 0) && (v19 = *(*(v6 + 56) + 8 * result), *(v19 + 16)))
  {
    v20 = *(v19 + 40);
    v16 = *(v19 + 48);
    *a4 = *(v19 + 32);
    a4[1] = v20;
LABEL_11:
    a4[2] = v16;
  }

  else
  {
LABEL_14:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return result;
}

unint64_t sub_242C0AD94@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v6 = *(v4 + 8);
  if (!*(v6 + 16))
  {
    goto LABEL_14;
  }

  v9 = result;
  result = sub_242BFA104(result, a2);
  if (v10)
  {
    v11 = *(*(v6 + 56) + 8 * result);
    v12 = (v11 + 32);
    v13 = *(v11 + 16) + 1;
    while (--v13)
    {
      v14 = v12 + 24;
      v15 = *v12;
      v12 += 24;
      if (v15 == (a3 & 1))
      {
        v17 = *(v14 - 2);
        v16 = *(v14 - 1);
        *a4 = v15;
        a4[1] = v17;
        goto LABEL_11;
      }
    }
  }

  if (*(v6 + 16) && (result = sub_242BFA104(v9, a2), (v18 & 1) != 0) && (v19 = *(*(v6 + 56) + 8 * result), *(v19 + 16)))
  {
    v20 = *(v19 + 40);
    v16 = *(v19 + 48);
    *a4 = *(v19 + 32);
    a4[1] = v20;
LABEL_11:
    a4[2] = v16;
  }

  else
  {
LABEL_14:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return result;
}

unint64_t sub_242C0AE8C(char a1)
{
  result = 0x6E69626163;
  switch(a1)
  {
    case 1:
      result = 0x496E776F44706F74;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0x456E776F44706F74;
      break;
    case 4:
      result = 0x7374616573;
      break;
    case 5:
      result = 0x73657275736F6C63;
      break;
    case 6:
      result = 0x6172426F69647561;
      break;
    case 7:
    case 8:
      result = 0x4C656C6369686576;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_242C0B048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C0E554(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C0B07C(uint64_t a1)
{
  v2 = sub_242C0B728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C0B0B8(uint64_t a1)
{
  v2 = sub_242C0B728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUManifest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE638, &qword_242C1F2D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v32 = v1[2];
  v33 = v8;
  v11 = v1[5];
  v30 = v1[4];
  v31 = v10;
  v12 = v1[7];
  v28 = v1[6];
  v29 = v11;
  v13 = v1[9];
  v26 = v1[8];
  v27 = v12;
  v14 = v1[11];
  v24 = v1[10];
  v25 = v13;
  v15 = v1[13];
  v22 = v1[12];
  v23 = v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C0B728();

  v17 = v3;
  sub_242C1A8A0();
  v36 = v9;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE648, &qword_242C1F2D8);
  sub_242C0B77C();
  v18 = v34;
  sub_242C1A710();
  if (v18)
  {

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v19 = v31;
    v20 = v32;

    v36 = v33;
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE670, &qword_242C1F2E8);
    sub_242C0B8E0();
    sub_242C1A710();
    v36 = v20;
    v35 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE698, &qword_242C1F2F8);
    sub_242C0BA44();
    sub_242C1A710();
    v36 = v19;
    v35 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE6B0, &qword_242C1F300);
    sub_242C0BB24();
    sub_242C1A710();
    v36 = v30;
    v35 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE6C8, &qword_242C1F308);
    sub_242C0BC04();
    sub_242C1A710();
    v36 = v29;
    v35 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE6F0, &qword_242C1F318);
    sub_242C0BD68();
    sub_242C1A710();
    v36 = v28;
    v35 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE718, &qword_242C1F328);
    sub_242C0BECC();
    sub_242C1A710();
    v36 = v27;
    v35 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE730, &qword_242C1F330);
    sub_242C0BFAC();
    sub_242C1A710();
    v36 = v26;
    v35 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE748, &qword_242C1F338);
    sub_242C0C08C();
    sub_242C1A710();
    v36 = v25;
    v35 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE760, &qword_242C1F340);
    sub_242C0C16C();
    sub_242C1A710();
    v36 = v24;
    v35 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE778, &qword_242C1F348);
    sub_242C0C24C();
    sub_242C1A6D0();
    v36 = v23;
    v35 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE790, &qword_242C1F350);
    sub_242C0C32C();
    sub_242C1A6D0();
    v36 = v22;
    v35 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE7A8, &qword_242C1F358);
    sub_242C0C40C();
    sub_242C1A6D0();
    v36 = v15;
    v35 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE7C0, &qword_242C1F360);
    sub_242C0C4EC();
    sub_242C1A6D0();
    return (*(v4 + 8))(v7, v17);
  }
}

unint64_t sub_242C0B728()
{
  result = qword_27ECDE640;
  if (!qword_27ECDE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE640);
  }

  return result;
}

unint64_t sub_242C0B77C()
{
  result = qword_27ECDE650;
  if (!qword_27ECDE650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE648, &qword_242C1F2D8);
    sub_242C0B808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE650);
  }

  return result;
}

unint64_t sub_242C0B808()
{
  result = qword_27ECDE658;
  if (!qword_27ECDE658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE660, &qword_242C1F2E0);
    sub_242C0B88C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE658);
  }

  return result;
}

unint64_t sub_242C0B88C()
{
  result = qword_27ECDE668;
  if (!qword_27ECDE668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE668);
  }

  return result;
}

unint64_t sub_242C0B8E0()
{
  result = qword_27ECDE678;
  if (!qword_27ECDE678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE670, &qword_242C1F2E8);
    sub_242C0B96C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE678);
  }

  return result;
}

unint64_t sub_242C0B96C()
{
  result = qword_27ECDE680;
  if (!qword_27ECDE680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE688, &qword_242C1F2F0);
    sub_242C0B9F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE680);
  }

  return result;
}

unint64_t sub_242C0B9F0()
{
  result = qword_27ECDE690;
  if (!qword_27ECDE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE690);
  }

  return result;
}

unint64_t sub_242C0BA44()
{
  result = qword_27ECDE6A0;
  if (!qword_27ECDE6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE698, &qword_242C1F2F8);
    sub_242C0BAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6A0);
  }

  return result;
}

unint64_t sub_242C0BAD0()
{
  result = qword_27ECDE6A8;
  if (!qword_27ECDE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6A8);
  }

  return result;
}

unint64_t sub_242C0BB24()
{
  result = qword_27ECDE6B8;
  if (!qword_27ECDE6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6B0, &qword_242C1F300);
    sub_242C0BBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6B8);
  }

  return result;
}

unint64_t sub_242C0BBB0()
{
  result = qword_27ECDE6C0;
  if (!qword_27ECDE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6C0);
  }

  return result;
}

unint64_t sub_242C0BC04()
{
  result = qword_27ECDE6D0;
  if (!qword_27ECDE6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6C8, &qword_242C1F308);
    sub_242C0BC90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6D0);
  }

  return result;
}

unint64_t sub_242C0BC90()
{
  result = qword_27ECDE6D8;
  if (!qword_27ECDE6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6E0, &qword_242C1F310);
    sub_242C0BD14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6D8);
  }

  return result;
}

unint64_t sub_242C0BD14()
{
  result = qword_27ECDE6E8;
  if (!qword_27ECDE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6E8);
  }

  return result;
}

unint64_t sub_242C0BD68()
{
  result = qword_27ECDE6F8;
  if (!qword_27ECDE6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6F0, &qword_242C1F318);
    sub_242C0BDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6F8);
  }

  return result;
}

unint64_t sub_242C0BDF4()
{
  result = qword_27ECDE700;
  if (!qword_27ECDE700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE708, &qword_242C1F320);
    sub_242C0BE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE700);
  }

  return result;
}

unint64_t sub_242C0BE78()
{
  result = qword_27ECDE710;
  if (!qword_27ECDE710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE710);
  }

  return result;
}

unint64_t sub_242C0BECC()
{
  result = qword_27ECDE720;
  if (!qword_27ECDE720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE718, &qword_242C1F328);
    sub_242C0BF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE720);
  }

  return result;
}

unint64_t sub_242C0BF58()
{
  result = qword_27ECDE728;
  if (!qword_27ECDE728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE728);
  }

  return result;
}

unint64_t sub_242C0BFAC()
{
  result = qword_27ECDE738;
  if (!qword_27ECDE738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE730, &qword_242C1F330);
    sub_242C0C038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE738);
  }

  return result;
}

unint64_t sub_242C0C038()
{
  result = qword_27ECDE740;
  if (!qword_27ECDE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE740);
  }

  return result;
}

unint64_t sub_242C0C08C()
{
  result = qword_27ECDE750;
  if (!qword_27ECDE750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE748, &qword_242C1F338);
    sub_242C0C118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE750);
  }

  return result;
}

unint64_t sub_242C0C118()
{
  result = qword_27ECDE758;
  if (!qword_27ECDE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE758);
  }

  return result;
}

unint64_t sub_242C0C16C()
{
  result = qword_27ECDE768;
  if (!qword_27ECDE768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE760, &qword_242C1F340);
    sub_242C0C1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE768);
  }

  return result;
}

unint64_t sub_242C0C1F8()
{
  result = qword_27ECDE770;
  if (!qword_27ECDE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE770);
  }

  return result;
}

unint64_t sub_242C0C24C()
{
  result = qword_27ECDE780;
  if (!qword_27ECDE780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE778, &qword_242C1F348);
    sub_242C0C2D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE780);
  }

  return result;
}

unint64_t sub_242C0C2D8()
{
  result = qword_27ECDE788;
  if (!qword_27ECDE788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE788);
  }

  return result;
}

unint64_t sub_242C0C32C()
{
  result = qword_27ECDE798;
  if (!qword_27ECDE798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE790, &qword_242C1F350);
    sub_242C0C3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE798);
  }

  return result;
}

unint64_t sub_242C0C3B8()
{
  result = qword_27ECDE7A0;
  if (!qword_27ECDE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7A0);
  }

  return result;
}

unint64_t sub_242C0C40C()
{
  result = qword_27ECDE7B0;
  if (!qword_27ECDE7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE7A8, &qword_242C1F358);
    sub_242C0C498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7B0);
  }

  return result;
}

unint64_t sub_242C0C498()
{
  result = qword_27ECDE7B8;
  if (!qword_27ECDE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7B8);
  }

  return result;
}

unint64_t sub_242C0C4EC()
{
  result = qword_27ECDE7C8;
  if (!qword_27ECDE7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE7C0, &qword_242C1F360);
    sub_242C0C578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7C8);
  }

  return result;
}

unint64_t sub_242C0C578()
{
  result = qword_27ECDE7D0;
  if (!qword_27ECDE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7D0);
  }

  return result;
}

uint64_t CAUManifest.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE7D8, &qword_242C1F368);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C0B728();
  sub_242C1A880();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE648, &qword_242C1F2D8);
  LOBYTE(v37) = 0;
  sub_242C0D1FC();
  sub_242C1A6B0();
  v36 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE670, &qword_242C1F2E8);
  LOBYTE(v37) = 1;
  sub_242C0D360();
  sub_242C1A6B0();
  v34 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE698, &qword_242C1F2F8);
  LOBYTE(v37) = 2;
  sub_242C0D4C4();
  sub_242C1A6B0();
  v33 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE6B0, &qword_242C1F300);
  LOBYTE(v37) = 3;
  sub_242C0D5A4();
  sub_242C1A6B0();
  v32 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE6C8, &qword_242C1F308);
  LOBYTE(v37) = 4;
  sub_242C0D684();
  sub_242C1A6B0();
  v31 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE6F0, &qword_242C1F318);
  LOBYTE(v37) = 5;
  sub_242C0D7E8();
  sub_242C1A6B0();
  v30 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE718, &qword_242C1F328);
  LOBYTE(v37) = 6;
  sub_242C0D94C();
  sub_242C1A6B0();
  v29 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE730, &qword_242C1F330);
  LOBYTE(v37) = 7;
  sub_242C0DA2C();
  sub_242C1A6B0();
  v28 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE748, &qword_242C1F338);
  LOBYTE(v37) = 8;
  sub_242C0DB0C();
  sub_242C1A6B0();
  v27 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE760, &qword_242C1F340);
  LOBYTE(v37) = 9;
  sub_242C0DBEC();
  sub_242C1A6B0();
  v35 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE778, &qword_242C1F348);
  LOBYTE(v37) = 10;
  sub_242C0DCCC();
  sub_242C1A670();
  v26 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE790, &qword_242C1F350);
  LOBYTE(v37) = 11;
  sub_242C0DDAC();
  sub_242C1A670();
  v25 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE7A8, &qword_242C1F358);
  LOBYTE(v37) = 12;
  sub_242C0DE8C();
  sub_242C1A670();
  v11 = v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE7C0, &qword_242C1F360);
  v45 = 13;
  sub_242C0DF6C();
  sub_242C1A670();
  (*(v6 + 8))(v9, v5);
  v24 = v46;
  v12 = v36;
  *&v37 = v36;
  *(&v37 + 1) = v34;
  v13 = v33;
  *&v38 = v33;
  v14 = v32;
  *(&v38 + 1) = v32;
  v15 = v31;
  *&v39 = v31;
  v16 = v30;
  *(&v39 + 1) = v30;
  *&v40 = v29;
  *(&v40 + 1) = v28;
  *&v41 = v27;
  *(&v41 + 1) = v35;
  *&v42 = v26;
  *(&v42 + 1) = v25;
  *&v43 = v11;
  *(&v43 + 1) = v46;
  v17 = v38;
  *a2 = v37;
  a2[1] = v17;
  v18 = v39;
  v19 = v40;
  v20 = v43;
  a2[5] = v42;
  a2[6] = v20;
  v21 = v41;
  a2[3] = v19;
  a2[4] = v21;
  a2[2] = v18;
  sub_242C0E04C(&v37, v44);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v44[0] = v12;
  v44[1] = v34;
  v44[2] = v13;
  v44[3] = v14;
  v44[4] = v15;
  v44[5] = v16;
  v44[6] = v29;
  v44[7] = v28;
  v44[8] = v27;
  v44[9] = v35;
  v44[10] = v26;
  v44[11] = v25;
  v44[12] = v11;
  v44[13] = v24;
  return sub_242C0E084(v44);
}

unint64_t sub_242C0D1FC()
{
  result = qword_27ECDE7E0;
  if (!qword_27ECDE7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE648, &qword_242C1F2D8);
    sub_242C0D288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7E0);
  }

  return result;
}

unint64_t sub_242C0D288()
{
  result = qword_27ECDE7E8;
  if (!qword_27ECDE7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE660, &qword_242C1F2E0);
    sub_242C0D30C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7E8);
  }

  return result;
}

unint64_t sub_242C0D30C()
{
  result = qword_27ECDE7F0;
  if (!qword_27ECDE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7F0);
  }

  return result;
}

unint64_t sub_242C0D360()
{
  result = qword_27ECDE7F8;
  if (!qword_27ECDE7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE670, &qword_242C1F2E8);
    sub_242C0D3EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7F8);
  }

  return result;
}

unint64_t sub_242C0D3EC()
{
  result = qword_27ECDE800;
  if (!qword_27ECDE800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE688, &qword_242C1F2F0);
    sub_242C0D470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE800);
  }

  return result;
}

unint64_t sub_242C0D470()
{
  result = qword_27ECDE808;
  if (!qword_27ECDE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE808);
  }

  return result;
}

unint64_t sub_242C0D4C4()
{
  result = qword_27ECDE810;
  if (!qword_27ECDE810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE698, &qword_242C1F2F8);
    sub_242C0D550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE810);
  }

  return result;
}

unint64_t sub_242C0D550()
{
  result = qword_27ECDE818;
  if (!qword_27ECDE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE818);
  }

  return result;
}

unint64_t sub_242C0D5A4()
{
  result = qword_27ECDE820;
  if (!qword_27ECDE820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6B0, &qword_242C1F300);
    sub_242C0D630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE820);
  }

  return result;
}

unint64_t sub_242C0D630()
{
  result = qword_27ECDE828;
  if (!qword_27ECDE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE828);
  }

  return result;
}

unint64_t sub_242C0D684()
{
  result = qword_27ECDE830;
  if (!qword_27ECDE830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6C8, &qword_242C1F308);
    sub_242C0D710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE830);
  }

  return result;
}

unint64_t sub_242C0D710()
{
  result = qword_27ECDE838;
  if (!qword_27ECDE838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6E0, &qword_242C1F310);
    sub_242C0D794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE838);
  }

  return result;
}

unint64_t sub_242C0D794()
{
  result = qword_27ECDE840;
  if (!qword_27ECDE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE840);
  }

  return result;
}

unint64_t sub_242C0D7E8()
{
  result = qword_27ECDE848;
  if (!qword_27ECDE848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6F0, &qword_242C1F318);
    sub_242C0D874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE848);
  }

  return result;
}

unint64_t sub_242C0D874()
{
  result = qword_27ECDE850;
  if (!qword_27ECDE850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE708, &qword_242C1F320);
    sub_242C0D8F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE850);
  }

  return result;
}

unint64_t sub_242C0D8F8()
{
  result = qword_27ECDE858;
  if (!qword_27ECDE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE858);
  }

  return result;
}

unint64_t sub_242C0D94C()
{
  result = qword_27ECDE860;
  if (!qword_27ECDE860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE718, &qword_242C1F328);
    sub_242C0D9D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE860);
  }

  return result;
}

unint64_t sub_242C0D9D8()
{
  result = qword_27ECDE868;
  if (!qword_27ECDE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE868);
  }

  return result;
}

unint64_t sub_242C0DA2C()
{
  result = qword_27ECDE870;
  if (!qword_27ECDE870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE730, &qword_242C1F330);
    sub_242C0DAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE870);
  }

  return result;
}

unint64_t sub_242C0DAB8()
{
  result = qword_27ECDE878;
  if (!qword_27ECDE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE878);
  }

  return result;
}

unint64_t sub_242C0DB0C()
{
  result = qword_27ECDE880;
  if (!qword_27ECDE880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE748, &qword_242C1F338);
    sub_242C0DB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE880);
  }

  return result;
}

unint64_t sub_242C0DB98()
{
  result = qword_27ECDE888;
  if (!qword_27ECDE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE888);
  }

  return result;
}

unint64_t sub_242C0DBEC()
{
  result = qword_27ECDE890;
  if (!qword_27ECDE890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE760, &qword_242C1F340);
    sub_242C0DC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE890);
  }

  return result;
}

unint64_t sub_242C0DC78()
{
  result = qword_27ECDE898;
  if (!qword_27ECDE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE898);
  }

  return result;
}

unint64_t sub_242C0DCCC()
{
  result = qword_27ECDE8A0;
  if (!qword_27ECDE8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE778, &qword_242C1F348);
    sub_242C0DD58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8A0);
  }

  return result;
}

unint64_t sub_242C0DD58()
{
  result = qword_27ECDE8A8;
  if (!qword_27ECDE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8A8);
  }

  return result;
}

unint64_t sub_242C0DDAC()
{
  result = qword_27ECDE8B0;
  if (!qword_27ECDE8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE790, &qword_242C1F350);
    sub_242C0DE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8B0);
  }

  return result;
}

unint64_t sub_242C0DE38()
{
  result = qword_27ECDE8B8;
  if (!qword_27ECDE8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8B8);
  }

  return result;
}

unint64_t sub_242C0DE8C()
{
  result = qword_27ECDE8C0;
  if (!qword_27ECDE8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE7A8, &qword_242C1F358);
    sub_242C0DF18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8C0);
  }

  return result;
}

unint64_t sub_242C0DF18()
{
  result = qword_27ECDE8C8;
  if (!qword_27ECDE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8C8);
  }

  return result;
}

unint64_t sub_242C0DF6C()
{
  result = qword_27ECDE8D0;
  if (!qword_27ECDE8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE7C0, &qword_242C1F360);
    sub_242C0DFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8D0);
  }

  return result;
}

unint64_t sub_242C0DFF8()
{
  result = qword_27ECDE8D8;
  if (!qword_27ECDE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8D8);
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

uint64_t sub_242C0E108(uint64_t *a1, int a2)
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

uint64_t sub_242C0E150(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CAUManifest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CAUManifest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_242C0E310()
{
  result = qword_27ECDE8E0;
  if (!qword_27ECDE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8E0);
  }

  return result;
}

unint64_t sub_242C0E368()
{
  result = qword_27ECDE8E8;
  if (!qword_27ECDE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8E8);
  }

  return result;
}

unint64_t sub_242C0E3C0()
{
  result = qword_27ECDE8F0;
  if (!qword_27ECDE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8F0);
  }

  return result;
}

char *sub_242C0E414(char *a1, int64_t a2, char a3)
{
  result = sub_242C0E434(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242C0E434(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE8F8, &qword_242C1F570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_242C0E554(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69626163 && a2 == 0xE500000000000000;
  if (v4 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E776F44706F74 && a2 == 0xEF726F697265746ELL || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000242C21480 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x456E776F44706F74 && a2 == 0xEF726F6972657478 || (sub_242C1A740() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7374616573 && a2 == 0xE500000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73657275736F6C63 && a2 == 0xE800000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6172426F69647561 && a2 == 0xEE006F676F4C646ELL || (sub_242C1A740() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C656C6369686576 && a2 == 0xEB000000006F676FLL || (sub_242C1A740() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4C656C6369686576 && a2 == 0xEE007374756F7961 || (sub_242C1A740() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242C214A0 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242C214C0 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242C214E0 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242C21500 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242C21520 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_242C1A740();

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

uint64_t CAUAssetLibrary.customImageArchiveImagesFilePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_customImageArchiveImagesFilePath;
  v4 = sub_242C1A380();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_242C0EAB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_customImageArchiveManifest;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_242C0EB1C@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_customImageArchiveManifest;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void *sub_242C0EB74(int a1, uint64_t a2, void *a3)
{
  v141 = a1;
  v6 = sub_242C1A300();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_242C1A380();
  v158 = *(v147 - 8);
  v11 = *(v158 + 64);
  v12 = MEMORY[0x28223BE20](v147);
  v140 = v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v139 = v132 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v142 = v132 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v132 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v132 - v21;
  v145 = OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_customImageArchiveManifest;
  v146 = v3;
  *(v3 + OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_customImageArchiveManifest) = 0;
  v144 = a3;
  v23 = [a3 url];
  sub_242C1A340();

  if ((sub_242C1A350() & 1) == 0)
  {

    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v27 = sub_242C1A3D0();
    __swift_project_value_buffer(v27, qword_2815054C8);
    v28 = sub_242C1A3B0();
    v29 = sub_242C1A530();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_242BF1000, v28, v29, "Access to security scoped resource. failed.", v30, 2u);
      MEMORY[0x245D23AC0](v30, -1, -1);
    }

    sub_242C09D14();
    swift_allocError();
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = 0;
    *(v31 + 24) = 5;
    swift_willThrow();

    (*(v158 + 8))(v22, v147);
    goto LABEL_25;
  }

  v138 = a2;
  strcpy(v157, "manifest.json");
  HIWORD(v157[0]) = -4864;
  (*(v7 + 104))(v10, *MEMORY[0x277CC91D0], v6);
  sub_242C116FC();
  sub_242C1A370();
  (*(v7 + 8))(v10, v6);
  v24 = v143;
  v25 = sub_242C1A320();
  v26 = v24;
  if (v24)
  {

LABEL_20:
    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v62 = sub_242C1A3D0();
    __swift_project_value_buffer(v62, qword_2815054C8);
    v63 = v26;
    v64 = sub_242C1A3B0();
    v65 = sub_242C1A530();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      v68 = v26;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 4) = v69;
      *v67 = v69;
      _os_log_impl(&dword_242BF1000, v64, v65, "Failed to loading asset library - %@", v66, 0xCu);
      sub_242C11128(v67);
      MEMORY[0x245D23AC0](v67, -1, -1);
      MEMORY[0x245D23AC0](v66, -1, -1);
    }

    sub_242C1A330();
    sub_242C09D14();
    swift_allocError();
    *(v70 + 8) = 0;
    *(v70 + 16) = 0;
    *v70 = 1;
    *(v70 + 24) = 5;
    swift_willThrow();

    v71 = *(v158 + 8);
    v72 = v20;
    v73 = v147;
    v71(v72, v147);
    v71(v22, v73);
LABEL_25:
    v74 = v146;
    v75 = *(v146 + v145);

    type metadata accessor for CAUAssetLibrary();
    v76 = *((*MEMORY[0x277D85000] & *v74) + 0x30);
    v77 = *((*MEMORY[0x277D85000] & *v74) + 0x34);
    swift_deallocPartialClassInstance();
    return v74;
  }

  if ((v25 & 1) == 0)
  {

    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v57 = sub_242C1A3D0();
    __swift_project_value_buffer(v57, qword_2815054C8);
    v58 = sub_242C1A3B0();
    v59 = sub_242C1A530();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_242BF1000, v58, v59, "Manifest URL is not reachable.", v60, 2u);
      MEMORY[0x245D23AC0](v60, -1, -1);
    }

    sub_242C1A330();
    sub_242C09D14();
    v26 = swift_allocError();
    *(v61 + 8) = 0;
    *(v61 + 16) = 0;
    *v61 = 1;
    *(v61 + 24) = 5;
    swift_willThrow();
    goto LABEL_20;
  }

  if (qword_2815054C0 != -1)
  {
    swift_once();
  }

  v32 = sub_242C1A3D0();
  v33 = __swift_project_value_buffer(v32, qword_2815054C8);
  v34 = v144;
  v35 = sub_242C1A3B0();
  v36 = sub_242C1A530();

  v37 = os_log_type_enabled(v35, v36);
  v144 = v34;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v136 = v38;
    v137 = swift_slowAlloc();
    *&v157[0] = v137;
    *v38 = 136315138;
    v39 = [v34 url];
    LODWORD(v135) = v36;
    v40 = v39;
    v143 = v22;
    v41 = v142;
    sub_242C1A340();

    sub_242C117F8();
    v42 = v33;
    v43 = v20;
    v44 = v147;
    v45 = sub_242C1A730();
    v47 = v46;
    v48 = v41;
    v22 = v143;
    v49 = v44;
    v20 = v43;
    v33 = v42;
    (*(v158 + 8))(v48, v49);
    v50 = sub_242C10B80(v45, v47, v157);

    v51 = v136;
    *(v136 + 1) = v50;
    v52 = v51;
    _os_log_impl(&dword_242BF1000, v35, v135, "Loading asset library from: %s", v51, 0xCu);
    v53 = v137;
    __swift_destroy_boxed_opaque_existential_1(v137);
    MEMORY[0x245D23AC0](v53, -1, -1);
    MEMORY[0x245D23AC0](v52, -1, -1);
  }

  v54 = sub_242C1A2A0();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  sub_242C1A290();
  v79 = sub_242C1A390();
  v81 = v80;
  v137 = v54;
  sub_242C11750();
  sub_242C1A280();
  v136 = v20;
  sub_242C083E4(v79, v81);

  v82 = v146;
  v83 = (v146 + OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_manifest);
  v84 = v157[5];
  v83[4] = v157[4];
  v83[5] = v84;
  v83[6] = v157[6];
  v85 = v157[1];
  *v83 = v157[0];
  v83[1] = v85;
  v86 = v157[3];
  v83[2] = v157[2];
  v83[3] = v86;
  v134 = v83;
  v87 = v144;
  *&v82[OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_securityScopedBasePathURL] = v144;
  v88 = *(v158 + 16);
  v135 = v158 + 16;
  v133 = v88;
  v88(&v82[OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_basePathURL], v22, v147);
  v144 = v87;
  v132[1] = v33;
  v89 = sub_242C1A3B0();
  v90 = sub_242C1A530();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_242BF1000, v89, v90, "manifest loaded", v91, 2u);
    MEMORY[0x245D23AC0](v91, -1, -1);
  }

  v143 = v22;

  v92 = [v144 url];
  v93 = v139;
  sub_242C1A340();

  v94 = v142;
  sub_242C1A310();
  v95 = v158;
  v97 = v158 + 8;
  v96 = *(v158 + 8);
  v98 = v147;
  v96(v93, v147);
  v99 = OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_customImageArchiveImagesFilePath;
  v100 = *(v95 + 32);
  v101 = v146;
  v158 = v95 + 32;
  v139 = v100;
  (v100)(v146 + OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_customImageArchiveImagesFilePath, v94, v98);
  v133(v94, &v101[v99], v98);
  v102 = v140;
  sub_242C1A310();
  v135 = v97;
  v133 = v96;
  v96(v94, v98);
  v103 = [objc_opt_self() defaultManager];
  sub_242C1A360();
  v104 = sub_242C1A490();

  LODWORD(v99) = [v103 fileExistsAtPath_];

  if (v99)
  {
    v105 = *(v137 + 12);
    v106 = *(v137 + 26);
    swift_allocObject();
    sub_242C1A290();
    v107 = sub_242C1A390();
    v109 = v108;
    sub_242C117A4();
    sub_242C1A280();
    sub_242C083E4(v107, v109);

    v131 = v150;
  }

  else
  {
    v131 = 0;
  }

  v111 = v145;
  v110 = v146;
  swift_beginAccess();
  v112 = *&v110[v111];
  *&v110[v111] = v131;

  v113 = v134[5];
  v154 = v134[4];
  v155 = v113;
  v156 = v134[6];
  v114 = v134[1];
  v150 = *v134;
  v151 = v114;
  v115 = v134[3];
  v152 = v134[2];
  v153 = v115;
  sub_242C0E04C(&v150, &v149);
  v116 = v144;
  v117 = [v144 url];
  v118 = v142;
  sub_242C1A340();

  v119 = v102;
  v120 = v147;
  v121 = v133;
  (v133)(v119, v147);
  (v121)(v136, v120);
  (v121)(v143, v120);
  v122 = type metadata accessor for CAUAssetsResolver();
  v123 = *(v122 + 48);
  v124 = *(v122 + 52);
  v125 = swift_allocObject();
  v126 = (v125 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
  v127 = v155;
  v126[4] = v154;
  v126[5] = v127;
  v126[6] = v156;
  v128 = v151;
  *v126 = v150;
  v126[1] = v128;
  v129 = v153;
  v126[2] = v152;
  v126[3] = v129;
  (v139)(v125 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_basePathURL, v118, v120);
  *(v125 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_variants) = v138;
  *(v125 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_rhd) = v141 & 1;
  *&v110[OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_assetResolver] = v125;
  v130 = type metadata accessor for CAUAssetLibrary();
  v148.receiver = v110;
  v148.super_class = v130;
  v74 = objc_msgSendSuper2(&v148, sel_init);

  return v74;
}

id CAUAssetLibrary.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_242C1A380();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_basePathURL, v2);
  sub_242C1A330();
  (*(v3 + 8))(v6, v2);
  v7 = type metadata accessor for CAUAssetLibrary();
  v9.receiver = v1;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t type metadata accessor for CAUAssetLibrary()
{
  result = qword_27ECDE920;
  if (!qword_27ECDE920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C0FF70(__int16 *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_assetResolver);
  v4 = *a1;
  return sub_242C1869C(&v4);
}

uint64_t sub_242C0FFA8@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_assetResolver);
  v5 = *a1;
  return sub_242C182B8(&v5, a2);
}

uint64_t sub_242C0FFE0(unsigned __int16 *a1)
{
  v4 = sub_242C1A380();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(v1 + OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_assetResolver);
  v14 = v9;
  result = sub_242C182B8(&v14, v8);
  if (!v2)
  {
    v13 = v9;
    sub_242C1869C(&v13);
    sub_242C1A310();

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_242C1010C(__int16 a1)
{
  v4 = sub_242C1A380();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_assetResolver);
  LOWORD(v22) = a1;
  result = sub_242C182B8(&v22, v9);
  if (!v2)
  {
    LOWORD(v22) = a1;
    sub_242C1869C(&v22);
    sub_242C1A310();

    v21 = *(v5 + 8);
    v21(v9, v4);
    v14 = sub_242C1A2A0();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_242C1A290();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE958, &qword_242C1F5E8);
    v17 = sub_242C1A390();
    v19 = v18;
    sub_242C11868();
    sub_242C1A280();
    sub_242C083E4(v17, v19);

    v21(v11, v4);
    return v22;
  }

  return result;
}

uint64_t sub_242C10580@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a2;
  v7 = sub_242C1A380();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v25 - v13;
  v15 = *a1;
  v16 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_assetResolver);
  LOWORD(v30) = v15;
  result = sub_242C182B8(&v30, v12);
  if (!v4)
  {
    v26 = a3;
    v27 = v14;
    v28 = v7;
    LOWORD(v30) = v15;
    sub_242C1869C(&v30);
    v25[1] = v15;
    v18 = v27;
    sub_242C1A310();

    v19 = *(v8 + 8);
    v20 = v12;
    v21 = v28;
    v19(v20, v28);
    v22 = sub_242C1A2A0();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_242C1A290();
    sub_242C1A204();
    v29 = 0;
    v19(v18, v21);
  }

  return result;
}

unint64_t sub_242C109C4@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = sub_242C1010C(32779);
  if (!v6)
  {
    goto LABEL_8;
  }

  if (!*(v6 + 16) || (v7 = v6, v8 = sub_242BF9E18(v4), (v9 & 1) == 0) || (v10 = *(*(v7 + 56) + 8 * v8), , , !*(v10 + 16)) || (v11 = sub_242BF9F00(v5), (v12 & 1) == 0))
  {

LABEL_8:
    result = sub_242C1137C(MEMORY[0x277D84F90]);
    *a3 = 1;
    *(a3 + 12) = 0;
    *(a3 + 4) = 0;
    *(a3 + 20) = 1;
    goto LABEL_9;
  }

  v13 = *(v10 + 56) + 32 * v11;
  v14 = *v13;
  v15 = *(v13 + 4);
  v16 = *(v13 + 12);
  v17 = *(v13 + 20);
  v18 = *(v13 + 24);

  result = v18;
  *a3 = v14;
  *(a3 + 4) = v15;
  *(a3 + 12) = v16;
  *(a3 + 20) = v17;
LABEL_9:
  *(a3 + 24) = result;
  return result;
}

id CAUAssetLibrary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_242C10B80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_242C10C4C(v11, 0, 0, 1, a1, a2);
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
    sub_242C11B00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_242C10C4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_242C10D58(a5, a6);
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
    result = sub_242C1A5F0();
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

uint64_t sub_242C10D58(uint64_t a1, unint64_t a2)
{
  v4 = sub_242C10DA4(a1, a2);
  sub_242C10ED4(&unk_28556FEA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_242C10DA4(uint64_t a1, unint64_t a2)
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

  v6 = sub_242C10FC0(v5, 0);
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

  result = sub_242C1A5F0();
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
        v10 = sub_242C1A4D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_242C10FC0(v10, 0);
        result = sub_242C1A5B0();
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

uint64_t sub_242C10ED4(uint64_t result)
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

  result = sub_242C11034(result, v12, 1, v3);
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

void *sub_242C10FC0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE9A0, &qword_242C1F5F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_242C11034(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE9A0, &qword_242C1F5F8);
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

uint64_t sub_242C11128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE0D8, &qword_242C1C888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242C11190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF30, &qword_242C1C200);
    v3 = sub_242C1A640();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_242BFA00C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242C11284(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF28, &qword_242C1C1F8);
    v3 = sub_242C1A640();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_242BFA038(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242C1137C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE950, &qword_242C1F5E0);
    v3 = sub_242C1A640();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_242C11850(v6, v7, *i);
      result = sub_242BF9FA0(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = v3[7] + 24 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 16) = v8;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_242C11498()
{
  result = sub_242C1A380();
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

unint64_t sub_242C116FC()
{
  result = qword_27ECDE930;
  if (!qword_27ECDE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE930);
  }

  return result;
}

unint64_t sub_242C11750()
{
  result = qword_27ECDE938;
  if (!qword_27ECDE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE938);
  }

  return result;
}

unint64_t sub_242C117A4()
{
  result = qword_27ECDE940;
  if (!qword_27ECDE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE940);
  }

  return result;
}

unint64_t sub_242C117F8()
{
  result = qword_27ECDE948;
  if (!qword_27ECDE948)
  {
    sub_242C1A380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE948);
  }

  return result;
}

uint64_t sub_242C11850(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_242C11868()
{
  result = qword_27ECDE960;
  if (!qword_27ECDE960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE958, &qword_242C1F5E8);
    sub_242C118EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE960);
  }

  return result;
}

unint64_t sub_242C118EC()
{
  result = qword_27ECDE968;
  if (!qword_27ECDE968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE970, &qword_242C1F5F0);
    sub_242C11978();
    sub_242C119CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE968);
  }

  return result;
}

unint64_t sub_242C11978()
{
  result = qword_27ECDE978;
  if (!qword_27ECDE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE978);
  }

  return result;
}

unint64_t sub_242C119CC()
{
  result = qword_27ECDE980;
  if (!qword_27ECDE980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE988, &qword_242C1F630);
    sub_242C11A58();
    sub_242C11AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE980);
  }

  return result;
}

unint64_t sub_242C11A58()
{
  result = qword_27ECDE990;
  if (!qword_27ECDE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE990);
  }

  return result;
}

unint64_t sub_242C11AAC()
{
  result = qword_27ECDE998;
  if (!qword_27ECDE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE998);
  }

  return result;
}

uint64_t sub_242C11B00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_242C11B5C()
{
  sub_242C1A4B0();
}

CarAssetUtils::CAUAppUIConfiguration::LayoutStyle_optional __swiftcall CAUAppUIConfiguration.LayoutStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CAUAppUIConfiguration.LayoutStyle.rawValue.getter()
{
  v1 = 0x7469617274726F70;
  if (*v0 != 1)
  {
    v1 = 0x70616373646E616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_242C11D7C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x7469617274726F70;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0x70616373646E616CLL;
  if (v3 == 1)
  {
    v5 = 0x7469617274726F70;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x8000000242C20D30;
  }

  v8 = 0xE800000000000000;
  if (*a2 != 1)
  {
    v2 = 0x70616373646E616CLL;
    v8 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x8000000242C20D30;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242C1A740();
  }

  return v11 & 1;
}

uint64_t sub_242C11E80()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C11F2C()
{
  *v0;
  *v0;
  sub_242C1A4B0();
}

uint64_t sub_242C11FC4()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

void sub_242C12078(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x7469617274726F70;
  if (v2 != 1)
  {
    v4 = 0x70616373646E616CLL;
    v3 = 0xE900000000000065;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x8000000242C20D30;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_242C12190(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C16844();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C121E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C16844();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

CarAssetUtils::CAUAppUIConfiguration::App_optional __swiftcall CAUAppUIConfiguration.App.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CAUAppUIConfiguration.App.rawValue.getter()
{
  v1 = 0x656772616863;
  v2 = 0x7365725065726974;
  if (*v0 != 2)
  {
    v2 = 1885958772;
  }

  if (*v0)
  {
    v1 = 0x73657275736F6C63;
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

uint64_t sub_242C12340()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C12400()
{
  *v0;
  *v0;
  *v0;
  sub_242C1A4B0();
}

uint64_t sub_242C124AC()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

void sub_242C12574(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656772616863;
  v4 = 0xEC00000065727573;
  v5 = 0x7365725065726974;
  if (*v1 != 2)
  {
    v5 = 1885958772;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x73657275736F6C63;
    v2 = 0xE800000000000000;
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

uint64_t sub_242C126A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C167F0();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C126F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C167F0();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

uint64_t CAUAppUIConfiguration.Mode.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7265766F706F70;
  }

  else
  {
    result = 6382436;
  }

  *v0;
  return result;
}

uint64_t sub_242C127B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7265766F706F70;
  }

  else
  {
    v4 = 6382436;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x7265766F706F70;
  }

  else
  {
    v6 = 6382436;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_242C1A740();
  }

  return v9 & 1;
}

uint64_t sub_242C12850()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C128CC()
{
  *v0;
  sub_242C1A4B0();
}

uint64_t sub_242C12934()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

void sub_242C129B8(uint64_t *a1@<X8>)
{
  v2 = 6382436;
  if (*v1)
  {
    v2 = 0x7265766F706F70;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_242C12AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C1679C();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C12AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C1679C();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

uint64_t sub_242C12B7C@<X0>(char *a1@<X8>)
{
  v2 = sub_242C1A650();

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

uint64_t CAUAppUIConfiguration.FontStyle.rawValue.getter()
{
  if (*v0)
  {
    result = 0x65746F6E746F6F66;
  }

  else
  {
    result = 2036625250;
  }

  *v0;
  return result;
}

uint64_t sub_242C12C10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65746F6E746F6F66;
  }

  else
  {
    v4 = 2036625250;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x65746F6E746F6F66;
  }

  else
  {
    v6 = 2036625250;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
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
    v9 = sub_242C1A740();
  }

  return v9 & 1;
}

uint64_t sub_242C12CB0()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C12D2C()
{
  *v0;
  sub_242C1A4B0();
}

uint64_t sub_242C12D94()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C12E18@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_242C1A650();

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

void sub_242C12E74(uint64_t *a1@<X8>)
{
  v2 = 2036625250;
  if (*v1)
  {
    v2 = 0x65746F6E746F6F66;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_242C12F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C16748();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C12FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C16748();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

CarAssetUtils::CAUAppUIConfiguration::FontWeight_optional __swiftcall CAUAppUIConfiguration.FontWeight.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CAUAppUIConfiguration.FontWeight.rawValue.getter()
{
  v1 = 1684828002;
  if (*v0 != 1)
  {
    v1 = 0x646C6F62696D6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_242C130DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1684828002;
  if (v2 != 1)
  {
    v4 = 0x646C6F62696D6573;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x72616C75676572;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684828002;
  if (*a2 != 1)
  {
    v8 = 0x646C6F62696D6573;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x72616C75676572;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242C1A740();
  }

  return v11 & 1;
}

uint64_t sub_242C131D0()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C1326C()
{
  *v0;
  *v0;
  sub_242C1A4B0();
}

uint64_t sub_242C132F4()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

void sub_242C13398(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684828002;
  if (v2 != 1)
  {
    v5 = 0x646C6F62696D6573;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_242C134A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C166F4();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C134F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C166F4();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

CarAssetUtils::CAUAppUIConfiguration::Element_optional __swiftcall CAUAppUIConfiguration.Element.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CAUAppUIConfiguration.Element.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000014;
    if (v1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (v1 == 7)
    {
      v6 = 0xD00000000000001DLL;
    }

    if (v1 == 5)
    {
      v7 = 0xD00000000000001CLL;
    }

    else
    {
      v7 = 0xD00000000000001ELL;
    }

    if (*v0 <= 6u)
    {
      result = v7;
    }

    else
    {
      result = v6;
    }

    *v0;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
    v3 = 0xD000000000000025;
    if (v1 != 3)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (v1 != 2)
    {
      v2 = v3;
    }

    if (*v0)
    {
      v4 = 0xD000000000000024;
    }

    else
    {
      v4 = 0xD00000000000001ELL;
    }

    *v0;
    if (*v0 <= 1u)
    {
      result = v4;
    }

    else
    {
      result = v2;
    }

    *v0;
  }

  return result;
}

uint64_t sub_242C136EC()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C11B5C();
  return sub_242C1A850();
}

uint64_t sub_242C1373C()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C11B5C();
  return sub_242C1A850();
}

unint64_t sub_242C1378C@<X0>(unint64_t *a1@<X8>)
{
  result = CAUAppUIConfiguration.Element.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_242C13864(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C166A0();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C138B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C166A0();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

uint64_t CAUAppUIConfiguration.ElementData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C1A870();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_242C13CB8();
    sub_242C1A780();
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v7;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242C13CB8()
{
  result = qword_27ECDE9A8;
  if (!qword_27ECDE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9A8);
  }

  return result;
}

unint64_t sub_242C13D0C()
{
  result = qword_27ECDE9B0;
  if (!qword_27ECDE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9B0);
  }

  return result;
}

unint64_t sub_242C13D60()
{
  result = qword_27ECDE9B8;
  if (!qword_27ECDE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9B8);
  }

  return result;
}

uint64_t CAUAppUIConfiguration.ElementData.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C1A890();
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
      type metadata accessor for CGSize();
      sub_242C14040(&qword_27ECDE9D8);
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
      if (v4 == 4)
      {
        sub_242C13FEC();
      }

      else
      {
        sub_242C13F98();
      }
    }

    goto LABEL_12;
  }

  if (!v4)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_242C14084();
LABEL_12:
    sub_242C1A7B0();
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  if (v4 == 1)
  {
    sub_242C1A790();
  }

  else
  {
    sub_242C1A7A0();
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

unint64_t sub_242C13F98()
{
  result = qword_27ECDE9C8;
  if (!qword_27ECDE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9C8);
  }

  return result;
}

unint64_t sub_242C13FEC()
{
  result = qword_27ECDE9D0;
  if (!qword_27ECDE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9D0);
  }

  return result;
}

uint64_t sub_242C14040(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C14084()
{
  result = qword_27ECDE9E0;
  if (!qword_27ECDE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9E0);
  }

  return result;
}

uint64_t CAUAppUIConfiguration.ElementData.cgFloatValue.getter()
{
  if (v0[16])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t CAUAppUIConfiguration.ElementData.stringValue.getter()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v3 = v0;
  v2 = *v0;
  v1 = v3[1];

  return v2;
}

uint64_t CAUAppUIConfiguration.ElementData.BOOLValue.getter()
{
  if (v0[16] == 2)
  {
    return *v0 & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t CAUAppUIConfiguration.ElementData.cgSize.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 3)
  {
    result = *v0;
  }

  else
  {
    result = 0;
  }

  if (v1 == 3)
  {
    v3 = v0[1];
  }

  return result;
}

void CAUAppUIConfiguration.ElementData.fontStyle.getter(_BYTE *a1@<X8>)
{
  if (v1[16] == 4)
  {
    *a1 = *v1 & 1;
  }

  else
  {
    *a1 = 2;
  }
}

void CAUAppUIConfiguration.ElementData.fontWeight.getter(_BYTE *a1@<X8>)
{
  if (v1[16] == 5)
  {
    *a1 = *v1;
  }

  else
  {
    *a1 = 3;
  }
}

__n128 CAUAppUIConfiguration.Configuration.padding.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 20);
  result = *(v1 + 4);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_242C14220(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = *(*(v3 + 56) + 8 * v12);
    v15 = v14 == 0;

    if (!v14)
    {
      return v15;
    }

    v16 = sub_242BF9E18(v13);
    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v18 = *(*(a2 + 56) + 8 * v16);

    v20 = sub_242C14378(v19, v14);

    if ((v20 & 1) == 0)
    {
      return v15;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C14378(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v33 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v38 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = *(*(result + 48) + v12);
    v14 = (*(result + 56) + 32 * v12);
    v15 = *v14;
    v37 = *(v14 + 4);
    v16 = *(v14 + 12);
    v17 = v14[20];
    v18 = *(v14 + 3);
    v19 = v18 == 0;

    if (!v18)
    {
      return v19;
    }

    v20 = sub_242BF9F00(v13);
    if ((v21 & 1) == 0)
    {
      goto LABEL_44;
    }

    v22 = *(v2 + 56) + 32 * v20;
    v35 = v16;
    if (*v22)
    {
      if (*v22 == 1)
      {
        v23 = 0xE800000000000000;
        v24 = 0x7469617274726F70;
        if (!v15)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v24 = 0x70616373646E616CLL;
        v23 = 0xE900000000000065;
        if (!v15)
        {
LABEL_25:
          v25 = 0xD000000000000012;
          v26 = 0x8000000242C20D30;
          goto LABEL_26;
        }
      }
    }

    else
    {
      v24 = 0xD000000000000012;
      v23 = 0x8000000242C20D30;
      if (!v15)
      {
        goto LABEL_25;
      }
    }

    if (v15 == 1)
    {
      v25 = 0x7469617274726F70;
    }

    else
    {
      v25 = 0x70616373646E616CLL;
    }

    if (v15 == 1)
    {
      v26 = 0xE800000000000000;
    }

    else
    {
      v26 = 0xE900000000000065;
    }

LABEL_26:
    v27 = v2;
    v36 = *(v22 + 4);
    v34 = *(v22 + 12);
    v28 = *(v22 + 20);
    v39 = *(v22 + 24);
    if (v24 == v25 && v23 == v26)
    {
    }

    else
    {
      v29 = sub_242C1A740();

      if ((v29 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    if (v28)
    {
      v2 = v27;
      v19 = v18 == 0;
      if ((v17 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v19 = v18 == 0;
      if ((v17 & 1) != 0 || *&v36 != *&v37 || (*(&v31 + 1) = v35, *&v31 = v37, v30 = v31 >> 32, *(&v36 + 1) != *(&v37 + 1)) || *&v34 != *(&v30 + 1) || (v2 = v27, *(&v34 + 1) != *(&v35 + 1)))
      {
LABEL_43:

LABEL_44:

        return 0;
      }
    }

    v32 = sub_242C146C4(v39, v18);

    result = v33;
    v7 = v38;
    if ((v32 & 1) == 0)
    {
      return v19;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C146C4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = *(v3 + 56) + 24 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    sub_242C11850(*v14, v16, *(v14 + 16));
    if (v17 == 255)
    {
      return 1;
    }

    v26 = v15;
    v27 = v16;
    v28 = v17;
    v18 = sub_242BF9FA0(v13);
    if ((v19 & 1) == 0)
    {
      sub_242C16898(v15, v16, v17);
      return 0;
    }

    v20 = *(a2 + 56) + 24 * v18;
    v21 = *(v20 + 8);
    v23 = *v20;
    v24 = v21;
    v25 = *(v20 + 16);
    sub_242C11850(v23, v21, v25);
    v22 = _s13CarAssetUtils21CAUAppUIConfigurationV11ElementDataO2eeoiySbAE_AEtFZ_0(&v23, &v26);
    sub_242C16898(v23, v24, v25);
    result = sub_242C16898(v26, v27, v28);
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C1485C()
{
  v1 = 0x676E6964646170;
  if (*v0 != 1)
  {
    v1 = 0x44746E656D656C65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x745374756F79616CLL;
  }
}

uint64_t sub_242C148C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C16580(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C148F0(uint64_t a1)
{
  v2 = sub_242C15870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C1492C(uint64_t a1)
{
  v2 = sub_242C15870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUAppUIConfiguration.Configuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE9E8, &qword_242C1F608);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 4);
  v15 = *(v1 + 12);
  v16 = v10;
  v20 = v1[20];
  v14 = *(v1 + 3);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C15870();
  sub_242C1A8A0();
  LOBYTE(v17) = v9;
  v21 = 0;
  sub_242C158C4();
  sub_242C1A710();
  if (!v2)
  {
    v12 = v14;
    v17 = v16;
    v18 = v15;
    v19 = v20;
    v21 = 1;
    sub_242BF7FF8();
    sub_242C1A6D0();
    v17 = v12;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEA00, &qword_242C1F610);
    sub_242C15918();
    sub_242C1A710();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CAUAppUIConfiguration.Configuration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEA20, &qword_242C1F618);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C15870();
  sub_242C1A880();
  if (!v2)
  {
    v21 = 0;
    sub_242C15A4C();
    sub_242C1A6B0();
    v11 = v17;
    v21 = 1;
    sub_242BF883C();
    sub_242C1A670();
    v13 = v17;
    v16 = v18;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEA00, &qword_242C1F610);
    v21 = 2;
    sub_242C15AA0();
    sub_242C1A6B0();
    (*(v6 + 8))(v9, v5);
    v15 = v16;
    v14 = v17;
    *a2 = v11;
    *(a2 + 4) = v13;
    *(a2 + 12) = v15;
    *(a2 + 20) = v20;
    *(a2 + 24) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_242C14E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xEE00736E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242C1A740();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242C14EBC(uint64_t a1)
{
  v2 = sub_242C15BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C14EF8(uint64_t a1)
{
  v2 = sub_242C15BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUAppUIConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEA48, &unk_242C1F620);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C15BD4();

  sub_242C1A8A0();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE970, &qword_242C1F5F0);
  sub_242C15C28();
  sub_242C1A710();

  return (*(v4 + 8))(v7, v3);
}

uint64_t CAUAppUIConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEA80, &qword_242C1F638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C15BD4();
  sub_242C1A880();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE970, &qword_242C1F5F0);
    sub_242C118EC();
    sub_242C1A6B0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s13CarAssetUtils21CAUAppUIConfigurationV11ElementDataO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        v19 = *(a1 + 8);
        v20 = *a2;
        v21 = *(a2 + 8);
        sub_242C16898(*a1, v3, 3);
        sub_242C16898(v5, v6, 3);
        v8 = *&v3 == *&v6 && *&v2 == *&v5;
        return v8 & 1;
      }

      goto LABEL_55;
    }

    if (v4 == 4)
    {
      if (v7 != 4)
      {
        goto LABEL_55;
      }

      if (v2)
      {
        v9 = 0x65746F6E746F6F66;
      }

      else
      {
        v9 = 2036625250;
      }

      if (v2)
      {
        v10 = 0xE800000000000000;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      if (v5)
      {
        v11 = 0x65746F6E746F6F66;
      }

      else
      {
        v11 = 2036625250;
      }

      if (v5)
      {
        v12 = 0xE800000000000000;
      }

      else
      {
        v12 = 0xE400000000000000;
      }

      if (v9 != v11 || v10 != v12)
      {
        v14 = sub_242C1A740();

        sub_242C16898(v2, v3, 4);
        v15 = v5;
        v16 = v6;
        v17 = 4;
LABEL_66:
        sub_242C16898(v15, v16, v17);
        return v14 & 1;
      }

      sub_242C16898(v2, v3, 4);
      v32 = v5;
      v33 = v6;
      v34 = 4;
LABEL_64:
      sub_242C16898(v32, v33, v34);
      v8 = 1;
      return v8 & 1;
    }

    if (v7 != 5)
    {
      goto LABEL_55;
    }

    v22 = *a1;
    if (*a1)
    {
      if (v22 == 1)
      {
        v23 = 1684828002;
      }

      else
      {
        v23 = 0x646C6F62696D6573;
      }

      if (v22 == 1)
      {
        v24 = 0xE400000000000000;
      }

      else
      {
        v24 = 0xE800000000000000;
      }

      v25 = *a2;
      if (*a2)
      {
LABEL_46:
        if (v25 == 1)
        {
          v26 = 1684828002;
        }

        else
        {
          v26 = 0x646C6F62696D6573;
        }

        if (v25 == 1)
        {
          v27 = 0xE400000000000000;
        }

        else
        {
          v27 = 0xE800000000000000;
        }

        if (v23 != v26)
        {
          goto LABEL_65;
        }

LABEL_62:
        if (v24 == v27)
        {

          sub_242C16898(v2, v3, 5);
          v32 = v5;
          v33 = v6;
          v34 = 5;
          goto LABEL_64;
        }

LABEL_65:
        v14 = sub_242C1A740();

        sub_242C16898(v2, v3, 5);
        v15 = v5;
        v16 = v6;
        v17 = 5;
        goto LABEL_66;
      }
    }

    else
    {
      v24 = 0xE700000000000000;
      v23 = 0x72616C75676572;
      v25 = *a2;
      if (*a2)
      {
        goto LABEL_46;
      }
    }

    v27 = 0xE700000000000000;
    if (v23 != 0x72616C75676572)
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v18 = *a2;
      sub_242C16898(*a1, v3, 0);
      sub_242C16898(v5, v6, 0);
      if (*&v2 == *&v5)
      {
        v8 = 1;
        return v8 & 1;
      }

LABEL_56:
      v8 = 0;
      return v8 & 1;
    }

LABEL_55:
    sub_242C11850(v5, v6, v7);
    sub_242C16898(v2, v3, v4);
    sub_242C16898(v5, v6, v7);
    goto LABEL_56;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      sub_242C16898(*a1, v3, 2);
      sub_242C16898(v5, v6, 2);
      v8 = v5 ^ v2 ^ 1;
      return v8 & 1;
    }

    goto LABEL_55;
  }

  if (v7 != 1)
  {
    v28 = *(a1 + 8);

    goto LABEL_55;
  }

  if (v2 == v5 && v3 == v6)
  {
    v8 = 1;
    sub_242C11850(*a1, v3, 1);
    sub_242C11850(v2, v3, 1);
    sub_242C16898(v2, v3, 1);
    sub_242C16898(v2, v3, 1);
    return v8 & 1;
  }

  v30 = *a1;
  v31 = sub_242C1A740();
  sub_242C11850(v5, v6, 1);
  sub_242C11850(v2, v3, 1);
  sub_242C16898(v2, v3, 1);
  sub_242C16898(v5, v6, 1);
  return v31 & 1;
}

uint64_t _s13CarAssetUtils21CAUAppUIConfigurationV13ConfigurationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = 0x7469617274726F70;
  v4 = *(a1 + 4);
  v5 = *(a1 + 12);
  v6 = a1[20];
  v7 = *(a1 + 3);
  v9 = *(a2 + 4);
  v8 = *(a2 + 8);
  v11 = *(a2 + 12);
  v10 = *(a2 + 16);
  v12 = *(a2 + 20);
  v13 = *(a2 + 24);
  v14 = 0xE800000000000000;
  v15 = 0x70616373646E616CLL;
  if (v2 == 1)
  {
    v15 = 0x7469617274726F70;
  }

  else
  {
    v14 = 0xE900000000000065;
  }

  if (*a1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0xD000000000000012;
  }

  if (v2)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0x8000000242C20D30;
  }

  v18 = 0xE800000000000000;
  if (*a2 != 1)
  {
    v3 = 0x70616373646E616CLL;
    v18 = 0xE900000000000065;
  }

  if (*a2)
  {
    v19 = v3;
  }

  else
  {
    v19 = 0xD000000000000012;
  }

  if (*a2)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0x8000000242C20D30;
  }

  if (v16 == v19 && v17 == v20)
  {
  }

  else
  {
    v21 = sub_242C1A740();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (v12)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if ((v12 & 1) != 0 || v9 != *&v4 || v8 != *(&v4 + 1) || v11 != *&v5 || v10 != *(&v5 + 1))
  {
    return 0;
  }

LABEL_31:

  return sub_242C146C4(v7, v13);
}

unint64_t sub_242C15870()
{
  result = qword_27ECDE9F0;
  if (!qword_27ECDE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9F0);
  }

  return result;
}

unint64_t sub_242C158C4()
{
  result = qword_27ECDE9F8;
  if (!qword_27ECDE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9F8);
  }

  return result;
}

unint64_t sub_242C15918()
{
  result = qword_27ECDEA08;
  if (!qword_27ECDEA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDEA00, &qword_242C1F610);
    sub_242C159A4();
    sub_242C159F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA08);
  }

  return result;
}

unint64_t sub_242C159A4()
{
  result = qword_27ECDEA10;
  if (!qword_27ECDEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA10);
  }

  return result;
}

unint64_t sub_242C159F8()
{
  result = qword_27ECDEA18;
  if (!qword_27ECDEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA18);
  }

  return result;
}

unint64_t sub_242C15A4C()
{
  result = qword_27ECDEA28;
  if (!qword_27ECDEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA28);
  }

  return result;
}

unint64_t sub_242C15AA0()
{
  result = qword_27ECDEA30;
  if (!qword_27ECDEA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDEA00, &qword_242C1F610);
    sub_242C15B2C();
    sub_242C15B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA30);
  }

  return result;
}

unint64_t sub_242C15B2C()
{
  result = qword_27ECDEA38;
  if (!qword_27ECDEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA38);
  }

  return result;
}

unint64_t sub_242C15B80()
{
  result = qword_27ECDEA40;
  if (!qword_27ECDEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA40);
  }

  return result;
}

unint64_t sub_242C15BD4()
{
  result = qword_27ECDEA50;
  if (!qword_27ECDEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA50);
  }

  return result;
}

unint64_t sub_242C15C28()
{
  result = qword_27ECDEA58;
  if (!qword_27ECDEA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE970, &qword_242C1F5F0);
    sub_242C15CB4();
    sub_242C15D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA58);
  }

  return result;
}

unint64_t sub_242C15CB4()
{
  result = qword_27ECDEA60;
  if (!qword_27ECDEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA60);
  }

  return result;
}

unint64_t sub_242C15D08()
{
  result = qword_27ECDEA68;
  if (!qword_27ECDEA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE988, &qword_242C1F630);
    sub_242C15D94();
    sub_242C15DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA68);
  }

  return result;
}

unint64_t sub_242C15D94()
{
  result = qword_27ECDEA70;
  if (!qword_27ECDEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA70);
  }

  return result;
}

unint64_t sub_242C15DE8()
{
  result = qword_27ECDEA78;
  if (!qword_27ECDEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA78);
  }

  return result;
}

unint64_t sub_242C15E40()
{
  result = qword_27ECDEA88;
  if (!qword_27ECDEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA88);
  }

  return result;
}

unint64_t sub_242C15E98()
{
  result = qword_27ECDEA90;
  if (!qword_27ECDEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA90);
  }

  return result;
}

unint64_t sub_242C15EF0()
{
  result = qword_27ECDEA98;
  if (!qword_27ECDEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA98);
  }

  return result;
}

unint64_t sub_242C15F48()
{
  result = qword_27ECDEAA0;
  if (!qword_27ECDEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAA0);
  }

  return result;
}

unint64_t sub_242C15FA0()
{
  result = qword_27ECDEAA8;
  if (!qword_27ECDEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAA8);
  }

  return result;
}

unint64_t sub_242C15FF8()
{
  result = qword_27ECDEAB0;
  if (!qword_27ECDEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAUAppUIConfiguration.Element(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CAUAppUIConfiguration.Element(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_242C16208(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_242C16250(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_242C162B8(uint64_t a1, int a2)
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

uint64_t sub_242C16300(uint64_t result, int a2, int a3)
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

unint64_t sub_242C16374()
{
  result = qword_27ECDEAB8;
  if (!qword_27ECDEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAB8);
  }

  return result;
}

unint64_t sub_242C163CC()
{
  result = qword_27ECDEAC0;
  if (!qword_27ECDEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAC0);
  }

  return result;
}

unint64_t sub_242C16424()
{
  result = qword_27ECDEAC8;
  if (!qword_27ECDEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAC8);
  }

  return result;
}

unint64_t sub_242C1647C()
{
  result = qword_27ECDEAD0;
  if (!qword_27ECDEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAD0);
  }

  return result;
}

unint64_t sub_242C164D4()
{
  result = qword_27ECDEAD8;
  if (!qword_27ECDEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAD8);
  }

  return result;
}

unint64_t sub_242C1652C()
{
  result = qword_27ECDEAE0;
  if (!qword_27ECDEAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAE0);
  }

  return result;
}

uint64_t sub_242C16580(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745374756F79616CLL && a2 == 0xEB00000000656C79;
  if (v4 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6964646170 && a2 == 0xE700000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44746E656D656C65 && a2 == 0xEB00000000617461)
  {

    return 2;
  }

  else
  {
    v6 = sub_242C1A740();

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

unint64_t sub_242C166A0()
{
  result = qword_27ECDEAE8;
  if (!qword_27ECDEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAE8);
  }

  return result;
}

unint64_t sub_242C166F4()
{
  result = qword_27ECDEAF0;
  if (!qword_27ECDEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAF0);
  }

  return result;
}

unint64_t sub_242C16748()
{
  result = qword_27ECDEAF8;
  if (!qword_27ECDEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAF8);
  }

  return result;
}

unint64_t sub_242C1679C()
{
  result = qword_27ECDEB00;
  if (!qword_27ECDEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB00);
  }

  return result;
}

unint64_t sub_242C167F0()
{
  result = qword_27ECDEB08;
  if (!qword_27ECDEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB08);
  }

  return result;
}

unint64_t sub_242C16844()
{
  result = qword_27ECDEB10;
  if (!qword_27ECDEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB10);
  }

  return result;
}

uint64_t sub_242C16898(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t CAUFeatureConfiguration.Climate.init(groupedVentsLayout:oemPunchThroughs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t CAUFeatureConfiguration.Climate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEB18, &qword_242C20270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C16AE4();
  sub_242C1A880();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_242C1A660();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEB28, &qword_242C20278);
    v15 = 1;
    sub_242C16EFC(&qword_27ECDEB30, sub_242C16B38);
    sub_242C1A670();
    (*(v6 + 8))(v9, v5);
    v12 = v14[1];
    *a2 = v11 & 1;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242C16AE4()
{
  result = qword_27ECDEB20;
  if (!qword_27ECDEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB20);
  }

  return result;
}

unint64_t sub_242C16B38()
{
  result = qword_27ECDEB38;
  if (!qword_27ECDEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB38);
  }

  return result;
}

unint64_t sub_242C16B8C()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_242C16BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000012 && 0x8000000242C21690 == a2;
  if (v5 || (sub_242C1A740() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242C216B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242C1A740();

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

uint64_t sub_242C16CAC(uint64_t a1)
{
  v2 = sub_242C16AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C16CE8(uint64_t a1)
{
  v2 = sub_242C16AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUFeatureConfiguration.Climate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEB40, &qword_242C20280);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C16AE4();
  sub_242C1A8A0();
  v14 = 0;
  sub_242C1A6F0();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEB28, &qword_242C20278);
    sub_242C16EFC(&qword_27ECDEB48, sub_242C16F80);
    sub_242C1A6D0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_242C16EFC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDEB28, &qword_242C20278);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C16F80()
{
  result = qword_27ECDEB50;
  if (!qword_27ECDEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB50);
  }

  return result;
}

uint64_t CAUOEMPunchThroughOptions.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEB58, &qword_242C20288);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C173E4();
  sub_242C1A880();
  if (!v2)
  {
    v18 = 0;
    sub_242BF8974();
    sub_242C1A670();
    v11 = v19;
    v17 = 1;
    v13 = sub_242C1A660();
    v16 = 2;
    v14 = sub_242C1A660();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13 & 1;
    a2[2] = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242C173E4()
{
  result = qword_27ECDEB60;
  if (!qword_27ECDEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB60);
  }

  return result;
}

unint64_t sub_242C17438()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_242C17490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C17B4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C174B8(uint64_t a1)
{
  v2 = sub_242C173E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C174F4(uint64_t a1)
{
  v2 = sub_242C173E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUOEMPunchThroughOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEB68, &qword_242C20290);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[6] = v1[1];
  v12[3] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C173E4();
  sub_242C1A8A0();
  v16 = v9;
  v15 = 0;
  sub_242BF80A0();
  sub_242C1A6D0();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = 1;
  sub_242C1A6F0();
  v13 = 2;
  sub_242C1A6F0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_242C17730(uint64_t a1, unsigned int a2)
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

uint64_t sub_242C1778C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CAUOEMPunchThroughOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}