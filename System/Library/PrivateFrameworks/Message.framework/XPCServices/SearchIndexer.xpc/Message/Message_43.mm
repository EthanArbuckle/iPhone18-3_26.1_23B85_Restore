uint64_t sub_1002B7000(uint64_t result, int a2, int a3)
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

uint64_t sub_1002B7060(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002B70B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t Environment.init(power:appState:isLocked:thermalState:availableFileSystemSpace:unreconciledMessageCount:)(unsigned __int8 a1, char a2, char a3)
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return a1 | ((a2 & 1) << 8) | v3;
}

BOOL sub_1002B71A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *a1;
  if (a1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *a2;
  if (a2[2])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  return sub_1002B7E18(v3 | v4, *(a1 + 1), a1[16], *(a1 + 3), v6 | v7, *(a2 + 1), a2[16], *(a2 + 3));
}

uint64_t Environment.AppState.description.getter(char a1)
{
  if (a1)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x656C6269736976;
  }
}

uint64_t sub_1002B7274()
{
  if (*v0)
  {
    result = 0x756F72676B636162;
  }

  else
  {
    result = 0x656C6269736976;
  }

  *v0;
  return result;
}

IMAP2Persistence::Environment::Power __swiftcall Environment.Power.init(inLowPowerMode:isPluggedIn:batteryPercentage:)(Swift::Bool inLowPowerMode, Swift::Bool isPluggedIn, Swift::Float_optional *batteryPercentage)
{
  if (inLowPowerMode)
  {
    return 0;
  }

  v4 = (batteryPercentage >> 32) & 1;
  if (*&batteryPercentage >= 0.2)
  {
    LODWORD(v4) = 1;
  }

  if (isPluggedIn)
  {
    v5 = IMAP2Persistence_Environment_Power_pluggedIn;
  }

  else
  {
    v5 = IMAP2Persistence_Environment_Power_onBattery;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t Environment.Power.description.getter(char a1)
{
  if (!a1)
  {
    return 0x7265776F50776F6CLL;
  }

  if (a1 == 1)
  {
    return 0x7265747461426E6FLL;
  }

  return 0x4964656767756C70;
}

uint64_t sub_1002B735C()
{
  v1 = 0x7265747461426E6FLL;
  if (*v0 != 1)
  {
    v1 = 0x4964656767756C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265776F50776F6CLL;
  }
}

IMAP2Persistence::Environment::AvailableFileSystemSpace __swiftcall Environment.AvailableFileSystemSpace.init(availableByteCount:bytesForOpportunisticUsage:)(Swift::Int availableByteCount, Swift::Int bytesForOpportunisticUsage)
{
  if (bytesForOpportunisticUsage <= 0x4650FFFFFLL && availableByteCount <= 1888485375)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (bytesForOpportunisticUsage <= 0x9C3FFFFFFLL)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  if (availableByteCount <= 0x270FFFFFFLL)
  {
    v5 = v4;
  }

  else
  {
    v5 = IMAP2Persistence_Environment_AvailableFileSystemSpace_abundant;
  }

  if (availableByteCount <= 105906175 && bytesForOpportunisticUsage < 1049624576)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

unint64_t Environment.AvailableFileSystemSpace.description.getter(unsigned __int8 a1)
{
  v1 = 7827308;
  v2 = 0x746E61646E756261;
  if (a1 == 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (a1)
  {
    v1 = 0xD000000000000022;
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

unint64_t sub_1002B74A0()
{
  v1 = 7827308;
  v2 = 0x746E61646E756261;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000022;
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

uint64_t Environment.description.getter(int a1, uint64_t a2, unsigned __int8 a3)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v5 = 0xE800000000000000;
        v6 = 0x6C61636974697263;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v5 = 0xE700000000000000;
    v6 = 0x73756F69726573;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v5 = 0xE400000000000000;
        v6 = 1919508838;
        goto LABEL_11;
      }

LABEL_8:
      v6 = sub_1004A6CE4();
      v5 = v7;
      goto LABEL_11;
    }

    v5 = 0xE700000000000000;
    v6 = 0x6C616E696D6F6ELL;
  }

LABEL_11:
  sub_1004A6724(52);
  v17._countAndFlagsBits = 0x203A7265776F70;
  v17._object = 0xE700000000000000;
  sub_1004A5994(v17);
  if (a1)
  {
    if (a1 == 1)
    {
      v8._countAndFlagsBits = 0x7265747461426E6FLL;
    }

    else
    {
      v8._countAndFlagsBits = 0x4964656767756C70;
    }

    if (a1 == 1)
    {
      v9 = 0xE900000000000079;
    }

    else
    {
      v9 = 0xE90000000000006ELL;
    }
  }

  else
  {
    v8._countAndFlagsBits = 0x7265776F50776F6CLL;
    v9 = 0xE800000000000000;
  }

  v8._object = v9;
  sub_1004A5994(v8);

  v18._countAndFlagsBits = 8236;
  v18._object = 0xE200000000000000;
  sub_1004A5994(v18);
  if ((a1 & 0x100) != 0)
  {
    v10._countAndFlagsBits = 0x756F72676B636162;
  }

  else
  {
    v10._countAndFlagsBits = 0x656C6269736976;
  }

  if ((a1 & 0x100) != 0)
  {
    v11 = 0xEC0000006465646ELL;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v10._object = v11;
  sub_1004A5994(v10);

  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  sub_1004A5994(v19);
  if ((a1 & 0x10000) != 0)
  {
    v12._countAndFlagsBits = 0x64656B636F6CLL;
  }

  else
  {
    v12._countAndFlagsBits = 0x64656B636F6C6E75;
  }

  if ((a1 & 0x10000) != 0)
  {
    v13 = 0xE600000000000000;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  v12._object = v13;
  sub_1004A5994(v12);

  v20._object = 0x80000001004AE040;
  v20._countAndFlagsBits = 0xD000000000000011;
  sub_1004A5994(v20);
  v21._countAndFlagsBits = v6;
  v21._object = v5;
  sub_1004A5994(v21);

  v22._countAndFlagsBits = 0x73206B736964202CLL;
  v22._object = 0xEE00203A65636170;
  sub_1004A5994(v22);
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v14 = 0x80000001004ADFF0;
      v15._countAndFlagsBits = 0xD00000000000001DLL;
    }

    else
    {
      v14 = 0xE800000000000000;
      v15._countAndFlagsBits = 0x746E61646E756261;
    }
  }

  else if (a3)
  {
    v14 = 0x80000001004AE010;
    v15._countAndFlagsBits = 0xD000000000000022;
  }

  else
  {
    v14 = 0xE300000000000000;
    v15._countAndFlagsBits = 7827308;
  }

  v15._object = v14;
  sub_1004A5994(v15);

  return 0;
}

uint64_t sub_1002B7850()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *v0;
  if (v0[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return Environment.description.getter(v2 | v3, *(v0 + 1), v0[16]);
}

uint64_t Environment.capturedValue.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v9._countAndFlagsBits = 0x7265747461426E6FLL;
    }

    else
    {
      v9._countAndFlagsBits = 0x4964656767756C70;
    }

    if (v8 == 1)
    {
      v10 = 0xE900000000000079;
    }

    else
    {
      v10 = 0xE90000000000006ELL;
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    v9._countAndFlagsBits = 0x7265776F50776F6CLL;
  }

  v9._object = v10;
  sub_1004A5994(v9);

  if ((a1 & 0x100) != 0)
  {
    v11._countAndFlagsBits = 0x756F72676B636162;
  }

  else
  {
    v11._countAndFlagsBits = 0x656C6269736976;
  }

  v12 = 0xE700000000000000;
  if ((a1 & 0x100) != 0)
  {
    v13 = 0xEC0000006465646ELL;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  v11._object = v13;
  sub_1004A5994(v11);

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v12 = 0xE800000000000000;
        result = 0x6C61636974697263;
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    result = 0x73756F69726573;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE400000000000000;
        result = 1919508838;
        goto LABEL_25;
      }

LABEL_22:
      result = sub_1004A6CE4();
      v12 = v15;
      goto LABEL_25;
    }

    result = 0x6C616E696D6F6ELL;
  }

LABEL_25:
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v17 = 0xD00000000000001DLL;
      v16 = 0x80000001004ADFF0;
    }

    else
    {
      v16 = 0xE800000000000000;
      v17 = 0x746E61646E756261;
    }
  }

  else
  {
    v16 = 0xE300000000000000;
    if (a3)
    {
      v17 = 0xD000000000000022;
    }

    else
    {
      v17 = 7827308;
    }

    if (a3)
    {
      v16 = 0x80000001004AE010;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xE000000000000000;
  *(a4 + 32) = BYTE2(a1) & 1;
  *(a4 + 40) = result;
  *(a4 + 48) = v12;
  *(a4 + 56) = v17;
  *(a4 + 64) = v16;
  return result;
}

uint64_t sub_1002B7ADC()
{
  v1 = *v0;
  v2 = 0x7265776F70;
  v3 = 0x64656B636F4C7369;
  v4 = 0x536C616D72656874;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574617453707061;
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

uint64_t sub_1002B7B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002B8214(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002B7BA8(uint64_t a1)
{
  v2 = sub_1002B7E60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002B7BE4(uint64_t a1)
{
  v2 = sub_1002B7E60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Environment.CapturedValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D7030, &qword_1004EF380);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_1002B7E60();
  sub_1004A6FA4();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  sub_1004A6C44();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v21[14] = 1;
  sub_1004A6C44();
  v15 = *(v3 + 32);
  v21[13] = 2;
  sub_1004A6C54();
  v16 = v3[5];
  v17 = v3[6];
  v21[12] = 3;
  sub_1004A6C44();
  v19 = v3[7];
  v20 = v3[8];
  v21[11] = 4;
  sub_1004A6C44();
  return (*(v6 + 8))(v9, v5);
}

BOOL sub_1002B7E18(int a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t a6, char a7, uint64_t a8)
{
  v8 = a5 ^ a1;
  if (a5 != a1)
  {
    return 0;
  }

  v9 = (v8 >> 8) & 1;
  v10 = HIWORD(v8) & 1;
  v13 = a2 == a6 && a3 == a7 && a4 == a8;
  v14 = (v10 & 1) == 0 && v13;
  return (v9 & 1) == 0 && v14;
}

unint64_t sub_1002B7E60()
{
  result = qword_1005D7038;
  if (!qword_1005D7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7038);
  }

  return result;
}

unint64_t sub_1002B7EB8()
{
  result = qword_1005D7040;
  if (!qword_1005D7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7040);
  }

  return result;
}

unint64_t sub_1002B7F10()
{
  result = qword_1005D7048;
  if (!qword_1005D7048)
  {
    sub_10000DEFC(&qword_1005D7050, &qword_1004EF418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7048);
  }

  return result;
}

unint64_t sub_1002B7F78()
{
  result = qword_1005D7058;
  if (!qword_1005D7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7058);
  }

  return result;
}

unint64_t sub_1002B7FD0()
{
  result = qword_1005D7060;
  if (!qword_1005D7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7060);
  }

  return result;
}

uint64_t sub_1002B8024(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002B8068(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1002B8110()
{
  result = qword_1005D7068;
  if (!qword_1005D7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7068);
  }

  return result;
}

unint64_t sub_1002B8168()
{
  result = qword_1005D7070;
  if (!qword_1005D7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7070);
  }

  return result;
}

unint64_t sub_1002B81C0()
{
  result = qword_1005D7078;
  if (!qword_1005D7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7078);
  }

  return result;
}

uint64_t sub_1002B8214(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265776F70 && a2 == 0xE500000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617453707061 && a2 == 0xE800000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B636F4C7369 && a2 == 0xE800000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x536C616D72656874 && a2 == 0xEC00000065746174 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004AE060 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t FlagsChange.flags.getter(uint64_t a1, uint64_t a2)
{
  v2 = &_mh_execute_header;
  if ((a2 & 1) == 0)
  {
    v2 = 0;
  }

  *(&v3 + 1) = a2;
  *&v3 = a1;
  return (v3 >> 32) & 0xFF000001010101 | v2 | (a2 << 32) & 0xFF00010000000000;
}

uint64_t FlagsChange.flags.setter(uint64_t result, uint64_t a2, __int16 a3)
{
  *(v3 + 4) = result;
  *(v3 + 12) = a2;
  *(v3 + 20) = a3;
  return result;
}

uint64_t static FlagsChange.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v22) = HIDWORD(a2);
  *(&v22 + 4) = a3;
  v8 = *(&v22 + 1);
  *v23 = HIDWORD(a6);
  *&v23[4] = a7;
  if (a5 != a1)
  {
    return 0;
  }

  v11 = *&v23[1];
  v12 = (a2 & 1) != 0 ? &_mh_execute_header : 0;
  *(&v13 + 1) = a2;
  *&v13 = a1;
  v14 = (v13 >> 32) & 0x1010101 | v12;
  LOBYTE(v20) = BYTE4(a2) & 1;
  *(&v20 + 1) = v8;
  BYTE9(v20) = BYTE5(a3);
  v15 = v20;
  v16 = WORD4(v20);
  v17 = (a6 & 1) != 0 ? &_mh_execute_header : 0;
  *(&v18 + 1) = a6;
  *&v18 = a5;
  LOBYTE(v21) = BYTE4(a6) & 1;
  *(&v21 + 1) = v11;
  BYTE9(v21) = BYTE5(a7);
  if ((sub_1002BE3A0(v14 | (a2 << 32) & 0xFF00010000000000, v15, v16, (v18 >> 32) & 0x1010101 | v17 | (a6 << 32) & 0xFF00010000000000, v21, WORD4(v21)) & 1) == 0)
  {
    return 0;
  }

  return sub_1001B42A0(a4, a8);
}

uint64_t sub_1002B8588(uint64_t a1, uint64_t a2)
{
  if (*a2 != *a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a2 + 12);
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  v7 = *(a2 + 7);
  v8 = *(a2 + 6);
  v9 = *(a2 + 5);
  v10 = *(a2 + 4);
  v11 = *(a1 + 12);
  v12 = *(a1 + 9);
  v13 = *(a1 + 8);
  v14 = *(a1 + 7);
  v15 = *(a2 + 10);
  v16 = *(a1 + 21);
  v17 = *(a1 + 13);
  v18 = *(a1 + 10);
  v19 = *(a1 + 4) & 1;
  v20 = *(a2 + 21);
  v21 = *(a2 + 13);
  v22 = (*(a1 + 5) & 1) != 0 ? 256 : 0;
  v23 = (*(a1 + 6) & 1) == 0;
  v24 = *(a1 + 11);
  v25 = *(a2 + 11);
  v26 = v23 ? 0 : 0x10000;
  v27 = (v14 & 1) != 0 ? 0x1000000 : 0;
  v28 = (v13 & 1) != 0 ? &_mh_execute_header : 0;
  v29 = (v12 & 1) != 0 ? 0x10000000000 : 0;
  v30 = v19 | (v18 << 48) | v22 | v26 | v27 | v28 | v29 | (v24 << 56);
  LOBYTE(v40) = v11 & 1;
  *(&v40 + 1) = v17;
  BYTE9(v40) = v16;
  v31 = v40;
  v32 = WORD4(v40);
  v33 = v10 & 1;
  v34 = (v9 & 1) != 0 ? 256 : 0;
  v35 = (v8 & 1) != 0 ? 0x10000 : 0;
  v36 = (v7 & 1) != 0 ? 0x1000000 : 0;
  v37 = (v6 & 1) != 0 ? &_mh_execute_header : 0;
  v38 = (v5 & 1) != 0 ? 0x10000000000 : 0;
  LOBYTE(v41) = v4 & 1;
  *(&v41 + 1) = v21;
  BYTE9(v41) = v20;
  if ((sub_1002BE3A0(v30, v31, v32, v33 | (v15 << 48) | v34 | v35 | v36 | v37 | v38 | (v25 << 56), v41, WORD4(v41)) & 1) == 0)
  {
    return 0;
  }

  return sub_1001B42A0(v2, v3);
}

uint64_t MailboxOfInterest.name.setter(uint64_t a1, int a2)
{
  v5 = *(v2 + 16);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

Swift::Int MailboxToRename.hashValue.getter(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  sub_1004A6E94();
  sub_1004A6EB4(a2 | (a2 << 32));
  sub_1004A6EB4(a4 | (a4 << 32));
  return sub_1004A6F14();
}

Swift::Int sub_1002B885C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  sub_1004A6EB4(v2 | (v2 << 32));
  return sub_1004A6F14();
}

void sub_1002B88BC()
{
  v1 = *(v0 + 24);
  sub_1004A6EB4(*(v0 + 8) | (*(v0 + 8) << 32));
  sub_1004A6EB4(v1 | (v1 << 32));
}

Swift::Int sub_1002B8900()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  sub_1004A6EB4(v2 | (v2 << 32));
  return sub_1004A6F14();
}

BOOL _s16IMAP2Persistence15MailboxToRenameV23__derived_struct_equalsySbAC_ACtFZ_0(_BOOL8 result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  if (a2 != a6)
  {
    return 0;
  }

  v8 = *(result + 16);
  if (v8 != *(a5 + 16))
  {
    return 0;
  }

  if (v8)
  {
    v9 = result == a5;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return a4 == a8 && (sub_1000FFC98(a3, a7) & 1) != 0;
  }

  v10 = (result + 32);
  v11 = (a5 + 32);
  while (v8)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v8)
    {
      return a4 == a8 && (sub_1000FFC98(a3, a7) & 1) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s16IMAP2Persistence5EventO6UpdateO21__derived_enum_equalsySbAE_AEtFZ_0(unint64_t a1, unint64_t a2)
{
  v223 = a2;
  v219 = sub_1004A44E4();
  v217 = *(v219 - 8);
  v3 = *(v217 + 64);
  __chkstk_darwin(v219);
  v214 = &v191 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_10000C9C0(&qword_1005D6770, &qword_1004EC278);
  v5 = *(*(v216 - 8) + 64);
  __chkstk_darwin(v216);
  v218 = &v191 - v6;
  v7 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v215 = &v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v220 = &v191 - v11;
  __chkstk_darwin(v12);
  v221 = &v191 - v13;
  v14 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v191 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v222 = &v191 - v19;
  v20 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v191 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v191 - v25;
  __chkstk_darwin(v27);
  v29 = &v191 - v28;
  __chkstk_darwin(v30);
  v32 = &v191 - v31;
  __chkstk_darwin(v33);
  v35 = &v191 - v34;
  __chkstk_darwin(v36);
  v38 = &v191 - v37;
  __chkstk_darwin(v39);
  v41 = &v191 - v40;
  __chkstk_darwin(v42);
  v44 = &v191 - v43;
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 1 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_164;
      }

      v130 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v131 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      return sub_1002BFAE4(v130, v131);
    case 2uLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 2 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_164;
      }

      v81 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v82 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v83 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v84 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v85 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v86 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      switch(v81)
      {
        case 2:
          if (v84 != 2)
          {
            goto LABEL_164;
          }

          break;
        case 3:
          if (v84 != 3)
          {
            goto LABEL_164;
          }

          break;
        case 4:
          if (v84 != 4)
          {
            goto LABEL_164;
          }

          break;
        default:
          if (v84 - 2) < 3 || ((v84 ^ v81))
          {
            goto LABEL_164;
          }

          break;
      }

      if (v82)
      {
        if (v85 && (sub_1002BF750(v82, v85) & 1) != 0 && v83 == v86)
        {
          goto LABEL_151;
        }
      }

      else if (!v85 && ((v83 ^ v86) & 1) == 0)
      {
        goto LABEL_151;
      }

      goto LABEL_164;
    case 3uLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 3 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        goto LABEL_164;
      }

      v61 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x14) ^ *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x14) ^ 1;
      return v61 & 1;
    case 4uLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 4)
      {
        goto LABEL_164;
      }

      v62 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v63 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      return sub_1002C17F4(v62, v63);
    case 5uLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 5)
      {
        goto LABEL_164;
      }

      v145 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v146 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if ((sub_1002BF750(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0 || (sub_1002C2AF8(v145, v146) & 1) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_151;
    case 6uLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 6 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) != *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x18) || (sub_1000FFC98(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_151;
    case 7uLL:
      v126 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v225[0] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v225[1] = v126;
      v127 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v225[2] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v225[3] = v127;
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 7)
      {
        goto LABEL_164;
      }

      v128 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v226[0] = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v226[1] = v128;
      v129 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v226[2] = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v226[3] = v129;
      sub_100208C78(v226, v224);
      v61 = static PushRegistrationInfo.__derived_struct_equals(_:_:)(v225, v226);
      sub_10021D02C(v226);
      return v61 & 1;
    case 8uLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 8)
      {
        goto LABEL_164;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) != *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        goto LABEL_164;
      }

      v171 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v172 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
      v173 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v174 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x24);
      if ((sub_1000FFC98(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0)
      {
        goto LABEL_164;
      }

      v61 = v173 == v171 && v174 == v172;
      return v61 & 1;
    case 9uLL:
      v71 = sub_10000C9C0(&qword_1005CDA40, &qword_1004CF7A0);
      v72 = swift_projectBox();
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 9)
      {
        goto LABEL_164;
      }

      v73 = *(v71 + 64);
      v221 = *(v72 + v73);
      v74 = v72[1];
      v222 = *v72;
      v75 = *(v71 + 48);
      v76 = v72;
      v77 = swift_projectBox();
      v79 = *v77;
      v78 = v77[1];
      v223 = *(v77 + v73);
      sub_10000E268(v76 + v75, v44, &unk_1005D91B0, &unk_1004CF400);
      sub_10000E268(v77 + v75, v41, &unk_1005D91B0, &unk_1004CF400);
      if (v74 == v78 && (sub_1000FFC98(v222, v79) & 1) != 0)
      {
        sub_100016D2C();
        v80 = sub_1004A7034();
        sub_100025F40(v41, &unk_1005D91B0, &unk_1004CF400);
        sub_100025F40(v44, &unk_1005D91B0, &unk_1004CF400);
        v61 = v80 & (v221 == v223);
        return v61 & 1;
      }

      v182 = &unk_1005D91B0;
      v183 = &unk_1004CF400;
      sub_100025F40(v41, &unk_1005D91B0, &unk_1004CF400);
      v179 = v44;
      goto LABEL_162;
    case 0xAuLL:
      v162 = swift_projectBox();
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 0xA)
      {
        goto LABEL_164;
      }

      v163 = v162[1];
      v220 = *v162;
      v221 = v163;
      v164 = v162;
      v165 = sub_10000C9C0(&qword_1005CD4F8, &unk_1004CF790);
      v166 = *(v165 + 48);
      v167 = *(v165 + 64);
      v168 = swift_projectBox();
      v169 = v168[1];
      v223 = *v168;
      sub_10000E268(v164 + v166, v38, &unk_1005D91B0, &unk_1004CF400);
      sub_10000E268(v164 + v167, v222, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10000E268(v168 + v166, v35, &unk_1005D91B0, &unk_1004CF400);
      sub_10000E268(v168 + v167, v17, &qword_1005CD1D0, &unk_1004CF2C0);
      if (v221 == v169 && (sub_1000FFC98(v220, v223) & 1) != 0)
      {
        sub_100016D2C();
        if (sub_1004A7034())
        {
          v170 = v222;
          v61 = sub_1004A7034();
          sub_100025F40(v17, &qword_1005CD1D0, &unk_1004CF2C0);
          sub_100025F40(v35, &unk_1005D91B0, &unk_1004CF400);
          sub_100025F40(v170, &qword_1005CD1D0, &unk_1004CF2C0);
          sub_100025F40(v38, &unk_1005D91B0, &unk_1004CF400);
          return v61 & 1;
        }
      }

      sub_100025F40(v17, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v35, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v222, &qword_1005CD1D0, &unk_1004CF2C0);
      v179 = v38;
      v180 = &unk_1005D91B0;
      v181 = &unk_1004CF400;
      goto LABEL_163;
    case 0xBuLL:
      v51 = sub_10000C9C0(&qword_1005CDC20, &qword_1004CF9E8);
      v52 = swift_projectBox();
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 0xB)
      {
        goto LABEL_164;
      }

      v53 = *(v51 + 64);
      v221 = *(v52 + v53);
      v54 = v52[1];
      v222 = *v52;
      v55 = *(v51 + 48);
      v56 = v52;
      v57 = swift_projectBox();
      v59 = *v57;
      v58 = v57[1];
      v223 = *(v57 + v53);
      sub_10000E268(v56 + v55, v32, &unk_1005D91B0, &unk_1004CF400);
      sub_10000E268(v57 + v55, v29, &unk_1005D91B0, &unk_1004CF400);
      if (v54 == v58 && (sub_1000FFC98(v222, v59) & 1) != 0)
      {
        sub_100016D2C();
        v60 = sub_1004A7034();
        sub_100025F40(v29, &unk_1005D91B0, &unk_1004CF400);
        sub_100025F40(v32, &unk_1005D91B0, &unk_1004CF400);
        v61 = v60 & (v221 == v223);
        return v61 & 1;
      }

      sub_100025F40(v29, &unk_1005D91B0, &unk_1004CF400);
      v179 = v32;
      v180 = &unk_1005D91B0;
      v181 = &unk_1004CF400;
      goto LABEL_163;
    case 0xCuLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 0xC)
      {
        goto LABEL_164;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) != *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        goto LABEL_164;
      }

      v65 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v66 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v67 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v68 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      if ((sub_1000FFC98(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0)
      {
        goto LABEL_164;
      }

      if (v65)
      {
        v69 = 6581810;
      }

      else
      {
        v69 = 7631665;
      }

      if (v67)
      {
        v70 = 6581810;
      }

      else
      {
        v70 = 7631665;
      }

      if (v69 == v70)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v185 = sub_1004A6D34();
        swift_bridgeObjectRelease_n();
        if ((v185 & 1) == 0)
        {
          goto LABEL_164;
        }
      }

      return sub_1002C1AC8(v66, v68);
    case 0xDuLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 0xD)
      {
        goto LABEL_164;
      }

      if ((*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) != (*((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        goto LABEL_164;
      }

      v149 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v150 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
      v151 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v152 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v153 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v154 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
      v155 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v156 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v157 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      if ((sub_1000FFC98(v149, *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0)
      {
        goto LABEL_164;
      }

      if (v150)
      {
        v158 = 6581810;
      }

      else
      {
        v158 = 7631665;
      }

      if (v154)
      {
        v159 = 6581810;
      }

      else
      {
        v159 = 7631665;
      }

      if (v158 == v159)
      {
        swift_bridgeObjectRelease_n();
        if (v155 != v151)
        {
          goto LABEL_164;
        }
      }

      else
      {
        v186 = sub_1004A6D34();
        swift_bridgeObjectRelease_n();
        v61 = 0;
        if ((v186 & 1) == 0 || v155 != v151)
        {
          return v61 & 1;
        }
      }

      if ((sub_1002C1B88(v152, v156) & 1) == 0)
      {
        goto LABEL_164;
      }

      v61 = v153 ^ v157 ^ 1;
      return v61 & 1;
    case 0xEuLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 0xE)
      {
        goto LABEL_164;
      }

      if ((*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) != (*((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        goto LABEL_164;
      }

      v49 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v46 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v50 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v48 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      if ((sub_1000FFC98(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0 || (sub_1002C1C40(v49, v50) & 1) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_134;
    case 0xFuLL:
      v87 = sub_10000C9C0(&qword_1005D22F0, &unk_1004EFDE0);
      v88 = swift_projectBox();
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 0xF)
      {
        goto LABEL_164;
      }

      v89 = *v88;
      v90 = *(v88 + 24);
      v212 = *(v88 + 16);
      v211 = v90;
      v194 = *(v88 + 32);
      v193 = *(v88 + 33);
      v200 = *(v88 + 34);
      v203 = *(v88 + 35);
      v204 = *(v88 + 36);
      v206 = *(v88 + 37);
      v207 = *(v88 + 38);
      v209 = *(v88 + 39);
      v210 = *(v88 + 40);
      v91 = *(v87 + 96);
      v92 = *(v88 + v91 + 8);
      v192 = *(v88 + v91);
      v191 = v92;
      v93 = *(v88 + 8);
      v94 = *(v87 + 80);
      v95 = v88;
      v96 = swift_projectBox();
      v97 = *v96;
      v98 = *(v96 + 8);
      v99 = *(v96 + 24);
      v213 = *(v96 + 16);
      v196 = *(v96 + 32);
      v195 = *(v96 + 33);
      v197 = *(v96 + 34);
      v198 = *(v96 + 35);
      v199 = *(v96 + 36);
      v201 = *(v96 + 37);
      v202 = *(v96 + 38);
      v205 = *(v96 + 39);
      v208 = *(v96 + 40);
      v100 = *(v96 + v91 + 8);
      v222 = *(v96 + v91);
      v223 = v100;
      v101 = v95 + v94;
      v102 = v221;
      sub_10000E268(v101, v221, &qword_1005D0F20, &qword_1004E9390);
      v103 = v96 + v94;
      v104 = v220;
      sub_10000E268(v103, v220, &qword_1005D0F20, &qword_1004E9390);
      if ((v93 | (v93 << 32)) != (v98 | (v98 << 32)) || (sub_1000FFC98(v89, v97) & 1) == 0)
      {
        goto LABEL_161;
      }

      v105 = v213;
      v106 = v99;
      sub_100014CEC(v213, v99);
      v107 = v222;
      v108 = v223;
      sub_100014CEC(v222, v223);
      if ((sub_10003A194(v212, v211, v105, v99) & 1) == 0)
      {
        goto LABEL_159;
      }

      v109 = 256;
      if (v193)
      {
        v110 = 256;
      }

      else
      {
        v110 = 0;
      }

      if (v200)
      {
        v111 = 0x10000;
      }

      else
      {
        v111 = 0;
      }

      if (v203)
      {
        v112 = 0x1000000;
      }

      else
      {
        v112 = 0;
      }

      if (v204)
      {
        v113 = &_mh_execute_header;
      }

      else
      {
        v113 = 0;
      }

      if (v206)
      {
        v114 = 0x10000000000;
      }

      else
      {
        v114 = 0;
      }

      v115 = v194 & 1 | (v207 << 48) | v110 | v111 | v112 | v113 | v114 | (v209 << 56);
      if ((v195 & 1) == 0)
      {
        v109 = 0;
      }

      v116 = (v197 & 1) != 0 ? 0x10000 : 0;
      v117 = (v198 & 1) != 0 ? 0x1000000 : 0;
      v118 = (v199 & 1) != 0 ? &_mh_execute_header : 0;
      v119 = (v201 & 1) != 0 ? 0x10000000000 : 0;
      if ((sub_1002BE32C(v115, v210 & 1, v196 & 1 | (v202 << 48) | v109 | v116 | v117 | v118 | v119 | (v205 << 56), v208 & 1) & 1) == 0)
      {
LABEL_159:
        v184 = v107;
LABEL_160:
        sub_100014D40(v184, v108);
        sub_100014D40(v105, v106);
LABEL_161:
        v182 = &qword_1005D0F20;
        v183 = &qword_1004E9390;
        sub_100025F40(v104, &qword_1005D0F20, &qword_1004E9390);
        v179 = v102;
        goto LABEL_162;
      }

      v120 = *(v216 + 48);
      v121 = v218;
      sub_10000E268(v102, v218, &qword_1005D0F20, &qword_1004E9390);
      sub_10000E268(v104, v121 + v120, &qword_1005D0F20, &qword_1004E9390);
      v122 = v217;
      v123 = *(v217 + 48);
      v124 = v219;
      if (v123(v121, 1, v219) == 1)
      {
        if (v123(v121 + v120, 1, v124) == 1)
        {
          sub_100025F40(v121, &qword_1005D0F20, &qword_1004E9390);
          v108 = v223;
          v125 = v222;
          goto LABEL_193;
        }

        sub_100014D40(v222, v223);
        sub_100014D40(v105, v106);
        goto LABEL_191;
      }

      v187 = v215;
      sub_10000E268(v121, v215, &qword_1005D0F20, &qword_1004E9390);
      if (v123(v121 + v120, 1, v124) == 1)
      {
        sub_100014D40(v222, v223);
        sub_100014D40(v213, v106);
        (*(v122 + 8))(v187, v124);
LABEL_191:
        sub_100025F40(v121, &qword_1005D6770, &qword_1004EC278);
        goto LABEL_161;
      }

      v188 = v214;
      (*(v122 + 32))(v214, v121 + v120, v124);
      sub_100283BD4();
      v189 = sub_1004A5724();
      v190 = *(v122 + 8);
      v190(v188, v124);
      v190(v187, v124);
      sub_100025F40(v121, &qword_1005D0F20, &qword_1004E9390);
      v105 = v213;
      v108 = v223;
      v125 = v222;
      if ((v189 & 1) == 0)
      {
        v184 = v222;
        goto LABEL_160;
      }

LABEL_193:
      v61 = sub_10003A194(v192, v191, v125, v108);
      sub_100014D40(v125, v108);
      sub_100014D40(v105, v106);
      v139 = &qword_1005D0F20;
      v140 = &qword_1004E9390;
      sub_100025F40(v104, &qword_1005D0F20, &qword_1004E9390);
      v141 = v102;
LABEL_101:
      sub_100025F40(v141, v139, v140);
      return v61 & 1;
    case 0x10uLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 0x10)
      {
        goto LABEL_164;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) != *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        goto LABEL_164;
      }

      v45 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v46 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v47 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v48 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      if ((sub_1000FFC98(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0 || (sub_1002C2370(v45, v47) & 1) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_134;
    case 0x11uLL:
      v132 = swift_projectBox();
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 0x11)
      {
        goto LABEL_164;
      }

      v133 = v132[1];
      v222 = *v132;
      v134 = v132;
      v135 = *(sub_10000C9C0(&qword_1005D22E8, &unk_1004DA480) + 48);
      v136 = swift_projectBox();
      v138 = *v136;
      v137 = v136[1];
      sub_10000E268(v134 + v135, v26, &unk_1005D91B0, &unk_1004CF400);
      sub_10000E268(v136 + v135, v23, &unk_1005D91B0, &unk_1004CF400);
      if (v133 == v137 && (sub_1000FFC98(v222, v138) & 1) != 0)
      {
        sub_100016D2C();
        v61 = sub_1004A7034();
        v139 = &unk_1005D91B0;
        v140 = &unk_1004CF400;
        sub_100025F40(v23, &unk_1005D91B0, &unk_1004CF400);
        v141 = v26;
        goto LABEL_101;
      }

      v182 = &unk_1005D91B0;
      v183 = &unk_1004CF400;
      sub_100025F40(v23, &unk_1005D91B0, &unk_1004CF400);
      v179 = v26;
LABEL_162:
      v180 = v182;
      v181 = v183;
LABEL_163:
      sub_100025F40(v179, v180, v181);
LABEL_164:
      v61 = 0;
      return v61 & 1;
    case 0x12uLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 0x12)
      {
        goto LABEL_164;
      }

      if ((*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) != (*((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        goto LABEL_164;
      }

      v160 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v46 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v161 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v48 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      if ((sub_1000FFC98(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0 || (sub_1002C2550(v160, v161) & 1) == 0)
      {
        goto LABEL_164;
      }

LABEL_134:
      v61 = v46 ^ v48 ^ 1;
      return v61 & 1;
    case 0x13uLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 0x13)
      {
        goto LABEL_164;
      }

      v176 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v177 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      v144 = sub_1000FFCF4(v176, v177);
      goto LABEL_154;
    case 0x14uLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 0x14)
      {
        goto LABEL_164;
      }

      v142 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v143 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      v144 = sub_1000FFDEC(v142, v143);
LABEL_154:
      v178 = v144;

      return v178 & 1;
    case 0x15uLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) != 0x15)
      {
        goto LABEL_164;
      }

      if ((*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) != (*((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        goto LABEL_164;
      }

      v147 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v148 = *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      if ((sub_1000FFC98(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v223 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0)
      {
        goto LABEL_164;
      }

      return sub_100115B88(v147, v148);
    case 0x16uLL:
      if (((v223 >> 59) & 0x1E | (v223 >> 2) & 1) == 0x16 && v223 == 0xB000000000000000)
      {
        goto LABEL_151;
      }

      goto LABEL_164;
    default:
      if ((v223 >> 59) & 0x1E | (v223 >> 2) & 1 || *(a1 + 16) != *(v223 + 16) || ((*(a1 + 17) ^ *(v223 + 17)) & 1) != 0 || ((*(a1 + 18) ^ *(v223 + 18)) & 1) != 0 || *(a1 + 24) != *(v223 + 24) || *(a1 + 32) != *(v223 + 32) || *(a1 + 40) != *(v223 + 40))
      {
        goto LABEL_164;
      }

LABEL_151:
      v61 = 1;
      return v61 & 1;
  }
}

unint64_t sub_1002BA3B0()
{
  result = qword_1005D7080;
  if (!qword_1005D7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7080);
  }

  return result;
}

uint64_t sub_1002BA404(void *a1)
{
  if (*a1 >> 60 <= 0xAuLL)
  {
    return (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  }

  else
  {
    return (*a1 >> 3) + 22;
  }
}

uint64_t sub_1002BA448(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6A && *(a1 + 8))
  {
    return (*a1 + 106);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x69)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002BA4A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x69)
  {
    *result = a2 - 106;
    if (a3 >= 0x6A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1002BA508(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x16)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 22)) | 0xB000000000000000;
  }

  return result;
}

__n128 sub_1002BA564(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1002BA578(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_1002BA5C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static FlagsWithModifications.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *&v11 = a2;
  WORD4(v11) = a3;
  v6 = *(&v11 + 1);
  *&v11 = a5;
  BYTE8(v11) = a6;
  v7 = *(&v11 + 1);
  LOBYTE(v11) = a2 & 1;
  *(&v11 + 1) = v6;
  v8 = v11;
  v9 = WORD4(v11);
  LOBYTE(v11) = a5 & 1;
  *(&v11 + 1) = v7;
  BYTE9(v11) = HIBYTE(a6);
  return sub_1002BE3A0(a1 & 0xFFFF010101010101, v8, v9, a4 & 0xFFFF010101010101, v11, WORD4(v11));
}

unint64_t Flags.init(unread:deleted:answered:draft:forwarded:redirected:junk:label:iCloudCleanup:)(char a1, char a2, char a3, char a4, char a5, char a6, unsigned __int8 a7, uint64_t a8)
{
  v8 = 256;
  if ((a2 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFFFELL | a1 & 1;
  v10 = 0x10000;
  if ((a3 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if ((a4 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = v9 | v10 | v11;
  v13 = &_mh_execute_header;
  if ((a5 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x10000000000;
  if ((a6 & 1) == 0)
  {
    v14 = 0;
  }

  return v12 | v13 | v14 | (a7 << 48) | (a8 << 56);
}

void Flags.hash(into:)(uint64_t a1, unint64_t a2, char a3)
{
  v5 = HIBYTE(a2);
  sub_1004A6EC4(a2 & 1);
  sub_1004A6EC4(BYTE1(a2) & 1);
  sub_1004A6EC4(BYTE2(a2) & 1);
  sub_1004A6EC4(BYTE3(a2) & 1);
  sub_1004A6EC4(BYTE4(a2) & 1);
  sub_1004A6EC4(BYTE5(a2) & 1);
  sub_1004A6EB4(BYTE6(a2));
  sub_1004A6EB4(v5);
  sub_1004A6EC4(a3 & 1);
}

Swift::Int Flags.hashValue.getter(uint64_t a1, char a2)
{
  sub_1004A6E94();
  Flags.hash(into:)(v5, a1 & 0xFFFF010101010101, a2);
  return sub_1004A6F14();
}

Swift::Int sub_1002BA880()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1004A6E94();
  v10 = 256;
  if ((v2 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = &_mh_execute_header;
  if ((v5 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x10000000000;
  if ((v6 & 1) == 0)
  {
    v14 = 0;
  }

  Flags.hash(into:)(v16, v1 & 1 | (v7 << 48) | v10 | v11 | v12 | v13 | v14 | (v8 << 56), v9 & 1);
  return sub_1004A6F14();
}

void sub_1002BA964(uint64_t a1)
{
  v2 = 256;
  if ((v1[1] & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if ((v1[2] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((v1[3] & 1) == 0)
  {
    v4 = 0;
  }

  v5 = &_mh_execute_header;
  if ((v1[4] & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 0x10000000000;
  if ((v1[5] & 1) == 0)
  {
    v6 = 0;
  }

  Flags.hash(into:)(a1, *v1 & 1 | (v1[6] << 48) | v2 | v3 | v4 | v5 | v6 | (v1[7] << 56), v1[8] & 1);
}

Swift::Int sub_1002BA9EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1004A6E94();
  v10 = 256;
  if ((v2 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = &_mh_execute_header;
  if ((v5 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x10000000000;
  if ((v6 & 1) == 0)
  {
    v14 = 0;
  }

  Flags.hash(into:)(v16, v1 & 1 | (v7 << 48) | v10 | v11 | v12 | v13 | v14 | (v8 << 56), v9 & 1);
  return sub_1004A6F14();
}

unint64_t sub_1002BAACC(_BYTE *a1, _BYTE *a2)
{
  v3 = 256;
  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (a1[2])
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if (a1[3])
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = &_mh_execute_header;
  if (a1[4])
  {
    v10 = &_mh_execute_header;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0x10000000000;
  if (a1[5])
  {
    v12 = 0x10000000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = *a1 & 1 | (a1[6] << 48) | v4 | v6 | v8 | v10 | v12 | (a1[7] << 56);
  if ((a2[1] & 1) == 0)
  {
    v3 = 0;
  }

  if ((a2[2] & 1) == 0)
  {
    v5 = 0;
  }

  if ((a2[3] & 1) == 0)
  {
    v7 = 0;
  }

  if ((a2[4] & 1) == 0)
  {
    v9 = 0;
  }

  if ((a2[5] & 1) == 0)
  {
    v11 = 0;
  }

  v14 = *a2 & 1 | (a2[6] << 48) | v3 | v5 | v7 | v9 | v11 | (a2[7] << 56);
  v15 = a2[8];
  v16 = a1[8] & 1;
  v17 = *a1 & 1 | (a1[6] << 48) | v4 | v6 | v8 | v10 | v12 | (a1[7] << 56);

  return sub_1002BE32C(v17, v16, v14, v15 & 1);
}

uint64_t Flags.description.getter(unint64_t a1)
{
  v1 = HIWORD(a1);
  v39 = HIBYTE(a1);
  sub_10000C9C0(&qword_1005D7088, &qword_1004EFE58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D0FC0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x646165726E75;
  *(inited + 48) = 0xE600000000000000;
  v3 = inited + 48;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x646574656C6564;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x6465726577736E61;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7466617264;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x6564726177726F66;
  *(inited + 144) = 0xE900000000000064;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x7463657269646572;
  *(inited + 168) = 0xEA00000000006465;
  v4 = 0;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "iCloudCleanup");
  *(inited + 198) = -4864;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v38 = v5;
    v6 = 7;
    if (v4 > 7)
    {
      v6 = v4;
    }

    v5 = -v6;
    v7 = (v3 + 24 * v4++);
    while (1)
    {
      if (&v5[v4] == 1)
      {
        __break(1u);
LABEL_71:
        v5 = sub_100085070(0, *(v5 + 2) + 1, 1, v5);
LABEL_17:
        v14 = v39;
        v16 = *(v5 + 2);
        v15 = *(v5 + 3);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v5 = sub_100085070((v15 > 1), v16 + 1, 1, v5);
        }

        v18 = 0xE400000000000000;
        v19 = 1802401130;
        goto LABEL_33;
      }

      v9 = *(v7 - 1);
      v8 = *v7;
      v10 = *(v7 - 2);

      swift_getAtKeyPath();

      if (v40)
      {
        break;
      }

      ++v4;
      v7 += 3;
      if (v4 == 8)
      {
        v5 = v38;
        goto LABEL_14;
      }
    }

    v5 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100085070(0, *(v38 + 2) + 1, 1, v38);
    }

    v12 = *(v5 + 2);
    v11 = *(v5 + 3);
    if (v12 >= v11 >> 1)
    {
      v5 = sub_100085070((v11 > 1), v12 + 1, 1, v5);
    }

    *(v5 + 2) = v12 + 1;
    v13 = &v5[16 * v12];
    *(v13 + 4) = v9;
    *(v13 + 5) = v8;
    v3 = inited + 48;
  }

  while (v4 != 7);
LABEL_14:

  if (!v1)
  {
    v14 = v39;
    if (v39 <= 3)
    {
      goto LABEL_34;
    }

LABEL_21:
    if (v14 > 5)
    {
      if (v14 == 6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100085070(0, *(v5 + 2) + 1, 1, v5);
        }

        v21 = *(v5 + 2);
        v28 = *(v5 + 3);
        v22 = v21 + 1;
        if (v21 >= v28 >> 1)
        {
          v5 = sub_100085070((v28 > 1), v21 + 1, 1, v5);
        }

        v23 = 0xE600000000000000;
        v24 = 0x656C70727570;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100085070(0, *(v5 + 2) + 1, 1, v5);
        }

        v21 = *(v5 + 2);
        v31 = *(v5 + 3);
        v22 = v21 + 1;
        if (v21 >= v31 >> 1)
        {
          v5 = sub_100085070((v31 > 1), v21 + 1, 1, v5);
        }

        v23 = 0xE400000000000000;
        v24 = 2036429415;
      }
    }

    else if (v14 == 4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100085070(0, *(v5 + 2) + 1, 1, v5);
      }

      v21 = *(v5 + 2);
      v20 = *(v5 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v5 = sub_100085070((v20 > 1), v21 + 1, 1, v5);
      }

      v23 = 0xE500000000000000;
      v24 = 0x6E65657267;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100085070(0, *(v5 + 2) + 1, 1, v5);
      }

      v21 = *(v5 + 2);
      v30 = *(v5 + 3);
      v22 = v21 + 1;
      if (v21 >= v30 >> 1)
      {
        v5 = sub_100085070((v30 > 1), v21 + 1, 1, v5);
      }

      v23 = 0xE400000000000000;
      v24 = 1702194274;
    }

    goto LABEL_68;
  }

  if (v1 == 1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_17;
    }

    goto LABEL_71;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_100085070(0, *(v5 + 2) + 1, 1, v5);
  }

  v14 = v39;
  v16 = *(v5 + 2);
  v25 = *(v5 + 3);
  v17 = v16 + 1;
  if (v16 >= v25 >> 1)
  {
    v5 = sub_100085070((v25 > 1), v16 + 1, 1, v5);
  }

  v18 = 0xE700000000000000;
  v19 = 0x6B6E754A746F6ELL;
LABEL_33:
  *(v5 + 2) = v17;
  v26 = &v5[16 * v16];
  *(v26 + 4) = v19;
  *(v26 + 5) = v18;
  if (v14 > 3)
  {
    goto LABEL_21;
  }

LABEL_34:
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100085070(0, *(v5 + 2) + 1, 1, v5);
      }

      v21 = *(v5 + 2);
      v29 = *(v5 + 3);
      v22 = v21 + 1;
      if (v21 >= v29 >> 1)
      {
        v5 = sub_100085070((v29 > 1), v21 + 1, 1, v5);
      }

      v23 = 0xE600000000000000;
      v24 = 0x65676E61726FLL;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100085070(0, *(v5 + 2) + 1, 1, v5);
      }

      v21 = *(v5 + 2);
      v32 = *(v5 + 3);
      v22 = v21 + 1;
      if (v21 >= v32 >> 1)
      {
        v5 = sub_100085070((v32 > 1), v21 + 1, 1, v5);
      }

      v23 = 0xE600000000000000;
      v24 = 0x776F6C6C6579;
    }
  }

  else
  {
    if (!v14)
    {
      goto LABEL_69;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100085070(0, *(v5 + 2) + 1, 1, v5);
    }

    v21 = *(v5 + 2);
    v27 = *(v5 + 3);
    v22 = v21 + 1;
    if (v21 >= v27 >> 1)
    {
      v5 = sub_100085070((v27 > 1), v21 + 1, 1, v5);
    }

    v23 = 0xE300000000000000;
    v24 = 6579570;
  }

LABEL_68:
  *(v5 + 2) = v22;
  v33 = &v5[16 * v21];
  *(v33 + 4) = v24;
  *(v33 + 5) = v23;
LABEL_69:
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
  v34 = sub_1004A5614();
  v36 = v35;

  v41._countAndFlagsBits = v34;
  v41._object = v36;
  sub_1004A5994(v41);

  v42._countAndFlagsBits = 41;
  v42._object = 0xE100000000000000;
  sub_1004A5994(v42);

  return 0x287367616C46;
}

uint64_t sub_1002BB3D4()
{
  v1 = 256;
  if ((v0[1] & 1) == 0)
  {
    v1 = 0;
  }

  v2 = 0x10000;
  if ((v0[2] & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if ((v0[3] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = &_mh_execute_header;
  if ((v0[4] & 1) == 0)
  {
    v4 = 0;
  }

  v5 = 0x10000000000;
  if ((v0[5] & 1) == 0)
  {
    v5 = 0;
  }

  v6 = v0[8];
  return Flags.description.getter(*v0 & 1 | (v0[6] << 48) | v1 | v2 | v3 | v4 | v5 | (v0[7] << 56));
}

uint64_t FlagsWithModifications.flags.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  return result;
}

uint64_t FlagsWithModifications.originalFlags.getter(uint64_t a1, uint64_t a2, char a3)
{
  *&v4 = a2;
  BYTE8(v4) = a3;
  return *(&v4 + 1);
}

uint64_t FlagsWithModifications.hasLocalChanges.getter(unint64_t a1, unint64_t a2, __int16 a3)
{
  *v5 = a2;
  v5[8] = a3;
  if (BYTE1(a2) == 2)
  {
    LOBYTE(v3) = a1 != 2;
  }

  else if (a1 == 2 || (((a2 >> 8) ^ a1) & 1) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = (*&v5[1] >> 8) & 1 ^ (a1 >> 8) & 1 | (*&v5[1] >> 16) & 1 ^ (a1 >> 16) & 1 | (*&v5[1] >> 24) & 1 ^ (a1 >> 24) & 1 | v5[5] & 1 ^ BYTE4(a1) & 1 | (*&v5[1] >> 40) & 1 ^ (a1 >> 40) & 1 | ((*&v5[1] ^ a1) >> 48 != 0) | a2 ^ ((a3 & 0x100) >> 8);
  }

  return v3 & 1;
}

uint64_t FlagsWithModifications.locallyModified.getter(unint64_t a1, uint64_t a2, __int16 a3)
{
  *v10 = a2;
  *&v10[8] = a3;
  v3 = *&v10[1];
  *v10 = _swiftEmptySetSingleton;
  if (v3 == 2)
  {

    return sub_1002BE494(&off_1005AEAC0);
  }

  else
  {
    v6 = a2;
    v8 = v3 ^ a1;
    if ((v3 ^ a1))
    {
      sub_1002BDA90(&v9, 0);
    }

    if (((v3 & 0x100) == 0) == ((a1 >> 8) & 1))
    {
      sub_1002BDA90(&v9, 1);
    }

    if (((v3 & 0x10000) == 0) == ((a1 >> 16) & 1))
    {
      sub_1002BDA90(&v9, 2);
    }

    if (((v3 & 0x1000000) == 0) == ((a1 >> 24) & 1))
    {
      sub_1002BDA90(&v9, 3);
    }

    if (((v3 & &_mh_execute_header) == 0) == (BYTE4(a1) & 1))
    {
      sub_1002BDA90(&v9, 4);
    }

    if (((v3 & 0x10000000000) == 0) == ((a1 >> 40) & 1))
    {
      sub_1002BDA90(&v9, 5);
    }

    if ((v8 & 0xFF000000000000) != 0)
    {
      sub_1002BDA90(&v9, 6);
    }

    if (HIBYTE(v8))
    {
      sub_1002BDA90(&v9, 7);
    }

    if ((v6 & 1) != (a3 & 0x100) >> 8)
    {
      sub_1002BDA90(&v9, 8);
    }

    return *v10;
  }
}

void FlagsWithModifications.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = HIBYTE(a4);
  *v6 = a3;
  v6[8] = a4;
  Flags.hash(into:)(a1, a2 & 0xFFFF010101010101, a3 & 1);
  if (v6[1] == 2)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);

    Flags.hash(into:)(a1, *&v6[1] & 0xFFFF010101010101, v4 & 1);
  }
}

Swift::Int FlagsWithModifications.hashValue.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = HIBYTE(a3);
  v4 = a2;
  *v8 = a2;
  *&v8[8] = a3;
  v6 = *&v8[1];
  sub_1004A6E94();
  Flags.hash(into:)(v8, a1 & 0xFFFF010101010101, v4 & 1);
  if (v6 == 2)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    Flags.hash(into:)(v8, v6 & 0xFFFF010101010101, v3 & 1);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1002BB878()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[9];
  v22 = v0[10];
  v23 = v0[11];
  v24 = v0[12];
  v25 = v0[13];
  v26 = v0[14];
  v27 = v0[15];
  v28 = v0[16];
  v29 = v0[17];
  v9 = v0[7];
  v10 = v0[8];
  sub_1004A6E94();
  v11 = 256;
  if ((v2 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v13 = 0;
  }

  if (v5)
  {
    v14 = &_mh_execute_header;
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = 0x10000000000;
  }

  else
  {
    v15 = 0;
  }

  Flags.hash(into:)(v30, v1 & 1 | (v7 << 48) | v11 | v12 | v13 | v14 | v15 | (v9 << 56), v10 & 1);
  if (v8 == 2)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    v16 = 256;
    if ((v22 & 1) == 0)
    {
      v16 = 0;
    }

    v17 = 0x10000;
    if ((v23 & 1) == 0)
    {
      v17 = 0;
    }

    v18 = 0x1000000;
    if ((v24 & 1) == 0)
    {
      v18 = 0;
    }

    if (v25)
    {
      v19 = &_mh_execute_header;
    }

    else
    {
      v19 = 0;
    }

    if (v26)
    {
      v20 = 0x10000000000;
    }

    else
    {
      v20 = 0;
    }

    Flags.hash(into:)(v30, v8 & 1 | (v27 << 48) | v16 | v17 | v18 | v19 | v20 | (v28 << 56), v29 & 1);
  }

  return sub_1004A6F14();
}

void sub_1002BBA30(uint64_t a1)
{
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v19 = v1[15];
  v20 = v1[16];
  v21 = v1[17];
  v9 = 256;
  if ((v1[1] & 1) == 0)
  {
    v9 = 0;
  }

  v10 = 0x10000;
  if ((v1[2] & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if ((v1[3] & 1) == 0)
  {
    v11 = 0;
  }

  if (v1[4])
  {
    v12 = &_mh_execute_header;
  }

  else
  {
    v12 = 0;
  }

  if (v1[5])
  {
    v13 = 0x10000000000;
  }

  else
  {
    v13 = 0;
  }

  Flags.hash(into:)(a1, *v1 & 1 | (v1[6] << 48) | v9 | v10 | v11 | v12 | v13 | (v1[7] << 56), v1[8] & 1);
  if (v3 == 2)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    v14 = 256;
    if ((v4 & 1) == 0)
    {
      v14 = 0;
    }

    v15 = 0x10000;
    if ((v5 & 1) == 0)
    {
      v15 = 0;
    }

    v16 = 0x1000000;
    if ((v6 & 1) == 0)
    {
      v16 = 0;
    }

    if (v7)
    {
      v17 = &_mh_execute_header;
    }

    else
    {
      v17 = 0;
    }

    if (v8)
    {
      v18 = 0x10000000000;
    }

    else
    {
      v18 = 0;
    }

    Flags.hash(into:)(a1, v3 & 1 | (v19 << 48) | v14 | v15 | v16 | v17 | v18 | (v20 << 56), v21 & 1);
  }
}

Swift::Int sub_1002BBBE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[9];
  v22 = v0[10];
  v23 = v0[11];
  v24 = v0[12];
  v25 = v0[13];
  v26 = v0[14];
  v27 = v0[15];
  v28 = v0[16];
  v29 = v0[17];
  v9 = v0[7];
  v10 = v0[8];
  sub_1004A6E94();
  v11 = 256;
  if ((v2 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v13 = 0;
  }

  if (v5)
  {
    v14 = &_mh_execute_header;
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = 0x10000000000;
  }

  else
  {
    v15 = 0;
  }

  Flags.hash(into:)(v30, v1 & 1 | (v7 << 48) | v11 | v12 | v13 | v14 | v15 | (v9 << 56), v10 & 1);
  if (v8 == 2)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    v16 = 256;
    if ((v22 & 1) == 0)
    {
      v16 = 0;
    }

    v17 = 0x10000;
    if ((v23 & 1) == 0)
    {
      v17 = 0;
    }

    v18 = 0x1000000;
    if ((v24 & 1) == 0)
    {
      v18 = 0;
    }

    if (v25)
    {
      v19 = &_mh_execute_header;
    }

    else
    {
      v19 = 0;
    }

    if (v26)
    {
      v20 = 0x10000000000;
    }

    else
    {
      v20 = 0;
    }

    Flags.hash(into:)(v30, v8 & 1 | (v27 << 48) | v16 | v17 | v18 | v19 | v20 | (v28 << 56), v29 & 1);
  }

  return sub_1004A6F14();
}

uint64_t sub_1002BBD9C(char *a1, char *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[8];
  v11 = *(a1 + 9);
  v12 = a1[17];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v17 = a2[4];
  v18 = a2[5];
  v19 = a2[6];
  v20 = a2[8];
  v21 = *(a2 + 9);
  v22 = a2[17];
  v23 = a1[7];
  v24 = a2[7];
  v25 = v3 & 1;
  v26 = (v4 & 1) == 0;
  v27 = 256;
  if (v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = 256;
  }

  v26 = (v5 & 1) == 0;
  v29 = 0x10000;
  if (v26)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0x10000;
  }

  v26 = (v6 & 1) == 0;
  v31 = 0x1000000;
  if (v26)
  {
    v32 = 0;
  }

  else
  {
    v32 = 0x1000000;
  }

  v26 = (v7 & 1) == 0;
  v33 = &_mh_execute_header;
  if (v26)
  {
    v34 = 0;
  }

  else
  {
    v34 = &_mh_execute_header;
  }

  v26 = (v8 & 1) == 0;
  v35 = 0x10000000000;
  if (v26)
  {
    v36 = 0;
  }

  else
  {
    v36 = 0x10000000000;
  }

  v37 = v25 | (v9 << 48) | v28 | v30 | v32 | v34 | v36 | (v23 << 56);
  LOBYTE(v41) = v10 & 1;
  *(&v41 + 1) = v11;
  BYTE9(v41) = v12;
  v38 = v41;
  v39 = WORD4(v41);
  if ((v14 & 1) == 0)
  {
    v27 = 0;
  }

  if ((v15 & 1) == 0)
  {
    v29 = 0;
  }

  if ((v16 & 1) == 0)
  {
    v31 = 0;
  }

  if ((v17 & 1) == 0)
  {
    v33 = 0;
  }

  if ((v18 & 1) == 0)
  {
    v35 = 0;
  }

  v42[0] = v20 & 1;
  *&v42[1] = v21;
  v42[9] = v22;

  return sub_1002BE3A0(v37, v38, v39, v13 & 1 | (v19 << 48) | v27 | v29 | v31 | v33 | v35 | (v24 << 56), *v42, *&v42[8]);
}

char *FlagsWithModifications.description.getter(uint64_t a1, char *a2, __int16 a3)
{
  v10 = a2;
  LOWORD(v11) = a3;
  LOBYTE(v10) = a2 & 1;
  v4 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, v10, a3);
  v5 = sub_1002BC110(v4);

  v10 = v5;

  sub_10020BFFC(&v10);

  if (*(v10 + 2))
  {
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
    v6 = sub_1004A5614();
    v8 = v7;
  }

  else
  {

    v8 = 0xE400000000000000;
    v6 = 1701736302;
  }

  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1004A6724(36);

  v10 = 0xD000000000000013;
  v11 = 0x80000001004AE080;
  v12._countAndFlagsBits = Flags.description.getter(a1 & 0xFFFF010101010101);
  sub_1004A5994(v12);

  v13._countAndFlagsBits = 0x696669646F6D202CLL;
  v13._object = 0xEC000000203A6465;
  sub_1004A5994(v13);
  v14._countAndFlagsBits = v6;
  v14._object = v8;
  sub_1004A5994(v14);

  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  sub_1004A5994(v15);
  return v10;
}

uint64_t sub_1002BC110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v27 = *(a1 + 16);
  sub_100091A08(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_1004A6554();
  v6 = v27;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_38;
    }

    v11 = *(*(a1 + 48) + result);
    if (v11 <= 3)
    {
      if (*(*(a1 + 48) + result) > 1u)
      {
        if (v11 == 2)
        {
          v12 = 0xE800000000000000;
          v13 = 0x6465726577736E61;
        }

        else
        {
          v12 = 0xE500000000000000;
          v13 = 0x7466617264;
        }
      }

      else if (*(*(a1 + 48) + result))
      {
        v12 = 0xE700000000000000;
        v13 = 0x646574656C6564;
      }

      else
      {
        v12 = 0xE600000000000000;
        v13 = 0x646165726E75;
      }
    }

    else if (*(*(a1 + 48) + result) <= 5u)
    {
      if (v11 == 4)
      {
        v12 = 0xE900000000000064;
        v13 = 0x6564726177726F66;
      }

      else
      {
        v12 = 0xEA00000000006465;
        v13 = 0x7463657269646572;
      }
    }

    else if (v11 == 6)
    {
      v12 = 0xE400000000000000;
      v13 = 1802401130;
    }

    else if (v11 == 7)
    {
      v12 = 0xE500000000000000;
      v13 = 0x6C6562616CLL;
    }

    else
    {
      v13 = 0x6C4364756F6C4369;
      v12 = 0xED000070756E6165;
    }

    v14 = *(a1 + 36);
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      v25 = *(a1 + 36);
      v26 = result;
      sub_100091A08((v15 > 1), v16 + 1, 1);
      v6 = v27;
      v14 = v25;
      result = v26;
    }

    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[2 * v16];
    v17[4] = v13;
    v17[5] = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_39;
    }

    v3 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_40;
    }

    if (v14 != *(a1 + 36))
    {
      goto LABEL_41;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_100020944(result, v14, 0);
          v6 = v27;
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_100020944(result, v14, 0);
      v6 = v27;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

char *sub_1002BC444()
{
  v1 = *(v0 + 8);
  v2 = 256;
  if ((*(v0 + 1) & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if ((*(v0 + 2) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((*(v0 + 3) & 1) == 0)
  {
    v4 = 0;
  }

  v5 = &_mh_execute_header;
  if ((*(v0 + 4) & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 0x10000000000;
  if ((*(v0 + 5) & 1) == 0)
  {
    v6 = 0;
  }

  *&v8[1] = *(v0 + 9);
  v8[9] = *(v0 + 17);
  return FlagsWithModifications.description.getter(*v0 & 1 | (*(v0 + 6) << 48) | v2 | v3 | v4 | v5 | v6 | (*(v0 + 7) << 56), *v8, *&v8[8]);
}

BOOL static FlagsUpdate.Label.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1 == 8)
  {
    return a2 == 8;
  }

  if (a2 == 8)
  {
    return 0;
  }

  return a1 == a2;
}

void FlagsUpdate.Label.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 8)
  {
    v2 = 0;
  }

  else
  {
    sub_1004A6EB4(1uLL);
    v2 = a2;
  }

  sub_1004A6EB4(v2);
}

Swift::Int FlagsUpdate.Label.hashValue.getter(unsigned __int8 a1)
{
  v2 = a1;
  sub_1004A6E94();
  v3 = 0;
  if (v2 != 8)
  {
    sub_1004A6EB4(1uLL);
    v3 = a1;
  }

  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

Swift::Int sub_1002BC600()
{
  v1 = *v0;
  sub_1004A6E94();
  v2 = 0;
  if (v1 != 8)
  {
    sub_1004A6EB4(1uLL);
    v2 = v1;
  }

  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

void sub_1002BC660()
{
  v1 = *v0;
  if (v1 == 8)
  {
    v1 = 0;
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(v1);
}

Swift::Int sub_1002BC6A8()
{
  v1 = *v0;
  sub_1004A6E94();
  if (v1 == 8)
  {
    v1 = 0;
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(v1);
  return sub_1004A6F14();
}

BOOL sub_1002BC708(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 8)
  {
    return v3 == 8;
  }

  if (v3 == 8)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t FlagsUpdate.init(unread:deleted:answered:draft:forwarded:redirected:junk:label:iCloudCleanup:)(char a1, char a2, char a3, char a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, uint64_t a8)
{
  v8 = 256;
  if ((a2 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFFFELL | a1 & 1;
  v10 = 0x10000;
  if ((a3 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if ((a4 & 1) == 0)
  {
    v11 = 0;
  }

  return v9 | v10 | v11 | (a5 << 32) | (a6 << 40) | (a7 << 48) | (a8 << 56);
}

void FlagsUpdate.hash(into:)(uint64_t a1, unint64_t a2, char a3)
{
  sub_1004A6EC4(a2 & 1);
  sub_1004A6EC4(BYTE1(a2) & 1);
  sub_1004A6EC4(BYTE2(a2) & 1);
  sub_1004A6EC4(BYTE3(a2) & 1);
  if ((a2 & 0xFF00000000) == 0x200000000)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    sub_1004A6EC4(1u);
    v5 = HIDWORD(a2) & 1;
  }

  sub_1004A6EC4(v5);
  if ((a2 & 0xFF0000000000) == 0x20000000000)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    sub_1004A6EC4(1u);
    v6 = (a2 >> 40) & 1;
  }

  v7 = HIBYTE(a2);
  sub_1004A6EC4(v6);
  if ((a2 & 0xFF000000000000) == 0x3000000000000)
  {
    sub_1004A6EC4(0);
    if (v7 != 8)
    {
LABEL_9:
      sub_1004A6EB4(1uLL);
      goto LABEL_12;
    }
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(BYTE6(a2));
    if (v7 != 8)
    {
      goto LABEL_9;
    }
  }

  v7 = 0;
LABEL_12:
  sub_1004A6EB4(v7);
  if (a3 == 2)
  {
    v8 = 0;
  }

  else
  {
    sub_1004A6EC4(1u);
    v8 = a3 & 1;
  }

  sub_1004A6EC4(v8);
}

Swift::Int FlagsUpdate.hashValue.getter(uint64_t a1, char a2)
{
  sub_1004A6E94();
  FlagsUpdate.hash(into:)(v5, a1 & 0xFFFFFFFF01010101, a2);
  return sub_1004A6F14();
}

Swift::Int sub_1002BC91C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1004A6E94();
  v10 = 256;
  if ((v2 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  FlagsUpdate.hash(into:)(v14, (v5 << 32) | (v6 << 40) | (v7 << 48) | v1 & 1 | v10 | v11 | v12 | (v8 << 56), v9);
  return sub_1004A6F14();
}

void sub_1002BC9E8(uint64_t a1)
{
  v2 = 256;
  if ((v1[1] & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if ((v1[2] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((v1[3] & 1) == 0)
  {
    v4 = 0;
  }

  FlagsUpdate.hash(into:)(a1, (v1[4] << 32) | (v1[5] << 40) | (v1[6] << 48) | *v1 & 1 | v2 | v3 | v4 | (v1[7] << 56), v1[8]);
}

Swift::Int sub_1002BCA54()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1004A6E94();
  v10 = 256;
  if ((v2 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  FlagsUpdate.hash(into:)(v14, (v5 << 32) | (v6 << 40) | (v7 << 48) | v1 & 1 | v10 | v11 | v12 | (v8 << 56), v9);
  return sub_1004A6F14();
}

uint64_t sub_1002BCB1C(_BYTE *a1, _BYTE *a2)
{
  v3 = 256;
  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (a1[2])
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if (a1[3])
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = (a1[4] << 32) | (a1[5] << 40) | (a1[6] << 48) | *a1 & 1 | v4 | v6 | v8 | (a1[7] << 56);
  if ((a2[1] & 1) == 0)
  {
    v3 = 0;
  }

  if ((a2[2] & 1) == 0)
  {
    v5 = 0;
  }

  if ((a2[3] & 1) == 0)
  {
    v7 = 0;
  }

  v10 = (a2[4] << 32) | (a2[5] << 40) | (a2[6] << 48) | *a2 & 1 | v3 | v5 | v7 | (a2[7] << 56);
  v11 = a2[8];
  v12 = a1[8];
  v13 = (a1[4] << 32) | (a1[5] << 40) | (a1[6] << 48) | *a1 & 1 | v4 | v6 | v8 | (a1[7] << 56);

  return sub_1002BE1D4(v9, v12, v10, v11);
}

uint64_t Flags.init(_:)(uint64_t a1)
{
  v1 = a1 & 0xFF000000000000;
  if ((a1 & 0xFF000000000000) == 0x3000000000000)
  {
    v1 = 0;
  }

  v2 = a1 & 0xFF00000000000000;
  if ((a1 & 0xFF00000000000000) == 0x800000000000000)
  {
    v2 = 0x100000000000000;
  }

  return v1 | a1 & 0x10100000000 | v2 | a1 & 0x1010101;
}

unint64_t FlagsWithModifications.update(with:)(unint64_t result, char a2)
{
  v3 = *(v2 + 9);
  if (v3 != 2)
  {
    v4 = v3 & 1;
    v5 = result & 1;
    if (*v2 == v4)
    {
      *v2 = v5;
    }

    v2[9] = v5;
    v3 = *(v2 + 9);
    if (v3 != 2)
    {
      v6 = v2[1] ^ (v3 >> 8) & 1;
      v7 = (result >> 8) & 1;
      if ((v6 & 1) == 0)
      {
        v2[1] = v7;
      }

      v2[10] = v7;
      v3 = *(v2 + 9);
      if (v3 != 2)
      {
        if (((v2[2] ^ (v3 >> 16) & 1) & 1) == 0)
        {
          v2[2] = BYTE2(result) & 1;
        }

        v2[11] = BYTE2(result) & 1;
        v3 = *(v2 + 9);
        if (v3 != 2)
        {
          v8 = v2[3] ^ (v3 >> 24) & 1;
          v9 = BYTE3(result) & 1;
          if ((v8 & 1) == 0)
          {
            v2[3] = v9;
          }

          v2[12] = v9;
          v3 = *(v2 + 9);
        }
      }
    }
  }

  if ((result & 0xFF00000000) != 0x200000000 && v3 != 2)
  {
    if (((v2[4] ^ BYTE4(v3) & 1) & 1) == 0)
    {
      v2[4] = BYTE4(result) & 1;
    }

    v2[13] = BYTE4(result) & 1;
    v3 = *(v2 + 9);
  }

  if ((result & 0xFF0000000000) != 0x20000000000 && v3 != 2)
  {
    v10 = v2[5] ^ (v3 >> 40) & 1;
    v11 = (result >> 40) & 1;
    if ((v10 & 1) == 0)
    {
      v2[5] = v11;
    }

    v2[14] = v11;
    v3 = *(v2 + 9);
  }

  v12 = HIBYTE(result);
  if (BYTE6(result) != 3 && v3 != 2)
  {
    if (v2[6] == BYTE6(v3))
    {
      v2[6] = BYTE6(result);
    }

    v2[15] = BYTE6(result);
    v3 = *(v2 + 9);
  }

  if (v12 == 8)
  {
    if (v3 != 2 && !HIBYTE(v3))
    {
      if (v2[7] <= 1u)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        LOBYTE(v12) = v2[7];
      }

      if (v2[7])
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if (v3 != 2)
  {
    if (v2[7] != HIBYTE(v3))
    {
LABEL_40:
      v2[16] = v12;
      goto LABEL_41;
    }

LABEL_39:
    v2[7] = v12;
    goto LABEL_40;
  }

LABEL_41:
  if (a2 != 2 && v2[9] != 2)
  {
    v13 = a2 & 1;
    if (v2[8] == v2[17])
    {
      v2[8] = v13;
    }

    v2[17] = v13;
  }

  return result;
}

void *sub_1002BCF18()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D70F8, &qword_1004F0368);
  v2 = *v0;
  v3 = sub_1004A6684();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1002BD058()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D70E0, &qword_1004F0358);
  v2 = *v0;
  v3 = sub_1004A6684();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_1002BD1A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005D70F8, &qword_1004F0368);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v17);
      result = sub_1004A6F14();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_1002BD3C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005D70E0, &qword_1004F0358);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1004A6E94();

      SectionSpecifier.Part.hash(into:)(v27, v17);
      result = sub_1004A6F14();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_1002BD5F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005D70F8, &qword_1004F0368);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v18);
      result = sub_1004A6F14();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1002BD840(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000C9C0(&qword_1005D70E0, &qword_1004F0358);
  result = sub_1004A6694();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1004A6E94();
      SectionSpecifier.Part.hash(into:)(v29, v18);
      result = sub_1004A6F14();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1002BDA90(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(a2);
  v7 = sub_1004A6F14();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1002BDCC8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1002BDB88(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1004A6E94();
  SectionSpecifier.Part.hash(into:)(v19, a2);
  v8 = sub_1004A6F14();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);

      v14 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v13, a2);

      if (v14)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v10);

    return 0;
  }

  else
  {
LABEL_5:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *v3;

    sub_1002BDE14(v17, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19[0];
    *a1 = a2;
    return 1;
  }
}

Swift::Int sub_1002BDCC8(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002BD5F0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1002BCF18();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1002BD1A8(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1004A6E94();
  sub_1004A6EB4(v4);
  result = sub_1004A6F14();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

Swift::Int sub_1002BDE14(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002BD840(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1002BD058();
      goto LABEL_12;
    }

    sub_1002BD3C8(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1004A6E94();
  SectionSpecifier.Part.hash(into:)(v20, v6);
  result = sub_1004A6F14();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);

      v15 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v14, v6);

      if (v15)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v6;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

void *sub_1002BDF84(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005D70E8, &qword_1004F0360);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D70F0, &unk_1004F13C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002BE0B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D70D8, &qword_1004F0350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_1002BE1D4(unint64_t a1, int a2, unint64_t a3, int a4)
{
  v4 = 0;
  if (((a1 >> 8) & 1) != ((a3 >> 8) & 1) || ((a1 ^ a3) & 1) != 0 || ((a1 >> 16) & 1) != ((a3 >> 16) & 1) || ((a1 >> 24) & 1) != ((a3 >> 24) & 1))
  {
    return v4;
  }

  if ((a1 & 0xFF00000000) == 0x200000000)
  {
    if (BYTE4(a3) != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (BYTE4(a3) == 2 || ((((a1 & &_mh_execute_header) == 0) ^ HIDWORD(a3)) & 1) == 0)
    {
      return v4;
    }
  }

  if ((a1 & 0xFF0000000000) == 0x20000000000)
  {
    if (BYTE5(a3) != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (BYTE5(a3) == 2 || ((((a1 & 0x10000000000) == 0) ^ (a3 >> 40)) & 1) == 0)
    {
      return v4;
    }
  }

  if ((a1 & 0xFF000000000000) == 0x3000000000000)
  {
    if (BYTE6(a3) != 3)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (BYTE6(a3) == 3 || ((a1 ^ a3) & 0xFF000000000000) != 0)
    {
      return v4;
    }
  }

  v5 = HIBYTE(a3);
  if (HIBYTE(a1) == 8)
  {
    if (v5 != 8)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (HIBYTE(a1) == v5)
  {
LABEL_24:
    if (a2 == 2)
    {
      if (a4 != 2)
      {
        return 0;
      }
    }

    else if (a4 == 2 || ((a4 ^ a2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_1002BE3A0(unint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, unsigned int a6)
{
  result = 0;
  *&v9 = a2;
  BYTE8(v9) = a3;
  v8 = *(&v9 + 1);
  *v10 = a5;
  v10[8] = a6;
  if (((a1 ^ a4) & 1) == 0 && ((a1 >> 8) & 1) == ((a4 >> 8) & 1) && ((a1 >> 16) & 1) == ((a4 >> 16) & 1) && ((a1 >> 24) & 1) == ((a4 >> 24) & 1) && (BYTE4(a1) & 1) == (BYTE4(a4) & 1) && ((a1 >> 40) & 1) == ((a4 >> 40) & 1) && !((a1 ^ a4) >> 48) && ((a2 ^ a5) & 1) == 0)
  {
    if (v8 == 2)
    {
      if (BYTE1(a5) != 2)
      {
        return 0;
      }
    }

    else if (BYTE1(a5) == 2 || (sub_1002BE32C(v8 & 0xFFFF010101010101, (a3 >> 8) & 1, *&v10[1] & 0xFFFF010101010101, (a6 >> 8) & 1) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1002BE494(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1002BEC3C();
  result = sub_1004A5D64();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1002BDA90(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1002BE50C()
{
  result = qword_1005D7090;
  if (!qword_1005D7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7090);
  }

  return result;
}

unint64_t sub_1002BE564()
{
  result = qword_1005D7098;
  if (!qword_1005D7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7098);
  }

  return result;
}

unint64_t sub_1002BE5BC()
{
  result = qword_1005D70A0;
  if (!qword_1005D70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D70A0);
  }

  return result;
}

unint64_t sub_1002BE614()
{
  result = qword_1005D70A8;
  if (!qword_1005D70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D70A8);
  }

  return result;
}

unint64_t sub_1002BE66C()
{
  result = qword_1005D70B0;
  if (!qword_1005D70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D70B0);
  }

  return result;
}

unint64_t sub_1002BE6C4()
{
  result = qword_1005D70B8;
  if (!qword_1005D70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D70B8);
  }

  return result;
}

unint64_t sub_1002BE71C()
{
  result = qword_1005D70C0;
  if (!qword_1005D70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D70C0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Flags(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for FlagsWithModifications(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FlagsWithModifications(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[18])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FlagsWithModifications(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1002BE8B8(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002BE910(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FlagsUpdate.Label(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 8;
  v9 = v7 - 8;
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

uint64_t storeEnumTagSinglePayload for FlagsUpdate.Label(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
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

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1002BEAB8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 8)
  {
    return v1 - 7;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1002BEACC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MailboxAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MailboxAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002BEC3C()
{
  result = qword_1005D7100;
  if (!qword_1005D7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7100);
  }

  return result;
}

uint64_t MessageMetadata.UnparsedHeader.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1002BED5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002BEDDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MessageHeader()
{
  result = qword_1005D7160;
  if (!qword_1005D7160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002BEE98()
{
  result = sub_1004A5384();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MailboxOfInterest.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
}

uint64_t MailboxOfInterest.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MailboxOfInterest.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
}

void MailboxOfInterest.metadata.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 36);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
}

__n128 MailboxOfInterest.metadata.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v3;
  *(v1 + 64) = *(a1 + 32);
  return result;
}

unint64_t MailboxOfInterest.localModification.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_1000CA1A0(v1);
  return v1;
}

unint64_t MailboxOfInterest.localModification.setter(uint64_t a1, int a2)
{
  v5 = *(v2 + 80);
  result = sub_1000CB838(*(v2 + 72));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t MailboxOfInterest.latestLocalChange.setter(uint64_t result)
{
  *(v1 + 84) = result;
  *(v1 + 88) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxOfInterest.init(id:name:uidValidity:fetchedWindow:highestModificationSequenceValue:localModification:latestLocalChange:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, int a12, int a13, int a14, char a15)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 36) = BYTE4(a5) & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 84) = a14;
  *(a9 + 88) = a15 & 1;
  return result;
}

uint64_t sub_1002BF138(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 9) = *(a2 + 73);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s16IMAP2Persistence17MailboxOfInterestV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t *(*MailboxOfInterest.uidValidity.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32);
  *(a1 + 12) = *(v1 + 36);
  return sub_1002BF1FC;
}

uint64_t *sub_1002BF1FC(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 12);
  *(v1 + 32) = *(result + 2);
  *(v1 + 36) = v2;
  return result;
}

uint64_t MailboxOfInterest.highestModificationSequenceValue.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64) & 1;
  return result;
}

uint64_t MailboxOfInterest.highestModificationSequenceValue.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t (*MailboxOfInterest.highestModificationSequenceValue.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  return sub_1002BF268;
}

uint64_t sub_1002BF268(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

Swift::Int MailboxOfInterest.hashValue.getter()
{
  sub_1004A6E94();
  sub_1004A6EB4(*(v0 + 24) | (*(v0 + 24) << 32));
  return sub_1004A6F14();
}

Swift::Int sub_1002BF2F8()
{
  v1 = *(v0 + 24);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  return sub_1004A6F14();
}

Swift::Int sub_1002BF340()
{
  v1 = *(v0 + 24);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  return sub_1004A6F14();
}

uint64_t sub_1002BF384@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t _s16IMAP2Persistence17MailboxOfInterestV17LocalModificationO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, int a2, unint64_t a3, int a4)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a3 == 1)
      {
        return 1;
      }
    }

    else if (a1 == 2)
    {
      if (a3 == 2)
      {
        return 1;
      }
    }

    else if (a3 >= 3 && a2 == a4 && (sub_1000FFC98(a1, a3) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!a3)
  {
    return 1;
  }

  return 0;
}

uint64_t _s16IMAP2Persistence17MailboxOfInterestV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t *a2)
{
  if (*(result + 8) != a2[1])
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    if ((*(result + 24) | (*(result + 24) << 32)) != (*(a2 + 6) | (*(a2 + 6) << 32)))
    {
      return 0;
    }

    v9 = result;
    if ((sub_1000FFC98(*(result + 16), a2[2]) & 1) == 0)
    {
      return 0;
    }

    v10 = *(v9 + 48);
    v15[0] = *(v9 + 32);
    v15[1] = v10;
    v16 = *(v9 + 64);
    v11 = *(a2 + 3);
    v13[0] = *(a2 + 2);
    v13[1] = v11;
    v14 = *(a2 + 64);
    if (!_s16IMAP2Persistence15MailboxMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(v15, v13) || (_s16IMAP2Persistence17MailboxOfInterestV17LocalModificationO21__derived_enum_equalsySbAE_AEtFZ_0(*(v9 + 72), *(v9 + 80), a2[9], *(a2 + 20)) & 1) == 0)
    {
      return 0;
    }

    v12 = *(a2 + 88);
    if (*(v9 + 88))
    {
      if ((a2[11] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v9 + 84) != *(a2 + 21))
      {
        v12 = 1;
      }

      if (v12)
      {
        return 0;
      }
    }

    return 1;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002BF544()
{
  result = qword_1005D7198;
  if (!qword_1005D7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7198);
  }

  return result;
}

__n128 sub_1002BF59C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1002BF5C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1002BF608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002BF670(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 12))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BF6CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1002BF720(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

Swift::Int sub_1002BF750(Swift::Int result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
LABEL_7:
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = (*(v3 + 48) + 16 * (v10 | (v4 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(v14);
    result = sub_1004A6F14();
    v17 = -1 << *(a2 + 32);
    v18 = result & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      if (v20[1] == v14)
      {
        v21 = *v20;
        v22 = *(*v20 + 16);
        if (v22 == *(v15 + 16))
        {
          break;
        }
      }

LABEL_16:
      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    v23 = (v21 + 32);
    if (v22)
    {
      v24 = v21 == v15;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      v25 = (v15 + 32);
      while (v22)
      {
        if (*v23 != *v25)
        {
          goto LABEL_16;
        }

        ++v23;
        ++v25;
        if (!--v22)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1002BF928(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v23 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      v14 = *(a2 + 40);
      sub_1004A6E94();

      SectionSpecifier.Part.hash(into:)(v24, v13);
      v15 = sub_1004A6F14();
      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v18 = ~v16;
      while (1)
      {
        v19 = *(*(a2 + 48) + 8 * v17);

        v21 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v20, v13);

        if (v21)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = v22;
      v7 = v23;
      if (!v23)
      {
        goto LABEL_8;
      }
    }

LABEL_21:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v23 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002BFAE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  for (i = v2 - 1; ; --i)
  {
    v6 = v3[3];
    v176 = v3[2];
    v177 = v6;
    v7 = v3[1];
    v174 = *v3;
    v175 = v7;
    v8 = v4[2];
    v9 = v4[3];
    v10 = *v4;
    *v180 = v4[1];
    *&v180[16] = v8;
    v11 = v4[4];
    *&v180[32] = v9;
    v181 = v11;
    v178 = v3[4];
    v179 = v10;
    v12 = *(&v175 + 1);
    v13 = v175;
    v14 = *(&v177 + 1);
    v15 = (*(&v178 + 1) >> 59) & 6 | ((*(&v177 + 1) & 0x2000000000000000) != 0);
    if (v15 <= 1)
    {
      break;
    }

    if (v15 == 2)
    {
      if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 2)
      {
        return 0;
      }

      v26 = v179;
      v27 = *(&v174 + 1) >> 62;
      v28 = *(&v179 + 1) >> 62;
      if (*(&v174 + 1) >> 62 == 3)
      {
        v29 = 0;
        if (v174 == __PAIR128__(0xC000000000000000, 0) && *(&v179 + 1) >> 62 == 3)
        {
          v29 = 0;
          if (v179 == __PAIR128__(0xC000000000000000, 0))
          {
            goto LABEL_378;
          }
        }

LABEL_80:
        if (v28 <= 1)
        {
          goto LABEL_81;
        }

LABEL_40:
        if (v28 != 2)
        {
          if (v29)
          {
            return 0;
          }

          goto LABEL_378;
        }

        v37 = *(v179 + 16);
        v36 = *(v179 + 24);
        v38 = __OFSUB__(v36, v37);
        v39 = v36 - v37;
        if (v38)
        {
          goto LABEL_387;
        }
      }

      else
      {
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v48 = *(v174 + 16);
            v47 = *(v174 + 24);
            v38 = __OFSUB__(v47, v48);
            v29 = v47 - v48;
            if (v38)
            {
              goto LABEL_401;
            }

            goto LABEL_80;
          }

          v29 = 0;
          if (v28 <= 1)
          {
            goto LABEL_81;
          }

          goto LABEL_40;
        }

        if (v27)
        {
          LODWORD(v29) = DWORD1(v174) - v174;
          if (__OFSUB__(DWORD1(v174), v174))
          {
            goto LABEL_403;
          }

          v29 = v29;
          goto LABEL_80;
        }

        v29 = BYTE14(v174);
        if (v28 > 1)
        {
          goto LABEL_40;
        }

LABEL_81:
        if (v28)
        {
          LODWORD(v39) = DWORD1(v179) - v179;
          if (__OFSUB__(DWORD1(v179), v179))
          {
            goto LABEL_384;
          }

          v39 = v39;
        }

        else
        {
          v39 = BYTE14(v179);
        }
      }

      if (v29 != v39)
      {
        return 0;
      }

      if (v29 < 1)
      {
        goto LABEL_378;
      }

      if (v27 > 1)
      {
        v171 = i;
        if (v27 == 2)
        {
          v55 = *(v174 + 16);
          v54 = *(v174 + 24);
          sub_1001F0C7C(&v179, v173);
          sub_1001F0C7C(&v174, v173);
          v56 = sub_1004A40D4();
          if (v56)
          {
            v57 = sub_1004A4104();
            if (__OFSUB__(v55, v57))
            {
              goto LABEL_426;
            }

            v56 += v55 - v57;
          }

          if (__OFSUB__(v54, v55))
          {
            goto LABEL_419;
          }

          goto LABEL_147;
        }

        memset(v172, 0, 14);
        sub_1001F0C7C(&v179, v173);
        sub_1001F0C7C(&v174, v173);
        sub_100066884(v172, v26, *(&v26 + 1), v173);
        sub_1001F0CD8(&v179);
        sub_1001F0CD8(&v174);
        v71 = v173[0];
      }

      else
      {
        if (!v27)
        {
          v53 = i;
          v172[0] = v174;
          LODWORD(v172[1]) = DWORD2(v174);
          WORD2(v172[1]) = WORD6(v174);
          sub_1001F0C7C(&v179, v173);
          sub_1001F0C7C(&v174, v173);
          sub_100066884(v172, v26, *(&v26 + 1), v173);
          sub_1001F0CD8(&v179);
          sub_1001F0CD8(&v174);
          i = v53;
          if ((v173[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_378;
        }

        v171 = i;
        v69 = v174;
        if (v174 >> 32 < v174)
        {
          goto LABEL_416;
        }

        sub_1001F0C7C(&v179, v173);
        sub_1001F0C7C(&v174, v173);
        v56 = sub_1004A40D4();
        if (v56)
        {
          v70 = sub_1004A4104();
          if (__OFSUB__(v69, v70))
          {
            goto LABEL_431;
          }

          v56 += v69 - v70;
        }

LABEL_147:
        sub_1004A40F4();
        sub_100066884(v56, v26, *(&v26 + 1), v173);
        sub_1001F0CD8(&v179);
        sub_1001F0CD8(&v174);
        v71 = v173[0];
      }

      i = v171;
      if ((v71 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_378;
    }

    if (v15 == 3)
    {
      if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 3)
      {
        return 0;
      }

      v16 = *(&v175 + 1);
      v17 = i;
      v18 = *v180;
      v19 = *&v180[8];
      if (v174 != v179 && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      if (v13 == v18 && v16 == v19)
      {
        i = v17;
      }

      else
      {
        v46 = sub_1004A6D34();
        i = v17;
        if ((v46 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 4)
      {
        return 0;
      }

      if (*(&v181 + 1) != 0x2000000000000000)
      {
        return 0;
      }

      v30 = vorrq_s8(*&v180[8], *&v180[24]);
      if (*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | v181 | *v180 | *(&v179 + 1) | v179 | *&v180[40])
      {
        return 0;
      }
    }

LABEL_378:
    if (!i)
    {
      return 1;
    }

    v4 += 5;
    v3 += 5;
  }

  v170 = i;
  if (!v15)
  {
    if ((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0))
    {
      return 0;
    }

    v20 = v179;
    v21 = *v180;
    v22 = *&v180[8];
    v23 = *(&v174 + 1) >> 62;
    v24 = *(&v179 + 1) >> 62;
    if (*(&v174 + 1) >> 62 == 3)
    {
      v25 = 0;
      if (v174 == __PAIR128__(0xC000000000000000, 0) && *(&v179 + 1) >> 62 == 3)
      {
        v25 = 0;
        if (v179 == __PAIR128__(0xC000000000000000, 0))
        {
LABEL_112:
          sub_1001F0C7C(&v179, v173);
          sub_1001F0C7C(&v174, v173);
          goto LABEL_160;
        }
      }
    }

    else if (v23 > 1)
    {
      if (v23 != 2)
      {
        v25 = 0;
        if (v24 <= 1)
        {
LABEL_103:
          if (v24)
          {
            LODWORD(v42) = DWORD1(v179) - v179;
            if (__OFSUB__(DWORD1(v179), v179))
            {
              __break(1u);
LABEL_384:
              __break(1u);
LABEL_385:
              __break(1u);
LABEL_386:
              __break(1u);
LABEL_387:
              __break(1u);
LABEL_388:
              __break(1u);
LABEL_389:
              __break(1u);
LABEL_390:
              __break(1u);
LABEL_391:
              __break(1u);
LABEL_392:
              __break(1u);
LABEL_393:
              __break(1u);
LABEL_394:
              __break(1u);
LABEL_395:
              __break(1u);
LABEL_396:
              __break(1u);
LABEL_397:
              __break(1u);
LABEL_398:
              __break(1u);
LABEL_399:
              __break(1u);
LABEL_400:
              __break(1u);
LABEL_401:
              __break(1u);
LABEL_402:
              __break(1u);
LABEL_403:
              __break(1u);
LABEL_404:
              __break(1u);
LABEL_405:
              __break(1u);
LABEL_406:
              __break(1u);
LABEL_407:
              __break(1u);
LABEL_408:
              __break(1u);
LABEL_409:
              __break(1u);
LABEL_410:
              __break(1u);
LABEL_411:
              __break(1u);
LABEL_412:
              __break(1u);
LABEL_413:
              __break(1u);
LABEL_414:
              __break(1u);
LABEL_415:
              __break(1u);
LABEL_416:
              __break(1u);
LABEL_417:
              __break(1u);
LABEL_418:
              __break(1u);
LABEL_419:
              __break(1u);
LABEL_420:
              __break(1u);
LABEL_421:
              __break(1u);
LABEL_422:
              __break(1u);
LABEL_423:
              __break(1u);
LABEL_424:
              __break(1u);
LABEL_425:
              __break(1u);
LABEL_426:
              __break(1u);
LABEL_427:
              __break(1u);
LABEL_428:
              __break(1u);
LABEL_429:
              __break(1u);
LABEL_430:
              __break(1u);
LABEL_431:
              __break(1u);
            }

            v42 = v42;
          }

          else
          {
            v42 = BYTE14(v179);
          }

          goto LABEL_107;
        }

LABEL_47:
        if (v24 != 2)
        {
          if (v25)
          {
            return 0;
          }

          goto LABEL_112;
        }

        v41 = *(v179 + 16);
        v40 = *(v179 + 24);
        v38 = __OFSUB__(v40, v41);
        v42 = v40 - v41;
        if (v38)
        {
          goto LABEL_388;
        }

LABEL_107:
        if (v25 != v42)
        {
          return 0;
        }

        if (v25 < 1)
        {
          goto LABEL_112;
        }

        if (v23 > 1)
        {
          if (v23 != 2)
          {
            memset(v172, 0, 14);
            sub_1001F0C7C(&v179, v173);
            sub_1001F0C7C(&v174, v173);
            sub_100066884(v172, v20, *(&v20 + 1), v173);
            if ((v173[0] & 1) == 0)
            {
              goto LABEL_382;
            }

LABEL_160:
            v75 = v12 >> 62;
            v76 = v22 >> 62;
            if (v12 >> 62 == 3)
            {
              v77 = 0;
              if (!v13 && v12 == 0xC000000000000000 && v22 >> 62 == 3)
              {
                v77 = 0;
                if (!v21 && v22 == 0xC000000000000000)
                {
                  goto LABEL_365;
                }
              }
            }

            else if (v75 > 1)
            {
              if (v75 != 2)
              {
                v77 = 0;
                if (v76 <= 1)
                {
LABEL_181:
                  if (v76)
                  {
                    LODWORD(v80) = HIDWORD(v21) - v21;
                    if (__OFSUB__(HIDWORD(v21), v21))
                    {
                      goto LABEL_390;
                    }

                    v80 = v80;
                  }

                  else
                  {
                    v80 = BYTE6(v22);
                  }

LABEL_185:
                  if (v77 != v80)
                  {
                    goto LABEL_382;
                  }

                  if (v77 < 1)
                  {
                    goto LABEL_365;
                  }

                  if (v75 > 1)
                  {
                    if (v75 != 2)
                    {
                      *&v173[6] = 0;
                      *v173 = 0;
                      sub_100014CEC(v21, v22);
                      sub_100014CEC(v21, v22);
                      sub_100066884(v173, v21, v22, v172);
                      sub_1001F0CD8(&v179);
                      sub_1001F0CD8(&v174);
                      sub_100014D40(v21, v22);
                      v84 = v21;
                      goto LABEL_244;
                    }

                    v83 = v21;
                    v85 = *(v13 + 16);
                    v86 = *(v13 + 24);
                  }

                  else
                  {
                    v83 = v21;
                    if (!v75)
                    {
                      *v173 = v13;
                      *&v173[8] = v12;
                      v173[10] = BYTE2(v12);
                      v173[11] = BYTE3(v12);
                      v173[12] = BYTE4(v12);
                      v173[13] = BYTE5(v12);
                      sub_100014CEC(v21, v22);
                      sub_100014CEC(v21, v22);
                      sub_100066884(v173, v21, v22, v172);
                      sub_1001F0CD8(&v179);
                      sub_1001F0CD8(&v174);
                      sub_100014D40(v21, v22);
                      v84 = v21;
LABEL_244:
                      v106 = v22;
                      goto LABEL_377;
                    }

                    v85 = v13;
                    v86 = v13 >> 32;
                    if (v86 < v85)
                    {
                      goto LABEL_422;
                    }
                  }

                  sub_100014CEC(v83, v22);
                  sub_100014CEC(v83, v22);
                  sub_100014CEC(v83, v22);
                  v103 = sub_10003A0DC(v85, v86, v12 & 0x3FFFFFFFFFFFFFFFLL, v83, v22);
                  sub_100014D40(v83, v22);
                  sub_1001F0CD8(&v179);
                  sub_1001F0CD8(&v174);
                  sub_100014D40(v83, v22);
                  v104 = v83;
                  v105 = v22;
LABEL_373:
                  sub_100014D40(v104, v105);
                  i = v170;
                  if ((v103 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_378;
                }

LABEL_170:
                if (v76 != 2)
                {
                  goto LABEL_347;
                }

                v79 = *(v21 + 16);
                v78 = *(v21 + 24);
                v38 = __OFSUB__(v78, v79);
                v80 = v78 - v79;
                if (v38)
                {
                  goto LABEL_391;
                }

                goto LABEL_185;
              }

              v82 = *(v13 + 16);
              v81 = *(v13 + 24);
              v38 = __OFSUB__(v81, v82);
              v77 = v81 - v82;
              if (v38)
              {
                goto LABEL_406;
              }
            }

            else
            {
              if (!v75)
              {
                v77 = BYTE6(v12);
                if (v76 <= 1)
                {
                  goto LABEL_181;
                }

                goto LABEL_170;
              }

              LODWORD(v77) = HIDWORD(v13) - v13;
              if (__OFSUB__(HIDWORD(v13), v13))
              {
                goto LABEL_405;
              }

              v77 = v77;
            }

            if (v76 <= 1)
            {
              goto LABEL_181;
            }

            goto LABEL_170;
          }

          v165 = *&v180[8];
          v168 = *v180;
          v59 = *(v174 + 16);
          v163 = *(v174 + 24);
          sub_1001F0C7C(&v179, v173);
          sub_1001F0C7C(&v174, v173);
          v60 = sub_1004A40D4();
          if (v60)
          {
            v61 = sub_1004A4104();
            if (__OFSUB__(v59, v61))
            {
              goto LABEL_427;
            }

            v60 += v59 - v61;
          }

          if (__OFSUB__(v163, v59))
          {
            goto LABEL_420;
          }

          sub_1004A40F4();
          sub_100066884(v60, v20, *(&v20 + 1), v173);
          v58 = v173[0];
        }

        else
        {
          v168 = *v180;
          if (!v23)
          {
            v172[0] = v174;
            LODWORD(v172[1]) = DWORD2(v174);
            WORD2(v172[1]) = WORD6(v174);
            sub_1001F0C7C(&v179, v173);
            sub_1001F0C7C(&v174, v173);
            sub_100066884(v172, v20, *(&v20 + 1), v173);
            v58 = v173[0];
            goto LABEL_157;
          }

          v165 = *&v180[8];
          v152 = *(&v175 + 1);
          v72 = v174;
          if (v174 >> 32 < v174)
          {
            goto LABEL_417;
          }

          sub_1001F0C7C(&v179, v173);
          sub_1001F0C7C(&v174, v173);
          v73 = sub_1004A40D4();
          if (v73)
          {
            v74 = sub_1004A4104();
            if (__OFSUB__(v72, v74))
            {
              goto LABEL_430;
            }

            v73 += v72 - v74;
          }

          v12 = v152;
          sub_1004A40F4();
          sub_100066884(v73, v20, *(&v20 + 1), v173);
          v58 = v173[0];
        }

        v22 = v165;
LABEL_157:
        v21 = v168;
        if ((v58 & 1) == 0)
        {
          goto LABEL_382;
        }

        goto LABEL_160;
      }

      v50 = *(v174 + 16);
      v49 = *(v174 + 24);
      v38 = __OFSUB__(v49, v50);
      v25 = v49 - v50;
      if (v38)
      {
        goto LABEL_399;
      }
    }

    else
    {
      if (!v23)
      {
        v25 = BYTE14(v174);
        if (v24 <= 1)
        {
          goto LABEL_103;
        }

        goto LABEL_47;
      }

      LODWORD(v25) = DWORD1(v174) - v174;
      if (__OFSUB__(DWORD1(v174), v174))
      {
        goto LABEL_400;
      }

      v25 = v25;
    }

    if (v24 <= 1)
    {
      goto LABEL_103;
    }

    goto LABEL_47;
  }

  v31 = *&v180[40];
  v156 = *(&v181 + 1);
  if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 1)
  {
    return 0;
  }

  v157 = v177;
  v158 = *(&v178 + 1);
  v32 = *&v180[8];
  v162 = *(&v176 + 1);
  v164 = *v180;
  v160 = v176;
  v161 = *&v180[16];
  v167 = *&v180[24];
  v33 = *(&v174 + 1) >> 62;
  v34 = *(&v179 + 1) >> 62;
  v159 = *&v180[32];
  v154 = v178;
  v155 = v181;
  if (*(&v174 + 1) >> 62 == 3)
  {
    v35 = 0;
    if (v174 == __PAIR128__(0xC000000000000000, 0) && *(&v179 + 1) >> 62 == 3)
    {
      v35 = 0;
      if (v179 == __PAIR128__(0xC000000000000000, 0))
      {
LABEL_131:
        sub_1001F0C7C(&v179, v173);
        sub_1001F0C7C(&v174, v173);
        v65 = v31;
        goto LABEL_202;
      }
    }

LABEL_121:
    if (v34 <= 1)
    {
      goto LABEL_122;
    }

    goto LABEL_54;
  }

  if (v33 <= 1)
  {
    if (!v33)
    {
      v35 = BYTE14(v174);
      if (v34 <= 1)
      {
        goto LABEL_122;
      }

      goto LABEL_54;
    }

    LODWORD(v35) = DWORD1(v174) - v174;
    if (__OFSUB__(DWORD1(v174), v174))
    {
      goto LABEL_404;
    }

    v35 = v35;
    goto LABEL_121;
  }

  if (v33 == 2)
  {
    v52 = *(v174 + 16);
    v51 = *(v174 + 24);
    v38 = __OFSUB__(v51, v52);
    v35 = v51 - v52;
    if (v38)
    {
      goto LABEL_402;
    }

    goto LABEL_121;
  }

  v35 = 0;
  if (v34 <= 1)
  {
LABEL_122:
    if (v34)
    {
      LODWORD(v45) = DWORD1(v179) - v179;
      if (__OFSUB__(DWORD1(v179), v179))
      {
        goto LABEL_386;
      }

      v45 = v45;
    }

    else
    {
      v45 = BYTE14(v179);
    }

    goto LABEL_126;
  }

LABEL_54:
  if (v34 != 2)
  {
    if (v35)
    {
      return 0;
    }

    goto LABEL_131;
  }

  v44 = *(v179 + 16);
  v43 = *(v179 + 24);
  v38 = __OFSUB__(v43, v44);
  v45 = v43 - v44;
  if (v38)
  {
    goto LABEL_385;
  }

LABEL_126:
  if (v35 != v45)
  {
    return 0;
  }

  if (v35 < 1)
  {
    goto LABEL_131;
  }

  if (v33 <= 1)
  {
    v150 = *&v180[8];
    if (!v33)
    {
      v172[0] = v174;
      LODWORD(v172[1]) = DWORD2(v174);
      WORD2(v172[1]) = WORD6(v174);
      v62 = *(&v179 + 1);
      v63 = v179;
      sub_1001F0C7C(&v179, v173);
      sub_1001F0C7C(&v174, v173);
      sub_100066884(v172, v63, v62, v173);
      v64 = v173[0];
      goto LABEL_199;
    }

    v149 = v179;
    v151 = *(&v175 + 1);
    v87 = v174;
    if (v174 >> 32 < v174)
    {
      goto LABEL_415;
    }

    sub_1001F0C7C(&v179, v173);
    sub_1001F0C7C(&v174, v173);
    v67 = sub_1004A40D4();
    if (v67)
    {
      v88 = sub_1004A4104();
      if (__OFSUB__(v87, v88))
      {
        goto LABEL_429;
      }

      v67 += v87 - v88;
    }

LABEL_198:
    sub_1004A40F4();
    sub_100066884(v67, v149, *(&v149 + 1), v173);
    v64 = v173[0];
    v12 = v151;
LABEL_199:
    v65 = v31;
    v32 = v150;
    if ((v64 & 1) == 0)
    {
      goto LABEL_382;
    }

    goto LABEL_202;
  }

  v149 = v179;
  if (v33 == 2)
  {
    v150 = *&v180[8];
    v151 = *(&v175 + 1);
    v66 = *(v174 + 16);
    v148 = *(v174 + 24);
    sub_1001F0C7C(&v179, v173);
    sub_1001F0C7C(&v174, v173);
    v67 = sub_1004A40D4();
    if (v67)
    {
      v68 = sub_1004A4104();
      if (__OFSUB__(v66, v68))
      {
        goto LABEL_428;
      }

      v67 += v66 - v68;
    }

    if (__OFSUB__(v148, v66))
    {
      goto LABEL_418;
    }

    goto LABEL_198;
  }

  memset(v172, 0, 14);
  sub_1001F0C7C(&v179, v173);
  sub_1001F0C7C(&v174, v173);
  sub_100066884(v172, v149, *(&v149 + 1), v173);
  v65 = v31;
  if ((v173[0] & 1) == 0)
  {
    goto LABEL_382;
  }

LABEL_202:
  v89 = v12 >> 62;
  v90 = v32 >> 62;
  if (v12 >> 62 == 3)
  {
    v91 = 0;
    v92 = v167;
    if (!v13 && v12 == 0xC000000000000000 && v32 >> 62 == 3)
    {
      v91 = 0;
      if (!v164 && v32 == 0xC000000000000000)
      {
LABEL_235:
        v98 = v159;
        v99 = v162;
        goto LABEL_249;
      }
    }

LABEL_224:
    if (v90 <= 1)
    {
      goto LABEL_225;
    }

    goto LABEL_212;
  }

  v92 = v167;
  if (v89 <= 1)
  {
    if (!v89)
    {
      v91 = BYTE6(v12);
      if (v90 <= 1)
      {
        goto LABEL_225;
      }

      goto LABEL_212;
    }

    LODWORD(v91) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_408;
    }

    v91 = v91;
    goto LABEL_224;
  }

  if (v89 == 2)
  {
    v97 = *(v13 + 16);
    v96 = *(v13 + 24);
    v38 = __OFSUB__(v96, v97);
    v91 = v96 - v97;
    if (v38)
    {
      goto LABEL_407;
    }

    goto LABEL_224;
  }

  v91 = 0;
  if (v90 <= 1)
  {
LABEL_225:
    if (v90)
    {
      LODWORD(v95) = HIDWORD(v164) - v164;
      if (__OFSUB__(HIDWORD(v164), v164))
      {
        goto LABEL_389;
      }

      v95 = v95;
    }

    else
    {
      v95 = BYTE6(v32);
    }

    goto LABEL_229;
  }

LABEL_212:
  if (v90 != 2)
  {
    v98 = v159;
    v99 = v162;
    if (v91)
    {
      goto LABEL_382;
    }

    goto LABEL_249;
  }

  v94 = *(v164 + 16);
  v93 = *(v164 + 24);
  v38 = __OFSUB__(v93, v94);
  v95 = v93 - v94;
  if (v38)
  {
    goto LABEL_392;
  }

LABEL_229:
  if (v91 != v95)
  {
    goto LABEL_382;
  }

  if (v91 < 1)
  {
    goto LABEL_235;
  }

  if (v89 > 1)
  {
    if (v89 == 2)
    {
      v101 = *(v13 + 24);
      v153 = *(v13 + 16);
      sub_100014CEC(v164, v32);
      sub_100014CEC(v164, v32);
      sub_100014CEC(v164, v32);
      v102 = sub_10003A0DC(v153, v101, v12 & 0x3FFFFFFFFFFFFFFFLL, v164, v32);
      sub_100014D40(v164, v32);
      sub_100014D40(v164, v32);
      sub_100014D40(v164, v32);
      v98 = v159;
      v92 = v167;
      v99 = v162;
      if ((v102 & 1) == 0)
      {
        goto LABEL_382;
      }
    }

    else
    {
      *&v173[6] = 0;
      *v173 = 0;
      sub_100014CEC(v164, v32);
      sub_100014CEC(v164, v32);
      sub_100066884(v173, v164, v32, v172);
      sub_100014D40(v164, v32);
      sub_100014D40(v164, v32);
      v98 = v159;
      v99 = v162;
      if ((v172[0] & 1) == 0)
      {
        goto LABEL_382;
      }
    }
  }

  else
  {
    v100 = v32;
    if (v89)
    {
      v107 = v13;
      v108 = v13 >> 32;
      if (v13 >> 32 < v13)
      {
        goto LABEL_421;
      }

      v109 = v100;
      sub_100014CEC(v164, v100);
      sub_100014CEC(v164, v109);
      sub_100014CEC(v164, v109);
      v110 = sub_10003A0DC(v107, v108, v12 & 0x3FFFFFFFFFFFFFFFLL, v164, v109);
      sub_100014D40(v164, v109);
      sub_100014D40(v164, v109);
      sub_100014D40(v164, v109);
      v98 = v159;
      v92 = v167;
      v99 = v162;
      if ((v110 & 1) == 0)
      {
        goto LABEL_382;
      }
    }

    else
    {
      *v173 = v13;
      *&v173[8] = v12;
      v173[10] = BYTE2(v12);
      v173[11] = BYTE3(v12);
      v173[12] = BYTE4(v12);
      v173[13] = BYTE5(v12);
      sub_100014CEC(v164, v32);
      sub_100014CEC(v164, v32);
      sub_100066884(v173, v164, v32, v172);
      sub_100014D40(v164, v32);
      sub_100014D40(v164, v32);
      v98 = v159;
      v99 = v162;
      if ((v172[0] & 1) == 0)
      {
        goto LABEL_382;
      }
    }
  }

LABEL_249:
  v111 = v99 >> 62;
  v112 = v92 >> 62;
  if (v99 >> 62 == 3)
  {
    v113 = 0;
    if (!v160 && v99 == 0xC000000000000000 && v92 >> 62 == 3)
    {
      v113 = 0;
      if (!v161 && v92 == 0xC000000000000000)
      {
        goto LABEL_291;
      }
    }

LABEL_271:
    if (v112 <= 1)
    {
      goto LABEL_272;
    }

    goto LABEL_259;
  }

  if (v111 <= 1)
  {
    if (!v111)
    {
      v113 = BYTE6(v99);
      if (v112 <= 1)
      {
        goto LABEL_272;
      }

      goto LABEL_259;
    }

    LODWORD(v113) = HIDWORD(v160) - v160;
    if (__OFSUB__(HIDWORD(v160), v160))
    {
      goto LABEL_409;
    }

    v113 = v113;
    goto LABEL_271;
  }

  if (v111 == 2)
  {
    v118 = *(v160 + 16);
    v117 = *(v160 + 24);
    v38 = __OFSUB__(v117, v118);
    v113 = v117 - v118;
    if (v38)
    {
      goto LABEL_410;
    }

    goto LABEL_271;
  }

  v113 = 0;
  if (v112 <= 1)
  {
LABEL_272:
    if (v112)
    {
      LODWORD(v116) = HIDWORD(v161) - v161;
      if (__OFSUB__(HIDWORD(v161), v161))
      {
        goto LABEL_393;
      }

      v116 = v116;
    }

    else
    {
      v116 = BYTE6(v92);
    }

    goto LABEL_276;
  }

LABEL_259:
  if (v112 != 2)
  {
    if (v113)
    {
      goto LABEL_382;
    }

    goto LABEL_291;
  }

  v115 = *(v161 + 16);
  v114 = *(v161 + 24);
  v38 = __OFSUB__(v114, v115);
  v116 = v114 - v115;
  if (v38)
  {
    goto LABEL_394;
  }

LABEL_276:
  if (v113 != v116)
  {
    goto LABEL_382;
  }

  if (v113 < 1)
  {
    goto LABEL_291;
  }

  if (v111 > 1)
  {
    if (v111 == 2)
    {
      v120 = v99;
      v166 = *(v160 + 24);
      v169 = *(v160 + 16);
      sub_100014CEC(v161, v92);
      sub_100014CEC(v161, v92);
      sub_100014CEC(v161, v92);
      LOBYTE(v120) = sub_10003A0DC(v169, v166, v120 & 0x3FFFFFFFFFFFFFFFLL, v161, v92);
      sub_100014D40(v161, v92);
      sub_100014D40(v161, v92);
      sub_100014D40(v161, v92);
      if ((v120 & 1) == 0)
      {
        goto LABEL_382;
      }

      goto LABEL_291;
    }

    *&v173[6] = 0;
    *v173 = 0;
    sub_100014CEC(v161, v92);
    sub_100014CEC(v161, v92);
    sub_100066884(v173, v161, v92, v172);
    sub_100014D40(v161, v92);
    v119 = v161;
    goto LABEL_290;
  }

  if (!v111)
  {
    *v173 = v160;
    *&v173[8] = v99;
    v173[10] = BYTE2(v99);
    v173[11] = BYTE3(v99);
    v173[12] = BYTE4(v99);
    v173[13] = BYTE5(v99);
    sub_100014CEC(v161, v92);
    sub_100014CEC(v161, v92);
    sub_100066884(v173, v161, v92, v172);
    sub_100014D40(v161, v92);
    v119 = v161;
LABEL_290:
    sub_100014D40(v119, v92);
    if ((v172[0] & 1) == 0)
    {
      goto LABEL_382;
    }

LABEL_291:
    v122 = v14 >> 62;
    v123 = v65 >> 62;
    if (v14 >> 62 == 3)
    {
      v124 = 0;
      if (!v157 && (v14 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v65 >> 62 == 3)
      {
        v124 = 0;
        if (!v98 && (v65 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000)
        {
          goto LABEL_324;
        }
      }
    }

    else if (v122 > 1)
    {
      if (v122 != 2)
      {
        v124 = 0;
        if (v123 <= 1)
        {
LABEL_314:
          if (v123)
          {
            LODWORD(v127) = HIDWORD(v98) - v98;
            if (__OFSUB__(HIDWORD(v98), v98))
            {
              goto LABEL_395;
            }

            v127 = v127;
          }

          else
          {
            v127 = BYTE6(v65);
          }

          goto LABEL_318;
        }

LABEL_301:
        if (v123 != 2)
        {
          v130 = v154;
          v131 = v155;
          v132 = v156;
          if (v124)
          {
            goto LABEL_382;
          }

          goto LABEL_333;
        }

        v126 = *(v98 + 16);
        v125 = *(v98 + 24);
        v38 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v38)
        {
          goto LABEL_396;
        }

LABEL_318:
        if (v124 != v127)
        {
          goto LABEL_382;
        }

        if (v124 >= 1)
        {
          if (v122 > 1)
          {
            if (v122 != 2)
            {
              *&v173[6] = 0;
              *v173 = 0;
              sub_100014CEC(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014CEC(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100066884(v173, v98, v65 & 0xDFFFFFFFFFFFFFFFLL, v172);
              sub_100014D40(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014D40(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              v130 = v154;
              v131 = v155;
              v132 = v156;
              if ((v172[0] & 1) == 0)
              {
                goto LABEL_382;
              }

LABEL_333:
              v136 = v132 & 0xCFFFFFFFFFFFFFFFLL;
              v137 = v158 >> 62;
              v138 = v132 >> 62;
              if (v158 >> 62 == 3)
              {
                v77 = 0;
                if (!v130 && (v158 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v132 >> 62 == 3)
                {
                  v77 = 0;
                  if (!v131 && v136 == 0xC000000000000000)
                  {
                    goto LABEL_365;
                  }
                }
              }

              else if (v137 > 1)
              {
                if (v137 != 2)
                {
                  v77 = 0;
                  if (v138 <= 1)
                  {
LABEL_356:
                    if (v138)
                    {
                      LODWORD(v141) = HIDWORD(v131) - v131;
                      if (__OFSUB__(HIDWORD(v131), v131))
                      {
                        goto LABEL_397;
                      }

                      v141 = v141;
                    }

                    else
                    {
                      v141 = BYTE6(v132);
                    }

                    goto LABEL_360;
                  }

LABEL_343:
                  if (v138 != 2)
                  {
LABEL_347:
                    if (v77)
                    {
                      goto LABEL_382;
                    }

LABEL_365:
                    sub_1001F0CD8(&v179);
                    sub_1001F0CD8(&v174);
                    i = v170;
                    goto LABEL_378;
                  }

                  v140 = *(v131 + 16);
                  v139 = *(v131 + 24);
                  v38 = __OFSUB__(v139, v140);
                  v141 = v139 - v140;
                  if (v38)
                  {
                    goto LABEL_398;
                  }

LABEL_360:
                  if (v77 != v141)
                  {
                    goto LABEL_382;
                  }

                  if (v77 < 1)
                  {
                    goto LABEL_365;
                  }

                  if (v137 > 1)
                  {
                    if (v137 != 2)
                    {
                      *&v173[6] = 0;
                      *v173 = 0;
                      sub_100014CEC(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                      sub_100014CEC(v131, v136);
                      goto LABEL_376;
                    }

                    v144 = *(v130 + 16);
                    v145 = *(v130 + 24);
                    sub_100014CEC(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                    sub_100014CEC(v131, v136);
                    sub_100014CEC(v131, v136);
                    v146 = v158 & 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    if (!v137)
                    {
                      *v173 = v130;
                      *&v173[8] = v158;
                      *&v173[10] = *(&v158 + 2);
                      sub_100014CEC(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                      sub_100014CEC(v131, v136);
LABEL_376:
                      sub_100066884(v173, v131, v136, v172);
                      sub_1001F0CD8(&v179);
                      sub_1001F0CD8(&v174);
                      sub_100014D40(v131, v136);
                      v84 = v131;
                      v106 = v136;
LABEL_377:
                      sub_100014D40(v84, v106);
                      i = v170;
                      if ((v172[0] & 1) == 0)
                      {
                        return 0;
                      }

                      goto LABEL_378;
                    }

                    v144 = v130;
                    v145 = v130 >> 32;
                    if (v130 >> 32 < v130)
                    {
                      goto LABEL_425;
                    }

                    sub_100014CEC(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                    sub_100014CEC(v131, v136);
                    sub_100014CEC(v131, v136);
                    v146 = v158 & 0xFFFFFFFFFFFFFFFLL;
                  }

                  v103 = sub_10003A0DC(v144, v145, v146, v131, v136);
                  sub_100014D40(v131, v136);
                  sub_1001F0CD8(&v179);
                  sub_1001F0CD8(&v174);
                  sub_100014D40(v131, v136);
                  v104 = v131;
                  v105 = v136;
                  goto LABEL_373;
                }

                v143 = *(v130 + 16);
                v142 = *(v130 + 24);
                v38 = __OFSUB__(v142, v143);
                v77 = v142 - v143;
                if (v38)
                {
                  goto LABEL_413;
                }
              }

              else
              {
                if (!v137)
                {
                  v77 = BYTE6(v158);
                  if (v138 <= 1)
                  {
                    goto LABEL_356;
                  }

                  goto LABEL_343;
                }

                LODWORD(v77) = HIDWORD(v130) - v130;
                if (__OFSUB__(HIDWORD(v130), v130))
                {
                  goto LABEL_414;
                }

                v77 = v77;
              }

              if (v138 <= 1)
              {
                goto LABEL_356;
              }

              goto LABEL_343;
            }

            v133 = *(v157 + 16);
            v134 = *(v157 + 24);
          }

          else
          {
            if (!v122)
            {
              *v173 = v157;
              *&v173[8] = v14;
              v173[10] = BYTE2(v14);
              v173[11] = BYTE3(v14);
              v173[12] = BYTE4(v14);
              v173[13] = BYTE5(v14);
              sub_100014CEC(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014CEC(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100066884(v173, v98, v65 & 0xDFFFFFFFFFFFFFFFLL, v172);
              sub_100014D40(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014D40(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              v130 = v154;
              v131 = v155;
              v132 = v156;
              if ((v172[0] & 1) == 0)
              {
                goto LABEL_382;
              }

              goto LABEL_333;
            }

            v133 = v157;
            v134 = v157 >> 32;
            if (v157 >> 32 < v157)
            {
              goto LABEL_424;
            }
          }

          sub_100014CEC(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014CEC(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014CEC(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
          v135 = sub_10003A0DC(v133, v134, v14 & 0x1FFFFFFFFFFFFFFFLL, v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014D40(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014D40(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014D40(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
          v130 = v154;
          v131 = v155;
          v132 = v156;
          if ((v135 & 1) == 0)
          {
            goto LABEL_382;
          }

          goto LABEL_333;
        }

LABEL_324:
        v130 = v154;
        v131 = v155;
        v132 = v156;
        goto LABEL_333;
      }

      v129 = *(v157 + 16);
      v128 = *(v157 + 24);
      v38 = __OFSUB__(v128, v129);
      v124 = v128 - v129;
      if (v38)
      {
        goto LABEL_411;
      }
    }

    else
    {
      if (!v122)
      {
        v124 = BYTE6(v14);
        if (v123 <= 1)
        {
          goto LABEL_314;
        }

        goto LABEL_301;
      }

      LODWORD(v124) = HIDWORD(v157) - v157;
      if (__OFSUB__(HIDWORD(v157), v157))
      {
        goto LABEL_412;
      }

      v124 = v124;
    }

    if (v123 <= 1)
    {
      goto LABEL_314;
    }

    goto LABEL_301;
  }

  if (v160 >> 32 < v160)
  {
    goto LABEL_423;
  }

  sub_100014CEC(v161, v92);
  sub_100014CEC(v161, v92);
  sub_100014CEC(v161, v92);
  v121 = sub_10003A0DC(v160, v160 >> 32, v162 & 0x3FFFFFFFFFFFFFFFLL, v161, v92);
  sub_100014D40(v161, v92);
  sub_100014D40(v161, v92);
  sub_100014D40(v161, v92);
  if (v121)
  {
    goto LABEL_291;
  }

LABEL_382:
  sub_1001F0CD8(&v179);
  sub_1001F0CD8(&v174);
  return 0;
}

uint64_t sub_1002C17F4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = a2 + 32;
    v44 = a2 + 32;
    v45 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        __break(1u);
        __break(1u);
LABEL_69:
        __break(1u);
        return result;
      }

      v6 = v4 + 96 * v3;
      v7 = (v5 + 96 * v3);
      if (*(v6 + 8) != v7[1])
      {
        return 0;
      }

      v8 = *v6;
      v9 = *v7;
      v10 = *(*v6 + 16);
      if (v10 != *(*v7 + 16))
      {
        return 0;
      }

      v11 = *(v6 + 16);
      v12 = *(v6 + 24);
      v13 = *(v6 + 32);
      v14 = *(v6 + 36);
      v15 = *(v6 + 40);
      v16 = *(v6 + 48);
      v17 = *(v6 + 56);
      v18 = *(v6 + 64);
      v19 = *(v6 + 72);
      result = *(v6 + 80);
      v20 = *(v6 + 84);
      v21 = *(v6 + 88);
      v22 = v7[2];
      v23 = *(v7 + 6);
      v24 = *(v7 + 8);
      v25 = *(v7 + 36);
      v26 = v7[5];
      v27 = *(v7 + 48);
      v28 = v7[7];
      v29 = *(v7 + 64);
      v30 = v7[9];
      v31 = *(v7 + 20);
      v46 = *(v7 + 21);
      v32 = *(v7 + 88);
      if (v10)
      {
        if (v8 != v9)
        {
          break;
        }
      }

LABEL_13:
      if ((v12 | (v12 << 32)) != (v23 | (v23 << 32)))
      {
        return 0;
      }

      v35 = *(v11 + 16);
      if (v35 != *(v22 + 16))
      {
        return 0;
      }

      if (v35 && v11 != v22)
      {
        v36 = (v11 + 32);
        v37 = (v22 + 32);
        while (*v36 == *v37)
        {
          ++v36;
          ++v37;
          if (!--v35)
          {
            goto LABEL_20;
          }
        }

        return 0;
      }

LABEL_20:
      if (v14)
      {
        if (!v25)
        {
          return 0;
        }
      }

      else
      {
        if (v13 == v24)
        {
          v38 = v25;
        }

        else
        {
          v38 = 1;
        }

        if (v38)
        {
          return 0;
        }
      }

      if (v16)
      {
        if (!v27)
        {
          return 0;
        }
      }

      else
      {
        if (v26 == v15)
        {
          v39 = v27;
        }

        else
        {
          v39 = 1;
        }

        if (v39)
        {
          return 0;
        }
      }

      if (v18)
      {
        if ((v29 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v29)
        {
          return 0;
        }

        if ((v28 | v17) < 0)
        {
          goto LABEL_69;
        }

        if (v28 != v17)
        {
          return 0;
        }
      }

      if (v19)
      {
        if (v19 == 1)
        {
          if (v30 != 1)
          {
            return 0;
          }
        }

        else if (v19 == 2)
        {
          if (v30 != 2)
          {
            return 0;
          }
        }

        else
        {
          if (v30 < 3)
          {
            return 0;
          }

          if ((result | (result << 32)) != (v31 | (v31 << 32)))
          {
            return 0;
          }

          v40 = *(v19 + 16);
          if (v40 != *(v30 + 16))
          {
            return 0;
          }

          if (v40 && v19 != v30)
          {
            v41 = (v19 + 32);
            v42 = (v30 + 32);
            while (*v41 == *v42)
            {
              ++v41;
              ++v42;
              if (!--v40)
              {
                goto LABEL_57;
              }
            }

            return 0;
          }
        }
      }

      else if (v30)
      {
        return 0;
      }

LABEL_57:
      if (v21)
      {
        v5 = v44;
        v4 = v45;
        if (!v32)
        {
          return 0;
        }
      }

      else
      {
        if (v20 == v46)
        {
          v43 = v32;
        }

        else
        {
          v43 = 1;
        }

        v5 = v44;
        v4 = v45;
        if (v43)
        {
          return 0;
        }
      }

      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v33 = (v8 + 32);
    v34 = (v9 + 32);
    while (*v33 == *v34)
    {
      ++v33;
      ++v34;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1002C1AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  if (*(a2 + 32) != *(a1 + 32))
  {
    return 0;
  }

  v3 = 0;
  do
  {
    if (*(a1 + v3 + 48) == 1)
    {
      if (!*(a2 + v3 + 48))
      {
        return 0;
      }
    }

    else if ((*(a2 + v3 + 48) & 1) != 0 || *(a1 + v3 + 40) != *(a2 + v3 + 40))
    {
      return 0;
    }

    if ((*(a1 + v3 + 49) ^ *(a2 + v3 + 49)))
    {
      break;
    }

    if (!--v2)
    {
      return 1;
    }

    v4 = a1 + v3;
    v5 = a2 + v3;
    v3 += 24;
  }

  while (*(v5 + 56) == *(v4 + 56));
  return 0;
}

uint64_t sub_1002C1B88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1002C1C40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v7 = *(v4 - 1);
    v6 = *v4;
    v8 = *(i - 1);
    v9 = *i;
    v10 = *v4 >> 62;
    v11 = *i >> 62;
    if (v10 == 3)
    {
      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *i >> 62 == 3;
      if (v14 && !v8 && v9 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v20 = *(v7 + 16);
        v19 = *(v7 + 24);
        v17 = __OFSUB__(v19, v20);
        v13 = v19 - v20;
        if (v17)
        {
          goto LABEL_118;
        }

        goto LABEL_28;
      }

      v13 = 0;
      if (v11 <= 1)
      {
        goto LABEL_29;
      }
    }

    else if (v10)
    {
      LODWORD(v13) = HIDWORD(v7) - v7;
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_119;
      }

      v13 = v13;
      if (v11 <= 1)
      {
LABEL_29:
        if (v11)
        {
          LODWORD(v18) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
          }

          v18 = v18;
        }

        else
        {
          v18 = BYTE6(v9);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v13 = BYTE6(v6);
      if (v11 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    if (v11 != 2)
    {
      if (v13)
      {
        return 0;
      }

      goto LABEL_6;
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (v17)
    {
      goto LABEL_117;
    }

LABEL_33:
    if (v13 != v18)
    {
      return 0;
    }

    if (v13 < 1)
    {
      goto LABEL_6;
    }

    if (v10 <= 1)
    {
      v66 = *(i - 1);
      if (!v10)
      {
        __s2[0] = *(v4 - 1);
        LOWORD(__s2[1]) = v6;
        BYTE2(__s2[1]) = BYTE2(v6);
        BYTE3(__s2[1]) = BYTE3(v6);
        BYTE4(__s2[1]) = BYTE4(v6);
        BYTE5(__s2[1]) = BYTE5(v6);
        sub_100014CEC(v7, v6);
        sub_100014CEC(v66, v9);
        sub_100066884(__s2, v66, v9, &v67);
        v21 = v66;
        goto LABEL_52;
      }

      v64 = v3;
      v26 = v7;
      if (v7 > v7 >> 32)
      {
        goto LABEL_120;
      }

      v65 = *(v4 - 1);
      sub_100014CEC(v7, v6);
      sub_100014CEC(v66, v9);
      v27 = sub_1004A40D4();
      if (v27)
      {
        v28 = v27;
        v29 = sub_1004A4104();
        if (__OFSUB__(v26, v29))
        {
          goto LABEL_122;
        }

        __s1a = (v26 - v29 + v28);
      }

      else
      {
        __s1a = 0;
      }

      sub_1004A40F4();
      v30 = v65;
      if (v11 == 2)
      {
        v48 = *(v66 + 16);
        v49 = *(v66 + 24);
        v36 = sub_1004A40D4();
        if (v36)
        {
          v50 = sub_1004A4104();
          if (__OFSUB__(v48, v50))
          {
            goto LABEL_129;
          }

          v36 += v48 - v50;
        }

        v17 = __OFSUB__(v49, v48);
        v51 = v49 - v48;
        if (v17)
        {
          goto LABEL_126;
        }

        v52 = sub_1004A40F4();
        if (v52 >= v51)
        {
          v39 = v51;
        }

        else
        {
          v39 = v52;
        }

        v40 = __s1a;
        v3 = v64;
        if (!__s1a)
        {
          goto LABEL_137;
        }

        if (!v36)
        {
          goto LABEL_136;
        }
      }

      else
      {
        v12 = v11 == 1;
        v31 = v66;
        if (!v12)
        {
          v47 = __s1a;
          __s2[0] = v66;
          LOWORD(__s2[1]) = v9;
          BYTE2(__s2[1]) = BYTE2(v9);
          BYTE3(__s2[1]) = BYTE3(v9);
          BYTE4(__s2[1]) = BYTE4(v9);
          BYTE5(__s2[1]) = BYTE5(v9);
          if (!__s1a)
          {
            goto LABEL_131;
          }

LABEL_94:
          v53 = memcmp(v47, __s2, BYTE6(v9));
          sub_100014D40(v31, v9);
          sub_100014D40(v30, v6);
          if (v53)
          {
            return 0;
          }

          goto LABEL_6;
        }

        if (v66 >> 32 < v66)
        {
          goto LABEL_125;
        }

        v36 = sub_1004A40D4();
        if (v36)
        {
          v37 = sub_1004A4104();
          if (__OFSUB__(v66, v37))
          {
            goto LABEL_130;
          }

          v36 += v66 - v37;
        }

        v38 = sub_1004A40F4();
        if (v38 >= (v66 >> 32) - v66)
        {
          v39 = (v66 >> 32) - v66;
        }

        else
        {
          v39 = v38;
        }

        v40 = __s1a;
        if (!__s1a)
        {
          goto LABEL_139;
        }

        if (!v36)
        {
          goto LABEL_138;
        }
      }

      goto LABEL_102;
    }

    if (v10 != 2)
    {
      memset(__s2, 0, 14);
      sub_100014CEC(v7, v6);
      sub_100014CEC(v8, v9);
      sub_100066884(__s2, v8, v9, &v67);
      v21 = v8;
LABEL_52:
      sub_100014D40(v21, v9);
      sub_100014D40(v7, v6);
      if (!v67)
      {
        return 0;
      }

      goto LABEL_6;
    }

    v63 = v3;
    v65 = *(v4 - 1);
    v22 = *(v7 + 16);
    sub_100014CEC(v7, v6);
    v66 = v8;
    sub_100014CEC(v8, v9);
    v23 = sub_1004A40D4();
    if (v23)
    {
      v24 = v23;
      v25 = sub_1004A4104();
      if (__OFSUB__(v22, v25))
      {
        goto LABEL_121;
      }

      __s1 = (v22 - v25 + v24);
    }

    else
    {
      __s1 = 0;
    }

    sub_1004A40F4();
    v30 = v65;
    if (v11 != 2)
    {
      break;
    }

    v41 = *(v8 + 16);
    v42 = *(v8 + 24);
    v43 = sub_1004A40D4();
    if (v43)
    {
      v44 = v43;
      v45 = sub_1004A4104();
      if (__OFSUB__(v41, v45))
      {
        goto LABEL_127;
      }

      v36 = v41 - v45 + v44;
      v17 = __OFSUB__(v42, v41);
      v46 = v42 - v41;
      if (v17)
      {
        goto LABEL_124;
      }
    }

    else
    {
      v36 = 0;
      v17 = __OFSUB__(v42, v41);
      v46 = v42 - v41;
      if (v17)
      {
        goto LABEL_124;
      }
    }

    v54 = sub_1004A40F4();
    if (v54 >= v46)
    {
      v39 = v46;
    }

    else
    {
      v39 = v54;
    }

    v40 = __s1;
    if (!__s1)
    {
      goto LABEL_135;
    }

    v3 = v63;
    if (!v36)
    {
      goto LABEL_134;
    }

LABEL_102:
    if (v40 == v36)
    {
      goto LABEL_111;
    }

    v55 = v39;
    v56 = v36;
LABEL_113:
    v59 = memcmp(v40, v56, v55);
    sub_100014D40(v66, v9);
    sub_100014D40(v65, v6);
    if (v59)
    {
      return 0;
    }

LABEL_6:
    v4 += 2;
    if (!--v2)
    {
      return 1;
    }
  }

  v12 = v11 == 1;
  v31 = v8;
  if (v12)
  {
    if (v8 >> 32 < v8)
    {
      goto LABEL_123;
    }

    v32 = sub_1004A40D4();
    if (v32)
    {
      v33 = v32;
      v34 = sub_1004A4104();
      if (__OFSUB__(v8, v34))
      {
        goto LABEL_128;
      }

      v35 = (v8 - v34 + v33);
    }

    else
    {
      v35 = 0;
    }

    v3 = v63;
    v57 = sub_1004A40F4();
    if (v57 >= (v8 >> 32) - v8)
    {
      v58 = (v8 >> 32) - v8;
    }

    else
    {
      v58 = v57;
    }

    v40 = __s1;
    if (!__s1)
    {
      goto LABEL_133;
    }

    if (!v35)
    {
      goto LABEL_132;
    }

    if (__s1 == v35)
    {
LABEL_111:
      sub_100014D40(v66, v9);
      sub_100014D40(v65, v6);
      goto LABEL_6;
    }

    v55 = v58;
    v56 = v35;
    goto LABEL_113;
  }

  v47 = __s1;
  __s2[0] = v8;
  LOWORD(__s2[1]) = v9;
  BYTE2(__s2[1]) = BYTE2(v9);
  BYTE3(__s2[1]) = BYTE3(v9);
  BYTE4(__s2[1]) = BYTE4(v9);
  BYTE5(__s2[1]) = BYTE5(v9);
  if (__s1)
  {
    goto LABEL_94;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1002C2370(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  for (i = 0; ; i += 32)
  {
    result = 0;
    v7 = a1 + i;
    v8 = a2 + i;
    if (*(a2 + i + 32) != *(a1 + i + 32) || ((*(v7 + 36) ^ *(v8 + 36)) & 1) != 0 || ((*(v7 + 37) ^ *(v8 + 37)) & 1) != 0 || ((*(v7 + 38) ^ *(v8 + 38)) & 1) != 0 || ((*(v7 + 39) ^ *(v8 + 39)) & 1) != 0 || ((*(v7 + 40) ^ *(v8 + 40)) & 1) != 0 || ((*(v7 + 41) ^ *(v8 + 41)) & 1) != 0 || *(v7 + 42) != *(v8 + 42) || *(v7 + 43) != *(v8 + 43) || ((*(v7 + 44) ^ *(v8 + 44)) & 1) != 0)
    {
      break;
    }

    v9 = *(v7 + 45);
    v10 = *(v8 + 45);
    if (v9 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v10 == 2)
      {
        return 0;
      }

      result = 0;
      v11 = v9 ^ v10;
      if ((v9 ^ v10))
      {
        return result;
      }

      v12 = (v10 & 0x100) == 0;
      v13 = (v10 & 0x10000) == 0;
      v14 = (v10 & 0x1000000) == 0;
      v15 = (v10 & &_mh_execute_header) == 0;
      v16 = (v10 & 0x10000000000) == 0;
      if (((v9 >> 8) & 1) == v12 || ((v9 >> 16) & 1) == v13 || ((v9 >> 24) & 1) == v14 || (BYTE4(v9) & 1) == v15 || ((v9 >> 40) & 1) == v16 || HIWORD(v11))
      {
        return result;
      }

      if ((*(v7 + 53) ^ *(v8 + 53)))
      {
        return 0;
      }
    }

    if ((sub_100083308(*(v7 + 56), *(v8 + 56)) & 1) == 0)
    {
      return 0;
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1002C2550(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 32;
    v6 = a2 + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_70;
      }

      v8 = (v5 + 40 * v3);
      v9 = (v6 + 40 * v3);
      if (*v8 != *v9)
      {
        return 0;
      }

      if (*(v9 + 1) != *(v8 + 1))
      {
        return 0;
      }

      if ((*(v8 + 4) | (*(v8 + 4) << 32)) != (*(v9 + 4) | (*(v9 + 4) << 32)))
      {
        return 0;
      }

      v10 = *(v8 + 1);
      v11 = *(v9 + 1);
      v12 = *(v10 + 16);
      if (v12 != *(v11 + 16))
      {
        return 0;
      }

      v14 = *(v8 + 3);
      v13 = *(v8 + 4);
      v15 = *(v9 + 3);
      v16 = *(v9 + 4);
      if (v12)
      {
        v17 = v10 == v11;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = (v10 + 32);
        v19 = (v11 + 32);
        while (v12)
        {
          if (*v18 != *v19)
          {
            return 0;
          }

          ++v18;
          ++v19;
          if (!--v12)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
      }

LABEL_21:
      v20 = v13 >> 62;
      v21 = v16 >> 62;
      if (v13 >> 62 == 3)
      {
        break;
      }

      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v28 = *(v14 + 16);
          v27 = *(v14 + 24);
          v25 = __OFSUB__(v27, v28);
          v22 = v27 - v28;
          if (v25)
          {
            goto LABEL_74;
          }

          goto LABEL_37;
        }

        v22 = 0;
        if (v21 <= 1)
        {
          goto LABEL_38;
        }
      }

      else if (v20)
      {
        LODWORD(v22) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_73;
        }

        v22 = v22;
        if (v21 <= 1)
        {
LABEL_38:
          if (v21)
          {
            LODWORD(v26) = HIDWORD(v15) - v15;
            if (__OFSUB__(HIDWORD(v15), v15))
            {
              goto LABEL_72;
            }

            v26 = v26;
          }

          else
          {
            v26 = BYTE6(v16);
          }

          goto LABEL_42;
        }
      }

      else
      {
        v22 = BYTE6(v13);
        if (v21 <= 1)
        {
          goto LABEL_38;
        }
      }

LABEL_31:
      if (v21 != 2)
      {
        if (v22)
        {
          return 0;
        }

        goto LABEL_7;
      }

      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (v25)
      {
        goto LABEL_71;
      }

LABEL_42:
      if (v22 != v26)
      {
        return 0;
      }

      if (v22 < 1)
      {
        goto LABEL_7;
      }

      v42 = v5;
      if (v20 > 1)
      {
        v40 = v15;
        if (v20 == 2)
        {
          v38 = v4;
          v39 = v6;
          v31 = *(v14 + 16);
          v37 = *(v14 + 24);

          sub_100014CEC(v14, v13);

          sub_100014CEC(v40, v16);
          v32 = sub_1004A40D4();
          if (v32)
          {
            v33 = sub_1004A4104();
            if (__OFSUB__(v31, v33))
            {
              goto LABEL_77;
            }

            v32 += v31 - v33;
          }

          if (__OFSUB__(v37, v31))
          {
            goto LABEL_76;
          }

          sub_1004A40F4();
          v34 = v40;
          v4 = v38;
          sub_100066884(v32, v40, v16, v44);
          goto LABEL_63;
        }

        memset(v44, 0, 14);

        sub_100014CEC(v14, v13);

        sub_100014CEC(v40, v16);
        sub_100066884(v44, v40, v16, &v43);

        sub_100014D40(v40, v16);

        sub_100014D40(v14, v13);
        v30 = v43;
      }

      else
      {
        v39 = v6;
        if (v20)
        {
          v41 = v15;
          if (v14 >> 32 < v14)
          {
            goto LABEL_75;
          }

          sub_100014CEC(v14, v13);

          sub_100014CEC(v41, v16);
          v35 = sub_1004A40D4();
          if (v35)
          {
            v36 = sub_1004A4104();
            if (__OFSUB__(v14, v36))
            {
              goto LABEL_78;
            }

            v35 += v14 - v36;
          }

          sub_1004A40F4();
          v34 = v41;
          sub_100066884(v35, v41, v16, v44);
LABEL_63:

          sub_100014D40(v34, v16);

          sub_100014D40(v14, v13);
          v5 = v42;
          v6 = v39;
          if ((v44[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_7;
        }

        v44[0] = v14;
        LOWORD(v44[1]) = v13;
        BYTE2(v44[1]) = BYTE2(v13);
        BYTE3(v44[1]) = BYTE3(v13);
        BYTE4(v44[1]) = BYTE4(v13);
        BYTE5(v44[1]) = BYTE5(v13);
        v29 = v15;

        sub_100014CEC(v14, v13);

        sub_100014CEC(v29, v16);
        sub_100066884(v44, v29, v16, &v43);

        sub_100014D40(v29, v16);

        sub_100014D40(v14, v13);
        v30 = v43;
        v6 = v39;
      }

      v5 = v42;
      if (!v30)
      {
        return 0;
      }

LABEL_7:
      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v22 = 0;
    if (!v14 && v13 == 0xC000000000000000 && v16 >> 62 == 3)
    {
      v22 = 0;
      if (!v15 && v16 == 0xC000000000000000)
      {
        goto LABEL_7;
      }
    }

LABEL_37:
    if (v21 <= 1)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  return 1;
}