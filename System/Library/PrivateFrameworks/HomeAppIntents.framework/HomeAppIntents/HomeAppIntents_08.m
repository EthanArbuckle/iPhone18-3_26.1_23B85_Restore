HomeAppIntents::SecuritySystemState_optional __swiftcall SecuritySystemState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SecuritySystemState.rawValue.getter()
{
  v1 = *v0;
  v2 = 6710895;
  v3 = 2036430689;
  v4 = 0x746867696ELL;
  if (v1 != 3)
  {
    v4 = 0x6572656767697274;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701670760;
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

uint64_t sub_2527CD8B4()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527CD980()
{
  *v0;
  *v0;
  *v0;
  sub_2528C0A40();
}

uint64_t sub_2527CDA38()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527CDB0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6710895;
  v5 = 0xE400000000000000;
  v6 = 2036430689;
  v7 = 0xE500000000000000;
  v8 = 0x746867696ELL;
  if (v2 != 3)
  {
    v8 = 0x6572656767697274;
    v7 = 0xE900000000000064;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701670760;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2527CDBB8(uint64_t a1)
{
  v2 = sub_2527D1D74();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CDC28(uint64_t a1)
{
  v2 = sub_2527D1D08();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CDCD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE6E8, &unk_2528CD8B0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD338, &qword_2528C7E20);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17F0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v11 = sub_2527900D0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FE010 = v11;
  return result;
}

HomeAppIntents::ThermostatMode_optional __swiftcall ThermostatMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ThermostatMode.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 1952540008;
  v4 = 1819242339;
  if (v1 != 4)
  {
    v4 = 1869903201;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6710895;
  if (v1 != 1)
  {
    v5 = 28271;
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

uint64_t sub_2527CDFE8()
{
  *v0;
  *v0;
  *v0;
  sub_2528C0A40();
}

void sub_2527CE0B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 1952540008;
  v6 = 1819242339;
  if (v2 != 4)
  {
    v6 = 1869903201;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v7 = 0xE300000000000000;
  v8 = 6710895;
  if (v2 != 1)
  {
    v8 = 28271;
    v7 = 0xE200000000000000;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2527CE168(uint64_t a1)
{
  v2 = sub_2527D21D0();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CE1D8(uint64_t a1)
{
  v2 = sub_2527D2164();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CE234()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FE018);
  __swift_project_value_buffer(v0, qword_27F4FE018);
  return sub_2528BE9D0();
}

uint64_t sub_2527CE2BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE6E0, &unk_2528CD8A0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD328, &qword_2528C7E10);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17F0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v11 = sub_2527902B8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FE030 = v11;
  return result;
}

HomeAppIntents::HumidifierDehumidifierMode_optional __swiftcall HumidifierDehumidifierMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HumidifierDehumidifierMode.rawValue.getter()
{
  v1 = *v0;
  v2 = 6710895;
  v3 = 0x6964696D75686564;
  v4 = 1869903201;
  if (v1 != 4)
  {
    v4 = 1701736302;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 28271;
  if (v1 != 1)
  {
    v5 = 0x79666964696D7568;
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

uint64_t sub_2527CE5F8()
{
  *v0;
  *v0;
  *v0;
  sub_2528C0A40();
}

void sub_2527CE6DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6710895;
  v5 = 0xEA00000000007966;
  v6 = 0x6964696D75686564;
  v7 = 1869903201;
  if (v2 != 4)
  {
    v7 = 1701736302;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0xE200000000000000;
  v9 = 28271;
  if (v2 != 1)
  {
    v9 = 0x79666964696D7568;
    v8 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_2527CE7A0(uint64_t a1)
{
  v2 = sub_2527D262C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CE810(uint64_t a1)
{
  v2 = sub_2527D25C0();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CE86C()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FE038);
  __swift_project_value_buffer(v0, qword_27F4FE038);
  return sub_2528BE9D0();
}

uint64_t sub_2527CE8F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE6D8, &unk_2528CD890);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD318, &qword_2528C7E00);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17E0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = sub_2527904A0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FE050 = v7;
  return result;
}

unint64_t RotationDirection.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x7369776B636F6C63;
  }

  *v0;
  return result;
}

uint64_t sub_2527CEAD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x7369776B636F6C63;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0x80000002528E4FB0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x7369776B636F6C63;
  }

  if (*a2)
  {
    v7 = 0x80000002528E4FB0;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2528C1060();
  }

  return v9 & 1;
}

uint64_t sub_2527CEB80()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527CEC0C()
{
  *v0;
  sub_2528C0A40();
}

uint64_t sub_2527CEC84()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527CED18(unint64_t *a1@<X8>)
{
  v2 = 0x80000002528E4FB0;
  v3 = 0x7369776B636F6C63;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE900000000000065;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2527CED84(uint64_t a1)
{
  v2 = sub_2527D2A88();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CEDF4(uint64_t a1)
{
  v2 = sub_2527D2A1C();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CEE98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE6D0, &unk_2528CD880);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD308, &qword_2528C7DF0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17E0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = sub_252790688(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FE070 = v7;
  return result;
}

uint64_t sub_2527CF01C@<X0>(char *a1@<X8>)
{
  v2 = sub_2528C0F30();

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

uint64_t DeltaType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6573616572636564;
  }

  else
  {
    return 0x6573616572636E69;
  }
}

unint64_t sub_2527CF0B4()
{
  result = qword_27F4FE078;
  if (!qword_27F4FE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE078);
  }

  return result;
}

unint64_t sub_2527CF10C()
{
  result = qword_27F4FE080;
  if (!qword_27F4FE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE080);
  }

  return result;
}

unint64_t sub_2527CF164()
{
  result = qword_27F4FE088;
  if (!qword_27F4FE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE088);
  }

  return result;
}

unint64_t sub_2527CF1BC()
{
  result = qword_27F4FE090;
  if (!qword_27F4FE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE090);
  }

  return result;
}

unint64_t sub_2527CF214()
{
  result = qword_27F4FE098;
  if (!qword_27F4FE098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE098);
  }

  return result;
}

unint64_t sub_2527CF268()
{
  result = qword_27F4FE0A0;
  if (!qword_27F4FE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0A0);
  }

  return result;
}

unint64_t sub_2527CF2BC()
{
  result = qword_27F4FE0A8;
  if (!qword_27F4FE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0A8);
  }

  return result;
}

unint64_t sub_2527CF314()
{
  result = qword_27F4FE0B0;
  if (!qword_27F4FE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0B0);
  }

  return result;
}

unint64_t sub_2527CF380()
{
  result = qword_27F4FE0B8;
  if (!qword_27F4FE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0B8);
  }

  return result;
}

unint64_t sub_2527CF3D8()
{
  result = qword_27F4FE0C0;
  if (!qword_27F4FE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0C0);
  }

  return result;
}

unint64_t sub_2527CF430()
{
  result = qword_27F4FE0C8;
  if (!qword_27F4FE0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0C8);
  }

  return result;
}

unint64_t sub_2527CF488()
{
  result = qword_27F4FE0D0;
  if (!qword_27F4FE0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0D0);
  }

  return result;
}

unint64_t sub_2527CF510()
{
  result = qword_27F4FE0E8;
  if (!qword_27F4FE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0E8);
  }

  return result;
}

unint64_t sub_2527CF568()
{
  result = qword_27F4FE0F0;
  if (!qword_27F4FE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0F0);
  }

  return result;
}

unint64_t sub_2527CF5C0()
{
  result = qword_27F4FE0F8;
  if (!qword_27F4FE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE0F8);
  }

  return result;
}

unint64_t sub_2527CF618()
{
  result = qword_27F4FE100;
  if (!qword_27F4FE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE100);
  }

  return result;
}

unint64_t sub_2527CF670()
{
  result = qword_27F4FE108;
  if (!qword_27F4FE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE108);
  }

  return result;
}

unint64_t sub_2527CF6C4()
{
  result = qword_27F4FE110;
  if (!qword_27F4FE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE110);
  }

  return result;
}

unint64_t sub_2527CF718()
{
  result = qword_27F4FE118;
  if (!qword_27F4FE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE118);
  }

  return result;
}

unint64_t sub_2527CF770()
{
  result = qword_27F4FE120;
  if (!qword_27F4FE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE120);
  }

  return result;
}

unint64_t sub_2527CF7DC()
{
  result = qword_27F4FE128;
  if (!qword_27F4FE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE128);
  }

  return result;
}

unint64_t sub_2527CF834()
{
  result = qword_27F4FE130;
  if (!qword_27F4FE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE130);
  }

  return result;
}

unint64_t sub_2527CF88C()
{
  result = qword_27F4FE138;
  if (!qword_27F4FE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE138);
  }

  return result;
}

unint64_t sub_2527CF8E4()
{
  result = qword_27F4FE140;
  if (!qword_27F4FE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE140);
  }

  return result;
}

unint64_t sub_2527CF96C()
{
  result = qword_27F4FE158;
  if (!qword_27F4FE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE158);
  }

  return result;
}

unint64_t sub_2527CF9C4()
{
  result = qword_27F4FE160;
  if (!qword_27F4FE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE160);
  }

  return result;
}

unint64_t sub_2527CFA1C()
{
  result = qword_27F4FE168;
  if (!qword_27F4FE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE168);
  }

  return result;
}

unint64_t sub_2527CFA74()
{
  result = qword_27F4FE170;
  if (!qword_27F4FE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE170);
  }

  return result;
}

unint64_t sub_2527CFACC()
{
  result = qword_27F4FE178;
  if (!qword_27F4FE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE178);
  }

  return result;
}

unint64_t sub_2527CFB20()
{
  result = qword_27F4FE180;
  if (!qword_27F4FE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE180);
  }

  return result;
}

unint64_t sub_2527CFB74()
{
  result = qword_27F4FE188;
  if (!qword_27F4FE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE188);
  }

  return result;
}

unint64_t sub_2527CFBCC()
{
  result = qword_27F4FE190;
  if (!qword_27F4FE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE190);
  }

  return result;
}

unint64_t sub_2527CFC38()
{
  result = qword_27F4FE198;
  if (!qword_27F4FE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE198);
  }

  return result;
}

unint64_t sub_2527CFC90()
{
  result = qword_27F4FE1A0;
  if (!qword_27F4FE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1A0);
  }

  return result;
}

unint64_t sub_2527CFCE8()
{
  result = qword_27F4FE1A8;
  if (!qword_27F4FE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1A8);
  }

  return result;
}

unint64_t sub_2527CFD40()
{
  result = qword_27F4FE1B0;
  if (!qword_27F4FE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1B0);
  }

  return result;
}

unint64_t sub_2527CFDC8()
{
  result = qword_27F4FE1C8;
  if (!qword_27F4FE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1C8);
  }

  return result;
}

unint64_t sub_2527CFE20()
{
  result = qword_27F4FE1D0;
  if (!qword_27F4FE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1D0);
  }

  return result;
}

unint64_t sub_2527CFE78()
{
  result = qword_27F4FE1D8;
  if (!qword_27F4FE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1D8);
  }

  return result;
}

unint64_t sub_2527CFED0()
{
  result = qword_27F4FE1E0;
  if (!qword_27F4FE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1E0);
  }

  return result;
}

unint64_t sub_2527CFF28()
{
  result = qword_27F4FE1E8;
  if (!qword_27F4FE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1E8);
  }

  return result;
}

unint64_t sub_2527CFF7C()
{
  result = qword_27F4FE1F0;
  if (!qword_27F4FE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1F0);
  }

  return result;
}

unint64_t sub_2527CFFD0()
{
  result = qword_27F4FE1F8;
  if (!qword_27F4FE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE1F8);
  }

  return result;
}

unint64_t sub_2527D0028()
{
  result = qword_27F4FE200;
  if (!qword_27F4FE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE200);
  }

  return result;
}

unint64_t sub_2527D0094()
{
  result = qword_27F4FE208;
  if (!qword_27F4FE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE208);
  }

  return result;
}

unint64_t sub_2527D00EC()
{
  result = qword_27F4FE210;
  if (!qword_27F4FE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE210);
  }

  return result;
}

unint64_t sub_2527D0144()
{
  result = qword_27F4FE218;
  if (!qword_27F4FE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE218);
  }

  return result;
}

unint64_t sub_2527D019C()
{
  result = qword_27F4FE220;
  if (!qword_27F4FE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE220);
  }

  return result;
}

unint64_t sub_2527D0224()
{
  result = qword_27F4FE238;
  if (!qword_27F4FE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE238);
  }

  return result;
}

unint64_t sub_2527D027C()
{
  result = qword_27F4FE240;
  if (!qword_27F4FE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE240);
  }

  return result;
}

unint64_t sub_2527D02D4()
{
  result = qword_27F4FE248;
  if (!qword_27F4FE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE248);
  }

  return result;
}

unint64_t sub_2527D032C()
{
  result = qword_27F4FE250;
  if (!qword_27F4FE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE250);
  }

  return result;
}

unint64_t sub_2527D0384()
{
  result = qword_27F4FE258;
  if (!qword_27F4FE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE258);
  }

  return result;
}

unint64_t sub_2527D03D8()
{
  result = qword_27F4FE260;
  if (!qword_27F4FE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE260);
  }

  return result;
}

unint64_t sub_2527D042C()
{
  result = qword_27F4FE268;
  if (!qword_27F4FE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE268);
  }

  return result;
}

unint64_t sub_2527D0484()
{
  result = qword_27F4FE270;
  if (!qword_27F4FE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE270);
  }

  return result;
}

unint64_t sub_2527D04F0()
{
  result = qword_27F4FE278;
  if (!qword_27F4FE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE278);
  }

  return result;
}

unint64_t sub_2527D0548()
{
  result = qword_27F4FE280;
  if (!qword_27F4FE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE280);
  }

  return result;
}

unint64_t sub_2527D05A0()
{
  result = qword_27F4FE288;
  if (!qword_27F4FE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE288);
  }

  return result;
}

unint64_t sub_2527D05F8()
{
  result = qword_27F4FE290;
  if (!qword_27F4FE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE290);
  }

  return result;
}

unint64_t sub_2527D0680()
{
  result = qword_27F4FE2A8;
  if (!qword_27F4FE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2A8);
  }

  return result;
}

unint64_t sub_2527D06D8()
{
  result = qword_27F4FE2B0;
  if (!qword_27F4FE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2B0);
  }

  return result;
}

unint64_t sub_2527D0730()
{
  result = qword_27F4FE2B8;
  if (!qword_27F4FE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2B8);
  }

  return result;
}

unint64_t sub_2527D0788()
{
  result = qword_27F4FE2C0;
  if (!qword_27F4FE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2C0);
  }

  return result;
}

unint64_t sub_2527D07E0()
{
  result = qword_27F4FE2C8;
  if (!qword_27F4FE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2C8);
  }

  return result;
}

unint64_t sub_2527D0834()
{
  result = qword_27F4FE2D0;
  if (!qword_27F4FE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2D0);
  }

  return result;
}

unint64_t sub_2527D0888()
{
  result = qword_27F4FE2D8;
  if (!qword_27F4FE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2D8);
  }

  return result;
}

unint64_t sub_2527D08E0()
{
  result = qword_27F4FE2E0;
  if (!qword_27F4FE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2E0);
  }

  return result;
}

unint64_t sub_2527D094C()
{
  result = qword_27F4FE2E8;
  if (!qword_27F4FE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2E8);
  }

  return result;
}

unint64_t sub_2527D09A4()
{
  result = qword_27F4FE2F0;
  if (!qword_27F4FE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2F0);
  }

  return result;
}

unint64_t sub_2527D09FC()
{
  result = qword_27F4FE2F8;
  if (!qword_27F4FE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE2F8);
  }

  return result;
}

unint64_t sub_2527D0A54()
{
  result = qword_27F4FE300;
  if (!qword_27F4FE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE300);
  }

  return result;
}

unint64_t sub_2527D0ADC()
{
  result = qword_27F4FE318;
  if (!qword_27F4FE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE318);
  }

  return result;
}

unint64_t sub_2527D0B34()
{
  result = qword_27F4FE320;
  if (!qword_27F4FE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE320);
  }

  return result;
}

unint64_t sub_2527D0B8C()
{
  result = qword_27F4FE328;
  if (!qword_27F4FE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE328);
  }

  return result;
}

unint64_t sub_2527D0BE4()
{
  result = qword_27F4FE330;
  if (!qword_27F4FE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE330);
  }

  return result;
}

unint64_t sub_2527D0C3C()
{
  result = qword_27F4FE338;
  if (!qword_27F4FE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE338);
  }

  return result;
}

unint64_t sub_2527D0C90()
{
  result = qword_27F4FE340;
  if (!qword_27F4FE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE340);
  }

  return result;
}

unint64_t sub_2527D0CE4()
{
  result = qword_27F4FE348;
  if (!qword_27F4FE348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE348);
  }

  return result;
}

unint64_t sub_2527D0D3C()
{
  result = qword_27F4FE350;
  if (!qword_27F4FE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE350);
  }

  return result;
}

unint64_t sub_2527D0DA8()
{
  result = qword_27F4FE358;
  if (!qword_27F4FE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE358);
  }

  return result;
}

unint64_t sub_2527D0E00()
{
  result = qword_27F4FE360;
  if (!qword_27F4FE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE360);
  }

  return result;
}

unint64_t sub_2527D0E58()
{
  result = qword_27F4FE368;
  if (!qword_27F4FE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE368);
  }

  return result;
}

unint64_t sub_2527D0EB0()
{
  result = qword_27F4FE370;
  if (!qword_27F4FE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE370);
  }

  return result;
}

unint64_t sub_2527D0F38()
{
  result = qword_27F4FE388;
  if (!qword_27F4FE388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE388);
  }

  return result;
}

unint64_t sub_2527D0F90()
{
  result = qword_27F4FE390;
  if (!qword_27F4FE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE390);
  }

  return result;
}

unint64_t sub_2527D0FE8()
{
  result = qword_27F4FE398;
  if (!qword_27F4FE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE398);
  }

  return result;
}

unint64_t sub_2527D1040()
{
  result = qword_27F4FE3A0;
  if (!qword_27F4FE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3A0);
  }

  return result;
}

unint64_t sub_2527D1098()
{
  result = qword_27F4FE3A8;
  if (!qword_27F4FE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3A8);
  }

  return result;
}

unint64_t sub_2527D10EC()
{
  result = qword_27F4FE3B0;
  if (!qword_27F4FE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3B0);
  }

  return result;
}

unint64_t sub_2527D1140()
{
  result = qword_27F4FE3B8;
  if (!qword_27F4FE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3B8);
  }

  return result;
}

unint64_t sub_2527D1198()
{
  result = qword_27F4FE3C0;
  if (!qword_27F4FE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3C0);
  }

  return result;
}

unint64_t sub_2527D1208()
{
  result = qword_27F4FE3C8;
  if (!qword_27F4FE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3C8);
  }

  return result;
}

unint64_t sub_2527D1260()
{
  result = qword_27F4FE3D0;
  if (!qword_27F4FE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3D0);
  }

  return result;
}

unint64_t sub_2527D12EC()
{
  result = qword_27F4FE3E0;
  if (!qword_27F4FE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3E0);
  }

  return result;
}

unint64_t sub_2527D1344()
{
  result = qword_27F4FE3E8;
  if (!qword_27F4FE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3E8);
  }

  return result;
}

unint64_t sub_2527D139C()
{
  result = qword_27F4FE3F0;
  if (!qword_27F4FE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3F0);
  }

  return result;
}

unint64_t sub_2527D13F4()
{
  result = qword_27F4FE3F8;
  if (!qword_27F4FE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE3F8);
  }

  return result;
}

unint64_t sub_2527D144C()
{
  result = qword_27F4FE400;
  if (!qword_27F4FE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE400);
  }

  return result;
}

unint64_t sub_2527D14A0()
{
  result = qword_27F4FE408;
  if (!qword_27F4FE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE408);
  }

  return result;
}

unint64_t sub_2527D14F4()
{
  result = qword_27F4FE410;
  if (!qword_27F4FE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE410);
  }

  return result;
}

unint64_t sub_2527D154C()
{
  result = qword_27F4FE418;
  if (!qword_27F4FE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE418);
  }

  return result;
}

unint64_t sub_2527D15BC()
{
  result = qword_27F4FE420;
  if (!qword_27F4FE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE420);
  }

  return result;
}

unint64_t sub_2527D1614()
{
  result = qword_27F4FE428;
  if (!qword_27F4FE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE428);
  }

  return result;
}

unint64_t sub_2527D166C()
{
  result = qword_27F4FE430;
  if (!qword_27F4FE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE430);
  }

  return result;
}

unint64_t sub_2527D16F4()
{
  result = qword_27F4FE448;
  if (!qword_27F4FE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE448);
  }

  return result;
}

unint64_t sub_2527D174C()
{
  result = qword_27F4FE450;
  if (!qword_27F4FE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE450);
  }

  return result;
}

unint64_t sub_2527D17A4()
{
  result = qword_27F4FE458;
  if (!qword_27F4FE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE458);
  }

  return result;
}

unint64_t sub_2527D17FC()
{
  result = qword_27F4FE460;
  if (!qword_27F4FE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE460);
  }

  return result;
}

unint64_t sub_2527D1854()
{
  result = qword_27F4FE468;
  if (!qword_27F4FE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE468);
  }

  return result;
}

unint64_t sub_2527D18A8()
{
  result = qword_27F4FE470;
  if (!qword_27F4FE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE470);
  }

  return result;
}

unint64_t sub_2527D18FC()
{
  result = qword_27F4FE478;
  if (!qword_27F4FE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE478);
  }

  return result;
}

unint64_t sub_2527D1954()
{
  result = qword_27F4FE480;
  if (!qword_27F4FE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE480);
  }

  return result;
}

unint64_t sub_2527D19C4()
{
  result = qword_27F4FE488;
  if (!qword_27F4FE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE488);
  }

  return result;
}

unint64_t sub_2527D1A1C()
{
  result = qword_27F4FE490;
  if (!qword_27F4FE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE490);
  }

  return result;
}

unint64_t sub_2527D1AA8()
{
  result = qword_27F4FE4A8;
  if (!qword_27F4FE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4A8);
  }

  return result;
}

unint64_t sub_2527D1B00()
{
  result = qword_27F4FE4B0;
  if (!qword_27F4FE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4B0);
  }

  return result;
}

unint64_t sub_2527D1B58()
{
  result = qword_27F4FE4B8;
  if (!qword_27F4FE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4B8);
  }

  return result;
}

unint64_t sub_2527D1BB0()
{
  result = qword_27F4FE4C0;
  if (!qword_27F4FE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4C0);
  }

  return result;
}

unint64_t sub_2527D1C08()
{
  result = qword_27F4FE4C8;
  if (!qword_27F4FE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4C8);
  }

  return result;
}

unint64_t sub_2527D1C5C()
{
  result = qword_27F4FE4D0;
  if (!qword_27F4FE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4D0);
  }

  return result;
}

unint64_t sub_2527D1CB0()
{
  result = qword_27F4FE4D8;
  if (!qword_27F4FE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4D8);
  }

  return result;
}

unint64_t sub_2527D1D08()
{
  result = qword_27F4FE4E0;
  if (!qword_27F4FE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4E0);
  }

  return result;
}

unint64_t sub_2527D1D74()
{
  result = qword_27F4FE4E8;
  if (!qword_27F4FE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4E8);
  }

  return result;
}

unint64_t sub_2527D1DCC()
{
  result = qword_27F4FE4F0;
  if (!qword_27F4FE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4F0);
  }

  return result;
}

unint64_t sub_2527D1E24()
{
  result = qword_27F4FE4F8;
  if (!qword_27F4FE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE4F8);
  }

  return result;
}

unint64_t sub_2527D1E7C()
{
  result = qword_27F4FE500;
  if (!qword_27F4FE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE500);
  }

  return result;
}

unint64_t sub_2527D1F04()
{
  result = qword_27F4FE518;
  if (!qword_27F4FE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE518);
  }

  return result;
}

unint64_t sub_2527D1F5C()
{
  result = qword_27F4FE520;
  if (!qword_27F4FE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE520);
  }

  return result;
}

unint64_t sub_2527D1FB4()
{
  result = qword_27F4FE528;
  if (!qword_27F4FE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE528);
  }

  return result;
}

unint64_t sub_2527D200C()
{
  result = qword_27F4FE530;
  if (!qword_27F4FE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE530);
  }

  return result;
}

unint64_t sub_2527D2064()
{
  result = qword_27F4FE538;
  if (!qword_27F4FE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE538);
  }

  return result;
}

unint64_t sub_2527D20B8()
{
  result = qword_27F4FE540;
  if (!qword_27F4FE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE540);
  }

  return result;
}

unint64_t sub_2527D210C()
{
  result = qword_27F4FE548;
  if (!qword_27F4FE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE548);
  }

  return result;
}

unint64_t sub_2527D2164()
{
  result = qword_27F4FE550;
  if (!qword_27F4FE550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE550);
  }

  return result;
}

unint64_t sub_2527D21D0()
{
  result = qword_27F4FE558;
  if (!qword_27F4FE558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE558);
  }

  return result;
}

unint64_t sub_2527D2228()
{
  result = qword_27F4FE560;
  if (!qword_27F4FE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE560);
  }

  return result;
}

unint64_t sub_2527D2280()
{
  result = qword_27F4FE568;
  if (!qword_27F4FE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE568);
  }

  return result;
}

unint64_t sub_2527D22D8()
{
  result = qword_27F4FE570;
  if (!qword_27F4FE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE570);
  }

  return result;
}

unint64_t sub_2527D2360()
{
  result = qword_27F4FE588;
  if (!qword_27F4FE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE588);
  }

  return result;
}

unint64_t sub_2527D23B8()
{
  result = qword_27F4FE590;
  if (!qword_27F4FE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE590);
  }

  return result;
}

unint64_t sub_2527D2410()
{
  result = qword_27F4FE598;
  if (!qword_27F4FE598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE598);
  }

  return result;
}

unint64_t sub_2527D2468()
{
  result = qword_27F4FE5A0;
  if (!qword_27F4FE5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5A0);
  }

  return result;
}

unint64_t sub_2527D24C0()
{
  result = qword_27F4FE5A8;
  if (!qword_27F4FE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5A8);
  }

  return result;
}

unint64_t sub_2527D2514()
{
  result = qword_27F4FE5B0;
  if (!qword_27F4FE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5B0);
  }

  return result;
}

unint64_t sub_2527D2568()
{
  result = qword_27F4FE5B8;
  if (!qword_27F4FE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5B8);
  }

  return result;
}

unint64_t sub_2527D25C0()
{
  result = qword_27F4FE5C0;
  if (!qword_27F4FE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5C0);
  }

  return result;
}

unint64_t sub_2527D262C()
{
  result = qword_27F4FE5C8;
  if (!qword_27F4FE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5C8);
  }

  return result;
}

unint64_t sub_2527D2684()
{
  result = qword_27F4FE5D0;
  if (!qword_27F4FE5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5D0);
  }

  return result;
}

unint64_t sub_2527D26DC()
{
  result = qword_27F4FE5D8;
  if (!qword_27F4FE5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5D8);
  }

  return result;
}

unint64_t sub_2527D2734()
{
  result = qword_27F4FE5E0;
  if (!qword_27F4FE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5E0);
  }

  return result;
}

unint64_t sub_2527D27BC()
{
  result = qword_27F4FE5F8;
  if (!qword_27F4FE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE5F8);
  }

  return result;
}

unint64_t sub_2527D2814()
{
  result = qword_27F4FE600;
  if (!qword_27F4FE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE600);
  }

  return result;
}

unint64_t sub_2527D286C()
{
  result = qword_27F4FE608;
  if (!qword_27F4FE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE608);
  }

  return result;
}

unint64_t sub_2527D28C4()
{
  result = qword_27F4FE610;
  if (!qword_27F4FE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE610);
  }

  return result;
}

unint64_t sub_2527D291C()
{
  result = qword_27F4FE618;
  if (!qword_27F4FE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE618);
  }

  return result;
}

unint64_t sub_2527D2970()
{
  result = qword_27F4FE620;
  if (!qword_27F4FE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE620);
  }

  return result;
}

unint64_t sub_2527D29C4()
{
  result = qword_27F4FE628;
  if (!qword_27F4FE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE628);
  }

  return result;
}

unint64_t sub_2527D2A1C()
{
  result = qword_27F4FE630;
  if (!qword_27F4FE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE630);
  }

  return result;
}

unint64_t sub_2527D2A88()
{
  result = qword_27F4FE638;
  if (!qword_27F4FE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE638);
  }

  return result;
}

unint64_t sub_2527D2AE0()
{
  result = qword_27F4FE640;
  if (!qword_27F4FE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE640);
  }

  return result;
}

unint64_t sub_2527D2B38()
{
  result = qword_27F4FE648;
  if (!qword_27F4FE648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE648);
  }

  return result;
}

unint64_t sub_2527D2B90()
{
  result = qword_27F4FE650;
  if (!qword_27F4FE650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE650);
  }

  return result;
}

void sub_2527D2C20(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

unint64_t sub_2527D2C50()
{
  result = qword_27F4FE668;
  if (!qword_27F4FE668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE668);
  }

  return result;
}

unint64_t sub_2527D2CA8()
{
  result = qword_27F4FE670;
  if (!qword_27F4FE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE670);
  }

  return result;
}

unint64_t sub_2527D2D00()
{
  result = qword_27F4FE678;
  if (!qword_27F4FE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE678);
  }

  return result;
}

unint64_t sub_2527D2D58()
{
  result = qword_27F4FE680;
  if (!qword_27F4FE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE680);
  }

  return result;
}

uint64_t sub_2527D2DAC()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527D2E18()
{
  *v0;
  sub_2528C0A40();
}

uint64_t sub_2527D2E68()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527D2ED0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2528C1060();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_2527D2F50()
{
  result = qword_27F4FE688;
  if (!qword_27F4FE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE688);
  }

  return result;
}

unint64_t sub_2527D2FA4()
{
  result = qword_27F4FE690;
  if (!qword_27F4FE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE690);
  }

  return result;
}

unint64_t sub_2527D2FF8()
{
  result = qword_27F4FE698;
  if (!qword_27F4FE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE698);
  }

  return result;
}

unint64_t sub_2527D3050()
{
  result = qword_27F4FE6A0;
  if (!qword_27F4FE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE6A0);
  }

  return result;
}

uint64_t sub_2527D3134(uint64_t a1)
{
  v2 = sub_25277AE58();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_2527D3184()
{
  result = qword_27F4FE6A8;
  if (!qword_27F4FE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE6A8);
  }

  return result;
}

unint64_t sub_2527D31DC()
{
  result = qword_27F4FE6B0;
  if (!qword_27F4FE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE6B0);
  }

  return result;
}

unint64_t sub_2527D3234()
{
  result = qword_27F4FE6B8;
  if (!qword_27F4FE6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE6B8);
  }

  return result;
}

uint64_t sub_2527D32AC(uint64_t a1)
{
  v2 = sub_2527D3050();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t getEnumTagSinglePayload for RobotVacuumCleanerCleanMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RobotVacuumCleanerCleanMode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RobotVacuumCleanerRunState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RobotVacuumCleanerRunState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GetDeviceInfoEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GetDeviceInfoEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2527D387C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_2528C0E00();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 63;
  }

  else
  {
    result = sub_252868FC0(result, *(a1 + 36), a1, &v7);
    v6 = v7;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_2527D38F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = -1 << *(a1 + 32);
  v9 = sub_2528C0E00();
  if (v9 == 1 << *(a1 + 32))
  {
    v10 = *(v15 + 56);

    return v10(a2, 1, 1, v4);
  }

  else
  {
    v12 = *(v4 + 48);
    sub_2527D63AC(v7, &v7[v12], v9, *(a1 + 36), 0, a1);
    v13 = sub_2528BECF0();
    (*(*(v13 - 8) + 32))(a2, v7, v13);
    sub_2527D71D8(&v7[v12], a2 + *(v4 + 48));
    return (*(v15 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_2527D3AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_2528C0E00();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_252869014(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = sub_2528BECF0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_2527D3B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25272006C(a3, v27 - v11, &qword_27F4FCDA0, &unk_2528C6AC0);
  v13 = sub_2528C0C40();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_2528BEA50();
  if (v15 == 1)
  {
    sub_2527213D8(v12, &qword_27F4FCDA0, &unk_2528C6AC0);
  }

  else
  {
    sub_2528C0C30();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2528C0BD0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2528C0A30() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_2528BEA50();
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2527213D8(a3, &qword_27F4FCDA0, &unk_2528C6AC0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2527213D8(a3, &qword_27F4FCDA0, &unk_2528C6AC0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2527D3E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25272006C(a3, v27 - v11, &qword_27F4FCDA0, &unk_2528C6AC0);
  v13 = sub_2528C0C40();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_2528BEA50();
  if (v15 == 1)
  {
    sub_2527213D8(v12, &qword_27F4FCDA0, &unk_2528C6AC0);
  }

  else
  {
    sub_2528C0C30();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2528C0BD0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2528C0A30() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_2528BEA50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE848, &qword_2528CDDE8);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_2527213D8(a3, &qword_27F4FCDA0, &unk_2528C6AC0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2527213D8(a3, &qword_27F4FCDA0, &unk_2528C6AC0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE848, &qword_2528CDDE8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2527D4188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25272006C(a3, v27 - v11, &qword_27F4FCDA0, &unk_2528C6AC0);
  v13 = sub_2528C0C40();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_2528BEA50();
  if (v15 == 1)
  {
    sub_2527213D8(v12, &qword_27F4FCDA0, &unk_2528C6AC0);
  }

  else
  {
    sub_2528C0C30();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2528C0BD0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2528C0A30() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_2528BEA50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE838, &qword_2528CDDB8);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_2527213D8(a3, &qword_27F4FCDA0, &unk_2528C6AC0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2527213D8(a3, &qword_27F4FCDA0, &unk_2528C6AC0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE838, &qword_2528CDDB8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2527D449C()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F4FE748);
  __swift_project_value_buffer(v0, qword_27F4FE748);
  return sub_2528BEC20();
}

uint64_t sub_2527D4570(char *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = *a1;
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

uint64_t ShowErrorIntent.destination.setter(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_2528BE7A0();
}

uint64_t (*ShowErrorIntent.destination.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2528BE780();
  return sub_25272EE48;
}

uint64_t sub_2527D46BC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

void (*ShowErrorIntent.errorDisplayType.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2528BE780();
  return sub_2527D72A4;
}

uint64_t ShowErrorIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v34 = sub_2528BE950();
  v1 = *(v34 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v25[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25[-v13];
  v15 = sub_2528BEC40();
  v31 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE780, &qword_2528CD970);
  sub_2528BEC20();
  v30 = *(v16 + 56);
  v30(v14, 1, 1, v15);
  v36 = 4;
  v18 = sub_2528BE630();
  v19 = *(*(v18 - 8) + 56);
  v20 = v10;
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  v26 = *MEMORY[0x277CBA308];
  v21 = *(v1 + 104);
  v27 = v1 + 104;
  v28 = v21;
  v21(v33);
  sub_2527233F0();
  v22 = sub_2528BE7D0();
  v23 = v32;
  *v32 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE788, &qword_2528CD978);
  sub_2528BEC20();
  v30(v14, 1, 1, v31);
  v35 = 1;
  v19(v20, 1, 1, v18);
  v19(v8, 1, 1, v18);
  v28(v33, v26, v34);
  sub_2527D601C();
  result = sub_2528BE7D0();
  v23[1] = result;
  return result;
}

uint64_t ShowErrorIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0) - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v6 = sub_2528BF400();
  *(v2 + 64) = v6;
  v7 = *(v6 - 8);
  *(v2 + 72) = v7;
  *(v2 + 80) = *(v7 + 64);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  *(v2 + 120) = v10;
  *(v2 + 128) = *(v10 + 64);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  v11 = sub_2528BE8B0();
  *(v2 + 152) = v11;
  v12 = *(v11 - 8);
  *(v2 + 160) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = *v1;

  return MEMORY[0x2822009F8](sub_2527D4EA4, 0, 0);
}

uint64_t sub_2527D4EA4()
{
  v27 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = sub_2528C08B0();
  *(v0 + 192) = __swift_project_value_buffer(v3, qword_27F5025C8);
  sub_2528BEA50();
  sub_2528BEA50();
  v4 = sub_2528C0890();
  v5 = sub_2528C0D10();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315394;
    sub_2528BE790();
    *(v0 + 218) = *(v0 + 217);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE7A8, &unk_2528CD998);
    v10 = sub_2528C0DB0();
    v12 = sub_2527389AC(v10, v11, &v26);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    sub_2528BE790();
    *(v8 + 14) = sub_2527389AC(0x636972656E6567, 0xE700000000000000, &v26);
    _os_log_impl(&dword_252711000, v4, v5, "Show Error Intent perform() called - destination: %s errorDisplayType: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v9, -1, -1);
    MEMORY[0x2530A8D80](v8, -1, -1);
  }

  v14 = *(v0 + 160);
  v13 = *(v0 + 168);
  v16 = *(v0 + 144);
  v15 = *(v0 + 152);
  v17 = *(v0 + 104);
  v18 = *(v0 + 112);
  v25 = *(v0 + 176);
  sub_2528BE790();
  *(v0 + 219) = *(v0 + 216);
  *(v0 + 16) = v25;
  sub_2527D6070();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v14 + 8))(v13, v15);
  v19 = type metadata accessor for HomeEntity(0);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = sub_2528C05D0();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  *v21 = v0;
  v21[1] = sub_2527D51F8;
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);

  return sub_25277ECE4(v23, 0, 0, v22);
}

uint64_t sub_2527D51F8(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 208) = a1;

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2527D5354, 0, 0);
}

uint64_t sub_2527D5354()
{
  v1 = *(v0 + 48);
  sub_2527D38F8(*(v0 + 208), v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  if (v3 == 1)
  {
    sub_2527213D8(v6, &qword_27F4FCDA8, &unk_2528C5CB0);
    (*(v5 + 56))(v7, 1, 1, v4);
  }

  else
  {
    v8 = *(v2 + 48);
    v9 = *(v5 + 16);
    v10 = *(v0 + 48);
    v9(*(v0 + 56), v6 + v8, *(v0 + 64));
    sub_2527D6704(v10 + v8);
    (*(v5 + 56))(v7, 0, 1, v4);
    v11 = sub_2528BECF0();
    (*(*(v11 - 8) + 8))(v10, v11);
    if ((*(v5 + 48))(v7, 1, v4) != 1)
    {
      v44 = *(v0 + 219);
      v24 = *(v0 + 144);
      v40 = *(v0 + 136);
      v25 = *(v0 + 120);
      v46 = *(v0 + 168);
      v47 = *(v0 + 112);
      v51 = *(v0 + 104);
      v39 = v9;
      v27 = *(v0 + 88);
      v26 = *(v0 + 96);
      v28 = *(v0 + 72);
      v41 = *(v0 + 80);
      v29 = *(v0 + 64);
      v49 = *(v0 + 56);
      v30 = *(v0 + 40);
      v45 = *(v0 + 32);
      v42 = *(v28 + 32);
      v43 = v26;
      v42(v26);
      v31 = sub_2528C0C40();
      (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
      v32 = v26;
      v33 = v29;
      v39(v27, v32, v29);
      sub_25272006C(v24, v40, &qword_27F4FCE00, &qword_2528C5D20);
      v34 = (*(v28 + 80) + 65) & ~*(v28 + 80);
      v35 = (v41 + *(v25 + 80) + v34) & ~*(v25 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      v37 = MEMORY[0x277D84F90];
      *(v36 + 32) = MEMORY[0x277D84F90];
      *(v36 + 40) = 3;
      *(v36 + 48) = v37;
      *(v36 + 56) = v37;
      *(v36 + 64) = v44;
      (v42)(v36 + v34, v27, v33);
      sub_2527D6760(v40, v36 + v35);
      sub_2527D3E74(0, 0, v30, &unk_2528CD990, v36);

      (*(v28 + 8))(v43, v33);
      sub_2527213D8(v24, &qword_27F4FCE00, &qword_2528C5D20);
      sub_2528BE670();

      v23 = *(v0 + 8);
      goto LABEL_8;
    }
  }

  v12 = *(v0 + 192);
  sub_2527213D8(*(v0 + 56), &qword_27F4FCD98, &qword_2528C6200);
  v13 = sub_2528C0890();
  v14 = sub_2528C0CF0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_252711000, v13, v14, "No snapshot found for current home", v15, 2u);
    MEMORY[0x2530A8D80](v15, -1, -1);
  }

  v16 = *(v0 + 168);
  v18 = *(v0 + 136);
  v17 = *(v0 + 144);
  v19 = *(v0 + 104);
  v20 = *(v0 + 112);
  v22 = *(v0 + 88);
  v21 = *(v0 + 96);
  v48 = *(v0 + 56);
  v50 = *(v0 + 48);
  v52 = *(v0 + 40);

  sub_2527D66B0();
  swift_allocError();
  swift_willThrow();
  sub_2527213D8(v17, &qword_27F4FCE00, &qword_2528C5D20);

  v23 = *(v0 + 8);
LABEL_8:

  return v23();
}

uint64_t sub_2527D5910(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25271F3AC;

  return ShowErrorIntent.perform()(a1);
}

uint64_t sub_2527D59AC(uint64_t a1)
{
  v2 = sub_2527D6070();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_2527D59E8()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FE760);
  __swift_project_value_buffer(v0, qword_27F4FE760);
  return sub_2528BE9D0();
}

uint64_t sub_2527D5A84@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_2527D5B28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE840, &qword_2528CDDC8);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2F8, &qword_2528CDDD0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C3910;
  sub_2528BE8C0();
  v4 = sub_252790904(v3);
  swift_setDeallocating();
  sub_2527213D8(v3 + v2, &qword_27F4FD2F8, &qword_2528CDDD0);
  result = swift_deallocClassInstance();
  qword_27F4FE778 = v4;
  return result;
}

uint64_t static ErrorDisplayType.caseDisplayRepresentations.getter()
{
  if (qword_27F4FB820 != -1)
  {
    swift_once();
  }
}

uint64_t ErrorDisplayType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2528C0F30();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2527D5D0C()
{
  sub_2528C1130();
  sub_2528C0A40();
  return sub_2528C1180();
}

uint64_t sub_2527D5D78()
{
  sub_2528C1130();
  sub_2528C0A40();
  return sub_2528C1180();
}

uint64_t sub_2527D5DC8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2528C0F30();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2527D5E70@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_2527D5F18(uint64_t a1)
{
  v2 = sub_2527D601C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527D5F64()
{
  if (qword_27F4FB820 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2527D5FC0(uint64_t a1)
{
  v2 = sub_2527D6CC4();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_2527D601C()
{
  result = qword_27F4FE790;
  if (!qword_27F4FE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE790);
  }

  return result;
}

unint64_t sub_2527D6070()
{
  result = qword_27F4FE798;
  if (!qword_27F4FE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE798);
  }

  return result;
}

uint64_t sub_2527D60C4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2527D72A0;

  return v7(a1);
}

uint64_t sub_2527D61BC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2527D62B4;

  return v7(a1);
}

uint64_t sub_2527D62B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2527D63AC(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(a6 + 48);
  v11 = sub_2528BECF0();
  (*(*(v11 - 8) + 16))(v9, v10 + *(*(v11 - 8) + 72) * a3, v11);
  v12 = *(a6 + 56);
  v13 = v12 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * a3;

  return sub_2527D723C(v13, a2);
}

uint64_t sub_2527D64A8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2527D659C;

  return v6(v2 + 32);
}

uint64_t sub_2527D659C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_2527D66B0()
{
  result = qword_27F4FE7A0;
  if (!qword_27F4FE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7A0);
  }

  return result;
}

uint64_t sub_2527D6704(uint64_t a1)
{
  v2 = type metadata accessor for HomeEntity.SnapshotPair(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2527D6760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527D67D0(uint64_t a1)
{
  v3 = *(sub_2528BF400() - 8);
  v4 = ((*(v3 + 80) + 65) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v13 = *(v1 + 40);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_25271F3AC;

  return sub_2528AC090(a1, v7, v8, v9, v13, v10, v11, v12);
}

unint64_t sub_2527D696C()
{
  result = qword_27F4FE7B0;
  if (!qword_27F4FE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7B0);
  }

  return result;
}

unint64_t sub_2527D69C4()
{
  result = qword_27F4FE7B8;
  if (!qword_27F4FE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7B8);
  }

  return result;
}

unint64_t sub_2527D6A64()
{
  result = qword_27F4FE7C0;
  if (!qword_27F4FE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7C0);
  }

  return result;
}

unint64_t sub_2527D6ABC()
{
  result = qword_27F4FE7C8;
  if (!qword_27F4FE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7C8);
  }

  return result;
}

unint64_t sub_2527D6B14()
{
  result = qword_27F4FE7D0;
  if (!qword_27F4FE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7D0);
  }

  return result;
}

unint64_t sub_2527D6B6C()
{
  result = qword_27F4FE7D8;
  if (!qword_27F4FE7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7D8);
  }

  return result;
}

unint64_t sub_2527D6BC4()
{
  result = qword_27F4FE7E0;
  if (!qword_27F4FE7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7E0);
  }

  return result;
}

unint64_t sub_2527D6C18()
{
  result = qword_27F4FE7E8;
  if (!qword_27F4FE7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7E8);
  }

  return result;
}

unint64_t sub_2527D6C6C()
{
  result = qword_27F4FE7F0;
  if (!qword_27F4FE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7F0);
  }

  return result;
}

unint64_t sub_2527D6CC4()
{
  result = qword_27F4FE7F8;
  if (!qword_27F4FE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE7F8);
  }

  return result;
}

unint64_t sub_2527D6D90()
{
  result = qword_27F4FE800;
  if (!qword_27F4FE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE800);
  }

  return result;
}

unint64_t sub_2527D6DE8()
{
  result = qword_27F4FE808;
  if (!qword_27F4FE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE808);
  }

  return result;
}

unint64_t sub_2527D6E40()
{
  result = qword_27F4FE810;
  if (!qword_27F4FE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE810);
  }

  return result;
}

uint64_t sub_2527D6EF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2527228B0;

  return sub_2527D60C4(a1, v5);
}

uint64_t sub_2527D6FB0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2527228B0;

  return sub_2527D61BC(a1, v5);
}

uint64_t sub_2527D7068(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25271F3AC;

  return sub_2527D61BC(a1, v5);
}

uint64_t sub_2527D7120(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2527228B0;

  return sub_2527D64A8(a1, v5);
}

uint64_t sub_2527D71D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity.SnapshotPair(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527D723C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity.SnapshotPair(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527D72B0()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F4FE850);
  __swift_project_value_buffer(v0, qword_27F4FE850);
  return sub_2528BEC20();
}

uint64_t static AutomateSceneIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB828 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FE850);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static AutomateSceneIntent.title.setter(uint64_t a1)
{
  if (qword_27F4FB828 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FE850);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static AutomateSceneIntent.title.modify())()
{
  if (qword_27F4FB828 != -1)
  {
    swift_once();
  }

  v0 = sub_2528BEC40();
  __swift_project_value_buffer(v0, qword_27F4FE850);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2527D7568@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB828 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FE850);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2527D7628(uint64_t a1)
{
  if (qword_27F4FB828 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FE850);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static AutomateSceneIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F4FE868 = a1;
  return result;
}

uint64_t AutomateSceneIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v56 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9C0, &qword_2528C9570);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = &v42 - v3;
  v51 = sub_2528BE950();
  v57 = *(v51 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v51);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC470, &unk_2528CDE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v42 - v20;
  v22 = sub_2528BEC40();
  v44 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD870, &unk_2528CDE10);
  sub_2528BEC20();
  v27 = *(v23 + 56);
  v45 = v23 + 56;
  v46 = v27;
  v27(v21, 1, 1, v22);
  v28 = type metadata accessor for SceneEntity();
  (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
  v29 = sub_2528BE630();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v52 = v31;
  v53 = v30 + 56;
  v31(v13, 1, 1, v29);
  v48 = v11;
  v31(v11, 1, 1, v29);
  v55 = *MEMORY[0x277CBA308];
  v54 = *(v57 + 104);
  v57 += 104;
  v43 = v6;
  v32 = v51;
  v54(v6);
  sub_2527D8374(&qword_27F4FC518, type metadata accessor for SceneEntity);
  v50 = v26;
  v33 = v13;
  v34 = sub_2528BE7F0();
  v35 = v56;
  *v56 = v34;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9C8, &qword_2528C9578);
  sub_2528BEC20();
  v36 = v44;
  v37 = v46;
  v46(v21, 1, 1, v44);
  v52(v33, 1, 1, v29);
  v38 = v43;
  (v54)(v43, v55, v32);
  sub_2527D8374(&qword_27F4FD9A0, type metadata accessor for TriggerEventType);
  v35[1] = sub_2528BE7C0();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9D0, &qword_2528C9580);
  sub_2528BEC20();
  v37(v21, 1, 1, v36);
  v39 = type metadata accessor for TriggerRecurrenceWeekdaysEntity(0);
  (*(*(v39 - 8) + 56))(v49, 1, 1, v39);
  v40 = v52;
  v52(v33, 1, 1, v29);
  v40(v48, 1, 1, v29);
  (v54)(v38, v55, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9D8, &qword_2528C9588);
  sub_25272275C(&qword_27F4FD9E0, &qword_27F4FD9D8, &qword_2528C9588);
  sub_2527D8374(&qword_27F4FBD40, type metadata accessor for TriggerRecurrenceWeekdaysEntity);
  result = sub_2528BE7E0();
  v56[2] = result;
  return result;
}

uint64_t sub_2527D7F08()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_252711000, v2, v3, "Running AutomateSceneIntent", v4, 2u);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  sub_2528BE670();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2527D8070(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25271F3AC;

  return AutomateSceneIntent.perform()(a1);
}

uint64_t sub_2527D810C(uint64_t a1)
{
  v2 = sub_2527D8310();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_2527D8148()
{
  v0 = type metadata accessor for TriggerRecurrenceWeekdaysEntity(0);
  v1 = sub_2527C3D38();
  MEMORY[0x2530A60E0](v1, v0, &type metadata for TriggerRecurrenceWeekdaysEntity.Resolver, v1);
  sub_2527D8374(&qword_27F4FBD28, type metadata accessor for TriggerRecurrenceWeekdaysEntity);

  return sub_2528BEAA0();
}

unint64_t sub_2527D81F8()
{
  result = qword_27F4FE870;
  if (!qword_27F4FE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE870);
  }

  return result;
}

unint64_t sub_2527D8250()
{
  result = qword_27F4FE878;
  if (!qword_27F4FE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE878);
  }

  return result;
}

unint64_t sub_2527D8310()
{
  result = qword_27F4FE880;
  if (!qword_27F4FE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE880);
  }

  return result;
}

uint64_t sub_2527D8374(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2527D83BC(uint64_t a1)
{
  v117 = a1;
  v123 = sub_2528BF240();
  v132 = *(v123 - 8);
  v2 = *(v132 + 8);
  v3 = MEMORY[0x28223BE20](v123);
  v119 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v120 = &v97 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v122 = &v97 - v8;
  MEMORY[0x28223BE20](v7);
  v121 = &v97 - v9;
  v10 = sub_2528BECF0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v114 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v124 = &v97 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE888, &unk_2528CDF60);
  v16 = *(*(v115 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v115);
  v19 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = (&v97 - v20);
  v22 = sub_2528C07B0();
  v116 = *(v22 - 8);
  v23 = *(v116 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2528BFD50();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *v1;
  v32 = *(v1 + 8);
  v34 = *(v1 + 16);
  v33 = *(v1 + 24);
  v35 = *(v1 + 32);
  if ((v35 >> 1) - 62 < 3)
  {
    v114 = *(v1 + 8);
    v115 = v34;
    v116 = v33;
    LODWORD(v118) = v35;
    v124 = v31;
    v36 = v121;
    sub_2528BF460();
    v37 = *MEMORY[0x277D15640];
    v38 = v132;
    v40 = v122;
    v39 = v123;
    v113 = *(v132 + 13);
    v113(v122, v37, v123);
    v41 = sub_2527E412C(&qword_27F4FE890, MEMORY[0x277D158E0]);
    sub_2528C0AD0();
    v112 = v41;
    sub_2528C0AD0();
    if (v127 == v125 && v128 == v126)
    {
      v42 = 1;
    }

    else
    {
      v42 = sub_2528C1060();
    }

    v81 = *(v38 + 8);
    v81(v40, v39);
    v132 = (v38 + 8);
    v81(v36, v39);

    if (v42)
    {
      v127 = v124;
      v128 = v114;
      v49 = v117;
      v129 = v115;
      v130 = v116;
      v131 = v118;
      v82 = v99;
      v83 = sub_25283C73C(&v127);
      if (!v82)
      {
        return v83;
      }
    }

    else
    {
      v84 = v120;
      sub_2528BF460();
      v85 = v119;
      v113(v119, *MEMORY[0x277D15698], v39);
      sub_2528C0AD0();
      sub_2528C0AD0();
      if (v127 == v125 && v128 == v126)
      {
        v81(v85, v39);
        v81(v84, v39);
      }

      else
      {
        v94 = sub_2528C1060();
        v81(v85, v39);
        v81(v84, v39);

        if ((v94 & 1) == 0)
        {
          type metadata accessor for HomeAppIntentError();
          sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
          v49 = swift_allocError();
          *v96 = 58;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          return v49;
        }
      }

      v127 = v124;
      v128 = v114;
      v49 = v117;
      v129 = v115;
      v130 = v116;
      v131 = v118;
      v95 = v99;
      v83 = sub_25283D37C(&v127);
      if (!v95)
      {
        return v83;
      }
    }

    return v49;
  }

  v123 = v25;
  v112 = v22;
  v113 = v21;
  v132 = v19;
  if (v35 >> 1 != 36)
  {
    v127 = v31;
    v128 = v32;
    v129 = v34;
    v130 = v33;
    v131 = v35;
    v86 = v99;
    v87 = v31;
    v88 = v35;
    v89 = v33;
    v90 = v34;
    v91 = v32;
    v92 = sub_2527D8FD8();
    v49 = v117;
    if (!v86)
    {
      v127 = v87;
      v128 = v91;
      v129 = v90;
      v130 = v89;
      v131 = v88;
      v93 = sub_2527DB2A4(v92, &v127);

      return v93;
    }

    return v49;
  }

  v43 = v31;
  v44 = v28;
  sub_2528BF640();
  v45 = sub_2528BFD20();
  v46 = v30;
  v47 = v45;
  (*(v44 + 8))(v46, v26);
  v48 = *(v47 + 16);
  if (!v48)
  {

    return MEMORY[0x277D84F90];
  }

  v127 = MEMORY[0x277D84F90];
  sub_25282F1D8(0, v48, 0);
  v49 = v127;
  v50 = v47 + 64;
  v51 = -1 << *(v47 + 32);
  result = sub_2528C0E00();
  v53 = result;
  v54 = 0;
  v101 = *(v47 + 36);
  v111 = v11 + 16;
  v110 = v11 + 32;
  v109 = v11 + 8;
  v108 = *MEMORY[0x277D16EB0];
  v107 = (v116 + 104);
  v106 = v116 + 32;
  v55 = *(v47 + 32);
  v98 = v47 + 72;
  v105 = xmmword_2528C3910;
  v104 = v43 & 1;
  v56 = v115;
  v57 = v113;
  v100 = v48;
  v102 = v47 + 64;
  v103 = v47;
  while ((v53 & 0x8000000000000000) == 0 && v53 < 1 << v55)
  {
    if ((*(v50 + 8 * (v53 >> 6)) & (1 << v53)) == 0)
    {
      goto LABEL_40;
    }

    v119 = 1 << v53;
    v120 = v53 >> 6;
    v118 = v54;
    v60 = *(v56 + 48);
    v61 = *(v47 + 48);
    v121 = *(v11 + 72);
    v62 = v56;
    (*(v11 + 16))(v57, v61 + v121 * v53, v10);
    v63 = *(v47 + 56);
    v64 = sub_2528BFE80();
    v122 = v49;
    v65 = v64;
    v66 = *(v64 - 8);
    (*(v66 + 16))(&v57[v60], v63 + *(v66 + 72) * v53, v64);
    (*(v11 + 32))(v132, v57, v10);
    (*(v66 + 32))(&v132[*(v62 + 48)], &v57[v60], v65);
    sub_2528BFE70();
    sub_2528BFE60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC828, &qword_2528C48D8);
    v67 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = v105;
    sub_2528BF900();
    sub_252744890(v68);
    swift_setDeallocating();
    v69 = v68 + v67;
    v70 = v112;
    (*(v11 + 8))(v69, v10);
    swift_deallocClassInstance();
    v49 = v122;
    v71 = v123;
    sub_2528C0780();
    (*v107)(v71, v108, v70);
    sub_2527213D8(v132, &qword_27F4FE888, &unk_2528CDF60);
    v127 = v49;
    v73 = *(v49 + 16);
    v72 = *(v49 + 24);
    if (v73 >= v72 >> 1)
    {
      sub_25282F1D8(v72 > 1, v73 + 1, 1);
      v49 = v127;
    }

    *(v49 + 16) = v73 + 1;
    result = (*(v116 + 32))(v49 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v73, v71, v70);
    v47 = v103;
    v55 = *(v103 + 32);
    v58 = 1 << v55;
    if (v53 >= 1 << v55)
    {
      goto LABEL_41;
    }

    v50 = v102;
    v74 = *(v102 + 8 * v120);
    if ((v74 & v119) == 0)
    {
      goto LABEL_42;
    }

    if (v101 != *(v103 + 36))
    {
      goto LABEL_43;
    }

    v75 = v74 & (-2 << (v53 & 0x3F));
    if (v75)
    {
      v58 = __clz(__rbit64(v75)) | v53 & 0x7FFFFFFFFFFFFFC0;
      v56 = v115;
      v57 = v113;
      v59 = v100;
    }

    else
    {
      v76 = v120 << 6;
      v77 = v120 + 1;
      v78 = (v98 + 8 * v120);
      v56 = v115;
      v57 = v113;
      v59 = v100;
      while (v77 < (v58 + 63) >> 6)
      {
        v80 = *v78++;
        v79 = v80;
        v76 += 64;
        ++v77;
        if (v80)
        {
          v58 = __clz(__rbit64(v79)) + v76;
          break;
        }
      }
    }

    v54 = v118 + 1;
    v53 = v58;
    if (v118 + 1 == v59)
    {

      return v49;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_2527D8FD8()
{
  v1 = sub_2528BFDD0();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v230 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v230 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v230 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v230 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v18 = &v230 - v16;
  v19 = *v0;
  v20 = *(v0 + 8);
  v21 = *(v0 + 16);
  v22 = *(v0 + 24);
  LODWORD(v23) = *(v0 + 32);
  switch(v23 >> 1)
  {
    case 0u:
    case 1u:
    case 2u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x23u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Du:
    case 0x33u:
    case 0x34u:
    case 0x41u:
    case 0x42u:
      v24 = *v0;
      type metadata accessor for HomeAppIntentError();
      sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
      v26 = v25;
      v246 = v24;
      v247 = v20;
      v248 = v21;
      v249 = v22;
      v250 = v23;
      v0 = &v246;
      sub_252870158(&v251);
      *v26 = v251;
      goto LABEL_3;
    case 4u:
      v23 = (&v230 - v16);
      v21 = v17;
      v5 = v15;
      v22 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v174 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v175 = *(*v174 + 72);
      v176 = (*(*v174 + 80) + 32) & ~*(*v174 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2528C3910;
      v31 = v30 + v176;
      v20 = v174[14];
      v177 = *MEMORY[0x277D160A8];
      v178 = sub_2528BFDE0();
      v15 = (*(*(v178 - 8) + 104))(v31, v177, v178);
      if (v22 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      if (v22 <= 0x7FFFFFFF)
      {
        goto LABEL_57;
      }

      __break(1u);
LABEL_51:
      v179 = v17;
      v180 = v15;
      v181 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v182 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v183 = *(*v182 + 72);
      v184 = (*(*v182 + 80) + 32) & ~*(*v182 + 80);
      v185 = swift_allocObject();
      *(v185 + 16) = xmmword_2528C3910;
      v186 = v185 + v184;
      v187 = *MEMORY[0x277D16260];
      v188 = sub_2528BFDE0();
      (*(*(v188 - 8) + 104))(v186, v187, v188);
      v189 = (v186 + v182[14]);
      *v5 = v181 & 1;
      (*(v179 + 104))(v5, *MEMORY[0x277D16308], v180);
      v190 = type metadata accessor for RequiredCharacteristicValue();
      (*(v179 + 16))(&v189[*(v190 + 20)], v5, v180);
      *v189 = 1;
      (*(v179 + 8))(v5, v180);
      v0 = sub_25278E784(v185);
      swift_setDeallocating();
      v157 = v186;
LABEL_52:
      sub_2527213D8(v157, &qword_27F4FD188, &qword_2528CDFA0);
      goto LABEL_58;
    case 0xCu:
      v61 = v17;
      v62 = v15;
      v63 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v64 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v65 = *(*v64 + 72);
      v66 = (*(*v64 + 80) + 32) & ~*(*v64 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_2528C3910;
      v68 = v67 + v66;
      v69 = *MEMORY[0x277D161F8];
      v70 = sub_2528BFDE0();
      (*(*(v70 - 8) + 104))(v68, v69, v70);
      v71 = (v68 + v64[14]);
      *v14 = v63 & 1;
      (*(v61 + 104))(v14, *MEMORY[0x277D162F0], v62);
      v72 = type metadata accessor for RequiredCharacteristicValue();
      (*(v61 + 16))(&v71[*(v72 + 20)], v14, v62);
      *v71 = 1;
      (*(v61 + 8))(v14, v62);
      goto LABEL_43;
    case 0xDu:
      v244 = v17;
      v73 = (&v230 - v16);
      v74 = v15;
      v75 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
      v243 = v76;
      v77 = *(v76 - 8);
      v240 = *(v77 + 72);
      v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_2528C17E0;
      v80 = v79 + v78;
      v237 = (v79 + v78 + *(v76 + 48));
      v241 = v79;
      v242 = v79 + v78;
      v81 = *MEMORY[0x277D162D8];
      v82 = sub_2528BFDE0();
      v83 = *(v82 - 8);
      v238 = *(v83 + 104);
      v239 = v83 + 104;
      (v238)(v80, v81, v82);
      *v73 = v75;
      LODWORD(v236) = *MEMORY[0x277D16310];
      v84 = v244;
      v235 = *(v244 + 104);
      v235(v73);
      v234 = type metadata accessor for RequiredCharacteristicValue();
      v85 = *(v84 + 16);
      v86 = v237;
      v85(&v237[*(v234 + 20)], v73, v74);
      *v86 = 1;
      v87 = *(v84 + 8);
      v244 = v84 + 8;
      v87(v73, v74);
      v88 = (v242 + v240 + *(v243 + 48));
      v89 = *MEMORY[0x277D160B8];
      v238();
      *v73 = v20;
      (v235)(v73, v236, v74);
      v85(&v88[*(v234 + 20)], v73, v74);
      *v88 = 1;
      v87(v73, v74);
      goto LABEL_18;
    case 0x1Cu:
      LOBYTE(v246) = *v0;
      v0 = &v246;
      v125 = v245;
      v126 = sub_2527DC2D4();
      if (!v125)
      {
        return v126;
      }

      return v0;
    case 0x1Du:
      v158 = (&v230 - v16);
      v159 = v17;
      v160 = v15;
      LOBYTE(v246) = *v0;
      v0 = &v246;
      v161 = v245;
      v162 = sub_2527DC2D4();
      if (v161)
      {
        return v0;
      }

      v244 = v162;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v245 = 0;
      v163 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v164 = *(*v163 + 72);
      v165 = (*(*v163 + 80) + 32) & ~*(*v163 + 80);
      v166 = swift_allocObject();
      *(v166 + 16) = xmmword_2528C3910;
      v167 = v166 + v165;
      v168 = (v167 + v163[14]);
      v169 = *MEMORY[0x277D16268];
      v170 = sub_2528BFDE0();
      (*(*(v170 - 8) + 104))(v167, v169, v170);
      *v158 = v20;
      (*(v159 + 104))(v158, *MEMORY[0x277D16310], v160);
      v171 = type metadata accessor for RequiredCharacteristicValue();
      (*(v159 + 16))(&v168[*(v171 + 20)], v158, v160);
      *v168 = 1;
      (*(v159 + 8))(v158, v160);
      v59 = sub_25278E784(v166);
      swift_setDeallocating();
      sub_2527213D8(v167, &qword_27F4FD188, &qword_2528CDFA0);
      swift_deallocClassInstance();
      v60 = v244;
      goto LABEL_46;
    case 0x1Eu:
      goto LABEL_11;
    case 0x24u:
      return sub_25278E784(MEMORY[0x277D84F90]);
    case 0x2Cu:
      v100 = v17;
      v101 = (&v230 - v16);
      v102 = v15;
      v103 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
      v243 = v104;
      v105 = *(v104 - 8);
      v240 = *(v105 + 72);
      v106 = (*(v105 + 80) + 32) & ~*(v105 + 80);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_2528C17E0;
      v108 = (v107 + v106 + *(v104 + 48));
      v109 = v107 + v106;
      v241 = v107;
      v242 = v107 + v106;
      v110 = *MEMORY[0x277D160B0];
      v111 = sub_2528BFDE0();
      v112 = *(v111 - 8);
      v238 = *(v112 + 104);
      v239 = v112 + 104;
      (v238)(v109, v110, v111);
      LODWORD(v237) = v103 & 1;
      *v101 = v103 & 1;
      LODWORD(v236) = *MEMORY[0x277D162F8];
      v113 = v100;
      v235 = *(v100 + 104);
      v235(v101);
      v114 = type metadata accessor for RequiredCharacteristicValue();
      v115 = *(v100 + 16);
      v115(&v108[*(v114 + 20)], v101, v102);
      *v108 = 0;
      v116 = *(v113 + 8);
      v244 = v113 + 8;
      v116(v101, v102);
      v117 = (v242 + v240 + *(v243 + 48));
      v118 = *MEMORY[0x277D16330];
      v238();
      *v101 = v237;
      (v235)(v101, v236, v102);
      v115(&v117[*(v114 + 20)], v101, v102);
      *v117 = 0;
      v116(v101, v102);
LABEL_18:
      v0 = sub_25278E784(v241);
      swift_setDeallocating();
      swift_arrayDestroy();
      goto LABEL_58;
    case 0x2Eu:
      v147 = v17;
      v148 = v15;
      v149 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v150 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v151 = *(*v150 + 72);
      v152 = (*(*v150 + 80) + 32) & ~*(*v150 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_2528C3910;
      v68 = v67 + v152;
      v153 = *MEMORY[0x277D161A8];
      v154 = sub_2528BFDE0();
      (*(*(v154 - 8) + 104))(v68, v153, v154);
      v155 = (v68 + v150[14]);
      *v11 = v149 & 1;
      (*(v147 + 104))(v11, *MEMORY[0x277D162F0], v148);
      v156 = type metadata accessor for RequiredCharacteristicValue();
      (*(v147 + 16))(&v155[*(v156 + 20)], v11, v148);
      *v155 = 1;
      (*(v147 + 8))(v11, v148);
LABEL_43:
      v0 = sub_25278E784(v67);
      swift_setDeallocating();
      v157 = v68;
      goto LABEL_52;
    case 0x2Fu:
      v90 = v17;
      v8 = &v230 - v16;
      v91 = v15;
      v92 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v93 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v94 = *(*v93 + 72);
      v95 = (*(*v93 + 80) + 32) & ~*(*v93 + 80);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_2528C3910;
      v97 = v96 + v95;
      v98 = (v97 + v93[14]);
      v99 = MEMORY[0x277D16128];
      goto LABEL_20;
    case 0x32u:
      v23 = (&v230 - v16);
      v21 = v17;
      v5 = v15;
      v22 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v199 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v200 = *(*v199 + 72);
      v201 = (*(*v199 + 80) + 32) & ~*(*v199 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2528C3910;
      v31 = v30 + v201;
      v20 = v199[14];
      v202 = *MEMORY[0x277D160E0];
      v203 = sub_2528BFDE0();
      (*(*(v203 - 8) + 104))(v31, v202, v203);
      if (v22 < 0xFFFFFFFF80000000)
      {
        goto LABEL_76;
      }

      if (v22 <= 0x7FFFFFFF)
      {
        goto LABEL_57;
      }

      goto LABEL_77;
    case 0x35u:
      v90 = v17;
      v91 = v15;
      v191 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v192 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v193 = *(*v192 + 72);
      v194 = (*(*v192 + 80) + 32) & ~*(*v192 + 80);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_2528C3910;
      v97 = v96 + v194;
      v195 = *MEMORY[0x277D16338];
      v196 = sub_2528BFDE0();
      (*(*(v196 - 8) + 104))(v97, v195, v196);
      v197 = (v97 + v192[14]);
      *v8 = v191 & 1;
      (*(v90 + 104))(v8, *MEMORY[0x277D16308], v91);
      v198 = type metadata accessor for RequiredCharacteristicValue();
      (*(v90 + 16))(&v197[*(v198 + 20)], v8, v91);
      *v197 = 1;
      goto LABEL_54;
    case 0x36u:
      goto LABEL_51;
    case 0x37u:
      if (*v0 - 2 < 3)
      {
        v0 = *v0;
        type metadata accessor for HomeAppIntentError();
        sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
        swift_allocError();
        v129 = *&aOpening_1[((v0 << 56) - 0x200000000000000) >> 53];
        *v128 = 51;
        v130 = 0xE700000000000000;
        goto LABEL_66;
      }

      v135 = (&v230 - v16);
      v136 = v17;
      v137 = v15;
      v138 = *v0 != 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v219 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v220 = *(*v219 + 72);
      v221 = (*(*v219 + 80) + 32) & ~*(*v219 + 80);
      v213 = swift_allocObject();
      *(v213 + 16) = xmmword_2528C3910;
      v214 = v213 + v221;
      v222 = (v214 + v219[14]);
      v223 = MEMORY[0x277D16158];
      goto LABEL_69;
    case 0x38u:
      goto LABEL_8;
    case 0x39u:
      v90 = v17;
      v8 = &v230 - v16;
      v91 = v15;
      v92 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v119 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v120 = *(*v119 + 72);
      v121 = (*(*v119 + 80) + 32) & ~*(*v119 + 80);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_2528C3910;
      v97 = v96 + v121;
      v98 = (v97 + v119[14]);
      v99 = MEMORY[0x277D16268];
LABEL_20:
      v122 = *v99;
      v123 = sub_2528BFDE0();
      (*(*(v123 - 8) + 104))(v97, v122, v123);
      *v8 = v92;
      (*(v90 + 104))(v8, *MEMORY[0x277D16310], v91);
      v124 = type metadata accessor for RequiredCharacteristicValue();
      (*(v90 + 16))(&v98[*(v124 + 20)], v8, v91);
      *v98 = 1;
LABEL_54:
      (*(v90 + 8))(v8, v91);
      v0 = sub_25278E784(v96);
      swift_setDeallocating();
      sub_2527213D8(v97, &qword_27F4FD188, &qword_2528CDFA0);
      goto LABEL_58;
    case 0x3Au:
      v127 = *v0;
      if ((v127 - 2) >= 2)
      {
        v207 = (&v230 - v16);
        v208 = v17;
        v209 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
        v210 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
        v211 = *(*v210 + 72);
        v212 = (*(*v210 + 80) + 32) & ~*(*v210 + 80);
        v213 = swift_allocObject();
        *(v213 + 16) = xmmword_2528C3910;
        v214 = v213 + v212;
        v215 = (v214 + v210[14]);
        v216 = *MEMORY[0x277D162A0];
        v217 = sub_2528BFDE0();
        (*(*(v217 - 8) + 104))(v214, v216, v217);
        *v207 = v127 != 0;
        (*(v208 + 104))(v207, *MEMORY[0x277D162F0], v209);
        v218 = type metadata accessor for RequiredCharacteristicValue();
        (*(v208 + 16))(&v215[*(v218 + 20)], v207, v209);
        *v215 = 1;
        (*(v208 + 8))(v207, v209);
        goto LABEL_70;
      }

      type metadata accessor for HomeAppIntentError();
      sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
      v129 = 0x64656D6D616ALL;
      if (v127 == 3)
      {
        v129 = 0x6E776F6E6B6E75;
      }

      v130 = 0xE600000000000000;
      *v128 = 51;
      if (v127 == 3)
      {
        v130 = 0xE700000000000000;
      }

      goto LABEL_66;
    case 0x3Bu:
      v23 = (&v230 - v16);
      v21 = v17;
      v5 = v15;
      v22 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v27 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v28 = *(*v27 + 72);
      v29 = (*(*v27 + 80) + 32) & ~*(*v27 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2528C3910;
      v31 = v30 + v29;
      v20 = v27[14];
      v32 = *MEMORY[0x277D16140];
      v33 = sub_2528BFDE0();
      v15 = (*(*(v33 - 8) + 104))(v31, v32, v33);
      if (v22 < 0xFFFFFFFF80000000)
      {
        __break(1u);
        goto LABEL_72;
      }

      if (v22 <= 0x7FFFFFFF)
      {
LABEL_57:
        v204 = (v31 + v20);
        *v23 = v22;
        (*(v21 + 104))(v23, *MEMORY[0x277D162F0], v5);
        v205 = type metadata accessor for RequiredCharacteristicValue();
        (*(v21 + 16))(&v204[*(v205 + 20)], v23, v5);
        *v204 = 1;
        (*(v21 + 8))(v23, v5);
        v0 = sub_25278E784(v30);
        swift_setDeallocating();
        sub_2527213D8(v31, &qword_27F4FD188, &qword_2528CDFA0);
        goto LABEL_58;
      }

      __break(1u);
LABEL_8:
      v23 = v18;
      v21 = v17;
      v5 = v15;
      v22 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v34 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v35 = *(*v34 + 72);
      v36 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2528C3910;
      v31 = v30 + v36;
      v20 = v34[14];
      v37 = *MEMORY[0x277D16200];
      v38 = sub_2528BFDE0();
      v15 = (*(*(v38 - 8) + 104))(v31, v37, v38);
      if (v22 < 0xFFFFFFFF80000000)
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        swift_once();
LABEL_39:
        v139 = sub_2528C08B0();
        v0 = __swift_project_value_buffer(v139, qword_27F5025C8);
        sub_252760C18(v5, v20, v21, v22, v23);
        v140 = sub_2528C0890();
        v141 = sub_2528C0D00();
        sub_25272C15C(v5, v20, v21, v22, v23);
        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          v245 = swift_slowAlloc();
          v246 = v5;
          v251 = v245;
          *v142 = 136315138;
          v247 = v20;
          v248 = v21;
          v249 = v22;
          v250 = v23;
          sub_252760C18(v5, v20, v21, v22, v23);
          v143 = sub_252873604();
          v145 = v144;
          sub_25272C15C(v246, v247, v248, v249, v250);
          v146 = sub_2527389AC(v143, v145, &v251);

          *(v142 + 4) = v146;
          _os_log_impl(&dword_252711000, v140, v141, "Attempted to produce characteristicValueSet for unsupported attribute: %s", v142, 0xCu);
          v0 = v245;
          __swift_destroy_boxed_opaque_existential_0Tm(v245);
          MEMORY[0x2530A8D80](v0, -1, -1);
          MEMORY[0x2530A8D80](v142, -1, -1);
        }

        type metadata accessor for HomeAppIntentError();
        sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
        swift_allocError();
LABEL_3:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return v0;
      }

      if (v22 <= 0x7FFFFFFF)
      {
        goto LABEL_57;
      }

      __break(1u);
LABEL_11:
      v39 = v18;
      v243 = v15;
      v244 = v17;
      LOBYTE(v246) = v19;
      v0 = &v246;
      v40 = v245;
      v41 = sub_2527DC2D4();
      if (v40)
      {
        return v0;
      }

      v240 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
      v242 = v42;
      v43 = *(v42 - 8);
      v238 = *(v43 + 72);
      v44 = *(v43 + 80);
      v245 = 0;
      v45 = (v44 + 32) & ~v44;
      v46 = swift_allocObject();
      v239 = v46;
      *(v46 + 16) = xmmword_2528C17E0;
      v47 = v46 + v45;
      v234 = v46 + v45 + *(v42 + 48);
      v241 = v46 + v45;
      v48 = *MEMORY[0x277D161E8];
      v49 = sub_2528BFDE0();
      v50 = *(v49 - 8);
      v236 = *(v50 + 104);
      v237 = (v50 + 104);
      (v236)(v47, v48, v49);
      *v39 = v20;
      LODWORD(v235) = *MEMORY[0x277D16310];
      v52 = v243;
      v51 = v244;
      v233 = *(v244 + 104);
      v233(v39);
      v53 = type metadata accessor for RequiredCharacteristicValue();
      v54 = *(v53 + 20);
      v231 = *(v51 + 16);
      v232 = v53;
      v55 = v234;
      v231(v234 + v54, v39, v52);
      *v55 = 1;
      v56 = *(v51 + 8);
      v56(v39, v52);
      v57 = v238 + v241 + *(v242 + 48);
      v58 = *MEMORY[0x277D16228];
      v236();
      *v39 = v21;
      (v233)(v39, v235, v52);
      v231(&v57[*(v232 + 20)], v39, v52);
      *v57 = 1;
      v56(v39, v52);
      v59 = sub_25278E784(v239);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v60 = v240;
LABEL_46:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v246 = v60;
      v173 = v245;
      sub_2527E3A90(v59, sub_2527E2D54, 0, isUniquelyReferenced_nonNull_native, &v246);
      if (!v173)
      {

        return v246;
      }

LABEL_78:

      __break(1u);
      return result;
    case 0x3Cu:
      goto LABEL_32;
    case 0x3Du:
      v23 = (&v230 - v16);
      v21 = v17;
      v5 = v15;
      v22 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v131 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v132 = *(*v131 + 72);
      v133 = (*(*v131 + 80) + 32) & ~*(*v131 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2528C3910;
      v31 = v30 + v133;
      v20 = v131[14];
      v0 = *MEMORY[0x277D161D0];
      v134 = sub_2528BFDE0();
      v15 = (*(*(v134 - 8) + 104))(v31, v0, v134);
      if (v22 < 0xFFFFFFFF80000000)
      {
        goto LABEL_73;
      }

      if (v22 <= 0x7FFFFFFF)
      {
        goto LABEL_57;
      }

      __break(1u);
LABEL_32:
      if (v19 <= 1u)
      {
        v135 = v18;
        v136 = v17;
        v137 = v15;
        if (v19)
        {
          v138 = 0;
        }

        else
        {
          v138 = 3;
        }
      }

      else if (v19 == 2)
      {
        v135 = v18;
        v136 = v17;
        v137 = v15;
        v138 = 1;
      }

      else
      {
        if (v19 != 3)
        {
          type metadata accessor for HomeAppIntentError();
          sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
          swift_allocError();
          *v128 = 51;
          v129 = 0x6572656767697274;
          v130 = 0xE900000000000064;
LABEL_66:
          *(v128 + 8) = v129;
          *(v128 + 16) = v130;
          goto LABEL_3;
        }

        v135 = v18;
        v136 = v17;
        v137 = v15;
        v138 = 2;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v224 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v225 = *(*v224 + 72);
      v226 = (*(*v224 + 80) + 32) & ~*(*v224 + 80);
      v213 = swift_allocObject();
      *(v213 + 16) = xmmword_2528C3910;
      v214 = v213 + v226;
      v222 = (v214 + v224[14]);
      v223 = MEMORY[0x277D162B0];
LABEL_69:
      v227 = *v223;
      v228 = sub_2528BFDE0();
      (*(*(v228 - 8) + 104))(v214, v227, v228);
      *v135 = v138;
      (*(v136 + 104))(v135, *MEMORY[0x277D162F0], v137);
      v229 = type metadata accessor for RequiredCharacteristicValue();
      (*(v136 + 16))(&v222[*(v229 + 20)], v135, v137);
      *v222 = 1;
      (*(v136 + 8))(v135, v137);
LABEL_70:
      v0 = sub_25278E784(v213);
      swift_setDeallocating();
      sub_2527213D8(v214, &qword_27F4FD188, &qword_2528CDFA0);
LABEL_58:
      swift_deallocClassInstance();
      return v0;
    default:
      v5 = *v0;
      if (qword_27F4FBB40 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_74;
  }
}

void *sub_2527DB2A4(uint64_t a1, uint64_t *a2)
{
  v137 = sub_2528BFDE0();
  v135 = *(v137 - 8);
  v4 = v135[8];
  MEMORY[0x28223BE20](v137);
  v111 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2528BF9D0();
  v134 = *(v110 - 8);
  v6 = *(v134 + 64);
  MEMORY[0x28223BE20](v110);
  v109 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE898, &qword_2528CDF70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v101 = &v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A0, &qword_2528CDF78);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v117 = &v88 - v13;
  v118 = sub_2528C0720();
  v133 = *(v118 - 8);
  v14 = *(v133 + 64);
  MEMORY[0x28223BE20](v118);
  v108 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_2528BFDD0();
  v16 = *(v116 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v116 - 8);
  v107 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v88 - v20;
  v131 = sub_2528C0620();
  v125 = *(v131 - 8);
  v22 = *(v125 + 64);
  MEMORY[0x28223BE20](v131);
  v128 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v127 = &v88 - v26;
  v27 = sub_2528C01F0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v130 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8B0, &qword_2528CDF88);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v88 - v33;
  v132 = sub_2528C07B0();
  v35 = *(v132 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v132 - 8);
  v96 = &v88 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v95 = &v88 - v39;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8B8, &qword_2528CDF90);
  v40 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v42 = &v88 - v41;
  v43 = a2[1];
  v93 = *a2;
  v92 = v43;
  v44 = a2[3];
  v91 = a2[2];
  v90 = v44;
  v89 = *(a2 + 32);
  v45 = a1 + 64;
  v46 = 1 << *(a1 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(a1 + 64);
  v49 = (v46 + 63) >> 6;
  v136 = v135 + 2;
  v124 = (v28 + 48);
  v125 += 8;
  v113 = (v28 + 32);
  v112 = (v133 + 48);
  v99 = (v133 + 32);
  v98 = (v16 + 48);
  v100 = (v133 + 8);
  v97 = (v16 + 32);
  v114 = (v28 + 8);
  v120 = (v35 + 56);
  v106 = (v16 + 16);
  v105 = (v134 + 16);
  v104 = (v16 + 8);
  v50 = v42;
  v144 = *MEMORY[0x277D16EC0];
  v103 = (v35 + 104);
  v119 = (v35 + 48);
  v88 = v35;
  v94 = (v35 + 32);
  v134 = a1;

  v52 = 0;
  v102 = MEMORY[0x277D84F90];
  v122 = a1 + 64;
  v121 = v49;
  v115 = v27;
  v129 = v50;
  v123 = v34;
LABEL_4:
  v53 = v52;
  if (!v48)
  {
    goto LABEL_6;
  }

  do
  {
    v52 = v53;
LABEL_9:
    v54 = __clz(__rbit64(v48)) | (v52 << 6);
    v55 = v134;
    v56 = *(v134 + 48) + v135[9] * v54;
    v133 = v135[2];
    (v133)(v50, v56, v137);
    v57 = *(v55 + 56);
    v58 = type metadata accessor for RequiredCharacteristicValue();
    v59 = v57 + *(*(v58 - 8) + 72) * v54;
    v60 = (v50 + *(v126 + 48));
    sub_2527E3F70(v59, v60, type metadata accessor for RequiredCharacteristicValue);
    v61 = v128;
    sub_2528BF8A0();
    v62 = v127;
    sub_2528C0610();
    (*v125)(v61, v131);
    if ((*v124)(v62, 1, v27) == 1)
    {
      sub_2527213D8(v62, &qword_27F4FE8A8, &qword_2528CDF80);
      if ((*v60 & 1) == 0)
      {
LABEL_11:
        v63 = 1;
        v50 = v129;
        v64 = v123;
        v65 = v132;
        goto LABEL_19;
      }

      type metadata accessor for HomeAppIntentError();
      sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_33;
    }

    (*v113)(v130, v62, v27);
    v66 = v117;
    sub_2528C01E0();
    v67 = v118;
    if ((*v112)(v66, 1, v118) == 1)
    {
      sub_2527213D8(v66, &qword_27F4FE8A0, &qword_2528CDF78);
      v68 = v106;
      v69 = v116;
      (*v106)(v21, &v60[*(v58 + 20)], v116);
    }

    else
    {
      v70 = v66;
      v71 = v101;
      v72 = v108;
      (*v99)(v108, v70, v67);
      v73 = &v60[*(v58 + 20)];
      sub_2528C0710();
      v74 = v116;
      if ((*v98)(v71, 1, v116) == 1)
      {
        sub_2527213D8(v71, &qword_27F4FE898, &qword_2528CDF70);
        if ((*v60 & 1) == 0)
        {
          (*v100)(v108, v118);
          v27 = v115;
          (*v114)(v130, v115);
          goto LABEL_11;
        }

        type metadata accessor for HomeAppIntentError();
        sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
        swift_allocError();
        v87 = v86;
        v139 = v93;
        v140 = v92;
        v141 = v91;
        v142 = v90;
        v143 = v89;
        sub_252870158(&v145);
        *v87 = v145;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*v100)(v108, v118);
        (*v114)(v130, v115);
LABEL_33:

        sub_2527213D8(v129, &qword_27F4FE8B8, &qword_2528CDF90);
        v85 = v102;

        return v85;
      }

      (*v100)(v72, v67);
      (*v97)(v21, v71, v74);
      v69 = v74;
      v68 = v106;
    }

    (*v105)(v109, v138, v110);
    v75 = v129;
    (v133)(v111, v129, v137);
    (*v68)(v107, v21, v69);
    v50 = v75;
    v64 = v123;
    sub_2528C07A0();
    (*v104)(v21, v69);
    v27 = v115;
    (*v114)(v130, v115);
    v65 = v132;
    (*v103)(v64, v144, v132);
    v63 = 0;
LABEL_19:
    v48 &= v48 - 1;
    (*v120)(v64, v63, 1, v65);
    sub_2527213D8(v50, &qword_27F4FE8B8, &qword_2528CDF90);
    if ((*v119)(v64, 1, v65) != 1)
    {
      v76 = *v94;
      (*v94)(v95, v64, v65);
      v76(v96, v95, v65);
      v77 = v76;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_25273836C(0, v102[2] + 1, 1, v102);
      }

      v79 = v102[2];
      v78 = v102[3];
      if (v79 >= v78 >> 1)
      {
        v102 = sub_25273836C(v78 > 1, v79 + 1, 1, v102);
      }

      v80 = v102;
      v102[2] = v79 + 1;
      result = (v77)(v80 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v79, v96, v132);
      v45 = v122;
      v49 = v121;
      goto LABEL_4;
    }

    result = sub_2527213D8(v64, &qword_27F4FE8B0, &qword_2528CDF88);
    v53 = v52;
    v45 = v122;
    v49 = v121;
  }

  while (v48);
  while (1)
  {
LABEL_6:
    v52 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      return result;
    }

    if (v52 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v52);
    ++v53;
    if (v48)
    {
      goto LABEL_9;
    }
  }

  v81 = v134;

  if (!*(v81 + 16))
  {
    return v102;
  }

  result = v102;
  if (!v102[2])
  {
    v82 = v102;

    type metadata accessor for HomeAppIntentError();
    sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v84 = v83;
    v139 = v93;
    v140 = v92;
    v141 = v91;
    v142 = v90;
    v143 = v89;
    sub_252870158(&v145);
    *v84 = v145;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v82;
  }

  return result;
}

unint64_t sub_2527DC2D4()
{
  v1 = sub_2528BFDD0();
  v81 = *(v1 - 8);
  v2 = *(v81 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
      v80 = v40;
      v41 = *(v40 - 8);
      v78 = *(v41 + 72);
      v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_2528C17E0;
      v74 = v19 + v42 + *(v40 + 48);
      v79 = v19 + v42;
      v43 = *MEMORY[0x277D16330];
      v44 = sub_2528BFDE0();
      v45 = *(v44 - 8);
      v76 = *(v45 + 104);
      v77 = v45 + 104;
      (v76)(v19 + v42, v43, v44);
      *v4 = 1;
      v46 = *MEMORY[0x277D162F8];
      v47 = v81;
      v75 = *(v81 + 104);
      (v75)(v4, v46, v1);
      v48 = type metadata accessor for RequiredCharacteristicValue();
      v49 = *(v48 + 20);
      v72 = *(v47 + 16);
      v73 = v48;
      v50 = v74;
      v72(v74 + v49, v4, v1);
      *v50 = 1;
      v51 = *(v47 + 8);
      v51(v4, v1);
      v52 = (v79 + v78 + *(v80 + 48));
      v53 = *MEMORY[0x277D162C8];
      v76();
      *v4 = 2;
      (v75)(v4, *MEMORY[0x277D162F0], v1);
      v72(&v52[*(v73 + 20)], v4, v1);
      *v52 = 0;
      v51(v4, v1);
    }

    else
    {
      if (v5 != 4)
      {
        v39 = type metadata accessor for HomeAppIntentError();
        sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
        v70 = swift_allocError();
        *v71 = 58;
        swift_storeEnumTagMultiPayload();
        v82 = v70;
        swift_willThrow();
        return v39;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
      v80 = v16;
      v17 = *(v16 - 8);
      v78 = *(v17 + 72);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_2528C17E0;
      v20 = v19 + v18;
      v21 = (v19 + v18 + *(v16 + 48));
      v79 = v20;
      v22 = *MEMORY[0x277D16330];
      v23 = sub_2528BFDE0();
      v24 = *(v23 - 8);
      v76 = *(v24 + 104);
      v77 = v24 + 104;
      (v76)(v20, v22, v23);
      *v4 = 1;
      v25 = *MEMORY[0x277D162F8];
      v26 = v81;
      v75 = *(v81 + 104);
      (v75)(v4, v25, v1);
      v27 = type metadata accessor for RequiredCharacteristicValue();
      v28 = *(v27 + 20);
      v73 = *(v26 + 16);
      v74 = v27;
      (v73)(&v21[v28], v4, v1);
      *v21 = 1;
      v29 = *(v26 + 8);
      v29(v4, v1);
      v30 = (v79 + v78 + *(v80 + 48));
      v31 = *MEMORY[0x277D162C8];
      v76();
      *v4 = 0;
      (v75)(v4, *MEMORY[0x277D162F0], v1);
      (v73)(&v30[*(v74 + 20)], v4, v1);
      *v30 = 0;
      v29(v4, v1);
    }

    goto LABEL_13;
  }

  if (!*v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
    v6 = v81;
    v32 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
    v33 = *(*v32 + 72);
    v34 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2528C3910;
    v11 = v10 + v34;
    v35 = (v11 + v32[14]);
    v36 = *MEMORY[0x277D16330];
    v37 = sub_2528BFDE0();
    (*(*(v37 - 8) + 104))(v11, v36, v37);
    *v4 = 0;
    (*(v6 + 104))(v4, *MEMORY[0x277D162F8], v1);
    v38 = type metadata accessor for RequiredCharacteristicValue();
    (*(v6 + 16))(&v35[*(v38 + 20)], v4, v1);
    *v35 = 1;
    goto LABEL_9;
  }

  if (v5 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
    v80 = v54;
    v55 = *(v54 - 8);
    v78 = *(v55 + 72);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_2528C17E0;
    v57 = v19 + v56;
    v75 = (v57 + *(v54 + 48));
    v79 = v57;
    v58 = *MEMORY[0x277D16330];
    v59 = sub_2528BFDE0();
    v60 = *(v59 - 8);
    v76 = *(v60 + 104);
    v77 = v60 + 104;
    (v76)(v57, v58, v59);
    *v4 = 1;
    v61 = *MEMORY[0x277D162F8];
    v62 = v81;
    v74 = *(v81 + 104);
    (v74)(v4, v61, v1);
    v63 = type metadata accessor for RequiredCharacteristicValue();
    v64 = *(v63 + 20);
    v72 = *(v62 + 16);
    v73 = v63;
    v65 = v75;
    v72(&v75[v64], v4, v1);
    *v65 = 1;
    v66 = *(v62 + 8);
    v66(v4, v1);
    v67 = (v79 + v78 + *(v80 + 48));
    v68 = *MEMORY[0x277D162C8];
    v76();
    *v4 = 1;
    (v74)(v4, *MEMORY[0x277D162F0], v1);
    v72(&v67[*(v73 + 20)], v4, v1);
    *v67 = 0;
    v66(v4, v1);
LABEL_13:
    v39 = sub_25278E784(v19);
    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
  v6 = v81;
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2528C3910;
  v11 = v10 + v9;
  v12 = (v11 + v7[14]);
  v13 = *MEMORY[0x277D16330];
  v14 = sub_2528BFDE0();
  (*(*(v14 - 8) + 104))(v11, v13, v14);
  *v4 = 1;
  (*(v6 + 104))(v4, *MEMORY[0x277D162F8], v1);
  v15 = type metadata accessor for RequiredCharacteristicValue();
  (*(v6 + 16))(&v12[*(v15 + 20)], v4, v1);
  *v12 = 1;
LABEL_9:
  (*(v6 + 8))(v4, v1);
  v39 = sub_25278E784(v10);
  swift_setDeallocating();
  sub_2527213D8(v11, &qword_27F4FD188, &qword_2528CDFA0);
LABEL_14:
  swift_deallocClassInstance();
  return v39;
}

uint64_t sub_2527DCDC8(uint64_t a1)
{
  sub_2528C1130();
  v3 = *v1;
  sub_2528C1150();
  v4 = *(a1 + 20);
  sub_2528BFDD0();
  sub_2527E412C(&qword_27F4FE900, MEMORY[0x277D16318]);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t sub_2527DCE74(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_2528C1150();
  v5 = *(a2 + 20);
  sub_2528BFDD0();
  sub_2527E412C(&qword_27F4FE900, MEMORY[0x277D16318]);
  return sub_2528C0910();
}

uint64_t sub_2527DCF08(uint64_t a1, uint64_t a2)
{
  sub_2528C1130();
  v4 = *v2;
  sub_2528C1150();
  v5 = *(a2 + 20);
  sub_2528BFDD0();
  sub_2527E412C(&qword_27F4FE900, MEMORY[0x277D16318]);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t sub_2527DCFB0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    v4 = *(a3 + 20);
    JUMPOUT(0x2530A7420);
  }

  return 0;
}

uint64_t sub_2527DCFD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD248, &qword_2528C7D68);
  v33 = a2;
  result = sub_2528C0F10();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_2528C1130();
      AttributeKind.rawValue.getter();
      sub_2528C0A40();

      result = sub_2528C1180();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2527DD2B0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for HomeEntity.SnapshotPair(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528BECF0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD430, &qword_2528C7F08);
  v48 = a2;
  result = sub_2528C0F10();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_2527E3FD8(v31 + v32 * v28, v52, type metadata accessor for HomeEntity.SnapshotPair);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_2527E3F70(v33 + v32 * v28, v52, type metadata accessor for HomeEntity.SnapshotPair);
      }

      v34 = *(v16 + 40);
      sub_2527E412C(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
      result = sub_2528C0900();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_2527E3FD8(v52, *(v16 + 56) + v32 * v24, type metadata accessor for HomeEntity.SnapshotPair);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_2527DD750(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1C8, &qword_2528C7D20);
  result = sub_2528C0F10();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_2528C1120();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2527DD9C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1D0, &unk_2528CDFE0);
  v39 = a2;
  result = sub_2528C0F10();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
      v22 = *(v5 + 56);
      v23 = *(*(v5 + 48) + v21);
      v24 = v22 + 40 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 24);
      v42 = *(v24 + 16);
      v40 = *(v24 + 33);
      v41 = *(v24 + 32);
      if ((v39 & 1) == 0)
      {
        sub_25277B0C4(v25, v26, v42, v27, v41, v40);
      }

      v28 = *(v8 + 40);
      sub_2528C1130();
      AttributeKind.rawValue.getter();
      sub_2528C0A40();

      result = sub_2528C1180();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v23;
      v17 = *(v8 + 56) + 40 * v16;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v42;
      *(v17 + 24) = v27;
      *(v17 + 32) = v41;
      *(v17 + 33) = v40;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2527DDCC4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2528BF9D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD240, &qword_2528C7D60);
  v43 = a2;
  result = sub_2528C0F10();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_2527E412C(&qword_27F4FD230, MEMORY[0x277D15AC0]);
      result = sub_2528C0900();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2527DE0DC(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v61 = a3(0);
  v11 = *(v61 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v49 - v13;
  v14 = sub_2528BECF0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v62 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v19 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v56 = a2;
  result = sub_2528C0F10();
  v21 = result;
  if (*(v18 + 16))
  {
    v22 = 0;
    v23 = (v18 + 64);
    v24 = 1 << *(v18 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v15;
    v27 = v25 & *(v18 + 64);
    v28 = (v24 + 63) >> 6;
    v52 = (v26 + 16);
    v53 = v26;
    v50 = v8;
    v51 = v11 + 16;
    v54 = v18;
    v55 = v11;
    v57 = (v11 + 32);
    v58 = (v26 + 32);
    v29 = result + 64;
    while (v27)
    {
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v34 = v31 | (v22 << 6);
      v35 = *(v18 + 48);
      v59 = *(v26 + 72);
      v36 = v35 + v59 * v34;
      if (v56)
      {
        (*v58)(v62, v36, v14);
        v37 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 32))(v60, v37 + v38 * v34, v61);
      }

      else
      {
        (*v52)(v62, v36, v14);
        v39 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 16))(v60, v39 + v38 * v34, v61);
      }

      v40 = *(v21 + 40);
      sub_2527E412C(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
      result = sub_2528C0900();
      v41 = -1 << *(v21 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v29 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v29 + 8 * v43);
          if (v47 != -1)
          {
            v30 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v42) & ~*(v29 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      (*v58)((*(v21 + 48) + v59 * v30), v62, v14);
      result = (*v57)(*(v21 + 56) + v38 * v30, v60, v61);
      ++*(v21 + 16);
      v26 = v53;
      v18 = v54;
    }

    v32 = v22;
    while (1)
    {
      v22 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v22 >= v28)
      {
        break;
      }

      v33 = v23[v22];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v27 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v8 = v50;
      goto LABEL_36;
    }

    v48 = 1 << *(v18 + 32);
    v8 = v50;
    if (v48 >= 64)
    {
      bzero(v23, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v23 = -1 << v48;
    }

    *(v18 + 16) = 0;
  }

LABEL_36:
  *v8 = v21;
  return result;
}

uint64_t sub_2527DE594(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for DeviceEntity();
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v15 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v51 = a2;
  result = sub_2528C0F10();
  v17 = v14;
  v18 = result;
  if (*(v14 + 16))
  {
    v48 = v7;
    v49 = v14;
    v19 = 0;
    v20 = (v14 + 64);
    v21 = 1 << *(v14 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v14 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v50 + 72);
      v32 = *(v17 + 48) + v31 * v30;
      if (v51)
      {
        sub_2527E3FD8(v32, v13, type metadata accessor for DeviceEntity);
        v33 = *(v17 + 56);
        v34 = v13;
        v35 = *(v33 + 8 * v30);
      }

      else
      {
        sub_2527E3F70(v32, v13, type metadata accessor for DeviceEntity);
        v36 = *(v17 + 56);
        v34 = v13;
        v35 = *(v36 + 8 * v30);
      }

      v37 = *(v18 + 40);
      sub_2528C1130();
      v38 = v34;
      DeviceEntity.hash(into:)(v52);
      result = sub_2528C1180();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_2527E3FD8(v38, *(v18 + 48) + v31 * v26, type metadata accessor for DeviceEntity);
      *(*(v18 + 56) + 8 * v26) = v35;
      v13 = v38;
      ++*(v18 + 16);
      v17 = v49;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v7 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v17 + 32);
    v7 = v48;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v17 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_2527DE918(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8D8, &qword_2528CE020);
  result = sub_2528C0F10();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_2528C1120();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2527DEB7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC280, &unk_2528CE050);
  v36 = a2;
  result = sub_2528C0F10();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_25272C298(v25, v37);
      }

      else
      {
        sub_25272BF98(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2528C1130();
      sub_2528C0A40();
      result = sub_2528C1180();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_25272C298(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2527DEE34(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - v8;
  v9 = sub_2528BFB20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD208, &qword_2528C7D40);
  v48 = a2;
  result = sub_2528C0F10();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_25274AA0C(v31 + v32 * v28, v52, &qword_27F4FD1F8, &unk_2528CDFF0);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_2527E3F00(v33 + v32 * v28, v52);
      }

      v34 = *(v16 + 40);
      sub_2527E412C(&qword_27F4FD1E8, MEMORY[0x277D15C30]);
      result = sub_2528C0900();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_25274AA0C(v52, *(v16 + 56) + v32 * v24, &qword_27F4FD1F8, &unk_2528CDFF0);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_2527DF2C0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for RequiredCharacteristicValue();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528BFDE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD190, &qword_2528CDFB0);
  v48 = a2;
  result = sub_2528C0F10();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_2527E3FD8(v31 + v32 * v28, v52, type metadata accessor for RequiredCharacteristicValue);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_2527E3F70(v33 + v32 * v28, v52, type metadata accessor for RequiredCharacteristicValue);
      }

      v34 = *(v16 + 40);
      sub_2527E412C(&qword_27F4FC798, MEMORY[0x277D16348]);
      result = sub_2528C0900();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_2527E3FD8(v52, *(v16 + 56) + v32 * v24, type metadata accessor for RequiredCharacteristicValue);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_2527DF760(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2528BECF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD228, &unk_2528CE000);
  v44 = a2;
  result = sub_2528C0F10();
  v14 = result;
  if (*(v11 + 16))
  {
    v48 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v11;
    v43 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v47 = *(v43 + 72);
      v28 = v27 + v47 * v26;
      if (v44)
      {
        (*v45)(v48, v28, v6);
        v46 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v41)(v48, v28, v6);
        v46 = *(*(v11 + 56) + 8 * v26);
        v29 = v46;
      }

      v30 = *(v14 + 40);
      sub_2527E412C(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
      result = sub_2528C0900();
      v31 = -1 << *(v14 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v47 * v22, v48, v6);
      *(*(v14 + 56) + 8 * v22) = v46;
      ++*(v14 + 16);
      v11 = v42;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v11 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v16, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v38;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2527DFB3C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2528BECF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2E0, &qword_2528C7DD8);
  v43 = a2;
  result = sub_2528C0F10();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_2527E412C(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
      result = sub_2528C0900();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2527DFF18(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = sub_2528C0260();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1E0, &qword_2528C7D30);
  v41 = a2;
  result = sub_2528C0F10();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
      }

      v29 = *(v12 + 40);
      result = sub_2528C1120();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2527E0264(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2D0, &unk_2528CE040);
  v35 = a2;
  result = sub_2528C0F10();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = (*(v5 + 56) + 16 * v24);
      v27 = v26[1];
      v36 = *v26;
      if ((v35 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_2528C1130();
      sub_2528C0A40();

      result = sub_2528C1180();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v16) >> 6;
        while (++v18 != v30 || (v29 & 1) == 0)
        {
          v31 = v18 == v30;
          if (v18 == v30)
          {
            v18 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v18);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v25;
      v20 = (*(v8 + 56) + 16 * v19);
      *v20 = v36;
      v20[1] = v27;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_18;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_36;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2527E05A4(uint64_t a1, int a2)
{
  v3 = v2;
  v44 = sub_2528BF350();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2A8, &qword_2528C7DA8);
  v42 = a2;
  result = sub_2528C0F10();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v42)
      {
        (*v19)(v43, v28, v44);
      }

      else
      {
        (*v40)(v43, v28, v44);
        v29 = v26;
      }

      v30 = *(v12 + 40);
      result = sub_2528C0D50();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v43, v44);
      ++*(v12 + 16);
      v6 = v41;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v9 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void *sub_2527E08F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD248, &qword_2528C7D68);
  v2 = *v0;
  v3 = sub_2528C0F00();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

char *sub_2527E0A74()
{
  v1 = v0;
  v2 = type metadata accessor for HomeEntity.SnapshotPair(0);
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2528BECF0();
  v42 = *(v38 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD430, &qword_2528C7F08);
  v7 = *v0;
  v8 = sub_2528C0F00();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_2527E3F70(v28 + v30, v39, type metadata accessor for HomeEntity.SnapshotPair);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        result = sub_2527E3FD8(v31, *(v20 + 56) + v30, type metadata accessor for HomeEntity.SnapshotPair);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
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

void *sub_2527E0D98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1C8, &qword_2528C7D20);
  v2 = *v0;
  v3 = sub_2528C0F00();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_2527E0EF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1D0, &unk_2528CDFE0);
  v2 = *v0;
  v3 = sub_2528C0F00();
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
        v18 = *(v2 + 56) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 33);
        v24 = *(v18 + 32);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v25 = *(v4 + 56) + 40 * v17;
        *v25 = v19;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v24;
        *(v25 + 33) = v23;
        result = sub_25277B0C4(v19, v20, v21, v22, v24, v23);
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

char *sub_2527E1078()
{
  v1 = v0;
  v34 = sub_2528BF9D0();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD240, &qword_2528C7D60);
  v4 = *v0;
  v5 = sub_2528C0F00();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_2527E1334(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v48 = a1(0);
  v51 = *(v48 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v37 - v8;
  v46 = sub_2528BECF0();
  v50 = *(v46 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_2528C0F00();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v37 = v6;
    v38 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v49 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = v50 + 16;
    v43 = v22;
    v40 = v50 + 32;
    v41 = v51 + 16;
    v39 = v51 + 32;
    v44 = v11;
    v24 = v45;
    v23 = v46;
    if (v21)
    {
      do
      {
        v25 = __clz(__rbit64(v21));
        v52 = (v21 - 1) & v21;
LABEL_14:
        v28 = v25 | (v17 << 6);
        v29 = v50;
        v30 = *(v50 + 72) * v28;
        (*(v50 + 16))(v24, *(v11 + 48) + v30, v23);
        v31 = v51;
        v32 = *(v51 + 72) * v28;
        v33 = v47;
        v34 = v48;
        (*(v51 + 16))(v47, *(v11 + 56) + v32, v48);
        v35 = v49;
        (*(v29 + 32))(*(v49 + 48) + v30, v24, v23);
        v36 = *(v35 + 56);
        v11 = v44;
        result = (*(v31 + 32))(v36 + v32, v33, v34);
        v22 = v43;
        v21 = v52;
      }

      while (v52);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v6 = v37;
        v13 = v49;
        goto LABEL_18;
      }

      v27 = *(v38 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v52 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v13;
  }

  return result;
}

void *sub_2527E16A0(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v6 = type metadata accessor for DeviceEntity();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *v2;
  v10 = sub_2528C0F00();
  v11 = v10;
  if (*(v9 + 16))
  {
    v33 = v5;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v36 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = v34;
        v27 = *(v35 + 72) * v25;
        sub_2527E3F70(*(v9 + 48) + v27, v34, type metadata accessor for DeviceEntity);
        v28 = *(*(v9 + 56) + 8 * v25);
        v29 = v9;
        v30 = v36;
        sub_2527E3FD8(v26, *(v36 + 48) + v27, type metadata accessor for DeviceEntity);
        v31 = *(v30 + 56);
        v9 = v29;
        *(v31 + 8 * v25) = v28;

        v20 = v37;
      }

      while (v37);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v5 = v33;
        v11 = v36;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v37 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v11;
  }

  return result;
}

void *sub_2527E18F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8D8, &qword_2528CE020);
  v2 = *v0;
  v3 = sub_2528C0F00();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

void *sub_2527E1A40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC280, &unk_2528CE050);
  v2 = *v0;
  v3 = sub_2528C0F00();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25272BF98(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25272C298(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_2527E1BE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - v4;
  v36 = sub_2528BFB20();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD208, &qword_2528C7D40);
  v7 = *v0;
  v8 = sub_2528C0F00();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_2527E3F00(*(v7 + 56) + v28, v37);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_25274AA0C(v27, *(v29 + 56) + v28, &qword_27F4FD1F8, &unk_2528CDFF0);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
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